; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00c", ROMX[$4000], BANK[$c]

    inc bc                                        ; $4000: $03
    nop                                           ; $4001: $00
    ld b, $03                                     ; $4002: $06 $03
    dec bc                                        ; $4004: $0B
    inc b                                         ; $4005: $04
    dec de                                        ; $4006: $1B
    dec b                                         ; $4007: $05
    rra                                           ; $4008: $1F
    ld a, [bc]                                    ; $4009: $0A
    daa                                           ; $400A: $27
    add hl, de                                    ; $400B: $19
    cpl                                           ; $400C: $2F
    ld [de], a                                    ; $400D: $12
    ccf                                           ; $400E: $3F
    ld bc, $087F                                  ; $400F: $01 $7F $08
    or a                                          ; $4012: $B7
    ld l, d                                       ; $4013: $6A
    rst RST_38                                    ; $4014: $FF
    dec bc                                        ; $4015: $0B
    cp a                                          ; $4016: $BF
    ld [hl], a                                    ; $4017: $77
    rst RST_38                                    ; $4018: $FF
    rlca                                          ; $4019: $07
    cp a                                          ; $401A: $BF
    ld [hl], a                                    ; $401B: $77
    rst RST_38                                    ; $401C: $FF
    daa                                           ; $401D: $27
    ld a, a                                       ; $401E: $7F
    nop                                           ; $401F: $00
    cp $00                                        ; $4020: $FE $00
    ccf                                           ; $4022: $3F
    ldh [$FFFC], a                                ; $4023: $E0 $FC
    dec bc                                        ; $4025: $0B
    ld a, $E9                                     ; $4026: $3E $E9
    ld sp, hl                                     ; $4028: $F9
    ld b, $27                                     ; $4029: $06 $27
    ret c                                         ; $402B: $D8

    rst RST_38                                    ; $402C: $FF
    ld b, $F2                                     ; $402D: $06 $F2
    call Call_000_0DF2                            ; $402F: $CD $F2 $0D
    ei                                            ; $4032: $FB
    inc d                                         ; $4033: $14
    rst RST_38                                    ; $4034: $FF
    reti                                          ; $4035: $D9


    rst RST_30                                    ; $4036: $F7
    dec e                                         ; $4037: $1D
    rst RST_38                                    ; $4038: $FF
    adc b                                         ; $4039: $88
    call c, $E3A3                                 ; $403A: $DC $A3 $E3
    add c                                         ; $403D: $81
    add e                                         ; $403E: $83
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
    ret c                                         ; $404C: $D8

    nop                                           ; $404D: $00
    cp b                                          ; $404E: $B8
    ld d, b                                       ; $404F: $50
    cp b                                          ; $4050: $B8
    ld d, b                                       ; $4051: $50
    ld [hl], a                                    ; $4052: $77
    and b                                         ; $4053: $A0
    ld a, b                                       ; $4054: $78
    and a                                         ; $4055: $A7
    ret nc                                        ; $4056: $D0

    ld l, a                                       ; $4057: $6F
    pop de                                        ; $4058: $D1
    ld l, [hl]                                    ; $4059: $6E
    rst RST_30                                    ; $405A: $F7
    ld [$E2FD], sp                                ; $405B: $08 $FD $E2
    dec sp                                        ; $405E: $3B
    push af                                       ; $405F: $F5
    nop                                           ; $4060: $00
    nop                                           ; $4061: $00
    nop                                           ; $4062: $00
    nop                                           ; $4063: $00
    nop                                           ; $4064: $00
    nop                                           ; $4065: $00
    ldh a, [rP1]                                  ; $4066: $F0 $00
    jr c, @-$3E                                   ; $4068: $38 $C0

    ld hl, sp+$00                                 ; $406A: $F8 $00
    ldh a, [$FF80]                                ; $406C: $F0 $80
    ld l, b                                       ; $406E: $68
    or b                                          ; $406F: $B0
    db $FC                                        ; $4070: $FC
    add b                                         ; $4071: $80
    ld [$FE74], a                                 ; $4072: $EA $74 $FE

jr_00C_4075:
    nop                                           ; $4075: $00
    ld [$FE74], a                                 ; $4076: $EA $74 $FE
    jr nz, jr_00C_4075                            ; $4079: $20 $FA

    sub h                                         ; $407B: $94
    db $FC                                        ; $407C: $FC
    ldh [$FFE0], a                                ; $407D: $E0 $E0
    nop                                           ; $407F: $00
    ld b, $03                                     ; $4080: $06 $03
    dec bc                                        ; $4082: $0B
    inc b                                         ; $4083: $04
    ld [hl], c                                    ; $4084: $71
    ld c, $F0                                     ; $4085: $0E $F0
    ld l, a                                       ; $4087: $6F
    di                                            ; $4088: $F3
    ld l, h                                       ; $4089: $6C
    db $FC                                        ; $408A: $FC
    ld h, b                                       ; $408B: $60
    db $E4                                        ; $408C: $E4
    sbc b                                         ; $408D: $98
    add h                                         ; $408E: $84
    ld hl, sp+$08                                 ; $408F: $F8 $08
    ldh a, [$FF90]                                ; $4091: $F0 $90
    ld h, b                                       ; $4093: $60
    ld h, b                                       ; $4094: $60
    add b                                         ; $4095: $80
    and b                                         ; $4096: $A0
    ld b, b                                       ; $4097: $40
    and b                                         ; $4098: $A0
    ld b, b                                       ; $4099: $40
    ret nz                                        ; $409A: $C0

    nop                                           ; $409B: $00
    nop                                           ; $409C: $00
    nop                                           ; $409D: $00
    nop                                           ; $409E: $00
    nop                                           ; $409F: $00
    dec sp                                        ; $40A0: $3B
    push af                                       ; $40A1: $F5
    rst RST_30                                    ; $40A2: $F7
    ld l, c                                       ; $40A3: $69
    ei                                            ; $40A4: $FB
    add l                                         ; $40A5: $85
    rst RST_20                                    ; $40A6: $E7
    reti                                          ; $40A7: $D9


    db $FD                                        ; $40A8: $FD
    nop                                           ; $40A9: $00
    ret c                                         ; $40AA: $D8

    ldh a, [$FFF4]                                ; $40AB: $F0 $F4
    ret z                                         ; $40AD: $C8

    ldh [c], a                                    ; $40AE: $E2
    call c, $1EE1                                 ; $40AF: $DC $E1 $1E
    inc de                                        ; $40B2: $13
    dec c                                         ; $40B3: $0D
    rrca                                          ; $40B4: $0F
    inc bc                                        ; $40B5: $03
    rrca                                          ; $40B6: $0F
    ld bc, $0609                                  ; $40B7: $01 $09 $06
    inc b                                         ; $40BA: $04
    inc bc                                        ; $40BB: $03
    ld [bc], a                                    ; $40BC: $02
    ld bc, $0001                                  ; $40BD: $01 $01 $00
    ld bc, $0100                                  ; $40C0: $01 $00 $01
    nop                                           ; $40C3: $00
    ld bc, $0300                                  ; $40C4: $01 $00 $03
    ld bc, $0003                                  ; $40C7: $01 $03 $00
    inc b                                         ; $40CA: $04
    inc bc                                        ; $40CB: $03
    rrca                                          ; $40CC: $0F
    nop                                           ; $40CD: $00
    rra                                           ; $40CE: $1F
    nop                                           ; $40CF: $00
    add hl, hl                                    ; $40D0: $29
    ld d, $3F                                     ; $40D1: $16 $3F
    nop                                           ; $40D3: $00
    nop                                           ; $40D4: $00
    nop                                           ; $40D5: $00
    nop                                           ; $40D6: $00
    nop                                           ; $40D7: $00
    nop                                           ; $40D8: $00
    nop                                           ; $40D9: $00
    nop                                           ; $40DA: $00
    nop                                           ; $40DB: $00
    nop                                           ; $40DC: $00
    nop                                           ; $40DD: $00
    nop                                           ; $40DE: $00
    nop                                           ; $40DF: $00
    add b                                         ; $40E0: $80
    nop                                           ; $40E1: $00
    ret nz                                        ; $40E2: $C0

    add b                                         ; $40E3: $80
    ldh [$FF80], a                                ; $40E4: $E0 $80
    ldh [$FF80], a                                ; $40E6: $E0 $80
    ldh a, [$FF60]                                ; $40E8: $F0 $60
    ld [hl], b                                    ; $40EA: $70
    ldh [$FF30], a                                ; $40EB: $E0 $30
    ldh [rSVBK], a                                ; $40ED: $E0 $70
    add b                                         ; $40EF: $80
    adc b                                         ; $40F0: $88
    ld [hl], b                                    ; $40F1: $70
    cp h                                          ; $40F2: $BC
    ld b, b                                       ; $40F3: $40
    ld a, [hl]                                    ; $40F4: $7E
    nop                                           ; $40F5: $00
    ld d, l                                       ; $40F6: $55
    ld a, [hl+]                                   ; $40F7: $2A
    ld a, a                                       ; $40F8: $7F
    nop                                           ; $40F9: $00
    nop                                           ; $40FA: $00
    nop                                           ; $40FB: $00
    nop                                           ; $40FC: $00
    nop                                           ; $40FD: $00
    nop                                           ; $40FE: $00
    nop                                           ; $40FF: $00
    inc bc                                        ; $4100: $03
    nop                                           ; $4101: $00
    ld b, $03                                     ; $4102: $06 $03
    dec bc                                        ; $4104: $0B
    inc b                                         ; $4105: $04
    dec de                                        ; $4106: $1B
    dec b                                         ; $4107: $05
    rra                                           ; $4108: $1F
    ld a, [bc]                                    ; $4109: $0A
    daa                                           ; $410A: $27
    add hl, de                                    ; $410B: $19
    cpl                                           ; $410C: $2F
    ld [de], a                                    ; $410D: $12
    rra                                           ; $410E: $1F
    ld bc, $043F                                  ; $410F: $01 $3F $04
    ld e, e                                       ; $4112: $5B
    dec [hl]                                      ; $4113: $35
    ld a, a                                       ; $4114: $7F
    dec b                                         ; $4115: $05
    ld e, a                                       ; $4116: $5F
    dec sp                                        ; $4117: $3B
    ld a, a                                       ; $4118: $7F
    inc bc                                        ; $4119: $03
    ld e, a                                       ; $411A: $5F
    dec sp                                        ; $411B: $3B
    ld a, a                                       ; $411C: $7F
    inc de                                        ; $411D: $13
    ccf                                           ; $411E: $3F
    nop                                           ; $411F: $00
    cp $00                                        ; $4120: $FE $00
    ccf                                           ; $4122: $3F
    ldh [$FFFC], a                                ; $4123: $E0 $FC
    dec bc                                        ; $4125: $0B
    ld a, $C9                                     ; $4126: $3E $C9
    ld sp, hl                                     ; $4128: $F9
    ld b, $27                                     ; $4129: $06 $27
    ret c                                         ; $412B: $D8

    rst RST_38                                    ; $412C: $FF
    ld b, $F2                                     ; $412D: $06 $F2
    call Call_000_0DF2                            ; $412F: $CD $F2 $0D
    ei                                            ; $4132: $FB
    inc d                                         ; $4133: $14
    rst RST_38                                    ; $4134: $FF
    ld e, c                                       ; $4135: $59
    rst RST_30                                    ; $4136: $F7
    sbc l                                         ; $4137: $9D
    rst RST_38                                    ; $4138: $FF
    ret z                                         ; $4139: $C8

    db $EC                                        ; $413A: $EC
    db $D3                                        ; $413B: $D3
    di                                            ; $413C: $F3
    pop bc                                        ; $413D: $C1
    jp Jump_000_0080                              ; $413E: $C3 $80 $00


    nop                                           ; $4141: $00
    nop                                           ; $4142: $00
    nop                                           ; $4143: $00
    ret c                                         ; $4144: $D8

    nop                                           ; $4145: $00
    cp b                                          ; $4146: $B8
    ld d, b                                       ; $4147: $50
    cp b                                          ; $4148: $B8
    ld d, b                                       ; $4149: $50
    ld [hl], a                                    ; $414A: $77
    and b                                         ; $414B: $A0
    ld a, b                                       ; $414C: $78
    and a                                         ; $414D: $A7
    db $D3                                        ; $414E: $D3
    ld l, h                                       ; $414F: $6C
    rst RST_10                                    ; $4150: $D7
    ld l, d                                       ; $4151: $6A
    push af                                       ; $4152: $F5
    ld a, [bc]                                    ; $4153: $0A
    rst RST_38                                    ; $4154: $FF
    ldh [c], a                                    ; $4155: $E2
    ccf                                           ; $4156: $3F
    pop af                                        ; $4157: $F1
    ccf                                           ; $4158: $3F
    ldh a, [c]                                    ; $4159: $F2
    rst RST_30                                    ; $415A: $F7
    ld l, c                                       ; $415B: $69
    rst RST_38                                    ; $415C: $FF
    add d                                         ; $415D: $82
    rst RST_20                                    ; $415E: $E7
    jp c, RST_00                                  ; $415F: $DA $00 $00

    nop                                           ; $4162: $00
    nop                                           ; $4163: $00
    nop                                           ; $4164: $00
    nop                                           ; $4165: $00
    nop                                           ; $4166: $00
    nop                                           ; $4167: $00
    nop                                           ; $4168: $00
    nop                                           ; $4169: $00
    ldh a, [rP1]                                  ; $416A: $F0 $00
    jr c, @-$3E                                   ; $416C: $38 $C0

    ld a, b                                       ; $416E: $78
    add b                                         ; $416F: $80
    ldh a, [rP1]                                  ; $4170: $F0 $00
    or b                                          ; $4172: $B0
    ret nz                                        ; $4173: $C0

    ld hl, sp+$00                                 ; $4174: $F8 $00
    or h                                          ; $4176: $B4
    ret z                                         ; $4177: $C8

    db $FC                                        ; $4178: $FC
    nop                                           ; $4179: $00
    or h                                          ; $417A: $B4
    ret z                                         ; $417B: $C8

    db $FC                                        ; $417C: $FC
    and b                                         ; $417D: $A0
    db $F4                                        ; $417E: $F4
    ld l, b                                       ; $417F: $68
    adc [hl]                                      ; $4180: $8E
    inc bc                                        ; $4181: $03
    ld [hl], e                                    ; $4182: $73
    inc c                                         ; $4183: $0C
    pop af                                        ; $4184: $F1
    ld l, [hl]                                    ; $4185: $6E
    ldh a, [$FF6F]                                ; $4186: $F0 $6F
    rst RST_38                                    ; $4188: $FF
    ld h, b                                       ; $4189: $60
    db $E4                                        ; $418A: $E4
    sbc b                                         ; $418B: $98
    add h                                         ; $418C: $84
    ld hl, sp+$08                                 ; $418D: $F8 $08
    ldh a, [$FF90]                                ; $418F: $F0 $90
    ld h, b                                       ; $4191: $60
    ld h, b                                       ; $4192: $60
    add b                                         ; $4193: $80
    and b                                         ; $4194: $A0
    ld b, b                                       ; $4195: $40
    and b                                         ; $4196: $A0
    ld b, b                                       ; $4197: $40
    ret nz                                        ; $4198: $C0

    nop                                           ; $4199: $00
    nop                                           ; $419A: $00
    nop                                           ; $419B: $00
    nop                                           ; $419C: $00
    nop                                           ; $419D: $00
    nop                                           ; $419E: $00
    nop                                           ; $419F: $00
    ld bc, $0100                                  ; $41A0: $01 $00 $01
    nop                                           ; $41A3: $00
    ld bc, $0300                                  ; $41A4: $01 $00 $03
    ld bc, $0003                                  ; $41A7: $01 $03 $00
    inc b                                         ; $41AA: $04
    inc bc                                        ; $41AB: $03
    rrca                                          ; $41AC: $0F
    nop                                           ; $41AD: $00
    rra                                           ; $41AE: $1F
    nop                                           ; $41AF: $00
    add hl, hl                                    ; $41B0: $29
    ld d, $3F                                     ; $41B1: $16 $3F
    nop                                           ; $41B3: $00
    nop                                           ; $41B4: $00
    nop                                           ; $41B5: $00
    nop                                           ; $41B6: $00
    nop                                           ; $41B7: $00
    nop                                           ; $41B8: $00
    nop                                           ; $41B9: $00
    nop                                           ; $41BA: $00
    nop                                           ; $41BB: $00
    nop                                           ; $41BC: $00
    nop                                           ; $41BD: $00
    nop                                           ; $41BE: $00
    nop                                           ; $41BF: $00
    ei                                            ; $41C0: $FB
    ld bc, $F0D9                                  ; $41C1: $01 $D9 $F0
    or $C8                                        ; $41C4: $F6 $C8
    pop hl                                        ; $41C6: $E1
    sbc $E3                                       ; $41C7: $DE $E3
    dec e                                         ; $41C9: $1D
    rla                                           ; $41CA: $17
    dec bc                                        ; $41CB: $0B
    rrca                                          ; $41CC: $0F
    ld bc, $0609                                  ; $41CD: $01 $09 $06
    inc b                                         ; $41D0: $04
    inc bc                                        ; $41D1: $03
    ld [bc], a                                    ; $41D2: $02
    ld bc, $0001                                  ; $41D3: $01 $01 $00
    nop                                           ; $41D6: $00
    nop                                           ; $41D7: $00
    nop                                           ; $41D8: $00
    nop                                           ; $41D9: $00
    nop                                           ; $41DA: $00
    nop                                           ; $41DB: $00
    nop                                           ; $41DC: $00
    nop                                           ; $41DD: $00
    nop                                           ; $41DE: $00
    nop                                           ; $41DF: $00
    ld hl, sp-$20                                 ; $41E0: $F8 $E0
    ldh [rP1], a                                  ; $41E2: $E0 $00
    nop                                           ; $41E4: $00
    nop                                           ; $41E5: $00
    add b                                         ; $41E6: $80
    nop                                           ; $41E7: $00
    ret nz                                        ; $41E8: $C0

    add b                                         ; $41E9: $80
    ldh [$FF80], a                                ; $41EA: $E0 $80
    ldh [$FF80], a                                ; $41EC: $E0 $80
    ldh a, [$FF60]                                ; $41EE: $F0 $60
    ld [hl], b                                    ; $41F0: $70
    ldh [$FF30], a                                ; $41F1: $E0 $30
    ldh [rSVBK], a                                ; $41F3: $E0 $70
    add b                                         ; $41F5: $80
    adc b                                         ; $41F6: $88
    ld [hl], b                                    ; $41F7: $70
    cp h                                          ; $41F8: $BC
    ld b, b                                       ; $41F9: $40
    ld a, [hl]                                    ; $41FA: $7E
    nop                                           ; $41FB: $00
    ld d, l                                       ; $41FC: $55
    ld a, [hl+]                                   ; $41FD: $2A
    ld a, a                                       ; $41FE: $7F
    nop                                           ; $41FF: $00
    ld bc, $0200                                  ; $4200: $01 $00 $02
    ld bc, $0207                                  ; $4203: $01 $07 $02
    ld a, [bc]                                    ; $4206: $0A
    dec b                                         ; $4207: $05
    rrca                                          ; $4208: $0F
    ld [bc], a                                    ; $4209: $02
    ld d, $09                                     ; $420A: $16 $09
    rla                                           ; $420C: $17
    ld a, [bc]                                    ; $420D: $0A
    rrca                                          ; $420E: $0F
    nop                                           ; $420F: $00
    rrca                                          ; $4210: $0F
    nop                                           ; $4211: $00
    ld d, $0D                                     ; $4212: $16 $0D
    rra                                           ; $4214: $1F
    ld bc, $0E17                                  ; $4215: $01 $17 $0E
    rra                                           ; $4218: $1F
    nop                                           ; $4219: $00
    rla                                           ; $421A: $17
    ld c, $1F                                     ; $421B: $0E $1F
    inc b                                         ; $421D: $04
    rrca                                          ; $421E: $0F
    nop                                           ; $421F: $00
    ld a, a                                       ; $4220: $7F
    nop                                           ; $4221: $00
    cp a                                          ; $4222: $BF
    ld h, b                                       ; $4223: $60
    ld a, h                                       ; $4224: $7C
    adc e                                         ; $4225: $8B
    cp $49                                        ; $4226: $FE $49
    ld a, c                                       ; $4228: $79
    add [hl]                                      ; $4229: $86
    rst RST_20                                    ; $422A: $E7
    jr jr_00C_42AC                                ; $422B: $18 $7F

    add [hl]                                      ; $422D: $86
    ldh a, [c]                                    ; $422E: $F2
    dec c                                         ; $422F: $0D
    ldh a, [c]                                    ; $4230: $F2
    adc l                                         ; $4231: $8D
    ei                                            ; $4232: $FB
    inc d                                         ; $4233: $14
    cp $5B                                        ; $4234: $FE $5B
    xor $5B                                       ; $4236: $EE $5B
    rst RST_38                                    ; $4238: $FF
    add sp, -$07                                  ; $4239: $E8 $F9
    rst RST_30                                    ; $423B: $F7
    rst RST_38                                    ; $423C: $FF
    di                                            ; $423D: $F3
    di                                            ; $423E: $F3
    ldh [rP1], a                                  ; $423F: $E0 $00
    nop                                           ; $4241: $00
    nop                                           ; $4242: $00
    nop                                           ; $4243: $00
    ret c                                         ; $4244: $D8

    nop                                           ; $4245: $00
    cp b                                          ; $4246: $B8
    ld d, b                                       ; $4247: $50
    cp b                                          ; $4248: $B8
    ld d, b                                       ; $4249: $50
    ld a, a                                       ; $424A: $7F
    and b                                         ; $424B: $A0
    ld [hl], b                                    ; $424C: $70
    adc a                                         ; $424D: $8F
    db $EC                                        ; $424E: $EC
    ld d, e                                       ; $424F: $53
    rst RST_38                                    ; $4250: $FF
    ld c, b                                       ; $4251: $48
    or $0B                                        ; $4252: $F6 $0B
    rst RST_38                                    ; $4254: $FF
    ret z                                         ; $4255: $C8

    ld a, [hl]                                    ; $4256: $7E
    rst RST_20                                    ; $4257: $E7
    ld a, a                                       ; $4258: $7F
    ldh [$FFEE], a                                ; $4259: $E0 $EE
    rst RST_10                                    ; $425B: $D7
    cp $03                                        ; $425C: $FE $03
    rst RST_08                                    ; $425E: $CF
    or b                                          ; $425F: $B0
    nop                                           ; $4260: $00
    nop                                           ; $4261: $00
    nop                                           ; $4262: $00
    nop                                           ; $4263: $00
    nop                                           ; $4264: $00
    nop                                           ; $4265: $00
    nop                                           ; $4266: $00
    nop                                           ; $4267: $00
    nop                                           ; $4268: $00
    nop                                           ; $4269: $00
    ldh [rP1], a                                  ; $426A: $E0 $00
    ld [hl], b                                    ; $426C: $70
    add b                                         ; $426D: $80
    ldh a, [rP1]                                  ; $426E: $F0 $00
    ldh [rP1], a                                  ; $4270: $E0 $00
    ldh [rP1], a                                  ; $4272: $E0 $00
    ret c                                         ; $4274: $D8

    and b                                         ; $4275: $A0
    ld hl, sp-$80                                 ; $4276: $F8 $80
    ret c                                         ; $4278: $D8

    and b                                         ; $4279: $A0
    ld hl, sp-$80                                 ; $427A: $F8 $80
    ret c                                         ; $427C: $D8

    and b                                         ; $427D: $A0
    ld hl, sp+$00                                 ; $427E: $F8 $00
    xor $03                                       ; $4280: $EE $03
    ld [hl], e                                    ; $4282: $73
    inc c                                         ; $4283: $0C
    pop af                                        ; $4284: $F1
    ld l, [hl]                                    ; $4285: $6E
    ldh a, [$FF6F]                                ; $4286: $F0 $6F
    rst RST_38                                    ; $4288: $FF
    ld h, b                                       ; $4289: $60
    db $E4                                        ; $428A: $E4
    sbc b                                         ; $428B: $98
    add h                                         ; $428C: $84
    ld hl, sp+$08                                 ; $428D: $F8 $08
    ldh a, [$FF90]                                ; $428F: $F0 $90
    ld h, b                                       ; $4291: $60
    ld h, b                                       ; $4292: $60
    add b                                         ; $4293: $80
    and b                                         ; $4294: $A0
    ld b, b                                       ; $4295: $40
    and b                                         ; $4296: $A0
    ld b, b                                       ; $4297: $40
    ret nz                                        ; $4298: $C0

    nop                                           ; $4299: $00
    nop                                           ; $429A: $00
    nop                                           ; $429B: $00
    nop                                           ; $429C: $00
    nop                                           ; $429D: $00
    nop                                           ; $429E: $00
    nop                                           ; $429F: $00
    ld bc, $0100                                  ; $42A0: $01 $00 $01
    nop                                           ; $42A3: $00
    ld bc, $0300                                  ; $42A4: $01 $00 $03
    ld bc, $0003                                  ; $42A7: $01 $03 $00
    inc b                                         ; $42AA: $04
    inc bc                                        ; $42AB: $03

jr_00C_42AC:
    rrca                                          ; $42AC: $0F
    nop                                           ; $42AD: $00
    rra                                           ; $42AE: $1F
    nop                                           ; $42AF: $00
    add hl, hl                                    ; $42B0: $29
    ld d, $3F                                     ; $42B1: $16 $3F
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
    ld bc, $0700                                  ; $42CC: $01 $00 $07
    ld bc, $073F                                  ; $42CF: $01 $3F $07
    ccf                                           ; $42D2: $3F
    rla                                           ; $42D3: $17
    ld l, a                                       ; $42D4: $6F
    dec de                                        ; $42D5: $1B
    cp a                                          ; $42D6: $BF
    ld l, e                                       ; $42D7: $6B
    rst RST_38                                    ; $42D8: $FF
    ld d, c                                       ; $42D9: $51
    ld e, a                                       ; $42DA: $5F
    inc l                                         ; $42DB: $2C
    ld l, $14                                     ; $42DC: $2E $14
    inc e                                         ; $42DE: $1C
    nop                                           ; $42DF: $00

jr_00C_42E0:
    rra                                           ; $42E0: $1F
    nop                                           ; $42E1: $00

jr_00C_42E2:
    ccf                                           ; $42E2: $3F
    nop                                           ; $42E3: $00
    inc a                                         ; $42E4: $3C
    dec bc                                        ; $42E5: $0B
    ld e, [hl]                                    ; $42E6: $5E
    add hl, hl                                    ; $42E7: $29
    cp c                                          ; $42E8: $B9
    ld b, [hl]                                    ; $42E9: $46
    rst RST_20                                    ; $42EA: $E7
    jr jr_00C_42AC                                ; $42EB: $18 $BF

    ld b, [hl]                                    ; $42ED: $46
    ldh a, [c]                                    ; $42EE: $F2
    dec l                                         ; $42EF: $2D
    ldh a, [c]                                    ; $42F0: $F2
    ld c, l                                       ; $42F1: $4D
    ld a, e                                       ; $42F2: $7B
    inc d                                         ; $42F3: $14
    rst RST_38                                    ; $42F4: $FF
    add hl, hl                                    ; $42F5: $29
    db $FC                                        ; $42F6: $FC
    adc e                                         ; $42F7: $8B
    db $FC                                        ; $42F8: $FC
    set 7, a                                      ; $42F9: $CB $FF
    pop bc                                        ; $42FB: $C1
    ld sp, hl                                     ; $42FC: $F9
    and $E7                                       ; $42FD: $E6 $E7
    jp RST_00                                     ; $42FF: $C3 $00 $00


    ret c                                         ; $4302: $D8

    nop                                           ; $4303: $00
    cp b                                          ; $4304: $B8
    ld d, b                                       ; $4305: $50
    cp b                                          ; $4306: $B8
    ld d, b                                       ; $4307: $50
    ld [hl], b                                    ; $4308: $70
    and b                                         ; $4309: $A0
    ld a, a                                       ; $430A: $7F
    add b                                         ; $430B: $80
    db $E3                                        ; $430C: $E3
    ld e, h                                       ; $430D: $5C
    rst RST_00                                    ; $430E: $C7
    jr c, jr_00C_42E0                             ; $430F: $38 $CF

    jr nc, jr_00C_42E2                            ; $4311: $30 $CF

    ld [hl], $FF                                  ; $4313: $36 $FF
    add [hl]                                      ; $4315: $86
    rst RST_28                                    ; $4316: $EF
    jp nc, $D8E7                                  ; $4317: $D2 $E7 $D8

    rst RST_08                                    ; $431A: $CF
    or d                                          ; $431B: $B2
    sub a                                         ; $431C: $97
    ld h, d                                       ; $431D: $62
    rst RST_30                                    ; $431E: $F7
    ld [bc], a                                    ; $431F: $02
    add b                                         ; $4320: $80
    nop                                           ; $4321: $00
    ret nz                                        ; $4322: $C0

    nop                                           ; $4323: $00
    ret nz                                        ; $4324: $C0

    nop                                           ; $4325: $00
    ldh [rP1], a                                  ; $4326: $E0 $00
    ld d, b                                       ; $4328: $50
    and b                                         ; $4329: $A0
    ldh a, [rP1]                                  ; $432A: $F0 $00
    ldh a, [rP1]                                  ; $432C: $F0 $00
    db $10                                        ; $432E: $10
    ldh [rNR10], a                                ; $432F: $E0 $10
    ldh [rNR10], a                                ; $4331: $E0 $10
    ldh [rNR10], a                                ; $4333: $E0 $10
    ldh [rNR10], a                                ; $4335: $E0 $10
    ldh [$FFF0], a                                ; $4337: $E0 $F0
    nop                                           ; $4339: $00
    ldh a, [$FFE0]                                ; $433A: $F0 $E0
    ldh a, [$FFE0]                                ; $433C: $F0 $E0
    ldh a, [$FFE0]                                ; $433E: $F0 $E0
    jp Jump_000_0300                              ; $4340: $C3 $00 $03


    ld bc, $0003                                  ; $4343: $01 $03 $00
    ld c, $01                                     ; $4346: $0E $01
    ld e, $0D                                     ; $4348: $1E $0D
    rra                                           ; $434A: $1F
    inc c                                         ; $434B: $0C
    rra                                           ; $434C: $1F
    inc c                                         ; $434D: $0C
    rrca                                          ; $434E: $0F
    ld bc, $070F                                  ; $434F: $01 $0F $07
    rrca                                          ; $4352: $0F
    rlca                                          ; $4353: $07
    rrca                                          ; $4354: $0F
    rlca                                          ; $4355: $07
    rrca                                          ; $4356: $0F
    ld b, $17                                     ; $4357: $06 $17
    ld [$0639], sp                                ; $4359: $08 $39 $06
    ld a, l                                       ; $435C: $7D
    ld [bc], a                                    ; $435D: $02
    sbc [hl]                                      ; $435E: $9E
    ld h, b                                       ; $435F: $60
    rst RST_38                                    ; $4360: $FF
    ld [de], a                                    ; $4361: $12
    sbc e                                         ; $4362: $9B
    ld h, b                                       ; $4363: $60
    rla                                           ; $4364: $17
    db $E3                                        ; $4365: $E3
    rla                                           ; $4366: $17
    db $E3                                        ; $4367: $E3
    cpl                                           ; $4368: $2F
    push de                                       ; $4369: $D5
    ld e, a                                       ; $436A: $5F
    and d                                         ; $436B: $A2
    db $E3                                        ; $436C: $E3
    inc e                                         ; $436D: $1C
    ldh [c], a                                    ; $436E: $E2
    sbc h                                         ; $436F: $9C
    pop hl                                        ; $4370: $E1
    sbc [hl]                                      ; $4371: $9E
    sub c                                         ; $4372: $91
    ld c, $89                                     ; $4373: $0E $89
    ld b, $06                                     ; $4375: $06 $06
    ld bc, $0007                                  ; $4377: $01 $07 $00
    rrca                                          ; $437A: $0F
    nop                                           ; $437B: $00
    inc de                                        ; $437C: $13
    inc c                                         ; $437D: $0C
    ld e, $00                                     ; $437E: $1E $00
    ldh [$FFC0], a                                ; $4380: $E0 $C0
    ret nz                                        ; $4382: $C0

    nop                                           ; $4383: $00
    nop                                           ; $4384: $00
    nop                                           ; $4385: $00
    nop                                           ; $4386: $00
    nop                                           ; $4387: $00
    nop                                           ; $4388: $00
    nop                                           ; $4389: $00
    add b                                         ; $438A: $80
    nop                                           ; $438B: $00
    add b                                         ; $438C: $80
    nop                                           ; $438D: $00
    add b                                         ; $438E: $80
    nop                                           ; $438F: $00
    add b                                         ; $4390: $80
    nop                                           ; $4391: $00
    nop                                           ; $4392: $00
    nop                                           ; $4393: $00
    nop                                           ; $4394: $00
    nop                                           ; $4395: $00
    nop                                           ; $4396: $00
    nop                                           ; $4397: $00
    nop                                           ; $4398: $00

jr_00C_4399:
    nop                                           ; $4399: $00
    nop                                           ; $439A: $00
    nop                                           ; $439B: $00
    nop                                           ; $439C: $00
    nop                                           ; $439D: $00
    nop                                           ; $439E: $00
    nop                                           ; $439F: $00
    ld hl, sp+$00                                 ; $43A0: $F8 $00
    nop                                           ; $43A2: $00
    nop                                           ; $43A3: $00
    nop                                           ; $43A4: $00
    nop                                           ; $43A5: $00
    nop                                           ; $43A6: $00
    nop                                           ; $43A7: $00
    nop                                           ; $43A8: $00
    nop                                           ; $43A9: $00
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
    nop                                           ; $43B8: $00
    nop                                           ; $43B9: $00
    nop                                           ; $43BA: $00
    nop                                           ; $43BB: $00
    nop                                           ; $43BC: $00
    nop                                           ; $43BD: $00
    nop                                           ; $43BE: $00
    nop                                           ; $43BF: $00
    ld a, $00                                     ; $43C0: $3E $00
    ld a, a                                       ; $43C2: $7F
    nop                                           ; $43C3: $00
    ld [hl], d                                    ; $43C4: $72
    dec l                                         ; $43C5: $2D
    ld a, [$E525]                                 ; $43C6: $FA $25 $E5
    ld a, [de]                                    ; $43C9: $1A
    sbc l                                         ; $43CA: $9D
    ld h, d                                       ; $43CB: $62
    rst RST_38                                    ; $43CC: $FF
    jr jr_00C_4399                                ; $43CD: $18 $CA

    dec [hl]                                      ; $43CF: $35
    jp z, $EE35                                   ; $43D0: $CA $35 $EE

    ld d, c                                       ; $43D3: $51
    ld a, a                                       ; $43D4: $7F
    ld h, $73                                     ; $43D5: $26 $73
    cpl                                           ; $43D7: $2F
    ld [hl], e                                    ; $43D8: $73
    cpl                                           ; $43D9: $2F
    ccf                                           ; $43DA: $3F
    ld b, $66                                     ; $43DB: $06 $66
    add hl, de                                    ; $43DD: $19
    rst RST_38                                    ; $43DE: $FF
    ld l, h                                       ; $43DF: $6C
    nop                                           ; $43E0: $00
    nop                                           ; $43E1: $00
    ld h, b                                       ; $43E2: $60
    nop                                           ; $43E3: $00
    ldh [rLCDC], a                                ; $43E4: $E0 $40
    ldh [rLCDC], a                                ; $43E6: $E0 $40
    ret nz                                        ; $43E8: $C0

    add b                                         ; $43E9: $80
    ld hl, sp+$00                                 ; $43EA: $F8 $00
    inc e                                         ; $43EC: $1C
    ldh [$FF3E], a                                ; $43ED: $E0 $3E
    ret nz                                        ; $43EF: $C0

    ld a, [hl]                                    ; $43F0: $7E

jr_00C_43F1:
    add b                                         ; $43F1: $80
    ld a, [hl]                                    ; $43F2: $7E

jr_00C_43F3:
    add b                                         ; $43F3: $80
    db $FC                                        ; $43F4: $FC
    jr nc, jr_00C_43F3                            ; $43F5: $30 $FC

    jr nc, jr_00C_43F1                            ; $43F7: $30 $F8

    jr nz, @+$38                                  ; $43F9: $20 $36

    ret z                                         ; $43FB: $C8

    ld a, [$CE04]                                 ; $43FC: $FA $04 $CE
    or b                                          ; $43FF: $B0
    ccf                                           ; $4400: $3F
    inc e                                         ; $4401: $1C
    ld a, a                                       ; $4402: $7F
    dec hl                                        ; $4403: $2B
    rst RST_38                                    ; $4404: $FF
    ld d, e                                       ; $4405: $53
    cp e                                          ; $4406: $BB
    ld b, l                                       ; $4407: $45
    ld e, l                                       ; $4408: $5D
    ld [hl+], a                                   ; $4409: $22
    ld a, $05                                     ; $440A: $3E $05
    rrca                                          ; $440C: $0F
    ld b, $0F                                     ; $440D: $06 $0F
    ld bc, $050F                                  ; $440F: $01 $0F $05
    dec c                                         ; $4412: $0D
    ld b, $04                                     ; $4413: $06 $04
    inc bc                                        ; $4415: $03
    inc b                                         ; $4416: $04
    inc bc                                        ; $4417: $03
    rlca                                          ; $4418: $07
    nop                                           ; $4419: $00
    dec c                                         ; $441A: $0D
    ld [bc], a                                    ; $441B: $02
    rra                                           ; $441C: $1F
    nop                                           ; $441D: $00
    inc l                                         ; $441E: $2C
    inc de                                        ; $441F: $13
    pop hl                                        ; $4420: $E1
    ld e, [hl]                                    ; $4421: $5E
    ldh [c], a                                    ; $4422: $E2

jr_00C_4423:
    ld e, h                                       ; $4423: $5C
    jp nz, $E43C                                  ; $4424: $C2 $3C $E4

    sbc b                                         ; $4427: $98
    ld hl, sp-$20                                 ; $4428: $F8 $E0
    ldh [rLCDC], a                                ; $442A: $E0 $40
    ld h, b                                       ; $442C: $60
    add b                                         ; $442D: $80
    ldh a, [$FF60]                                ; $442E: $F0 $60
    ldh a, [$FFE0]                                ; $4430: $F0 $E0
    ldh a, [$FFE0]                                ; $4432: $F0 $E0
    ldh a, [$FF60]                                ; $4434: $F0 $60
    ld hl, sp+$00                                 ; $4436: $F8 $00
    ret z                                         ; $4438: $C8

    jr nc, jr_00C_4423                            ; $4439: $30 $E8

    db $10                                        ; $443B: $10
    ldh a, [rP1]                                  ; $443C: $F0 $00
    ldh [rP1], a                                  ; $443E: $E0 $00
    rst RST_38                                    ; $4440: $FF
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
    nop                                           ; $445A: $00
    nop                                           ; $445B: $00
    nop                                           ; $445C: $00
    nop                                           ; $445D: $00
    nop                                           ; $445E: $00
    nop                                           ; $445F: $00
    rlca                                          ; $4460: $07
    nop                                           ; $4461: $00
    rrca                                          ; $4462: $0F
    nop                                           ; $4463: $00
    ld c, $05                                     ; $4464: $0E $05
    rrca                                          ; $4466: $0F
    inc b                                         ; $4467: $04
    inc e                                         ; $4468: $1C
    inc bc                                        ; $4469: $03
    inc de                                        ; $446A: $13
    inc c                                         ; $446B: $0C
    rra                                           ; $446C: $1F
    inc bc                                        ; $446D: $03
    add hl, bc                                    ; $446E: $09
    ld b, $09                                     ; $446F: $06 $09
    ld b, $05                                     ; $4471: $06 $05
    ld [bc], a                                    ; $4473: $02
    rrca                                          ; $4474: $0F
    inc b                                         ; $4475: $04
    rrca                                          ; $4476: $0F
    inc b                                         ; $4477: $04
    rrca                                          ; $4478: $0F
    inc bc                                        ; $4479: $03
    ld a, a                                       ; $447A: $7F
    ld b, $7E                                     ; $447B: $06 $7E
    ld sp, $1BFC                                  ; $447D: $31 $FC $1B
    ldh [rP1], a                                  ; $4480: $E0 $00
    db $FC                                        ; $4482: $FC
    nop                                           ; $4483: $00
    ld e, h                                       ; $4484: $5C
    and b                                         ; $4485: $A0
    ld e, h                                       ; $4486: $5C
    xor b                                         ; $4487: $A8
    cp b                                          ; $4488: $B8
    ld d, b                                       ; $4489: $50
    cp h                                          ; $448A: $BC
    ld b, b                                       ; $448B: $40
    adc $30                                       ; $448C: $CE $30
    sbc a                                         ; $448E: $9F
    ld h, b                                       ; $448F: $60
    cp a                                          ; $4490: $BF
    ld b, b                                       ; $4491: $40
    ld a, a                                       ; $4492: $7F
    sbc b                                         ; $4493: $98
    cp $18                                        ; $4494: $FE $18
    cp $80                                        ; $4496: $FE $80
    db $EC                                        ; $4498: $EC
    sub b                                         ; $4499: $90
    or h                                          ; $449A: $B4
    ld c, b                                       ; $449B: $48
    inc e                                         ; $449C: $1C
    ldh [rNR23], a                                ; $449D: $E0 $18
    ldh [$FF2F], a                                ; $449F: $E0 $2F
    ld e, $1F                                     ; $44A1: $1E $1F
    rlca                                          ; $44A3: $07
    rla                                           ; $44A4: $17
    rrca                                          ; $44A5: $0F
    dec de                                        ; $44A6: $1B
    ld b, $1F                                     ; $44A7: $06 $1F
    ld [$0C1F], sp                                ; $44A9: $08 $1F $0C
    inc c                                         ; $44AC: $0C
    inc bc                                        ; $44AD: $03
    ld [$0807], sp                                ; $44AE: $08 $07 $08
    rlca                                          ; $44B1: $07
    ld [$0907], sp                                ; $44B2: $08 $07 $09
    ld b, $17                                     ; $44B5: $06 $17
    ld [$0639], sp                                ; $44B7: $08 $39 $06
    ld a, l                                       ; $44BA: $7D
    ld [bc], a                                    ; $44BB: $02
    sbc [hl]                                      ; $44BC: $9E
    ld h, b                                       ; $44BD: $60
    ld hl, sp+$00                                 ; $44BE: $F8 $00
    rrca                                          ; $44C0: $0F
    ldh a, [c]                                    ; $44C1: $F2
    cp a                                          ; $44C2: $BF
    ld b, b                                       ; $44C3: $40
    and $18                                       ; $44C4: $E6 $18
    ld h, d                                       ; $44C6: $62
    sbc h                                         ; $44C7: $9C
    ld h, c                                       ; $44C8: $61
    sbc [hl]                                      ; $44C9: $9E
    cp e                                          ; $44CA: $BB
    inc b                                         ; $44CB: $04
    ld a, a                                       ; $44CC: $7F
    sbc e                                         ; $44CD: $9B
    ld a, a                                       ; $44CE: $7F
    sbc e                                         ; $44CF: $9B
    sbc a                                         ; $44D0: $9F
    dec bc                                        ; $44D1: $0B
    adc a                                         ; $44D2: $8F
    ld bc, $0001                                  ; $44D3: $01 $01 $00
    nop                                           ; $44D6: $00
    nop                                           ; $44D7: $00
    nop                                           ; $44D8: $00
    nop                                           ; $44D9: $00
    nop                                           ; $44DA: $00
    nop                                           ; $44DB: $00
    ld bc, $0200                                  ; $44DC: $01 $00 $02
    ld bc, $00E0                                  ; $44DF: $01 $E0 $00
    ldh a, [$FFE0]                                ; $44E2: $F0 $E0
    ld hl, sp-$10                                 ; $44E4: $F8 $F0
    ld hl, sp-$10                                 ; $44E6: $F8 $F0
    db $FC                                        ; $44E8: $FC
    ld a, b                                       ; $44E9: $78
    ld a, h                                       ; $44EA: $7C
    jr nc, jr_00C_451F                            ; $44EB: $30 $32

    inc c                                         ; $44ED: $0C
    ld a, [hl-]                                   ; $44EE: $3A
    inc b                                         ; $44EF: $04
    ld a, $00                                     ; $44F0: $3E $00
    ld a, h                                       ; $44F2: $7C
    nop                                           ; $44F3: $00
    sbc b                                         ; $44F4: $98
    ld h, b                                       ; $44F5: $60
    ldh a, [rP1]                                  ; $44F6: $F0 $00
    nop                                           ; $44F8: $00
    nop                                           ; $44F9: $00
    nop                                           ; $44FA: $00
    nop                                           ; $44FB: $00
    nop                                           ; $44FC: $00
    nop                                           ; $44FD: $00
    nop                                           ; $44FE: $00
    nop                                           ; $44FF: $00
    ld bc, $0600                                  ; $4500: $01 $00 $06
    ld bc, $060D                                  ; $4503: $01 $0D $06
    ld d, $09                                     ; $4506: $16 $09
    scf                                           ; $4508: $37
    ld a, [bc]                                    ; $4509: $0A
    ld a, $15                                     ; $450A: $3E $15
    ld c, a                                       ; $450C: $4F
    ld [hl-], a                                   ; $450D: $32
    ld e, a                                       ; $450E: $5F
    dec h                                         ; $450F: $25
    ld l, a                                       ; $4510: $6F
    ld [de], a                                    ; $4511: $12
    cpl                                           ; $4512: $2F
    db $10                                        ; $4513: $10
    rra                                           ; $4514: $1F
    nop                                           ; $4515: $00
    rrca                                          ; $4516: $0F
    inc bc                                        ; $4517: $03
    ccf                                           ; $4518: $3F
    inc bc                                        ; $4519: $03
    ld h, a                                       ; $451A: $67
    dec sp                                        ; $451B: $3B
    rst RST_38                                    ; $451C: $FF
    add hl, de                                    ; $451D: $19
    rst RST_18                                    ; $451E: $DF

jr_00C_451F:
    ld h, h                                       ; $451F: $64
    nop                                           ; $4520: $00
    nop                                           ; $4521: $00
    nop                                           ; $4522: $00
    nop                                           ; $4523: $00
    nop                                           ; $4524: $00
    nop                                           ; $4525: $00
    nop                                           ; $4526: $00
    nop                                           ; $4527: $00
    nop                                           ; $4528: $00
    nop                                           ; $4529: $00

jr_00C_452A:
    nop                                           ; $452A: $00
    nop                                           ; $452B: $00
    nop                                           ; $452C: $00
    nop                                           ; $452D: $00
    nop                                           ; $452E: $00
    nop                                           ; $452F: $00
    nop                                           ; $4530: $00
    nop                                           ; $4531: $00
    db $FC                                        ; $4532: $FC
    nop                                           ; $4533: $00
    ld a, a                                       ; $4534: $7F
    ret nz                                        ; $4535: $C0

    ld sp, hl                                     ; $4536: $F9
    ld d, $7D                                     ; $4537: $16 $7D
    jp nc, Jump_000_0DF2                          ; $4539: $D2 $F2 $0D

    ld c, [hl]                                    ; $453C: $4E
    or c                                          ; $453D: $B1
    rst RST_38                                    ; $453E: $FF
    inc c                                         ; $453F: $0C
    or b                                          ; $4540: $B0
    nop                                           ; $4541: $00
    ld [hl], b                                    ; $4542: $70
    and b                                         ; $4543: $A0
    ld [hl], b                                    ; $4544: $70
    and b                                         ; $4545: $A0
    rst RST_28                                    ; $4546: $EF
    ld b, b                                       ; $4547: $40
    ldh a, [rVBK]                                 ; $4548: $F0 $4F
    and b                                         ; $454A: $A0
    rst RST_18                                    ; $454B: $DF
    and e                                         ; $454C: $A3
    call c, $11EF                                 ; $454D: $DC $EF $11
    rst RST_38                                    ; $4550: $FF
    jp $E57B                                      ; $4551: $C3 $7B $E5


    ld a, a                                       ; $4554: $7F
    ret nc                                        ; $4555: $D0

    db $EB                                        ; $4556: $EB
    sub $FF                                       ; $4557: $D6 $FF
    db $10                                        ; $4559: $10
    ei                                            ; $455A: $FB
    adc [hl]                                      ; $455B: $8E
    rst RST_38                                    ; $455C: $FF
    db $10                                        ; $455D: $10
    cp e                                          ; $455E: $BB
    xor $00                                       ; $455F: $EE $00
    nop                                           ; $4561: $00
    nop                                           ; $4562: $00
    nop                                           ; $4563: $00
    add b                                         ; $4564: $80
    nop                                           ; $4565: $00
    ld h, b                                       ; $4566: $60
    add b                                         ; $4567: $80
    jr nc, jr_00C_452A                            ; $4568: $30 $C0

    ldh a, [rP1]                                  ; $456A: $F0 $00
    ldh a, [rP1]                                  ; $456C: $F0 $00
    ret nz                                        ; $456E: $C0

    add b                                         ; $456F: $80
    ld hl, sp+$00                                 ; $4570: $F8 $00
    ld l, b                                       ; $4572: $68
    sub b                                         ; $4573: $90
    db $E4                                        ; $4574: $E4
    jr jr_00C_45DB                                ; $4575: $18 $64

    sbc b                                         ; $4577: $98
    db $F4                                        ; $4578: $F4
    ld [$40B8], sp                                ; $4579: $08 $B8 $40
    ldh [$FF80], a                                ; $457C: $E0 $80
    add b                                         ; $457E: $80
    nop                                           ; $457F: $00
    ld [hl], a                                    ; $4580: $77
    add hl, bc                                    ; $4581: $09
    dec sp                                        ; $4582: $3B
    dec d                                         ; $4583: $15
    rra                                           ; $4584: $1F
    ld [$030C], sp                                ; $4585: $08 $0C $03
    rrca                                          ; $4588: $0F
    nop                                           ; $4589: $00
    rra                                           ; $458A: $1F
    nop                                           ; $458B: $00
    add hl, hl                                    ; $458C: $29
    ld d, $3F                                     ; $458D: $16 $3F
    nop                                           ; $458F: $00
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
    push hl                                       ; $45A0: $E5
    sbc d                                         ; $45A1: $9A
    push hl                                       ; $45A2: $E5
    ld a, [de]                                    ; $45A3: $1A
    rst RST_30                                    ; $45A4: $F7
    add hl, hl                                    ; $45A5: $29
    cp $B3                                        ; $45A6: $FE $B3
    xor $3B                                       ; $45A8: $EE $3B
    rst RST_38                                    ; $45AA: $FF
    sub b                                         ; $45AB: $90
    push de                                       ; $45AC: $D5
    xor e                                         ; $45AD: $AB
    sub e                                         ; $45AE: $93
    ld l, l                                       ; $45AF: $6D
    sub e                                         ; $45B0: $93
    ld l, h                                       ; $45B1: $6C
    sbc e                                         ; $45B2: $9B
    ld h, l                                       ; $45B3: $65
    and a                                         ; $45B4: $A7
    ld b, c                                       ; $45B5: $41
    and e                                         ; $45B6: $A3
    ld b, c                                       ; $45B7: $41
    ld h, c                                       ; $45B8: $61
    add b                                         ; $45B9: $80
    and b                                         ; $45BA: $A0
    ld b, b                                       ; $45BB: $40
    and b                                         ; $45BC: $A0
    ld b, b                                       ; $45BD: $40
    ret nz                                        ; $45BE: $C0

    nop                                           ; $45BF: $00
    rst RST_38                                    ; $45C0: $FF
    add h                                         ; $45C1: $84
    call z, $C6B0                                 ; $45C2: $CC $B0 $C6
    jr c, @+$51                                   ; $45C5: $38 $4F

    ld [hl-], a                                   ; $45C7: $32
    ccf                                           ; $45C8: $3F
    dec c                                         ; $45C9: $0D
    ccf                                           ; $45CA: $3F
    inc e                                         ; $45CB: $1C
    ld a, $0D                                     ; $45CC: $3E $0D
    rra                                           ; $45CE: $1F
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
    nop                                           ; $45DA: $00

jr_00C_45DB:
    nop                                           ; $45DB: $00
    nop                                           ; $45DC: $00
    nop                                           ; $45DD: $00
    nop                                           ; $45DE: $00
    nop                                           ; $45DF: $00
    add b                                         ; $45E0: $80
    nop                                           ; $45E1: $00
    ret nz                                        ; $45E2: $C0

    nop                                           ; $45E3: $00
    ld b, b                                       ; $45E4: $40
    add b                                         ; $45E5: $80
    ret nz                                        ; $45E6: $C0

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
    nop                                           ; $45FE: $00
    nop                                           ; $45FF: $00
    nop                                           ; $4600: $00
    nop                                           ; $4601: $00
    nop                                           ; $4602: $00
    nop                                           ; $4603: $00
    rrca                                          ; $4604: $0F
    nop                                           ; $4605: $00
    ld a, [de]                                    ; $4606: $1A
    dec b                                         ; $4607: $05
    rra                                           ; $4608: $1F
    dec c                                         ; $4609: $0D
    rra                                           ; $460A: $1F
    dec b                                         ; $460B: $05
    ccf                                           ; $460C: $3F
    db $10                                        ; $460D: $10
    ccf                                           ; $460E: $3F
    ld e, $3F                                     ; $460F: $1E $3F
    rra                                           ; $4611: $1F
    ccf                                           ; $4612: $3F
    rra                                           ; $4613: $1F
    rra                                           ; $4614: $1F
    ld c, $1F                                     ; $4615: $0E $1F
    ld bc, $0917                                  ; $4617: $01 $17 $09
    rrca                                          ; $461A: $0F
    ld b, $17                                     ; $461B: $06 $17
    add hl, bc                                    ; $461D: $09
    dec bc                                        ; $461E: $0B
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

jr_00C_462B:
    nop                                           ; $462B: $00
    nop                                           ; $462C: $00
    nop                                           ; $462D: $00
    nop                                           ; $462E: $00
    nop                                           ; $462F: $00
    nop                                           ; $4630: $00
    nop                                           ; $4631: $00
    nop                                           ; $4632: $00
    nop                                           ; $4633: $00
    ret nz                                        ; $4634: $C0

    nop                                           ; $4635: $00
    and b                                         ; $4636: $A0
    ld b, b                                       ; $4637: $40
    ldh [rLCDC], a                                ; $4638: $E0 $40
    ldh a, [rP1]                                  ; $463A: $F0 $00
    cp a                                          ; $463C: $BF
    ldh [$FFFD], a                                ; $463D: $E0 $FD
    ld a, [bc]                                    ; $463F: $0A
    jr nc, jr_00C_4642                            ; $4640: $30 $00

jr_00C_4642:
    ld e, h                                       ; $4642: $5C
    jr nc, jr_00C_462B                            ; $4643: $30 $E6

    ld a, h                                       ; $4645: $7C
    ld a, [$FF7C]                                 ; $4646: $FA $7C $FF
    inc a                                         ; $4649: $3C
    cp a                                          ; $464A: $BF
    ld e, [hl]                                    ; $464B: $5E
    ld e, $E4                                     ; $464C: $1E $E4
    inc c                                         ; $464E: $0C
    ldh a, [rNR32]                                ; $464F: $F0 $1C
    add sp, $3A                                   ; $4651: $E8 $3A
    call nc, $04FA                                ; $4653: $D4 $FA $04
    ld a, d                                       ; $4656: $7A
    and h                                         ; $4657: $A4
    ld a, [$E404]                                 ; $4658: $FA $04 $E4
    jr @-$06                                      ; $465B: $18 $F8

    nop                                           ; $465D: $00
    sub b                                         ; $465E: $90
    ld h, b                                       ; $465F: $60
    rst RST_38                                    ; $4660: $FF
    adc b                                         ; $4661: $88
    ei                                            ; $4662: $FB
    inc b                                         ; $4663: $04
    rst RST_20                                    ; $4664: $E7
    ld e, b                                       ; $4665: $58
    cp $45                                        ; $4666: $FE $45
    rst RST_30                                    ; $4668: $F7
    xor b                                         ; $4669: $A8
    push af                                       ; $466A: $F5
    ld a, [bc]                                    ; $466B: $0A
    cp $31                                        ; $466C: $FE $31
    ei                                            ; $466E: $FB
    ld l, h                                       ; $466F: $6C
    cp c                                          ; $4670: $B9
    ld l, a                                       ; $4671: $6F
    rst RST_38                                    ; $4672: $FF
    ld b, e                                       ; $4673: $43
    ld b, a                                       ; $4674: $47
    inc a                                         ; $4675: $3C
    ld a, [hl]                                    ; $4676: $7E
    dec a                                         ; $4677: $3D

jr_00C_4678:
    ccf                                           ; $4678: $3F
    nop                                           ; $4679: $00

jr_00C_467A:
    scf                                           ; $467A: $37
    jr jr_00C_46B9                                ; $467B: $18 $3C

    dec de                                        ; $467D: $1B
    ld e, h                                       ; $467E: $5C
    inc hl                                        ; $467F: $23
    jr nz, jr_00C_4642                            ; $4680: $20 $C0

    ret nz                                        ; $4682: $C0

    nop                                           ; $4683: $00
    ret nz                                        ; $4684: $C0

    nop                                           ; $4685: $00
    add b                                         ; $4686: $80
    nop                                           ; $4687: $00
    ld b, b                                       ; $4688: $40
    add b                                         ; $4689: $80
    ld b, b                                       ; $468A: $40
    add b                                         ; $468B: $80
    ret nz                                        ; $468C: $C0

    nop                                           ; $468D: $00
    ldh [$FFC0], a                                ; $468E: $E0 $C0
    ldh a, [$FFC0]                                ; $4690: $F0 $C0
    ldh a, [$FFC0]                                ; $4692: $F0 $C0
    ldh a, [rNR41]                                ; $4694: $F0 $20
    jr nc, jr_00C_4678                            ; $4696: $30 $E0

    jr nc, jr_00C_467A                            ; $4698: $30 $E0

    jr nc, @-$1E                                  ; $469A: $30 $E0

    or b                                          ; $469C: $B0
    ld h, b                                       ; $469D: $60
    ldh a, [rP1]                                  ; $469E: $F0 $00
    ld h, h                                       ; $46A0: $64
    dec de                                        ; $46A1: $1B
    push af                                       ; $46A2: $F5
    ld l, d                                       ; $46A3: $6A
    rst RST_30                                    ; $46A4: $F7
    ld l, c                                       ; $46A5: $69
    rst RST_38                                    ; $46A6: $FF
    ld h, c                                       ; $46A7: $61
    push af                                       ; $46A8: $F5
    ld a, [bc]                                    ; $46A9: $0A
    ld b, d                                       ; $46AA: $42
    dec a                                         ; $46AB: $3D
    ld b, d                                       ; $46AC: $42
    dec a                                         ; $46AD: $3D
    inc hl                                        ; $46AE: $23
    inc e                                         ; $46AF: $1C
    dec h                                         ; $46B0: $25
    jr jr_00C_46F1                                ; $46B1: $18 $3E

    nop                                           ; $46B3: $00
    ld [hl+], a                                   ; $46B4: $22
    inc e                                         ; $46B5: $1C
    ld a, [hl-]                                   ; $46B6: $3A
    inc b                                         ; $46B7: $04
    inc a                                         ; $46B8: $3C

jr_00C_46B9:
    nop                                           ; $46B9: $00

jr_00C_46BA:
    ld a, h                                       ; $46BA: $7C
    nop                                           ; $46BB: $00
    adc b                                         ; $46BC: $88
    ld [hl], b                                    ; $46BD: $70
    ld hl, sp+$00                                 ; $46BE: $F8 $00
    adc b                                         ; $46C0: $88
    ld [hl], b                                    ; $46C1: $70
    ld a, b                                       ; $46C2: $78
    nop                                           ; $46C3: $00
    ld a, b                                       ; $46C4: $78
    nop                                           ; $46C5: $00
    ld a, h                                       ; $46C6: $7C
    nop                                           ; $46C7: $00
    ld c, d                                       ; $46C8: $4A
    inc [hl]                                      ; $46C9: $34
    ld a, [hl]                                    ; $46CA: $7E
    nop                                           ; $46CB: $00
    nop                                           ; $46CC: $00
    nop                                           ; $46CD: $00
    nop                                           ; $46CE: $00
    nop                                           ; $46CF: $00
    nop                                           ; $46D0: $00
    nop                                           ; $46D1: $00
    nop                                           ; $46D2: $00
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
    inc bc                                        ; $46E0: $03
    nop                                           ; $46E1: $00
    inc c                                         ; $46E2: $0C
    inc bc                                        ; $46E3: $03
    rla                                           ; $46E4: $17
    ld [$061F], sp                                ; $46E5: $08 $1F $06
    cpl                                           ; $46E8: $2F
    jr @+$41                                      ; $46E9: $18 $3F

    inc b                                         ; $46EB: $04
    ld l, $19                                     ; $46EC: $2E $19
    ccf                                           ; $46EE: $3F
    db $10                                        ; $46EF: $10
    ld a, a                                       ; $46F0: $7F

jr_00C_46F1:
    ld [$6AB7], sp                                ; $46F1: $08 $B7 $6A
    rst RST_38                                    ; $46F4: $FF
    dec bc                                        ; $46F5: $0B
    cp a                                          ; $46F6: $BF
    ld [hl], a                                    ; $46F7: $77
    rst RST_38                                    ; $46F8: $FF
    rlca                                          ; $46F9: $07
    cp a                                          ; $46FA: $BF
    ld [hl], a                                    ; $46FB: $77
    rst RST_38                                    ; $46FC: $FF
    inc h                                         ; $46FD: $24
    ld a, [hl]                                    ; $46FE: $7E
    nop                                           ; $46FF: $00
    ldh [rP1], a                                  ; $4700: $E0 $00
    ldh a, [$FFE0]                                ; $4702: $F0 $E0
    db $FD                                        ; $4704: $FD
    nop                                           ; $4705: $00
    res 6, l                                      ; $4706: $CB $B5
    db $EB                                        ; $4708: $EB
    sub l                                         ; $4709: $95
    sub a                                         ; $470A: $97
    ld l, d                                       ; $470B: $6A
    ld [hl], a                                    ; $470C: $77
    adc d                                         ; $470D: $8A
    cp $65                                        ; $470E: $FE $65
    ld l, $D5                                     ; $4710: $2E $D5
    ld l, $D1                                     ; $4712: $2E $D1
    cp a                                          ; $4714: $BF
    ld b, b                                       ; $4715: $40
    rst RST_38                                    ; $4716: $FF
    ld b, $F9                                     ; $4717: $06 $F9
    ld e, a                                       ; $4719: $5F
    ei                                            ; $471A: $FB
    inc l                                         ; $471B: $2C
    ld a, h                                       ; $471C: $7C
    inc bc                                        ; $471D: $03
    adc b                                         ; $471E: $88
    ld [hl], a                                    ; $471F: $77
    nop                                           ; $4720: $00
    nop                                           ; $4721: $00
    nop                                           ; $4722: $00
    nop                                           ; $4723: $00
    add b                                         ; $4724: $80
    nop                                           ; $4725: $00
    sbc [hl]                                      ; $4726: $9E
    nop                                           ; $4727: $00
    rst RST_20                                    ; $4728: $E7
    jr jr_00C_46BA                                ; $4729: $18 $8F

    ld [hl], b                                    ; $472B: $70
    rra                                           ; $472C: $1F
    add sp, $16                                   ; $472D: $E8 $16
    db $EB                                        ; $472F: $EB
    ccf                                           ; $4730: $3F
    ret z                                         ; $4731: $C8

    ld a, $D7                                     ; $4732: $3E $D7
    ld a, a                                       ; $4734: $7F
    sub b                                         ; $4735: $90
    cp [hl]                                       ; $4736: $BE
    ld d, a                                       ; $4737: $57
    cp a                                          ; $4738: $BF
    ld d, d                                       ; $4739: $52
    rst RST_38                                    ; $473A: $FF
    add hl, de                                    ; $473B: $19
    ld a, a                                       ; $473C: $7F
    adc [hl]                                      ; $473D: $8E
    xor $00                                       ; $473E: $EE $00
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
    add b                                         ; $4750: $80
    nop                                           ; $4751: $00
    ret nz                                        ; $4752: $C0

    nop                                           ; $4753: $00
    and b                                         ; $4754: $A0
    ld b, b                                       ; $4755: $40
    ldh [rP1], a                                  ; $4756: $E0 $00
    and b                                         ; $4758: $A0
    ld b, b                                       ; $4759: $40
    ldh [rP1], a                                  ; $475A: $E0 $00
    and b                                         ; $475C: $A0
    ld b, b                                       ; $475D: $40
    ret nz                                        ; $475E: $C0

    nop                                           ; $475F: $00
    ld [hl], b                                    ; $4760: $70
    rrca                                          ; $4761: $0F
    rst RST_30                                    ; $4762: $F7
    ld l, b                                       ; $4763: $68
    ld hl, sp+$67                                 ; $4764: $F8 $67
    ldh a, [$FF6F]                                ; $4766: $F0 $6F
    ld h, e                                       ; $4768: $63
    inc e                                         ; $4769: $1C
    inc e                                         ; $476A: $1C
    nop                                           ; $476B: $00
    nop                                           ; $476C: $00
    nop                                           ; $476D: $00
    ld bc, $0100                                  ; $476E: $01 $00 $01
    nop                                           ; $4771: $00

jr_00C_4772:
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
    sbc a                                         ; $4780: $9F
    ld l, h                                       ; $4781: $6C
    rst RST_38                                    ; $4782: $FF
    dec e                                         ; $4783: $1D
    rst RST_38                                    ; $4784: $FF
    dec e                                         ; $4785: $1D
    ld e, a                                       ; $4786: $5F
    xor e                                         ; $4787: $AB
    db $EB                                        ; $4788: $EB
    rla                                           ; $4789: $17
    di                                            ; $478A: $F3
    ld c, $FF                                     ; $478B: $0E $FF
    nop                                           ; $478D: $00
    scf                                           ; $478E: $37
    ret nz                                        ; $478F: $C0

    db $E3                                        ; $4790: $E3
    nop                                           ; $4791: $00
    ld [bc], a                                    ; $4792: $02
    ld bc, $0003                                  ; $4793: $01 $03 $00
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
    add b                                         ; $47A0: $80
    nop                                           ; $47A1: $00
    add b                                         ; $47A2: $80
    nop                                           ; $47A3: $00
    add b                                         ; $47A4: $80
    nop                                           ; $47A5: $00
    add b                                         ; $47A6: $80
    nop                                           ; $47A7: $00
    add b                                         ; $47A8: $80
    nop                                           ; $47A9: $00
    ret nz                                        ; $47AA: $C0

    nop                                           ; $47AB: $00
    ret nz                                        ; $47AC: $C0

    nop                                           ; $47AD: $00
    ldh [rP1], a                                  ; $47AE: $E0 $00
    jr nz, jr_00C_4772                            ; $47B0: $20 $C0

    ldh [rP1], a                                  ; $47B2: $E0 $00
    nop                                           ; $47B4: $00
    nop                                           ; $47B5: $00
    nop                                           ; $47B6: $00
    nop                                           ; $47B7: $00
    nop                                           ; $47B8: $00
    nop                                           ; $47B9: $00

jr_00C_47BA:
    nop                                           ; $47BA: $00
    nop                                           ; $47BB: $00
    nop                                           ; $47BC: $00
    nop                                           ; $47BD: $00
    nop                                           ; $47BE: $00
    nop                                           ; $47BF: $00
    ld [$3C07], sp                                ; $47C0: $08 $07 $3C
    inc bc                                        ; $47C3: $03
    ld a, $19                                     ; $47C4: $3E $19
    rra                                           ; $47C6: $1F
    ld b, $27                                     ; $47C7: $06 $27
    add hl, de                                    ; $47C9: $19
    add hl, sp                                    ; $47CA: $39
    ld b, $67                                     ; $47CB: $06 $67
    jr jr_00C_47BA                                ; $47CD: $18 $EB

    ld d, l                                       ; $47CF: $55
    ei                                            ; $47D0: $FB
    ld b, l                                       ; $47D1: $45
    db $FD                                        ; $47D2: $FD
    ld e, d                                       ; $47D3: $5A
    cp l                                          ; $47D4: $BD
    ld b, d                                       ; $47D5: $42
    cp a                                          ; $47D6: $BF
    ld d, b                                       ; $47D7: $50
    ld a, a                                       ; $47D8: $7F
    inc d                                         ; $47D9: $14
    ld e, a                                       ; $47DA: $5F
    ld a, [hl+]                                   ; $47DB: $2A
    dec [hl]                                      ; $47DC: $35
    dec bc                                        ; $47DD: $0B
    rrca                                          ; $47DE: $0F
    nop                                           ; $47DF: $00
    inc a                                         ; $47E0: $3C
    set 6, h                                      ; $47E1: $CB $F4
    dec de                                        ; $47E3: $1B
    ldh a, [c]                                    ; $47E4: $F2
    sbc l                                         ; $47E5: $9D
    rst RST_38                                    ; $47E6: $FF
    inc c                                         ; $47E7: $0C
    ld a, $C9                                     ; $47E8: $3E $C9
    cp $05                                        ; $47EA: $FE $05
    ld e, $E9                                     ; $47EC: $1E $E9
    dec a                                         ; $47EE: $3D
    ret nz                                        ; $47EF: $C0

    cp $3C                                        ; $47F0: $FE $3C
    rst RST_38                                    ; $47F2: $FF
    ld a, h                                       ; $47F3: $7C
    rst RST_38                                    ; $47F4: $FF
    ld e, $BF                                     ; $47F5: $1E $BF
    ldh [rIE], a                                  ; $47F7: $E0 $FF
    inc d                                         ; $47F9: $14
    rst RST_38                                    ; $47FA: $FF
    ld d, [hl]                                    ; $47FB: $56
    xor e                                         ; $47FC: $AB
    ld d, h                                       ; $47FD: $54
    ld a, [hl]                                    ; $47FE: $7E
    nop                                           ; $47FF: $00
    rst RST_38                                    ; $4800: $FF
    ld a, b                                       ; $4801: $78
    rst RST_38                                    ; $4802: $FF
    inc e                                         ; $4803: $1C
    di                                            ; $4804: $F3
    db $EC                                        ; $4805: $EC
    ld a, [$F7F4]                                 ; $4806: $FA $F4 $F7
    ld l, b                                       ; $4809: $68
    ld l, a                                       ; $480A: $6F
    sub b                                         ; $480B: $90
    ld a, [hl]                                    ; $480C: $7E
    add c                                         ; $480D: $81
    xor $11                                       ; $480E: $EE $11
    ld c, c                                       ; $4810: $49
    or b                                          ; $4811: $B0
    ld c, b                                       ; $4812: $48
    or b                                          ; $4813: $B0
    ld b, h                                       ; $4814: $44
    cp b                                          ; $4815: $B8
    inc h                                         ; $4816: $24
    ret c                                         ; $4817: $D8

    db $F4                                        ; $4818: $F4
    ld [$70F8], sp                                ; $4819: $08 $F8 $70
    ld hl, sp+$70                                 ; $481C: $F8 $70
    ld [hl], b                                    ; $481E: $70
    nop                                           ; $481F: $00
    nop                                           ; $4820: $00
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
    ld bc, $0E00                                  ; $4832: $01 $00 $0E
    ld bc, $011F                                  ; $4835: $01 $1F $01
    rra                                           ; $4838: $1F
    nop                                           ; $4839: $00
    ld d, $0B                                     ; $483A: $16 $0B
    inc de                                        ; $483C: $13
    inc c                                         ; $483D: $0C
    ld [$0007], sp                                ; $483E: $08 $07 $00
    nop                                           ; $4841: $00
    nop                                           ; $4842: $00
    nop                                           ; $4843: $00
    nop                                           ; $4844: $00
    nop                                           ; $4845: $00
    nop                                           ; $4846: $00
    nop                                           ; $4847: $00
    nop                                           ; $4848: $00
    nop                                           ; $4849: $00
    ld a, h                                       ; $484A: $7C
    nop                                           ; $484B: $00
    xor d                                         ; $484C: $AA
    ld d, h                                       ; $484D: $54
    cp $00                                        ; $484E: $FE $00
    xor [hl]                                      ; $4850: $AE
    ld d, h                                       ; $4851: $54
    rst RST_38                                    ; $4852: $FF
    ld e, d                                       ; $4853: $5A
    rst RST_38                                    ; $4854: $FF
    ld d, d                                       ; $4855: $52
    rst RST_38                                    ; $4856: $FF
    add [hl]                                      ; $4857: $86
    cp $7C                                        ; $4858: $FE $7C
    rst RST_38                                    ; $485A: $FF
    nop                                           ; $485B: $00
    daa                                           ; $485C: $27
    ret c                                         ; $485D: $D8

    dec e                                         ; $485E: $1D
    ldh [c], a                                    ; $485F: $E2
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
    nop                                           ; $486C: $00
    nop                                           ; $486D: $00
    nop                                           ; $486E: $00
    nop                                           ; $486F: $00
    nop                                           ; $4870: $00
    nop                                           ; $4871: $00
    nop                                           ; $4872: $00
    nop                                           ; $4873: $00
    nop                                           ; $4874: $00
    nop                                           ; $4875: $00
    nop                                           ; $4876: $00
    nop                                           ; $4877: $00
    nop                                           ; $4878: $00
    nop                                           ; $4879: $00
    nop                                           ; $487A: $00
    nop                                           ; $487B: $00
    inc bc                                        ; $487C: $03
    nop                                           ; $487D: $00
    ld a, a                                       ; $487E: $7F
    nop                                           ; $487F: $00
    nop                                           ; $4880: $00
    nop                                           ; $4881: $00
    nop                                           ; $4882: $00
    nop                                           ; $4883: $00
    nop                                           ; $4884: $00
    nop                                           ; $4885: $00
    nop                                           ; $4886: $00
    nop                                           ; $4887: $00
    ldh [rP1], a                                  ; $4888: $E0 $00
    and b                                         ; $488A: $A0
    ld b, b                                       ; $488B: $40
    and b                                         ; $488C: $A0
    ld b, b                                       ; $488D: $40
    and b                                         ; $488E: $A0
    ld b, b                                       ; $488F: $40
    ldh [rP1], a                                  ; $4890: $E0 $00
    nop                                           ; $4892: $00
    nop                                           ; $4893: $00
    nop                                           ; $4894: $00
    nop                                           ; $4895: $00
    nop                                           ; $4896: $00
    nop                                           ; $4897: $00
    add b                                         ; $4898: $80
    nop                                           ; $4899: $00

jr_00C_489A:
    add b                                         ; $489A: $80
    nop                                           ; $489B: $00
    add b                                         ; $489C: $80
    nop                                           ; $489D: $00
    add b                                         ; $489E: $80
    nop                                           ; $489F: $00
    nop                                           ; $48A0: $00
    nop                                           ; $48A1: $00
    nop                                           ; $48A2: $00
    nop                                           ; $48A3: $00
    nop                                           ; $48A4: $00
    nop                                           ; $48A5: $00
    ret c                                         ; $48A6: $D8

    nop                                           ; $48A7: $00
    cp b                                          ; $48A8: $B8
    ld d, b                                       ; $48A9: $50
    cp b                                          ; $48AA: $B8
    ld d, b                                       ; $48AB: $50
    ldh a, [rNR41]                                ; $48AC: $F0 $20
    rst RST_38                                    ; $48AE: $FF
    jr nz, @+$32                                  ; $48AF: $20 $30

    rst RST_08                                    ; $48B1: $CF
    db $10                                        ; $48B2: $10
    rst RST_28                                    ; $48B3: $EF
    dec bc                                        ; $48B4: $0B
    db $F4                                        ; $48B5: $F4
    adc a                                         ; $48B6: $8F
    ld [hl], d                                    ; $48B7: $72
    db $DB                                        ; $48B8: $DB
    and h                                         ; $48B9: $A4
    ei                                            ; $48BA: $FB
    call nz, Call_000_28F4                        ; $48BB: $C4 $F4 $28
    add sp, -$70                                  ; $48BE: $E8 $90
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
    nop                                           ; $48D3: $00
    nop                                           ; $48D4: $00
    nop                                           ; $48D5: $00
    ret nz                                        ; $48D6: $C0

    nop                                           ; $48D7: $00
    jr nz, jr_00C_489A                            ; $48D8: $20 $C0

    ldh a, [rP1]                                  ; $48DA: $F0 $00
    ldh a, [rP1]                                  ; $48DC: $F0 $00
    ldh [rP1], a                                  ; $48DE: $E0 $00
    cp $00                                        ; $48E0: $FE $00
    ccf                                           ; $48E2: $3F
    ldh [$FFFE], a                                ; $48E3: $E0 $FE
    ld bc, $AE53                                  ; $48E5: $01 $53 $AE
    rst RST_28                                    ; $48E8: $EF
    sbc a                                         ; $48E9: $9F
    rst RST_18                                    ; $48EA: $DF
    cp a                                          ; $48EB: $BF
    rst RST_38                                    ; $48EC: $FF
    ld h, $FE                                     ; $48ED: $26 $FE
    xor c                                         ; $48EF: $A9
    rst RST_38                                    ; $48F0: $FF
    ret nc                                        ; $48F1: $D0

    rst RST_38                                    ; $48F2: $FF
    db $E3                                        ; $48F3: $E3
    rst RST_38                                    ; $48F4: $FF
    ret                                           ; $48F5: $C9


    rst RST_30                                    ; $48F6: $F7
    inc e                                         ; $48F7: $1C
    rra                                           ; $48F8: $1F
    ld [$030C], sp                                ; $48F9: $08 $0C $03
    inc bc                                        ; $48FC: $03
    nop                                           ; $48FD: $00
    dec c                                         ; $48FE: $0D
    inc bc                                        ; $48FF: $03
    nop                                           ; $4900: $00
    nop                                           ; $4901: $00
    nop                                           ; $4902: $00
    nop                                           ; $4903: $00
    nop                                           ; $4904: $00
    nop                                           ; $4905: $00
    nop                                           ; $4906: $00
    nop                                           ; $4907: $00
    nop                                           ; $4908: $00
    nop                                           ; $4909: $00
    inc bc                                        ; $490A: $03
    nop                                           ; $490B: $00
    rlca                                          ; $490C: $07
    ld [bc], a                                    ; $490D: $02
    dec bc                                        ; $490E: $0B
    inc b                                         ; $490F: $04
    dec de                                        ; $4910: $1B
    dec b                                         ; $4911: $05
    rra                                           ; $4912: $1F
    ld [$1A27], sp                                ; $4913: $08 $27 $1A
    cpl                                           ; $4916: $2F
    inc de                                        ; $4917: $13
    rla                                           ; $4918: $17
    dec bc                                        ; $4919: $0B
    rrca                                          ; $491A: $0F
    inc bc                                        ; $491B: $03
    rrca                                          ; $491C: $0F
    ld bc, $0001                                  ; $491D: $01 $01 $00
    ld [hl], e                                    ; $4920: $73
    dec c                                         ; $4921: $0D
    pop af                                        ; $4922: $F1
    ld l, [hl]                                    ; $4923: $6E
    ldh a, [$FF6F]                                ; $4924: $F0 $6F
    rst RST_38                                    ; $4926: $FF
    ld h, b                                       ; $4927: $60
    db $E4                                        ; $4928: $E4
    sbc b                                         ; $4929: $98
    add h                                         ; $492A: $84
    ld hl, sp+$08                                 ; $492B: $F8 $08
    ldh a, [$FF90]                                ; $492D: $F0 $90
    ld h, b                                       ; $492F: $60
    ld h, b                                       ; $4930: $60
    add b                                         ; $4931: $80
    and b                                         ; $4932: $A0
    ld b, b                                       ; $4933: $40
    and b                                         ; $4934: $A0
    ld b, b                                       ; $4935: $40
    ret nz                                        ; $4936: $C0

    nop                                           ; $4937: $00
    nop                                           ; $4938: $00
    nop                                           ; $4939: $00
    nop                                           ; $493A: $00
    nop                                           ; $493B: $00
    nop                                           ; $493C: $00
    nop                                           ; $493D: $00
    nop                                           ; $493E: $00
    nop                                           ; $493F: $00
    ldh a, [rP1]                                  ; $4940: $F0 $00
    or b                                          ; $4942: $B0
    ldh [$FFE8], a                                ; $4943: $E0 $E8
    ret nc                                        ; $4945: $D0

    call nz, $C4B8                                ; $4946: $C4 $B8 $C4
    jr c, @+$61                                   ; $4949: $38 $5F

    jr nz, @+$41                                  ; $494B: $20 $3F

    dec e                                         ; $494D: $1D
    ccf                                           ; $494E: $3F
    dec e                                         ; $494F: $1D
    rra                                           ; $4950: $1F
    inc bc                                        ; $4951: $03
    ld de, $0C0F                                  ; $4952: $11 $0F $0C
    inc bc                                        ; $4955: $03
    inc bc                                        ; $4956: $03
    nop                                           ; $4957: $00
    ld bc, $0000                                  ; $4958: $01 $00 $00
    nop                                           ; $495B: $00
    nop                                           ; $495C: $00
    nop                                           ; $495D: $00
    nop                                           ; $495E: $00
    nop                                           ; $495F: $00
    ld bc, $0100                                  ; $4960: $01 $00 $01
    nop                                           ; $4963: $00
    ld bc, $0300                                  ; $4964: $01 $00 $03
    ld bc, $0003                                  ; $4967: $01 $03 $00
    inc b                                         ; $496A: $04
    inc bc                                        ; $496B: $03
    rrca                                          ; $496C: $0F
    nop                                           ; $496D: $00
    rra                                           ; $496E: $1F
    nop                                           ; $496F: $00
    add hl, hl                                    ; $4970: $29
    ld d, $3F                                     ; $4971: $16 $3F
    nop                                           ; $4973: $00
    nop                                           ; $4974: $00
    nop                                           ; $4975: $00
    nop                                           ; $4976: $00
    nop                                           ; $4977: $00
    nop                                           ; $4978: $00
    nop                                           ; $4979: $00
    nop                                           ; $497A: $00
    nop                                           ; $497B: $00
    nop                                           ; $497C: $00
    nop                                           ; $497D: $00
    nop                                           ; $497E: $00
    nop                                           ; $497F: $00
    add b                                         ; $4980: $80
    nop                                           ; $4981: $00
    ret nz                                        ; $4982: $C0

    add b                                         ; $4983: $80
    ldh [$FFC0], a                                ; $4984: $E0 $C0
    ldh [$FFC0], a                                ; $4986: $E0 $C0
    ldh [rP1], a                                  ; $4988: $E0 $00
    db $10                                        ; $498A: $10
    ldh [$FF78], a                                ; $498B: $E0 $78
    add b                                         ; $498D: $80
    db $FC                                        ; $498E: $FC
    nop                                           ; $498F: $00
    xor d                                         ; $4990: $AA
    ld d, h                                       ; $4991: $54
    cp $00                                        ; $4992: $FE $00
    nop                                           ; $4994: $00
    nop                                           ; $4995: $00
    nop                                           ; $4996: $00
    nop                                           ; $4997: $00
    nop                                           ; $4998: $00
    nop                                           ; $4999: $00
    nop                                           ; $499A: $00
    nop                                           ; $499B: $00
    nop                                           ; $499C: $00
    nop                                           ; $499D: $00
    nop                                           ; $499E: $00
    nop                                           ; $499F: $00
    nop                                           ; $49A0: $00
    nop                                           ; $49A1: $00
    nop                                           ; $49A2: $00
    nop                                           ; $49A3: $00
    cp $00                                        ; $49A4: $FE $00
    ccf                                           ; $49A6: $3F
    ldh [$FFFE], a                                ; $49A7: $E0 $FE
    ld bc, $AE53                                  ; $49A9: $01 $53 $AE
    rst RST_28                                    ; $49AC: $EF
    sbc a                                         ; $49AD: $9F
    rst RST_18                                    ; $49AE: $DF
    cp a                                          ; $49AF: $BF
    rst RST_38                                    ; $49B0: $FF
    ld h, $FE                                     ; $49B1: $26 $FE
    xor c                                         ; $49B3: $A9
    rst RST_38                                    ; $49B4: $FF
    ret nc                                        ; $49B5: $D0

    rst RST_38                                    ; $49B6: $FF
    db $E3                                        ; $49B7: $E3
    rst RST_38                                    ; $49B8: $FF
    reti                                          ; $49B9: $D9


    rst RST_38                                    ; $49BA: $FF
    inc c                                         ; $49BB: $0C
    rst RST_38                                    ; $49BC: $FF
    add b                                         ; $49BD: $80
    sub $A9                                       ; $49BE: $D6 $A9
    nop                                           ; $49C0: $00
    nop                                           ; $49C1: $00
    nop                                           ; $49C2: $00
    nop                                           ; $49C3: $00
    nop                                           ; $49C4: $00
    nop                                           ; $49C5: $00
    inc bc                                        ; $49C6: $03
    nop                                           ; $49C7: $00
    rlca                                          ; $49C8: $07
    ld [bc], a                                    ; $49C9: $02
    dec bc                                        ; $49CA: $0B
    inc b                                         ; $49CB: $04
    dec de                                        ; $49CC: $1B
    dec b                                         ; $49CD: $05
    rra                                           ; $49CE: $1F
    ld [$1A27], sp                                ; $49CF: $08 $27 $1A
    cpl                                           ; $49D2: $2F
    inc de                                        ; $49D3: $13
    rla                                           ; $49D4: $17
    dec bc                                        ; $49D5: $0B
    rla                                           ; $49D6: $17
    dec bc                                        ; $49D7: $0B
    rrca                                          ; $49D8: $0F
    nop                                           ; $49D9: $00
    rlca                                          ; $49DA: $07
    inc bc                                        ; $49DB: $03
    rlca                                          ; $49DC: $07
    inc bc                                        ; $49DD: $03
    rlca                                          ; $49DE: $07
    inc bc                                        ; $49DF: $03
    ld c, $05                                     ; $49E0: $0E $05
    inc c                                         ; $49E2: $0C
    inc bc                                        ; $49E3: $03
    inc c                                         ; $49E4: $0C
    rlca                                          ; $49E5: $07
    inc c                                         ; $49E6: $0C
    rlca                                          ; $49E7: $07
    ld c, $01                                     ; $49E8: $0E $01

jr_00C_49EA:
    ld de, $3E0E                                  ; $49EA: $11 $0E $3E
    ld bc, $017E                                  ; $49ED: $01 $7E $01
    and a                                         ; $49F0: $A7
    ld e, b                                       ; $49F1: $58
    db $FC                                        ; $49F2: $FC
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
    ld c, a                                       ; $4A00: $4F
    or [hl]                                       ; $4A01: $B6
    ld c, a                                       ; $4A02: $4F
    or b                                          ; $4A03: $B0
    ld l, [hl]                                    ; $4A04: $6E
    sub a                                         ; $4A05: $97
    sbc a                                         ; $4A06: $9F
    ld b, $8F                                     ; $4A07: $06 $8F
    ld b, $87                                     ; $4A09: $06 $87
    nop                                           ; $4A0B: $00

jr_00C_4A0C:
    add c                                         ; $4A0C: $81
    nop                                           ; $4A0D: $00
    add b                                         ; $4A0E: $80
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
    ld b, b                                       ; $4A20: $40
    add b                                         ; $4A21: $80
    add b                                         ; $4A22: $80
    nop                                           ; $4A23: $00
    ret nz                                        ; $4A24: $C0

    add b                                         ; $4A25: $80
    ldh [rP1], a                                  ; $4A26: $E0 $00
    jr nc, jr_00C_49EA                            ; $4A28: $30 $C0

    jr jr_00C_4A0C                                ; $4A2A: $18 $E0

    inc a                                         ; $4A2C: $3C
    ret z                                         ; $4A2D: $C8

    cp $34                                        ; $4A2E: $FE $34
    rst RST_38                                    ; $4A30: $FF
    ld [hl], b                                    ; $4A31: $70
    ld sp, hl                                     ; $4A32: $F9
    ld [hl], $7F                                  ; $4A33: $36 $7F
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
    inc bc                                        ; $4A40: $03
    nop                                           ; $4A41: $00
    inc c                                         ; $4A42: $0C
    inc bc                                        ; $4A43: $03
    rra                                           ; $4A44: $1F
    ld [$122D], sp                                ; $4A45: $08 $2D $12
    ld l, a                                       ; $4A48: $6F
    ld d, $7F                                     ; $4A49: $16 $7F
    ld [hl+], a                                   ; $4A4B: $22
    sbc a                                         ; $4A4C: $9F
    ld l, b                                       ; $4A4D: $68
    cp a                                          ; $4A4E: $BF
    ld c, [hl]                                    ; $4A4F: $4E
    ld e, a                                       ; $4A50: $5F
    cpl                                           ; $4A51: $2F
    ccf                                           ; $4A52: $3F
    rrca                                          ; $4A53: $0F
    ccf                                           ; $4A54: $3F
    rlca                                          ; $4A55: $07
    rlca                                          ; $4A56: $07
    nop                                           ; $4A57: $00
    nop                                           ; $4A58: $00
    nop                                           ; $4A59: $00
    nop                                           ; $4A5A: $00
    nop                                           ; $4A5B: $00
    nop                                           ; $4A5C: $00
    nop                                           ; $4A5D: $00
    nop                                           ; $4A5E: $00
    nop                                           ; $4A5F: $00
    ld hl, sp+$00                                 ; $4A60: $F8 $00
    rst RST_38                                    ; $4A62: $FF
    add b                                         ; $4A63: $80
    ld a, [$4E05]                                 ; $4A64: $FA $05 $4E
    cp c                                          ; $4A67: $B9
    cp a                                          ; $4A68: $BF
    ld a, h                                       ; $4A69: $7C
    ld a, a                                       ; $4A6A: $7F
    db $FC                                        ; $4A6B: $FC
    db $FC                                        ; $4A6C: $FC
    sbc e                                         ; $4A6D: $9B
    ld hl, sp-$59                                 ; $4A6E: $F8 $A7
    db $FC                                        ; $4A70: $FC
    ld b, e                                       ; $4A71: $43
    cp $8D                                        ; $4A72: $FE $8D
    rst RST_38                                    ; $4A74: $FF
    ld h, $DF                                     ; $4A75: $26 $DF
    ld [hl], e                                    ; $4A77: $73
    ld a, a                                       ; $4A78: $7F
    jr nz, jr_00C_4AAE                            ; $4A79: $20 $33

    inc c                                         ; $4A7B: $0C
    ld a, h                                       ; $4A7C: $7C
    inc bc                                        ; $4A7D: $03
    adc b                                         ; $4A7E: $88
    ld [hl], a                                    ; $4A7F: $77
    nop                                           ; $4A80: $00
    nop                                           ; $4A81: $00
    ld h, b                                       ; $4A82: $60
    nop                                           ; $4A83: $00
    ldh [rLCDC], a                                ; $4A84: $E0 $40
    ldh [rLCDC], a                                ; $4A86: $E0 $40
    ret nz                                        ; $4A88: $C0

    add b                                         ; $4A89: $80
    db $FC                                        ; $4A8A: $FC
    add b                                         ; $4A8B: $80
    jp $403C                                      ; $4A8C: $C3 $3C $40


    cp a                                          ; $4A8F: $BF
    cpl                                           ; $4A90: $2F
    ret nc                                        ; $4A91: $D0

    ccf                                           ; $4A92: $3F
    ret z                                         ; $4A93: $C8

    ld l, a                                       ; $4A94: $6F
    sub b                                         ; $4A95: $90
    rst RST_28                                    ; $4A96: $EF
    db $10                                        ; $4A97: $10
    ret c                                         ; $4A98: $D8

    and b                                         ; $4A99: $A0
    or b                                          ; $4A9A: $B0
    ld b, b                                       ; $4A9B: $40
    ld h, b                                       ; $4A9C: $60
    add b                                         ; $4A9D: $80
    ldh [rP1], a                                  ; $4A9E: $E0 $00
    nop                                           ; $4AA0: $00
    nop                                           ; $4AA1: $00
    nop                                           ; $4AA2: $00
    nop                                           ; $4AA3: $00
    nop                                           ; $4AA4: $00
    nop                                           ; $4AA5: $00
    nop                                           ; $4AA6: $00
    nop                                           ; $4AA7: $00
    nop                                           ; $4AA8: $00
    nop                                           ; $4AA9: $00
    nop                                           ; $4AAA: $00
    nop                                           ; $4AAB: $00
    nop                                           ; $4AAC: $00
    nop                                           ; $4AAD: $00

jr_00C_4AAE:
    nop                                           ; $4AAE: $00
    nop                                           ; $4AAF: $00
    nop                                           ; $4AB0: $00
    nop                                           ; $4AB1: $00
    nop                                           ; $4AB2: $00
    nop                                           ; $4AB3: $00
    nop                                           ; $4AB4: $00
    nop                                           ; $4AB5: $00
    nop                                           ; $4AB6: $00
    nop                                           ; $4AB7: $00
    add b                                         ; $4AB8: $80
    nop                                           ; $4AB9: $00
    ret nz                                        ; $4ABA: $C0

    nop                                           ; $4ABB: $00
    ret nz                                        ; $4ABC: $C0

    nop                                           ; $4ABD: $00
    add b                                         ; $4ABE: $80
    nop                                           ; $4ABF: $00
    nop                                           ; $4AC0: $00
    nop                                           ; $4AC1: $00
    nop                                           ; $4AC2: $00
    nop                                           ; $4AC3: $00
    nop                                           ; $4AC4: $00
    nop                                           ; $4AC5: $00
    nop                                           ; $4AC6: $00
    nop                                           ; $4AC7: $00
    nop                                           ; $4AC8: $00
    nop                                           ; $4AC9: $00
    jr jr_00C_4ACC                                ; $4ACA: $18 $00

jr_00C_4ACC:
    inc e                                         ; $4ACC: $1C
    ld [$043F], sp                                ; $4ACD: $08 $3F $04
    ccf                                           ; $4AD0: $3F
    ld a, [de]                                    ; $4AD1: $1A
    rra                                           ; $4AD2: $1F
    ld bc, $0D1F                                  ; $4AD3: $01 $1F $0D
    rra                                           ; $4AD6: $1F
    dec bc                                        ; $4AD7: $0B
    rrca                                          ; $4AD8: $0F
    dec b                                         ; $4AD9: $05
    rrca                                          ; $4ADA: $0F
    inc bc                                        ; $4ADB: $03
    rlca                                          ; $4ADC: $07
    nop                                           ; $4ADD: $00
    ld bc, $E000                                  ; $4ADE: $01 $00 $E0
    nop                                           ; $4AE1: $00
    ldh [rLCDC], a                                ; $4AE2: $E0 $40
    ldh [$FF80], a                                ; $4AE4: $E0 $80
    rst RST_28                                    ; $4AE6: $EF
    ret nz                                        ; $4AE7: $C0

jr_00C_4AE8:
    di                                            ; $4AE8: $F3
    ld c, [hl]                                    ; $4AE9: $4E
    rst RST_30                                    ; $4AEA: $F7
    xor c                                         ; $4AEB: $A9
    db $FD                                        ; $4AEC: $FD
    or [hl]                                       ; $4AED: $B6
    cp $71                                        ; $4AEE: $FE $71
    rst RST_38                                    ; $4AF0: $FF
    ld a, d                                       ; $4AF1: $7A
    rst RST_38                                    ; $4AF2: $FF
    ld sp, hl                                     ; $4AF3: $F9
    rst RST_38                                    ; $4AF4: $FF
    ld a, [$74FF]                                 ; $4AF5: $FA $FF $74
    ld a, a                                       ; $4AF8: $7F
    dec b                                         ; $4AF9: $05
    ccf                                           ; $4AFA: $3F
    inc de                                        ; $4AFB: $13
    ld e, $0B                                     ; $4AFC: $1E $0B
    dec bc                                        ; $4AFE: $0B
    nop                                           ; $4AFF: $00
    ldh a, [rP1]                                  ; $4B00: $F0 $00
    sbc a                                         ; $4B02: $9F
    ldh a, [rIE]                                  ; $4B03: $F0 $FF
    nop                                           ; $4B05: $00
    ld a, d                                       ; $4B06: $7A
    push de                                       ; $4B07: $D5
    ld a, [$FD15]                                 ; $4B08: $FA $15 $FD
    jp z, Jump_000_2AFD                           ; $4B0B: $CA $FD $2A

    rst RST_30                                    ; $4B0E: $F7
    inc c                                         ; $4B0F: $0C
    or $CD                                        ; $4B10: $F6 $CD
    cp $E1                                        ; $4B12: $FE $E1
    ld a, a                                       ; $4B14: $7F
    add sp, -$01                                  ; $4B15: $E8 $FF
    ld d, h                                       ; $4B17: $54
    ei                                            ; $4B18: $FB
    sub l                                         ; $4B19: $95
    sbc a                                         ; $4B1A: $9F

jr_00C_4B1B:
    db $E4                                        ; $4B1B: $E4
    rst RST_38                                    ; $4B1C: $FF
    ei                                            ; $4B1D: $FB
    rst RST_38                                    ; $4B1E: $FF
    jr @-$0E                                      ; $4B1F: $18 $F0

    nop                                           ; $4B21: $00
    ld [hl], b                                    ; $4B22: $70
    and b                                         ; $4B23: $A0
    ldh a, [rNR41]                                ; $4B24: $F0 $20
    jr c, jr_00C_4AE8                             ; $4B26: $38 $C0

    ret z                                         ; $4B28: $C8

    jr nc, jr_00C_4B1B                            ; $4B29: $30 $F0

    ret nz                                        ; $4B2B: $C0

    sub b                                         ; $4B2C: $90
    ld h, b                                       ; $4B2D: $60
    sub b                                         ; $4B2E: $90
    ld h, b                                       ; $4B2F: $60
    cp b                                          ; $4B30: $B8
    ld b, b                                       ; $4B31: $40
    call nz, Call_00C_7238                        ; $4B32: $C4 $38 $72
    adc h                                         ; $4B35: $8C
    db $ED                                        ; $4B36: $ED
    ld d, d                                       ; $4B37: $52
    ld a, l                                       ; $4B38: $7D
    jp nz, $50EF                                  ; $4B39: $C2 $EF $50

    ld a, h                                       ; $4B3C: $7C
    ret nz                                        ; $4B3D: $C0

    ld l, h                                       ; $4B3E: $6C
    ret nc                                        ; $4B3F: $D0

    ld bc, $0100                                  ; $4B40: $01 $00 $01
    nop                                           ; $4B43: $00
    inc bc                                        ; $4B44: $03
    nop                                           ; $4B45: $00
    ld [bc], a                                    ; $4B46: $02
    ld bc, $011F                                  ; $4B47: $01 $1F $01
    db $E3                                        ; $4B4A: $E3
    dec e                                         ; $4B4B: $1D
    jp $C3BD                                      ; $4B4C: $C3 $BD $C3


    cp h                                          ; $4B4F: $BC
    db $ED                                        ; $4B50: $ED
    sub b                                         ; $4B51: $90
    sub c                                         ; $4B52: $91
    ld h, b                                       ; $4B53: $60
    db $10                                        ; $4B54: $10
    ldh [rNR41], a                                ; $4B55: $E0 $20
    ret nz                                        ; $4B57: $C0

    ld b, b                                       ; $4B58: $40
    add b                                         ; $4B59: $80
    add b                                         ; $4B5A: $80
    nop                                           ; $4B5B: $00
    add b                                         ; $4B5C: $80
    nop                                           ; $4B5D: $00
    add b                                         ; $4B5E: $80
    nop                                           ; $4B5F: $00
    cp a                                          ; $4B60: $BF
    db $E3                                        ; $4B61: $E3
    rst RST_38                                    ; $4B62: $FF
    or c                                          ; $4B63: $B1
    or e                                          ; $4B64: $B3
    ld b, b                                       ; $4B65: $40
    ld de, $30E0                                  ; $4B66: $11 $E0 $30
    ret nz                                        ; $4B69: $C0

    ld a, h                                       ; $4B6A: $7C
    or b                                          ; $4B6B: $B0
    cp $74                                        ; $4B6C: $FE $74
    cp $74                                        ; $4B6E: $FE $74
    ld a, a                                       ; $4B70: $7F
    ld c, $47                                     ; $4B71: $0E $47
    ld a, $27                                     ; $4B73: $3E $27
    ld e, $13                                     ; $4B75: $1E $13
    inc c                                         ; $4B77: $0C
    inc c                                         ; $4B78: $0C
    inc bc                                        ; $4B79: $03
    dec bc                                        ; $4B7A: $0B
    inc b                                         ; $4B7B: $04
    rlca                                          ; $4B7C: $07
    nop                                           ; $4B7D: $00
    dec b                                         ; $4B7E: $05
    ld [bc], a                                    ; $4B7F: $02
    ld bc, $0300                                  ; $4B80: $01 $00 $03
    ld bc, $0103                                  ; $4B83: $01 $03 $01
    rlca                                          ; $4B86: $07
    ld bc, $0207                                  ; $4B87: $01 $07 $02
    ld b, $03                                     ; $4B8A: $06 $03
    inc c                                         ; $4B8C: $0C
    rlca                                          ; $4B8D: $07
    ld c, $01                                     ; $4B8E: $0E $01
    ld de, $3E0E                                  ; $4B90: $11 $0E $3E
    ld bc, $017E                                  ; $4B93: $01 $7E $01
    and a                                         ; $4B96: $A7
    ld e, b                                       ; $4B97: $58
    db $FC                                        ; $4B98: $FC
    nop                                           ; $4B99: $00
    nop                                           ; $4B9A: $00
    nop                                           ; $4B9B: $00
    nop                                           ; $4B9C: $00
    nop                                           ; $4B9D: $00
    nop                                           ; $4B9E: $00
    nop                                           ; $4B9F: $00
    db $FC                                        ; $4BA0: $FC
    nop                                           ; $4BA1: $00
    ld hl, sp-$10                                 ; $4BA2: $F8 $F0
    ldh a, [rP1]                                  ; $4BA4: $F0 $00
    nop                                           ; $4BA6: $00
    nop                                           ; $4BA7: $00
    nop                                           ; $4BA8: $00
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
    add b                                         ; $4BB4: $80
    nop                                           ; $4BB5: $00
    ret nz                                        ; $4BB6: $C0

    nop                                           ; $4BB7: $00
    ldh [rP1], a                                  ; $4BB8: $E0 $00
    ld d, b                                       ; $4BBA: $50
    and b                                         ; $4BBB: $A0
    ldh a, [rP1]                                  ; $4BBC: $F0 $00
    nop                                           ; $4BBE: $00
    nop                                           ; $4BBF: $00
    rlca                                          ; $4BC0: $07
    nop                                           ; $4BC1: $00
    nop                                           ; $4BC2: $00
    nop                                           ; $4BC3: $00
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
    nop                                           ; $4BE4: $00
    nop                                           ; $4BE5: $00
    nop                                           ; $4BE6: $00
    nop                                           ; $4BE7: $00
    nop                                           ; $4BE8: $00
    nop                                           ; $4BE9: $00
    dec [hl]                                      ; $4BEA: $35
    nop                                           ; $4BEB: $00
    rst RST_38                                    ; $4BEC: $FF
    inc d                                         ; $4BED: $14
    rst RST_38                                    ; $4BEE: $FF
    ld e, d                                       ; $4BEF: $5A
    ld a, a                                       ; $4BF0: $7F
    ld hl, $5EFF                                  ; $4BF1: $21 $FF $5E
    rst RST_38                                    ; $4BF4: $FF
    ld e, l                                       ; $4BF5: $5D
    rst RST_18                                    ; $4BF6: $DF
    dec b                                         ; $4BF7: $05
    rrca                                          ; $4BF8: $0F
    nop                                           ; $4BF9: $00
    rlca                                          ; $4BFA: $07
    inc bc                                        ; $4BFB: $03
    inc bc                                        ; $4BFC: $03
    nop                                           ; $4BFD: $00
    nop                                           ; $4BFE: $00
    nop                                           ; $4BFF: $00
    nop                                           ; $4C00: $00
    nop                                           ; $4C01: $00
    nop                                           ; $4C02: $00
    nop                                           ; $4C03: $00
    rra                                           ; $4C04: $1F
    nop                                           ; $4C05: $00
    ld h, e                                       ; $4C06: $63
    rra                                           ; $4C07: $1F
    rst RST_38                                    ; $4C08: $FF
    ld h, b                                       ; $4C09: $60
    ld h, a                                       ; $4C0A: $67
    sbc d                                         ; $4C0B: $9A
    ld a, a                                       ; $4C0C: $7F
    and d                                         ; $4C0D: $A2
    cp $51                                        ; $4C0E: $FE $51
    ld sp, hl                                     ; $4C10: $F9
    ld h, $FF                                     ; $4C11: $26 $FF
    ld c, c                                       ; $4C13: $49
    db $FC                                        ; $4C14: $FC
    or e                                          ; $4C15: $B3
    db $FC                                        ; $4C16: $FC
    or e                                          ; $4C17: $B3
    cp $71                                        ; $4C18: $FE $71
    rst RST_38                                    ; $4C1A: $FF
    ldh a, [c]                                    ; $4C1B: $F2
    di                                            ; $4C1C: $F3
    pop hl                                        ; $4C1D: $E1
    pop hl                                        ; $4C1E: $E1
    nop                                           ; $4C1F: $00
    ret nz                                        ; $4C20: $C0

    nop                                           ; $4C21: $00
    ld hl, sp-$40                                 ; $4C22: $F8 $C0
    rst RST_38                                    ; $4C24: $FF
    ld [$AB7F], sp                                ; $4C25: $08 $7F $AB
    cp a                                          ; $4C28: $BF
    ld d, d                                       ; $4C29: $52
    ld e, a                                       ; $4C2A: $5F
    xor c                                         ; $4C2B: $A9
    rst RST_18                                    ; $4C2C: $DF
    daa                                           ; $4C2D: $27
    rst RST_38                                    ; $4C2E: $FF
    sbc e                                         ; $4C2F: $9B
    rst RST_38                                    ; $4C30: $FF
    inc l                                         ; $4C31: $2C
    rst RST_38                                    ; $4C32: $FF
    inc bc                                        ; $4C33: $03
    rst RST_20                                    ; $4C34: $E7
    dec a                                         ; $4C35: $3D
    rst RST_20                                    ; $4C36: $E7
    cp [hl]                                       ; $4C37: $BE
    cp $0D                                        ; $4C38: $FE $0D
    sbc a                                         ; $4C3A: $9F
    ld [hl], b                                    ; $4C3B: $70
    ld a, h                                       ; $4C3C: $7C
    dec sp                                        ; $4C3D: $3B
    ld a, a                                       ; $4C3E: $7F
    nop                                           ; $4C3F: $00
    nop                                           ; $4C40: $00
    nop                                           ; $4C41: $00
    nop                                           ; $4C42: $00
    nop                                           ; $4C43: $00
    nop                                           ; $4C44: $00
    nop                                           ; $4C45: $00
    ld hl, sp+$00                                 ; $4C46: $F8 $00
    call nz, $FEB8                                ; $4C48: $C4 $B8 $FE

jr_00C_4C4B:
    nop                                           ; $4C4B: $00
    cp $D0                                        ; $4C4C: $FE $D0
    cp $D0                                        ; $4C4E: $FE $D0
    db $FC                                        ; $4C50: $FC
    jr nc, jr_00C_4C4B                            ; $4C51: $30 $F8

    ldh a, [$FFF0]                                ; $4C53: $F0 $F0
    ldh [$FFF0], a                                ; $4C55: $E0 $F0
    nop                                           ; $4C57: $00
    ld h, b                                       ; $4C58: $60
    add b                                         ; $4C59: $80
    and b                                         ; $4C5A: $A0
    ld b, b                                       ; $4C5B: $40
    ld b, b                                       ; $4C5C: $40
    add b                                         ; $4C5D: $80
    ret nz                                        ; $4C5E: $C0

    nop                                           ; $4C5F: $00
    ld bc, $0100                                  ; $4C60: $01 $00 $01
    nop                                           ; $4C63: $00
    ld [bc], a                                    ; $4C64: $02
    ld bc, $0007                                  ; $4C65: $01 $07 $00
    rrca                                          ; $4C68: $0F
    nop                                           ; $4C69: $00
    inc d                                         ; $4C6A: $14
    dec bc                                        ; $4C6B: $0B
    rra                                           ; $4C6C: $1F
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

jr_00C_4C7A:
    nop                                           ; $4C7A: $00
    nop                                           ; $4C7B: $00
    nop                                           ; $4C7C: $00
    nop                                           ; $4C7D: $00

jr_00C_4C7E:
    nop                                           ; $4C7E: $00
    nop                                           ; $4C7F: $00
    rlca                                          ; $4C80: $07
    ld bc, $0639                                  ; $4C81: $01 $39 $06
    ld a, c                                       ; $4C84: $79
    ld [hl], $79                                  ; $4C85: $36 $79
    ld [hl], $FF                                  ; $4C87: $36 $FF
    jr nc, jr_00C_4C7E                            ; $4C89: $30 $F3

    ld c, h                                       ; $4C8B: $4C
    jp $847C                                      ; $4C8C: $C3 $7C $84


    ld hl, sp-$38                                 ; $4C8F: $F8 $C8
    jr nc, jr_00C_4CC3                            ; $4C91: $30 $30

    ret nz                                        ; $4C93: $C0

    ret nc                                        ; $4C94: $D0

    jr nz, @-$2E                                  ; $4C95: $20 $D0

    jr nz, jr_00C_4C7A                            ; $4C97: $20 $E1

    nop                                           ; $4C99: $00
    add d                                         ; $4C9A: $82
    ld bc, $0003                                  ; $4C9B: $01 $03 $00
    nop                                           ; $4C9E: $00
    nop                                           ; $4C9F: $00
    and e                                         ; $4CA0: $A3
    call c, $8CF2                                 ; $4CA1: $DC $F2 $8C
    ld a, [$FC74]                                 ; $4CA4: $FA $74 $FC
    ld [hl], b                                    ; $4CA7: $70
    db $FC                                        ; $4CA8: $FC
    ld l, b                                       ; $4CA9: $68
    ld a, h                                       ; $4CAA: $7C
    sbc b                                         ; $4CAB: $98
    inc a                                         ; $4CAC: $3C
    ld hl, sp-$48                                 ; $4CAD: $F8 $B8
    ld [hl], b                                    ; $4CAF: $70
    cp b                                          ; $4CB0: $B8
    ld [hl], b                                    ; $4CB1: $70
    ld hl, sp+$00                                 ; $4CB2: $F8 $00
    adc b                                         ; $4CB4: $88
    ld [hl], b                                    ; $4CB5: $70
    ld hl, sp+$00                                 ; $4CB6: $F8 $00
    ld hl, sp+$00                                 ; $4CB8: $F8 $00
    xor b                                         ; $4CBA: $A8
    ld d, b                                       ; $4CBB: $50
    ld hl, sp+$00                                 ; $4CBC: $F8 $00
    nop                                           ; $4CBE: $00
    nop                                           ; $4CBF: $00
    nop                                           ; $4CC0: $00
    nop                                           ; $4CC1: $00
    nop                                           ; $4CC2: $00

jr_00C_4CC3:
    nop                                           ; $4CC3: $00
    nop                                           ; $4CC4: $00
    nop                                           ; $4CC5: $00
    nop                                           ; $4CC6: $00
    nop                                           ; $4CC7: $00
    ld sp, $3900                                  ; $4CC8: $31 $00 $39
    db $10                                        ; $4CCB: $10
    ld a, a                                       ; $4CCC: $7F
    add hl, bc                                    ; $4CCD: $09
    ld a, a                                       ; $4CCE: $7F
    dec [hl]                                      ; $4CCF: $35
    ccf                                           ; $4CD0: $3F
    ld [bc], a                                    ; $4CD1: $02
    ccf                                           ; $4CD2: $3F
    dec de                                        ; $4CD3: $1B
    ccf                                           ; $4CD4: $3F
    rla                                           ; $4CD5: $17
    rra                                           ; $4CD6: $1F
    ld a, [bc]                                    ; $4CD7: $0A
    rra                                           ; $4CD8: $1F
    ld b, $0F                                     ; $4CD9: $06 $0F
    ld bc, $0103                                  ; $4CDB: $01 $03 $01
    ld bc, $0000                                  ; $4CDE: $01 $00 $00
    nop                                           ; $4CE1: $00
    nop                                           ; $4CE2: $00
    nop                                           ; $4CE3: $00

jr_00C_4CE4:
    nop                                           ; $4CE4: $00

jr_00C_4CE5:
    nop                                           ; $4CE5: $00
    nop                                           ; $4CE6: $00
    nop                                           ; $4CE7: $00
    nop                                           ; $4CE8: $00
    nop                                           ; $4CE9: $00
    nop                                           ; $4CEA: $00
    nop                                           ; $4CEB: $00
    ret nz                                        ; $4CEC: $C0

    nop                                           ; $4CED: $00
    ret nz                                        ; $4CEE: $C0

    add b                                         ; $4CEF: $80
    ret nz                                        ; $4CF0: $C0

    nop                                           ; $4CF1: $00
    sbc $80                                       ; $4CF2: $DE $80
    rst RST_20                                    ; $4CF4: $E7
    sbc h                                         ; $4CF5: $9C
    xor $53                                       ; $4CF6: $EE $53
    rst RST_38                                    ; $4CF8: $FF
    ld l, h                                       ; $4CF9: $6C
    db $FC                                        ; $4CFA: $FC
    db $E3                                        ; $4CFB: $E3
    rst RST_38                                    ; $4CFC: $FF
    db $F4                                        ; $4CFD: $F4
    rst RST_38                                    ; $4CFE: $FF
    di                                            ; $4CFF: $F3
    ret nz                                        ; $4D00: $C0

    nop                                           ; $4D01: $00
    inc a                                         ; $4D02: $3C
    ret nz                                        ; $4D03: $C0

    rst RST_38                                    ; $4D04: $FF
    nop                                           ; $4D05: $00
    jp hl                                         ; $4D06: $E9


    ld d, [hl]                                    ; $4D07: $56
    db $EB                                        ; $4D08: $EB
    ld d, h                                       ; $4D09: $54
    db $F4                                        ; $4D0A: $F4
    dec hl                                        ; $4D0B: $2B
    rst RST_30                                    ; $4D0C: $F7
    xor b                                         ; $4D0D: $A8
    rst RST_18                                    ; $4D0E: $DF
    inc sp                                        ; $4D0F: $33
    jp c, $FA35                                   ; $4D10: $DA $35 $FA

    add l                                         ; $4D13: $85
    cp $A1                                        ; $4D14: $FE $A1
    rst RST_38                                    ; $4D16: $FF
    ld d, b                                       ; $4D17: $50
    db $ED                                        ; $4D18: $ED
    ld d, [hl]                                    ; $4D19: $56
    ld a, a                                       ; $4D1A: $7F
    sub c                                         ; $4D1B: $91
    db $FD                                        ; $4D1C: $FD
    rst RST_28                                    ; $4D1D: $EF
    rst RST_38                                    ; $4D1E: $FF
    ld h, c                                       ; $4D1F: $61
    ldh [rP1], a                                  ; $4D20: $E0 $00
    jr nz, jr_00C_4CE4                            ; $4D22: $20 $C0

    ret nz                                        ; $4D24: $C0

    nop                                           ; $4D25: $00
    ld b, b                                       ; $4D26: $40
    add b                                         ; $4D27: $80
    ld b, b                                       ; $4D28: $40
    add b                                         ; $4D29: $80
    ldh [rP1], a                                  ; $4D2A: $E0 $00
    db $10                                        ; $4D2C: $10
    ldh [$FFC8], a                                ; $4D2D: $E0 $C8
    jr nc, jr_00C_4CE5                            ; $4D2F: $30 $B4

    ld c, b                                       ; $4D31: $48
    db $F4                                        ; $4D32: $F4
    ld [$40BC], sp                                ; $4D33: $08 $BC $40
    ldh a, [rP1]                                  ; $4D36: $F0 $00
    or b                                          ; $4D38: $B0
    ld b, b                                       ; $4D39: $40
    ldh a, [rP1]                                  ; $4D3A: $F0 $00
    ldh [$FFC0], a                                ; $4D3C: $E0 $C0
    ret nz                                        ; $4D3E: $C0

    nop                                           ; $4D3F: $00
    inc c                                         ; $4D40: $0C
    nop                                           ; $4D41: $00
    rra                                           ; $4D42: $1F
    inc c                                         ; $4D43: $0C
    rra                                           ; $4D44: $1F
    ld c, $1F                                     ; $4D45: $0E $1F
    ld c, $0E                                     ; $4D47: $0E $0E
    dec b                                         ; $4D49: $05
    inc c                                         ; $4D4A: $0C
    inc bc                                        ; $4D4B: $03
    inc c                                         ; $4D4C: $0C
    rlca                                          ; $4D4D: $07
    inc c                                         ; $4D4E: $0C
    rlca                                          ; $4D4F: $07
    ld e, $01                                     ; $4D50: $1E $01
    ld sp, $3E0E                                  ; $4D52: $31 $0E $3E
    ld bc, $017E                                  ; $4D55: $01 $7E $01
    and a                                         ; $4D58: $A7
    ld e, b                                       ; $4D59: $58
    db $FC                                        ; $4D5A: $FC
    nop                                           ; $4D5B: $00
    nop                                           ; $4D5C: $00
    nop                                           ; $4D5D: $00
    nop                                           ; $4D5E: $00
    nop                                           ; $4D5F: $00
    rst RST_38                                    ; $4D60: $FF
    db $F4                                        ; $4D61: $F4
    rst RST_38                                    ; $4D62: $FF
    add sp, -$01                                  ; $4D63: $E8 $FF
    dec bc                                        ; $4D65: $0B
    ld e, a                                       ; $4D66: $5F
    daa                                           ; $4D67: $27
    dec l                                         ; $4D68: $2D
    rla                                           ; $4D69: $17
    rla                                           ; $4D6A: $17
    ld bc, $02C7                                  ; $4D6B: $01 $C7 $02
    or [hl]                                       ; $4D6E: $B6
    ld b, e                                       ; $4D6F: $43
    ld c, a                                       ; $4D70: $4F
    or e                                          ; $4D71: $B3
    ld b, a                                       ; $4D72: $47
    cp b                                          ; $4D73: $B8
    ld c, [hl]                                    ; $4D74: $4E
    or a                                          ; $4D75: $B7
    xor a                                         ; $4D76: $AF
    ld d, $9F                                     ; $4D77: $16 $9F
    ld b, $87                                     ; $4D79: $06 $87
    nop                                           ; $4D7B: $00
    add c                                         ; $4D7C: $81
    nop                                           ; $4D7D: $00
    add b                                         ; $4D7E: $80
    nop                                           ; $4D7F: $00
    db $FD                                        ; $4D80: $FD
    adc a                                         ; $4D81: $8F
    db $FD                                        ; $4D82: $FD
    rlca                                          ; $4D83: $07
    ccf                                           ; $4D84: $3F
    ret nz                                        ; $4D85: $C0

    rra                                           ; $4D86: $1F
    db $E3                                        ; $4D87: $E3
    ccf                                           ; $4D88: $3F
    ret z                                         ; $4D89: $C8

    cp $34                                        ; $4D8A: $FE $34
    rst RST_38                                    ; $4D8C: $FF
    ld [hl], b                                    ; $4D8D: $70
    ld sp, hl                                     ; $4D8E: $F9
    ld [hl], $7F                                  ; $4D8F: $36 $7F
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
    ret nz                                        ; $4DBA: $C0

    nop                                           ; $4DBB: $00
    ret nz                                        ; $4DBC: $C0

    add b                                         ; $4DBD: $80
    ret nz                                        ; $4DBE: $C0

    add b                                         ; $4DBF: $80
    ld h, b                                       ; $4DC0: $60
    nop                                           ; $4DC1: $00
    ld d, b                                       ; $4DC2: $50
    jr nz, jr_00C_4E3D                            ; $4DC3: $20 $78

    nop                                           ; $4DC5: $00
    ld e, h                                       ; $4DC6: $5C
    jr nz, jr_00C_4E24                            ; $4DC7: $20 $5B

    inc h                                         ; $4DC9: $24
    ld a, e                                       ; $4DCA: $7B
    dec b                                         ; $4DCB: $05
    ld a, [hl-]                                   ; $4DCC: $3A
    dec b                                         ; $4DCD: $05
    inc h                                         ; $4DCE: $24
    dec de                                        ; $4DCF: $1B
    inc e                                         ; $4DD0: $1C
    inc bc                                        ; $4DD1: $03
    ld [bc], a                                    ; $4DD2: $02
    ld bc, $0001                                  ; $4DD3: $01 $01 $00
    ret nz                                        ; $4DD6: $C0

    nop                                           ; $4DD7: $00
    and b                                         ; $4DD8: $A0
    ld b, b                                       ; $4DD9: $40
    rst RST_38                                    ; $4DDA: $FF
    nop                                           ; $4DDB: $00
    or h                                          ; $4DDC: $B4
    ld c, e                                       ; $4DDD: $4B
    rst RST_30                                    ; $4DDE: $F7
    dec bc                                        ; $4DDF: $0B
    ldh [rP1], a                                  ; $4DE0: $E0 $00
    ld hl, sp-$40                                 ; $4DE2: $F8 $C0
    ld a, h                                       ; $4DE4: $7C
    cp b                                          ; $4DE5: $B8
    ld a, h                                       ; $4DE6: $7C
    cp b                                          ; $4DE7: $B8
    inc a                                         ; $4DE8: $3C
    ret nz                                        ; $4DE9: $C0

    ld [hl+], a                                   ; $4DEA: $22
    call c, Call_000_1CE2                         ; $4DEB: $DC $E2 $1C
    rst RST_38                                    ; $4DEE: $FF
    ld [bc], a                                    ; $4DEF: $02
    ccf                                           ; $4DF0: $3F
    add $7D                                       ; $4DF1: $C6 $7D
    cp d                                          ; $4DF3: $BA
    rst RST_38                                    ; $4DF4: $FF
    cp b                                          ; $4DF5: $B8
    db $FD                                        ; $4DF6: $FD
    jp c, $E6F9                                   ; $4DF7: $DA $F9 $E6

    pop af                                        ; $4DFA: $F1
    ld c, $0F                                     ; $4DFB: $0E $0F
    nop                                           ; $4DFD: $00
    inc bc                                        ; $4DFE: $03
    nop                                           ; $4DFF: $00
    rlca                                          ; $4E00: $07
    nop                                           ; $4E01: $00
    rlca                                          ; $4E02: $07
    inc bc                                        ; $4E03: $03
    inc bc                                        ; $4E04: $03
    nop                                           ; $4E05: $00
    rlca                                          ; $4E06: $07
    inc bc                                        ; $4E07: $03
    rrca                                          ; $4E08: $0F
    inc bc                                        ; $4E09: $03
    rra                                           ; $4E0A: $1F
    rlca                                          ; $4E0B: $07
    ccf                                           ; $4E0C: $3F
    ld de, $163F                                  ; $4E0D: $11 $3F $16
    ld a, a                                       ; $4E10: $7F
    ld [hl], $7F                                  ; $4E11: $36 $7F
    add hl, sp                                    ; $4E13: $39
    ld a, a                                       ; $4E14: $7F
    ld a, $3F                                     ; $4E15: $3E $3F
    ld e, $1F                                     ; $4E17: $1E $1F
    ld bc, $001F                                  ; $4E19: $01 $1F $00
    add hl, sp                                    ; $4E1C: $39
    ld d, $71                                     ; $4E1D: $16 $71
    cpl                                           ; $4E1F: $2F
    ld h, b                                       ; $4E20: $60
    nop                                           ; $4E21: $00
    ldh [rLCDC], a                                ; $4E22: $E0 $40

jr_00C_4E24:
    ldh a, [$FF80]                                ; $4E24: $F0 $80
    ldh a, [$FF60]                                ; $4E26: $F0 $60
    ldh [rLCDC], a                                ; $4E28: $E0 $40
    ldh a, [rNR41]                                ; $4E2A: $F0 $20
    ldh [rLCDC], a                                ; $4E2C: $E0 $40
    ldh a, [$FF80]                                ; $4E2E: $F0 $80
    ret z                                         ; $4E30: $C8

    jr nc, @-$02                                  ; $4E31: $30 $FC

    ld c, b                                       ; $4E33: $48
    db $FC                                        ; $4E34: $FC
    xor b                                         ; $4E35: $A8
    xor d                                         ; $4E36: $AA
    ld d, h                                       ; $4E37: $54
    ld [$7A14], a                                 ; $4E38: $EA $14 $7A
    add h                                         ; $4E3B: $84
    ld a, [hl]                                    ; $4E3C: $7E

jr_00C_4E3D:
    or h                                          ; $4E3D: $B4
    cp [hl]                                       ; $4E3E: $BE
    ld b, h                                       ; $4E3F: $44
    ld a, a                                       ; $4E40: $7F
    ld de, $40BF                                  ; $4E41: $11 $BF $40
    cp a                                          ; $4E44: $BF
    jp c, $D9E7                                   ; $4E45: $DA $E7 $D9

    rst RST_20                                    ; $4E48: $E7
    cp e                                          ; $4E49: $BB
    rst RST_38                                    ; $4E4A: $FF
    ld a, [hl-]                                   ; $4E4B: $3A
    ld a, a                                       ; $4E4C: $7F
    sub l                                         ; $4E4D: $95
    ld e, a                                       ; $4E4E: $5F
    xor l                                         ; $4E4F: $AD
    ld e, a                                       ; $4E50: $5F
    xor l                                         ; $4E51: $AD
    cp a                                          ; $4E52: $BF
    ld c, l                                       ; $4E53: $4D
    ld a, a                                       ; $4E54: $7F
    ld c, $1F                                     ; $4E55: $0E $1F
    rlca                                          ; $4E57: $07
    rlca                                          ; $4E58: $07
    nop                                           ; $4E59: $00
    inc bc                                        ; $4E5A: $03

jr_00C_4E5B:
    nop                                           ; $4E5B: $00
    ld bc, $0000                                  ; $4E5C: $01 $00 $00
    nop                                           ; $4E5F: $00
    xor [hl]                                      ; $4E60: $AE
    ld d, h                                       ; $4E61: $54
    sbc $24                                       ; $4E62: $DE $24
    inc a                                         ; $4E64: $3C

jr_00C_4E65:
    ret nc                                        ; $4E65: $D0

    db $FC                                        ; $4E66: $FC
    jr nz, jr_00C_4E65                            ; $4E67: $20 $FC

    ld e, b                                       ; $4E69: $58
    ld hl, sp-$80                                 ; $4E6A: $F8 $80
    ld hl, sp-$50                                 ; $4E6C: $F8 $B0
    ld hl, sp-$30                                 ; $4E6E: $F8 $D0
    ldh a, [$FFA0]                                ; $4E70: $F0 $A0
    ldh a, [$FF80]                                ; $4E72: $F0 $80
    ret nc                                        ; $4E74: $D0

    jr nz, @-$2E                                  ; $4E75: $20 $D0

    and b                                         ; $4E77: $A0
    ret nc                                        ; $4E78: $D0

    jr nz, jr_00C_4E5B                            ; $4E79: $20 $E0

    nop                                           ; $4E7B: $00
    ret nz                                        ; $4E7C: $C0

    nop                                           ; $4E7D: $00
    nop                                           ; $4E7E: $00
    nop                                           ; $4E7F: $00
    or a                                          ; $4E80: $B7
    ld c, e                                       ; $4E81: $4B
    rst RST_38                                    ; $4E82: $FF
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
    ld hl, sp+$00                                 ; $4EA0: $F8 $00
    ld d, h                                       ; $4EA2: $54
    xor b                                         ; $4EA3: $A8
    ld a, [$EE44]                                 ; $4EA4: $FA $44 $EE
    db $10                                        ; $4EA7: $10
    cpl                                           ; $4EA8: $2F
    sub $37                                       ; $4EA9: $D6 $37
    add sp, -$0B                                  ; $4EAB: $E8 $F5
    ld a, [hl+]                                   ; $4EAD: $2A
    add hl, sp                                    ; $4EAE: $39
    add $E7                                       ; $4EAF: $C6 $E7
    jr jr_00C_4EEC                                ; $4EB1: $18 $39

    add $1E                                       ; $4EB3: $C6 $1E
    add sp, -$61                                  ; $4EB5: $E8 $9F
    ld h, [hl]                                    ; $4EB7: $66
    sub a                                         ; $4EB8: $97
    ld h, b                                       ; $4EB9: $60
    and b                                         ; $4EBA: $A0
    ld b, b                                       ; $4EBB: $40
    ret nz                                        ; $4EBC: $C0

    nop                                           ; $4EBD: $00
    nop                                           ; $4EBE: $00
    nop                                           ; $4EBF: $00
    dec sp                                        ; $4EC0: $3B
    nop                                           ; $4EC1: $00
    rst RST_38                                    ; $4EC2: $FF
    ld a, [hl-]                                   ; $4EC3: $3A
    cp a                                          ; $4EC4: $BF
    push bc                                       ; $4EC5: $C5
    cp a                                          ; $4EC6: $BF
    ret c                                         ; $4EC7: $D8

    and $DD                                       ; $4EC8: $E6 $DD
    rst RST_20                                    ; $4ECA: $E7
    cp h                                          ; $4ECB: $BC
    rst RST_38                                    ; $4ECC: $FF
    inc b                                         ; $4ECD: $04
    rla                                           ; $4ECE: $17
    add sp, -$04                                  ; $4ECF: $E8 $FC
    inc bc                                        ; $4ED1: $03
    rst RST_38                                    ; $4ED2: $FF
    ldh a, [rIE]                                  ; $4ED3: $F0 $FF
    or $FF                                        ; $4ED5: $F6 $FF
    or $F7                                        ; $4ED7: $F6 $F7
    ldh [$FFE1], a                                ; $4ED9: $E0 $E1
    nop                                           ; $4EDB: $00
    nop                                           ; $4EDC: $00
    nop                                           ; $4EDD: $00
    nop                                           ; $4EDE: $00
    nop                                           ; $4EDF: $00
    ret nz                                        ; $4EE0: $C0

    nop                                           ; $4EE1: $00
    ldh a, [$FF80]                                ; $4EE2: $F0 $80
    call Call_00C_4F30                            ; $4EE4: $CD $30 $4F
    or b                                          ; $4EE7: $B0
    ld e, a                                       ; $4EE8: $5F
    xor [hl]                                      ; $4EE9: $AE
    rst RST_38                                    ; $4EEA: $FF
    ld [bc], a                                    ; $4EEB: $02

jr_00C_4EEC:
    db $E3                                        ; $4EEC: $E3
    sbc h                                         ; $4EED: $9C
    add $B9                                       ; $4EEE: $C6 $B9
    rst RST_18                                    ; $4EF0: $DF
    and b                                         ; $4EF1: $A0
    rst RST_38                                    ; $4EF2: $FF
    dec e                                         ; $4EF3: $1D
    rst RST_38                                    ; $4EF4: $FF
    sbc l                                         ; $4EF5: $9D
    rst RST_38                                    ; $4EF6: $FF
    ld c, l                                       ; $4EF7: $4D
    rst RST_38                                    ; $4EF8: $FF
    or c                                          ; $4EF9: $B1
    or c                                          ; $4EFA: $B1
    nop                                           ; $4EFB: $00
    nop                                           ; $4EFC: $00
    nop                                           ; $4EFD: $00
    nop                                           ; $4EFE: $00
    nop                                           ; $4EFF: $00
    ld bc, $0300                                  ; $4F00: $01 $00 $03
    ld bc, $0207                                  ; $4F03: $01 $07 $02
    ld b, $01                                     ; $4F06: $06 $01
    ld [$1307], sp                                ; $4F08: $08 $07 $13
    inc c                                         ; $4F0B: $0C
    cpl                                           ; $4F0C: $2F
    inc de                                        ; $4F0D: $13
    rst RST_30                                    ; $4F0E: $F7
    dec bc                                        ; $4F0F: $0B
    rst RST_38                                    ; $4F10: $FF
    dec a                                         ; $4F11: $3D
    ld a, a                                       ; $4F12: $7F
    cp [hl]                                       ; $4F13: $BE
    ld a, a                                       ; $4F14: $7F
    cp a                                          ; $4F15: $BF
    ld a, a                                       ; $4F16: $7F
    add b                                         ; $4F17: $80
    pop bc                                        ; $4F18: $C1
    nop                                           ; $4F19: $00
    ld bc, $0000                                  ; $4F1A: $01 $00 $00
    nop                                           ; $4F1D: $00
    nop                                           ; $4F1E: $00
    nop                                           ; $4F1F: $00
    jr nc, jr_00C_4F22                            ; $4F20: $30 $00

jr_00C_4F22:
    cpl                                           ; $4F22: $2F
    db $10                                        ; $4F23: $10
    ccf                                           ; $4F24: $3F
    nop                                           ; $4F25: $00
    rra                                           ; $4F26: $1F
    nop                                           ; $4F27: $00
    ld b, $01                                     ; $4F28: $06 $01
    ld bc, $0000                                  ; $4F2A: $01 $00 $00
    nop                                           ; $4F2D: $00
    nop                                           ; $4F2E: $00
    nop                                           ; $4F2F: $00

Call_00C_4F30:
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
    nop                                           ; $4F40: $00
    nop                                           ; $4F41: $00
    nop                                           ; $4F42: $00
    nop                                           ; $4F43: $00
    nop                                           ; $4F44: $00
    nop                                           ; $4F45: $00
    nop                                           ; $4F46: $00
    nop                                           ; $4F47: $00
    inc bc                                        ; $4F48: $03
    nop                                           ; $4F49: $00
    dec b                                         ; $4F4A: $05
    ld [bc], a                                    ; $4F4B: $02
    rrca                                          ; $4F4C: $0F
    nop                                           ; $4F4D: $00
    rla                                           ; $4F4E: $17
    inc c                                         ; $4F4F: $0C
    ld d, $09                                     ; $4F50: $16 $09
    ld a, a                                       ; $4F52: $7F
    inc b                                         ; $4F53: $04
    rst RST_28                                    ; $4F54: $EF
    ld e, b                                       ; $4F55: $58
    rst RST_28                                    ; $4F56: $EF
    ld d, h                                       ; $4F57: $54
    rst RST_38                                    ; $4F58: $FF
    ld c, c                                       ; $4F59: $49
    rst RST_38                                    ; $4F5A: $FF
    ld h, c                                       ; $4F5B: $61
    ld a, a                                       ; $4F5C: $7F
    add hl, de                                    ; $4F5D: $19
    add hl, sp                                    ; $4F5E: $39
    nop                                           ; $4F5F: $00
    nop                                           ; $4F60: $00
    nop                                           ; $4F61: $00
    nop                                           ; $4F62: $00
    nop                                           ; $4F63: $00
    db $FD                                        ; $4F64: $FD
    nop                                           ; $4F65: $00
    res 6, l                                      ; $4F66: $CB $B5
    db $EB                                        ; $4F68: $EB
    sub l                                         ; $4F69: $95
    sub a                                         ; $4F6A: $97
    ld l, d                                       ; $4F6B: $6A
    ld [hl], a                                    ; $4F6C: $77
    adc d                                         ; $4F6D: $8A
    rst RST_38                                    ; $4F6E: $FF
    ld h, h                                       ; $4F6F: $64
    cpl                                           ; $4F70: $2F
    push de                                       ; $4F71: $D5
    cpl                                           ; $4F72: $2F
    ret nc                                        ; $4F73: $D0

jr_00C_4F74:
    cp a                                          ; $4F74: $BF
    ld c, h                                       ; $4F75: $4C
    di                                            ; $4F76: $F3
    sbc l                                         ; $4F77: $9D
    ld [hl], e                                    ; $4F78: $73
    db $DD                                        ; $4F79: $DD
    rst RST_38                                    ; $4F7A: $FF
    add [hl]                                      ; $4F7B: $86
    rst RST_08                                    ; $4F7C: $CF
    jr c, jr_00C_4FBD                             ; $4F7D: $38 $3E

    dec e                                         ; $4F7F: $1D
    nop                                           ; $4F80: $00
    nop                                           ; $4F81: $00
    nop                                           ; $4F82: $00
    nop                                           ; $4F83: $00
    add b                                         ; $4F84: $80
    nop                                           ; $4F85: $00
    add b                                         ; $4F86: $80
    nop                                           ; $4F87: $00
    add b                                         ; $4F88: $80
    nop                                           ; $4F89: $00
    ld a, a                                       ; $4F8A: $7F
    nop                                           ; $4F8B: $00
    add e                                         ; $4F8C: $83
    ld a, h                                       ; $4F8D: $7C
    rst RST_38                                    ; $4F8E: $FF
    nop                                           ; $4F8F: $00
    rst RST_38                                    ; $4F90: $FF
    ld d, b                                       ; $4F91: $50
    ld e, [hl]                                    ; $4F92: $5E
    xor l                                         ; $4F93: $AD
    rst RST_30                                    ; $4F94: $F7
    inc l                                         ; $4F95: $2C
    rst RST_38                                    ; $4F96: $FF
    sub l                                         ; $4F97: $95
    rst RST_38                                    ; $4F98: $FF
    jp Jump_000_1FFF                              ; $4F99: $C3 $FF $1F


    cp a                                          ; $4F9C: $BF
    ld b, a                                       ; $4F9D: $47
    ld b, a                                       ; $4F9E: $47
    add b                                         ; $4F9F: $80
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
    add b                                         ; $4FAC: $80
    nop                                           ; $4FAD: $00
    add b                                         ; $4FAE: $80
    nop                                           ; $4FAF: $00
    ret nz                                        ; $4FB0: $C0

    nop                                           ; $4FB1: $00
    jr nz, jr_00C_4F74                            ; $4FB2: $20 $C0

    ldh [rP1], a                                  ; $4FB4: $E0 $00
    ldh [$FFC0], a                                ; $4FB6: $E0 $C0
    ldh [$FFC0], a                                ; $4FB8: $E0 $C0
    ldh [$FFC0], a                                ; $4FBA: $E0 $C0
    ret nz                                        ; $4FBC: $C0

jr_00C_4FBD:
    add b                                         ; $4FBD: $80
    add b                                         ; $4FBE: $80
    nop                                           ; $4FBF: $00
    ld bc, $6600                                  ; $4FC0: $01 $00 $66
    ld bc, $67F8                                  ; $4FC3: $01 $F8 $67

jr_00C_4FC6:
    ld hl, sp+$77                                 ; $4FC6: $F8 $77
    rst RST_38                                    ; $4FC8: $FF
    ld [hl], b                                    ; $4FC9: $70
    ld a, c                                       ; $4FCA: $79
    ld h, $30                                     ; $4FCB: $26 $30
    rra                                           ; $4FCD: $1F
    jr nc, jr_00C_4FEF                            ; $4FCE: $30 $1F

    jr jr_00C_4FE1                                ; $4FD0: $18 $0F

    ld c, $01                                     ; $4FD2: $0E $01
    ld de, $3E0E                                  ; $4FD4: $11 $0E $3E
    ld bc, $017E                                  ; $4FD7: $01 $7E $01
    and a                                         ; $4FDA: $A7
    ld e, b                                       ; $4FDB: $58
    db $FC                                        ; $4FDC: $FC
    nop                                           ; $4FDD: $00
    nop                                           ; $4FDE: $00
    nop                                           ; $4FDF: $00
    rst RST_38                                    ; $4FE0: $FF

jr_00C_4FE1:
    nop                                           ; $4FE1: $00
    db $DB                                        ; $4FE2: $DB
    ld a, [hl]                                    ; $4FE3: $7E
    ld a, [hl]                                    ; $4FE4: $7E
    sbc c                                         ; $4FE5: $99
    ld a, h                                       ; $4FE6: $7C
    sbc e                                         ; $4FE7: $9B
    sbc [hl]                                      ; $4FE8: $9E
    ld bc, $0001                                  ; $4FE9: $01 $01 $00
    add b                                         ; $4FEC: $80
    nop                                           ; $4FED: $00
    add b                                         ; $4FEE: $80

jr_00C_4FEF:
    nop                                           ; $4FEF: $00
    add b                                         ; $4FF0: $80
    nop                                           ; $4FF1: $00
    add b                                         ; $4FF2: $80
    nop                                           ; $4FF3: $00
    add b                                         ; $4FF4: $80
    nop                                           ; $4FF5: $00
    add b                                         ; $4FF6: $80
    nop                                           ; $4FF7: $00
    add b                                         ; $4FF8: $80
    nop                                           ; $4FF9: $00
    nop                                           ; $4FFA: $00
    nop                                           ; $4FFB: $00
    nop                                           ; $4FFC: $00
    nop                                           ; $4FFD: $00
    nop                                           ; $4FFE: $00
    nop                                           ; $4FFF: $00
    add b                                         ; $5000: $80
    nop                                           ; $5001: $00
    ld b, b                                       ; $5002: $40
    add b                                         ; $5003: $80
    jr c, jr_00C_4FC6                             ; $5004: $38 $C0

    inc a                                         ; $5006: $3C
    ret c                                         ; $5007: $D8

    cp $38                                        ; $5008: $FE $38
    cp $18                                        ; $500A: $FE $18
    sbc a                                         ; $500C: $9F
    ld h, [hl]                                    ; $500D: $66
    ld b, a                                       ; $500E: $47
    ld a, $23                                     ; $500F: $3E $23
    ld e, $13                                     ; $5011: $1E $13
    inc c                                         ; $5013: $0C
    inc c                                         ; $5014: $0C
    inc bc                                        ; $5015: $03
    dec b                                         ; $5016: $05
    ld [bc], a                                    ; $5017: $02
    inc bc                                        ; $5018: $03
    nop                                           ; $5019: $00
    ld [bc], a                                    ; $501A: $02
    ld bc, $0003                                  ; $501B: $01 $03 $00
    nop                                           ; $501E: $00
    nop                                           ; $501F: $00
    add b                                         ; $5020: $80
    nop                                           ; $5021: $00
    ld b, b                                       ; $5022: $40
    add b                                         ; $5023: $80
    ldh [rP1], a                                  ; $5024: $E0 $00
    ldh a, [rP1]                                  ; $5026: $F0 $00
    xor b                                         ; $5028: $A8
    ld d, b                                       ; $5029: $50
    ld hl, sp+$00                                 ; $502A: $F8 $00
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
    nop                                           ; $503E: $00
    nop                                           ; $503F: $00
    rra                                           ; $5040: $1F
    nop                                           ; $5041: $00
    cpl                                           ; $5042: $2F
    rra                                           ; $5043: $1F
    ccf                                           ; $5044: $3F
    rla                                           ; $5045: $17
    ccf                                           ; $5046: $3F
    add hl, de                                    ; $5047: $19
    ccf                                           ; $5048: $3F
    inc de                                        ; $5049: $13
    rra                                           ; $504A: $1F
    ld b, $06                                     ; $504B: $06 $06
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
    nop                                           ; $5062: $00
    nop                                           ; $5063: $00
    nop                                           ; $5064: $00
    nop                                           ; $5065: $00
    nop                                           ; $5066: $00
    nop                                           ; $5067: $00
    nop                                           ; $5068: $00
    nop                                           ; $5069: $00
    ld bc, $0300                                  ; $506A: $01 $00 $03
    ld bc, $003F                                  ; $506D: $01 $3F $00
    ld b, c                                       ; $5070: $41
    ld a, $FF                                     ; $5071: $3E $FF
    nop                                           ; $5073: $00
    rst RST_38                                    ; $5074: $FF
    cp [hl]                                       ; $5075: $BE
    rst RST_38                                    ; $5076: $FF
    cp [hl]                                       ; $5077: $BE
    rst RST_38                                    ; $5078: $FF
    ld a, [hl]                                    ; $5079: $7E
    rst RST_38                                    ; $507A: $FF
    ld a, [hl]                                    ; $507B: $7E
    ld a, a                                       ; $507C: $7F
    ld e, $1E                                     ; $507D: $1E $1E
    nop                                           ; $507F: $00
    nop                                           ; $5080: $00
    nop                                           ; $5081: $00
    nop                                           ; $5082: $00
    nop                                           ; $5083: $00
    rra                                           ; $5084: $1F
    nop                                           ; $5085: $00
    ld h, a                                       ; $5086: $67
    inc e                                         ; $5087: $1C
    rst RST_38                                    ; $5088: $FF
    ld h, c                                       ; $5089: $61
    ld l, a                                       ; $508A: $6F
    sbc c                                         ; $508B: $99
    rst RST_18                                    ; $508C: $DF
    jr nz, jr_00C_50FB                            ; $508D: $20 $6C

    sbc e                                         ; $508F: $9B
    rst RST_18                                    ; $5090: $DF

jr_00C_5091:
    jr nz, jr_00C_5091                            ; $5091: $20 $FE

    ld e, l                                       ; $5093: $5D
    cp $A1                                        ; $5094: $FE $A1
    rst RST_38                                    ; $5096: $FF
    ld a, [bc]                                    ; $5097: $0A
    rrca                                          ; $5098: $0F
    rlca                                          ; $5099: $07
    dec c                                         ; $509A: $0D
    rlca                                          ; $509B: $07
    rlca                                          ; $509C: $07
    inc bc                                        ; $509D: $03
    inc bc                                        ; $509E: $03
    nop                                           ; $509F: $00
    nop                                           ; $50A0: $00
    nop                                           ; $50A1: $00
    ret nz                                        ; $50A2: $C0

    nop                                           ; $50A3: $00
    ei                                            ; $50A4: $FB
    nop                                           ; $50A5: $00
    sub a                                         ; $50A6: $97
    ld l, d                                       ; $50A7: $6A
    rst RST_10                                    ; $50A8: $D7
    ld a, [hl+]                                   ; $50A9: $2A
    ld l, $D4                                     ; $50AA: $2E $D4
    rst RST_28                                    ; $50AC: $EF
    inc d                                         ; $50AD: $14
    ld a, [$5ACD]                                 ; $50AE: $FA $CD $5A
    xor l                                         ; $50B1: $AD
    ld e, a                                       ; $50B2: $5F
    and b                                         ; $50B3: $A0
    ld a, a                                       ; $50B4: $7F
    sbc h                                         ; $50B5: $9C
    rst RST_20                                    ; $50B6: $E7
    ld a, $E7                                     ; $50B7: $3E $E7
    cp [hl]                                       ; $50B9: $BE
    rst RST_38                                    ; $50BA: $FF
    inc c                                         ; $50BB: $0C
    sbc [hl]                                      ; $50BC: $9E
    pop af                                        ; $50BD: $F1
    db $FD                                        ; $50BE: $FD
    ld a, d                                       ; $50BF: $7A
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
    db $FC                                        ; $50CA: $FC
    nop                                           ; $50CB: $00
    ld b, $F8                                     ; $50CC: $06 $F8
    ld a, [hl]                                    ; $50CE: $7E
    add b                                         ; $50CF: $80
    rst RST_38                                    ; $50D0: $FF
    ld d, h                                       ; $50D1: $54
    ld d, a                                       ; $50D2: $57
    xor d                                         ; $50D3: $AA
    db $FD                                        ; $50D4: $FD
    ld a, [hl+]                                   ; $50D5: $2A
    ld a, a                                       ; $50D6: $7F
    call nz, $E07F                                ; $50D7: $C4 $7F $E0
    rst RST_38                                    ; $50DA: $FF
    ld c, $FE                                     ; $50DB: $0E $FE
    inc a                                         ; $50DD: $3C
    inc a                                         ; $50DE: $3C
    nop                                           ; $50DF: $00
    rlca                                          ; $50E0: $07
    nop                                           ; $50E1: $00
    rlca                                          ; $50E2: $07
    ld [bc], a                                    ; $50E3: $02
    rrca                                          ; $50E4: $0F
    ld [bc], a                                    ; $50E5: $02
    ld c, $01                                     ; $50E6: $0E $01
    dec bc                                        ; $50E8: $0B
    inc b                                         ; $50E9: $04
    rrca                                          ; $50EA: $0F
    inc bc                                        ; $50EB: $03
    dec c                                         ; $50EC: $0D
    rlca                                          ; $50ED: $07
    ld c, $05                                     ; $50EE: $0E $05
    ld b, $03                                     ; $50F0: $06 $03
    rlca                                          ; $50F2: $07
    ld [bc], a                                    ; $50F3: $02
    rlca                                          ; $50F4: $07
    ld bc, $020F                                  ; $50F5: $01 $0F $02
    rla                                           ; $50F8: $17
    inc c                                         ; $50F9: $0C
    dec de                                        ; $50FA: $1B

jr_00C_50FB:
    rrca                                          ; $50FB: $0F
    dec c                                         ; $50FC: $0D
    rlca                                          ; $50FD: $07
    rlca                                          ; $50FE: $07
    ld [bc], a                                    ; $50FF: $02
    nop                                           ; $5100: $00
    nop                                           ; $5101: $00
    nop                                           ; $5102: $00
    nop                                           ; $5103: $00
    nop                                           ; $5104: $00
    nop                                           ; $5105: $00
    nop                                           ; $5106: $00
    nop                                           ; $5107: $00
    nop                                           ; $5108: $00
    nop                                           ; $5109: $00
    nop                                           ; $510A: $00
    nop                                           ; $510B: $00
    nop                                           ; $510C: $00

jr_00C_510D:
    nop                                           ; $510D: $00
    nop                                           ; $510E: $00
    nop                                           ; $510F: $00
    ld bc, $F600                                  ; $5110: $01 $00 $F6
    ld bc, $D52E                                  ; $5113: $01 $2E $D5
    xor l                                         ; $5116: $AD
    ld d, d                                       ; $5117: $52
    ld e, l                                       ; $5118: $5D
    xor d                                         ; $5119: $AA
    rst RST_18                                    ; $511A: $DF
    jr nz, jr_00C_510D                            ; $511B: $20 $F0

    rrca                                          ; $511D: $0F
    ldh a, [$FFCF]                                ; $511E: $F0 $CF
    nop                                           ; $5120: $00
    nop                                           ; $5121: $00

jr_00C_5122:
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
    ld [hl], b                                    ; $512C: $70
    nop                                           ; $512D: $00
    adc b                                         ; $512E: $88
    ld [hl], b                                    ; $512F: $70
    ld a, b                                       ; $5130: $78
    add b                                         ; $5131: $80
    ld hl, sp+$00                                 ; $5132: $F8 $00
    ld hl, sp+$00                                 ; $5134: $F8 $00
    ldh a, [rLCDC]                                ; $5136: $F0 $40
    ldh a, [$FFE0]                                ; $5138: $F0 $E0
    ld hl, sp+$00                                 ; $513A: $F8 $00
    ld l, h                                       ; $513C: $6C
    sub b                                         ; $513D: $90
    inc [hl]                                      ; $513E: $34
    ret z                                         ; $513F: $C8

    ld a, [de]                                    ; $5140: $1A
    ld bc, $193E                                  ; $5141: $01 $3E $19
    ld a, $1D                                     ; $5144: $3E $1D
    ccf                                           ; $5146: $3F
    inc e                                         ; $5147: $1C
    ld e, $09                                     ; $5148: $1E $09
    inc c                                         ; $514A: $0C
    rlca                                          ; $514B: $07
    inc c                                         ; $514C: $0C
    rlca                                          ; $514D: $07
    ld b, $03                                     ; $514E: $06 $03
    inc bc                                        ; $5150: $03
    nop                                           ; $5151: $00
    inc b                                         ; $5152: $04
    inc bc                                        ; $5153: $03
    rrca                                          ; $5154: $0F
    nop                                           ; $5155: $00
    rra                                           ; $5156: $1F
    nop                                           ; $5157: $00
    add hl, hl                                    ; $5158: $29
    ld d, $3F                                     ; $5159: $16 $3F
    nop                                           ; $515B: $00
    nop                                           ; $515C: $00
    nop                                           ; $515D: $00
    nop                                           ; $515E: $00
    nop                                           ; $515F: $00

jr_00C_5160:
    jr nz, jr_00C_5122                            ; $5160: $20 $C0

    and b                                         ; $5162: $A0
    ld b, b                                       ; $5163: $40
    ld h, b                                       ; $5164: $60

jr_00C_5165:
    add b                                         ; $5165: $80
    and b                                         ; $5166: $A0
    ld b, b                                       ; $5167: $40
    and b                                         ; $5168: $A0
    ld b, b                                       ; $5169: $40
    ret nz                                        ; $516A: $C0

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
    ld hl, sp-$09                                 ; $5180: $F8 $F7

jr_00C_5182:
    rst RST_38                                    ; $5182: $FF
    ldh a, [rIE]                                  ; $5183: $F0 $FF
    rrca                                          ; $5185: $0F
    rst RST_38                                    ; $5186: $FF
    ld h, a                                       ; $5187: $67
    rst RST_38                                    ; $5188: $FF
    ldh [rIE], a                                  ; $5189: $E0 $FF
    add sp, -$01                                  ; $518B: $E8 $FF
    rra                                           ; $518D: $1F
    add e                                         ; $518E: $83
    ld a, a                                       ; $518F: $7F
    rst RST_08                                    ; $5190: $CF
    ld a, $60                                     ; $5191: $3E $60
    sbc a                                         ; $5193: $9F
    jr nc, jr_00C_5165                            ; $5194: $30 $CF

    scf                                           ; $5196: $37
    ret z                                         ; $5197: $C8

    rst RST_08                                    ; $5198: $CF
    nop                                           ; $5199: $00
    ld c, d                                       ; $519A: $4A
    add l                                         ; $519B: $85
    daa                                           ; $519C: $27
    ret nz                                        ; $519D: $C0

    jr nz, jr_00C_5160                            ; $519E: $20 $C0

    inc a                                         ; $51A0: $3C
    ret nz                                        ; $51A1: $C0

    ldh a, [rP1]                                  ; $51A2: $F0 $00
    ldh [$FFC0], a                                ; $51A4: $E0 $C0
    ldh [$FFC0], a                                ; $51A6: $E0 $C0
    ret nz                                        ; $51A8: $C0

    nop                                           ; $51A9: $00
    nop                                           ; $51AA: $00
    nop                                           ; $51AB: $00
    ld hl, sp+$00                                 ; $51AC: $F8 $00
    ldh a, [$FFC0]                                ; $51AE: $F0 $C0
    ret nz                                        ; $51B0: $C0

    nop                                           ; $51B1: $00
    rst RST_38                                    ; $51B2: $FF
    ret nz                                        ; $51B3: $C0

    inc c                                         ; $51B4: $0C
    ldh a, [$FFF0]                                ; $51B5: $F0 $F0
    nop                                           ; $51B7: $00
    ldh [rP1], a                                  ; $51B8: $E0 $00
    inc a                                         ; $51BA: $3C
    ret nz                                        ; $51BB: $C0

    ldh a, [rP1]                                  ; $51BC: $F0 $00
    nop                                           ; $51BE: $00
    nop                                           ; $51BF: $00
    jr nz, jr_00C_5182                            ; $51C0: $20 $C0

    and b                                         ; $51C2: $A0
    ld b, b                                       ; $51C3: $40
    ld h, b                                       ; $51C4: $60
    add b                                         ; $51C5: $80
    and b                                         ; $51C6: $A0
    ld b, b                                       ; $51C7: $40
    and b                                         ; $51C8: $A0
    ld b, b                                       ; $51C9: $40
    ret nz                                        ; $51CA: $C0

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
    nop                                           ; $51E4: $00
    nop                                           ; $51E5: $00
    nop                                           ; $51E6: $00
    nop                                           ; $51E7: $00
    nop                                           ; $51E8: $00
    nop                                           ; $51E9: $00
    nop                                           ; $51EA: $00
    nop                                           ; $51EB: $00
    nop                                           ; $51EC: $00
    nop                                           ; $51ED: $00
    nop                                           ; $51EE: $00
    nop                                           ; $51EF: $00
    nop                                           ; $51F0: $00
    nop                                           ; $51F1: $00
    nop                                           ; $51F2: $00
    nop                                           ; $51F3: $00
    ld a, $00                                     ; $51F4: $3E $00
    ld h, c                                       ; $51F6: $61
    ld e, $62                                     ; $51F7: $1E $62
    dec e                                         ; $51F9: $1D
    ld h, d                                       ; $51FA: $62
    dec e                                         ; $51FB: $1D
    ld l, a                                       ; $51FC: $6F
    db $10                                        ; $51FD: $10
    ld [hl], b                                    ; $51FE: $70
    nop                                           ; $51FF: $00
    ld bc, $0300                                  ; $5200: $01 $00 $03
    nop                                           ; $5203: $00
    rlca                                          ; $5204: $07
    ld [bc], a                                    ; $5205: $02
    rlca                                          ; $5206: $07
    nop                                           ; $5207: $00
    ld c, $05                                     ; $5208: $0E $05
    rlca                                          ; $520A: $07
    nop                                           ; $520B: $00
    dec bc                                        ; $520C: $0B
    ld b, $0F                                     ; $520D: $06 $0F
    ld b, $16                                     ; $520F: $06 $16
    dec c                                         ; $5211: $0D
    rst RST_38                                    ; $5212: $FF
    ld bc, $7CFF                                  ; $5213: $01 $FF $7C
    ld c, a                                       ; $5216: $4F
    cp a                                          ; $5217: $BF
    add e                                         ; $5218: $83
    ld a, [hl]                                    ; $5219: $7E
    jp $313D                                      ; $521A: $C3 $3D $31


    ld c, $0F                                     ; $521D: $0E $0F
    nop                                           ; $521F: $00
    rst RST_38                                    ; $5220: $FF
    nop                                           ; $5221: $00
    rst RST_08                                    ; $5222: $CF
    or c                                          ; $5223: $B1
    rst RST_28                                    ; $5224: $EF
    sub l                                         ; $5225: $95
    sub a                                         ; $5226: $97
    ld l, d                                       ; $5227: $6A
    ld a, a                                       ; $5228: $7F
    add c                                         ; $5229: $81
    rst RST_30                                    ; $522A: $F7
    ld l, h                                       ; $522B: $6C
    ld l, a                                       ; $522C: $6F
    sub e                                         ; $522D: $93
    rst RST_28                                    ; $522E: $EF
    dec [hl]                                      ; $522F: $35
    rst RST_38                                    ; $5230: $FF
    cp b                                          ; $5231: $B8
    rst RST_38                                    ; $5232: $FF
    add b                                         ; $5233: $80
    sbc [hl]                                      ; $5234: $9E
    ld a, l                                       ; $5235: $7D
    rst RST_38                                    ; $5236: $FF
    nop                                           ; $5237: $00
    rst RST_00                                    ; $5238: $C7
    dec sp                                        ; $5239: $3B
    jp $83BD                                      ; $523A: $C3 $BD $83


    ld a, h                                       ; $523D: $7C
    ld h, [hl]                                    ; $523E: $66
    add hl, de                                    ; $523F: $19
    ld a, [$F204]                                 ; $5240: $FA $04 $F2
    db $EC                                        ; $5243: $EC
    db $FC                                        ; $5244: $FC
    nop                                           ; $5245: $00
    ld a, $DC                                     ; $5246: $3E $DC
    ld e, $EC                                     ; $5248: $1E $EC
    inc e                                         ; $524A: $1C
    ldh [$FF34], a                                ; $524B: $E0 $34
    ret z                                         ; $524D: $C8

    ldh [c], a                                    ; $524E: $E2
    inc e                                         ; $524F: $1C
    ld h, $18                                     ; $5250: $26 $18
    rra                                           ; $5252: $1F
    inc b                                         ; $5253: $04
    cpl                                           ; $5254: $2F
    dec d                                         ; $5255: $15
    daa                                           ; $5256: $27
    dec de                                        ; $5257: $1B
    inc de                                        ; $5258: $13
    rrca                                          ; $5259: $0F
    inc de                                        ; $525A: $13
    rrca                                          ; $525B: $0F
    add hl, bc                                    ; $525C: $09
    rlca                                          ; $525D: $07
    add hl, bc                                    ; $525E: $09
    rlca                                          ; $525F: $07
    nop                                           ; $5260: $00
    nop                                           ; $5261: $00
    nop                                           ; $5262: $00
    nop                                           ; $5263: $00
    nop                                           ; $5264: $00

jr_00C_5265:
    nop                                           ; $5265: $00
    ld a, h                                       ; $5266: $7C
    nop                                           ; $5267: $00
    cp h                                          ; $5268: $BC
    ld b, b                                       ; $5269: $40
    ld a, h                                       ; $526A: $7C
    add b                                         ; $526B: $80
    ld a, h                                       ; $526C: $7C
    add b                                         ; $526D: $80
    ld a, [$E604]                                 ; $526E: $FA $04 $E6

jr_00C_5271:
    jr jr_00C_5271                                ; $5271: $18 $FE

    ld h, b                                       ; $5273: $60
    rst RST_38                                    ; $5274: $FF
    ld d, [hl]                                    ; $5275: $56

jr_00C_5276:
    rst RST_38                                    ; $5276: $FF
    ld h, $FF                                     ; $5277: $26 $FF
    ld a, [$7AFF]                                 ; $5279: $FA $FF $7A
    cp $84                                        ; $527C: $FE $84
    db $FC                                        ; $527E: $FC

jr_00C_527F:
    nop                                           ; $527F: $00
    ld hl, sp+$50                                 ; $5280: $F8 $50
    ld a, b                                       ; $5282: $78
    or b                                          ; $5283: $B0
    jr c, jr_00C_5276                             ; $5284: $38 $F0

    jr c, @-$0E                                   ; $5286: $38 $F0

    sbc b                                         ; $5288: $98
    ld [hl], b                                    ; $5289: $70
    sbc b                                         ; $528A: $98
    ld [hl], b                                    ; $528B: $70
    ld a, b                                       ; $528C: $78
    nop                                           ; $528D: $00
    ld b, h                                       ; $528E: $44
    jr c, jr_00C_5265                             ; $528F: $38 $D4

    jr z, jr_00C_527F                             ; $5291: $28 $EC

    db $10                                        ; $5293: $10
    db $FC                                        ; $5294: $FC
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
    nop                                           ; $52B6: $00
    nop                                           ; $52B7: $00
    nop                                           ; $52B8: $00
    nop                                           ; $52B9: $00
    nop                                           ; $52BA: $00
    nop                                           ; $52BB: $00
    ld bc, $0200                                  ; $52BC: $01 $00 $02
    ld bc, $F7F8                                  ; $52BF: $01 $F8 $F7

jr_00C_52C2:
    rst RST_38                                    ; $52C2: $FF
    ldh a, [$FF7F]                                ; $52C3: $F0 $7F
    rst RST_28                                    ; $52C5: $EF
    rst RST_38                                    ; $52C6: $FF
    add a                                         ; $52C7: $87
    rst RST_38                                    ; $52C8: $FF
    db $10                                        ; $52C9: $10
    rst RST_38                                    ; $52CA: $FF
    cp b                                          ; $52CB: $B8
    rst RST_38                                    ; $52CC: $FF
    ld a, [hl-]                                   ; $52CD: $3A
    cp a                                          ; $52CE: $BF
    ld b, [hl]                                    ; $52CF: $46
    ld b, a                                       ; $52D0: $47
    cp [hl]                                       ; $52D1: $BE
    inc hl                                        ; $52D2: $23
    sbc $33                                       ; $52D3: $DE $33
    call z, $C32C                                 ; $52D5: $CC $2C $C3
    push bc                                       ; $52D8: $C5
    ld [bc], a                                    ; $52D9: $02
    ld b, e                                       ; $52DA: $43
    add b                                         ; $52DB: $80
    ld [hl+], a                                   ; $52DC: $22
    pop bc                                        ; $52DD: $C1
    inc hl                                        ; $52DE: $23
    ret nz                                        ; $52DF: $C0

    inc a                                         ; $52E0: $3C
    ret nz                                        ; $52E1: $C0

    ldh a, [rP1]                                  ; $52E2: $F0 $00
    ldh [$FFC0], a                                ; $52E4: $E0 $C0
    ldh [$FFC0], a                                ; $52E6: $E0 $C0
    ret nz                                        ; $52E8: $C0

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
    add b                                         ; $52F4: $80
    nop                                           ; $52F5: $00
    ld b, b                                       ; $52F6: $40
    add b                                         ; $52F7: $80
    ldh [rP1], a                                  ; $52F8: $E0 $00
    ldh a, [rP1]                                  ; $52FA: $F0 $00
    xor b                                         ; $52FC: $A8
    ld d, b                                       ; $52FD: $50
    ld hl, sp+$00                                 ; $52FE: $F8 $00
    jr nz, jr_00C_52C2                            ; $5300: $20 $C0

    and b                                         ; $5302: $A0
    ld b, b                                       ; $5303: $40
    ld h, b                                       ; $5304: $60
    add b                                         ; $5305: $80
    and b                                         ; $5306: $A0
    ld b, b                                       ; $5307: $40
    and b                                         ; $5308: $A0
    ld b, b                                       ; $5309: $40
    ret nz                                        ; $530A: $C0

    nop                                           ; $530B: $00
    nop                                           ; $530C: $00
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
    nop                                           ; $5318: $00
    nop                                           ; $5319: $00
    nop                                           ; $531A: $00
    nop                                           ; $531B: $00
    nop                                           ; $531C: $00
    nop                                           ; $531D: $00
    nop                                           ; $531E: $00
    nop                                           ; $531F: $00
    ld b, $00                                     ; $5320: $06 $00
    add hl, bc                                    ; $5322: $09
    ld b, $1E                                     ; $5323: $06 $1E
    ld bc, $001F                                  ; $5325: $01 $1F $00
    ccf                                           ; $5328: $3F
    jr @+$41                                      ; $5329: $18 $3F

    ld e, $3F                                     ; $532B: $1E $3F
    ld e, $7D                                     ; $532D: $1E $7D
    ld a, $6D                                     ; $532F: $3E $6D
    ld a, $69                                     ; $5331: $3E $69
    ld a, $69                                     ; $5333: $3E $69
    ld a, $C1                                     ; $5335: $3E $C1
    ld a, [hl]                                    ; $5337: $7E
    pop bc                                        ; $5338: $C1
    ld a, [hl]                                    ; $5339: $7E
    pop bc                                        ; $533A: $C1
    ld a, [hl]                                    ; $533B: $7E
    add c                                         ; $533C: $81
    ld a, a                                       ; $533D: $7F
    add c                                         ; $533E: $81
    ld a, a                                       ; $533F: $7F
    add c                                         ; $5340: $81
    ld a, a                                       ; $5341: $7F
    add c                                         ; $5342: $81
    ld a, a                                       ; $5343: $7F
    add b                                         ; $5344: $80
    ld a, a                                       ; $5345: $7F
    add b                                         ; $5346: $80
    ld a, a                                       ; $5347: $7F
    adc b                                         ; $5348: $88
    ld a, a                                       ; $5349: $7F
    adc b                                         ; $534A: $88
    ld a, a                                       ; $534B: $7F
    ret z                                         ; $534C: $C8

    ld a, a                                       ; $534D: $7F
    call z, $CC7F                                 ; $534E: $CC $7F $CC
    ld a, a                                       ; $5351: $7F
    xor $7F                                       ; $5352: $EE $7F
    and $7F                                       ; $5354: $E6 $7F
    rst RST_30                                    ; $5356: $F7
    ld a, a                                       ; $5357: $7F
    rst RST_38                                    ; $5358: $FF
    ld a, a                                       ; $5359: $7F
    ld a, a                                       ; $535A: $7F
    ccf                                           ; $535B: $3F
    ld a, a                                       ; $535C: $7F
    ccf                                           ; $535D: $3F
    ld a, a                                       ; $535E: $7F
    ccf                                           ; $535F: $3F
    ccf                                           ; $5360: $3F
    rra                                           ; $5361: $1F
    ccf                                           ; $5362: $3F
    dec e                                         ; $5363: $1D
    ccf                                           ; $5364: $3F
    dec e                                         ; $5365: $1D
    rra                                           ; $5366: $1F
    ld c, $1F                                     ; $5367: $0E $1F
    ld c, $0F                                     ; $5369: $0E $0F
    ld b, $0F                                     ; $536B: $06 $0F
    ld b, $07                                     ; $536D: $06 $07
    inc bc                                        ; $536F: $03
    rlca                                          ; $5370: $07
    ld bc, $000F                                  ; $5371: $01 $0F $00
    ld e, $01                                     ; $5374: $1E $01
    cpl                                           ; $5376: $2F
    db $10                                        ; $5377: $10
    ld a, $00                                     ; $5378: $3E $00
    nop                                           ; $537A: $00
    nop                                           ; $537B: $00
    nop                                           ; $537C: $00
    nop                                           ; $537D: $00
    nop                                           ; $537E: $00
    nop                                           ; $537F: $00
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
    add b                                         ; $538C: $80
    nop                                           ; $538D: $00
    add b                                         ; $538E: $80
    nop                                           ; $538F: $00
    nop                                           ; $5390: $00
    nop                                           ; $5391: $00
    nop                                           ; $5392: $00
    nop                                           ; $5393: $00
    nop                                           ; $5394: $00
    nop                                           ; $5395: $00
    nop                                           ; $5396: $00
    nop                                           ; $5397: $00
    ret nz                                        ; $5398: $C0

    nop                                           ; $5399: $00

jr_00C_539A:
    ret nz                                        ; $539A: $C0

    add b                                         ; $539B: $80
    ret nz                                        ; $539C: $C0

    add b                                         ; $539D: $80
    add b                                         ; $539E: $80
    nop                                           ; $539F: $00
    add b                                         ; $53A0: $80
    nop                                           ; $53A1: $00
    add b                                         ; $53A2: $80
    nop                                           ; $53A3: $00
    rst RST_00                                    ; $53A4: $C7
    nop                                           ; $53A5: $00
    and a                                         ; $53A6: $A7
    ld b, d                                       ; $53A7: $42
    rst RST_10                                    ; $53A8: $D7
    and d                                         ; $53A9: $A2
    rst RST_08                                    ; $53AA: $CF
    or d                                          ; $53AB: $B2
    rst RST_00                                    ; $53AC: $C7
    cp b                                          ; $53AD: $B8
    rst RST_20                                    ; $53AE: $E7
    ret c                                         ; $53AF: $D8

    add sp, -$29                                  ; $53B0: $E8 $D7
    ld [hl], b                                    ; $53B2: $70
    rst RST_08                                    ; $53B3: $CF
    ld [hl], b                                    ; $53B4: $70
    rst RST_28                                    ; $53B5: $EF
    ld [hl], b                                    ; $53B6: $70
    rst RST_28                                    ; $53B7: $EF
    ld a, e                                       ; $53B8: $7B
    db $E4                                        ; $53B9: $E4
    ld a, h                                       ; $53BA: $7C
    di                                            ; $53BB: $F3
    cp h                                          ; $53BC: $BC
    di                                            ; $53BD: $F3
    db $FC                                        ; $53BE: $FC
    ei                                            ; $53BF: $FB
    rst RST_38                                    ; $53C0: $FF
    ld hl, sp-$01                                 ; $53C1: $F8 $FF
    db $ED                                        ; $53C3: $ED
    rst RST_38                                    ; $53C4: $FF
    and $FF                                       ; $53C5: $E6 $FF
    ldh [c], a                                    ; $53C7: $E2
    ei                                            ; $53C8: $FB
    db $E4                                        ; $53C9: $E4
    db $FD                                        ; $53CA: $FD
    ldh a, [c]                                    ; $53CB: $F2
    cp $F4                                        ; $53CC: $FE $F4
    cp $70                                        ; $53CE: $FE $70
    ld a, h                                       ; $53D0: $7C
    cp b                                          ; $53D1: $B8
    cp h                                          ; $53D2: $BC
    ld e, b                                       ; $53D3: $58
    cp $0C                                        ; $53D4: $FE $0C
    xor [hl]                                      ; $53D6: $AE
    ld b, b                                       ; $53D7: $40
    jr nz, jr_00C_539A                            ; $53D8: $20 $C0

    ret nz                                        ; $53DA: $C0

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
    inc e                                         ; $53EE: $1C
    nop                                           ; $53EF: $00
    cp $00                                        ; $53F0: $FE $00
    cp l                                          ; $53F2: $BD
    ld c, [hl]                                    ; $53F3: $4E
    cp [hl]                                       ; $53F4: $BE
    ld b, c                                       ; $53F5: $41
    ld sp, hl                                     ; $53F6: $F9
    ld c, $1E                                     ; $53F7: $0E $1E

jr_00C_53F9:
    pop hl                                        ; $53F9: $E1
    call Call_000_3E36                            ; $53FA: $CD $36 $3E
    pop bc                                        ; $53FD: $C1
    ld c, l                                       ; $53FE: $4D
    or [hl]                                       ; $53FF: $B6
    nop                                           ; $5400: $00
    nop                                           ; $5401: $00
    nop                                           ; $5402: $00
    nop                                           ; $5403: $00
    add b                                         ; $5404: $80
    nop                                           ; $5405: $00
    ret nz                                        ; $5406: $C0

    add b                                         ; $5407: $80
    and b                                         ; $5408: $A0
    ld b, b                                       ; $5409: $40
    or b                                          ; $540A: $B0
    ld b, b                                       ; $540B: $40
    ldh a, [$FFA0]                                ; $540C: $F0 $A0
    ret z                                         ; $540E: $C8

    jr nc, jr_00C_53F9                            ; $540F: $30 $E8

    sub b                                         ; $5411: $90
    ld hl, sp+$00                                 ; $5412: $F8 $00
    db $FC                                        ; $5414: $FC
    ld a, b                                       ; $5415: $78
    db $FC                                        ; $5416: $FC
    jr jr_00C_5475                                ; $5417: $18 $5C

    and b                                         ; $5419: $A0
    call nz, $8838                                ; $541A: $C4 $38 $88
    ld [hl], b                                    ; $541D: $70
    ldh a, [rP1]                                  ; $541E: $F0 $00
    ld b, [hl]                                    ; $5420: $46
    cp c                                          ; $5421: $B9
    db $ED                                        ; $5422: $ED
    ld [de], a                                    ; $5423: $12
    rra                                           ; $5424: $1F
    push hl                                       ; $5425: $E5
    rrca                                          ; $5426: $0F
    ldh a, [c]                                    ; $5427: $F2
    ld [de], a                                    ; $5428: $12
    pop hl                                        ; $5429: $E1
    ld a, [$8D01]                                 ; $542A: $FA $01 $8D
    ld hl, sp-$04                                 ; $542D: $F8 $FC
    adc b                                         ; $542F: $88
    adc h                                         ; $5430: $8C
    ld [hl], b                                    ; $5431: $70
    add h                                         ; $5432: $84
    ld a, b                                       ; $5433: $78
    add a                                         ; $5434: $87
    ld a, b                                       ; $5435: $78
    ld c, a                                       ; $5436: $4F
    ld [hl], $3F                                  ; $5437: $36 $3F
    ld bc, $0F10                                  ; $5439: $01 $10 $0F
    inc c                                         ; $543C: $0C
    inc bc                                        ; $543D: $03
    inc bc                                        ; $543E: $03
    nop                                           ; $543F: $00
    add b                                         ; $5440: $80
    nop                                           ; $5441: $00
    ret nz                                        ; $5442: $C0

    add b                                         ; $5443: $80
    ldh [$FFC0], a                                ; $5444: $E0 $C0
    ld [hl], b                                    ; $5446: $70
    ldh [rNR23], a                                ; $5447: $E0 $18
    ldh a, [$FF3C]                                ; $5449: $F0 $3C
    ret nz                                        ; $544B: $C0

    ldh [c], a                                    ; $544C: $E2
    inc e                                         ; $544D: $1C
    ld l, $10                                     ; $544E: $2E $10
    ld a, [hl]                                    ; $5450: $7E
    nop                                           ; $5451: $00
    cp h                                          ; $5452: $BC
    ld b, b                                       ; $5453: $40
    db $FC                                        ; $5454: $FC
    nop                                           ; $5455: $00
    nop                                           ; $5456: $00
    nop                                           ; $5457: $00

jr_00C_5458:
    nop                                           ; $5458: $00
    nop                                           ; $5459: $00

jr_00C_545A:
    nop                                           ; $545A: $00
    nop                                           ; $545B: $00
    nop                                           ; $545C: $00
    nop                                           ; $545D: $00
    nop                                           ; $545E: $00
    nop                                           ; $545F: $00
    add b                                         ; $5460: $80
    nop                                           ; $5461: $00
    add b                                         ; $5462: $80
    nop                                           ; $5463: $00
    rst RST_00                                    ; $5464: $C7
    nop                                           ; $5465: $00
    daa                                           ; $5466: $27
    jp nz, $E217                                  ; $5467: $C2 $17 $E2

    rrca                                          ; $546A: $0F
    ldh a, [c]                                    ; $546B: $F2
    rlca                                          ; $546C: $07
    ld hl, sp-$79                                 ; $546D: $F8 $87
    ld a, b                                       ; $546F: $78
    adc b                                         ; $5470: $88
    ld [hl], a                                    ; $5471: $77
    ldh a, [rIF]                                  ; $5472: $F0 $0F
    ld d, b                                       ; $5474: $50

jr_00C_5475:
    cpl                                           ; $5475: $2F
    ld d, b                                       ; $5476: $50
    cpl                                           ; $5477: $2F
    dec hl                                        ; $5478: $2B
    inc d                                         ; $5479: $14
    inc l                                         ; $547A: $2C
    inc de                                        ; $547B: $13
    inc d                                         ; $547C: $14
    dec bc                                        ; $547D: $0B
    ld [$0707], sp                                ; $547E: $08 $07 $07
    nop                                           ; $5481: $00
    rlca                                          ; $5482: $07
    inc bc                                        ; $5483: $03
    ld h, a                                       ; $5484: $67
    ld bc, $45EB                                  ; $5485: $01 $EB $45
    pop af                                        ; $5488: $F1
    ld c, [hl]                                    ; $5489: $4E
    pop af                                        ; $548A: $F1
    ld c, $8E                                     ; $548B: $0E $8E
    ld [hl], b                                    ; $548D: $70
    inc b                                         ; $548E: $04
    ld hl, sp+$08                                 ; $548F: $F8 $08
    ldh a, [$FF90]                                ; $5491: $F0 $90
    ld h, b                                       ; $5493: $60
    ldh [rP1], a                                  ; $5494: $E0 $00
    jr nz, jr_00C_5458                            ; $5496: $20 $C0

    jr nz, jr_00C_545A                            ; $5498: $20 $C0

    ret nz                                        ; $549A: $C0

    nop                                           ; $549B: $00
    nop                                           ; $549C: $00
    nop                                           ; $549D: $00
    nop                                           ; $549E: $00
    nop                                           ; $549F: $00
    ld b, e                                       ; $54A0: $43
    inc a                                         ; $54A1: $3C
    ld b, e                                       ; $54A2: $43
    dec a                                         ; $54A3: $3D
    ld b, e                                       ; $54A4: $43
    inc a                                         ; $54A5: $3C
    ld b, a                                       ; $54A6: $47
    jr c, jr_00C_54F0                             ; $54A7: $38 $47

    add hl, sp                                    ; $54A9: $39
    ld b, a                                       ; $54AA: $47
    jr c, jr_00C_54F4                             ; $54AB: $38 $47

    ld a, [hl-]                                   ; $54AD: $3A
    ld a, a                                       ; $54AE: $7F
    rlca                                          ; $54AF: $07
    ld a, a                                       ; $54B0: $7F
    ccf                                           ; $54B1: $3F
    ccf                                           ; $54B2: $3F
    ld e, $3E                                     ; $54B3: $1E $3E
    dec e                                         ; $54B5: $1D
    ld e, $0D                                     ; $54B6: $1E $0D
    rra                                           ; $54B8: $1F
    ld [$020F], sp                                ; $54B9: $08 $0F $02
    inc bc                                        ; $54BC: $03
    ld bc, $0001                                  ; $54BD: $01 $01 $00
    nop                                           ; $54C0: $00
    nop                                           ; $54C1: $00
    nop                                           ; $54C2: $00
    nop                                           ; $54C3: $00
    nop                                           ; $54C4: $00
    nop                                           ; $54C5: $00
    nop                                           ; $54C6: $00
    nop                                           ; $54C7: $00
    jr jr_00C_54CA                                ; $54C8: $18 $00

jr_00C_54CA:
    inc h                                         ; $54CA: $24
    jr jr_00C_5547                                ; $54CB: $18 $7A

    inc b                                         ; $54CD: $04
    ld a, [hl]                                    ; $54CE: $7E
    nop                                           ; $54CF: $00
    sbc h                                         ; $54D0: $9C
    ld h, b                                       ; $54D1: $60
    add h                                         ; $54D2: $84
    ld a, b                                       ; $54D3: $78
    adc b                                         ; $54D4: $88
    ld [hl], b                                    ; $54D5: $70
    inc c                                         ; $54D6: $0C
    ldh a, [rIF]                                  ; $54D7: $F0 $0F
    db $F4                                        ; $54D9: $F4
    rrca                                          ; $54DA: $0F
    ldh a, [c]                                    ; $54DB: $F2
    rra                                           ; $54DC: $1F
    ldh [c], a                                    ; $54DD: $E2
    ld e, $E4                                     ; $54DE: $1E $E4
    ld bc, $0100                                  ; $54E0: $01 $00 $01
    nop                                           ; $54E3: $00
    inc bc                                        ; $54E4: $03
    nop                                           ; $54E5: $00
    rlca                                          ; $54E6: $07
    nop                                           ; $54E7: $00
    ld c, $01                                     ; $54E8: $0E $01
    ld e, $01                                     ; $54EA: $1E $01
    cpl                                           ; $54EC: $2F
    db $10                                        ; $54ED: $10
    ld a, $00                                     ; $54EE: $3E $00

jr_00C_54F0:
    nop                                           ; $54F0: $00
    nop                                           ; $54F1: $00
    nop                                           ; $54F2: $00
    nop                                           ; $54F3: $00

jr_00C_54F4:
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
    inc bc                                        ; $5500: $03
    nop                                           ; $5501: $00
    dec b                                         ; $5502: $05
    ld [bc], a                                    ; $5503: $02
    rrca                                          ; $5504: $0F
    nop                                           ; $5505: $00
    rla                                           ; $5506: $17
    inc c                                         ; $5507: $0C
    ld d, $09                                     ; $5508: $16 $09
    ld a, a                                       ; $550A: $7F
    inc b                                         ; $550B: $04
    rst RST_28                                    ; $550C: $EF
    ld e, b                                       ; $550D: $58
    rst RST_28                                    ; $550E: $EF
    ld d, h                                       ; $550F: $54
    rst RST_38                                    ; $5510: $FF
    ld c, c                                       ; $5511: $49
    rst RST_38                                    ; $5512: $FF
    ld h, c                                       ; $5513: $61
    ld a, a                                       ; $5514: $7F
    inc c                                         ; $5515: $0C
    ccf                                           ; $5516: $3F
    ld c, $1F                                     ; $5517: $0E $1F
    ld c, $0E                                     ; $5519: $0E $0E
    dec b                                         ; $551B: $05
    inc c                                         ; $551C: $0C
    inc bc                                        ; $551D: $03
    inc c                                         ; $551E: $0C
    rlca                                          ; $551F: $07
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

jr_00C_5534:
    nop                                           ; $5534: $00
    nop                                           ; $5535: $00
    db $FD                                        ; $5536: $FD
    nop                                           ; $5537: $00
    res 6, l                                      ; $5538: $CB $B5
    db $EB                                        ; $553A: $EB
    sub l                                         ; $553B: $95
    sub a                                         ; $553C: $97
    ld l, d                                       ; $553D: $6A
    ld [hl], a                                    ; $553E: $77
    adc d                                         ; $553F: $8A
    add b                                         ; $5540: $80
    nop                                           ; $5541: $00
    add b                                         ; $5542: $80
    nop                                           ; $5543: $00
    add b                                         ; $5544: $80
    nop                                           ; $5545: $00
    ld a, a                                       ; $5546: $7F

jr_00C_5547:
    nop                                           ; $5547: $00
    add e                                         ; $5548: $83
    ld a, h                                       ; $5549: $7C
    rst RST_38                                    ; $554A: $FF
    nop                                           ; $554B: $00
    rst RST_38                                    ; $554C: $FF
    ld d, b                                       ; $554D: $50
    ld e, [hl]                                    ; $554E: $5E
    xor l                                         ; $554F: $AD
    rst RST_30                                    ; $5550: $F7
    inc l                                         ; $5551: $2C
    rst RST_38                                    ; $5552: $FF
    sub l                                         ; $5553: $95
    rst RST_38                                    ; $5554: $FF
    jp Jump_000_1FFF                              ; $5555: $C3 $FF $1F


    cp a                                          ; $5558: $BF
    ld b, a                                       ; $5559: $47
    ld b, a                                       ; $555A: $47
    add b                                         ; $555B: $80
    ret nz                                        ; $555C: $C0

    nop                                           ; $555D: $00
    add b                                         ; $555E: $80
    add b                                         ; $555F: $80
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
    add b                                         ; $556C: $80
    nop                                           ; $556D: $00
    add b                                         ; $556E: $80
    nop                                           ; $556F: $00
    ret nz                                        ; $5570: $C0

    nop                                           ; $5571: $00
    jr nz, jr_00C_5534                            ; $5572: $20 $C0

    ldh [rP1], a                                  ; $5574: $E0 $00
    ldh [$FFC0], a                                ; $5576: $E0 $C0
    ldh [$FFC0], a                                ; $5578: $E0 $C0
    ldh [$FFC0], a                                ; $557A: $E0 $C0
    ret nz                                        ; $557C: $C0

    add b                                         ; $557D: $80
    add b                                         ; $557E: $80
    nop                                           ; $557F: $00
    inc c                                         ; $5580: $0C
    rlca                                          ; $5581: $07
    ld e, $01                                     ; $5582: $1E $01

jr_00C_5584:
    ld de, $3E0E                                  ; $5584: $11 $0E $3E
    ld bc, $017E                                  ; $5587: $01 $7E $01
    and a                                         ; $558A: $A7
    ld e, b                                       ; $558B: $58
    db $FC                                        ; $558C: $FC
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
    nop                                           ; $5598: $00
    nop                                           ; $5599: $00
    nop                                           ; $559A: $00
    nop                                           ; $559B: $00
    nop                                           ; $559C: $00
    nop                                           ; $559D: $00
    nop                                           ; $559E: $00
    nop                                           ; $559F: $00
    rst RST_38                                    ; $55A0: $FF
    ld h, h                                       ; $55A1: $64
    cpl                                           ; $55A2: $2F
    push de                                       ; $55A3: $D5
    cpl                                           ; $55A4: $2F
    ret nc                                        ; $55A5: $D0

jr_00C_55A6:
    cp a                                          ; $55A6: $BF
    ld c, h                                       ; $55A7: $4C
    di                                            ; $55A8: $F3
    sbc l                                         ; $55A9: $9D
    ld [hl], e                                    ; $55AA: $73
    db $DD                                        ; $55AB: $DD
    rst RST_38                                    ; $55AC: $FF
    ld b, $5F                                     ; $55AD: $06 $5F
    xor b                                         ; $55AF: $A8
    ld c, [hl]                                    ; $55B0: $4E
    or l                                          ; $55B1: $B5
    ld c, a                                       ; $55B2: $4F
    or b                                          ; $55B3: $B0
    ld l, [hl]                                    ; $55B4: $6E
    sub a                                         ; $55B5: $97
    sbc a                                         ; $55B6: $9F
    ld b, $8F                                     ; $55B7: $06 $8F
    ld b, $87                                     ; $55B9: $06 $87
    nop                                           ; $55BB: $00
    add c                                         ; $55BC: $81
    nop                                           ; $55BD: $00
    add b                                         ; $55BE: $80
    nop                                           ; $55BF: $00
    ldh [rP1], a                                  ; $55C0: $E0 $00
    jr nc, jr_00C_5584                            ; $55C2: $30 $C0

    jr jr_00C_55A6                                ; $55C4: $18 $E0

    inc a                                         ; $55C6: $3C
    ret z                                         ; $55C7: $C8

    cp $34                                        ; $55C8: $FE $34
    rst RST_38                                    ; $55CA: $FF
    ld [hl], b                                    ; $55CB: $70
    ld sp, hl                                     ; $55CC: $F9
    ld [hl], $7F                                  ; $55CD: $36 $7F
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
    nop                                           ; $55D9: $00
    nop                                           ; $55DA: $00
    nop                                           ; $55DB: $00
    nop                                           ; $55DC: $00
    nop                                           ; $55DD: $00
    nop                                           ; $55DE: $00
    nop                                           ; $55DF: $00
    nop                                           ; $55E0: $00
    nop                                           ; $55E1: $00
    nop                                           ; $55E2: $00
    nop                                           ; $55E3: $00
    nop                                           ; $55E4: $00
    nop                                           ; $55E5: $00
    nop                                           ; $55E6: $00
    nop                                           ; $55E7: $00
    nop                                           ; $55E8: $00
    nop                                           ; $55E9: $00
    nop                                           ; $55EA: $00
    nop                                           ; $55EB: $00
    nop                                           ; $55EC: $00
    nop                                           ; $55ED: $00
    nop                                           ; $55EE: $00
    nop                                           ; $55EF: $00
    ld bc, $7F00                                  ; $55F0: $01 $00 $7F
    nop                                           ; $55F3: $00
    cp a                                          ; $55F4: $BF
    ld a, [hl]                                    ; $55F5: $7E
    rst RST_38                                    ; $55F6: $FF
    ld e, [hl]                                    ; $55F7: $5E
    rst RST_38                                    ; $55F8: $FF
    ld h, l                                       ; $55F9: $65
    rst RST_38                                    ; $55FA: $FF
    ld c, l                                       ; $55FB: $4D
    ld a, l                                       ; $55FC: $7D
    jr @+$1A                                      ; $55FD: $18 $18

    nop                                           ; $55FF: $00
    nop                                           ; $5600: $00
    nop                                           ; $5601: $00
    nop                                           ; $5602: $00
    nop                                           ; $5603: $00
    nop                                           ; $5604: $00
    nop                                           ; $5605: $00
    ld bc, $0700                                  ; $5606: $01 $00 $07
    ld bc, $060D                                  ; $5609: $01 $0D $06
    rst RST_38                                    ; $560C: $FF
    nop                                           ; $560D: $00
    dec b                                         ; $560E: $05
    ld a, [$00FF]                                 ; $560F: $FA $FF $00
    rst RST_38                                    ; $5612: $FF
    ld sp, hl                                     ; $5613: $F9
    rst RST_38                                    ; $5614: $FF
    ld a, [$F8FF]                                 ; $5615: $FA $FF $F8
    db $FD                                        ; $5618: $FD
    ld hl, sp-$03                                 ; $5619: $F8 $FD
    ld a, b                                       ; $561B: $78
    ld a, c                                       ; $561C: $79
    nop                                           ; $561D: $00
    ld bc, $7F00                                  ; $561E: $01 $00 $7F
    nop                                           ; $5621: $00
    cp a                                          ; $5622: $BF
    ld [hl], b                                    ; $5623: $70
    ld a, [hl]                                    ; $5624: $7E
    add l                                         ; $5625: $85
    sbc a                                         ; $5626: $9F
    ld h, h                                       ; $5627: $64
    ld a, h                                       ; $5628: $7C
    add e                                         ; $5629: $83
    sub e                                         ; $562A: $93
    ld l, h                                       ; $562B: $6C
    ld a, a                                       ; $562C: $7F
    add e                                         ; $562D: $83
    cp c                                          ; $562E: $B9
    halt                                          ; $562F: $76
    ld a, c                                       ; $5630: $79
    add [hl]                                      ; $5631: $86
    db $FD                                        ; $5632: $FD
    ld a, [hl+]                                   ; $5633: $2A
    rst RST_38                                    ; $5634: $FF
    inc e                                         ; $5635: $1C
    rst RST_30                                    ; $5636: $F7
    adc $FF                                       ; $5637: $CE $FF
    db $E4                                        ; $5639: $E4
    push af                                       ; $563A: $F5
    ld [$5BE4], a                                 ; $563B: $EA $E4 $5B
    call nz, $003B                                ; $563E: $C4 $3B $00
    nop                                           ; $5641: $00
    db $EC                                        ; $5642: $EC
    nop                                           ; $5643: $00
    ld e, h                                       ; $5644: $5C
    xor b                                         ; $5645: $A8
    ld e, h                                       ; $5646: $5C
    xor b                                         ; $5647: $A8
    cp e                                          ; $5648: $BB
    ld d, b                                       ; $5649: $50
    cp h                                          ; $564A: $BC
    ld d, e                                       ; $564B: $53
    jp hl                                         ; $564C: $E9


    ld [hl], $6B                                  ; $564D: $36 $6B
    or l                                          ; $564F: $B5
    ld a, l                                       ; $5650: $7D
    add d                                         ; $5651: $82
    rst RST_38                                    ; $5652: $FF
    ld [hl], b                                    ; $5653: $70
    sbc l                                         ; $5654: $9D
    ei                                            ; $5655: $FB
    sbc l                                         ; $5656: $9D
    ei                                            ; $5657: $FB
    rst RST_38                                    ; $5658: $FF
    jr nc, jr_00C_56D6                            ; $5659: $30 $7B

    call nz, Call_00C_68F4                        ; $565B: $C4 $F4 $68
    db $FC                                        ; $565E: $FC
    nop                                           ; $565F: $00
    nop                                           ; $5660: $00
    nop                                           ; $5661: $00
    nop                                           ; $5662: $00
    nop                                           ; $5663: $00
    nop                                           ; $5664: $00
    nop                                           ; $5665: $00
    nop                                           ; $5666: $00
    nop                                           ; $5667: $00
    nop                                           ; $5668: $00
    nop                                           ; $5669: $00
    ldh a, [rP1]                                  ; $566A: $F0 $00
    jr @-$1E                                      ; $566C: $18 $E0

    ld hl, sp+$00                                 ; $566E: $F8 $00
    db $FC                                        ; $5670: $FC
    ld d, b                                       ; $5671: $50
    ld e, h                                       ; $5672: $5C
    xor b                                         ; $5673: $A8
    db $F4                                        ; $5674: $F4

jr_00C_5675:
    xor b                                         ; $5675: $A8
    db $FC                                        ; $5676: $FC
    db $10                                        ; $5677: $10
    db $FC                                        ; $5678: $FC
    add b                                         ; $5679: $80
    db $FC                                        ; $567A: $FC
    jr c, jr_00C_5675                             ; $567B: $38 $F8

    ldh a, [$FFF0]                                ; $567D: $F0 $F0
    nop                                           ; $567F: $00
    inc c                                         ; $5680: $0C
    rlca                                          ; $5681: $07
    inc c                                         ; $5682: $0C
    rlca                                          ; $5683: $07
    ld e, $01                                     ; $5684: $1E $01

jr_00C_5686:
    ld de, $3E0E                                  ; $5686: $11 $0E $3E
    ld bc, $017E                                  ; $5689: $01 $7E $01
    and a                                         ; $568C: $A7
    ld e, b                                       ; $568D: $58
    db $FC                                        ; $568E: $FC
    nop                                           ; $568F: $00
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
    ld l, [hl]                                    ; $56A0: $6E
    sub a                                         ; $56A1: $97
    sbc a                                         ; $56A2: $9F
    ld b, $8F                                     ; $56A3: $06 $8F
    ld b, $87                                     ; $56A5: $06 $87
    nop                                           ; $56A7: $00

jr_00C_56A8:
    add c                                         ; $56A8: $81
    nop                                           ; $56A9: $00
    add b                                         ; $56AA: $80
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
    nop                                           ; $56BE: $00
    nop                                           ; $56BF: $00
    add b                                         ; $56C0: $80
    add b                                         ; $56C1: $80
    ldh [rP1], a                                  ; $56C2: $E0 $00
    jr nc, jr_00C_5686                            ; $56C4: $30 $C0

    jr jr_00C_56A8                                ; $56C6: $18 $E0

    inc a                                         ; $56C8: $3C
    ret z                                         ; $56C9: $C8

    cp $34                                        ; $56CA: $FE $34
    rst RST_38                                    ; $56CC: $FF
    ld [hl], b                                    ; $56CD: $70
    ld sp, hl                                     ; $56CE: $F9
    ld [hl], $7F                                  ; $56CF: $36 $7F
    nop                                           ; $56D1: $00
    nop                                           ; $56D2: $00
    nop                                           ; $56D3: $00
    nop                                           ; $56D4: $00
    nop                                           ; $56D5: $00

jr_00C_56D6:
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
    rlca                                          ; $56E0: $07
    nop                                           ; $56E1: $00
    dec de                                        ; $56E2: $1B
    dec b                                         ; $56E3: $05
    ld a, l                                       ; $56E4: $7D
    ld [bc], a                                    ; $56E5: $02
    rst RST_38                                    ; $56E6: $FF
    nop                                           ; $56E7: $00
    xor e                                         ; $56E8: $AB
    ld d, h                                       ; $56E9: $54
    cp $00                                        ; $56EA: $FE $00
    nop                                           ; $56EC: $00
    nop                                           ; $56ED: $00
    nop                                           ; $56EE: $00
    nop                                           ; $56EF: $00
    nop                                           ; $56F0: $00
    nop                                           ; $56F1: $00
    nop                                           ; $56F2: $00
    nop                                           ; $56F3: $00
    nop                                           ; $56F4: $00
    nop                                           ; $56F5: $00
    nop                                           ; $56F6: $00
    nop                                           ; $56F7: $00
    nop                                           ; $56F8: $00
    nop                                           ; $56F9: $00
    nop                                           ; $56FA: $00
    nop                                           ; $56FB: $00
    nop                                           ; $56FC: $00
    nop                                           ; $56FD: $00
    nop                                           ; $56FE: $00
    nop                                           ; $56FF: $00
    dec e                                         ; $5700: $1D
    nop                                           ; $5701: $00
    cp $1D                                        ; $5702: $FE $1D
    rst RST_38                                    ; $5704: $FF
    db $FC                                        ; $5705: $FC
    rst RST_20                                    ; $5706: $E7
    ld a, [$F70F]                                 ; $5707: $FA $0F $F7
    rrca                                          ; $570A: $0F
    rst RST_30                                    ; $570B: $F7
    rst RST_38                                    ; $570C: $FF
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
    nop                                           ; $5719: $00
    nop                                           ; $571A: $00
    nop                                           ; $571B: $00
    nop                                           ; $571C: $00
    nop                                           ; $571D: $00
    nop                                           ; $571E: $00
    nop                                           ; $571F: $00
    inc bc                                        ; $5720: $03

jr_00C_5721:
    nop                                           ; $5721: $00
    rlca                                          ; $5722: $07
    inc bc                                        ; $5723: $03
    rlca                                          ; $5724: $07
    ld [bc], a                                    ; $5725: $02
    inc bc                                        ; $5726: $03
    nop                                           ; $5727: $00
    inc bc                                        ; $5728: $03
    nop                                           ; $5729: $00
    inc bc                                        ; $572A: $03
    nop                                           ; $572B: $00
    dec b                                         ; $572C: $05
    ld [bc], a                                    ; $572D: $02
    inc b                                         ; $572E: $04
    inc bc                                        ; $572F: $03
    inc b                                         ; $5730: $04
    inc bc                                        ; $5731: $03
    ld c, $05                                     ; $5732: $0E $05
    cp a                                          ; $5734: $BF
    ld b, $C7                                     ; $5735: $06 $C7
    cp e                                          ; $5737: $BB
    db $E3                                        ; $5738: $E3
    sbc l                                         ; $5739: $9D
    db $E3                                        ; $573A: $E3
    ld e, h                                       ; $573B: $5C
    db $FC                                        ; $573C: $FC
    ldh [$FFF0], a                                ; $573D: $E0 $F0
    ldh [$FFDF], a                                ; $573F: $E0 $DF
    nop                                           ; $5741: $00
    rst RST_38                                    ; $5742: $FF
    ld c, h                                       ; $5743: $4C
    ei                                            ; $5744: $FB
    scf                                           ; $5745: $37
    ld [$9F55], a                                 ; $5746: $EA $55 $9F
    ld l, d                                       ; $5749: $6A
    rst RST_38                                    ; $574A: $FF
    xor d                                         ; $574B: $AA
    ld a, a                                       ; $574C: $7F
    pop bc                                        ; $574D: $C1
    pop hl                                        ; $574E: $E1
    ld e, $FF                                     ; $574F: $1E $FF
    jp nc, Jump_000_2DF3                          ; $5751: $D2 $F3 $2D

    di                                            ; $5754: $F3
    ld c, h                                       ; $5755: $4C
    ld a, a                                       ; $5756: $7F
    or e                                          ; $5757: $B3
    cp a                                          ; $5758: $BF
    ld c, h                                       ; $5759: $4C
    rst RST_38                                    ; $575A: $FF
    add b                                         ; $575B: $80
    ldh a, [$FFEF]                                ; $575C: $F0 $EF
    rst RST_30                                    ; $575E: $F7
    jr z, jr_00C_5721                             ; $575F: $28 $C0

    nop                                           ; $5761: $00
    db $FC                                        ; $5762: $FC
    add b                                         ; $5763: $80
    and $38                                       ; $5764: $E6 $38
    db $FD                                        ; $5766: $FD
    ld e, $FF                                     ; $5767: $1E $FF
    sbc [hl]                                      ; $5769: $9E
    ld a, a                                       ; $576A: $7F
    adc $BF                                       ; $576B: $CE $BF
    ld d, d                                       ; $576D: $52
    ei                                            ; $576E: $FB
    inc d                                         ; $576F: $14
    ld sp, hl                                     ; $5770: $F9
    sub $F1                                       ; $5771: $D6 $F1
    ld l, $F1                                     ; $5773: $2E $F1
    xor [hl]                                      ; $5775: $AE
    ldh [c], a                                    ; $5776: $E2
    ld e, h                                       ; $5777: $5C
    ldh a, [c]                                    ; $5778: $F2
    call z, Call_000_00FC                         ; $5779: $CC $FC $00
    call nc, Call_00C_7828                        ; $577C: $D4 $28 $78
    add b                                         ; $577F: $80
    ldh [c], a                                    ; $5780: $E2
    inc e                                         ; $5781: $1C
    call c, $BE20                                 ; $5782: $DC $20 $BE
    ld b, b                                       ; $5785: $40
    cp l                                          ; $5786: $BD
    ld b, d                                       ; $5787: $42
    rst RST_38                                    ; $5788: $FF
    nop                                           ; $5789: $00
    nop                                           ; $578A: $00
    nop                                           ; $578B: $00
    nop                                           ; $578C: $00
    nop                                           ; $578D: $00
    nop                                           ; $578E: $00
    nop                                           ; $578F: $00
    nop                                           ; $5790: $00
    nop                                           ; $5791: $00
    nop                                           ; $5792: $00
    nop                                           ; $5793: $00

jr_00C_5794:
    nop                                           ; $5794: $00
    nop                                           ; $5795: $00

jr_00C_5796:
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
    rlca                                          ; $57A0: $07
    nop                                           ; $57A1: $00
    rlca                                          ; $57A2: $07
    ld [bc], a                                    ; $57A3: $02
    rst RST_30                                    ; $57A4: $F7
    ld [bc], a                                    ; $57A5: $02
    rrca                                          ; $57A6: $0F
    ldh a, [c]                                    ; $57A7: $F2
    rlca                                          ; $57A8: $07
    ld hl, sp+$07                                 ; $57A9: $F8 $07
    ld hl, sp+$08                                 ; $57AB: $F8 $08
    rst RST_30                                    ; $57AD: $F7
    ret nc                                        ; $57AE: $D0

    cpl                                           ; $57AF: $2F
    ldh a, [rIF]                                  ; $57B0: $F0 $0F
    ret nc                                        ; $57B2: $D0

    xor a                                         ; $57B3: $AF
    xor e                                         ; $57B4: $AB
    inc d                                         ; $57B5: $14
    inc l                                         ; $57B6: $2C
    inc de                                        ; $57B7: $13
    inc d                                         ; $57B8: $14
    dec bc                                        ; $57B9: $0B
    ld [$0707], sp                                ; $57BA: $08 $07 $07
    nop                                           ; $57BD: $00
    rlca                                          ; $57BE: $07
    inc bc                                        ; $57BF: $03
    ld h, a                                       ; $57C0: $67
    ld bc, $45EB                                  ; $57C1: $01 $EB $45
    pop af                                        ; $57C4: $F1
    ld c, [hl]                                    ; $57C5: $4E
    pop af                                        ; $57C6: $F1
    ld c, $8E                                     ; $57C7: $0E $8E
    ld [hl], b                                    ; $57C9: $70
    inc b                                         ; $57CA: $04
    ld hl, sp+$08                                 ; $57CB: $F8 $08
    ldh a, [$FF90]                                ; $57CD: $F0 $90
    ld h, b                                       ; $57CF: $60
    ldh [rP1], a                                  ; $57D0: $E0 $00
    jr nz, jr_00C_5794                            ; $57D2: $20 $C0

    jr nz, jr_00C_5796                            ; $57D4: $20 $C0

    ret nz                                        ; $57D6: $C0

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
    inc bc                                        ; $57EC: $03
    nop                                           ; $57ED: $00
    inc c                                         ; $57EE: $0C
    inc bc                                        ; $57EF: $03
    jr jr_00C_57F9                                ; $57F0: $18 $07

    jr c, @+$19                                   ; $57F2: $38 $17

    rst RST_38                                    ; $57F4: $FF
    jr @+$01                                      ; $57F5: $18 $FF

    ld e, e                                       ; $57F7: $5B
    ld a, a                                       ; $57F8: $7F

jr_00C_57F9:
    dec de                                        ; $57F9: $1B
    ccf                                           ; $57FA: $3F
    inc e                                         ; $57FB: $1C
    rra                                           ; $57FC: $1F
    rrca                                          ; $57FD: $0F
    rrca                                          ; $57FE: $0F
    nop                                           ; $57FF: $00
    ld bc, $0100                                  ; $5800: $01 $00 $01
    nop                                           ; $5803: $00
    inc bc                                        ; $5804: $03
    nop                                           ; $5805: $00
    rlca                                          ; $5806: $07
    nop                                           ; $5807: $00
    ld c, $01                                     ; $5808: $0E $01
    ld e, $01                                     ; $580A: $1E $01
    cpl                                           ; $580C: $2F
    db $10                                        ; $580D: $10
    ld a, $00                                     ; $580E: $3E $00
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
    ld b, $00                                     ; $5820: $06 $00
    rra                                           ; $5822: $1F
    ld b, $1F                                     ; $5823: $06 $1F
    ld bc, $0ED1                                  ; $5825: $01 $D1 $0E
    db $EB                                        ; $5828: $EB
    ld d, l                                       ; $5829: $55
    rst RST_20                                    ; $582A: $E7
    sbc c                                         ; $582B: $99
    rst RST_38                                    ; $582C: $FF
    add b                                         ; $582D: $80
    ld hl, sp-$29                                 ; $582E: $F8 $D7
    rst RST_38                                    ; $5830: $FF
    add sp, -$01                                  ; $5831: $E8 $FF
    di                                            ; $5833: $F3
    ld [hl], h                                    ; $5834: $74
    ei                                            ; $5835: $FB
    ld a, [de]                                    ; $5836: $1A
    db $FD                                        ; $5837: $FD
    inc bc                                        ; $5838: $03
    cp $01                                        ; $5839: $FE $01
    rst RST_38                                    ; $583B: $FF
    adc b                                         ; $583C: $88
    rst RST_38                                    ; $583D: $FF
    ld b, $FF                                     ; $583E: $06 $FF
    nop                                           ; $5840: $00
    nop                                           ; $5841: $00
    ret nz                                        ; $5842: $C0

    nop                                           ; $5843: $00
    ret nz                                        ; $5844: $C0

    nop                                           ; $5845: $00
    ldh [rLCDC], a                                ; $5846: $E0 $40
    ldh [rLCDC], a                                ; $5848: $E0 $40
    di                                            ; $584A: $F3
    ld h, b                                       ; $584B: $60
    rst RST_30                                    ; $584C: $F7
    ld h, d                                       ; $584D: $62
    rst RST_38                                    ; $584E: $FF
    ld [hl], d                                    ; $584F: $72
    ld a, a                                       ; $5850: $7F
    inc sp                                        ; $5851: $33
    ld a, a                                       ; $5852: $7F
    dec sp                                        ; $5853: $3B
    ld a, a                                       ; $5854: $7F
    dec a                                         ; $5855: $3D
    ccf                                           ; $5856: $3F
    rra                                           ; $5857: $1F
    dec sp                                        ; $5858: $3B
    rra                                           ; $5859: $1F
    reti                                          ; $585A: $D9


    rrca                                          ; $585B: $0F
    db $FC                                        ; $585C: $FC
    ld c, a                                       ; $585D: $4F
    ld a, h                                       ; $585E: $7C
    scf                                           ; $585F: $37
    ld b, a                                       ; $5860: $47
    rst RST_38                                    ; $5861: $FF
    ld h, e                                       ; $5862: $63
    rst RST_38                                    ; $5863: $FF
    cp c                                          ; $5864: $B9
    ld a, a                                       ; $5865: $7F
    ld a, [hl]                                    ; $5866: $7E
    rra                                           ; $5867: $1F
    ccf                                           ; $5868: $3F
    rlca                                          ; $5869: $07
    rst RST_20                                    ; $586A: $E7
    add hl, de                                    ; $586B: $19
    db $E3                                        ; $586C: $E3

jr_00C_586D:
    call c, $98E4                                 ; $586D: $DC $E4 $98
    db $FC                                        ; $5870: $FC
    ld h, b                                       ; $5871: $60
    db $FC                                        ; $5872: $FC
    jr c, jr_00C_586D                             ; $5873: $38 $F8

    nop                                           ; $5875: $00
    nop                                           ; $5876: $00
    nop                                           ; $5877: $00
    nop                                           ; $5878: $00
    nop                                           ; $5879: $00
    nop                                           ; $587A: $00
    nop                                           ; $587B: $00
    nop                                           ; $587C: $00
    nop                                           ; $587D: $00
    nop                                           ; $587E: $00
    nop                                           ; $587F: $00
    db $FD                                        ; $5880: $FD
    ld [hl], d                                    ; $5881: $72
    rst RST_38                                    ; $5882: $FF
    ldh a, [rIE]                                  ; $5883: $F0 $FF
    ld h, e                                       ; $5885: $63
    rst RST_28                                    ; $5886: $EF
    sub a                                         ; $5887: $97
    ld a, a                                       ; $5888: $7F
    rst RST_00                                    ; $5889: $C7
    rst RST_38                                    ; $588A: $FF
    ldh a, [c]                                    ; $588B: $F2
    rst RST_38                                    ; $588C: $FF
    db $FC                                        ; $588D: $FC
    rst RST_38                                    ; $588E: $FF
    rst RST_38                                    ; $588F: $FF
    rst RST_38                                    ; $5890: $FF
    rst RST_38                                    ; $5891: $FF
    rst RST_38                                    ; $5892: $FF
    rst RST_38                                    ; $5893: $FF
    rst RST_38                                    ; $5894: $FF
    rst RST_38                                    ; $5895: $FF
    rst RST_38                                    ; $5896: $FF
    ccf                                           ; $5897: $3F
    ccf                                           ; $5898: $3F
    nop                                           ; $5899: $00
    ld a, [bc]                                    ; $589A: $0A
    dec b                                         ; $589B: $05
    rrca                                          ; $589C: $0F
    nop                                           ; $589D: $00
    nop                                           ; $589E: $00
    nop                                           ; $589F: $00
    ld a, [hl]                                    ; $58A0: $7E
    ccf                                           ; $58A1: $3F
    ld a, $1F                                     ; $58A2: $3E $1F
    ccf                                           ; $58A4: $3F
    rrca                                          ; $58A5: $0F
    dec de                                        ; $58A6: $1B
    rlca                                          ; $58A7: $07
    inc e                                         ; $58A8: $1C
    inc bc                                        ; $58A9: $03
    ld c, $01                                     ; $58AA: $0E $01
    dec b                                         ; $58AC: $05
    ld [bc], a                                    ; $58AD: $02
    rlca                                          ; $58AE: $07
    nop                                           ; $58AF: $00
    nop                                           ; $58B0: $00
    nop                                           ; $58B1: $00
    nop                                           ; $58B2: $00
    nop                                           ; $58B3: $00
    inc bc                                        ; $58B4: $03
    nop                                           ; $58B5: $00
    rlca                                          ; $58B6: $07
    ld bc, $0307                                  ; $58B7: $01 $07 $03
    rrca                                          ; $58BA: $0F
    nop                                           ; $58BB: $00
    ld a, [bc]                                    ; $58BC: $0A
    dec b                                         ; $58BD: $05
    rrca                                          ; $58BE: $0F
    nop                                           ; $58BF: $00
    nop                                           ; $58C0: $00
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
    sbc [hl]                                      ; $58CE: $9E
    nop                                           ; $58CF: $00
    pop hl                                        ; $58D0: $E1

jr_00C_58D1:
    ld e, $C0                                     ; $58D1: $1E $C0

jr_00C_58D3:
    ccf                                           ; $58D3: $3F
    pop bc                                        ; $58D4: $C1

jr_00C_58D5:
    ld a, $A6                                     ; $58D5: $3E $A6
    ld e, b                                       ; $58D7: $58
    ld l, h                                       ; $58D8: $6C
    sub b                                         ; $58D9: $90
    rst RST_38                                    ; $58DA: $FF
    inc c                                         ; $58DB: $0C
    ld a, a                                       ; $58DC: $7F
    add d                                         ; $58DD: $82
    ld a, a                                       ; $58DE: $7F
    and [hl]                                      ; $58DF: $A6
    add b                                         ; $58E0: $80
    nop                                           ; $58E1: $00
    nop                                           ; $58E2: $00
    nop                                           ; $58E3: $00
    nop                                           ; $58E4: $00
    nop                                           ; $58E5: $00
    ldh a, [rP1]                                  ; $58E6: $F0 $00
    ld hl, sp+$10                                 ; $58E8: $F8 $10
    ld hl, sp-$60                                 ; $58EA: $F8 $A0
    ld hl, sp-$60                                 ; $58EC: $F8 $A0
    ld d, b                                       ; $58EE: $50
    and b                                         ; $58EF: $A0
    ldh [rP1], a                                  ; $58F0: $E0 $00
    ret nz                                        ; $58F2: $C0

    nop                                           ; $58F3: $00
    add b                                         ; $58F4: $80
    nop                                           ; $58F5: $00
    add b                                         ; $58F6: $80
    nop                                           ; $58F7: $00
    ret nz                                        ; $58F8: $C0

    add b                                         ; $58F9: $80
    ret nz                                        ; $58FA: $C0

    add b                                         ; $58FB: $80
    ldh [rP1], a                                  ; $58FC: $E0 $00
    ret nc                                        ; $58FE: $D0

    jr nz, jr_00C_58D1                            ; $58FF: $20 $D0

    jr nz, jr_00C_58D3                            ; $5901: $20 $D0

    jr nz, jr_00C_58D5                            ; $5903: $20 $D0

    jr nz, @-$1E                                  ; $5905: $20 $E0

    nop                                           ; $5907: $00
    and b                                         ; $5908: $A0
    ld b, b                                       ; $5909: $40
    ldh [rP1], a                                  ; $590A: $E0 $00
    nop                                           ; $590C: $00
    nop                                           ; $590D: $00
    nop                                           ; $590E: $00
    nop                                           ; $590F: $00
    nop                                           ; $5910: $00
    nop                                           ; $5911: $00
    nop                                           ; $5912: $00
    nop                                           ; $5913: $00
    nop                                           ; $5914: $00
    nop                                           ; $5915: $00
    nop                                           ; $5916: $00
    nop                                           ; $5917: $00
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
    inc bc                                        ; $5924: $03
    nop                                           ; $5925: $00
    rlca                                          ; $5926: $07
    ld bc, $060F                                  ; $5927: $01 $0F $06
    dec e                                         ; $592A: $1D
    ld a, [bc]                                    ; $592B: $0A
    rla                                           ; $592C: $17
    add hl, bc                                    ; $592D: $09
    cpl                                           ; $592E: $2F
    dec d                                         ; $592F: $15
    ccf                                           ; $5930: $3F
    db $10                                        ; $5931: $10
    jr c, jr_00C_593B                             ; $5932: $38 $07

    ccf                                           ; $5934: $3F
    ld de, $0F10                                  ; $5935: $11 $10 $0F
    add hl, de                                    ; $5938: $19
    ld b, $0E                                     ; $5939: $06 $0E

jr_00C_593B:
    ld bc, $0304                                  ; $593B: $01 $04 $03
    rlca                                          ; $593E: $07
    nop                                           ; $593F: $00
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
    ld b, $00                                     ; $594A: $06 $00
    rra                                           ; $594C: $1F
    ld b, $1F                                     ; $594D: $06 $1F
    ld bc, $0ED1                                  ; $594F: $01 $D1 $0E
    db $EB                                        ; $5952: $EB
    ld d, l                                       ; $5953: $55
    rst RST_20                                    ; $5954: $E7
    ld e, c                                       ; $5955: $59
    rst RST_38                                    ; $5956: $FF
    add b                                         ; $5957: $80
    ld a, b                                       ; $5958: $78

jr_00C_5959:
    rst RST_30                                    ; $5959: $F7
    ld a, a                                       ; $595A: $7F
    xor b                                         ; $595B: $A8
    rst RST_38                                    ; $595C: $FF
    ld d, e                                       ; $595D: $53
    db $FC                                        ; $595E: $FC
    ld d, e                                       ; $595F: $53
    cp $29                                        ; $5960: $FE $29
    cp a                                          ; $5962: $BF
    ld b, d                                       ; $5963: $42
    db $FD                                        ; $5964: $FD
    sbc e                                         ; $5965: $9B
    ld a, a                                       ; $5966: $7F
    and b                                         ; $5967: $A0
    rst RST_38                                    ; $5968: $FF
    inc de                                        ; $5969: $13
    rst RST_38                                    ; $596A: $FF
    ld h, a                                       ; $596B: $67
    rst RST_38                                    ; $596C: $FF
    rla                                           ; $596D: $17
    ccf                                           ; $596E: $3F
    rlca                                          ; $596F: $07
    rra                                           ; $5970: $1F
    ld b, $3F                                     ; $5971: $06 $3F
    ld b, $E7                                     ; $5973: $06 $E7
    jr jr_00C_5959                                ; $5975: $18 $E2

jr_00C_5977:
    call c, $98E4                                 ; $5977: $DC $E4 $98
    db $FC                                        ; $597A: $FC
    ld h, b                                       ; $597B: $60
    db $FC                                        ; $597C: $FC
    jr c, jr_00C_5977                             ; $597D: $38 $F8

    nop                                           ; $597F: $00
    db $FD                                        ; $5980: $FD
    ld [hl], d                                    ; $5981: $72
    rst RST_38                                    ; $5982: $FF
    ldh a, [rIE]                                  ; $5983: $F0 $FF
    ld h, e                                       ; $5985: $63
    rst RST_28                                    ; $5986: $EF
    rla                                           ; $5987: $17
    rst RST_28                                    ; $5988: $EF
    rla                                           ; $5989: $17
    rst RST_38                                    ; $598A: $FF
    ldh [c], a                                    ; $598B: $E2
    rst RST_38                                    ; $598C: $FF
    inc c                                         ; $598D: $0C
    adc a                                         ; $598E: $8F
    ld [hl], b                                    ; $598F: $70
    nop                                           ; $5990: $00
    rst RST_38                                    ; $5991: $FF
    nop                                           ; $5992: $00
    rst RST_38                                    ; $5993: $FF
    nop                                           ; $5994: $00
    rst RST_38                                    ; $5995: $FF
    ldh a, [rIF]                                  ; $5996: $F0 $0F
    rra                                           ; $5998: $1F
    nop                                           ; $5999: $00
    ld a, [bc]                                    ; $599A: $0A
    dec b                                         ; $599B: $05
    rrca                                          ; $599C: $0F
    nop                                           ; $599D: $00
    nop                                           ; $599E: $00
    nop                                           ; $599F: $00
    inc bc                                        ; $59A0: $03
    nop                                           ; $59A1: $00
    rlca                                          ; $59A2: $07
    ld bc, $0307                                  ; $59A3: $01 $07 $03
    rrca                                          ; $59A6: $0F
    nop                                           ; $59A7: $00
    ld a, [bc]                                    ; $59A8: $0A
    dec b                                         ; $59A9: $05
    rrca                                          ; $59AA: $0F
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
    nop                                           ; $59B8: $00
    nop                                           ; $59B9: $00
    nop                                           ; $59BA: $00
    nop                                           ; $59BB: $00
    nop                                           ; $59BC: $00
    nop                                           ; $59BD: $00
    nop                                           ; $59BE: $00
    nop                                           ; $59BF: $00
    dec bc                                        ; $59C0: $0B
    rlca                                          ; $59C1: $07
    inc de                                        ; $59C2: $13
    rrca                                          ; $59C3: $0F
    ld d, $0F                                     ; $59C4: $16 $0F
    inc h                                         ; $59C6: $24
    rra                                           ; $59C7: $1F
    jr nz, jr_00C_59E9                            ; $59C8: $20 $1F

    ld d, b                                       ; $59CA: $50
    ccf                                           ; $59CB: $3F
    ld h, c                                       ; $59CC: $61
    ld a, $63                                     ; $59CD: $3E $63
    dec a                                         ; $59CF: $3D
    rst RST_08                                    ; $59D0: $CF
    ld a, e                                       ; $59D1: $7B
    rst RST_18                                    ; $59D2: $DF
    ld [hl], a                                    ; $59D3: $77
    rst RST_38                                    ; $59D4: $FF

jr_00C_59D5:
    ld [hl], h                                    ; $59D5: $74
    db $FC                                        ; $59D6: $FC
    jr z, jr_00C_59D5                             ; $59D7: $28 $FC

    ld [$00FC], sp                                ; $59D9: $08 $FC $00
    and b                                         ; $59DC: $A0
    ld b, b                                       ; $59DD: $40
    ld h, b                                       ; $59DE: $60
    nop                                           ; $59DF: $00
    pop af                                        ; $59E0: $F1
    sbc [hl]                                      ; $59E1: $9E
    db $E3                                        ; $59E2: $E3
    ld a, l                                       ; $59E3: $7D
    add a                                         ; $59E4: $87
    cp $0F                                        ; $59E5: $FE $0F
    cp $1F                                        ; $59E7: $FE $1F

jr_00C_59E9:
    cp $7F                                        ; $59E9: $FE $7F
    ldh [c], a                                    ; $59EB: $E2
    ld a, a                                       ; $59EC: $7F
    sbc l                                         ; $59ED: $9D
    rst RST_38                                    ; $59EE: $FF
    ld a, l                                       ; $59EF: $7D
    rst RST_38                                    ; $59F0: $FF
    cp $FF                                        ; $59F1: $FE $FF
    ld a, [hl]                                    ; $59F3: $7E
    rst RST_38                                    ; $59F4: $FF
    ld a, [hl]                                    ; $59F5: $7E
    cp $B8                                        ; $59F6: $FE $B8
    ld hl, sp-$80                                 ; $59F8: $F8 $80
    ldh [rLCDC], a                                ; $59FA: $E0 $40
    ldh [rLCDC], a                                ; $59FC: $E0 $40
    ld h, b                                       ; $59FE: $60
    nop                                           ; $59FF: $00
    rst RST_18                                    ; $5A00: $DF
    jr nz, jr_00C_59E9                            ; $5A01: $20 $E6

    ld e, l                                       ; $5A03: $5D
    cp $A1                                        ; $5A04: $FE $A1
    rst RST_38                                    ; $5A06: $FF
    jp z, Jump_000_07CF                           ; $5A07: $CA $CF $07

    dec c                                         ; $5A0A: $0D
    rlca                                          ; $5A0B: $07
    rlca                                          ; $5A0C: $07
    inc bc                                        ; $5A0D: $03
    inc bc                                        ; $5A0E: $03
    nop                                           ; $5A0F: $00
    ld l, h                                       ; $5A10: $6C
    inc bc                                        ; $5A11: $03
    ldh a, [$FF6F]                                ; $5A12: $F0 $6F
    or $69                                        ; $5A14: $F6 $69
    ld sp, hl                                     ; $5A16: $F9
    ld h, [hl]                                    ; $5A17: $66
    ld h, b                                       ; $5A18: $60
    rra                                           ; $5A19: $1F
    inc sp                                        ; $5A1A: $33
    inc c                                         ; $5A1B: $0C
    rrca                                          ; $5A1C: $0F
    nop                                           ; $5A1D: $00
    ld bc, $5F00                                  ; $5A1E: $01 $00 $5F
    and b                                         ; $5A21: $A0
    ld e, a                                       ; $5A22: $5F
    xor [hl]                                      ; $5A23: $AE
    ld h, a                                       ; $5A24: $67
    sbc [hl]                                      ; $5A25: $9E
    rst RST_20                                    ; $5A26: $E7
    ld a, $FF                                     ; $5A27: $3E $FF
    or b                                          ; $5A29: $B0
    cp $0D                                        ; $5A2A: $FE $0D
    sbc a                                         ; $5A2C: $9F
    db $FC                                        ; $5A2D: $FC
    rst RST_38                                    ; $5A2E: $FF
    ld h, e                                       ; $5A2F: $63
    ld a, e                                       ; $5A30: $7B
    sbc [hl]                                      ; $5A31: $9E
    ld a, $D9                                     ; $5A32: $3E $D9
    db $FC                                        ; $5A34: $FC
    dec bc                                        ; $5A35: $0B
    inc l                                         ; $5A36: $2C
    db $D3                                        ; $5A37: $D3
    ld hl, sp+$07                                 ; $5A38: $F8 $07
    ld a, b                                       ; $5A3A: $78
    add a                                         ; $5A3B: $87
    ld sp, hl                                     ; $5A3C: $F9
    ld b, $07                                     ; $5A3D: $06 $07
    nop                                           ; $5A3F: $00
    add b                                         ; $5A40: $80
    nop                                           ; $5A41: $00
    add b                                         ; $5A42: $80
    nop                                           ; $5A43: $00
    ld h, b                                       ; $5A44: $60
    add b                                         ; $5A45: $80
    ld e, [hl]                                    ; $5A46: $5E
    and b                                         ; $5A47: $A0
    ld a, l                                       ; $5A48: $7D
    cp d                                          ; $5A49: $BA
    rst RST_38                                    ; $5A4A: $FF
    ld a, b                                       ; $5A4B: $78
    rst RST_38                                    ; $5A4C: $FF
    ld a, b                                       ; $5A4D: $78
    ld sp, hl                                     ; $5A4E: $F9
    add $DF                                       ; $5A4F: $C6 $DF
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
    nop                                           ; $5A6E: $00
    nop                                           ; $5A6F: $00
    nop                                           ; $5A70: $00
    nop                                           ; $5A71: $00
    nop                                           ; $5A72: $00
    nop                                           ; $5A73: $00

jr_00C_5A74:
    nop                                           ; $5A74: $00
    nop                                           ; $5A75: $00
    nop                                           ; $5A76: $00
    nop                                           ; $5A77: $00
    nop                                           ; $5A78: $00
    nop                                           ; $5A79: $00
    ld bc, $0300                                  ; $5A7A: $01 $00 $03
    ld bc, $0305                                  ; $5A7D: $01 $05 $03
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
    nop                                           ; $5A90: $00
    nop                                           ; $5A91: $00
    nop                                           ; $5A92: $00
    nop                                           ; $5A93: $00
    nop                                           ; $5A94: $00
    nop                                           ; $5A95: $00
    nop                                           ; $5A96: $00
    nop                                           ; $5A97: $00
    ld bc, $6700                                  ; $5A98: $01 $00 $67
    ld bc, $47EF                                  ; $5A9B: $01 $EF $47
    call c, Call_000_008F                         ; $5A9E: $DC $8F $00
    nop                                           ; $5AA1: $00
    nop                                           ; $5AA2: $00
    nop                                           ; $5AA3: $00
    nop                                           ; $5AA4: $00
    nop                                           ; $5AA5: $00
    nop                                           ; $5AA6: $00
    nop                                           ; $5AA7: $00
    nop                                           ; $5AA8: $00
    nop                                           ; $5AA9: $00
    rlca                                          ; $5AAA: $07

jr_00C_5AAB:
    nop                                           ; $5AAB: $00
    rra                                           ; $5AAC: $1F
    inc bc                                        ; $5AAD: $03
    ld a, a                                       ; $5AAE: $7F
    rra                                           ; $5AAF: $1F
    rst RST_38                                    ; $5AB0: $FF
    ld a, a                                       ; $5AB1: $7F
    rst RST_38                                    ; $5AB2: $FF
    cp $7F                                        ; $5AB3: $FE $7F
    ldh [$FFE7], a                                ; $5AB5: $E0 $E7
    sbc h                                         ; $5AB7: $9C
    rst RST_18                                    ; $5AB8: $DF
    ld h, c                                       ; $5AB9: $61
    ld h, a                                       ; $5ABA: $67
    sbc c                                         ; $5ABB: $99
    rst RST_18                                    ; $5ABC: $DF
    jr nz, jr_00C_5AAB                            ; $5ABD: $20 $EC

    sbc e                                         ; $5ABF: $9B
    nop                                           ; $5AC0: $00
    nop                                           ; $5AC1: $00
    nop                                           ; $5AC2: $00
    nop                                           ; $5AC3: $00
    rra                                           ; $5AC4: $1F
    nop                                           ; $5AC5: $00
    rst RST_38                                    ; $5AC6: $FF
    ld e, $FE                                     ; $5AC7: $1E $FE
    ld hl, sp-$08                                 ; $5AC9: $F8 $F8
    ldh a, [$FFF0]                                ; $5ACB: $F0 $F0
    ret nz                                        ; $5ACD: $C0

    ret nz                                        ; $5ACE: $C0

    nop                                           ; $5ACF: $00
    nop                                           ; $5AD0: $00
    nop                                           ; $5AD1: $00

jr_00C_5AD2:
    ret nz                                        ; $5AD2: $C0

    nop                                           ; $5AD3: $00

jr_00C_5AD4:
    ei                                            ; $5AD4: $FB
    nop                                           ; $5AD5: $00
    sub [hl]                                      ; $5AD6: $96
    ld l, c                                       ; $5AD7: $69
    sub $29                                       ; $5AD8: $D6 $29
    ld l, $D5                                     ; $5ADA: $2E $D5
    xor $15                                       ; $5ADC: $EE $15
    ld a, [$18CD]                                 ; $5ADE: $FA $CD $18
    nop                                           ; $5AE1: $00
    ld h, a                                       ; $5AE2: $67
    jr jr_00C_5A74                                ; $5AE3: $18 $8F

    ld [hl], b                                    ; $5AE5: $70
    rra                                           ; $5AE6: $1F
    ldh [$FF3E], a                                ; $5AE7: $E0 $3E
    push de                                       ; $5AE9: $D5
    ld a, [hl]                                    ; $5AEA: $7E
    xor l                                         ; $5AEB: $AD
    ld a, h                                       ; $5AEC: $7C
    xor e                                         ; $5AED: $AB
    db $FC                                        ; $5AEE: $FC
    dec bc                                        ; $5AEF: $0B
    db $FC                                        ; $5AF0: $FC
    inc bc                                        ; $5AF1: $03
    rst RST_30                                    ; $5AF2: $F7
    ld [$CA3D], sp                                ; $5AF3: $08 $3D $CA
    ld e, a                                       ; $5AF6: $5F
    xor d                                         ; $5AF7: $AA
    rst RST_38                                    ; $5AF8: $FF
    ld hl, $8061                                  ; $5AF9: $21 $61 $80
    ld b, b                                       ; $5AFC: $40
    add b                                         ; $5AFD: $80
    add b                                         ; $5AFE: $80
    nop                                           ; $5AFF: $00
    nop                                           ; $5B00: $00
    nop                                           ; $5B01: $00
    ld b, b                                       ; $5B02: $40
    nop                                           ; $5B03: $00
    and b                                         ; $5B04: $A0
    ld b, b                                       ; $5B05: $40
    ret nc                                        ; $5B06: $D0

    jr nz, jr_00C_5B31                            ; $5B07: $20 $28

    ret nc                                        ; $5B09: $D0

    db $10                                        ; $5B0A: $10
    ldh [rNR10], a                                ; $5B0B: $E0 $10
    ldh [rNR41], a                                ; $5B0D: $E0 $20
    ret nz                                        ; $5B0F: $C0

    jr nz, jr_00C_5AD2                            ; $5B10: $20 $C0

    jr nz, jr_00C_5AD4                            ; $5B12: $20 $C0

    ld b, b                                       ; $5B14: $40
    add b                                         ; $5B15: $80
    ld b, b                                       ; $5B16: $40
    add b                                         ; $5B17: $80
    ret nz                                        ; $5B18: $C0

    nop                                           ; $5B19: $00
    ld b, b                                       ; $5B1A: $40
    add b                                         ; $5B1B: $80
    ret nz                                        ; $5B1C: $C0

    add b                                         ; $5B1D: $80
    ret nz                                        ; $5B1E: $C0

    nop                                           ; $5B1F: $00
    ld bc, $0200                                  ; $5B20: $01 $00 $02
    ld bc, $0304                                  ; $5B23: $01 $04 $03
    add hl, bc                                    ; $5B26: $09
    ld b, $13                                     ; $5B27: $06 $13
    inc c                                         ; $5B29: $0C
    cpl                                           ; $5B2A: $2F
    ld de, $215F                                  ; $5B2B: $11 $5F $21
    or e                                          ; $5B2E: $B3
    ld b, c                                       ; $5B2F: $41
    pop hl                                        ; $5B30: $E1

jr_00C_5B31:
    nop                                           ; $5B31: $00
    nop                                           ; $5B32: $00
    nop                                           ; $5B33: $00
    nop                                           ; $5B34: $00
    nop                                           ; $5B35: $00
    nop                                           ; $5B36: $00
    nop                                           ; $5B37: $00

jr_00C_5B38:
    nop                                           ; $5B38: $00
    nop                                           ; $5B39: $00
    nop                                           ; $5B3A: $00
    nop                                           ; $5B3B: $00
    nop                                           ; $5B3C: $00
    nop                                           ; $5B3D: $00
    nop                                           ; $5B3E: $00
    nop                                           ; $5B3F: $00
    jr nc, jr_00C_5B42                            ; $5B40: $30 $00

jr_00C_5B42:
    rst RST_08                                    ; $5B42: $CF
    jr nc, jr_00C_5B64                            ; $5B43: $30 $1F

    xor $7F                                       ; $5B45: $EE $7F
    sbc a                                         ; $5B47: $9F
    rst RST_38                                    ; $5B48: $FF
    ccf                                           ; $5B49: $3F
    rst RST_38                                    ; $5B4A: $FF
    ld e, a                                       ; $5B4B: $5F
    rst RST_38                                    ; $5B4C: $FF

jr_00C_5B4D:
    rst RST_18                                    ; $5B4D: $DF
    rst RST_38                                    ; $5B4E: $FF
    db $EC                                        ; $5B4F: $EC
    db $FC                                        ; $5B50: $FC
    and b                                         ; $5B51: $A0
    ld hl, sp-$70                                 ; $5B52: $F8 $90
    ldh a, [$FF60]                                ; $5B54: $F0 $60
    ldh [rP1], a                                  ; $5B56: $E0 $00
    nop                                           ; $5B58: $00
    nop                                           ; $5B59: $00
    nop                                           ; $5B5A: $00
    nop                                           ; $5B5B: $00
    nop                                           ; $5B5C: $00
    nop                                           ; $5B5D: $00
    nop                                           ; $5B5E: $00
    nop                                           ; $5B5F: $00
    nop                                           ; $5B60: $00
    nop                                           ; $5B61: $00
    nop                                           ; $5B62: $00
    nop                                           ; $5B63: $00

jr_00C_5B64:
    rlca                                          ; $5B64: $07
    nop                                           ; $5B65: $00
    add hl, de                                    ; $5B66: $19
    rlca                                          ; $5B67: $07
    ld [hl], a                                    ; $5B68: $77
    jr @-$25                                      ; $5B69: $18 $D9

    ld h, [hl]                                    ; $5B6B: $66
    rst RST_30                                    ; $5B6C: $F7
    ld [$267B], sp                                ; $5B6D: $08 $7B $26
    ld [hl], a                                    ; $5B70: $77
    ld [$1779], sp                                ; $5B71: $08 $79 $17
    rst RST_38                                    ; $5B74: $FF
    ld l, b                                       ; $5B75: $68
    rst RST_38                                    ; $5B76: $FF
    ld h, d                                       ; $5B77: $62
    db $E3                                        ; $5B78: $E3
    add c                                         ; $5B79: $81
    db $E3                                        ; $5B7A: $E3
    pop bc                                        ; $5B7B: $C1
    pop hl                                        ; $5B7C: $E1
    ret nz                                        ; $5B7D: $C0

    ret nz                                        ; $5B7E: $C0

    add b                                         ; $5B7F: $80
    nop                                           ; $5B80: $00
    nop                                           ; $5B81: $00
    nop                                           ; $5B82: $00
    nop                                           ; $5B83: $00
    ldh a, [rP1]                                  ; $5B84: $F0 $00
    cp $00                                        ; $5B86: $FE $00
    push hl                                       ; $5B88: $E5
    ld e, d                                       ; $5B89: $5A
    push af                                       ; $5B8A: $F5
    ld c, d                                       ; $5B8B: $4A
    swap l                                        ; $5B8C: $CB $35
    dec sp                                        ; $5B8E: $3B
    push bc                                       ; $5B8F: $C5
    cp $33                                        ; $5B90: $FE $33
    sub a                                         ; $5B92: $97
    ld l, b                                       ; $5B93: $68
    sub a                                         ; $5B94: $97
    ld l, e                                       ; $5B95: $6B
    reti                                          ; $5B96: $D9


    and a                                         ; $5B97: $A7
    ld sp, hl                                     ; $5B98: $F9
    rst RST_08                                    ; $5B99: $CF
    ld a, a                                       ; $5B9A: $7F
    db $EC                                        ; $5B9B: $EC
    rst RST_38                                    ; $5B9C: $FF
    jp Jump_000_3FE7                              ; $5B9D: $C3 $E7 $3F


    ld b, $00                                     ; $5BA0: $06 $00
    add hl, de                                    ; $5BA2: $19
    ld b, $23                                     ; $5BA3: $06 $23
    inc e                                         ; $5BA5: $1C
    rst RST_00                                    ; $5BA6: $C7
    jr c, jr_00C_5B38                             ; $5BA7: $38 $8F

    ld [hl], l                                    ; $5BA9: $75
    sbc a                                         ; $5BAA: $9F
    ld l, e                                       ; $5BAB: $6B
    sbc a                                         ; $5BAC: $9F
    ld l, d                                       ; $5BAD: $6A
    cp a                                          ; $5BAE: $BF
    ld b, d                                       ; $5BAF: $42
    cp a                                          ; $5BB0: $BF
    ld b, b                                       ; $5BB1: $40
    db $FD                                        ; $5BB2: $FD
    ld [bc], a                                    ; $5BB3: $02
    rst RST_08                                    ; $5BB4: $CF
    or d                                          ; $5BB5: $B2
    rst RST_10                                    ; $5BB6: $D7
    xor d                                         ; $5BB7: $AA
    rst RST_38                                    ; $5BB8: $FF
    adc b                                         ; $5BB9: $88
    ret c                                         ; $5BBA: $D8

    jr nz, jr_00C_5B4D                            ; $5BBB: $20 $90

    ld h, b                                       ; $5BBD: $60
    ldh [rP1], a                                  ; $5BBE: $E0 $00
    nop                                           ; $5BC0: $00
    nop                                           ; $5BC1: $00
    stop                                          ; $5BC2: $10 $00
    jr z, @+$12                                   ; $5BC4: $28 $10

    db $F4                                        ; $5BC6: $F4
    ld [$34CA], sp                                ; $5BC7: $08 $CA $34
    call nz, $8438                                ; $5BCA: $C4 $38 $84
    ld a, b                                       ; $5BCD: $78
    adc b                                         ; $5BCE: $88
    ld [hl], b                                    ; $5BCF: $70
    ld [$08F0], sp                                ; $5BD0: $08 $F0 $08
    ldh a, [rNR10]                                ; $5BD3: $F0 $10
    ldh [$FFD0], a                                ; $5BD5: $E0 $D0
    jr nz, jr_00C_5C49                            ; $5BD7: $20 $70

    add b                                         ; $5BD9: $80
    ret nc                                        ; $5BDA: $D0

    and b                                         ; $5BDB: $A0
    ldh a, [$FF60]                                ; $5BDC: $F0 $60
    ld [hl], b                                    ; $5BDE: $70
    nop                                           ; $5BDF: $00
    ld l, h                                       ; $5BE0: $6C
    inc bc                                        ; $5BE1: $03
    ldh a, [$FF6F]                                ; $5BE2: $F0 $6F
    or $69                                        ; $5BE4: $F6 $69
    ld sp, hl                                     ; $5BE6: $F9
    ld h, [hl]                                    ; $5BE7: $66
    ld h, b                                       ; $5BE8: $60
    rra                                           ; $5BE9: $1F
    inc sp                                        ; $5BEA: $33
    inc c                                         ; $5BEB: $0C
    rrca                                          ; $5BEC: $0F
    nop                                           ; $5BED: $00
    ld bc, $0000                                  ; $5BEE: $01 $00 $00
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
    nop                                           ; $5BFC: $00
    nop                                           ; $5BFD: $00
    nop                                           ; $5BFE: $00
    nop                                           ; $5BFF: $00
    rst RST_38                                    ; $5C00: $FF
    ld h, e                                       ; $5C01: $63
    ld a, e                                       ; $5C02: $7B
    sbc [hl]                                      ; $5C03: $9E
    ld a, $D9                                     ; $5C04: $3E $D9
    db $FC                                        ; $5C06: $FC
    dec bc                                        ; $5C07: $0B
    inc l                                         ; $5C08: $2C
    db $D3                                        ; $5C09: $D3
    ld hl, sp+$07                                 ; $5C0A: $F8 $07
    ld a, b                                       ; $5C0C: $78
    add a                                         ; $5C0D: $87
    ld sp, hl                                     ; $5C0E: $F9
    ld b, $07                                     ; $5C0F: $06 $07
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
    add b                                         ; $5C20: $80
    nop                                           ; $5C21: $00
    add b                                         ; $5C22: $80
    nop                                           ; $5C23: $00
    ld h, b                                       ; $5C24: $60
    add b                                         ; $5C25: $80
    ld e, [hl]                                    ; $5C26: $5E
    and b                                         ; $5C27: $A0
    ld a, l                                       ; $5C28: $7D
    cp d                                          ; $5C29: $BA
    rst RST_38                                    ; $5C2A: $FF
    ld a, b                                       ; $5C2B: $78
    rst RST_38                                    ; $5C2C: $FF
    ld a, b                                       ; $5C2D: $78
    ld sp, hl                                     ; $5C2E: $F9
    add $DF                                       ; $5C2F: $C6 $DF
    nop                                           ; $5C31: $00
    nop                                           ; $5C32: $00
    nop                                           ; $5C33: $00
    nop                                           ; $5C34: $00
    nop                                           ; $5C35: $00

jr_00C_5C36:
    nop                                           ; $5C36: $00
    nop                                           ; $5C37: $00
    nop                                           ; $5C38: $00
    nop                                           ; $5C39: $00
    nop                                           ; $5C3A: $00
    nop                                           ; $5C3B: $00
    nop                                           ; $5C3C: $00
    nop                                           ; $5C3D: $00
    nop                                           ; $5C3E: $00
    nop                                           ; $5C3F: $00
    inc bc                                        ; $5C40: $03
    nop                                           ; $5C41: $00
    dec c                                         ; $5C42: $0D
    inc bc                                        ; $5C43: $03
    rla                                           ; $5C44: $17
    ld [$061F], sp                                ; $5C45: $08 $1F $06
    daa                                           ; $5C48: $27

jr_00C_5C49:
    jr jr_00C_5C8A                                ; $5C49: $18 $3F

    inc b                                         ; $5C4B: $04
    ld l, $19                                     ; $5C4C: $2E $19
    ccf                                           ; $5C4E: $3F
    db $10                                        ; $5C4F: $10
    ld a, a                                       ; $5C50: $7F
    ld [$6AB7], sp                                ; $5C51: $08 $B7 $6A
    rst RST_38                                    ; $5C54: $FF
    dec bc                                        ; $5C55: $0B
    cp a                                          ; $5C56: $BF
    ld [hl], a                                    ; $5C57: $77
    rst RST_38                                    ; $5C58: $FF
    rlca                                          ; $5C59: $07
    cp a                                          ; $5C5A: $BF
    ld [hl], c                                    ; $5C5B: $71
    rst RST_38                                    ; $5C5C: $FF
    ld h, $7F                                     ; $5C5D: $26 $7F
    rlca                                          ; $5C5F: $07
    rrca                                          ; $5C60: $0F
    rlca                                          ; $5C61: $07
    rlca                                          ; $5C62: $07
    ld [bc], a                                    ; $5C63: $02
    inc bc                                        ; $5C64: $03
    ld bc, $0103                                  ; $5C65: $01 $03 $01
    ld bc, $0000                                  ; $5C68: $01 $00 $00
    nop                                           ; $5C6B: $00
    ld bc, $0300                                  ; $5C6C: $01 $00 $03
    nop                                           ; $5C6F: $00
    rlca                                          ; $5C70: $07
    nop                                           ; $5C71: $00
    ld a, [bc]                                    ; $5C72: $0A
    dec b                                         ; $5C73: $05
    rrca                                          ; $5C74: $0F
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
    ldh [rP1], a                                  ; $5C80: $E0 $00
    ldh a, [$FFE0]                                ; $5C82: $F0 $E0
    db $FD                                        ; $5C84: $FD
    nop                                           ; $5C85: $00
    res 6, l                                      ; $5C86: $CB $B5
    db $EB                                        ; $5C88: $EB
    sub l                                         ; $5C89: $95

jr_00C_5C8A:
    sub a                                         ; $5C8A: $97
    ld l, d                                       ; $5C8B: $6A
    ld [hl], a                                    ; $5C8C: $77
    adc d                                         ; $5C8D: $8A
    cp $65                                        ; $5C8E: $FE $65
    ld l, $D5                                     ; $5C90: $2E $D5
    ld l, $D1                                     ; $5C92: $2E $D1
    cp a                                          ; $5C94: $BF
    ld b, b                                       ; $5C95: $40

jr_00C_5C96:
    rst RST_38                                    ; $5C96: $FF
    ld b, $F9                                     ; $5C97: $06 $F9
    ld e, a                                       ; $5C99: $5F
    ld sp, hl                                     ; $5C9A: $F9
    ld l, [hl]                                    ; $5C9B: $6E
    rst RST_38                                    ; $5C9C: $FF
    ld de, $679F                                  ; $5C9D: $11 $9F $67
    add b                                         ; $5CA0: $80
    nop                                           ; $5CA1: $00
    sbc [hl]                                      ; $5CA2: $9E
    nop                                           ; $5CA3: $00
    rst RST_20                                    ; $5CA4: $E7
    jr jr_00C_5C36                                ; $5CA5: $18 $8F

    ld [hl], b                                    ; $5CA7: $70
    rra                                           ; $5CA8: $1F
    add sp, $16                                   ; $5CA9: $E8 $16
    db $EB                                        ; $5CAB: $EB
    ccf                                           ; $5CAC: $3F
    ret z                                         ; $5CAD: $C8

    ld a, $D7                                     ; $5CAE: $3E $D7
    ld a, a                                       ; $5CB0: $7F
    sub b                                         ; $5CB1: $90
    cp [hl]                                       ; $5CB2: $BE
    ld d, a                                       ; $5CB3: $57
    cp a                                          ; $5CB4: $BF
    ld d, d                                       ; $5CB5: $52
    rst RST_38                                    ; $5CB6: $FF
    add hl, de                                    ; $5CB7: $19
    rst RST_38                                    ; $5CB8: $FF
    adc [hl]                                      ; $5CB9: $8E
    cp [hl]                                       ; $5CBA: $BE
    ld b, b                                       ; $5CBB: $40
    ld a, h                                       ; $5CBC: $7C
    cp b                                          ; $5CBD: $B8
    ld a, h                                       ; $5CBE: $7C
    cp b                                          ; $5CBF: $B8
    nop                                           ; $5CC0: $00
    nop                                           ; $5CC1: $00
    nop                                           ; $5CC2: $00
    nop                                           ; $5CC3: $00
    nop                                           ; $5CC4: $00
    nop                                           ; $5CC5: $00
    nop                                           ; $5CC6: $00
    nop                                           ; $5CC7: $00
    nop                                           ; $5CC8: $00
    nop                                           ; $5CC9: $00
    nop                                           ; $5CCA: $00
    nop                                           ; $5CCB: $00
    nop                                           ; $5CCC: $00
    nop                                           ; $5CCD: $00

jr_00C_5CCE:
    nop                                           ; $5CCE: $00
    nop                                           ; $5CCF: $00
    add b                                         ; $5CD0: $80
    nop                                           ; $5CD1: $00
    ret nz                                        ; $5CD2: $C0

    nop                                           ; $5CD3: $00
    and b                                         ; $5CD4: $A0
    ld b, b                                       ; $5CD5: $40
    ldh [rP1], a                                  ; $5CD6: $E0 $00
    and b                                         ; $5CD8: $A0
    ld b, b                                       ; $5CD9: $40
    ldh [rP1], a                                  ; $5CDA: $E0 $00
    and b                                         ; $5CDC: $A0
    ld b, b                                       ; $5CDD: $40
    ret nz                                        ; $5CDE: $C0

    nop                                           ; $5CDF: $00
    rst RST_00                                    ; $5CE0: $C7
    jr c, jr_00C_5C96                             ; $5CE1: $38 $B3

    ld c, h                                       ; $5CE3: $4C
    dec c                                         ; $5CE4: $0D
    ldh a, [$FF08]                                ; $5CE5: $F0 $08
    ldh a, [$FF88]                                ; $5CE7: $F0 $88
    ldh a, [$FFE8]                                ; $5CE9: $F0 $E8
    db $10                                        ; $5CEB: $10
    jr jr_00C_5CCE                                ; $5CEC: $18 $E0

    add sp, $10                                   ; $5CEE: $E8 $10
    add sp, $10                                   ; $5CF0: $E8 $10
    ld [hl], b                                    ; $5CF2: $70
    add b                                         ; $5CF3: $80
    ret nz                                        ; $5CF4: $C0

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
    cp $18                                        ; $5D00: $FE $18
    sbc [hl]                                      ; $5D02: $9E
    ld h, h                                       ; $5D03: $64
    ld e, [hl]                                    ; $5D04: $5E
    inc a                                         ; $5D05: $3C
    ld c, [hl]                                    ; $5D06: $4E
    inc a                                         ; $5D07: $3C
    ld l, $10                                     ; $5D08: $2E $10
    ld [hl-], a                                   ; $5D0A: $32
    inc c                                         ; $5D0B: $0C
    cpl                                           ; $5D0C: $2F
    db $10                                        ; $5D0D: $10
    rra                                           ; $5D0E: $1F
    nop                                           ; $5D0F: $00
    dec d                                         ; $5D10: $15
    ld a, [bc]                                    ; $5D11: $0A
    rra                                           ; $5D12: $1F
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
    add b                                         ; $5D20: $80
    nop                                           ; $5D21: $00
    ld b, b                                       ; $5D22: $40
    add b                                         ; $5D23: $80
    ret nz                                        ; $5D24: $C0

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
    nop                                           ; $5D36: $00
    nop                                           ; $5D37: $00
    nop                                           ; $5D38: $00
    nop                                           ; $5D39: $00
    nop                                           ; $5D3A: $00
    nop                                           ; $5D3B: $00
    nop                                           ; $5D3C: $00
    nop                                           ; $5D3D: $00
    nop                                           ; $5D3E: $00
    nop                                           ; $5D3F: $00
    ld b, $00                                     ; $5D40: $06 $00
    rra                                           ; $5D42: $1F
    ld b, $39                                     ; $5D43: $06 $39
    rra                                           ; $5D45: $1F
    ld h, b                                       ; $5D46: $60
    ccf                                           ; $5D47: $3F
    ret nz                                        ; $5D48: $C0

    ld a, a                                       ; $5D49: $7F
    ret nz                                        ; $5D4A: $C0

    ld a, a                                       ; $5D4B: $7F
    ret nz                                        ; $5D4C: $C0

    ld a, a                                       ; $5D4D: $7F
    ret nz                                        ; $5D4E: $C0

    ld a, a                                       ; $5D4F: $7F
    ret nz                                        ; $5D50: $C0

    ld a, a                                       ; $5D51: $7F
    ret nz                                        ; $5D52: $C0

    ld a, a                                       ; $5D53: $7F
    ret nz                                        ; $5D54: $C0

    ld a, a                                       ; $5D55: $7F
    ld h, b                                       ; $5D56: $60
    ccf                                           ; $5D57: $3F
    jr nc, jr_00C_5D79                            ; $5D58: $30 $1F

    jr nc, jr_00C_5D7B                            ; $5D5A: $30 $1F

    jr nc, jr_00C_5D7D                            ; $5D5C: $30 $1F

    ld h, b                                       ; $5D5E: $60
    ccf                                           ; $5D5F: $3F
    rlca                                          ; $5D60: $07
    nop                                           ; $5D61: $00
    rra                                           ; $5D62: $1F
    rlca                                          ; $5D63: $07
    ld a, b                                       ; $5D64: $78
    rra                                           ; $5D65: $1F
    ldh [$FF7F], a                                ; $5D66: $E0 $7F
    add b                                         ; $5D68: $80
    rst RST_38                                    ; $5D69: $FF
    nop                                           ; $5D6A: $00
    rst RST_38                                    ; $5D6B: $FF
    nop                                           ; $5D6C: $00
    rst RST_38                                    ; $5D6D: $FF
    nop                                           ; $5D6E: $00
    rst RST_38                                    ; $5D6F: $FF
    nop                                           ; $5D70: $00
    rst RST_38                                    ; $5D71: $FF
    nop                                           ; $5D72: $00
    rst RST_38                                    ; $5D73: $FF
    nop                                           ; $5D74: $00
    rst RST_38                                    ; $5D75: $FF
    nop                                           ; $5D76: $00
    rst RST_38                                    ; $5D77: $FF
    nop                                           ; $5D78: $00

jr_00C_5D79:
    rst RST_38                                    ; $5D79: $FF
    nop                                           ; $5D7A: $00

jr_00C_5D7B:
    rst RST_38                                    ; $5D7B: $FF
    nop                                           ; $5D7C: $00

jr_00C_5D7D:
    rst RST_38                                    ; $5D7D: $FF
    nop                                           ; $5D7E: $00
    rst RST_38                                    ; $5D7F: $FF
    ret nz                                        ; $5D80: $C0

    nop                                           ; $5D81: $00
    ld hl, sp-$40                                 ; $5D82: $F8 $C0
    inc a                                         ; $5D84: $3C
    ld hl, sp+$06                                 ; $5D85: $F8 $06
    db $FC                                        ; $5D87: $FC
    inc bc                                        ; $5D88: $03
    cp $01                                        ; $5D89: $FE $01
    rst RST_38                                    ; $5D8B: $FF
    nop                                           ; $5D8C: $00
    rst RST_38                                    ; $5D8D: $FF
    nop                                           ; $5D8E: $00
    rst RST_38                                    ; $5D8F: $FF
    nop                                           ; $5D90: $00
    rst RST_38                                    ; $5D91: $FF
    nop                                           ; $5D92: $00
    rst RST_38                                    ; $5D93: $FF
    nop                                           ; $5D94: $00
    rst RST_38                                    ; $5D95: $FF
    nop                                           ; $5D96: $00
    rst RST_38                                    ; $5D97: $FF
    nop                                           ; $5D98: $00
    rst RST_38                                    ; $5D99: $FF
    nop                                           ; $5D9A: $00
    rst RST_38                                    ; $5D9B: $FF
    nop                                           ; $5D9C: $00
    rst RST_38                                    ; $5D9D: $FF
    nop                                           ; $5D9E: $00
    rst RST_38                                    ; $5D9F: $FF
    ld hl, sp+$00                                 ; $5DA0: $F8 $00
    db $FC                                        ; $5DA2: $FC
    ld hl, sp+$06                                 ; $5DA3: $F8 $06
    db $FC                                        ; $5DA5: $FC
    inc bc                                        ; $5DA6: $03
    cp $03                                        ; $5DA7: $FE $03
    cp $03                                        ; $5DA9: $FE $03
    cp $03                                        ; $5DAB: $FE $03
    cp $03                                        ; $5DAD: $FE $03
    cp $03                                        ; $5DAF: $FE $03
    cp $03                                        ; $5DB1: $FE $03
    cp $03                                        ; $5DB3: $FE $03
    cp $03                                        ; $5DB5: $FE $03
    cp $03                                        ; $5DB7: $FE $03
    cp $8E                                        ; $5DB9: $FE $8E
    db $FC                                        ; $5DBB: $FC
    db $FC                                        ; $5DBC: $FC
    ld [hl], b                                    ; $5DBD: $70
    ldh a, [rP1]                                  ; $5DBE: $F0 $00
    ld h, b                                       ; $5DC0: $60
    ccf                                           ; $5DC1: $3F
    ld h, b                                       ; $5DC2: $60
    ccf                                           ; $5DC3: $3F
    jr nc, jr_00C_5DE5                            ; $5DC4: $30 $1F

    jr jr_00C_5DD7                                ; $5DC6: $18 $0F

    jr jr_00C_5DD9                                ; $5DC8: $18 $0F

    inc c                                         ; $5DCA: $0C
    rlca                                          ; $5DCB: $07
    ld b, $03                                     ; $5DCC: $06 $03
    inc c                                         ; $5DCE: $0C
    rlca                                          ; $5DCF: $07
    jr jr_00C_5DE1                                ; $5DD0: $18 $0F

    jr nc, jr_00C_5DF3                            ; $5DD2: $30 $1F

    ld h, b                                       ; $5DD4: $60
    ccf                                           ; $5DD5: $3F
    ld h, b                                       ; $5DD6: $60

jr_00C_5DD7:
    ccf                                           ; $5DD7: $3F
    nop                                           ; $5DD8: $00

jr_00C_5DD9:
    nop                                           ; $5DD9: $00
    nop                                           ; $5DDA: $00
    nop                                           ; $5DDB: $00
    nop                                           ; $5DDC: $00
    nop                                           ; $5DDD: $00
    nop                                           ; $5DDE: $00
    nop                                           ; $5DDF: $00
    nop                                           ; $5DE0: $00

jr_00C_5DE1:
    rst RST_38                                    ; $5DE1: $FF
    nop                                           ; $5DE2: $00
    rst RST_38                                    ; $5DE3: $FF
    nop                                           ; $5DE4: $00

jr_00C_5DE5:
    rst RST_38                                    ; $5DE5: $FF
    nop                                           ; $5DE6: $00
    rst RST_38                                    ; $5DE7: $FF
    rlca                                          ; $5DE8: $07
    rst RST_38                                    ; $5DE9: $FF
    rrca                                          ; $5DEA: $0F
    ld hl, sp+$0C                                 ; $5DEB: $F8 $0C
    ld hl, sp+$0C                                 ; $5DED: $F8 $0C
    ld hl, sp+$0C                                 ; $5DEF: $F8 $0C
    ld hl, sp+$0C                                 ; $5DF1: $F8 $0C

jr_00C_5DF3:
    ld hl, sp+$0C                                 ; $5DF3: $F8 $0C
    ld hl, sp+$0C                                 ; $5DF5: $F8 $0C
    ld hl, sp+$0C                                 ; $5DF7: $F8 $0C
    ld hl, sp+$18                                 ; $5DF9: $F8 $18
    ldh a, [rP1]                                  ; $5DFB: $F0 $00
    add b                                         ; $5DFD: $80
    nop                                           ; $5DFE: $00
    nop                                           ; $5DFF: $00
    inc bc                                        ; $5E00: $03
    rst RST_38                                    ; $5E01: $FF
    rlca                                          ; $5E02: $07
    db $FC                                        ; $5E03: $FC
    inc bc                                        ; $5E04: $03
    cp $01                                        ; $5E05: $FE $01
    rst RST_38                                    ; $5E07: $FF

jr_00C_5E08:
    add b                                         ; $5E08: $80
    rst RST_38                                    ; $5E09: $FF

jr_00C_5E0A:
    ret nz                                        ; $5E0A: $C0

    ld a, a                                       ; $5E0B: $7F

jr_00C_5E0C:
    ret nz                                        ; $5E0C: $C0

    ld a, a                                       ; $5E0D: $7F

jr_00C_5E0E:
    ret nz                                        ; $5E0E: $C0

    ld a, a                                       ; $5E0F: $7F
    ld h, b                                       ; $5E10: $60
    ccf                                           ; $5E11: $3F
    jr nc, jr_00C_5E33                            ; $5E12: $30 $1F

    jr jr_00C_5E25                                ; $5E14: $18 $0F

    inc c                                         ; $5E16: $0C
    rlca                                          ; $5E17: $07
    inc c                                         ; $5E18: $0C
    rlca                                          ; $5E19: $07
    ld b, $03                                     ; $5E1A: $06 $03
    ld b, $03                                     ; $5E1C: $06 $03
    ld b, $03                                     ; $5E1E: $06 $03

jr_00C_5E20:
    ret nz                                        ; $5E20: $C0

    add b                                         ; $5E21: $80
    ld h, b                                       ; $5E22: $60
    ret nz                                        ; $5E23: $C0

    ld h, b                                       ; $5E24: $60

jr_00C_5E25:
    ret nz                                        ; $5E25: $C0

    jr nc, jr_00C_5E08                            ; $5E26: $30 $E0

    jr nc, jr_00C_5E0A                            ; $5E28: $30 $E0

    jr nc, jr_00C_5E0C                            ; $5E2A: $30 $E0

    jr nc, jr_00C_5E0E                            ; $5E2C: $30 $E0

    jr jr_00C_5E20                                ; $5E2E: $18 $F0

    inc c                                         ; $5E30: $0C
    ld hl, sp+$06                                 ; $5E31: $F8 $06

jr_00C_5E33:
    db $FC                                        ; $5E33: $FC
    inc bc                                        ; $5E34: $03
    cp $03                                        ; $5E35: $FE $03
    cp $00                                        ; $5E37: $FE $00
    nop                                           ; $5E39: $00
    nop                                           ; $5E3A: $00
    nop                                           ; $5E3B: $00
    nop                                           ; $5E3C: $00
    nop                                           ; $5E3D: $00
    nop                                           ; $5E3E: $00
    nop                                           ; $5E3F: $00
    ld b, $00                                     ; $5E40: $06 $00
    rra                                           ; $5E42: $1F
    ld [bc], a                                    ; $5E43: $02
    dec l                                         ; $5E44: $2D
    ld a, [de]                                    ; $5E45: $1A
    ld a, a                                       ; $5E46: $7F
    ld [bc], a                                    ; $5E47: $02
    ld e, a                                       ; $5E48: $5F
    jr c, @+$01                                   ; $5E49: $38 $FF

    ld b, d                                       ; $5E4B: $42
    cp a                                          ; $5E4C: $BF
    ld [hl], l                                    ; $5E4D: $75
    rst RST_38                                    ; $5E4E: $FF
    dec b                                         ; $5E4F: $05
    ld a, a                                       ; $5E50: $7F
    dec de                                        ; $5E51: $1B
    rra                                           ; $5E52: $1F
    rlca                                          ; $5E53: $07
    rlca                                          ; $5E54: $07
    ld bc, $000D                                  ; $5E55: $01 $0D $00
    rra                                           ; $5E58: $1F
    inc c                                         ; $5E59: $0C
    rra                                           ; $5E5A: $1F
    ld c, $1F                                     ; $5E5B: $0E $1F
    ld c, $0F                                     ; $5E5D: $0E $0F
    inc b                                         ; $5E5F: $04
    rlca                                          ; $5E60: $07
    nop                                           ; $5E61: $00
    dec de                                        ; $5E62: $1B
    rlca                                          ; $5E63: $07
    ld a, a                                       ; $5E64: $7F
    db $10                                        ; $5E65: $10
    rst RST_30                                    ; $5E66: $F7
    ld c, [hl]                                    ; $5E67: $4E
    ld l, [hl]                                    ; $5E68: $6E
    sub c                                         ; $5E69: $91
    rst RST_30                                    ; $5E6A: $F7
    inc l                                         ; $5E6B: $2C
    rst RST_28                                    ; $5E6C: $EF
    ld [de], a                                    ; $5E6D: $12
    rst RST_38                                    ; $5E6E: $FF
    and b                                         ; $5E6F: $A0
    ei                                            ; $5E70: $FB
    adc $FF                                       ; $5E71: $CE $FF
    db $ED                                        ; $5E73: $ED
    rst RST_38                                    ; $5E74: $FF
    add sp, -$17                                  ; $5E75: $E8 $E9
    rst RST_00                                    ; $5E77: $C7
    rst RST_28                                    ; $5E78: $EF
    ret nz                                        ; $5E79: $C0

    db $DB                                        ; $5E7A: $DB
    adc a                                         ; $5E7B: $8F
    xor a                                         ; $5E7C: $AF
    inc de                                        ; $5E7D: $13
    ld b, a                                       ; $5E7E: $47
    dec sp                                        ; $5E7F: $3B
    ret nz                                        ; $5E80: $C0

    nop                                           ; $5E81: $00
    ld hl, sp-$40                                 ; $5E82: $F8 $C0
    db $FC                                        ; $5E84: $FC
    ld [$F40A], sp                                ; $5E85: $08 $0A $F4
    or $08                                        ; $5E88: $F6 $08
    dec sp                                        ; $5E8A: $3B
    db $F4                                        ; $5E8B: $F4
    sbc h                                         ; $5E8C: $9C
    ld h, e                                       ; $5E8D: $63
    ld hl, sp+$07                                 ; $5E8E: $F8 $07
    sbc c                                         ; $5E90: $99
    or $9F                                        ; $5E91: $F6 $9F
    ldh a, [$FFFD]                                ; $5E93: $F0 $FD
    ld a, d                                       ; $5E95: $7A
    ei                                            ; $5E96: $FB
    sub h                                         ; $5E97: $94
    db $FD                                        ; $5E98: $FD
    ld [bc], a                                    ; $5E99: $02
    ld [hl], a                                    ; $5E9A: $77
    ret z                                         ; $5E9B: $C8

    ret c                                         ; $5E9C: $D8

    jr nz, @-$76                                  ; $5E9D: $20 $88

    ld [hl], b                                    ; $5E9F: $70
    nop                                           ; $5EA0: $00
    nop                                           ; $5EA1: $00
    nop                                           ; $5EA2: $00
    nop                                           ; $5EA3: $00
    nop                                           ; $5EA4: $00
    nop                                           ; $5EA5: $00
    nop                                           ; $5EA6: $00
    nop                                           ; $5EA7: $00
    ld hl, sp+$00                                 ; $5EA8: $F8 $00
    ld e, h                                       ; $5EAA: $5C
    and b                                         ; $5EAB: $A0
    db $FC                                        ; $5EAC: $FC
    ld b, b                                       ; $5EAD: $40
    or h                                          ; $5EAE: $B4
    ld e, b                                       ; $5EAF: $58
    cp $40                                        ; $5EB0: $FE $40
    push af                                       ; $5EB2: $F5
    cp d                                          ; $5EB3: $BA
    rst RST_38                                    ; $5EB4: $FF
    add b                                         ; $5EB5: $80
    push af                                       ; $5EB6: $F5
    cp d                                          ; $5EB7: $BA
    rst RST_38                                    ; $5EB8: $FF
    sub b                                         ; $5EB9: $90
    db $FD                                        ; $5EBA: $FD
    jp z, $70FE                                   ; $5EBB: $CA $FE $70

    ld [hl], b                                    ; $5EBE: $70
    nop                                           ; $5EBF: $00
    ld b, $03                                     ; $5EC0: $06 $03
    ld b, $03                                     ; $5EC2: $06 $03
    inc bc                                        ; $5EC4: $03
    ld bc, $0001                                  ; $5EC5: $01 $01 $00
    ld [bc], a                                    ; $5EC8: $02
    ld bc, $0007                                  ; $5EC9: $01 $07 $00
    rrca                                          ; $5ECC: $0F
    nop                                           ; $5ECD: $00
    inc d                                         ; $5ECE: $14
    dec bc                                        ; $5ECF: $0B
    rra                                           ; $5ED0: $1F
    nop                                           ; $5ED1: $00
    nop                                           ; $5ED2: $00
    nop                                           ; $5ED3: $00
    nop                                           ; $5ED4: $00

jr_00C_5ED5:
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
    add a                                         ; $5EE0: $87
    ld a, b                                       ; $5EE1: $78
    ret z                                         ; $5EE2: $C8

    jr nc, @+$32                                  ; $5EE3: $30 $30

    ret nz                                        ; $5EE5: $C0

    db $10                                        ; $5EE6: $10
    ldh [rNR10], a                                ; $5EE7: $E0 $10
    ldh [rNR10], a                                ; $5EE9: $E0 $10
    ldh [$FFD0], a                                ; $5EEB: $E0 $D0
    jr nz, jr_00C_5F1F                            ; $5EED: $20 $30

    ret nz                                        ; $5EEF: $C0

    ret nc                                        ; $5EF0: $D0

    jr nz, @-$2E                                  ; $5EF1: $20 $D0

    jr nz, jr_00C_5ED5                            ; $5EF3: $20 $E0

    nop                                           ; $5EF5: $00
    add b                                         ; $5EF6: $80
    nop                                           ; $5EF7: $00
    nop                                           ; $5EF8: $00
    nop                                           ; $5EF9: $00
    nop                                           ; $5EFA: $00
    nop                                           ; $5EFB: $00
    nop                                           ; $5EFC: $00
    nop                                           ; $5EFD: $00
    nop                                           ; $5EFE: $00
    nop                                           ; $5EFF: $00
    add [hl]                                      ; $5F00: $86
    ld a, b                                       ; $5F01: $78
    ld c, a                                       ; $5F02: $4F
    ld [hl], $3F                                  ; $5F03: $36 $3F
    ld c, $3F                                     ; $5F05: $0E $3F
    ld b, $27                                     ; $5F07: $06 $27
    add hl, de                                    ; $5F09: $19
    ld de, $080F                                  ; $5F0A: $11 $0F $08
    rlca                                          ; $5F0D: $07
    dec b                                         ; $5F0E: $05
    ld [bc], a                                    ; $5F0F: $02
    ld [bc], a                                    ; $5F10: $02
    ld bc, $0102                                  ; $5F11: $01 $02 $01
    ld bc, $0100                                  ; $5F14: $01 $00 $01
    nop                                           ; $5F17: $00
    ld bc, $0000                                  ; $5F18: $01 $00 $00
    nop                                           ; $5F1B: $00
    nop                                           ; $5F1C: $00
    nop                                           ; $5F1D: $00
    nop                                           ; $5F1E: $00

jr_00C_5F1F:
    nop                                           ; $5F1F: $00
    add b                                         ; $5F20: $80
    nop                                           ; $5F21: $00
    add b                                         ; $5F22: $80
    nop                                           ; $5F23: $00
    ret nz                                        ; $5F24: $C0

    add b                                         ; $5F25: $80
    ret nz                                        ; $5F26: $C0

    add b                                         ; $5F27: $80
    ret nz                                        ; $5F28: $C0

    add b                                         ; $5F29: $80
    ret nz                                        ; $5F2A: $C0

    nop                                           ; $5F2B: $00
    jr nz, @-$3E                                  ; $5F2C: $20 $C0

    ldh a, [rP1]                                  ; $5F2E: $F0 $00
    ld hl, sp+$00                                 ; $5F30: $F8 $00
    ld d, h                                       ; $5F32: $54
    xor b                                         ; $5F33: $A8
    db $FC                                        ; $5F34: $FC
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
    nop                                           ; $5F48: $00
    nop                                           ; $5F49: $00
    rlca                                          ; $5F4A: $07
    nop                                           ; $5F4B: $00
    ld c, $01                                     ; $5F4C: $0E $01
    rrca                                          ; $5F4E: $0F
    nop                                           ; $5F4F: $00
    jr nc, jr_00C_5F52                            ; $5F50: $30 $00

jr_00C_5F52:
    pop af                                        ; $5F52: $F1
    jr nz, @+$01                                  ; $5F53: $20 $FF

    and b                                         ; $5F55: $A0
    db $FD                                        ; $5F56: $FD
    ld h, d                                       ; $5F57: $62
    rst RST_20                                    ; $5F58: $E7
    ret c                                         ; $5F59: $D8

    push hl                                       ; $5F5A: $E5
    jp c, Jump_000_18E7                           ; $5F5B: $DA $E7 $18

    dec h                                         ; $5F5E: $25
    ld a, [de]                                    ; $5F5F: $1A
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
    ld bc, $1F00                                  ; $5F76: $01 $00 $1F
    ld bc, $0E1F                                  ; $5F79: $01 $1F $0E
    rrca                                          ; $5F7C: $0F
    ld bc, $0001                                  ; $5F7D: $01 $01 $00
    rrca                                          ; $5F80: $0F
    nop                                           ; $5F81: $00
    ld a, [bc]                                    ; $5F82: $0A
    dec b                                         ; $5F83: $05
    ld c, $01                                     ; $5F84: $0E $01
    dec e                                         ; $5F86: $1D
    ld [bc], a                                    ; $5F87: $02
    rla                                           ; $5F88: $17
    ld [$06FF], sp                                ; $5F89: $08 $FF $06
    rlca                                          ; $5F8C: $07
    ld hl, sp+$03                                 ; $5F8D: $F8 $03
    db $FC                                        ; $5F8F: $FC
    add h                                         ; $5F90: $84
    ld a, e                                       ; $5F91: $7B
    db $F4                                        ; $5F92: $F4
    dec bc                                        ; $5F93: $0B
    ld hl, sp+$67                                 ; $5F94: $F8 $67
    ld hl, sp-$19                                 ; $5F96: $F8 $E7
    db $F4                                        ; $5F98: $F4
    ld c, e                                       ; $5F99: $4B
    rst RST_18                                    ; $5F9A: $DF
    add b                                         ; $5F9B: $80
    jp nc, $DF8D                                  ; $5F9C: $D2 $8D $DF

    add b                                         ; $5F9F: $80
    db $FC                                        ; $5FA0: $FC
    nop                                           ; $5FA1: $00
    ei                                            ; $5FA2: $FB
    inc l                                         ; $5FA3: $2C
    cp $21                                        ; $5FA4: $FE $21
    db $FD                                        ; $5FA6: $FD
    ld c, [hl]                                    ; $5FA7: $4E
    xor $51                                       ; $5FA8: $EE $51
    xor l                                         ; $5FAA: $AD
    sub $FE                                       ; $5FAB: $D6 $FE
    add c                                         ; $5FAD: $81
    adc a                                         ; $5FAE: $8F
    halt                                          ; $5FAF: $76
    ld a, a                                       ; $5FB0: $7F
    add c                                         ; $5FB1: $81
    daa                                           ; $5FB2: $27
    jp c, $D927                                   ; $5FB3: $DA $27 $D9

    inc hl                                        ; $5FB6: $23
    call c, Call_000_0CF3                         ; $5FB7: $DC $F3 $0C

jr_00C_5FBA:
    dec c                                         ; $5FBA: $0D
    ldh a, [$FF09]                                ; $5FBB: $F0 $09
    ldh a, [$FFF3]                                ; $5FBD: $F0 $F3
    nop                                           ; $5FBF: $00
    add b                                         ; $5FC0: $80
    nop                                           ; $5FC1: $00
    ret nz                                        ; $5FC2: $C0

    nop                                           ; $5FC3: $00
    ld b, b                                       ; $5FC4: $40
    add b                                         ; $5FC5: $80
    ldh [rLCDC], a                                ; $5FC6: $E0 $40
    ld h, b                                       ; $5FC8: $60
    add b                                         ; $5FC9: $80
    ldh [rLCDC], a                                ; $5FCA: $E0 $40
    ldh a, [$FF80]                                ; $5FCC: $F0 $80
    add sp, $50                                   ; $5FCE: $E8 $50
    ld hl, sp+$40                                 ; $5FD0: $F8 $40
    db $FC                                        ; $5FD2: $FC
    jr c, @-$02                                   ; $5FD3: $38 $FC

    ld hl, sp-$04                                 ; $5FD5: $F8 $FC
    ld hl, sp-$04                                 ; $5FD7: $F8 $FC
    ld hl, sp-$04                                 ; $5FD9: $F8 $FC
    ld a, b                                       ; $5FDB: $78
    ld hl, sp-$50                                 ; $5FDC: $F8 $B0
    ld hl, sp+$40                                 ; $5FDE: $F8 $40
    adc a                                         ; $5FE0: $8F
    rlca                                          ; $5FE1: $07
    rrca                                          ; $5FE2: $0F
    ld bc, $0E11                                  ; $5FE3: $01 $11 $0E
    ld de, $110E                                  ; $5FE6: $11 $0E $11

jr_00C_5FE9:
    ld c, $3B                                     ; $5FE9: $0E $3B
    dec b                                         ; $5FEB: $05
    ld a, a                                       ; $5FEC: $7F
    ld hl, $347F                                  ; $5FED: $21 $7F $34
    ld a, [hl]                                    ; $5FF0: $7E
    cpl                                           ; $5FF1: $2F
    ccf                                           ; $5FF2: $3F
    ld c, $3F                                     ; $5FF3: $0E $3F
    ld e, $3E                                     ; $5FF5: $1E $3E
    inc e                                         ; $5FF7: $1C
    ld a, $1C                                     ; $5FF8: $3E $1C
    ld a, h                                       ; $5FFA: $7C
    nop                                           ; $5FFB: $00
    db $E4                                        ; $5FFC: $E4
    jr jr_00C_5FE9                                ; $5FFD: $18 $EA

    inc d                                         ; $5FFF: $14
    di                                            ; $6000: $F3
    ldh [rIE], a                                  ; $6001: $E0 $FF
    db $E3                                        ; $6003: $E3
    rst RST_28                                    ; $6004: $EF
    db $10                                        ; $6005: $10
    ld b, a                                       ; $6006: $47
    ld a, [hl-]                                   ; $6007: $3A
    ld b, a                                       ; $6008: $47
    jr c, jr_00C_5FBA                             ; $6009: $38 $AF

    db $10                                        ; $600B: $10
    cp a                                          ; $600C: $BF
    inc b                                         ; $600D: $04
    xor a                                         ; $600E: $AF
    inc d                                         ; $600F: $14
    and a                                         ; $6010: $A7
    ld a, [de]                                    ; $6011: $1A
    rla                                           ; $6012: $17
    ld c, $17                                     ; $6013: $0E $17
    ld c, $0B                                     ; $6015: $0E $0B
    ld b, $0F                                     ; $6017: $06 $0F
    nop                                           ; $6019: $00
    inc c                                         ; $601A: $0C
    inc bc                                        ; $601B: $03
    inc e                                         ; $601C: $1C
    inc bc                                        ; $601D: $03
    rra                                           ; $601E: $1F
    nop                                           ; $601F: $00
    ld hl, sp+$70                                 ; $6020: $F8 $70
    ld hl, sp-$70                                 ; $6022: $F8 $90
    ldh a, [$FFA0]                                ; $6024: $F0 $A0
    ldh [rP1], a                                  ; $6026: $E0 $00
    nop                                           ; $6028: $00
    nop                                           ; $6029: $00
    nop                                           ; $602A: $00
    nop                                           ; $602B: $00
    nop                                           ; $602C: $00
    nop                                           ; $602D: $00
    nop                                           ; $602E: $00
    nop                                           ; $602F: $00
    nop                                           ; $6030: $00
    nop                                           ; $6031: $00
    nop                                           ; $6032: $00
    nop                                           ; $6033: $00
    nop                                           ; $6034: $00
    nop                                           ; $6035: $00
    add b                                         ; $6036: $80
    nop                                           ; $6037: $00
    add b                                         ; $6038: $80
    nop                                           ; $6039: $00
    add b                                         ; $603A: $80
    nop                                           ; $603B: $00
    nop                                           ; $603C: $00
    nop                                           ; $603D: $00
    nop                                           ; $603E: $00
    nop                                           ; $603F: $00
    ccf                                           ; $6040: $3F
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
    ld bc, $0200                                  ; $605A: $01 $00 $02
    ld bc, $0003                                  ; $605D: $01 $03 $00
    cp $00                                        ; $6060: $FE $00
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
    nop                                           ; $6084: $00
    nop                                           ; $6085: $00
    nop                                           ; $6086: $00
    nop                                           ; $6087: $00
    nop                                           ; $6088: $00
    nop                                           ; $6089: $00
    rlca                                          ; $608A: $07
    nop                                           ; $608B: $00
    ld c, $01                                     ; $608C: $0E $01
    adc a                                         ; $608E: $8F
    nop                                           ; $608F: $00
    or b                                          ; $6090: $B0
    nop                                           ; $6091: $00
    pop af                                        ; $6092: $F1
    jr nz, @+$01                                  ; $6093: $20 $FF

    jr nz, @-$01                                  ; $6095: $20 $FD

    ld h, d                                       ; $6097: $62
    rst RST_20                                    ; $6098: $E7
    ret c                                         ; $6099: $D8

    push hl                                       ; $609A: $E5
    jp c, Jump_000_18E7                           ; $609B: $DA $E7 $18

    dec h                                         ; $609E: $25
    ld a, [de]                                    ; $609F: $1A
    nop                                           ; $60A0: $00
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
    inc bc                                        ; $60B0: $03
    nop                                           ; $60B1: $00
    inc bc                                        ; $60B2: $03
    ld bc, $0103                                  ; $60B3: $01 $03 $01
    inc bc                                        ; $60B6: $03
    ld bc, $0103                                  ; $60B7: $01 $03 $01
    inc bc                                        ; $60BA: $03
    ld bc, $0103                                  ; $60BB: $01 $03 $01
    ld bc, $0600                                  ; $60BE: $01 $00 $06
    nop                                           ; $60C1: $00
    add hl, bc                                    ; $60C2: $09
    ld b, $1E                                     ; $60C3: $06 $1E
    ld bc, $001F                                  ; $60C5: $01 $1F $00
    ccf                                           ; $60C8: $3F
    jr jr_00C_610A                                ; $60C9: $18 $3F

    ld e, $3F                                     ; $60CB: $1E $3F
    ld e, $7D                                     ; $60CD: $1E $7D
    ld a, $6D                                     ; $60CF: $3E $6D
    ld a, $69                                     ; $60D1: $3E $69
    ld a, $49                                     ; $60D3: $3E $49
    ld a, $81                                     ; $60D5: $3E $81
    ld a, [hl]                                    ; $60D7: $7E
    add c                                         ; $60D8: $81
    ld a, [hl]                                    ; $60D9: $7E
    sub c                                         ; $60DA: $91
    ld a, [hl]                                    ; $60DB: $7E
    sub c                                         ; $60DC: $91
    ld a, a                                       ; $60DD: $7F
    sub c                                         ; $60DE: $91
    ld a, a                                       ; $60DF: $7F
    sbc c                                         ; $60E0: $99
    ld a, a                                       ; $60E1: $7F
    sbc c                                         ; $60E2: $99
    ld a, a                                       ; $60E3: $7F
    sbc l                                         ; $60E4: $9D
    ld a, a                                       ; $60E5: $7F
    sbc h                                         ; $60E6: $9C
    ld a, a                                       ; $60E7: $7F
    sbc $7F                                       ; $60E8: $DE $7F
    adc $7F                                       ; $60EA: $CE $7F
    rst RST_08                                    ; $60EC: $CF
    ld a, a                                       ; $60ED: $7F
    rst RST_28                                    ; $60EE: $EF
    ld a, a                                       ; $60EF: $7F
    rst RST_28                                    ; $60F0: $EF
    ld a, a                                       ; $60F1: $7F
    rst RST_30                                    ; $60F2: $F7
    ld a, a                                       ; $60F3: $7F
    rst RST_38                                    ; $60F4: $FF
    ld a, a                                       ; $60F5: $7F
    ld a, a                                       ; $60F6: $7F
    ccf                                           ; $60F7: $3F
    ld a, a                                       ; $60F8: $7F
    ccf                                           ; $60F9: $3F
    ld a, a                                       ; $60FA: $7F
    ccf                                           ; $60FB: $3F
    ccf                                           ; $60FC: $3F
    rra                                           ; $60FD: $1F
    ccf                                           ; $60FE: $3F
    rra                                           ; $60FF: $1F
    rst RST_00                                    ; $6100: $C7
    nop                                           ; $6101: $00
    and a                                         ; $6102: $A7
    ld b, d                                       ; $6103: $42
    rst RST_10                                    ; $6104: $D7
    and d                                         ; $6105: $A2
    rst RST_08                                    ; $6106: $CF
    or d                                          ; $6107: $B2
    rst RST_00                                    ; $6108: $C7
    cp b                                          ; $6109: $B8

jr_00C_610A:
    rst RST_20                                    ; $610A: $E7
    ret c                                         ; $610B: $D8

    add sp, -$29                                  ; $610C: $E8 $D7
    ldh a, [$FFCF]                                ; $610E: $F0 $CF
    ldh a, [$FFEF]                                ; $6110: $F0 $EF
    ldh a, [$FFEF]                                ; $6112: $F0 $EF
    ei                                            ; $6114: $FB
    db $E4                                        ; $6115: $E4
    db $FC                                        ; $6116: $FC
    di                                            ; $6117: $F3
    db $FC                                        ; $6118: $FC
    di                                            ; $6119: $F3
    db $FC                                        ; $611A: $FC
    db $DB                                        ; $611B: $DB
    rst RST_38                                    ; $611C: $FF
    ret z                                         ; $611D: $C8

    rst RST_38                                    ; $611E: $FF
    push hl                                       ; $611F: $E5
    ccf                                           ; $6120: $3F
    dec e                                         ; $6121: $1D
    rra                                           ; $6122: $1F
    inc c                                         ; $6123: $0C
    ld e, $0C                                     ; $6124: $1E $0C
    ld c, $04                                     ; $6126: $0E $04
    rlca                                          ; $6128: $07
    ld [bc], a                                    ; $6129: $02
    inc bc                                        ; $612A: $03
    nop                                           ; $612B: $00
    nop                                           ; $612C: $00
    nop                                           ; $612D: $00
    nop                                           ; $612E: $00
    nop                                           ; $612F: $00
    nop                                           ; $6130: $00
    nop                                           ; $6131: $00
    nop                                           ; $6132: $00
    nop                                           ; $6133: $00
    nop                                           ; $6134: $00
    nop                                           ; $6135: $00
    nop                                           ; $6136: $00
    nop                                           ; $6137: $00
    nop                                           ; $6138: $00
    nop                                           ; $6139: $00
    ld bc, $0200                                  ; $613A: $01 $00 $02
    ld bc, $0003                                  ; $613D: $01 $03 $00
    rst RST_38                                    ; $6140: $FF
    ldh [c], a                                    ; $6141: $E2
    ei                                            ; $6142: $FB
    db $F4                                        ; $6143: $F4
    ld sp, hl                                     ; $6144: $F9
    halt                                          ; $6145: $76
    ld a, l                                       ; $6146: $7D

jr_00C_6147:
    ld a, [hl-]                                   ; $6147: $3A
    ccf                                           ; $6148: $3F
    dec c                                         ; $6149: $0D
    ld a, a                                       ; $614A: $7F
    ld hl, $347F                                  ; $614B: $21 $7F $34
    ld a, [hl]                                    ; $614E: $7E
    cpl                                           ; $614F: $2F
    ccf                                           ; $6150: $3F
    ld c, $3F                                     ; $6151: $0E $3F
    ld e, $3E                                     ; $6153: $1E $3E
    inc e                                         ; $6155: $1C
    ld a, $1C                                     ; $6156: $3E $1C
    ld a, h                                       ; $6158: $7C
    nop                                           ; $6159: $00
    db $E4                                        ; $615A: $E4
    jr jr_00C_6147                                ; $615B: $18 $EA

    inc d                                         ; $615D: $14
    cp $00                                        ; $615E: $FE $00
    nop                                           ; $6160: $00
    nop                                           ; $6161: $00
    nop                                           ; $6162: $00
    nop                                           ; $6163: $00
    add b                                         ; $6164: $80
    nop                                           ; $6165: $00
    add b                                         ; $6166: $80
    nop                                           ; $6167: $00
    nop                                           ; $6168: $00
    nop                                           ; $6169: $00
    nop                                           ; $616A: $00
    nop                                           ; $616B: $00
    nop                                           ; $616C: $00
    nop                                           ; $616D: $00
    nop                                           ; $616E: $00
    nop                                           ; $616F: $00
    ret nz                                        ; $6170: $C0

    nop                                           ; $6171: $00
    ret nz                                        ; $6172: $C0

    add b                                         ; $6173: $80
    ret nz                                        ; $6174: $C0

    add b                                         ; $6175: $80
    add b                                         ; $6176: $80
    nop                                           ; $6177: $00

jr_00C_6178:
    nop                                           ; $6178: $00
    nop                                           ; $6179: $00
    nop                                           ; $617A: $00
    nop                                           ; $617B: $00
    add b                                         ; $617C: $80
    nop                                           ; $617D: $00
    add b                                         ; $617E: $80
    nop                                           ; $617F: $00
    inc e                                         ; $6180: $1C
    nop                                           ; $6181: $00
    cp $00                                        ; $6182: $FE $00
    cp l                                          ; $6184: $BD
    ld c, [hl]                                    ; $6185: $4E
    cp [hl]                                       ; $6186: $BE
    ld b, c                                       ; $6187: $41
    ld sp, hl                                     ; $6188: $F9
    ld c, $1E                                     ; $6189: $0E $1E
    pop hl                                        ; $618B: $E1
    call Call_000_3E36                            ; $618C: $CD $36 $3E
    pop bc                                        ; $618F: $C1
    ld c, l                                       ; $6190: $4D
    or [hl]                                       ; $6191: $B6
    ld b, [hl]                                    ; $6192: $46
    cp c                                          ; $6193: $B9
    db $ED                                        ; $6194: $ED
    ld [de], a                                    ; $6195: $12
    rra                                           ; $6196: $1F
    push hl                                       ; $6197: $E5
    rrca                                          ; $6198: $0F

jr_00C_6199:
    ldh a, [c]                                    ; $6199: $F2
    ld [de], a                                    ; $619A: $12
    pop hl                                        ; $619B: $E1
    ldh a, [c]                                    ; $619C: $F2
    ld bc, $E0F1                                  ; $619D: $01 $F1 $E0
    nop                                           ; $61A0: $00
    nop                                           ; $61A1: $00
    nop                                           ; $61A2: $00
    nop                                           ; $61A3: $00
    add b                                         ; $61A4: $80
    nop                                           ; $61A5: $00
    ret nz                                        ; $61A6: $C0

    add b                                         ; $61A7: $80
    and b                                         ; $61A8: $A0
    ld b, b                                       ; $61A9: $40
    or b                                          ; $61AA: $B0
    ld b, b                                       ; $61AB: $40
    ldh a, [$FFA0]                                ; $61AC: $F0 $A0
    ret z                                         ; $61AE: $C8

    jr nc, jr_00C_6199                            ; $61AF: $30 $E8

    sub b                                         ; $61B1: $90
    ld hl, sp+$00                                 ; $61B2: $F8 $00
    db $FC                                        ; $61B4: $FC
    ld a, b                                       ; $61B5: $78
    db $FC                                        ; $61B6: $FC
    jr jr_00C_6215                                ; $61B7: $18 $5C

    and b                                         ; $61B9: $A0
    call nz, $8838                                ; $61BA: $C4 $38 $88
    ld [hl], b                                    ; $61BD: $70
    ldh a, [rP1]                                  ; $61BE: $F0 $00
    db $FC                                        ; $61C0: $FC
    ldh [$FFEC], a                                ; $61C1: $E0 $EC
    db $10                                        ; $61C3: $10
    ld b, h                                       ; $61C4: $44
    jr c, jr_00C_620B                             ; $61C5: $38 $44

    jr c, jr_00C_6178                             ; $61C7: $38 $AF

    db $10                                        ; $61C9: $10
    cp a                                          ; $61CA: $BF
    inc b                                         ; $61CB: $04
    xor a                                         ; $61CC: $AF
    inc d                                         ; $61CD: $14
    and a                                         ; $61CE: $A7
    ld a, [de]                                    ; $61CF: $1A
    rla                                           ; $61D0: $17
    ld c, $17                                     ; $61D1: $0E $17
    ld c, $0B                                     ; $61D3: $0E $0B
    ld b, $0F                                     ; $61D5: $06 $0F
    nop                                           ; $61D7: $00
    inc c                                         ; $61D8: $0C
    inc bc                                        ; $61D9: $03
    inc e                                         ; $61DA: $1C
    inc bc                                        ; $61DB: $03
    rra                                           ; $61DC: $1F
    nop                                           ; $61DD: $00
    nop                                           ; $61DE: $00
    nop                                           ; $61DF: $00
    add b                                         ; $61E0: $80
    nop                                           ; $61E1: $00
    add b                                         ; $61E2: $80
    nop                                           ; $61E3: $00
    add b                                         ; $61E4: $80
    nop                                           ; $61E5: $00
    nop                                           ; $61E6: $00
    nop                                           ; $61E7: $00
    nop                                           ; $61E8: $00
    nop                                           ; $61E9: $00
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
    nop                                           ; $61FA: $00
    nop                                           ; $61FB: $00
    nop                                           ; $61FC: $00
    nop                                           ; $61FD: $00
    nop                                           ; $61FE: $00
    nop                                           ; $61FF: $00
    ld b, e                                       ; $6200: $43
    inc a                                         ; $6201: $3C
    ld b, e                                       ; $6202: $43
    dec a                                         ; $6203: $3D
    ld b, e                                       ; $6204: $43
    inc a                                         ; $6205: $3C
    ld b, a                                       ; $6206: $47
    jr c, jr_00C_6250                             ; $6207: $38 $47

    add hl, sp                                    ; $6209: $39
    ld b, a                                       ; $620A: $47

jr_00C_620B:
    jr c, jr_00C_6254                             ; $620B: $38 $47

    ld a, [hl-]                                   ; $620D: $3A
    ld a, a                                       ; $620E: $7F
    rlca                                          ; $620F: $07
    ld a, a                                       ; $6210: $7F
    ccf                                           ; $6211: $3F
    ccf                                           ; $6212: $3F
    ld e, $3E                                     ; $6213: $1E $3E

jr_00C_6215:
    dec e                                         ; $6215: $1D
    ld e, $0D                                     ; $6216: $1E $0D
    rra                                           ; $6218: $1F
    ld [$020F], sp                                ; $6219: $08 $0F $02
    inc bc                                        ; $621C: $03
    ld bc, $0001                                  ; $621D: $01 $01 $00
    nop                                           ; $6220: $00
    nop                                           ; $6221: $00
    nop                                           ; $6222: $00
    nop                                           ; $6223: $00
    nop                                           ; $6224: $00
    nop                                           ; $6225: $00
    nop                                           ; $6226: $00
    nop                                           ; $6227: $00
    nop                                           ; $6228: $00
    nop                                           ; $6229: $00
    nop                                           ; $622A: $00
    nop                                           ; $622B: $00
    nop                                           ; $622C: $00
    nop                                           ; $622D: $00
    nop                                           ; $622E: $00
    nop                                           ; $622F: $00
    nop                                           ; $6230: $00
    nop                                           ; $6231: $00
    ld b, $00                                     ; $6232: $06 $00
    add hl, bc                                    ; $6234: $09
    ld b, $1E                                     ; $6235: $06 $1E
    ld bc, $001F                                  ; $6237: $01 $1F $00
    daa                                           ; $623A: $27
    jr jr_00C_625E                                ; $623B: $18 $21

    ld e, $22                                     ; $623D: $1E $22
    inc e                                         ; $623F: $1C
    rst RST_00                                    ; $6240: $C7
    nop                                           ; $6241: $00
    daa                                           ; $6242: $27
    jp nz, $E217                                  ; $6243: $C2 $17 $E2

    rrca                                          ; $6246: $0F
    ldh a, [c]                                    ; $6247: $F2
    rlca                                          ; $6248: $07
    ld hl, sp-$79                                 ; $6249: $F8 $87
    ld a, b                                       ; $624B: $78
    adc b                                         ; $624C: $88
    ld [hl], a                                    ; $624D: $77
    ldh a, [rIF]                                  ; $624E: $F0 $0F

jr_00C_6250:
    ld d, b                                       ; $6250: $50
    cpl                                           ; $6251: $2F
    ld d, b                                       ; $6252: $50
    cpl                                           ; $6253: $2F

jr_00C_6254:
    dec hl                                        ; $6254: $2B
    inc d                                         ; $6255: $14
    inc l                                         ; $6256: $2C
    inc de                                        ; $6257: $13
    inc d                                         ; $6258: $14
    dec bc                                        ; $6259: $0B
    ld [$0F07], sp                                ; $625A: $08 $07 $0F
    nop                                           ; $625D: $00

jr_00C_625E:
    rrca                                          ; $625E: $0F
    rlca                                          ; $625F: $07
    rrca                                          ; $6260: $0F
    ld bc, $0E11                                  ; $6261: $01 $11 $0E
    ld de, $110E                                  ; $6264: $11 $0E $11

jr_00C_6267:
    ld c, $3B                                     ; $6267: $0E $3B
    dec b                                         ; $6269: $05
    ld a, a                                       ; $626A: $7F
    ld hl, $347F                                  ; $626B: $21 $7F $34
    ld a, [hl]                                    ; $626E: $7E
    cpl                                           ; $626F: $2F
    ccf                                           ; $6270: $3F
    ld c, $3F                                     ; $6271: $0E $3F
    ld e, $3E                                     ; $6273: $1E $3E
    inc e                                         ; $6275: $1C
    ld a, $1C                                     ; $6276: $3E $1C
    ld a, h                                       ; $6278: $7C
    nop                                           ; $6279: $00
    db $E4                                        ; $627A: $E4
    jr jr_00C_6267                                ; $627B: $18 $EA

    inc d                                         ; $627D: $14
    cp $00                                        ; $627E: $FE $00
    ld bc, $0200                                  ; $6280: $01 $00 $02
    ld bc, $0003                                  ; $6283: $01 $03 $00
    nop                                           ; $6286: $00
    nop                                           ; $6287: $00
    nop                                           ; $6288: $00
    nop                                           ; $6289: $00
    nop                                           ; $628A: $00
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
    rlca                                          ; $62AA: $07
    nop                                           ; $62AB: $00
    ld c, $01                                     ; $62AC: $0E $01
    rrca                                          ; $62AE: $0F
    nop                                           ; $62AF: $00
    rra                                           ; $62B0: $1F
    nop                                           ; $62B1: $00
    ld a, a                                       ; $62B2: $7F
    jr @+$01                                      ; $62B3: $18 $FF

    ld h, b                                       ; $62B5: $60
    db $FD                                        ; $62B6: $FD
    ld b, d                                       ; $62B7: $42
    rst RST_20                                    ; $62B8: $E7
    ld e, b                                       ; $62B9: $58
    push hl                                       ; $62BA: $E5
    ld e, d                                       ; $62BB: $5A
    rst RST_20                                    ; $62BC: $E7
    ld e, b                                       ; $62BD: $58
    ld h, l                                       ; $62BE: $65
    ld a, [de]                                    ; $62BF: $1A
    ld a, a                                       ; $62C0: $7F
    nop                                           ; $62C1: $00
    add b                                         ; $62C2: $80
    ld a, a                                       ; $62C3: $7F
    sub b                                         ; $62C4: $90
    ld l, a                                       ; $62C5: $6F
    sub c                                         ; $62C6: $91
    ld l, [hl]                                    ; $62C7: $6E
    cp h                                          ; $62C8: $BC
    ld b, e                                       ; $62C9: $43
    sub d                                         ; $62CA: $92
    ld l, l                                       ; $62CB: $6D
    sub d                                         ; $62CC: $92
    ld l, l                                       ; $62CD: $6D
    sub d                                         ; $62CE: $92
    ld l, l                                       ; $62CF: $6D
    and d                                         ; $62D0: $A2
    ld e, l                                       ; $62D1: $5D
    xor h                                         ; $62D2: $AC
    ld d, e                                       ; $62D3: $53
    add b                                         ; $62D4: $80
    ld a, a                                       ; $62D5: $7F
    ld h, c                                       ; $62D6: $61
    ld e, $11                                     ; $62D7: $1E $11
    ld c, $09                                     ; $62D9: $0E $09
    ld b, $05                                     ; $62DB: $06 $05
    ld [bc], a                                    ; $62DD: $02
    inc bc                                        ; $62DE: $03
    nop                                           ; $62DF: $00
    rst RST_38                                    ; $62E0: $FF
    nop                                           ; $62E1: $00
    nop                                           ; $62E2: $00
    rst RST_38                                    ; $62E3: $FF
    nop                                           ; $62E4: $00
    rst RST_38                                    ; $62E5: $FF
    nop                                           ; $62E6: $00
    rst RST_38                                    ; $62E7: $FF
    add b                                         ; $62E8: $80
    ld a, a                                       ; $62E9: $7F
    add b                                         ; $62EA: $80
    ld a, a                                       ; $62EB: $7F
    ld e, [hl]                                    ; $62EC: $5E

jr_00C_62ED:
    and c                                         ; $62ED: $A1
    ld b, c                                       ; $62EE: $41

jr_00C_62EF:
    cp [hl]                                       ; $62EF: $BE
    ld bc, $06FE                                  ; $62F0: $01 $FE $06
    ld sp, hl                                     ; $62F3: $F9
    nop                                           ; $62F4: $00
    rst RST_38                                    ; $62F5: $FF
    rst RST_38                                    ; $62F6: $FF
    nop                                           ; $62F7: $00
    nop                                           ; $62F8: $00
    nop                                           ; $62F9: $00
    nop                                           ; $62FA: $00
    nop                                           ; $62FB: $00
    nop                                           ; $62FC: $00
    nop                                           ; $62FD: $00
    nop                                           ; $62FE: $00
    nop                                           ; $62FF: $00
    rst RST_38                                    ; $6300: $FF
    nop                                           ; $6301: $00
    nop                                           ; $6302: $00
    rst RST_38                                    ; $6303: $FF
    db $10                                        ; $6304: $10
    rst RST_28                                    ; $6305: $EF
    db $10                                        ; $6306: $10
    rst RST_28                                    ; $6307: $EF
    ld a, b                                       ; $6308: $78
    add a                                         ; $6309: $87
    daa                                           ; $630A: $27
    ret c                                         ; $630B: $D8

    jr nz, jr_00C_62ED                            ; $630C: $20 $DF

    jr nz, jr_00C_62EF                            ; $630E: $20 $DF

    ld c, b                                       ; $6310: $48
    or a                                          ; $6311: $B7
    ld b, a                                       ; $6312: $47
    cp b                                          ; $6313: $B8
    nop                                           ; $6314: $00
    rst RST_38                                    ; $6315: $FF
    rst RST_38                                    ; $6316: $FF
    nop                                           ; $6317: $00
    nop                                           ; $6318: $00
    nop                                           ; $6319: $00
    nop                                           ; $631A: $00
    nop                                           ; $631B: $00
    nop                                           ; $631C: $00
    nop                                           ; $631D: $00
    nop                                           ; $631E: $00
    nop                                           ; $631F: $00
    rst RST_38                                    ; $6320: $FF
    nop                                           ; $6321: $00
    nop                                           ; $6322: $00
    rst RST_38                                    ; $6323: $FF
    ld a, $C1                                     ; $6324: $3E $C1
    dec b                                         ; $6326: $05
    ld a, [$E718]                                 ; $6327: $FA $18 $E7
    ld a, a                                       ; $632A: $7F
    add b                                         ; $632B: $80
    ld [$10F7], sp                                ; $632C: $08 $F7 $10
    rst RST_28                                    ; $632F: $EF
    db $10                                        ; $6330: $10

jr_00C_6331:
    rst RST_28                                    ; $6331: $EF
    ld c, $F1                                     ; $6332: $0E $F1
    nop                                           ; $6334: $00
    rst RST_38                                    ; $6335: $FF
    rst RST_38                                    ; $6336: $FF

jr_00C_6337:
    nop                                           ; $6337: $00
    nop                                           ; $6338: $00

jr_00C_6339:
    nop                                           ; $6339: $00
    nop                                           ; $633A: $00
    nop                                           ; $633B: $00
    nop                                           ; $633C: $00
    nop                                           ; $633D: $00
    nop                                           ; $633E: $00
    nop                                           ; $633F: $00
    rst RST_38                                    ; $6340: $FF
    nop                                           ; $6341: $00
    nop                                           ; $6342: $00
    rst RST_38                                    ; $6343: $FF
    jr @-$17                                      ; $6344: $18 $E7

    sbc b                                         ; $6346: $98
    ld h, a                                       ; $6347: $67
    jr jr_00C_6331                                ; $6348: $18 $E7

    jr @-$17                                      ; $634A: $18 $E7

    nop                                           ; $634C: $00
    rst RST_38                                    ; $634D: $FF
    jr jr_00C_6337                                ; $634E: $18 $E7

    jr jr_00C_6339                                ; $6350: $18 $E7

    nop                                           ; $6352: $00
    rst RST_38                                    ; $6353: $FF
    nop                                           ; $6354: $00
    rst RST_38                                    ; $6355: $FF
    rst RST_38                                    ; $6356: $FF
    nop                                           ; $6357: $00
    nop                                           ; $6358: $00
    nop                                           ; $6359: $00
    nop                                           ; $635A: $00
    nop                                           ; $635B: $00
    nop                                           ; $635C: $00
    nop                                           ; $635D: $00
    nop                                           ; $635E: $00
    nop                                           ; $635F: $00
    cp $00                                        ; $6360: $FE $00
    ld bc, $61FE                                  ; $6362: $01 $FE $61
    sbc [hl]                                      ; $6365: $9E
    ld h, c                                       ; $6366: $61
    sbc [hl]                                      ; $6367: $9E
    ld h, c                                       ; $6368: $61
    sbc [hl]                                      ; $6369: $9E
    ld h, c                                       ; $636A: $61
    sbc [hl]                                      ; $636B: $9E
    ld bc, $61FE                                  ; $636C: $01 $FE $61
    sbc [hl]                                      ; $636F: $9E
    ld h, c                                       ; $6370: $61
    sbc [hl]                                      ; $6371: $9E
    ld bc, $01FE                                  ; $6372: $01 $FE $01
    cp $FE                                        ; $6375: $FE $FE
    nop                                           ; $6377: $00
    nop                                           ; $6378: $00
    nop                                           ; $6379: $00
    nop                                           ; $637A: $00
    nop                                           ; $637B: $00
    nop                                           ; $637C: $00
    nop                                           ; $637D: $00
    nop                                           ; $637E: $00
    nop                                           ; $637F: $00
    ld bc, $0300                                  ; $6380: $01 $00 $03
    nop                                           ; $6383: $00
    inc bc                                        ; $6384: $03
    nop                                           ; $6385: $00
    rlca                                          ; $6386: $07
    nop                                           ; $6387: $00
    rra                                           ; $6388: $1F
    ld b, $3F                                     ; $6389: $06 $3F
    jr jr_00C_63CC                                ; $638B: $18 $3F

    db $10                                        ; $638D: $10
    add hl, sp                                    ; $638E: $39
    ld d, $39                                     ; $638F: $16 $39
    ld d, $39                                     ; $6391: $16 $39
    ld d, $19                                     ; $6393: $16 $19
    ld b, $0F                                     ; $6395: $06 $0F
    nop                                           ; $6397: $00
    nop                                           ; $6398: $00
    nop                                           ; $6399: $00
    nop                                           ; $639A: $00
    nop                                           ; $639B: $00
    nop                                           ; $639C: $00
    nop                                           ; $639D: $00
    nop                                           ; $639E: $00
    nop                                           ; $639F: $00
    inc bc                                        ; $63A0: $03
    nop                                           ; $63A1: $00
    ld [bc], a                                    ; $63A2: $02
    ld bc, $0003                                  ; $63A3: $01 $03 $00
    rlca                                          ; $63A6: $07
    nop                                           ; $63A7: $00
    dec b                                         ; $63A8: $05
    ld [bc], a                                    ; $63A9: $02
    ccf                                           ; $63AA: $3F
    ld bc, $3EC1                                  ; $63AB: $01 $C1 $3E
    add b                                         ; $63AE: $80
    ld a, a                                       ; $63AF: $7F
    pop hl                                        ; $63B0: $E1
    ld e, $FD                                     ; $63B1: $1E $FD
    ld [bc], a                                    ; $63B3: $02
    cp $19                                        ; $63B4: $FE $19
    cp $39                                        ; $63B6: $FE $39
    ld a, l                                       ; $63B8: $7D
    sub d                                         ; $63B9: $92
    rst RST_30                                    ; $63BA: $F7
    jr nz, jr_00C_6431                            ; $63BB: $20 $74

    and e                                         ; $63BD: $A3
    rst RST_30                                    ; $63BE: $F7
    jr nz, @+$01                                  ; $63BF: $20 $FF

    nop                                           ; $63C1: $00
    cp [hl]                                       ; $63C2: $BE
    ld c, e                                       ; $63C3: $4B
    cp a                                          ; $63C4: $BF
    ld c, b                                       ; $63C5: $48
    ld a, a                                       ; $63C6: $7F
    sub e                                         ; $63C7: $93
    ei                                            ; $63C8: $FB
    inc d                                         ; $63C9: $14
    db $EB                                        ; $63CA: $EB
    or l                                          ; $63CB: $B5

jr_00C_63CC:
    rst RST_38                                    ; $63CC: $FF
    jr nz, @-$1B                                  ; $63CD: $20 $E3

    dec e                                         ; $63CF: $1D
    rra                                           ; $63D0: $1F
    ldh [$FF09], a                                ; $63D1: $E0 $09
    or $09                                        ; $63D3: $F6 $09
    or $08                                        ; $63D5: $F6 $08
    rst RST_30                                    ; $63D7: $F7
    inc a                                         ; $63D8: $3C
    jp Jump_000_3CC3                              ; $63D9: $C3 $C3 $3C


    add d                                         ; $63DC: $82
    ld a, h                                       ; $63DD: $7C
    db $FC                                        ; $63DE: $FC
    nop                                           ; $63DF: $00
    nop                                           ; $63E0: $00
    nop                                           ; $63E1: $00
    ret nz                                        ; $63E2: $C0

    nop                                           ; $63E3: $00
    and b                                         ; $63E4: $A0
    ld b, b                                       ; $63E5: $40
    ld [hl], b                                    ; $63E6: $70
    add b                                         ; $63E7: $80
    sub b                                         ; $63E8: $90
    ld h, b                                       ; $63E9: $60
    ld a, b                                       ; $63EA: $78
    sub b                                         ; $63EB: $90
    sbc b                                         ; $63EC: $98
    ld h, b                                       ; $63ED: $60
    ld hl, sp-$70                                 ; $63EE: $F8 $90
    db $FC                                        ; $63F0: $FC
    ld h, b                                       ; $63F1: $60
    ld a, [$FE94]                                 ; $63F2: $FA $94 $FE
    ld d, b                                       ; $63F5: $50
    rst RST_38                                    ; $63F6: $FF
    ld c, $FF                                     ; $63F7: $0E $FF
    ld a, $7F                                     ; $63F9: $3E $7F
    ld a, $7F                                     ; $63FB: $3E $7F
    ld a, $FF                                     ; $63FD: $3E $FF
    ld e, $63                                     ; $63FF: $1E $63
    add c                                         ; $6401: $81
    jp Jump_000_0400                              ; $6402: $C3 $00 $04


    inc bc                                        ; $6405: $03
    inc b                                         ; $6406: $04
    inc bc                                        ; $6407: $03
    inc b                                         ; $6408: $04
    inc bc                                        ; $6409: $03
    ld c, $01                                     ; $640A: $0E $01
    rra                                           ; $640C: $1F
    ld [$0D1F], sp                                ; $640D: $08 $1F $0D
    rra                                           ; $6410: $1F
    dec bc                                        ; $6411: $0B
    rrca                                          ; $6412: $0F
    inc bc                                        ; $6413: $03
    rrca                                          ; $6414: $0F
    rlca                                          ; $6415: $07
    rrca                                          ; $6416: $0F
    rlca                                          ; $6417: $07
    rrca                                          ; $6418: $0F
    rlca                                          ; $6419: $07
    rra                                           ; $641A: $1F
    nop                                           ; $641B: $00

jr_00C_641C:
    ld a, c                                       ; $641C: $79
    ld b, $BA                                     ; $641D: $06 $BA
    ld b, l                                       ; $641F: $45
    db $FC                                        ; $6420: $FC
    ld hl, sp-$01                                 ; $6421: $F8 $FF
    ld a, b                                       ; $6423: $78
    ld a, e                                       ; $6424: $7B
    add h                                         ; $6425: $84
    ld d, c                                       ; $6426: $51
    adc [hl]                                      ; $6427: $8E
    ld d, c                                       ; $6428: $51
    adc [hl]                                      ; $6429: $8E
    db $EB                                        ; $642A: $EB
    ld b, h                                       ; $642B: $44
    rst RST_28                                    ; $642C: $EF
    ld b, c                                       ; $642D: $41
    db $EB                                        ; $642E: $EB
    dec b                                         ; $642F: $05
    xor c                                         ; $6430: $A9

jr_00C_6431:
    add $C5                                       ; $6431: $C6 $C5
    add e                                         ; $6433: $83
    push bc                                       ; $6434: $C5
    add e                                         ; $6435: $83
    add d                                         ; $6436: $82
    ld bc, $0083                                  ; $6437: $01 $83 $00
    inc bc                                        ; $643A: $03
    nop                                           ; $643B: $00
    rlca                                          ; $643C: $07
    nop                                           ; $643D: $00
    add a                                         ; $643E: $87
    nop                                           ; $643F: $00
    cp $2C                                        ; $6440: $FE $2C
    cp $D0                                        ; $6442: $FE $D0
    cp $1C                                        ; $6444: $FE $1C
    cp $A4                                        ; $6446: $FE $A4
    db $FC                                        ; $6448: $FC
    jr z, @-$06                                   ; $6449: $28 $F8

    nop                                           ; $644B: $00
    ret nz                                        ; $644C: $C0

    nop                                           ; $644D: $00
    ret nz                                        ; $644E: $C0

    nop                                           ; $644F: $00
    ret nz                                        ; $6450: $C0

    add b                                         ; $6451: $80
    ret nz                                        ; $6452: $C0

    add b                                         ; $6453: $80
    ret nz                                        ; $6454: $C0

    add b                                         ; $6455: $80
    ret nz                                        ; $6456: $C0

    add b                                         ; $6457: $80
    ret nz                                        ; $6458: $C0

    nop                                           ; $6459: $00
    jr nz, jr_00C_641C                            ; $645A: $20 $C0

    jr nz, @-$3E                                  ; $645C: $20 $C0

    ldh [rP1], a                                  ; $645E: $E0 $00
    rst RST_38                                    ; $6460: $FF
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
    nop                                           ; $647A: $00
    nop                                           ; $647B: $00
    nop                                           ; $647C: $00
    nop                                           ; $647D: $00
    nop                                           ; $647E: $00
    nop                                           ; $647F: $00
    add b                                         ; $6480: $80
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
    ld bc, $0300                                  ; $64A4: $01 $00 $03
    ld bc, $0003                                  ; $64A7: $01 $03 $00
    rlca                                          ; $64AA: $07
    ld [bc], a                                    ; $64AB: $02
    rlca                                          ; $64AC: $07
    ld [bc], a                                    ; $64AD: $02
    rlca                                          ; $64AE: $07
    ld [bc], a                                    ; $64AF: $02
    rlca                                          ; $64B0: $07
    ld [bc], a                                    ; $64B1: $02
    inc bc                                        ; $64B2: $03
    nop                                           ; $64B3: $00
    ld [bc], a                                    ; $64B4: $02
    ld bc, $0102                                  ; $64B5: $01 $02 $01
    ld bc, $0100                                  ; $64B8: $01 $00 $01
    nop                                           ; $64BB: $00
    ld bc, $0100                                  ; $64BC: $01 $00 $01
    nop                                           ; $64BF: $00
    nop                                           ; $64C0: $00
    nop                                           ; $64C1: $00
    nop                                           ; $64C2: $00
    nop                                           ; $64C3: $00
    inc bc                                        ; $64C4: $03
    nop                                           ; $64C5: $00
    inc e                                         ; $64C6: $1C
    inc bc                                        ; $64C7: $03
    ld a, b                                       ; $64C8: $78
    rla                                           ; $64C9: $17
    cp $69                                        ; $64CA: $FE $69
    rst RST_38                                    ; $64CC: $FF
    ld e, d                                       ; $64CD: $5A
    rst RST_38                                    ; $64CE: $FF
    ld d, [hl]                                    ; $64CF: $56
    rst RST_38                                    ; $64D0: $FF
    or l                                          ; $64D1: $B5
    rst RST_38                                    ; $64D2: $FF
    xor l                                         ; $64D3: $AD
    rst RST_38                                    ; $64D4: $FF
    xor d                                         ; $64D5: $AA
    rst RST_38                                    ; $64D6: $FF
    add hl, de                                    ; $64D7: $19
    ccf                                           ; $64D8: $3F
    call nz, Call_00C_73EF                        ; $64D9: $C4 $EF $73
    rra                                           ; $64DC: $1F
    db $EC                                        ; $64DD: $EC
    ccf                                           ; $64DE: $3F
    ret nz                                        ; $64DF: $C0

    rlca                                          ; $64E0: $07
    nop                                           ; $64E1: $00
    ld [$D007], sp                                ; $64E2: $08 $07 $D0
    rrca                                          ; $64E5: $0F
    ldh [$FFDF], a                                ; $64E6: $E0 $DF
    ldh [$FF5F], a                                ; $64E8: $E0 $5F
    ld h, c                                       ; $64EA: $61
    sbc [hl]                                      ; $64EB: $9E
    ld sp, hl                                     ; $64EC: $F9
    ld b, [hl]                                    ; $64ED: $46
    db $FD                                        ; $64EE: $FD
    ld b, d                                       ; $64EF: $42
    rst RST_38                                    ; $64F0: $FF
    dec c                                         ; $64F1: $0D
    rst RST_30                                    ; $64F2: $F7
    sbc l                                         ; $64F3: $9D
    rst RST_38                                    ; $64F4: $FF
    inc l                                         ; $64F5: $2C
    rst RST_38                                    ; $64F6: $FF
    xor b                                         ; $64F7: $A8
    rst RST_38                                    ; $64F8: $FF
    and c                                         ; $64F9: $A1

jr_00C_64FA:
    rst RST_20                                    ; $64FA: $E7
    jr jr_00C_64FA                                ; $64FB: $18 $FD

    ld a, b                                       ; $64FD: $78
    db $FC                                        ; $64FE: $FC
    ldh a, [rP1]                                  ; $64FF: $F0 $00
    nop                                           ; $6501: $00
    add b                                         ; $6502: $80
    nop                                           ; $6503: $00
    ld b, b                                       ; $6504: $40
    add b                                         ; $6505: $80
    ld b, b                                       ; $6506: $40
    add b                                         ; $6507: $80
    add b                                         ; $6508: $80
    nop                                           ; $6509: $00
    ldh a, [rP1]                                  ; $650A: $F0 $00
    ld hl, sp-$30                                 ; $650C: $F8 $D0
    db $FC                                        ; $650E: $FC

jr_00C_650F:
    ret c                                         ; $650F: $D8

    db $FC                                        ; $6510: $FC
    jr c, jr_00C_650F                             ; $6511: $38 $FC

    ld hl, sp-$02                                 ; $6513: $F8 $FE
    ldh [$FFF6], a                                ; $6515: $E0 $F6
    inc e                                         ; $6517: $1C
    cp $A0                                        ; $6518: $FE $A0
    cp $A8                                        ; $651A: $FE $A8
    ld d, h                                       ; $651C: $54
    xor b                                         ; $651D: $A8
    ld hl, sp+$00                                 ; $651E: $F8 $00
    db $DD                                        ; $6520: $DD
    ld [hl+], a                                   ; $6521: $22
    or b                                          ; $6522: $B0
    ld c, a                                       ; $6523: $4F
    ldh a, [$FFAF]                                ; $6524: $F0 $AF
    rst RST_38                                    ; $6526: $FF
    ldh [$FFF2], a                                ; $6527: $E0 $F2
    ld c, h                                       ; $6529: $4C
    ld h, c                                       ; $652A: $61
    ld a, $61                                     ; $652B: $3E $61
    ld a, $31                                     ; $652D: $3E $31
    ld e, $1D                                     ; $652F: $1E $1D
    ld [bc], a                                    ; $6531: $02
    inc hl                                        ; $6532: $23
    inc e                                         ; $6533: $1C
    ld a, l                                       ; $6534: $7D
    ld [bc], a                                    ; $6535: $02
    db $FD                                        ; $6536: $FD
    ld [bc], a                                    ; $6537: $02
    ld c, [hl]                                    ; $6538: $4E
    or b                                          ; $6539: $B0
    ld hl, sp+$00                                 ; $653A: $F8 $00
    nop                                           ; $653C: $00
    nop                                           ; $653D: $00
    nop                                           ; $653E: $00
    nop                                           ; $653F: $00
    ldh a, [c]                                    ; $6540: $F2
    inc c                                         ; $6541: $0C
    pop hl                                        ; $6542: $E1
    sbc $FD                                       ; $6543: $DE $FD
    ld b, d                                       ; $6545: $42
    rst RST_38                                    ; $6546: $FF
    inc e                                         ; $6547: $1C
    ccf                                           ; $6548: $3F
    inc e                                         ; $6549: $1C
    ld a, a                                       ; $654A: $7F
    ld a, [de]                                    ; $654B: $1A
    ld e, a                                       ; $654C: $5F
    ld h, $4F                                     ; $654D: $26 $4F
    ld a, $2E                                     ; $654F: $3E $2E
    inc e                                         ; $6551: $1C
    ld l, $1C                                     ; $6552: $2E $1C
    ld a, $00                                     ; $6554: $3E $00
    ld [hl+], a                                   ; $6556: $22
    inc e                                         ; $6557: $1C
    ld a, $00                                     ; $6558: $3E $00
    ld a, [hl]                                    ; $655A: $7E
    nop                                           ; $655B: $00
    xor d                                         ; $655C: $AA
    ld d, h                                       ; $655D: $54
    cp $00                                        ; $655E: $FE $00
    ld bc, $0100                                  ; $6560: $01 $00 $01
    nop                                           ; $6563: $00
    nop                                           ; $6564: $00
    nop                                           ; $6565: $00
    nop                                           ; $6566: $00
    nop                                           ; $6567: $00
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

jr_00C_657E:
    nop                                           ; $657E: $00
    nop                                           ; $657F: $00
    nop                                           ; $6580: $00
    nop                                           ; $6581: $00
    nop                                           ; $6582: $00
    nop                                           ; $6583: $00
    nop                                           ; $6584: $00
    nop                                           ; $6585: $00
    nop                                           ; $6586: $00
    nop                                           ; $6587: $00
    nop                                           ; $6588: $00
    nop                                           ; $6589: $00
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
    nop                                           ; $6598: $00
    nop                                           ; $6599: $00
    rrca                                          ; $659A: $0F
    nop                                           ; $659B: $00
    inc sp                                        ; $659C: $33
    ld c, $6F                                     ; $659D: $0E $6F
    jr nc, jr_00C_65A1                            ; $659F: $30 $00

jr_00C_65A1:
    nop                                           ; $65A1: $00
    nop                                           ; $65A2: $00
    nop                                           ; $65A3: $00
    nop                                           ; $65A4: $00
    nop                                           ; $65A5: $00
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
    add b                                         ; $65B6: $80
    nop                                           ; $65B7: $00
    add b                                         ; $65B8: $80
    nop                                           ; $65B9: $00
    ld b, b                                       ; $65BA: $40
    add b                                         ; $65BB: $80
    jr nc, jr_00C_657E                            ; $65BC: $30 $C0

    inc c                                         ; $65BE: $0C
    ldh a, [rP1]                                  ; $65BF: $F0 $00
    nop                                           ; $65C1: $00
    ld bc, $0300                                  ; $65C2: $01 $00 $03
    ld bc, $0103                                  ; $65C5: $01 $03 $01
    inc b                                         ; $65C8: $04
    inc bc                                        ; $65C9: $03
    dec b                                         ; $65CA: $05
    ld [bc], a                                    ; $65CB: $02
    ld b, $01                                     ; $65CC: $06 $01
    ld [bc], a                                    ; $65CE: $02
    ld bc, $0003                                  ; $65CF: $01 $03 $00
    inc bc                                        ; $65D2: $03
    nop                                           ; $65D3: $00
    ld [bc], a                                    ; $65D4: $02
    ld bc, $0003                                  ; $65D5: $01 $03 $00
    ld [bc], a                                    ; $65D8: $02
    ld bc, $0102                                  ; $65D9: $01 $02 $01
    inc bc                                        ; $65DC: $03
    nop                                           ; $65DD: $00
    nop                                           ; $65DE: $00
    nop                                           ; $65DF: $00
    ld sp, hl                                     ; $65E0: $F9
    cpl                                           ; $65E1: $2F
    cp a                                          ; $65E2: $BF
    ld d, b                                       ; $65E3: $50
    inc a                                         ; $65E4: $3C
    rst RST_08                                    ; $65E5: $CF
    ld a, a                                       ; $65E6: $7F
    sub b                                         ; $65E7: $90
    ld a, a                                       ; $65E8: $7F
    xor a                                         ; $65E9: $AF
    rst RST_38                                    ; $65EA: $FF
    db $10                                        ; $65EB: $10
    ld a, a                                       ; $65EC: $7F
    add a                                         ; $65ED: $87
    rst RST_38                                    ; $65EE: $FF
    jr @+$01                                      ; $65EF: $18 $FF

    ld b, b                                       ; $65F1: $40
    rst RST_38                                    ; $65F2: $FF
    dec sp                                        ; $65F3: $3B
    rst RST_38                                    ; $65F4: $FF
    nop                                           ; $65F5: $00
    ret nz                                        ; $65F6: $C0

    ccf                                           ; $65F7: $3F
    ret nz                                        ; $65F8: $C0

    ccf                                           ; $65F9: $3F
    ldh [$FF1F], a                                ; $65FA: $E0 $1F
    rst RST_38                                    ; $65FC: $FF
    nop                                           ; $65FD: $00
    nop                                           ; $65FE: $00
    nop                                           ; $65FF: $00
    ld hl, sp+$00                                 ; $6600: $F8 $00
    add h                                         ; $6602: $84
    ld a, b                                       ; $6603: $78
    jp nz, $C1BC                                  ; $6604: $C2 $BC $C1

    ld a, $E1                                     ; $6607: $3E $E1
    sbc $C0                                       ; $6609: $DE $C0
    ccf                                           ; $660B: $3F
    add b                                         ; $660C: $80
    ld a, a                                       ; $660D: $7F
    ret nz                                        ; $660E: $C0

    ccf                                           ; $660F: $3F
    ldh a, [c]                                    ; $6610: $F2
    call Call_000_1DE2                            ; $6611: $CD $E2 $1D
    ldh [c], a                                    ; $6614: $E2
    dec e                                         ; $6615: $1D
    db $F4                                        ; $6616: $F4
    db $EB                                        ; $6617: $EB
    db $FC                                        ; $6618: $FC
    ld h, e                                       ; $6619: $63
    halt                                          ; $661A: $76
    and c                                         ; $661B: $A1
    ld [hl], a                                    ; $661C: $77
    and b                                         ; $661D: $A0
    ld [hl], l                                    ; $661E: $75
    and d                                         ; $661F: $A2
    ld [bc], a                                    ; $6620: $02
    db $FC                                        ; $6621: $FC
    ld bc, $01FE                                  ; $6622: $01 $FE $01
    cp $81                                        ; $6625: $FE $81
    ld a, [hl]                                    ; $6627: $7E
    ld bc, $01FE                                  ; $6628: $01 $FE $01
    cp $02                                        ; $662B: $FE $02
    db $FC                                        ; $662D: $FC
    rlca                                          ; $662E: $07
    ld hl, sp-$7F                                 ; $662F: $F8 $81
    ld a, [hl]                                    ; $6631: $7E
    ld [hl], c                                    ; $6632: $71
    adc [hl]                                      ; $6633: $8E
    add hl, hl                                    ; $6634: $29
    add $52                                       ; $6635: $C6 $52
    adc h                                         ; $6637: $8C
    cp h                                          ; $6638: $BC
    nop                                           ; $6639: $00
    db $FC                                        ; $663A: $FC
    nop                                           ; $663B: $00
    ld c, h                                       ; $663C: $4C
    or b                                          ; $663D: $B0
    ld hl, sp+$00                                 ; $663E: $F8 $00
    nop                                           ; $6640: $00
    nop                                           ; $6641: $00
    nop                                           ; $6642: $00
    nop                                           ; $6643: $00
    jr nz, jr_00C_6646                            ; $6644: $20 $00

jr_00C_6646:
    ld [hl], b                                    ; $6646: $70
    jr nz, jr_00C_66C1                            ; $6647: $20 $78

    jr nc, jr_00C_66C3                            ; $6649: $30 $78

    jr nc, jr_00C_6685                            ; $664B: $30 $38

    db $10                                        ; $664D: $10
    inc e                                         ; $664E: $1C
    ld [$040E], sp                                ; $664F: $08 $0E $04
    ld c, $04                                     ; $6652: $0E $04
    ld c, $04                                     ; $6654: $0E $04
    inc e                                         ; $6656: $1C
    ld [$089C], sp                                ; $6657: $08 $9C $08
    ld hl, sp-$70                                 ; $665A: $F8 $90
    ldh a, [$FF60]                                ; $665C: $F0 $60
    ld h, b                                       ; $665E: $60
    nop                                           ; $665F: $00
    push hl                                       ; $6660: $E5
    ld [bc], a                                    ; $6661: $02
    dec b                                         ; $6662: $05
    ld [bc], a                                    ; $6663: $02
    ld [bc], a                                    ; $6664: $02
    ld bc, $0001                                  ; $6665: $01 $01 $00
    ld bc, $0600                                  ; $6668: $01 $00 $06
    ld bc, $000F                                  ; $666B: $01 $0F $00
    inc de                                        ; $666E: $13
    inc c                                         ; $666F: $0C
    rra                                           ; $6670: $1F
    nop                                           ; $6671: $00
    ld bc, $0000                                  ; $6672: $01 $00 $00
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
    ld bc, $0300                                  ; $6680: $01 $00 $03
    nop                                           ; $6683: $00
    inc bc                                        ; $6684: $03

jr_00C_6685:
    nop                                           ; $6685: $00
    rlca                                          ; $6686: $07
    nop                                           ; $6687: $00
    rra                                           ; $6688: $1F
    ld b, $3F                                     ; $6689: $06 $3F
    jr jr_00C_66CC                                ; $668B: $18 $3F

    db $10                                        ; $668D: $10
    add hl, sp                                    ; $668E: $39
    ld d, $39                                     ; $668F: $16 $39
    ld d, $39                                     ; $6691: $16 $39
    ld d, $39                                     ; $6693: $16 $39
    ld d, $1F                                     ; $6695: $16 $1F
    nop                                           ; $6697: $00
    inc bc                                        ; $6698: $03
    ld bc, $0103                                  ; $6699: $01 $03 $01
    inc bc                                        ; $669C: $03
    ld bc, $0103                                  ; $669D: $01 $03 $01
    inc bc                                        ; $66A0: $03
    nop                                           ; $66A1: $00
    ld [bc], a                                    ; $66A2: $02
    ld bc, $0003                                  ; $66A3: $01 $03 $00
    rlca                                          ; $66A6: $07
    nop                                           ; $66A7: $00
    dec b                                         ; $66A8: $05
    ld [bc], a                                    ; $66A9: $02
    ccf                                           ; $66AA: $3F
    ld bc, $3EC1                                  ; $66AB: $01 $C1 $3E
    add b                                         ; $66AE: $80
    ld a, a                                       ; $66AF: $7F
    pop hl                                        ; $66B0: $E1
    ld e, $FD                                     ; $66B1: $1E $FD
    ld [bc], a                                    ; $66B3: $02
    cp $19                                        ; $66B4: $FE $19
    cp $39                                        ; $66B6: $FE $39
    ld a, l                                       ; $66B8: $7D
    sub d                                         ; $66B9: $92
    rst RST_30                                    ; $66BA: $F7
    jr nz, jr_00C_6731                            ; $66BB: $20 $74

    and e                                         ; $66BD: $A3
    rst RST_30                                    ; $66BE: $F7
    jr nz, @+$01                                  ; $66BF: $20 $FF

jr_00C_66C1:
    nop                                           ; $66C1: $00
    cp [hl]                                       ; $66C2: $BE

jr_00C_66C3:
    ld c, e                                       ; $66C3: $4B
    cp a                                          ; $66C4: $BF
    ld c, b                                       ; $66C5: $48
    ld a, a                                       ; $66C6: $7F
    sub e                                         ; $66C7: $93
    ei                                            ; $66C8: $FB
    inc d                                         ; $66C9: $14
    db $EB                                        ; $66CA: $EB
    or l                                          ; $66CB: $B5

jr_00C_66CC:
    rst RST_38                                    ; $66CC: $FF
    jr nz, @-$1B                                  ; $66CD: $20 $E3

    dec e                                         ; $66CF: $1D
    rra                                           ; $66D0: $1F
    ldh [$FF09], a                                ; $66D1: $E0 $09
    or $09                                        ; $66D3: $F6 $09
    or $08                                        ; $66D5: $F6 $08
    rst RST_30                                    ; $66D7: $F7
    inc a                                         ; $66D8: $3C
    jp Jump_000_3CC3                              ; $66D9: $C3 $C3 $3C


    add e                                         ; $66DC: $83
    ld a, l                                       ; $66DD: $7D
    rst RST_38                                    ; $66DE: $FF
    ld bc, $00C0                                  ; $66DF: $01 $C0 $00
    and b                                         ; $66E2: $A0
    ld b, b                                       ; $66E3: $40
    ld [hl], b                                    ; $66E4: $70
    add b                                         ; $66E5: $80
    sub b                                         ; $66E6: $90
    ld h, b                                       ; $66E7: $60
    ld a, b                                       ; $66E8: $78
    sub b                                         ; $66E9: $90
    sbc b                                         ; $66EA: $98
    ld h, b                                       ; $66EB: $60
    ld hl, sp-$70                                 ; $66EC: $F8 $90
    db $FC                                        ; $66EE: $FC
    ld h, b                                       ; $66EF: $60
    ld a, [$FE94]                                 ; $66F0: $FA $94 $FE
    ld d, b                                       ; $66F3: $50
    rst RST_38                                    ; $66F4: $FF
    ld c, $DF                                     ; $66F5: $0E $DF
    ld a, $DF                                     ; $66F7: $3E $DF
    cp [hl]                                       ; $66F9: $BE
    ld e, a                                       ; $66FA: $5F
    cp [hl]                                       ; $66FB: $BE
    rst RST_38                                    ; $66FC: $FF
    ld e, $DF                                     ; $66FD: $1E $DF
    inc l                                         ; $66FF: $2C
    inc bc                                        ; $6700: $03
    ld bc, $01C3                                  ; $6701: $01 $C3 $01
    di                                            ; $6704: $F3
    pop bc                                        ; $6705: $C1
    ccf                                           ; $6706: $3F
    pop af                                        ; $6707: $F1
    rrca                                          ; $6708: $0F
    db $FD                                        ; $6709: $FD
    inc bc                                        ; $670A: $03
    rst RST_38                                    ; $670B: $FF
    nop                                           ; $670C: $00
    rst RST_38                                    ; $670D: $FF
    nop                                           ; $670E: $00
    rst RST_38                                    ; $670F: $FF
    nop                                           ; $6710: $00
    rst RST_38                                    ; $6711: $FF
    add b                                         ; $6712: $80
    rst RST_38                                    ; $6713: $FF
    add b                                         ; $6714: $80
    rst RST_38                                    ; $6715: $FF
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
    ld h, e                                       ; $6720: $63
    add c                                         ; $6721: $81
    db $E3                                        ; $6722: $E3
    nop                                           ; $6723: $00
    inc [hl]                                      ; $6724: $34
    db $E3                                        ; $6725: $E3
    inc e                                         ; $6726: $1C
    di                                            ; $6727: $F3
    inc c                                         ; $6728: $0C
    ei                                            ; $6729: $FB
    ld c, $F1                                     ; $672A: $0E $F1
    rla                                           ; $672C: $17
    add sp, $12                                   ; $672D: $E8 $12
    db $ED                                        ; $672F: $ED
    inc d                                         ; $6730: $14

jr_00C_6731:
    db $EB                                        ; $6731: $EB
    inc c                                         ; $6732: $0C
    di                                            ; $6733: $F3
    ld [$00F7], sp                                ; $6734: $08 $F7 $00
    rst RST_38                                    ; $6737: $FF
    nop                                           ; $6738: $00
    rst RST_38                                    ; $6739: $FF
    ld bc, $00FE                                  ; $673A: $01 $FE $00
    rst RST_38                                    ; $673D: $FF
    nop                                           ; $673E: $00
    rst RST_38                                    ; $673F: $FF
    cp $FB                                        ; $6740: $FE $FB
    rst RST_38                                    ; $6742: $FF
    ld a, b                                       ; $6743: $78
    ld a, e                                       ; $6744: $7B
    add h                                         ; $6745: $84
    ld d, c                                       ; $6746: $51
    adc [hl]                                      ; $6747: $8E
    ld d, c                                       ; $6748: $51
    adc [hl]                                      ; $6749: $8E
    ei                                            ; $674A: $FB
    ld b, h                                       ; $674B: $44
    cp [hl]                                       ; $674C: $BE
    ld d, c                                       ; $674D: $51
    ld a, [$2915]                                 ; $674E: $FA $15 $29
    sub $44                                       ; $6751: $D6 $44
    cp e                                          ; $6753: $BB
    ld b, h                                       ; $6754: $44
    cp e                                          ; $6755: $BB
    add d                                         ; $6756: $82
    ld a, l                                       ; $6757: $7D
    add b                                         ; $6758: $80
    ld a, a                                       ; $6759: $7F
    nop                                           ; $675A: $00
    rst RST_38                                    ; $675B: $FF
    nop                                           ; $675C: $00
    rst RST_38                                    ; $675D: $FF
    nop                                           ; $675E: $00
    rst RST_38                                    ; $675F: $FF
    ccf                                           ; $6760: $3F
    ret nc                                        ; $6761: $D0

    rst RST_38                                    ; $6762: $FF
    inc e                                         ; $6763: $1C
    ld e, a                                       ; $6764: $5F
    and h                                         ; $6765: $A4
    rst RST_18                                    ; $6766: $DF
    ld a, [hl+]                                   ; $6767: $2A
    ei                                            ; $6768: $FB
    ld b, $FB                                     ; $6769: $06 $FB
    ld c, $F3                                     ; $676B: $0E $F3
    ld e, $73                                     ; $676D: $1E $73
    sbc [hl]                                      ; $676F: $9E
    ld h, e                                       ; $6770: $63
    cp [hl]                                       ; $6771: $BE
    ld b, e                                       ; $6772: $43
    cp a                                          ; $6773: $BF
    ld b, d                                       ; $6774: $42
    cp a                                          ; $6775: $BF
    ld b, b                                       ; $6776: $40
    cp a                                          ; $6777: $BF
    nop                                           ; $6778: $00
    rst RST_38                                    ; $6779: $FF
    nop                                           ; $677A: $00
    rst RST_38                                    ; $677B: $FF
    nop                                           ; $677C: $00
    rst RST_38                                    ; $677D: $FF
    nop                                           ; $677E: $00
    rst RST_38                                    ; $677F: $FF
    add b                                         ; $6780: $80
    nop                                           ; $6781: $00
    ld h, b                                       ; $6782: $60
    nop                                           ; $6783: $00
    ld a, b                                       ; $6784: $78
    jr nz, jr_00C_67C5                            ; $6785: $20 $3E

    jr @+$39                                      ; $6787: $18 $37

    ld e, $19                                     ; $6789: $1E $19
    rrca                                          ; $678B: $0F
    jr jr_00C_679D                                ; $678C: $18 $0F

    inc c                                         ; $678E: $0C
    rlca                                          ; $678F: $07
    inc c                                         ; $6790: $0C
    rlca                                          ; $6791: $07
    ld b, $03                                     ; $6792: $06 $03
    ld b, $03                                     ; $6794: $06 $03
    inc bc                                        ; $6796: $03
    ld bc, $0103                                  ; $6797: $01 $03 $01
    ld bc, $0100                                  ; $679A: $01 $00 $01

jr_00C_679D:
    nop                                           ; $679D: $00
    nop                                           ; $679E: $00
    nop                                           ; $679F: $00
    ld bc, $0300                                  ; $67A0: $01 $00 $03
    ld bc, $0306                                  ; $67A3: $01 $06 $03
    inc c                                         ; $67A6: $0C
    rlca                                          ; $67A7: $07
    add hl, de                                    ; $67A8: $19
    rrca                                          ; $67A9: $0F
    ld sp, $631F                                  ; $67AA: $31 $1F $63
    ld a, $C3                                     ; $67AD: $3E $C3
    ld a, [hl]                                    ; $67AF: $7E
    add [hl]                                      ; $67B0: $86
    db $FC                                        ; $67B1: $FC
    ld b, $FC                                     ; $67B2: $06 $FC
    inc c                                         ; $67B4: $0C
    ld hl, sp+$0C                                 ; $67B5: $F8 $0C
    ld hl, sp+$18                                 ; $67B7: $F8 $18
    ldh a, [rNR23]                                ; $67B9: $F0 $18
    ldh a, [$FF30]                                ; $67BB: $F0 $30
    ldh [$FF30], a                                ; $67BD: $E0 $30
    ldh [rP1], a                                  ; $67BF: $E0 $00
    nop                                           ; $67C1: $00
    nop                                           ; $67C2: $00

jr_00C_67C3:
    nop                                           ; $67C3: $00
    nop                                           ; $67C4: $00

jr_00C_67C5:
    nop                                           ; $67C5: $00
    ld [bc], a                                    ; $67C6: $02
    nop                                           ; $67C7: $00
    inc b                                         ; $67C8: $04
    nop                                           ; $67C9: $00
    inc c                                         ; $67CA: $0C
    nop                                           ; $67CB: $00
    jr jr_00C_67CE                                ; $67CC: $18 $00

jr_00C_67CE:
    jr c, jr_00C_67E0                             ; $67CE: $38 $10

    ld [hl], b                                    ; $67D0: $70
    jr nz, jr_00C_67C3                            ; $67D1: $20 $F0

    ld h, b                                       ; $67D3: $60
    ldh [$FFC0], a                                ; $67D4: $E0 $C0
    ld h, b                                       ; $67D6: $60
    ret nz                                        ; $67D7: $C0

    ret nz                                        ; $67D8: $C0

    add b                                         ; $67D9: $80
    ret nz                                        ; $67DA: $C0

    add b                                         ; $67DB: $80
    add b                                         ; $67DC: $80
    nop                                           ; $67DD: $00
    add b                                         ; $67DE: $80
    nop                                           ; $67DF: $00

jr_00C_67E0:
    nop                                           ; $67E0: $00
    rst RST_38                                    ; $67E1: $FF
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
    nop                                           ; $6800: $00
    rst RST_38                                    ; $6801: $FF
    nop                                           ; $6802: $00
    nop                                           ; $6803: $00
    nop                                           ; $6804: $00
    nop                                           ; $6805: $00
    nop                                           ; $6806: $00
    nop                                           ; $6807: $00
    nop                                           ; $6808: $00
    nop                                           ; $6809: $00
    nop                                           ; $680A: $00
    nop                                           ; $680B: $00
    nop                                           ; $680C: $00
    nop                                           ; $680D: $00
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
    nop                                           ; $6820: $00
    nop                                           ; $6821: $00
    nop                                           ; $6822: $00
    nop                                           ; $6823: $00
    nop                                           ; $6824: $00
    nop                                           ; $6825: $00
    nop                                           ; $6826: $00
    nop                                           ; $6827: $00
    nop                                           ; $6828: $00
    nop                                           ; $6829: $00
    nop                                           ; $682A: $00
    nop                                           ; $682B: $00
    nop                                           ; $682C: $00
    nop                                           ; $682D: $00
    nop                                           ; $682E: $00
    nop                                           ; $682F: $00
    nop                                           ; $6830: $00
    nop                                           ; $6831: $00
    nop                                           ; $6832: $00
    nop                                           ; $6833: $00
    ld bc, $0200                                  ; $6834: $01 $00 $02
    ld bc, $0007                                  ; $6837: $01 $07 $00
    dec bc                                        ; $683A: $0B
    inc b                                         ; $683B: $04
    dec bc                                        ; $683C: $0B
    inc b                                         ; $683D: $04
    rlca                                          ; $683E: $07
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
    ld c, $00                                     ; $684E: $0E $00
    rst RST_38                                    ; $6850: $FF
    inc b                                         ; $6851: $04
    db $DB                                        ; $6852: $DB
    dec [hl]                                      ; $6853: $35
    rst RST_38                                    ; $6854: $FF
    dec b                                         ; $6855: $05
    rst RST_18                                    ; $6856: $DF
    cp e                                          ; $6857: $BB
    rst RST_38                                    ; $6858: $FF
    add e                                         ; $6859: $83
    rst RST_18                                    ; $685A: $DF
    dec sp                                        ; $685B: $3B
    ld a, a                                       ; $685C: $7F
    inc de                                        ; $685D: $13
    ccf                                           ; $685E: $3F
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
    ld bc, $0700                                  ; $686A: $01 $00 $07
    ld bc, $060D                                  ; $686D: $01 $0D $06
    di                                            ; $6870: $F3
    inc c                                         ; $6871: $0C
    rst RST_30                                    ; $6872: $F7
    ld [$F0FF], a                                 ; $6873: $EA $FF $F0
    rst RST_38                                    ; $6876: $FF
    pop af                                        ; $6877: $F1
    rst RST_38                                    ; $6878: $FF
    ldh a, [c]                                    ; $6879: $F2
    ei                                            ; $687A: $FB
    ldh a, [$FFF0]                                ; $687B: $F0 $F0
    ldh [$FFE0], a                                ; $687D: $E0 $E0
    nop                                           ; $687F: $00
    ld a, a                                       ; $6880: $7F
    nop                                           ; $6881: $00
    sbc a                                         ; $6882: $9F
    ld [hl], b                                    ; $6883: $70
    ld a, [hl]                                    ; $6884: $7E
    add l                                         ; $6885: $85
    cp a                                          ; $6886: $BF
    ld h, h                                       ; $6887: $64
    ld a, h                                       ; $6888: $7C
    add e                                         ; $6889: $83
    or e                                          ; $688A: $B3
    ld l, h                                       ; $688B: $6C
    ld a, a                                       ; $688C: $7F
    add e                                         ; $688D: $83
    cp c                                          ; $688E: $B9
    halt                                          ; $688F: $76
    ld a, c                                       ; $6890: $79
    add [hl]                                      ; $6891: $86
    db $FD                                        ; $6892: $FD
    ld a, [hl+]                                   ; $6893: $2A
    ccf                                           ; $6894: $3F
    inc e                                         ; $6895: $1C
    scf                                           ; $6896: $37
    ld e, $1F                                     ; $6897: $1E $1F
    inc c                                         ; $6899: $0C
    ld c, $03                                     ; $689A: $0E $03
    inc bc                                        ; $689C: $03
    ld bc, $0003                                  ; $689D: $01 $03 $00
    nop                                           ; $68A0: $00
    nop                                           ; $68A1: $00
    db $EC                                        ; $68A2: $EC
    nop                                           ; $68A3: $00
    ld e, h                                       ; $68A4: $5C
    xor b                                         ; $68A5: $A8
    ld e, h                                       ; $68A6: $5C
    xor b                                         ; $68A7: $A8
    cp e                                          ; $68A8: $BB
    ld d, b                                       ; $68A9: $50
    cp h                                          ; $68AA: $BC
    ld d, e                                       ; $68AB: $53
    add sp, $37                                   ; $68AC: $E8 $37
    ld l, b                                       ; $68AE: $68
    or a                                          ; $68AF: $B7
    ld a, c                                       ; $68B0: $79
    add [hl]                                      ; $68B1: $86
    rst RST_38                                    ; $68B2: $FF
    ld [hl], b                                    ; $68B3: $70
    sbc [hl]                                      ; $68B4: $9E
    ld sp, hl                                     ; $68B5: $F9
    sbc a                                         ; $68B6: $9F
    ld hl, sp-$01                                 ; $68B7: $F8 $FF
    ld sp, $C57B                                  ; $68B9: $31 $7B $C5
    rst RST_30                                    ; $68BC: $F7
    add sp, -$05                                  ; $68BD: $E8 $FB
    ld bc, $0000                                  ; $68BF: $01 $00 $00
    nop                                           ; $68C2: $00
    nop                                           ; $68C3: $00
    nop                                           ; $68C4: $00
    nop                                           ; $68C5: $00
    ldh a, [rP1]                                  ; $68C6: $F0 $00
    ld [$18F0], sp                                ; $68C8: $08 $F0 $18
    ldh [$FFF8], a                                ; $68CB: $E0 $F8
    nop                                           ; $68CD: $00
    db $FC                                        ; $68CE: $FC
    sbc b                                         ; $68CF: $98
    sbc $64                                       ; $68D0: $DE $64
    halt                                          ; $68D2: $76
    xor b                                         ; $68D3: $A8
    db $FD                                        ; $68D4: $FD
    xor d                                         ; $68D5: $AA
    rst RST_38                                    ; $68D6: $FF
    ld c, d                                       ; $68D7: $4A
    cp $70                                        ; $68D8: $FE $70
    cp $BC                                        ; $68DA: $FE $BC
    db $FC                                        ; $68DC: $FC
    ret nz                                        ; $68DD: $C0

    ret nz                                        ; $68DE: $C0

    nop                                           ; $68DF: $00
    dec c                                         ; $68E0: $0D
    inc bc                                        ; $68E1: $03
    ld [hl], e                                    ; $68E2: $73
    dec c                                         ; $68E3: $0D
    pop af                                        ; $68E4: $F1
    ld l, [hl]                                    ; $68E5: $6E
    ldh a, [$FF6F]                                ; $68E6: $F0 $6F
    rst RST_38                                    ; $68E8: $FF
    ld h, b                                       ; $68E9: $60
    db $E4                                        ; $68EA: $E4
    sbc b                                         ; $68EB: $98
    add h                                         ; $68EC: $84
    ld hl, sp+$08                                 ; $68ED: $F8 $08
    ldh a, [$FF90]                                ; $68EF: $F0 $90
    ld h, b                                       ; $68F1: $60
    ld h, b                                       ; $68F2: $60
    add b                                         ; $68F3: $80

Call_00C_68F4:
    and b                                         ; $68F4: $A0
    ld b, b                                       ; $68F5: $40
    and b                                         ; $68F6: $A0
    ld b, b                                       ; $68F7: $40
    ret nz                                        ; $68F8: $C0

    nop                                           ; $68F9: $00
    nop                                           ; $68FA: $00
    nop                                           ; $68FB: $00
    nop                                           ; $68FC: $00
    nop                                           ; $68FD: $00
    nop                                           ; $68FE: $00
    nop                                           ; $68FF: $00
    cp e                                          ; $6900: $BB
    ldh [$FFE8], a                                ; $6901: $E0 $E8
    ret nc                                        ; $6903: $D0

    call nz, $C4B8                                ; $6904: $C4 $B8 $C4
    jr c, jr_00C_6968                             ; $6907: $38 $5F

    jr nz, jr_00C_694A                            ; $6909: $20 $3F

    dec e                                         ; $690B: $1D
    ccf                                           ; $690C: $3F
    dec e                                         ; $690D: $1D
    rra                                           ; $690E: $1F
    inc bc                                        ; $690F: $03
    ld de, $0C0F                                  ; $6910: $11 $0F $0C
    inc bc                                        ; $6913: $03
    inc bc                                        ; $6914: $03

jr_00C_6915:
    nop                                           ; $6915: $00
    ld bc, $0000                                  ; $6916: $01 $00 $00
    nop                                           ; $6919: $00
    nop                                           ; $691A: $00
    nop                                           ; $691B: $00
    nop                                           ; $691C: $00
    nop                                           ; $691D: $00
    nop                                           ; $691E: $00
    nop                                           ; $691F: $00
    ld bc, $0100                                  ; $6920: $01 $00 $01
    nop                                           ; $6923: $00
    ld bc, $0300                                  ; $6924: $01 $00 $03
    ld bc, $0003                                  ; $6927: $01 $03 $00
    inc b                                         ; $692A: $04
    inc bc                                        ; $692B: $03
    rrca                                          ; $692C: $0F
    nop                                           ; $692D: $00
    rra                                           ; $692E: $1F
    nop                                           ; $692F: $00
    add hl, hl                                    ; $6930: $29
    ld d, $3F                                     ; $6931: $16 $3F
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
    add b                                         ; $6940: $80
    nop                                           ; $6941: $00
    ret nz                                        ; $6942: $C0

    add b                                         ; $6943: $80
    ldh [$FFC0], a                                ; $6944: $E0 $C0
    ldh [$FFC0], a                                ; $6946: $E0 $C0
    ldh [rP1], a                                  ; $6948: $E0 $00

jr_00C_694A:
    db $10                                        ; $694A: $10
    ldh [$FF78], a                                ; $694B: $E0 $78
    add b                                         ; $694D: $80
    db $FC                                        ; $694E: $FC
    nop                                           ; $694F: $00
    xor d                                         ; $6950: $AA
    ld d, h                                       ; $6951: $54
    cp $00                                        ; $6952: $FE $00
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
    rst RST_18                                    ; $6960: $DF
    cp $FF                                        ; $6961: $FE $FF
    cp $FF                                        ; $6963: $FE $FF
    ld a, [hl]                                    ; $6965: $7E
    rst RST_38                                    ; $6966: $FF
    ld a, [hl]                                    ; $6967: $7E

jr_00C_6968:
    rst RST_38                                    ; $6968: $FF
    ld a, l                                       ; $6969: $7D
    rst RST_38                                    ; $696A: $FF
    add d                                         ; $696B: $82
    sbc a                                         ; $696C: $9F
    ld b, $1F                                     ; $696D: $06 $1F
    add hl, bc                                    ; $696F: $09
    rrca                                          ; $6970: $0F
    dec b                                         ; $6971: $05
    dec b                                         ; $6972: $05
    nop                                           ; $6973: $00
    ld bc, $0100                                  ; $6974: $01 $00 $01
    nop                                           ; $6977: $00
    inc bc                                        ; $6978: $03
    nop                                           ; $6979: $00
    add d                                         ; $697A: $82
    ld bc, $81DF                                  ; $697B: $01 $DF $81
    db $E3                                        ; $697E: $E3
    sbc l                                         ; $697F: $9D
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
    jr jr_00C_698C                                ; $698A: $18 $00

jr_00C_698C:
    ld h, h                                       ; $698C: $64
    jr jr_00C_6915                                ; $698D: $18 $86

    ld a, b                                       ; $698F: $78
    dec c                                         ; $6990: $0D
    ldh a, [c]                                    ; $6991: $F2
    inc bc                                        ; $6992: $03
    db $FC                                        ; $6993: $FC
    rst RST_08                                    ; $6994: $CF
    ldh a, [$FFF1]                                ; $6995: $F0 $F1
    cp $C1                                        ; $6997: $FE $C1
    cp $9B                                        ; $6999: $FE $9B
    db $FC                                        ; $699B: $FC
    ld [hl], c                                    ; $699C: $71
    rst RST_38                                    ; $699D: $FF
    db $E3                                        ; $699E: $E3
    db $FC                                        ; $699F: $FC
    ccf                                           ; $69A0: $3F
    dec e                                         ; $69A1: $1D
    ld a, a                                       ; $69A2: $7F
    dec sp                                        ; $69A3: $3B
    ld a, a                                       ; $69A4: $7F
    inc sp                                        ; $69A5: $33
    ld a, a                                       ; $69A6: $7F
    ld h, $EE                                     ; $69A7: $26 $EE
    ld b, h                                       ; $69A9: $44
    call $8900                                    ; $69AA: $CD $00 $89
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
    nop                                           ; $69B8: $00
    nop                                           ; $69B9: $00
    ld bc, $0300                                  ; $69BA: $01 $00 $03
    ld bc, $0103                                  ; $69BD: $01 $03 $01
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
    nop                                           ; $69CE: $00
    nop                                           ; $69CF: $00
    ld bc, $0200                                  ; $69D0: $01 $00 $02
    ld bc, $0304                                  ; $69D3: $01 $04 $03
    add hl, bc                                    ; $69D6: $09
    rlca                                          ; $69D7: $07
    dec bc                                        ; $69D8: $0B
    rlca                                          ; $69D9: $07
    rla                                           ; $69DA: $17
    rrca                                          ; $69DB: $0F
    rra                                           ; $69DC: $1F
    rrca                                          ; $69DD: $0F
    ccf                                           ; $69DE: $3F
    rra                                           ; $69DF: $1F
    add b                                         ; $69E0: $80
    nop                                           ; $69E1: $00

jr_00C_69E2:
    ldh a, [rP1]                                  ; $69E2: $F0 $00
    sbc a                                         ; $69E4: $9F
    ld [hl], b                                    ; $69E5: $70
    rst RST_38                                    ; $69E6: $FF
    nop                                           ; $69E7: $00
    rst RST_38                                    ; $69E8: $FF
    ret nz                                        ; $69E9: $C0

    ld sp, hl                                     ; $69EA: $F9
    ld d, $FD                                     ; $69EB: $16 $FD
    jp nc, Jump_000_0DF2                          ; $69ED: $D2 $F2 $0D

    adc $31                                       ; $69F0: $CE $31
    rst RST_38                                    ; $69F2: $FF
    adc h                                         ; $69F3: $8C
    push hl                                       ; $69F4: $E5
    jp c, $DA65                                   ; $69F5: $DA $65 $DA

    rst RST_38                                    ; $69F8: $FF
    ld b, b                                       ; $69F9: $40
    rst RST_38                                    ; $69FA: $FF
    sbc c                                         ; $69FB: $99
    sbc a                                         ; $69FC: $9F
    db $E4                                        ; $69FD: $E4
    rst RST_38                                    ; $69FE: $FF
    ei                                            ; $69FF: $FB
    ld [hl], b                                    ; $6A00: $70
    and b                                         ; $6A01: $A0
    ldh [rLCDC], a                                ; $6A02: $E0 $40
    ldh [rLCDC], a                                ; $6A04: $E0 $40
    and b                                         ; $6A06: $A0
    ret nz                                        ; $6A07: $C0

    and b                                         ; $6A08: $A0
    ret nz                                        ; $6A09: $C0

    ld hl, sp+$00                                 ; $6A0A: $F8 $00
    call nz, Call_00C_7238                        ; $6A0C: $C4 $38 $72
    adc h                                         ; $6A0F: $8C
    db $ED                                        ; $6A10: $ED
    ld d, d                                       ; $6A11: $52
    ld a, l                                       ; $6A12: $7D
    jp nz, $50EF                                  ; $6A13: $C2 $EF $50

    ld a, h                                       ; $6A16: $7C
    ret nz                                        ; $6A17: $C0

    ld l, h                                       ; $6A18: $6C
    ret nc                                        ; $6A19: $D0

    db $FC                                        ; $6A1A: $FC
    nop                                           ; $6A1B: $00
    ld hl, sp-$10                                 ; $6A1C: $F8 $F0
    ldh a, [rP1]                                  ; $6A1E: $F0 $00
    rst RST_38                                    ; $6A20: $FF
    jr jr_00C_69E2                                ; $6A21: $18 $BF

    db $E3                                        ; $6A23: $E3
    rst RST_38                                    ; $6A24: $FF
    or c                                          ; $6A25: $B1
    or e                                          ; $6A26: $B3
    ld b, b                                       ; $6A27: $40
    ld de, $70E0                                  ; $6A28: $11 $E0 $70
    add b                                         ; $6A2B: $80
    ld hl, sp+$70                                 ; $6A2C: $F8 $70
    ld hl, sp+$70                                 ; $6A2E: $F8 $70
    db $FC                                        ; $6A30: $FC
    ld l, b                                       ; $6A31: $68
    ld a, h                                       ; $6A32: $7C
    sbc b                                         ; $6A33: $98
    inc a                                         ; $6A34: $3C
    ld hl, sp-$48                                 ; $6A35: $F8 $B8
    ld [hl], b                                    ; $6A37: $70
    cp b                                          ; $6A38: $B8
    ld [hl], b                                    ; $6A39: $70
    ld hl, sp+$00                                 ; $6A3A: $F8 $00
    adc b                                         ; $6A3C: $88
    ld [hl], b                                    ; $6A3D: $70
    ld hl, sp+$00                                 ; $6A3E: $F8 $00
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
    nop                                           ; $6A50: $00
    nop                                           ; $6A51: $00
    nop                                           ; $6A52: $00
    nop                                           ; $6A53: $00
    nop                                           ; $6A54: $00
    nop                                           ; $6A55: $00
    nop                                           ; $6A56: $00
    nop                                           ; $6A57: $00
    nop                                           ; $6A58: $00
    nop                                           ; $6A59: $00
    nop                                           ; $6A5A: $00
    nop                                           ; $6A5B: $00
    or b                                          ; $6A5C: $B0
    nop                                           ; $6A5D: $00
    ld [hl], b                                    ; $6A5E: $70
    and b                                         ; $6A5F: $A0
    db $FC                                        ; $6A60: $FC
    nop                                           ; $6A61: $00
    xor d                                         ; $6A62: $AA
    ld d, h                                       ; $6A63: $54
    cp $00                                        ; $6A64: $FE $00
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
    nop                                           ; $6A7A: $00
    nop                                           ; $6A7B: $00
    nop                                           ; $6A7C: $00
    nop                                           ; $6A7D: $00
    nop                                           ; $6A7E: $00
    nop                                           ; $6A7F: $00
    db $E3                                        ; $6A80: $E3
    sbc l                                         ; $6A81: $9D
    sub e                                         ; $6A82: $93
    ld l, h                                       ; $6A83: $6C
    dec e                                         ; $6A84: $1D
    ldh [$FF31], a                                ; $6A85: $E0 $31
    ret nz                                        ; $6A87: $C0

    ld b, b                                       ; $6A88: $40
    add b                                         ; $6A89: $80
    add c                                         ; $6A8A: $81
    nop                                           ; $6A8B: $00
    add c                                         ; $6A8C: $81
    nop                                           ; $6A8D: $00
    add c                                         ; $6A8E: $81
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
    nop                                           ; $6A99: $00
    nop                                           ; $6A9A: $00
    nop                                           ; $6A9B: $00
    nop                                           ; $6A9C: $00
    nop                                           ; $6A9D: $00
    nop                                           ; $6A9E: $00
    nop                                           ; $6A9F: $00
    rlca                                          ; $6AA0: $07
    ld bc, $0207                                  ; $6AA1: $01 $07 $02
    ld b, $03                                     ; $6AA4: $06 $03
    inc c                                         ; $6AA6: $0C
    rlca                                          ; $6AA7: $07
    ld c, $01                                     ; $6AA8: $0E $01
    ld de, $3E0E                                  ; $6AAA: $11 $0E $3E
    ld bc, $017E                                  ; $6AAD: $01 $7E $01
    and a                                         ; $6AB0: $A7
    ld e, b                                       ; $6AB1: $58
    db $FC                                        ; $6AB2: $FC
    nop                                           ; $6AB3: $00
    nop                                           ; $6AB4: $00
    nop                                           ; $6AB5: $00
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
    ld a, [hl]                                    ; $6AC1: $7E
    rst RST_38                                    ; $6AC2: $FF
    ld a, [hl]                                    ; $6AC3: $7E
    rst RST_38                                    ; $6AC4: $FF
    ld a, [hl]                                    ; $6AC5: $7E
    rst RST_38                                    ; $6AC6: $FF
    ld a, [hl]                                    ; $6AC7: $7E
    ld a, a                                       ; $6AC8: $7F
    dec a                                         ; $6AC9: $3D
    ccf                                           ; $6ACA: $3F
    ld [bc], a                                    ; $6ACB: $02
    rra                                           ; $6ACC: $1F
    ld b, $1F                                     ; $6ACD: $06 $1F
    add hl, bc                                    ; $6ACF: $09
    rrca                                          ; $6AD0: $0F
    dec b                                         ; $6AD1: $05
    dec b                                         ; $6AD2: $05
    nop                                           ; $6AD3: $00
    ld bc, $0100                                  ; $6AD4: $01 $00 $01
    nop                                           ; $6AD7: $00
    inc bc                                        ; $6AD8: $03
    nop                                           ; $6AD9: $00
    add d                                         ; $6ADA: $82
    ld bc, $81DF                                  ; $6ADB: $01 $DF $81
    db $E3                                        ; $6ADE: $E3
    sbc l                                         ; $6ADF: $9D
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
    jr jr_00C_6AEC                                ; $6AEA: $18 $00

jr_00C_6AEC:
    inc h                                         ; $6AEC: $24
    jr jr_00C_6B2D                                ; $6AED: $18 $3E

    nop                                           ; $6AEF: $00
    dec a                                         ; $6AF0: $3D
    ld [bc], a                                    ; $6AF1: $02
    ccf                                           ; $6AF2: $3F
    jr jr_00C_6B74                                ; $6AF3: $18 $7F

    nop                                           ; $6AF5: $00
    push de                                       ; $6AF6: $D5
    ld a, [hl+]                                   ; $6AF7: $2A
    rst RST_38                                    ; $6AF8: $FF
    ld l, d                                       ; $6AF9: $6A

jr_00C_6AFA:
    rst RST_38                                    ; $6AFA: $FF
    jr z, jr_00C_6AFA                             ; $6AFB: $28 $FD

    rlca                                          ; $6AFD: $07
    rst RST_38                                    ; $6AFE: $FF
    ld a, b                                       ; $6AFF: $78
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
    nop                                           ; $6B18: $00
    nop                                           ; $6B19: $00
    ld bc, $0300                                  ; $6B1A: $01 $00 $03
    ld bc, $0103                                  ; $6B1D: $01 $03 $01
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
    ld a, [de]                                    ; $6B2C: $1A

jr_00C_6B2D:
    nop                                           ; $6B2D: $00
    dec l                                         ; $6B2E: $2D
    ld [de], a                                    ; $6B2F: $12
    ccf                                           ; $6B30: $3F
    inc b                                         ; $6B31: $04
    dec e                                         ; $6B32: $1D
    dec bc                                        ; $6B33: $0B
    rrca                                          ; $6B34: $0F
    nop                                           ; $6B35: $00
    dec bc                                        ; $6B36: $0B
    ld b, $0B                                     ; $6B37: $06 $0B
    dec b                                         ; $6B39: $05
    rlca                                          ; $6B3A: $07
    ld [bc], a                                    ; $6B3B: $02
    inc bc                                        ; $6B3C: $03
    ld bc, $0001                                  ; $6B3D: $01 $01 $00

jr_00C_6B40:
    and b                                         ; $6B40: $A0
    nop                                           ; $6B41: $00
    ld [hl], b                                    ; $6B42: $70
    and b                                         ; $6B43: $A0
    rst RST_30                                    ; $6B44: $F7
    jr nz, jr_00C_6B40                            ; $6B45: $20 $F9

    ld h, a                                       ; $6B47: $67
    ei                                            ; $6B48: $FB
    sub h                                         ; $6B49: $94
    rst RST_38                                    ; $6B4A: $FF
    db $DB                                        ; $6B4B: $DB
    rst RST_38                                    ; $6B4C: $FF
    cp b                                          ; $6B4D: $B8
    cp $BD                                        ; $6B4E: $FE $BD
    rst RST_38                                    ; $6B50: $FF
    ld a, h                                       ; $6B51: $7C
    rst RST_38                                    ; $6B52: $FF
    ld a, l                                       ; $6B53: $7D
    ld a, a                                       ; $6B54: $7F
    ld a, [hl-]                                   ; $6B55: $3A
    ccf                                           ; $6B56: $3F
    ld [bc], a                                    ; $6B57: $02
    rra                                           ; $6B58: $1F
    add hl, bc                                    ; $6B59: $09
    rrca                                          ; $6B5A: $0F
    dec b                                         ; $6B5B: $05
    dec b                                         ; $6B5C: $05
    nop                                           ; $6B5D: $00
    ld bc, $0000                                  ; $6B5E: $01 $00 $00
    nop                                           ; $6B61: $00
    add b                                         ; $6B62: $80
    nop                                           ; $6B63: $00
    ldh a, [rP1]                                  ; $6B64: $F0 $00
    sbc h                                         ; $6B66: $9C
    ldh a, [rIE]                                  ; $6B67: $F0 $FF
    inc c                                         ; $6B69: $0C
    ccf                                           ; $6B6A: $3F
    ret nz                                        ; $6B6B: $C0

    ld sp, hl                                     ; $6B6C: $F9
    ld d, $FD                                     ; $6B6D: $16 $FD
    jp nc, Jump_000_0DF2                          ; $6B6F: $D2 $F2 $0D

    adc $31                                       ; $6B72: $CE $31

jr_00C_6B74:
    rst RST_38                                    ; $6B74: $FF
    adc h                                         ; $6B75: $8C
    push hl                                       ; $6B76: $E5
    jp c, $DA65                                   ; $6B77: $DA $65 $DA

    rst RST_38                                    ; $6B7A: $FF
    ld b, b                                       ; $6B7B: $40
    rst RST_38                                    ; $6B7C: $FF
    sbc c                                         ; $6B7D: $99
    sbc a                                         ; $6B7E: $9F
    db $E4                                        ; $6B7F: $E4
    ld bc, $0300                                  ; $6B80: $01 $00 $03
    ld bc, $0103                                  ; $6B83: $01 $03 $01
    rlca                                          ; $6B86: $07
    ld bc, $0207                                  ; $6B87: $01 $07 $02
    ld b, $03                                     ; $6B8A: $06 $03
    inc c                                         ; $6B8C: $0C
    rlca                                          ; $6B8D: $07
    ld c, $01                                     ; $6B8E: $0E $01
    ld de, $3E0E                                  ; $6B90: $11 $0E $3E
    ld bc, $017E                                  ; $6B93: $01 $7E $01
    and a                                         ; $6B96: $A7
    ld e, b                                       ; $6B97: $58
    db $FC                                        ; $6B98: $FC
    nop                                           ; $6B99: $00
    nop                                           ; $6B9A: $00
    nop                                           ; $6B9B: $00
    nop                                           ; $6B9C: $00
    nop                                           ; $6B9D: $00
    nop                                           ; $6B9E: $00
    nop                                           ; $6B9F: $00
    ld bc, $0300                                  ; $6BA0: $01 $00 $03
    nop                                           ; $6BA3: $00
    ld [bc], a                                    ; $6BA4: $02
    ld bc, $011F                                  ; $6BA5: $01 $1F $01
    db $E3                                        ; $6BA8: $E3
    dec e                                         ; $6BA9: $1D
    jp $C3BD                                      ; $6BAA: $C3 $BD $C3


    cp h                                          ; $6BAD: $BC
    db $ED                                        ; $6BAE: $ED
    sub b                                         ; $6BAF: $90
    sub c                                         ; $6BB0: $91
    ld h, b                                       ; $6BB1: $60
    db $10                                        ; $6BB2: $10
    ldh [rNR41], a                                ; $6BB3: $E0 $20
    ret nz                                        ; $6BB5: $C0

    ld b, b                                       ; $6BB6: $40
    add b                                         ; $6BB7: $80
    add b                                         ; $6BB8: $80
    nop                                           ; $6BB9: $00
    add b                                         ; $6BBA: $80
    nop                                           ; $6BBB: $00
    add b                                         ; $6BBC: $80
    nop                                           ; $6BBD: $00
    nop                                           ; $6BBE: $00
    nop                                           ; $6BBF: $00
    rst RST_38                                    ; $6BC0: $FF
    ei                                            ; $6BC1: $FB
    rst RST_38                                    ; $6BC2: $FF
    jr @-$3F                                      ; $6BC3: $18 $BF

    db $E3                                        ; $6BC5: $E3
    rst RST_38                                    ; $6BC6: $FF
    or c                                          ; $6BC7: $B1
    or e                                          ; $6BC8: $B3
    ld b, b                                       ; $6BC9: $40
    ld de, $30E0                                  ; $6BCA: $11 $E0 $30
    ret nz                                        ; $6BCD: $C0

    ld a, h                                       ; $6BCE: $7C
    or b                                          ; $6BCF: $B0
    cp $74                                        ; $6BD0: $FE $74
    cp $74                                        ; $6BD2: $FE $74
    ld a, a                                       ; $6BD4: $7F
    ld c, $47                                     ; $6BD5: $0E $47
    ld a, $27                                     ; $6BD7: $3E $27
    ld e, $13                                     ; $6BD9: $1E $13
    inc c                                         ; $6BDB: $0C
    inc c                                         ; $6BDC: $0C
    inc bc                                        ; $6BDD: $03
    dec bc                                        ; $6BDE: $0B
    inc b                                         ; $6BDF: $04
    ccf                                           ; $6BE0: $3F
    ld e, $1E                                     ; $6BE1: $1E $1E
    nop                                           ; $6BE3: $00
    add b                                         ; $6BE4: $80
    nop                                           ; $6BE5: $00
    ret nz                                        ; $6BE6: $C0

    add b                                         ; $6BE7: $80
    ret nz                                        ; $6BE8: $C0

    add b                                         ; $6BE9: $80
    ldh [$FFC0], a                                ; $6BEA: $E0 $C0
    ldh [$FFC0], a                                ; $6BEC: $E0 $C0
    ldh [$FFC0], a                                ; $6BEE: $E0 $C0
    ld h, b                                       ; $6BF0: $60
    add b                                         ; $6BF1: $80
    sub b                                         ; $6BF2: $90
    ld h, b                                       ; $6BF3: $60
    ld a, b                                       ; $6BF4: $78
    add b                                         ; $6BF5: $80
    db $FC                                        ; $6BF6: $FC
    nop                                           ; $6BF7: $00
    xor d                                         ; $6BF8: $AA
    ld d, h                                       ; $6BF9: $54
    cp $00                                        ; $6BFA: $FE $00
    nop                                           ; $6BFC: $00
    nop                                           ; $6BFD: $00
    nop                                           ; $6BFE: $00
    nop                                           ; $6BFF: $00
    or b                                          ; $6C00: $B0
    nop                                           ; $6C01: $00
    ld [hl], b                                    ; $6C02: $70
    and b                                         ; $6C03: $A0
    ld [hl], b                                    ; $6C04: $70
    and b                                         ; $6C05: $A0
    ldh [rLCDC], a                                ; $6C06: $E0 $40
    ldh [rLCDC], a                                ; $6C08: $E0 $40
    and b                                         ; $6C0A: $A0
    ret nz                                        ; $6C0B: $C0

    and b                                         ; $6C0C: $A0
    ret nz                                        ; $6C0D: $C0

    ld hl, sp+$00                                 ; $6C0E: $F8 $00
    call nz, Call_00C_7238                        ; $6C10: $C4 $38 $72
    adc h                                         ; $6C13: $8C
    db $ED                                        ; $6C14: $ED
    ld d, d                                       ; $6C15: $52
    ld a, l                                       ; $6C16: $7D
    jp nz, $50EF                                  ; $6C17: $C2 $EF $50

    ld a, h                                       ; $6C1A: $7C
    ret nz                                        ; $6C1B: $C0

    ld l, h                                       ; $6C1C: $6C
    ret nc                                        ; $6C1D: $D0

    db $FC                                        ; $6C1E: $FC
    nop                                           ; $6C1F: $00
    rlca                                          ; $6C20: $07
    nop                                           ; $6C21: $00
    rra                                           ; $6C22: $1F
    ld b, $7F                                     ; $6C23: $06 $7F
    db $10                                        ; $6C25: $10
    ei                                            ; $6C26: $FB
    ld b, $AF                                     ; $6C27: $06 $AF
    ld d, b                                       ; $6C29: $50
    db $EB                                        ; $6C2A: $EB
    rla                                           ; $6C2B: $17
    xor a                                         ; $6C2C: $AF
    ld d, b                                       ; $6C2D: $50
    xor e                                         ; $6C2E: $AB
    ld d, a                                       ; $6C2F: $57
    ld a, a                                       ; $6C30: $7F
    ld [bc], a                                    ; $6C31: $02
    rlca                                          ; $6C32: $07
    nop                                           ; $6C33: $00
    nop                                           ; $6C34: $00
    nop                                           ; $6C35: $00
    nop                                           ; $6C36: $00
    nop                                           ; $6C37: $00
    nop                                           ; $6C38: $00
    nop                                           ; $6C39: $00
    nop                                           ; $6C3A: $00
    nop                                           ; $6C3B: $00
    nop                                           ; $6C3C: $00
    nop                                           ; $6C3D: $00
    nop                                           ; $6C3E: $00
    nop                                           ; $6C3F: $00
    rrca                                          ; $6C40: $0F
    nop                                           ; $6C41: $00
    rst RST_38                                    ; $6C42: $FF
    rrca                                          ; $6C43: $0F
    db $FC                                        ; $6C44: $FC
    rst RST_38                                    ; $6C45: $FF
    ldh [$FF3F], a                                ; $6C46: $E0 $3F
    rst RST_38                                    ; $6C48: $FF
    add e                                         ; $6C49: $83
    ld a, a                                       ; $6C4A: $7F
    cp h                                          ; $6C4B: $BC
    rst RST_38                                    ; $6C4C: $FF
    cp [hl]                                       ; $6C4D: $BE
    rst RST_38                                    ; $6C4E: $FF
    ld a, [hl]                                    ; $6C4F: $7E
    rst RST_38                                    ; $6C50: $FF
    ld a, [hl]                                    ; $6C51: $7E
    rst RST_38                                    ; $6C52: $FF
    ld a, [hl]                                    ; $6C53: $7E

jr_00C_6C54:
    cp $7C                                        ; $6C54: $FE $7C
    db $FC                                        ; $6C56: $FC
    nop                                           ; $6C57: $00
    nop                                           ; $6C58: $00
    nop                                           ; $6C59: $00
    nop                                           ; $6C5A: $00
    nop                                           ; $6C5B: $00
    nop                                           ; $6C5C: $00
    nop                                           ; $6C5D: $00
    nop                                           ; $6C5E: $00
    nop                                           ; $6C5F: $00
    inc bc                                        ; $6C60: $03
    nop                                           ; $6C61: $00
    ld a, a                                       ; $6C62: $7F
    inc bc                                        ; $6C63: $03
    rst RST_38                                    ; $6C64: $FF
    ld a, a                                       ; $6C65: $7F
    rst RST_20                                    ; $6C66: $E7
    ld hl, sp+$19                                 ; $6C67: $F8 $19
    rst RST_20                                    ; $6C69: $E7
    ld a, a                                       ; $6C6A: $7F
    sbc b                                         ; $6C6B: $98
    db $DB                                        ; $6C6C: $DB
    ld h, [hl]                                    ; $6C6D: $66
    ld a, a                                       ; $6C6E: $7F
    adc b                                         ; $6C6F: $88
    ei                                            ; $6C70: $FB
    ld h, $FF                                     ; $6C71: $26 $FF
    xor b                                         ; $6C73: $A8
    rst RST_38                                    ; $6C74: $FF
    rst RST_10                                    ; $6C75: $D7
    rst RST_18                                    ; $6C76: $DF
    ld [$020F], sp                                ; $6C77: $08 $0F $02
    inc bc                                        ; $6C7A: $03
    ld bc, $0103                                  ; $6C7B: $01 $03 $01
    ld bc, $0000                                  ; $6C7E: $01 $00 $00
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
    rst RST_38                                    ; $6C90: $FF
    nop                                           ; $6C91: $00
    rst RST_38                                    ; $6C92: $FF
    rst RST_38                                    ; $6C93: $FF
    rst RST_38                                    ; $6C94: $FF
    rst RST_38                                    ; $6C95: $FF
    ldh a, [rIF]                                  ; $6C96: $F0 $0F
    cp $01                                        ; $6C98: $FE $01
    push hl                                       ; $6C9A: $E5
    ld e, d                                       ; $6C9B: $5A
    push af                                       ; $6C9C: $F5
    ld c, d                                       ; $6C9D: $4A
    swap l                                        ; $6C9E: $CB $35
    nop                                           ; $6CA0: $00
    nop                                           ; $6CA1: $00
    nop                                           ; $6CA2: $00
    nop                                           ; $6CA3: $00
    nop                                           ; $6CA4: $00
    nop                                           ; $6CA5: $00
    nop                                           ; $6CA6: $00
    nop                                           ; $6CA7: $00
    rst RST_38                                    ; $6CA8: $FF
    nop                                           ; $6CA9: $00
    cp $F9                                        ; $6CAA: $FE $F9
    ld sp, hl                                     ; $6CAC: $F9
    and $23                                       ; $6CAD: $E6 $23
    call c, Call_000_38C7                         ; $6CAF: $DC $C7 $38
    adc a                                         ; $6CB2: $8F
    ld [hl], l                                    ; $6CB3: $75
    sbc a                                         ; $6CB4: $9F
    ld l, e                                       ; $6CB5: $6B
    sbc a                                         ; $6CB6: $9F

jr_00C_6CB7:
    ld l, d                                       ; $6CB7: $6A
    cp a                                          ; $6CB8: $BF
    ld b, d                                       ; $6CB9: $42
    cp a                                          ; $6CBA: $BF
    ld b, b                                       ; $6CBB: $40
    db $FD                                        ; $6CBC: $FD
    ld [bc], a                                    ; $6CBD: $02
    rst RST_08                                    ; $6CBE: $CF
    or d                                          ; $6CBF: $B2
    nop                                           ; $6CC0: $00
    nop                                           ; $6CC1: $00
    cp $00                                        ; $6CC2: $FE $00
    cpl                                           ; $6CC4: $2F
    sub $F7                                       ; $6CC5: $D6 $F7
    dec bc                                        ; $6CC7: $0B
    swap l                                        ; $6CC8: $CB $35
    rst RST_00                                    ; $6CCA: $C7
    jr c, jr_00C_6C54                             ; $6CCB: $38 $87

    ld a, e                                       ; $6CCD: $7B
    adc a                                         ; $6CCE: $8F
    ld [hl], a                                    ; $6CCF: $77
    rrca                                          ; $6CD0: $0F
    db $F4                                        ; $6CD1: $F4
    rrca                                          ; $6CD2: $0F
    rst RST_30                                    ; $6CD3: $F7
    rra                                           ; $6CD4: $1F
    rst RST_28                                    ; $6CD5: $EF
    rst RST_18                                    ; $6CD6: $DF
    jr z, jr_00C_6D51                             ; $6CD7: $28 $78

    add b                                         ; $6CD9: $80
    ret nc                                        ; $6CDA: $D0

    and b                                         ; $6CDB: $A0
    ldh a, [$FF60]                                ; $6CDC: $F0 $60
    ld [hl], b                                    ; $6CDE: $70
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
    cp $00                                        ; $6CEC: $FE $00
    ld hl, sp-$20                                 ; $6CEE: $F8 $E0
    ldh [rP1], a                                  ; $6CF0: $E0 $00
    db $FC                                        ; $6CF2: $FC
    nop                                           ; $6CF3: $00
    ld hl, sp-$10                                 ; $6CF4: $F8 $F0
    ldh a, [$FF80]                                ; $6CF6: $F0 $80
    add b                                         ; $6CF8: $80
    nop                                           ; $6CF9: $00
    ret nz                                        ; $6CFA: $C0

    nop                                           ; $6CFB: $00
    ldh [$FFC0], a                                ; $6CFC: $E0 $C0
    ld hl, sp+$00                                 ; $6CFE: $F8 $00
    dec sp                                        ; $6D00: $3B
    push bc                                       ; $6D01: $C5
    cp $33                                        ; $6D02: $FE $33
    sub a                                         ; $6D04: $97
    ld l, b                                       ; $6D05: $68

jr_00C_6D06:
    sub a                                         ; $6D06: $97
    ld l, e                                       ; $6D07: $6B
    reti                                          ; $6D08: $D9


    and a                                         ; $6D09: $A7
    ld sp, hl                                     ; $6D0A: $F9
    rst RST_08                                    ; $6D0B: $CF
    ld a, a                                       ; $6D0C: $7F
    db $EC                                        ; $6D0D: $EC
    rst RST_38                                    ; $6D0E: $FF
    jp Jump_000_1DE7                              ; $6D0F: $C3 $E7 $1D


    ccf                                           ; $6D12: $3F
    ld [bc], a                                    ; $6D13: $02
    ld a, a                                       ; $6D14: $7F
    inc e                                         ; $6D15: $1C
    rst RST_38                                    ; $6D16: $FF
    ld l, a                                       ; $6D17: $6F
    rst RST_38                                    ; $6D18: $FF
    ld [hl], a                                    ; $6D19: $77
    ld a, e                                       ; $6D1A: $7B
    ld [hl], $3D                                  ; $6D1B: $36 $3D
    ld [bc], a                                    ; $6D1D: $02
    inc bc                                        ; $6D1E: $03
    nop                                           ; $6D1F: $00
    rst RST_10                                    ; $6D20: $D7
    xor d                                         ; $6D21: $AA
    rst RST_38                                    ; $6D22: $FF
    adc b                                         ; $6D23: $88
    ret c                                         ; $6D24: $D8

    jr nz, jr_00C_6CB7                            ; $6D25: $20 $90

    ld h, b                                       ; $6D27: $60
    ldh [rP1], a                                  ; $6D28: $E0 $00
    ldh a, [$FFC0]                                ; $6D2A: $F0 $C0
    db $EC                                        ; $6D2C: $EC
    db $10                                        ; $6D2D: $10
    db $E3                                        ; $6D2E: $E3
    inc e                                         ; $6D2F: $1C
    sub d                                         ; $6D30: $92
    ld l, l                                       ; $6D31: $6D
    ld a, [hl]                                    ; $6D32: $7E
    add c                                         ; $6D33: $81
    ld a, a                                       ; $6D34: $7F
    adc [hl]                                      ; $6D35: $8E
    ld a, a                                       ; $6D36: $7F
    add [hl]                                      ; $6D37: $86
    rst RST_38                                    ; $6D38: $FF
    ld bc, $106B                                  ; $6D39: $01 $6B $10
    jr z, jr_00C_6D4E                             ; $6D3C: $28 $10

    jr jr_00C_6D40                                ; $6D3E: $18 $00

jr_00C_6D40:
    add b                                         ; $6D40: $80
    nop                                           ; $6D41: $00
    ld b, b                                       ; $6D42: $40
    add b                                         ; $6D43: $80
    jr nz, jr_00C_6D06                            ; $6D44: $20 $C0

    inc e                                         ; $6D46: $1C
    ldh [rNR12], a                                ; $6D47: $E0 $12
    db $EC                                        ; $6D49: $EC
    xor [hl]                                      ; $6D4A: $AE
    ret nc                                        ; $6D4B: $D0

    rst RST_28                                    ; $6D4C: $EF
    ld d, b                                       ; $6D4D: $50

jr_00C_6D4E:
    ld l, l                                       ; $6D4E: $6D
    ld [de], a                                    ; $6D4F: $12
    dec e                                         ; $6D50: $1D

jr_00C_6D51:
    ld [bc], a                                    ; $6D51: $02
    rrca                                          ; $6D52: $0F
    nop                                           ; $6D53: $00
    dec b                                         ; $6D54: $05
    ld [bc], a                                    ; $6D55: $02
    inc bc                                        ; $6D56: $03
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
    jr jr_00C_6D6C                                ; $6D6A: $18 $00

jr_00C_6D6C:
    dec sp                                        ; $6D6C: $3B
    db $10                                        ; $6D6D: $10
    ld a, a                                       ; $6D6E: $7F
    inc sp                                        ; $6D6F: $33
    ld a, a                                       ; $6D70: $7F
    daa                                           ; $6D71: $27
    db $FC                                        ; $6D72: $FC
    ld l, a                                       ; $6D73: $6F
    ld sp, hl                                     ; $6D74: $F9
    ld a, a                                       ; $6D75: $7F
    rst RST_38                                    ; $6D76: $FF
    ld a, a                                       ; $6D77: $7F
    rst RST_38                                    ; $6D78: $FF
    rst RST_38                                    ; $6D79: $FF
    rst RST_38                                    ; $6D7A: $FF
    di                                            ; $6D7B: $F3
    ei                                            ; $6D7C: $FB
    rst RST_30                                    ; $6D7D: $F7
    ld a, a                                       ; $6D7E: $7F
    rst RST_38                                    ; $6D7F: $FF
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
    ldh a, [rP1]                                  ; $6D8A: $F0 $00
    ldh [$FFC0], a                                ; $6D8C: $E0 $C0
    ldh a, [$FF80]                                ; $6D8E: $F0 $80
    db $FC                                        ; $6D90: $FC
    ldh a, [$FF7E]                                ; $6D91: $F0 $7E
    db $FC                                        ; $6D93: $FC
    ccf                                           ; $6D94: $3F
    ldh a, [c]                                    ; $6D95: $F2
    rst RST_38                                    ; $6D96: $FF
    db $FC                                        ; $6D97: $FC
    rst RST_38                                    ; $6D98: $FF
    cp $FF                                        ; $6D99: $FE $FF
    rst RST_38                                    ; $6D9B: $FF
    rst RST_38                                    ; $6D9C: $FF
    ccf                                           ; $6D9D: $3F
    cp a                                          ; $6D9E: $BF
    ld e, l                                       ; $6D9F: $5D
    nop                                           ; $6DA0: $00
    nop                                           ; $6DA1: $00
    nop                                           ; $6DA2: $00
    nop                                           ; $6DA3: $00
    nop                                           ; $6DA4: $00
    nop                                           ; $6DA5: $00
    nop                                           ; $6DA6: $00
    nop                                           ; $6DA7: $00
    ld bc, $0500                                  ; $6DA8: $01 $00 $05
    nop                                           ; $6DAB: $00
    rlca                                          ; $6DAC: $07
    nop                                           ; $6DAD: $00
    rlca                                          ; $6DAE: $07
    ld [bc], a                                    ; $6DAF: $02
    rlca                                          ; $6DB0: $07
    inc bc                                        ; $6DB1: $03
    ld [bc], a                                    ; $6DB2: $02
    ld bc, $0102                                  ; $6DB3: $01 $02 $01
    inc bc                                        ; $6DB6: $03
    ld bc, $0001                                  ; $6DB7: $01 $01 $00
    rlca                                          ; $6DBA: $07
    nop                                           ; $6DBB: $00
    rlca                                          ; $6DBC: $07
    inc bc                                        ; $6DBD: $03
    inc bc                                        ; $6DBE: $03
    ld bc, $71FF                                  ; $6DBF: $01 $FF $71
    ld [hl], c                                    ; $6DC2: $71
    xor $76                                       ; $6DC3: $EE $76
    rst RST_28                                    ; $6DC5: $EF
    ld h, b                                       ; $6DC6: $60
    rst RST_18                                    ; $6DC7: $DF
    cp e                                          ; $6DC8: $BB
    call nz, $E1FF                                ; $6DC9: $C4 $FF $E1
    di                                            ; $6DCC: $F3
    ld l, l                                       ; $6DCD: $6D
    rst RST_38                                    ; $6DCE: $FF
    pop af                                        ; $6DCF: $F1
    rst RST_38                                    ; $6DD0: $FF
    rst RST_38                                    ; $6DD1: $FF
    rst RST_28                                    ; $6DD2: $EF
    ld a, a                                       ; $6DD3: $7F
    ld a, b                                       ; $6DD4: $78
    rla                                           ; $6DD5: $17
    add hl, sp                                    ; $6DD6: $39
    rrca                                          ; $6DD7: $0F
    ld a, a                                       ; $6DD8: $7F
    ld a, $7E                                     ; $6DD9: $3E $7E
    nop                                           ; $6DDB: $00
    nop                                           ; $6DDC: $00
    nop                                           ; $6DDD: $00
    nop                                           ; $6DDE: $00
    nop                                           ; $6DDF: $00
    rst RST_30                                    ; $6DE0: $F7
    cp $FB                                        ; $6DE1: $FE $FB
    cp $F3                                        ; $6DE3: $FE $F3
    ld a, [hl]                                    ; $6DE5: $7E
    di                                            ; $6DE6: $F3
    ld a, a                                       ; $6DE7: $7F
    db $EB                                        ; $6DE8: $EB
    rst RST_38                                    ; $6DE9: $FF
    rst RST_38                                    ; $6DEA: $FF
    rst RST_38                                    ; $6DEB: $FF
    rst RST_30                                    ; $6DEC: $F7
    ei                                            ; $6DED: $FB
    rst RST_28                                    ; $6DEE: $EF
    db $FD                                        ; $6DEF: $FD
    rst RST_38                                    ; $6DF0: $FF
    db $FD                                        ; $6DF1: $FD
    rst RST_38                                    ; $6DF2: $FF
    call c, $D8FF                                 ; $6DF3: $DC $FF $D8
    rst RST_38                                    ; $6DF6: $FF
    cp d                                          ; $6DF7: $BA
    rst RST_38                                    ; $6DF8: $FF
    ld sp, $2D73                                  ; $6DF9: $31 $73 $2D
    ld a, a                                       ; $6DFC: $7F
    nop                                           ; $6DFD: $00
    rra                                           ; $6DFE: $1F
    rrca                                          ; $6DFF: $0F
    db $FC                                        ; $6E00: $FC
    sbc b                                         ; $6E01: $98
    cp $30                                        ; $6E02: $FE $30
    db $FD                                        ; $6E04: $FD
    adc [hl]                                      ; $6E05: $8E
    rst RST_38                                    ; $6E06: $FF
    ld [hl], b                                    ; $6E07: $70
    cp $7D                                        ; $6E08: $FE $7D
    cp $61                                        ; $6E0A: $FE $61
    ldh a, [rIF]                                  ; $6E0C: $F0 $0F
    ld sp, hl                                     ; $6E0E: $F9

jr_00C_6E0F:
    ld b, [hl]                                    ; $6E0F: $46
    rst RST_38                                    ; $6E10: $FF
    jr jr_00C_6E0F                                ; $6E11: $18 $FC

    dec sp                                        ; $6E13: $3B
    db $EC                                        ; $6E14: $EC
    dec sp                                        ; $6E15: $3B
    rst RST_38                                    ; $6E16: $FF
    db $10                                        ; $6E17: $10
    scf                                           ; $6E18: $37
    jp $C0E3                                      ; $6E19: $C3 $E3 $C0


    ldh [rP1], a                                  ; $6E1C: $E0 $00
    ldh [$FFC0], a                                ; $6E1E: $E0 $C0
    nop                                           ; $6E20: $00
    nop                                           ; $6E21: $00
    nop                                           ; $6E22: $00
    nop                                           ; $6E23: $00
    nop                                           ; $6E24: $00
    nop                                           ; $6E25: $00
    nop                                           ; $6E26: $00
    nop                                           ; $6E27: $00
    nop                                           ; $6E28: $00
    nop                                           ; $6E29: $00
    nop                                           ; $6E2A: $00
    nop                                           ; $6E2B: $00
    nop                                           ; $6E2C: $00

jr_00C_6E2D:
    nop                                           ; $6E2D: $00
    nop                                           ; $6E2E: $00
    nop                                           ; $6E2F: $00
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
    ldh [rP1], a                                  ; $6E3A: $E0 $00
    call c, $F420                                 ; $6E3C: $DC $20 $F4
    xor b                                         ; $6E3F: $A8
    nop                                           ; $6E40: $00
    nop                                           ; $6E41: $00
    nop                                           ; $6E42: $00
    nop                                           ; $6E43: $00
    nop                                           ; $6E44: $00
    nop                                           ; $6E45: $00

jr_00C_6E46:
    nop                                           ; $6E46: $00
    nop                                           ; $6E47: $00

jr_00C_6E48:
    nop                                           ; $6E48: $00
    nop                                           ; $6E49: $00
    or [hl]                                       ; $6E4A: $B6
    nop                                           ; $6E4B: $00
    ld l, d                                       ; $6E4C: $6A
    sub h                                         ; $6E4D: $94
    ld a, h                                       ; $6E4E: $7C
    xor b                                         ; $6E4F: $A8
    db $FC                                        ; $6E50: $FC
    ld [$F0F8], sp                                ; $6E51: $08 $F8 $F0
    ld hl, sp-$10                                 ; $6E54: $F8 $F0
    ld hl, sp+$70                                 ; $6E56: $F8 $70
    ld hl, sp+$70                                 ; $6E58: $F8 $70

jr_00C_6E5A:
    db $FC                                        ; $6E5A: $FC
    ldh a, [$FFFA]                                ; $6E5B: $F0 $FA
    db $EC                                        ; $6E5D: $EC

jr_00C_6E5E:
    cp $00                                        ; $6E5E: $FE $00
    ccf                                           ; $6E60: $3F
    rlca                                          ; $6E61: $07
    ld b, a                                       ; $6E62: $47
    dec sp                                        ; $6E63: $3B
    ld b, a                                       ; $6E64: $47
    jr c, jr_00C_6E2D                             ; $6E65: $38 $C6

    add hl, sp                                    ; $6E67: $39
    ld [$F3D1], a                                 ; $6E68: $EA $D1 $F3
    ldh [$FFF2], a                                ; $6E6B: $E0 $F2
    pop bc                                        ; $6E6D: $C1
    pop de                                        ; $6E6E: $D1
    jr nz, jr_00C_6E82                            ; $6E6F: $20 $11

    ldh [rNR41], a                                ; $6E71: $E0 $20
    ret nz                                        ; $6E73: $C0

    ld b, b                                       ; $6E74: $40
    add b                                         ; $6E75: $80
    add b                                         ; $6E76: $80
    nop                                           ; $6E77: $00
    add b                                         ; $6E78: $80
    nop                                           ; $6E79: $00
    nop                                           ; $6E7A: $00
    nop                                           ; $6E7B: $00
    nop                                           ; $6E7C: $00
    nop                                           ; $6E7D: $00
    nop                                           ; $6E7E: $00
    nop                                           ; $6E7F: $00
    and b                                         ; $6E80: $A0
    ld b, b                                       ; $6E81: $40

jr_00C_6E82:
    and b                                         ; $6E82: $A0
    ld b, b                                       ; $6E83: $40
    jr nz, jr_00C_6E46                            ; $6E84: $20 $C0

    jr nc, jr_00C_6E48                            ; $6E86: $30 $C0

    jr c, jr_00C_6E5A                             ; $6E88: $38 $D0

    ld hl, sp+$10                                 ; $6E8A: $F8 $10
    jr c, jr_00C_6E5E                             ; $6E8C: $38 $D0

    db $10                                        ; $6E8E: $10
    ldh [rNR10], a                                ; $6E8F: $E0 $10
    ldh [$FF90], a                                ; $6E91: $E0 $90
    ld h, b                                       ; $6E93: $60
    ldh a, [rP1]                                  ; $6E94: $F0 $00
    adc b                                         ; $6E96: $88
    ld [hl], b                                    ; $6E97: $70
    ld e, [hl]                                    ; $6E98: $5E
    jr nz, jr_00C_6EF8                            ; $6E99: $20 $5D

    ld [hl+], a                                   ; $6E9B: $22
    ld a, a                                       ; $6E9C: $7F
    nop                                           ; $6E9D: $00
    nop                                           ; $6E9E: $00
    nop                                           ; $6E9F: $00
    ld bc, $0300                                  ; $6EA0: $01 $00 $03
    nop                                           ; $6EA3: $00
    rlca                                          ; $6EA4: $07
    ld [bc], a                                    ; $6EA5: $02
    rlca                                          ; $6EA6: $07
    inc bc                                        ; $6EA7: $03
    rlca                                          ; $6EA8: $07
    inc bc                                        ; $6EA9: $03
    ld b, $03                                     ; $6EAA: $06 $03
    rlca                                          ; $6EAC: $07
    nop                                           ; $6EAD: $00
    ld [$1E07], sp                                ; $6EAE: $08 $07 $1E
    ld bc, $003F                                  ; $6EB1: $01 $3F $00
    ld d, l                                       ; $6EB4: $55
    ld a, [hl+]                                   ; $6EB5: $2A
    ld a, a                                       ; $6EB6: $7F
    nop                                           ; $6EB7: $00
    nop                                           ; $6EB8: $00
    nop                                           ; $6EB9: $00
    nop                                           ; $6EBA: $00
    nop                                           ; $6EBB: $00
    nop                                           ; $6EBC: $00
    nop                                           ; $6EBD: $00
    nop                                           ; $6EBE: $00
    nop                                           ; $6EBF: $00
    inc bc                                        ; $6EC0: $03
    nop                                           ; $6EC1: $00
    inc bc                                        ; $6EC2: $03
    ld bc, $0103                                  ; $6EC3: $01 $03 $01
    inc bc                                        ; $6EC6: $03
    ld bc, $0103                                  ; $6EC7: $01 $03 $01
    inc bc                                        ; $6ECA: $03
    ld bc, $0103                                  ; $6ECB: $01 $03 $01
    dec b                                         ; $6ECE: $05
    nop                                           ; $6ECF: $00
    rlca                                          ; $6ED0: $07
    nop                                           ; $6ED1: $00
    rlca                                          ; $6ED2: $07
    ld [bc], a                                    ; $6ED3: $02
    rlca                                          ; $6ED4: $07
    inc bc                                        ; $6ED5: $03
    inc bc                                        ; $6ED6: $03
    ld bc, $0103                                  ; $6ED7: $01 $03 $01
    ld bc, $0100                                  ; $6EDA: $01 $00 $01
    nop                                           ; $6EDD: $00
    ld bc, $0000                                  ; $6EDE: $01 $00 $00
    nop                                           ; $6EE1: $00
    nop                                           ; $6EE2: $00
    nop                                           ; $6EE3: $00
    nop                                           ; $6EE4: $00
    nop                                           ; $6EE5: $00
    nop                                           ; $6EE6: $00
    nop                                           ; $6EE7: $00
    nop                                           ; $6EE8: $00
    nop                                           ; $6EE9: $00
    ld bc, $0300                                  ; $6EEA: $01 $00 $03
    ld bc, $0307                                  ; $6EED: $01 $07 $03
    rrca                                          ; $6EF0: $0F
    ld b, $9F                                     ; $6EF1: $06 $9F
    dec c                                         ; $6EF3: $0D
    rst RST_18                                    ; $6EF4: $DF
    dec c                                         ; $6EF5: $0D
    rst RST_30                                    ; $6EF6: $F7
    ld e, a                                       ; $6EF7: $5F

jr_00C_6EF8:
    rst RST_28                                    ; $6EF8: $EF
    ld e, a                                       ; $6EF9: $5F
    rst RST_30                                    ; $6EFA: $F7
    ld a, h                                       ; $6EFB: $7C
    xor $7D                                       ; $6EFC: $EE $7D
    rst RST_28                                    ; $6EFE: $EF
    ld a, a                                       ; $6EFF: $7F
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
    add b                                         ; $6F0A: $80
    nop                                           ; $6F0B: $00
    cp a                                          ; $6F0C: $BF
    nop                                           ; $6F0D: $00
    rst RST_38                                    ; $6F0E: $FF
    ld a, $FE                                     ; $6F0F: $3E $FE
    ld hl, sp-$01                                 ; $6F11: $F8 $FF
    db $F4                                        ; $6F13: $F4
    rst RST_38                                    ; $6F14: $FF
    rst RST_38                                    ; $6F15: $FF
    ei                                            ; $6F16: $FB
    rst RST_38                                    ; $6F17: $FF
    db $FD                                        ; $6F18: $FD
    rst RST_38                                    ; $6F19: $FF
    ld a, [$FCFF]                                 ; $6F1A: $FA $FF $FC
    rst RST_08                                    ; $6F1D: $CF
    db $ED                                        ; $6F1E: $ED
    rst RST_10                                    ; $6F1F: $D7
    db $FC                                        ; $6F20: $FC
    ld e, b                                       ; $6F21: $58
    cp $30                                        ; $6F22: $FE $30
    db $FD                                        ; $6F24: $FD
    ld c, [hl]                                    ; $6F25: $4E
    rst RST_38                                    ; $6F26: $FF
    or b                                          ; $6F27: $B0
    cp $BD                                        ; $6F28: $FE $BD
    cp $21                                        ; $6F2A: $FE $21
    ldh a, [$FF8F]                                ; $6F2C: $F0 $8F
    ld sp, hl                                     ; $6F2E: $F9
    add $FF                                       ; $6F2F: $C6 $FF
    sbc b                                         ; $6F31: $98
    db $FC                                        ; $6F32: $FC
    dec sp                                        ; $6F33: $3B
    db $EC                                        ; $6F34: $EC
    cp e                                          ; $6F35: $BB
    rst RST_38                                    ; $6F36: $FF
    db $10                                        ; $6F37: $10
    scf                                           ; $6F38: $37
    jp $C0E3                                      ; $6F39: $C3 $E3 $C0


    ldh [rP1], a                                  ; $6F3C: $E0 $00
    ldh [$FFC0], a                                ; $6F3E: $E0 $C0
    rst RST_38                                    ; $6F40: $FF
    pop af                                        ; $6F41: $F1
    pop af                                        ; $6F42: $F1
    xor $F6                                       ; $6F43: $EE $F6
    rst RST_28                                    ; $6F45: $EF
    ldh [$FFDF], a                                ; $6F46: $E0 $DF
    ei                                            ; $6F48: $FB
    call nz, $E1FF                                ; $6F49: $C4 $FF $E1
    or e                                          ; $6F4C: $B3
    db $ED                                        ; $6F4D: $ED
    ccf                                           ; $6F4E: $3F
    pop af                                        ; $6F4F: $F1
    sbc a                                         ; $6F50: $9F
    ld a, a                                       ; $6F51: $7F
    rst RST_28                                    ; $6F52: $EF
    sbc a                                         ; $6F53: $9F
    rst RST_18                                    ; $6F54: $DF
    ld a, a                                       ; $6F55: $7F
    ld l, a                                       ; $6F56: $6F
    rra                                           ; $6F57: $1F
    rra                                           ; $6F58: $1F
    inc bc                                        ; $6F59: $03
    rrca                                          ; $6F5A: $0F
    ld b, $1E                                     ; $6F5B: $06 $1E
    nop                                           ; $6F5D: $00
    nop                                           ; $6F5E: $00
    nop                                           ; $6F5F: $00
    rst RST_38                                    ; $6F60: $FF
    rst RST_38                                    ; $6F61: $FF
    rst RST_38                                    ; $6F62: $FF
    rst RST_38                                    ; $6F63: $FF
    rst RST_38                                    ; $6F64: $FF
    ld a, a                                       ; $6F65: $7F
    rst RST_38                                    ; $6F66: $FF
    ld a, l                                       ; $6F67: $7D
    rst RST_38                                    ; $6F68: $FF
    cp $FF                                        ; $6F69: $FE $FF
    cp $FF                                        ; $6F6B: $FE $FF
    cp $F7                                        ; $6F6D: $FE $F7
    cp $EF                                        ; $6F6F: $FE $EF
    db $FD                                        ; $6F71: $FD
    rst RST_08                                    ; $6F72: $CF
    db $FD                                        ; $6F73: $FD
    ld a, a                                       ; $6F74: $7F
    db $EC                                        ; $6F75: $EC
    rst RST_38                                    ; $6F76: $FF
    jp z, $99FF                                   ; $6F77: $CA $FF $99

    cp e                                          ; $6F7A: $BB
    dec d                                         ; $6F7B: $15
    ccf                                           ; $6F7C: $3F
    nop                                           ; $6F7D: $00
    rra                                           ; $6F7E: $1F
    rrca                                          ; $6F7F: $0F
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
    add b                                         ; $6F94: $80
    nop                                           ; $6F95: $00
    ret nz                                        ; $6F96: $C0

    add b                                         ; $6F97: $80
    ldh [$FFC0], a                                ; $6F98: $E0 $C0
    ld hl, sp+$20                                 ; $6F9A: $F8 $20
    rst RST_30                                    ; $6F9C: $F7
    adc b                                         ; $6F9D: $88
    db $FD                                        ; $6F9E: $FD
    cp d                                          ; $6F9F: $BA
    nop                                           ; $6FA0: $00
    nop                                           ; $6FA1: $00
    nop                                           ; $6FA2: $00
    nop                                           ; $6FA3: $00
    nop                                           ; $6FA4: $00
    nop                                           ; $6FA5: $00
    nop                                           ; $6FA6: $00
    nop                                           ; $6FA7: $00
    ld [$1600], sp                                ; $6FA8: $08 $00 $16
    ld [$0639], sp                                ; $6FAB: $08 $39 $06
    ccf                                           ; $6FAE: $3F
    nop                                           ; $6FAF: $00
    ld c, [hl]                                    ; $6FB0: $4E
    jr nc, @+$46                                  ; $6FB1: $30 $44

    jr c, @-$78                                   ; $6FB3: $38 $86

    ld a, b                                       ; $6FB5: $78
    adc a                                         ; $6FB6: $8F
    ld [hl], h                                    ; $6FB7: $74
    adc a                                         ; $6FB8: $8F
    ld [hl], d                                    ; $6FB9: $72
    rra                                           ; $6FBA: $1F
    ldh [c], a                                    ; $6FBB: $E2
    ld e, $E0                                     ; $6FBC: $1E $E0
    sbc h                                         ; $6FBE: $9C
    ld l, b                                       ; $6FBF: $68
    ld hl, sp+$30                                 ; $6FC0: $F8 $30
    ldh a, [$FFE0]                                ; $6FC2: $F0 $E0
    ldh a, [$FF60]                                ; $6FC4: $F0 $60
    ldh a, [$FF60]                                ; $6FC6: $F0 $60
    ldh [rP1], a                                  ; $6FC8: $E0 $00
    ldh [rLCDC], a                                ; $6FCA: $E0 $40
    ld b, b                                       ; $6FCC: $40
    add b                                         ; $6FCD: $80
    ld b, b                                       ; $6FCE: $40
    add b                                         ; $6FCF: $80
    ldh [rP1], a                                  ; $6FD0: $E0 $00
    ld d, b                                       ; $6FD2: $50
    and b                                         ; $6FD3: $A0
    ld d, b                                       ; $6FD4: $50
    and b                                         ; $6FD5: $A0
    xor b                                         ; $6FD6: $A8
    ld d, b                                       ; $6FD7: $50
    ld hl, sp+$00                                 ; $6FD8: $F8 $00
    ld hl, sp+$60                                 ; $6FDA: $F8 $60
    cp h                                          ; $6FDC: $BC
    ret c                                         ; $6FDD: $D8

    xor [hl]                                      ; $6FDE: $AE
    ld d, h                                       ; $6FDF: $54
    ldh a, [c]                                    ; $6FE0: $F2
    xor h                                         ; $6FE1: $AC
    rst RST_38                                    ; $6FE2: $FF
    xor d                                         ; $6FE3: $AA
    db $FD                                        ; $6FE4: $FD
    ld b, $0F                                     ; $6FE5: $06 $0F
    ldh a, [rIE]                                  ; $6FE7: $F0 $FF
    sub [hl]                                      ; $6FE9: $96
    sbc [hl]                                      ; $6FEA: $9E
    ld l, b                                       ; $6FEB: $68
    sbc [hl]                                      ; $6FEC: $9E
    ld h, h                                       ; $6FED: $64
    db $FC                                        ; $6FEE: $FC
    sbc b                                         ; $6FEF: $98
    cp $64                                        ; $6FF0: $FE $64
    ld a, [hl]                                    ; $6FF2: $7E
    sbc b                                         ; $6FF3: $98
    ld a, [hl]                                    ; $6FF4: $7E
    cp h                                          ; $6FF5: $BC
    ld a, [$F67C]                                 ; $6FF6: $FA $7C $F6
    ld a, b                                       ; $6FF9: $78
    xor $B0                                       ; $6FFA: $EE $B0
    db $FD                                        ; $6FFC: $FD
    jp nz, $F0EF                                  ; $6FFD: $C2 $EF $F0

    ld bc, $0100                                  ; $7000: $01 $00 $01
    nop                                           ; $7003: $00
    ld [bc], a                                    ; $7004: $02
    ld bc, $0102                                  ; $7005: $01 $02 $01
    rlca                                          ; $7008: $07
    nop                                           ; $7009: $00
    rlca                                          ; $700A: $07
    inc bc                                        ; $700B: $03
    rlca                                          ; $700C: $07

jr_00C_700D:
    nop                                           ; $700D: $00
    ld [$0807], sp                                ; $700E: $08 $07 $08
    rlca                                          ; $7011: $07
    ld [$1007], sp                                ; $7012: $08 $07 $10
    rrca                                          ; $7015: $0F
    db $10                                        ; $7016: $10
    rrca                                          ; $7017: $0F
    db $10                                        ; $7018: $10
    rrca                                          ; $7019: $0F
    rra                                           ; $701A: $1F
    nop                                           ; $701B: $00
    cpl                                           ; $701C: $2F
    inc d                                         ; $701D: $14
    cpl                                           ; $701E: $2F
    inc d                                         ; $701F: $14
    scf                                           ; $7020: $37
    ld a, [bc]                                    ; $7021: $0A
    scf                                           ; $7022: $37
    ld a, [bc]                                    ; $7023: $0A
    ld a, l                                       ; $7024: $7D
    ld [bc], a                                    ; $7025: $02
    ld e, a                                       ; $7026: $5F
    ld hl, $738E                                  ; $7027: $21 $8E $73
    adc a                                         ; $702A: $8F
    ld [hl], d                                    ; $702B: $72
    ld c, l                                       ; $702C: $4D
    ld [hl], $3B                                  ; $702D: $36 $3B

jr_00C_702F:
    dec b                                         ; $702F: $05
    ccf                                           ; $7030: $3F
    nop                                           ; $7031: $00
    ccf                                           ; $7032: $3F
    ld b, $2F                                     ; $7033: $06 $2F
    ld de, $023F                                  ; $7035: $11 $3F $02
    inc de                                        ; $7038: $13
    dec c                                         ; $7039: $0D
    add hl, de                                    ; $703A: $19
    ld b, $0C                                     ; $703B: $06 $0C
    inc bc                                        ; $703D: $03
    ld [bc], a                                    ; $703E: $02
    ld bc, $1FFE                                  ; $703F: $01 $FE $1F
    cp l                                          ; $7042: $BD
    ld e, [hl]                                    ; $7043: $5E
    ld a, e                                       ; $7044: $7B
    inc l                                         ; $7045: $2C
    rst RST_38                                    ; $7046: $FF
    ld [hl], b                                    ; $7047: $70
    ei                                            ; $7048: $FB
    ld a, h                                       ; $7049: $7C
    db $F4                                        ; $704A: $F4
    ld a, b                                       ; $704B: $78
    db $F4                                        ; $704C: $F4
    ld a, b                                       ; $704D: $78
    ld hl, sp+$70                                 ; $704E: $F8 $70
    ld hl, sp+$40                                 ; $7050: $F8 $40
    ret z                                         ; $7052: $C8

    jr nc, jr_00C_700D                            ; $7053: $30 $B8

    ld b, b                                       ; $7055: $40
    ld hl, sp+$00                                 ; $7056: $F8 $00
    ld a, h                                       ; $7058: $7C
    nop                                           ; $7059: $00
    ld a, h                                       ; $705A: $7C
    nop                                           ; $705B: $00
    ld d, d                                       ; $705C: $52
    inc l                                         ; $705D: $2C
    ld a, $00                                     ; $705E: $3E $00
    nop                                           ; $7060: $00
    nop                                           ; $7061: $00
    nop                                           ; $7062: $00
    nop                                           ; $7063: $00
    nop                                           ; $7064: $00
    nop                                           ; $7065: $00
    ld [bc], a                                    ; $7066: $02
    nop                                           ; $7067: $00
    dec b                                         ; $7068: $05
    ld [bc], a                                    ; $7069: $02
    inc b                                         ; $706A: $04
    inc bc                                        ; $706B: $03
    ld [$0807], sp                                ; $706C: $08 $07 $08
    rlca                                          ; $706F: $07
    dec d                                         ; $7070: $15
    rrca                                          ; $7071: $0F
    rla                                           ; $7072: $17
    rrca                                          ; $7073: $0F
    cpl                                           ; $7074: $2F
    rra                                           ; $7075: $1F
    cpl                                           ; $7076: $2F
    rra                                           ; $7077: $1F
    ccf                                           ; $7078: $3F
    rra                                           ; $7079: $1F
    ld e, a                                       ; $707A: $5F
    ccf                                           ; $707B: $3F
    ld a, a                                       ; $707C: $7F
    ccf                                           ; $707D: $3F
    ld a, a                                       ; $707E: $7F
    ccf                                           ; $707F: $3F
    ld a, a                                       ; $7080: $7F
    ccf                                           ; $7081: $3F
    ld a, a                                       ; $7082: $7F
    ccf                                           ; $7083: $3F
    ld a, a                                       ; $7084: $7F
    ccf                                           ; $7085: $3F
    ld a, a                                       ; $7086: $7F
    ccf                                           ; $7087: $3F
    ld e, a                                       ; $7088: $5F
    ccf                                           ; $7089: $3F
    ccf                                           ; $708A: $3F
    rra                                           ; $708B: $1F
    cpl                                           ; $708C: $2F
    rra                                           ; $708D: $1F
    cpl                                           ; $708E: $2F
    rra                                           ; $708F: $1F
    rla                                           ; $7090: $17
    rrca                                          ; $7091: $0F
    dec d                                         ; $7092: $15
    rrca                                          ; $7093: $0F
    ld [$0807], sp                                ; $7094: $08 $07 $08
    rlca                                          ; $7097: $07
    dec b                                         ; $7098: $05
    ld [bc], a                                    ; $7099: $02
    ld [bc], a                                    ; $709A: $02
    nop                                           ; $709B: $00
    nop                                           ; $709C: $00
    nop                                           ; $709D: $00
    nop                                           ; $709E: $00
    nop                                           ; $709F: $00
    jr jr_00C_70A2                                ; $70A0: $18 $00

jr_00C_70A2:
    jr z, jr_00C_70B4                             ; $70A2: $28 $10

    ld d, b                                       ; $70A4: $50
    jr nz, jr_00C_702F                            ; $70A5: $20 $88

    ld [hl], b                                    ; $70A7: $70
    inc de                                        ; $70A8: $13
    ldh [$FF5C], a                                ; $70A9: $E0 $5C
    db $E3                                        ; $70AB: $E3
    ret nc                                        ; $70AC: $D0

    rst RST_28                                    ; $70AD: $EF
    and c                                         ; $70AE: $A1
    sbc $99                                       ; $70AF: $DE $99
    cp $3A                                        ; $70B1: $FE $3A
    db $FC                                        ; $70B3: $FC

jr_00C_70B4:
    ld [hl], e                                    ; $70B4: $73
    db $FC                                        ; $70B5: $FC
    ldh a, [rIE]                                  ; $70B6: $F0 $FF
    ldh [rIE], a                                  ; $70B8: $E0 $FF
    and $FF                                       ; $70BA: $E6 $FF
    ret c                                         ; $70BC: $D8

    rst RST_38                                    ; $70BD: $FF
    ldh a, [rIE]                                  ; $70BE: $F0 $FF
    rst RST_38                                    ; $70C0: $FF
    rst RST_38                                    ; $70C1: $FF
    cp $FF                                        ; $70C2: $FE $FF
    ld hl, sp-$01                                 ; $70C4: $F8 $FF
    ldh [rIE], a                                  ; $70C6: $E0 $FF
    ldh a, [rIE]                                  ; $70C8: $F0 $FF
    ld hl, sp-$01                                 ; $70CA: $F8 $FF
    call c, $C6FF                                 ; $70CC: $DC $FF $C6
    rst RST_38                                    ; $70CF: $FF
    ld [hl], b                                    ; $70D0: $70
    rst RST_38                                    ; $70D1: $FF
    and b                                         ; $70D2: $A0
    rst RST_38                                    ; $70D3: $FF
    add d                                         ; $70D4: $82
    db $FD                                        ; $70D5: $FD
    ld b, c                                       ; $70D6: $41
    cp $18                                        ; $70D7: $FE $18
    rst RST_20                                    ; $70D9: $E7
    sub a                                         ; $70DA: $97
    ld h, b                                       ; $70DB: $60
    ld d, b                                       ; $70DC: $50
    jr nz, jr_00C_710F                            ; $70DD: $20 $30

    nop                                           ; $70DF: $00
    nop                                           ; $70E0: $00
    nop                                           ; $70E1: $00
    nop                                           ; $70E2: $00
    nop                                           ; $70E3: $00
    nop                                           ; $70E4: $00
    nop                                           ; $70E5: $00

jr_00C_70E6:
    jr nc, jr_00C_70E8                            ; $70E6: $30 $00

jr_00C_70E8:
    ret nc                                        ; $70E8: $D0

    jr nz, jr_00C_710E                            ; $70E9: $20 $23

    ret nz                                        ; $70EB: $C0

    ld c, l                                       ; $70EC: $4D
    add e                                         ; $70ED: $83
    sub a                                         ; $70EE: $97

jr_00C_70EF:
    ld [$061F], sp                                ; $70EF: $08 $1F $06
    scf                                           ; $70F2: $37
    ld [$24DF], sp                                ; $70F3: $08 $DF $24
    ld l, $D9                                     ; $70F6: $2E $D9
    ld a, a                                       ; $70F8: $7F
    sub b                                         ; $70F9: $90
    ld a, a                                       ; $70FA: $7F
    add b                                         ; $70FB: $80
    rlca                                          ; $70FC: $07
    ld hl, sp+$00                                 ; $70FD: $F8 $00
    rst RST_38                                    ; $70FF: $FF
    inc bc                                        ; $7100: $03
    db $FC                                        ; $7101: $FC
    adc a                                         ; $7102: $8F
    di                                            ; $7103: $F3
    rra                                           ; $7104: $1F
    pop hl                                        ; $7105: $E1
    rlca                                          ; $7106: $07
    ld a, [$E71F]                                 ; $7107: $FA $1F $E7
    ccf                                           ; $710A: $3F
    rst RST_00                                    ; $710B: $C7
    rst RST_10                                    ; $710C: $D7
    ld [hl+], a                                   ; $710D: $22

jr_00C_710E:
    ld h, e                                       ; $710E: $63

jr_00C_710F:
    add c                                         ; $710F: $81
    inc hl                                        ; $7110: $23
    pop bc                                        ; $7111: $C1
    ld d, c                                       ; $7112: $51
    add b                                         ; $7113: $80
    jr z, jr_00C_70E6                             ; $7114: $28 $D0

    ld b, l                                       ; $7116: $45
    cp b                                          ; $7117: $B8
    cp e                                          ; $7118: $BB
    nop                                           ; $7119: $00
    add a                                         ; $711A: $87
    nop                                           ; $711B: $00
    adc d                                         ; $711C: $8A
    dec b                                         ; $711D: $05
    rrca                                          ; $711E: $0F
    nop                                           ; $711F: $00
    nop                                           ; $7120: $00
    nop                                           ; $7121: $00
    nop                                           ; $7122: $00
    nop                                           ; $7123: $00
    nop                                           ; $7124: $00
    nop                                           ; $7125: $00
    ld [bc], a                                    ; $7126: $02
    nop                                           ; $7127: $00
    dec b                                         ; $7128: $05
    ld [bc], a                                    ; $7129: $02
    rlca                                          ; $712A: $07
    inc bc                                        ; $712B: $03
    dec bc                                        ; $712C: $0B
    rlca                                          ; $712D: $07
    add hl, bc                                    ; $712E: $09
    rlca                                          ; $712F: $07
    ld [de], a                                    ; $7130: $12
    rrca                                          ; $7131: $0F
    db $10                                        ; $7132: $10
    rrca                                          ; $7133: $0F
    jr nz, jr_00C_7155                            ; $7134: $20 $1F

    jr z, @+$21                                   ; $7136: $28 $1F

    jr c, jr_00C_7159                             ; $7138: $38 $1F

    ld a, h                                       ; $713A: $7C
    ccf                                           ; $713B: $3F
    ld a, b                                       ; $713C: $78
    ccf                                           ; $713D: $3F
    ld a, h                                       ; $713E: $7C
    ccf                                           ; $713F: $3F
    ld [hl], b                                    ; $7140: $70
    ccf                                           ; $7141: $3F
    ld a, b                                       ; $7142: $78
    ccf                                           ; $7143: $3F
    ld a, [hl]                                    ; $7144: $7E
    ccf                                           ; $7145: $3F
    ld [hl], b                                    ; $7146: $70
    ccf                                           ; $7147: $3F
    ld a, b                                       ; $7148: $78
    ccf                                           ; $7149: $3F
    inc a                                         ; $714A: $3C
    rra                                           ; $714B: $1F
    jr nz, jr_00C_716D                            ; $714C: $20 $1F

    jr nz, jr_00C_716F                            ; $714E: $20 $1F

    db $10                                        ; $7150: $10
    rrca                                          ; $7151: $0F
    inc de                                        ; $7152: $13
    rrca                                          ; $7153: $0F
    rrca                                          ; $7154: $0F

jr_00C_7155:
    rlca                                          ; $7155: $07
    ld c, $07                                     ; $7156: $0E $07
    dec b                                         ; $7158: $05

jr_00C_7159:
    ld [bc], a                                    ; $7159: $02
    ld [bc], a                                    ; $715A: $02
    nop                                           ; $715B: $00
    nop                                           ; $715C: $00
    nop                                           ; $715D: $00
    nop                                           ; $715E: $00
    nop                                           ; $715F: $00
    jr jr_00C_7162                                ; $7160: $18 $00

jr_00C_7162:
    jr z, jr_00C_7174                             ; $7162: $28 $10

    ld d, b                                       ; $7164: $50
    jr nz, jr_00C_70EF                            ; $7165: $20 $88

    ld [hl], b                                    ; $7167: $70
    db $D3                                        ; $7168: $D3
    ldh [$FFFC], a                                ; $7169: $E0 $FC
    db $E3                                        ; $716B: $E3
    db $F4                                        ; $716C: $F4

jr_00C_716D:
    rst RST_28                                    ; $716D: $EF
    ld a, a                                       ; $716E: $7F

jr_00C_716F:
    sbc $3F                                       ; $716F: $DE $3F
    cp $3E                                        ; $7171: $FE $3E
    db $FC                                        ; $7173: $FC

jr_00C_7174:
    ld a, a                                       ; $7174: $7F
    db $FC                                        ; $7175: $FC
    ld b, a                                       ; $7176: $47
    rst RST_38                                    ; $7177: $FF
    rlca                                          ; $7178: $07
    rst RST_38                                    ; $7179: $FF
    rrca                                          ; $717A: $0F
    rst RST_38                                    ; $717B: $FF
    rlca                                          ; $717C: $07
    rst RST_38                                    ; $717D: $FF
    rra                                           ; $717E: $1F
    rst RST_38                                    ; $717F: $FF
    ccf                                           ; $7180: $3F
    rst RST_38                                    ; $7181: $FF
    rlca                                          ; $7182: $07
    rst RST_38                                    ; $7183: $FF
    ld c, $FF                                     ; $7184: $0E $FF
    rlca                                          ; $7186: $07
    rst RST_38                                    ; $7187: $FF
    ld c, $FF                                     ; $7188: $0E $FF
    ld a, $FF                                     ; $718A: $3E $FF
    ld e, $FF                                     ; $718C: $1E $FF
    sbc $FF                                       ; $718E: $DE $FF
    ld a, c                                       ; $7190: $79
    rst RST_38                                    ; $7191: $FF
    ld a, h                                       ; $7192: $7C
    rst RST_38                                    ; $7193: $FF
    ldh [c], a                                    ; $7194: $E2
    db $FD                                        ; $7195: $FD
    pop bc                                        ; $7196: $C1
    cp $18                                        ; $7197: $FE $18
    rst RST_20                                    ; $7199: $E7
    sub a                                         ; $719A: $97
    ld h, b                                       ; $719B: $60
    ld d, b                                       ; $719C: $50
    jr nz, jr_00C_71CF                            ; $719D: $20 $30

    nop                                           ; $719F: $00
    nop                                           ; $71A0: $00
    nop                                           ; $71A1: $00
    nop                                           ; $71A2: $00
    nop                                           ; $71A3: $00

jr_00C_71A4:
    jr nc, jr_00C_71A6                            ; $71A4: $30 $00

jr_00C_71A6:
    ret nc                                        ; $71A6: $D0

    jr nz, jr_00C_71CC                            ; $71A7: $20 $23

    ret nz                                        ; $71A9: $C0

    ld c, l                                       ; $71AA: $4D
    add e                                         ; $71AB: $83
    sub a                                         ; $71AC: $97
    ld [$061F], sp                                ; $71AD: $08 $1F $06
    scf                                           ; $71B0: $37
    ld [$24DF], sp                                ; $71B1: $08 $DF $24
    ld l, $D9                                     ; $71B4: $2E $D9
    rst RST_38                                    ; $71B6: $FF
    sub b                                         ; $71B7: $90
    ld a, a                                       ; $71B8: $7F
    add b                                         ; $71B9: $80
    add a                                         ; $71BA: $87
    ld hl, sp-$20                                 ; $71BB: $F8 $E0
    rst RST_38                                    ; $71BD: $FF
    db $E3                                        ; $71BE: $E3
    db $FC                                        ; $71BF: $FC
    adc a                                         ; $71C0: $8F
    di                                            ; $71C1: $F3
    rra                                           ; $71C2: $1F
    pop hl                                        ; $71C3: $E1
    rlca                                          ; $71C4: $07
    ld a, [$E79F]                                 ; $71C5: $FA $9F $E7
    ccf                                           ; $71C8: $3F
    rst RST_00                                    ; $71C9: $C7
    rst RST_10                                    ; $71CA: $D7
    ld [hl+], a                                   ; $71CB: $22

jr_00C_71CC:
    ld h, e                                       ; $71CC: $63
    add c                                         ; $71CD: $81
    inc hl                                        ; $71CE: $23

jr_00C_71CF:
    pop bc                                        ; $71CF: $C1
    ld d, c                                       ; $71D0: $51
    add b                                         ; $71D1: $80
    jr z, jr_00C_71A4                             ; $71D2: $28 $D0

    ld b, l                                       ; $71D4: $45
    cp b                                          ; $71D5: $B8
    cp e                                          ; $71D6: $BB
    nop                                           ; $71D7: $00
    add a                                         ; $71D8: $87
    nop                                           ; $71D9: $00
    adc d                                         ; $71DA: $8A
    dec b                                         ; $71DB: $05
    rrca                                          ; $71DC: $0F
    nop                                           ; $71DD: $00
    nop                                           ; $71DE: $00
    nop                                           ; $71DF: $00
    nop                                           ; $71E0: $00
    nop                                           ; $71E1: $00
    nop                                           ; $71E2: $00
    nop                                           ; $71E3: $00
    nop                                           ; $71E4: $00
    nop                                           ; $71E5: $00
    ld [bc], a                                    ; $71E6: $02
    nop                                           ; $71E7: $00
    rlca                                          ; $71E8: $07
    ld [bc], a                                    ; $71E9: $02
    rlca                                          ; $71EA: $07
    inc bc                                        ; $71EB: $03
    rrca                                          ; $71EC: $0F
    rlca                                          ; $71ED: $07
    rrca                                          ; $71EE: $0F
    rlca                                          ; $71EF: $07
    ld a, [de]                                    ; $71F0: $1A
    rrca                                          ; $71F1: $0F
    jr jr_00C_7203                                ; $71F2: $18 $0F

    jr nc, jr_00C_7215                            ; $71F4: $30 $1F

    jr nc, jr_00C_7217                            ; $71F6: $30 $1F

    jr nz, jr_00C_7219                            ; $71F8: $20 $1F

    ld h, b                                       ; $71FA: $60
    ccf                                           ; $71FB: $3F
    ld b, b                                       ; $71FC: $40
    ccf                                           ; $71FD: $3F
    ld b, b                                       ; $71FE: $40
    ccf                                           ; $71FF: $3F
    ld b, b                                       ; $7200: $40
    ccf                                           ; $7201: $3F
    ld b, b                                       ; $7202: $40

jr_00C_7203:
    ccf                                           ; $7203: $3F
    ld b, b                                       ; $7204: $40
    ccf                                           ; $7205: $3F
    ld b, b                                       ; $7206: $40
    ccf                                           ; $7207: $3F
    ld h, b                                       ; $7208: $60
    ccf                                           ; $7209: $3F
    jr nz, jr_00C_722B                            ; $720A: $20 $1F

    jr nc, jr_00C_722D                            ; $720C: $30 $1F

    jr nc, jr_00C_722F                            ; $720E: $30 $1F

    jr @+$11                                      ; $7210: $18 $0F

    ld a, [de]                                    ; $7212: $1A
    rrca                                          ; $7213: $0F
    rrca                                          ; $7214: $0F

jr_00C_7215:
    rlca                                          ; $7215: $07
    rrca                                          ; $7216: $0F

jr_00C_7217:
    rlca                                          ; $7217: $07
    rlca                                          ; $7218: $07

jr_00C_7219:
    ld [bc], a                                    ; $7219: $02
    ld [bc], a                                    ; $721A: $02
    nop                                           ; $721B: $00
    nop                                           ; $721C: $00
    nop                                           ; $721D: $00
    nop                                           ; $721E: $00

jr_00C_721F:
    nop                                           ; $721F: $00
    jr jr_00C_7222                                ; $7220: $18 $00

jr_00C_7222:
    jr c, jr_00C_7234                             ; $7222: $38 $10

    ld [hl], b                                    ; $7224: $70
    jr nz, jr_00C_721F                            ; $7225: $20 $F8

    ld [hl], b                                    ; $7227: $70
    di                                            ; $7228: $F3
    ldh [$FFBF], a                                ; $7229: $E0 $BF

jr_00C_722B:
    db $E3                                        ; $722B: $E3
    ccf                                           ; $722C: $3F

jr_00C_722D:
    rst RST_28                                    ; $722D: $EF
    ld a, a                                       ; $722E: $7F

jr_00C_722F:
    sbc $67                                       ; $722F: $DE $67
    cp $C6                                        ; $7231: $FE $C6
    db $FC                                        ; $7233: $FC

jr_00C_7234:
    adc a                                         ; $7234: $8F
    db $FC                                        ; $7235: $FC
    rrca                                          ; $7236: $0F
    rst RST_38                                    ; $7237: $FF

Call_00C_7238:
    rra                                           ; $7238: $1F
    rst RST_38                                    ; $7239: $FF
    add hl, de                                    ; $723A: $19
    rst RST_38                                    ; $723B: $FF
    daa                                           ; $723C: $27
    rst RST_38                                    ; $723D: $FF
    rrca                                          ; $723E: $0F
    rst RST_38                                    ; $723F: $FF
    nop                                           ; $7240: $00
    rst RST_38                                    ; $7241: $FF
    ld bc, $07FF                                  ; $7242: $01 $FF $07
    rst RST_38                                    ; $7245: $FF
    rra                                           ; $7246: $1F
    rst RST_38                                    ; $7247: $FF
    rrca                                          ; $7248: $0F
    rst RST_38                                    ; $7249: $FF
    rlca                                          ; $724A: $07
    rst RST_38                                    ; $724B: $FF
    inc hl                                        ; $724C: $23
    rst RST_38                                    ; $724D: $FF
    add hl, sp                                    ; $724E: $39
    rst RST_38                                    ; $724F: $FF
    adc a                                         ; $7250: $8F
    rst RST_38                                    ; $7251: $FF
    ld e, a                                       ; $7252: $5F
    rst RST_38                                    ; $7253: $FF
    ld a, a                                       ; $7254: $7F
    db $FD                                        ; $7255: $FD
    cp a                                          ; $7256: $BF
    cp $FF                                        ; $7257: $FE $FF
    rst RST_20                                    ; $7259: $E7
    rst RST_30                                    ; $725A: $F7
    ld h, b                                       ; $725B: $60
    ld [hl], b                                    ; $725C: $70
    jr nz, jr_00C_728F                            ; $725D: $20 $30

    nop                                           ; $725F: $00
    nop                                           ; $7260: $00
    nop                                           ; $7261: $00
    nop                                           ; $7262: $00
    nop                                           ; $7263: $00
    jr nc, jr_00C_7266                            ; $7264: $30 $00

jr_00C_7266:
    ldh a, [rNR41]                                ; $7266: $F0 $20
    db $E3                                        ; $7268: $E3
    ret nz                                        ; $7269: $C0

    call $9783                                    ; $726A: $CD $83 $97
    ld [$061F], sp                                ; $726D: $08 $1F $06
    scf                                           ; $7270: $37
    ld [$24FF], sp                                ; $7271: $08 $FF $24
    xor $D9                                       ; $7274: $EE $D9
    rst RST_38                                    ; $7276: $FF
    sub b                                         ; $7277: $90
    rst RST_38                                    ; $7278: $FF
    add b                                         ; $7279: $80
    rst RST_38                                    ; $727A: $FF
    ld hl, sp-$01                                 ; $727B: $F8 $FF
    rst RST_38                                    ; $727D: $FF
    rst RST_38                                    ; $727E: $FF
    db $FC                                        ; $727F: $FC
    ld a, a                                       ; $7280: $7F
    di                                            ; $7281: $F3
    rst RST_38                                    ; $7282: $FF
    pop hl                                        ; $7283: $E1
    rst RST_38                                    ; $7284: $FF
    ld a, [$E7FF]                                 ; $7285: $FA $FF $E7
    rst RST_38                                    ; $7288: $FF
    rst RST_00                                    ; $7289: $C7
    rst RST_30                                    ; $728A: $F7
    ld [hl+], a                                   ; $728B: $22
    db $E3                                        ; $728C: $E3
    add c                                         ; $728D: $81
    db $E3                                        ; $728E: $E3

jr_00C_728F:
    pop bc                                        ; $728F: $C1
    pop de                                        ; $7290: $D1
    add b                                         ; $7291: $80
    ld hl, sp-$30                                 ; $7292: $F8 $D0
    db $FD                                        ; $7294: $FD
    cp b                                          ; $7295: $B8
    cp e                                          ; $7296: $BB
    nop                                           ; $7297: $00
    add a                                         ; $7298: $87
    nop                                           ; $7299: $00
    adc d                                         ; $729A: $8A
    dec b                                         ; $729B: $05
    rrca                                          ; $729C: $0F
    nop                                           ; $729D: $00
    nop                                           ; $729E: $00
    nop                                           ; $729F: $00
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

Call_00C_73EF:
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

Call_00C_7828:
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
