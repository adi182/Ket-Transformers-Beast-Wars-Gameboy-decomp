; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $014", ROMX[$4000], BANK[$14]

    rst RST_38                                    ; $4000: $FF
    dec de                                        ; $4001: $1B
    ccf                                           ; $4002: $3F
    nop                                           ; $4003: $00
    nop                                           ; $4004: $00
    nop                                           ; $4005: $00
    nop                                           ; $4006: $00
    nop                                           ; $4007: $00
    nop                                           ; $4008: $00
    nop                                           ; $4009: $00
    nop                                           ; $400A: $00
    nop                                           ; $400B: $00
    ld bc, $0100                                  ; $400C: $01 $00 $01
    nop                                           ; $400F: $00
    ld bc, $0100                                  ; $4010: $01 $00 $01
    nop                                           ; $4013: $00
    ld [bc], a                                    ; $4014: $02
    ld bc, $0106                                  ; $4015: $01 $06 $01
    rra                                           ; $4018: $1F
    ld b, $2F                                     ; $4019: $06 $2F
    inc de                                        ; $401B: $13
    ld d, e                                       ; $401C: $53
    dec l                                         ; $401D: $2D
    ld a, a                                       ; $401E: $7F
    nop                                           ; $401F: $00
    sbc a                                         ; $4020: $9F
    inc c                                         ; $4021: $0C
    rrca                                          ; $4022: $0F
    inc bc                                        ; $4023: $03
    rrca                                          ; $4024: $0F
    nop                                           ; $4025: $00
    ld de, $610E                                  ; $4026: $11 $0E $61
    ld e, $B2                                     ; $4029: $1E $B2
    ld l, h                                       ; $402B: $6C
    db $FC                                        ; $402C: $FC
    ld h, b                                       ; $402D: $60
    db $FC                                        ; $402E: $FC
    sbc b                                         ; $402F: $98
    cp h                                          ; $4030: $BC
    ld hl, sp+$38                                 ; $4031: $F8 $38
    ldh a, [rSVBK]                                ; $4033: $F0 $70
    ret nz                                        ; $4035: $C0

jr_014_4036:
    ld b, b                                       ; $4036: $40
    add b                                         ; $4037: $80
    ret nz                                        ; $4038: $C0

    nop                                           ; $4039: $00
    ret nz                                        ; $403A: $C0

    add b                                         ; $403B: $80
    add b                                         ; $403C: $80
    nop                                           ; $403D: $00
    add b                                         ; $403E: $80
    nop                                           ; $403F: $00
    rst RST_38                                    ; $4040: $FF
    add c                                         ; $4041: $81
    di                                            ; $4042: $F3
    nop                                           ; $4043: $00
    ld hl, sp+$00                                 ; $4044: $F8 $00
    call nz, $C338                                ; $4046: $C4 $38 $C3
    inc a                                         ; $4049: $3C
    dec h                                         ; $404A: $25
    dec de                                        ; $404B: $1B
    rra                                           ; $404C: $1F
    inc bc                                        ; $404D: $03
    rrca                                          ; $404E: $0F
    inc b                                         ; $404F: $04
    ld c, $07                                     ; $4050: $0E $07
    ld c, $07                                     ; $4052: $0E $07
    rlca                                          ; $4054: $07
    ld bc, $0001                                  ; $4055: $01 $01 $00
    nop                                           ; $4058: $00
    nop                                           ; $4059: $00
    nop                                           ; $405A: $00
    nop                                           ; $405B: $00
    nop                                           ; $405C: $00
    nop                                           ; $405D: $00
    nop                                           ; $405E: $00
    nop                                           ; $405F: $00
    ldh a, [rP1]                                  ; $4060: $F0 $00
    nop                                           ; $4062: $00
    nop                                           ; $4063: $00
    nop                                           ; $4064: $00
    nop                                           ; $4065: $00
    nop                                           ; $4066: $00
    nop                                           ; $4067: $00
    add b                                         ; $4068: $80
    nop                                           ; $4069: $00
    ret nz                                        ; $406A: $C0

    nop                                           ; $406B: $00
    ldh [$FFC0], a                                ; $406C: $E0 $C0
    ld h, b                                       ; $406E: $60
    ret nz                                        ; $406F: $C0

    ld h, b                                       ; $4070: $60
    ret nz                                        ; $4071: $C0

    jr nz, @-$3E                                  ; $4072: $20 $C0

    jr nz, jr_014_4036                            ; $4074: $20 $C0

    ldh a, [rNR41]                                ; $4076: $F0 $20
    ld hl, sp+$70                                 ; $4078: $F8 $70
    db $FC                                        ; $407A: $FC
    nop                                           ; $407B: $00
    sub d                                         ; $407C: $92
    ld l, h                                       ; $407D: $6C
    cp $00                                        ; $407E: $FE $00
    add b                                         ; $4080: $80
    nop                                           ; $4081: $00
    add b                                         ; $4082: $80
    nop                                           ; $4083: $00
    add b                                         ; $4084: $80
    nop                                           ; $4085: $00
    nop                                           ; $4086: $00
    nop                                           ; $4087: $00
    ldh a, [rP1]                                  ; $4088: $F0 $00
    ld [$38F0], sp                                ; $408A: $08 $F0 $38
    ret nz                                        ; $408D: $C0

    ldh a, [rP1]                                  ; $408E: $F0 $00
    ldh [rP1], a                                  ; $4090: $E0 $00
    cp $C0                                        ; $4092: $FE $C0
    ld sp, hl                                     ; $4094: $F9
    sub $FE                                       ; $4095: $D6 $FE
    ret c                                         ; $4097: $D8

    db $FC                                        ; $4098: $FC
    ret c                                         ; $4099: $D8

    cp $D8                                        ; $409A: $FE $D8
    ld sp, hl                                     ; $409C: $F9
    sub $FE                                       ; $409D: $D6 $FE
    or b                                          ; $409F: $B0
    nop                                           ; $40A0: $00
    nop                                           ; $40A1: $00

jr_014_40A2:
    cp c                                          ; $40A2: $B9
    nop                                           ; $40A3: $00
    adc $39                                       ; $40A4: $CE $39
    cp l                                          ; $40A6: $BD
    ld [hl], e                                    ; $40A7: $73
    ei                                            ; $40A8: $FB
    ld c, $27                                     ; $40A9: $0E $27
    sbc $BE                                       ; $40AB: $DE $BE
    ld e, l                                       ; $40AD: $5D
    cp h                                          ; $40AE: $BC
    ld e, e                                       ; $40AF: $5B
    cp [hl]                                       ; $40B0: $BE
    ld b, c                                       ; $40B1: $41
    rst RST_30                                    ; $40B2: $F7
    adc [hl]                                      ; $40B3: $8E
    rst RST_28                                    ; $40B4: $EF
    jr jr_014_40A2                                ; $40B5: $18 $EB

    sub $FB                                       ; $40B7: $D6 $FB
    ld b, $FF                                     ; $40B9: $06 $FF
    jr nc, @-$03                                  ; $40BB: $30 $FB

    or $FB                                        ; $40BD: $F6 $FB
    and $05                                       ; $40BF: $E6 $05
    nop                                           ; $40C1: $00
    jp z, $B405                                   ; $40C2: $CA $05 $B4

    ld c, e                                       ; $40C5: $4B
    or l                                          ; $40C6: $B5
    ld c, e                                       ; $40C7: $4B
    rst RST_18                                    ; $40C8: $DF
    ld l, d                                       ; $40C9: $6A
    cp $21                                        ; $40CA: $FE $21
    ld [hl], c                                    ; $40CC: $71
    xor [hl]                                      ; $40CD: $AE
    ccf                                           ; $40CE: $3F
    pop de                                        ; $40CF: $D1
    dec de                                        ; $40D0: $1B
    db $E4                                        ; $40D1: $E4
    call c, $BE2B                                 ; $40D2: $DC $2B $BE
    ld c, e                                       ; $40D5: $4B
    rra                                           ; $40D6: $1F
    db $E4                                        ; $40D7: $E4
    cp a                                          ; $40D8: $BF
    ld b, a                                       ; $40D9: $47
    rst RST_38                                    ; $40DA: $FF
    adc [hl]                                      ; $40DB: $8E
    rst RST_28                                    ; $40DC: $EF
    sub a                                         ; $40DD: $97
    rst RST_18                                    ; $40DE: $DF
    add a                                         ; $40DF: $87
    nop                                           ; $40E0: $00
    nop                                           ; $40E1: $00
    nop                                           ; $40E2: $00
    nop                                           ; $40E3: $00
    nop                                           ; $40E4: $00
    nop                                           ; $40E5: $00
    nop                                           ; $40E6: $00
    nop                                           ; $40E7: $00
    nop                                           ; $40E8: $00
    nop                                           ; $40E9: $00
    ld bc, $0200                                  ; $40EA: $01 $00 $02
    ld bc, $0102                                  ; $40ED: $01 $02 $01
    ld bc, $0C00                                  ; $40F0: $01 $00 $0C
    nop                                           ; $40F3: $00
    ldh a, [c]                                    ; $40F4: $F2
    inc c                                         ; $40F5: $0C
    ld a, a                                       ; $40F6: $7F
    db $EC                                        ; $40F7: $EC
    ld a, a                                       ; $40F8: $7F
    pop hl                                        ; $40F9: $E1
    rst RST_38                                    ; $40FA: $FF
    dec e                                         ; $40FB: $1D
    ld a, a                                       ; $40FC: $7F
    db $ED                                        ; $40FD: $ED
    ld a, a                                       ; $40FE: $7F
    db $ED                                        ; $40FF: $ED
    nop                                           ; $4100: $00
    nop                                           ; $4101: $00
    nop                                           ; $4102: $00
    nop                                           ; $4103: $00
    nop                                           ; $4104: $00
    nop                                           ; $4105: $00
    ld bc, $0100                                  ; $4106: $01 $00 $01
    nop                                           ; $4109: $00
    nop                                           ; $410A: $00
    nop                                           ; $410B: $00
    ld bc, $0100                                  ; $410C: $01 $00 $01
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
    cp a                                          ; $4120: $BF
    ld [hl], l                                    ; $4121: $75
    ld a, a                                       ; $4122: $7F
    dec bc                                        ; $4123: $0B
    ccf                                           ; $4124: $3F
    nop                                           ; $4125: $00
    nop                                           ; $4126: $00
    nop                                           ; $4127: $00
    nop                                           ; $4128: $00
    nop                                           ; $4129: $00
    nop                                           ; $412A: $00
    nop                                           ; $412B: $00
    ld bc, $0100                                  ; $412C: $01 $00 $01
    nop                                           ; $412F: $00
    ld bc, $0100                                  ; $4130: $01 $00 $01
    nop                                           ; $4133: $00
    ld [bc], a                                    ; $4134: $02
    ld bc, $0106                                  ; $4135: $01 $06 $01
    rra                                           ; $4138: $1F
    ld b, $2F                                     ; $4139: $06 $2F
    inc de                                        ; $413B: $13
    ld d, e                                       ; $413C: $53
    dec l                                         ; $413D: $2D
    ld a, a                                       ; $413E: $7F
    nop                                           ; $413F: $00
    rst RST_18                                    ; $4140: $DF
    adc h                                         ; $4141: $8C
    adc a                                         ; $4142: $8F
    inc bc                                        ; $4143: $03
    rrca                                          ; $4144: $0F
    nop                                           ; $4145: $00
    ld de, $610E                                  ; $4146: $11 $0E $61
    ld e, $B2                                     ; $4149: $1E $B2
    ld l, h                                       ; $414B: $6C
    db $FC                                        ; $414C: $FC
    ld h, b                                       ; $414D: $60
    db $FC                                        ; $414E: $FC
    sbc b                                         ; $414F: $98
    cp h                                          ; $4150: $BC
    ld hl, sp+$38                                 ; $4151: $F8 $38
    ldh a, [rSVBK]                                ; $4153: $F0 $70
    ret nz                                        ; $4155: $C0

jr_014_4156:
    ld b, b                                       ; $4156: $40
    add b                                         ; $4157: $80
    ret nz                                        ; $4158: $C0

    nop                                           ; $4159: $00
    ret nz                                        ; $415A: $C0

    add b                                         ; $415B: $80
    add b                                         ; $415C: $80
    nop                                           ; $415D: $00
    add b                                         ; $415E: $80
    nop                                           ; $415F: $00
    ei                                            ; $4160: $FB
    add [hl]                                      ; $4161: $86
    rst RST_30                                    ; $4162: $F7
    ld bc, $00FB                                  ; $4163: $01 $FB $00
    call nz, $C338                                ; $4166: $C4 $38 $C3
    inc a                                         ; $4169: $3C
    dec h                                         ; $416A: $25
    dec de                                        ; $416B: $1B
    rra                                           ; $416C: $1F
    inc bc                                        ; $416D: $03
    rrca                                          ; $416E: $0F
    inc b                                         ; $416F: $04
    ld c, $07                                     ; $4170: $0E $07
    ld c, $07                                     ; $4172: $0E $07
    rlca                                          ; $4174: $07
    ld bc, $0001                                  ; $4175: $01 $01 $00
    nop                                           ; $4178: $00
    nop                                           ; $4179: $00
    nop                                           ; $417A: $00
    nop                                           ; $417B: $00
    nop                                           ; $417C: $00
    nop                                           ; $417D: $00
    nop                                           ; $417E: $00
    nop                                           ; $417F: $00
    cp $B0                                        ; $4180: $FE $B0
    ldh a, [rP1]                                  ; $4182: $F0 $00
    nop                                           ; $4184: $00
    nop                                           ; $4185: $00
    nop                                           ; $4186: $00
    nop                                           ; $4187: $00
    add b                                         ; $4188: $80
    nop                                           ; $4189: $00
    ret nz                                        ; $418A: $C0

    nop                                           ; $418B: $00
    ldh [$FFC0], a                                ; $418C: $E0 $C0
    ld h, b                                       ; $418E: $60
    ret nz                                        ; $418F: $C0

    ld h, b                                       ; $4190: $60
    ret nz                                        ; $4191: $C0

    jr nz, @-$3E                                  ; $4192: $20 $C0

    jr nz, jr_014_4156                            ; $4194: $20 $C0

    ldh a, [rNR41]                                ; $4196: $F0 $20
    ld hl, sp+$70                                 ; $4198: $F8 $70
    db $FC                                        ; $419A: $FC
    nop                                           ; $419B: $00
    sub d                                         ; $419C: $92
    ld l, h                                       ; $419D: $6C
    cp $00                                        ; $419E: $FE $00
    add b                                         ; $41A0: $80
    nop                                           ; $41A1: $00
    add b                                         ; $41A2: $80
    nop                                           ; $41A3: $00
    add b                                         ; $41A4: $80
    nop                                           ; $41A5: $00
    nop                                           ; $41A6: $00
    nop                                           ; $41A7: $00
    nop                                           ; $41A8: $00
    nop                                           ; $41A9: $00
    ldh a, [rP1]                                  ; $41AA: $F0 $00
    ld [$38F0], sp                                ; $41AC: $08 $F0 $38
    ret nz                                        ; $41AF: $C0

    ldh a, [rP1]                                  ; $41B0: $F0 $00
    ldh [rP1], a                                  ; $41B2: $E0 $00
    cp $C0                                        ; $41B4: $FE $C0
    ld sp, hl                                     ; $41B6: $F9
    sub $FE                                       ; $41B7: $D6 $FE
    ret c                                         ; $41B9: $D8

    db $FC                                        ; $41BA: $FC
    ret c                                         ; $41BB: $D8

    cp $D8                                        ; $41BC: $FE $D8
    ld sp, hl                                     ; $41BE: $F9
    sub $00                                       ; $41BF: $D6 $00
    nop                                           ; $41C1: $00
    cp c                                          ; $41C2: $B9
    nop                                           ; $41C3: $00
    adc $39                                       ; $41C4: $CE $39
    cp l                                          ; $41C6: $BD
    ld [hl], e                                    ; $41C7: $73
    ei                                            ; $41C8: $FB
    ld c, $27                                     ; $41C9: $0E $27
    sbc $BF                                       ; $41CB: $DE $BF
    ld e, h                                       ; $41CD: $5C
    cp h                                          ; $41CE: $BC
    ld e, e                                       ; $41CF: $5B
    cp b                                          ; $41D0: $B8
    ld b, a                                       ; $41D1: $47
    cp $91                                        ; $41D2: $FE $91
    rst RST_30                                    ; $41D4: $F7
    ld l, $EF                                     ; $41D5: $2E $EF
    ret c                                         ; $41D7: $D8

    db $EB                                        ; $41D8: $EB
    ld d, $FB                                     ; $41D9: $16 $FB
    ld h, $FF                                     ; $41DB: $26 $FF
    ldh a, [$FFFB]                                ; $41DD: $F0 $FB
    and $05                                       ; $41DF: $E6 $05
    nop                                           ; $41E1: $00
    jp z, $B405                                   ; $41E2: $CA $05 $B4

    ld c, e                                       ; $41E5: $4B
    or l                                          ; $41E6: $B5
    ld c, e                                       ; $41E7: $4B
    rst RST_18                                    ; $41E8: $DF
    ld l, d                                       ; $41E9: $6A
    ld a, [hl]                                    ; $41EA: $7E
    ld hl, $2EF1                                  ; $41EB: $21 $F1 $2E
    ccf                                           ; $41EE: $3F
    pop de                                        ; $41EF: $D1
    dec de                                        ; $41F0: $1B
    db $E4                                        ; $41F1: $E4
    inc e                                         ; $41F2: $1C
    db $EB                                        ; $41F3: $EB
    sbc $2B                                       ; $41F4: $DE $2B
    cp a                                          ; $41F6: $BF
    ld b, h                                       ; $41F7: $44
    rra                                           ; $41F8: $1F
    rst RST_20                                    ; $41F9: $E7
    cp a                                          ; $41FA: $BF
    ld c, [hl]                                    ; $41FB: $4E
    rst RST_28                                    ; $41FC: $EF
    sub a                                         ; $41FD: $97
    rst RST_38                                    ; $41FE: $FF
    add a                                         ; $41FF: $87
    nop                                           ; $4200: $00
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
    ld bc, $0200                                  ; $420C: $01 $00 $02
    ld bc, $0102                                  ; $420F: $01 $02 $01
    ld bc, $0C00                                  ; $4212: $01 $00 $0C
    nop                                           ; $4215: $00
    ld a, [hl]                                    ; $4216: $7E
    inc c                                         ; $4217: $0C
    or e                                          ; $4218: $B3
    ld l, h                                       ; $4219: $6C
    cp a                                          ; $421A: $BF
    ld l, l                                       ; $421B: $6D
    ld a, a                                       ; $421C: $7F
    ld bc, $75BF                                  ; $421D: $01 $BF $75
    ld e, a                                       ; $4220: $5F
    ld a, [hl-]                                   ; $4221: $3A
    ld e, a                                       ; $4222: $5F
    ld a, [hl-]                                   ; $4223: $3A
    ccf                                           ; $4224: $3F
    dec b                                         ; $4225: $05
    rra                                           ; $4226: $1F
    nop                                           ; $4227: $00
    nop                                           ; $4228: $00
    nop                                           ; $4229: $00

jr_014_422A:
    ld bc, $0100                                  ; $422A: $01 $00 $01
    nop                                           ; $422D: $00
    ld bc, $0100                                  ; $422E: $01 $00 $01
    nop                                           ; $4231: $00
    ld [bc], a                                    ; $4232: $02
    ld bc, $0106                                  ; $4233: $01 $06 $01
    rra                                           ; $4236: $1F
    ld b, $2F                                     ; $4237: $06 $2F
    inc de                                        ; $4239: $13
    ld d, e                                       ; $423A: $53
    dec l                                         ; $423B: $2D
    ld a, a                                       ; $423C: $7F
    nop                                           ; $423D: $00
    nop                                           ; $423E: $00

Jump_014_423F:
    nop                                           ; $423F: $00
    rst RST_38                                    ; $4240: $FF
    call z, $C3EF                                 ; $4241: $CC $EF $C3
    db $D3                                        ; $4244: $D3
    adc h                                         ; $4245: $8C
    pop hl                                        ; $4246: $E1
    ld e, $B2                                     ; $4247: $1E $B2
    ld l, h                                       ; $4249: $6C
    db $FC                                        ; $424A: $FC
    ld h, b                                       ; $424B: $60
    db $FC                                        ; $424C: $FC
    sbc b                                         ; $424D: $98
    cp h                                          ; $424E: $BC
    ld hl, sp+$38                                 ; $424F: $F8 $38
    ldh a, [rSVBK]                                ; $4251: $F0 $70
    ret nz                                        ; $4253: $C0

jr_014_4254:
    ld b, b                                       ; $4254: $40
    add b                                         ; $4255: $80

jr_014_4256:
    ret nz                                        ; $4256: $C0

    nop                                           ; $4257: $00
    ret nz                                        ; $4258: $C0

    add b                                         ; $4259: $80
    add b                                         ; $425A: $80
    nop                                           ; $425B: $00
    add b                                         ; $425C: $80
    nop                                           ; $425D: $00
    nop                                           ; $425E: $00
    nop                                           ; $425F: $00
    push af                                       ; $4260: $F5
    add e                                         ; $4261: $83
    db $FD                                        ; $4262: $FD
    inc bc                                        ; $4263: $03
    rst RST_00                                    ; $4264: $C7
    jr c, jr_014_422A                             ; $4265: $38 $C3

    inc a                                         ; $4267: $3C
    dec h                                         ; $4268: $25
    dec de                                        ; $4269: $1B
    rra                                           ; $426A: $1F
    inc bc                                        ; $426B: $03
    rrca                                          ; $426C: $0F
    inc b                                         ; $426D: $04
    ld c, $07                                     ; $426E: $0E $07
    ld c, $07                                     ; $4270: $0E $07
    rlca                                          ; $4272: $07
    ld bc, $0001                                  ; $4273: $01 $01 $00
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
    rst RST_38                                    ; $4280: $FF
    ld l, h                                       ; $4281: $6C
    db $FC                                        ; $4282: $FC
    ld l, e                                       ; $4283: $6B
    rst RST_38                                    ; $4284: $FF
    ret c                                         ; $4285: $D8

    ld hl, sp+$00                                 ; $4286: $F8 $00
    add b                                         ; $4288: $80
    nop                                           ; $4289: $00
    ret nz                                        ; $428A: $C0

    nop                                           ; $428B: $00
    ldh [$FFC0], a                                ; $428C: $E0 $C0
    ld h, b                                       ; $428E: $60
    ret nz                                        ; $428F: $C0

    ld h, b                                       ; $4290: $60
    ret nz                                        ; $4291: $C0

    jr nz, jr_014_4254                            ; $4292: $20 $C0

    jr nz, jr_014_4256                            ; $4294: $20 $C0

    ldh a, [rNR41]                                ; $4296: $F0 $20
    ld hl, sp+$70                                 ; $4298: $F8 $70
    db $FC                                        ; $429A: $FC
    nop                                           ; $429B: $00
    sub d                                         ; $429C: $92
    ld l, h                                       ; $429D: $6C
    cp $00                                        ; $429E: $FE $00
    nop                                           ; $42A0: $00
    nop                                           ; $42A1: $00
    ld bc, $0100                                  ; $42A2: $01 $00 $01
    nop                                           ; $42A5: $00
    ld bc, $0100                                  ; $42A6: $01 $00 $01
    nop                                           ; $42A9: $00
    nop                                           ; $42AA: $00
    nop                                           ; $42AB: $00
    nop                                           ; $42AC: $00
    nop                                           ; $42AD: $00
    inc bc                                        ; $42AE: $03
    nop                                           ; $42AF: $00
    inc b                                         ; $42B0: $04
    inc bc                                        ; $42B1: $03
    inc b                                         ; $42B2: $04
    inc bc                                        ; $42B3: $03
    ld [bc], a                                    ; $42B4: $02
    ld bc, $001D                                  ; $42B5: $01 $1D $00
    ld a, a                                       ; $42B8: $7F
    inc c                                         ; $42B9: $0C
    or e                                          ; $42BA: $B3
    ld l, h                                       ; $42BB: $6C
    cp a                                          ; $42BC: $BF
    ld l, l                                       ; $42BD: $6D
    ld a, a                                       ; $42BE: $7F
    ld bc, $000A                                  ; $42BF: $01 $0A $00
    sub l                                         ; $42C2: $95
    ld a, [bc]                                    ; $42C3: $0A
    ld l, c                                       ; $42C4: $69
    sub [hl]                                      ; $42C5: $96
    ld l, e                                       ; $42C6: $6B
    sub [hl]                                      ; $42C7: $96
    cp a                                          ; $42C8: $BF
    call nc, Call_014_43FC                        ; $42C9: $D4 $FC $43
    db $E3                                        ; $42CC: $E3
    ld e, h                                       ; $42CD: $5C
    rst RST_38                                    ; $42CE: $FF
    jr nz, jr_014_4308                            ; $42CF: $20 $37

    ret z                                         ; $42D1: $C8

    add hl, sp                                    ; $42D2: $39
    rst RST_10                                    ; $42D3: $D7
    dec a                                         ; $42D4: $3D
    sub $BF                                       ; $42D5: $D6 $BF
    ld c, c                                       ; $42D7: $49
    ld a, a                                       ; $42D8: $7F
    adc [hl]                                      ; $42D9: $8E
    ccf                                           ; $42DA: $3F
    call c, Call_000_2FDF                         ; $42DB: $DC $DF $2F
    rst RST_38                                    ; $42DE: $FF
    adc a                                         ; $42DF: $8F
    nop                                           ; $42E0: $00
    nop                                           ; $42E1: $00
    ld [hl], e                                    ; $42E2: $73
    nop                                           ; $42E3: $00
    sbc l                                         ; $42E4: $9D
    ld [hl], d                                    ; $42E5: $72

jr_014_42E6:
    ld a, e                                       ; $42E6: $7B
    and $F6                                       ; $42E7: $E6 $F6
    inc e                                         ; $42E9: $1C
    ld c, [hl]                                    ; $42EA: $4E
    cp h                                          ; $42EB: $BC
    ld a, h                                       ; $42EC: $7C
    cp b                                          ; $42ED: $B8
    ld a, a                                       ; $42EE: $7F
    or b                                          ; $42EF: $B0
    ld a, b                                       ; $42F0: $78
    add a                                         ; $42F1: $87
    ldh a, [rIF]                                  ; $42F2: $F0 $0F
    rst RST_38                                    ; $42F4: $FF
    ld h, b                                       ; $42F5: $60
    rst RST_30                                    ; $42F6: $F7
    adc [hl]                                      ; $42F7: $8E
    rst RST_28                                    ; $42F8: $EF
    jr jr_014_42E6                                ; $42F9: $18 $EB

    ld d, [hl]                                    ; $42FB: $56
    ei                                            ; $42FC: $FB
    and $EF                                       ; $42FD: $E6 $EF
    ret nz                                        ; $42FF: $C0

    nop                                           ; $4300: $00
    nop                                           ; $4301: $00
    nop                                           ; $4302: $00
    nop                                           ; $4303: $00
    nop                                           ; $4304: $00
    nop                                           ; $4305: $00
    nop                                           ; $4306: $00
    nop                                           ; $4307: $00

jr_014_4308:
    nop                                           ; $4308: $00
    nop                                           ; $4309: $00
    ldh [rP1], a                                  ; $430A: $E0 $00
    db $10                                        ; $430C: $10
    ldh [rSVBK], a                                ; $430D: $E0 $70
    add b                                         ; $430F: $80
    ldh [rP1], a                                  ; $4310: $E0 $00
    ldh [rP1], a                                  ; $4312: $E0 $00
    cp $C0                                        ; $4314: $FE $C0
    ld sp, hl                                     ; $4316: $F9
    sub $FE                                       ; $4317: $D6 $FE
    ret c                                         ; $4319: $D8

    db $FC                                        ; $431A: $FC
    ret c                                         ; $431B: $D8

    cp $D8                                        ; $431C: $FE $D8
    ld sp, hl                                     ; $431E: $F9
    sub $3F                                       ; $431F: $D6 $3F
    inc e                                         ; $4321: $1C
    ccf                                           ; $4322: $3F
    nop                                           ; $4323: $00
    ld l, [hl]                                    ; $4324: $6E
    add hl, sp                                    ; $4325: $39
    ld a, h                                       ; $4326: $7C
    inc hl                                        ; $4327: $23
    inc l                                         ; $4328: $2C
    dec de                                        ; $4329: $1B
    ccf                                           ; $432A: $3F
    jr jr_014_436C                                ; $432B: $18 $3F

    rlca                                          ; $432D: $07
    inc de                                        ; $432E: $13
    rrca                                          ; $432F: $0F
    dec bc                                        ; $4330: $0B
    rlca                                          ; $4331: $07
    add hl, bc                                    ; $4332: $09
    rlca                                          ; $4333: $07
    add hl, bc                                    ; $4334: $09
    ld b, $0F                                     ; $4335: $06 $0F
    nop                                           ; $4337: $00
    rra                                           ; $4338: $1F
    ld c, $7F                                     ; $4339: $0E $7F
    rrca                                          ; $433B: $0F
    adc a                                         ; $433C: $8F
    ld [hl], a                                    ; $433D: $77
    rst RST_38                                    ; $433E: $FF
    nop                                           ; $433F: $00
    db $FD                                        ; $4340: $FD
    nop                                           ; $4341: $00
    rra                                           ; $4342: $1F
    ldh [rNR34], a                                ; $4343: $E0 $1E
    push hl                                       ; $4345: $E5
    ld a, $C5                                     ; $4346: $3E $C5
    ld a, [hl]                                    ; $4348: $7E
    add c                                         ; $4349: $81
    rst RST_38                                    ; $434A: $FF
    ld [bc], a                                    ; $434B: $02
    db $DD                                        ; $434C: $DD
    add e                                         ; $434D: $83
    rst RST_08                                    ; $434E: $CF
    add b                                         ; $434F: $80
    add a                                         ; $4350: $87
    nop                                           ; $4351: $00
    add a                                         ; $4352: $87
    nop                                           ; $4353: $00
    ld bc, $0000                                  ; $4354: $01 $00 $00
    nop                                           ; $4357: $00
    nop                                           ; $4358: $00
    nop                                           ; $4359: $00
    add b                                         ; $435A: $80
    nop                                           ; $435B: $00
    add b                                         ; $435C: $80
    nop                                           ; $435D: $00
    add b                                         ; $435E: $80
    nop                                           ; $435F: $00
    ldh a, [rNR41]                                ; $4360: $F0 $20
    ldh a, [$FFA0]                                ; $4362: $F0 $A0
    ld hl, sp-$70                                 ; $4364: $F8 $90
    ld hl, sp-$10                                 ; $4366: $F8 $F0
    ld hl, sp-$10                                 ; $4368: $F8 $F0
    ldh a, [rP1]                                  ; $436A: $F0 $00

jr_014_436C:
    or b                                          ; $436C: $B0
    ld h, b                                       ; $436D: $60
    ldh [rP1], a                                  ; $436E: $E0 $00
    ldh a, [rP1]                                  ; $4370: $F0 $00
    ld hl, sp+$00                                 ; $4372: $F8 $00
    cp $00                                        ; $4374: $FE $00
    ld a, $00                                     ; $4376: $3E $00
    ld e, $00                                     ; $4378: $1E $00
    ld e, $00                                     ; $437A: $1E $00
    ld a, h                                       ; $437C: $7C
    nop                                           ; $437D: $00
    ld a, h                                       ; $437E: $7C
    nop                                           ; $437F: $00
    inc d                                         ; $4380: $14
    dec bc                                        ; $4381: $0B
    dec d                                         ; $4382: $15
    dec bc                                        ; $4383: $0B
    rra                                           ; $4384: $1F
    ld a, [bc]                                    ; $4385: $0A
    ld e, $01                                     ; $4386: $1E $01
    ld de, $0F0E                                  ; $4388: $11 $0E $0F
    ld bc, $043B                                  ; $438B: $01 $3B $04
    ld b, h                                       ; $438E: $44
    dec sp                                        ; $438F: $3B
    ld b, [hl]                                    ; $4390: $46
    dec sp                                        ; $4391: $3B
    inc hl                                        ; $4392: $23
    inc e                                         ; $4393: $1C
    rra                                           ; $4394: $1F
    inc bc                                        ; $4395: $03
    rra                                           ; $4396: $1F
    ld c, $2F                                     ; $4397: $0E $2F
    rla                                           ; $4399: $17
    ccf                                           ; $439A: $3F
    rlca                                          ; $439B: $07
    ccf                                           ; $439C: $3F
    inc c                                         ; $439D: $0C
    rra                                           ; $439E: $1F
    inc bc                                        ; $439F: $03
    adc $39                                       ; $43A0: $CE $39
    cp l                                          ; $43A2: $BD
    ld [hl], e                                    ; $43A3: $73
    ei                                            ; $43A4: $FB
    ld c, $27                                     ; $43A5: $0E $27
    sbc $BF                                       ; $43A7: $DE $BF
    ld e, h                                       ; $43A9: $5C
    cp h                                          ; $43AA: $BC
    ld e, e                                       ; $43AB: $5B
    cp b                                          ; $43AC: $B8
    ld b, a                                       ; $43AD: $47
    ld hl, sp-$69                                 ; $43AE: $F8 $97
    ld sp, hl                                     ; $43B0: $F9
    ld [hl], $FE                                  ; $43B1: $36 $FE
    pop hl                                        ; $43B3: $E1
    ld a, [$FB35]                                 ; $43B4: $FA $35 $FB
    inc [hl]                                      ; $43B7: $34
    ei                                            ; $43B8: $FB
    db $F4                                        ; $43B9: $F4
    ldh a, [c]                                    ; $43BA: $F2
    db $ED                                        ; $43BB: $ED
    cp $81                                        ; $43BC: $FE $81
    cp $01                                        ; $43BE: $FE $01
    add b                                         ; $43C0: $80
    nop                                           ; $43C1: $00
    add b                                         ; $43C2: $80
    nop                                           ; $43C3: $00
    nop                                           ; $43C4: $00
    nop                                           ; $43C5: $00
    nop                                           ; $43C6: $00
    nop                                           ; $43C7: $00
    ldh a, [rP1]                                  ; $43C8: $F0 $00
    ld [$38F0], sp                                ; $43CA: $08 $F0 $38
    ret nz                                        ; $43CD: $C0

    ldh a, [rP1]                                  ; $43CE: $F0 $00
    ld b, b                                       ; $43D0: $40
    add b                                         ; $43D1: $80
    ld b, b                                       ; $43D2: $40
    add b                                         ; $43D3: $80
    ld [hl+], a                                   ; $43D4: $22
    ret nz                                        ; $43D5: $C0

    dec h                                         ; $43D6: $25
    jp nz, $02FD                                  ; $43D7: $C2 $FD $02

    db $FD                                        ; $43DA: $FD
    ldh a, [c]                                    ; $43DB: $F2
    ld a, [$FCF4]                                 ; $43DC: $FA $F4 $FC
    ldh a, [rP1]                                  ; $43DF: $F0 $00
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
    nop                                           ; $43F8: $00
    nop                                           ; $43F9: $00
    nop                                           ; $43FA: $00
    nop                                           ; $43FB: $00

Call_014_43FC:
    ld d, b                                       ; $43FC: $50
    nop                                           ; $43FD: $00
    xor e                                         ; $43FE: $AB
    ld d, b                                       ; $43FF: $50
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
    nop                                           ; $4418: $00
    nop                                           ; $4419: $00
    nop                                           ; $441A: $00
    nop                                           ; $441B: $00
    nop                                           ; $441C: $00
    nop                                           ; $441D: $00
    sbc b                                         ; $441E: $98

jr_014_441F:
    nop                                           ; $441F: $00
    ld e, $05                                     ; $4420: $1E $05
    ld e, $01                                     ; $4422: $1E $01
    rla                                           ; $4424: $17
    ld a, [bc]                                    ; $4425: $0A
    dec [hl]                                      ; $4426: $35
    dec bc                                        ; $4427: $0B
    ld e, e                                       ; $4428: $5B
    inc [hl]                                      ; $4429: $34
    ld a, a                                       ; $442A: $7F
    jr nc, @+$41                                  ; $442B: $30 $3F

    rrca                                          ; $442D: $0F
    daa                                           ; $442E: $27
    rra                                           ; $442F: $1F
    inc de                                        ; $4430: $13
    rrca                                          ; $4431: $0F
    dec bc                                        ; $4432: $0B
    rlca                                          ; $4433: $07

jr_014_4434:
    dec bc                                        ; $4434: $0B
    ld b, $0F                                     ; $4435: $06 $0F
    nop                                           ; $4437: $00
    rra                                           ; $4438: $1F
    ld c, $7F                                     ; $4439: $0E $7F
    rrca                                          ; $443B: $0F
    adc a                                         ; $443C: $8F
    ld [hl], a                                    ; $443D: $77
    rst RST_38                                    ; $443E: $FF
    nop                                           ; $443F: $00
    ld hl, sp-$10                                 ; $4440: $F8 $F0
    ld hl, sp-$10                                 ; $4442: $F8 $F0
    ldh a, [rP1]                                  ; $4444: $F0 $00
    or b                                          ; $4446: $B0
    ld h, b                                       ; $4447: $60
    ldh [rP1], a                                  ; $4448: $E0 $00
    ldh [rP1], a                                  ; $444A: $E0 $00
    ldh a, [rP1]                                  ; $444C: $F0 $00
    ldh a, [rP1]                                  ; $444E: $F0 $00
    ldh a, [rP1]                                  ; $4450: $F0 $00
    ldh a, [rP1]                                  ; $4452: $F0 $00
    ld a, b                                       ; $4454: $78
    nop                                           ; $4455: $00
    ld a, h                                       ; $4456: $7C
    nop                                           ; $4457: $00
    ld a, h                                       ; $4458: $7C
    nop                                           ; $4459: $00
    ld hl, sp+$00                                 ; $445A: $F8 $00
    ldh [rP1], a                                  ; $445C: $E0 $00
    add b                                         ; $445E: $80
    nop                                           ; $445F: $00
    ld a, a                                       ; $4460: $7F
    jr z, jr_014_44DB                             ; $4461: $28 $78

    rlca                                          ; $4463: $07
    ld b, [hl]                                    ; $4464: $46
    add hl, sp                                    ; $4465: $39
    ld a, $05                                     ; $4466: $3E $05
    ld l, $11                                     ; $4468: $2E $11
    inc de                                        ; $446A: $13
    ld c, $1B                                     ; $446B: $0E $1B
    inc c                                         ; $446D: $0C
    rrca                                          ; $446E: $0F
    inc bc                                        ; $446F: $03
    ccf                                           ; $4470: $3F
    inc c                                         ; $4471: $0C
    ld a, a                                       ; $4472: $7F
    jr c, jr_014_4434                             ; $4473: $38 $BF

    ld e, a                                       ; $4475: $5F
    rst RST_38                                    ; $4476: $FF
    rra                                           ; $4477: $1F
    ld a, a                                       ; $4478: $7F
    ld [hl-], a                                   ; $4479: $32
    ccf                                           ; $447A: $3F
    inc c                                         ; $447B: $0C
    rrca                                          ; $447C: $0F
    nop                                           ; $447D: $00
    inc bc                                        ; $447E: $03
    nop                                           ; $447F: $00
    db $EC                                        ; $4480: $EC
    jr c, jr_014_441F                             ; $4481: $38 $9C

jr_014_4483:
    ld a, b                                       ; $4483: $78
    db $FC                                        ; $4484: $FC
    ld b, b                                       ; $4485: $40
    jp nz, $993C                                  ; $4486: $C2 $3C $99

    ld h, [hl]                                    ; $4489: $66
    cp l                                          ; $448A: $BD
    ld b, d                                       ; $448B: $42
    and l                                         ; $448C: $A5
    ld e, d                                       ; $448D: $5A
    and $18                                       ; $448E: $E6 $18
    db $E4                                        ; $4490: $E4
    ret c                                         ; $4491: $D8

    rst RST_38                                    ; $4492: $FF
    add b                                         ; $4493: $80
    rst RST_18                                    ; $4494: $DF
    cp [hl]                                       ; $4495: $BE
    rst RST_18                                    ; $4496: $DF
    cp [hl]                                       ; $4497: $BE
    rst RST_18                                    ; $4498: $DF
    ld a, $FE                                     ; $4499: $3E $FE
    inc b                                         ; $449B: $04
    cp $14                                        ; $449C: $FE $14
    rst RST_18                                    ; $449E: $DF
    or d                                          ; $449F: $B2
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
    ld b, b                                       ; $44AE: $40
    nop                                           ; $44AF: $00
    and b                                         ; $44B0: $A0
    ld b, b                                       ; $44B1: $40
    and b                                         ; $44B2: $A0
    ld b, b                                       ; $44B3: $40
    and b                                         ; $44B4: $A0
    ld b, b                                       ; $44B5: $40
    ld b, b                                       ; $44B6: $40
    add b                                         ; $44B7: $80
    add b                                         ; $44B8: $80
    nop                                           ; $44B9: $00
    nop                                           ; $44BA: $00
    nop                                           ; $44BB: $00
    nop                                           ; $44BC: $00
    nop                                           ; $44BD: $00
    nop                                           ; $44BE: $00
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
    jr z, jr_014_44DA                             ; $44D8: $28 $00

jr_014_44DA:
    ld d, l                                       ; $44DA: $55

jr_014_44DB:
    jr z, jr_014_4483                             ; $44DB: $28 $A6

    ld e, c                                       ; $44DD: $59
    xor l                                         ; $44DE: $AD
    ld e, e                                       ; $44DF: $5B
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
    nop                                           ; $44F6: $00
    nop                                           ; $44F7: $00
    nop                                           ; $44F8: $00
    nop                                           ; $44F9: $00
    call z, Call_014_7400                         ; $44FA: $CC $00 $74
    ret z                                         ; $44FD: $C8

    db $EC                                        ; $44FE: $EC
    sbc b                                         ; $44FF: $98
    rlca                                          ; $4500: $07
    ld [bc], a                                    ; $4501: $02
    rrca                                          ; $4502: $0F
    ld [bc], a                                    ; $4503: $02
    rrca                                          ; $4504: $0F
    nop                                           ; $4505: $00
    dec bc                                        ; $4506: $0B
    rlca                                          ; $4507: $07
    dec de                                        ; $4508: $1B
    rlca                                          ; $4509: $07
    cpl                                           ; $450A: $2F
    jr jr_014_454C                                ; $450B: $18 $3F

    ld a, [de]                                    ; $450D: $1A
    rra                                           ; $450E: $1F
    nop                                           ; $450F: $00
    rra                                           ; $4510: $1F
    ld [$081F], sp                                ; $4511: $08 $1F $08
    rrca                                          ; $4514: $0F
    inc b                                         ; $4515: $04
    rrca                                          ; $4516: $0F
    inc b                                         ; $4517: $04
    rrca                                          ; $4518: $0F
    nop                                           ; $4519: $00
    ld a, a                                       ; $451A: $7F
    ld [$748F], sp                                ; $451B: $08 $8F $74
    rst RST_38                                    ; $451E: $FF
    nop                                           ; $451F: $00
    rst RST_38                                    ; $4520: $FF
    inc bc                                        ; $4521: $03
    rst RST_20                                    ; $4522: $E7
    ret c                                         ; $4523: $D8

    rst RST_20                                    ; $4524: $E7
    reti                                          ; $4525: $D9


    db $E3                                        ; $4526: $E3
    call c, $CDF3                                 ; $4527: $DC $F3 $CD
    rst RST_38                                    ; $452A: $FF
    jr nz, jr_014_45AC                            ; $452B: $20 $7F

    rst RST_28                                    ; $452D: $EF
    di                                            ; $452E: $F3
    rrca                                          ; $452F: $0F
    adc c                                         ; $4530: $89
    rlca                                          ; $4531: $07
    add l                                         ; $4532: $85
    inc bc                                        ; $4533: $03
    ld [bc], a                                    ; $4534: $02
    ld bc, $0001                                  ; $4535: $01 $01 $00
    inc bc                                        ; $4538: $03
    ld bc, $018F                                  ; $4539: $01 $8F $01
    sub c                                         ; $453C: $91
    ld c, $9F                                     ; $453D: $0E $9F
    nop                                           ; $453F: $00
    ldh a, [$FFE0]                                ; $4540: $F0 $E0
    ldh a, [$FFE0]                                ; $4542: $F0 $E0
    ldh a, [$FF60]                                ; $4544: $F0 $60
    ldh a, [rP1]                                  ; $4546: $F0 $00
    ldh a, [$FF60]                                ; $4548: $F0 $60
    ldh [rP1], a                                  ; $454A: $E0 $00

jr_014_454C:
    add b                                         ; $454C: $80
    nop                                           ; $454D: $00
    ret nz                                        ; $454E: $C0

    add b                                         ; $454F: $80
    ret nz                                        ; $4550: $C0

    add b                                         ; $4551: $80
    ret nz                                        ; $4552: $C0

    add b                                         ; $4553: $80
    ldh [$FFC0], a                                ; $4554: $E0 $C0
    ldh [rP1], a                                  ; $4556: $E0 $00
    ldh [$FFC0], a                                ; $4558: $E0 $C0
    ldh a, [$FFE0]                                ; $455A: $F0 $E0
    ldh a, [$FFE0]                                ; $455C: $F0 $E0
    ldh a, [rP1]                                  ; $455E: $F0 $00
    dec hl                                        ; $4560: $2B
    ld d, $3F                                     ; $4561: $16 $3F
    inc d                                         ; $4563: $14
    inc a                                         ; $4564: $3C
    inc bc                                        ; $4565: $03
    inc hl                                        ; $4566: $23
    inc e                                         ; $4567: $1C
    rra                                           ; $4568: $1F
    ld [bc], a                                    ; $4569: $02
    rla                                           ; $456A: $17
    ld [$030C], sp                                ; $456B: $08 $0C $03
    dec bc                                        ; $456E: $0B
    inc b                                         ; $456F: $04
    dec bc                                        ; $4570: $0B
    inc b                                         ; $4571: $04
    ld a, [de]                                    ; $4572: $1A
    dec b                                         ; $4573: $05
    ld a, $19                                     ; $4574: $3E $19
    ld e, [hl]                                    ; $4576: $5E
    dec l                                         ; $4577: $2D

jr_014_4578:
    ld a, a                                       ; $4578: $7F
    nop                                           ; $4579: $00
    dec sp                                        ; $457A: $3B
    rla                                           ; $457B: $17
    dec de                                        ; $457C: $1B
    rlca                                          ; $457D: $07
    dec bc                                        ; $457E: $0B
    rlca                                          ; $457F: $07
    ld a, e                                       ; $4580: $7B
    and $F6                                       ; $4581: $E6 $F6
    inc e                                         ; $4583: $1C
    ld c, [hl]                                    ; $4584: $4E

jr_014_4585:
    cp h                                          ; $4585: $BC
    ld a, h                                       ; $4586: $7C
    cp b                                          ; $4587: $B8
    ld a, [hl]                                    ; $4588: $7E
    add b                                         ; $4589: $80
    pop af                                        ; $458A: $F1
    ld c, $10                                     ; $458B: $0E $10
    rst RST_28                                    ; $458D: $EF
    adc b                                         ; $458E: $88
    ld [hl], a                                    ; $458F: $77
    adc b                                         ; $4590: $88
    ld [hl], a                                    ; $4591: $77
    ld c, b                                       ; $4592: $48
    or a                                          ; $4593: $B7
    ld [hl], c                                    ; $4594: $71
    adc [hl]                                      ; $4595: $8E
    ld [hl], c                                    ; $4596: $71
    xor [hl]                                      ; $4597: $AE
    rst RST_38                                    ; $4598: $FF
    nop                                           ; $4599: $00
    db $E3                                        ; $459A: $E3
    db $DD                                        ; $459B: $DD
    db $E3                                        ; $459C: $E3
    db $DD                                        ; $459D: $DD
    rst RST_38                                    ; $459E: $FF
    ret nz                                        ; $459F: $C0

    nop                                           ; $45A0: $00
    nop                                           ; $45A1: $00
    nop                                           ; $45A2: $00
    nop                                           ; $45A3: $00
    nop                                           ; $45A4: $00
    nop                                           ; $45A5: $00
    nop                                           ; $45A6: $00
    nop                                           ; $45A7: $00
    nop                                           ; $45A8: $00
    nop                                           ; $45A9: $00
    ldh [rP1], a                                  ; $45AA: $E0 $00

jr_014_45AC:
    sub b                                         ; $45AC: $90
    ld h, b                                       ; $45AD: $60
    sub b                                         ; $45AE: $90
    ld h, b                                       ; $45AF: $60
    and b                                         ; $45B0: $A0
    ld b, b                                       ; $45B1: $40
    ldh [rP1], a                                  ; $45B2: $E0 $00
    and b                                         ; $45B4: $A0
    ld b, b                                       ; $45B5: $40
    jr nz, jr_014_4578                            ; $45B6: $20 $C0

    ldh a, [rP1]                                  ; $45B8: $F0 $00
    ldh a, [$FFE0]                                ; $45BA: $F0 $E0
    ldh a, [$FFE0]                                ; $45BC: $F0 $E0
    ldh [rP1], a                                  ; $45BE: $E0 $00
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
    nop                                           ; $45D0: $00
    nop                                           ; $45D1: $00
    nop                                           ; $45D2: $00
    nop                                           ; $45D3: $00
    nop                                           ; $45D4: $00
    nop                                           ; $45D5: $00
    nop                                           ; $45D6: $00
    nop                                           ; $45D7: $00
    nop                                           ; $45D8: $00
    nop                                           ; $45D9: $00
    jr z, jr_014_45DC                             ; $45DA: $28 $00

jr_014_45DC:
    ld d, l                                       ; $45DC: $55
    jr z, jr_014_4585                             ; $45DD: $28 $A6

    ld e, c                                       ; $45DF: $59
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
    call z, Call_014_7400                         ; $45FC: $CC $00 $74
    ret z                                         ; $45FF: $C8

    ld a, [hl]                                    ; $4600: $7E
    inc c                                         ; $4601: $0C
    or e                                          ; $4602: $B3
    ld l, h                                       ; $4603: $6C
    cp a                                          ; $4604: $BF
    ld l, l                                       ; $4605: $6D
    ld a, a                                       ; $4606: $7F
    ld bc, $75BF                                  ; $4607: $01 $BF $75
    cp a                                          ; $460A: $BF
    ld [hl], l                                    ; $460B: $75
    ld a, a                                       ; $460C: $7F
    dec bc                                        ; $460D: $0B
    ccf                                           ; $460E: $3F
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
    ld bc, $0200                                  ; $461A: $01 $00 $02
    ld bc, $0003                                  ; $461D: $01 $03 $00
    cp a                                          ; $4620: $BF
    ld b, h                                       ; $4621: $44
    rra                                           ; $4622: $1F
    rst RST_20                                    ; $4623: $E7
    cp a                                          ; $4624: $BF
    ld c, [hl]                                    ; $4625: $4E
    rst RST_38                                    ; $4626: $FF
    add a                                         ; $4627: $87
    rst RST_18                                    ; $4628: $DF
    or e                                          ; $4629: $B3
    rst RST_38                                    ; $462A: $FF
    or h                                          ; $462B: $B4
    rst RST_38                                    ; $462C: $FF
    ld c, l                                       ; $462D: $4D
    rst RST_08                                    ; $462E: $CF
    ld a, h                                       ; $462F: $7C
    ld c, a                                       ; $4630: $4F
    jr c, @+$4E                                   ; $4631: $38 $4C

    jr c, @+$4A                                   ; $4633: $38 $48

    jr nc, jr_014_46AF                            ; $4635: $30 $78

    nop                                           ; $4637: $00
    db $FC                                        ; $4638: $FC
    ld a, b                                       ; $4639: $78
    db $FC                                        ; $463A: $FC
    ld [$B04C], sp                                ; $463B: $08 $4C $B0

jr_014_463E:
    db $FC                                        ; $463E: $FC
    nop                                           ; $463F: $00
    rst RST_28                                    ; $4640: $EF
    ret c                                         ; $4641: $D8

    db $EB                                        ; $4642: $EB
    ld d, $FB                                     ; $4643: $16 $FB
    ld h, $FF                                     ; $4645: $26 $FF
    ldh a, [$FFFB]                                ; $4647: $F0 $FB
    and $FB                                       ; $4649: $E6 $FB
    add [hl]                                      ; $464B: $86
    rst RST_38                                    ; $464C: $FF
    ld bc, $00FB                                  ; $464D: $01 $FB $00
    call nz, Call_014_4738                        ; $4650: $C4 $38 $47
    jr c, jr_014_4698                             ; $4653: $38 $43

    dec a                                         ; $4655: $3D
    inc hl                                        ; $4656: $23
    dec e                                         ; $4657: $1D
    inc hl                                        ; $4658: $23
    inc e                                         ; $4659: $1C
    ccf                                           ; $465A: $3F
    ld [bc], a                                    ; $465B: $02
    ccf                                           ; $465C: $3F
    ld e, $1F                                     ; $465D: $1E $1F
    nop                                           ; $465F: $00
    cp $C0                                        ; $4660: $FE $C0
    ld sp, hl                                     ; $4662: $F9
    sub $FE                                       ; $4663: $D6 $FE
    ret c                                         ; $4665: $D8

    db $FC                                        ; $4666: $FC
    ret c                                         ; $4667: $D8

    cp $D8                                        ; $4668: $FE $D8
    ld sp, hl                                     ; $466A: $F9
    sub $FE                                       ; $466B: $D6 $FE
    or b                                          ; $466D: $B0
    ldh a, [rP1]                                  ; $466E: $F0 $00
    nop                                           ; $4670: $00
    nop                                           ; $4671: $00
    nop                                           ; $4672: $00
    nop                                           ; $4673: $00
    add b                                         ; $4674: $80
    nop                                           ; $4675: $00
    ret nz                                        ; $4676: $C0

    add b                                         ; $4677: $80
    ret nz                                        ; $4678: $C0

    add b                                         ; $4679: $80
    ret nz                                        ; $467A: $C0

    nop                                           ; $467B: $00
    jr nz, jr_014_463E                            ; $467C: $20 $C0

    ldh [rP1], a                                  ; $467E: $E0 $00
    nop                                           ; $4680: $00
    nop                                           ; $4681: $00
    nop                                           ; $4682: $00

jr_014_4683:
    nop                                           ; $4683: $00
    nop                                           ; $4684: $00
    nop                                           ; $4685: $00
    nop                                           ; $4686: $00
    nop                                           ; $4687: $00
    nop                                           ; $4688: $00
    nop                                           ; $4689: $00
    nop                                           ; $468A: $00
    nop                                           ; $468B: $00
    inc c                                         ; $468C: $0C
    nop                                           ; $468D: $00
    dec bc                                        ; $468E: $0B
    inc b                                         ; $468F: $04
    dec bc                                        ; $4690: $0B
    inc b                                         ; $4691: $04
    dec c                                         ; $4692: $0D
    ld b, $07                                     ; $4693: $06 $07
    ld [bc], a                                    ; $4695: $02
    rra                                           ; $4696: $1F
    ld [bc], a                                    ; $4697: $02

jr_014_4698:
    inc hl                                        ; $4698: $23
    dec e                                         ; $4699: $1D
    ld hl, $111E                                  ; $469A: $21 $1E $11
    ld c, $CD                                     ; $469D: $0E $CD
    ld [bc], a                                    ; $469F: $02
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
    ld d, b                                       ; $46AA: $50
    nop                                           ; $46AB: $00
    xor e                                         ; $46AC: $AB
    ld d, b                                       ; $46AD: $50
    ld c, h                                       ; $46AE: $4C

jr_014_46AF:
    or e                                          ; $46AF: $B3
    ld e, e                                       ; $46B0: $5B
    or a                                          ; $46B1: $B7
    rst RST_38                                    ; $46B2: $FF
    and b                                         ; $46B3: $A0
    ldh [c], a                                    ; $46B4: $E2
    dec e                                         ; $46B5: $1D
    dec de                                        ; $46B6: $1B
    push hl                                       ; $46B7: $E5
    ei                                            ; $46B8: $FB
    dec d                                         ; $46B9: $15
    cp e                                          ; $46BA: $BB
    ld b, h                                       ; $46BB: $44
    rst RST_08                                    ; $46BC: $CF
    cp c                                          ; $46BD: $B9
    rst RST_28                                    ; $46BE: $EF
    or d                                          ; $46BF: $B2
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
    sbc b                                         ; $46CC: $98
    nop                                           ; $46CD: $00
    add sp, -$70                                  ; $46CE: $E8 $90
    ret c                                         ; $46D0: $D8

    jr nc, jr_014_4683                            ; $46D1: $30 $B0

    ldh [rSVBK], a                                ; $46D3: $E0 $70
    ldh [rIE], a                                  ; $46D5: $E0 $FF
    ret nz                                        ; $46D7: $C0

    ret nz                                        ; $46D8: $C0

    cp a                                          ; $46D9: $BF
    add e                                         ; $46DA: $83
    ld a, h                                       ; $46DB: $7C
    rst RST_28                                    ; $46DC: $EF
    db $10                                        ; $46DD: $10
    ld a, [hl]                                    ; $46DE: $7E
    ldh [rP1], a                                  ; $46DF: $E0 $00
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
    add b                                         ; $46F8: $80
    nop                                           ; $46F9: $00
    add b                                         ; $46FA: $80
    nop                                           ; $46FB: $00
    nop                                           ; $46FC: $00
    nop                                           ; $46FD: $00
    nop                                           ; $46FE: $00
    nop                                           ; $46FF: $00
    ld bc, $0200                                  ; $4700: $01 $00 $02
    ld bc, $0102                                  ; $4703: $01 $02 $01
    ld bc, $0C00                                  ; $4706: $01 $00 $0C
    nop                                           ; $4709: $00
    ld a, [hl]                                    ; $470A: $7E
    inc c                                         ; $470B: $0C
    or e                                          ; $470C: $B3
    ld l, h                                       ; $470D: $6C
    cp a                                          ; $470E: $BF
    ld l, l                                       ; $470F: $6D
    ld a, a                                       ; $4710: $7F
    ld bc, $75BF                                  ; $4711: $01 $BF $75
    cp a                                          ; $4714: $BF
    ld [hl], l                                    ; $4715: $75
    ld a, a                                       ; $4716: $7F
    dec bc                                        ; $4717: $0B
    ccf                                           ; $4718: $3F
    nop                                           ; $4719: $00
    nop                                           ; $471A: $00
    nop                                           ; $471B: $00
    nop                                           ; $471C: $00
    nop                                           ; $471D: $00
    nop                                           ; $471E: $00
    nop                                           ; $471F: $00
    dec b                                         ; $4720: $05
    nop                                           ; $4721: $00
    jp z, $B405                                   ; $4722: $CA $05 $B4

    ld c, e                                       ; $4725: $4B
    or l                                          ; $4726: $B5
    ld c, e                                       ; $4727: $4B
    rst RST_18                                    ; $4728: $DF
    ld l, d                                       ; $4729: $6A
    ld a, [hl]                                    ; $472A: $7E
    ld hl, $2EF1                                  ; $472B: $21 $F1 $2E
    ccf                                           ; $472E: $3F
    pop de                                        ; $472F: $D1
    dec de                                        ; $4730: $1B
    db $E4                                        ; $4731: $E4
    inc e                                         ; $4732: $1C
    db $EB                                        ; $4733: $EB
    sbc $2B                                       ; $4734: $DE $2B
    cp a                                          ; $4736: $BF
    ld b, h                                       ; $4737: $44

Call_014_4738:
    rra                                           ; $4738: $1F
    rst RST_20                                    ; $4739: $E7
    cp a                                          ; $473A: $BF
    ld c, [hl]                                    ; $473B: $4E
    rst RST_38                                    ; $473C: $FF
    add a                                         ; $473D: $87
    rst RST_18                                    ; $473E: $DF
    or e                                          ; $473F: $B3
    nop                                           ; $4740: $00
    nop                                           ; $4741: $00
    cp c                                          ; $4742: $B9
    nop                                           ; $4743: $00
    adc $39                                       ; $4744: $CE $39
    cp l                                          ; $4746: $BD
    ld [hl], e                                    ; $4747: $73
    ei                                            ; $4748: $FB
    ld c, $27                                     ; $4749: $0E $27
    sbc $BF                                       ; $474B: $DE $BF
    ld e, h                                       ; $474D: $5C
    cp h                                          ; $474E: $BC
    ld e, e                                       ; $474F: $5B
    cp b                                          ; $4750: $B8
    ld b, a                                       ; $4751: $47
    cp $91                                        ; $4752: $FE $91
    rst RST_30                                    ; $4754: $F7
    ld l, $EF                                     ; $4755: $2E $EF
    ret c                                         ; $4757: $D8

    db $EB                                        ; $4758: $EB
    ld d, $FB                                     ; $4759: $16 $FB
    ld h, $FF                                     ; $475B: $26 $FF
    ldh a, [$FFFB]                                ; $475D: $F0 $FB
    and $80                                       ; $475F: $E6 $80
    nop                                           ; $4761: $00
    add b                                         ; $4762: $80
    nop                                           ; $4763: $00
    add b                                         ; $4764: $80
    nop                                           ; $4765: $00
    nop                                           ; $4766: $00
    nop                                           ; $4767: $00
    nop                                           ; $4768: $00
    nop                                           ; $4769: $00
    ldh a, [rP1]                                  ; $476A: $F0 $00
    ld [$38F0], sp                                ; $476C: $08 $F0 $38
    ret nz                                        ; $476F: $C0

    ldh a, [rP1]                                  ; $4770: $F0 $00
    ldh [rP1], a                                  ; $4772: $E0 $00
    cp $C0                                        ; $4774: $FE $C0
    ld sp, hl                                     ; $4776: $F9
    sub $FE                                       ; $4777: $D6 $FE
    ret c                                         ; $4779: $D8

    db $FC                                        ; $477A: $FC
    ret c                                         ; $477B: $D8

    cp $D8                                        ; $477C: $FE $D8
    ld sp, hl                                     ; $477E: $F9
    sub $FF                                       ; $477F: $D6 $FF
    sbc d                                         ; $4781: $9A
    rst RST_38                                    ; $4782: $FF
    and [hl]                                      ; $4783: $A6
    rst RST_20                                    ; $4784: $E7
    ld a, $27                                     ; $4785: $3E $27
    inc e                                         ; $4787: $1C
    ld h, $1C                                     ; $4788: $26 $1C
    inc h                                         ; $478A: $24
    jr jr_014_47C9                                ; $478B: $18 $3C

    nop                                           ; $478D: $00
    ld a, [hl]                                    ; $478E: $7E
    inc a                                         ; $478F: $3C
    ld a, [hl]                                    ; $4790: $7E
    inc a                                         ; $4791: $3C
    ld a, [hl]                                    ; $4792: $7E
    inc h                                         ; $4793: $24
    and h                                         ; $4794: $A4
    ld e, b                                       ; $4795: $58
    xor b                                         ; $4796: $A8
    ld d, b                                       ; $4797: $50
    ld d, b                                       ; $4798: $50
    nop                                           ; $4799: $00
    nop                                           ; $479A: $00
    nop                                           ; $479B: $00
    nop                                           ; $479C: $00
    nop                                           ; $479D: $00
    nop                                           ; $479E: $00
    nop                                           ; $479F: $00
    db $FD                                        ; $47A0: $FD
    ld b, e                                       ; $47A1: $43
    rst RST_38                                    ; $47A2: $FF
    add b                                         ; $47A3: $80
    db $FD                                        ; $47A4: $FD
    nop                                           ; $47A5: $00
    db $E4                                        ; $47A6: $E4
    jr @-$3A                                      ; $47A7: $18 $C4

    jr c, @+$46                                   ; $47A9: $38 $44

    jr c, jr_014_47F1                             ; $47AB: $38 $44

    jr c, @+$3A                                   ; $47AD: $38 $38

    nop                                           ; $47AF: $00
    ld e, h                                       ; $47B0: $5C
    jr c, jr_014_4831                             ; $47B1: $38 $7E

    jr c, jr_014_4833                             ; $47B3: $38 $7E

    inc b                                         ; $47B5: $04
    ld a, [hl]                                    ; $47B6: $7E
    inc a                                         ; $47B7: $3C
    ld l, [hl]                                    ; $47B8: $6E
    inc a                                         ; $47B9: $3C
    ld h, $1C                                     ; $47BA: $26 $1C
    inc h                                         ; $47BC: $24

jr_014_47BD:
    jr @+$26                                      ; $47BD: $18 $24

    jr jr_014_47BD                                ; $47BF: $18 $FC

    ld l, e                                       ; $47C1: $6B
    rst RST_38                                    ; $47C2: $FF
    ret c                                         ; $47C3: $D8

    ld hl, sp+$00                                 ; $47C4: $F8 $00
    nop                                           ; $47C6: $00
    nop                                           ; $47C7: $00
    nop                                           ; $47C8: $00

jr_014_47C9:
    nop                                           ; $47C9: $00
    nop                                           ; $47CA: $00
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
    ld a, $04                                     ; $47E0: $3E $04
    ld a, $1C                                     ; $47E2: $3E $1C
    ld a, $1C                                     ; $47E4: $3E $1C
    ld a, $1C                                     ; $47E6: $3E $1C
    ld a, $08                                     ; $47E8: $3E $08
    ld a, [hl+]                                   ; $47EA: $2A
    inc d                                         ; $47EB: $14
    inc l                                         ; $47EC: $2C
    db $10                                        ; $47ED: $10
    stop                                          ; $47EE: $10 $00
    nop                                           ; $47F0: $00

jr_014_47F1:
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
    nop                                           ; $47FE: $00
    nop                                           ; $47FF: $00
    nop                                           ; $4800: $00
    nop                                           ; $4801: $00
    ld bc, $0100                                  ; $4802: $01 $00 $01
    nop                                           ; $4805: $00
    ld bc, $0100                                  ; $4806: $01 $00 $01
    nop                                           ; $4809: $00
    nop                                           ; $480A: $00
    nop                                           ; $480B: $00
    inc bc                                        ; $480C: $03
    nop                                           ; $480D: $00
    inc b                                         ; $480E: $04
    inc bc                                        ; $480F: $03
    inc b                                         ; $4810: $04
    inc bc                                        ; $4811: $03
    ld [bc], a                                    ; $4812: $02
    ld bc, $0001                                  ; $4813: $01 $01 $00
    dec e                                         ; $4816: $1D
    nop                                           ; $4817: $00
    ld a, [hl]                                    ; $4818: $7E
    dec c                                         ; $4819: $0D
    or e                                          ; $481A: $B3
    ld l, h                                       ; $481B: $6C
    cp a                                          ; $481C: $BF
    ld l, l                                       ; $481D: $6D
    ld a, a                                       ; $481E: $7F
    ld bc, $000A                                  ; $481F: $01 $0A $00
    sub l                                         ; $4822: $95
    ld a, [bc]                                    ; $4823: $0A
    ld l, c                                       ; $4824: $69
    sub [hl]                                      ; $4825: $96
    ld l, e                                       ; $4826: $6B
    sub [hl]                                      ; $4827: $96
    cp a                                          ; $4828: $BF
    call nc, Call_014_43FC                        ; $4829: $D4 $FC $43
    db $E3                                        ; $482C: $E3
    ld e, h                                       ; $482D: $5C
    ld a, a                                       ; $482E: $7F
    and d                                         ; $482F: $A2
    scf                                           ; $4830: $37

jr_014_4831:
    ret z                                         ; $4831: $C8

    add hl, sp                                    ; $4832: $39

jr_014_4833:
    rst RST_10                                    ; $4833: $D7
    cp l                                          ; $4834: $BD
    ld d, [hl]                                    ; $4835: $56
    ld a, a                                       ; $4836: $7F
    adc c                                         ; $4837: $89
    ccf                                           ; $4838: $3F
    adc $7F                                       ; $4839: $CE $7F
    sbc h                                         ; $483B: $9C
    rst RST_38                                    ; $483C: $FF
    rrca                                          ; $483D: $0F
    cp a                                          ; $483E: $BF
    ld h, a                                       ; $483F: $67
    nop                                           ; $4840: $00
    nop                                           ; $4841: $00
    ld [hl], e                                    ; $4842: $73
    nop                                           ; $4843: $00
    sbc l                                         ; $4844: $9D
    ld [hl], d                                    ; $4845: $72

jr_014_4846:
    ld a, e                                       ; $4846: $7B
    and $F6                                       ; $4847: $E6 $F6
    inc e                                         ; $4849: $1C
    ld c, [hl]                                    ; $484A: $4E
    cp h                                          ; $484B: $BC
    ld a, a                                       ; $484C: $7F
    cp b                                          ; $484D: $B8
    ld a, b                                       ; $484E: $78
    or a                                          ; $484F: $B7
    ld [hl], b                                    ; $4850: $70
    adc a                                         ; $4851: $8F
    ldh a, [rIF]                                  ; $4852: $F0 $0F
    rst RST_38                                    ; $4854: $FF
    ld h, b                                       ; $4855: $60
    rst RST_30                                    ; $4856: $F7
    adc [hl]                                      ; $4857: $8E
    rst RST_28                                    ; $4858: $EF
    jr jr_014_4846                                ; $4859: $18 $EB

    ld d, [hl]                                    ; $485B: $56
    ei                                            ; $485C: $FB
    and $FF                                       ; $485D: $E6 $FF
    ret nz                                        ; $485F: $C0

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
    ldh [rP1], a                                  ; $486C: $E0 $00
    db $10                                        ; $486E: $10
    ldh [rSVBK], a                                ; $486F: $E0 $70
    add b                                         ; $4871: $80
    ldh [rP1], a                                  ; $4872: $E0 $00
    ret nz                                        ; $4874: $C0

    nop                                           ; $4875: $00
    ldh [rP1], a                                  ; $4876: $E0 $00
    cp $C0                                        ; $4878: $FE $C0
    ld sp, hl                                     ; $487A: $F9
    sub $FE                                       ; $487B: $D6 $FE
    ret c                                         ; $487D: $D8

    db $FC                                        ; $487E: $FC
    ret c                                         ; $487F: $D8

    cp a                                          ; $4880: $BF
    ld [hl], h                                    ; $4881: $74
    cp a                                          ; $4882: $BF
    ld [hl], h                                    ; $4883: $74
    ld a, a                                       ; $4884: $7F
    ld a, [bc]                                    ; $4885: $0A
    ccf                                           ; $4886: $3F
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
    ld bc, $0100                                  ; $4894: $01 $00 $01
    nop                                           ; $4897: $00
    nop                                           ; $4898: $00
    nop                                           ; $4899: $00
    nop                                           ; $489A: $00
    nop                                           ; $489B: $00
    nop                                           ; $489C: $00
    nop                                           ; $489D: $00
    nop                                           ; $489E: $00
    nop                                           ; $489F: $00
    rst RST_38                                    ; $48A0: $FF
    ld l, c                                       ; $48A1: $69
    rst RST_38                                    ; $48A2: $FF
    sbc d                                         ; $48A3: $9A
    adc a                                         ; $48A4: $8F
    ld hl, sp-$72                                 ; $48A5: $F8 $8E
    ld a, c                                       ; $48A7: $79
    ld e, d                                       ; $48A8: $5A
    ld sp, $305B                                  ; $48A9: $31 $5B $30
    ld a, d                                       ; $48AC: $7A
    ld bc, $79FF                                  ; $48AD: $01 $FF $79
    rst RST_38                                    ; $48B0: $FF
    ld a, b                                       ; $48B1: $78
    rst RST_38                                    ; $48B2: $FF
    add hl, bc                                    ; $48B3: $09
    ld c, c                                       ; $48B4: $49
    or b                                          ; $48B5: $B0

jr_014_48B6:
    ld d, c                                       ; $48B6: $51
    and b                                         ; $48B7: $A0
    and b                                         ; $48B8: $A0
    nop                                           ; $48B9: $00
    nop                                           ; $48BA: $00
    nop                                           ; $48BB: $00
    nop                                           ; $48BC: $00
    nop                                           ; $48BD: $00
    nop                                           ; $48BE: $00
    nop                                           ; $48BF: $00
    ei                                            ; $48C0: $FB
    ld b, $FB                                     ; $48C1: $06 $FB
    ld b, $37                                     ; $48C3: $06 $37

jr_014_48C5:
    pop bc                                        ; $48C5: $C1
    inc de                                        ; $48C6: $13
    ldh [rNR10], a                                ; $48C7: $E0 $10
    ldh [$FFD0], a                                ; $48C9: $E0 $D0
    jr nz, jr_014_48C5                            ; $48CB: $20 $F8

    ret nc                                        ; $48CD: $D0

    ld hl, sp-$30                                 ; $48CE: $F8 $D0
    ld hl, sp+$30                                 ; $48D0: $F8 $30
    ld hl, sp-$10                                 ; $48D2: $F8 $F0
    jr nc, jr_014_48B6                            ; $48D4: $30 $E0

    db $10                                        ; $48D6: $10
    ldh [$FF90], a                                ; $48D7: $E0 $90
    ld h, b                                       ; $48D9: $60
    sbc b                                         ; $48DA: $98
    ld h, b                                       ; $48DB: $60
    ld hl, sp+$10                                 ; $48DC: $F8 $10
    ld hl, sp+$70                                 ; $48DE: $F8 $70
    cp $D8                                        ; $48E0: $FE $D8
    ld sp, hl                                     ; $48E2: $F9
    sub $FE                                       ; $48E3: $D6 $FE
    or b                                          ; $48E5: $B0
    ldh a, [rP1]                                  ; $48E6: $F0 $00
    nop                                           ; $48E8: $00
    nop                                           ; $48E9: $00
    nop                                           ; $48EA: $00
    nop                                           ; $48EB: $00
    nop                                           ; $48EC: $00
    nop                                           ; $48ED: $00
    nop                                           ; $48EE: $00
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
    ld hl, sp+$70                                 ; $4900: $F8 $70
    ld hl, sp+$70                                 ; $4902: $F8 $70
    ld hl, sp+$00                                 ; $4904: $F8 $00
    xor b                                         ; $4906: $A8
    ld d, b                                       ; $4907: $50
    or b                                          ; $4908: $B0
    ld b, b                                       ; $4909: $40
    ld b, b                                       ; $490A: $40
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
    nop                                           ; $4919: $00
    nop                                           ; $491A: $00
    nop                                           ; $491B: $00
    nop                                           ; $491C: $00
    nop                                           ; $491D: $00
    nop                                           ; $491E: $00
    nop                                           ; $491F: $00
    ld bc, $0200                                  ; $4920: $01 $00 $02
    ld bc, $0172                                  ; $4923: $01 $72 $01
    ld e, [hl]                                    ; $4926: $5E
    ld sp, $1D2E                                  ; $4927: $31 $2E $1D
    scf                                           ; $492A: $37
    ld c, $7B                                     ; $492B: $0E $7B
    cpl                                           ; $492D: $2F
    ld e, e                                       ; $492E: $5B
    scf                                           ; $492F: $37
    ld e, a                                       ; $4930: $5F
    jr nc, jr_014_495B                            ; $4931: $30 $28

    rla                                           ; $4933: $17

jr_014_4934:
    ei                                            ; $4934: $FB
    inc b                                         ; $4935: $04
    sbc e                                         ; $4936: $9B
    ld [hl], h                                    ; $4937: $74
    ld c, c                                       ; $4938: $49
    ld [hl], $BD                                  ; $4939: $36 $BD
    ld b, d                                       ; $493B: $42
    ld c, l                                       ; $493C: $4D
    ld a, [hl-]                                   ; $493D: $3A
    ld a, $00                                     ; $493E: $3E $00
    jp nz, $C73D                                  ; $4940: $C2 $3D $C7

    jr c, jr_014_49BE                             ; $4943: $38 $79

    add [hl]                                      ; $4945: $86
    db $10                                        ; $4946: $10
    rst RST_28                                    ; $4947: $EF
    cp $01                                        ; $4948: $FE $01
    rst RST_38                                    ; $494A: $FF
    ld l, [hl]                                    ; $494B: $6E
    rst RST_38                                    ; $494C: $FF
    ccf                                           ; $494D: $3F
    ld a, a                                       ; $494E: $7F
    sub e                                         ; $494F: $93
    rst RST_38                                    ; $4950: $FF
    ld d, e                                       ; $4951: $53
    sbc a                                         ; $4952: $9F
    ld l, e                                       ; $4953: $6B
    cp a                                          ; $4954: $BF
    ld l, a                                       ; $4955: $6F
    ld l, a                                       ; $4956: $6F
    add a                                         ; $4957: $87
    adc a                                         ; $4958: $8F
    inc b                                         ; $4959: $04
    dec b                                         ; $495A: $05

jr_014_495B:
    ld [bc], a                                    ; $495B: $02
    inc bc                                        ; $495C: $03
    nop                                           ; $495D: $00
    nop                                           ; $495E: $00
    nop                                           ; $495F: $00
    rrca                                          ; $4960: $0F
    ld b, $E7                                     ; $4961: $06 $E7
    ld [bc], a                                    ; $4963: $02
    ld a, d                                       ; $4964: $7A
    add b                                         ; $4965: $80
    ld a, h                                       ; $4966: $7C
    add b                                         ; $4967: $80
    call $CF30                                    ; $4968: $CD $30 $CF
    jr nc, jr_014_4934                            ; $496B: $30 $C7

    cp b                                          ; $496D: $B8
    rst RST_20                                    ; $496E: $E7
    ld e, b                                       ; $496F: $58
    rst RST_20                                    ; $4970: $E7
    ld e, e                                       ; $4971: $5B
    rst RST_20                                    ; $4972: $E7
    sbc e                                         ; $4973: $9B
    xor $97                                       ; $4974: $EE $97
    cp h                                          ; $4976: $BC
    rlca                                          ; $4977: $07
    add hl, de                                    ; $4978: $19
    ld b, $3E                                     ; $4979: $06 $3E
    jr jr_014_49B9                                ; $497B: $18 $3C

    jr jr_014_4997                                ; $497D: $18 $18

    nop                                           ; $497F: $00
    sub b                                         ; $4980: $90
    ldh [$FFE0], a                                ; $4981: $E0 $E0
    nop                                           ; $4983: $00
    nop                                           ; $4984: $00
    nop                                           ; $4985: $00
    nop                                           ; $4986: $00
    nop                                           ; $4987: $00
    jr nc, jr_014_498A                            ; $4988: $30 $00

jr_014_498A:
    ld a, b                                       ; $498A: $78
    nop                                           ; $498B: $00
    rst RST_38                                    ; $498C: $FF
    nop                                           ; $498D: $00
    rst RST_38                                    ; $498E: $FF
    nop                                           ; $498F: $00
    cp $30                                        ; $4990: $FE $30
    rst RST_38                                    ; $4992: $FF
    inc a                                         ; $4993: $3C
    db $FC                                        ; $4994: $FC
    db $DB                                        ; $4995: $DB
    cp l                                          ; $4996: $BD

jr_014_4997:
    jp c, $807E                                   ; $4997: $DA $7E $80

    add b                                         ; $499A: $80
    nop                                           ; $499B: $00
    nop                                           ; $499C: $00
    nop                                           ; $499D: $00
    nop                                           ; $499E: $00
    nop                                           ; $499F: $00
    add b                                         ; $49A0: $80
    nop                                           ; $49A1: $00
    add b                                         ; $49A2: $80
    nop                                           ; $49A3: $00
    nop                                           ; $49A4: $00
    nop                                           ; $49A5: $00
    ret nz                                        ; $49A6: $C0

    nop                                           ; $49A7: $00
    ld b, b                                       ; $49A8: $40
    add b                                         ; $49A9: $80
    add b                                         ; $49AA: $80
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

jr_014_49B9:
    nop                                           ; $49B9: $00
    nop                                           ; $49BA: $00
    nop                                           ; $49BB: $00
    nop                                           ; $49BC: $00
    nop                                           ; $49BD: $00

jr_014_49BE:
    nop                                           ; $49BE: $00
    nop                                           ; $49BF: $00
    nop                                           ; $49C0: $00
    nop                                           ; $49C1: $00
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
    rlca                                          ; $49D0: $07
    nop                                           ; $49D1: $00
    ld [$0707], sp                                ; $49D2: $08 $07 $07
    nop                                           ; $49D5: $00
    inc bc                                        ; $49D6: $03
    ld bc, $0103                                  ; $49D7: $01 $03 $01
    rst RST_20                                    ; $49DA: $E7
    ld bc, $C53B                                  ; $49DB: $01 $3B $C5
    db $E3                                        ; $49DE: $E3
    dec e                                         ; $49DF: $1D
    nop                                           ; $49E0: $00
    nop                                           ; $49E1: $00
    nop                                           ; $49E2: $00
    nop                                           ; $49E3: $00
    nop                                           ; $49E4: $00
    nop                                           ; $49E5: $00
    nop                                           ; $49E6: $00
    nop                                           ; $49E7: $00

jr_014_49E8:
    nop                                           ; $49E8: $00
    nop                                           ; $49E9: $00
    nop                                           ; $49EA: $00
    nop                                           ; $49EB: $00
    nop                                           ; $49EC: $00
    nop                                           ; $49ED: $00
    add b                                         ; $49EE: $80
    nop                                           ; $49EF: $00
    ld c, [hl]                                    ; $49F0: $4E
    add b                                         ; $49F1: $80
    rst RST_38                                    ; $49F2: $FF
    ld c, $FF                                     ; $49F3: $0E $FF
    add $FF                                       ; $49F5: $C6 $FF
    or $FF                                        ; $49F7: $F6 $FF
    add $E1                                       ; $49F9: $C6 $E1
    sbc $3F                                       ; $49FB: $DE $3F
    pop bc                                        ; $49FD: $C1
    rst RST_18                                    ; $49FE: $DF
    inc c                                         ; $49FF: $0C
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
    nop                                           ; $4A12: $00
    nop                                           ; $4A13: $00
    nop                                           ; $4A14: $00
    nop                                           ; $4A15: $00
    ret nz                                        ; $4A16: $C0

    nop                                           ; $4A17: $00
    ldh [$FFC0], a                                ; $4A18: $E0 $C0
    jr nz, @-$3E                                  ; $4A1A: $20 $C0

    ldh [rP1], a                                  ; $4A1C: $E0 $00
    ldh a, [$FFE0]                                ; $4A1E: $F0 $E0
    add b                                         ; $4A20: $80
    nop                                           ; $4A21: $00
    ld b, b                                       ; $4A22: $40
    add b                                         ; $4A23: $80
    ld b, b                                       ; $4A24: $40
    add b                                         ; $4A25: $80
    jr nz, jr_014_49E8                            ; $4A26: $20 $C0

    ldh [rP1], a                                  ; $4A28: $E0 $00
    ldh [$FFC0], a                                ; $4A2A: $E0 $C0
    ldh [$FFC0], a                                ; $4A2C: $E0 $C0
    ldh [rP1], a                                  ; $4A2E: $E0 $00
    and b                                         ; $4A30: $A0
    ret nz                                        ; $4A31: $C0

    ret nc                                        ; $4A32: $D0

    ldh [$FFC8], a                                ; $4A33: $E0 $C8
    ldh a, [$FFE4]                                ; $4A35: $F0 $E4
    ld hl, sp-$0A                                 ; $4A37: $F8 $F6
    jr c, jr_014_4A7A                             ; $4A39: $38 $3F

    add $1F                                       ; $4A3B: $C6 $1F
    and $F6                                       ; $4A3D: $E6 $F6
    nop                                           ; $4A3F: $00
    ld bc, $0D00                                  ; $4A40: $01 $00 $0D
    nop                                           ; $4A43: $00
    dec c                                         ; $4A44: $0D
    nop                                           ; $4A45: $00
    rrca                                          ; $4A46: $0F
    nop                                           ; $4A47: $00
    rrca                                          ; $4A48: $0F
    ld bc, $011F                                  ; $4A49: $01 $1F $01
    ccf                                           ; $4A4C: $3F
    inc bc                                        ; $4A4D: $03
    ccf                                           ; $4A4E: $3F
    inc bc                                        ; $4A4F: $03
    rra                                           ; $4A50: $1F
    nop                                           ; $4A51: $00
    rrca                                          ; $4A52: $0F
    nop                                           ; $4A53: $00
    rst RST_08                                    ; $4A54: $CF
    nop                                           ; $4A55: $00
    rst RST_20                                    ; $4A56: $E7
    ret nz                                        ; $4A57: $C0

    rst RST_18                                    ; $4A58: $DF
    add b                                         ; $4A59: $80
    cp h                                          ; $4A5A: $BC
    inc bc                                        ; $4A5B: $03
    jr nc, jr_014_4A6D                            ; $4A5C: $30 $0F

    ld [hl], c                                    ; $4A5E: $71
    ld c, $06                                     ; $4A5F: $0E $06
    nop                                           ; $4A61: $00
    dec a                                         ; $4A62: $3D
    ld b, $6D                                     ; $4A63: $06 $6D
    ld [hl], $6F                                  ; $4A65: $36 $6F
    ld [hl], $7F                                  ; $4A67: $36 $7F
    ld [bc], a                                    ; $4A69: $02
    ei                                            ; $4A6A: $FB
    ld a, h                                       ; $4A6B: $7C
    ei                                            ; $4A6C: $FB

jr_014_4A6D:
    ld a, l                                       ; $4A6D: $7D
    ei                                            ; $4A6E: $FB
    ld b, l                                       ; $4A6F: $45
    ld a, e                                       ; $4A70: $7B
    inc d                                         ; $4A71: $14
    ld a, [hl]                                    ; $4A72: $7E
    db $10                                        ; $4A73: $10
    db $FD                                        ; $4A74: $FD
    ld a, $7D                                     ; $4A75: $3E $7D
    cp [hl]                                       ; $4A77: $BE
    db $FD                                        ; $4A78: $FD
    ld a, [hl]                                    ; $4A79: $7E

jr_014_4A7A:
    rst RST_38                                    ; $4A7A: $FF
    nop                                           ; $4A7B: $00
    sub c                                         ; $4A7C: $91
    ld c, $08                                     ; $4A7D: $0E $08
    rlca                                          ; $4A7F: $07
    ld a, a                                       ; $4A80: $7F
    ld bc, $324F                                  ; $4A81: $01 $4F $32
    sbc a                                         ; $4A84: $9F
    ld l, a                                       ; $4A85: $6F
    ccf                                           ; $4A86: $3F
    rst RST_18                                    ; $4A87: $DF
    ccf                                           ; $4A88: $3F
    ret c                                         ; $4A89: $D8

    cp a                                          ; $4A8A: $BF
    ld e, c                                       ; $4A8B: $59
    rst RST_38                                    ; $4A8C: $FF
    ld c, $BE                                     ; $4A8D: $0E $BE
    ld e, c                                       ; $4A8F: $59
    cp [hl]                                       ; $4A90: $BE
    ld d, e                                       ; $4A91: $53
    dec sp                                        ; $4A92: $3B
    call nz, $B47B                                ; $4A93: $C4 $7B $B4
    ei                                            ; $4A96: $FB
    ld [hl], h                                    ; $4A97: $74
    ret z                                         ; $4A98: $C8

    rst RST_30                                    ; $4A99: $F7
    cp a                                          ; $4A9A: $BF
    ldh [$FF7B], a                                ; $4A9B: $E0 $7B
    sbc l                                         ; $4A9D: $9D
    and $39                                       ; $4A9E: $E6 $39
    ldh [$FF80], a                                ; $4AA0: $E0 $80
    ldh a, [$FF60]                                ; $4AA2: $F0 $60
    ld hl, sp-$40                                 ; $4AA4: $F8 $C0
    add sp, -$30                                  ; $4AA6: $E8 $D0
    ldh a, [$FFE0]                                ; $4AA8: $F0 $E0
    ldh [$FF80], a                                ; $4AAA: $E0 $80
    add b                                         ; $4AAC: $80
    nop                                           ; $4AAD: $00
    ret nz                                        ; $4AAE: $C0

    add b                                         ; $4AAF: $80
    ld b, b                                       ; $4AB0: $40
    add b                                         ; $4AB1: $80
    and b                                         ; $4AB2: $A0
    ld b, b                                       ; $4AB3: $40
    ldh [rP1], a                                  ; $4AB4: $E0 $00
    db $10                                        ; $4AB6: $10
    ldh [rSVBK], a                                ; $4AB7: $E0 $70
    add b                                         ; $4AB9: $80
    ldh a, [rNR41]                                ; $4ABA: $F0 $20
    ld d, b                                       ; $4ABC: $50
    and b                                         ; $4ABD: $A0
    ld d, b                                       ; $4ABE: $50
    and b                                         ; $4ABF: $A0
    ld e, a                                       ; $4AC0: $5F
    cpl                                           ; $4AC1: $2F
    cp a                                          ; $4AC2: $BF
    ld e, a                                       ; $4AC3: $5F
    cp a                                          ; $4AC4: $BF
    ld b, b                                       ; $4AC5: $40
    and h                                         ; $4AC6: $A4
    ld b, e                                       ; $4AC7: $43
    ld b, d                                       ; $4AC8: $42
    ld bc, $0102                                  ; $4AC9: $01 $02 $01
    rlca                                          ; $4ACC: $07
    nop                                           ; $4ACD: $00
    dec b                                         ; $4ACE: $05

jr_014_4ACF:
    ld [bc], a                                    ; $4ACF: $02
    dec b                                         ; $4AD0: $05
    ld [bc], a                                    ; $4AD1: $02
    ld [bc], a                                    ; $4AD2: $02
    ld bc, $0001                                  ; $4AD3: $01 $01 $00
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

jr_014_4AE0:
    ccf                                           ; $4AE0: $3F
    jp $D62F                                      ; $4AE1: $C3 $2F $D6


    rst RST_28                                    ; $4AE4: $EF
    inc d                                         ; $4AE5: $14
    adc $31                                       ; $4AE6: $CE $31
    ld e, $ED                                     ; $4AE8: $1E $ED
    cp $1D                                        ; $4AEA: $FE $1D
    ld [hl], d                                    ; $4AEC: $72
    dec a                                         ; $4AED: $3D
    ld l, a                                       ; $4AEE: $6F
    jr c, jr_014_4ACF                             ; $4AEF: $38 $DE

    ld h, a                                       ; $4AF1: $67
    cp c                                          ; $4AF2: $B9
    ld c, [hl]                                    ; $4AF3: $4E
    adc $00                                       ; $4AF4: $CE $00
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
    xor b                                         ; $4B00: $A8
    ld d, b                                       ; $4B01: $50
    ret nc                                        ; $4B02: $D0

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
    jr nc, jr_014_4B22                            ; $4B20: $30 $00

jr_014_4B22:
    ld c, b                                       ; $4B22: $48
    jr nc, jr_014_4AE0                            ; $4B23: $30 $BB

    ld h, b                                       ; $4B25: $60
    db $E4                                        ; $4B26: $E4
    ld e, e                                       ; $4B27: $5B
    rst RST_38                                    ; $4B28: $FF
    ld e, e                                       ; $4B29: $5B
    ld a, a                                       ; $4B2A: $7F
    nop                                           ; $4B2B: $00
    ld a, a                                       ; $4B2C: $7F
    ccf                                           ; $4B2D: $3F
    ld a, a                                       ; $4B2E: $7F
    ccf                                           ; $4B2F: $3F
    ccf                                           ; $4B30: $3F
    nop                                           ; $4B31: $00
    ccf                                           ; $4B32: $3F
    rra                                           ; $4B33: $1F
    ccf                                           ; $4B34: $3F
    ld b, $2E                                     ; $4B35: $06 $2E
    ld de, $112A                                  ; $4B37: $11 $2A $11
    ld de, $0000                                  ; $4B3A: $11 $00 $00
    nop                                           ; $4B3D: $00
    nop                                           ; $4B3E: $00
    nop                                           ; $4B3F: $00
    dec b                                         ; $4B40: $05
    nop                                           ; $4B41: $00
    jp z, $B405                                   ; $4B42: $CA $05 $B4

    ld c, e                                       ; $4B45: $4B
    or l                                          ; $4B46: $B5
    ld c, e                                       ; $4B47: $4B
    rst RST_18                                    ; $4B48: $DF
    ld l, d                                       ; $4B49: $6A
    ld a, [hl]                                    ; $4B4A: $7E
    ld hl, $2EF1                                  ; $4B4B: $21 $F1 $2E
    rst RST_38                                    ; $4B4E: $FF
    ld de, $A4DB                                  ; $4B4F: $11 $DB $A4
    call c, $DEAB                                 ; $4B52: $DC $AB $DE
    dec hl                                        ; $4B55: $2B
    rst RST_38                                    ; $4B56: $FF
    add h                                         ; $4B57: $84
    rst RST_18                                    ; $4B58: $DF
    and a                                         ; $4B59: $A7
    cp a                                          ; $4B5A: $BF
    ld c, [hl]                                    ; $4B5B: $4E
    rst RST_38                                    ; $4B5C: $FF
    rlca                                          ; $4B5D: $07
    rst RST_18                                    ; $4B5E: $DF
    inc sp                                        ; $4B5F: $33
    nop                                           ; $4B60: $00
    nop                                           ; $4B61: $00
    cp c                                          ; $4B62: $B9
    nop                                           ; $4B63: $00
    adc $39                                       ; $4B64: $CE $39
    cp l                                          ; $4B66: $BD
    ld [hl], e                                    ; $4B67: $73
    ei                                            ; $4B68: $FB
    ld c, $27                                     ; $4B69: $0E $27
    sbc $BF                                       ; $4B6B: $DE $BF
    ld e, h                                       ; $4B6D: $5C
    cp h                                          ; $4B6E: $BC
    ld e, e                                       ; $4B6F: $5B
    cp b                                          ; $4B70: $B8
    ld b, a                                       ; $4B71: $47
    cp $91                                        ; $4B72: $FE $91
    rst RST_30                                    ; $4B74: $F7
    ld l, $EF                                     ; $4B75: $2E $EF
    ret c                                         ; $4B77: $D8

    db $EB                                        ; $4B78: $EB
    ld d, $FB                                     ; $4B79: $16 $FB
    ld h, $FF                                     ; $4B7B: $26 $FF
    ldh a, [$FFFB]                                ; $4B7D: $F0 $FB
    and $80                                       ; $4B7F: $E6 $80
    nop                                           ; $4B81: $00
    add b                                         ; $4B82: $80
    nop                                           ; $4B83: $00
    add b                                         ; $4B84: $80
    nop                                           ; $4B85: $00
    nop                                           ; $4B86: $00
    nop                                           ; $4B87: $00
    nop                                           ; $4B88: $00
    nop                                           ; $4B89: $00
    ldh a, [rP1]                                  ; $4B8A: $F0 $00
    ld [$38F0], sp                                ; $4B8C: $08 $F0 $38
    ret nz                                        ; $4B8F: $C0

    ldh a, [rP1]                                  ; $4B90: $F0 $00
    ldh [rP1], a                                  ; $4B92: $E0 $00
    cp $C0                                        ; $4B94: $FE $C0
    ld sp, hl                                     ; $4B96: $F9
    sub $FE                                       ; $4B97: $D6 $FE
    ret c                                         ; $4B99: $D8

    db $FC                                        ; $4B9A: $FC
    ret c                                         ; $4B9B: $D8

    cp $D8                                        ; $4B9C: $FE $D8
    ld sp, hl                                     ; $4B9E: $F9
    sub $FF                                       ; $4B9F: $D6 $FF
    ld a, [de]                                    ; $4BA1: $1A
    ld a, a                                       ; $4BA2: $7F
    ld h, $67                                     ; $4BA3: $26 $67
    ld a, $27                                     ; $4BA5: $3E $27
    inc e                                         ; $4BA7: $1C
    ld h, $1C                                     ; $4BA8: $26 $1C
    inc h                                         ; $4BAA: $24
    jr jr_014_4BE9                                ; $4BAB: $18 $3C

    nop                                           ; $4BAD: $00
    ld a, [hl]                                    ; $4BAE: $7E
    inc a                                         ; $4BAF: $3C
    ld a, [hl]                                    ; $4BB0: $7E
    inc a                                         ; $4BB1: $3C
    ld a, [hl]                                    ; $4BB2: $7E
    inc h                                         ; $4BB3: $24
    and h                                         ; $4BB4: $A4
    ld e, b                                       ; $4BB5: $58
    xor b                                         ; $4BB6: $A8
    ld d, b                                       ; $4BB7: $50
    ld d, b                                       ; $4BB8: $50
    nop                                           ; $4BB9: $00
    nop                                           ; $4BBA: $00
    nop                                           ; $4BBB: $00
    nop                                           ; $4BBC: $00
    nop                                           ; $4BBD: $00
    nop                                           ; $4BBE: $00
    nop                                           ; $4BBF: $00
    db $FD                                        ; $4BC0: $FD
    ld b, e                                       ; $4BC1: $43
    rst RST_38                                    ; $4BC2: $FF
    add b                                         ; $4BC3: $80
    db $FD                                        ; $4BC4: $FD
    nop                                           ; $4BC5: $00
    db $E4                                        ; $4BC6: $E4
    jr jr_014_4C0D                                ; $4BC7: $18 $44

    jr c, jr_014_4C0F                             ; $4BC9: $38 $44

    jr c, jr_014_4BF1                             ; $4BCB: $38 $24

    jr jr_014_4C0D                                ; $4BCD: $18 $3E

    nop                                           ; $4BCF: $00
    ld l, [hl]                                    ; $4BD0: $6E
    jr @+$81                                      ; $4BD1: $18 $7F

    ld a, [de]                                    ; $4BD3: $1A
    ld a, a                                       ; $4BD4: $7F
    ld h, $77                                     ; $4BD5: $26 $77
    ld a, $36                                     ; $4BD7: $3E $36
    inc e                                         ; $4BD9: $1C
    ld [de], a                                    ; $4BDA: $12
    inc c                                         ; $4BDB: $0C
    ld [de], a                                    ; $4BDC: $12
    inc c                                         ; $4BDD: $0C
    ld e, $00                                     ; $4BDE: $1E $00
    db $FC                                        ; $4BE0: $FC
    ld l, e                                       ; $4BE1: $6B
    rst RST_38                                    ; $4BE2: $FF
    ret c                                         ; $4BE3: $D8

    ld hl, sp+$00                                 ; $4BE4: $F8 $00
    nop                                           ; $4BE6: $00
    nop                                           ; $4BE7: $00
    nop                                           ; $4BE8: $00

jr_014_4BE9:
    nop                                           ; $4BE9: $00
    nop                                           ; $4BEA: $00
    nop                                           ; $4BEB: $00
    nop                                           ; $4BEC: $00
    nop                                           ; $4BED: $00
    nop                                           ; $4BEE: $00
    nop                                           ; $4BEF: $00
    nop                                           ; $4BF0: $00

jr_014_4BF1:
    nop                                           ; $4BF1: $00
    nop                                           ; $4BF2: $00
    nop                                           ; $4BF3: $00
    nop                                           ; $4BF4: $00
    nop                                           ; $4BF5: $00
    nop                                           ; $4BF6: $00
    nop                                           ; $4BF7: $00
    nop                                           ; $4BF8: $00
    nop                                           ; $4BF9: $00
    nop                                           ; $4BFA: $00
    nop                                           ; $4BFB: $00
    nop                                           ; $4BFC: $00
    nop                                           ; $4BFD: $00
    nop                                           ; $4BFE: $00
    nop                                           ; $4BFF: $00
    ccf                                           ; $4C00: $3F
    ld e, $3F                                     ; $4C01: $1E $3F
    nop                                           ; $4C03: $00
    ld c, c                                       ; $4C04: $49
    ld [hl], $7F                                  ; $4C05: $36 $7F
    nop                                           ; $4C07: $00
    nop                                           ; $4C08: $00
    nop                                           ; $4C09: $00
    nop                                           ; $4C0A: $00
    nop                                           ; $4C0B: $00
    nop                                           ; $4C0C: $00

jr_014_4C0D:
    nop                                           ; $4C0D: $00
    nop                                           ; $4C0E: $00

jr_014_4C0F:
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
    rst RST_38                                    ; $4C20: $FF
    ld [bc], a                                    ; $4C21: $02
    rst RST_38                                    ; $4C22: $FF
    ld a, [hl]                                    ; $4C23: $7E
    cp $19                                        ; $4C24: $FE $19
    cp e                                          ; $4C26: $BB
    ld b, h                                       ; $4C27: $44
    xor e                                         ; $4C28: $AB
    ld b, h                                       ; $4C29: $44
    ld b, a                                       ; $4C2A: $47
    nop                                           ; $4C2B: $00
    inc bc                                        ; $4C2C: $03
    ld bc, $0103                                  ; $4C2D: $01 $03 $01
    inc bc                                        ; $4C30: $03
    ld bc, $0102                                  ; $4C31: $01 $02 $01
    ld [bc], a                                    ; $4C34: $02
    ld bc, $0007                                  ; $4C35: $01 $07 $00
    rrca                                          ; $4C38: $0F
    rlca                                          ; $4C39: $07
    rra                                           ; $4C3A: $1F
    nop                                           ; $4C3B: $00
    inc h                                         ; $4C3C: $24
    dec de                                        ; $4C3D: $1B
    ccf                                           ; $4C3E: $3F
    nop                                           ; $4C3F: $00
    rst RST_38                                    ; $4C40: $FF
    inc de                                        ; $4C41: $13
    ld a, a                                       ; $4C42: $7F
    sbc h                                         ; $4C43: $9C
    rst RST_38                                    ; $4C44: $FF
    jr c, @+$01                                   ; $4C45: $38 $FF

    rra                                           ; $4C47: $1F
    ld a, a                                       ; $4C48: $7F
    rst RST_08                                    ; $4C49: $CF
    rst RST_38                                    ; $4C4A: $FF
    jp nc, Jump_000_34FF                          ; $4C4B: $D2 $FF $34

    ccf                                           ; $4C4E: $3F
    ldh [$FF3F], a                                ; $4C4F: $E0 $3F
    ldh [$FF61], a                                ; $4C51: $E0 $61
    ret nz                                        ; $4C53: $C0

    ld h, c                                       ; $4C54: $61
    ret nz                                        ; $4C55: $C0

    ret nz                                        ; $4C56: $C0

    nop                                           ; $4C57: $00
    ret nz                                        ; $4C58: $C0

    add b                                         ; $4C59: $80
    ret nz                                        ; $4C5A: $C0

    add b                                         ; $4C5B: $80
    ret nz                                        ; $4C5C: $C0

    nop                                           ; $4C5D: $00
    ret nz                                        ; $4C5E: $C0

    nop                                           ; $4C5F: $00
    cp a                                          ; $4C60: $BF
    ld h, e                                       ; $4C61: $63
    xor a                                         ; $4C62: $AF
    ld e, e                                       ; $4C63: $5B
    rst RST_28                                    ; $4C64: $EF
    sbc e                                         ; $4C65: $9B
    rst RST_38                                    ; $4C66: $FF
    jp $9BEF                                      ; $4C67: $C3 $EF $9B


    rst RST_28                                    ; $4C6A: $EF
    dec de                                        ; $4C6B: $1B
    rst RST_38                                    ; $4C6C: $FF
    ld b, $EF                                     ; $4C6D: $06 $EF
    nop                                           ; $4C6F: $00
    db $10                                        ; $4C70: $10
    ldh [rNR10], a                                ; $4C71: $E0 $10
    ldh [$FF0C], a                                ; $4C73: $E0 $0C
    ldh a, [$FF8C]                                ; $4C75: $F0 $8C
    ld [hl], b                                    ; $4C77: $70
    adc [hl]                                      ; $4C78: $8E
    ld [hl], b                                    ; $4C79: $70
    cp $08                                        ; $4C7A: $FE $08
    cp $78                                        ; $4C7C: $FE $78
    ld a, [hl]                                    ; $4C7E: $7E
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
    nop                                           ; $4C8A: $00
    nop                                           ; $4C8B: $00
    nop                                           ; $4C8C: $00
    nop                                           ; $4C8D: $00
    nop                                           ; $4C8E: $00
    nop                                           ; $4C8F: $00
    jr nc, jr_014_4C92                            ; $4C90: $30 $00

jr_014_4C92:
    ld c, b                                       ; $4C92: $48
    jr nc, @-$43                                  ; $4C93: $30 $BB

    ld h, b                                       ; $4C95: $60
    db $E4                                        ; $4C96: $E4
    ld e, e                                       ; $4C97: $5B
    rst RST_38                                    ; $4C98: $FF
    ld e, e                                       ; $4C99: $5B
    ld a, a                                       ; $4C9A: $7F
    nop                                           ; $4C9B: $00
    ld a, a                                       ; $4C9C: $7F
    ccf                                           ; $4C9D: $3F
    ld a, a                                       ; $4C9E: $7F
    ccf                                           ; $4C9F: $3F
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
    dec b                                         ; $4CAA: $05
    nop                                           ; $4CAB: $00
    jp z, $B405                                   ; $4CAC: $CA $05 $B4

    ld c, e                                       ; $4CAF: $4B
    or l                                          ; $4CB0: $B5
    ld c, e                                       ; $4CB1: $4B
    rst RST_18                                    ; $4CB2: $DF
    ld l, d                                       ; $4CB3: $6A
    ld a, [hl]                                    ; $4CB4: $7E
    ld hl, $2EF1                                  ; $4CB5: $21 $F1 $2E
    rst RST_38                                    ; $4CB8: $FF
    ld de, $A4DB                                  ; $4CB9: $11 $DB $A4
    call c, $DEAB                                 ; $4CBC: $DC $AB $DE
    dec hl                                        ; $4CBF: $2B
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
    cp c                                          ; $4CCC: $B9
    nop                                           ; $4CCD: $00
    adc $39                                       ; $4CCE: $CE $39
    cp l                                          ; $4CD0: $BD
    ld [hl], e                                    ; $4CD1: $73
    ei                                            ; $4CD2: $FB
    ld c, $27                                     ; $4CD3: $0E $27
    sbc $BF                                       ; $4CD5: $DE $BF
    ld e, h                                       ; $4CD7: $5C
    cp h                                          ; $4CD8: $BC
    ld e, e                                       ; $4CD9: $5B
    cp b                                          ; $4CDA: $B8
    ld b, a                                       ; $4CDB: $47
    cp $91                                        ; $4CDC: $FE $91
    rst RST_30                                    ; $4CDE: $F7
    ld l, $00                                     ; $4CDF: $2E $00
    nop                                           ; $4CE1: $00
    nop                                           ; $4CE2: $00
    nop                                           ; $4CE3: $00
    nop                                           ; $4CE4: $00
    nop                                           ; $4CE5: $00
    nop                                           ; $4CE6: $00
    nop                                           ; $4CE7: $00
    nop                                           ; $4CE8: $00
    nop                                           ; $4CE9: $00
    nop                                           ; $4CEA: $00
    nop                                           ; $4CEB: $00
    add b                                         ; $4CEC: $80
    nop                                           ; $4CED: $00
    add b                                         ; $4CEE: $80
    nop                                           ; $4CEF: $00
    add b                                         ; $4CF0: $80
    nop                                           ; $4CF1: $00
    nop                                           ; $4CF2: $00
    nop                                           ; $4CF3: $00
    nop                                           ; $4CF4: $00
    nop                                           ; $4CF5: $00
    ldh a, [rP1]                                  ; $4CF6: $F0 $00
    ld [$38F0], sp                                ; $4CF8: $08 $F0 $38
    ret nz                                        ; $4CFB: $C0

    ldh a, [rP1]                                  ; $4CFC: $F0 $00
    ldh [rP1], a                                  ; $4CFE: $E0 $00
    ld hl, sp+$00                                 ; $4D00: $F8 $00
    db $E4                                        ; $4D02: $E4
    ld e, b                                       ; $4D03: $58
    ld hl, sp+$60                                 ; $4D04: $F8 $60
    ldh a, [$FF60]                                ; $4D06: $F0 $60
    ld hl, sp+$60                                 ; $4D08: $F8 $60
    db $E4                                        ; $4D0A: $E4
    ld e, b                                       ; $4D0B: $58
    ld hl, sp-$40                                 ; $4D0C: $F8 $C0
    ret nz                                        ; $4D0E: $C0

    nop                                           ; $4D0F: $00
    nop                                           ; $4D10: $00
    nop                                           ; $4D11: $00
    nop                                           ; $4D12: $00
    nop                                           ; $4D13: $00
    nop                                           ; $4D14: $00
    nop                                           ; $4D15: $00
    nop                                           ; $4D16: $00
    nop                                           ; $4D17: $00
    nop                                           ; $4D18: $00
    nop                                           ; $4D19: $00
    nop                                           ; $4D1A: $00
    nop                                           ; $4D1B: $00
    nop                                           ; $4D1C: $00
    nop                                           ; $4D1D: $00
    nop                                           ; $4D1E: $00
    nop                                           ; $4D1F: $00
    jr nc, jr_014_4D22                            ; $4D20: $30 $00

jr_014_4D22:
    ld c, b                                       ; $4D22: $48
    jr nc, @-$43                                  ; $4D23: $30 $BB

    ld h, b                                       ; $4D25: $60
    db $E4                                        ; $4D26: $E4
    ld e, e                                       ; $4D27: $5B
    rst RST_38                                    ; $4D28: $FF
    ld e, e                                       ; $4D29: $5B
    ld a, a                                       ; $4D2A: $7F
    nop                                           ; $4D2B: $00
    ld a, a                                       ; $4D2C: $7F
    ccf                                           ; $4D2D: $3F
    ld a, a                                       ; $4D2E: $7F
    ccf                                           ; $4D2F: $3F
    ccf                                           ; $4D30: $3F
    nop                                           ; $4D31: $00
    ccf                                           ; $4D32: $3F
    rra                                           ; $4D33: $1F
    ccf                                           ; $4D34: $3F
    ld b, $2E                                     ; $4D35: $06 $2E
    ld de, $112A                                  ; $4D37: $11 $2A $11
    ld de, $0000                                  ; $4D3A: $11 $00 $00
    nop                                           ; $4D3D: $00
    nop                                           ; $4D3E: $00
    nop                                           ; $4D3F: $00
    dec b                                         ; $4D40: $05
    nop                                           ; $4D41: $00
    jp z, $B405                                   ; $4D42: $CA $05 $B4

    ld c, e                                       ; $4D45: $4B
    or l                                          ; $4D46: $B5
    ld c, e                                       ; $4D47: $4B
    rst RST_18                                    ; $4D48: $DF
    ld l, d                                       ; $4D49: $6A
    ld a, [hl]                                    ; $4D4A: $7E
    ld hl, $2EF1                                  ; $4D4B: $21 $F1 $2E
    rst RST_38                                    ; $4D4E: $FF
    ld de, $A4DB                                  ; $4D4F: $11 $DB $A4
    call c, $DEAB                                 ; $4D52: $DC $AB $DE
    dec hl                                        ; $4D55: $2B
    rst RST_38                                    ; $4D56: $FF
    add h                                         ; $4D57: $84
    rst RST_18                                    ; $4D58: $DF
    and a                                         ; $4D59: $A7
    cp a                                          ; $4D5A: $BF
    ld c, [hl]                                    ; $4D5B: $4E
    rst RST_38                                    ; $4D5C: $FF
    rlca                                          ; $4D5D: $07
    rst RST_18                                    ; $4D5E: $DF
    inc sp                                        ; $4D5F: $33
    nop                                           ; $4D60: $00
    nop                                           ; $4D61: $00
    cp c                                          ; $4D62: $B9
    nop                                           ; $4D63: $00
    adc $39                                       ; $4D64: $CE $39
    cp l                                          ; $4D66: $BD
    ld [hl], e                                    ; $4D67: $73
    ei                                            ; $4D68: $FB
    ld c, $27                                     ; $4D69: $0E $27
    sbc $BF                                       ; $4D6B: $DE $BF
    ld e, h                                       ; $4D6D: $5C
    cp h                                          ; $4D6E: $BC
    ld e, e                                       ; $4D6F: $5B
    cp b                                          ; $4D70: $B8
    ld b, a                                       ; $4D71: $47

jr_014_4D72:
    ld hl, sp-$79                                 ; $4D72: $F8 $87
    rst RST_38                                    ; $4D74: $FF
    jr nc, jr_014_4D72                            ; $4D75: $30 $FB

    rst RST_00                                    ; $4D77: $C7
    rst RST_30                                    ; $4D78: $F7
    inc c                                         ; $4D79: $0C
    push af                                       ; $4D7A: $F5
    dec hl                                        ; $4D7B: $2B
    db $FD                                        ; $4D7C: $FD
    di                                            ; $4D7D: $F3
    rst RST_38                                    ; $4D7E: $FF
    ldh [rP1], a                                  ; $4D7F: $E0 $00
    nop                                           ; $4D81: $00
    add b                                         ; $4D82: $80
    nop                                           ; $4D83: $00
    add b                                         ; $4D84: $80
    nop                                           ; $4D85: $00
    add b                                         ; $4D86: $80
    nop                                           ; $4D87: $00
    nop                                           ; $4D88: $00
    nop                                           ; $4D89: $00
    nop                                           ; $4D8A: $00
    nop                                           ; $4D8B: $00
    ldh a, [rP1]                                  ; $4D8C: $F0 $00
    ld [$38F0], sp                                ; $4D8E: $08 $F0 $38
    ret nz                                        ; $4D91: $C0

    ld [hl], b                                    ; $4D92: $70
    add b                                         ; $4D93: $80
    ldh [rP1], a                                  ; $4D94: $E0 $00
    ldh a, [rP1]                                  ; $4D96: $F0 $00
    rst RST_38                                    ; $4D98: $FF
    ld h, b                                       ; $4D99: $60
    db $FC                                        ; $4D9A: $FC
    ld l, e                                       ; $4D9B: $6B
    rst RST_38                                    ; $4D9C: $FF
    ld l, h                                       ; $4D9D: $6C
    cp $6C                                        ; $4D9E: $FE $6C
    rst RST_38                                    ; $4DA0: $FF
    inc [hl]                                      ; $4DA1: $34
    rst RST_38                                    ; $4DA2: $FF
    ld c, l                                       ; $4DA3: $4D
    rst RST_00                                    ; $4DA4: $C7
    ld a, h                                       ; $4DA5: $7C
    ld b, a                                       ; $4DA6: $47
    inc a                                         ; $4DA7: $3C
    dec l                                         ; $4DA8: $2D
    jr jr_014_4DD8                                ; $4DA9: $18 $2D

    jr jr_014_4DEA                                ; $4DAB: $18 $3D

    nop                                           ; $4DAD: $00
    ld a, a                                       ; $4DAE: $7F
    inc a                                         ; $4DAF: $3C
    ld a, a                                       ; $4DB0: $7F
    inc a                                         ; $4DB1: $3C
    ld a, a                                       ; $4DB2: $7F
    inc b                                         ; $4DB3: $04
    and h                                         ; $4DB4: $A4
    ld e, b                                       ; $4DB5: $58
    xor b                                         ; $4DB6: $A8
    ld d, b                                       ; $4DB7: $50
    ld d, b                                       ; $4DB8: $50
    nop                                           ; $4DB9: $00
    nop                                           ; $4DBA: $00
    nop                                           ; $4DBB: $00
    nop                                           ; $4DBC: $00
    nop                                           ; $4DBD: $00
    nop                                           ; $4DBE: $00
    nop                                           ; $4DBF: $00
    db $FD                                        ; $4DC0: $FD
    add e                                         ; $4DC1: $83
    db $FD                                        ; $4DC2: $FD
    inc bc                                        ; $4DC3: $03
    sbc e                                         ; $4DC4: $9B
    ld h, b                                       ; $4DC5: $60
    add hl, bc                                    ; $4DC6: $09
    ldh a, [$FF08]                                ; $4DC7: $F0 $08
    ldh a, [$FFE8]                                ; $4DC9: $F0 $E8
    db $10                                        ; $4DCB: $10
    ld a, h                                       ; $4DCC: $7C
    add sp, -$04                                  ; $4DCD: $E8 $FC

jr_014_4DCF:
    add sp, -$04                                  ; $4DCF: $E8 $FC
    jr jr_014_4DCF                                ; $4DD1: $18 $FC

    ld hl, sp-$68                                 ; $4DD3: $F8 $98
    ld [hl], b                                    ; $4DD5: $70
    adc b                                         ; $4DD6: $88
    ld [hl], b                                    ; $4DD7: $70

jr_014_4DD8:
    ld c, b                                       ; $4DD8: $48
    jr nc, jr_014_4E27                            ; $4DD9: $30 $4C

    jr nc, jr_014_4E59                            ; $4DDB: $30 $7C

    ld [$387C], sp                                ; $4DDD: $08 $7C $38
    rst RST_38                                    ; $4DE0: $FF
    ld l, h                                       ; $4DE1: $6C
    db $FC                                        ; $4DE2: $FC
    ld l, e                                       ; $4DE3: $6B
    rst RST_38                                    ; $4DE4: $FF
    ret c                                         ; $4DE5: $D8

    ld hl, sp+$00                                 ; $4DE6: $F8 $00
    nop                                           ; $4DE8: $00
    nop                                           ; $4DE9: $00

jr_014_4DEA:
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
    add b                                         ; $4E0A: $80
    nop                                           ; $4E0B: $00
    nop                                           ; $4E0C: $00
    nop                                           ; $4E0D: $00
    nop                                           ; $4E0E: $00
    nop                                           ; $4E0F: $00
    nop                                           ; $4E10: $00
    nop                                           ; $4E11: $00
    add b                                         ; $4E12: $80
    nop                                           ; $4E13: $00
    nop                                           ; $4E14: $00
    nop                                           ; $4E15: $00
    nop                                           ; $4E16: $00
    nop                                           ; $4E17: $00
    nop                                           ; $4E18: $00
    nop                                           ; $4E19: $00
    nop                                           ; $4E1A: $00
    nop                                           ; $4E1B: $00
    nop                                           ; $4E1C: $00
    nop                                           ; $4E1D: $00
    nop                                           ; $4E1E: $00
    nop                                           ; $4E1F: $00
    ld a, h                                       ; $4E20: $7C
    jr c, jr_014_4E9F                             ; $4E21: $38 $7C

    jr c, jr_014_4EA1                             ; $4E23: $38 $7C

    nop                                           ; $4E25: $00
    ld d, h                                       ; $4E26: $54

jr_014_4E27:
    jr z, jr_014_4E81                             ; $4E27: $28 $58

    jr nz, jr_014_4E4B                            ; $4E29: $20 $20

    nop                                           ; $4E2B: $00
    nop                                           ; $4E2C: $00
    nop                                           ; $4E2D: $00
    nop                                           ; $4E2E: $00
    nop                                           ; $4E2F: $00
    nop                                           ; $4E30: $00
    nop                                           ; $4E31: $00
    nop                                           ; $4E32: $00
    nop                                           ; $4E33: $00
    nop                                           ; $4E34: $00
    nop                                           ; $4E35: $00
    nop                                           ; $4E36: $00
    nop                                           ; $4E37: $00

jr_014_4E38:
    nop                                           ; $4E38: $00
    nop                                           ; $4E39: $00
    nop                                           ; $4E3A: $00
    nop                                           ; $4E3B: $00
    nop                                           ; $4E3C: $00
    nop                                           ; $4E3D: $00
    nop                                           ; $4E3E: $00
    nop                                           ; $4E3F: $00
    ld bc, $0300                                  ; $4E40: $01 $00 $03
    ld bc, $0103                                  ; $4E43: $01 $03 $01
    ld [bc], a                                    ; $4E46: $02
    ld bc, $0304                                  ; $4E47: $01 $04 $03
    inc c                                         ; $4E4A: $0C

jr_014_4E4B:
    inc bc                                        ; $4E4B: $03
    rra                                           ; $4E4C: $1F
    inc c                                         ; $4E4D: $0C
    ccf                                           ; $4E4E: $3F
    rrca                                          ; $4E4F: $0F
    ld e, a                                       ; $4E50: $5F
    ld h, $A6                                     ; $4E51: $26 $A6
    ld e, b                                       ; $4E53: $58
    ld l, b                                       ; $4E54: $68
    db $10                                        ; $4E55: $10
    stop                                          ; $4E56: $10 $00
    nop                                           ; $4E58: $00

jr_014_4E59:
    nop                                           ; $4E59: $00
    ld bc, $0100                                  ; $4E5A: $01 $00 $01
    nop                                           ; $4E5D: $00
    nop                                           ; $4E5E: $00
    nop                                           ; $4E5F: $00
    pop af                                        ; $4E60: $F1
    adc $FE                                       ; $4E61: $CE $FE
    jr nc, jr_014_4EDD                            ; $4E63: $30 $78

    ldh a, [$FF71]                                ; $4E65: $F0 $71
    ldh [$FFE2], a                                ; $4E67: $E0 $E2
    add c                                         ; $4E69: $81
    add e                                         ; $4E6A: $83
    ld bc, $0287                                  ; $4E6B: $01 $87 $02
    add [hl]                                      ; $4E6E: $86
    inc bc                                        ; $4E6F: $03
    inc b                                         ; $4E70: $04
    inc bc                                        ; $4E71: $03
    add hl, bc                                    ; $4E72: $09
    rlca                                          ; $4E73: $07
    add hl, de                                    ; $4E74: $19
    ld b, $7F                                     ; $4E75: $06 $7F
    jr jr_014_4E38                                ; $4E77: $18 $BF

    ld c, [hl]                                    ; $4E79: $4E
    ld c, [hl]                                    ; $4E7A: $4E
    or h                                          ; $4E7B: $B4
    cp $00                                        ; $4E7C: $FE $00
    nop                                           ; $4E7E: $00
    nop                                           ; $4E7F: $00
    nop                                           ; $4E80: $00

jr_014_4E81:
    nop                                           ; $4E81: $00
    nop                                           ; $4E82: $00
    nop                                           ; $4E83: $00
    nop                                           ; $4E84: $00
    nop                                           ; $4E85: $00
    nop                                           ; $4E86: $00
    nop                                           ; $4E87: $00
    nop                                           ; $4E88: $00
    nop                                           ; $4E89: $00
    ld bc, $0600                                  ; $4E8A: $01 $00 $06
    ld bc, $0619                                  ; $4E8D: $01 $19 $06
    ld l, a                                       ; $4E90: $6F
    rla                                           ; $4E91: $17
    sbc a                                         ; $4E92: $9F
    ld a, e                                       ; $4E93: $7B
    rst RST_38                                    ; $4E94: $FF
    ld h, b                                       ; $4E95: $60
    ld h, h                                       ; $4E96: $64
    inc bc                                        ; $4E97: $03
    inc b                                         ; $4E98: $04
    inc bc                                        ; $4E99: $03
    rlca                                          ; $4E9A: $07
    inc bc                                        ; $4E9B: $03
    inc bc                                        ; $4E9C: $03
    nop                                           ; $4E9D: $00
    nop                                           ; $4E9E: $00

jr_014_4E9F:
    nop                                           ; $4E9F: $00
    nop                                           ; $4EA0: $00

jr_014_4EA1:
    nop                                           ; $4EA1: $00
    jr jr_014_4EA4                                ; $4EA2: $18 $00

jr_014_4EA4:
    add hl, hl                                    ; $4EA4: $29
    db $10                                        ; $4EA5: $10
    ld d, d                                       ; $4EA6: $52
    ld hl, $017A                                  ; $4EA7: $21 $7A $01
    push bc                                       ; $4EAA: $C5
    ld a, [hl-]                                   ; $4EAB: $3A
    inc a                                         ; $4EAC: $3C
    ei                                            ; $4EAD: $FB
    db $FC                                        ; $4EAE: $FC
    dec sp                                        ; $4EAF: $3B
    rst RST_38                                    ; $4EB0: $FF
    cp b                                          ; $4EB1: $B8
    db $FC                                        ; $4EB2: $FC
    sbc b                                         ; $4EB3: $98
    ret c                                         ; $4EB4: $D8

    add b                                         ; $4EB5: $80
    add b                                         ; $4EB6: $80
    nop                                           ; $4EB7: $00
    add b                                         ; $4EB8: $80
    nop                                           ; $4EB9: $00
    add b                                         ; $4EBA: $80
    nop                                           ; $4EBB: $00
    ld b, $00                                     ; $4EBC: $06 $00
    dec bc                                        ; $4EBE: $0B
    ld b, $37                                     ; $4EBF: $06 $37
    inc e                                         ; $4EC1: $1C
    add hl, sp                                    ; $4EC2: $39
    ld e, $DF                                     ; $4EC3: $1E $DF
    ld c, $3F                                     ; $4EC5: $0E $3F
    add $1F                                       ; $4EC7: $C6 $1F
    ldh [rNR32], a                                ; $4EC9: $E0 $1C
    db $EB                                        ; $4ECB: $EB
    sbc [hl]                                      ; $4ECC: $9E
    ld l, l                                       ; $4ECD: $6D
    ld e, a                                       ; $4ECE: $5F
    xor b                                         ; $4ECF: $A8
    rst RST_38                                    ; $4ED0: $FF
    rlca                                          ; $4ED1: $07
    rra                                           ; $4ED2: $1F
    rlca                                          ; $4ED3: $07
    ccf                                           ; $4ED4: $3F
    ld c, $2F                                     ; $4ED5: $0E $2F
    rla                                           ; $4ED7: $17
    ccf                                           ; $4ED8: $3F
    rlca                                          ; $4ED9: $07
    ld a, a                                       ; $4EDA: $7F
    inc c                                         ; $4EDB: $0C
    adc a                                         ; $4EDC: $8F

jr_014_4EDD:
    ld [hl], e                                    ; $4EDD: $73
    rlca                                          ; $4EDE: $07
    ld hl, sp-$3C                                 ; $4EDF: $F8 $C4
    jr c, @+$46                                   ; $4EE1: $38 $44

    jr c, @-$76                                   ; $4EE3: $38 $88

    ld [hl], b                                    ; $4EE5: $70
    adc b                                         ; $4EE6: $88
    ld [hl], b                                    ; $4EE7: $70
    ret nc                                        ; $4EE8: $D0

    and b                                         ; $4EE9: $A0
    ldh a, [$FF80]                                ; $4EEA: $F0 $80
    ldh a, [$FF60]                                ; $4EEC: $F0 $60
    ldh a, [$FFE0]                                ; $4EEE: $F0 $E0
    ldh [$FFC0], a                                ; $4EF0: $E0 $C0
    ret nz                                        ; $4EF2: $C0

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
    cp $14                                        ; $4F00: $FE $14
    ld e, $E0                                     ; $4F02: $1E $E0
    ld h, d                                       ; $4F04: $62
    sbc h                                         ; $4F05: $9C
    ld a, a                                       ; $4F06: $7F
    add b                                         ; $4F07: $80
    ld b, h                                       ; $4F08: $44
    cp e                                          ; $4F09: $BB
    ret z                                         ; $4F0A: $C8

    ld [hl], a                                    ; $4F0B: $77
    ld e, [hl]                                    ; $4F0C: $5E
    or c                                          ; $4F0D: $B1
    rst RST_30                                    ; $4F0E: $F7
    ld c, $EF                                     ; $4F0F: $0E $EF
    ret c                                         ; $4F11: $D8

    db $EB                                        ; $4F12: $EB
    ld d, $FB                                     ; $4F13: $16 $FB
    ld h, $FF                                     ; $4F15: $26 $FF
    ldh a, [$FFFB]                                ; $4F17: $F0 $FB
    and $FB                                       ; $4F19: $E6 $FB
    add [hl]                                      ; $4F1B: $86
    rst RST_30                                    ; $4F1C: $F7
    ld bc, $00E3                                  ; $4F1D: $01 $E3 $00
    nop                                           ; $4F20: $00
    nop                                           ; $4F21: $00
    nop                                           ; $4F22: $00
    nop                                           ; $4F23: $00
    nop                                           ; $4F24: $00
    nop                                           ; $4F25: $00
    ldh a, [rP1]                                  ; $4F26: $F0 $00
    ld [$38F0], sp                                ; $4F28: $08 $F0 $38
    ret nz                                        ; $4F2B: $C0

    ldh a, [rP1]                                  ; $4F2C: $F0 $00
    ldh [rP1], a                                  ; $4F2E: $E0 $00
    cp $C0                                        ; $4F30: $FE $C0
    ld sp, hl                                     ; $4F32: $F9
    sub $FE                                       ; $4F33: $D6 $FE
    ret c                                         ; $4F35: $D8

    db $FC                                        ; $4F36: $FC
    ret c                                         ; $4F37: $D8

    cp $D8                                        ; $4F38: $FE $D8
    ld sp, hl                                     ; $4F3A: $F9
    sub $FE                                       ; $4F3B: $D6 $FE
    or b                                          ; $4F3D: $B0
    ldh a, [rP1]                                  ; $4F3E: $F0 $00
    nop                                           ; $4F40: $00
    nop                                           ; $4F41: $00
    nop                                           ; $4F42: $00
    nop                                           ; $4F43: $00
    nop                                           ; $4F44: $00
    nop                                           ; $4F45: $00
    nop                                           ; $4F46: $00

jr_014_4F47:
    nop                                           ; $4F47: $00
    nop                                           ; $4F48: $00
    nop                                           ; $4F49: $00
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
    ld h, a                                       ; $4F5A: $67
    nop                                           ; $4F5B: $00
    ld e, h                                       ; $4F5C: $5C
    daa                                           ; $4F5D: $27
    ld l, a                                       ; $4F5E: $6F
    inc sp                                        ; $4F5F: $33
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
    jr z, jr_014_4F7A                             ; $4F78: $28 $00

jr_014_4F7A:
    ld d, h                                       ; $4F7A: $54
    jr z, jr_014_4F47                             ; $4F7B: $28 $CA

    inc [hl]                                      ; $4F7D: $34
    ld l, d                                       ; $4F7E: $6A
    or h                                          ; $4F7F: $B4
    inc bc                                        ; $4F80: $03
    nop                                           ; $4F81: $00
    ld bc, $0300                                  ; $4F82: $01 $00 $03
    ld bc, $0103                                  ; $4F85: $01 $03 $01
    ld [bc], a                                    ; $4F88: $02
    ld bc, $0304                                  ; $4F89: $01 $04 $03
    inc c                                         ; $4F8C: $0C
    inc bc                                        ; $4F8D: $03
    rra                                           ; $4F8E: $1F
    inc c                                         ; $4F8F: $0C
    ccf                                           ; $4F90: $3F
    rrca                                          ; $4F91: $0F
    ld e, a                                       ; $4F92: $5F
    ld h, $A6                                     ; $4F93: $26 $A6
    ld e, b                                       ; $4F95: $58
    ld l, b                                       ; $4F96: $68
    db $10                                        ; $4F97: $10
    stop                                          ; $4F98: $10 $00
    nop                                           ; $4F9A: $00
    nop                                           ; $4F9B: $00
    ld bc, $0100                                  ; $4F9C: $01 $00 $01
    nop                                           ; $4F9F: $00
    cp a                                          ; $4FA0: $BF
    ld [hl], b                                    ; $4FA1: $70
    di                                            ; $4FA2: $F3
    ld l, h                                       ; $4FA3: $6C
    rst RST_38                                    ; $4FA4: $FF
    db $10                                        ; $4FA5: $10
    ld a, d                                       ; $4FA6: $7A
    pop af                                        ; $4FA7: $F1
    ld [hl], e                                    ; $4FA8: $73
    ldh [$FFE5], a                                ; $4FA9: $E0 $E5
    add e                                         ; $4FAB: $83
    add a                                         ; $4FAC: $87
    inc bc                                        ; $4FAD: $03
    adc a                                         ; $4FAE: $8F
    inc b                                         ; $4FAF: $04
    adc h                                         ; $4FB0: $8C
    rlca                                          ; $4FB1: $07
    add hl, bc                                    ; $4FB2: $09
    rlca                                          ; $4FB3: $07
    add hl, bc                                    ; $4FB4: $09
    rlca                                          ; $4FB5: $07
    dec de                                        ; $4FB6: $1B
    ld b, $7F                                     ; $4FB7: $06 $7F
    jr jr_014_4F7A                                ; $4FB9: $18 $BF

    ld c, [hl]                                    ; $4FBB: $4E
    ld c, [hl]                                    ; $4FBC: $4E
    or h                                          ; $4FBD: $B4
    cp $00                                        ; $4FBE: $FE $00
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
    ld bc, $0600                                  ; $4FCA: $01 $00 $06
    ld bc, $0619                                  ; $4FCD: $01 $19 $06
    ld l, a                                       ; $4FD0: $6F
    rla                                           ; $4FD1: $17
    sbc a                                         ; $4FD2: $9F
    ld a, e                                       ; $4FD3: $7B
    rst RST_38                                    ; $4FD4: $FF
    ld h, b                                       ; $4FD5: $60
    ld h, h                                       ; $4FD6: $64
    inc bc                                        ; $4FD7: $03
    inc b                                         ; $4FD8: $04
    inc bc                                        ; $4FD9: $03
    rlca                                          ; $4FDA: $07
    inc bc                                        ; $4FDB: $03
    inc bc                                        ; $4FDC: $03
    nop                                           ; $4FDD: $00
    nop                                           ; $4FDE: $00
    nop                                           ; $4FDF: $00
    ld [bc], a                                    ; $4FE0: $02
    ld bc, $011B                                  ; $4FE1: $01 $1B $01
    add hl, hl                                    ; $4FE4: $29
    db $10                                        ; $4FE5: $10
    ld d, c                                       ; $4FE6: $51
    jr nz, jr_014_5062                            ; $4FE7: $20 $79

    nop                                           ; $4FE9: $00
    rst RST_00                                    ; $4FEA: $C7
    jr c, jr_014_502A                             ; $4FEB: $38 $3D

    ld a, [$3BFC]                                 ; $4FED: $FA $FC $3B
    db $FC                                        ; $4FF0: $FC
    cp e                                          ; $4FF1: $BB
    rst RST_38                                    ; $4FF2: $FF
    sbc b                                         ; $4FF3: $98
    ret c                                         ; $4FF4: $D8

    add b                                         ; $4FF5: $80
    add b                                         ; $4FF6: $80
    nop                                           ; $4FF7: $00
    add b                                         ; $4FF8: $80
    nop                                           ; $4FF9: $00
    add c                                         ; $4FFA: $81
    nop                                           ; $4FFB: $00
    ld [bc], a                                    ; $4FFC: $02
    ld bc, $0103                                  ; $4FFD: $01 $03 $01
    ld e, a                                       ; $5000: $5F
    add b                                         ; $5001: $80
    xor c                                         ; $5002: $A9
    ld d, a                                       ; $5003: $57
    ld c, a                                       ; $5004: $4F
    or [hl]                                       ; $5005: $B6
    ld e, [hl]                                    ; $5006: $5E
    or c                                          ; $5007: $B1
    di                                            ; $5008: $F3
    xor l                                         ; $5009: $AD

jr_014_500A:
    db $EB                                        ; $500A: $EB
    dec d                                         ; $500B: $15
    dec de                                        ; $500C: $1B
    push hl                                       ; $500D: $E5
    ei                                            ; $500E: $FB
    inc b                                         ; $500F: $04
    adc a                                         ; $5010: $8F
    ld a, c                                       ; $5011: $79
    rst RST_28                                    ; $5012: $EF
    ld [hl], $3E                                  ; $5013: $36 $3E
    dec c                                         ; $5015: $0D
    inc a                                         ; $5016: $3C
    inc bc                                        ; $5017: $03
    ld h, e                                       ; $5018: $63
    dec e                                         ; $5019: $1D
    cp a                                          ; $501A: $BF
    ld e, [hl]                                    ; $501B: $5E
    ld a, a                                       ; $501C: $7F
    xor $EF                                       ; $501D: $EE $EF
    sub [hl]                                      ; $501F: $96
    jr z, @+$12                                   ; $5020: $28 $10

    ret c                                         ; $5022: $D8

    jr nc, jr_014_5064                            ; $5023: $30 $3F

    ldh a, [$FF78]                                ; $5025: $F0 $78
    rst RST_20                                    ; $5027: $E7
    or $C9                                        ; $5028: $F6 $C9

jr_014_502A:
    rst RST_28                                    ; $502A: $EF
    sub b                                         ; $502B: $90
    rst RST_38                                    ; $502C: $FF
    ld h, b                                       ; $502D: $60
    pop af                                        ; $502E: $F1
    ld l, [hl]                                    ; $502F: $6E
    pop hl                                        ; $5030: $E1
    sbc $E2                                       ; $5031: $DE $E2
    dec e                                         ; $5033: $1D
    scf                                           ; $5034: $37
    add sp, -$02                                  ; $5035: $E8 $FE
    ldh a, [$FFF1]                                ; $5037: $F0 $F1
    xor $FE                                       ; $5039: $EE $FE
    ldh a, [$FFF1]                                ; $503B: $F0 $F1
    xor $FE                                       ; $503D: $EE $FE
    nop                                           ; $503F: $00
    ldh a, [rP1]                                  ; $5040: $F0 $00
    db $10                                        ; $5042: $10
    ldh [rNR10], a                                ; $5043: $E0 $10
    ldh [rNR41], a                                ; $5045: $E0 $20
    ret nz                                        ; $5047: $C0

    jr nz, jr_014_500A                            ; $5048: $20 $C0

    ret nz                                        ; $504A: $C0

    nop                                           ; $504B: $00
    ldh [rLCDC], a                                ; $504C: $E0 $40
    ldh [$FFC0], a                                ; $504E: $E0 $C0
    ldh [$FFC0], a                                ; $5050: $E0 $C0
    ret nz                                        ; $5052: $C0

    add b                                         ; $5053: $80
    add b                                         ; $5054: $80
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

jr_014_5062:
    nop                                           ; $5062: $00
    nop                                           ; $5063: $00

jr_014_5064:
    nop                                           ; $5064: $00
    nop                                           ; $5065: $00
    nop                                           ; $5066: $00
    nop                                           ; $5067: $00
    ret nz                                        ; $5068: $C0

    nop                                           ; $5069: $00
    ld b, b                                       ; $506A: $40
    add b                                         ; $506B: $80
    ret nz                                        ; $506C: $C0

    add b                                         ; $506D: $80
    ld hl, sp-$80                                 ; $506E: $F8 $80
    call nz, $B238                                ; $5070: $C4 $38 $B2
    ld c, h                                       ; $5073: $4C
    ld a, c                                       ; $5074: $79
    add [hl]                                      ; $5075: $86
    db $FD                                        ; $5076: $FD
    ld [bc], a                                    ; $5077: $02
    adc l                                         ; $5078: $8D
    ld [hl], d                                    ; $5079: $72
    ld a, [bc]                                    ; $507A: $0A
    db $F4                                        ; $507B: $F4
    inc d                                         ; $507C: $14
    add sp, -$48                                  ; $507D: $E8 $B8
    ld b, b                                       ; $507F: $40
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
    ld [$1400], sp                                ; $509C: $08 $00 $14
    ld [$0000], sp                                ; $509F: $08 $00 $00
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
    ld h, e                                       ; $50AC: $63
    nop                                           ; $50AD: $00
    sub h                                         ; $50AE: $94
    ld h, e                                       ; $50AF: $63
    sbc a                                         ; $50B0: $9F
    ld [hl], e                                    ; $50B1: $73
    ld a, a                                       ; $50B2: $7F
    jr nc, jr_014_50F4                            ; $50B3: $30 $3F

    rlca                                          ; $50B5: $07
    ld a, a                                       ; $50B6: $7F
    rrca                                          ; $50B7: $0F
    cp a                                          ; $50B8: $BF
    ld l, a                                       ; $50B9: $6F
    cp a                                          ; $50BA: $BF
    ld l, a                                       ; $50BB: $6F
    ld a, a                                       ; $50BC: $7F
    ld b, $07                                     ; $50BD: $06 $07
    nop                                           ; $50BF: $00
    db $F4                                        ; $50C0: $F4
    ld l, b                                       ; $50C1: $68
    ld hl, sp+$60                                 ; $50C2: $F8 $60
    pop af                                        ; $50C4: $F1
    ld h, b                                       ; $50C5: $60
    pop hl                                        ; $50C6: $E1
    ret nz                                        ; $50C7: $C0

    jp nz, Jump_000_0301                          ; $50C8: $C2 $01 $03

    ld bc, $0207                                  ; $50CB: $01 $07 $02
    ld b, $03                                     ; $50CE: $06 $03
    ld b, $03                                     ; $50D0: $06 $03

jr_014_50D2:
    inc b                                         ; $50D2: $04
    inc bc                                        ; $50D3: $03

jr_014_50D4:
    inc b                                         ; $50D4: $04
    inc bc                                        ; $50D5: $03
    rrca                                          ; $50D6: $0F
    nop                                           ; $50D7: $00
    rra                                           ; $50D8: $1F
    rrca                                          ; $50D9: $0F
    ccf                                           ; $50DA: $3F
    ld bc, $3649                                  ; $50DB: $01 $49 $36
    ld a, a                                       ; $50DE: $7F
    nop                                           ; $50DF: $00
    rst RST_38                                    ; $50E0: $FF
    ld a, $FF                                     ; $50E1: $3E $FF
    jr c, @+$01                                   ; $50E3: $38 $FF

    ld [hl], c                                    ; $50E5: $71
    rst RST_38                                    ; $50E6: $FF
    ccf                                           ; $50E7: $3F
    rst RST_38                                    ; $50E8: $FF
    sbc a                                         ; $50E9: $9F
    rst RST_38                                    ; $50EA: $FF
    and h                                         ; $50EB: $A4
    rst RST_38                                    ; $50EC: $FF
    ld l, b                                       ; $50ED: $68
    ld a, a                                       ; $50EE: $7F
    ret nz                                        ; $50EF: $C0

    ld a, [hl]                                    ; $50F0: $7E
    pop bc                                        ; $50F1: $C1
    add $81                                       ; $50F2: $C6 $81

jr_014_50F4:
    jp nz, $8181                                  ; $50F4: $C2 $81 $81

    nop                                           ; $50F7: $00

jr_014_50F8:
    add c                                         ; $50F8: $81
    nop                                           ; $50F9: $00
    add c                                         ; $50FA: $81
    nop                                           ; $50FB: $00
    add c                                         ; $50FC: $81
    nop                                           ; $50FD: $00
    add b                                         ; $50FE: $80
    nop                                           ; $50FF: $00
    ld e, a                                       ; $5100: $5F
    or [hl]                                       ; $5101: $B6
    rst RST_18                                    ; $5102: $DF
    ld [hl], $FF                                  ; $5103: $36 $FF
    ld b, $DF                                     ; $5105: $06 $DF
    or [hl]                                       ; $5107: $B6
    rst RST_18                                    ; $5108: $DF
    ld [hl], $FF                                  ; $5109: $36 $FF
    dec c                                         ; $510B: $0D
    rst RST_18                                    ; $510C: $DF
    nop                                           ; $510D: $00
    ret nz                                        ; $510E: $C0

    nop                                           ; $510F: $00
    jr nz, jr_014_50D2                            ; $5110: $20 $C0

    jr nz, jr_014_50D4                            ; $5112: $20 $C0

    jr @-$1E                                      ; $5114: $18 $E0

    jr jr_014_50F8                                ; $5116: $18 $E0

    inc e                                         ; $5118: $1C
    ldh [$FFFC], a                                ; $5119: $E0 $FC
    db $10                                        ; $511B: $10
    db $FC                                        ; $511C: $FC
    ldh a, [$FFFC]                                ; $511D: $F0 $FC
    nop                                           ; $511F: $00
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
    rrca                                          ; $5132: $0F
    nop                                           ; $5133: $00
    db $10                                        ; $5134: $10
    rrca                                          ; $5135: $0F
    db $10                                        ; $5136: $10
    rrca                                          ; $5137: $0F
    adc b                                         ; $5138: $88
    rlca                                          ; $5139: $07
    adc h                                         ; $513A: $8C
    inc bc                                        ; $513B: $03
    ldh a, [c]                                    ; $513C: $F2
    dec c                                         ; $513D: $0D
    db $E3                                        ; $513E: $E3
    ld e, h                                       ; $513F: $5C
    nop                                           ; $5140: $00
    nop                                           ; $5141: $00
    nop                                           ; $5142: $00
    nop                                           ; $5143: $00
    nop                                           ; $5144: $00
    nop                                           ; $5145: $00
    nop                                           ; $5146: $00
    nop                                           ; $5147: $00
    inc bc                                        ; $5148: $03
    nop                                           ; $5149: $00
    dec e                                         ; $514A: $1D
    ld [bc], a                                    ; $514B: $02
    jr nz, jr_014_516D                            ; $514C: $20 $1F

    ld e, h                                       ; $514E: $5C
    inc hl                                        ; $514F: $23
    ld e, a                                       ; $5150: $5F
    ld hl, $1C23                                  ; $5151: $21 $23 $1C
    db $E4                                        ; $5154: $E4
    dec de                                        ; $5155: $1B
    ld h, b                                       ; $5156: $60
    sbc a                                         ; $5157: $9F
    ld h, c                                       ; $5158: $61
    sbc [hl]                                      ; $5159: $9E
    di                                            ; $515A: $F3
    ld l, l                                       ; $515B: $6D
    rst RST_38                                    ; $515C: $FF
    ld [hl], c                                    ; $515D: $71
    rst RST_38                                    ; $515E: $FF
    ld c, [hl]                                    ; $515F: $4E
    nop                                           ; $5160: $00
    nop                                           ; $5161: $00
    nop                                           ; $5162: $00
    nop                                           ; $5163: $00
    nop                                           ; $5164: $00
    nop                                           ; $5165: $00
    nop                                           ; $5166: $00
    nop                                           ; $5167: $00
    ld b, b                                       ; $5168: $40
    nop                                           ; $5169: $00
    and b                                         ; $516A: $A0
    ld b, b                                       ; $516B: $40
    ret nc                                        ; $516C: $D0

jr_014_516D:
    jr nz, jr_014_51EE                            ; $516D: $20 $7F

    add b                                         ; $516F: $80
    adc $BC                                       ; $5170: $CE $BC
    db $FC                                        ; $5172: $FC
    jr c, @+$01                                   ; $5173: $38 $FF

    nop                                           ; $5175: $00
    add b                                         ; $5176: $80
    ld a, a                                       ; $5177: $7F
    jp $FFBC                                      ; $5178: $C3 $BC $FF


    add b                                         ; $517B: $80
    cp [hl]                                       ; $517C: $BE
    ld [hl], b                                    ; $517D: $70
    ld a, a                                       ; $517E: $7F
    add $80                                       ; $517F: $C6 $80
    nop                                           ; $5181: $00
    add b                                         ; $5182: $80
    nop                                           ; $5183: $00
    nop                                           ; $5184: $00
    nop                                           ; $5185: $00
    nop                                           ; $5186: $00
    nop                                           ; $5187: $00
    ldh a, [rP1]                                  ; $5188: $F0 $00
    ret z                                         ; $518A: $C8

    or b                                          ; $518B: $B0
    ldh a, [$FFC0]                                ; $518C: $F0 $C0
    ldh [$FFC0], a                                ; $518E: $E0 $C0
    ldh a, [$FFC0]                                ; $5190: $F0 $C0
    ret z                                         ; $5192: $C8

    or b                                          ; $5193: $B0
    ldh a, [$FF80]                                ; $5194: $F0 $80
    add b                                         ; $5196: $80
    nop                                           ; $5197: $00
    nop                                           ; $5198: $00
    nop                                           ; $5199: $00
    nop                                           ; $519A: $00
    nop                                           ; $519B: $00
    nop                                           ; $519C: $00
    nop                                           ; $519D: $00
    nop                                           ; $519E: $00
    nop                                           ; $519F: $00
    ldh [rP1], a                                  ; $51A0: $E0 $00
    sbc a                                         ; $51A2: $9F
    ld h, b                                       ; $51A3: $60
    ld c, [hl]                                    ; $51A4: $4E
    dec [hl]                                      ; $51A5: $35
    ccf                                           ; $51A6: $3F
    ld c, $1F                                     ; $51A7: $0E $1F
    ld c, $0E                                     ; $51A9: $0E $0E
    inc b                                         ; $51AB: $04
    inc b                                         ; $51AC: $04
    nop                                           ; $51AD: $00
    inc bc                                        ; $51AE: $03
    nop                                           ; $51AF: $00
    rra                                           ; $51B0: $1F
    inc bc                                        ; $51B1: $03
    inc hl                                        ; $51B2: $23
    dec e                                         ; $51B3: $1D
    inc hl                                        ; $51B4: $23
    dec e                                         ; $51B5: $1D
    rra                                           ; $51B6: $1F
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
    ld bc, $1E00                                  ; $51C2: $01 $00 $1E
    ld bc, $1DE3                                  ; $51C5: $01 $E3 $1D
    add e                                         ; $51C8: $83
    cp $1E                                        ; $51C9: $FE $1E
    db $FD                                        ; $51CB: $FD
    rst RST_38                                    ; $51CC: $FF
    dec e                                         ; $51CD: $1D
    dec e                                         ; $51CE: $1D
    ld [bc], a                                    ; $51CF: $02
    add hl, de                                    ; $51D0: $19
    rrca                                          ; $51D1: $0F
    di                                            ; $51D2: $F3
    rra                                           ; $51D3: $1F
    rst RST_08                                    ; $51D4: $CF
    cp a                                          ; $51D5: $BF
    rst RST_38                                    ; $51D6: $FF
    rst RST_10                                    ; $51D7: $D7
    rst RST_30                                    ; $51D8: $F7
    add b                                         ; $51D9: $80
    res 0, [hl]                                   ; $51DA: $CB $86
    adc [hl]                                      ; $51DC: $8E
    dec b                                         ; $51DD: $05
    rlca                                          ; $51DE: $07
    ld bc, $0000                                  ; $51DF: $01 $00 $00
    add c                                         ; $51E2: $81
    nop                                           ; $51E3: $00
    ld b, e                                       ; $51E4: $43
    add c                                         ; $51E5: $81
    ei                                            ; $51E6: $FB
    add c                                         ; $51E7: $81
    add a                                         ; $51E8: $87
    ld a, d                                       ; $51E9: $7A
    ld e, a                                       ; $51EA: $5F
    and d                                         ; $51EB: $A2
    rst RST_20                                    ; $51EC: $E7
    sbc c                                         ; $51ED: $99

jr_014_51EE:
    add a                                         ; $51EE: $87
    ld a, b                                       ; $51EF: $78
    add a                                         ; $51F0: $87
    ld a, b                                       ; $51F1: $78
    rst RST_18                                    ; $51F2: $DF
    and b                                         ; $51F3: $A0
    db $E3                                        ; $51F4: $E3
    add b                                         ; $51F5: $80
    ret nz                                        ; $51F6: $C0

    nop                                           ; $51F7: $00
    ldh [$FFC0], a                                ; $51F8: $E0 $C0
    xor $00                                       ; $51FA: $EE $00
    ld sp, $FFCE                                  ; $51FC: $31 $CE $FF
    xor $E0                                       ; $51FF: $EE $E0
    nop                                           ; $5201: $00
    and b                                         ; $5202: $A0
    ld b, b                                       ; $5203: $40
    ldh a, [rNR41]                                ; $5204: $F0 $20
    ei                                            ; $5206: $FB
    ldh a, [$FFFE]                                ; $5207: $F0 $FE
    ei                                            ; $5209: $FB
    db $FC                                        ; $520A: $FC
    db $DB                                        ; $520B: $DB
    rst RST_38                                    ; $520C: $FF
    ret                                           ; $520D: $C9


    db $FD                                        ; $520E: $FD
    jp z, $EBFC                                   ; $520F: $CA $FC $EB

    cp $75                                        ; $5212: $FE $75
    ld a, a                                       ; $5214: $7F
    adc [hl]                                      ; $5215: $8E
    sbc a                                         ; $5216: $9F
    ld h, e                                       ; $5217: $63
    ld [hl], e                                    ; $5218: $73
    inc c                                         ; $5219: $0C
    ld [hl], b                                    ; $521A: $70
    rrca                                          ; $521B: $0F
    sub b                                         ; $521C: $90
    ld l, a                                       ; $521D: $6F
    ld [$00F7], sp                                ; $521E: $08 $F7 $00
    nop                                           ; $5221: $00
    ld a, [hl]                                    ; $5222: $7E
    nop                                           ; $5223: $00
    reti                                          ; $5224: $D9


    ld l, $5E                                     ; $5225: $2E $5E
    and c                                         ; $5227: $A1
    ld e, c                                       ; $5228: $59
    xor [hl]                                      ; $5229: $AE
    ld l, h                                       ; $522A: $6C
    sub a                                         ; $522B: $97
    rst RST_28                                    ; $522C: $EF
    db $10                                        ; $522D: $10
    ld a, [bc]                                    ; $522E: $0A
    db $F4                                        ; $522F: $F4
    db $FD                                        ; $5230: $FD
    ld b, $ED                                     ; $5231: $06 $ED
    halt                                          ; $5233: $76
    rst RST_28                                    ; $5234: $EF
    ld a, d                                       ; $5235: $7A
    or $38                                        ; $5236: $F6 $38
    cp d                                          ; $5238: $BA
    inc e                                         ; $5239: $1C
    sbc l                                         ; $523A: $9D
    ld b, $87                                     ; $523B: $06 $87
    nop                                           ; $523D: $00
    add b                                         ; $523E: $80
    nop                                           ; $523F: $00
    cp a                                          ; $5240: $BF
    ld e, b                                       ; $5241: $58
    rst RST_38                                    ; $5242: $FF
    ld e, e                                       ; $5243: $5B
    ld a, a                                       ; $5244: $7F
    inc e                                         ; $5245: $1C
    inc e                                         ; $5246: $1C
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

jr_014_5253:
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
    di                                            ; $5260: $F3
    db $EC                                        ; $5261: $EC
    db $FC                                        ; $5262: $FC
    add b                                         ; $5263: $80
    ret c                                         ; $5264: $D8

    and b                                         ; $5265: $A0
    db $E4                                        ; $5266: $E4
    jr jr_014_5281                                ; $5267: $18 $18

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
    ret nc                                        ; $5280: $D0

jr_014_5281:
    jr nz, jr_014_5253                            ; $5281: $20 $D0

    jr nz, jr_014_52E5                            ; $5283: $20 $60

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

jr_014_5290:
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
    nop                                           ; $529E: $00
    nop                                           ; $529F: $00
    nop                                           ; $52A0: $00
    nop                                           ; $52A1: $00
    nop                                           ; $52A2: $00
    nop                                           ; $52A3: $00
    nop                                           ; $52A4: $00
    nop                                           ; $52A5: $00
    nop                                           ; $52A6: $00
    nop                                           ; $52A7: $00
    nop                                           ; $52A8: $00
    nop                                           ; $52A9: $00
    nop                                           ; $52AA: $00
    nop                                           ; $52AB: $00
    nop                                           ; $52AC: $00
    nop                                           ; $52AD: $00
    nop                                           ; $52AE: $00
    nop                                           ; $52AF: $00
    nop                                           ; $52B0: $00
    nop                                           ; $52B1: $00
    nop                                           ; $52B2: $00
    nop                                           ; $52B3: $00
    nop                                           ; $52B4: $00
    nop                                           ; $52B5: $00
    add b                                         ; $52B6: $80
    nop                                           ; $52B7: $00
    nop                                           ; $52B8: $00
    nop                                           ; $52B9: $00
    add b                                         ; $52BA: $80
    nop                                           ; $52BB: $00
    nop                                           ; $52BC: $00
    nop                                           ; $52BD: $00
    nop                                           ; $52BE: $00
    nop                                           ; $52BF: $00
    ldh [rP1], a                                  ; $52C0: $E0 $00
    sbc a                                         ; $52C2: $9F
    ld h, b                                       ; $52C3: $60
    ld c, a                                       ; $52C4: $4F
    ld [hl], $3F                                  ; $52C5: $36 $3F
    ld c, $1F                                     ; $52C7: $0E $1F
    ld c, $0F                                     ; $52C9: $0E $0F
    ld b, $06                                     ; $52CB: $06 $06
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

jr_014_52E5:
    nop                                           ; $52E5: $00
    nop                                           ; $52E6: $00
    nop                                           ; $52E7: $00
    nop                                           ; $52E8: $00
    nop                                           ; $52E9: $00
    ld b, $00                                     ; $52EA: $06 $00
    add hl, bc                                    ; $52EC: $09
    ld b, $1F                                     ; $52ED: $06 $1F
    ld b, $2E                                     ; $52EF: $06 $2E
    add hl, de                                    ; $52F1: $19
    ld c, a                                       ; $52F2: $4F
    jr c, jr_014_5290                             ; $52F3: $38 $9B

    ld [hl], a                                    ; $52F5: $77
    ld a, e                                       ; $52F6: $7B
    rst RST_30                                    ; $52F7: $F7
    rst RST_38                                    ; $52F8: $FF
    ldh a, [$FFF5]                                ; $52F9: $F0 $F5
    inc bc                                        ; $52FB: $03
    dec b                                         ; $52FC: $05
    inc bc                                        ; $52FD: $03
    inc bc                                        ; $52FE: $03
    nop                                           ; $52FF: $00
    ld bc, $0300                                  ; $5300: $01 $00 $03
    nop                                           ; $5303: $00
    rlca                                          ; $5304: $07
    ld [bc], a                                    ; $5305: $02
    rlca                                          ; $5306: $07
    inc bc                                        ; $5307: $03
    rrca                                          ; $5308: $0F
    dec b                                         ; $5309: $05
    rrca                                          ; $530A: $0F
    dec b                                         ; $530B: $05
    rst RST_38                                    ; $530C: $FF
    dec b                                         ; $530D: $05
    ccf                                           ; $530E: $3F
    jp $B37F                                      ; $530F: $C3 $7F $B3


    rst RST_38                                    ; $5312: $FF
    nop                                           ; $5313: $00
    adc h                                         ; $5314: $8C
    ld [hl], e                                    ; $5315: $73
    rst RST_38                                    ; $5316: $FF
    ld a, e                                       ; $5317: $7B
    rst RST_38                                    ; $5318: $FF
    ld h, e                                       ; $5319: $63
    rst RST_38                                    ; $531A: $FF
    ld l, a                                       ; $531B: $6F
    rst RST_38                                    ; $531C: $FF
    ld [hl], e                                    ; $531D: $73
    di                                            ; $531E: $F3
    nop                                           ; $531F: $00
    add b                                         ; $5320: $80
    nop                                           ; $5321: $00
    ld b, b                                       ; $5322: $40
    add b                                         ; $5323: $80
    ldh [rLCDC], a                                ; $5324: $E0 $40
    ldh [$FFC0], a                                ; $5326: $E0 $C0
    ldh a, [$FFE0]                                ; $5328: $F0 $E0
    di                                            ; $532A: $F3
    and b                                         ; $532B: $A0
    ld a, [$FE91]                                 ; $532C: $FA $91 $FE
    sub c                                         ; $532F: $91
    rst RST_38                                    ; $5330: $FF
    ldh [$FFF1], a                                ; $5331: $E0 $F1
    ld l, $7C                                     ; $5333: $2E $7C
    add e                                         ; $5335: $83
    add $B9                                       ; $5336: $C6 $B9
    add $B9                                       ; $5338: $C6 $B9
    db $FC                                        ; $533A: $FC
    add e                                         ; $533B: $83
    pop de                                        ; $533C: $D1
    adc [hl]                                      ; $533D: $8E
    adc $00                                       ; $533E: $CE $00
    ret nz                                        ; $5340: $C0

    nop                                           ; $5341: $00
    or b                                          ; $5342: $B0
    ld b, b                                       ; $5343: $40
    inc l                                         ; $5344: $2C
    ret nc                                        ; $5345: $D0

    ld [$6D14], a                                 ; $5346: $EA $14 $6D
    sub d                                         ; $5349: $92
    ld a, [hl+]                                   ; $534A: $2A
    call nc, Call_014_6E99                        ; $534B: $D4 $99 $6E
    db $FD                                        ; $534E: $FD
    ld [bc], a                                    ; $534F: $02
    ld a, [$DA4C]                                 ; $5350: $FA $4C $DA
    ld l, h                                       ; $5353: $6C
    sbc $F4                                       ; $5354: $DE $F4
    db $EC                                        ; $5356: $EC
    ld [hl], b                                    ; $5357: $70
    ld [hl], h                                    ; $5358: $74
    jr c, jr_014_5395                             ; $5359: $38 $3A

    inc c                                         ; $535B: $0C
    ld c, $00                                     ; $535C: $0E $00
    nop                                           ; $535E: $00
    nop                                           ; $535F: $00
    ld e, h                                       ; $5360: $5C
    jr nz, jr_014_5385                            ; $5361: $20 $22

    inc e                                         ; $5363: $1C
    inc e                                         ; $5364: $1C
    nop                                           ; $5365: $00
    nop                                           ; $5366: $00
    nop                                           ; $5367: $00
    nop                                           ; $5368: $00
    nop                                           ; $5369: $00
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
    nop                                           ; $5378: $00
    nop                                           ; $5379: $00
    nop                                           ; $537A: $00
    nop                                           ; $537B: $00
    nop                                           ; $537C: $00
    nop                                           ; $537D: $00

jr_014_537E:
    nop                                           ; $537E: $00
    nop                                           ; $537F: $00
    rst RST_38                                    ; $5380: $FF
    ld [hl], $49                                  ; $5381: $36 $49
    ld [hl], $37                                  ; $5383: $36 $37

jr_014_5385:
    ld bc, $0304                                  ; $5385: $01 $04 $03
    inc bc                                        ; $5388: $03
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

jr_014_5395:
    nop                                           ; $5395: $00
    ld bc, $0300                                  ; $5396: $01 $00 $03
    ld bc, $0007                                  ; $5399: $01 $07 $00
    add hl, bc                                    ; $539C: $09
    ld b, $0F                                     ; $539D: $06 $0F
    nop                                           ; $539F: $00
    rst RST_08                                    ; $53A0: $CF
    add [hl]                                      ; $53A1: $86
    rst RST_00                                    ; $53A2: $C7
    add c                                         ; $53A3: $81
    ld b, a                                       ; $53A4: $47
    add b                                         ; $53A5: $80
    adc b                                         ; $53A6: $88
    rlca                                          ; $53A7: $07
    jr @+$09                                      ; $53A8: $18 $07

    ld l, l                                       ; $53AA: $6D
    ld a, [de]                                    ; $53AB: $1A
    cp $58                                        ; $53AC: $FE $58
    sbc $64                                       ; $53AE: $DE $64
    adc $7C                                       ; $53B0: $CE $7C
    adc [hl]                                      ; $53B2: $8E
    ld a, h                                       ; $53B3: $7C
    sbc h                                         ; $53B4: $9C
    ld [hl], b                                    ; $53B5: $70
    ldh a, [rNR41]                                ; $53B6: $F0 $20
    ldh [$FFC0], a                                ; $53B8: $E0 $C0
    ldh [rP1], a                                  ; $53BA: $E0 $00
    jr nz, jr_014_537E                            ; $53BC: $20 $C0

    ldh [rP1], a                                  ; $53BE: $E0 $00
    rst RST_38                                    ; $53C0: $FF
    ld b, b                                       ; $53C1: $40
    ld hl, sp-$80                                 ; $53C2: $F8 $80
    db $FC                                        ; $53C4: $FC
    nop                                           ; $53C5: $00
    ldh a, [c]                                    ; $53C6: $F2
    inc c                                         ; $53C7: $0C
    pop hl                                        ; $53C8: $E1
    ld e, $11                                     ; $53C9: $1E $11
    ld c, $0E                                     ; $53CB: $0E $0E
    ld bc, $0107                                  ; $53CD: $01 $07 $01
    rlca                                          ; $53D0: $07
    ld [bc], a                                    ; $53D1: $02
    rlca                                          ; $53D2: $07
    inc bc                                        ; $53D3: $03
    inc bc                                        ; $53D4: $03
    ld bc, $0001                                  ; $53D5: $01 $01 $00
    nop                                           ; $53D8: $00
    nop                                           ; $53D9: $00
    nop                                           ; $53DA: $00
    nop                                           ; $53DB: $00
    nop                                           ; $53DC: $00
    nop                                           ; $53DD: $00
    nop                                           ; $53DE: $00
    nop                                           ; $53DF: $00
    ld hl, sp+$00                                 ; $53E0: $F8 $00
    nop                                           ; $53E2: $00
    nop                                           ; $53E3: $00
    nop                                           ; $53E4: $00
    nop                                           ; $53E5: $00
    nop                                           ; $53E6: $00
    nop                                           ; $53E7: $00
    ret nz                                        ; $53E8: $C0

    nop                                           ; $53E9: $00
    ldh [$FF80], a                                ; $53EA: $E0 $80
    ldh a, [$FFA0]                                ; $53EC: $F0 $A0
    or b                                          ; $53EE: $B0
    ld h, b                                       ; $53EF: $60
    db $10                                        ; $53F0: $10
    ldh [$FF90], a                                ; $53F1: $E0 $90
    ldh [$FFC8], a                                ; $53F3: $E0 $C8
    ld [hl], b                                    ; $53F5: $70
    ld c, h                                       ; $53F6: $4C
    jr nc, jr_014_5478                            ; $53F7: $30 $7F

    inc c                                         ; $53F9: $0C
    ld a, [hl]                                    ; $53FA: $7E
    add hl, sp                                    ; $53FB: $39
    add hl, sp                                    ; $53FC: $39
    ld d, $3F                                     ; $53FD: $16 $3F
    nop                                           ; $53FF: $00
    nop                                           ; $5400: $00
    nop                                           ; $5401: $00
    add b                                         ; $5402: $80
    nop                                           ; $5403: $00
    ld b, b                                       ; $5404: $40
    add b                                         ; $5405: $80
    ret nz                                        ; $5406: $C0

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
    nop                                           ; $5418: $00
    nop                                           ; $5419: $00
    nop                                           ; $541A: $00
    nop                                           ; $541B: $00
    nop                                           ; $541C: $00
    nop                                           ; $541D: $00
    nop                                           ; $541E: $00
    nop                                           ; $541F: $00
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
    inc hl                                        ; $542E: $23
    nop                                           ; $542F: $00
    ld d, l                                       ; $5430: $55
    ld [hl+], a                                   ; $5431: $22
    ld e, l                                       ; $5432: $5D
    ld [hl+], a                                   ; $5433: $22
    ld a, a                                       ; $5434: $7F
    inc e                                         ; $5435: $1C
    rst RST_38                                    ; $5436: $FF
    ld a, [hl]                                    ; $5437: $7E
    rst RST_38                                    ; $5438: $FF
    ld b, b                                       ; $5439: $40
    rst RST_38                                    ; $543A: $FF
    ccf                                           ; $543B: $3F
    rst RST_38                                    ; $543C: $FF
    ld a, a                                       ; $543D: $7F
    rst RST_38                                    ; $543E: $FF
    ld b, b                                       ; $543F: $40
    ld [bc], a                                    ; $5440: $02
    nop                                           ; $5441: $00
    ld h, l                                       ; $5442: $65
    ld [bc], a                                    ; $5443: $02
    ld e, d                                       ; $5444: $5A
    dec h                                         ; $5445: $25
    ld e, d                                       ; $5446: $5A
    dec h                                         ; $5447: $25
    ld l, a                                       ; $5448: $6F
    dec [hl]                                      ; $5449: $35
    ccf                                           ; $544A: $3F
    db $10                                        ; $544B: $10
    ld hl, sp+$17                                 ; $544C: $F8 $17
    rra                                           ; $544E: $1F
    add sp, $0D                                   ; $544F: $E8 $0D
    ldh a, [c]                                    ; $5451: $F2
    adc [hl]                                      ; $5452: $8E
    ld [hl], c                                    ; $5453: $71
    ld c, a                                       ; $5454: $4F
    or l                                          ; $5455: $B5
    ccf                                           ; $5456: $3F
    jp nz, Jump_000_03CF                          ; $5457: $C2 $CF $03

    sbc a                                         ; $545A: $9F
    rlca                                          ; $545B: $07
    sub a                                         ; $545C: $97
    dec bc                                        ; $545D: $0B
    sbc a                                         ; $545E: $9F
    inc bc                                        ; $545F: $03
    add b                                         ; $5460: $80
    nop                                           ; $5461: $00
    ld e, h                                       ; $5462: $5C
    add b                                         ; $5463: $80
    ld h, a                                       ; $5464: $67
    sbc h                                         ; $5465: $9C
    sbc $B9                                       ; $5466: $DE $B9
    db $FD                                        ; $5468: $FD
    rlca                                          ; $5469: $07
    inc de                                        ; $546A: $13
    rst RST_28                                    ; $546B: $EF
    rst RST_18                                    ; $546C: $DF
    ld l, $DE                                     ; $546D: $2E $DE
    xor l                                         ; $546F: $AD
    rst RST_18                                    ; $5470: $DF
    jr nz, jr_014_54EE                            ; $5471: $20 $7B

    rst RST_00                                    ; $5473: $C7
    ld [hl], a                                    ; $5474: $77
    adc h                                         ; $5475: $8C
    push af                                       ; $5476: $F5
    ld l, e                                       ; $5477: $6B

jr_014_5478:
    db $FD                                        ; $5478: $FD
    add e                                         ; $5479: $83

jr_014_547A:
    rst RST_38                                    ; $547A: $FF
    jr jr_014_547A                                ; $547B: $18 $FD

    ei                                            ; $547D: $FB
    db $FD                                        ; $547E: $FD
    di                                            ; $547F: $F3
    ret nz                                        ; $5480: $C0

    nop                                           ; $5481: $00
    ld b, b                                       ; $5482: $40
    add b                                         ; $5483: $80
    ret nz                                        ; $5484: $C0

    add b                                         ; $5485: $80
    add b                                         ; $5486: $80
    nop                                           ; $5487: $00
    ld hl, sp+$00                                 ; $5488: $F8 $00
    inc b                                         ; $548A: $04
    ld hl, sp+$1C                                 ; $548B: $F8 $1C
    ldh [$FF78], a                                ; $548D: $E0 $78
    add b                                         ; $548F: $80
    ldh a, [rP1]                                  ; $5490: $F0 $00
    ld hl, sp-$20                                 ; $5492: $F8 $E0
    rst RST_38                                    ; $5494: $FF
    ld l, b                                       ; $5495: $68
    db $FC                                        ; $5496: $FC
    ld l, e                                       ; $5497: $6B
    rst RST_38                                    ; $5498: $FF
    ld l, h                                       ; $5499: $6C
    rst RST_38                                    ; $549A: $FF
    ld l, h                                       ; $549B: $6C
    db $FC                                        ; $549C: $FC
    ld l, e                                       ; $549D: $6B
    rst RST_38                                    ; $549E: $FF
    ret c                                         ; $549F: $D8

    nop                                           ; $54A0: $00
    nop                                           ; $54A1: $00
    nop                                           ; $54A2: $00
    nop                                           ; $54A3: $00
    nop                                           ; $54A4: $00
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
    add b                                         ; $54B8: $80
    nop                                           ; $54B9: $00
    nop                                           ; $54BA: $00
    nop                                           ; $54BB: $00
    nop                                           ; $54BC: $00
    nop                                           ; $54BD: $00

Jump_014_54BE:
    add b                                         ; $54BE: $80
    nop                                           ; $54BF: $00
    ld bc, $0000                                  ; $54C0: $01 $00 $00
    nop                                           ; $54C3: $00
    nop                                           ; $54C4: $00
    nop                                           ; $54C5: $00
    nop                                           ; $54C6: $00
    nop                                           ; $54C7: $00

jr_014_54C8:
    ld bc, $0600                                  ; $54C8: $01 $00 $06
    ld bc, $050F                                  ; $54CB: $01 $0F $05
    dec c                                         ; $54CE: $0D
    ld b, $0C                                     ; $54CF: $06 $0C
    rlca                                          ; $54D1: $07
    ld [$0907], sp                                ; $54D2: $08 $07 $09
    rlca                                          ; $54D5: $07
    rra                                           ; $54D6: $1F
    ld [bc], a                                    ; $54D7: $02
    ld a, $1C                                     ; $54D8: $3E $1C
    ld a, [hl]                                    ; $54DA: $7E
    nop                                           ; $54DB: $00
    sub d                                         ; $54DC: $92
    ld l, h                                       ; $54DD: $6C
    cp $00                                        ; $54DE: $FE $00
    rst RST_38                                    ; $54E0: $FF
    ret z                                         ; $54E1: $C8

    rst RST_38                                    ; $54E2: $FF
    jr nc, jr_014_5564                            ; $54E3: $30 $7F

    nop                                           ; $54E5: $00
    adc a                                         ; $54E6: $8F
    ld [hl], b                                    ; $54E7: $70
    adc [hl]                                      ; $54E8: $8E
    ld [hl], c                                    ; $54E9: $71
    pop de                                        ; $54EA: $D1
    and b                                         ; $54EB: $A0
    ldh [$FF80], a                                ; $54EC: $E0 $80

jr_014_54EE:
    ldh [rLCDC], a                                ; $54EE: $E0 $40
    ldh [$FFC0], a                                ; $54F0: $E0 $C0
    ldh [$FFC0], a                                ; $54F2: $E0 $C0
    ret nz                                        ; $54F4: $C0

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
    rst RST_38                                    ; $5500: $FF
    dec de                                        ; $5501: $1B
    sbc a                                         ; $5502: $9F
    nop                                           ; $5503: $00
    ret nz                                        ; $5504: $C0

    nop                                           ; $5505: $00
    jr nz, jr_014_54C8                            ; $5506: $20 $C0

    db $10                                        ; $5508: $10
    ldh [rNR32], a                                ; $5509: $E0 $1C
    ldh [$FFEE], a                                ; $550B: $E0 $EE
    jr jr_014_558E                                ; $550D: $18 $7F

    ld a, [de]                                    ; $550F: $1A
    ld a, e                                       ; $5510: $7B
    ld h, $71                                     ; $5511: $26 $71
    ld a, $39                                     ; $5513: $3E $39
    ld e, $1C                                     ; $5515: $1E $1C
    rlca                                          ; $5517: $07
    inc b                                         ; $5518: $04
    inc bc                                        ; $5519: $03
    rlca                                          ; $551A: $07
    nop                                           ; $551B: $00
    rlca                                          ; $551C: $07
    inc bc                                        ; $551D: $03
    inc bc                                        ; $551E: $03
    ld bc, $6090                                  ; $551F: $01 $90 $60
    ldh [$FF80], a                                ; $5522: $E0 $80
    ldh [$FF80], a                                ; $5524: $E0 $80
    sub b                                         ; $5526: $90
    ld h, b                                       ; $5527: $60
    ldh [rP1], a                                  ; $5528: $E0 $00
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
    add b                                         ; $553E: $80
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
    rra                                           ; $554C: $1F
    nop                                           ; $554D: $00
    ld h, $1B                                     ; $554E: $26 $1B
    ld a, a                                       ; $5550: $7F
    inc e                                         ; $5551: $1C
    sbc a                                         ; $5552: $9F
    ld l, a                                       ; $5553: $6F
    sbc a                                         ; $5554: $9F
    ld h, c                                       ; $5555: $61
    di                                            ; $5556: $F3
    ld l, h                                       ; $5557: $6C
    cp $6C                                        ; $5558: $FE $6C
    ld a, h                                       ; $555A: $7C
    nop                                           ; $555B: $00
    nop                                           ; $555C: $00
    nop                                           ; $555D: $00
    nop                                           ; $555E: $00
    nop                                           ; $555F: $00
    nop                                           ; $5560: $00
    nop                                           ; $5561: $00
    nop                                           ; $5562: $00
    nop                                           ; $5563: $00

jr_014_5564:
    nop                                           ; $5564: $00

jr_014_5565:
    nop                                           ; $5565: $00

jr_014_5566:
    ld e, $00                                     ; $5566: $1E $00
    ld [hl+], a                                   ; $5568: $22
    inc e                                         ; $5569: $1C
    ld e, h                                       ; $556A: $5C
    jr nz, jr_014_5566                            ; $556B: $20 $F9

    nop                                           ; $556D: $00
    rrca                                          ; $556E: $0F
    ldh a, [$FFF9]                                ; $556F: $F0 $F9
    halt                                          ; $5571: $76
    ld hl, sp+$77                                 ; $5572: $F8 $77
    ld hl, sp+$77                                 ; $5574: $F8 $77
    rst RST_38                                    ; $5576: $FF
    ld [hl], b                                    ; $5577: $70
    ld a, b                                       ; $5578: $78
    nop                                           ; $5579: $00
    nop                                           ; $557A: $00
    nop                                           ; $557B: $00
    nop                                           ; $557C: $00
    nop                                           ; $557D: $00
    nop                                           ; $557E: $00
    nop                                           ; $557F: $00
    ld [bc], a                                    ; $5580: $02
    nop                                           ; $5581: $00
    ld h, l                                       ; $5582: $65
    ld [bc], a                                    ; $5583: $02
    ld e, d                                       ; $5584: $5A
    dec h                                         ; $5585: $25
    ld e, d                                       ; $5586: $5A
    dec h                                         ; $5587: $25
    ld l, a                                       ; $5588: $6F
    dec [hl]                                      ; $5589: $35
    rst RST_38                                    ; $558A: $FF
    db $10                                        ; $558B: $10
    jr c, jr_014_5565                             ; $558C: $38 $D7

jr_014_558E:
    rra                                           ; $558E: $1F
    add sp, $0D                                   ; $558F: $E8 $0D
    ldh a, [c]                                    ; $5591: $F2
    adc [hl]                                      ; $5592: $8E
    ld [hl], c                                    ; $5593: $71
    ld c, a                                       ; $5594: $4F
    or l                                          ; $5595: $B5
    rst RST_38                                    ; $5596: $FF
    ld [bc], a                                    ; $5597: $02
    rrca                                          ; $5598: $0F
    inc bc                                        ; $5599: $03
    rra                                           ; $559A: $1F
    rlca                                          ; $559B: $07
    rla                                           ; $559C: $17
    dec bc                                        ; $559D: $0B
    rra                                           ; $559E: $1F
    inc bc                                        ; $559F: $03
    add b                                         ; $55A0: $80
    nop                                           ; $55A1: $00

jr_014_55A2:
    ld e, h                                       ; $55A2: $5C
    add b                                         ; $55A3: $80
    ld h, a                                       ; $55A4: $67
    sbc h                                         ; $55A5: $9C
    sbc $B9                                       ; $55A6: $DE $B9
    db $FD                                        ; $55A8: $FD
    rlca                                          ; $55A9: $07
    inc de                                        ; $55AA: $13
    rst RST_28                                    ; $55AB: $EF
    rst RST_18                                    ; $55AC: $DF
    ld l, $DE                                     ; $55AD: $2E $DE
    xor l                                         ; $55AF: $AD
    rst RST_18                                    ; $55B0: $DF
    jr nz, @+$7D                                  ; $55B1: $20 $7B

    rst RST_00                                    ; $55B3: $C7
    ld [hl], a                                    ; $55B4: $77
    adc h                                         ; $55B5: $8C
    push af                                       ; $55B6: $F5
    ld l, e                                       ; $55B7: $6B
    db $FD                                        ; $55B8: $FD
    add e                                         ; $55B9: $83

jr_014_55BA:
    rst RST_38                                    ; $55BA: $FF
    jr jr_014_55BA                                ; $55BB: $18 $FD

    ei                                            ; $55BD: $FB
    db $FD                                        ; $55BE: $FD
    di                                            ; $55BF: $F3
    nop                                           ; $55C0: $00
    nop                                           ; $55C1: $00
    ret nz                                        ; $55C2: $C0

    nop                                           ; $55C3: $00
    ld b, b                                       ; $55C4: $40
    add b                                         ; $55C5: $80
    ret nz                                        ; $55C6: $C0

    add b                                         ; $55C7: $80
    add b                                         ; $55C8: $80
    nop                                           ; $55C9: $00
    ld hl, sp+$00                                 ; $55CA: $F8 $00
    inc b                                         ; $55CC: $04
    ld hl, sp+$1C                                 ; $55CD: $F8 $1C
    ldh [$FF78], a                                ; $55CF: $E0 $78
    add b                                         ; $55D1: $80
    ldh [rP1], a                                  ; $55D2: $E0 $00
    ld hl, sp-$20                                 ; $55D4: $F8 $E0
    rst RST_38                                    ; $55D6: $FF
    ld l, b                                       ; $55D7: $68
    db $FC                                        ; $55D8: $FC
    ld l, e                                       ; $55D9: $6B
    rst RST_38                                    ; $55DA: $FF
    ld l, h                                       ; $55DB: $6C
    rst RST_38                                    ; $55DC: $FF
    ld l, h                                       ; $55DD: $6C
    db $FC                                        ; $55DE: $FC

jr_014_55DF:
    ld l, e                                       ; $55DF: $6B
    jr nc, jr_014_55A2                            ; $55E0: $30 $C0

    db $FC                                        ; $55E2: $FC
    jr nc, jr_014_55DF                            ; $55E3: $30 $FA

    db $E4                                        ; $55E5: $E4
    push hl                                       ; $55E6: $E5
    ld e, d                                       ; $55E7: $5A
    rst RST_38                                    ; $55E8: $FF
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
    nop                                           ; $55F4: $00
    nop                                           ; $55F5: $00
    nop                                           ; $55F6: $00
    nop                                           ; $55F7: $00
    nop                                           ; $55F8: $00

jr_014_55F9:
    nop                                           ; $55F9: $00
    nop                                           ; $55FA: $00
    nop                                           ; $55FB: $00
    nop                                           ; $55FC: $00
    nop                                           ; $55FD: $00
    nop                                           ; $55FE: $00
    nop                                           ; $55FF: $00
    inc bc                                        ; $5600: $03
    nop                                           ; $5601: $00
    ccf                                           ; $5602: $3F
    inc bc                                        ; $5603: $03
    ld a, a                                       ; $5604: $7F
    rra                                           ; $5605: $1F
    sbc a                                         ; $5606: $9F
    ld l, a                                       ; $5607: $6F
    sbc a                                         ; $5608: $9F
    ld h, e                                       ; $5609: $63
    ld [hl], e                                    ; $560A: $73
    inc c                                         ; $560B: $0C
    inc c                                         ; $560C: $0C
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
    dec de                                        ; $5620: $1B
    nop                                           ; $5621: $00
    inc h                                         ; $5622: $24
    dec de                                        ; $5623: $1B
    ld a, a                                       ; $5624: $7F
    dec de                                        ; $5625: $1B
    ld a, a                                       ; $5626: $7F
    jr jr_014_56A7                                ; $5627: $18 $7E

    inc hl                                        ; $5629: $23
    ld a, [hl]                                    ; $562A: $7E
    dec de                                        ; $562B: $1B
    ld a, a                                       ; $562C: $7F
    jr nz, jr_014_56AE                            ; $562D: $20 $7F

    ccf                                           ; $562F: $3F
    ccf                                           ; $5630: $3F
    ld e, $1E                                     ; $5631: $1E $1E
    nop                                           ; $5633: $00
    nop                                           ; $5634: $00
    nop                                           ; $5635: $00
    rlca                                          ; $5636: $07
    nop                                           ; $5637: $00
    rrca                                          ; $5638: $0F
    rlca                                          ; $5639: $07
    rst RST_38                                    ; $563A: $FF
    rrca                                          ; $563B: $0F
    add c                                         ; $563C: $81
    ld a, a                                       ; $563D: $7F
    add c                                         ; $563E: $81
    ld a, [hl]                                    ; $563F: $7E
    stop                                          ; $5640: $10 $00
    add hl, hl                                    ; $5642: $29
    db $10                                        ; $5643: $10
    ld a, [hl+]                                   ; $5644: $2A
    ld de, $1AB5                                  ; $5645: $11 $B5 $1A
    sbc l                                         ; $5648: $9D
    ld a, [bc]                                    ; $5649: $0A
    rst RST_38                                    ; $564A: $FF
    ld a, [bc]                                    ; $564B: $0A
    rst RST_08                                    ; $564C: $CF
    or b                                          ; $564D: $B0
    call nz, $C7BB                                ; $564E: $C4 $BB $C7
    jr c, jr_014_55F9                             ; $5651: $38 $A6

    ld e, c                                       ; $5653: $59
    rla                                           ; $5654: $17
    ld [$01FF], a                                 ; $5655: $EA $FF $01
    rlca                                          ; $5658: $07
    ld bc, $030F                                  ; $5659: $01 $0F $03
    adc e                                         ; $565C: $8B
    dec b                                         ; $565D: $05
    rst RST_38                                    ; $565E: $FF
    add c                                         ; $565F: $81
    nop                                           ; $5660: $00
    nop                                           ; $5661: $00
    ld l, a                                       ; $5662: $6F
    nop                                           ; $5663: $00
    or e                                          ; $5664: $B3
    ld c, l                                       ; $5665: $4D
    ld l, $DB                                     ; $5666: $2E $DB
    ld a, l                                       ; $5668: $7D
    rst RST_00                                    ; $5669: $C7
    jp hl                                         ; $566A: $E9


    sub a                                         ; $566B: $97
    swap [hl]                                     ; $566C: $CB $36
    cpl                                           ; $566E: $2F
    call nc, Call_000_11EE                        ; $566F: $D4 $EE $11
    ccf                                           ; $5672: $3F
    and $BF                                       ; $5673: $E6 $BF
    call z, Call_000_38FF                         ; $5675: $CC $FF $38
    rst RST_38                                    ; $5678: $FF
    call z, $8CFF                                 ; $5679: $CC $FF $8C
    rst RST_38                                    ; $567C: $FF
    db $FD                                        ; $567D: $FD
    rst RST_38                                    ; $567E: $FF
    ld sp, hl                                     ; $567F: $F9
    add b                                         ; $5680: $80
    nop                                           ; $5681: $00
    ld b, b                                       ; $5682: $40
    add b                                         ; $5683: $80
    ld b, b                                       ; $5684: $40
    add b                                         ; $5685: $80
    ret nz                                        ; $5686: $C0

    add b                                         ; $5687: $80
    add b                                         ; $5688: $80
    nop                                           ; $5689: $00
    add b                                         ; $568A: $80
    nop                                           ; $568B: $00
    db $FC                                        ; $568C: $FC
    nop                                           ; $568D: $00
    ld [bc], a                                    ; $568E: $02
    db $FC                                        ; $568F: $FC
    ld b, $F8                                     ; $5690: $06 $F8
    inc c                                         ; $5692: $0C
    ldh a, [$FF32]                                ; $5693: $F0 $32
    call z, $06FD                                 ; $5695: $CC $FD $06
    daa                                           ; $5698: $27
    jp c, $DAFF                                   ; $5699: $DA $FF $DA

    cp $00                                        ; $569C: $FE $00
    cp $FC                                        ; $569E: $FE $FC
    rst RST_38                                    ; $56A0: $FF
    adc [hl]                                      ; $56A1: $8E
    adc a                                         ; $56A2: $8F
    rlca                                          ; $56A3: $07
    rlca                                          ; $56A4: $07
    nop                                           ; $56A5: $00
    nop                                           ; $56A6: $00

jr_014_56A7:
    nop                                           ; $56A7: $00
    nop                                           ; $56A8: $00
    nop                                           ; $56A9: $00
    nop                                           ; $56AA: $00
    nop                                           ; $56AB: $00
    nop                                           ; $56AC: $00
    nop                                           ; $56AD: $00

jr_014_56AE:
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
    nop                                           ; $56BE: $00
    nop                                           ; $56BF: $00
    rst RST_00                                    ; $56C0: $C7
    dec sp                                        ; $56C1: $3B
    ld h, e                                       ; $56C2: $63
    call c, $DEE1                                 ; $56C3: $DC $E1 $DE
    rst RST_38                                    ; $56C6: $FF
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

jr_014_56DA:
    nop                                           ; $56DA: $00
    nop                                           ; $56DB: $00

jr_014_56DC:
    nop                                           ; $56DC: $00
    nop                                           ; $56DD: $00
    nop                                           ; $56DE: $00

jr_014_56DF:
    nop                                           ; $56DF: $00
    rst RST_38                                    ; $56E0: $FF
    jr nz, jr_014_56DF                            ; $56E1: $20 $FC

    ret nz                                        ; $56E3: $C0

    db $FC                                        ; $56E4: $FC
    nop                                           ; $56E5: $00
    ldh [c], a                                    ; $56E6: $E2
    inc e                                         ; $56E7: $1C
    ld [hl+], a                                   ; $56E8: $22
    inc e                                         ; $56E9: $1C
    ld de, $130E                                  ; $56EA: $11 $0E $13
    inc c                                         ; $56ED: $0C
    dec c                                         ; $56EE: $0D
    inc bc                                        ; $56EF: $03
    rrca                                          ; $56F0: $0F
    inc bc                                        ; $56F1: $03
    rrca                                          ; $56F2: $0F
    inc b                                         ; $56F3: $04
    ld c, $07                                     ; $56F4: $0E $07
    rlca                                          ; $56F6: $07
    inc bc                                        ; $56F7: $03
    inc bc                                        ; $56F8: $03
    ld bc, $0001                                  ; $56F9: $01 $01 $00
    ld bc, $0100                                  ; $56FC: $01 $00 $01
    nop                                           ; $56FF: $00
    cp $F8                                        ; $5700: $FE $F8
    ld a, [$AA04]                                 ; $5702: $FA $04 $AA
    ld b, h                                       ; $5705: $44
    ld b, h                                       ; $5706: $44
    nop                                           ; $5707: $00
    nop                                           ; $5708: $00
    nop                                           ; $5709: $00
    nop                                           ; $570A: $00
    nop                                           ; $570B: $00
    add b                                         ; $570C: $80
    nop                                           ; $570D: $00
    ret nz                                        ; $570E: $C0

    nop                                           ; $570F: $00
    ldh [rLCDC], a                                ; $5710: $E0 $40
    ldh [$FFC0], a                                ; $5712: $E0 $C0
    ld h, b                                       ; $5714: $60
    ret nz                                        ; $5715: $C0

    ld h, b                                       ; $5716: $60
    ret nz                                        ; $5717: $C0

    jr nz, jr_014_56DA                            ; $5718: $20 $C0

    jr nz, jr_014_56DC                            ; $571A: $20 $C0

    ldh a, [rP1]                                  ; $571C: $F0 $00
    ld hl, sp-$10                                 ; $571E: $F8 $F0
    cp $00                                        ; $5720: $FE $00
    adc c                                         ; $5722: $89
    halt                                          ; $5723: $76
    rst RST_38                                    ; $5724: $FF
    nop                                           ; $5725: $00
    nop                                           ; $5726: $00
    nop                                           ; $5727: $00
    nop                                           ; $5728: $00
    nop                                           ; $5729: $00
    nop                                           ; $572A: $00
    nop                                           ; $572B: $00
    nop                                           ; $572C: $00
    nop                                           ; $572D: $00
    nop                                           ; $572E: $00
    nop                                           ; $572F: $00
    nop                                           ; $5730: $00
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
    inc bc                                        ; $5740: $03
    nop                                           ; $5741: $00
    dec b                                         ; $5742: $05
    ld [bc], a                                    ; $5743: $02
    ld [$3007], sp                                ; $5744: $08 $07 $30
    rrca                                          ; $5747: $0F
    ld e, c                                       ; $5748: $59
    ld [hl], $7F                                  ; $5749: $36 $7F
    jr nc, jr_014_578C                            ; $574B: $30 $3F

    rrca                                          ; $574D: $0F
    daa                                           ; $574E: $27
    rra                                           ; $574F: $1F
    inc de                                        ; $5750: $13
    rrca                                          ; $5751: $0F
    dec bc                                        ; $5752: $0B
    ld b, $0B                                     ; $5753: $06 $0B
    ld b, $0F                                     ; $5755: $06 $0F
    nop                                           ; $5757: $00
    rra                                           ; $5758: $1F
    ld c, $7F                                     ; $5759: $0E $7F
    rrca                                          ; $575B: $0F
    adc a                                         ; $575C: $8F
    ld [hl], a                                    ; $575D: $77
    rst RST_38                                    ; $575E: $FF
    nop                                           ; $575F: $00
    db $FC                                        ; $5760: $FC
    nop                                           ; $5761: $00
    ldh a, [c]                                    ; $5762: $F2
    inc c                                         ; $5763: $0C
    ldh [c], a                                    ; $5764: $E2
    inc e                                         ; $5765: $1C
    and c                                         ; $5766: $A1
    ld e, $11                                     ; $5767: $1E $11
    ld c, $0F                                     ; $5769: $0E $0F
    nop                                           ; $576B: $00
    add l                                         ; $576C: $85
    inc bc                                        ; $576D: $03
    add a                                         ; $576E: $87
    inc bc                                        ; $576F: $03
    add e                                         ; $5770: $83
    nop                                           ; $5771: $00
    ld bc, $0000                                  ; $5772: $01 $00 $00
    nop                                           ; $5775: $00
    nop                                           ; $5776: $00
    nop                                           ; $5777: $00
    nop                                           ; $5778: $00
    nop                                           ; $5779: $00
    add b                                         ; $577A: $80

jr_014_577B:
    nop                                           ; $577B: $00
    add b                                         ; $577C: $80
    nop                                           ; $577D: $00
    add b                                         ; $577E: $80
    nop                                           ; $577F: $00
    ld a, a                                       ; $5780: $7F
    nop                                           ; $5781: $00
    rst RST_38                                    ; $5782: $FF
    ld e, e                                       ; $5783: $5B
    db $E4                                        ; $5784: $E4
    ld e, e                                       ; $5785: $5B
    cp e                                          ; $5786: $BB
    ld h, b                                       ; $5787: $60
    ld c, b                                       ; $5788: $48
    jr nc, jr_014_577B                            ; $5789: $30 $F0

    nop                                           ; $578B: $00

jr_014_578C:
    ld hl, sp+$70                                 ; $578C: $F8 $70
    cp h                                          ; $578E: $BC
    ld a, b                                       ; $578F: $78
    inc e                                         ; $5790: $1C
    ld hl, sp-$72                                 ; $5791: $F8 $8E
    db $FC                                        ; $5793: $FC
    rst RST_20                                    ; $5794: $E7
    ld e, $1B                                     ; $5795: $1E $1B
    dec b                                         ; $5797: $05
    rrca                                          ; $5798: $0F
    ld [bc], a                                    ; $5799: $02
    rlca                                          ; $579A: $07
    nop                                           ; $579B: $00
    inc bc                                        ; $579C: $03
    nop                                           ; $579D: $00
    ld bc, $8000                                  ; $579E: $01 $00 $80
    nop                                           ; $57A1: $00
    ret nz                                        ; $57A2: $C0

    add b                                         ; $57A3: $80
    ldh [rP1], a                                  ; $57A4: $E0 $00
    ld h, b                                       ; $57A6: $60
    nop                                           ; $57A7: $00
    stop                                          ; $57A8: $10 $00
    add b                                         ; $57AA: $80
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
    ld bc, $0600                                  ; $57CC: $01 $00 $06
    ld bc, $0619                                  ; $57CF: $01 $19 $06
    ld l, a                                       ; $57D2: $6F

jr_014_57D3:
    rla                                           ; $57D3: $17
    sbc a                                         ; $57D4: $9F
    ld a, e                                       ; $57D5: $7B
    rst RST_38                                    ; $57D6: $FF
    ld h, b                                       ; $57D7: $60
    ld h, h                                       ; $57D8: $64
    inc bc                                        ; $57D9: $03
    inc b                                         ; $57DA: $04
    inc bc                                        ; $57DB: $03
    rlca                                          ; $57DC: $07
    inc bc                                        ; $57DD: $03
    inc bc                                        ; $57DE: $03
    nop                                           ; $57DF: $00
    inc bc                                        ; $57E0: $03
    ld bc, $0003                                  ; $57E1: $01 $03 $00
    ld [bc], a                                    ; $57E4: $02
    ld bc, $0001                                  ; $57E5: $01 $01 $00
    rlca                                          ; $57E8: $07
    nop                                           ; $57E9: $00
    ld [$3807], sp                                ; $57EA: $08 $07 $38
    rlca                                          ; $57ED: $07
    call nz, Call_000_3F3B                        ; $57EE: $C4 $3B $3F
    ld hl, sp-$01                                 ; $57F1: $F8 $FF
    add hl, sp                                    ; $57F3: $39
    db $FD                                        ; $57F4: $FD
    cp d                                          ; $57F5: $BA
    rst RST_38                                    ; $57F6: $FF
    sbc b                                         ; $57F7: $98
    db $DB                                        ; $57F8: $DB
    add c                                         ; $57F9: $81
    add c                                         ; $57FA: $81
    nop                                           ; $57FB: $00
    add b                                         ; $57FC: $80
    nop                                           ; $57FD: $00
    add c                                         ; $57FE: $81
    nop                                           ; $57FF: $00
    sbc c                                         ; $5800: $99
    ld h, a                                       ; $5801: $67
    or a                                          ; $5802: $B7
    ld l, [hl]                                    ; $5803: $6E
    rst RST_38                                    ; $5804: $FF
    ld b, c                                       ; $5805: $41
    call nz, $373B                                ; $5806: $C4 $3B $37
    set 6, a                                      ; $5809: $CB $F7
    dec hl                                        ; $580B: $2B
    ld [hl], a                                    ; $580C: $77
    adc b                                         ; $580D: $88
    sbc a                                         ; $580E: $9F
    ld [hl], d                                    ; $580F: $72
    rst RST_18                                    ; $5810: $DF
    ld h, [hl]                                    ; $5811: $66
    ld a, a                                       ; $5812: $7F
    sbc h                                         ; $5813: $9C
    rst RST_38                                    ; $5814: $FF
    ld h, h                                       ; $5815: $64
    rst RST_38                                    ; $5816: $FF
    add $FF                                       ; $5817: $C6 $FF
    cp $FF                                        ; $5819: $FE $FF
    cp $FF                                        ; $581B: $FE $FF
    adc h                                         ; $581D: $8C
    rst RST_38                                    ; $581E: $FF
    ld [hl], b                                    ; $581F: $70

jr_014_5820:
    ret nc                                        ; $5820: $D0

    jr nz, jr_014_57D3                            ; $5821: $20 $B0

jr_014_5823:
    ld h, b                                       ; $5823: $60
    ld h, b                                       ; $5824: $60
    ret nz                                        ; $5825: $C0

    ldh [$FFC0], a                                ; $5826: $E0 $C0
    ret nz                                        ; $5828: $C0

    add b                                         ; $5829: $80
    rst RST_38                                    ; $582A: $FF
    nop                                           ; $582B: $00
    add c                                         ; $582C: $81
    ld a, [hl]                                    ; $582D: $7E
    ld b, $F8                                     ; $582E: $06 $F8
    ld a, [bc]                                    ; $5830: $0A
    db $F4                                        ; $5831: $F4
    dec de                                        ; $5832: $1B
    db $E4                                        ; $5833: $E4
    db $EB                                        ; $5834: $EB
    inc d                                         ; $5835: $14
    rst RST_08                                    ; $5836: $CF
    ld sp, $07BF                                  ; $5837: $31 $BF $07
    sbc a                                         ; $583A: $9F
    nop                                           ; $583B: $00
    rra                                           ; $583C: $1F
    rrca                                          ; $583D: $0F
    rra                                           ; $583E: $1F
    rrca                                          ; $583F: $0F
    nop                                           ; $5840: $00
    nop                                           ; $5841: $00
    nop                                           ; $5842: $00
    nop                                           ; $5843: $00
    nop                                           ; $5844: $00
    nop                                           ; $5845: $00
    nop                                           ; $5846: $00
    nop                                           ; $5847: $00
    ld b, b                                       ; $5848: $40
    nop                                           ; $5849: $00
    and b                                         ; $584A: $A0
    ld b, b                                       ; $584B: $40
    and b                                         ; $584C: $A0
    ld b, b                                       ; $584D: $40
    and b                                         ; $584E: $A0
    ld b, b                                       ; $584F: $40
    ldh [$FF80], a                                ; $5850: $E0 $80
    ldh a, [$FFE0]                                ; $5852: $F0 $E0
    ldh a, [rNR41]                                ; $5854: $F0 $20
    ldh a, [$FFC0]                                ; $5856: $F0 $C0
    ldh a, [$FFE0]                                ; $5858: $F0 $E0
    ldh a, [rNR41]                                ; $585A: $F0 $20
    ldh a, [$FFC0]                                ; $585C: $F0 $C0
    jr nz, jr_014_5820                            ; $585E: $20 $C0

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
    nop                                           ; $586E: $00
    nop                                           ; $586F: $00
    nop                                           ; $5870: $00
    nop                                           ; $5871: $00
    nop                                           ; $5872: $00
    nop                                           ; $5873: $00
    nop                                           ; $5874: $00
    nop                                           ; $5875: $00
    nop                                           ; $5876: $00
    nop                                           ; $5877: $00
    jr z, jr_014_587A                             ; $5878: $28 $00

jr_014_587A:
    ld d, l                                       ; $587A: $55
    jr z, jr_014_5823                             ; $587B: $28 $A6

    ld e, c                                       ; $587D: $59
    xor l                                         ; $587E: $AD
    ld e, e                                       ; $587F: $5B
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
    nop                                           ; $5892: $00
    nop                                           ; $5893: $00
    nop                                           ; $5894: $00
    nop                                           ; $5895: $00
    nop                                           ; $5896: $00
    nop                                           ; $5897: $00
    nop                                           ; $5898: $00
    nop                                           ; $5899: $00
    nop                                           ; $589A: $00
    nop                                           ; $589B: $00
    nop                                           ; $589C: $00
    nop                                           ; $589D: $00
    call z, $0F00                                 ; $589E: $CC $00 $0F
    nop                                           ; $58A1: $00
    ld a, a                                       ; $58A2: $7F
    rrca                                          ; $58A3: $0F
    ldh a, [$FF7F]                                ; $58A4: $F0 $7F
    ld a, [hl]                                    ; $58A6: $7E
    ld bc, $0F1F                                  ; $58A7: $01 $1F $0F
    rrca                                          ; $58AA: $0F
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
    ld b, $01                                     ; $58C0: $06 $01
    add hl, bc                                    ; $58C2: $09
    rlca                                          ; $58C3: $07
    rrca                                          ; $58C4: $0F
    ld b, $06                                     ; $58C5: $06 $06
    nop                                           ; $58C7: $00
    nop                                           ; $58C8: $00
    nop                                           ; $58C9: $00
    nop                                           ; $58CA: $00
    nop                                           ; $58CB: $00
    nop                                           ; $58CC: $00
    nop                                           ; $58CD: $00
    nop                                           ; $58CE: $00
    nop                                           ; $58CF: $00
    ld bc, $7F00                                  ; $58D0: $01 $00 $7F
    ld bc, $7FFF                                  ; $58D3: $01 $FF $7F
    ret nz                                        ; $58D6: $C0

    rst RST_38                                    ; $58D7: $FF
    nop                                           ; $58D8: $00
    rst RST_38                                    ; $58D9: $FF
    nop                                           ; $58DA: $00
    rst RST_38                                    ; $58DB: $FF
    rst RST_38                                    ; $58DC: $FF
    rst RST_38                                    ; $58DD: $FF
    rst RST_38                                    ; $58DE: $FF
    nop                                           ; $58DF: $00
    rst RST_38                                    ; $58E0: $FF
    cp c                                          ; $58E1: $B9
    db $FD                                        ; $58E2: $FD
    ld [$3048], sp                                ; $58E3: $08 $48 $30
    ld c, b                                       ; $58E6: $48
    jr nc, jr_014_5962                            ; $58E7: $30 $79

    jr nc, jr_014_591C                            ; $58E9: $30 $31

    nop                                           ; $58EB: $00
    rra                                           ; $58EC: $1F
    nop                                           ; $58ED: $00
    rst RST_38                                    ; $58EE: $FF
    rra                                           ; $58EF: $1F
    ldh a, [rIE]                                  ; $58F0: $F0 $FF
    nop                                           ; $58F2: $00
    rst RST_38                                    ; $58F3: $FF
    nop                                           ; $58F4: $00
    rst RST_38                                    ; $58F5: $FF
    nop                                           ; $58F6: $00
    rst RST_38                                    ; $58F7: $FF
    nop                                           ; $58F8: $00
    rst RST_38                                    ; $58F9: $FF
    ld hl, sp-$01                                 ; $58FA: $F8 $FF
    rst RST_38                                    ; $58FC: $FF
    rra                                           ; $58FD: $1F
    rra                                           ; $58FE: $1F
    nop                                           ; $58FF: $00
    halt                                          ; $5900: $76
    add hl, hl                                    ; $5901: $29
    or $69                                        ; $5902: $F6 $69
    ld a, d                                       ; $5904: $7A
    or l                                          ; $5905: $B5
    rst RST_38                                    ; $5906: $FF
    jr c, @+$01                                   ; $5907: $38 $FF

    nop                                           ; $5909: $00
    rst RST_38                                    ; $590A: $FF
    db $FC                                        ; $590B: $FC
    nop                                           ; $590C: $00
    rst RST_38                                    ; $590D: $FF
    nop                                           ; $590E: $00
    rst RST_38                                    ; $590F: $FF
    ld bc, $01FE                                  ; $5910: $01 $FE $01
    cp $00                                        ; $5913: $FE $00
    rst RST_38                                    ; $5915: $FF
    nop                                           ; $5916: $00
    rst RST_38                                    ; $5917: $FF
    ldh [rIE], a                                  ; $5918: $E0 $FF
    cp $3F                                        ; $591A: $FE $3F

jr_014_591C:
    ccf                                           ; $591C: $3F
    inc bc                                        ; $591D: $03
    inc bc                                        ; $591E: $03

jr_014_591F:
    nop                                           ; $591F: $00
    rst RST_38                                    ; $5920: $FF
    and b                                         ; $5921: $A0
    rst RST_38                                    ; $5922: $FF
    db $DB                                        ; $5923: $DB
    rst RST_38                                    ; $5924: $FF
    jr jr_014_593F                                ; $5925: $18 $18

    rst RST_20                                    ; $5927: $E7
    nop                                           ; $5928: $00
    rst RST_38                                    ; $5929: $FF
    jr c, @+$01                                   ; $592A: $38 $FF

    sbc a                                         ; $592C: $9F
    rst RST_30                                    ; $592D: $F7
    rst RST_38                                    ; $592E: $FF
    ld a, b                                       ; $592F: $78
    ld a, a                                       ; $5930: $7F
    inc c                                         ; $5931: $0C
    ccf                                           ; $5932: $3F
    ld [de], a                                    ; $5933: $12
    rra                                           ; $5934: $1F
    inc c                                         ; $5935: $0C
    ld c, $00                                     ; $5936: $0E $00
    rra                                           ; $5938: $1F
    ld c, $1F                                     ; $5939: $0E $1F
    rrca                                          ; $593B: $0F
    rra                                           ; $593C: $1F
    rrca                                          ; $593D: $0F
    rra                                           ; $593E: $1F

jr_014_593F:
    nop                                           ; $593F: $00
    ldh a, [rLCDC]                                ; $5940: $F0 $40
    db $FC                                        ; $5942: $FC
    ld h, b                                       ; $5943: $60
    ld e, $F8                                     ; $5944: $1E $F8
    rlca                                          ; $5946: $07
    db $FC                                        ; $5947: $FC
    db $E3                                        ; $5948: $E3
    cp $7F                                        ; $5949: $FE $7F
    rst RST_00                                    ; $594B: $C7
    ccf                                           ; $594C: $3F
    ldh [$FFDE], a                                ; $594D: $E0 $DE
    ldh a, [rIE]                                  ; $594F: $F0 $FF
    jr c, @+$01                                   ; $5951: $38 $FF

    inc c                                         ; $5953: $0C
    ccf                                           ; $5954: $3F
    ld [bc], a                                    ; $5955: $02
    rrca                                          ; $5956: $0F
    ld bc, $0003                                  ; $5957: $01 $03 $00
    add c                                         ; $595A: $81
    nop                                           ; $595B: $00
    add b                                         ; $595C: $80
    nop                                           ; $595D: $00
    add b                                         ; $595E: $80
    nop                                           ; $595F: $00
    add b                                         ; $5960: $80
    nop                                           ; $5961: $00

jr_014_5962:
    ret nz                                        ; $5962: $C0

    nop                                           ; $5963: $00
    ldh [rP1], a                                  ; $5964: $E0 $00
    ldh a, [rP1]                                  ; $5966: $F0 $00
    jr nc, jr_014_596A                            ; $5968: $30 $00

jr_014_596A:
    ld [$8000], sp                                ; $596A: $08 $00 $80
    nop                                           ; $596D: $00
    add b                                         ; $596E: $80
    nop                                           ; $596F: $00
    ret nz                                        ; $5970: $C0

    nop                                           ; $5971: $00
    ret nz                                        ; $5972: $C0

    nop                                           ; $5973: $00
    ld h, b                                       ; $5974: $60
    nop                                           ; $5975: $00
    jr nz, jr_014_5978                            ; $5976: $20 $00

jr_014_5978:
    nop                                           ; $5978: $00
    nop                                           ; $5979: $00
    nop                                           ; $597A: $00
    nop                                           ; $597B: $00
    nop                                           ; $597C: $00
    nop                                           ; $597D: $00
    nop                                           ; $597E: $00
    nop                                           ; $597F: $00
    db $EC                                        ; $5980: $EC
    jr c, jr_014_591F                             ; $5981: $38 $9C

    ld a, b                                       ; $5983: $78
    ld hl, sp+$70                                 ; $5984: $F8 $70
    ldh a, [rP1]                                  ; $5986: $F0 $00
    ret z                                         ; $5988: $C8

    jr nc, jr_014_59AF                            ; $5989: $30 $24

    ret c                                         ; $598B: $D8

    jp nc, $F22C                                  ; $598C: $D2 $2C $F2

    inc c                                         ; $598F: $0C
    ld [de], a                                    ; $5990: $12
    db $EC                                        ; $5991: $EC
    inc c                                         ; $5992: $0C
    ldh a, [$FF1F]                                ; $5993: $F0 $1F
    ldh [$FFBF], a                                ; $5995: $E0 $BF
    ld e, [hl]                                    ; $5997: $5E
    rst RST_08                                    ; $5998: $CF
    ccf                                           ; $5999: $3F
    rst RST_08                                    ; $599A: $CF
    jr nc, @+$81                                  ; $599B: $30 $7F

    xor a                                         ; $599D: $AF
    ld h, a                                       ; $599E: $67
    sbc a                                         ; $599F: $9F
    nop                                           ; $59A0: $00
    nop                                           ; $59A1: $00
    nop                                           ; $59A2: $00
    nop                                           ; $59A3: $00
    nop                                           ; $59A4: $00
    nop                                           ; $59A5: $00
    nop                                           ; $59A6: $00
    nop                                           ; $59A7: $00
    nop                                           ; $59A8: $00
    nop                                           ; $59A9: $00
    nop                                           ; $59AA: $00
    nop                                           ; $59AB: $00
    nop                                           ; $59AC: $00
    nop                                           ; $59AD: $00
    nop                                           ; $59AE: $00

jr_014_59AF:
    nop                                           ; $59AF: $00
    ld h, b                                       ; $59B0: $60
    nop                                           ; $59B1: $00
    and b                                         ; $59B2: $A0
    ld b, b                                       ; $59B3: $40
    ld b, b                                       ; $59B4: $40
    add b                                         ; $59B5: $80
    add b                                         ; $59B6: $80
    nop                                           ; $59B7: $00
    add b                                         ; $59B8: $80
    nop                                           ; $59B9: $00
    add b                                         ; $59BA: $80
    nop                                           ; $59BB: $00
    ret nz                                        ; $59BC: $C0

    add b                                         ; $59BD: $80
    ldh a, [$FF80]                                ; $59BE: $F0 $80
    nop                                           ; $59C0: $00
    nop                                           ; $59C1: $00
    nop                                           ; $59C2: $00
    nop                                           ; $59C3: $00
    nop                                           ; $59C4: $00
    nop                                           ; $59C5: $00
    nop                                           ; $59C6: $00
    nop                                           ; $59C7: $00
    inc d                                         ; $59C8: $14
    nop                                           ; $59C9: $00
    ld a, [hl+]                                   ; $59CA: $2A

jr_014_59CB:
    inc d                                         ; $59CB: $14
    db $D3                                        ; $59CC: $D3
    inc l                                         ; $59CD: $2C
    ld d, [hl]                                    ; $59CE: $56
    xor l                                         ; $59CF: $AD
    rst RST_38                                    ; $59D0: $FF
    jr z, jr_014_59CB                             ; $59D1: $28 $F8

    rlca                                          ; $59D3: $07
    ld b, [hl]                                    ; $59D4: $46
    cp c                                          ; $59D5: $B9
    cp $C5                                        ; $59D6: $FE $C5
    rst RST_28                                    ; $59D8: $EF
    ret nc                                        ; $59D9: $D0

    db $F4                                        ; $59DA: $F4
    set 7, c                                      ; $59DB: $CB $F9
    add $DB                                       ; $59DD: $C6 $DB
    inc b                                         ; $59DF: $04
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
    and $00                                       ; $59FA: $E6 $00
    ld a, [hl-]                                   ; $59FC: $3A
    db $E4                                        ; $59FD: $E4
    or $CC                                        ; $59FE: $F6 $CC
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
    nop                                           ; $5A11: $00
    ld bc, $0200                                  ; $5A12: $01 $00 $02
    ld bc, $0003                                  ; $5A15: $01 $03 $00
    ld c, $01                                     ; $5A18: $0E $01
    ld sp, $CF0F                                  ; $5A1A: $31 $0F $CF
    ld sp, $BD7F                                  ; $5A1D: $31 $7F $BD
    ld bc, $0F00                                  ; $5A20: $01 $00 $0F
    ld bc, $0F30                                  ; $5A23: $01 $30 $0F
    ld b, b                                       ; $5A26: $40
    ccf                                           ; $5A27: $3F
    ccf                                           ; $5A28: $3F
    nop                                           ; $5A29: $00
    rrca                                          ; $5A2A: $0F
    nop                                           ; $5A2B: $00
    nop                                           ; $5A2C: $00
    nop                                           ; $5A2D: $00
    nop                                           ; $5A2E: $00
    nop                                           ; $5A2F: $00
    nop                                           ; $5A30: $00
    nop                                           ; $5A31: $00
    nop                                           ; $5A32: $00
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
    inc bc                                        ; $5A40: $03
    nop                                           ; $5A41: $00
    inc b                                         ; $5A42: $04
    inc bc                                        ; $5A43: $03
    rlca                                          ; $5A44: $07
    inc bc                                        ; $5A45: $03
    inc bc                                        ; $5A46: $03
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
    rst RST_38                                    ; $5A54: $FF
    nop                                           ; $5A55: $00
    add b                                         ; $5A56: $80
    rst RST_38                                    ; $5A57: $FF
    rlca                                          ; $5A58: $07
    rst RST_38                                    ; $5A59: $FF
    rst RST_38                                    ; $5A5A: $FF
    ldh [rIE], a                                  ; $5A5B: $E0 $FF
    ld bc, $00E3                                  ; $5A5D: $01 $E3 $00
    ld a, a                                       ; $5A60: $7F
    or b                                          ; $5A61: $B0
    ei                                            ; $5A62: $FB
    call nc, $02FD                                ; $5A63: $D4 $FD $02
    daa                                           ; $5A66: $27
    jr @+$27                                      ; $5A67: $18 $25

    jr jr_014_5AAA                                ; $5A69: $18 $3F

    jr jr_014_5A8C                                ; $5A6B: $18 $1F

    inc bc                                        ; $5A6D: $03
    rlca                                          ; $5A6E: $07
    inc bc                                        ; $5A6F: $03
    inc bc                                        ; $5A70: $03
    ld bc, $0001                                  ; $5A71: $01 $01 $00
    rst RST_38                                    ; $5A74: $FF
    nop                                           ; $5A75: $00
    dec sp                                        ; $5A76: $3B
    rst RST_38                                    ; $5A77: $FF
    rst RST_38                                    ; $5A78: $FF
    add b                                         ; $5A79: $80
    db $FC                                        ; $5A7A: $FC
    dec bc                                        ; $5A7B: $0B
    rst RST_38                                    ; $5A7C: $FF
    ldh a, [$FFF0]                                ; $5A7D: $F0 $F0
    nop                                           ; $5A7F: $00
    ld [hl], c                                    ; $5A80: $71
    adc [hl]                                      ; $5A81: $8E
    xor l                                         ; $5A82: $AD
    ld d, d                                       ; $5A83: $52
    rst RST_38                                    ; $5A84: $FF
    add b                                         ; $5A85: $80
    ld sp, hl                                     ; $5A86: $F9
    ld [hl], $FC                                  ; $5A87: $36 $FC
    db $E3                                        ; $5A89: $E3
    rst RST_38                                    ; $5A8A: $FF
    nop                                           ; $5A8B: $00

jr_014_5A8C:
    rst RST_18                                    ; $5A8C: $DF
    jr nz, jr_014_5A9E                            ; $5A8D: $20 $0F

    ldh a, [$FF1F]                                ; $5A8F: $F0 $1F
    ldh [$FFFE], a                                ; $5A91: $E0 $FE
    ld bc, $0304                                  ; $5A93: $01 $04 $03
    ld [bc], a                                    ; $5A96: $02
    ld bc, $0001                                  ; $5A97: $01 $01 $00
    ld bc, $0100                                  ; $5A9A: $01 $00 $01
    nop                                           ; $5A9D: $00

jr_014_5A9E:
    ld bc, $9700                                  ; $5A9E: $01 $00 $97
    ld c, $96                                     ; $5AA1: $0E $96
    inc c                                         ; $5AA3: $0C
    ld c, h                                       ; $5AA4: $4C
    add b                                         ; $5AA5: $80
    ld b, b                                       ; $5AA6: $40
    add b                                         ; $5AA7: $80
    ld [hl], b                                    ; $5AA8: $70
    add b                                         ; $5AA9: $80

jr_014_5AAA:
    ld hl, sp+$70                                 ; $5AAA: $F8 $70
    ld hl, sp-$10                                 ; $5AAC: $F8 $F0

jr_014_5AAE:
    ld hl, sp-$10                                 ; $5AAE: $F8 $F0
    db $FC                                        ; $5AB0: $FC
    ld hl, sp-$04                                 ; $5AB1: $F8 $FC
    jr c, jr_014_5AF1                             ; $5AB3: $38 $3C

    jr jr_014_5AD5                                ; $5AB5: $18 $1E

    nop                                           ; $5AB7: $00
    rra                                           ; $5AB8: $1F
    ld c, $1F                                     ; $5AB9: $0E $1F
    rrca                                          ; $5ABB: $0F
    rra                                           ; $5ABC: $1F
    rrca                                          ; $5ABD: $0F
    rra                                           ; $5ABE: $1F
    nop                                           ; $5ABF: $00
    ret nz                                        ; $5AC0: $C0

    nop                                           ; $5AC1: $00
    and b                                         ; $5AC2: $A0
    ld b, b                                       ; $5AC3: $40
    ldh [rP1], a                                  ; $5AC4: $E0 $00
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

jr_014_5AD5:
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
    add b                                         ; $5AE8: $80
    nop                                           ; $5AE9: $00
    ld b, b                                       ; $5AEA: $40
    add b                                         ; $5AEB: $80
    jr nz, jr_014_5AAE                            ; $5AEC: $20 $C0

    ld hl, sp+$00                                 ; $5AEE: $F8 $00
    db $FC                                        ; $5AF0: $FC

jr_014_5AF1:
    ld a, b                                       ; $5AF1: $78
    cp $F8                                        ; $5AF2: $FE $F8
    ccf                                           ; $5AF4: $3F
    or $1F                                        ; $5AF5: $F6 $1F
    db $EC                                        ; $5AF7: $EC
    rst RST_10                                    ; $5AF8: $D7
    add sp, -$01                                  ; $5AF9: $E8 $FF
    ld l, b                                       ; $5AFB: $68
    rst RST_38                                    ; $5AFC: $FF
    ld b, $8F                                     ; $5AFD: $06 $8F
    ld b, $00                                     ; $5AFF: $06 $00
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
    jr nc, jr_014_5B10                            ; $5B0E: $30 $00

jr_014_5B10:
    ld e, b                                       ; $5B10: $58
    jr nc, jr_014_5B8B                            ; $5B11: $30 $78

    jr nc, @-$4E                                  ; $5B13: $30 $B0

    ld h, b                                       ; $5B15: $60
    ld [hl], b                                    ; $5B16: $70
    ldh [$FFFE], a                                ; $5B17: $E0 $FE
    ret nc                                        ; $5B19: $D0

    rst RST_38                                    ; $5B1A: $FF
    ld a, $FF                                     ; $5B1B: $3E $FF
    ld c, $0E                                     ; $5B1D: $0E $0E
    nop                                           ; $5B1F: $00
    nop                                           ; $5B20: $00
    nop                                           ; $5B21: $00
    nop                                           ; $5B22: $00
    nop                                           ; $5B23: $00
    nop                                           ; $5B24: $00
    nop                                           ; $5B25: $00
    nop                                           ; $5B26: $00
    nop                                           ; $5B27: $00
    ld b, $00                                     ; $5B28: $06 $00
    ld a, [$0A04]                                 ; $5B2A: $FA $04 $0A
    db $F4                                        ; $5B2D: $F4
    or $EC                                        ; $5B2E: $F6 $EC
    and $1C                                       ; $5B30: $E6 $1C
    ld c, h                                       ; $5B32: $4C
    cp b                                          ; $5B33: $B8
    ld a, a                                       ; $5B34: $7F
    cp b                                          ; $5B35: $B8
    ld a, b                                       ; $5B36: $78
    add a                                         ; $5B37: $87
    add h                                         ; $5B38: $84
    ld a, e                                       ; $5B39: $7B
    ld a, $C1                                     ; $5B3A: $3E $C1
    ld h, c                                       ; $5B3C: $61
    sbc [hl]                                      ; $5B3D: $9E
    ld h, b                                       ; $5B3E: $60
    sbc a                                         ; $5B3F: $9F
    nop                                           ; $5B40: $00
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
    nop                                           ; $5B50: $00
    nop                                           ; $5B51: $00
    inc bc                                        ; $5B52: $03
    nop                                           ; $5B53: $00
    dec b                                         ; $5B54: $05
    inc bc                                        ; $5B55: $03
    dec bc                                        ; $5B56: $0B
    ld b, $0E                                     ; $5B57: $06 $0E
    dec b                                         ; $5B59: $05
    rrca                                          ; $5B5A: $0F
    inc b                                         ; $5B5B: $04
    ld a, $01                                     ; $5B5C: $3E $01
    pop de                                        ; $5B5E: $D1
    ld l, $03                                     ; $5B5F: $2E $03
    nop                                           ; $5B61: $00
    ld a, a                                       ; $5B62: $7F
    inc bc                                        ; $5B63: $03
    sbc a                                         ; $5B64: $9F
    ld l, h                                       ; $5B65: $6C
    ld a, a                                       ; $5B66: $7F
    nop                                           ; $5B67: $00
    ld e, a                                       ; $5B68: $5F
    jr nz, jr_014_5BAA                            ; $5B69: $20 $3F

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

jr_014_5B7D:
    nop                                           ; $5B7D: $00
    nop                                           ; $5B7E: $00
    nop                                           ; $5B7F: $00
    ld b, $01                                     ; $5B80: $06 $01
    add hl, bc                                    ; $5B82: $09
    rlca                                          ; $5B83: $07
    rrca                                          ; $5B84: $0F
    ld b, $06                                     ; $5B85: $06 $06
    nop                                           ; $5B87: $00
    nop                                           ; $5B88: $00
    nop                                           ; $5B89: $00
    nop                                           ; $5B8A: $00

jr_014_5B8B:
    nop                                           ; $5B8B: $00
    nop                                           ; $5B8C: $00
    nop                                           ; $5B8D: $00
    nop                                           ; $5B8E: $00
    nop                                           ; $5B8F: $00
    nop                                           ; $5B90: $00
    nop                                           ; $5B91: $00
    nop                                           ; $5B92: $00
    nop                                           ; $5B93: $00
    add e                                         ; $5B94: $83
    nop                                           ; $5B95: $00
    rst RST_38                                    ; $5B96: $FF
    add e                                         ; $5B97: $83
    rst RST_38                                    ; $5B98: $FF
    ld e, a                                       ; $5B99: $5F
    rst RST_38                                    ; $5B9A: $FF
    ld e, a                                       ; $5B9B: $5F
    rst RST_38                                    ; $5B9C: $FF
    inc bc                                        ; $5B9D: $03
    jp $FE00                                      ; $5B9E: $C3 $00 $FE


    ld h, c                                       ; $5BA1: $61
    rst RST_30                                    ; $5BA2: $F7
    xor b                                         ; $5BA3: $A8
    ld a, [$4E05]                                 ; $5BA4: $FA $05 $4E
    ld sp, $314A                                  ; $5BA7: $31 $4A $31

jr_014_5BAA:
    ld a, [hl]                                    ; $5BAA: $7E
    ld sp, $063F                                  ; $5BAB: $31 $3F $06
    rrca                                          ; $5BAE: $0F
    rlca                                          ; $5BAF: $07
    rlca                                          ; $5BB0: $07
    ld [bc], a                                    ; $5BB1: $02
    inc bc                                        ; $5BB2: $03
    ld bc, $00E3                                  ; $5BB3: $01 $E3 $00
    db $FC                                        ; $5BB6: $FC
    db $E3                                        ; $5BB7: $E3
    ld hl, sp-$09                                 ; $5BB8: $F8 $F7
    ld hl, sp-$09                                 ; $5BBA: $F8 $F7
    rst RST_38                                    ; $5BBC: $FF
    ldh [$FFE0], a                                ; $5BBD: $E0 $E0
    nop                                           ; $5BBF: $00
    ld e, d                                       ; $5BC0: $5A
    and l                                         ; $5BC1: $A5
    cp $01                                        ; $5BC2: $FE $01
    di                                            ; $5BC4: $F3
    ld l, l                                       ; $5BC5: $6D
    ld sp, hl                                     ; $5BC6: $F9
    add $FF                                       ; $5BC7: $C6 $FF
    nop                                           ; $5BC9: $00
    ccf                                           ; $5BCA: $3F
    ret nz                                        ; $5BCB: $C0

    rra                                           ; $5BCC: $1F
    ldh [$FF3F], a                                ; $5BCD: $E0 $3F
    ret nz                                        ; $5BCF: $C0

    db $FC                                        ; $5BD0: $FC
    inc bc                                        ; $5BD1: $03
    ld [$0407], sp                                ; $5BD2: $08 $07 $04
    inc bc                                        ; $5BD5: $03
    inc bc                                        ; $5BD6: $03
    nop                                           ; $5BD7: $00
    inc bc                                        ; $5BD8: $03
    ld bc, $0103                                  ; $5BD9: $01 $03 $01
    inc bc                                        ; $5BDC: $03
    ld bc, $0001                                  ; $5BDD: $01 $01 $00
    ld l, $1C                                     ; $5BE0: $2E $1C
    inc l                                         ; $5BE2: $2C
    jr jr_014_5B7D                                ; $5BE3: $18 $98

    nop                                           ; $5BE5: $00
    add b                                         ; $5BE6: $80
    nop                                           ; $5BE7: $00
    ldh [rP1], a                                  ; $5BE8: $E0 $00
    ldh a, [$FFE0]                                ; $5BEA: $F0 $E0
    ldh a, [$FFE0]                                ; $5BEC: $F0 $E0
    ldh a, [$FFE0]                                ; $5BEE: $F0 $E0
    ld hl, sp-$10                                 ; $5BF0: $F8 $F0
    ld hl, sp+$70                                 ; $5BF2: $F8 $70
    ld a, b                                       ; $5BF4: $78
    jr nc, jr_014_5C33                            ; $5BF5: $30 $3C

    nop                                           ; $5BF7: $00
    ld a, $1C                                     ; $5BF8: $3E $1C
    ccf                                           ; $5BFA: $3F
    inc e                                         ; $5BFB: $1C
    ld a, $1D                                     ; $5BFC: $3E $1D
    ccf                                           ; $5BFE: $3F
    nop                                           ; $5BFF: $00
    add b                                         ; $5C00: $80
    nop                                           ; $5C01: $00
    add b                                         ; $5C02: $80
    nop                                           ; $5C03: $00
    nop                                           ; $5C04: $00
    nop                                           ; $5C05: $00
    nop                                           ; $5C06: $00
    nop                                           ; $5C07: $00
    nop                                           ; $5C08: $00
    nop                                           ; $5C09: $00
    nop                                           ; $5C0A: $00
    nop                                           ; $5C0B: $00
    nop                                           ; $5C0C: $00
    nop                                           ; $5C0D: $00

jr_014_5C0E:
    nop                                           ; $5C0E: $00
    nop                                           ; $5C0F: $00
    nop                                           ; $5C10: $00
    nop                                           ; $5C11: $00
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

jr_014_5C25:
    nop                                           ; $5C25: $00
    ld b, $00                                     ; $5C26: $06 $00
    ld a, [$0A04]                                 ; $5C28: $FA $04 $0A
    db $F4                                        ; $5C2B: $F4
    or $EC                                        ; $5C2C: $F6 $EC
    and $1C                                       ; $5C2E: $E6 $1C
    ld c, h                                       ; $5C30: $4C
    cp b                                          ; $5C31: $B8
    ld a, a                                       ; $5C32: $7F

jr_014_5C33:
    cp b                                          ; $5C33: $B8
    ld a, b                                       ; $5C34: $78
    add a                                         ; $5C35: $87
    add h                                         ; $5C36: $84
    ld a, e                                       ; $5C37: $7B
    ld a, $C1                                     ; $5C38: $3E $C1
    ld h, c                                       ; $5C3A: $61
    sbc [hl]                                      ; $5C3B: $9E
    ld h, b                                       ; $5C3C: $60
    sbc a                                         ; $5C3D: $9F
    ld [hl], c                                    ; $5C3E: $71
    adc [hl]                                      ; $5C3F: $8E
    nop                                           ; $5C40: $00
    nop                                           ; $5C41: $00
    nop                                           ; $5C42: $00
    nop                                           ; $5C43: $00
    nop                                           ; $5C44: $00
    nop                                           ; $5C45: $00
    nop                                           ; $5C46: $00
    nop                                           ; $5C47: $00
    add b                                         ; $5C48: $80
    nop                                           ; $5C49: $00
    ld b, b                                       ; $5C4A: $40
    add b                                         ; $5C4B: $80
    jr nz, jr_014_5C0E                            ; $5C4C: $20 $C0

    ld hl, sp+$00                                 ; $5C4E: $F8 $00
    db $FC                                        ; $5C50: $FC
    ld a, b                                       ; $5C51: $78
    ld a, [hl]                                    ; $5C52: $7E
    ld hl, sp+$3F                                 ; $5C53: $F8 $3F
    or $1F                                        ; $5C55: $F6 $1F
    db $EC                                        ; $5C57: $EC
    rst RST_10                                    ; $5C58: $D7
    add sp, -$01                                  ; $5C59: $E8 $FF
    ld l, b                                       ; $5C5B: $68
    rst RST_38                                    ; $5C5C: $FF
    ld b, $8F                                     ; $5C5D: $06 $8F
    ld b, $00                                     ; $5C5F: $06 $00
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
    jr nc, jr_014_5C70                            ; $5C6E: $30 $00

jr_014_5C70:
    ld e, b                                       ; $5C70: $58
    jr nc, jr_014_5CEB                            ; $5C71: $30 $78

    jr nc, jr_014_5C25                            ; $5C73: $30 $B0

    ld h, b                                       ; $5C75: $60
    ld [hl], b                                    ; $5C76: $70
    ldh [$FFFE], a                                ; $5C77: $E0 $FE
    ret nc                                        ; $5C79: $D0

    rst RST_38                                    ; $5C7A: $FF
    ld a, $FF                                     ; $5C7B: $3E $FF
    ld c, $0E                                     ; $5C7D: $0E $0E
    nop                                           ; $5C7F: $00
    nop                                           ; $5C80: $00
    nop                                           ; $5C81: $00
    nop                                           ; $5C82: $00
    nop                                           ; $5C83: $00
    nop                                           ; $5C84: $00
    nop                                           ; $5C85: $00
    nop                                           ; $5C86: $00
    nop                                           ; $5C87: $00
    nop                                           ; $5C88: $00
    nop                                           ; $5C89: $00
    nop                                           ; $5C8A: $00
    nop                                           ; $5C8B: $00
    nop                                           ; $5C8C: $00
    nop                                           ; $5C8D: $00
    nop                                           ; $5C8E: $00
    nop                                           ; $5C8F: $00
    nop                                           ; $5C90: $00
    nop                                           ; $5C91: $00
    inc bc                                        ; $5C92: $03
    nop                                           ; $5C93: $00
    dec b                                         ; $5C94: $05
    inc bc                                        ; $5C95: $03
    dec bc                                        ; $5C96: $0B
    ld b, $0E                                     ; $5C97: $06 $0E
    dec b                                         ; $5C99: $05
    rrca                                          ; $5C9A: $0F
    inc b                                         ; $5C9B: $04
    ld a, $01                                     ; $5C9C: $3E $01
    pop de                                        ; $5C9E: $D1
    ld l, $FF                                     ; $5C9F: $2E $FF
    ld a, [hl]                                    ; $5CA1: $7E
    rst RST_38                                    ; $5CA2: $FF
    ld b, b                                       ; $5CA3: $40
    rst RST_38                                    ; $5CA4: $FF
    ccf                                           ; $5CA5: $3F
    rst RST_38                                    ; $5CA6: $FF
    ld a, a                                       ; $5CA7: $7F
    rst RST_38                                    ; $5CA8: $FF
    ld b, b                                       ; $5CA9: $40
    rst RST_38                                    ; $5CAA: $FF
    ld [hl], $49                                  ; $5CAB: $36 $49
    ld [hl], $37                                  ; $5CAD: $36 $37
    ld bc, $0304                                  ; $5CAF: $01 $04 $03
    inc bc                                        ; $5CB2: $03
    nop                                           ; $5CB3: $00
    nop                                           ; $5CB4: $00
    nop                                           ; $5CB5: $00
    nop                                           ; $5CB6: $00
    nop                                           ; $5CB7: $00
    nop                                           ; $5CB8: $00
    nop                                           ; $5CB9: $00
    nop                                           ; $5CBA: $00
    nop                                           ; $5CBB: $00
    nop                                           ; $5CBC: $00
    nop                                           ; $5CBD: $00
    nop                                           ; $5CBE: $00
    nop                                           ; $5CBF: $00
    ccf                                           ; $5CC0: $3F
    jp nz, Jump_000_03CF                          ; $5CC1: $C2 $CF $03

    sbc a                                         ; $5CC4: $9F
    rlca                                          ; $5CC5: $07
    sbc a                                         ; $5CC6: $9F
    inc bc                                        ; $5CC7: $03
    xor a                                         ; $5CC8: $AF
    add hl, de                                    ; $5CC9: $19
    rst RST_38                                    ; $5CCA: $FF
    sbc d                                         ; $5CCB: $9A
    rst RST_38                                    ; $5CCC: $FF
    and [hl]                                      ; $5CCD: $A6
    ld h, a                                       ; $5CCE: $67
    cp [hl]                                       ; $5CCF: $BE
    and a                                         ; $5CD0: $A7
    ld e, $36                                     ; $5CD1: $1E $36
    inc e                                         ; $5CD3: $1C
    ld d, $0C                                     ; $5CD4: $16 $0C
    ld e, $00                                     ; $5CD6: $1E $00
    ccf                                           ; $5CD8: $3F
    ld e, $7F                                     ; $5CD9: $1E $7F
    ld [bc], a                                    ; $5CDB: $02
    sub e                                         ; $5CDC: $93
    ld l, h                                       ; $5CDD: $6C
    rst RST_38                                    ; $5CDE: $FF
    nop                                           ; $5CDF: $00
    push af                                       ; $5CE0: $F5
    ld l, e                                       ; $5CE1: $6B
    db $FD                                        ; $5CE2: $FD
    add e                                         ; $5CE3: $83

jr_014_5CE4:
    rst RST_38                                    ; $5CE4: $FF
    jr jr_014_5CE4                                ; $5CE5: $18 $FD

    ei                                            ; $5CE7: $FB
    db $FD                                        ; $5CE8: $FD
    di                                            ; $5CE9: $F3
    rst RST_38                                    ; $5CEA: $FF

jr_014_5CEB:
    ld b, b                                       ; $5CEB: $40
    rst RST_38                                    ; $5CEC: $FF
    add b                                         ; $5CED: $80
    db $FC                                        ; $5CEE: $FC
    nop                                           ; $5CEF: $00
    ldh [c], a                                    ; $5CF0: $E2
    inc e                                         ; $5CF1: $1C
    ld h, e                                       ; $5CF2: $63
    inc e                                         ; $5CF3: $1C
    ld hl, $111E                                  ; $5CF4: $21 $1E $11
    ld c, $11                                     ; $5CF7: $0E $11
    ld c, $0F                                     ; $5CF9: $0E $0F
    nop                                           ; $5CFB: $00
    rrca                                          ; $5CFC: $0F
    rlca                                          ; $5CFD: $07
    rlca                                          ; $5CFE: $07
    nop                                           ; $5CFF: $00
    db $FC                                        ; $5D00: $FC
    ld l, e                                       ; $5D01: $6B
    rst RST_38                                    ; $5D02: $FF
    ld l, h                                       ; $5D03: $6C
    cp $6C                                        ; $5D04: $FE $6C
    rst RST_38                                    ; $5D06: $FF
    ld l, h                                       ; $5D07: $6C
    db $FC                                        ; $5D08: $FC
    ld l, e                                       ; $5D09: $6B
    rst RST_38                                    ; $5D0A: $FF
    ret c                                         ; $5D0B: $D8

    ld hl, sp+$00                                 ; $5D0C: $F8 $00
    nop                                           ; $5D0E: $00
    nop                                           ; $5D0F: $00
    nop                                           ; $5D10: $00
    nop                                           ; $5D11: $00
    add b                                         ; $5D12: $80
    nop                                           ; $5D13: $00
    ret nz                                        ; $5D14: $C0

    add b                                         ; $5D15: $80
    ldh [$FFC0], a                                ; $5D16: $E0 $C0
    ldh [rLCDC], a                                ; $5D18: $E0 $40
    ldh a, [$FF80]                                ; $5D1A: $F0 $80
    ret z                                         ; $5D1C: $C8

    or b                                          ; $5D1D: $B0
    ld hl, sp+$00                                 ; $5D1E: $F8 $00
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
    nop                                           ; $5D2C: $00
    nop                                           ; $5D2D: $00
    nop                                           ; $5D2E: $00
    nop                                           ; $5D2F: $00
    nop                                           ; $5D30: $00
    nop                                           ; $5D31: $00
    nop                                           ; $5D32: $00
    nop                                           ; $5D33: $00
    nop                                           ; $5D34: $00
    nop                                           ; $5D35: $00
    ld bc, $4600                                  ; $5D36: $01 $00 $46
    ld bc, $45AA                                  ; $5D39: $01 $AA $45
    cp e                                          ; $5D3C: $BB
    ld b, h                                       ; $5D3D: $44
    cp $39                                        ; $5D3E: $FE $39
    nop                                           ; $5D40: $00
    nop                                           ; $5D41: $00
    nop                                           ; $5D42: $00
    nop                                           ; $5D43: $00
    nop                                           ; $5D44: $00
    nop                                           ; $5D45: $00
    nop                                           ; $5D46: $00
    nop                                           ; $5D47: $00
    nop                                           ; $5D48: $00
    nop                                           ; $5D49: $00
    dec b                                         ; $5D4A: $05
    nop                                           ; $5D4B: $00
    jp z, $B405                                   ; $5D4C: $CA $05 $B4

    ld c, e                                       ; $5D4F: $4B
    or l                                          ; $5D50: $B5
    ld c, e                                       ; $5D51: $4B
    rst RST_18                                    ; $5D52: $DF
    ld l, d                                       ; $5D53: $6A
    ld a, [hl]                                    ; $5D54: $7E
    ld hl, $2EF1                                  ; $5D55: $21 $F1 $2E
    ccf                                           ; $5D58: $3F
    pop de                                        ; $5D59: $D1
    dec de                                        ; $5D5A: $1B
    db $E4                                        ; $5D5B: $E4
    inc e                                         ; $5D5C: $1C
    db $E3                                        ; $5D5D: $E3
    sbc [hl]                                      ; $5D5E: $9E
    ld l, e                                       ; $5D5F: $6B
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
    cp c                                          ; $5D6C: $B9
    nop                                           ; $5D6D: $00
    adc $39                                       ; $5D6E: $CE $39
    cp l                                          ; $5D70: $BD
    ld [hl], e                                    ; $5D71: $73
    ei                                            ; $5D72: $FB
    ld c, $27                                     ; $5D73: $0E $27
    sbc $BE                                       ; $5D75: $DE $BE
    ld e, l                                       ; $5D77: $5D
    cp h                                          ; $5D78: $BC
    ld e, e                                       ; $5D79: $5B
    cp [hl]                                       ; $5D7A: $BE
    ld b, c                                       ; $5D7B: $41
    rst RST_30                                    ; $5D7C: $F7
    adc [hl]                                      ; $5D7D: $8E
    rst RST_28                                    ; $5D7E: $EF
    jr jr_014_5D81                                ; $5D7F: $18 $00

jr_014_5D81:
    nop                                           ; $5D81: $00
    add b                                         ; $5D82: $80
    nop                                           ; $5D83: $00
    add b                                         ; $5D84: $80
    nop                                           ; $5D85: $00
    add b                                         ; $5D86: $80
    nop                                           ; $5D87: $00
    nop                                           ; $5D88: $00
    nop                                           ; $5D89: $00
    ldh a, [rP1]                                  ; $5D8A: $F0 $00
    ld [$38F0], sp                                ; $5D8C: $08 $F0 $38
    ret nz                                        ; $5D8F: $C0

    ldh a, [rP1]                                  ; $5D90: $F0 $00
    ldh [rP1], a                                  ; $5D92: $E0 $00
    cp $C0                                        ; $5D94: $FE $C0
    ld sp, hl                                     ; $5D96: $F9
    sub $FE                                       ; $5D97: $D6 $FE
    ret c                                         ; $5D99: $D8

    db $FC                                        ; $5D9A: $FC
    ret c                                         ; $5D9B: $D8

    cp $D8                                        ; $5D9C: $FE $D8
    ld sp, hl                                     ; $5D9E: $F9
    sub $FF                                       ; $5D9F: $D6 $FF
    inc b                                         ; $5DA1: $04
    rra                                           ; $5DA2: $1F
    rlca                                          ; $5DA3: $07
    ccf                                           ; $5DA4: $3F
    ld c, $3F                                     ; $5DA5: $0E $3F
    rlca                                          ; $5DA7: $07
    cpl                                           ; $5DA8: $2F
    add hl, de                                    ; $5DA9: $19
    ld a, a                                       ; $5DAA: $7F
    ld a, [de]                                    ; $5DAB: $1A
    ld a, a                                       ; $5DAC: $7F
    ld h, $67                                     ; $5DAD: $26 $67
    ld a, $27                                     ; $5DAF: $3E $27
    ld e, $36                                     ; $5DB1: $1E $36
    inc e                                         ; $5DB3: $1C
    ld d, $0C                                     ; $5DB4: $16 $0C
    ld e, $00                                     ; $5DB6: $1E $00
    ccf                                           ; $5DB8: $3F
    ld e, $7F                                     ; $5DB9: $1E $7F
    ld [bc], a                                    ; $5DBB: $02
    sub e                                         ; $5DBC: $93
    ld l, h                                       ; $5DBD: $6C
    rst RST_38                                    ; $5DBE: $FF
    nop                                           ; $5DBF: $00
    db $EB                                        ; $5DC0: $EB
    sub $FB                                       ; $5DC1: $D6 $FB
    ld b, $FF                                     ; $5DC3: $06 $FF
    jr nc, @-$03                                  ; $5DC5: $30 $FB

    or $FB                                        ; $5DC7: $F6 $FB
    and $FF                                       ; $5DC9: $E6 $FF
    add c                                         ; $5DCB: $81
    ei                                            ; $5DCC: $FB
    nop                                           ; $5DCD: $00
    db $FC                                        ; $5DCE: $FC
    nop                                           ; $5DCF: $00
    ldh [c], a                                    ; $5DD0: $E2
    inc e                                         ; $5DD1: $1C
    ld h, e                                       ; $5DD2: $63
    inc e                                         ; $5DD3: $1C
    ld hl, $111E                                  ; $5DD4: $21 $1E $11
    ld c, $11                                     ; $5DD7: $0E $11
    ld c, $0F                                     ; $5DD9: $0E $0F
    nop                                           ; $5DDB: $00
    rrca                                          ; $5DDC: $0F
    rlca                                          ; $5DDD: $07
    rlca                                          ; $5DDE: $07
    nop                                           ; $5DDF: $00
    ld sp, hl                                     ; $5DE0: $F9
    sub $FE                                       ; $5DE1: $D6 $FE
    ret c                                         ; $5DE3: $D8

    db $FC                                        ; $5DE4: $FC
    ret c                                         ; $5DE5: $D8

    cp $D8                                        ; $5DE6: $FE $D8
    ld sp, hl                                     ; $5DE8: $F9
    sub $FE                                       ; $5DE9: $D6 $FE
    or b                                          ; $5DEB: $B0
    ldh a, [rP1]                                  ; $5DEC: $F0 $00
    nop                                           ; $5DEE: $00
    nop                                           ; $5DEF: $00
    nop                                           ; $5DF0: $00
    nop                                           ; $5DF1: $00
    add b                                         ; $5DF2: $80
    nop                                           ; $5DF3: $00
    ret nz                                        ; $5DF4: $C0

    add b                                         ; $5DF5: $80
    ldh [$FFC0], a                                ; $5DF6: $E0 $C0
    ldh [rLCDC], a                                ; $5DF8: $E0 $40
    ldh a, [$FF80]                                ; $5DFA: $F0 $80
    ret z                                         ; $5DFC: $C8

    or b                                          ; $5DFD: $B0
    ld hl, sp+$00                                 ; $5DFE: $F8 $00
    nop                                           ; $5E00: $00
    nop                                           ; $5E01: $00
    nop                                           ; $5E02: $00
    nop                                           ; $5E03: $00
    nop                                           ; $5E04: $00
    nop                                           ; $5E05: $00
    nop                                           ; $5E06: $00
    nop                                           ; $5E07: $00
    nop                                           ; $5E08: $00
    nop                                           ; $5E09: $00
    nop                                           ; $5E0A: $00
    nop                                           ; $5E0B: $00
    ret nz                                        ; $5E0C: $C0

    nop                                           ; $5E0D: $00
    ld b, b                                       ; $5E0E: $40
    add b                                         ; $5E0F: $80
    ret nz                                        ; $5E10: $C0

    add b                                         ; $5E11: $80
    add b                                         ; $5E12: $80
    nop                                           ; $5E13: $00
    ld hl, sp+$00                                 ; $5E14: $F8 $00
    inc b                                         ; $5E16: $04
    ld hl, sp+$1C                                 ; $5E17: $F8 $1C
    ldh [$FF78], a                                ; $5E19: $E0 $78
    add b                                         ; $5E1B: $80
    ldh a, [rP1]                                  ; $5E1C: $F0 $00
    rst RST_38                                    ; $5E1E: $FF
    ld h, b                                       ; $5E1F: $60
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
    add b                                         ; $5E2A: $80
    nop                                           ; $5E2B: $00
    ld e, h                                       ; $5E2C: $5C

jr_014_5E2D:
    add b                                         ; $5E2D: $80
    ld h, a                                       ; $5E2E: $67
    sbc h                                         ; $5E2F: $9C
    sbc $B9                                       ; $5E30: $DE $B9
    db $FD                                        ; $5E32: $FD
    rlca                                          ; $5E33: $07
    inc de                                        ; $5E34: $13
    rst RST_28                                    ; $5E35: $EF
    rst RST_18                                    ; $5E36: $DF
    ld l, $DE                                     ; $5E37: $2E $DE
    xor l                                         ; $5E39: $AD
    rst RST_18                                    ; $5E3A: $DF
    jr nz, @+$7D                                  ; $5E3B: $20 $7B

    rst RST_00                                    ; $5E3D: $C7
    ld [hl], a                                    ; $5E3E: $77
    adc h                                         ; $5E3F: $8C
    nop                                           ; $5E40: $00
    nop                                           ; $5E41: $00
    nop                                           ; $5E42: $00
    nop                                           ; $5E43: $00
    nop                                           ; $5E44: $00
    nop                                           ; $5E45: $00
    nop                                           ; $5E46: $00
    nop                                           ; $5E47: $00
    ld [bc], a                                    ; $5E48: $02
    nop                                           ; $5E49: $00
    ld h, l                                       ; $5E4A: $65
    ld [bc], a                                    ; $5E4B: $02
    ld e, d                                       ; $5E4C: $5A
    dec h                                         ; $5E4D: $25
    ld e, d                                       ; $5E4E: $5A
    dec h                                         ; $5E4F: $25
    ld l, a                                       ; $5E50: $6F
    dec [hl]                                      ; $5E51: $35
    rst RST_38                                    ; $5E52: $FF
    db $10                                        ; $5E53: $10
    jr c, jr_014_5E2D                             ; $5E54: $38 $D7

    rra                                           ; $5E56: $1F
    add sp, $0D                                   ; $5E57: $E8 $0D
    ldh a, [c]                                    ; $5E59: $F2
    adc [hl]                                      ; $5E5A: $8E
    ld [hl], c                                    ; $5E5B: $71
    ld c, a                                       ; $5E5C: $4F
    or l                                          ; $5E5D: $B5
    rst RST_38                                    ; $5E5E: $FF
    ld [bc], a                                    ; $5E5F: $02

jr_014_5E60:
    ld e, $00                                     ; $5E60: $1E $00
    ld [hl+], a                                   ; $5E62: $22
    inc e                                         ; $5E63: $1C
    ld e, h                                       ; $5E64: $5C
    jr nz, jr_014_5E60                            ; $5E65: $20 $F9

    nop                                           ; $5E67: $00
    rrca                                          ; $5E68: $0F
    ldh a, [$FFF9]                                ; $5E69: $F0 $F9
    halt                                          ; $5E6B: $76
    ld hl, sp+$77                                 ; $5E6C: $F8 $77
    ld hl, sp+$77                                 ; $5E6E: $F8 $77
    rst RST_38                                    ; $5E70: $FF
    ld [hl], b                                    ; $5E71: $70
    ld a, b                                       ; $5E72: $78
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
    nop                                           ; $5E8A: $00
    nop                                           ; $5E8B: $00
    nop                                           ; $5E8C: $00
    nop                                           ; $5E8D: $00
    nop                                           ; $5E8E: $00
    nop                                           ; $5E8F: $00
    rra                                           ; $5E90: $1F
    nop                                           ; $5E91: $00
    ld h, $1B                                     ; $5E92: $26 $1B
    ld a, a                                       ; $5E94: $7F
    inc e                                         ; $5E95: $1C
    sbc a                                         ; $5E96: $9F
    ld l, a                                       ; $5E97: $6F
    sbc a                                         ; $5E98: $9F
    ld h, c                                       ; $5E99: $61
    di                                            ; $5E9A: $F3
    ld l, h                                       ; $5E9B: $6C
    cp $6C                                        ; $5E9C: $FE $6C
    ld a, h                                       ; $5E9E: $7C
    nop                                           ; $5E9F: $00
    rst RST_38                                    ; $5EA0: $FF
    ld a, [hl]                                    ; $5EA1: $7E
    rst RST_38                                    ; $5EA2: $FF
    ld b, b                                       ; $5EA3: $40
    rst RST_38                                    ; $5EA4: $FF
    ccf                                           ; $5EA5: $3F
    rst RST_38                                    ; $5EA6: $FF
    ld a, a                                       ; $5EA7: $7F
    rst RST_38                                    ; $5EA8: $FF
    ld b, b                                       ; $5EA9: $40
    rst RST_38                                    ; $5EAA: $FF
    ld [hl], $49                                  ; $5EAB: $36 $49
    ld [hl], $37                                  ; $5EAD: $36 $37
    nop                                           ; $5EAF: $00
    dec b                                         ; $5EB0: $05
    ld [bc], a                                    ; $5EB1: $02
    ld [bc], a                                    ; $5EB2: $02
    ld bc, $0106                                  ; $5EB3: $01 $06 $01
    rrca                                          ; $5EB6: $0F
    ld b, $1F                                     ; $5EB7: $06 $1F
    rlca                                          ; $5EB9: $07
    cpl                                           ; $5EBA: $2F
    inc de                                        ; $5EBB: $13
    ld d, e                                       ; $5EBC: $53
    inc l                                         ; $5EBD: $2C
    ld a, $00                                     ; $5EBE: $3E $00
    ccf                                           ; $5EC0: $3F
    jp nz, Jump_000_03CF                          ; $5EC1: $C2 $CF $03

    sbc a                                         ; $5EC4: $9F
    rlca                                          ; $5EC5: $07
    or a                                          ; $5EC6: $B7
    dec bc                                        ; $5EC7: $0B
    rst RST_18                                    ; $5EC8: $DF
    inc sp                                        ; $5EC9: $33
    rst RST_38                                    ; $5ECA: $FF
    or [hl]                                       ; $5ECB: $B6
    cp a                                          ; $5ECC: $BF
    ret                                           ; $5ECD: $C9


    sbc l                                         ; $5ECE: $9D
    ld a, [$F03F]                                 ; $5ECF: $FA $3F $F0
    ld [hl], b                                    ; $5ED2: $70
    ret nz                                        ; $5ED3: $C0

    ld b, b                                       ; $5ED4: $40
    add b                                         ; $5ED5: $80
    ret nz                                        ; $5ED6: $C0

    nop                                           ; $5ED7: $00
    ret nz                                        ; $5ED8: $C0

    add b                                         ; $5ED9: $80
    add b                                         ; $5EDA: $80
    nop                                           ; $5EDB: $00
    nop                                           ; $5EDC: $00
    nop                                           ; $5EDD: $00
    nop                                           ; $5EDE: $00
    nop                                           ; $5EDF: $00
    push af                                       ; $5EE0: $F5
    ld l, e                                       ; $5EE1: $6B
    db $FD                                        ; $5EE2: $FD
    add e                                         ; $5EE3: $83

jr_014_5EE4:
    rst RST_38                                    ; $5EE4: $FF
    jr jr_014_5EE4                                ; $5EE5: $18 $FD

    ei                                            ; $5EE7: $FB
    db $FD                                        ; $5EE8: $FD
    di                                            ; $5EE9: $F3
    rst RST_38                                    ; $5EEA: $FF
    ld b, b                                       ; $5EEB: $40
    rst RST_38                                    ; $5EEC: $FF
    add b                                         ; $5EED: $80
    db $FC                                        ; $5EEE: $FC
    nop                                           ; $5EEF: $00
    ldh [c], a                                    ; $5EF0: $E2
    inc e                                         ; $5EF1: $1C
    ld h, e                                       ; $5EF2: $63
    inc e                                         ; $5EF3: $1C
    ld hl, $111E                                  ; $5EF4: $21 $1E $11
    ld c, $11                                     ; $5EF7: $0E $11
    ld c, $0F                                     ; $5EF9: $0E $0F
    nop                                           ; $5EFB: $00
    rrca                                          ; $5EFC: $0F
    rlca                                          ; $5EFD: $07
    rlca                                          ; $5EFE: $07
    nop                                           ; $5EFF: $00
    db $FC                                        ; $5F00: $FC
    ld l, e                                       ; $5F01: $6B
    rst RST_38                                    ; $5F02: $FF
    ld l, h                                       ; $5F03: $6C
    cp $6C                                        ; $5F04: $FE $6C
    rst RST_38                                    ; $5F06: $FF
    ld l, h                                       ; $5F07: $6C
    db $FC                                        ; $5F08: $FC
    ld l, e                                       ; $5F09: $6B
    rst RST_38                                    ; $5F0A: $FF
    ret c                                         ; $5F0B: $D8

    ld hl, sp+$00                                 ; $5F0C: $F8 $00
    nop                                           ; $5F0E: $00
    nop                                           ; $5F0F: $00
    nop                                           ; $5F10: $00
    nop                                           ; $5F11: $00
    add b                                         ; $5F12: $80
    nop                                           ; $5F13: $00
    ret nz                                        ; $5F14: $C0

    add b                                         ; $5F15: $80
    ldh [$FFC0], a                                ; $5F16: $E0 $C0
    ldh [rLCDC], a                                ; $5F18: $E0 $40
    ldh a, [$FF80]                                ; $5F1A: $F0 $80
    ret z                                         ; $5F1C: $C8

    or b                                          ; $5F1D: $B0
    ld hl, sp+$00                                 ; $5F1E: $F8 $00
    nop                                           ; $5F20: $00
    nop                                           ; $5F21: $00
    nop                                           ; $5F22: $00
    nop                                           ; $5F23: $00
    nop                                           ; $5F24: $00
    nop                                           ; $5F25: $00
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
    ld bc, $4600                                  ; $5F36: $01 $00 $46
    ld bc, $45AA                                  ; $5F39: $01 $AA $45
    cp e                                          ; $5F3C: $BB
    ld b, h                                       ; $5F3D: $44
    cp $39                                        ; $5F3E: $FE $39
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
    dec b                                         ; $5F4A: $05
    nop                                           ; $5F4B: $00
    ld c, d                                       ; $5F4C: $4A
    dec b                                         ; $5F4D: $05
    or h                                          ; $5F4E: $B4
    ld c, e                                       ; $5F4F: $4B
    or l                                          ; $5F50: $B5
    ld c, e                                       ; $5F51: $4B
    rst RST_18                                    ; $5F52: $DF
    ld l, d                                       ; $5F53: $6A
    ld a, [hl]                                    ; $5F54: $7E
    ld hl, $2EF1                                  ; $5F55: $21 $F1 $2E
    ccf                                           ; $5F58: $3F
    pop de                                        ; $5F59: $D1
    dec de                                        ; $5F5A: $1B
    db $E4                                        ; $5F5B: $E4
    inc e                                         ; $5F5C: $1C
    db $E3                                        ; $5F5D: $E3
    sbc [hl]                                      ; $5F5E: $9E
    ld l, e                                       ; $5F5F: $6B
    nop                                           ; $5F60: $00
    nop                                           ; $5F61: $00
    nop                                           ; $5F62: $00
    nop                                           ; $5F63: $00
    nop                                           ; $5F64: $00
    nop                                           ; $5F65: $00
    nop                                           ; $5F66: $00
    nop                                           ; $5F67: $00
    nop                                           ; $5F68: $00
    nop                                           ; $5F69: $00
    nop                                           ; $5F6A: $00
    nop                                           ; $5F6B: $00
    cp c                                          ; $5F6C: $B9
    nop                                           ; $5F6D: $00
    adc $39                                       ; $5F6E: $CE $39
    cp l                                          ; $5F70: $BD
    ld [hl], e                                    ; $5F71: $73
    ei                                            ; $5F72: $FB
    ld c, $27                                     ; $5F73: $0E $27
    sbc $BE                                       ; $5F75: $DE $BE
    ld e, l                                       ; $5F77: $5D
    cp h                                          ; $5F78: $BC
    ld e, e                                       ; $5F79: $5B
    cp [hl]                                       ; $5F7A: $BE
    ld b, c                                       ; $5F7B: $41
    rst RST_30                                    ; $5F7C: $F7
    adc [hl]                                      ; $5F7D: $8E
    rst RST_28                                    ; $5F7E: $EF
    jr jr_014_5F81                                ; $5F7F: $18 $00

jr_014_5F81:
    nop                                           ; $5F81: $00
    add b                                         ; $5F82: $80
    nop                                           ; $5F83: $00
    add b                                         ; $5F84: $80
    nop                                           ; $5F85: $00
    add b                                         ; $5F86: $80
    nop                                           ; $5F87: $00
    nop                                           ; $5F88: $00
    nop                                           ; $5F89: $00
    ldh a, [rP1]                                  ; $5F8A: $F0 $00
    ld [$38F0], sp                                ; $5F8C: $08 $F0 $38
    ret nz                                        ; $5F8F: $C0

    ldh a, [rP1]                                  ; $5F90: $F0 $00
    ldh [rP1], a                                  ; $5F92: $E0 $00
    cp $C0                                        ; $5F94: $FE $C0
    ld sp, hl                                     ; $5F96: $F9
    sub $FE                                       ; $5F97: $D6 $FE
    ret c                                         ; $5F99: $D8

    db $FC                                        ; $5F9A: $FC
    ret c                                         ; $5F9B: $D8

    cp $D8                                        ; $5F9C: $FE $D8
    ld sp, hl                                     ; $5F9E: $F9
    sub $00                                       ; $5F9F: $D6 $00
    nop                                           ; $5FA1: $00
    ld bc, $0100                                  ; $5FA2: $01 $00 $01
    nop                                           ; $5FA5: $00
    inc bc                                        ; $5FA6: $03
    ld bc, $0103                                  ; $5FA7: $01 $03 $01
    inc bc                                        ; $5FAA: $03
    ld bc, $0001                                  ; $5FAB: $01 $01 $00
    ld bc, $0000                                  ; $5FAE: $01 $00 $00
    nop                                           ; $5FB1: $00
    inc bc                                        ; $5FB2: $03
    nop                                           ; $5FB3: $00
    rra                                           ; $5FB4: $1F
    inc bc                                        ; $5FB5: $03
    ld a, a                                       ; $5FB6: $7F
    rra                                           ; $5FB7: $1F
    sbc a                                         ; $5FB8: $9F
    ld l, a                                       ; $5FB9: $6F
    sbc a                                         ; $5FBA: $9F
    ld h, e                                       ; $5FBB: $63
    ld [hl], e                                    ; $5FBC: $73
    inc c                                         ; $5FBD: $0C
    inc e                                         ; $5FBE: $1C
    nop                                           ; $5FBF: $00
    ld d, l                                       ; $5FC0: $55
    ld [hl+], a                                   ; $5FC1: $22
    cp e                                          ; $5FC2: $BB
    ld b, h                                       ; $5FC3: $44
    db $FD                                        ; $5FC4: $FD
    ld a, [hl-]                                   ; $5FC5: $3A
    cp $FD                                        ; $5FC6: $FE $FD
    cp $05                                        ; $5FC8: $FE $05
    rst RST_38                                    ; $5FCA: $FF

jr_014_5FCB:
    ld hl, sp-$01                                 ; $5FCB: $F8 $FF
    ld a, [$02FF]                                 ; $5FCD: $FA $FF $02
    cp $D8                                        ; $5FD0: $FE $D8
    daa                                           ; $5FD2: $27
    jp c, $05FE                                   ; $5FD3: $DA $FE $05

    di                                            ; $5FD6: $F3
    dec a                                         ; $5FD7: $3D
    add e                                         ; $5FD8: $83
    ld a, [hl]                                    ; $5FD9: $7E
    rst RST_38                                    ; $5FDA: $FF
    cp a                                          ; $5FDB: $BF
    rst RST_38                                    ; $5FDC: $FF
    nop                                           ; $5FDD: $00
    add b                                         ; $5FDE: $80
    nop                                           ; $5FDF: $00
    rst RST_38                                    ; $5FE0: $FF
    nop                                           ; $5FE1: $00
    jr jr_014_5FCB                                ; $5FE2: $18 $E7

    rrca                                          ; $5FE4: $0F
    ldh a, [$FF8C]                                ; $5FE5: $F0 $8C
    ld [hl], e                                    ; $5FE7: $73
    ld c, a                                       ; $5FE8: $4F
    or l                                          ; $5FE9: $B5
    ccf                                           ; $5FEA: $3F
    jp nz, $834F                                  ; $5FEB: $C2 $4F $83

    sbc a                                         ; $5FEE: $9F
    rlca                                          ; $5FEF: $07
    rla                                           ; $5FF0: $17
    dec bc                                        ; $5FF1: $0B
    rra                                           ; $5FF2: $1F
    inc bc                                        ; $5FF3: $03
    ld l, a                                       ; $5FF4: $6F
    ld d, $87                                     ; $5FF5: $16 $87
    ld a, c                                       ; $5FF7: $79
    ld b, c                                       ; $5FF8: $41
    cp [hl]                                       ; $5FF9: $BE
    rst RST_08                                    ; $5FFA: $CF
    or b                                          ; $5FFB: $B0
    ldh a, [rP1]                                  ; $5FFC: $F0 $00
    add b                                         ; $5FFE: $80
    nop                                           ; $5FFF: $00
    ld [hl], a                                    ; $6000: $77
    adc h                                         ; $6001: $8C
    push af                                       ; $6002: $F5
    ld l, e                                       ; $6003: $6B
    db $FD                                        ; $6004: $FD
    add e                                         ; $6005: $83

jr_014_6006:
    rst RST_38                                    ; $6006: $FF
    jr jr_014_6006                                ; $6007: $18 $FD

    ei                                            ; $6009: $FB
    db $FD                                        ; $600A: $FD
    di                                            ; $600B: $F3
    rst RST_38                                    ; $600C: $FF
    ld b, b                                       ; $600D: $40
    rst RST_38                                    ; $600E: $FF
    add b                                         ; $600F: $80
    ldh [c], a                                    ; $6010: $E2
    inc e                                         ; $6011: $1C
    db $E3                                        ; $6012: $E3
    inc e                                         ; $6013: $1C
    ld hl, $111E                                  ; $6014: $21 $1E $11
    ld c, $11                                     ; $6017: $0E $11
    ld c, $0F                                     ; $6019: $0E $0F
    nop                                           ; $601B: $00
    rrca                                          ; $601C: $0F
    rlca                                          ; $601D: $07
    rlca                                          ; $601E: $07
    nop                                           ; $601F: $00
    rst RST_38                                    ; $6020: $FF
    ld h, b                                       ; $6021: $60
    db $FC                                        ; $6022: $FC
    ld l, e                                       ; $6023: $6B
    rst RST_38                                    ; $6024: $FF
    ld l, h                                       ; $6025: $6C
    cp $6C                                        ; $6026: $FE $6C
    rst RST_38                                    ; $6028: $FF
    ld l, h                                       ; $6029: $6C
    db $FC                                        ; $602A: $FC

jr_014_602B:
    ld l, e                                       ; $602B: $6B
    rst RST_38                                    ; $602C: $FF
    ret c                                         ; $602D: $D8

    ld hl, sp+$00                                 ; $602E: $F8 $00
    nop                                           ; $6030: $00
    nop                                           ; $6031: $00
    add b                                         ; $6032: $80
    nop                                           ; $6033: $00
    ret nz                                        ; $6034: $C0

    add b                                         ; $6035: $80
    ldh [$FFC0], a                                ; $6036: $E0 $C0
    ldh [rLCDC], a                                ; $6038: $E0 $40
    ldh a, [$FF80]                                ; $603A: $F0 $80
    ret z                                         ; $603C: $C8

    or b                                          ; $603D: $B0
    ld hl, sp+$00                                 ; $603E: $F8 $00
    nop                                           ; $6040: $00
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
    nop                                           ; $604C: $00
    nop                                           ; $604D: $00
    ld b, l                                       ; $604E: $45
    nop                                           ; $604F: $00
    xor d                                         ; $6050: $AA
    ld b, l                                       ; $6051: $45
    or h                                          ; $6052: $B4
    ld c, e                                       ; $6053: $4B
    push de                                       ; $6054: $D5
    ld l, e                                       ; $6055: $6B
    ld a, a                                       ; $6056: $7F
    ld a, [hl+]                                   ; $6057: $2A
    rst RST_38                                    ; $6058: $FF
    nop                                           ; $6059: $00
    jr nc, jr_014_602B                            ; $605A: $30 $CF

    rra                                           ; $605C: $1F
    ldh [rNR23], a                                ; $605D: $E0 $18
    rst RST_20                                    ; $605F: $E7
    nop                                           ; $6060: $00
    nop                                           ; $6061: $00
    nop                                           ; $6062: $00
    nop                                           ; $6063: $00
    nop                                           ; $6064: $00
    nop                                           ; $6065: $00
    nop                                           ; $6066: $00
    nop                                           ; $6067: $00
    nop                                           ; $6068: $00
    nop                                           ; $6069: $00
    nop                                           ; $606A: $00
    nop                                           ; $606B: $00
    ld [bc], a                                    ; $606C: $02
    nop                                           ; $606D: $00
    dec [hl]                                      ; $606E: $35
    ld [bc], a                                    ; $606F: $02
    call $BB36                                    ; $6070: $CD $36 $BB
    ld l, [hl]                                    ; $6073: $6E
    or $1C                                        ; $6074: $F6 $1C
    and a                                         ; $6076: $A7
    ld e, h                                       ; $6077: $5C
    ld l, $D9                                     ; $6078: $2E $D9
    cp h                                          ; $607A: $BC
    ld d, e                                       ; $607B: $53
    cp [hl]                                       ; $607C: $BE
    ld b, c                                       ; $607D: $41
    rst RST_30                                    ; $607E: $F7
    adc [hl]                                      ; $607F: $8E
    nop                                           ; $6080: $00
    nop                                           ; $6081: $00
    nop                                           ; $6082: $00
    nop                                           ; $6083: $00
    nop                                           ; $6084: $00
    nop                                           ; $6085: $00
    nop                                           ; $6086: $00
    nop                                           ; $6087: $00
    nop                                           ; $6088: $00
    nop                                           ; $6089: $00
    ld hl, sp+$00                                 ; $608A: $F8 $00
    ld [$30F0], sp                                ; $608C: $08 $F0 $30
    ret nz                                        ; $608F: $C0

    ldh [rP1], a                                  ; $6090: $E0 $00
    ldh [rP1], a                                  ; $6092: $E0 $00
    cp $C0                                        ; $6094: $FE $C0
    ld sp, hl                                     ; $6096: $F9
    sub $FE                                       ; $6097: $D6 $FE
    ret c                                         ; $6099: $D8

    db $FC                                        ; $609A: $FC
    ret c                                         ; $609B: $D8

    cp $D8                                        ; $609C: $FE $D8
    ld sp, hl                                     ; $609E: $F9
    sub $00                                       ; $609F: $D6 $00
    nop                                           ; $60A1: $00
    nop                                           ; $60A2: $00
    nop                                           ; $60A3: $00
    nop                                           ; $60A4: $00
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
    inc hl                                        ; $60BE: $23
    nop                                           ; $60BF: $00
    ld bc, $0100                                  ; $60C0: $01 $00 $01
    nop                                           ; $60C3: $00
    rlca                                          ; $60C4: $07
    ld bc, $056B                                  ; $60C5: $01 $6B $05
    cp a                                          ; $60C8: $BF
    ld h, c                                       ; $60C9: $61
    rst RST_38                                    ; $60CA: $FF
    ld h, a                                       ; $60CB: $67
    ld a, a                                       ; $60CC: $7F
    add hl, de                                    ; $60CD: $19
    daa                                           ; $60CE: $27
    ld e, $13                                     ; $60CF: $1E $13
    rrca                                          ; $60D1: $0F
    dec bc                                        ; $60D2: $0B
    rlca                                          ; $60D3: $07
    dec b                                         ; $60D4: $05
    inc bc                                        ; $60D5: $03
    inc bc                                        ; $60D6: $03
    nop                                           ; $60D7: $00
    rlca                                          ; $60D8: $07
    inc bc                                        ; $60D9: $03
    rra                                           ; $60DA: $1F
    inc bc                                        ; $60DB: $03
    inc hl                                        ; $60DC: $23
    dec e                                         ; $60DD: $1D
    ccf                                           ; $60DE: $3F
    nop                                           ; $60DF: $00
    rst RST_28                                    ; $60E0: $EF
    ld sp, $C3FF                                  ; $60E1: $31 $FF $C3
    rst RST_38                                    ; $60E4: $FF
    rst RST_38                                    ; $60E5: $FF
    rst RST_38                                    ; $60E6: $FF
    db $EC                                        ; $60E7: $EC
    rst RST_38                                    ; $60E8: $FF
    adc h                                         ; $60E9: $8C
    rst RST_38                                    ; $60EA: $FF
    db $FC                                        ; $60EB: $FC
    rst RST_38                                    ; $60EC: $FF
    ld hl, sp-$01                                 ; $60ED: $F8 $FF
    nop                                           ; $60EF: $00
    db $FC                                        ; $60F0: $FC
    inc bc                                        ; $60F1: $03
    adc h                                         ; $60F2: $8C
    inc bc                                        ; $60F3: $03
    add h                                         ; $60F4: $84
    inc bc                                        ; $60F5: $03
    add d                                         ; $60F6: $82
    ld bc, $81C2                                  ; $60F7: $01 $C2 $81
    pop hl                                        ; $60FA: $E1
    ret nz                                        ; $60FB: $C0

    pop hl                                        ; $60FC: $E1
    ret nz                                        ; $60FD: $C0

    ldh [rP1], a                                  ; $60FE: $E0 $00
    push bc                                       ; $6100: $C5
    cp d                                          ; $6101: $BA
    call $F5B2                                    ; $6102: $CD $B2 $F5
    ld a, [bc]                                    ; $6105: $0A
    rst RST_20                                    ; $6106: $E7
    add hl, de                                    ; $6107: $19
    sbc a                                         ; $6108: $9F
    inc bc                                        ; $6109: $03
    rrca                                          ; $610A: $0F
    nop                                           ; $610B: $00
    adc a                                         ; $610C: $8F
    rlca                                          ; $610D: $07
    adc a                                         ; $610E: $8F
    rlca                                          ; $610F: $07
    ld c, a                                       ; $6110: $4F
    add b                                         ; $6111: $80
    ld a, a                                       ; $6112: $7F
    adc e                                         ; $6113: $8B
    inc a                                         ; $6114: $3C
    swap a                                        ; $6115: $CB $37
    call z, $C639                                 ; $6117: $CC $39 $C6
    cp $10                                        ; $611A: $FE $10
    ld sp, hl                                     ; $611C: $F9
    or $FF                                        ; $611D: $F6 $FF
    nop                                           ; $611F: $00
    nop                                           ; $6120: $00
    nop                                           ; $6121: $00
    nop                                           ; $6122: $00
    nop                                           ; $6123: $00
    nop                                           ; $6124: $00
    nop                                           ; $6125: $00
    nop                                           ; $6126: $00
    nop                                           ; $6127: $00
    ld a, a                                       ; $6128: $7F
    nop                                           ; $6129: $00
    sbc d                                         ; $612A: $9A
    ld [hl], l                                    ; $612B: $75
    ld sp, hl                                     ; $612C: $F9
    ld h, [hl]                                    ; $612D: $66
    ld l, a                                       ; $612E: $6F
    rla                                           ; $612F: $17
    sbc a                                         ; $6130: $9F
    ld a, e                                       ; $6131: $7B
    rst RST_38                                    ; $6132: $FF
    ld h, b                                       ; $6133: $60
    ld h, h                                       ; $6134: $64
    inc bc                                        ; $6135: $03
    inc b                                         ; $6136: $04
    inc bc                                        ; $6137: $03
    rlca                                          ; $6138: $07
    inc bc                                        ; $6139: $03
    inc bc                                        ; $613A: $03
    nop                                           ; $613B: $00
    nop                                           ; $613C: $00
    nop                                           ; $613D: $00
    nop                                           ; $613E: $00
    nop                                           ; $613F: $00
    inc c                                         ; $6140: $0C
    nop                                           ; $6141: $00
    inc d                                         ; $6142: $14
    ld [$1028], sp                                ; $6143: $08 $28 $10
    ld a, $00                                     ; $6146: $3E $00
    jp nz, Jump_000_3F3C                          ; $6148: $C2 $3C $3F

    db $FC                                        ; $614B: $FC
    db $FC                                        ; $614C: $FC
    dec sp                                        ; $614D: $3B
    ld hl, sp-$49                                 ; $614E: $F8 $B7
    ld sp, hl                                     ; $6150: $F9
    sub [hl]                                      ; $6151: $96
    reti                                          ; $6152: $D9


    add [hl]                                      ; $6153: $86
    adc c                                         ; $6154: $89
    ld b, $89                                     ; $6155: $06 $89
    ld b, $85                                     ; $6157: $06 $85
    ld [bc], a                                    ; $6159: $02
    dec b                                         ; $615A: $05
    ld [bc], a                                    ; $615B: $02
    inc bc                                        ; $615C: $03
    ld bc, $0103                                  ; $615D: $01 $03 $01
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
    add b                                         ; $616A: $80
    nop                                           ; $616B: $00
    ld d, b                                       ; $616C: $50
    add b                                         ; $616D: $80
    xor e                                         ; $616E: $AB
    ld d, b                                       ; $616F: $50
    ld c, h                                       ; $6170: $4C
    or e                                          ; $6171: $B3
    ld e, e                                       ; $6172: $5B
    or a                                          ; $6173: $B7
    rst RST_38                                    ; $6174: $FF
    and b                                         ; $6175: $A0
    ldh [c], a                                    ; $6176: $E2
    dec e                                         ; $6177: $1D
    dec de                                        ; $6178: $1B
    push hl                                       ; $6179: $E5
    ei                                            ; $617A: $FB
    dec d                                         ; $617B: $15
    cp e                                          ; $617C: $BB

jr_014_617D:
    ld b, h                                       ; $617D: $44
    rst RST_08                                    ; $617E: $CF
    cp b                                          ; $617F: $B8
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
    sbc b                                         ; $618E: $98
    nop                                           ; $618F: $00
    add sp, -$70                                  ; $6190: $E8 $90
    ret c                                         ; $6192: $D8

    jr nc, @-$4E                                  ; $6193: $30 $B0

    ldh [rSVBK], a                                ; $6195: $E0 $70
    ldh [$FFEC], a                                ; $6197: $E0 $EC
    ret nc                                        ; $6199: $D0

    jp $80BC                                      ; $619A: $C3 $BC $80


    ld a, a                                       ; $619D: $7F
    add e                                         ; $619E: $83

jr_014_619F:
    ld a, h                                       ; $619F: $7C
    nop                                           ; $61A0: $00
    nop                                           ; $61A1: $00
    nop                                           ; $61A2: $00
    nop                                           ; $61A3: $00
    add b                                         ; $61A4: $80
    nop                                           ; $61A5: $00
    jr nz, jr_014_61A8                            ; $61A6: $20 $00

jr_014_61A8:
    ld d, b                                       ; $61A8: $50
    jr nz, jr_014_61FB                            ; $61A9: $20 $50

    jr nz, jr_014_617D                            ; $61AB: $20 $D0

    jr nz, jr_014_619F                            ; $61AD: $20 $F0

    ret nz                                        ; $61AF: $C0

    ld hl, sp-$10                                 ; $61B0: $F8 $F0
    ld hl, sp+$10                                 ; $61B2: $F8 $10
    ld hl, sp-$20                                 ; $61B4: $F8 $E0
    ld hl, sp-$10                                 ; $61B6: $F8 $F0
    ld hl, sp+$10                                 ; $61B8: $F8 $10
    ld hl, sp+$60                                 ; $61BA: $F8 $60
    sub b                                         ; $61BC: $90
    ld h, b                                       ; $61BD: $60
    ld h, b                                       ; $61BE: $60
    nop                                           ; $61BF: $00
    daa                                           ; $61C0: $27
    add hl, de                                    ; $61C1: $19
    di                                            ; $61C2: $F3
    inc e                                         ; $61C3: $1C
    pop af                                        ; $61C4: $F1
    ld c, [hl]                                    ; $61C5: $4E
    ld a, b                                       ; $61C6: $78
    daa                                           ; $61C7: $27
    ld a, h                                       ; $61C8: $7C
    scf                                           ; $61C9: $37
    inc l                                         ; $61CA: $2C
    dec de                                        ; $61CB: $1B
    ld [hl], $1B                                  ; $61CC: $36 $1B
    ld [de], a                                    ; $61CE: $12
    dec c                                         ; $61CF: $0D
    jr jr_014_61E1                                ; $61D0: $18 $0F

    add hl, bc                                    ; $61D2: $09
    rlca                                          ; $61D3: $07
    inc c                                         ; $61D4: $0C
    rlca                                          ; $61D5: $07
    inc b                                         ; $61D6: $04
    inc bc                                        ; $61D7: $03
    ld b, $03                                     ; $61D8: $06 $03
    ld [bc], a                                    ; $61DA: $02
    ld bc, $0103                                  ; $61DB: $01 $03 $01
    ld bc, $3700                                  ; $61DE: $01 $00 $37

jr_014_61E1:
    add sp, $1F                                   ; $61E1: $E8 $1F
    ldh a, [$FF8F]                                ; $61E3: $F0 $8F
    ld hl, sp-$7A                                 ; $61E5: $F8 $86
    ld a, h                                       ; $61E7: $7C
    ld b, e                                       ; $61E8: $43
    cp $01                                        ; $61E9: $FE $01
    rst RST_38                                    ; $61EB: $FF
    nop                                           ; $61EC: $00
    rst RST_38                                    ; $61ED: $FF
    nop                                           ; $61EE: $00
    rst RST_38                                    ; $61EF: $FF
    inc b                                         ; $61F0: $04
    rst RST_38                                    ; $61F1: $FF
    ld [bc], a                                    ; $61F2: $02
    rst RST_38                                    ; $61F3: $FF
    add e                                         ; $61F4: $83
    rst RST_38                                    ; $61F5: $FF
    jp $E17E                                      ; $61F6: $C3 $7E $E1


    cp a                                          ; $61F9: $BF
    ld [hl], c                                    ; $61FA: $71

jr_014_61FB:
    sbc a                                         ; $61FB: $9F
    ld a, b                                       ; $61FC: $78
    rst RST_08                                    ; $61FD: $CF
    inc a                                         ; $61FE: $3C
    rst RST_00                                    ; $61FF: $C7
    db $10                                        ; $6200: $10
    ldh [$FF08], a                                ; $6201: $E0 $08
    ldh a, [rDIV]                                 ; $6203: $F0 $04
    ld hl, sp-$39                                 ; $6205: $F8 $C7
    jr c, jr_014_622C                             ; $6207: $38 $23

    dec e                                         ; $6209: $1D
    sbc a                                         ; $620A: $9F
    inc bc                                        ; $620B: $03
    rst RST_38                                    ; $620C: $FF
    sbc e                                         ; $620D: $9B
    ld a, h                                       ; $620E: $7C
    db $DB                                        ; $620F: $DB
    ccf                                           ; $6210: $3F
    ldh [rNR23], a                                ; $6211: $E0 $18
    ldh a, [$FF0C]                                ; $6213: $F0 $0C
    ld hl, sp-$7A                                 ; $6215: $F8 $86
    db $FC                                        ; $6217: $FC
    jp $E17E                                      ; $6218: $C3 $7E $E1


    ccf                                           ; $621B: $3F
    ldh a, [$FF9F]                                ; $621C: $F0 $9F
    ld hl, sp-$31                                 ; $621E: $F8 $CF
    nop                                           ; $6220: $00
    nop                                           ; $6221: $00
    nop                                           ; $6222: $00
    nop                                           ; $6223: $00
    nop                                           ; $6224: $00
    nop                                           ; $6225: $00
    add b                                         ; $6226: $80
    nop                                           ; $6227: $00
    ldh [$FF80], a                                ; $6228: $E0 $80
    ldh a, [$FFE0]                                ; $622A: $F0 $E0

jr_014_622C:
    ldh a, [$FFE0]                                ; $622C: $F0 $E0
    ld a, b                                       ; $622E: $78
    ldh a, [$FF9F]                                ; $622F: $F0 $9F
    ld a, b                                       ; $6231: $78
    ld l, a                                       ; $6232: $6F
    rla                                           ; $6233: $17
    rra                                           ; $6234: $1F
    rrca                                          ; $6235: $0F
    rrca                                          ; $6236: $0F
    rlca                                          ; $6237: $07
    rlca                                          ; $6238: $07
    inc bc                                        ; $6239: $03
    adc a                                         ; $623A: $8F
    nop                                           ; $623B: $00
    ret nc                                        ; $623C: $D0

    adc a                                         ; $623D: $8F
    ld a, a                                       ; $623E: $7F
    ret nz                                        ; $623F: $C0

    add b                                         ; $6240: $80
    nop                                           ; $6241: $00
    add b                                         ; $6242: $80
    nop                                           ; $6243: $00
    add b                                         ; $6244: $80
    nop                                           ; $6245: $00
    ret nz                                        ; $6246: $C0

    add b                                         ; $6247: $80
    ret nz                                        ; $6248: $C0

    add b                                         ; $6249: $80
    ret nz                                        ; $624A: $C0

    nop                                           ; $624B: $00
    ret nz                                        ; $624C: $C0

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
    inc e                                         ; $6262: $1C
    nop                                           ; $6263: $00
    cpl                                           ; $6264: $2F
    inc e                                         ; $6265: $1C
    ld a, a                                       ; $6266: $7F
    ld de, $6EBF                                  ; $6267: $11 $BF $6E
    rst RST_38                                    ; $626A: $FF
    ld e, c                                       ; $626B: $59
    ld e, a                                       ; $626C: $5F
    ld [hl], $5F                                  ; $626D: $36 $5F
    scf                                           ; $626F: $37
    cpl                                           ; $6270: $2F
    dec de                                        ; $6271: $1B
    rra                                           ; $6272: $1F
    rlca                                          ; $6273: $07
    rrca                                          ; $6274: $0F
    dec b                                         ; $6275: $05
    dec b                                         ; $6276: $05
    ld [bc], a                                    ; $6277: $02
    ld [bc], a                                    ; $6278: $02
    ld bc, $0102                                  ; $6279: $01 $02 $01
    ld bc, $0000                                  ; $627C: $01 $00 $00
    nop                                           ; $627F: $00
    nop                                           ; $6280: $00
    nop                                           ; $6281: $00
    nop                                           ; $6282: $00
    nop                                           ; $6283: $00
    add b                                         ; $6284: $80
    nop                                           ; $6285: $00
    ret nz                                        ; $6286: $C0

    add b                                         ; $6287: $80
    ret nz                                        ; $6288: $C0

    add b                                         ; $6289: $80
    add b                                         ; $628A: $80
    nop                                           ; $628B: $00
    ret nz                                        ; $628C: $C0

    nop                                           ; $628D: $00
    ldh [$FFC0], a                                ; $628E: $E0 $C0
    ldh a, [rNR41]                                ; $6290: $F0 $20
    cp b                                          ; $6292: $B8
    ld d, b                                       ; $6293: $50
    sbc $A0                                       ; $6294: $DE $A0
    jp hl                                         ; $6296: $E9


    sub $F8                                       ; $6297: $D6 $F8
    ld h, a                                       ; $6299: $67
    ldh [$FF1F], a                                ; $629A: $E0 $1F
    ld e, h                                       ; $629C: $5C
    add e                                         ; $629D: $83
    jp Jump_000_0300                              ; $629E: $C3 $00 $03


    nop                                           ; $62A1: $00
    ld [bc], a                                    ; $62A2: $02
    ld bc, $0102                                  ; $62A3: $01 $02 $01
    sbc a                                         ; $62A6: $9F
    ld bc, $8E71                                  ; $62A7: $01 $71 $8E
    db $10                                        ; $62AA: $10
    rst RST_28                                    ; $62AB: $EF
    db $10                                        ; $62AC: $10
    rst RST_28                                    ; $62AD: $EF
    ld [$C8F7], sp                                ; $62AE: $08 $F7 $C8
    scf                                           ; $62B1: $37
    inc a                                         ; $62B2: $3C
    inc bc                                        ; $62B3: $03
    rra                                           ; $62B4: $1F
    ld [$040E], sp                                ; $62B5: $08 $0E $04
    rst RST_08                                    ; $62B8: $CF
    ld b, $E5                                     ; $62B9: $06 $E5

jr_014_62BB:
    ld b, e                                       ; $62BB: $43
    halt                                          ; $62BC: $76
    inc hl                                        ; $62BD: $23
    ld a, [hl]                                    ; $62BE: $7E
    ld sp, $142A                                  ; $62BF: $31 $2A $14
    rst RST_08                                    ; $62C2: $CF
    jr nc, @-$1F                                  ; $62C3: $30 $DF

    cpl                                           ; $62C5: $2F
    ld a, a                                       ; $62C6: $7F
    and b                                         ; $62C7: $A0
    ldh [$FF1F], a                                ; $62C8: $E0 $1F
    add b                                         ; $62CA: $80
    ld a, a                                       ; $62CB: $7F

jr_014_62CC:
    add b                                         ; $62CC: $80
    ld a, a                                       ; $62CD: $7F
    add b                                         ; $62CE: $80
    ld a, a                                       ; $62CF: $7F
    add b                                         ; $62D0: $80
    ld a, a                                       ; $62D1: $7F
    add b                                         ; $62D2: $80
    ld a, a                                       ; $62D3: $7F
    nop                                           ; $62D4: $00
    rst RST_38                                    ; $62D5: $FF
    add e                                         ; $62D6: $83
    ld a, h                                       ; $62D7: $7C
    ld a, h                                       ; $62D8: $7C
    inc bc                                        ; $62D9: $03
    sub b                                         ; $62DA: $90
    rrca                                          ; $62DB: $0F
    rst RST_08                                    ; $62DC: $CF
    add b                                         ; $62DD: $80
    ld l, a                                       ; $62DE: $6F
    ret nz                                        ; $62DF: $C0

    jr nc, jr_014_62E2                            ; $62E0: $30 $00

jr_014_62E2:
    ld d, b                                       ; $62E2: $50
    jr nz, @-$4E                                  ; $62E3: $20 $B0

    ld h, b                                       ; $62E5: $60
    ldh [$FFC0], a                                ; $62E6: $E0 $C0
    rst RST_08                                    ; $62E8: $CF
    nop                                           ; $62E9: $00
    jr nc, jr_014_62BB                            ; $62EA: $30 $CF

    ld hl, $27DE                                  ; $62EC: $21 $DE $27
    ret c                                         ; $62EF: $D8

    add hl, de                                    ; $62F0: $19
    and $10                                       ; $62F1: $E6 $10
    rst RST_28                                    ; $62F3: $EF
    db $10                                        ; $62F4: $10
    rst RST_28                                    ; $62F5: $EF
    xor b                                         ; $62F6: $A8
    ld b, a                                       ; $62F7: $47
    ld l, a                                       ; $62F8: $6F
    add b                                         ; $62F9: $80
    cpl                                           ; $62FA: $2F
    rst RST_00                                    ; $62FB: $C7
    rst RST_30                                    ; $62FC: $F7
    nop                                           ; $62FD: $00
    di                                            ; $62FE: $F3
    nop                                           ; $62FF: $00
    nop                                           ; $6300: $00
    nop                                           ; $6301: $00
    nop                                           ; $6302: $00
    nop                                           ; $6303: $00
    nop                                           ; $6304: $00
    nop                                           ; $6305: $00
    nop                                           ; $6306: $00
    nop                                           ; $6307: $00
    ret nz                                        ; $6308: $C0

    nop                                           ; $6309: $00
    jr nz, jr_014_62CC                            ; $630A: $20 $C0

    ldh [rP1], a                                  ; $630C: $E0 $00
    ldh [rP1], a                                  ; $630E: $E0 $00
    ret nz                                        ; $6310: $C0

    nop                                           ; $6311: $00
    add b                                         ; $6312: $80
    nop                                           ; $6313: $00
    ret nz                                        ; $6314: $C0

    nop                                           ; $6315: $00
    ldh a, [rLCDC]                                ; $6316: $F0 $40
    ldh a, [$FFC0]                                ; $6318: $F0 $C0
    ldh a, [$FFC0]                                ; $631A: $F0 $C0
    ldh a, [rP1]                                  ; $631C: $F0 $00
    ldh [rP1], a                                  ; $631E: $E0 $00
    nop                                           ; $6320: $00
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
    inc d                                         ; $633E: $14
    nop                                           ; $633F: $00
    inc bc                                        ; $6340: $03
    nop                                           ; $6341: $00
    dec b                                         ; $6342: $05
    ld [bc], a                                    ; $6343: $02
    add hl, bc                                    ; $6344: $09
    ld b, $30                                     ; $6345: $06 $30
    rrca                                          ; $6347: $0F
    ld e, c                                       ; $6348: $59
    ld [hl], $7F                                  ; $6349: $36 $7F
    jr nc, jr_014_638C                            ; $634B: $30 $3F

    rrca                                          ; $634D: $0F
    daa                                           ; $634E: $27
    rra                                           ; $634F: $1F
    inc de                                        ; $6350: $13
    rrca                                          ; $6351: $0F
    dec bc                                        ; $6352: $0B
    ld b, $0B                                     ; $6353: $06 $0B
    ld b, $0F                                     ; $6355: $06 $0F
    nop                                           ; $6357: $00
    rra                                           ; $6358: $1F
    ld c, $7F                                     ; $6359: $0E $7F
    rrca                                          ; $635B: $0F
    adc a                                         ; $635C: $8F
    ld [hl], a                                    ; $635D: $77
    rst RST_38                                    ; $635E: $FF
    nop                                           ; $635F: $00
    db $FC                                        ; $6360: $FC
    nop                                           ; $6361: $00
    call nz, $C238                                ; $6362: $C4 $38 $C2
    inc a                                         ; $6365: $3C
    pop bc                                        ; $6366: $C1
    ld a, $31                                     ; $6367: $3E $31
    ld c, $08                                     ; $6369: $0E $08
    rlca                                          ; $636B: $07
    add a                                         ; $636C: $87
    nop                                           ; $636D: $00
    adc e                                         ; $636E: $8B
    ld b, $8F                                     ; $636F: $06 $8F
    ld b, $06                                     ; $6371: $06 $06
    nop                                           ; $6373: $00
    nop                                           ; $6374: $00
    nop                                           ; $6375: $00
    nop                                           ; $6376: $00
    nop                                           ; $6377: $00
    nop                                           ; $6378: $00
    nop                                           ; $6379: $00
    add b                                         ; $637A: $80
    nop                                           ; $637B: $00
    add b                                         ; $637C: $80
    nop                                           ; $637D: $00
    add b                                         ; $637E: $80
    nop                                           ; $637F: $00
    ld hl, sp+$00                                 ; $6380: $F8 $00
    nop                                           ; $6382: $00
    nop                                           ; $6383: $00
    nop                                           ; $6384: $00
    nop                                           ; $6385: $00
    nop                                           ; $6386: $00
    nop                                           ; $6387: $00
    ldh [rP1], a                                  ; $6388: $E0 $00
    ld hl, sp+$60                                 ; $638A: $F8 $60

jr_014_638C:
    db $FC                                        ; $638C: $FC
    ld hl, sp-$04                                 ; $638D: $F8 $FC
    ld hl, sp+$1E                                 ; $638F: $F8 $1E
    db $FC                                        ; $6391: $FC
    rst RST_20                                    ; $6392: $E7
    ld e, $1B                                     ; $6393: $1E $1B
    dec b                                         ; $6395: $05
    rlca                                          ; $6396: $07
    inc bc                                        ; $6397: $03
    inc bc                                        ; $6398: $03
    ld bc, $0007                                  ; $6399: $01 $07 $00
    ld [$0F07], sp                                ; $639C: $08 $07 $0F
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
    ldh [rP1], a                                  ; $63B2: $E0 $00
    ldh [$FFC0], a                                ; $63B4: $E0 $C0
    ldh [$FFC0], a                                ; $63B6: $E0 $C0
    ldh [$FFC0], a                                ; $63B8: $E0 $C0
    ldh [rLCDC], a                                ; $63BA: $E0 $40
    ld h, b                                       ; $63BC: $60
    add b                                         ; $63BD: $80
    ldh [rP1], a                                  ; $63BE: $E0 $00
    nop                                           ; $63C0: $00
    nop                                           ; $63C1: $00
    inc e                                         ; $63C2: $1C
    nop                                           ; $63C3: $00
    cpl                                           ; $63C4: $2F
    inc e                                         ; $63C5: $1C
    ld a, a                                       ; $63C6: $7F
    ld de, $6EBF                                  ; $63C7: $11 $BF $6E
    rst RST_38                                    ; $63CA: $FF
    ld e, c                                       ; $63CB: $59
    ld e, a                                       ; $63CC: $5F
    ld [hl], $5F                                  ; $63CD: $36 $5F
    scf                                           ; $63CF: $37
    cpl                                           ; $63D0: $2F
    dec de                                        ; $63D1: $1B
    rra                                           ; $63D2: $1F
    rlca                                          ; $63D3: $07
    rrca                                          ; $63D4: $0F
    dec b                                         ; $63D5: $05
    dec b                                         ; $63D6: $05
    ld [bc], a                                    ; $63D7: $02
    ld [bc], a                                    ; $63D8: $02
    ld bc, $0102                                  ; $63D9: $01 $02 $01
    ld bc, $0000                                  ; $63DC: $01 $00 $00
    nop                                           ; $63DF: $00
    nop                                           ; $63E0: $00
    nop                                           ; $63E1: $00
    nop                                           ; $63E2: $00
    nop                                           ; $63E3: $00
    add b                                         ; $63E4: $80
    nop                                           ; $63E5: $00
    ret nz                                        ; $63E6: $C0

    add b                                         ; $63E7: $80
    ret nz                                        ; $63E8: $C0

    add b                                         ; $63E9: $80
    add b                                         ; $63EA: $80
    nop                                           ; $63EB: $00
    ret nz                                        ; $63EC: $C0

    nop                                           ; $63ED: $00
    ldh [$FFC0], a                                ; $63EE: $E0 $C0
    ldh a, [rNR41]                                ; $63F0: $F0 $20
    cp b                                          ; $63F2: $B8
    ld d, b                                       ; $63F3: $50
    rst RST_18                                    ; $63F4: $DF
    and b                                         ; $63F5: $A0
    add sp, -$29                                  ; $63F6: $E8 $D7
    ld hl, sp+$67                                 ; $63F8: $F8 $67
    ldh [$FF1F], a                                ; $63FA: $E0 $1F
    ld e, h                                       ; $63FC: $5C
    add e                                         ; $63FD: $83
    jp RST_00                                     ; $63FE: $C3 $00 $00


    nop                                           ; $6401: $00
    nop                                           ; $6402: $00
    nop                                           ; $6403: $00
    nop                                           ; $6404: $00
    nop                                           ; $6405: $00
    add hl, de                                    ; $6406: $19
    nop                                           ; $6407: $00
    ld d, $09                                     ; $6408: $16 $09
    ld d, $09                                     ; $640A: $16 $09
    dec de                                        ; $640C: $1B
    dec c                                         ; $640D: $0D
    ld a, a                                       ; $640E: $7F
    nop                                           ; $640F: $00
    add h                                         ; $6410: $84
    ld a, e                                       ; $6411: $7B
    add h                                         ; $6412: $84
    ld a, e                                       ; $6413: $7B
    add h                                         ; $6414: $84
    ld a, e                                       ; $6415: $7B
    ld b, h                                       ; $6416: $44
    cp e                                          ; $6417: $BB
    inc h                                         ; $6418: $24
    db $DB                                        ; $6419: $DB
    ld hl, sp+$07                                 ; $641A: $F8 $07
    inc b                                         ; $641C: $04
    inc bc                                        ; $641D: $03
    inc bc                                        ; $641E: $03
    nop                                           ; $641F: $00
    and b                                         ; $6420: $A0
    nop                                           ; $6421: $00
    ld d, c                                       ; $6422: $51
    and b                                         ; $6423: $A0
    ld a, d                                       ; $6424: $7A
    add c                                         ; $6425: $81
    db $FD                                        ; $6426: $FD
    ld a, e                                       ; $6427: $7B
    rst RST_38                                    ; $6428: $FF
    ld b, $06                                     ; $6429: $06 $06
    ld hl, sp+$01                                 ; $642B: $F8 $01
    cp $01                                        ; $642D: $FE $01
    cp $01                                        ; $642F: $FE $01
    cp $00                                        ; $6431: $FE $00
    rst RST_38                                    ; $6433: $FF
    nop                                           ; $6434: $00
    rst RST_38                                    ; $6435: $FF
    nop                                           ; $6436: $00
    rst RST_38                                    ; $6437: $FF
    dec e                                         ; $6438: $1D
    ldh [c], a                                    ; $6439: $E2
    db $E3                                        ; $643A: $E3
    inc e                                         ; $643B: $1C
    add c                                         ; $643C: $81

jr_014_643D:
    ld a, [hl]                                    ; $643D: $7E
    ld a, a                                       ; $643E: $7F
    nop                                           ; $643F: $00
    nop                                           ; $6440: $00
    nop                                           ; $6441: $00
    add b                                         ; $6442: $80
    nop                                           ; $6443: $00
    add b                                         ; $6444: $80
    nop                                           ; $6445: $00
    add b                                         ; $6446: $80
    nop                                           ; $6447: $00
    nop                                           ; $6448: $00
    nop                                           ; $6449: $00
    ld a, [hl]                                    ; $644A: $7E
    nop                                           ; $644B: $00
    add c                                         ; $644C: $81
    ld a, [hl]                                    ; $644D: $7E
    rrca                                          ; $644E: $0F
    ldh a, [$FF3F]                                ; $644F: $F0 $3F
    ret nz                                        ; $6451: $C0

    adc $30                                       ; $6452: $CE $30
    add h                                         ; $6454: $84
    ld a, b                                       ; $6455: $78
    add [hl]                                      ; $6456: $86
    ld a, b                                       ; $6457: $78
    ld b, a                                       ; $6458: $47
    ld a, [hl-]                                   ; $6459: $3A
    ld a, a                                       ; $645A: $7F
    ld b, $7F                                     ; $645B: $06 $7F
    ld a, $BF                                     ; $645D: $3E $BF
    nop                                           ; $645F: $00
    nop                                           ; $6460: $00
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
    add b                                         ; $6478: $80
    nop                                           ; $6479: $00
    add b                                         ; $647A: $80
    nop                                           ; $647B: $00
    add b                                         ; $647C: $80
    nop                                           ; $647D: $00
    add b                                         ; $647E: $80
    nop                                           ; $647F: $00
    nop                                           ; $6480: $00
    nop                                           ; $6481: $00
    nop                                           ; $6482: $00
    nop                                           ; $6483: $00
    nop                                           ; $6484: $00
    nop                                           ; $6485: $00
    nop                                           ; $6486: $00
    nop                                           ; $6487: $00
    nop                                           ; $6488: $00
    nop                                           ; $6489: $00
    ld a, a                                       ; $648A: $7F
    nop                                           ; $648B: $00
    xor b                                         ; $648C: $A8
    ld d, a                                       ; $648D: $57
    rst RST_20                                    ; $648E: $E7
    ld e, b                                       ; $648F: $58
    ld a, a                                       ; $6490: $7F
    ld e, $9F                                     ; $6491: $1E $9F
    ld l, [hl]                                    ; $6493: $6E
    cp $60                                        ; $6494: $FE $60
    cp $6C                                        ; $6496: $FE $6C
    ld l, h                                       ; $6498: $6C

jr_014_6499:
    nop                                           ; $6499: $00
    nop                                           ; $649A: $00
    nop                                           ; $649B: $00
    nop                                           ; $649C: $00
    nop                                           ; $649D: $00
    nop                                           ; $649E: $00
    nop                                           ; $649F: $00
    inc e                                         ; $64A0: $1C
    nop                                           ; $64A1: $00
    ld h, h                                       ; $64A2: $64
    jr jr_014_643D                                ; $64A3: $18 $98

    ld h, b                                       ; $64A5: $60
    ldh a, [rP1]                                  ; $64A6: $F0 $00
    ld [$FEF0], sp                                ; $64A8: $08 $F0 $FE
    ldh a, [$FFF1]                                ; $64AB: $F0 $F1
    xor $E2                                       ; $64AD: $EE $E2
    db $DD                                        ; $64AF: $DD
    push hl                                       ; $64B0: $E5
    ld e, d                                       ; $64B1: $5A
    ld h, l                                       ; $64B2: $65
    ld a, [de]                                    ; $64B3: $1A
    daa                                           ; $64B4: $27
    ld a, [de]                                    ; $64B5: $1A
    daa                                           ; $64B6: $27
    jr jr_014_64CD                                ; $64B7: $18 $14

    dec bc                                        ; $64B9: $0B
    rla                                           ; $64BA: $17
    ld [$050E], sp                                ; $64BB: $08 $0E $05
    rrca                                          ; $64BE: $0F
    ld b, $50                                     ; $64BF: $06 $50
    add b                                         ; $64C1: $80
    xor e                                         ; $64C2: $AB
    ld d, b                                       ; $64C3: $50
    ld c, h                                       ; $64C4: $4C
    or e                                          ; $64C5: $B3
    ld e, e                                       ; $64C6: $5B
    or a                                          ; $64C7: $B7
    rst RST_38                                    ; $64C8: $FF
    and b                                         ; $64C9: $A0
    ldh [c], a                                    ; $64CA: $E2
    dec e                                         ; $64CB: $1D
    dec de                                        ; $64CC: $1B

jr_014_64CD:
    push hl                                       ; $64CD: $E5
    ei                                            ; $64CE: $FB
    dec d                                         ; $64CF: $15
    cp e                                          ; $64D0: $BB
    ld b, h                                       ; $64D1: $44
    rst RST_08                                    ; $64D2: $CF
    cp b                                          ; $64D3: $B8
    rst RST_28                                    ; $64D4: $EF
    ld sp, $C3FF                                  ; $64D5: $31 $FF $C3
    rst RST_38                                    ; $64D8: $FF
    rst RST_38                                    ; $64D9: $FF
    rst RST_38                                    ; $64DA: $FF
    db $EC                                        ; $64DB: $EC
    rst RST_38                                    ; $64DC: $FF
    adc h                                         ; $64DD: $8C
    rst RST_38                                    ; $64DE: $FF
    db $FC                                        ; $64DF: $FC
    nop                                           ; $64E0: $00
    nop                                           ; $64E1: $00
    sbc b                                         ; $64E2: $98
    nop                                           ; $64E3: $00
    add sp, -$70                                  ; $64E4: $E8 $90
    ret c                                         ; $64E6: $D8

    jr nc, jr_014_6499                            ; $64E7: $30 $B0

    ldh [rSVBK], a                                ; $64E9: $E0 $70
    ldh [$FFEC], a                                ; $64EB: $E0 $EC
    ret nc                                        ; $64ED: $D0

    jp $80BC                                      ; $64EE: $C3 $BC $80


    ld a, a                                       ; $64F1: $7F
    add e                                         ; $64F2: $83
    ld a, h                                       ; $64F3: $7C
    push bc                                       ; $64F4: $C5
    cp d                                          ; $64F5: $BA
    call $F5B2                                    ; $64F6: $CD $B2 $F5
    ld a, [bc]                                    ; $64F9: $0A
    rst RST_20                                    ; $64FA: $E7
    add hl, de                                    ; $64FB: $19
    sbc a                                         ; $64FC: $9F
    inc bc                                        ; $64FD: $03
    rrca                                          ; $64FE: $0F
    nop                                           ; $64FF: $00
    ld bc, $0100                                  ; $6500: $01 $00 $01
    nop                                           ; $6503: $00
    rlca                                          ; $6504: $07
    ld bc, $056B                                  ; $6505: $01 $6B $05
    cp a                                          ; $6508: $BF
    ld h, c                                       ; $6509: $61
    rst RST_38                                    ; $650A: $FF
    ld h, a                                       ; $650B: $67
    ld a, a                                       ; $650C: $7F
    add hl, de                                    ; $650D: $19
    daa                                           ; $650E: $27
    ld e, $13                                     ; $650F: $1E $13
    rrca                                          ; $6511: $0F
    dec bc                                        ; $6512: $0B
    rlca                                          ; $6513: $07
    dec b                                         ; $6514: $05
    inc bc                                        ; $6515: $03
    dec b                                         ; $6516: $05
    inc bc                                        ; $6517: $03
    rlca                                          ; $6518: $07
    nop                                           ; $6519: $00
    rrca                                          ; $651A: $0F
    rlca                                          ; $651B: $07
    rla                                           ; $651C: $17
    dec bc                                        ; $651D: $0B
    cpl                                           ; $651E: $2F
    db $10                                        ; $651F: $10
    rst RST_38                                    ; $6520: $FF
    inc sp                                        ; $6521: $33
    ld c, a                                       ; $6522: $4F
    inc a                                         ; $6523: $3C
    daa                                           ; $6524: $27
    ld e, $17                                     ; $6525: $1E $17
    ld c, $0B                                     ; $6527: $0E $0B
    ld b, $0B                                     ; $6529: $06 $0B
    ld b, $0F                                     ; $652B: $06 $0F
    ld bc, $0F1F                                  ; $652D: $01 $1F $0F
    cpl                                           ; $6530: $2F
    ld d, $5E                                     ; $6531: $16 $5E
    jr nz, jr_014_6559                            ; $6533: $20 $24

    jr jr_014_655F                                ; $6535: $18 $28

    db $10                                        ; $6537: $10
    stop                                          ; $6538: $10 $00
    nop                                           ; $653A: $00
    nop                                           ; $653B: $00
    nop                                           ; $653C: $00
    nop                                           ; $653D: $00
    nop                                           ; $653E: $00
    nop                                           ; $653F: $00
    rst RST_38                                    ; $6540: $FF
    ldh a, [rIE]                                  ; $6541: $F0 $FF
    nop                                           ; $6543: $00
    ld hl, sp+$07                                 ; $6544: $F8 $07
    jr @+$09                                      ; $6546: $18 $07

    adc b                                         ; $6548: $88
    rlca                                          ; $6549: $07
    call nz, $C483                                ; $654A: $C4 $83 $C4
    add e                                         ; $654D: $83
    jp $8380                                      ; $654E: $C3 $80 $83


    ld bc, $0001                                  ; $6551: $01 $01 $00
    nop                                           ; $6554: $00
    nop                                           ; $6555: $00
    nop                                           ; $6556: $00
    nop                                           ; $6557: $00
    nop                                           ; $6558: $00

jr_014_6559:
    nop                                           ; $6559: $00
    nop                                           ; $655A: $00
    nop                                           ; $655B: $00
    nop                                           ; $655C: $00
    nop                                           ; $655D: $00
    nop                                           ; $655E: $00

jr_014_655F:
    nop                                           ; $655F: $00
    rra                                           ; $6560: $1F
    rrca                                          ; $6561: $0F
    rra                                           ; $6562: $1F
    rrca                                          ; $6563: $0F
    sbc a                                         ; $6564: $9F
    nop                                           ; $6565: $00
    rst RST_38                                    ; $6566: $FF
    ld d, $79                                     ; $6567: $16 $79
    sub [hl]                                      ; $6569: $96
    ld l, [hl]                                    ; $656A: $6E
    sbc b                                         ; $656B: $98
    ld [hl], d                                    ; $656C: $72

jr_014_656D:
    adc h                                         ; $656D: $8C
    db $FC                                        ; $656E: $FC
    jr nz, jr_014_656D                            ; $656F: $20 $FC

    ldh [$FFFE], a                                ; $6571: $E0 $FE
    nop                                           ; $6573: $00
    ld a, [hl]                                    ; $6574: $7E
    nop                                           ; $6575: $00
    dec e                                         ; $6576: $1D
    ld [bc], a                                    ; $6577: $02
    rla                                           ; $6578: $17
    ld [$000C], sp                                ; $6579: $08 $0C $00
    nop                                           ; $657C: $00
    nop                                           ; $657D: $00
    nop                                           ; $657E: $00
    nop                                           ; $657F: $00
    add b                                         ; $6580: $80
    nop                                           ; $6581: $00
    jr nz, jr_014_6584                            ; $6582: $20 $00

jr_014_6584:
    ld d, b                                       ; $6584: $50
    jr nz, jr_014_65D7                            ; $6585: $20 $50

    jr nz, jr_014_6559                            ; $6587: $20 $D0

    jr nz, @-$0E                                  ; $6589: $20 $F0

    ret nz                                        ; $658B: $C0

    ld hl, sp-$10                                 ; $658C: $F8 $F0
    ld hl, sp+$10                                 ; $658E: $F8 $10
    ld hl, sp-$20                                 ; $6590: $F8 $E0
    ld hl, sp-$10                                 ; $6592: $F8 $F0
    ld hl, sp+$10                                 ; $6594: $F8 $10
    ld hl, sp+$60                                 ; $6596: $F8 $60
    sub b                                         ; $6598: $90
    ld h, b                                       ; $6599: $60
    ld h, b                                       ; $659A: $60
    nop                                           ; $659B: $00
    nop                                           ; $659C: $00
    nop                                           ; $659D: $00
    nop                                           ; $659E: $00
    nop                                           ; $659F: $00
    nop                                           ; $65A0: $00
    nop                                           ; $65A1: $00
    ld bc, $0200                                  ; $65A2: $01 $00 $02
    ld bc, $0102                                  ; $65A5: $01 $02 $01
    dec b                                         ; $65A8: $05
    ld [bc], a                                    ; $65A9: $02
    rrca                                          ; $65AA: $0F
    dec b                                         ; $65AB: $05
    rra                                           ; $65AC: $1F
    rlca                                          ; $65AD: $07
    cpl                                           ; $65AE: $2F
    dec de                                        ; $65AF: $1B
    ld e, a                                       ; $65B0: $5F
    scf                                           ; $65B1: $37
    ld e, a                                       ; $65B2: $5F
    ld [hl], $FF                                  ; $65B3: $36 $FF
    ld e, c                                       ; $65B5: $59
    cp a                                          ; $65B6: $BF
    ld l, [hl]                                    ; $65B7: $6E
    ld a, a                                       ; $65B8: $7F
    ld de, $1C2F                                  ; $65B9: $11 $2F $1C
    inc e                                         ; $65BC: $1C
    nop                                           ; $65BD: $00
    nop                                           ; $65BE: $00
    nop                                           ; $65BF: $00
    inc bc                                        ; $65C0: $03
    nop                                           ; $65C1: $00
    inc b                                         ; $65C2: $04
    inc bc                                        ; $65C3: $03
    add $01                                       ; $65C4: $C6 $01
    ld c, c                                       ; $65C6: $49
    add [hl]                                      ; $65C7: $86
    ldh a, [rIF]                                  ; $65C8: $F0 $0F
    ld hl, sp+$67                                 ; $65CA: $F8 $67
    db $EB                                        ; $65CC: $EB
    call nc, $A0DC                                ; $65CD: $D4 $DC $A0
    cp b                                          ; $65D0: $B8
    ld d, b                                       ; $65D1: $50
    ldh a, [rNR41]                                ; $65D2: $F0 $20
    ldh [$FFC0], a                                ; $65D4: $E0 $C0
    ret nz                                        ; $65D6: $C0

jr_014_65D7:
    nop                                           ; $65D7: $00
    ret nz                                        ; $65D8: $C0

    nop                                           ; $65D9: $00
    ret nz                                        ; $65DA: $C0

    add b                                         ; $65DB: $80
    ret nz                                        ; $65DC: $C0

    add b                                         ; $65DD: $80
    add b                                         ; $65DE: $80
    nop                                           ; $65DF: $00
    ld [$0EF7], sp                                ; $65E0: $08 $F7 $0E
    di                                            ; $65E3: $F3
    rst RST_08                                    ; $65E4: $CF
    jr nc, @+$01                                  ; $65E5: $30 $FF

    rrca                                          ; $65E7: $0F
    rra                                           ; $65E8: $1F
    ld b, $07                                     ; $65E9: $06 $07
    nop                                           ; $65EB: $00
    inc bc                                        ; $65EC: $03
    nop                                           ; $65ED: $00
    inc bc                                        ; $65EE: $03
    nop                                           ; $65EF: $00
    inc b                                         ; $65F0: $04
    inc bc                                        ; $65F1: $03
    inc b                                         ; $65F2: $04
    inc bc                                        ; $65F3: $03
    ld [$1807], sp                                ; $65F4: $08 $07 $18
    rlca                                          ; $65F7: $07
    jr @+$09                                      ; $65F8: $18 $07

    rla                                           ; $65FA: $17
    ld [$0E1F], sp                                ; $65FB: $08 $1F $0E
    ld c, $00                                     ; $65FE: $0E $00
    cp $18                                        ; $6600: $FE $18
    rst RST_38                                    ; $6602: $FF
    ld a, b                                       ; $6603: $78
    rst RST_38                                    ; $6604: $FF
    ld a, d                                       ; $6605: $7A
    rst RST_38                                    ; $6606: $FF
    cp [hl]                                       ; $6607: $BE
    db $FD                                        ; $6608: $FD
    sbc d                                         ; $6609: $9A
    rst RST_38                                    ; $660A: $FF
    ld a, b                                       ; $660B: $78
    rst RST_38                                    ; $660C: $FF
    ld e, $7E                                     ; $660D: $1E $7E
    add b                                         ; $660F: $80
    ld [hl], b                                    ; $6610: $70
    add b                                         ; $6611: $80
    ld h, b                                       ; $6612: $60
    add b                                         ; $6613: $80
    ldh [rP1], a                                  ; $6614: $E0 $00
    ldh a, [rP1]                                  ; $6616: $F0 $00
    ldh a, [rP1]                                  ; $6618: $F0 $00
    ld [hl], b                                    ; $661A: $70
    add b                                         ; $661B: $80
    ret nc                                        ; $661C: $D0

    jr nz, jr_014_664F                            ; $661D: $20 $30

    nop                                           ; $661F: $00
    ld [hl], b                                    ; $6620: $70
    nop                                           ; $6621: $00
    cp b                                          ; $6622: $B8
    ld b, b                                       ; $6623: $40
    ld e, h                                       ; $6624: $5C

jr_014_6625:
    cp b                                          ; $6625: $B8
    db $FC                                        ; $6626: $FC
    jr c, jr_014_6625                             ; $6627: $38 $FC

    ld b, b                                       ; $6629: $40
    db $FC                                        ; $662A: $FC
    ld a, b                                       ; $662B: $78
    db $EC                                        ; $662C: $EC
    ld a, b                                       ; $662D: $78
    ld c, b                                       ; $662E: $48
    jr nc, jr_014_6679                            ; $662F: $30 $48

    jr nc, jr_014_66AB                            ; $6631: $30 $78

jr_014_6633:
    nop                                           ; $6633: $00
    ld a, h                                       ; $6634: $7C
    jr c, jr_014_6633                             ; $6635: $38 $FC

    ld a, b                                       ; $6637: $78
    ld a, [$4A44]                                 ; $6638: $FA $44 $4A
    inc [hl]                                      ; $663B: $34
    ld c, [hl]                                    ; $663C: $4E
    jr nc, jr_014_6677                            ; $663D: $30 $38

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
    nop                                           ; $664E: $00

jr_014_664F:
    nop                                           ; $664F: $00
    ld b, l                                       ; $6650: $45
    nop                                           ; $6651: $00
    xor d                                         ; $6652: $AA

jr_014_6653:
    ld b, l                                       ; $6653: $45
    or h                                          ; $6654: $B4
    ld c, e                                       ; $6655: $4B
    push de                                       ; $6656: $D5
    ld l, e                                       ; $6657: $6B
    ld a, a                                       ; $6658: $7F
    ld a, [hl+]                                   ; $6659: $2A
    rst RST_38                                    ; $665A: $FF
    jr nz, jr_014_668D                            ; $665B: $20 $30

    rst RST_08                                    ; $665D: $CF
    rra                                           ; $665E: $1F
    ldh [rP1], a                                  ; $665F: $E0 $00
    nop                                           ; $6661: $00
    nop                                           ; $6662: $00
    nop                                           ; $6663: $00
    nop                                           ; $6664: $00
    nop                                           ; $6665: $00
    ld bc, $0100                                  ; $6666: $01 $00 $01
    nop                                           ; $6669: $00
    rlca                                          ; $666A: $07
    nop                                           ; $666B: $00
    ld a, [bc]                                    ; $666C: $0A
    dec b                                         ; $666D: $05
    dec [hl]                                      ; $666E: $35
    ld a, [bc]                                    ; $666F: $0A
    call $BB36                                    ; $6670: $CD $36 $BB
    ld l, [hl]                                    ; $6673: $6E
    or $1D                                        ; $6674: $F6 $1D
    and [hl]                                      ; $6676: $A6

jr_014_6677:
    ld e, l                                       ; $6677: $5D
    dec l                                         ; $6678: $2D

jr_014_6679:
    jp c, Jump_014_54BE                           ; $6679: $DA $BE $54

    cp [hl]                                       ; $667C: $BE
    ld c, h                                       ; $667D: $4C
    cp $84                                        ; $667E: $FE $84
    ret nz                                        ; $6680: $C0

    nop                                           ; $6681: $00
    and b                                         ; $6682: $A0
    ld b, b                                       ; $6683: $40
    ld d, b                                       ; $6684: $50
    jr nz, jr_014_6677                            ; $6685: $20 $F0

    nop                                           ; $6687: $00
    rrca                                          ; $6688: $0F
    ldh a, [$FFF1]                                ; $6689: $F0 $F1
    cp $FE                                        ; $668B: $FE $FE

jr_014_668D:
    ld [hl], c                                    ; $668D: $71
    ld a, a                                       ; $668E: $7F
    or a                                          ; $668F: $B7
    ld a, a                                       ; $6690: $7F
    and a                                         ; $6691: $A7
    ld l, a                                       ; $6692: $6F
    add h                                         ; $6693: $84
    ld b, h                                       ; $6694: $44
    add e                                         ; $6695: $83
    add h                                         ; $6696: $84
    inc bc                                        ; $6697: $03
    rlca                                          ; $6698: $07
    inc bc                                        ; $6699: $03
    inc bc                                        ; $669A: $03
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

jr_014_66AB:
    nop                                           ; $66AB: $00
    nop                                           ; $66AC: $00
    nop                                           ; $66AD: $00
    ld hl, sp+$00                                 ; $66AE: $F8 $00
    ld h, h                                       ; $66B0: $64
    cp b                                          ; $66B1: $B8
    ld a, h                                       ; $66B2: $7C
    sbc b                                         ; $66B3: $98
    ret c                                         ; $66B4: $D8

    and b                                         ; $66B5: $A0
    db $E4                                        ; $66B6: $E4
    ld a, b                                       ; $66B7: $78
    db $FC                                        ; $66B8: $FC
    jr jr_014_6653                                ; $66B9: $18 $98

    nop                                           ; $66BB: $00
    add b                                         ; $66BC: $80
    nop                                           ; $66BD: $00
    add b                                         ; $66BE: $80
    nop                                           ; $66BF: $00
    ld c, c                                       ; $66C0: $49
    ld [hl], $36                                  ; $66C1: $36 $36
    nop                                           ; $66C3: $00
    ld bc, $0300                                  ; $66C4: $01 $00 $03
    nop                                           ; $66C7: $00
    inc bc                                        ; $66C8: $03
    ld bc, $0103                                  ; $66C9: $01 $03 $01
    ld [bc], a                                    ; $66CC: $02
    ld bc, $0304                                  ; $66CD: $01 $04 $03
    inc c                                         ; $66D0: $0C
    inc bc                                        ; $66D1: $03
    rra                                           ; $66D2: $1F
    inc c                                         ; $66D3: $0C
    ccf                                           ; $66D4: $3F
    rrca                                          ; $66D5: $0F
    ld e, a                                       ; $66D6: $5F
    ld h, $A6                                     ; $66D7: $26 $A6
    ld e, b                                       ; $66D9: $58
    ld l, b                                       ; $66DA: $68
    db $10                                        ; $66DB: $10
    stop                                          ; $66DC: $10 $00
    nop                                           ; $66DE: $00
    nop                                           ; $66DF: $00
    rrca                                          ; $66E0: $0F
    ld bc, $0ED1                                  ; $66E1: $01 $D1 $0E
    ld h, b                                       ; $66E4: $60
    rst RST_18                                    ; $66E5: $DF
    pop af                                        ; $66E6: $F1
    adc $FE                                       ; $66E7: $CE $FE
    jr nc, jr_014_6763                            ; $66E9: $30 $78

    ldh a, [rSVBK]                                ; $66EB: $F0 $70
    ldh [$FFE0], a                                ; $66ED: $E0 $E0
    add b                                         ; $66EF: $80
    add b                                         ; $66F0: $80
    nop                                           ; $66F1: $00
    add b                                         ; $66F2: $80
    nop                                           ; $66F3: $00
    add b                                         ; $66F4: $80
    nop                                           ; $66F5: $00
    ld bc, $0300                                  ; $66F6: $01 $00 $03
    ld bc, $0205                                  ; $66F9: $01 $05 $02
    add hl, bc                                    ; $66FC: $09
    ld b, $06                                     ; $66FD: $06 $06
    ld bc, $90FF                                  ; $66FF: $01 $FF $90
    cp $60                                        ; $6702: $FE $60
    ldh [c], a                                    ; $6704: $E2
    inc e                                         ; $6705: $1C
    add $38                                       ; $6706: $C6 $38
    ld e, e                                       ; $6708: $5B
    ld h, $3F                                     ; $6709: $26 $3F
    ld d, $3F                                     ; $670B: $16 $3F
    add hl, de                                    ; $670D: $19
    inc sp                                        ; $670E: $33
    rra                                           ; $670F: $1F
    daa                                           ; $6710: $27
    ld e, $26                                     ; $6711: $1E $26
    inc e                                         ; $6713: $1C
    call z, $F838                                 ; $6714: $CC $38 $F8
    ret nz                                        ; $6717: $C0

    ldh a, [$FFE0]                                ; $6718: $F0 $E0
    ldh a, [$FFE0]                                ; $671A: $F0 $E0
    ldh [rP1], a                                  ; $671C: $E0 $00
    ld b, b                                       ; $671E: $40
    add b                                         ; $671F: $80
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
    ld [$1500], sp                                ; $672C: $08 $00 $15
    ld [$112E], sp                                ; $672F: $08 $2E $11
    ccf                                           ; $6732: $3F
    ld c, $7F                                     ; $6733: $0E $7F
    ccf                                           ; $6735: $3F
    ld a, a                                       ; $6736: $7F
    ld bc, $7EFF                                  ; $6737: $01 $FF $7E
    rst RST_38                                    ; $673A: $FF
    ld a, [hl]                                    ; $673B: $7E
    rst RST_38                                    ; $673C: $FF
    ld b, b                                       ; $673D: $40
    ld a, a                                       ; $673E: $7F
    ld [hl], $08                                  ; $673F: $36 $08
    nop                                           ; $6741: $00
    inc d                                         ; $6742: $14
    ld [$0815], sp                                ; $6743: $08 $15 $08
    ld a, [de]                                    ; $6746: $1A
    dec c                                         ; $6747: $0D
    ld c, $05                                     ; $6748: $0E $05
    ccf                                           ; $674A: $3F
    ld bc, $38C7                                  ; $674B: $01 $C7 $38
    ld b, d                                       ; $674E: $42
    cp l                                          ; $674F: $BD
    jp $233C                                      ; $6750: $C3 $3C $23


    db $DD                                        ; $6753: $DD
    sub e                                         ; $6754: $93
    ld l, l                                       ; $6755: $6D
    rst RST_38                                    ; $6756: $FF
    nop                                           ; $6757: $00
    jp $C700                                      ; $6758: $C3 $00 $C7


    add c                                         ; $675B: $81
    push bc                                       ; $675C: $C5
    add d                                         ; $675D: $82
    add a                                         ; $675E: $87
    nop                                           ; $675F: $00
    nop                                           ; $6760: $00
    nop                                           ; $6761: $00
    or a                                          ; $6762: $B7

jr_014_6763:
    nop                                           ; $6763: $00
    ld e, c                                       ; $6764: $59
    and [hl]                                      ; $6765: $A6
    sub a                                         ; $6766: $97
    ld l, l                                       ; $6767: $6D
    cp [hl]                                       ; $6768: $BE
    ld h, e                                       ; $6769: $63
    db $F4                                        ; $676A: $F4
    ld c, e                                       ; $676B: $4B
    push hl                                       ; $676C: $E5
    dec de                                        ; $676D: $1B
    rla                                           ; $676E: $17
    ld [$08F7], a                                 ; $676F: $EA $F7 $08
    sbc a                                         ; $6772: $9F
    ld [hl], d                                    ; $6773: $72
    sbc $65                                       ; $6774: $DE $65
    db $FD                                        ; $6776: $FD
    sbc e                                         ; $6777: $9B
    db $FD                                        ; $6778: $FD
    ldh [c], a                                    ; $6779: $E2
    rst RST_38                                    ; $677A: $FF
    call nz, $FEFF                                ; $677B: $C4 $FF $FE
    rst RST_38                                    ; $677E: $FF
    db $FC                                        ; $677F: $FC
    ld a, a                                       ; $6780: $7F
    jp c, $36FF                                   ; $6781: $DA $FF $36

    ld a, [hl]                                    ; $6784: $7E
    nop                                           ; $6785: $00
    nop                                           ; $6786: $00
    nop                                           ; $6787: $00
    nop                                           ; $6788: $00
    nop                                           ; $6789: $00

jr_014_678A:
    nop                                           ; $678A: $00
    nop                                           ; $678B: $00
    add b                                         ; $678C: $80
    nop                                           ; $678D: $00
    add b                                         ; $678E: $80
    nop                                           ; $678F: $00
    nop                                           ; $6790: $00
    nop                                           ; $6791: $00

jr_014_6792:
    nop                                           ; $6792: $00
    nop                                           ; $6793: $00
    nop                                           ; $6794: $00
    nop                                           ; $6795: $00
    nop                                           ; $6796: $00
    nop                                           ; $6797: $00
    nop                                           ; $6798: $00
    nop                                           ; $6799: $00
    nop                                           ; $679A: $00
    nop                                           ; $679B: $00
    nop                                           ; $679C: $00
    nop                                           ; $679D: $00
    nop                                           ; $679E: $00
    nop                                           ; $679F: $00
    ld b, b                                       ; $67A0: $40
    nop                                           ; $67A1: $00
    and b                                         ; $67A2: $A0
    ld b, b                                       ; $67A3: $40
    and b                                         ; $67A4: $A0
    ret nz                                        ; $67A5: $C0

    ld h, b                                       ; $67A6: $60
    ret nz                                        ; $67A7: $C0

    ret nz                                        ; $67A8: $C0

    add b                                         ; $67A9: $80
    ret nz                                        ; $67AA: $C0

    add b                                         ; $67AB: $80
    cp $00                                        ; $67AC: $FE $00
    add c                                         ; $67AE: $81
    ld a, [hl]                                    ; $67AF: $7E
    rlca                                          ; $67B0: $07

jr_014_67B1:
    ld hl, sp-$22                                 ; $67B1: $F8 $DE
    jr nz, jr_014_67B1                            ; $67B3: $20 $FC

    ret nz                                        ; $67B5: $C0

    rst RST_38                                    ; $67B6: $FF
    jr jr_014_6838                                ; $67B7: $18 $7F

    jp c, $DB7F                                   ; $67B9: $DA $7F $DB

    rst RST_38                                    ; $67BC: $FF
    dec de                                        ; $67BD: $1B
    ld a, a                                       ; $67BE: $7F
    db $DB                                        ; $67BF: $DB
    nop                                           ; $67C0: $00
    nop                                           ; $67C1: $00
    nop                                           ; $67C2: $00
    nop                                           ; $67C3: $00
    nop                                           ; $67C4: $00
    nop                                           ; $67C5: $00
    ret nz                                        ; $67C6: $C0

    nop                                           ; $67C7: $00
    jr nz, jr_014_678A                            ; $67C8: $20 $C0

    ret nz                                        ; $67CA: $C0

    nop                                           ; $67CB: $00
    add b                                         ; $67CC: $80
    nop                                           ; $67CD: $00
    ret nz                                        ; $67CE: $C0

    nop                                           ; $67CF: $00
    jr nz, jr_014_6792                            ; $67D0: $20 $C0

    ret nz                                        ; $67D2: $C0

    nop                                           ; $67D3: $00
    nop                                           ; $67D4: $00
    nop                                           ; $67D5: $00
    nop                                           ; $67D6: $00
    nop                                           ; $67D7: $00
    nop                                           ; $67D8: $00
    nop                                           ; $67D9: $00
    nop                                           ; $67DA: $00
    nop                                           ; $67DB: $00
    nop                                           ; $67DC: $00
    nop                                           ; $67DD: $00
    nop                                           ; $67DE: $00
    nop                                           ; $67DF: $00
    inc e                                         ; $67E0: $1C
    nop                                           ; $67E1: $00
    nop                                           ; $67E2: $00
    nop                                           ; $67E3: $00
    nop                                           ; $67E4: $00
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
    ld bc, $0700                                  ; $6800: $01 $00 $07
    nop                                           ; $6803: $00
    rrca                                          ; $6804: $0F
    rlca                                          ; $6805: $07
    rra                                           ; $6806: $1F
    rrca                                          ; $6807: $0F
    cpl                                           ; $6808: $2F
    inc de                                        ; $6809: $13
    ld d, e                                       ; $680A: $53
    inc l                                         ; $680B: $2C
    ld a, $00                                     ; $680C: $3E $00
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
    inc bc                                        ; $6820: $03
    nop                                           ; $6821: $00
    dec c                                         ; $6822: $0D
    inc bc                                        ; $6823: $03
    rra                                           ; $6824: $1F
    dec bc                                        ; $6825: $0B
    dec sp                                        ; $6826: $3B
    inc e                                         ; $6827: $1C
    ld sp, $631F                                  ; $6828: $31 $1F $63
    ccf                                           ; $682B: $3F
    rst RST_08                                    ; $682C: $CF
    ld a, [hl]                                    ; $682D: $7E
    cp [hl]                                       ; $682E: $BE
    ldh a, [rSVBK]                                ; $682F: $F0 $70
    ret nz                                        ; $6831: $C0

    ret nz                                        ; $6832: $C0

    nop                                           ; $6833: $00
    ret nz                                        ; $6834: $C0

    add b                                         ; $6835: $80
    add b                                         ; $6836: $80
    nop                                           ; $6837: $00

jr_014_6838:
    nop                                           ; $6838: $00
    nop                                           ; $6839: $00
    nop                                           ; $683A: $00
    nop                                           ; $683B: $00
    nop                                           ; $683C: $00
    nop                                           ; $683D: $00
    nop                                           ; $683E: $00
    nop                                           ; $683F: $00
    cpl                                           ; $6840: $2F
    rla                                           ; $6841: $17
    ccf                                           ; $6842: $3F
    rlca                                          ; $6843: $07
    ccf                                           ; $6844: $3F
    inc c                                         ; $6845: $0C
    ld c, a                                       ; $6846: $4F
    ld [hl-], a                                   ; $6847: $32
    add a                                         ; $6848: $87
    ld a, b                                       ; $6849: $78
    rlca                                          ; $684A: $07
    ld hl, sp-$67                                 ; $684B: $F8 $99
    ld h, b                                       ; $684D: $60
    and c                                         ; $684E: $A1
    ld b, b                                       ; $684F: $40
    add $01                                       ; $6850: $C6 $01
    adc a                                         ; $6852: $8F
    ld b, $9F                                     ; $6853: $06 $9F
    rrca                                          ; $6855: $0F
    cpl                                           ; $6856: $2F
    rla                                           ; $6857: $17
    ld c, a                                       ; $6858: $4F
    jr nc, @+$34                                  ; $6859: $30 $32

    inc c                                         ; $685B: $0C
    inc e                                         ; $685C: $1C
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
    ld bc, $0600                                  ; $686C: $01 $00 $06
    ld bc, $0619                                  ; $686F: $01 $19 $06
    ld l, a                                       ; $6872: $6F
    rla                                           ; $6873: $17
    sbc a                                         ; $6874: $9F
    ld a, e                                       ; $6875: $7B
    rst RST_38                                    ; $6876: $FF
    ld h, b                                       ; $6877: $60
    ld h, h                                       ; $6878: $64
    inc bc                                        ; $6879: $03
    inc b                                         ; $687A: $04
    inc bc                                        ; $687B: $03
    rlca                                          ; $687C: $07
    inc bc                                        ; $687D: $03
    inc bc                                        ; $687E: $03
    nop                                           ; $687F: $00
    nop                                           ; $6880: $00
    nop                                           ; $6881: $00
    nop                                           ; $6882: $00
    nop                                           ; $6883: $00
    nop                                           ; $6884: $00
    nop                                           ; $6885: $00
    nop                                           ; $6886: $00
    nop                                           ; $6887: $00
    ld bc, $0200                                  ; $6888: $01 $00 $02
    ld bc, $013A                                  ; $688B: $01 $3A $01
    push bc                                       ; $688E: $C5
    ld a, [hl-]                                   ; $688F: $3A
    inc a                                         ; $6890: $3C
    ei                                            ; $6891: $FB
    db $FC                                        ; $6892: $FC
    dec sp                                        ; $6893: $3B
    rst RST_38                                    ; $6894: $FF
    cp b                                          ; $6895: $B8
    db $FC                                        ; $6896: $FC
    sbc b                                         ; $6897: $98
    ret c                                         ; $6898: $D8

    add b                                         ; $6899: $80
    add b                                         ; $689A: $80
    nop                                           ; $689B: $00
    add b                                         ; $689C: $80
    nop                                           ; $689D: $00
    add b                                         ; $689E: $80
    nop                                           ; $689F: $00
    nop                                           ; $68A0: $00
    nop                                           ; $68A1: $00
    nop                                           ; $68A2: $00
    nop                                           ; $68A3: $00
    ld b, b                                       ; $68A4: $40
    nop                                           ; $68A5: $00
    and l                                         ; $68A6: $A5
    ld b, b                                       ; $68A7: $40
    xor d                                         ; $68A8: $AA
    ld b, l                                       ; $68A9: $45
    call nc, Call_014_756B                        ; $68AA: $D4 $6B $75

jr_014_68AD:
    dec hl                                        ; $68AD: $2B
    rst RST_38                                    ; $68AE: $FF
    ld a, [hl+]                                   ; $68AF: $2A
    ccf                                           ; $68B0: $3F
    ret nz                                        ; $68B1: $C0

    db $10                                        ; $68B2: $10
    rst RST_28                                    ; $68B3: $EF
    rra                                           ; $68B4: $1F
    ldh [$FF9C], a                                ; $68B5: $E0 $9C
    ld l, e                                       ; $68B7: $6B
    ld e, [hl]                                    ; $68B8: $5E
    xor e                                         ; $68B9: $AB
    rst RST_38                                    ; $68BA: $FF
    inc b                                         ; $68BB: $04
    rra                                           ; $68BC: $1F
    rlca                                          ; $68BD: $07
    ccf                                           ; $68BE: $3F
    ld c, $00                                     ; $68BF: $0E $00
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
    ld [bc], a                                    ; $68CC: $02
    nop                                           ; $68CD: $00
    cp l                                          ; $68CE: $BD
    ld [bc], a                                    ; $68CF: $02
    call $BB36                                    ; $68D0: $CD $36 $BB
    ld l, [hl]                                    ; $68D3: $6E
    or $1C                                        ; $68D4: $F6 $1C
    and a                                         ; $68D6: $A7
    ld e, h                                       ; $68D7: $5C

jr_014_68D8:
    inc l                                         ; $68D8: $2C
    db $DB                                        ; $68D9: $DB
    cp b                                          ; $68DA: $B8
    ld d, a                                       ; $68DB: $57
    cp b                                          ; $68DC: $B8
    ld b, a                                       ; $68DD: $47
    db $FC                                        ; $68DE: $FC
    sbc e                                         ; $68DF: $9B
    db $FD                                        ; $68E0: $FD
    ld a, [hl-]                                   ; $68E1: $3A
    rst RST_38                                    ; $68E2: $FF
    ldh a, [$FFFC]                                ; $68E3: $F0 $FC
    inc hl                                        ; $68E5: $23

jr_014_68E6:
    rst RST_38                                    ; $68E6: $FF
    inc sp                                        ; $68E7: $33
    rst RST_38                                    ; $68E8: $FF
    db $F4                                        ; $68E9: $F4
    rst RST_30                                    ; $68EA: $F7
    jp Jump_000_30DF                              ; $68EB: $C3 $DF $30


    db $FD                                        ; $68EE: $FD
    or d                                          ; $68EF: $B2
    db $FD                                        ; $68F0: $FD
    jp z, $F89E                                   ; $68F1: $CA $9E $F8

    jr c, jr_014_68E6                             ; $68F4: $38 $F0

    jr nc, jr_014_68D8                            ; $68F6: $30 $E0

    ld h, b                                       ; $68F8: $60
    ret nz                                        ; $68F9: $C0

    ret nz                                        ; $68FA: $C0

    nop                                           ; $68FB: $00
    add b                                         ; $68FC: $80
    nop                                           ; $68FD: $00
    add b                                         ; $68FE: $80
    nop                                           ; $68FF: $00
    nop                                           ; $6900: $00
    nop                                           ; $6901: $00
    ldh [rP1], a                                  ; $6902: $E0 $00
    db $10                                        ; $6904: $10
    ldh [rNR10], a                                ; $6905: $E0 $10
    ldh [rNR41], a                                ; $6907: $E0 $20
    ret nz                                        ; $6909: $C0

    ld [hl], b                                    ; $690A: $70
    add b                                         ; $690B: $80
    ret z                                         ; $690C: $C8

    jr nc, @-$0A                                  ; $690D: $30 $F4

    jr jr_014_68AD                                ; $690F: $18 $9C

    ld l, b                                       ; $6911: $68
    db $FC                                        ; $6912: $FC
    ld l, b                                       ; $6913: $68
    ld hl, sp+$00                                 ; $6914: $F8 $00
    ld hl, sp-$10                                 ; $6916: $F8 $F0
    ldh a, [rP1]                                  ; $6918: $F0 $00
    ld d, b                                       ; $691A: $50
    jr nz, jr_014_696D                            ; $691B: $20 $50

    jr nz, jr_014_693F                            ; $691D: $20 $20

    nop                                           ; $691F: $00
    ld bc, $0300                                  ; $6920: $01 $00 $03
    nop                                           ; $6923: $00
    dec b                                         ; $6924: $05
    inc bc                                        ; $6925: $03
    rlca                                          ; $6926: $07
    inc bc                                        ; $6927: $03
    rrca                                          ; $6928: $0F
    inc b                                         ; $6929: $04
    inc c                                         ; $692A: $0C
    rlca                                          ; $692B: $07
    inc b                                         ; $692C: $04
    inc bc                                        ; $692D: $03
    dec b                                         ; $692E: $05
    inc bc                                        ; $692F: $03
    dec c                                         ; $6930: $0D
    inc bc                                        ; $6931: $03
    ccf                                           ; $6932: $3F
    inc c                                         ; $6933: $0C
    ld e, a                                       ; $6934: $5F
    daa                                           ; $6935: $27
    and a                                         ; $6936: $A7
    ld e, d                                       ; $6937: $5A
    rst RST_38                                    ; $6938: $FF
    nop                                           ; $6939: $00
    nop                                           ; $693A: $00
    nop                                           ; $693B: $00
    nop                                           ; $693C: $00
    nop                                           ; $693D: $00
    nop                                           ; $693E: $00

jr_014_693F:
    nop                                           ; $693F: $00
    rra                                           ; $6940: $1F
    ld c, $2F                                     ; $6941: $0E $2F
    rla                                           ; $6943: $17
    ld a, a                                       ; $6944: $7F
    rlca                                          ; $6945: $07
    sbc a                                         ; $6946: $9F
    ld l, h                                       ; $6947: $6C
    rrca                                          ; $6948: $0F
    di                                            ; $6949: $F3
    rrca                                          ; $694A: $0F
    ldh a, [$FFB1]                                ; $694B: $F0 $B1
    ld b, b                                       ; $694D: $40
    ret nz                                        ; $694E: $C0

    nop                                           ; $694F: $00
    ldh [$FFC0], a                                ; $6950: $E0 $C0
    ldh [$FFC0], a                                ; $6952: $E0 $C0
    ldh [$FFC0], a                                ; $6954: $E0 $C0
    ret nz                                        ; $6956: $C0

    add b                                         ; $6957: $80
    add b                                         ; $6958: $80
    nop                                           ; $6959: $00
    add b                                         ; $695A: $80
    nop                                           ; $695B: $00
    add b                                         ; $695C: $80
    nop                                           ; $695D: $00
    nop                                           ; $695E: $00
    nop                                           ; $695F: $00
    ld hl, sp+$30                                 ; $6960: $F8 $30
    ei                                            ; $6962: $FB
    ldh a, [$FFF5]                                ; $6963: $F0 $F5
    db $E3                                        ; $6965: $E3
    ei                                            ; $6966: $FB
    add [hl]                                      ; $6967: $86
    sbc a                                         ; $6968: $9F
    ld h, h                                       ; $6969: $64
    rrca                                          ; $696A: $0F
    ldh a, [c]                                    ; $696B: $F2
    dec c                                         ; $696C: $0D

jr_014_696D:
    di                                            ; $696D: $F3
    adc a                                         ; $696E: $8F
    ld [hl], b                                    ; $696F: $70
    ld a, a                                       ; $6970: $7F
    ld c, $5F                                     ; $6971: $0E $5F
    ld [hl], $7F                                  ; $6973: $36 $7F
    scf                                           ; $6975: $37
    ld sp, $0E0F                                  ; $6976: $31 $0F $0E
    ld bc, $0001                                  ; $6979: $01 $01 $00
    ld bc, $0100                                  ; $697C: $01 $00 $01
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
    ld a, a                                       ; $698C: $7F
    nop                                           ; $698D: $00
    sbc d                                         ; $698E: $9A
    ld [hl], l                                    ; $698F: $75
    ld sp, hl                                     ; $6990: $F9
    ld h, [hl]                                    ; $6991: $66
    ld l, a                                       ; $6992: $6F
    rla                                           ; $6993: $17
    sbc a                                         ; $6994: $9F
    ld a, e                                       ; $6995: $7B
    rst RST_38                                    ; $6996: $FF
    ld h, b                                       ; $6997: $60
    ld h, h                                       ; $6998: $64
    inc bc                                        ; $6999: $03
    inc b                                         ; $699A: $04
    inc bc                                        ; $699B: $03
    rlca                                          ; $699C: $07
    inc bc                                        ; $699D: $03
    inc bc                                        ; $699E: $03
    nop                                           ; $699F: $00
    jr z, @+$12                                   ; $69A0: $28 $10

    ld a, $00                                     ; $69A2: $3E $00
    jp nz, Jump_000_3F3C                          ; $69A4: $C2 $3C $3F

    db $FC                                        ; $69A7: $FC
    db $FC                                        ; $69A8: $FC
    dec sp                                        ; $69A9: $3B
    ld hl, sp-$49                                 ; $69AA: $F8 $B7
    ld sp, hl                                     ; $69AC: $F9
    sub [hl]                                      ; $69AD: $96
    reti                                          ; $69AE: $D9


    add [hl]                                      ; $69AF: $86
    adc c                                         ; $69B0: $89
    ld b, $89                                     ; $69B1: $06 $89
    ld b, $85                                     ; $69B3: $06 $85
    ld [bc], a                                    ; $69B5: $02
    dec b                                         ; $69B6: $05
    ld [bc], a                                    ; $69B7: $02
    inc bc                                        ; $69B8: $03

jr_014_69B9:
    nop                                           ; $69B9: $00
    inc bc                                        ; $69BA: $03
    ld bc, $0103                                  ; $69BB: $01 $03 $01
    ld bc, $0000                                  ; $69BE: $01 $00 $00
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
    nop                                           ; $69CE: $00
    nop                                           ; $69CF: $00
    nop                                           ; $69D0: $00
    nop                                           ; $69D1: $00
    nop                                           ; $69D2: $00
    nop                                           ; $69D3: $00
    nop                                           ; $69D4: $00
    nop                                           ; $69D5: $00
    nop                                           ; $69D6: $00
    nop                                           ; $69D7: $00
    nop                                           ; $69D8: $00
    nop                                           ; $69D9: $00
    nop                                           ; $69DA: $00
    nop                                           ; $69DB: $00
    inc c                                         ; $69DC: $0C
    nop                                           ; $69DD: $00
    inc d                                         ; $69DE: $14
    ld [$0000], sp                                ; $69DF: $08 $00 $00
    add b                                         ; $69E2: $80
    nop                                           ; $69E3: $00
    ld d, b                                       ; $69E4: $50
    add b                                         ; $69E5: $80
    xor e                                         ; $69E6: $AB
    ld d, b                                       ; $69E7: $50
    ld c, h                                       ; $69E8: $4C
    or e                                          ; $69E9: $B3
    ld e, e                                       ; $69EA: $5B
    or a                                          ; $69EB: $B7
    rst RST_38                                    ; $69EC: $FF
    and b                                         ; $69ED: $A0
    ldh [c], a                                    ; $69EE: $E2
    dec e                                         ; $69EF: $1D
    dec de                                        ; $69F0: $1B
    push hl                                       ; $69F1: $E5
    ei                                            ; $69F2: $FB
    dec d                                         ; $69F3: $15
    cp e                                          ; $69F4: $BB
    ld b, h                                       ; $69F5: $44
    rst RST_08                                    ; $69F6: $CF
    cp c                                          ; $69F7: $B9
    rst RST_28                                    ; $69F8: $EF
    or c                                          ; $69F9: $B1
    rst RST_38                                    ; $69FA: $FF
    add e                                         ; $69FB: $83
    rst RST_38                                    ; $69FC: $FF
    ld a, [hl]                                    ; $69FD: $7E
    rst RST_38                                    ; $69FE: $FF
    ld [hl], e                                    ; $69FF: $73
    nop                                           ; $6A00: $00
    nop                                           ; $6A01: $00
    sbc b                                         ; $6A02: $98
    nop                                           ; $6A03: $00
    add sp, -$70                                  ; $6A04: $E8 $90
    ret c                                         ; $6A06: $D8

    jr nc, jr_014_69B9                            ; $6A07: $30 $B0

    ldh [rSVBK], a                                ; $6A09: $E0 $70
    ldh [$FFEC], a                                ; $6A0B: $E0 $EC
    ret nc                                        ; $6A0D: $D0

    jp $C0BC                                      ; $6A0E: $C3 $BC $C0


    ccf                                           ; $6A11: $3F
    jp $C7BC                                      ; $6A12: $C3 $BC $C7


    cp b                                          ; $6A15: $B8
    ret z                                         ; $6A16: $C8

    scf                                           ; $6A17: $37
    ldh a, [rIF]                                  ; $6A18: $F0 $0F
    db $FD                                        ; $6A1A: $FD
    ld [bc], a                                    ; $6A1B: $02
    add e                                         ; $6A1C: $83
    nop                                           ; $6A1D: $00
    or a                                          ; $6A1E: $B7
    ld bc, $0000                                  ; $6A1F: $01 $00 $00
    nop                                           ; $6A22: $00
    nop                                           ; $6A23: $00
    nop                                           ; $6A24: $00
    nop                                           ; $6A25: $00
    nop                                           ; $6A26: $00
    nop                                           ; $6A27: $00
    nop                                           ; $6A28: $00
    nop                                           ; $6A29: $00
    add b                                         ; $6A2A: $80
    nop                                           ; $6A2B: $00
    add b                                         ; $6A2C: $80
    nop                                           ; $6A2D: $00
    nop                                           ; $6A2E: $00
    nop                                           ; $6A2F: $00
    db $FC                                        ; $6A30: $FC
    nop                                           ; $6A31: $00
    db $F4                                        ; $6A32: $F4
    ld l, b                                       ; $6A33: $68
    add sp, -$30                                  ; $6A34: $E8 $D0
    rst RST_18                                    ; $6A36: $DF
    xor b                                         ; $6A37: $A8
    db $FD                                        ; $6A38: $FD
    sbc d                                         ; $6A39: $9A
    ld a, [$F4F4]                                 ; $6A3A: $FA $F4 $F4
    add sp, -$08                                  ; $6A3D: $E8 $F8
    ld b, b                                       ; $6A3F: $40
    ld a, a                                       ; $6A40: $7F
    db $DB                                        ; $6A41: $DB
    rst RST_38                                    ; $6A42: $FF
    or a                                          ; $6A43: $B7
    rst RST_38                                    ; $6A44: $FF
    dec l                                         ; $6A45: $2D
    rst RST_38                                    ; $6A46: $FF
    or d                                          ; $6A47: $B2
    ld a, l                                       ; $6A48: $7D
    sbc $F2                                       ; $6A49: $DE $F2
    inc l                                         ; $6A4B: $2C
    call c, $F0B0                                 ; $6A4C: $DC $B0 $F0
    add b                                         ; $6A4F: $80
    ldh [$FFC0], a                                ; $6A50: $E0 $C0
    ld [hl], b                                    ; $6A52: $70
    ret nz                                        ; $6A53: $C0

    cp b                                          ; $6A54: $B8
    ld d, b                                       ; $6A55: $50
    ld a, h                                       ; $6A56: $7C
    jr c, jr_014_6AD5                             ; $6A57: $38 $7C

    jr c, @+$80                                   ; $6A59: $38 $7E

    nop                                           ; $6A5B: $00
    sub d                                         ; $6A5C: $92
    ld l, h                                       ; $6A5D: $6C
    cp $00                                        ; $6A5E: $FE $00
    ld bc, $0100                                  ; $6A60: $01 $00 $01
    nop                                           ; $6A63: $00
    ld l, a                                       ; $6A64: $6F
    nop                                           ; $6A65: $00
    or c                                          ; $6A66: $B1
    ld l, [hl]                                    ; $6A67: $6E
    ld a, [$7F65]                                 ; $6A68: $FA $65 $7F
    jr jr_014_6A94                                ; $6A6B: $18 $27

    ld e, $13                                     ; $6A6D: $1E $13
    rrca                                          ; $6A6F: $0F
    dec bc                                        ; $6A70: $0B
    rlca                                          ; $6A71: $07
    dec b                                         ; $6A72: $05
    inc bc                                        ; $6A73: $03
    inc bc                                        ; $6A74: $03
    nop                                           ; $6A75: $00
    rlca                                          ; $6A76: $07
    inc bc                                        ; $6A77: $03
    rra                                           ; $6A78: $1F
    inc bc                                        ; $6A79: $03
    inc hl                                        ; $6A7A: $23
    dec e                                         ; $6A7B: $1D
    ccf                                           ; $6A7C: $3F
    nop                                           ; $6A7D: $00
    nop                                           ; $6A7E: $00
    nop                                           ; $6A7F: $00
    rst RST_28                                    ; $6A80: $EF
    or b                                          ; $6A81: $B0
    rst RST_38                                    ; $6A82: $FF
    ld c, [hl]                                    ; $6A83: $4E
    cp $79                                        ; $6A84: $FE $79
    cp $E1                                        ; $6A86: $FE $E1
    rst RST_38                                    ; $6A88: $FF
    ld a, [hl]                                    ; $6A89: $7E
    rst RST_38                                    ; $6A8A: $FF
    ld a, [hl]                                    ; $6A8B: $7E
    rst RST_38                                    ; $6A8C: $FF
    ret z                                         ; $6A8D: $C8

    rst RST_38                                    ; $6A8E: $FF
    jr nc, @+$01                                  ; $6A8F: $30 $FF

    nop                                           ; $6A91: $00
    add h                                         ; $6A92: $84
    inc bc                                        ; $6A93: $03

jr_014_6A94:
    add d                                         ; $6A94: $82
    ld bc, $81C2                                  ; $6A95: $01 $C2 $81
    pop hl                                        ; $6A98: $E1
    ret nz                                        ; $6A99: $C0

    ldh [$FFC0], a                                ; $6A9A: $E0 $C0
    pop hl                                        ; $6A9C: $E1
    nop                                           ; $6A9D: $00
    nop                                           ; $6A9E: $00
    nop                                           ; $6A9F: $00
    ld a, a                                       ; $6AA0: $7F
    ret nz                                        ; $6AA1: $C0

    rst RST_00                                    ; $6AA2: $C7
    add hl, sp                                    ; $6AA3: $39
    rst RST_38                                    ; $6AA4: $FF
    or c                                          ; $6AA5: $B1
    rst RST_38                                    ; $6AA6: $FF
    or a                                          ; $6AA7: $B7
    rst RST_38                                    ; $6AA8: $FF
    ld sp, $DD7F                                  ; $6AA9: $31 $7F $DD
    rst RST_38                                    ; $6AAC: $FF
    db $DD                                        ; $6AAD: $DD
    db $FD                                        ; $6AAE: $FD
    nop                                           ; $6AAF: $00
    ld b, b                                       ; $6AB0: $40
    add b                                         ; $6AB1: $80
    ld l, $C0                                     ; $6AB2: $2E $C0
    ccf                                           ; $6AB4: $3F
    adc $1F                                       ; $6AB5: $CE $1F
    rst RST_28                                    ; $6AB7: $EF
    ld e, $EF                                     ; $6AB8: $1E $EF
    ld sp, hl                                     ; $6ABA: $F9
    ld e, $66                                     ; $6ABB: $1E $66
    ret c                                         ; $6ABD: $D8

    ld hl, sp+$00                                 ; $6ABE: $F8 $00
    ret nz                                        ; $6AC0: $C0

    nop                                           ; $6AC1: $00
    ldh a, [$FFC0]                                ; $6AC2: $F0 $C0
    ret z                                         ; $6AC4: $C8

    or b                                          ; $6AC5: $B0
    ldh a, [$FFC0]                                ; $6AC6: $F0 $C0
    ld hl, sp-$40                                 ; $6AC8: $F8 $C0
    ret z                                         ; $6ACA: $C8

    or b                                          ; $6ACB: $B0
    ldh a, [$FFC0]                                ; $6ACC: $F0 $C0

jr_014_6ACE:
    ret nz                                        ; $6ACE: $C0

    nop                                           ; $6ACF: $00
    jr c, jr_014_6AD2                             ; $6AD0: $38 $00

jr_014_6AD2:
    ld a, h                                       ; $6AD2: $7C

jr_014_6AD3:
    jr c, @-$02                                   ; $6AD3: $38 $FC

jr_014_6AD5:
    jr c, jr_014_6AD3                             ; $6AD5: $38 $FC

    ret c                                         ; $6AD7: $D8

    ld a, $DC                                     ; $6AD8: $3E $DC
    cp $04                                        ; $6ADA: $FE $04
    add [hl]                                      ; $6ADC: $86
    ld a, b                                       ; $6ADD: $78
    cp $00                                        ; $6ADE: $FE $00
    rrca                                          ; $6AE0: $0F
    ld [bc], a                                    ; $6AE1: $02
    inc bc                                        ; $6AE2: $03
    ld bc, $0103                                  ; $6AE3: $01 $03 $01
    inc bc                                        ; $6AE6: $03
    nop                                           ; $6AE7: $00
    inc b                                         ; $6AE8: $04
    inc bc                                        ; $6AE9: $03
    ld [$2807], sp                                ; $6AEA: $08 $07 $28
    rlca                                          ; $6AED: $07
    ld d, l                                       ; $6AEE: $55
    ld a, [hl+]                                   ; $6AEF: $2A
    and [hl]                                      ; $6AF0: $A6
    ld e, c                                       ; $6AF1: $59
    xor l                                         ; $6AF2: $AD
    ld e, e                                       ; $6AF3: $5B
    rst RST_38                                    ; $6AF4: $FF
    ld d, b                                       ; $6AF5: $50
    pop af                                        ; $6AF6: $F1
    ld c, $8D                                     ; $6AF7: $0E $8D
    ld [hl], d                                    ; $6AF9: $72
    db $FD                                        ; $6AFA: $FD
    ld a, [bc]                                    ; $6AFB: $0A
    ld e, l                                       ; $6AFC: $5D
    ld [hl+], a                                   ; $6AFD: $22
    rst RST_20                                    ; $6AFE: $E7
    ld e, h                                       ; $6AFF: $5C
    and $F8                                       ; $6B00: $E6 $F8
    ei                                            ; $6B02: $FB
    inc c                                         ; $6B03: $0C
    cp $05                                        ; $6B04: $FE $05
    adc a                                         ; $6B06: $8F
    ld [hl], h                                    ; $6B07: $74
    ld c, [hl]                                    ; $6B08: $4E
    or h                                          ; $6B09: $B4
    inc a                                         ; $6B0A: $3C
    ret z                                         ; $6B0B: $C8

    jr c, jr_014_6ACE                             ; $6B0C: $38 $C0

    db $EC                                        ; $6B0E: $EC
    nop                                           ; $6B0F: $00
    ld [hl], h                                    ; $6B10: $74
    ret z                                         ; $6B11: $C8

    db $EC                                        ; $6B12: $EC
    sbc b                                         ; $6B13: $98
    ret c                                         ; $6B14: $D8

    ld [hl], b                                    ; $6B15: $70
    inc a                                         ; $6B16: $3C
    ldh a, [$FFF3]                                ; $6B17: $F0 $F3
    db $EC                                        ; $6B19: $EC
    ldh [$FFDF], a                                ; $6B1A: $E0 $DF
    ld hl, sp+$07                                 ; $6B1C: $F8 $07
    db $DD                                        ; $6B1E: $DD
    cp d                                          ; $6B1F: $BA
    nop                                           ; $6B20: $00
    nop                                           ; $6B21: $00
    nop                                           ; $6B22: $00
    nop                                           ; $6B23: $00
    add b                                         ; $6B24: $80
    nop                                           ; $6B25: $00
    ld b, b                                       ; $6B26: $40
    add b                                         ; $6B27: $80
    and b                                         ; $6B28: $A0
    ld b, b                                       ; $6B29: $40
    ld h, b                                       ; $6B2A: $60
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
    nop                                           ; $6B38: $00
    nop                                           ; $6B39: $00
    add b                                         ; $6B3A: $80
    nop                                           ; $6B3B: $00
    ld b, b                                       ; $6B3C: $40
    add b                                         ; $6B3D: $80
    ret nz                                        ; $6B3E: $C0

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
    nop                                           ; $6B4E: $00
    nop                                           ; $6B4F: $00
    nop                                           ; $6B50: $00
    nop                                           ; $6B51: $00
    nop                                           ; $6B52: $00
    nop                                           ; $6B53: $00
    nop                                           ; $6B54: $00
    nop                                           ; $6B55: $00
    jr jr_014_6B58                                ; $6B56: $18 $00

jr_014_6B58:
    ld a, $18                                     ; $6B58: $3E $18
    ccf                                           ; $6B5A: $3F
    nop                                           ; $6B5B: $00
    cp $1F                                        ; $6B5C: $FE $1F
    rst RST_38                                    ; $6B5E: $FF
    ld e, b                                       ; $6B5F: $58
    nop                                           ; $6B60: $00
    nop                                           ; $6B61: $00
    nop                                           ; $6B62: $00
    nop                                           ; $6B63: $00
    nop                                           ; $6B64: $00
    nop                                           ; $6B65: $00
    nop                                           ; $6B66: $00
    nop                                           ; $6B67: $00
    nop                                           ; $6B68: $00
    nop                                           ; $6B69: $00
    nop                                           ; $6B6A: $00
    nop                                           ; $6B6B: $00
    nop                                           ; $6B6C: $00
    nop                                           ; $6B6D: $00
    nop                                           ; $6B6E: $00
    nop                                           ; $6B6F: $00
    nop                                           ; $6B70: $00
    nop                                           ; $6B71: $00
    nop                                           ; $6B72: $00
    nop                                           ; $6B73: $00
    nop                                           ; $6B74: $00

jr_014_6B75:
    nop                                           ; $6B75: $00
    nop                                           ; $6B76: $00

jr_014_6B77:
    nop                                           ; $6B77: $00
    nop                                           ; $6B78: $00
    nop                                           ; $6B79: $00
    add b                                         ; $6B7A: $80
    nop                                           ; $6B7B: $00
    ld b, b                                       ; $6B7C: $40
    add b                                         ; $6B7D: $80
    ret nz                                        ; $6B7E: $C0

    nop                                           ; $6B7F: $00
    ld bc, $0200                                  ; $6B80: $01 $00 $02
    ld bc, $0334                                  ; $6B83: $01 $34 $03
    ld e, b                                       ; $6B86: $58
    scf                                           ; $6B87: $37
    ld a, h                                       ; $6B88: $7C
    inc sp                                        ; $6B89: $33
    ccf                                           ; $6B8A: $3F
    inc c                                         ; $6B8B: $0C
    daa                                           ; $6B8C: $27
    rra                                           ; $6B8D: $1F
    inc de                                        ; $6B8E: $13
    rrca                                          ; $6B8F: $0F
    dec bc                                        ; $6B90: $0B
    rlca                                          ; $6B91: $07
    dec bc                                        ; $6B92: $0B
    ld b, $0F                                     ; $6B93: $06 $0F
    nop                                           ; $6B95: $00
    rra                                           ; $6B96: $1F
    ld c, $7F                                     ; $6B97: $0E $7F
    rrca                                          ; $6B99: $0F
    adc a                                         ; $6B9A: $8F
    ld [hl], a                                    ; $6B9B: $77
    rst RST_38                                    ; $6B9C: $FF
    nop                                           ; $6B9D: $00
    nop                                           ; $6B9E: $00
    nop                                           ; $6B9F: $00
    cp $00                                        ; $6BA0: $FE $00
    ld a, c                                       ; $6BA2: $79
    add [hl]                                      ; $6BA3: $86
    jr nc, jr_014_6B75                            ; $6BA4: $30 $CF

    jr nc, jr_014_6B77                            ; $6BA6: $30 $CF

    ret z                                         ; $6BA8: $C8

    rlca                                          ; $6BA9: $07
    inc b                                         ; $6BAA: $04
    inc bc                                        ; $6BAB: $03
    add e                                         ; $6BAC: $83
    nop                                           ; $6BAD: $00
    add e                                         ; $6BAE: $83
    ld bc, $0183                                  ; $6BAF: $01 $83 $01
    ld bc, $0000                                  ; $6BB2: $01 $00 $00
    nop                                           ; $6BB5: $00
    nop                                           ; $6BB6: $00
    nop                                           ; $6BB7: $00
    add b                                         ; $6BB8: $80
    nop                                           ; $6BB9: $00
    add b                                         ; $6BBA: $80
    nop                                           ; $6BBB: $00
    add b                                         ; $6BBC: $80
    nop                                           ; $6BBD: $00
    nop                                           ; $6BBE: $00
    nop                                           ; $6BBF: $00
    ccf                                           ; $6BC0: $3F
    nop                                           ; $6BC1: $00
    nop                                           ; $6BC2: $00
    nop                                           ; $6BC3: $00
    add b                                         ; $6BC4: $80
    nop                                           ; $6BC5: $00
    add b                                         ; $6BC6: $80
    nop                                           ; $6BC7: $00
    ld e, b                                       ; $6BC8: $58
    add b                                         ; $6BC9: $80
    ld a, [hl]                                    ; $6BCA: $7E
    sbc b                                         ; $6BCB: $98
    rst RST_38                                    ; $6BCC: $FF
    ld a, $FF                                     ; $6BCD: $3E $FF
    cp [hl]                                       ; $6BCF: $BE
    rst RST_00                                    ; $6BD0: $C7
    cp a                                          ; $6BD1: $BF
    ld sp, hl                                     ; $6BD2: $F9
    rlca                                          ; $6BD3: $07
    ld b, $01                                     ; $6BD4: $06 $01
    ld bc, $0000                                  ; $6BD6: $01 $00 $00
    nop                                           ; $6BD9: $00
    ld bc, $0200                                  ; $6BDA: $01 $00 $02
    ld bc, $0003                                  ; $6BDD: $01 $03 $00
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
    add b                                         ; $6BF0: $80
    nop                                           ; $6BF1: $00
    ldh a, [$FF80]                                ; $6BF2: $F0 $80
    ld hl, sp+$70                                 ; $6BF4: $F8 $70
    ld hl, sp-$10                                 ; $6BF6: $F8 $F0
    ld hl, sp+$70                                 ; $6BF8: $F8 $70
    ld hl, sp+$10                                 ; $6BFA: $F8 $10
    jr @-$1E                                      ; $6BFC: $18 $E0

    ld hl, sp+$00                                 ; $6BFE: $F8 $00
    nop                                           ; $6C00: $00
    nop                                           ; $6C01: $00
    nop                                           ; $6C02: $00
    nop                                           ; $6C03: $00
    nop                                           ; $6C04: $00
    nop                                           ; $6C05: $00
    nop                                           ; $6C06: $00
    nop                                           ; $6C07: $00
    ld c, $00                                     ; $6C08: $0E $00
    scf                                           ; $6C0A: $37
    ld c, $5F                                     ; $6C0B: $0E $5F
    jr nc, @-$3F                                  ; $6C0D: $30 $BF

    ld [hl], a                                    ; $6C0F: $77
    rst RST_38                                    ; $6C10: $FF
    ld l, h                                       ; $6C11: $6C
    cp $49                                        ; $6C12: $FE $49
    ld e, [hl]                                    ; $6C14: $5E
    add hl, hl                                    ; $6C15: $29
    cp a                                          ; $6C16: $BF
    ld c, h                                       ; $6C17: $4C
    cp a                                          ; $6C18: $BF
    ld b, a                                       ; $6C19: $47
    ld d, a                                       ; $6C1A: $57
    ld [$0814], sp                                ; $6C1B: $08 $14 $08
    ld [$0000], sp                                ; $6C1E: $08 $00 $00
    nop                                           ; $6C21: $00
    nop                                           ; $6C22: $00
    nop                                           ; $6C23: $00
    ld bc, $0100                                  ; $6C24: $01 $00 $01
    nop                                           ; $6C27: $00
    rra                                           ; $6C28: $1F
    nop                                           ; $6C29: $00
    db $10                                        ; $6C2A: $10
    rrca                                          ; $6C2B: $0F
    or b                                          ; $6C2C: $B0
    rrca                                          ; $6C2D: $0F
    ret z                                         ; $6C2E: $C8

    scf                                           ; $6C2F: $37
    ld [$04F7], sp                                ; $6C30: $08 $F7 $04
    ei                                            ; $6C33: $FB
    ld e, $E1                                     ; $6C34: $1E $E1
    pop hl                                        ; $6C36: $E1
    nop                                           ; $6C37: $00
    ret nz                                        ; $6C38: $C0

    add b                                         ; $6C39: $80
    add b                                         ; $6C3A: $80
    nop                                           ; $6C3B: $00
    nop                                           ; $6C3C: $00
    nop                                           ; $6C3D: $00
    nop                                           ; $6C3E: $00
    nop                                           ; $6C3F: $00
    ld a, [bc]                                    ; $6C40: $0A
    nop                                           ; $6C41: $00
    sub l                                         ; $6C42: $95
    ld a, [bc]                                    ; $6C43: $0A
    ld h, a                                       ; $6C44: $67
    sbc b                                         ; $6C45: $98
    ld l, a                                       ; $6C46: $6F
    sub a                                         ; $6C47: $97
    cp a                                          ; $6C48: $BF
    ret nc                                        ; $6C49: $D0

    ldh a, [rIF]                                  ; $6C4A: $F0 $0F
    ld b, b                                       ; $6C4C: $40
    cp a                                          ; $6C4D: $BF
    ld b, b                                       ; $6C4E: $40
    cp a                                          ; $6C4F: $BF
    ld b, b                                       ; $6C50: $40
    cp a                                          ; $6C51: $BF
    ld b, b                                       ; $6C52: $40
    cp a                                          ; $6C53: $BF
    ld b, b                                       ; $6C54: $40

jr_014_6C55:
    cp a                                          ; $6C55: $BF
    add b                                         ; $6C56: $80
    ld a, a                                       ; $6C57: $7F
    ld c, a                                       ; $6C58: $4F
    jr nc, @+$32                                  ; $6C59: $30 $30

    rrca                                          ; $6C5B: $0F
    db $10                                        ; $6C5C: $10
    rrca                                          ; $6C5D: $0F
    rrca                                          ; $6C5E: $0F
    nop                                           ; $6C5F: $00
    nop                                           ; $6C60: $00
    nop                                           ; $6C61: $00
    jr jr_014_6C64                                ; $6C62: $18 $00

jr_014_6C64:
    xor b                                         ; $6C64: $A8
    db $10                                        ; $6C65: $10
    ret c                                         ; $6C66: $D8

    or b                                          ; $6C67: $B0
    ldh a, [$FF60]                                ; $6C68: $F0 $60
    ld [hl], a                                    ; $6C6A: $77
    add b                                         ; $6C6B: $80
    jr jr_014_6C55                                ; $6C6C: $18 $E7

    db $10                                        ; $6C6E: $10
    rst RST_28                                    ; $6C6F: $EF
    inc de                                        ; $6C70: $13
    db $EC                                        ; $6C71: $EC
    inc c                                         ; $6C72: $0C
    di                                            ; $6C73: $F3
    ld [$08F7], sp                                ; $6C74: $08 $F7 $08
    rst RST_30                                    ; $6C77: $F7
    call nc, $3723                                ; $6C78: $D4 $23 $37
    ret nz                                        ; $6C7B: $C0

    daa                                           ; $6C7C: $27
    jp Jump_000_00E7                              ; $6C7D: $C3 $E7 $00


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
    ldh [rP1], a                                  ; $6C8A: $E0 $00
    db $10                                        ; $6C8C: $10
    ldh [rSVBK], a                                ; $6C8D: $E0 $70
    add b                                         ; $6C8F: $80
    ldh a, [rP1]                                  ; $6C90: $F0 $00
    ret nz                                        ; $6C92: $C0

    nop                                           ; $6C93: $00
    ld h, b                                       ; $6C94: $60

jr_014_6C95:
    add b                                         ; $6C95: $80
    ld [hl], b                                    ; $6C96: $70

jr_014_6C97:
    add b                                         ; $6C97: $80
    ld a, b                                       ; $6C98: $78
    and b                                         ; $6C99: $A0
    ld hl, sp+$60                                 ; $6C9A: $F8 $60
    ld hl, sp-$20                                 ; $6C9C: $F8 $E0
    ld hl, sp+$00                                 ; $6C9E: $F8 $00
    ld bc, $0200                                  ; $6CA0: $01 $00 $02
    ld bc, $0334                                  ; $6CA3: $01 $34 $03
    ld e, b                                       ; $6CA6: $58
    scf                                           ; $6CA7: $37
    ld a, h                                       ; $6CA8: $7C
    inc sp                                        ; $6CA9: $33
    ccf                                           ; $6CAA: $3F
    inc c                                         ; $6CAB: $0C
    daa                                           ; $6CAC: $27
    rra                                           ; $6CAD: $1F
    inc de                                        ; $6CAE: $13
    rrca                                          ; $6CAF: $0F
    dec bc                                        ; $6CB0: $0B
    rlca                                          ; $6CB1: $07
    dec bc                                        ; $6CB2: $0B
    ld b, $0F                                     ; $6CB3: $06 $0F
    nop                                           ; $6CB5: $00
    rra                                           ; $6CB6: $1F
    ld c, $7F                                     ; $6CB7: $0E $7F
    rrca                                          ; $6CB9: $0F
    adc a                                         ; $6CBA: $8F
    ld [hl], a                                    ; $6CBB: $77
    rst RST_38                                    ; $6CBC: $FF
    nop                                           ; $6CBD: $00
    nop                                           ; $6CBE: $00
    nop                                           ; $6CBF: $00
    rst RST_38                                    ; $6CC0: $FF
    nop                                           ; $6CC1: $00
    ld a, c                                       ; $6CC2: $79
    add [hl]                                      ; $6CC3: $86
    jr nc, jr_014_6C95                            ; $6CC4: $30 $CF

    jr nc, jr_014_6C97                            ; $6CC6: $30 $CF

    ret z                                         ; $6CC8: $C8

    rlca                                          ; $6CC9: $07
    inc b                                         ; $6CCA: $04
    inc bc                                        ; $6CCB: $03
    add e                                         ; $6CCC: $83
    nop                                           ; $6CCD: $00
    add e                                         ; $6CCE: $83
    ld bc, $0183                                  ; $6CCF: $01 $83 $01
    ld bc, $0000                                  ; $6CD2: $01 $00 $00
    nop                                           ; $6CD5: $00
    nop                                           ; $6CD6: $00
    nop                                           ; $6CD7: $00
    add b                                         ; $6CD8: $80
    nop                                           ; $6CD9: $00
    add b                                         ; $6CDA: $80
    nop                                           ; $6CDB: $00
    add b                                         ; $6CDC: $80
    nop                                           ; $6CDD: $00
    nop                                           ; $6CDE: $00
    nop                                           ; $6CDF: $00
    rst RST_38                                    ; $6CE0: $FF
    ei                                            ; $6CE1: $FB
    rst RST_38                                    ; $6CE2: $FF
    ld b, $BE                                     ; $6CE3: $06 $BE
    nop                                           ; $6CE5: $00
    add b                                         ; $6CE6: $80
    nop                                           ; $6CE7: $00
    ld e, b                                       ; $6CE8: $58
    add b                                         ; $6CE9: $80
    ld a, [hl]                                    ; $6CEA: $7E
    sbc b                                         ; $6CEB: $98
    rst RST_38                                    ; $6CEC: $FF
    ld a, $FF                                     ; $6CED: $3E $FF
    cp [hl]                                       ; $6CEF: $BE
    rst RST_00                                    ; $6CF0: $C7
    cp a                                          ; $6CF1: $BF
    ld sp, hl                                     ; $6CF2: $F9
    rlca                                          ; $6CF3: $07
    ld b, $01                                     ; $6CF4: $06 $01
    ld bc, $0000                                  ; $6CF6: $01 $00 $00
    nop                                           ; $6CF9: $00
    ld bc, $0200                                  ; $6CFA: $01 $00 $02
    ld bc, $0003                                  ; $6CFD: $01 $03 $00
    add b                                         ; $6D00: $80
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
    add b                                         ; $6D10: $80
    nop                                           ; $6D11: $00
    ldh a, [$FF80]                                ; $6D12: $F0 $80
    ld hl, sp+$70                                 ; $6D14: $F8 $70
    ld hl, sp-$10                                 ; $6D16: $F8 $F0
    ld hl, sp+$70                                 ; $6D18: $F8 $70
    ld hl, sp+$10                                 ; $6D1A: $F8 $10
    jr @-$1E                                      ; $6D1C: $18 $E0

    ld hl, sp+$00                                 ; $6D1E: $F8 $00
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
    rlca                                          ; $6D2A: $07
    nop                                           ; $6D2B: $00
    rrca                                          ; $6D2C: $0F
    rlca                                          ; $6D2D: $07
    ld a, a                                       ; $6D2E: $7F
    inc c                                         ; $6D2F: $0C
    sbc [hl]                                      ; $6D30: $9E
    ld l, c                                       ; $6D31: $69
    ld a, h                                       ; $6D32: $7C
    dec de                                        ; $6D33: $1B
    ld a, [hl]                                    ; $6D34: $7E
    add hl, de                                    ; $6D35: $19
    sbc a                                         ; $6D36: $9F

jr_014_6D37:
    ld l, h                                       ; $6D37: $6C
    ld a, a                                       ; $6D38: $7F
    rlca                                          ; $6D39: $07
    rlca                                          ; $6D3A: $07
    nop                                           ; $6D3B: $00
    nop                                           ; $6D3C: $00
    nop                                           ; $6D3D: $00
    nop                                           ; $6D3E: $00
    nop                                           ; $6D3F: $00
    nop                                           ; $6D40: $00
    nop                                           ; $6D41: $00
    inc bc                                        ; $6D42: $03
    nop                                           ; $6D43: $00
    ld a, [de]                                    ; $6D44: $1A
    ld bc, $1927                                  ; $6D45: $01 $27 $19
    ld hl, $A01E                                  ; $6D48: $21 $1E $A0
    rra                                           ; $6D4B: $1F
    pop hl                                        ; $6D4C: $E1
    sbc [hl]                                      ; $6D4D: $9E
    sub c                                         ; $6D4E: $91
    ld l, [hl]                                    ; $6D4F: $6E
    ld [de], a                                    ; $6D50: $12
    db $ED                                        ; $6D51: $ED
    ld a, [bc]                                    ; $6D52: $0A
    push af                                       ; $6D53: $F5
    ld [hl], $C1                                  ; $6D54: $36 $C1
    pop hl                                        ; $6D56: $E1
    nop                                           ; $6D57: $00
    pop bc                                        ; $6D58: $C1
    nop                                           ; $6D59: $00
    add b                                         ; $6D5A: $80
    nop                                           ; $6D5B: $00
    nop                                           ; $6D5C: $00
    nop                                           ; $6D5D: $00
    nop                                           ; $6D5E: $00
    nop                                           ; $6D5F: $00
    inc d                                         ; $6D60: $14
    nop                                           ; $6D61: $00
    ld a, [hl+]                                   ; $6D62: $2A
    inc d                                         ; $6D63: $14
    rst RST_08                                    ; $6D64: $CF
    jr nc, @+$61                                  ; $6D65: $30 $5F

    xor a                                         ; $6D67: $AF
    rst RST_38                                    ; $6D68: $FF
    and b                                         ; $6D69: $A0
    ldh [$FF1F], a                                ; $6D6A: $E0 $1F
    nop                                           ; $6D6C: $00
    rst RST_38                                    ; $6D6D: $FF
    nop                                           ; $6D6E: $00
    rst RST_38                                    ; $6D6F: $FF
    nop                                           ; $6D70: $00
    rst RST_38                                    ; $6D71: $FF
    nop                                           ; $6D72: $00
    rst RST_38                                    ; $6D73: $FF
    nop                                           ; $6D74: $00
    rst RST_38                                    ; $6D75: $FF
    nop                                           ; $6D76: $00
    rst RST_38                                    ; $6D77: $FF
    ld a, [hl]                                    ; $6D78: $7E
    add c                                         ; $6D79: $81
    add c                                         ; $6D7A: $81
    ld a, [hl]                                    ; $6D7B: $7E
    ld b, b                                       ; $6D7C: $40
    ccf                                           ; $6D7D: $3F
    ccf                                           ; $6D7E: $3F
    nop                                           ; $6D7F: $00
    nop                                           ; $6D80: $00
    nop                                           ; $6D81: $00
    jr nc, jr_014_6D84                            ; $6D82: $30 $00

jr_014_6D84:
    ld d, b                                       ; $6D84: $50
    jr nz, jr_014_6D37                            ; $6D85: $20 $B0

    ld h, b                                       ; $6D87: $60
    ldh [$FFC0], a                                ; $6D88: $E0 $C0
    ret c                                         ; $6D8A: $D8

    nop                                           ; $6D8B: $00
    ld h, $D8                                     ; $6D8C: $26 $D8
    ld b, c                                       ; $6D8E: $41
    cp [hl]                                       ; $6D8F: $BE
    ld b, b                                       ; $6D90: $40
    cp a                                          ; $6D91: $BF
    ld a, a                                       ; $6D92: $7F
    add b                                         ; $6D93: $80
    inc hl                                        ; $6D94: $23
    call c, $BC43                                 ; $6D95: $DC $43 $BC
    ld b, a                                       ; $6D98: $47
    cp b                                          ; $6D99: $B8
    rst RST_00                                    ; $6D9A: $C7
    dec sp                                        ; $6D9B: $3B
    rst RST_28                                    ; $6D9C: $EF
    ld d, e                                       ; $6D9D: $53
    rst RST_38                                    ; $6D9E: $FF
    ld b, e                                       ; $6D9F: $43
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
    add b                                         ; $6DB0: $80
    nop                                           ; $6DB1: $00
    ld b, b                                       ; $6DB2: $40
    add b                                         ; $6DB3: $80
    ld b, b                                       ; $6DB4: $40
    add b                                         ; $6DB5: $80
    add b                                         ; $6DB6: $80
    nop                                           ; $6DB7: $00
    ldh [rP1], a                                  ; $6DB8: $E0 $00
    ret nc                                        ; $6DBA: $D0

    ld h, b                                       ; $6DBB: $60
    ldh a, [rNR41]                                ; $6DBC: $F0 $20
    and b                                         ; $6DBE: $A0
    ld b, b                                       ; $6DBF: $40
    rlca                                          ; $6DC0: $07
    nop                                           ; $6DC1: $00
    ld bc, $3600                                  ; $6DC2: $01 $00 $36
    ld bc, $3758                                  ; $6DC5: $01 $58 $37
    ld a, h                                       ; $6DC8: $7C
    inc sp                                        ; $6DC9: $33
    ccf                                           ; $6DCA: $3F
    inc c                                         ; $6DCB: $0C
    daa                                           ; $6DCC: $27
    rra                                           ; $6DCD: $1F
    inc de                                        ; $6DCE: $13
    rrca                                          ; $6DCF: $0F
    dec bc                                        ; $6DD0: $0B
    rlca                                          ; $6DD1: $07
    dec bc                                        ; $6DD2: $0B
    ld b, $0F                                     ; $6DD3: $06 $0F
    nop                                           ; $6DD5: $00
    rra                                           ; $6DD6: $1F
    ld c, $7F                                     ; $6DD7: $0E $7F
    rrca                                          ; $6DD9: $0F
    adc a                                         ; $6DDA: $8F
    ld [hl], a                                    ; $6DDB: $77
    rst RST_38                                    ; $6DDC: $FF
    nop                                           ; $6DDD: $00
    nop                                           ; $6DDE: $00
    nop                                           ; $6DDF: $00
    rst RST_38                                    ; $6DE0: $FF
    nop                                           ; $6DE1: $00
    cp $00                                        ; $6DE2: $FE $00
    add hl, sp                                    ; $6DE4: $39
    add $30                                       ; $6DE5: $C6 $30
    rst RST_08                                    ; $6DE7: $CF
    jr nc, @-$2F                                  ; $6DE8: $30 $CF

    ret z                                         ; $6DEA: $C8

    rlca                                          ; $6DEB: $07
    add h                                         ; $6DEC: $84
    inc bc                                        ; $6DED: $03
    add e                                         ; $6DEE: $83
    nop                                           ; $6DEF: $00
    add d                                         ; $6DF0: $82
    ld bc, $0103                                  ; $6DF1: $01 $03 $01
    ld bc, $0000                                  ; $6DF4: $01 $00 $00
    nop                                           ; $6DF7: $00
    add b                                         ; $6DF8: $80
    nop                                           ; $6DF9: $00
    add b                                         ; $6DFA: $80
    nop                                           ; $6DFB: $00
    add b                                         ; $6DFC: $80
    nop                                           ; $6DFD: $00
    nop                                           ; $6DFE: $00
    nop                                           ; $6DFF: $00
    cp $E0                                        ; $6E00: $FE $E0
    cp $7C                                        ; $6E02: $FE $7C
    ld a, h                                       ; $6E04: $7C
    nop                                           ; $6E05: $00
    add b                                         ; $6E06: $80
    nop                                           ; $6E07: $00
    add b                                         ; $6E08: $80
    nop                                           ; $6E09: $00
    ld b, b                                       ; $6E0A: $40
    add b                                         ; $6E0B: $80
    ld e, h                                       ; $6E0C: $5C
    add b                                         ; $6E0D: $80

jr_014_6E0E:
    rst RST_38                                    ; $6E0E: $FF
    inc e                                         ; $6E0F: $1C
    rst RST_38                                    ; $6E10: $FF
    cp a                                          ; $6E11: $BF
    rst RST_38                                    ; $6E12: $FF
    cp a                                          ; $6E13: $BF
    ret nz                                        ; $6E14: $C0

    ccf                                           ; $6E15: $3F
    ccf                                           ; $6E16: $3F
    nop                                           ; $6E17: $00
    nop                                           ; $6E18: $00
    nop                                           ; $6E19: $00
    ld bc, $0200                                  ; $6E1A: $01 $00 $02
    ld bc, $0003                                  ; $6E1D: $01 $03 $00
    add b                                         ; $6E20: $80
    nop                                           ; $6E21: $00
    ldh a, [$FF80]                                ; $6E22: $F0 $80
    ld hl, sp+$70                                 ; $6E24: $F8 $70
    ld hl, sp-$10                                 ; $6E26: $F8 $F0
    ld hl, sp+$70                                 ; $6E28: $F8 $70
    ld hl, sp+$10                                 ; $6E2A: $F8 $10
    jr jr_014_6E0E                                ; $6E2C: $18 $E0

    ld hl, sp+$00                                 ; $6E2E: $F8 $00
    nop                                           ; $6E30: $00
    nop                                           ; $6E31: $00
    nop                                           ; $6E32: $00
    nop                                           ; $6E33: $00
    nop                                           ; $6E34: $00
    nop                                           ; $6E35: $00
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
    inc e                                         ; $6E40: $1C
    nop                                           ; $6E41: $00
    ld l, $1C                                     ; $6E42: $2E $1C
    ld e, a                                       ; $6E44: $5F
    jr nc, jr_014_6EB8                            ; $6E45: $30 $71

    ld c, $BF                                     ; $6E47: $0E $BF
    ld l, h                                       ; $6E49: $6C
    cp a                                          ; $6E4A: $BF
    ld l, l                                       ; $6E4B: $6D
    ld a, a                                       ; $6E4C: $7F
    inc c                                         ; $6E4D: $0C
    ld e, a                                       ; $6E4E: $5F
    scf                                           ; $6E4F: $37
    ld a, a                                       ; $6E50: $7F
    scf                                           ; $6E51: $37
    ccf                                           ; $6E52: $3F
    nop                                           ; $6E53: $00
    nop                                           ; $6E54: $00
    nop                                           ; $6E55: $00
    ld bc, $0200                                  ; $6E56: $01 $00 $02
    ld bc, $0003                                  ; $6E59: $01 $03 $00
    ld bc, $0000                                  ; $6E5C: $01 $00 $00
    nop                                           ; $6E5F: $00
    nop                                           ; $6E60: $00
    nop                                           ; $6E61: $00
    ld [bc], a                                    ; $6E62: $02
    nop                                           ; $6E63: $00
    ld [hl], l                                    ; $6E64: $75
    ld [bc], a                                    ; $6E65: $02
    rst RST_38                                    ; $6E66: $FF
    ld [hl], b                                    ; $6E67: $70
    ldh a, [c]                                    ; $6E68: $F2
    ld l, l                                       ; $6E69: $6D
    db $FC                                        ; $6E6A: $FC
    di                                            ; $6E6B: $F3
    db $FC                                        ; $6E6C: $FC
    ld [hl], e                                    ; $6E6D: $73

jr_014_6E6E:
    ldh a, [c]                                    ; $6E6E: $F2
    ld l, l                                       ; $6E6F: $6D

jr_014_6E70:
    db $FC                                        ; $6E70: $FC
    ld [hl], e                                    ; $6E71: $73

jr_014_6E72:
    ld [hl], b                                    ; $6E72: $70
    rrca                                          ; $6E73: $0F
    rst RST_38                                    ; $6E74: $FF
    jr nc, @+$01                                  ; $6E75: $30 $FF

    db $E3                                        ; $6E77: $E3

jr_014_6E78:
    rst RST_38                                    ; $6E78: $FF
    ld a, a                                       ; $6E79: $7F

jr_014_6E7A:
    rst RST_38                                    ; $6E7A: $FF
    ld a, [hl]                                    ; $6E7B: $7E
    rst RST_38                                    ; $6E7C: $FF
    call z, $39FE                                 ; $6E7D: $CC $FE $39
    nop                                           ; $6E80: $00
    nop                                           ; $6E81: $00
    add b                                         ; $6E82: $80
    nop                                           ; $6E83: $00
    ld b, [hl]                                    ; $6E84: $46
    add b                                         ; $6E85: $80
    ld [$F604], a                                 ; $6E86: $EA $04 $F6
    inc l                                         ; $6E89: $2C
    ld a, a                                       ; $6E8A: $7F
    sbc b                                         ; $6E8B: $98
    ld e, b                                       ; $6E8C: $58
    and a                                         ; $6E8D: $A7
    ld b, h                                       ; $6E8E: $44
    cp e                                          ; $6E8F: $BB
    ld b, h                                       ; $6E90: $44
    cp e                                          ; $6E91: $BB
    add e                                         ; $6E92: $83
    ld a, h                                       ; $6E93: $7C
    add d                                         ; $6E94: $82
    ld a, l                                       ; $6E95: $7D
    add d                                         ; $6E96: $82
    ld a, l                                       ; $6E97: $7D
    add d                                         ; $6E98: $82

Call_014_6E99:
    ld a, l                                       ; $6E99: $7D
    inc bc                                        ; $6E9A: $03
    db $FC                                        ; $6E9B: $FC
    rst RST_20                                    ; $6E9C: $E7
    ld a, [de]                                    ; $6E9D: $1A
    rra                                           ; $6E9E: $1F
    and $00                                       ; $6E9F: $E6 $00
    nop                                           ; $6EA1: $00
    nop                                           ; $6EA2: $00
    nop                                           ; $6EA3: $00
    nop                                           ; $6EA4: $00
    nop                                           ; $6EA5: $00
    nop                                           ; $6EA6: $00
    nop                                           ; $6EA7: $00
    nop                                           ; $6EA8: $00
    nop                                           ; $6EA9: $00
    ret nz                                        ; $6EAA: $C0

    nop                                           ; $6EAB: $00
    jr nz, jr_014_6E6E                            ; $6EAC: $20 $C0

    jr nz, jr_014_6E70                            ; $6EAE: $20 $C0

    jr nz, jr_014_6E72                            ; $6EB0: $20 $C0

    ret nz                                        ; $6EB2: $C0

    nop                                           ; $6EB3: $00
    ld b, b                                       ; $6EB4: $40
    add b                                         ; $6EB5: $80
    jr nz, jr_014_6E78                            ; $6EB6: $20 $C0

jr_014_6EB8:
    jr nz, jr_014_6E7A                            ; $6EB8: $20 $C0

    db $10                                        ; $6EBA: $10
    ldh [rNR10], a                                ; $6EBB: $E0 $10
    ldh [$FFF0], a                                ; $6EBD: $E0 $F0
    nop                                           ; $6EBF: $00
    ld e, a                                       ; $6EC0: $5F
    ld a, [hl-]                                   ; $6EC1: $3A
    ld a, a                                       ; $6EC2: $7F
    dec sp                                        ; $6EC3: $3B
    ccf                                           ; $6EC4: $3F
    rlca                                          ; $6EC5: $07
    rrca                                          ; $6EC6: $0F
    nop                                           ; $6EC7: $00
    ld d, $0D                                     ; $6EC8: $16 $0D

jr_014_6ECA:
    rra                                           ; $6ECA: $1F
    inc c                                         ; $6ECB: $0C

jr_014_6ECC:
    rrca                                          ; $6ECC: $0F
    inc bc                                        ; $6ECD: $03
    add hl, bc                                    ; $6ECE: $09
    rlca                                          ; $6ECF: $07
    inc b                                         ; $6ED0: $04
    inc bc                                        ; $6ED1: $03
    ld [bc], a                                    ; $6ED2: $02
    ld bc, $0102                                  ; $6ED3: $01 $02 $01
    inc bc                                        ; $6ED6: $03
    nop                                           ; $6ED7: $00
    rlca                                          ; $6ED8: $07
    inc bc                                        ; $6ED9: $03
    rra                                           ; $6EDA: $1F
    inc bc                                        ; $6EDB: $03
    inc hl                                        ; $6EDC: $23
    dec e                                         ; $6EDD: $1D
    ccf                                           ; $6EDE: $3F
    nop                                           ; $6EDF: $00
    rst RST_38                                    ; $6EE0: $FF
    sub b                                         ; $6EE1: $90
    rst RST_38                                    ; $6EE2: $FF
    ld h, b                                       ; $6EE3: $60
    rst RST_38                                    ; $6EE4: $FF
    nop                                           ; $6EE5: $00
    rst RST_38                                    ; $6EE6: $FF
    nop                                           ; $6EE7: $00
    adc [hl]                                      ; $6EE8: $8E
    ld [hl], c                                    ; $6EE9: $71
    inc c                                         ; $6EEA: $0C
    di                                            ; $6EEB: $F3
    inc c                                         ; $6EEC: $0C
    di                                            ; $6EED: $F3
    ldh a, [c]                                    ; $6EEE: $F2
    ld bc, $C0E1                                  ; $6EEF: $01 $E1 $C0
    ldh [$FFC0], a                                ; $6EF2: $E0 $C0
    ldh [$FFC0], a                                ; $6EF4: $E0 $C0
    ret nz                                        ; $6EF6: $C0

    add b                                         ; $6EF7: $80
    ret nz                                        ; $6EF8: $C0

    nop                                           ; $6EF9: $00
    ret nz                                        ; $6EFA: $C0

    add b                                         ; $6EFB: $80
    ldh [$FFC0], a                                ; $6EFC: $E0 $C0
    ldh [$FFC0], a                                ; $6EFE: $E0 $C0
    add b                                         ; $6F00: $80
    nop                                           ; $6F01: $00
    add b                                         ; $6F02: $80
    nop                                           ; $6F03: $00
    add b                                         ; $6F04: $80
    nop                                           ; $6F05: $00
    ld b, b                                       ; $6F06: $40
    add b                                         ; $6F07: $80
    jr nz, jr_014_6ECA                            ; $6F08: $20 $C0

    jr nz, jr_014_6ECC                            ; $6F0A: $20 $C0

    db $10                                        ; $6F0C: $10
    ldh [rNR22], a                                ; $6F0D: $E0 $17
    ldh [rIE], a                                  ; $6F0F: $E0 $FF
    rlca                                          ; $6F11: $07
    cp a                                          ; $6F12: $BF
    ld l, a                                       ; $6F13: $6F
    rst RST_38                                    ; $6F14: $FF
    ld l, a                                       ; $6F15: $6F
    ld [hl], b                                    ; $6F16: $70
    rrca                                          ; $6F17: $0F
    rrca                                          ; $6F18: $0F
    nop                                           ; $6F19: $00
    nop                                           ; $6F1A: $00
    nop                                           ; $6F1B: $00
    nop                                           ; $6F1C: $00
    nop                                           ; $6F1D: $00
    nop                                           ; $6F1E: $00
    nop                                           ; $6F1F: $00
    ret nz                                        ; $6F20: $C0

    nop                                           ; $6F21: $00
    ldh [$FFC0], a                                ; $6F22: $E0 $C0
    db $FC                                        ; $6F24: $FC
    ldh [$FF3E], a                                ; $6F25: $E0 $3E
    call c, Call_000_3CFE                         ; $6F27: $DC $FE $3C
    ld a, $1C                                     ; $6F2A: $3E $1C
    ld a, [hl]                                    ; $6F2C: $7E
    inc b                                         ; $6F2D: $04
    add [hl]                                      ; $6F2E: $86
    ld a, b                                       ; $6F2F: $78
    cp $00                                        ; $6F30: $FE $00
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
    ld bc, $0200                                  ; $6F40: $01 $00 $02
    ld bc, $0102                                  ; $6F43: $01 $02 $01
    inc bc                                        ; $6F46: $03
    ld bc, $0003                                  ; $6F47: $01 $03 $00
    ld [bc], a                                    ; $6F4A: $02
    ld bc, $0001                                  ; $6F4B: $01 $01 $00
    ld bc, $0000                                  ; $6F4E: $01 $00 $00
    nop                                           ; $6F51: $00
    nop                                           ; $6F52: $00
    nop                                           ; $6F53: $00
    inc c                                         ; $6F54: $0C
    nop                                           ; $6F55: $00
    inc de                                        ; $6F56: $13
    inc c                                         ; $6F57: $0C
    ld [hl], a                                    ; $6F58: $77
    dec c                                         ; $6F59: $0D
    or l                                          ; $6F5A: $B5
    ld l, d                                       ; $6F5B: $6A
    cp a                                          ; $6F5C: $BF
    ld [hl], b                                    ; $6F5D: $70
    ld a, a                                       ; $6F5E: $7F
    dec b                                         ; $6F5F: $05
    and b                                         ; $6F60: $A0
    nop                                           ; $6F61: $00
    ld d, a                                       ; $6F62: $57
    and b                                         ; $6F63: $A0
    sbc c                                         ; $6F64: $99
    ld h, a                                       ; $6F65: $67
    or a                                          ; $6F66: $B7
    ld l, [hl]                                    ; $6F67: $6E
    rst RST_38                                    ; $6F68: $FF
    ld b, c                                       ; $6F69: $41
    call nz, $373B                                ; $6F6A: $C4 $3B $37
    set 6, a                                      ; $6F6D: $CB $F7
    dec hl                                        ; $6F6F: $2B
    ld [hl], a                                    ; $6F70: $77
    adc b                                         ; $6F71: $88
    sbc a                                         ; $6F72: $9F
    ld [hl], e                                    ; $6F73: $73
    rst RST_18                                    ; $6F74: $DF
    ld h, a                                       ; $6F75: $67
    ld a, a                                       ; $6F76: $7F
    inc e                                         ; $6F77: $1C
    rst RST_38                                    ; $6F78: $FF
    ld h, [hl]                                    ; $6F79: $66
    rst RST_38                                    ; $6F7A: $FF
    add $FF                                       ; $6F7B: $C6 $FF
    cp $FE                                        ; $6F7D: $FE $FE
    db $FD                                        ; $6F7F: $FD
    jr nc, jr_014_6F82                            ; $6F80: $30 $00

jr_014_6F82:
    call c, $AF20                                 ; $6F82: $DC $20 $AF
    ld e, h                                       ; $6F85: $5C
    ld a, a                                       ; $6F86: $7F
    sub c                                         ; $6F87: $91
    cp a                                          ; $6F88: $BF
    ld l, [hl]                                    ; $6F89: $6E
    rst RST_38                                    ; $6F8A: $FF
    ld e, c                                       ; $6F8B: $59
    rst RST_18                                    ; $6F8C: $DF
    ld [hl], $DF                                  ; $6F8D: $36 $DF
    scf                                           ; $6F8F: $37
    xor a                                         ; $6F90: $AF
    ld e, e                                       ; $6F91: $5B
    cp a                                          ; $6F92: $BF
    ld b, a                                       ; $6F93: $47
    ld c, a                                       ; $6F94: $4F

jr_014_6F95:
    or [hl]                                       ; $6F95: $B6
    ld b, a                                       ; $6F96: $47
    cp d                                          ; $6F97: $BA
    inc sp                                        ; $6F98: $33
    call $C12F                                    ; $6F99: $CD $2F $C1
    ld b, c                                       ; $6F9C: $41
    add b                                         ; $6F9D: $80
    add b                                         ; $6F9E: $80
    nop                                           ; $6F9F: $00
    nop                                           ; $6FA0: $00
    nop                                           ; $6FA1: $00
    nop                                           ; $6FA2: $00
    nop                                           ; $6FA3: $00
    nop                                           ; $6FA4: $00
    nop                                           ; $6FA5: $00
    add b                                         ; $6FA6: $80
    nop                                           ; $6FA7: $00
    ret nz                                        ; $6FA8: $C0

    add b                                         ; $6FA9: $80
    ret nz                                        ; $6FAA: $C0

    add b                                         ; $6FAB: $80
    add b                                         ; $6FAC: $80
    nop                                           ; $6FAD: $00
    add b                                         ; $6FAE: $80
    nop                                           ; $6FAF: $00
    ldh [rP1], a                                  ; $6FB0: $E0 $00
    ret nc                                        ; $6FB2: $D0

    and b                                         ; $6FB3: $A0
    add sp, -$30                                  ; $6FB4: $E8 $D0
    db $F4                                        ; $6FB6: $F4
    ld l, b                                       ; $6FB7: $68
    ld a, h                                       ; $6FB8: $7C
    or b                                          ; $6FB9: $B0
    cp b                                          ; $6FBA: $B8
    ld d, b                                       ; $6FBB: $50
    ret nc                                        ; $6FBC: $D0

    and b                                         ; $6FBD: $A0
    ldh [rP1], a                                  ; $6FBE: $E0 $00
    ldh [rP1], a                                  ; $6FC0: $E0 $00
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
    sbc h                                         ; $6FE0: $9C
    ld a, b                                       ; $6FE1: $78
    ret z                                         ; $6FE2: $C8

    jr nc, jr_014_6F95                            ; $6FE3: $30 $B0

    ld b, b                                       ; $6FE5: $40
    ld d, b                                       ; $6FE6: $50
    jr nz, jr_014_7011                            ; $6FE7: $20 $28

    db $10                                        ; $6FE9: $10
    jr jr_014_6FEC                                ; $6FEA: $18 $00

jr_014_6FEC:
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
    ld bc, $0200                                  ; $6FF8: $01 $00 $02
    ld bc, $0003                                  ; $6FFB: $01 $03 $00
    nop                                           ; $6FFE: $00
    nop                                           ; $6FFF: $00
    inc bc                                        ; $7000: $03
    nop                                           ; $7001: $00
    inc bc                                        ; $7002: $03
    nop                                           ; $7003: $00
    inc b                                         ; $7004: $04
    inc bc                                        ; $7005: $03
    ld l, b                                       ; $7006: $68
    rlca                                          ; $7007: $07
    or b                                          ; $7008: $B0
    ld l, a                                       ; $7009: $6F
    ld sp, hl                                     ; $700A: $F9
    ld h, [hl]                                    ; $700B: $66
    ld a, [hl]                                    ; $700C: $7E
    jr jr_014_705E                                ; $700D: $18 $4F

    ld a, $2F                                     ; $700F: $3E $2F

jr_014_7011:
    ld e, $2E                                     ; $7011: $1E $2E
    inc e                                         ; $7013: $1C
    inc l                                         ; $7014: $2C
    jr @+$3E                                      ; $7015: $18 $3C

    nop                                           ; $7017: $00
    ld a, h                                       ; $7018: $7C

jr_014_7019:
    jr c, jr_014_7019                             ; $7019: $38 $FE

    inc a                                         ; $701B: $3C
    ld a, $DC                                     ; $701C: $3E $DC

jr_014_701E:
    cp $00                                        ; $701E: $FE $00
    rst RST_38                                    ; $7020: $FF
    ld h, $FF                                     ; $7021: $26 $FF
    jr jr_014_701E                                ; $7023: $18 $F9

    ld b, $70                                     ; $7025: $06 $70
    adc a                                         ; $7027: $8F
    ld [hl], b                                    ; $7028: $70
    adc a                                         ; $7029: $8F
    adc b                                         ; $702A: $88
    rlca                                          ; $702B: $07
    inc b                                         ; $702C: $04
    inc bc                                        ; $702D: $03
    inc bc                                        ; $702E: $03
    nop                                           ; $702F: $00
    inc bc                                        ; $7030: $03
    ld bc, $0103                                  ; $7031: $01 $03 $01
    ld bc, $0000                                  ; $7034: $01 $00 $00
    nop                                           ; $7037: $00
    nop                                           ; $7038: $00
    nop                                           ; $7039: $00
    nop                                           ; $703A: $00
    nop                                           ; $703B: $00
    nop                                           ; $703C: $00
    nop                                           ; $703D: $00
    nop                                           ; $703E: $00
    nop                                           ; $703F: $00
    cp $D0                                        ; $7040: $FE $D0
    db $FC                                        ; $7042: $FC
    nop                                           ; $7043: $00
    add b                                         ; $7044: $80
    nop                                           ; $7045: $00
    ld b, b                                       ; $7046: $40
    add b                                         ; $7047: $80
    ld [hl], b                                    ; $7048: $70
    add b                                         ; $7049: $80
    ld a, b                                       ; $704A: $78
    sub b                                         ; $704B: $90
    cp h                                          ; $704C: $BC
    ld l, b                                       ; $704D: $68
    db $FC                                        ; $704E: $FC
    ld l, b                                       ; $704F: $68
    db $EC                                        ; $7050: $EC
    sbc b                                         ; $7051: $98
    call nz, $F2F8                                ; $7052: $C4 $F8 $F2
    inc e                                         ; $7055: $1C
    inc de                                        ; $7056: $13
    inc c                                         ; $7057: $0C
    rra                                           ; $7058: $1F
    inc bc                                        ; $7059: $03
    rra                                           ; $705A: $1F
    ld c, $0E                                     ; $705B: $0E $0E
    dec b                                         ; $705D: $05

jr_014_705E:
    rrca                                          ; $705E: $0F
    nop                                           ; $705F: $00
    ret nz                                        ; $7060: $C0

    nop                                           ; $7061: $00
    and b                                         ; $7062: $A0
    ld b, b                                       ; $7063: $40
    ld d, b                                       ; $7064: $50
    and b                                         ; $7065: $A0
    ldh a, [rP1]                                  ; $7066: $F0 $00
    nop                                           ; $7068: $00
    nop                                           ; $7069: $00
    nop                                           ; $706A: $00
    nop                                           ; $706B: $00
    nop                                           ; $706C: $00
    nop                                           ; $706D: $00
    nop                                           ; $706E: $00
    nop                                           ; $706F: $00
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
    nop                                           ; $7080: $00
    nop                                           ; $7081: $00
    nop                                           ; $7082: $00
    nop                                           ; $7083: $00
    nop                                           ; $7084: $00
    nop                                           ; $7085: $00
    nop                                           ; $7086: $00
    nop                                           ; $7087: $00
    inc c                                         ; $7088: $0C
    nop                                           ; $7089: $00
    ld [de], a                                    ; $708A: $12
    inc c                                         ; $708B: $0C
    rla                                           ; $708C: $17
    ld c, $3F                                     ; $708D: $0E $3F
    ld c, $4E                                     ; $708F: $0E $4E
    dec [hl]                                      ; $7091: $35
    ld e, a                                       ; $7092: $5F
    add hl, sp                                    ; $7093: $39
    ld a, a                                       ; $7094: $7F
    jr @+$41                                      ; $7095: $18 $3F

    ld b, $1F                                     ; $7097: $06 $1F
    ld c, $0F                                     ; $7099: $0E $0F
    ld bc, $0102                                  ; $709B: $01 $02 $01
    ld bc, $0000                                  ; $709E: $01 $00 $00
    nop                                           ; $70A1: $00
    nop                                           ; $70A2: $00
    nop                                           ; $70A3: $00
    nop                                           ; $70A4: $00
    nop                                           ; $70A5: $00
    nop                                           ; $70A6: $00
    nop                                           ; $70A7: $00
    nop                                           ; $70A8: $00
    nop                                           ; $70A9: $00
    ld bc, $C600                                  ; $70AA: $01 $00 $C6
    ld bc, $C768                                  ; $70AD: $01 $68 $C7
    xor $C1                                       ; $70B0: $EE $C1
    rst RST_00                                    ; $70B2: $C7
    add b                                         ; $70B3: $80
    pop hl                                        ; $70B4: $E1
    nop                                           ; $70B5: $00
    ld a, [$FC61]                                 ; $70B6: $FA $61 $FC
    ei                                            ; $70B9: $FB
    cp $FD                                        ; $70BA: $FE $FD
    cp $FD                                        ; $70BC: $FE $FD
    ld a, a                                       ; $70BE: $7F
    db $FC                                        ; $70BF: $FC
    ld bc, $3200                                  ; $70C0: $01 $00 $32
    ld bc, $122D                                  ; $70C3: $01 $2D $12
    dec l                                         ; $70C6: $2D
    ld [de], a                                    ; $70C7: $12
    scf                                           ; $70C8: $37
    ld a, [de]                                    ; $70C9: $1A
    rra                                           ; $70CA: $1F
    ld [$0BFC], sp                                ; $70CB: $08 $FC $0B
    rrca                                          ; $70CE: $0F
    db $F4                                        ; $70CF: $F4
    ld c, $F1                                     ; $70D0: $0E $F1
    rrca                                          ; $70D2: $0F
    or $17                                        ; $70D3: $F6 $17
    ld [$28D7], a                                 ; $70D5: $EA $D7 $28
    inc sp                                        ; $70D8: $33
    call $ED13                                    ; $70D9: $CD $13 $ED
    dec sp                                        ; $70DC: $3B
    push bc                                       ; $70DD: $C5
    push bc                                       ; $70DE: $C5
    ld [bc], a                                    ; $70DF: $02
    ld b, b                                       ; $70E0: $40
    nop                                           ; $70E1: $00
    xor [hl]                                      ; $70E2: $AE
    ld b, b                                       ; $70E3: $40
    inc sp                                        ; $70E4: $33
    adc $6F                                       ; $70E5: $CE $6F
    call c, $83FE                                 ; $70E7: $DC $FE $83
    adc c                                         ; $70EA: $89
    ld [hl], a                                    ; $70EB: $77
    ld l, a                                       ; $70EC: $6F
    sub a                                         ; $70ED: $97
    rst RST_28                                    ; $70EE: $EF
    ld d, [hl]                                    ; $70EF: $56
    rst RST_28                                    ; $70F0: $EF
    ld de, $E33F                                  ; $70F1: $11 $3F $E3
    cp a                                          ; $70F4: $BF
    jp nz, Jump_000_3CFF                          ; $70F5: $C2 $FF $3C

    rst RST_38                                    ; $70F8: $FF
    sbc h                                         ; $70F9: $9C
    rst RST_38                                    ; $70FA: $FF
    adc [hl]                                      ; $70FB: $8E
    cp $FD                                        ; $70FC: $FE $FD
    rst RST_38                                    ; $70FE: $FF
    db $FC                                        ; $70FF: $FC
    ld h, b                                       ; $7100: $60
    nop                                           ; $7101: $00
    and b                                         ; $7102: $A0
    ld b, b                                       ; $7103: $40
    ld h, b                                       ; $7104: $60
    ret nz                                        ; $7105: $C0

    ret nz                                        ; $7106: $C0

    add b                                         ; $7107: $80
    ret nz                                        ; $7108: $C0

    add b                                         ; $7109: $80
    ldh a, [rP1]                                  ; $710A: $F0 $00
    adc b                                         ; $710C: $88
    ld [hl], b                                    ; $710D: $70
    adc b                                         ; $710E: $88
    ld [hl], b                                    ; $710F: $70
    sub b                                         ; $7110: $90
    ld h, b                                       ; $7111: $60
    jr nc, @-$3E                                  ; $7112: $30 $C0

    cp $30                                        ; $7114: $FE $30
    call $FDB6                                    ; $7116: $CD $B6 $FD
    or [hl]                                       ; $7119: $B6
    cp $00                                        ; $711A: $FE $00
    db $FD                                        ; $711C: $FD
    ld l, $FD                                     ; $711D: $2E $FD
    xor [hl]                                      ; $711F: $AE
    nop                                           ; $7120: $00
    nop                                           ; $7121: $00
    nop                                           ; $7122: $00
    nop                                           ; $7123: $00
    dec c                                         ; $7124: $0D
    nop                                           ; $7125: $00
    ld d, $0D                                     ; $7126: $16 $0D
    rra                                           ; $7128: $1F
    inc c                                         ; $7129: $0C
    rrca                                          ; $712A: $0F
    inc bc                                        ; $712B: $03
    add hl, bc                                    ; $712C: $09
    rlca                                          ; $712D: $07
    dec b                                         ; $712E: $05
    inc bc                                        ; $712F: $03
    dec b                                         ; $7130: $05
    inc bc                                        ; $7131: $03
    dec b                                         ; $7132: $05
    inc bc                                        ; $7133: $03
    rlca                                          ; $7134: $07
    nop                                           ; $7135: $00
    rrca                                          ; $7136: $0F
    rlca                                          ; $7137: $07
    ccf                                           ; $7138: $3F
    rlca                                          ; $7139: $07
    ld b, a                                       ; $713A: $47
    dec sp                                        ; $713B: $3B
    ld a, a                                       ; $713C: $7F
    nop                                           ; $713D: $00
    nop                                           ; $713E: $00
    nop                                           ; $713F: $00
    ld a, a                                       ; $7140: $7F
    ld b, $7F                                     ; $7141: $06 $7F
    ld bc, $609F                                  ; $7143: $01 $9F $60
    ld c, $F1                                     ; $7146: $0E $F1
    ld c, $F1                                     ; $7148: $0E $F1
    ld sp, $C0C0                                  ; $714A: $31 $C0 $C0
    nop                                           ; $714D: $00
    ldh [$FFC0], a                                ; $714E: $E0 $C0
    ldh [$FFC0], a                                ; $7150: $E0 $C0
    ret nz                                        ; $7152: $C0

    add b                                         ; $7153: $80
    add b                                         ; $7154: $80
    nop                                           ; $7155: $00
    add b                                         ; $7156: $80
    nop                                           ; $7157: $00
    add b                                         ; $7158: $80
    nop                                           ; $7159: $00
    ret nz                                        ; $715A: $C0

    add b                                         ; $715B: $80
    ret nz                                        ; $715C: $C0

    add b                                         ; $715D: $80
    ret nz                                        ; $715E: $C0

    nop                                           ; $715F: $00
    rst RST_38                                    ; $7160: $FF
    or h                                          ; $7161: $B4
    cp a                                          ; $7162: $BF
    ld b, b                                       ; $7163: $40
    db $10                                        ; $7164: $10
    ldh [$FF08], a                                ; $7165: $E0 $08
    ldh a, [$FF0E]                                ; $7167: $F0 $0E
    ldh a, [$FF8F]                                ; $7169: $F0 $8F
    ld [hl], d                                    ; $716B: $72
    ld [hl], a                                    ; $716C: $77
    dec c                                         ; $716D: $0D
    ld a, a                                       ; $716E: $7F
    dec l                                         ; $716F: $2D
    ld a, l                                       ; $7170: $7D
    inc sp                                        ; $7171: $33
    jr c, jr_014_7193                             ; $7172: $38 $1F

    ld e, $03                                     ; $7174: $1E $03
    ld [bc], a                                    ; $7176: $02
    ld bc, $0003                                  ; $7177: $01 $03 $00
    inc bc                                        ; $717A: $03
    ld bc, $0001                                  ; $717B: $01 $01 $00
    ld bc, $8000                                  ; $717E: $01 $00 $80
    nop                                           ; $7181: $00
    nop                                           ; $7182: $00
    nop                                           ; $7183: $00
    nop                                           ; $7184: $00
    nop                                           ; $7185: $00
    nop                                           ; $7186: $00
    nop                                           ; $7187: $00

jr_014_7188:
    nop                                           ; $7188: $00
    nop                                           ; $7189: $00
    nop                                           ; $718A: $00
    nop                                           ; $718B: $00
    add b                                         ; $718C: $80
    nop                                           ; $718D: $00
    add b                                         ; $718E: $80
    nop                                           ; $718F: $00
    add b                                         ; $7190: $80
    nop                                           ; $7191: $00
    add b                                         ; $7192: $80

jr_014_7193:
    nop                                           ; $7193: $00
    ld b, b                                       ; $7194: $40
    add b                                         ; $7195: $80
    ld h, b                                       ; $7196: $60
    add b                                         ; $7197: $80
    ld hl, sp+$60                                 ; $7198: $F8 $60
    db $F4                                        ; $719A: $F4
    ret z                                         ; $719B: $C8

    jp z, $FEB4                                   ; $719C: $CA $B4 $FE

    nop                                           ; $719F: $00
    ld b, $00                                     ; $71A0: $06 $00
    add hl, bc                                    ; $71A2: $09
    ld b, $1F                                     ; $71A3: $06 $1F
    ld b, $1F                                     ; $71A5: $06 $1F
    ld b, $17                                     ; $71A7: $06 $17
    ld [$0E17], sp                                ; $71A9: $08 $17 $0E
    rrca                                          ; $71AC: $0F
    rlca                                          ; $71AD: $07
    rrca                                          ; $71AE: $0F
    nop                                           ; $71AF: $00
    rla                                           ; $71B0: $17
    rrca                                          ; $71B1: $0F
    rla                                           ; $71B2: $17
    rrca                                          ; $71B3: $0F
    rla                                           ; $71B4: $17
    rrca                                          ; $71B5: $0F
    scf                                           ; $71B6: $37
    rrca                                          ; $71B7: $0F
    scf                                           ; $71B8: $37
    rrca                                          ; $71B9: $0F
    ld d, a                                       ; $71BA: $57
    cpl                                           ; $71BB: $2F
    ld e, a                                       ; $71BC: $5F
    daa                                           ; $71BD: $27
    and a                                         ; $71BE: $A7
    ld b, b                                       ; $71BF: $40
    ret nz                                        ; $71C0: $C0

    nop                                           ; $71C1: $00
    ld hl, $E1C0                                  ; $71C2: $21 $C0 $E1
    ret nz                                        ; $71C5: $C0

    pop hl                                        ; $71C6: $E1
    nop                                           ; $71C7: $00
    ld de, $FFE0                                  ; $71C8: $11 $E0 $FF
    ldh [$FFF0], a                                ; $71CB: $E0 $F0
    rrca                                          ; $71CD: $0F
    ret nz                                        ; $71CE: $C0

    ccf                                           ; $71CF: $3F
    ld hl, sp-$39                                 ; $71D0: $F8 $C7
    cp $C1                                        ; $71D2: $FE $C1
    pop hl                                        ; $71D4: $E1
    sbc $E0                                       ; $71D5: $DE $E0
    rst RST_18                                    ; $71D7: $DF
    db $E3                                        ; $71D8: $E3
    call c, $C0FC                                 ; $71D9: $DC $FC $C0
    ret nz                                        ; $71DC: $C0

    add b                                         ; $71DD: $80
    add b                                         ; $71DE: $80
    nop                                           ; $71DF: $00
    ld a, [bc]                                    ; $71E0: $0A
    nop                                           ; $71E1: $00
    sub l                                         ; $71E2: $95
    ld a, [bc]                                    ; $71E3: $0A
    ld l, c                                       ; $71E4: $69
    sub [hl]                                      ; $71E5: $96
    ld l, e                                       ; $71E6: $6B
    sub [hl]                                      ; $71E7: $96
    cp a                                          ; $71E8: $BF
    call nc, Call_014_43FC                        ; $71E9: $D4 $FC $43
    ld h, e                                       ; $71EC: $63
    sbc h                                         ; $71ED: $9C
    ccf                                           ; $71EE: $3F
    jp nz, $C837                                  ; $71EF: $C2 $37 $C8

    add hl, sp                                    ; $71F2: $39
    rst RST_10                                    ; $71F3: $D7
    cp l                                          ; $71F4: $BD
    ld b, [hl]                                    ; $71F5: $46
    rst RST_08                                    ; $71F6: $CF
    jr nc, jr_014_7188                            ; $71F7: $30 $8F

    halt                                          ; $71F9: $76
    adc a                                         ; $71FA: $8F
    halt                                          ; $71FB: $76
    ld c, a                                       ; $71FC: $4F
    scf                                           ; $71FD: $37
    daa                                           ; $71FE: $27
    dec de                                        ; $71FF: $1B
    ld [hl], e                                    ; $7200: $73
    nop                                           ; $7201: $00
    sbc l                                         ; $7202: $9D
    ld [hl], d                                    ; $7203: $72
    ld a, e                                       ; $7204: $7B
    and $F6                                       ; $7205: $E6 $F6
    inc e                                         ; $7207: $1C
    ld c, [hl]                                    ; $7208: $4E
    cp h                                          ; $7209: $BC
    ld a, a                                       ; $720A: $7F
    cp b                                          ; $720B: $B8
    ld a, h                                       ; $720C: $7C
    or e                                          ; $720D: $B3
    ld a, h                                       ; $720E: $7C
    adc e                                         ; $720F: $8B
    db $FC                                        ; $7210: $FC
    dec bc                                        ; $7211: $0B
    ld sp, hl                                     ; $7212: $F9
    ld d, $FF                                     ; $7213: $16 $FF
    pop hl                                        ; $7215: $E1
    db $FC                                        ; $7216: $FC
    ld [hl], e                                    ; $7217: $73
    rst RST_38                                    ; $7218: $FF
    add hl, sp                                    ; $7219: $39
    ei                                            ; $721A: $FB
    db $F4                                        ; $721B: $F4
    rst RST_38                                    ; $721C: $FF
    ldh a, [rIE]                                  ; $721D: $F0 $FF
    sub d                                         ; $721F: $92
    nop                                           ; $7220: $00
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
    add b                                         ; $722C: $80
    nop                                           ; $722D: $00
    add b                                         ; $722E: $80
    nop                                           ; $722F: $00
    add b                                         ; $7230: $80
    nop                                           ; $7231: $00
    nop                                           ; $7232: $00
    nop                                           ; $7233: $00
    ldh [rP1], a                                  ; $7234: $E0 $00
    ret nc                                        ; $7236: $D0

    ld h, b                                       ; $7237: $60
    ret nc                                        ; $7238: $D0

    ld h, b                                       ; $7239: $60
    ldh [rP1], a                                  ; $723A: $E0 $00
    ret nc                                        ; $723C: $D0

    ldh [$FFD0], a                                ; $723D: $E0 $D0
    ldh [$FFA0], a                                ; $723F: $E0 $A0
    ld b, b                                       ; $7241: $40
    ld b, b                                       ; $7242: $40
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
    nop                                           ; $724E: $00
    nop                                           ; $724F: $00
    nop                                           ; $7250: $00
    nop                                           ; $7251: $00
    nop                                           ; $7252: $00
    nop                                           ; $7253: $00
    nop                                           ; $7254: $00

jr_014_7255:
    nop                                           ; $7255: $00
    nop                                           ; $7256: $00

jr_014_7257:
    nop                                           ; $7257: $00
    nop                                           ; $7258: $00
    nop                                           ; $7259: $00
    nop                                           ; $725A: $00
    nop                                           ; $725B: $00
    nop                                           ; $725C: $00
    nop                                           ; $725D: $00
    nop                                           ; $725E: $00
    nop                                           ; $725F: $00
    ld bc, $0200                                  ; $7260: $01 $00 $02
    ld bc, $0334                                  ; $7263: $01 $34 $03
    ld e, b                                       ; $7266: $58
    scf                                           ; $7267: $37
    ld a, h                                       ; $7268: $7C
    inc sp                                        ; $7269: $33
    ccf                                           ; $726A: $3F
    inc c                                         ; $726B: $0C
    daa                                           ; $726C: $27
    rra                                           ; $726D: $1F
    inc de                                        ; $726E: $13
    rrca                                          ; $726F: $0F
    dec bc                                        ; $7270: $0B
    rlca                                          ; $7271: $07
    dec bc                                        ; $7272: $0B
    ld b, $0F                                     ; $7273: $06 $0F
    nop                                           ; $7275: $00
    rra                                           ; $7276: $1F
    ld c, $7F                                     ; $7277: $0E $7F
    rrca                                          ; $7279: $0F
    adc a                                         ; $727A: $8F
    ld [hl], a                                    ; $727B: $77
    rst RST_38                                    ; $727C: $FF
    nop                                           ; $727D: $00
    nop                                           ; $727E: $00
    nop                                           ; $727F: $00
    cp $00                                        ; $7280: $FE $00
    ld a, c                                       ; $7282: $79
    add [hl]                                      ; $7283: $86
    jr nc, jr_014_7255                            ; $7284: $30 $CF

    jr nc, jr_014_7257                            ; $7286: $30 $CF

    ret z                                         ; $7288: $C8

    rlca                                          ; $7289: $07
    inc b                                         ; $728A: $04
    inc bc                                        ; $728B: $03
    add e                                         ; $728C: $83
    nop                                           ; $728D: $00
    add d                                         ; $728E: $82
    ld bc, $0183                                  ; $728F: $01 $83 $01
    ld bc, $0000                                  ; $7292: $01 $00 $00
    nop                                           ; $7295: $00
    nop                                           ; $7296: $00
    nop                                           ; $7297: $00
    add b                                         ; $7298: $80
    nop                                           ; $7299: $00
    add b                                         ; $729A: $80
    nop                                           ; $729B: $00
    add b                                         ; $729C: $80
    nop                                           ; $729D: $00
    nop                                           ; $729E: $00
    nop                                           ; $729F: $00
    ccf                                           ; $72A0: $3F
    nop                                           ; $72A1: $00
    nop                                           ; $72A2: $00
    nop                                           ; $72A3: $00
    add b                                         ; $72A4: $80
    nop                                           ; $72A5: $00
    add b                                         ; $72A6: $80
    nop                                           ; $72A7: $00
    ld b, b                                       ; $72A8: $40
    add b                                         ; $72A9: $80
    ld e, h                                       ; $72AA: $5C
    add b                                         ; $72AB: $80
    cp $1C                                        ; $72AC: $FE $1C

jr_014_72AE:
    rst RST_38                                    ; $72AE: $FF
    cp [hl]                                       ; $72AF: $BE
    rst RST_38                                    ; $72B0: $FF
    cp a                                          ; $72B1: $BF
    jp Jump_000_3C3F                              ; $72B2: $C3 $3F $3C


    inc bc                                        ; $72B5: $03
    inc bc                                        ; $72B6: $03
    nop                                           ; $72B7: $00
    nop                                           ; $72B8: $00
    nop                                           ; $72B9: $00
    ld bc, $0200                                  ; $72BA: $01 $00 $02
    ld bc, $0003                                  ; $72BD: $01 $03 $00
    add b                                         ; $72C0: $80
    nop                                           ; $72C1: $00
    ldh a, [$FF80]                                ; $72C2: $F0 $80
    ld hl, sp+$70                                 ; $72C4: $F8 $70
    ld hl, sp-$10                                 ; $72C6: $F8 $F0
    ld hl, sp+$70                                 ; $72C8: $F8 $70
    ld hl, sp+$10                                 ; $72CA: $F8 $10
    jr jr_014_72AE                                ; $72CC: $18 $E0

    ld hl, sp+$00                                 ; $72CE: $F8 $00
    nop                                           ; $72D0: $00
    nop                                           ; $72D1: $00
    nop                                           ; $72D2: $00
    nop                                           ; $72D3: $00
    nop                                           ; $72D4: $00
    nop                                           ; $72D5: $00
    nop                                           ; $72D6: $00
    nop                                           ; $72D7: $00
    nop                                           ; $72D8: $00
    nop                                           ; $72D9: $00
    nop                                           ; $72DA: $00
    nop                                           ; $72DB: $00
    nop                                           ; $72DC: $00
    nop                                           ; $72DD: $00
    nop                                           ; $72DE: $00
    nop                                           ; $72DF: $00
    inc e                                         ; $72E0: $1C
    nop                                           ; $72E1: $00
    cpl                                           ; $72E2: $2F
    inc e                                         ; $72E3: $1C
    ld a, a                                       ; $72E4: $7F
    ld de, $6EBF                                  ; $72E5: $11 $BF $6E
    rst RST_38                                    ; $72E8: $FF
    ld e, c                                       ; $72E9: $59
    ld e, a                                       ; $72EA: $5F
    ld [hl], $5F                                  ; $72EB: $36 $5F
    scf                                           ; $72ED: $37
    cpl                                           ; $72EE: $2F
    dec de                                        ; $72EF: $1B
    rra                                           ; $72F0: $1F
    rlca                                          ; $72F1: $07
    rrca                                          ; $72F2: $0F
    dec b                                         ; $72F3: $05
    dec b                                         ; $72F4: $05
    ld [bc], a                                    ; $72F5: $02
    ld [bc], a                                    ; $72F6: $02
    ld bc, $0102                                  ; $72F7: $01 $02 $01
    ld bc, $0000                                  ; $72FA: $01 $00 $00
    nop                                           ; $72FD: $00
    nop                                           ; $72FE: $00
    nop                                           ; $72FF: $00
    nop                                           ; $7300: $00
    nop                                           ; $7301: $00
    add b                                         ; $7302: $80
    nop                                           ; $7303: $00
    ret nz                                        ; $7304: $C0

    add b                                         ; $7305: $80
    ldh [$FF80], a                                ; $7306: $E0 $80
    db $E3                                        ; $7308: $E3
    ld b, b                                       ; $7309: $40
    jp nz, $EE01                                  ; $730A: $C2 $01 $EE

    pop bc                                        ; $730D: $C1
    pop af                                        ; $730E: $F1
    ld l, $B9                                     ; $730F: $2E $B9
    ld d, [hl]                                    ; $7311: $56
    ret c                                         ; $7312: $D8

    and a                                         ; $7313: $A7
    rst RST_28                                    ; $7314: $EF
    ret nc                                        ; $7315: $D0

    ld hl, sp+$60                                 ; $7316: $F8 $60
    ldh [rP1], a                                  ; $7318: $E0 $00
    ld b, b                                       ; $731A: $40
    add b                                         ; $731B: $80
    ret nz                                        ; $731C: $C0

    nop                                           ; $731D: $00
    nop                                           ; $731E: $00
    nop                                           ; $731F: $00
    ld bc, $1200                                  ; $7320: $01 $00 $12
    ld bc, $132C                                  ; $7323: $01 $2C $13
    dec l                                         ; $7326: $2D
    ld [de], a                                    ; $7327: $12
    rst RST_30                                    ; $7328: $F7
    ld a, [de]                                    ; $7329: $1A
    ld e, $E1                                     ; $732A: $1E $E1
    ld [$08F7], sp                                ; $732C: $08 $F7 $08
    rst RST_30                                    ; $732F: $F7
    ld [$88F7], sp                                ; $7330: $08 $F7 $88
    ld [hl], a                                    ; $7333: $77
    ret z                                         ; $7334: $C8

    scf                                           ; $7335: $37
    jr nc, jr_014_7347                            ; $7336: $30 $0F

    add hl, bc                                    ; $7338: $09
    ld b, $06                                     ; $7339: $06 $06
    ld bc, $0102                                  ; $733B: $01 $02 $01
    inc bc                                        ; $733E: $03
    nop                                           ; $733F: $00
    ld b, b                                       ; $7340: $40
    nop                                           ; $7341: $00
    and e                                         ; $7342: $A3
    ld b, b                                       ; $7343: $40
    push af                                       ; $7344: $F5
    ld [bc], a                                    ; $7345: $02
    ei                                            ; $7346: $FB

jr_014_7347:
    or $FE                                        ; $7347: $F6 $FE
    inc c                                         ; $7349: $0C
    ld c, $F0                                     ; $734A: $0E $F0
    inc bc                                        ; $734C: $03
    db $FC                                        ; $734D: $FC
    ld [bc], a                                    ; $734E: $02
    db $FD                                        ; $734F: $FD
    ld [bc], a                                    ; $7350: $02
    db $FD                                        ; $7351: $FD
    ld bc, $01FE                                  ; $7352: $01 $FE $01
    cp $01                                        ; $7355: $FE $01
    cp $FA                                        ; $7357: $FE $FA
    inc b                                         ; $7359: $04
    ld b, $F8                                     ; $735A: $06 $F8
    inc b                                         ; $735C: $04
    ld hl, sp-$04                                 ; $735D: $F8 $FC
    nop                                           ; $735F: $00
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
    db $FC                                        ; $736A: $FC
    nop                                           ; $736B: $00
    ld [bc], a                                    ; $736C: $02
    db $FC                                        ; $736D: $FC
    ld c, $F0                                     ; $736E: $0E $F0
    ld a, [hl]                                    ; $7370: $7E
    add b                                         ; $7371: $80
    sbc b                                         ; $7372: $98
    ld h, b                                       ; $7373: $60
    inc c                                         ; $7374: $0C

jr_014_7375:
    ldh a, [$FF0E]                                ; $7375: $F0 $0E

jr_014_7377:
    ldh a, [$FF8F]                                ; $7377: $F0 $8F
    ld [hl], h                                    ; $7379: $74
    rst RST_38                                    ; $737A: $FF
    inc c                                         ; $737B: $0C
    rst RST_38                                    ; $737C: $FF
    ld a, h                                       ; $737D: $7C
    rst RST_38                                    ; $737E: $FF
    nop                                           ; $737F: $00
    ld bc, $0200                                  ; $7380: $01 $00 $02
    ld bc, $0334                                  ; $7383: $01 $34 $03
    ld e, b                                       ; $7386: $58
    scf                                           ; $7387: $37
    ld a, h                                       ; $7388: $7C
    inc sp                                        ; $7389: $33
    ccf                                           ; $738A: $3F
    inc c                                         ; $738B: $0C
    daa                                           ; $738C: $27
    rra                                           ; $738D: $1F
    inc de                                        ; $738E: $13
    rrca                                          ; $738F: $0F
    dec bc                                        ; $7390: $0B
    rlca                                          ; $7391: $07
    dec bc                                        ; $7392: $0B
    ld b, $0F                                     ; $7393: $06 $0F
    nop                                           ; $7395: $00
    rra                                           ; $7396: $1F
    ld c, $7F                                     ; $7397: $0E $7F
    rrca                                          ; $7399: $0F
    adc a                                         ; $739A: $8F
    ld [hl], a                                    ; $739B: $77
    rst RST_38                                    ; $739C: $FF
    nop                                           ; $739D: $00
    nop                                           ; $739E: $00
    nop                                           ; $739F: $00
    rst RST_38                                    ; $73A0: $FF
    nop                                           ; $73A1: $00
    ld a, c                                       ; $73A2: $79
    add [hl]                                      ; $73A3: $86
    jr nc, jr_014_7375                            ; $73A4: $30 $CF

    jr nc, jr_014_7377                            ; $73A6: $30 $CF

    ret z                                         ; $73A8: $C8

    rlca                                          ; $73A9: $07
    inc b                                         ; $73AA: $04
    inc bc                                        ; $73AB: $03
    add e                                         ; $73AC: $83
    nop                                           ; $73AD: $00
    add d                                         ; $73AE: $82
    ld bc, $0183                                  ; $73AF: $01 $83 $01
    ld bc, $0000                                  ; $73B2: $01 $00 $00
    nop                                           ; $73B5: $00
    nop                                           ; $73B6: $00
    nop                                           ; $73B7: $00
    add b                                         ; $73B8: $80
    nop                                           ; $73B9: $00
    add b                                         ; $73BA: $80
    nop                                           ; $73BB: $00
    add b                                         ; $73BC: $80
    nop                                           ; $73BD: $00
    nop                                           ; $73BE: $00
    nop                                           ; $73BF: $00
    rst RST_38                                    ; $73C0: $FF
    ei                                            ; $73C1: $FB
    rst RST_38                                    ; $73C2: $FF
    ld b, $BE                                     ; $73C3: $06 $BE
    nop                                           ; $73C5: $00
    add b                                         ; $73C6: $80
    nop                                           ; $73C7: $00
    ld b, b                                       ; $73C8: $40
    add b                                         ; $73C9: $80
    ld e, h                                       ; $73CA: $5C
    add b                                         ; $73CB: $80
    cp $1C                                        ; $73CC: $FE $1C
    rst RST_38                                    ; $73CE: $FF
    cp [hl]                                       ; $73CF: $BE
    rst RST_38                                    ; $73D0: $FF
    cp a                                          ; $73D1: $BF
    jp Jump_000_3C3F                              ; $73D2: $C3 $3F $3C


    inc bc                                        ; $73D5: $03
    inc bc                                        ; $73D6: $03
    nop                                           ; $73D7: $00
    nop                                           ; $73D8: $00
    nop                                           ; $73D9: $00
    ld bc, $0200                                  ; $73DA: $01 $00 $02
    ld bc, $0003                                  ; $73DD: $01 $03 $00
    add b                                         ; $73E0: $80
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
    add b                                         ; $73F0: $80
    nop                                           ; $73F1: $00
    ldh a, [$FF80]                                ; $73F2: $F0 $80
    ld hl, sp+$70                                 ; $73F4: $F8 $70
    ld hl, sp-$10                                 ; $73F6: $F8 $F0
    ld hl, sp+$70                                 ; $73F8: $F8 $70
    ld hl, sp+$10                                 ; $73FA: $F8 $10
    jr @-$1E                                      ; $73FC: $18 $E0

    ld hl, sp+$00                                 ; $73FE: $F8 $00

Call_014_7400:
    nop                                           ; $7400: $00
    nop                                           ; $7401: $00
    inc e                                         ; $7402: $1C
    nop                                           ; $7403: $00
    cpl                                           ; $7404: $2F
    inc e                                         ; $7405: $1C
    ld a, a                                       ; $7406: $7F
    ld de, $6EBF                                  ; $7407: $11 $BF $6E
    rst RST_38                                    ; $740A: $FF
    ld e, c                                       ; $740B: $59
    ld e, a                                       ; $740C: $5F
    ld [hl], $5F                                  ; $740D: $36 $5F
    scf                                           ; $740F: $37
    cpl                                           ; $7410: $2F
    dec de                                        ; $7411: $1B
    rra                                           ; $7412: $1F
    rlca                                          ; $7413: $07
    rrca                                          ; $7414: $0F
    dec b                                         ; $7415: $05
    dec b                                         ; $7416: $05
    ld [bc], a                                    ; $7417: $02
    ld [bc], a                                    ; $7418: $02
    ld bc, $0102                                  ; $7419: $01 $02 $01
    ld bc, $0000                                  ; $741C: $01 $00 $00
    nop                                           ; $741F: $00
    nop                                           ; $7420: $00
    nop                                           ; $7421: $00
    nop                                           ; $7422: $00
    nop                                           ; $7423: $00
    add c                                         ; $7424: $81
    nop                                           ; $7425: $00
    jp nz, $C281                                  ; $7426: $C2 $81 $C2

    add c                                         ; $7429: $81
    add d                                         ; $742A: $82
    ld bc, $01C6                                  ; $742B: $01 $C6 $01
    ld sp, hl                                     ; $742E: $F9
    add $F1                                       ; $742F: $C6 $F1

jr_014_7431:
    ld l, $B8                                     ; $7431: $2E $B8
    ld d, a                                       ; $7433: $57
    db $DB                                        ; $7434: $DB
    and h                                         ; $7435: $A4
    db $EC                                        ; $7436: $EC
    ret nc                                        ; $7437: $D0

    ld hl, sp+$60                                 ; $7438: $F8 $60
    ldh [rP1], a                                  ; $743A: $E0 $00
    ld b, b                                       ; $743C: $40
    add b                                         ; $743D: $80
    ret nz                                        ; $743E: $C0

    nop                                           ; $743F: $00
    ld bc, $3200                                  ; $7440: $01 $00 $32
    ld bc, $13AC                                  ; $7443: $01 $AC $13
    ld [hl], l                                    ; $7446: $75
    sbc d                                         ; $7447: $9A
    rra                                           ; $7448: $1F
    ld [$F10E], a                                 ; $7449: $EA $0E $F1
    db $10                                        ; $744C: $10
    rst RST_28                                    ; $744D: $EF
    db $10                                        ; $744E: $10
    rst RST_28                                    ; $744F: $EF
    jr nz, jr_014_7431                            ; $7450: $20 $DF

    and b                                         ; $7452: $A0
    ld e, a                                       ; $7453: $5F
    ld h, b                                       ; $7454: $60
    rra                                           ; $7455: $1F
    db $10                                        ; $7456: $10
    rrca                                          ; $7457: $0F

jr_014_7458:
    rla                                           ; $7458: $17
    ld [$0708], sp                                ; $7459: $08 $08 $07
    inc b                                         ; $745C: $04
    inc bc                                        ; $745D: $03
    rlca                                          ; $745E: $07
    nop                                           ; $745F: $00
    ld b, b                                       ; $7460: $40
    nop                                           ; $7461: $00
    and e                                         ; $7462: $A3
    ld b, b                                       ; $7463: $40
    push af                                       ; $7464: $F5
    ld [bc], a                                    ; $7465: $02
    ei                                            ; $7466: $FB
    or $FE                                        ; $7467: $F6 $FE
    inc c                                         ; $7469: $0C
    dec c                                         ; $746A: $0D
    ldh a, [rSC]                                  ; $746B: $F0 $02
    db $FD                                        ; $746D: $FD
    inc b                                         ; $746E: $04
    ei                                            ; $746F: $FB
    inc b                                         ; $7470: $04
    ei                                            ; $7471: $FB
    rlca                                          ; $7472: $07
    ld hl, sp+$02                                 ; $7473: $F8 $02
    db $FD                                        ; $7475: $FD
    inc b                                         ; $7476: $04
    ei                                            ; $7477: $FB
    db $E4                                        ; $7478: $E4
    dec de                                        ; $7479: $1B
    inc e                                         ; $747A: $1C
    db $E3                                        ; $747B: $E3
    ld c, $F5                                     ; $747C: $0E $F5
    rst RST_38                                    ; $747E: $FF
    inc b                                         ; $747F: $04
    nop                                           ; $7480: $00
    nop                                           ; $7481: $00
    nop                                           ; $7482: $00
    nop                                           ; $7483: $00
    nop                                           ; $7484: $00
    nop                                           ; $7485: $00
    nop                                           ; $7486: $00

jr_014_7487:
    nop                                           ; $7487: $00
    nop                                           ; $7488: $00
    nop                                           ; $7489: $00
    add b                                         ; $748A: $80
    nop                                           ; $748B: $00
    ld h, b                                       ; $748C: $60
    add b                                         ; $748D: $80
    db $10                                        ; $748E: $10
    ldh [$FF08], a                                ; $748F: $E0 $08
    ldh a, [$FFF4]                                ; $7491: $F0 $F4
    ld [$C834], sp                                ; $7493: $08 $34 $C8
    jr c, jr_014_7458                             ; $7496: $38 $C0

    ld a, [hl]                                    ; $7498: $7E
    add b                                         ; $7499: $80
    ld a, l                                       ; $749A: $7D
    or [hl]                                       ; $749B: $B6
    rst RST_38                                    ; $749C: $FF
    ld [hl-], a                                   ; $749D: $32
    ld a, [$0034]                                 ; $749E: $FA $34 $00
    nop                                           ; $74A1: $00
    nop                                           ; $74A2: $00
    nop                                           ; $74A3: $00
    nop                                           ; $74A4: $00
    nop                                           ; $74A5: $00
    rrca                                          ; $74A6: $0F
    nop                                           ; $74A7: $00
    db $10                                        ; $74A8: $10
    rrca                                          ; $74A9: $0F
    inc e                                         ; $74AA: $1C
    inc bc                                        ; $74AB: $03
    rrca                                          ; $74AC: $0F
    nop                                           ; $74AD: $00
    rlca                                          ; $74AE: $07
    nop                                           ; $74AF: $00
    ld a, a                                       ; $74B0: $7F
    inc bc                                        ; $74B1: $03
    sbc a                                         ; $74B2: $9F
    ld l, e                                       ; $74B3: $6B
    ld a, a                                       ; $74B4: $7F
    dec de                                        ; $74B5: $1B
    ccf                                           ; $74B6: $3F
    dec de                                        ; $74B7: $1B
    ld a, a                                       ; $74B8: $7F
    dec de                                        ; $74B9: $1B
    sbc a                                         ; $74BA: $9F
    ld l, e                                       ; $74BB: $6B
    ld a, a                                       ; $74BC: $7F
    dec c                                         ; $74BD: $0D
    rrca                                          ; $74BE: $0F
    nop                                           ; $74BF: $00
    inc d                                         ; $74C0: $14
    nop                                           ; $74C1: $00
    ld a, [hl+]                                   ; $74C2: $2A
    inc d                                         ; $74C3: $14
    ld d, e                                       ; $74C4: $53
    inc l                                         ; $74C5: $2C
    ld d, [hl]                                    ; $74C6: $56
    dec l                                         ; $74C7: $2D
    ld a, a                                       ; $74C8: $7F
    jr z, jr_014_7543                             ; $74C9: $28 $78

jr_014_74CB:
    rlca                                          ; $74CB: $07
    ld b, [hl]                                    ; $74CC: $46
    add hl, sp                                    ; $74CD: $39
    cp $01                                        ; $74CE: $FE $01
    ld [hl+], a                                   ; $74D0: $22
    db $DD                                        ; $74D1: $DD
    inc de                                        ; $74D2: $13
    xor $7A                                       ; $74D3: $EE $7A
    adc l                                         ; $74D5: $8D
    rst RST_28                                    ; $74D6: $EF
    ld [hl], b                                    ; $74D7: $70
    rst RST_30                                    ; $74D8: $F7
    dec de                                        ; $74D9: $1B
    rst RST_10                                    ; $74DA: $D7
    ld l, b                                       ; $74DB: $68
    rst RST_18                                    ; $74DC: $DF
    ld h, h                                       ; $74DD: $64
    rst RST_38                                    ; $74DE: $FF
    rrca                                          ; $74DF: $0F
    nop                                           ; $74E0: $00
    nop                                           ; $74E1: $00
    and $00                                       ; $74E2: $E6 $00
    ld a, [hl-]                                   ; $74E4: $3A
    db $E4                                        ; $74E5: $E4
    or $CC                                        ; $74E6: $F6 $CC
    db $EC                                        ; $74E8: $EC
    jr c, jr_014_7487                             ; $74E9: $38 $9C

    ld a, b                                       ; $74EB: $78
    ei                                            ; $74EC: $FB
    ld [hl], b                                    ; $74ED: $70
    db $FC                                        ; $74EE: $FC
    ld h, e                                       ; $74EF: $63
    ld hl, sp+$07                                 ; $74F0: $F8 $07
    jr c, jr_014_74CB                             ; $74F2: $38 $D7

    ld a, c                                       ; $74F4: $79
    or [hl]                                       ; $74F5: $B6
    ld a, [$FF15]                                 ; $74F6: $FA $15 $FF
    ldh [$FFF8], a                                ; $74F9: $E0 $F8
    ldh [$FFFC], a                                ; $74FB: $E0 $FC
    ld [hl], b                                    ; $74FD: $70
    db $F4                                        ; $74FE: $F4
    add sp, -$21                                  ; $74FF: $E8 $DF
    ld h, a                                       ; $7501: $67
    rst RST_18                                    ; $7502: $DF
    ld h, c                                       ; $7503: $61
    db $EB                                        ; $7504: $EB
    add [hl]                                      ; $7505: $86
    rst RST_18                                    ; $7506: $DF
    ld b, $1F                                     ; $7507: $06 $1F
    add hl, bc                                    ; $7509: $09
    inc e                                         ; $750A: $1C
    rrca                                          ; $750B: $0F
    ld c, $07                                     ; $750C: $0E $07
    ld b, $03                                     ; $750E: $06 $03
    inc bc                                        ; $7510: $03
    ld bc, $0001                                  ; $7511: $01 $01 $00
    nop                                           ; $7514: $00
    nop                                           ; $7515: $00
    nop                                           ; $7516: $00
    nop                                           ; $7517: $00
    nop                                           ; $7518: $00
    nop                                           ; $7519: $00
    nop                                           ; $751A: $00
    nop                                           ; $751B: $00
    nop                                           ; $751C: $00
    nop                                           ; $751D: $00
    nop                                           ; $751E: $00
    nop                                           ; $751F: $00
    ld hl, sp-$20                                 ; $7520: $F8 $E0
    db $FC                                        ; $7522: $FC

jr_014_7523:
    jr nc, jr_014_7523                            ; $7523: $30 $FE

    ld b, b                                       ; $7525: $40
    ld sp, hl                                     ; $7526: $F9
    add [hl]                                      ; $7527: $86
    ldh a, [$FF8F]                                ; $7528: $F0 $8F
    ldh a, [$FF8F]                                ; $752A: $F0 $8F
    ld c, h                                       ; $752C: $4C
    add e                                         ; $752D: $83
    ld b, d                                       ; $752E: $42
    add c                                         ; $752F: $81
    ld sp, $F8C0                                  ; $7530: $31 $C0 $F8
    jr nc, @-$02                                  ; $7533: $30 $FC

    ld a, b                                       ; $7535: $78
    ld a, [$7974]                                 ; $7536: $FA $74 $79
    ld b, $26                                     ; $7539: $06 $26
    jr jr_014_7559                                ; $753B: $18 $1C

    nop                                           ; $753D: $00
    nop                                           ; $753E: $00
    nop                                           ; $753F: $00
    jr jr_014_7542                                ; $7540: $18 $00

jr_014_7542:
    sub h                                         ; $7542: $94

jr_014_7543:
    ld [$844A], sp                                ; $7543: $08 $4A $84
    ld e, [hl]                                    ; $7546: $5E
    add b                                         ; $7547: $80
    and e                                         ; $7548: $A3
    ld e, h                                       ; $7549: $5C
    inc a                                         ; $754A: $3C
    rst RST_18                                    ; $754B: $DF
    ccf                                           ; $754C: $3F
    call c, $1DFF                                 ; $754D: $DC $FF $1D
    ccf                                           ; $7550: $3F
    add hl, de                                    ; $7551: $19
    dec de                                        ; $7552: $1B
    ld bc, $0001                                  ; $7553: $01 $01 $00
    ld bc, $0100                                  ; $7556: $01 $00 $01

jr_014_7559:
    nop                                           ; $7559: $00
    nop                                           ; $755A: $00
    nop                                           ; $755B: $00

jr_014_755C:
    nop                                           ; $755C: $00
    nop                                           ; $755D: $00
    add b                                         ; $755E: $80
    nop                                           ; $755F: $00
    ld h, b                                       ; $7560: $60
    add b                                         ; $7561: $80
    cp b                                          ; $7562: $B8
    ld h, b                                       ; $7563: $60
    db $FC                                        ; $7564: $FC
    ld l, b                                       ; $7565: $68
    xor $1C                                       ; $7566: $EE $1C
    add $7C                                       ; $7568: $C6 $7C
    db $E3                                        ; $756A: $E3

Call_014_756B:
    ld a, [hl]                                    ; $756B: $7E
    ld a, c                                       ; $756C: $79
    ccf                                           ; $756D: $3F
    ld a, $07                                     ; $756E: $3E $07
    rlca                                          ; $7570: $07
    ld bc, $0001                                  ; $7571: $01 $01 $00
    ld bc, $0000                                  ; $7574: $01 $00 $00
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
    add b                                         ; $758C: $80
    nop                                           ; $758D: $00
    ld h, b                                       ; $758E: $60
    add b                                         ; $758F: $80
    sbc b                                         ; $7590: $98
    ld h, b                                       ; $7591: $60
    or $E8                                        ; $7592: $F6 $E8
    ld sp, hl                                     ; $7594: $F9
    sbc $FF                                       ; $7595: $DE $FF
    ld b, $26                                     ; $7597: $06 $26
    ret nz                                        ; $7599: $C0

    jr nz, jr_014_755C                            ; $759A: $20 $C0

    ldh [$FFC0], a                                ; $759C: $E0 $C0
    ret nz                                        ; $759E: $C0

    nop                                           ; $759F: $00
    add b                                         ; $75A0: $80
    nop                                           ; $75A1: $00
    ret nz                                        ; $75A2: $C0

    add b                                         ; $75A3: $80
    ld [hl], b                                    ; $75A4: $70
    add b                                         ; $75A5: $80
    ld hl, sp+$70                                 ; $75A6: $F8 $70
    db $FC                                        ; $75A8: $FC
    ld hl, sp-$06                                 ; $75A9: $F8 $FA
    ld h, h                                       ; $75AB: $64
    ld h, l                                       ; $75AC: $65
    ld a, [de]                                    ; $75AD: $1A
    ld a, $00                                     ; $75AE: $3E $00
    nop                                           ; $75B0: $00
    nop                                           ; $75B1: $00
    nop                                           ; $75B2: $00
    nop                                           ; $75B3: $00
    nop                                           ; $75B4: $00
    nop                                           ; $75B5: $00
    nop                                           ; $75B6: $00
    nop                                           ; $75B7: $00

jr_014_75B8:
    nop                                           ; $75B8: $00
    nop                                           ; $75B9: $00
    nop                                           ; $75BA: $00
    nop                                           ; $75BB: $00
    nop                                           ; $75BC: $00
    nop                                           ; $75BD: $00
    nop                                           ; $75BE: $00
    nop                                           ; $75BF: $00
    ret nz                                        ; $75C0: $C0

    ccf                                           ; $75C1: $3F
    ccf                                           ; $75C2: $3F
    nop                                           ; $75C3: $00
    nop                                           ; $75C4: $00
    nop                                           ; $75C5: $00
    nop                                           ; $75C6: $00
    nop                                           ; $75C7: $00
    ld bc, $0200                                  ; $75C8: $01 $00 $02
    ld bc, $0102                                  ; $75CB: $01 $02 $01
    ld [bc], a                                    ; $75CE: $02
    ld bc, $0102                                  ; $75CF: $01 $02 $01
    inc b                                         ; $75D2: $04
    inc bc                                        ; $75D3: $03
    jr jr_014_75DD                                ; $75D4: $18 $07

    ld h, $1F                                     ; $75D6: $26 $1F
    ld b, e                                       ; $75D8: $43
    ccf                                           ; $75D9: $3F
    add c                                         ; $75DA: $81
    ld a, a                                       ; $75DB: $7F
    add b                                         ; $75DC: $80

jr_014_75DD:
    ld a, a                                       ; $75DD: $7F
    ld a, a                                       ; $75DE: $7F
    nop                                           ; $75DF: $00
    sub e                                         ; $75E0: $93
    rrca                                          ; $75E1: $0F
    db $10                                        ; $75E2: $10
    rrca                                          ; $75E3: $0F
    ld h, b                                       ; $75E4: $60
    rra                                           ; $75E5: $1F
    add b                                         ; $75E6: $80
    ld a, a                                       ; $75E7: $7F
    ld h, c                                       ; $75E8: $61
    cp $62                                        ; $75E9: $FE $62
    db $FC                                        ; $75EB: $FC

jr_014_75EC:
    sbc d                                         ; $75EC: $9A
    db $FC                                        ; $75ED: $FC
    cp d                                          ; $75EE: $BA
    db $FC                                        ; $75EF: $FC
    inc [hl]                                      ; $75F0: $34
    ld hl, sp+$48                                 ; $75F1: $F8 $48
    ldh a, [$FF30]                                ; $75F3: $F0 $30
    ret nz                                        ; $75F5: $C0

    jr nz, jr_014_75B8                            ; $75F6: $20 $C0

    and b                                         ; $75F8: $A0
    ret nz                                        ; $75F9: $C0

    ld b, b                                       ; $75FA: $40
    add b                                         ; $75FB: $80
    ld b, b                                       ; $75FC: $40
    add b                                         ; $75FD: $80
    add b                                         ; $75FE: $80
    nop                                           ; $75FF: $00
    inc c                                         ; $7600: $0C
    di                                            ; $7601: $F3
    rlca                                          ; $7602: $07
    ld hl, sp+$03                                 ; $7603: $F8 $03
    db $FC                                        ; $7605: $FC
    nop                                           ; $7606: $00
    rst RST_38                                    ; $7607: $FF
    jp $233F                                      ; $7608: $C3 $3F $23


    rra                                           ; $760B: $1F
    inc d                                         ; $760C: $14
    rrca                                          ; $760D: $0F
    ld d, $0F                                     ; $760E: $16 $0F
    ld d, $0F                                     ; $7610: $16 $0F
    add hl, bc                                    ; $7612: $09
    rlca                                          ; $7613: $07
    ld b, $01                                     ; $7614: $06 $01
    ld bc, $0100                                  ; $7616: $01 $00 $01
    nop                                           ; $7619: $00
    ld bc, $0100                                  ; $761A: $01 $00 $01
    nop                                           ; $761D: $00
    ld bc, $0E00                                  ; $761E: $01 $00 $0E
    ldh a, [$FFF0]                                ; $7621: $F0 $F0
    nop                                           ; $7623: $00
    nop                                           ; $7624: $00
    nop                                           ; $7625: $00
    add b                                         ; $7626: $80
    nop                                           ; $7627: $00
    ld b, b                                       ; $7628: $40
    add b                                         ; $7629: $80
    jr nz, jr_014_75EC                            ; $762A: $20 $C0

    ret nc                                        ; $762C: $D0

    ldh [$FF50], a                                ; $762D: $E0 $50
    ldh [$FF50], a                                ; $762F: $E0 $50
    ldh [rNR10], a                                ; $7631: $E0 $10
    ldh [rNR10], a                                ; $7633: $E0 $10
    ldh [$FF28], a                                ; $7635: $E0 $28
    ldh a, [$FF74]                                ; $7637: $F0 $74
    ld hl, sp+$02                                 ; $7639: $F8 $02
    db $FC                                        ; $763B: $FC
    ld bc, $01FE                                  ; $763C: $01 $FE $01
    cp $00                                        ; $763F: $FE $00
    nop                                           ; $7641: $00
    nop                                           ; $7642: $00
    nop                                           ; $7643: $00
    nop                                           ; $7644: $00
    nop                                           ; $7645: $00
    nop                                           ; $7646: $00
    nop                                           ; $7647: $00
    nop                                           ; $7648: $00
    nop                                           ; $7649: $00
    ld bc, $0100                                  ; $764A: $01 $00 $01
    nop                                           ; $764D: $00
    inc bc                                        ; $764E: $03
    nop                                           ; $764F: $00
    inc a                                         ; $7650: $3C
    inc bc                                        ; $7651: $03
    ld b, b                                       ; $7652: $40
    ccf                                           ; $7653: $3F
    sbc e                                         ; $7654: $9B
    ld a, a                                       ; $7655: $7F
    sbc b                                         ; $7656: $98
    ld a, a                                       ; $7657: $7F
    ld b, a                                       ; $7658: $47
    ccf                                           ; $7659: $3F
    sbc e                                         ; $765A: $9B
    ld a, a                                       ; $765B: $7F
    sbc e                                         ; $765C: $9B
    ld a, a                                       ; $765D: $7F
    ld b, [hl]                                    ; $765E: $46
    ccf                                           ; $765F: $3F
    ld c, h                                       ; $7660: $4C
    inc sp                                        ; $7661: $33
    ld b, b                                       ; $7662: $40
    ccf                                           ; $7663: $3F
    ld b, b                                       ; $7664: $40
    ccf                                           ; $7665: $3F
    ld d, d                                       ; $7666: $52
    ccf                                           ; $7667: $3F
    adc b                                         ; $7668: $88
    ld a, a                                       ; $7669: $7F
    ld [$04FF], sp                                ; $766A: $08 $FF $04
    rst RST_38                                    ; $766D: $FF
    add b                                         ; $766E: $80
    ld a, a                                       ; $766F: $7F
    jp nz, Jump_014_423F                          ; $7670: $C2 $3F $42

    cp a                                          ; $7673: $BF
    ld bc, $41FF                                  ; $7674: $01 $FF $41
    rst RST_38                                    ; $7677: $FF
    ld h, e                                       ; $7678: $63
    rst RST_38                                    ; $7679: $FF
    ld h, c                                       ; $767A: $61
    rst RST_38                                    ; $767B: $FF
    ld l, c                                       ; $767C: $69
    rst RST_30                                    ; $767D: $F7
    db $DB                                        ; $767E: $DB
    rst RST_20                                    ; $767F: $E7
    ld de, $02EE                                  ; $7680: $11 $EE $02
    rst RST_38                                    ; $7683: $FF
    ld c, h                                       ; $7684: $4C
    rst RST_38                                    ; $7685: $FF
    add d                                         ; $7686: $82
    rst RST_38                                    ; $7687: $FF
    ld bc, $07FF                                  ; $7688: $01 $FF $07
    rst RST_38                                    ; $768B: $FF
    ld b, [hl]                                    ; $768C: $46
    rst RST_38                                    ; $768D: $FF
    nop                                           ; $768E: $00
    rst RST_38                                    ; $768F: $FF
    ld hl, $82FF                                  ; $7690: $21 $FF $82
    rst RST_38                                    ; $7693: $FF
    jr nc, @+$01                                  ; $7694: $30 $FF

jr_014_7696:
    ret nz                                        ; $7696: $C0

    rst RST_38                                    ; $7697: $FF
    adc h                                         ; $7698: $8C
    rst RST_38                                    ; $7699: $FF
    db $FC                                        ; $769A: $FC
    rst RST_38                                    ; $769B: $FF
    ld hl, sp-$01                                 ; $769C: $F8 $FF

jr_014_769E:
    jr nz, @+$01                                  ; $769E: $20 $FF

    sub b                                         ; $76A0: $90
    ld h, b                                       ; $76A1: $60
    db $10                                        ; $76A2: $10
    ldh [$FF50], a                                ; $76A3: $E0 $50
    ldh [$FFBC], a                                ; $76A5: $E0 $BC
    ret nz                                        ; $76A7: $C0

    add d                                         ; $76A8: $82
    db $FC                                        ; $76A9: $FC
    ld bc, $01FE                                  ; $76AA: $01 $FE $01
    cp $02                                        ; $76AD: $FE $02
    db $FC                                        ; $76AF: $FC
    add a                                         ; $76B0: $87
    ld hl, sp+$30                                 ; $76B1: $F8 $30
    rst RST_38                                    ; $76B3: $FF
    or h                                          ; $76B4: $B4
    rst RST_38                                    ; $76B5: $FF
    or [hl]                                       ; $76B6: $B6
    rst RST_38                                    ; $76B7: $FF
    ld [hl], $FF                                  ; $76B8: $36 $FF
    or [hl]                                       ; $76BA: $B6
    rst RST_38                                    ; $76BB: $FF
    or h                                          ; $76BC: $B4
    rst RST_38                                    ; $76BD: $FF
    ld l, h                                       ; $76BE: $6C
    rst RST_38                                    ; $76BF: $FF
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
    add b                                         ; $76D0: $80
    nop                                           ; $76D1: $00
    ld b, b                                       ; $76D2: $40
    add b                                         ; $76D3: $80
    jr nz, jr_014_7696                            ; $76D4: $20 $C0

    ld b, b                                       ; $76D6: $40
    add b                                         ; $76D7: $80
    add b                                         ; $76D8: $80
    nop                                           ; $76D9: $00
    ld b, b                                       ; $76DA: $40
    add b                                         ; $76DB: $80
    jr nz, jr_014_769E                            ; $76DC: $20 $C0

    ld b, b                                       ; $76DE: $40
    add b                                         ; $76DF: $80
    nop                                           ; $76E0: $00
    nop                                           ; $76E1: $00
    nop                                           ; $76E2: $00
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
    nop                                           ; $76F5: $00
    nop                                           ; $76F6: $00
    nop                                           ; $76F7: $00
    nop                                           ; $76F8: $00
    nop                                           ; $76F9: $00
    nop                                           ; $76FA: $00
    nop                                           ; $76FB: $00
    dec b                                         ; $76FC: $05
    nop                                           ; $76FD: $00
    jp z, $0005                                   ; $76FE: $CA $05 $00

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
    cp c                                          ; $771E: $B9
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
    add b                                         ; $773E: $80
    nop                                           ; $773F: $00
    inc c                                         ; $7740: $0C
    nop                                           ; $7741: $00
    ld d, $0C                                     ; $7742: $16 $0C
    ld d, $0C                                     ; $7744: $16 $0C
    ld d, $0C                                     ; $7746: $16 $0C
    ld a, [hl]                                    ; $7748: $7E
    inc c                                         ; $7749: $0C
    cp a                                          ; $774A: $BF
    halt                                          ; $774B: $76
    cp a                                          ; $774C: $BF
    halt                                          ; $774D: $76
    ld a, a                                       ; $774E: $7F
    ld b, $BF                                     ; $774F: $06 $BF
    ld [hl], b                                    ; $7751: $70
    cp a                                          ; $7752: $BF
    ld [hl], h                                    ; $7753: $74
    ld a, a                                       ; $7754: $7F
    inc c                                         ; $7755: $0C
    dec e                                         ; $7756: $1D
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

jr_014_7765:
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
    ld sp, hl                                     ; $7772: $F9
    nop                                           ; $7773: $00
    rrca                                          ; $7774: $0F
    ldh a, [$FFF9]                                ; $7775: $F0 $F9
    or $F8                                        ; $7777: $F6 $F8
    rst RST_30                                    ; $7779: $F7
    ld hl, sp-$09                                 ; $777A: $F8 $F7
    rst RST_38                                    ; $777C: $FF
    ldh a, [$FFF8]                                ; $777D: $F0 $F8
    nop                                           ; $777F: $00
    ld [bc], a                                    ; $7780: $02
    nop                                           ; $7781: $00
    ld h, l                                       ; $7782: $65
    ld [bc], a                                    ; $7783: $02
    ld e, d                                       ; $7784: $5A
    dec h                                         ; $7785: $25
    ld e, d                                       ; $7786: $5A
    dec h                                         ; $7787: $25
    ld l, a                                       ; $7788: $6F
    dec [hl]                                      ; $7789: $35
    rst RST_38                                    ; $778A: $FF
    db $10                                        ; $778B: $10
    jr c, jr_014_7765                             ; $778C: $38 $D7

    rra                                           ; $778E: $1F
    add sp, $0D                                   ; $778F: $E8 $0D
    ldh a, [c]                                    ; $7791: $F2
    adc [hl]                                      ; $7792: $8E
    ld [hl], c                                    ; $7793: $71
    ld c, a                                       ; $7794: $4F
    or l                                          ; $7795: $B5
    rst RST_38                                    ; $7796: $FF
    ld [bc], a                                    ; $7797: $02
    rrca                                          ; $7798: $0F
    inc bc                                        ; $7799: $03
    rra                                           ; $779A: $1F
    rlca                                          ; $779B: $07
    rla                                           ; $779C: $17
    dec bc                                        ; $779D: $0B
    rra                                           ; $779E: $1F
    inc bc                                        ; $779F: $03
    add b                                         ; $77A0: $80
    nop                                           ; $77A1: $00
    ld e, h                                       ; $77A2: $5C
    add b                                         ; $77A3: $80
    ld h, a                                       ; $77A4: $67
    sbc h                                         ; $77A5: $9C
    sbc $B9                                       ; $77A6: $DE $B9
    db $FD                                        ; $77A8: $FD
    rlca                                          ; $77A9: $07
    inc de                                        ; $77AA: $13
    rst RST_28                                    ; $77AB: $EF
    rst RST_18                                    ; $77AC: $DF
    ld l, $DE                                     ; $77AD: $2E $DE
    xor l                                         ; $77AF: $AD
    rst RST_18                                    ; $77B0: $DF
    jr nz, @+$7D                                  ; $77B1: $20 $7B

    rst RST_00                                    ; $77B3: $C7
    ld [hl], a                                    ; $77B4: $77
    adc h                                         ; $77B5: $8C
    push af                                       ; $77B6: $F5
    ld l, e                                       ; $77B7: $6B
    db $FD                                        ; $77B8: $FD
    add e                                         ; $77B9: $83

jr_014_77BA:
    rst RST_38                                    ; $77BA: $FF
    jr jr_014_77BA                                ; $77BB: $18 $FD

    ei                                            ; $77BD: $FB
    db $FD                                        ; $77BE: $FD
    di                                            ; $77BF: $F3
    nop                                           ; $77C0: $00
    nop                                           ; $77C1: $00
    ret nz                                        ; $77C2: $C0

    nop                                           ; $77C3: $00
    ld b, b                                       ; $77C4: $40
    add b                                         ; $77C5: $80
    ret nz                                        ; $77C6: $C0

    add b                                         ; $77C7: $80
    add b                                         ; $77C8: $80
    nop                                           ; $77C9: $00
    ld hl, sp+$00                                 ; $77CA: $F8 $00
    inc b                                         ; $77CC: $04
    ld hl, sp+$1C                                 ; $77CD: $F8 $1C
    ldh [$FF78], a                                ; $77CF: $E0 $78
    add b                                         ; $77D1: $80
    ldh a, [rP1]                                  ; $77D2: $F0 $00
    rst RST_38                                    ; $77D4: $FF
    ld h, b                                       ; $77D5: $60
    db $FC                                        ; $77D6: $FC
    ld l, e                                       ; $77D7: $6B
    rst RST_38                                    ; $77D8: $FF
    ld l, h                                       ; $77D9: $6C
    cp $6C                                        ; $77DA: $FE $6C
    rst RST_38                                    ; $77DC: $FF
    ld l, h                                       ; $77DD: $6C
    db $FC                                        ; $77DE: $FC
    ld l, e                                       ; $77DF: $6B
    ld bc, $0000                                  ; $77E0: $01 $00 $00
    nop                                           ; $77E3: $00
    nop                                           ; $77E4: $00
    nop                                           ; $77E5: $00
    nop                                           ; $77E6: $00
    nop                                           ; $77E7: $00

jr_014_77E8:
    ld bc, $0600                                  ; $77E8: $01 $00 $06
    ld bc, $050F                                  ; $77EB: $01 $0F $05
    dec c                                         ; $77EE: $0D
    ld b, $0C                                     ; $77EF: $06 $0C
    rlca                                          ; $77F1: $07
    ld [$0907], sp                                ; $77F2: $08 $07 $09
    rlca                                          ; $77F5: $07
    rra                                           ; $77F6: $1F
    ld [bc], a                                    ; $77F7: $02
    ld a, $1C                                     ; $77F8: $3E $1C
    ld a, [hl]                                    ; $77FA: $7E
    nop                                           ; $77FB: $00
    sub d                                         ; $77FC: $92
    ld l, h                                       ; $77FD: $6C
    cp $00                                        ; $77FE: $FE $00
    rst RST_38                                    ; $7800: $FF
    ret z                                         ; $7801: $C8

    rst RST_38                                    ; $7802: $FF
    jr nc, jr_014_7884                            ; $7803: $30 $7F

    nop                                           ; $7805: $00
    adc a                                         ; $7806: $8F
    ld [hl], b                                    ; $7807: $70
    adc [hl]                                      ; $7808: $8E
    ld [hl], c                                    ; $7809: $71
    pop de                                        ; $780A: $D1
    and b                                         ; $780B: $A0
    ldh [$FF80], a                                ; $780C: $E0 $80
    ldh [rLCDC], a                                ; $780E: $E0 $40
    ldh [$FFC0], a                                ; $7810: $E0 $C0
    ldh [$FFC0], a                                ; $7812: $E0 $C0
    ret nz                                        ; $7814: $C0

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
    rst RST_38                                    ; $7820: $FF
    dec de                                        ; $7821: $1B

jr_014_7822:
    cp a                                          ; $7822: $BF
    nop                                           ; $7823: $00

jr_014_7824:
    ret nz                                        ; $7824: $C0

    nop                                           ; $7825: $00
    jr nz, jr_014_77E8                            ; $7826: $20 $C0

    db $10                                        ; $7828: $10
    ldh [rNR23], a                                ; $7829: $E0 $18
    ldh [$FFEE], a                                ; $782B: $E0 $EE
    jr jr_014_78AE                                ; $782D: $18 $7F

    ld a, [de]                                    ; $782F: $1A
    ld a, e                                       ; $7830: $7B
    ld h, $71                                     ; $7831: $26 $71
    ld a, $39                                     ; $7833: $3E $39
    ld e, $1C                                     ; $7835: $1E $1C
    rlca                                          ; $7837: $07
    inc b                                         ; $7838: $04
    inc bc                                        ; $7839: $03
    rlca                                          ; $783A: $07
    nop                                           ; $783B: $00
    rlca                                          ; $783C: $07
    inc bc                                        ; $783D: $03
    inc bc                                        ; $783E: $03
    ld bc, $6090                                  ; $783F: $01 $90 $60
    ldh [$FF80], a                                ; $7842: $E0 $80
    ret nz                                        ; $7844: $C0

    add b                                         ; $7845: $80
    ldh [$FF80], a                                ; $7846: $E0 $80
    sub b                                         ; $7848: $90
    ld h, b                                       ; $7849: $60
    ldh [rP1], a                                  ; $784A: $E0 $00
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
    jr nz, jr_014_7822                            ; $7860: $20 $C0

    jr nc, jr_014_7824                            ; $7862: $30 $C0

    db $FC                                        ; $7864: $FC
    jr nc, @-$04                                  ; $7865: $30 $FA

    db $E4                                        ; $7867: $E4
    push hl                                       ; $7868: $E5
    ld e, d                                       ; $7869: $5A
    rst RST_38                                    ; $786A: $FF
    nop                                           ; $786B: $00
    nop                                           ; $786C: $00
    nop                                           ; $786D: $00
    nop                                           ; $786E: $00
    nop                                           ; $786F: $00
    nop                                           ; $7870: $00
    nop                                           ; $7871: $00
    nop                                           ; $7872: $00
    nop                                           ; $7873: $00
    nop                                           ; $7874: $00
    nop                                           ; $7875: $00
    nop                                           ; $7876: $00
    nop                                           ; $7877: $00
    nop                                           ; $7878: $00
    nop                                           ; $7879: $00
    nop                                           ; $787A: $00
    nop                                           ; $787B: $00
    nop                                           ; $787C: $00
    nop                                           ; $787D: $00
    nop                                           ; $787E: $00
    nop                                           ; $787F: $00
    ld bc, $0000                                  ; $7880: $01 $00 $00
    nop                                           ; $7883: $00

jr_014_7884:
    nop                                           ; $7884: $00
    nop                                           ; $7885: $00
    nop                                           ; $7886: $00
    nop                                           ; $7887: $00

jr_014_7888:
    ld bc, $0600                                  ; $7888: $01 $00 $06
    ld bc, $050F                                  ; $788B: $01 $0F $05
    dec c                                         ; $788E: $0D
    ld b, $0C                                     ; $788F: $06 $0C
    rlca                                          ; $7891: $07
    ld [$0907], sp                                ; $7892: $08 $07 $09
    rlca                                          ; $7895: $07
    rra                                           ; $7896: $1F
    ld [bc], a                                    ; $7897: $02
    ld a, $1C                                     ; $7898: $3E $1C
    ld a, [hl]                                    ; $789A: $7E
    nop                                           ; $789B: $00
    sub d                                         ; $789C: $92
    ld l, h                                       ; $789D: $6C
    cp $00                                        ; $789E: $FE $00
    rst RST_38                                    ; $78A0: $FF
    ret z                                         ; $78A1: $C8

    rst RST_38                                    ; $78A2: $FF
    jr nc, jr_014_7924                            ; $78A3: $30 $7F

    nop                                           ; $78A5: $00
    adc a                                         ; $78A6: $8F
    ld [hl], b                                    ; $78A7: $70
    adc [hl]                                      ; $78A8: $8E
    ld [hl], c                                    ; $78A9: $71
    pop de                                        ; $78AA: $D1
    and b                                         ; $78AB: $A0
    ldh [$FF80], a                                ; $78AC: $E0 $80

jr_014_78AE:
    ldh [rLCDC], a                                ; $78AE: $E0 $40
    ldh [$FFC0], a                                ; $78B0: $E0 $C0
    ldh [$FFC0], a                                ; $78B2: $E0 $C0
    ret nz                                        ; $78B4: $C0

    nop                                           ; $78B5: $00
    nop                                           ; $78B6: $00
    nop                                           ; $78B7: $00
    nop                                           ; $78B8: $00
    nop                                           ; $78B9: $00
    nop                                           ; $78BA: $00
    nop                                           ; $78BB: $00
    nop                                           ; $78BC: $00
    nop                                           ; $78BD: $00
    nop                                           ; $78BE: $00
    nop                                           ; $78BF: $00
    rst RST_38                                    ; $78C0: $FF
    dec de                                        ; $78C1: $1B
    cp a                                          ; $78C2: $BF
    nop                                           ; $78C3: $00
    ret nz                                        ; $78C4: $C0

    nop                                           ; $78C5: $00
    jr nz, jr_014_7888                            ; $78C6: $20 $C0

    db $10                                        ; $78C8: $10
    ldh [rNR23], a                                ; $78C9: $E0 $18
    ldh [$FFEE], a                                ; $78CB: $E0 $EE
    jr jr_014_794E                                ; $78CD: $18 $7F

    ld a, [de]                                    ; $78CF: $1A
    ld a, e                                       ; $78D0: $7B
    ld h, $71                                     ; $78D1: $26 $71
    ld a, $39                                     ; $78D3: $3E $39
    ld e, $1C                                     ; $78D5: $1E $1C
    rlca                                          ; $78D7: $07
    inc b                                         ; $78D8: $04
    inc bc                                        ; $78D9: $03
    rlca                                          ; $78DA: $07
    nop                                           ; $78DB: $00
    rlca                                          ; $78DC: $07
    inc bc                                        ; $78DD: $03
    inc bc                                        ; $78DE: $03
    ld bc, $6090                                  ; $78DF: $01 $90 $60
    ldh [$FF80], a                                ; $78E2: $E0 $80
    ret nz                                        ; $78E4: $C0

    add b                                         ; $78E5: $80
    ldh [$FF80], a                                ; $78E6: $E0 $80
    sub b                                         ; $78E8: $90
    ld h, b                                       ; $78E9: $60
    ldh [rP1], a                                  ; $78EA: $E0 $00
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
    nop                                           ; $7900: $00
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
    rra                                           ; $790C: $1F
    nop                                           ; $790D: $00
    ld h, $1B                                     ; $790E: $26 $1B
    ld a, a                                       ; $7910: $7F
    inc e                                         ; $7911: $1C
    sbc a                                         ; $7912: $9F
    ld l, a                                       ; $7913: $6F
    sbc a                                         ; $7914: $9F
    ld h, c                                       ; $7915: $61
    di                                            ; $7916: $F3
    ld l, h                                       ; $7917: $6C
    cp $6C                                        ; $7918: $FE $6C
    ld a, [hl]                                    ; $791A: $7E
    inc c                                         ; $791B: $0C
    inc c                                         ; $791C: $0C
    nop                                           ; $791D: $00
    nop                                           ; $791E: $00
    nop                                           ; $791F: $00
    nop                                           ; $7920: $00
    nop                                           ; $7921: $00
    nop                                           ; $7922: $00
    nop                                           ; $7923: $00

jr_014_7924:
    nop                                           ; $7924: $00

jr_014_7925:
    nop                                           ; $7925: $00

jr_014_7926:
    ld e, $00                                     ; $7926: $1E $00
    ld [hl+], a                                   ; $7928: $22
    inc e                                         ; $7929: $1C
    ld c, h                                       ; $792A: $4C
    jr nc, jr_014_7926                            ; $792B: $30 $F9

    nop                                           ; $792D: $00
    rrca                                          ; $792E: $0F
    ldh a, [$FFF9]                                ; $792F: $F0 $F9
    halt                                          ; $7931: $76
    ld hl, sp+$77                                 ; $7932: $F8 $77
    ld hl, sp+$77                                 ; $7934: $F8 $77
    rst RST_38                                    ; $7936: $FF
    ld [hl], b                                    ; $7937: $70
    ld a, b                                       ; $7938: $78
    nop                                           ; $7939: $00
    nop                                           ; $793A: $00
    nop                                           ; $793B: $00
    nop                                           ; $793C: $00
    nop                                           ; $793D: $00
    nop                                           ; $793E: $00
    nop                                           ; $793F: $00
    ld [bc], a                                    ; $7940: $02
    nop                                           ; $7941: $00
    ld h, l                                       ; $7942: $65
    ld [bc], a                                    ; $7943: $02
    ld e, d                                       ; $7944: $5A
    dec h                                         ; $7945: $25
    ld e, d                                       ; $7946: $5A
    dec h                                         ; $7947: $25
    ld l, a                                       ; $7948: $6F
    dec [hl]                                      ; $7949: $35
    rst RST_38                                    ; $794A: $FF
    db $10                                        ; $794B: $10
    jr c, jr_014_7925                             ; $794C: $38 $D7

jr_014_794E:
    rra                                           ; $794E: $1F
    add sp, $0D                                   ; $794F: $E8 $0D
    ldh a, [c]                                    ; $7951: $F2
    adc [hl]                                      ; $7952: $8E
    ld [hl], c                                    ; $7953: $71
    ld c, a                                       ; $7954: $4F
    or l                                          ; $7955: $B5
    rst RST_38                                    ; $7956: $FF
    ld [bc], a                                    ; $7957: $02
    rrca                                          ; $7958: $0F
    inc bc                                        ; $7959: $03
    rra                                           ; $795A: $1F
    rlca                                          ; $795B: $07
    rla                                           ; $795C: $17
    dec bc                                        ; $795D: $0B
    rra                                           ; $795E: $1F
    inc bc                                        ; $795F: $03
    add b                                         ; $7960: $80
    nop                                           ; $7961: $00

jr_014_7962:
    ld e, h                                       ; $7962: $5C
    add b                                         ; $7963: $80

jr_014_7964:
    ld h, a                                       ; $7964: $67
    sbc h                                         ; $7965: $9C
    sbc $B9                                       ; $7966: $DE $B9
    db $FD                                        ; $7968: $FD
    rlca                                          ; $7969: $07
    inc de                                        ; $796A: $13
    rst RST_28                                    ; $796B: $EF
    rst RST_18                                    ; $796C: $DF
    ld l, $DE                                     ; $796D: $2E $DE
    xor l                                         ; $796F: $AD
    rst RST_18                                    ; $7970: $DF
    jr nz, jr_014_79EE                            ; $7971: $20 $7B

    rst RST_00                                    ; $7973: $C7
    ld [hl], a                                    ; $7974: $77
    adc h                                         ; $7975: $8C
    push af                                       ; $7976: $F5
    ld l, e                                       ; $7977: $6B
    db $FD                                        ; $7978: $FD
    add e                                         ; $7979: $83

jr_014_797A:
    rst RST_38                                    ; $797A: $FF
    jr jr_014_797A                                ; $797B: $18 $FD

    ei                                            ; $797D: $FB
    db $FD                                        ; $797E: $FD
    di                                            ; $797F: $F3
    nop                                           ; $7980: $00
    nop                                           ; $7981: $00
    ret nz                                        ; $7982: $C0

    nop                                           ; $7983: $00
    ld b, b                                       ; $7984: $40
    add b                                         ; $7985: $80
    ret nz                                        ; $7986: $C0

    add b                                         ; $7987: $80
    add b                                         ; $7988: $80
    nop                                           ; $7989: $00
    ld hl, sp+$00                                 ; $798A: $F8 $00
    inc b                                         ; $798C: $04
    ld hl, sp+$1C                                 ; $798D: $F8 $1C
    ldh [$FF78], a                                ; $798F: $E0 $78
    add b                                         ; $7991: $80
    ldh a, [rP1]                                  ; $7992: $F0 $00
    rst RST_38                                    ; $7994: $FF
    ld h, b                                       ; $7995: $60
    db $FC                                        ; $7996: $FC
    ld l, e                                       ; $7997: $6B
    rst RST_38                                    ; $7998: $FF
    ld l, h                                       ; $7999: $6C
    cp $6C                                        ; $799A: $FE $6C
    rst RST_38                                    ; $799C: $FF
    ld l, h                                       ; $799D: $6C
    db $FC                                        ; $799E: $FC
    ld l, e                                       ; $799F: $6B
    jr nz, jr_014_7962                            ; $79A0: $20 $C0

    jr nc, jr_014_7964                            ; $79A2: $30 $C0

    db $FC                                        ; $79A4: $FC
    jr nc, @-$04                                  ; $79A5: $30 $FA

    db $E4                                        ; $79A7: $E4
    push hl                                       ; $79A8: $E5
    ld e, d                                       ; $79A9: $5A
    rst RST_38                                    ; $79AA: $FF
    nop                                           ; $79AB: $00
    nop                                           ; $79AC: $00
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
    nop                                           ; $79B9: $00
    nop                                           ; $79BA: $00
    nop                                           ; $79BB: $00
    nop                                           ; $79BC: $00
    nop                                           ; $79BD: $00
    nop                                           ; $79BE: $00
    nop                                           ; $79BF: $00
    ld bc, $0000                                  ; $79C0: $01 $00 $00
    nop                                           ; $79C3: $00
    nop                                           ; $79C4: $00
    nop                                           ; $79C5: $00
    nop                                           ; $79C6: $00
    nop                                           ; $79C7: $00

jr_014_79C8:
    ld bc, $0600                                  ; $79C8: $01 $00 $06
    ld bc, $050F                                  ; $79CB: $01 $0F $05
    dec c                                         ; $79CE: $0D
    ld b, $0C                                     ; $79CF: $06 $0C
    rlca                                          ; $79D1: $07
    ld [$0907], sp                                ; $79D2: $08 $07 $09
    rlca                                          ; $79D5: $07
    rra                                           ; $79D6: $1F
    ld [bc], a                                    ; $79D7: $02
    ld a, $1C                                     ; $79D8: $3E $1C
    ld a, [hl]                                    ; $79DA: $7E
    nop                                           ; $79DB: $00
    sub d                                         ; $79DC: $92
    ld l, h                                       ; $79DD: $6C
    cp $00                                        ; $79DE: $FE $00
    rst RST_38                                    ; $79E0: $FF
    ret z                                         ; $79E1: $C8

    rst RST_38                                    ; $79E2: $FF
    jr nc, jr_014_7A64                            ; $79E3: $30 $7F

    nop                                           ; $79E5: $00
    adc a                                         ; $79E6: $8F
    ld [hl], b                                    ; $79E7: $70
    adc [hl]                                      ; $79E8: $8E
    ld [hl], c                                    ; $79E9: $71
    pop de                                        ; $79EA: $D1
    and b                                         ; $79EB: $A0
    ldh [$FF80], a                                ; $79EC: $E0 $80

jr_014_79EE:
    ldh [rLCDC], a                                ; $79EE: $E0 $40
    ldh [$FFC0], a                                ; $79F0: $E0 $C0
    ldh [$FFC0], a                                ; $79F2: $E0 $C0
    ret nz                                        ; $79F4: $C0

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
    dec de                                        ; $7A01: $1B
    cp a                                          ; $7A02: $BF
    nop                                           ; $7A03: $00
    ret nz                                        ; $7A04: $C0

    nop                                           ; $7A05: $00
    jr nz, jr_014_79C8                            ; $7A06: $20 $C0

    db $10                                        ; $7A08: $10
    ldh [rNR23], a                                ; $7A09: $E0 $18
    ldh [$FFEE], a                                ; $7A0B: $E0 $EE
    jr jr_014_7A8E                                ; $7A0D: $18 $7F

    ld a, [de]                                    ; $7A0F: $1A
    ld a, e                                       ; $7A10: $7B
    ld h, $71                                     ; $7A11: $26 $71
    ld a, $39                                     ; $7A13: $3E $39
    ld e, $1C                                     ; $7A15: $1E $1C
    rlca                                          ; $7A17: $07
    inc b                                         ; $7A18: $04
    inc bc                                        ; $7A19: $03
    rlca                                          ; $7A1A: $07
    nop                                           ; $7A1B: $00
    rlca                                          ; $7A1C: $07
    inc bc                                        ; $7A1D: $03
    inc bc                                        ; $7A1E: $03
    ld bc, $C020                                  ; $7A1F: $01 $20 $C0
    jr nc, @-$3E                                  ; $7A22: $30 $C0

    db $FC                                        ; $7A24: $FC
    jr nc, @-$04                                  ; $7A25: $30 $FA

    db $E4                                        ; $7A27: $E4
    push hl                                       ; $7A28: $E5
    ld e, d                                       ; $7A29: $5A
    rst RST_38                                    ; $7A2A: $FF
    nop                                           ; $7A2B: $00
    nop                                           ; $7A2C: $00
    nop                                           ; $7A2D: $00
    nop                                           ; $7A2E: $00
    nop                                           ; $7A2F: $00
    nop                                           ; $7A30: $00
    nop                                           ; $7A31: $00
    nop                                           ; $7A32: $00
    nop                                           ; $7A33: $00
    nop                                           ; $7A34: $00
    nop                                           ; $7A35: $00
    nop                                           ; $7A36: $00
    nop                                           ; $7A37: $00
    nop                                           ; $7A38: $00
    nop                                           ; $7A39: $00
    nop                                           ; $7A3A: $00
    nop                                           ; $7A3B: $00
    nop                                           ; $7A3C: $00
    nop                                           ; $7A3D: $00
    nop                                           ; $7A3E: $00
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
    rra                                           ; $7A4A: $1F
    nop                                           ; $7A4B: $00
    ld h, a                                       ; $7A4C: $67
    dec de                                        ; $7A4D: $1B
    and h                                         ; $7A4E: $A4
    ld e, e                                       ; $7A4F: $5B
    rst RST_38                                    ; $7A50: $FF
    ld e, b                                       ; $7A51: $58
    rst RST_38                                    ; $7A52: $FF
    ld e, $BF                                     ; $7A53: $1E $BF
    ld e, h                                       ; $7A55: $5C
    cp $60                                        ; $7A56: $FE $60
    halt                                          ; $7A58: $76
    inc c                                         ; $7A59: $0C
    ld d, $0C                                     ; $7A5A: $16 $0C
    ld d, $0C                                     ; $7A5C: $16 $0C
    inc c                                         ; $7A5E: $0C
    nop                                           ; $7A5F: $00
    nop                                           ; $7A60: $00
    nop                                           ; $7A61: $00
    nop                                           ; $7A62: $00
    nop                                           ; $7A63: $00

jr_014_7A64:
    nop                                           ; $7A64: $00

jr_014_7A65:
    nop                                           ; $7A65: $00
    nop                                           ; $7A66: $00
    nop                                           ; $7A67: $00
    nop                                           ; $7A68: $00
    nop                                           ; $7A69: $00
    inc a                                         ; $7A6A: $3C
    nop                                           ; $7A6B: $00
    ld b, l                                       ; $7A6C: $45
    jr c, @-$5F                                   ; $7A6D: $38 $9F

    ld h, b                                       ; $7A6F: $60
    jp hl                                         ; $7A70: $E9


    sub [hl]                                      ; $7A71: $96
    ld [$F8F7], sp                                ; $7A72: $08 $F7 $F8
    rst RST_30                                    ; $7A75: $F7
    rst RST_38                                    ; $7A76: $FF
    ldh a, [$FFF8]                                ; $7A77: $F0 $F8
    ldh a, [$FFF0]                                ; $7A79: $F0 $F0
    nop                                           ; $7A7B: $00
    nop                                           ; $7A7C: $00
    nop                                           ; $7A7D: $00
    nop                                           ; $7A7E: $00
    nop                                           ; $7A7F: $00
    ld [bc], a                                    ; $7A80: $02
    nop                                           ; $7A81: $00
    ld h, l                                       ; $7A82: $65
    ld [bc], a                                    ; $7A83: $02
    ld e, d                                       ; $7A84: $5A
    dec h                                         ; $7A85: $25
    ld e, d                                       ; $7A86: $5A
    dec h                                         ; $7A87: $25
    ld l, a                                       ; $7A88: $6F
    dec [hl]                                      ; $7A89: $35
    rst RST_38                                    ; $7A8A: $FF
    db $10                                        ; $7A8B: $10
    jr c, jr_014_7A65                             ; $7A8C: $38 $D7

jr_014_7A8E:
    rra                                           ; $7A8E: $1F
    add sp, $0D                                   ; $7A8F: $E8 $0D
    ldh a, [c]                                    ; $7A91: $F2
    adc [hl]                                      ; $7A92: $8E
    ld [hl], c                                    ; $7A93: $71
    ld c, a                                       ; $7A94: $4F
    or l                                          ; $7A95: $B5
    rst RST_38                                    ; $7A96: $FF
    ld [bc], a                                    ; $7A97: $02
    rrca                                          ; $7A98: $0F
    inc bc                                        ; $7A99: $03
    rra                                           ; $7A9A: $1F
    rlca                                          ; $7A9B: $07
    rla                                           ; $7A9C: $17
    dec bc                                        ; $7A9D: $0B
    rra                                           ; $7A9E: $1F
    inc bc                                        ; $7A9F: $03
    add b                                         ; $7AA0: $80
    nop                                           ; $7AA1: $00
    ld e, h                                       ; $7AA2: $5C
    add b                                         ; $7AA3: $80
    ld h, a                                       ; $7AA4: $67
    sbc h                                         ; $7AA5: $9C
    sbc $B9                                       ; $7AA6: $DE $B9
    db $FD                                        ; $7AA8: $FD
    rlca                                          ; $7AA9: $07
    inc de                                        ; $7AAA: $13
    rst RST_28                                    ; $7AAB: $EF
    rst RST_18                                    ; $7AAC: $DF
    ld l, $DE                                     ; $7AAD: $2E $DE
    xor l                                         ; $7AAF: $AD
    rst RST_18                                    ; $7AB0: $DF
    jr nz, jr_014_7B2E                            ; $7AB1: $20 $7B

    rst RST_00                                    ; $7AB3: $C7
    ld [hl], a                                    ; $7AB4: $77
    adc h                                         ; $7AB5: $8C
    push af                                       ; $7AB6: $F5
    ld l, e                                       ; $7AB7: $6B
    db $FD                                        ; $7AB8: $FD
    add e                                         ; $7AB9: $83

jr_014_7ABA:
    rst RST_38                                    ; $7ABA: $FF
    jr jr_014_7ABA                                ; $7ABB: $18 $FD

    ei                                            ; $7ABD: $FB
    db $FD                                        ; $7ABE: $FD
    di                                            ; $7ABF: $F3
    nop                                           ; $7AC0: $00
    nop                                           ; $7AC1: $00
    ret nz                                        ; $7AC2: $C0

    nop                                           ; $7AC3: $00
    ld b, b                                       ; $7AC4: $40
    add b                                         ; $7AC5: $80
    ret nz                                        ; $7AC6: $C0

    add b                                         ; $7AC7: $80
    add b                                         ; $7AC8: $80
    nop                                           ; $7AC9: $00
    ld hl, sp+$00                                 ; $7ACA: $F8 $00
    inc b                                         ; $7ACC: $04
    ld hl, sp+$1C                                 ; $7ACD: $F8 $1C
    ldh [$FF78], a                                ; $7ACF: $E0 $78
    add b                                         ; $7AD1: $80
    ldh a, [rP1]                                  ; $7AD2: $F0 $00
    rst RST_38                                    ; $7AD4: $FF
    ld h, b                                       ; $7AD5: $60
    db $FC                                        ; $7AD6: $FC
    ld l, e                                       ; $7AD7: $6B
    rst RST_38                                    ; $7AD8: $FF
    ld l, h                                       ; $7AD9: $6C
    cp $6C                                        ; $7ADA: $FE $6C
    rst RST_38                                    ; $7ADC: $FF
    ld l, h                                       ; $7ADD: $6C
    db $FC                                        ; $7ADE: $FC
    ld l, e                                       ; $7ADF: $6B
    nop                                           ; $7AE0: $00
    nop                                           ; $7AE1: $00
    nop                                           ; $7AE2: $00
    nop                                           ; $7AE3: $00
    ldh [rP1], a                                  ; $7AE4: $E0 $00
    sub b                                         ; $7AE6: $90
    ld h, b                                       ; $7AE7: $60
    ldh [$FF80], a                                ; $7AE8: $E0 $80
    ret nz                                        ; $7AEA: $C0

    add b                                         ; $7AEB: $80
    ldh [$FF80], a                                ; $7AEC: $E0 $80
    sub b                                         ; $7AEE: $90
    ld h, b                                       ; $7AEF: $60
    ldh [rP1], a                                  ; $7AF0: $E0 $00
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
    ld bc, $0000                                  ; $7B00: $01 $00 $00
    nop                                           ; $7B03: $00
    nop                                           ; $7B04: $00
    nop                                           ; $7B05: $00
    nop                                           ; $7B06: $00
    nop                                           ; $7B07: $00

jr_014_7B08:
    ld bc, $0600                                  ; $7B08: $01 $00 $06
    ld bc, $050F                                  ; $7B0B: $01 $0F $05
    dec c                                         ; $7B0E: $0D
    ld b, $0C                                     ; $7B0F: $06 $0C
    rlca                                          ; $7B11: $07
    ld [$0907], sp                                ; $7B12: $08 $07 $09
    rlca                                          ; $7B15: $07
    rra                                           ; $7B16: $1F
    ld [bc], a                                    ; $7B17: $02
    ld a, $1C                                     ; $7B18: $3E $1C
    ld a, [hl]                                    ; $7B1A: $7E
    nop                                           ; $7B1B: $00
    sub d                                         ; $7B1C: $92
    ld l, h                                       ; $7B1D: $6C
    cp $00                                        ; $7B1E: $FE $00
    rst RST_38                                    ; $7B20: $FF
    ret z                                         ; $7B21: $C8

    rst RST_38                                    ; $7B22: $FF
    jr nc, jr_014_7BA4                            ; $7B23: $30 $7F

    nop                                           ; $7B25: $00
    adc a                                         ; $7B26: $8F
    ld [hl], b                                    ; $7B27: $70
    adc [hl]                                      ; $7B28: $8E
    ld [hl], c                                    ; $7B29: $71
    pop de                                        ; $7B2A: $D1
    and b                                         ; $7B2B: $A0
    ldh [$FF80], a                                ; $7B2C: $E0 $80

jr_014_7B2E:
    ldh [rLCDC], a                                ; $7B2E: $E0 $40
    ldh [$FFC0], a                                ; $7B30: $E0 $C0
    ldh [$FFC0], a                                ; $7B32: $E0 $C0
    ret nz                                        ; $7B34: $C0

    nop                                           ; $7B35: $00
    nop                                           ; $7B36: $00
    nop                                           ; $7B37: $00
    nop                                           ; $7B38: $00
    nop                                           ; $7B39: $00
    nop                                           ; $7B3A: $00
    nop                                           ; $7B3B: $00
    nop                                           ; $7B3C: $00
    nop                                           ; $7B3D: $00
    nop                                           ; $7B3E: $00
    nop                                           ; $7B3F: $00
    rst RST_38                                    ; $7B40: $FF
    dec de                                        ; $7B41: $1B
    cp a                                          ; $7B42: $BF
    nop                                           ; $7B43: $00
    ret nz                                        ; $7B44: $C0

    nop                                           ; $7B45: $00

jr_014_7B46:
    jr nz, jr_014_7B08                            ; $7B46: $20 $C0

    db $10                                        ; $7B48: $10
    ldh [rNR23], a                                ; $7B49: $E0 $18
    ldh [$FFEE], a                                ; $7B4B: $E0 $EE
    jr jr_014_7BCE                                ; $7B4D: $18 $7F

    ld a, [de]                                    ; $7B4F: $1A
    ld a, e                                       ; $7B50: $7B
    ld h, $71                                     ; $7B51: $26 $71
    ld a, $39                                     ; $7B53: $3E $39
    ld e, $1C                                     ; $7B55: $1E $1C
    rlca                                          ; $7B57: $07
    inc b                                         ; $7B58: $04
    inc bc                                        ; $7B59: $03
    rlca                                          ; $7B5A: $07
    nop                                           ; $7B5B: $00
    rlca                                          ; $7B5C: $07
    inc bc                                        ; $7B5D: $03
    inc bc                                        ; $7B5E: $03
    ld bc, $C020                                  ; $7B5F: $01 $20 $C0
    jr nc, @-$3E                                  ; $7B62: $30 $C0

    db $FC                                        ; $7B64: $FC
    jr nc, @-$04                                  ; $7B65: $30 $FA

    db $E4                                        ; $7B67: $E4
    push hl                                       ; $7B68: $E5
    ld e, d                                       ; $7B69: $5A
    rst RST_38                                    ; $7B6A: $FF
    nop                                           ; $7B6B: $00
    nop                                           ; $7B6C: $00
    nop                                           ; $7B6D: $00
    nop                                           ; $7B6E: $00
    nop                                           ; $7B6F: $00
    nop                                           ; $7B70: $00
    nop                                           ; $7B71: $00
    nop                                           ; $7B72: $00
    nop                                           ; $7B73: $00
    nop                                           ; $7B74: $00
    nop                                           ; $7B75: $00
    nop                                           ; $7B76: $00
    nop                                           ; $7B77: $00
    nop                                           ; $7B78: $00
    nop                                           ; $7B79: $00
    nop                                           ; $7B7A: $00
    nop                                           ; $7B7B: $00
    nop                                           ; $7B7C: $00
    nop                                           ; $7B7D: $00
    nop                                           ; $7B7E: $00
    nop                                           ; $7B7F: $00
    nop                                           ; $7B80: $00
    nop                                           ; $7B81: $00
    nop                                           ; $7B82: $00
    nop                                           ; $7B83: $00
    nop                                           ; $7B84: $00
    nop                                           ; $7B85: $00
    nop                                           ; $7B86: $00
    nop                                           ; $7B87: $00
    nop                                           ; $7B88: $00
    nop                                           ; $7B89: $00
    rra                                           ; $7B8A: $1F
    nop                                           ; $7B8B: $00
    ld h, a                                       ; $7B8C: $67
    dec de                                        ; $7B8D: $1B
    and h                                         ; $7B8E: $A4
    ld e, e                                       ; $7B8F: $5B
    rst RST_38                                    ; $7B90: $FF
    ld e, b                                       ; $7B91: $58
    rst RST_38                                    ; $7B92: $FF
    ld e, $BF                                     ; $7B93: $1E $BF
    ld e, h                                       ; $7B95: $5C
    cp $60                                        ; $7B96: $FE $60
    halt                                          ; $7B98: $76
    inc c                                         ; $7B99: $0C
    ld d, $0C                                     ; $7B9A: $16 $0C
    ld d, $0C                                     ; $7B9C: $16 $0C
    inc c                                         ; $7B9E: $0C
    nop                                           ; $7B9F: $00
    nop                                           ; $7BA0: $00
    nop                                           ; $7BA1: $00
    nop                                           ; $7BA2: $00
    nop                                           ; $7BA3: $00

jr_014_7BA4:
    nop                                           ; $7BA4: $00

jr_014_7BA5:
    nop                                           ; $7BA5: $00
    nop                                           ; $7BA6: $00
    nop                                           ; $7BA7: $00
    inc a                                         ; $7BA8: $3C
    nop                                           ; $7BA9: $00
    ld b, h                                       ; $7BAA: $44
    jr c, jr_014_7B46                             ; $7BAB: $38 $99

    ld h, b                                       ; $7BAD: $60
    rst RST_28                                    ; $7BAE: $EF
    sub b                                         ; $7BAF: $90
    add hl, bc                                    ; $7BB0: $09
    or $F8                                        ; $7BB1: $F6 $F8
    rst RST_30                                    ; $7BB3: $F7
    ld hl, sp-$09                                 ; $7BB4: $F8 $F7
    rst RST_38                                    ; $7BB6: $FF
    ldh a, [$FFF8]                                ; $7BB7: $F0 $F8
    nop                                           ; $7BB9: $00
    nop                                           ; $7BBA: $00
    nop                                           ; $7BBB: $00
    nop                                           ; $7BBC: $00
    nop                                           ; $7BBD: $00
    nop                                           ; $7BBE: $00
    nop                                           ; $7BBF: $00
    ld [bc], a                                    ; $7BC0: $02
    nop                                           ; $7BC1: $00
    ld h, l                                       ; $7BC2: $65
    ld [bc], a                                    ; $7BC3: $02
    ld e, d                                       ; $7BC4: $5A
    dec h                                         ; $7BC5: $25
    ld e, d                                       ; $7BC6: $5A
    dec h                                         ; $7BC7: $25
    ld l, a                                       ; $7BC8: $6F
    dec [hl]                                      ; $7BC9: $35
    rst RST_38                                    ; $7BCA: $FF
    db $10                                        ; $7BCB: $10
    jr c, jr_014_7BA5                             ; $7BCC: $38 $D7

jr_014_7BCE:
    rra                                           ; $7BCE: $1F
    add sp, $0D                                   ; $7BCF: $E8 $0D
    ldh a, [c]                                    ; $7BD1: $F2
    adc [hl]                                      ; $7BD2: $8E
    ld [hl], c                                    ; $7BD3: $71
    ld c, a                                       ; $7BD4: $4F
    or l                                          ; $7BD5: $B5
    rst RST_38                                    ; $7BD6: $FF
    ld [bc], a                                    ; $7BD7: $02
    rrca                                          ; $7BD8: $0F
    inc bc                                        ; $7BD9: $03
    rra                                           ; $7BDA: $1F
    rlca                                          ; $7BDB: $07
    rla                                           ; $7BDC: $17
    dec bc                                        ; $7BDD: $0B
    rra                                           ; $7BDE: $1F
    inc bc                                        ; $7BDF: $03
    add b                                         ; $7BE0: $80
    nop                                           ; $7BE1: $00
    ld e, h                                       ; $7BE2: $5C
    add b                                         ; $7BE3: $80
    ld h, a                                       ; $7BE4: $67
    sbc h                                         ; $7BE5: $9C
    sbc $B9                                       ; $7BE6: $DE $B9
    db $FD                                        ; $7BE8: $FD
    rlca                                          ; $7BE9: $07
    inc de                                        ; $7BEA: $13
    rst RST_28                                    ; $7BEB: $EF
    rst RST_18                                    ; $7BEC: $DF
    ld l, $DE                                     ; $7BED: $2E $DE
    xor l                                         ; $7BEF: $AD
    rst RST_18                                    ; $7BF0: $DF
    jr nz, jr_014_7C6E                            ; $7BF1: $20 $7B

    rst RST_00                                    ; $7BF3: $C7
    ld [hl], a                                    ; $7BF4: $77
    adc h                                         ; $7BF5: $8C
    push af                                       ; $7BF6: $F5
    ld l, e                                       ; $7BF7: $6B
    db $FD                                        ; $7BF8: $FD
    add e                                         ; $7BF9: $83

jr_014_7BFA:
    rst RST_38                                    ; $7BFA: $FF
    jr jr_014_7BFA                                ; $7BFB: $18 $FD

    ei                                            ; $7BFD: $FB
    db $FD                                        ; $7BFE: $FD
    di                                            ; $7BFF: $F3
    nop                                           ; $7C00: $00
    nop                                           ; $7C01: $00
    ret nz                                        ; $7C02: $C0

    nop                                           ; $7C03: $00
    ld b, b                                       ; $7C04: $40
    add b                                         ; $7C05: $80
    ret nz                                        ; $7C06: $C0

    add b                                         ; $7C07: $80
    add b                                         ; $7C08: $80
    nop                                           ; $7C09: $00
    ld hl, sp+$00                                 ; $7C0A: $F8 $00
    inc b                                         ; $7C0C: $04
    ld hl, sp+$1C                                 ; $7C0D: $F8 $1C
    ldh [$FF78], a                                ; $7C0F: $E0 $78
    add b                                         ; $7C11: $80
    ldh a, [rP1]                                  ; $7C12: $F0 $00
    rst RST_38                                    ; $7C14: $FF
    ld h, b                                       ; $7C15: $60
    db $FC                                        ; $7C16: $FC
    ld l, e                                       ; $7C17: $6B
    rst RST_38                                    ; $7C18: $FF
    ld l, h                                       ; $7C19: $6C
    cp $6C                                        ; $7C1A: $FE $6C
    rst RST_38                                    ; $7C1C: $FF
    ld l, h                                       ; $7C1D: $6C
    db $FC                                        ; $7C1E: $FC
    ld l, e                                       ; $7C1F: $6B
    nop                                           ; $7C20: $00
    nop                                           ; $7C21: $00
    nop                                           ; $7C22: $00
    nop                                           ; $7C23: $00
    ldh [rP1], a                                  ; $7C24: $E0 $00
    sub b                                         ; $7C26: $90
    ld h, b                                       ; $7C27: $60
    ldh [$FF80], a                                ; $7C28: $E0 $80
    ret nz                                        ; $7C2A: $C0

    add b                                         ; $7C2B: $80
    ldh [$FF80], a                                ; $7C2C: $E0 $80
    sub b                                         ; $7C2E: $90
    ld h, b                                       ; $7C2F: $60
    ldh [rP1], a                                  ; $7C30: $E0 $00
    nop                                           ; $7C32: $00
    nop                                           ; $7C33: $00
    nop                                           ; $7C34: $00
    nop                                           ; $7C35: $00
    nop                                           ; $7C36: $00
    nop                                           ; $7C37: $00
    nop                                           ; $7C38: $00
    nop                                           ; $7C39: $00
    nop                                           ; $7C3A: $00
    nop                                           ; $7C3B: $00
    nop                                           ; $7C3C: $00
    nop                                           ; $7C3D: $00
    nop                                           ; $7C3E: $00
    nop                                           ; $7C3F: $00
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

jr_014_7C6E:
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
