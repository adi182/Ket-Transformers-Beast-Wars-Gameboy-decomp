; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $022", ROMX[$4000], BANK[$22]

    nop                                           ; $4000: $00
    nop                                           ; $4001: $00
    ldh [rP1], a                                  ; $4002: $E0 $00
    call c, Call_022_7660                         ; $4004: $DC $60 $76
    inc e                                         ; $4007: $1C
    db $FD                                        ; $4008: $FD
    ld [bc], a                                    ; $4009: $02
    rst RST_10                                    ; $400A: $D7
    ld a, a                                       ; $400B: $7F
    ld a, [hl]                                    ; $400C: $7E
    inc bc                                        ; $400D: $03
    ld [hl], h                                    ; $400E: $74
    rra                                           ; $400F: $1F
    sub $7F                                       ; $4010: $D6 $7F
    cp $01                                        ; $4012: $FE $01
    ld bc, $0100                                  ; $4014: $01 $00 $01
    nop                                           ; $4017: $00
    inc bc                                        ; $4018: $03
    nop                                           ; $4019: $00
    inc bc                                        ; $401A: $03
    nop                                           ; $401B: $00
    rlca                                          ; $401C: $07
    ld [bc], a                                    ; $401D: $02
    rlca                                          ; $401E: $07
    inc bc                                        ; $401F: $03
    nop                                           ; $4020: $00
    nop                                           ; $4021: $00
    nop                                           ; $4022: $00
    nop                                           ; $4023: $00
    nop                                           ; $4024: $00
    nop                                           ; $4025: $00
    nop                                           ; $4026: $00
    nop                                           ; $4027: $00
    inc b                                         ; $4028: $04
    nop                                           ; $4029: $00
    ld a, [bc]                                    ; $402A: $0A
    inc b                                         ; $402B: $04
    ld de, $110E                                  ; $402C: $11 $0E $11
    ld c, $A1                                     ; $402F: $0E $A1
    rra                                           ; $4031: $1F
    or e                                          ; $4032: $B3
    inc c                                         ; $4033: $0C
    cp $31                                        ; $4034: $FE $31
    rst RST_38                                    ; $4036: $FF
    inc l                                         ; $4037: $2C
    ld a, a                                       ; $4038: $7F
    and c                                         ; $4039: $A1
    ld [hl], e                                    ; $403A: $73
    adc h                                         ; $403B: $8C
    pop hl                                        ; $403C: $E1
    ld e, [hl]                                    ; $403D: $5E
    pop hl                                        ; $403E: $E1
    sbc $1C                                       ; $403F: $DE $1C
    nop                                           ; $4041: $00
    ld d, $0C                                     ; $4042: $16 $0C
    ld c, $04                                     ; $4044: $0E $04
    rra                                           ; $4046: $1F
    ld b, $13                                     ; $4047: $06 $13
    ld c, $0B                                     ; $4049: $0E $0B
    ld b, $0F                                     ; $404B: $06 $0F
    ld b, $07                                     ; $404D: $06 $07
    nop                                           ; $404F: $00
    rlca                                          ; $4050: $07
    ld [bc], a                                    ; $4051: $02
    rrca                                          ; $4052: $0F
    ld b, $0F                                     ; $4053: $06 $0F
    ld b, $9B                                     ; $4055: $06 $9B
    ld c, $93                                     ; $4057: $0E $93
    ld c, $F7                                     ; $4059: $0E $F7
    ld e, $EF                                     ; $405B: $1E $EF
    cp h                                          ; $405D: $BC
    rst RST_38                                    ; $405E: $FF
    ld a, d                                       ; $405F: $7A
    rlca                                          ; $4060: $07
    inc bc                                        ; $4061: $03
    rlca                                          ; $4062: $07
    ld bc, $0001                                  ; $4063: $01 $01 $00
    nop                                           ; $4066: $00
    nop                                           ; $4067: $00
    nop                                           ; $4068: $00
    nop                                           ; $4069: $00
    nop                                           ; $406A: $00
    nop                                           ; $406B: $00
    nop                                           ; $406C: $00
    nop                                           ; $406D: $00
    ld bc, $0300                                  ; $406E: $01 $00 $03
    ld bc, $0307                                  ; $4071: $01 $07 $03
    rlca                                          ; $4074: $07
    inc bc                                        ; $4075: $03
    dec c                                         ; $4076: $0D
    rlca                                          ; $4077: $07
    rrca                                          ; $4078: $0F
    rlca                                          ; $4079: $07
    rra                                           ; $407A: $1F
    inc c                                         ; $407B: $0C
    ld a, h                                       ; $407C: $7C
    ld [$60FC], sp                                ; $407D: $08 $FC $60
    pop hl                                        ; $4080: $E1
    sbc $F2                                       ; $4081: $DE $F2
    db $ED                                        ; $4083: $ED
    cp $71                                        ; $4084: $FE $71
    rst RST_38                                    ; $4086: $FF
    add b                                         ; $4087: $80
    ldh a, [$FFEF]                                ; $4088: $F0 $EF
    rst RST_38                                    ; $408A: $FF
    ld l, a                                       ; $408B: $6F
    ld a, a                                       ; $408C: $7F
    ld [bc], a                                    ; $408D: $02
    daa                                           ; $408E: $27
    ld a, [de]                                    ; $408F: $1A
    ld b, a                                       ; $4090: $47
    ld a, [hl-]                                   ; $4091: $3A
    ld b, [hl]                                    ; $4092: $46
    add hl, sp                                    ; $4093: $39
    db $ED                                        ; $4094: $ED
    ld [de], a                                    ; $4095: $12
    rst RST_30                                    ; $4096: $F7
    pop hl                                        ; $4097: $E1
    ld a, a                                       ; $4098: $7F
    db $E3                                        ; $4099: $E3
    ld a, [hl]                                    ; $409A: $7E
    rst RST_20                                    ; $409B: $E7
    rst RST_38                                    ; $409C: $FF
    rst RST_08                                    ; $409D: $CF
    db $DD                                        ; $409E: $DD
    ld c, $FF                                     ; $409F: $0E $FF
    ld [hl], $3F                                  ; $40A1: $36 $3F
    sub $3E                                       ; $40A3: $D6 $3E
    ret nz                                        ; $40A5: $C0

    ret nc                                        ; $40A6: $D0

    jr nz, jr_022_40F9                            ; $40A7: $20 $50

    and b                                         ; $40A9: $A0
    ldh a, [rLCDC]                                ; $40AA: $F0 $40
    ldh [rP1], a                                  ; $40AC: $E0 $00
    ld [hl], b                                    ; $40AE: $70
    add b                                         ; $40AF: $80
    ld hl, sp+$70                                 ; $40B0: $F8 $70
    ld a, b                                       ; $40B2: $78
    add b                                         ; $40B3: $80
    ld b, b                                       ; $40B4: $40
    add b                                         ; $40B5: $80
    ld b, b                                       ; $40B6: $40
    add b                                         ; $40B7: $80
    add b                                         ; $40B8: $80
    nop                                           ; $40B9: $00
    add b                                         ; $40BA: $80
    nop                                           ; $40BB: $00
    ret nz                                        ; $40BC: $C0

    add b                                         ; $40BD: $80
    ret nz                                        ; $40BE: $C0

    add b                                         ; $40BF: $80
    xor $7C                                       ; $40C0: $EE $7C
    call c, $9C78                                 ; $40C2: $DC $78 $9C
    ld a, b                                       ; $40C5: $78
    ld hl, sp+$70                                 ; $40C6: $F8 $70
    ldh a, [rP1]                                  ; $40C8: $F0 $00
    nop                                           ; $40CA: $00
    nop                                           ; $40CB: $00
    nop                                           ; $40CC: $00
    nop                                           ; $40CD: $00
    nop                                           ; $40CE: $00
    nop                                           ; $40CF: $00
    nop                                           ; $40D0: $00
    nop                                           ; $40D1: $00
    nop                                           ; $40D2: $00
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
    ld sp, hl                                     ; $40E0: $F9

jr_022_40E1:
    sbc [hl]                                      ; $40E1: $9E
    cp $3C                                        ; $40E2: $FE $3C
    ld [hl], h                                    ; $40E4: $74
    jr c, jr_022_415F                             ; $40E5: $38 $78

    jr nc, @+$7E                                  ; $40E7: $30 $7C

    jr nc, jr_022_415F                            ; $40E9: $30 $74

    jr z, jr_022_40E1                             ; $40EB: $28 $F4

    jr @-$0A                                      ; $40ED: $18 $F4

    ld a, b                                       ; $40EF: $78
    ld a, [$3E1C]                                 ; $40F0: $FA $1C $3E
    inc e                                         ; $40F3: $1C
    rra                                           ; $40F4: $1F
    ld c, $1F                                     ; $40F5: $0E $1F
    nop                                           ; $40F7: $00
    nop                                           ; $40F8: $00

jr_022_40F9:
    nop                                           ; $40F9: $00
    nop                                           ; $40FA: $00
    nop                                           ; $40FB: $00
    nop                                           ; $40FC: $00
    nop                                           ; $40FD: $00
    nop                                           ; $40FE: $00
    nop                                           ; $40FF: $00
    nop                                           ; $4100: $00
    nop                                           ; $4101: $00
    add c                                         ; $4102: $81
    nop                                           ; $4103: $00
    ld b, [hl]                                    ; $4104: $46
    add c                                         ; $4105: $81
    ld a, e                                       ; $4106: $7B
    add [hl]                                      ; $4107: $86
    cp [hl]                                       ; $4108: $BE
    ld e, c                                       ; $4109: $59
    ei                                            ; $410A: $FB
    ld [hl], $FE                                  ; $410B: $36 $FE
    adc c                                         ; $410D: $89
    ei                                            ; $410E: $FB
    ld h, [hl]                                    ; $410F: $66
    cp $40                                        ; $4110: $FE $40
    db $F4                                        ; $4112: $F4
    ld [$D4EB], sp                                ; $4113: $08 $EB $D4
    rst RST_08                                    ; $4116: $CF
    inc sp                                        ; $4117: $33
    rst RST_00                                    ; $4118: $C7
    dec sp                                        ; $4119: $3B
    rst RST_28                                    ; $411A: $EF
    rst RST_10                                    ; $411B: $D7
    rst RST_38                                    ; $411C: $FF
    rrca                                          ; $411D: $0F
    rra                                           ; $411E: $1F
    and $70                                       ; $411F: $E6 $70
    nop                                           ; $4121: $00
    or b                                          ; $4122: $B0
    ld h, b                                       ; $4123: $60
    ldh [$FF80], a                                ; $4124: $E0 $80
    di                                            ; $4126: $F3

jr_022_4127:
    nop                                           ; $4127: $00
    or l                                          ; $4128: $B5
    ldh [c], a                                    ; $4129: $E2
    rst RST_28                                    ; $412A: $EF
    ld [bc], a                                    ; $412B: $02
    or a                                          ; $412C: $B7
    ld [$0EF7], a                                 ; $412D: $EA $F7 $0E
    cpl                                           ; $4130: $2F
    ld e, $3E                                     ; $4131: $1E $3E
    inc e                                         ; $4133: $1C
    db $FC                                        ; $4134: $FC
    jr nz, jr_022_4127                            ; $4135: $20 $F0

    ldh [$FFE0], a                                ; $4137: $E0 $E0
    ret nz                                        ; $4139: $C0

    ret nz                                        ; $413A: $C0

    add b                                         ; $413B: $80
    add b                                         ; $413C: $80
    nop                                           ; $413D: $00
    nop                                           ; $413E: $00
    nop                                           ; $413F: $00
    or $E0                                        ; $4140: $F6 $E0
    ldh a, [$FF80]                                ; $4142: $F0 $80
    ret z                                         ; $4144: $C8

    or b                                          ; $4145: $B0
    call nz, $C4B8                                ; $4146: $C4 $B8 $C4
    jr c, jr_022_4171                             ; $4149: $38 $26

    jr jr_022_416C                                ; $414B: $18 $1F

    ld b, $0F                                     ; $414D: $06 $0F
    rlca                                          ; $414F: $07
    add hl, de                                    ; $4150: $19
    rrca                                          ; $4151: $0F
    rra                                           ; $4152: $1F
    rrca                                          ; $4153: $0F
    dec c                                         ; $4154: $0D
    rlca                                          ; $4155: $07
    rlca                                          ; $4156: $07
    inc bc                                        ; $4157: $03
    inc bc                                        ; $4158: $03
    ld bc, $0001                                  ; $4159: $01 $01 $00
    ld bc, $0100                                  ; $415C: $01 $00 $01

jr_022_415F:
    nop                                           ; $415F: $00
    ldh [$FFC0], a                                ; $4160: $E0 $C0
    ld h, b                                       ; $4162: $60
    ret nz                                        ; $4163: $C0

    ldh [$FFC0], a                                ; $4164: $E0 $C0
    ld h, b                                       ; $4166: $60
    ret nz                                        ; $4167: $C0

    ldh [$FFC0], a                                ; $4168: $E0 $C0
    ldh a, [rLCDC]                                ; $416A: $F0 $40

jr_022_416C:
    ld e, b                                       ; $416C: $58
    jr nc, jr_022_41DB                            ; $416D: $30 $6C

    jr c, @+$48                                   ; $416F: $38 $46

jr_022_4171:
    inc a                                         ; $4171: $3C
    rst RST_38                                    ; $4172: $FF
    ld a, [hl]                                    ; $4173: $7E
    rst RST_38                                    ; $4174: $FF
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
    ld [bc], a                                    ; $4180: $02
    nop                                           ; $4181: $00
    dec b                                         ; $4182: $05
    ld [bc], a                                    ; $4183: $02
    ld [$1207], sp                                ; $4184: $08 $07 $12
    rrca                                          ; $4187: $0F
    sub [hl]                                      ; $4188: $96
    rrca                                          ; $4189: $0F
    xor a                                         ; $418A: $AF
    inc d                                         ; $418B: $14
    ld d, h                                       ; $418C: $54
    adc e                                         ; $418D: $8B
    rst RST_38                                    ; $418E: $FF
    inc b                                         ; $418F: $04
    ld a, a                                       ; $4190: $7F
    sub c                                         ; $4191: $91
    ccf                                           ; $4192: $3F
    push bc                                       ; $4193: $C5
    ccf                                           ; $4194: $3F
    ret nz                                        ; $4195: $C0

    add hl, sp                                    ; $4196: $39
    sub $78                                       ; $4197: $D6 $78
    or a                                          ; $4199: $B7
    ld hl, sp+$37                                 ; $419A: $F8 $37
    add hl, sp                                    ; $419C: $39
    ld d, $1F                                     ; $419D: $16 $1F
    nop                                           ; $419F: $00
    inc c                                         ; $41A0: $0C
    inc bc                                        ; $41A1: $03
    rlca                                          ; $41A2: $07
    inc bc                                        ; $41A3: $03
    rlca                                          ; $41A4: $07
    nop                                           ; $41A5: $00
    add hl, bc                                    ; $41A6: $09
    ld b, $11                                     ; $41A7: $06 $11
    ld c, $31                                     ; $41A9: $0E $31
    ld c, $7A                                     ; $41AB: $0E $7A
    inc [hl]                                      ; $41AD: $34
    db $FC                                        ; $41AE: $FC
    ld [hl], b                                    ; $41AF: $70
    call z, $FC78                                 ; $41B0: $CC $78 $FC
    ld a, b                                       ; $41B3: $78
    ret c                                         ; $41B4: $D8

    ld [hl], b                                    ; $41B5: $70
    ldh a, [$FF60]                                ; $41B6: $F0 $60
    ldh [rLCDC], a                                ; $41B8: $E0 $40
    ld b, b                                       ; $41BA: $40
    add b                                         ; $41BB: $80
    ret nz                                        ; $41BC: $C0

    add b                                         ; $41BD: $80
    ld b, b                                       ; $41BE: $40
    add b                                         ; $41BF: $80
    rrca                                          ; $41C0: $0F
    ld [bc], a                                    ; $41C1: $02
    ld a, [de]                                    ; $41C2: $1A
    inc c                                         ; $41C3: $0C
    ld [hl], $1C                                  ; $41C4: $36 $1C
    ld h, d                                       ; $41C6: $62
    inc a                                         ; $41C7: $3C
    rst RST_38                                    ; $41C8: $FF
    ld a, [hl]                                    ; $41C9: $7E
    rst RST_38                                    ; $41CA: $FF
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

jr_022_41DB:
    nop                                           ; $41DB: $00
    nop                                           ; $41DC: $00
    nop                                           ; $41DD: $00
    nop                                           ; $41DE: $00
    nop                                           ; $41DF: $00
    nop                                           ; $41E0: $00
    nop                                           ; $41E1: $00
    ret nz                                        ; $41E2: $C0

    nop                                           ; $41E3: $00
    or b                                          ; $41E4: $B0
    ret nz                                        ; $41E5: $C0

    db $EC                                        ; $41E6: $EC
    jr nc, @-$3F                                  ; $41E7: $30 $BF

    call z, $37EE                                 ; $41E9: $CC $EE $37
    cp b                                          ; $41EC: $B8
    rst RST_08                                    ; $41ED: $CF
    xor $3F                                       ; $41EE: $EE $3F
    dec a                                         ; $41F0: $3D
    ld c, $06                                     ; $41F1: $0E $06
    ld bc, $0738                                  ; $41F3: $01 $38 $07
    ld l, d                                       ; $41F6: $6A
    ld de, $6798                                  ; $41F7: $11 $98 $67
    ld l, $C1                                     ; $41FA: $2E $C1
    ld b, c                                       ; $41FC: $41
    add b                                         ; $41FD: $80
    add b                                         ; $41FE: $80
    nop                                           ; $41FF: $00
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
    nop                                           ; $420C: $00
    nop                                           ; $420D: $00
    nop                                           ; $420E: $00
    nop                                           ; $420F: $00
    rlca                                          ; $4210: $07
    nop                                           ; $4211: $00
    ld b, $03                                     ; $4212: $06 $03
    inc bc                                        ; $4214: $03
    nop                                           ; $4215: $00
    rlca                                          ; $4216: $07
    nop                                           ; $4217: $00
    ld b, $03                                     ; $4218: $06 $03
    inc bc                                        ; $421A: $03
    nop                                           ; $421B: $00
    ld b, $03                                     ; $421C: $06 $03
    rlca                                          ; $421E: $07
    nop                                           ; $421F: $00
    rlca                                          ; $4220: $07
    nop                                           ; $4221: $00
    cp $07                                        ; $4222: $FE $07
    ld hl, sp-$01                                 ; $4224: $F8 $FF
    ld bc, $06FE                                  ; $4226: $01 $FE $06
    ld hl, sp+$18                                 ; $4229: $F8 $18
    ldh [rNR41], a                                ; $422B: $E0 $20
    ret nz                                        ; $422D: $C0

    ret nz                                        ; $422E: $C0

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
    rst RST_38                                    ; $4240: $FF
    nop                                           ; $4241: $00
    rst RST_38                                    ; $4242: $FF
    rst RST_38                                    ; $4243: $FF
    nop                                           ; $4244: $00
    rst RST_38                                    ; $4245: $FF
    db $FC                                        ; $4246: $FC
    rst RST_38                                    ; $4247: $FF
    ldh [rIE], a                                  ; $4248: $E0 $FF
    rst RST_38                                    ; $424A: $FF
    rst RST_38                                    ; $424B: $FF
    rst RST_38                                    ; $424C: $FF
    db $FC                                        ; $424D: $FC
    db $FC                                        ; $424E: $FC
    ret nz                                        ; $424F: $C0

    ret nz                                        ; $4250: $C0

    nop                                           ; $4251: $00
    nop                                           ; $4252: $00
    nop                                           ; $4253: $00
    nop                                           ; $4254: $00
    nop                                           ; $4255: $00
    nop                                           ; $4256: $00
    nop                                           ; $4257: $00
    nop                                           ; $4258: $00
    nop                                           ; $4259: $00
    nop                                           ; $425A: $00
    nop                                           ; $425B: $00
    nop                                           ; $425C: $00
    nop                                           ; $425D: $00
    nop                                           ; $425E: $00
    nop                                           ; $425F: $00
    ret nz                                        ; $4260: $C0

    add b                                         ; $4261: $80
    ldh a, [$FFC0]                                ; $4262: $F0 $C0
    rst RST_38                                    ; $4264: $FF
    ldh a, [rIE]                                  ; $4265: $F0 $FF
    rst RST_38                                    ; $4267: $FF
    ld hl, sp-$01                                 ; $4268: $F8 $FF
    rst RST_38                                    ; $426A: $FF
    rst RST_38                                    ; $426B: $FF
    rst RST_38                                    ; $426C: $FF
    rst RST_38                                    ; $426D: $FF
    rst RST_38                                    ; $426E: $FF
    rst RST_38                                    ; $426F: $FF
    rst RST_38                                    ; $4270: $FF
    rst RST_38                                    ; $4271: $FF
    rst RST_38                                    ; $4272: $FF
    rst RST_38                                    ; $4273: $FF
    rst RST_38                                    ; $4274: $FF
    db $FC                                        ; $4275: $FC
    db $FC                                        ; $4276: $FC
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
    rst RST_38                                    ; $4281: $FF
    rst RST_38                                    ; $4282: $FF
    cp $FF                                        ; $4283: $FE $FF
    cp $FF                                        ; $4285: $FE $FF
    cp $FF                                        ; $4287: $FE $FF
    rst RST_38                                    ; $4289: $FF
    rst RST_38                                    ; $428A: $FF
    rst RST_38                                    ; $428B: $FF
    rst RST_38                                    ; $428C: $FF
    rst RST_38                                    ; $428D: $FF
    rst RST_38                                    ; $428E: $FF
    rst RST_38                                    ; $428F: $FF
    rst RST_38                                    ; $4290: $FF
    rst RST_38                                    ; $4291: $FF
    rst RST_38                                    ; $4292: $FF
    rst RST_38                                    ; $4293: $FF
    rst RST_38                                    ; $4294: $FF
    rst RST_38                                    ; $4295: $FF
    rst RST_38                                    ; $4296: $FF
    rst RST_38                                    ; $4297: $FF
    rst RST_38                                    ; $4298: $FF
    rst RST_38                                    ; $4299: $FF
    rst RST_38                                    ; $429A: $FF
    ccf                                           ; $429B: $3F
    ccf                                           ; $429C: $3F
    inc bc                                        ; $429D: $03
    inc bc                                        ; $429E: $03
    nop                                           ; $429F: $00
    inc bc                                        ; $42A0: $03
    nop                                           ; $42A1: $00
    rlca                                          ; $42A2: $07
    inc bc                                        ; $42A3: $03
    rrca                                          ; $42A4: $0F
    rlca                                          ; $42A5: $07
    rra                                           ; $42A6: $1F
    rrca                                          ; $42A7: $0F
    rra                                           ; $42A8: $1F
    rrca                                          ; $42A9: $0F
    ccf                                           ; $42AA: $3F
    rra                                           ; $42AB: $1F
    ccf                                           ; $42AC: $3F
    rra                                           ; $42AD: $1F
    ccf                                           ; $42AE: $3F
    rra                                           ; $42AF: $1F
    ccf                                           ; $42B0: $3F
    rra                                           ; $42B1: $1F
    ccf                                           ; $42B2: $3F
    rra                                           ; $42B3: $1F
    ccf                                           ; $42B4: $3F
    rra                                           ; $42B5: $1F
    rra                                           ; $42B6: $1F
    rrca                                          ; $42B7: $0F
    rra                                           ; $42B8: $1F
    rrca                                          ; $42B9: $0F
    rrca                                          ; $42BA: $0F
    rlca                                          ; $42BB: $07
    rlca                                          ; $42BC: $07
    ld bc, $0001                                  ; $42BD: $01 $01 $00
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
    ccf                                           ; $42D8: $3F
    nop                                           ; $42D9: $00
    rst RST_38                                    ; $42DA: $FF
    ccf                                           ; $42DB: $3F
    rst RST_38                                    ; $42DC: $FF
    rst RST_38                                    ; $42DD: $FF
    rst RST_38                                    ; $42DE: $FF
    rst RST_38                                    ; $42DF: $FF
    nop                                           ; $42E0: $00
    nop                                           ; $42E1: $00
    nop                                           ; $42E2: $00
    nop                                           ; $42E3: $00
    nop                                           ; $42E4: $00
    nop                                           ; $42E5: $00
    nop                                           ; $42E6: $00
    nop                                           ; $42E7: $00
    nop                                           ; $42E8: $00
    nop                                           ; $42E9: $00
    nop                                           ; $42EA: $00
    nop                                           ; $42EB: $00
    nop                                           ; $42EC: $00
    nop                                           ; $42ED: $00
    nop                                           ; $42EE: $00
    nop                                           ; $42EF: $00
    nop                                           ; $42F0: $00
    nop                                           ; $42F1: $00
    nop                                           ; $42F2: $00
    nop                                           ; $42F3: $00
    nop                                           ; $42F4: $00
    nop                                           ; $42F5: $00
    add b                                         ; $42F6: $80
    nop                                           ; $42F7: $00
    ldh a, [$FF80]                                ; $42F8: $F0 $80
    ld hl, sp-$10                                 ; $42FA: $F8 $F0
    db $FC                                        ; $42FC: $FC
    adc b                                         ; $42FD: $88
    adc h                                         ; $42FE: $8C
    nop                                           ; $42FF: $00
    ld [bc], a                                    ; $4300: $02
    nop                                           ; $4301: $00
    dec b                                         ; $4302: $05
    ld [bc], a                                    ; $4303: $02
    ld [$1207], sp                                ; $4304: $08 $07 $12
    rrca                                          ; $4307: $0F
    sub [hl]                                      ; $4308: $96
    rrca                                          ; $4309: $0F
    xor a                                         ; $430A: $AF
    inc d                                         ; $430B: $14
    ld d, h                                       ; $430C: $54
    adc e                                         ; $430D: $8B
    rst RST_38                                    ; $430E: $FF
    inc b                                         ; $430F: $04
    ld a, a                                       ; $4310: $7F
    sub c                                         ; $4311: $91
    ccf                                           ; $4312: $3F
    push bc                                       ; $4313: $C5
    ccf                                           ; $4314: $3F
    ret nz                                        ; $4315: $C0

    add hl, sp                                    ; $4316: $39
    sub $78                                       ; $4317: $D6 $78
    or a                                          ; $4319: $B7
    ld hl, sp+$37                                 ; $431A: $F8 $37
    add hl, sp                                    ; $431C: $39
    ld d, $1F                                     ; $431D: $16 $1F
    nop                                           ; $431F: $00
    inc c                                         ; $4320: $0C
    inc bc                                        ; $4321: $03
    rlca                                          ; $4322: $07
    inc bc                                        ; $4323: $03
    rlca                                          ; $4324: $07
    nop                                           ; $4325: $00
    add hl, bc                                    ; $4326: $09
    ld b, $11                                     ; $4327: $06 $11
    ld c, $31                                     ; $4329: $0E $31
    ld c, $7A                                     ; $432B: $0E $7A
    inc [hl]                                      ; $432D: $34
    db $FC                                        ; $432E: $FC
    ld [hl], b                                    ; $432F: $70
    call z, $FC78                                 ; $4330: $CC $78 $FC
    ld a, b                                       ; $4333: $78
    ret c                                         ; $4334: $D8

    ld [hl], b                                    ; $4335: $70
    ldh a, [$FF60]                                ; $4336: $F0 $60
    ldh [rLCDC], a                                ; $4338: $E0 $40
    ld b, b                                       ; $433A: $40
    add b                                         ; $433B: $80
    ret nz                                        ; $433C: $C0

    add b                                         ; $433D: $80
    ld b, b                                       ; $433E: $40
    add b                                         ; $433F: $80
    rrca                                          ; $4340: $0F
    ld [bc], a                                    ; $4341: $02
    ld a, [de]                                    ; $4342: $1A
    inc c                                         ; $4343: $0C
    ld [hl], $1C                                  ; $4344: $36 $1C
    ld h, d                                       ; $4346: $62
    inc a                                         ; $4347: $3C
    rst RST_38                                    ; $4348: $FF
    ld a, [hl]                                    ; $4349: $7E
    rst RST_38                                    ; $434A: $FF
    nop                                           ; $434B: $00
    nop                                           ; $434C: $00
    nop                                           ; $434D: $00
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
    ret nz                                        ; $4364: $C0

    nop                                           ; $4365: $00
    or b                                          ; $4366: $B0
    ret nz                                        ; $4367: $C0

    db $EC                                        ; $4368: $EC
    jr nc, @-$3F                                  ; $4369: $30 $BF

    call z, $37EE                                 ; $436B: $CC $EE $37
    cp b                                          ; $436E: $B8
    rst RST_08                                    ; $436F: $CF
    xor $3F                                       ; $4370: $EE $3F
    dec a                                         ; $4372: $3D
    ld c, $06                                     ; $4373: $0E $06
    ld bc, $1F20                                  ; $4375: $01 $20 $1F
    ld [bc], a                                    ; $4378: $02
    ld bc, $0708                                  ; $4379: $01 $08 $07
    ld c, $01                                     ; $437C: $0E $01
    ld bc, $0700                                  ; $437E: $01 $00 $07
    nop                                           ; $4381: $00
    ld b, $03                                     ; $4382: $06 $03
    inc bc                                        ; $4384: $03
    nop                                           ; $4385: $00
    rlca                                          ; $4386: $07
    nop                                           ; $4387: $00
    ld b, $03                                     ; $4388: $06 $03
    inc bc                                        ; $438A: $03
    nop                                           ; $438B: $00
    ld b, $03                                     ; $438C: $06 $03
    rlca                                          ; $438E: $07
    nop                                           ; $438F: $00
    nop                                           ; $4390: $00
    nop                                           ; $4391: $00
    inc bc                                        ; $4392: $03
    nop                                           ; $4393: $00
    dec b                                         ; $4394: $05
    ld [bc], a                                    ; $4395: $02
    ld a, [bc]                                    ; $4396: $0A
    inc b                                         ; $4397: $04
    ld a, [bc]                                    ; $4398: $0A
    inc b                                         ; $4399: $04
    inc d                                         ; $439A: $14
    ld [$0814], sp                                ; $439B: $08 $14 $08
    jr z, jr_022_43B0                             ; $439E: $28 $10

    dec b                                         ; $43A0: $05
    ld [bc], a                                    ; $43A1: $02
    dec b                                         ; $43A2: $05
    ld [bc], a                                    ; $43A3: $02
    dec c                                         ; $43A4: $0D
    ld b, $0D                                     ; $43A5: $06 $0D
    ld b, $0D                                     ; $43A7: $06 $0D
    ld b, $1A                                     ; $43A9: $06 $1A
    inc c                                         ; $43AB: $0C
    ld a, [de]                                    ; $43AC: $1A
    inc c                                         ; $43AD: $0C
    ld [hl-], a                                   ; $43AE: $32
    inc e                                         ; $43AF: $1C

jr_022_43B0:
    halt                                          ; $43B0: $76
    inc a                                         ; $43B1: $3C
    db $E4                                        ; $43B2: $E4
    ld a, b                                       ; $43B3: $78
    call z, Call_000_38F8                         ; $43B4: $CC $F8 $38
    ldh a, [$FFF0]                                ; $43B7: $F0 $F0
    ldh [$FFE0], a                                ; $43B9: $E0 $E0
    add b                                         ; $43BB: $80
    add b                                         ; $43BC: $80
    nop                                           ; $43BD: $00
    nop                                           ; $43BE: $00
    nop                                           ; $43BF: $00
    ret nz                                        ; $43C0: $C0

    add b                                         ; $43C1: $80
    ldh [rLCDC], a                                ; $43C2: $E0 $40
    ldh [rLCDC], a                                ; $43C4: $E0 $40
    ldh a, [$FF60]                                ; $43C6: $F0 $60
    ldh a, [$FFE0]                                ; $43C8: $F0 $E0
    ld hl, sp-$10                                 ; $43CA: $F8 $F0
    ld hl, sp-$10                                 ; $43CC: $F8 $F0
    db $FC                                        ; $43CE: $FC
    ld hl, sp-$04                                 ; $43CF: $F8 $FC
    ld hl, sp-$02                                 ; $43D1: $F8 $FE
    db $FC                                        ; $43D3: $FC
    rst RST_38                                    ; $43D4: $FF
    cp $FF                                        ; $43D5: $FE $FF
    rst RST_38                                    ; $43D7: $FF
    rst RST_38                                    ; $43D8: $FF
    ld a, a                                       ; $43D9: $7F
    ld a, a                                       ; $43DA: $7F
    ccf                                           ; $43DB: $3F
    ccf                                           ; $43DC: $3F
    rrca                                          ; $43DD: $0F
    rrca                                          ; $43DE: $0F
    nop                                           ; $43DF: $00
    nop                                           ; $43E0: $00
    nop                                           ; $43E1: $00
    inc c                                         ; $43E2: $0C
    nop                                           ; $43E3: $00
    ld c, $04                                     ; $43E4: $0E $04
    rlca                                          ; $43E6: $07
    ld [bc], a                                    ; $43E7: $02
    scf                                           ; $43E8: $37
    ld [bc], a                                    ; $43E9: $02
    dec sp                                        ; $43EA: $3B
    ld de, $091F                                  ; $43EB: $11 $1F $09
    rra                                           ; $43EE: $1F
    add hl, bc                                    ; $43EF: $09
    ld l, a                                       ; $43F0: $6F
    rlca                                          ; $43F1: $07
    ld a, a                                       ; $43F2: $7F
    daa                                           ; $43F3: $27
    ccf                                           ; $43F4: $3F
    dec de                                        ; $43F5: $1B
    ccf                                           ; $43F6: $3F
    rra                                           ; $43F7: $1F
    rra                                           ; $43F8: $1F
    rrca                                          ; $43F9: $0F
    rra                                           ; $43FA: $1F
    rrca                                          ; $43FB: $0F

Call_022_43FC:
    rrca                                          ; $43FC: $0F
    rlca                                          ; $43FD: $07
    rlca                                          ; $43FE: $07
    inc bc                                        ; $43FF: $03
    add b                                         ; $4400: $80
    nop                                           ; $4401: $00
    ret nz                                        ; $4402: $C0

    add b                                         ; $4403: $80
    ret nz                                        ; $4404: $C0

    add b                                         ; $4405: $80
    ldh [$FFC0], a                                ; $4406: $E0 $C0
    ldh [c], a                                    ; $4408: $E2
    ret nz                                        ; $4409: $C0

    push hl                                       ; $440A: $E5
    jp nz, $C7E8                                  ; $440B: $C2 $E8 $C7

    ldh a, [c]                                    ; $440E: $F2
    rst RST_08                                    ; $440F: $CF
    or $CF                                        ; $4410: $F6 $CF
    rst RST_28                                    ; $4412: $EF
    sub h                                         ; $4413: $94
    call nc, $FF8B                                ; $4414: $D4 $8B $FF
    add h                                         ; $4417: $84
    rst RST_38                                    ; $4418: $FF
    ld de, $45BF                                  ; $4419: $11 $BF $45
    ccf                                           ; $441C: $3F
    ret nz                                        ; $441D: $C0

    add hl, sp                                    ; $441E: $39
    sub $78                                       ; $441F: $D6 $78
    or a                                          ; $4421: $B7
    ld hl, sp+$37                                 ; $4422: $F8 $37
    add hl, sp                                    ; $4424: $39
    ld d, $1F                                     ; $4425: $16 $1F
    nop                                           ; $4427: $00
    inc c                                         ; $4428: $0C
    inc bc                                        ; $4429: $03
    rlca                                          ; $442A: $07
    inc bc                                        ; $442B: $03
    rlca                                          ; $442C: $07
    nop                                           ; $442D: $00
    add hl, bc                                    ; $442E: $09
    ld b, $11                                     ; $442F: $06 $11
    ld c, $31                                     ; $4431: $0E $31
    ld c, $7A                                     ; $4433: $0E $7A
    inc [hl]                                      ; $4435: $34
    db $FC                                        ; $4436: $FC
    ld [hl], b                                    ; $4437: $70
    call z, $FC78                                 ; $4438: $CC $78 $FC
    ld a, b                                       ; $443B: $78

Jump_022_443C:
    ret c                                         ; $443C: $D8

    ld [hl], b                                    ; $443D: $70
    ldh a, [$FF60]                                ; $443E: $F0 $60
    rrca                                          ; $4440: $0F
    ld [bc], a                                    ; $4441: $02
    ld a, [de]                                    ; $4442: $1A
    inc c                                         ; $4443: $0C
    ld [hl], $1C                                  ; $4444: $36 $1C
    ld h, d                                       ; $4446: $62
    inc a                                         ; $4447: $3C
    rst RST_38                                    ; $4448: $FF
    ld a, [hl]                                    ; $4449: $7E
    rst RST_38                                    ; $444A: $FF
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
    ccf                                           ; $4460: $3F
    nop                                           ; $4461: $00
    rst RST_38                                    ; $4462: $FF
    ccf                                           ; $4463: $3F
    rst RST_38                                    ; $4464: $FF
    rst RST_38                                    ; $4465: $FF
    rst RST_38                                    ; $4466: $FF
    rst RST_00                                    ; $4467: $C7
    rst RST_00                                    ; $4468: $C7
    inc bc                                        ; $4469: $03
    jp $B301                                      ; $446A: $C3 $01 $B3


    pop bc                                        ; $446D: $C1
    rst RST_28                                    ; $446E: $EF
    inc sp                                        ; $446F: $33
    cp a                                          ; $4470: $BF
    set 5, l                                      ; $4471: $CB $ED
    scf                                           ; $4473: $37
    cp c                                          ; $4474: $B9
    rst RST_08                                    ; $4475: $CF
    ldh [c], a                                    ; $4476: $E2
    rra                                           ; $4477: $1F
    ld c, h                                       ; $4478: $4C
    inc sp                                        ; $4479: $33
    cp d                                          ; $447A: $BA
    ld b, l                                       ; $447B: $45
    push af                                       ; $447C: $F5
    dec bc                                        ; $447D: $0B
    dec l                                         ; $447E: $2D
    ld [de], a                                    ; $447F: $12
    ld a, [hl-]                                   ; $4480: $3A
    dec b                                         ; $4481: $05
    ld c, $01                                     ; $4482: $0E $01
    ld bc, $0000                                  ; $4484: $01 $00 $00
    nop                                           ; $4487: $00
    nop                                           ; $4488: $00
    nop                                           ; $4489: $00
    nop                                           ; $448A: $00
    nop                                           ; $448B: $00
    nop                                           ; $448C: $00
    nop                                           ; $448D: $00
    nop                                           ; $448E: $00
    nop                                           ; $448F: $00
    nop                                           ; $4490: $00
    nop                                           ; $4491: $00
    nop                                           ; $4492: $00
    nop                                           ; $4493: $00
    nop                                           ; $4494: $00
    nop                                           ; $4495: $00
    nop                                           ; $4496: $00
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
    ld bc, $0300                                  ; $44AC: $01 $00 $03
    ld bc, $0307                                  ; $44AF: $01 $07 $03
    rlca                                          ; $44B2: $07
    ld [bc], a                                    ; $44B3: $02
    rrca                                          ; $44B4: $0F
    inc b                                         ; $44B5: $04
    rrca                                          ; $44B6: $0F
    inc b                                         ; $44B7: $04
    ld c, $03                                     ; $44B8: $0E $03
    inc bc                                        ; $44BA: $03
    nop                                           ; $44BB: $00
    ld b, $03                                     ; $44BC: $06 $03
    rlca                                          ; $44BE: $07
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
    ldh [rP1], a                                  ; $44CC: $E0 $00
    ret c                                         ; $44CE: $D8

    ld h, b                                       ; $44CF: $60

jr_022_44D0:
    halt                                          ; $44D0: $76
    jr jr_022_44D0                                ; $44D1: $18 $FD

    ld b, $D7                                     ; $44D3: $06 $D7
    ld a, c                                       ; $44D5: $79
    ld a, l                                       ; $44D6: $7D
    ld b, $D7                                     ; $44D7: $06 $D7
    ld a, c                                       ; $44D9: $79
    db $FD                                        ; $44DA: $FD
    rlca                                          ; $44DB: $07
    rlca                                          ; $44DC: $07
    ld bc, $0001                                  ; $44DD: $01 $01 $00
    add c                                         ; $44E0: $81
    nop                                           ; $44E1: $00
    ldh [c], a                                    ; $44E2: $E2
    add c                                         ; $44E3: $81
    jp nc, Jump_000_15E1                          ; $44E4: $D2 $E1 $15

    ldh [c], a                                    ; $44E7: $E2
    set 6, b                                      ; $44E8: $CB $F0
    adc [hl]                                      ; $44EA: $8E
    pop af                                        ; $44EB: $F1
    cp [hl]                                       ; $44EC: $BE
    ld b, c                                       ; $44ED: $41
    ld c, e                                       ; $44EE: $4B
    ld [hl], $97                                  ; $44EF: $36 $97
    ld l, [hl]                                    ; $44F1: $6E
    sbc a                                         ; $44F2: $9F
    ld l, l                                       ; $44F3: $6D
    sbc a                                         ; $44F4: $9F
    ld h, e                                       ; $44F5: $63
    ld c, a                                       ; $44F6: $4F
    ld sp, $0037                                  ; $44F7: $31 $37 $00
    inc bc                                        ; $44FA: $03
    nop                                           ; $44FB: $00
    ld bc, $0000                                  ; $44FC: $01 $00 $00
    nop                                           ; $44FF: $00
    ld bc, $0200                                  ; $4500: $01 $00 $02
    ld bc, $0345                                  ; $4503: $01 $45 $03
    xor e                                         ; $4506: $AB
    ld b, a                                       ; $4507: $47
    rra                                           ; $4508: $1F
    xor $7F                                       ; $4509: $EE $7F
    adc $FF                                       ; $450B: $CE $FF
    or [hl]                                       ; $450D: $B6
    cp a                                          ; $450E: $BF
    ld [hl], b                                    ; $450F: $70
    ld a, l                                       ; $4510: $7D
    db $E4                                        ; $4511: $E4
    ld a, a                                       ; $4512: $7F
    ldh [$FFFE], a                                ; $4513: $E0 $FE
    db $ED                                        ; $4515: $ED
    rst RST_38                                    ; $4516: $FF
    ret z                                         ; $4517: $C8

    rst RST_38                                    ; $4518: $FF
    ret nz                                        ; $4519: $C0

    ld sp, hl                                     ; $451A: $F9
    sub $F1                                       ; $451B: $D6 $F1
    adc [hl]                                      ; $451D: $8E
    pop af                                        ; $451E: $F1
    adc [hl]                                      ; $451F: $8E
    ret nz                                        ; $4520: $C0

    nop                                           ; $4521: $00
    ret nz                                        ; $4522: $C0

    add b                                         ; $4523: $80
    add b                                         ; $4524: $80
    nop                                           ; $4525: $00
    add e                                         ; $4526: $83
    nop                                           ; $4527: $00
    dec c                                         ; $4528: $0D
    inc bc                                        ; $4529: $03
    scf                                           ; $452A: $37
    inc c                                         ; $452B: $0C
    db $FD                                        ; $452C: $FD
    inc sp                                        ; $452D: $33
    ld [hl], a                                    ; $452E: $77
    db $EC                                        ; $452F: $EC
    dec e                                         ; $4530: $1D
    di                                            ; $4531: $F3
    ld [hl], a                                    ; $4532: $77
    db $FC                                        ; $4533: $FC
    inc a                                         ; $4534: $3C
    ldh a, [$FFFC]                                ; $4535: $F0 $FC
    ld h, b                                       ; $4537: $60
    ld a, a                                       ; $4538: $7F
    add h                                         ; $4539: $84
    ld h, $DB                                     ; $453A: $26 $DB
    ld h, $DB                                     ; $453C: $26 $DB
    daa                                           ; $453E: $27
    db $DB                                        ; $453F: $DB
    nop                                           ; $4540: $00
    nop                                           ; $4541: $00
    nop                                           ; $4542: $00
    nop                                           ; $4543: $00
    ldh [rP1], a                                  ; $4544: $E0 $00
    ld h, b                                       ; $4546: $60
    ret nz                                        ; $4547: $C0

    ret nz                                        ; $4548: $C0

    nop                                           ; $4549: $00
    ldh [rP1], a                                  ; $454A: $E0 $00
    ld h, b                                       ; $454C: $60
    ret nz                                        ; $454D: $C0

    ret nz                                        ; $454E: $C0

    nop                                           ; $454F: $00
    ld h, b                                       ; $4550: $60
    ret nz                                        ; $4551: $C0

    ldh [rP1], a                                  ; $4552: $E0 $00
    nop                                           ; $4554: $00
    nop                                           ; $4555: $00
    nop                                           ; $4556: $00
    nop                                           ; $4557: $00
    nop                                           ; $4558: $00
    nop                                           ; $4559: $00
    add b                                         ; $455A: $80
    nop                                           ; $455B: $00
    ld b, b                                       ; $455C: $40
    add b                                         ; $455D: $80
    cp h                                          ; $455E: $BC
    ret nz                                        ; $455F: $C0

    ld bc, $0300                                  ; $4560: $01 $00 $03
    ld bc, $0307                                  ; $4563: $01 $07 $03
    ld b, $03                                     ; $4566: $06 $03
    rlca                                          ; $4568: $07
    inc bc                                        ; $4569: $03
    ld b, $03                                     ; $456A: $06 $03
    rlca                                          ; $456C: $07
    inc bc                                        ; $456D: $03

jr_022_456E:
    rrca                                          ; $456E: $0F
    ld [bc], a                                    ; $456F: $02

jr_022_4570:
    ld a, [de]                                    ; $4570: $1A
    inc c                                         ; $4571: $0C

jr_022_4572:
    ld [hl], $1C                                  ; $4572: $36 $1C
    ld h, d                                       ; $4574: $62
    inc a                                         ; $4575: $3C
    rst RST_38                                    ; $4576: $FF
    ld a, [hl]                                    ; $4577: $7E
    rst RST_38                                    ; $4578: $FF
    nop                                           ; $4579: $00
    nop                                           ; $457A: $00
    nop                                           ; $457B: $00
    nop                                           ; $457C: $00
    nop                                           ; $457D: $00
    nop                                           ; $457E: $00
    nop                                           ; $457F: $00
    cp $0D                                        ; $4580: $FE $0D
    rst RST_38                                    ; $4582: $FF

jr_022_4583:
    nop                                           ; $4583: $00
    ld b, b                                       ; $4584: $40
    ccf                                           ; $4585: $3F
    ccf                                           ; $4586: $3F
    rra                                           ; $4587: $1F
    ccf                                           ; $4588: $3F
    inc b                                         ; $4589: $04
    ld c, [hl]                                    ; $458A: $4E
    dec [hl]                                      ; $458B: $35
    adc [hl]                                      ; $458C: $8E
    ld [hl], l                                    ; $458D: $75
    adc [hl]                                      ; $458E: $8E
    ld [hl], c                                    ; $458F: $71
    pop de                                        ; $4590: $D1
    and b                                         ; $4591: $A0
    ldh [$FF80], a                                ; $4592: $E0 $80
    ld h, b                                       ; $4594: $60
    ret nz                                        ; $4595: $C0

    ldh [$FFC0], a                                ; $4596: $E0 $C0
    ret nz                                        ; $4598: $C0

    add b                                         ; $4599: $80
    add b                                         ; $459A: $80
    nop                                           ; $459B: $00
    nop                                           ; $459C: $00
    nop                                           ; $459D: $00
    nop                                           ; $459E: $00
    nop                                           ; $459F: $00
    ld e, a                                       ; $45A0: $5F
    and c                                         ; $45A1: $A1
    rst RST_20                                    ; $45A2: $E7
    inc bc                                        ; $45A3: $03
    add e                                         ; $45A4: $83
    nop                                           ; $45A5: $00
    add b                                         ; $45A6: $80
    nop                                           ; $45A7: $00
    add b                                         ; $45A8: $80
    nop                                           ; $45A9: $00
    ld b, b                                       ; $45AA: $40
    add b                                         ; $45AB: $80
    jr nz, jr_022_456E                            ; $45AC: $20 $C0

    jr nz, jr_022_4570                            ; $45AE: $20 $C0

    jr nc, jr_022_4572                            ; $45B0: $30 $C0

    ld hl, sp+$30                                 ; $45B2: $F8 $30
    ld a, h                                       ; $45B4: $7C
    jr c, jr_022_4583                             ; $45B5: $38 $CC

    ld a, b                                       ; $45B7: $78
    db $FC                                        ; $45B8: $FC
    ld a, b                                       ; $45B9: $78
    ld l, h                                       ; $45BA: $6C
    jr c, jr_022_45F9                             ; $45BB: $38 $3C

    jr jr_022_45DD                                ; $45BD: $18 $1E

    ld [$EFF8], sp                                ; $45BF: $08 $F8 $EF
    rst RST_38                                    ; $45C2: $FF
    rst RST_28                                    ; $45C3: $EF
    rst RST_38                                    ; $45C4: $FF
    jr jr_022_45FF                                ; $45C5: $18 $38

    db $10                                        ; $45C7: $10
    jr jr_022_45CA                                ; $45C8: $18 $00

jr_022_45CA:
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
    nop                                           ; $45DA: $00
    nop                                           ; $45DB: $00
    nop                                           ; $45DC: $00

jr_022_45DD:
    nop                                           ; $45DD: $00
    nop                                           ; $45DE: $00
    nop                                           ; $45DF: $00
    add b                                         ; $45E0: $80
    nop                                           ; $45E1: $00
    ret nz                                        ; $45E2: $C0

    add b                                         ; $45E3: $80
    ret nz                                        ; $45E4: $C0

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

jr_022_45F9:
    nop                                           ; $45F9: $00
    nop                                           ; $45FA: $00
    nop                                           ; $45FB: $00
    nop                                           ; $45FC: $00
    nop                                           ; $45FD: $00
    nop                                           ; $45FE: $00

jr_022_45FF:
    nop                                           ; $45FF: $00
    ld e, b                                       ; $4600: $58
    jr nc, jr_022_466F                            ; $4601: $30 $6C

    jr c, jr_022_464B                             ; $4603: $38 $46

    inc a                                         ; $4605: $3C
    rst RST_38                                    ; $4606: $FF
    ld a, [hl]                                    ; $4607: $7E
    rst RST_38                                    ; $4608: $FF
    nop                                           ; $4609: $00
    nop                                           ; $460A: $00
    nop                                           ; $460B: $00
    nop                                           ; $460C: $00
    nop                                           ; $460D: $00
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
    ldh [rP1], a                                  ; $4620: $E0 $00
    ret c                                         ; $4622: $D8

    ld h, b                                       ; $4623: $60

jr_022_4624:
    halt                                          ; $4624: $76
    jr jr_022_4624                                ; $4625: $18 $FD

    ld b, $D7                                     ; $4627: $06 $D7
    ld a, c                                       ; $4629: $79
    ld a, l                                       ; $462A: $7D
    ld b, $D7                                     ; $462B: $06 $D7
    ld a, c                                       ; $462D: $79
    db $FD                                        ; $462E: $FD
    rlca                                          ; $462F: $07
    rlca                                          ; $4630: $07
    ld bc, $0003                                  ; $4631: $01 $03 $00
    inc bc                                        ; $4634: $03
    ld bc, $0103                                  ; $4635: $01 $03 $01
    inc bc                                        ; $4638: $03
    ld bc, $0103                                  ; $4639: $01 $03 $01
    ld bc, $0000                                  ; $463C: $01 $00 $00
    nop                                           ; $463F: $00
    nop                                           ; $4640: $00
    nop                                           ; $4641: $00
    nop                                           ; $4642: $00
    nop                                           ; $4643: $00
    nop                                           ; $4644: $00
    nop                                           ; $4645: $00
    add b                                         ; $4646: $80
    nop                                           ; $4647: $00
    ldh a, [$FF80]                                ; $4648: $F0 $80
    ret nc                                        ; $464A: $D0

jr_022_464B:
    ldh [rNR11], a                                ; $464B: $E0 $11
    ldh [$FFD2], a                                ; $464D: $E0 $D2
    pop hl                                        ; $464F: $E1
    adc h                                         ; $4650: $8C
    di                                            ; $4651: $F3
    db $FC                                        ; $4652: $FC
    jp $17F8                                      ; $4653: $C3 $F8 $17


    ld sp, hl                                     ; $4656: $F9
    add $C6                                       ; $4657: $C6 $C6
    cp c                                          ; $4659: $B9
    db $E3                                        ; $465A: $E3
    sbc h                                         ; $465B: $9C
    rst RST_38                                    ; $465C: $FF
    and c                                         ; $465D: $A1
    rst RST_38                                    ; $465E: $FF
    inc a                                         ; $465F: $3C
    nop                                           ; $4660: $00
    nop                                           ; $4661: $00
    nop                                           ; $4662: $00
    nop                                           ; $4663: $00
    nop                                           ; $4664: $00
    nop                                           ; $4665: $00
    nop                                           ; $4666: $00
    nop                                           ; $4667: $00
    inc bc                                        ; $4668: $03
    nop                                           ; $4669: $00
    add d                                         ; $466A: $82
    ld bc, $8142                                  ; $466B: $01 $42 $81
    ld [hl+], a                                   ; $466E: $22

jr_022_466F:
    pop bc                                        ; $466F: $C1
    sbc h                                         ; $4670: $9C
    db $E3                                        ; $4671: $E3
    rst RST_18                                    ; $4672: $DF
    add sp, -$11                                  ; $4673: $E8 $EF
    call nc, Call_000_2BDC                        ; $4675: $D4 $DC $2B
    ld a, b                                       ; $4678: $78
    rst RST_00                                    ; $4679: $C7
    ld hl, sp+$17                                 ; $467A: $F8 $17
    ld hl, sp+$47                                 ; $467C: $F8 $47
    db $F4                                        ; $467E: $F4
    dec bc                                        ; $467F: $0B
    ld bc, $0600                                  ; $4680: $01 $00 $06

jr_022_4683:
    ld bc, $061B                                  ; $4683: $01 $1B $06
    ld l, a                                       ; $4686: $6F
    jr jr_022_4683                                ; $4687: $18 $FA

    ld h, a                                       ; $4689: $67
    rst RST_28                                    ; $468A: $EF
    ret c                                         ; $468B: $D8

    ld a, [hl-]                                   ; $468C: $3A
    rst RST_20                                    ; $468D: $E7
    rst RST_28                                    ; $468E: $EF
    ld hl, sp+$78                                 ; $468F: $F8 $78
    ldh [$FFF0], a                                ; $4691: $E0 $F0
    ret nz                                        ; $4693: $C0

    ld hl, sp+$30                                 ; $4694: $F8 $30
    ld hl, sp+$70                                 ; $4696: $F8 $70
    ld a, b                                       ; $4698: $78
    or b                                          ; $4699: $B0
    ld a, b                                       ; $469A: $78
    or b                                          ; $469B: $B0
    ld [hl], b                                    ; $469C: $70
    and b                                         ; $469D: $A0
    ldh [rP1], a                                  ; $469E: $E0 $00
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
    ret nz                                        ; $46B0: $C0

    nop                                           ; $46B1: $00
    ret nz                                        ; $46B2: $C0

    add b                                         ; $46B3: $80
    add b                                         ; $46B4: $80
    nop                                           ; $46B5: $00
    ret nz                                        ; $46B6: $C0

    nop                                           ; $46B7: $00
    ret nz                                        ; $46B8: $C0

    add b                                         ; $46B9: $80
    add b                                         ; $46BA: $80
    nop                                           ; $46BB: $00
    ret nz                                        ; $46BC: $C0

    add b                                         ; $46BD: $80
    ret nz                                        ; $46BE: $C0

    nop                                           ; $46BF: $00
    ld bc, $0300                                  ; $46C0: $01 $00 $03
    ld bc, $030F                                  ; $46C3: $01 $0F $03
    rla                                           ; $46C6: $17
    ld a, [bc]                                    ; $46C7: $0A
    ld l, $1C                                     ; $46C8: $2E $1C
    ld c, [hl]                                    ; $46CA: $4E
    inc a                                         ; $46CB: $3C
    rst RST_38                                    ; $46CC: $FF
    ld a, [hl]                                    ; $46CD: $7E
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
    nop                                           ; $46D8: $00
    nop                                           ; $46D9: $00
    nop                                           ; $46DA: $00
    nop                                           ; $46DB: $00
    nop                                           ; $46DC: $00
    nop                                           ; $46DD: $00
    nop                                           ; $46DE: $00
    nop                                           ; $46DF: $00
    rst RST_08                                    ; $46E0: $CF
    ld a, a                                       ; $46E1: $7F
    ld [hl], e                                    ; $46E2: $73
    ccf                                           ; $46E3: $3F
    ld a, a                                       ; $46E4: $7F
    rrca                                          ; $46E5: $0F
    rra                                           ; $46E6: $1F
    inc bc                                        ; $46E7: $03
    cpl                                           ; $46E8: $2F
    inc d                                         ; $46E9: $14
    ld a, a                                       ; $46EA: $7F
    inc bc                                        ; $46EB: $03
    rst RST_38                                    ; $46EC: $FF
    ld a, b                                       ; $46ED: $78
    call c, Call_022_5CF8                         ; $46EE: $DC $F8 $5C
    ld hl, sp-$08                                 ; $46F1: $F8 $F8
    ldh [$FFE0], a                                ; $46F3: $E0 $E0
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
    ld [hl], d                                    ; $4701: $72
    sbc $AC                                       ; $4702: $DE $AC
    db $FC                                        ; $4704: $FC
    sbc b                                         ; $4705: $98
    ld hl, sp-$50                                 ; $4706: $F8 $B0
    ld hl, sp+$20                                 ; $4708: $F8 $20
    add sp, $50                                   ; $470A: $E8 $50
    db $FC                                        ; $470C: $FC
    nop                                           ; $470D: $00
    ld a, [hl]                                    ; $470E: $7E
    inc a                                         ; $470F: $3C
    ld [hl], a                                    ; $4710: $77
    ld a, $6F                                     ; $4711: $3E $6F
    ccf                                           ; $4713: $3F
    dec sp                                        ; $4714: $3B
    rrca                                          ; $4715: $0F
    rrca                                          ; $4716: $0F
    nop                                           ; $4717: $00
    nop                                           ; $4718: $00
    nop                                           ; $4719: $00
    nop                                           ; $471A: $00
    nop                                           ; $471B: $00
    ld bc, $0100                                  ; $471C: $01 $00 $01
    nop                                           ; $471F: $00
    add b                                         ; $4720: $80
    nop                                           ; $4721: $00
    ldh [$FF80], a                                ; $4722: $E0 $80
    ret nc                                        ; $4724: $D0

    and b                                         ; $4725: $A0
    add sp, $30                                   ; $4726: $E8 $30
    db $E4                                        ; $4728: $E4
    ld a, b                                       ; $4729: $78
    cp $FC                                        ; $472A: $FE $FC
    cp $00                                        ; $472C: $FE $00
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
    nop                                           ; $473C: $00
    nop                                           ; $473D: $00
    nop                                           ; $473E: $00
    nop                                           ; $473F: $00
    inc c                                         ; $4740: $0C
    nop                                           ; $4741: $00
    ld c, $04                                     ; $4742: $0E $04

jr_022_4744:
    ld a, [bc]                                    ; $4744: $0A
    inc b                                         ; $4745: $04
    rlca                                          ; $4746: $07
    ld [bc], a                                    ; $4747: $02

jr_022_4748:
    dec b                                         ; $4748: $05
    ld [bc], a                                    ; $4749: $02
    inc bc                                        ; $474A: $03
    ld bc, $017A                                  ; $474B: $01 $7A $01
    sbc a                                         ; $474E: $9F
    ld [hl], b                                    ; $474F: $70
    cp a                                          ; $4750: $BF
    ld a, d                                       ; $4751: $7A
    cp $79                                        ; $4752: $FE $79
    rst RST_38                                    ; $4754: $FF
    ld [hl], b                                    ; $4755: $70
    ei                                            ; $4756: $FB
    ld [hl], $FE                                  ; $4757: $36 $FE
    ld c, c                                       ; $4759: $49
    ld a, [$BA61]                                 ; $475A: $FA $61 $BA
    ld [hl], c                                    ; $475D: $71
    sbc l                                         ; $475E: $9D
    ld a, d                                       ; $475F: $7A
    inc bc                                        ; $4760: $03
    nop                                           ; $4761: $00
    add h                                         ; $4762: $84
    inc bc                                        ; $4763: $03
    adc e                                         ; $4764: $8B
    dec b                                         ; $4765: $05
    push bc                                       ; $4766: $C5
    add d                                         ; $4767: $82
    rst RST_38                                    ; $4768: $FF
    push bc                                       ; $4769: $C5
    rst RST_38                                    ; $476A: $FF
    nop                                           ; $476B: $00
    cp h                                          ; $476C: $BC
    ld e, e                                       ; $476D: $5B
    sbc b                                         ; $476E: $98
    ld h, a                                       ; $476F: $67
    sbc b                                         ; $4770: $98
    ld h, a                                       ; $4771: $67
    cp h                                          ; $4772: $BC
    ld e, e                                       ; $4773: $5B
    rst RST_38                                    ; $4774: $FF
    nop                                           ; $4775: $00
    ldh [$FF5F], a                                ; $4776: $E0 $5F
    ld h, b                                       ; $4778: $60
    sbc a                                         ; $4779: $9F
    cp a                                          ; $477A: $BF
    nop                                           ; $477B: $00
    cp a                                          ; $477C: $BF
    rra                                           ; $477D: $1F
    rst RST_18                                    ; $477E: $DF
    inc l                                         ; $477F: $2C
    ret nz                                        ; $4780: $C0

    nop                                           ; $4781: $00
    jr nz, jr_022_4744                            ; $4782: $20 $C0

    sub b                                         ; $4784: $90
    ldh [$FFC9], a                                ; $4785: $E0 $C9

jr_022_4787:
    jr nc, jr_022_47AF                            ; $4787: $30 $26

    reti                                          ; $4789: $D9


    db $FD                                        ; $478A: $FD
    inc bc                                        ; $478B: $03
    ld hl, sp+$37                                 ; $478C: $F8 $37
    db $FD                                        ; $478E: $FD
    ld b, e                                       ; $478F: $43
    ldh a, [c]                                    ; $4790: $F2

jr_022_4791:
    ld l, l                                       ; $4791: $6D
    pop hl                                        ; $4792: $E1
    ld e, [hl]                                    ; $4793: $5E
    pop hl                                        ; $4794: $E1
    ld e, [hl]                                    ; $4795: $5E
    di                                            ; $4796: $F3
    ld l, h                                       ; $4797: $6C
    db $FC                                        ; $4798: $FC
    inc hl                                        ; $4799: $23
    ld a, c                                       ; $479A: $79
    add [hl]                                      ; $479B: $86
    ld b, a                                       ; $479C: $47
    add c                                         ; $479D: $81
    add a                                         ; $479E: $87
    inc bc                                        ; $479F: $03
    jr c, jr_022_47B2                             ; $47A0: $38 $10

    jr z, jr_022_47B4                             ; $47A2: $28 $10

    ld [hl], b                                    ; $47A4: $70
    jr nz, jr_022_4748                            ; $47A5: $20 $A1

    ld b, b                                       ; $47A7: $40
    cp $81                                        ; $47A8: $FE $81
    rst RST_00                                    ; $47AA: $C7
    ld a, [hl-]                                   ; $47AB: $3A
    cp $78                                        ; $47AC: $FE $78
    db $FC                                        ; $47AE: $FC

jr_022_47AF:
    ld a, b                                       ; $47AF: $78
    db $FC                                        ; $47B0: $FC
    cp b                                          ; $47B1: $B8

jr_022_47B2:
    rst RST_38                                    ; $47B2: $FF
    or b                                          ; $47B3: $B0

jr_022_47B4:
    db $FD                                        ; $47B4: $FD
    dec bc                                        ; $47B5: $0B
    ccf                                           ; $47B6: $3F
    jr @+$6E                                      ; $47B7: $18 $6C

    jr c, jr_022_4787                             ; $47B9: $38 $CC

    ld a, b                                       ; $47BB: $78
    call c, $B8F8                                 ; $47BC: $DC $F8 $B8
    ldh a, [$FFDE]                                ; $47BF: $F0 $DE
    ld a, l                                       ; $47C1: $7D
    ld l, a                                       ; $47C2: $6F
    ld a, $7F                                     ; $47C3: $3E $7F
    cpl                                           ; $47C5: $2F
    ld a, a                                       ; $47C6: $7F
    ld de, $163F                                  ; $47C7: $11 $3F $16
    ccf                                           ; $47CA: $3F
    ld d, $1F                                     ; $47CB: $16 $1F
    rlca                                          ; $47CD: $07
    inc de                                        ; $47CE: $13
    rrca                                          ; $47CF: $0F
    rra                                           ; $47D0: $1F
    rrca                                          ; $47D1: $0F
    rla                                           ; $47D2: $17
    ld c, $1E                                     ; $47D3: $0E $1E
    inc c                                         ; $47D5: $0C
    ld a, h                                       ; $47D6: $7C
    jr jr_022_4791                                ; $47D7: $18 $B8

    ld d, b                                       ; $47D9: $50
    ld a, b                                       ; $47DA: $78
    ldh [$FF78], a                                ; $47DB: $E0 $78
    ldh a, [$FFFC]                                ; $47DD: $F0 $FC
    ld hl, sp+$1C                                 ; $47DF: $F8 $1C
    db $EB                                        ; $47E1: $EB
    inc e                                         ; $47E2: $1C

jr_022_47E3:
    db $EB                                        ; $47E3: $EB
    cp $01                                        ; $47E4: $FE $01
    pop bc                                        ; $47E6: $C1
    add b                                         ; $47E7: $80
    add b                                         ; $47E8: $80
    nop                                           ; $47E9: $00
    nop                                           ; $47EA: $00
    nop                                           ; $47EB: $00
    nop                                           ; $47EC: $00
    nop                                           ; $47ED: $00
    nop                                           ; $47EE: $00

Jump_022_47EF:
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
    nop                                           ; $47FE: $00
    nop                                           ; $47FF: $00
    add a                                         ; $4800: $87
    inc bc                                        ; $4801: $03
    ld b, e                                       ; $4802: $43
    add c                                         ; $4803: $81
    ld hl, $78C0                                  ; $4804: $21 $C0 $78
    add b                                         ; $4807: $80
    db $FC                                        ; $4808: $FC
    ld a, b                                       ; $4809: $78
    db $EC                                        ; $480A: $EC
    ld a, b                                       ; $480B: $78
    sbc $7C                                       ; $480C: $DE $7C
    halt                                          ; $480E: $76
    inc a                                         ; $480F: $3C
    ccf                                           ; $4810: $3F
    ld c, $0F                                     ; $4811: $0E $0F
    ld [bc], a                                    ; $4813: $02
    inc bc                                        ; $4814: $03
    ld bc, $0001                                  ; $4815: $01 $01 $00
    ld bc, $0300                                  ; $4818: $01 $00 $03
    ld bc, $0003                                  ; $481B: $01 $03 $00
    nop                                           ; $481E: $00
    nop                                           ; $481F: $00
    ld hl, sp-$30                                 ; $4820: $F8 $D0
    ld hl, sp-$60                                 ; $4822: $F8 $A0
    ldh a, [$FF60]                                ; $4824: $F0 $60
    ldh a, [$FF60]                                ; $4826: $F0 $60
    ldh [rP1], a                                  ; $4828: $E0 $00
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
    add b                                         ; $4834: $80
    nop                                           ; $4835: $00
    ld h, b                                       ; $4836: $60
    add b                                         ; $4837: $80
    or b                                          ; $4838: $B0
    ldh [$FF98], a                                ; $4839: $E0 $98
    ldh a, [$FFFC]                                ; $483B: $F0 $FC
    ld hl, sp-$04                                 ; $483D: $F8 $FC
    nop                                           ; $483F: $00
    ld l, $14                                     ; $4840: $2E $14
    ld e, [hl]                                    ; $4842: $5E
    jr c, jr_022_47E3                             ; $4843: $38 $9E

    ld a, h                                       ; $4845: $7C
    rst RST_38                                    ; $4846: $FF
    cp $FF                                        ; $4847: $FE $FF
    nop                                           ; $4849: $00
    nop                                           ; $484A: $00
    nop                                           ; $484B: $00
    nop                                           ; $484C: $00
    nop                                           ; $484D: $00
    nop                                           ; $484E: $00
    nop                                           ; $484F: $00
    nop                                           ; $4850: $00
    nop                                           ; $4851: $00
    nop                                           ; $4852: $00
    nop                                           ; $4853: $00
    nop                                           ; $4854: $00
    nop                                           ; $4855: $00
    nop                                           ; $4856: $00
    nop                                           ; $4857: $00
    nop                                           ; $4858: $00
    nop                                           ; $4859: $00
    nop                                           ; $485A: $00
    nop                                           ; $485B: $00
    nop                                           ; $485C: $00
    nop                                           ; $485D: $00
    nop                                           ; $485E: $00
    nop                                           ; $485F: $00
    ld bc, $0100                                  ; $4860: $01 $00 $01
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
    nop                                           ; $487C: $00
    nop                                           ; $487D: $00
    nop                                           ; $487E: $00
    nop                                           ; $487F: $00
    ld h, b                                       ; $4880: $60
    nop                                           ; $4881: $00
    ldh [rLCDC], a                                ; $4882: $E0 $40
    and b                                         ; $4884: $A0
    ld b, b                                       ; $4885: $40
    ret nz                                        ; $4886: $C0

    add b                                         ; $4887: $80
    ld b, b                                       ; $4888: $40
    add b                                         ; $4889: $80
    add [hl]                                      ; $488A: $86
    nop                                           ; $488B: $00
    ld c, $04                                     ; $488C: $0E $04
    db $F4                                        ; $488E: $F4
    ld [$D038], sp                                ; $488F: $08 $38 $D0
    ldh a, [$FFC0]                                ; $4892: $F0 $C0
    ldh [$FFC0], a                                ; $4894: $E0 $C0
    ldh [$FFC0], a                                ; $4896: $E0 $C0
    ld hl, sp-$80                                 ; $4898: $F8 $80
    db $EC                                        ; $489A: $EC
    ld e, b                                       ; $489B: $58
    db $FC                                        ; $489C: $FC
    ret nz                                        ; $489D: $C0

    ld h, b                                       ; $489E: $60
    ret nz                                        ; $489F: $C0

    dec c                                         ; $48A0: $0D
    ld b, $07                                     ; $48A1: $06 $07
    ld [bc], a                                    ; $48A3: $02
    ld b, $03                                     ; $48A4: $06 $03
    inc bc                                        ; $48A6: $03
    ld bc, $0103                                  ; $48A7: $01 $03 $01
    ld b, $03                                     ; $48AA: $06 $03
    inc c                                         ; $48AC: $0C
    rlca                                          ; $48AD: $07
    call z, $FC07                                 ; $48AE: $CC $07 $FC
    ld b, a                                       ; $48B1: $47
    ld sp, hl                                     ; $48B2: $F9
    ld a, [hl]                                    ; $48B3: $7E
    jp nz, Jump_022_657D                          ; $48B4: $C2 $7D $65

    ld a, [hl-]                                   ; $48B7: $3A
    ld l, e                                       ; $48B8: $6B
    inc [hl]                                      ; $48B9: $34
    ld [hl], e                                    ; $48BA: $73
    inc l                                         ; $48BB: $2C
    rst RST_18                                    ; $48BC: $DF
    ld h, b                                       ; $48BD: $60
    nop                                           ; $48BE: $00
    nop                                           ; $48BF: $00
    cp $01                                        ; $48C0: $FE $01
    cp a                                          ; $48C2: $BF
    ld b, b                                       ; $48C3: $40
    and h                                         ; $48C4: $A4
    ld e, e                                       ; $48C5: $5B
    and l                                         ; $48C6: $A5
    ld e, d                                       ; $48C7: $5A
    ld c, a                                       ; $48C8: $4F
    or b                                          ; $48C9: $B0
    ld c, a                                       ; $48CA: $4F
    or b                                          ; $48CB: $B0
    ld e, [hl]                                    ; $48CC: $5E
    and c                                         ; $48CD: $A1
    ld e, h                                       ; $48CE: $5C
    and e                                         ; $48CF: $A3
    ld a, b                                       ; $48D0: $78
    add a                                         ; $48D1: $87
    ldh a, [rIF]                                  ; $48D2: $F0 $0F
    ldh [$FF1F], a                                ; $48D4: $E0 $1F
    ldh [$FF1F], a                                ; $48D6: $E0 $1F
    ldh [$FF1F], a                                ; $48D8: $E0 $1F
    ldh a, [rIF]                                  ; $48DA: $F0 $0F
    ldh a, [rIF]                                  ; $48DC: $F0 $0F
    nop                                           ; $48DE: $00
    nop                                           ; $48DF: $00
    adc [hl]                                      ; $48E0: $8E
    ld [hl], c                                    ; $48E1: $71
    ld e, [hl]                                    ; $48E2: $5E
    and c                                         ; $48E3: $A1
    ld e, c                                       ; $48E4: $59
    and [hl]                                      ; $48E5: $A6
    db $FC                                        ; $48E6: $FC
    inc bc                                        ; $48E7: $03
    rst RST_38                                    ; $48E8: $FF
    nop                                           ; $48E9: $00
    ld b, $F9                                     ; $48EA: $06 $F9
    inc bc                                        ; $48EC: $03
    db $FC                                        ; $48ED: $FC
    inc bc                                        ; $48EE: $03
    db $FC                                        ; $48EF: $FC
    ld bc, $00FE                                  ; $48F0: $01 $FE $00
    rst RST_38                                    ; $48F3: $FF
    nop                                           ; $48F4: $00
    rst RST_38                                    ; $48F5: $FF
    nop                                           ; $48F6: $00
    rst RST_38                                    ; $48F7: $FF
    nop                                           ; $48F8: $00
    rst RST_38                                    ; $48F9: $FF
    nop                                           ; $48FA: $00
    rst RST_38                                    ; $48FB: $FF
    nop                                           ; $48FC: $00
    rst RST_38                                    ; $48FD: $FF
    nop                                           ; $48FE: $00
    ld a, a                                       ; $48FF: $7F
    inc e                                         ; $4900: $1C
    db $E3                                        ; $4901: $E3
    dec e                                         ; $4902: $1D
    ldh [c], a                                    ; $4903: $E2
    rrca                                          ; $4904: $0F
    ldh a, [$FF87]                                ; $4905: $F0 $87
    ld a, b                                       ; $4907: $78
    db $E3                                        ; $4908: $E3
    inc e                                         ; $4909: $1C
    db $10                                        ; $490A: $10
    rst RST_28                                    ; $490B: $EF

jr_022_490C:
    db $10                                        ; $490C: $10
    rst RST_28                                    ; $490D: $EF
    ret                                           ; $490E: $C9


    scf                                           ; $490F: $37
    add sp, $17                                   ; $4910: $E8 $17
    db $F4                                        ; $4912: $F4
    dec bc                                        ; $4913: $0B
    ld a, $C1                                     ; $4914: $3E $C1
    dec c                                         ; $4916: $0D
    ldh a, [c]                                    ; $4917: $F2
    ld b, $F9                                     ; $4918: $06 $F9
    rlca                                          ; $491A: $07
    ld hl, sp+$0F                                 ; $491B: $F8 $0F
    ldh a, [rIF]                                  ; $491D: $F0 $0F
    ldh a, [$FFA6]                                ; $491F: $F0 $A6
    ld e, h                                       ; $4921: $5C
    xor $18                                       ; $4922: $EE $18
    rst RST_00                                    ; $4924: $C7
    ld a, $47                                     ; $4925: $3E $47
    cp h                                          ; $4927: $BC
    sbc h                                         ; $4928: $9C
    ld a, b                                       ; $4929: $78
    jr c, jr_022_490C                             ; $492A: $38 $E0

    ldh [$FFC0], a                                ; $492C: $E0 $C0
    ret nz                                        ; $492E: $C0

    nop                                           ; $492F: $00
    ld sp, hl                                     ; $4930: $F9
    add b                                         ; $4931: $80
    ld a, a                                       ; $4932: $7F
    ld hl, sp+$07                                 ; $4933: $F8 $07
    cp $8E                                        ; $4935: $FE $8E
    ld a, b                                       ; $4937: $78
    ld e, h                                       ; $4938: $5C
    or b                                          ; $4939: $B0
    ld l, $DC                                     ; $493A: $2E $DC
    inc de                                        ; $493C: $13
    xor $F3                                       ; $493D: $EE $F3
    ld c, $79                                     ; $493F: $0E $79
    jr nc, jr_022_497E                            ; $4941: $30 $3B

    ld de, $133E                                  ; $4943: $11 $3E $13
    inc e                                         ; $4946: $1C
    rrca                                          ; $4947: $0F
    ld [hl], c                                    ; $4948: $71
    ld e, $72                                     ; $4949: $1E $72
    dec a                                         ; $494B: $3D
    ld a, [hl-]                                   ; $494C: $3A
    dec c                                         ; $494D: $0D
    rrca                                          ; $494E: $0F
    inc b                                         ; $494F: $04
    rrca                                          ; $4950: $0F
    inc b                                         ; $4951: $04
    rst RST_08                                    ; $4952: $CF
    inc b                                         ; $4953: $04
    cp $45                                        ; $4954: $FE $45
    ld a, [$627D]                                 ; $4956: $FA $7D $62
    dec a                                         ; $4959: $3D
    ld [hl-], a                                   ; $495A: $32
    dec e                                         ; $495B: $1D
    ld a, [de]                                    ; $495C: $1A
    dec c                                         ; $495D: $0D
    add hl, de                                    ; $495E: $19
    ld c, $A8                                     ; $495F: $0E $A8
    rst RST_10                                    ; $4961: $D7
    inc d                                         ; $4962: $14
    db $EB                                        ; $4963: $EB
    inc d                                         ; $4964: $14
    db $EB                                        ; $4965: $EB
    ld a, [bc]                                    ; $4966: $0A
    push af                                       ; $4967: $F5
    ld [$3D15], a                                 ; $4968: $EA $15 $3D
    jp nz, Jump_000_0BF4                          ; $496B: $C2 $F4 $0B

    ei                                            ; $496E: $FB
    inc b                                         ; $496F: $04
    cp $01                                        ; $4970: $FE $01
    cp $01                                        ; $4972: $FE $01
    cp $01                                        ; $4974: $FE $01
    xor $11                                       ; $4976: $EE $11
    rst RST_28                                    ; $4978: $EF
    db $10                                        ; $4979: $10
    halt                                          ; $497A: $76
    adc c                                         ; $497B: $89
    ld a, a                                       ; $497C: $7F
    add b                                         ; $497D: $80

jr_022_497E:
    cp [hl]                                       ; $497E: $BE
    ld b, c                                       ; $497F: $41
    nop                                           ; $4980: $00
    rst RST_38                                    ; $4981: $FF
    inc bc                                        ; $4982: $03
    db $FC                                        ; $4983: $FC
    inc c                                         ; $4984: $0C
    di                                            ; $4985: $F3
    add hl, de                                    ; $4986: $19
    and $1F                                       ; $4987: $E6 $1F
    jp hl                                         ; $4989: $E9


    rra                                           ; $498A: $1F
    db $EB                                        ; $498B: $EB
    db $EB                                        ; $498C: $EB
    inc d                                         ; $498D: $14
    rst RST_38                                    ; $498E: $FF
    nop                                           ; $498F: $00
    sub e                                         ; $4990: $93
    ld l, h                                       ; $4991: $6C
    ld h, e                                       ; $4992: $63
    sbc h                                         ; $4993: $9C
    ld h, e                                       ; $4994: $63
    sbc h                                         ; $4995: $9C
    sub e                                         ; $4996: $93
    ld l, h                                       ; $4997: $6C
    rst RST_38                                    ; $4998: $FF
    nop                                           ; $4999: $00
    add e                                         ; $499A: $83
    ld a, h                                       ; $499B: $7C

jr_022_499C:
    add a                                         ; $499C: $87
    ld a, b                                       ; $499D: $78
    rst RST_38                                    ; $499E: $FF
    nop                                           ; $499F: $00
    nop                                           ; $49A0: $00
    rst RST_38                                    ; $49A1: $FF
    nop                                           ; $49A2: $00
    rst RST_38                                    ; $49A3: $FF
    add c                                         ; $49A4: $81
    ld a, [hl]                                    ; $49A5: $7E
    jp nz, $A53D                                  ; $49A6: $C2 $3D $A5

    ld e, d                                       ; $49A9: $5A
    db $DB                                        ; $49AA: $DB
    inc h                                         ; $49AB: $24
    di                                            ; $49AC: $F3
    inc c                                         ; $49AD: $0C

jr_022_49AE:
    ld a, e                                       ; $49AE: $7B
    add h                                         ; $49AF: $84
    rst RST_38                                    ; $49B0: $FF
    nop                                           ; $49B1: $00
    rst RST_08                                    ; $49B2: $CF
    jr nc, jr_022_499C                            ; $49B3: $30 $E7

    jr jr_022_49AE                                ; $49B5: $18 $F7

    ld [$02FD], sp                                ; $49B7: $08 $FD $02
    ei                                            ; $49BA: $FB
    inc b                                         ; $49BB: $04
    rst RST_38                                    ; $49BC: $FF
    nop                                           ; $49BD: $00
    ld e, $E1                                     ; $49BE: $1E $E1
    xor a                                         ; $49C0: $AF
    ld e, d                                       ; $49C1: $5A
    and l                                         ; $49C2: $A5
    ld e, a                                       ; $49C3: $5F
    ld b, e                                       ; $49C4: $43
    cp h                                          ; $49C5: $BC
    add l                                         ; $49C6: $85
    ld a, d                                       ; $49C7: $7A
    ld a, [$1505]                                 ; $49C8: $FA $05 $15
    db $EB                                        ; $49CB: $EB
    reti                                          ; $49CC: $D9


    daa                                           ; $49CD: $27
    di                                            ; $49CE: $F3
    ld c, $F3                                     ; $49CF: $0E $F3
    ld c, $FF                                     ; $49D1: $0E $FF
    ld [bc], a                                    ; $49D3: $02
    di                                            ; $49D4: $F3
    dec c                                         ; $49D5: $0D

jr_022_49D6:
    rst RST_18                                    ; $49D6: $DF
    ld hl, $6F90                                  ; $49D7: $21 $90 $6F
    ld de, $13EF                                  ; $49DA: $11 $EF $13
    xor $26                                       ; $49DD: $EE $26
    call c, Call_000_00E0                         ; $49DF: $DC $E0 $00
    ldh a, [$FFE0]                                ; $49E2: $F0 $E0
    jr jr_022_49D6                                ; $49E4: $18 $F0

    ld l, h                                       ; $49E6: $6C
    ld hl, sp-$08                                 ; $49E7: $F8 $F8
    sub b                                         ; $49E9: $90
    sub b                                         ; $49EA: $90
    nop                                           ; $49EB: $00
    add b                                         ; $49EC: $80

jr_022_49ED:
    nop                                           ; $49ED: $00
    ld [$3C00], sp                                ; $49EE: $08 $00 $3C
    ld [$3078], sp                                ; $49F1: $08 $78 $30
    db $FC                                        ; $49F4: $FC
    ld h, b                                       ; $49F5: $60
    sbc [hl]                                      ; $49F6: $9E
    db $FC                                        ; $49F7: $FC
    inc e                                         ; $49F8: $1C
    ldh a, [$FFF0]                                ; $49F9: $F0 $F0
    ldh [$FFE0], a                                ; $49FB: $E0 $E0
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
    ld b, b                                       ; $4A08: $40
    nop                                           ; $4A09: $00
    ldh a, [rLCDC]                                ; $4A0A: $F0 $40
    ld a, b                                       ; $4A0C: $78

jr_022_4A0D:
    jr nc, @+$6E                                  ; $4A0D: $30 $6C

    jr c, @+$01                                   ; $4A0F: $38 $FF

    ld a, b                                       ; $4A11: $78
    ld a, a                                       ; $4A12: $7F
    rrca                                          ; $4A13: $0F
    inc c                                         ; $4A14: $0C
    rlca                                          ; $4A15: $07
    ld b, $03                                     ; $4A16: $06 $03
    inc bc                                        ; $4A18: $03
    ld bc, $0103                                  ; $4A19: $01 $03 $01
    inc bc                                        ; $4A1C: $03
    ld bc, $0173                                  ; $4A1D: $01 $73 $01
    nop                                           ; $4A20: $00
    nop                                           ; $4A21: $00
    ld bc, $0600                                  ; $4A22: $01 $00 $06
    ld bc, $060B                                  ; $4A25: $01 $0B $06
    ld e, $0C                                     ; $4A28: $1E $0C
    ld e, $0C                                     ; $4A2A: $1E $0C
    rrca                                          ; $4A2C: $0F
    ld b, $0D                                     ; $4A2D: $06 $0D
    rlca                                          ; $4A2F: $07
    inc c                                         ; $4A30: $0C
    rlca                                          ; $4A31: $07
    adc h                                         ; $4A32: $8C
    rlca                                          ; $4A33: $07
    ld hl, sp-$71                                 ; $4A34: $F8 $8F
    ld [hl], b                                    ; $4A36: $70
    rst RST_38                                    ; $4A37: $FF
    nop                                           ; $4A38: $00
    rst RST_38                                    ; $4A39: $FF
    nop                                           ; $4A3A: $00
    rst RST_38                                    ; $4A3B: $FF
    jr nc, jr_022_4A0D                            ; $4A3C: $30 $CF

    jr z, @-$27                                   ; $4A3E: $28 $D7

    nop                                           ; $4A40: $00
    nop                                           ; $4A41: $00
    add b                                         ; $4A42: $80
    nop                                           ; $4A43: $00
    ret c                                         ; $4A44: $D8

    add b                                         ; $4A45: $80
    ld hl, sp+$50                                 ; $4A46: $F8 $50
    ld [hl], b                                    ; $4A48: $70
    jr nz, jr_022_4ABB                            ; $4A49: $20 $70

    jr nz, jr_022_49ED                            ; $4A4B: $20 $A0

    nop                                           ; $4A4D: $00
    ret nz                                        ; $4A4E: $C0

    add b                                         ; $4A4F: $80
    ret nz                                        ; $4A50: $C0

    add b                                         ; $4A51: $80
    ret nz                                        ; $4A52: $C0

    add b                                         ; $4A53: $80
    ret nz                                        ; $4A54: $C0

    add b                                         ; $4A55: $80
    ld a, h                                       ; $4A56: $7C
    ret nz                                        ; $4A57: $C0

    ld a, $FC                                     ; $4A58: $3E $FC
    inc bc                                        ; $4A5A: $03
    cp $01                                        ; $4A5B: $FE $01
    rst RST_38                                    ; $4A5D: $FF
    nop                                           ; $4A5E: $00
    rst RST_38                                    ; $4A5F: $FF
    nop                                           ; $4A60: $00
    nop                                           ; $4A61: $00
    nop                                           ; $4A62: $00
    nop                                           ; $4A63: $00
    nop                                           ; $4A64: $00
    nop                                           ; $4A65: $00
    nop                                           ; $4A66: $00
    nop                                           ; $4A67: $00
    ld bc, $0100                                  ; $4A68: $01 $00 $01
    nop                                           ; $4A6B: $00
    ld bc, $0100                                  ; $4A6C: $01 $00 $01
    nop                                           ; $4A6F: $00
    nop                                           ; $4A70: $00
    nop                                           ; $4A71: $00
    nop                                           ; $4A72: $00
    nop                                           ; $4A73: $00
    nop                                           ; $4A74: $00
    nop                                           ; $4A75: $00
    ld bc, $0F00                                  ; $4A76: $01 $00 $0F
    ld bc, $0FFE                                  ; $4A79: $01 $FE $0F
    ldh a, [rIE]                                  ; $4A7C: $F0 $FF
    nop                                           ; $4A7E: $00
    rst RST_38                                    ; $4A7F: $FF
    nop                                           ; $4A80: $00
    nop                                           ; $4A81: $00
    jr nc, jr_022_4A84                            ; $4A82: $30 $00

jr_022_4A84:
    ld [hl], b                                    ; $4A84: $70
    jr nz, @-$0E                                  ; $4A85: $20 $F0

    ld b, b                                       ; $4A87: $40
    ld hl, sp-$30                                 ; $4A88: $F8 $D0
    ld hl, sp-$10                                 ; $4A8A: $F8 $F0
    ldh a, [$FFE0]                                ; $4A8C: $F0 $E0
    ldh [$FFC0], a                                ; $4A8E: $E0 $C0
    di                                            ; $4A90: $F3
    ld b, b                                       ; $4A91: $40
    rst RST_38                                    ; $4A92: $FF
    ld [hl], d                                    ; $4A93: $72
    adc $7C                                       ; $4A94: $CE $7C
    call z, $8C78                                 ; $4A96: $CC $78 $8C
    ld hl, sp+$36                                 ; $4A99: $F8 $36
    call z, $AC56                                 ; $4A9B: $CC $56 $AC
    ld e, a                                       ; $4A9E: $5F
    xor b                                         ; $4A9F: $A8
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
    nop                                           ; $4AAE: $00
    nop                                           ; $4AAF: $00
    nop                                           ; $4AB0: $00
    nop                                           ; $4AB1: $00
    nop                                           ; $4AB2: $00
    nop                                           ; $4AB3: $00
    nop                                           ; $4AB4: $00
    nop                                           ; $4AB5: $00
    rra                                           ; $4AB6: $1F
    nop                                           ; $4AB7: $00
    ld h, e                                       ; $4AB8: $63
    ld e, $DF                                     ; $4AB9: $1E $DF

jr_022_4ABB:
    ld a, a                                       ; $4ABB: $7F
    rst RST_38                                    ; $4ABC: $FF
    inc e                                         ; $4ABD: $1C
    inc e                                         ; $4ABE: $1C
    nop                                           ; $4ABF: $00
    rlca                                          ; $4AC0: $07
    nop                                           ; $4AC1: $00
    rlca                                          ; $4AC2: $07
    inc bc                                        ; $4AC3: $03
    rlca                                          ; $4AC4: $07
    inc bc                                        ; $4AC5: $03
    inc bc                                        ; $4AC6: $03
    ld bc, $0001                                  ; $4AC7: $01 $01 $00
    nop                                           ; $4ACA: $00
    nop                                           ; $4ACB: $00
    nop                                           ; $4ACC: $00
    nop                                           ; $4ACD: $00
    db $FC                                        ; $4ACE: $FC
    nop                                           ; $4ACF: $00
    rst RST_38                                    ; $4AD0: $FF
    nop                                           ; $4AD1: $00
    ld a, a                                       ; $4AD2: $7F
    nop                                           ; $4AD3: $00
    dec e                                         ; $4AD4: $1D
    ld [bc], a                                    ; $4AD5: $02
    add hl, bc                                    ; $4AD6: $09
    ld b, $0B                                     ; $4AD7: $06 $0B
    dec b                                         ; $4AD9: $05
    rst RST_38                                    ; $4ADA: $FF
    dec bc                                        ; $4ADB: $0B
    rst RST_38                                    ; $4ADC: $FF
    inc bc                                        ; $4ADD: $03
    ld [hl], a                                    ; $4ADE: $77
    add hl, bc                                    ; $4ADF: $09
    ldh [rP1], a                                  ; $4AE0: $E0 $00
    ldh a, [$FFE0]                                ; $4AE2: $F0 $E0
    ld hl, sp-$10                                 ; $4AE4: $F8 $F0
    db $E4                                        ; $4AE6: $E4
    ld hl, sp-$0C                                 ; $4AE7: $F8 $F4
    ld a, b                                       ; $4AE9: $78
    ld a, d                                       ; $4AEA: $7A
    inc a                                         ; $4AEB: $3C
    ld [hl-], a                                   ; $4AEC: $32
    inc e                                         ; $4AED: $1C
    ld [de], a                                    ; $4AEE: $12
    inc c                                         ; $4AEF: $0C
    ld de, $990E                                  ; $4AF0: $11 $0E $99
    ld c, $FD                                     ; $4AF3: $0E $FD
    ld e, $C1                                     ; $4AF5: $1E $C1
    ld a, $F1                                     ; $4AF7: $3E $F1
    cp $E1                                        ; $4AF9: $FE $E1
    cp $FD                                        ; $4AFB: $FE $FD
    cp $F1                                        ; $4AFD: $FE $F1
    cp $3F                                        ; $4AFF: $FE $3F
    ld [de], a                                    ; $4B01: $12
    ld e, $09                                     ; $4B02: $1E $09
    rra                                           ; $4B04: $1F
    nop                                           ; $4B05: $00
    inc a                                         ; $4B06: $3C
    inc bc                                        ; $4B07: $03
    jp $FF3F                                      ; $4B08: $C3 $3F $FF


    rst RST_38                                    ; $4B0B: $FF
    rst RST_38                                    ; $4B0C: $FF
    nop                                           ; $4B0D: $00
    rst RST_28                                    ; $4B0E: $EF
    dec d                                         ; $4B0F: $15
    ld a, a                                       ; $4B10: $7F
    inc bc                                        ; $4B11: $03
    rlca                                          ; $4B12: $07
    inc bc                                        ; $4B13: $03
    inc bc                                        ; $4B14: $03
    nop                                           ; $4B15: $00
    rlca                                          ; $4B16: $07
    ld bc, $0669                                  ; $4B17: $01 $69 $06
    pop af                                        ; $4B1A: $F1
    ld l, [hl]                                    ; $4B1B: $6E
    db $FD                                        ; $4B1C: $FD
    ld [hl], d                                    ; $4B1D: $72
    sbc [hl]                                      ; $4B1E: $9E
    ld a, h                                       ; $4B1F: $7C
    pop hl                                        ; $4B20: $E1
    ld a, $BD                                     ; $4B21: $3E $BD
    ld e, [hl]                                    ; $4B23: $5E
    pop af                                        ; $4B24: $F1
    ld l, $F2                                     ; $4B25: $2E $F2
    db $EC                                        ; $4B27: $EC
    ldh a, [c]                                    ; $4B28: $F2
    db $EC                                        ; $4B29: $EC
    ld a, [$E49C]                                 ; $4B2A: $FA $9C $E4
    ld a, b                                       ; $4B2D: $78
    db $FC                                        ; $4B2E: $FC
    ld hl, sp-$08                                 ; $4B2F: $F8 $F8
    ldh a, [$FFF0]                                ; $4B31: $F0 $F0
    ldh [$FFF0], a                                ; $4B33: $E0 $F0
    nop                                           ; $4B35: $00
    ld hl, sp-$80                                 ; $4B36: $F8 $80
    ret z                                         ; $4B38: $C8

    or b                                          ; $4B39: $B0
    call nz, $C4B8                                ; $4B3A: $C4 $B8 $C4
    jr c, jr_022_4B66                             ; $4B3D: $38 $27

jr_022_4B3F:
    jr jr_022_4B3F                                ; $4B3F: $18 $FE

    ld a, h                                       ; $4B41: $7C
    ld e, [hl]                                    ; $4B42: $5E
    inc a                                         ; $4B43: $3C
    ccf                                           ; $4B44: $3F
    ld c, $0F                                     ; $4B45: $0E $0F
    ld b, $17                                     ; $4B47: $06 $17
    ld a, [bc]                                    ; $4B49: $0A
    daa                                           ; $4B4A: $27
    inc e                                         ; $4B4B: $1C
    ld e, a                                       ; $4B4C: $5F
    ld a, $FF                                     ; $4B4D: $3E $FF
    ld a, a                                       ; $4B4F: $7F
    rst RST_38                                    ; $4B50: $FF
    nop                                           ; $4B51: $00
    nop                                           ; $4B52: $00
    nop                                           ; $4B53: $00
    nop                                           ; $4B54: $00
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
    ccf                                           ; $4B60: $3F
    ld c, $3F                                     ; $4B61: $0E $3F
    rra                                           ; $4B63: $1F
    dec sp                                        ; $4B64: $3B
    rra                                           ; $4B65: $1F

jr_022_4B66:
    dec de                                        ; $4B66: $1B
    rrca                                          ; $4B67: $0F
    ld c, $01                                     ; $4B68: $0E $01
    ld bc, $8000                                  ; $4B6A: $01 $00 $80
    nop                                           ; $4B6D: $00
    add b                                         ; $4B6E: $80
    nop                                           ; $4B6F: $00
    add b                                         ; $4B70: $80
    nop                                           ; $4B71: $00
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
    nop                                           ; $4B7C: $00
    nop                                           ; $4B7D: $00
    nop                                           ; $4B7E: $00
    nop                                           ; $4B7F: $00
    add b                                         ; $4B80: $80
    nop                                           ; $4B81: $00
    ret nz                                        ; $4B82: $C0

    add b                                         ; $4B83: $80
    db $FC                                        ; $4B84: $FC
    ret nz                                        ; $4B85: $C0

    db $FC                                        ; $4B86: $FC
    add sp, -$02                                  ; $4B87: $E8 $FE
    db $F4                                        ; $4B89: $F4
    cp $04                                        ; $4B8A: $FE $04
    rla                                           ; $4B8C: $17
    ld c, $13                                     ; $4B8D: $0E $13
    ld c, $3F                                     ; $4B8F: $0E $3F
    ld e, $3F                                     ; $4B91: $1E $3F
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
    inc bc                                        ; $4BA0: $03
    nop                                           ; $4BA1: $00
    rlca                                          ; $4BA2: $07
    inc bc                                        ; $4BA3: $03
    ccf                                           ; $4BA4: $3F
    nop                                           ; $4BA5: $00
    ld [hl], $1F                                  ; $4BA6: $36 $1F
    dec de                                        ; $4BA8: $1B
    rlca                                          ; $4BA9: $07
    ld a, a                                       ; $4BAA: $7F
    nop                                           ; $4BAB: $00
    rst RST_18                                    ; $4BAC: $DF
    ld a, l                                       ; $4BAD: $7D
    rst RST_38                                    ; $4BAE: $FF
    inc e                                         ; $4BAF: $1C
    inc e                                         ; $4BB0: $1C
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
    rlca                                          ; $4BC0: $07
    nop                                           ; $4BC1: $00
    ld a, l                                       ; $4BC2: $7D
    rlca                                          ; $4BC3: $07
    or [hl]                                       ; $4BC4: $B6
    ld a, a                                       ; $4BC5: $7F
    rst RST_18                                    ; $4BC6: $DF
    ldh a, [rIE]                                  ; $4BC7: $F0 $FF
    ld bc, $FFDF                                  ; $4BC9: $01 $DF $FF
    ld a, a                                       ; $4BCC: $7F
    rst RST_38                                    ; $4BCD: $FF
    rst RST_38                                    ; $4BCE: $FF
    nop                                           ; $4BCF: $00
    ld l, l                                       ; $4BD0: $6D
    rst RST_38                                    ; $4BD1: $FF
    or a                                          ; $4BD2: $B7
    ld a, a                                       ; $4BD3: $7F
    ld a, a                                       ; $4BD4: $7F
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
    inc bc                                        ; $4BE0: $03
    nop                                           ; $4BE1: $00
    ld c, $03                                     ; $4BE2: $0E $03
    rra                                           ; $4BE4: $1F
    rrca                                          ; $4BE5: $0F
    ld a, $1F                                     ; $4BE6: $3E $1F
    ld hl, sp+$3F                                 ; $4BE8: $F8 $3F
    rst RST_38                                    ; $4BEA: $FF
    rst RST_38                                    ; $4BEB: $FF
    rst RST_38                                    ; $4BEC: $FF
    rst RST_20                                    ; $4BED: $E7
    rst RST_38                                    ; $4BEE: $FF
    rrca                                          ; $4BEF: $0F
    rst RST_38                                    ; $4BF0: $FF
    ccf                                           ; $4BF1: $3F
    rst RST_38                                    ; $4BF2: $FF
    rst RST_38                                    ; $4BF3: $FF
    cp $FF                                        ; $4BF4: $FE $FF
    ld hl, sp-$01                                 ; $4BF6: $F8 $FF
    cp $7F                                        ; $4BF8: $FE $7F
    add c                                         ; $4BFA: $81
    cp $FE                                        ; $4BFB: $FE $FE
    ldh [$FFE0], a                                ; $4BFD: $E0 $E0
    nop                                           ; $4BFF: $00
    rst RST_38                                    ; $4C00: $FF
    nop                                           ; $4C01: $00
    rra                                           ; $4C02: $1F
    ldh [$FF87], a                                ; $4C03: $E0 $87
    ld hl, sp+$02                                 ; $4C05: $F8 $02
    db $FC                                        ; $4C07: $FC
    ld bc, $E1FE                                  ; $4C08: $01 $FE $E1
    cp $00                                        ; $4C0B: $FE $00
    rst RST_38                                    ; $4C0D: $FF
    db $FC                                        ; $4C0E: $FC
    rst RST_38                                    ; $4C0F: $FF
    ldh a, [rIE]                                  ; $4C10: $F0 $FF
    jp nz, Jump_000_03FF                          ; $4C12: $C2 $FF $03

    db $FD                                        ; $4C15: $FD
    rlca                                          ; $4C16: $07
    ei                                            ; $4C17: $FB
    rra                                           ; $4C18: $1F
    rst RST_20                                    ; $4C19: $E7
    rst RST_38                                    ; $4C1A: $FF
    ld c, $BE                                     ; $4C1B: $0E $BE
    ld e, c                                       ; $4C1D: $59
    ld a, c                                       ; $4C1E: $79
    ld b, $F8                                     ; $4C1F: $06 $F8
    nop                                           ; $4C21: $00
    ldh [rP1], a                                  ; $4C22: $E0 $00
    nop                                           ; $4C24: $00
    nop                                           ; $4C25: $00
    nop                                           ; $4C26: $00
    nop                                           ; $4C27: $00
    nop                                           ; $4C28: $00
    nop                                           ; $4C29: $00
    ld hl, sp+$00                                 ; $4C2A: $F8 $00
    ldh [rP1], a                                  ; $4C2C: $E0 $00
    add b                                         ; $4C2E: $80
    nop                                           ; $4C2F: $00
    ret nz                                        ; $4C30: $C0

    add b                                         ; $4C31: $80
    ret nz                                        ; $4C32: $C0

    add b                                         ; $4C33: $80
    ret nz                                        ; $4C34: $C0

    add b                                         ; $4C35: $80
    ldh [$FFC0], a                                ; $4C36: $E0 $C0
    ldh [$FFC0], a                                ; $4C38: $E0 $C0
    ld hl, sp+$00                                 ; $4C3A: $F8 $00
    ccf                                           ; $4C3C: $3F
    ret nz                                        ; $4C3D: $C0

    rst RST_38                                    ; $4C3E: $FF
    nop                                           ; $4C3F: $00
    ld bc, $6600                                  ; $4C40: $01 $00 $66
    ld bc, $67F8                                  ; $4C43: $01 $F8 $67
    db $FC                                        ; $4C46: $FC
    ld [hl], e                                    ; $4C47: $73
    sbc a                                         ; $4C48: $9F
    ld a, h                                       ; $4C49: $7C
    ld a, a                                       ; $4C4A: $7F
    ld a, $37                                     ; $4C4B: $3E $37
    rrca                                          ; $4C4D: $0F
    rrca                                          ; $4C4E: $0F
    inc bc                                        ; $4C4F: $03
    inc bc                                        ; $4C50: $03
    nop                                           ; $4C51: $00
    ld bc, $0000                                  ; $4C52: $01 $00 $00
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
    rst RST_38                                    ; $4C60: $FF
    ld a, h                                       ; $4C61: $7C
    cp $60                                        ; $4C62: $FE $60
    ld [hl], c                                    ; $4C64: $71
    xor [hl]                                      ; $4C65: $AE
    ld [hl], b                                    ; $4C66: $70
    xor a                                         ; $4C67: $AF
    ld hl, sp+$07                                 ; $4C68: $F8 $07
    rst RST_00                                    ; $4C6A: $C7
    nop                                           ; $4C6B: $00
    pop hl                                        ; $4C6C: $E1
    ld b, b                                       ; $4C6D: $40
    rst RST_38                                    ; $4C6E: $FF
    and b                                         ; $4C6F: $A0
    cp $30                                        ; $4C70: $FE $30
    inc a                                         ; $4C72: $3C
    ld hl, sp-$22                                 ; $4C73: $F8 $DE
    inc a                                         ; $4C75: $3C
    ld a, $0C                                     ; $4C76: $3E $0C
    ld c, $00                                     ; $4C78: $0E $00
    nop                                           ; $4C7A: $00
    nop                                           ; $4C7B: $00
    nop                                           ; $4C7C: $00
    nop                                           ; $4C7D: $00
    nop                                           ; $4C7E: $00
    nop                                           ; $4C7F: $00
    db $FC                                        ; $4C80: $FC
    nop                                           ; $4C81: $00
    ldh a, [rP1]                                  ; $4C82: $F0 $00
    add b                                         ; $4C84: $80
    nop                                           ; $4C85: $00
    nop                                           ; $4C86: $00
    nop                                           ; $4C87: $00
    nop                                           ; $4C88: $00
    nop                                           ; $4C89: $00
    rst RST_38                                    ; $4C8A: $FF
    nop                                           ; $4C8B: $00
    rst RST_38                                    ; $4C8C: $FF
    ld [hl], b                                    ; $4C8D: $70
    rst RST_38                                    ; $4C8E: $FF
    ld a, h                                       ; $4C8F: $7C
    rst RST_18                                    ; $4C90: $DF
    cp $D7                                        ; $4C91: $FE $D7
    rst RST_38                                    ; $4C93: $FF
    rst RST_38                                    ; $4C94: $FF
    nop                                           ; $4C95: $00
    ld bc, $0000                                  ; $4C96: $01 $00 $00
    nop                                           ; $4C99: $00
    nop                                           ; $4C9A: $00
    nop                                           ; $4C9B: $00
    nop                                           ; $4C9C: $00
    nop                                           ; $4C9D: $00
    nop                                           ; $4C9E: $00
    nop                                           ; $4C9F: $00
    cp $00                                        ; $4CA0: $FE $00
    ldh [rP1], a                                  ; $4CA2: $E0 $00
    ret nz                                        ; $4CA4: $C0

    nop                                           ; $4CA5: $00
    ldh [rLCDC], a                                ; $4CA6: $E0 $40
    cp $60                                        ; $4CA8: $FE $60
    db $FC                                        ; $4CAA: $FC
    ld [hl], b                                    ; $4CAB: $70
    inc a                                         ; $4CAC: $3C
    ld hl, sp-$22                                 ; $4CAD: $F8 $DE
    inc a                                         ; $4CAF: $3C
    ld a, $0C                                     ; $4CB0: $3E $0C
    ld c, $00                                     ; $4CB2: $0E $00
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
    ldh [rP1], a                                  ; $4CDA: $E0 $00
    ret c                                         ; $4CDC: $D8

    ld h, b                                       ; $4CDD: $60
    halt                                          ; $4CDE: $76
    jr jr_022_4CE1                                ; $4CDF: $18 $00

jr_022_4CE1:
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
    nop                                           ; $4CEC: $00
    nop                                           ; $4CED: $00
    nop                                           ; $4CEE: $00
    nop                                           ; $4CEF: $00
    nop                                           ; $4CF0: $00
    nop                                           ; $4CF1: $00
    nop                                           ; $4CF2: $00
    nop                                           ; $4CF3: $00
    nop                                           ; $4CF4: $00
    nop                                           ; $4CF5: $00
    nop                                           ; $4CF6: $00
    nop                                           ; $4CF7: $00
    nop                                           ; $4CF8: $00
    nop                                           ; $4CF9: $00
    stop                                          ; $4CFA: $10 $00
    jr z, jr_022_4D0E                             ; $4CFC: $28 $10

    ld b, h                                       ; $4CFE: $44
    jr c, jr_022_4D01                             ; $4CFF: $38 $00

jr_022_4D01:
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
    nop                                           ; $4D0C: $00
    nop                                           ; $4D0D: $00

jr_022_4D0E:
    nop                                           ; $4D0E: $00
    nop                                           ; $4D0F: $00
    nop                                           ; $4D10: $00
    nop                                           ; $4D11: $00
    nop                                           ; $4D12: $00
    nop                                           ; $4D13: $00
    nop                                           ; $4D14: $00
    nop                                           ; $4D15: $00
    nop                                           ; $4D16: $00
    nop                                           ; $4D17: $00
    inc bc                                        ; $4D18: $03
    nop                                           ; $4D19: $00
    dec c                                         ; $4D1A: $0D
    inc bc                                        ; $4D1B: $03
    scf                                           ; $4D1C: $37
    inc c                                         ; $4D1D: $0C
    rst RST_18                                    ; $4D1E: $DF
    jr nc, jr_022_4D21                            ; $4D1F: $30 $00

jr_022_4D21:
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
    add b                                         ; $4D38: $80
    nop                                           ; $4D39: $00
    add b                                         ; $4D3A: $80
    nop                                           ; $4D3B: $00
    nop                                           ; $4D3C: $00
    nop                                           ; $4D3D: $00
    add b                                         ; $4D3E: $80
    nop                                           ; $4D3F: $00
    ld [bc], a                                    ; $4D40: $02
    ld bc, $0102                                  ; $4D41: $01 $02 $01
    rlca                                          ; $4D44: $07
    nop                                           ; $4D45: $00
    rlca                                          ; $4D46: $07
    inc bc                                        ; $4D47: $03
    inc b                                         ; $4D48: $04
    inc bc                                        ; $4D49: $03
    rlca                                          ; $4D4A: $07
    inc bc                                        ; $4D4B: $03
    dec b                                         ; $4D4C: $05
    inc bc                                        ; $4D4D: $03
    rlca                                          ; $4D4E: $07
    inc bc                                        ; $4D4F: $03
    rlca                                          ; $4D50: $07
    inc bc                                        ; $4D51: $03
    rrca                                          ; $4D52: $0F
    ld [bc], a                                    ; $4D53: $02
    rla                                           ; $4D54: $17
    ld a, [bc]                                    ; $4D55: $0A
    ld l, $18                                     ; $4D56: $2E $18
    ld c, [hl]                                    ; $4D58: $4E
    inc a                                         ; $4D59: $3C
    rst RST_38                                    ; $4D5A: $FF
    ld a, [hl]                                    ; $4D5B: $7E
    rst RST_38                                    ; $4D5C: $FF
    nop                                           ; $4D5D: $00
    nop                                           ; $4D5E: $00
    nop                                           ; $4D5F: $00
    db $E4                                        ; $4D60: $E4
    ld e, b                                       ; $4D61: $58
    ldh [c], a                                    ; $4D62: $E2
    ld e, h                                       ; $4D63: $5C
    ld h, d                                       ; $4D64: $62
    sbc h                                         ; $4D65: $9C
    rst RST_10                                    ; $4D66: $D7
    ld [$83CF], sp                                ; $4D67: $08 $CF $83
    rst RST_08                                    ; $4D6A: $CF
    add e                                         ; $4D6B: $83
    call z, $8F87                                 ; $4D6C: $CC $87 $8F
    rlca                                          ; $4D6F: $07
    add [hl]                                      ; $4D70: $86
    inc bc                                        ; $4D71: $03
    inc bc                                        ; $4D72: $03
    ld bc, $0001                                  ; $4D73: $01 $01 $00
    nop                                           ; $4D76: $00
    nop                                           ; $4D77: $00
    nop                                           ; $4D78: $00
    nop                                           ; $4D79: $00
    nop                                           ; $4D7A: $00
    nop                                           ; $4D7B: $00
    ld bc, $0100                                  ; $4D7C: $01 $00 $01
    nop                                           ; $4D7F: $00
    add b                                         ; $4D80: $80
    nop                                           ; $4D81: $00

jr_022_4D82:
    ret nz                                        ; $4D82: $C0

    add b                                         ; $4D83: $80
    ret nz                                        ; $4D84: $C0

    add b                                         ; $4D85: $80
    ret nz                                        ; $4D86: $C0

    add b                                         ; $4D87: $80
    ret nz                                        ; $4D88: $C0

    add b                                         ; $4D89: $80
    ret nz                                        ; $4D8A: $C0

    add b                                         ; $4D8B: $80
    ldh [$FF80], a                                ; $4D8C: $E0 $80
    or b                                          ; $4D8E: $B0
    ld h, b                                       ; $4D8F: $60
    ret c                                         ; $4D90: $D8

    ld [hl], b                                    ; $4D91: $70
    adc h                                         ; $4D92: $8C
    ld a, b                                       ; $4D93: $78
    cp $FC                                        ; $4D94: $FE $FC
    cp $00                                        ; $4D96: $FE $00
    nop                                           ; $4D98: $00
    nop                                           ; $4D99: $00
    nop                                           ; $4D9A: $00
    nop                                           ; $4D9B: $00
    nop                                           ; $4D9C: $00
    nop                                           ; $4D9D: $00
    nop                                           ; $4D9E: $00
    nop                                           ; $4D9F: $00
    rlca                                          ; $4DA0: $07
    nop                                           ; $4DA1: $00
    ld b, $03                                     ; $4DA2: $06 $03
    inc bc                                        ; $4DA4: $03
    nop                                           ; $4DA5: $00
    ld e, $03                                     ; $4DA6: $1E $03
    rra                                           ; $4DA8: $1F
    ld [$1F7F], sp                                ; $4DA9: $08 $7F $1F
    rst RST_38                                    ; $4DAC: $FF
    ld a, a                                       ; $4DAD: $7F
    rst RST_38                                    ; $4DAE: $FF
    ld a, a                                       ; $4DAF: $7F
    ld a, a                                       ; $4DB0: $7F
    ccf                                           ; $4DB1: $3F
    ccf                                           ; $4DB2: $3F
    rra                                           ; $4DB3: $1F
    rla                                           ; $4DB4: $17
    rrca                                          ; $4DB5: $0F
    inc c                                         ; $4DB6: $0C
    inc bc                                        ; $4DB7: $03
    inc bc                                        ; $4DB8: $03
    nop                                           ; $4DB9: $00
    nop                                           ; $4DBA: $00
    nop                                           ; $4DBB: $00
    nop                                           ; $4DBC: $00
    nop                                           ; $4DBD: $00
    nop                                           ; $4DBE: $00
    nop                                           ; $4DBF: $00
    db $EC                                        ; $4DC0: $EC
    jr nc, jr_022_4D82                            ; $4DC1: $30 $BF

    call z, $36EF                                 ; $4DC3: $CC $EF $36
    cp b                                          ; $4DC6: $B8
    rst RST_08                                    ; $4DC7: $CF
    rst RST_28                                    ; $4DC8: $EF
    ld a, $FF                                     ; $4DC9: $3E $FF
    ret nz                                        ; $4DCB: $C0

    rst RST_38                                    ; $4DCC: $FF
    rst RST_38                                    ; $4DCD: $FF
    rst RST_38                                    ; $4DCE: $FF
    rst RST_38                                    ; $4DCF: $FF
    rst RST_38                                    ; $4DD0: $FF
    rst RST_38                                    ; $4DD1: $FF
    rst RST_38                                    ; $4DD2: $FF
    rst RST_38                                    ; $4DD3: $FF
    rst RST_38                                    ; $4DD4: $FF
    rst RST_38                                    ; $4DD5: $FF
    rst RST_38                                    ; $4DD6: $FF
    rst RST_38                                    ; $4DD7: $FF
    rra                                           ; $4DD8: $1F
    rst RST_38                                    ; $4DD9: $FF
    ldh [$FF1F], a                                ; $4DDA: $E0 $1F
    rra                                           ; $4DDC: $1F
    nop                                           ; $4DDD: $00
    ld bc, $9200                                  ; $4DDE: $01 $00 $92
    ld a, h                                       ; $4DE1: $7C
    or e                                          ; $4DE2: $B3
    ld a, h                                       ; $4DE3: $7C
    ld a, l                                       ; $4DE4: $7D
    and d                                         ; $4DE5: $A2
    and [hl]                                      ; $4DE6: $A6
    ld e, b                                       ; $4DE7: $58
    rst RST_38                                    ; $4DE8: $FF
    inc h                                         ; $4DE9: $24
    rst RST_38                                    ; $4DEA: $FF
    nop                                           ; $4DEB: $00
    rst RST_38                                    ; $4DEC: $FF
    rst RST_38                                    ; $4DED: $FF
    ldh a, [rIE]                                  ; $4DEE: $F0 $FF
    rst RST_38                                    ; $4DF0: $FF
    rst RST_38                                    ; $4DF1: $FF
    rst RST_38                                    ; $4DF2: $FF
    rst RST_38                                    ; $4DF3: $FF
    rst RST_38                                    ; $4DF4: $FF
    rst RST_38                                    ; $4DF5: $FF
    rst RST_38                                    ; $4DF6: $FF
    rst RST_38                                    ; $4DF7: $FF
    ld hl, sp-$01                                 ; $4DF8: $F8 $FF
    nop                                           ; $4DFA: $00
    rst RST_38                                    ; $4DFB: $FF
    rst RST_38                                    ; $4DFC: $FF
    nop                                           ; $4DFD: $00
    ld a, h                                       ; $4DFE: $7C
    and b                                         ; $4DFF: $A0
    ccf                                           ; $4E00: $3F
    ld b, $2E                                     ; $4E01: $06 $2E
    dec e                                         ; $4E03: $1D
    inc hl                                        ; $4E04: $23
    ld e, $2E                                     ; $4E05: $1E $2E
    rra                                           ; $4E07: $1F
    rst RST_00                                    ; $4E08: $C7
    ld a, $FF                                     ; $4E09: $3E $FF
    nop                                           ; $4E0B: $00
    ld hl, sp-$01                                 ; $4E0C: $F8 $FF
    nop                                           ; $4E0E: $00
    rst RST_38                                    ; $4E0F: $FF
    rst RST_38                                    ; $4E10: $FF
    rst RST_38                                    ; $4E11: $FF
    cp $FF                                        ; $4E12: $FE $FF
    ldh a, [rIE]                                  ; $4E14: $F0 $FF
    add b                                         ; $4E16: $80
    rst RST_38                                    ; $4E17: $FF
    inc bc                                        ; $4E18: $03
    db $FC                                        ; $4E19: $FC
    inc a                                         ; $4E1A: $3C
    ret nz                                        ; $4E1B: $C0

    ret nz                                        ; $4E1C: $C0

    nop                                           ; $4E1D: $00
    nop                                           ; $4E1E: $00
    nop                                           ; $4E1F: $00
    xor h                                         ; $4E20: $AC
    ld a, b                                       ; $4E21: $78
    ld hl, sp-$80                                 ; $4E22: $F8 $80
    xor h                                         ; $4E24: $AC
    ld a, b                                       ; $4E25: $78
    db $FC                                        ; $4E26: $FC
    add b                                         ; $4E27: $80
    add e                                         ; $4E28: $83
    nop                                           ; $4E29: $00
    db $FC                                        ; $4E2A: $FC
    inc bc                                        ; $4E2B: $03

jr_022_4E2C:
    nop                                           ; $4E2C: $00
    rst RST_38                                    ; $4E2D: $FF
    nop                                           ; $4E2E: $00
    rst RST_38                                    ; $4E2F: $FF
    pop bc                                        ; $4E30: $C1
    cp $02                                        ; $4E31: $FE $02
    db $FC                                        ; $4E33: $FC
    inc c                                         ; $4E34: $0C
    ldh a, [rSVBK]                                ; $4E35: $F0 $70
    add b                                         ; $4E37: $80
    add b                                         ; $4E38: $80
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
    jr jr_022_4E54                                ; $4E52: $18 $00

jr_022_4E54:
    jr z, jr_022_4E66                             ; $4E54: $28 $10

    ret nc                                        ; $4E56: $D0

    jr nz, jr_022_4E69                            ; $4E57: $20 $10

    ldh [rNR41], a                                ; $4E59: $E0 $20
    ret nz                                        ; $4E5B: $C0

    ld b, b                                       ; $4E5C: $40
    add b                                         ; $4E5D: $80
    add b                                         ; $4E5E: $80
    nop                                           ; $4E5F: $00
    rrca                                          ; $4E60: $0F
    nop                                           ; $4E61: $00
    dec c                                         ; $4E62: $0D
    rlca                                          ; $4E63: $07
    rlca                                          ; $4E64: $07
    nop                                           ; $4E65: $00

jr_022_4E66:
    dec a                                         ; $4E66: $3D
    rlca                                          ; $4E67: $07
    cpl                                           ; $4E68: $2F

jr_022_4E69:
    db $10                                        ; $4E69: $10
    db $FC                                        ; $4E6A: $FC
    jr c, jr_022_4E2C                             ; $4E6B: $38 $BF

    ld h, b                                       ; $4E6D: $60
    rst RST_38                                    ; $4E6E: $FF
    ld l, a                                       ; $4E6F: $6F
    ld [hl], c                                    ; $4E70: $71
    rrca                                          ; $4E71: $0F
    dec c                                         ; $4E72: $0D
    rlca                                          ; $4E73: $07
    rlca                                          ; $4E74: $07
    inc bc                                        ; $4E75: $03
    inc bc                                        ; $4E76: $03
    nop                                           ; $4E77: $00
    nop                                           ; $4E78: $00
    nop                                           ; $4E79: $00
    nop                                           ; $4E7A: $00
    nop                                           ; $4E7B: $00
    nop                                           ; $4E7C: $00
    nop                                           ; $4E7D: $00
    nop                                           ; $4E7E: $00
    nop                                           ; $4E7F: $00
    reti                                          ; $4E80: $D9


    ld h, b                                       ; $4E81: $60
    ld a, a                                       ; $4E82: $7F
    sbc b                                         ; $4E83: $98
    sbc $6D                                       ; $4E84: $DE $6D
    ld [hl], c                                    ; $4E86: $71
    sbc [hl]                                      ; $4E87: $9E
    rst RST_18                                    ; $4E88: $DF
    ld a, h                                       ; $4E89: $7C
    ld a, e                                       ; $4E8A: $7B
    dec e                                         ; $4E8B: $1D
    rst RST_38                                    ; $4E8C: $FF
    nop                                           ; $4E8D: $00
    rst RST_30                                    ; $4E8E: $F7
    adc b                                         ; $4E8F: $88
    sbc a                                         ; $4E90: $9F
    ld h, e                                       ; $4E91: $63
    sbc e                                         ; $4E92: $9B
    ld h, h                                       ; $4E93: $64
    ei                                            ; $4E94: $FB
    add h                                         ; $4E95: $84
    rst RST_28                                    ; $4E96: $EF
    jp Jump_000_00C7                              ; $4E97: $C3 $C7 $00


    ld bc, $0100                                  ; $4E9A: $01 $00 $01
    nop                                           ; $4E9D: $00
    ld [bc], a                                    ; $4E9E: $02
    ld bc, $F824                                  ; $4E9F: $01 $24 $F8
    ld h, [hl]                                    ; $4EA2: $66
    ld hl, sp-$06                                 ; $4EA3: $F8 $FA
    ld b, h                                       ; $4EA5: $44
    ld c, h                                       ; $4EA6: $4C
    or b                                          ; $4EA7: $B0
    rst RST_38                                    ; $4EA8: $FF
    ld c, b                                       ; $4EA9: $48
    rst RST_38                                    ; $4EAA: $FF
    ld d, $FF                                     ; $4EAB: $16 $FF
    ld d, h                                       ; $4EAD: $54
    cp $01                                        ; $4EAE: $FE $01
    sbc [hl]                                      ; $4EB0: $9E
    ld l, l                                       ; $4EB1: $6D
    ld e, $ED                                     ; $4EB2: $1E $ED
    rra                                           ; $4EB4: $1F
    xor $9F                                       ; $4EB5: $EE $9F
    ld l, [hl]                                    ; $4EB7: $6E
    cp $00                                        ; $4EB8: $FE $00
    inc b                                         ; $4EBA: $04
    ld hl, sp-$08                                 ; $4EBB: $F8 $F8
    ldh a, [$FFF8]                                ; $4EBD: $F0 $F8
    ld b, b                                       ; $4EBF: $40
    ld a, a                                       ; $4EC0: $7F
    inc c                                         ; $4EC1: $0C
    ld e, l                                       ; $4EC2: $5D
    dec sp                                        ; $4EC3: $3B
    ld b, a                                       ; $4EC4: $47
    inc a                                         ; $4EC5: $3C
    ld e, l                                       ; $4EC6: $5D
    ccf                                           ; $4EC7: $3F
    adc a                                         ; $4EC8: $8F
    ld a, h                                       ; $4EC9: $7C
    rst RST_38                                    ; $4ECA: $FF
    db $10                                        ; $4ECB: $10
    ccf                                           ; $4ECC: $3F
    rst RST_08                                    ; $4ECD: $CF
    ld a, h                                       ; $4ECE: $7C
    sbc a                                         ; $4ECF: $9F
    ld a, b                                       ; $4ED0: $78
    sbc a                                         ; $4ED1: $9F
    ld a, a                                       ; $4ED2: $7F
    sbc a                                         ; $4ED3: $9F
    ccf                                           ; $4ED4: $3F
    call z, Call_000_00EC                         ; $4ED5: $CC $EC $00
    nop                                           ; $4ED8: $00
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
    nop                                           ; $4EE6: $00
    nop                                           ; $4EE7: $00
    nop                                           ; $4EE8: $00
    nop                                           ; $4EE9: $00
    ld e, b                                       ; $4EEA: $58
    ldh a, [$FFF0]                                ; $4EEB: $F0 $F0
    nop                                           ; $4EED: $00
    ld e, b                                       ; $4EEE: $58
    ldh a, [$FFF8]                                ; $4EEF: $F0 $F8
    nop                                           ; $4EF1: $00
    inc bc                                        ; $4EF2: $03
    nop                                           ; $4EF3: $00
    db $FC                                        ; $4EF4: $FC
    inc bc                                        ; $4EF5: $03
    ei                                            ; $4EF6: $FB
    rst RST_28                                    ; $4EF7: $EF
    ccf                                           ; $4EF8: $3F
    xor $FF                                       ; $4EF9: $EE $FF
    ldh a, [$FFF0]                                ; $4EFB: $F0 $F0
    add b                                         ; $4EFD: $80
    add b                                         ; $4EFE: $80
    nop                                           ; $4EFF: $00
    nop                                           ; $4F00: $00
    nop                                           ; $4F01: $00
    nop                                           ; $4F02: $00
    nop                                           ; $4F03: $00
    nop                                           ; $4F04: $00
    nop                                           ; $4F05: $00
    nop                                           ; $4F06: $00
    nop                                           ; $4F07: $00
    nop                                           ; $4F08: $00
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
    ret nz                                        ; $4F16: $C0

    nop                                           ; $4F17: $00
    ld b, b                                       ; $4F18: $40
    add b                                         ; $4F19: $80
    ret nz                                        ; $4F1A: $C0

    add b                                         ; $4F1B: $80
    ldh [rLCDC], a                                ; $4F1C: $E0 $40
    ldh [rP1], a                                  ; $4F1E: $E0 $00
    and b                                         ; $4F20: $A0
    ld e, a                                       ; $4F21: $5F
    and b                                         ; $4F22: $A0
    ld e, a                                       ; $4F23: $5F
    ret nc                                        ; $4F24: $D0

    xor a                                         ; $4F25: $AF
    ret nc                                        ; $4F26: $D0

    xor a                                         ; $4F27: $AF
    rst RST_38                                    ; $4F28: $FF
    sub a                                         ; $4F29: $97
    rst RST_38                                    ; $4F2A: $FF
    rla                                           ; $4F2B: $17
    rst RST_38                                    ; $4F2C: $FF
    rla                                           ; $4F2D: $17
    ld a, a                                       ; $4F2E: $7F
    nop                                           ; $4F2F: $00
    inc bc                                        ; $4F30: $03
    nop                                           ; $4F31: $00
    inc b                                         ; $4F32: $04
    inc bc                                        ; $4F33: $03
    add hl, bc                                    ; $4F34: $09
    rlca                                          ; $4F35: $07
    ld [de], a                                    ; $4F36: $12
    rrca                                          ; $4F37: $0F
    rst RST_38                                    ; $4F38: $FF
    nop                                           ; $4F39: $00
    rst RST_38                                    ; $4F3A: $FF
    nop                                           ; $4F3B: $00
    rst RST_38                                    ; $4F3C: $FF
    ccf                                           ; $4F3D: $3F
    jp $FF3C                                      ; $4F3E: $C3 $3C $FF


    dec a                                         ; $4F41: $3D
    rst RST_38                                    ; $4F42: $FF
    nop                                           ; $4F43: $00
    ld a, [hl]                                    ; $4F44: $7E
    ld hl, sp-$08                                 ; $4F45: $F8 $F8
    ld h, b                                       ; $4F47: $60
    ldh [rP1], a                                  ; $4F48: $E0 $00
    nop                                           ; $4F4A: $00
    nop                                           ; $4F4B: $00
    nop                                           ; $4F4C: $00
    nop                                           ; $4F4D: $00
    nop                                           ; $4F4E: $00
    nop                                           ; $4F4F: $00
    nop                                           ; $4F50: $00
    nop                                           ; $4F51: $00
    ld bc, $0600                                  ; $4F52: $01 $00 $06
    ld bc, $071F                                  ; $4F55: $01 $1F $07
    ccf                                           ; $4F58: $3F
    rra                                           ; $4F59: $1F
    ccf                                           ; $4F5A: $3F
    nop                                           ; $4F5B: $00
    nop                                           ; $4F5C: $00
    nop                                           ; $4F5D: $00
    nop                                           ; $4F5E: $00
    nop                                           ; $4F5F: $00
    rlca                                          ; $4F60: $07
    nop                                           ; $4F61: $00
    rrca                                          ; $4F62: $0F
    nop                                           ; $4F63: $00
    rrca                                          ; $4F64: $0F
    inc bc                                        ; $4F65: $03
    dec c                                         ; $4F66: $0D
    ld [bc], a                                    ; $4F67: $02
    rrca                                          ; $4F68: $0F
    inc bc                                        ; $4F69: $03
    rrca                                          ; $4F6A: $0F
    nop                                           ; $4F6B: $00
    inc bc                                        ; $4F6C: $03
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
    ccf                                           ; $4F78: $3F
    nop                                           ; $4F79: $00
    ld l, a                                       ; $4F7A: $6F
    jr nc, jr_022_4FDB                            ; $4F7B: $30 $5E

    inc hl                                        ; $4F7D: $23
    ld a, l                                       ; $4F7E: $7D
    ld [hl-], a                                   ; $4F7F: $32
    ccf                                           ; $4F80: $3F
    inc bc                                        ; $4F81: $03
    inc bc                                        ; $4F82: $03
    nop                                           ; $4F83: $00
    rrca                                          ; $4F84: $0F
    nop                                           ; $4F85: $00
    ld sp, $7F0F                                  ; $4F86: $31 $0F $7F
    ccf                                           ; $4F89: $3F
    ld a, a                                       ; $4F8A: $7F
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
    inc bc                                        ; $4FA0: $03
    nop                                           ; $4FA1: $00
    inc c                                         ; $4FA2: $0C
    inc bc                                        ; $4FA3: $03
    db $10                                        ; $4FA4: $10
    rrca                                          ; $4FA5: $0F
    jr nz, jr_022_4FC7                            ; $4FA6: $20 $1F

    ld b, c                                       ; $4FA8: $41
    ccf                                           ; $4FA9: $3F
    add d                                         ; $4FAA: $82
    ld a, a                                       ; $4FAB: $7F
    dec b                                         ; $4FAC: $05
    rst RST_38                                    ; $4FAD: $FF
    dec bc                                        ; $4FAE: $0B
    cp $17                                        ; $4FAF: $FE $17
    db $FD                                        ; $4FB1: $FD
    cpl                                           ; $4FB2: $2F
    ei                                            ; $4FB3: $FB
    ld e, a                                       ; $4FB4: $5F
    or $BF                                        ; $4FB5: $F6 $BF
    db $ED                                        ; $4FB7: $ED
    ld a, a                                       ; $4FB8: $7F
    ld [$D9FF], a                                 ; $4FB9: $EA $FF $D9
    rst RST_38                                    ; $4FBC: $FF
    db $DD                                        ; $4FBD: $DD
    rst RST_38                                    ; $4FBE: $FF
    dec sp                                        ; $4FBF: $3B
    ld a, a                                       ; $4FC0: $7F
    cp e                                          ; $4FC1: $BB
    rst RST_38                                    ; $4FC2: $FF
    dec sp                                        ; $4FC3: $3B
    rst RST_38                                    ; $4FC4: $FF
    ld b, b                                       ; $4FC5: $40
    rst RST_38                                    ; $4FC6: $FF

jr_022_4FC7:
    ld a, a                                       ; $4FC7: $7F
    rst RST_38                                    ; $4FC8: $FF
    nop                                           ; $4FC9: $00
    rra                                           ; $4FCA: $1F
    ldh [$FF7D], a                                ; $4FCB: $E0 $7D
    add a                                         ; $4FCD: $87
    ld a, [$F50F]                                 ; $4FCE: $FA $0F $F5
    rra                                           ; $4FD1: $1F
    ld [$F51F], a                                 ; $4FD2: $EA $1F $F5
    rra                                           ; $4FD5: $1F
    ld [$F51F], a                                 ; $4FD6: $EA $1F $F5
    rra                                           ; $4FD9: $1F
    ei                                            ; $4FDA: $FB

jr_022_4FDB:
    rrca                                          ; $4FDB: $0F
    rst RST_38                                    ; $4FDC: $FF
    rrca                                          ; $4FDD: $0F
    ld a, a                                       ; $4FDE: $7F
    add a                                         ; $4FDF: $87
    rra                                           ; $4FE0: $1F
    ldh [rSC], a                                  ; $4FE1: $E0 $02
    db $FD                                        ; $4FE3: $FD
    ld bc, $81FE                                  ; $4FE4: $01 $FE $81
    cp $FD                                        ; $4FE7: $FE $FD
    jp nz, Jump_000_04FF                          ; $4FE9: $C2 $FF $04

    rst RST_38                                    ; $4FEC: $FF
    inc bc                                        ; $4FED: $03
    rra                                           ; $4FEE: $1F
    pop af                                        ; $4FEF: $F1
    cpl                                           ; $4FF0: $2F
    ld hl, sp+$5F                                 ; $4FF1: $F8 $5F
    db $FC                                        ; $4FF3: $FC
    ld e, a                                       ; $4FF4: $5F
    db $FC                                        ; $4FF5: $FC
    cp a                                          ; $4FF6: $BF
    db $FC                                        ; $4FF7: $FC
    cp a                                          ; $4FF8: $BF
    db $FC                                        ; $4FF9: $FC
    rst RST_38                                    ; $4FFA: $FF
    inc a                                         ; $4FFB: $3C
    rst RST_38                                    ; $4FFC: $FF
    inc e                                         ; $4FFD: $1C
    ld a, a                                       ; $4FFE: $7F
    adc l                                         ; $4FFF: $8D
    ld a, a                                       ; $5000: $7F
    jp $E3FF                                      ; $5001: $C3 $FF $E3


    rst RST_38                                    ; $5004: $FF
    db $E3                                        ; $5005: $E3
    rst RST_38                                    ; $5006: $FF
    db $E3                                        ; $5007: $E3
    rst RST_38                                    ; $5008: $FF
    db $E4                                        ; $5009: $E4
    rst RST_38                                    ; $500A: $FF
    rst RST_20                                    ; $500B: $E7
    rst RST_38                                    ; $500C: $FF
    rst RST_20                                    ; $500D: $E7
    rst RST_20                                    ; $500E: $E7
    jp $80C3                                      ; $500F: $C3 $C3 $80


    add b                                         ; $5012: $80
    nop                                           ; $5013: $00
    nop                                           ; $5014: $00
    nop                                           ; $5015: $00
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
    ld bc, $0100                                  ; $5020: $01 $00 $01
    nop                                           ; $5023: $00
    inc bc                                        ; $5024: $03
    ld bc, $0102                                  ; $5025: $01 $02 $01
    dec b                                         ; $5028: $05
    inc bc                                        ; $5029: $03
    ld b, $03                                     ; $502A: $06 $03
    dec c                                         ; $502C: $0D
    rlca                                          ; $502D: $07
    ld a, [bc]                                    ; $502E: $0A
    rlca                                          ; $502F: $07
    rra                                           ; $5030: $1F
    rrca                                          ; $5031: $0F
    rra                                           ; $5032: $1F
    rrca                                          ; $5033: $0F
    ccf                                           ; $5034: $3F
    inc e                                         ; $5035: $1C
    ld a, h                                       ; $5036: $7C
    inc bc                                        ; $5037: $03
    ld b, e                                       ; $5038: $43
    inc a                                         ; $5039: $3C
    ccf                                           ; $503A: $3F
    nop                                           ; $503B: $00
    inc a                                         ; $503C: $3C
    inc bc                                        ; $503D: $03
    jr nz, jr_022_505F                            ; $503E: $20 $1F

    ld b, b                                       ; $5040: $40
    ccf                                           ; $5041: $3F
    add b                                         ; $5042: $80
    ld a, a                                       ; $5043: $7F
    ld bc, $01FE                                  ; $5044: $01 $FE $01
    cp $01                                        ; $5047: $FE $01
    cp $81                                        ; $5049: $FE $81
    ld a, [hl]                                    ; $504B: $7E
    add c                                         ; $504C: $81
    ld a, [hl]                                    ; $504D: $7E
    rst RST_38                                    ; $504E: $FF
    nop                                           ; $504F: $00
    ldh a, [rIF]                                  ; $5050: $F0 $0F
    nop                                           ; $5052: $00
    rst RST_38                                    ; $5053: $FF
    nop                                           ; $5054: $00
    rst RST_38                                    ; $5055: $FF
    nop                                           ; $5056: $00
    rst RST_38                                    ; $5057: $FF
    nop                                           ; $5058: $00
    rst RST_38                                    ; $5059: $FF
    rst RST_38                                    ; $505A: $FF
    rst RST_38                                    ; $505B: $FF
    rst RST_38                                    ; $505C: $FF
    db $E4                                        ; $505D: $E4
    rst RST_38                                    ; $505E: $FF

jr_022_505F:
    db $ED                                        ; $505F: $ED
    rst RST_38                                    ; $5060: $FF
    ld a, $FF                                     ; $5061: $3E $FF
    inc b                                         ; $5063: $04
    cp $81                                        ; $5064: $FE $81
    ld a, [hl]                                    ; $5066: $7E
    pop bc                                        ; $5067: $C1
    db $FC                                        ; $5068: $FC
    jp Jump_000_03FC                              ; $5069: $C3 $FC $03


    db $FC                                        ; $506C: $FC
    inc bc                                        ; $506D: $03
    rst RST_38                                    ; $506E: $FF
    ldh a, [rIE]                                  ; $506F: $F0 $FF
    nop                                           ; $5071: $00
    ld sp, hl                                     ; $5072: $F9
    rst RST_30                                    ; $5073: $F7
    ld sp, hl                                     ; $5074: $F9
    rlca                                          ; $5075: $07
    ld [hl], d                                    ; $5076: $72
    rrca                                          ; $5077: $0F
    ld [de], a                                    ; $5078: $12
    rrca                                          ; $5079: $0F
    dec d                                         ; $507A: $15
    rrca                                          ; $507B: $0F
    dec a                                         ; $507C: $3D
    inc bc                                        ; $507D: $03
    ccf                                           ; $507E: $3F
    ld bc, $384F                                  ; $507F: $01 $4F $38
    sub a                                         ; $5082: $97
    ld a, h                                       ; $5083: $7C
    rst RST_28                                    ; $5084: $EF
    inc a                                         ; $5085: $3C
    ld a, a                                       ; $5086: $7F
    sbc h                                         ; $5087: $9C
    cp $D8                                        ; $5088: $FE $D8
    ld hl, sp-$40                                 ; $508A: $F8 $C0
    ret nz                                        ; $508C: $C0

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
    nop                                           ; $509C: $00
    nop                                           ; $509D: $00
    nop                                           ; $509E: $00
    nop                                           ; $509F: $00
    nop                                           ; $50A0: $00
    nop                                           ; $50A1: $00
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
    nop                                           ; $50AC: $00
    nop                                           ; $50AD: $00
    nop                                           ; $50AE: $00
    nop                                           ; $50AF: $00
    nop                                           ; $50B0: $00
    nop                                           ; $50B1: $00
    ld bc, $0200                                  ; $50B2: $01 $00 $02
    ld bc, $0007                                  ; $50B5: $01 $07 $00
    add hl, bc                                    ; $50B8: $09
    ld b, $10                                     ; $50B9: $06 $10
    rrca                                          ; $50BB: $0F
    ld h, b                                       ; $50BC: $60
    rra                                           ; $50BD: $1F
    and b                                         ; $50BE: $A0
    ld e, a                                       ; $50BF: $5F
    and b                                         ; $50C0: $A0
    ld e, a                                       ; $50C1: $5F
    and b                                         ; $50C2: $A0
    ld e, a                                       ; $50C3: $5F
    ret nc                                        ; $50C4: $D0

    xor a                                         ; $50C5: $AF
    ret nc                                        ; $50C6: $D0

    xor a                                         ; $50C7: $AF
    rst RST_38                                    ; $50C8: $FF
    sub a                                         ; $50C9: $97
    rst RST_38                                    ; $50CA: $FF
    rla                                           ; $50CB: $17
    rst RST_38                                    ; $50CC: $FF
    rla                                           ; $50CD: $17
    rst RST_38                                    ; $50CE: $FF
    nop                                           ; $50CF: $00
    jp $E480                                      ; $50D0: $C3 $80 $E4


    jp $C7E9                                      ; $50D3: $C3 $E9 $C7


    ldh a, [c]                                    ; $50D6: $F2
    rst RST_28                                    ; $50D7: $EF
    rst RST_38                                    ; $50D8: $FF
    ldh [rIE], a                                  ; $50D9: $E0 $FF
    ldh [rIE], a                                  ; $50DB: $E0 $FF
    rst RST_28                                    ; $50DD: $EF
    db $E3                                        ; $50DE: $E3
    call c, $DDFF                                 ; $50DF: $DC $FF $DD
    rst RST_38                                    ; $50E2: $FF
    add b                                         ; $50E3: $80
    cp $78                                        ; $50E4: $FE $78
    ld hl, sp+$60                                 ; $50E6: $F8 $60
    ldh [rP1], a                                  ; $50E8: $E0 $00
    nop                                           ; $50EA: $00
    nop                                           ; $50EB: $00
    nop                                           ; $50EC: $00
    nop                                           ; $50ED: $00
    nop                                           ; $50EE: $00
    nop                                           ; $50EF: $00
    nop                                           ; $50F0: $00
    nop                                           ; $50F1: $00
    ld bc, $0600                                  ; $50F2: $01 $00 $06
    ld bc, $071F                                  ; $50F5: $01 $1F $07
    ccf                                           ; $50F8: $3F
    rra                                           ; $50F9: $1F
    ccf                                           ; $50FA: $3F
    nop                                           ; $50FB: $00
    nop                                           ; $50FC: $00
    nop                                           ; $50FD: $00
    nop                                           ; $50FE: $00
    nop                                           ; $50FF: $00
    rlca                                          ; $5100: $07
    nop                                           ; $5101: $00
    ld l, a                                       ; $5102: $6F
    nop                                           ; $5103: $00
    ld e, a                                       ; $5104: $5F
    inc hl                                        ; $5105: $23
    xor l                                         ; $5106: $AD
    ld [de], a                                    ; $5107: $12
    ld h, a                                       ; $5108: $67
    sbc e                                         ; $5109: $9B
    ei                                            ; $510A: $FB
    db $EC                                        ; $510B: $EC
    rst RST_38                                    ; $510C: $FF
    cp $FF                                        ; $510D: $FE $FF
    rst RST_38                                    ; $510F: $FF
    rst RST_38                                    ; $5110: $FF
    rst RST_38                                    ; $5111: $FF
    ld a, a                                       ; $5112: $7F
    rst RST_38                                    ; $5113: $FF
    rst RST_38                                    ; $5114: $FF
    rst RST_38                                    ; $5115: $FF
    rst RST_38                                    ; $5116: $FF
    rst RST_38                                    ; $5117: $FF
    rst RST_38                                    ; $5118: $FF
    rst RST_38                                    ; $5119: $FF
    rst RST_38                                    ; $511A: $FF
    rst RST_38                                    ; $511B: $FF
    rst RST_38                                    ; $511C: $FF
    rst RST_38                                    ; $511D: $FF
    rst RST_38                                    ; $511E: $FF
    rst RST_38                                    ; $511F: $FF
    rst RST_38                                    ; $5120: $FF
    rst RST_38                                    ; $5121: $FF
    rst RST_38                                    ; $5122: $FF
    rst RST_38                                    ; $5123: $FF
    rst RST_28                                    ; $5124: $EF
    rst RST_38                                    ; $5125: $FF
    sbc e                                         ; $5126: $9B
    xor $77                                       ; $5127: $EE $77
    adc l                                         ; $5129: $8D
    rst RST_30                                    ; $512A: $F7
    ld [$1028], sp                                ; $512B: $08 $28 $10
    jr nc, jr_022_5130                            ; $512E: $30 $00

jr_022_5130:
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
    jr jr_022_5142                                ; $5140: $18 $00

jr_022_5142:
    ld d, $08                                     ; $5142: $16 $08
    add hl, bc                                    ; $5144: $09
    ld b, $0A                                     ; $5145: $06 $0A
    rlca                                          ; $5147: $07
    dec b                                         ; $5148: $05
    inc bc                                        ; $5149: $03
    dec b                                         ; $514A: $05
    inc bc                                        ; $514B: $03
    ld b, $01                                     ; $514C: $06 $01
    jr c, jr_022_5157                             ; $514E: $38 $07

    ret nz                                        ; $5150: $C0

    ccf                                           ; $5151: $3F
    rlca                                          ; $5152: $07
    rst RST_38                                    ; $5153: $FF
    ld a, a                                       ; $5154: $7F
    rst RST_38                                    ; $5155: $FF
    rra                                           ; $5156: $1F

jr_022_5157:
    rst RST_38                                    ; $5157: $FF
    ld a, a                                       ; $5158: $7F
    rst RST_38                                    ; $5159: $FF
    rst RST_00                                    ; $515A: $C7
    ccf                                           ; $515B: $3F
    ccf                                           ; $515C: $3F
    rst RST_38                                    ; $515D: $FF
    adc a                                         ; $515E: $8F
    ld a, a                                       ; $515F: $7F
    ld [hl], b                                    ; $5160: $70
    rrca                                          ; $5161: $0F
    ld c, $01                                     ; $5162: $0E $01
    dec b                                         ; $5164: $05
    inc bc                                        ; $5165: $03
    inc b                                         ; $5166: $04
    inc bc                                        ; $5167: $03
    add hl, bc                                    ; $5168: $09
    ld b, $16                                     ; $5169: $06 $16
    ld [$0018], sp                                ; $516B: $08 $18 $00
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
    ld [$0707], sp                                ; $5182: $08 $07 $07
    nop                                           ; $5185: $00
    inc a                                         ; $5186: $3C
    inc bc                                        ; $5187: $03
    ld b, b                                       ; $5188: $40
    ccf                                           ; $5189: $3F
    ld a, a                                       ; $518A: $7F
    nop                                           ; $518B: $00
    inc b                                         ; $518C: $04
    inc bc                                        ; $518D: $03
    rlca                                          ; $518E: $07
    nop                                           ; $518F: $00
    nop                                           ; $5190: $00
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
    and b                                         ; $51A0: $A0
    ld e, a                                       ; $51A1: $5F
    and b                                         ; $51A2: $A0
    ld e, a                                       ; $51A3: $5F
    ret nc                                        ; $51A4: $D0

    xor a                                         ; $51A5: $AF
    ret nc                                        ; $51A6: $D0

    xor a                                         ; $51A7: $AF
    rst RST_38                                    ; $51A8: $FF
    sub a                                         ; $51A9: $97
    rst RST_38                                    ; $51AA: $FF
    rla                                           ; $51AB: $17
    rst RST_38                                    ; $51AC: $FF
    rla                                           ; $51AD: $17
    ld a, a                                       ; $51AE: $7F
    nop                                           ; $51AF: $00
    add e                                         ; $51B0: $83
    nop                                           ; $51B1: $00
    call nz, $E983                                ; $51B2: $C4 $83 $E9
    rst RST_00                                    ; $51B5: $C7
    ldh a, [c]                                    ; $51B6: $F2
    rst RST_08                                    ; $51B7: $CF
    rst RST_38                                    ; $51B8: $FF
    ldh [rIE], a                                  ; $51B9: $E0 $FF
    ldh [rIE], a                                  ; $51BB: $E0 $FF
    rst RST_28                                    ; $51BD: $EF
    db $E3                                        ; $51BE: $E3
    call c, $DDFF                                 ; $51BF: $DC $FF $DD
    rst RST_38                                    ; $51C2: $FF
    add b                                         ; $51C3: $80
    cp $78                                        ; $51C4: $FE $78
    ld hl, sp+$60                                 ; $51C6: $F8 $60
    ldh [rP1], a                                  ; $51C8: $E0 $00
    nop                                           ; $51CA: $00
    nop                                           ; $51CB: $00
    nop                                           ; $51CC: $00
    nop                                           ; $51CD: $00
    nop                                           ; $51CE: $00
    nop                                           ; $51CF: $00
    nop                                           ; $51D0: $00
    nop                                           ; $51D1: $00
    ld bc, $0600                                  ; $51D2: $01 $00 $06
    ld bc, $071F                                  ; $51D5: $01 $1F $07
    ccf                                           ; $51D8: $3F
    rra                                           ; $51D9: $1F
    ccf                                           ; $51DA: $3F
    nop                                           ; $51DB: $00
    nop                                           ; $51DC: $00
    nop                                           ; $51DD: $00
    nop                                           ; $51DE: $00
    nop                                           ; $51DF: $00
    rlca                                          ; $51E0: $07
    nop                                           ; $51E1: $00
    rrca                                          ; $51E2: $0F
    nop                                           ; $51E3: $00
    rrca                                          ; $51E4: $0F
    inc bc                                        ; $51E5: $03
    dec c                                         ; $51E6: $0D
    ld [bc], a                                    ; $51E7: $02
    rrca                                          ; $51E8: $0F
    inc bc                                        ; $51E9: $03
    rrca                                          ; $51EA: $0F
    nop                                           ; $51EB: $00
    rlc h                                         ; $51EC: $CB $04
    scf                                           ; $51EE: $37
    jp nz, $F34F                                  ; $51EF: $C2 $4F $F3

    or a                                          ; $51F2: $B7
    ld a, e                                       ; $51F3: $7B
    cp a                                          ; $51F4: $BF
    ld a, a                                       ; $51F5: $7F
    ld a, a                                       ; $51F6: $7F
    rst RST_38                                    ; $51F7: $FF
    ccf                                           ; $51F8: $3F
    rst RST_38                                    ; $51F9: $FF
    rst RST_38                                    ; $51FA: $FF
    rst RST_38                                    ; $51FB: $FF
    rst RST_38                                    ; $51FC: $FF
    rst RST_38                                    ; $51FD: $FF
    ccf                                           ; $51FE: $3F
    rst RST_38                                    ; $51FF: $FF
    rst RST_28                                    ; $5200: $EF
    rra                                           ; $5201: $1F
    ld c, a                                       ; $5202: $4F
    ccf                                           ; $5203: $3F
    ld d, a                                       ; $5204: $57
    add hl, sp                                    ; $5205: $39
    sbc a                                         ; $5206: $9F
    ld h, d                                       ; $5207: $62
    ld a, a                                       ; $5208: $7F
    sbc c                                         ; $5209: $99
    rst RST_38                                    ; $520A: $FF
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
    nop                                           ; $521C: $00
    nop                                           ; $521D: $00
    nop                                           ; $521E: $00
    nop                                           ; $521F: $00
    inc bc                                        ; $5220: $03
    nop                                           ; $5221: $00
    ld [bc], a                                    ; $5222: $02
    ld bc, $0001                                  ; $5223: $01 $01 $00
    ld bc, $0000                                  ; $5226: $01 $00 $00
    nop                                           ; $5229: $00
    ld bc, $0200                                  ; $522A: $01 $00 $02
    ld bc, $0007                                  ; $522D: $01 $07 $00
    jr c, jr_022_5239                             ; $5230: $38 $07

    ld b, e                                       ; $5232: $43
    ccf                                           ; $5233: $3F
    ld a, a                                       ; $5234: $7F
    nop                                           ; $5235: $00
    nop                                           ; $5236: $00
    nop                                           ; $5237: $00
    nop                                           ; $5238: $00

jr_022_5239:
    nop                                           ; $5239: $00
    nop                                           ; $523A: $00
    nop                                           ; $523B: $00
    nop                                           ; $523C: $00

Jump_022_523D:
    nop                                           ; $523D: $00
    ld bc, $0100                                  ; $523E: $01 $00 $01
    nop                                           ; $5241: $00
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
    nop                                           ; $5280: $00
    nop                                           ; $5281: $00
    nop                                           ; $5282: $00
    nop                                           ; $5283: $00
    ld bc, $0300                                  ; $5284: $01 $00 $03
    ld bc, $0305                                  ; $5287: $01 $05 $03
    dec bc                                        ; $528A: $0B
    rlca                                          ; $528B: $07
    ld a, [bc]                                    ; $528C: $0A
    rlca                                          ; $528D: $07
    dec d                                         ; $528E: $15
    ld c, $12                                     ; $528F: $0E $12
    inc c                                         ; $5291: $0C
    dec h                                         ; $5292: $25
    jr jr_022_52BE                                ; $5293: $18 $29

    db $10                                        ; $5295: $10
    ld d, e                                       ; $5296: $53
    ld hl, $0163                                  ; $5297: $21 $63 $01
    ld b, l                                       ; $529A: $45
    inc bc                                        ; $529B: $03
    dec b                                         ; $529C: $05
    inc bc                                        ; $529D: $03
    dec b                                         ; $529E: $05
    inc bc                                        ; $529F: $03
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
    dec a                                         ; $52BA: $3D
    nop                                           ; $52BB: $00
    cp $39                                        ; $52BC: $FE $39

jr_022_52BE:
    db $FC                                        ; $52BE: $FC
    di                                            ; $52BF: $F3
    nop                                           ; $52C0: $00
    nop                                           ; $52C1: $00
    nop                                           ; $52C2: $00
    nop                                           ; $52C3: $00
    nop                                           ; $52C4: $00

jr_022_52C5:
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
    sbc $00                                       ; $52D8: $DE $00
    ccf                                           ; $52DA: $3F
    adc $1F                                       ; $52DB: $CE $1F
    rst RST_20                                    ; $52DD: $E7
    ld l, a                                       ; $52DE: $6F
    di                                            ; $52DF: $F3
    nop                                           ; $52E0: $00
    nop                                           ; $52E1: $00
    add b                                         ; $52E2: $80
    nop                                           ; $52E3: $00
    ret nz                                        ; $52E4: $C0

    add b                                         ; $52E5: $80
    ldh [$FFC0], a                                ; $52E6: $E0 $C0
    ret nc                                        ; $52E8: $D0

    ldh [$FFE8], a                                ; $52E9: $E0 $E8
    ldh a, [$FFA8]                                ; $52EB: $F0 $A8
    ld [hl], b                                    ; $52ED: $70
    call nc, $A438                                ; $52EE: $D4 $38 $A4
    jr jr_022_52C5                                ; $52F1: $18 $D2

    adc h                                         ; $52F3: $8C
    jp z, $E584                                   ; $52F4: $CA $84 $E5

    jp nz, $C0E3                                  ; $52F7: $C2 $E3 $C0

    pop de                                        ; $52FA: $D1
    ldh [$FFD0], a                                ; $52FB: $E0 $D0
    ldh [$FF50], a                                ; $52FD: $E0 $50
    ldh [$FF09], a                                ; $52FF: $E0 $09
    rlca                                          ; $5301: $07
    ld [$0807], sp                                ; $5302: $08 $07 $08
    rlca                                          ; $5305: $07
    ld [$1107], sp                                ; $5306: $08 $07 $11
    ld c, $11                                     ; $5309: $0E $11
    ld c, $12                                     ; $530B: $0E $12
    inc c                                         ; $530D: $0C
    ld [de], a                                    ; $530E: $12
    inc c                                         ; $530F: $0C
    inc d                                         ; $5310: $14
    ld [$0814], sp                                ; $5311: $08 $14 $08
    jr jr_022_5316                                ; $5314: $18 $00

jr_022_5316:
    nop                                           ; $5316: $00
    nop                                           ; $5317: $00
    ld bc, $0100                                  ; $5318: $01 $00 $01
    nop                                           ; $531B: $00
    nop                                           ; $531C: $00
    nop                                           ; $531D: $00
    nop                                           ; $531E: $00
    nop                                           ; $531F: $00
    ei                                            ; $5320: $FB
    rst RST_20                                    ; $5321: $E7
    rst RST_38                                    ; $5322: $FF
    rst RST_08                                    ; $5323: $CF
    rst RST_38                                    ; $5324: $FF
    sbc a                                         ; $5325: $9F
    rst RST_38                                    ; $5326: $FF
    ccf                                           ; $5327: $3F
    rst RST_38                                    ; $5328: $FF
    ld a, a                                       ; $5329: $7F
    rst RST_38                                    ; $532A: $FF
    ld a, a                                       ; $532B: $7F
    rst RST_38                                    ; $532C: $FF
    rst RST_38                                    ; $532D: $FF
    rst RST_38                                    ; $532E: $FF
    rst RST_38                                    ; $532F: $FF
    rst RST_38                                    ; $5330: $FF
    rst RST_38                                    ; $5331: $FF
    rst RST_28                                    ; $5332: $EF
    rst RST_38                                    ; $5333: $FF
    sbc $FF                                       ; $5334: $DE $FF
    sbc [hl]                                      ; $5336: $9E
    rst RST_38                                    ; $5337: $FF
    inc e                                         ; $5338: $1C
    rst RST_38                                    ; $5339: $FF
    inc a                                         ; $533A: $3C
    rst RST_18                                    ; $533B: $DF
    ld e, b                                       ; $533C: $58
    cp a                                          ; $533D: $BF
    reti                                          ; $533E: $D9


    ld a, $7F                                     ; $533F: $3E $7F
    ld sp, hl                                     ; $5341: $F9
    rst RST_38                                    ; $5342: $FF
    db $FC                                        ; $5343: $FC
    rst RST_38                                    ; $5344: $FF
    cp $FF                                        ; $5345: $FE $FF
    rst RST_38                                    ; $5347: $FF
    rst RST_38                                    ; $5348: $FF
    rst RST_38                                    ; $5349: $FF
    rst RST_38                                    ; $534A: $FF
    rst RST_38                                    ; $534B: $FF
    rst RST_38                                    ; $534C: $FF
    rst RST_38                                    ; $534D: $FF
    ei                                            ; $534E: $FB
    rst RST_38                                    ; $534F: $FF
    ld a, l                                       ; $5350: $7D
    rst RST_38                                    ; $5351: $FF
    inc a                                         ; $5352: $3C
    rst RST_38                                    ; $5353: $FF
    inc a                                         ; $5354: $3C
    rst RST_38                                    ; $5355: $FF
    inc e                                         ; $5356: $1C
    rst RST_38                                    ; $5357: $FF
    ld e, $FD                                     ; $5358: $1E $FD
    adc l                                         ; $535A: $8D
    ld a, [hl]                                    ; $535B: $7E
    ld c, l                                       ; $535C: $4D
    cp [hl]                                       ; $535D: $BE
    dec l                                         ; $535E: $2D
    sbc $48                                       ; $535F: $DE $48
    ldh a, [$FF08]                                ; $5361: $F0 $08
    ldh a, [$FF88]                                ; $5363: $F0 $88
    ld [hl], b                                    ; $5365: $70
    adc b                                         ; $5366: $88
    ld [hl], b                                    ; $5367: $70
    ld b, h                                       ; $5368: $44
    jr c, jr_022_53AF                             ; $5369: $38 $44

    jr c, @+$26                                   ; $536B: $38 $24

    jr jr_022_5393                                ; $536D: $18 $24

    jr jr_022_5385                                ; $536F: $18 $14

    ld [$0814], sp                                ; $5371: $08 $14 $08
    adc h                                         ; $5374: $8C
    nop                                           ; $5375: $00
    ld b, b                                       ; $5376: $40
    add b                                         ; $5377: $80
    ld [hl], b                                    ; $5378: $70
    add b                                         ; $5379: $80
    ld d, b                                       ; $537A: $50
    and b                                         ; $537B: $A0
    ld d, b                                       ; $537C: $50
    and b                                         ; $537D: $A0
    and b                                         ; $537E: $A0
    ld b, b                                       ; $537F: $40
    jp c, Jump_022_523D                           ; $5380: $DA $3D $52

    dec a                                         ; $5383: $3D
    ld d, h                                       ; $5384: $54

jr_022_5385:
    dec sp                                        ; $5385: $3B
    ld b, [hl]                                    ; $5386: $46
    add hl, sp                                    ; $5387: $39
    ld c, [hl]                                    ; $5388: $4E
    ld sp, $354A                                  ; $5389: $31 $4A $35
    ld c, [hl]                                    ; $538C: $4E
    ld sp, $2659                                  ; $538D: $31 $59 $26
    call c, Call_022_5A23                         ; $5390: $DC $23 $5A

jr_022_5393:
    and l                                         ; $5393: $A5
    ld e, e                                       ; $5394: $5B
    and h                                         ; $5395: $A4
    db $DB                                        ; $5396: $DB
    inc h                                         ; $5397: $24
    xor e                                         ; $5398: $AB
    ld d, h                                       ; $5399: $54
    ld l, e                                       ; $539A: $6B
    inc d                                         ; $539B: $14
    db $EB                                        ; $539C: $EB
    inc d                                         ; $539D: $14
    xor e                                         ; $539E: $AB
    ld d, h                                       ; $539F: $54
    dec h                                         ; $53A0: $25
    sbc $35                                       ; $53A1: $DE $35
    adc $51                                       ; $53A3: $CE $51
    xor [hl]                                      ; $53A5: $AE
    ld a, c                                       ; $53A6: $79
    add [hl]                                      ; $53A7: $86
    ld c, c                                       ; $53A8: $49
    or [hl]                                       ; $53A9: $B6
    ld a, l                                       ; $53AA: $7D
    add d                                         ; $53AB: $82
    adc l                                         ; $53AC: $8D
    ld [hl], d                                    ; $53AD: $72
    dec a                                         ; $53AE: $3D

jr_022_53AF:
    jp nz, $B24D                                  ; $53AF: $C2 $4D $B2

    swap h                                        ; $53B2: $CB $34
    ret z                                         ; $53B4: $C8

    scf                                           ; $53B5: $37
    ld c, b                                       ; $53B6: $48
    scf                                           ; $53B7: $37
    ld e, b                                       ; $53B8: $58
    daa                                           ; $53B9: $27
    ld e, d                                       ; $53BA: $5A
    daa                                           ; $53BB: $27
    ld e, d                                       ; $53BC: $5A
    daa                                           ; $53BD: $27
    ld e, e                                       ; $53BE: $5B
    ld h, $F0                                     ; $53BF: $26 $F0
    nop                                           ; $53C1: $00
    sub b                                         ; $53C2: $90
    ld h, b                                       ; $53C3: $60
    ldh [rLCDC], a                                ; $53C4: $E0 $40
    ret nz                                        ; $53C6: $C0

    nop                                           ; $53C7: $00
    add b                                         ; $53C8: $80
    nop                                           ; $53C9: $00
    ret nz                                        ; $53CA: $C0

    add b                                         ; $53CB: $80
    add b                                         ; $53CC: $80
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
    ld l, e                                       ; $53E0: $6B
    inc d                                         ; $53E1: $14
    cpl                                           ; $53E2: $2F
    inc d                                         ; $53E3: $14
    dec hl                                        ; $53E4: $2B
    inc d                                         ; $53E5: $14
    ld l, $14                                     ; $53E6: $2E $14
    inc e                                         ; $53E8: $1C
    ld [$081C], sp                                ; $53E9: $08 $1C $08
    inc e                                         ; $53EC: $1C
    ld [$001C], sp                                ; $53ED: $08 $1C $00
    inc e                                         ; $53F0: $1C
    ld [$0C16], sp                                ; $53F1: $08 $16 $0C
    ld e, $04                                     ; $53F4: $1E $04
    ld e, $04                                     ; $53F6: $1E $04
    ld d, $08                                     ; $53F8: $16 $08
    ld c, $04                                     ; $53FA: $0E $04
    ld c, $04                                     ; $53FC: $0E $04
    ld b, $00                                     ; $53FE: $06 $00
    ld e, e                                       ; $5400: $5B
    ld h, $7F                                     ; $5401: $26 $7F
    ld h, $5F                                     ; $5403: $26 $5F
    ld h, $7E                                     ; $5405: $26 $7E
    inc h                                         ; $5407: $24
    ld a, $04                                     ; $5408: $3E $04
    ld c, $04                                     ; $540A: $0E $04
    ld c, $04                                     ; $540C: $0E $04
    ld c, $00                                     ; $540E: $0E $00
    ld d, $0C                                     ; $5410: $16 $0C
    ld d, $0C                                     ; $5412: $16 $0C
    ld l, $1C                                     ; $5414: $2E $1C
    ld l, $14                                     ; $5416: $2E $14
    ld e, $0C                                     ; $5418: $1E $0C
    inc e                                         ; $541A: $1C
    ld [$081C], sp                                ; $541B: $08 $1C $08
    jr jr_022_5420                                ; $541E: $18 $00

jr_022_5420:
    ld [bc], a                                    ; $5420: $02
    nop                                           ; $5421: $00
    dec b                                         ; $5422: $05
    ld [bc], a                                    ; $5423: $02
    ld [$1207], sp                                ; $5424: $08 $07 $12
    rrca                                          ; $5427: $0F
    sub [hl]                                      ; $5428: $96
    rrca                                          ; $5429: $0F
    xor a                                         ; $542A: $AF
    inc d                                         ; $542B: $14
    ld d, h                                       ; $542C: $54
    adc e                                         ; $542D: $8B
    rst RST_38                                    ; $542E: $FF
    inc b                                         ; $542F: $04
    ld a, a                                       ; $5430: $7F
    sub c                                         ; $5431: $91
    ccf                                           ; $5432: $3F
    push bc                                       ; $5433: $C5
    ccf                                           ; $5434: $3F
    ret nz                                        ; $5435: $C0

    add hl, sp                                    ; $5436: $39
    sub $78                                       ; $5437: $D6 $78
    or a                                          ; $5439: $B7
    ld hl, sp+$37                                 ; $543A: $F8 $37
    add hl, sp                                    ; $543C: $39
    ld d, $1F                                     ; $543D: $16 $1F
    nop                                           ; $543F: $00
    inc c                                         ; $5440: $0C
    inc bc                                        ; $5441: $03
    rlca                                          ; $5442: $07
    inc bc                                        ; $5443: $03
    rlca                                          ; $5444: $07
    nop                                           ; $5445: $00
    add hl, bc                                    ; $5446: $09
    ld b, $11                                     ; $5447: $06 $11
    ld c, $31                                     ; $5449: $0E $31
    ld c, $7A                                     ; $544B: $0E $7A
    inc [hl]                                      ; $544D: $34
    db $FC                                        ; $544E: $FC
    ld [hl], b                                    ; $544F: $70
    call z, $FC78                                 ; $5450: $CC $78 $FC
    ld a, b                                       ; $5453: $78
    ret c                                         ; $5454: $D8

    ld [hl], b                                    ; $5455: $70
    ldh a, [$FF60]                                ; $5456: $F0 $60
    ldh [rLCDC], a                                ; $5458: $E0 $40
    ld b, b                                       ; $545A: $40
    add b                                         ; $545B: $80
    ret nz                                        ; $545C: $C0

    add b                                         ; $545D: $80
    ld b, b                                       ; $545E: $40
    add b                                         ; $545F: $80
    rrca                                          ; $5460: $0F
    ld [bc], a                                    ; $5461: $02
    ld a, [de]                                    ; $5462: $1A
    inc c                                         ; $5463: $0C
    ld [hl], $1C                                  ; $5464: $36 $1C
    ld h, d                                       ; $5466: $62
    inc a                                         ; $5467: $3C
    rst RST_38                                    ; $5468: $FF
    ld a, [hl]                                    ; $5469: $7E
    rst RST_38                                    ; $546A: $FF
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
    nop                                           ; $5480: $00
    nop                                           ; $5481: $00
    nop                                           ; $5482: $00
    nop                                           ; $5483: $00
    ret nz                                        ; $5484: $C0

    nop                                           ; $5485: $00
    or b                                          ; $5486: $B0
    ret nz                                        ; $5487: $C0

    db $EC                                        ; $5488: $EC
    jr nc, @-$3F                                  ; $5489: $30 $BF

    call z, $37EE                                 ; $548B: $CC $EE $37
    cp b                                          ; $548E: $B8
    rst RST_08                                    ; $548F: $CF
    xor $3F                                       ; $5490: $EE $3F
    dec a                                         ; $5492: $3D
    ld c, $06                                     ; $5493: $0E $06
    ld bc, $0FE0                                  ; $5495: $01 $E0 $0F
    jp nz, Jump_000_0001                          ; $5498: $C2 $01 $00

    rst RST_38                                    ; $549B: $FF
    adc $01                                       ; $549C: $CE $01
    ld bc, $0700                                  ; $549E: $01 $00 $07
    nop                                           ; $54A1: $00
    ld b, $03                                     ; $54A2: $06 $03
    inc bc                                        ; $54A4: $03
    nop                                           ; $54A5: $00
    rlca                                          ; $54A6: $07
    nop                                           ; $54A7: $00
    ld b, $03                                     ; $54A8: $06 $03
    inc bc                                        ; $54AA: $03
    nop                                           ; $54AB: $00
    ld b, $03                                     ; $54AC: $06 $03
    rlca                                          ; $54AE: $07
    nop                                           ; $54AF: $00
    ldh a, [rP1]                                  ; $54B0: $F0 $00
    db $FC                                        ; $54B2: $FC
    ldh a, [rIE]                                  ; $54B3: $F0 $FF
    db $FC                                        ; $54B5: $FC
    db $FC                                        ; $54B6: $FC
    rst RST_38                                    ; $54B7: $FF
    add b                                         ; $54B8: $80
    rst RST_38                                    ; $54B9: $FF
    rst RST_38                                    ; $54BA: $FF
    ld hl, sp-$08                                 ; $54BB: $F8 $F8
    nop                                           ; $54BD: $00
    nop                                           ; $54BE: $00
    nop                                           ; $54BF: $00
    rra                                           ; $54C0: $1F
    nop                                           ; $54C1: $00
    rst RST_38                                    ; $54C2: $FF
    rra                                           ; $54C3: $1F
    rst RST_38                                    ; $54C4: $FF
    rst RST_38                                    ; $54C5: $FF
    rst RST_38                                    ; $54C6: $FF
    rst RST_38                                    ; $54C7: $FF
    rst RST_38                                    ; $54C8: $FF
    ld a, a                                       ; $54C9: $7F
    ld a, a                                       ; $54CA: $7F
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
    nop                                           ; $54E0: $00
    nop                                           ; $54E1: $00
    nop                                           ; $54E2: $00
    nop                                           ; $54E3: $00
    nop                                           ; $54E4: $00
    nop                                           ; $54E5: $00
    nop                                           ; $54E6: $00
    nop                                           ; $54E7: $00
    nop                                           ; $54E8: $00
    nop                                           ; $54E9: $00
    nop                                           ; $54EA: $00
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
    rlca                                          ; $54F6: $07
    nop                                           ; $54F7: $00
    rst RST_38                                    ; $54F8: $FF
    rlca                                          ; $54F9: $07
    rst RST_38                                    ; $54FA: $FF
    ld a, a                                       ; $54FB: $7F
    rst RST_38                                    ; $54FC: $FF
    add b                                         ; $54FD: $80
    ret nz                                        ; $54FE: $C0

    nop                                           ; $54FF: $00
    rst RST_38                                    ; $5500: $FF
    nop                                           ; $5501: $00
    rst RST_38                                    ; $5502: $FF
    ld a, a                                       ; $5503: $7F
    ld a, a                                       ; $5504: $7F
    rrca                                          ; $5505: $0F
    rrca                                          ; $5506: $0F
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

jr_022_551D:
    nop                                           ; $551D: $00
    nop                                           ; $551E: $00
    nop                                           ; $551F: $00
    ret nz                                        ; $5520: $C0

    nop                                           ; $5521: $00
    ldh [rLCDC], a                                ; $5522: $E0 $40
    ld [hl], b                                    ; $5524: $70
    jr nz, jr_022_559F                            ; $5525: $20 $78

    jr nc, jr_022_5565                            ; $5527: $30 $3C

    jr @+$40                                      ; $5529: $18 $3E

    inc e                                         ; $552B: $1C
    ccf                                           ; $552C: $3F
    ld e, $DF                                     ; $552D: $1E $DF
    rrca                                          ; $552F: $0F
    rst RST_38                                    ; $5530: $FF
    ld c, a                                       ; $5531: $4F
    ld a, a                                       ; $5532: $7F
    cpl                                           ; $5533: $2F
    ld a, a                                       ; $5534: $7F
    scf                                           ; $5535: $37
    ccf                                           ; $5536: $3F
    rra                                           ; $5537: $1F
    ccf                                           ; $5538: $3F
    rra                                           ; $5539: $1F
    rra                                           ; $553A: $1F
    rrca                                          ; $553B: $0F
    rra                                           ; $553C: $1F
    rrca                                          ; $553D: $0F
    rrca                                          ; $553E: $0F
    rlca                                          ; $553F: $07
    ldh [rP1], a                                  ; $5540: $E0 $00
    ret c                                         ; $5542: $D8

    ld h, b                                       ; $5543: $60

jr_022_5544:
    halt                                          ; $5544: $76
    jr jr_022_5544                                ; $5545: $18 $FD

    ld b, $D7                                     ; $5547: $06 $D7
    ld a, c                                       ; $5549: $79
    ld a, l                                       ; $554A: $7D
    ld b, $D7                                     ; $554B: $06 $D7
    ld a, c                                       ; $554D: $79
    db $FD                                        ; $554E: $FD
    rlca                                          ; $554F: $07
    rlca                                          ; $5550: $07
    ld bc, $0001                                  ; $5551: $01 $01 $00
    nop                                           ; $5554: $00
    nop                                           ; $5555: $00
    ret nz                                        ; $5556: $C0

    nop                                           ; $5557: $00
    pop af                                        ; $5558: $F1
    ret nz                                        ; $5559: $C0

    rst RST_38                                    ; $555A: $FF
    ldh a, [$FFEF]                                ; $555B: $F0 $EF
    rst RST_38                                    ; $555D: $FF
    pop af                                        ; $555E: $F1
    rst RST_38                                    ; $555F: $FF
    nop                                           ; $5560: $00
    nop                                           ; $5561: $00
    nop                                           ; $5562: $00
    nop                                           ; $5563: $00
    nop                                           ; $5564: $00

jr_022_5565:
    nop                                           ; $5565: $00
    add b                                         ; $5566: $80
    nop                                           ; $5567: $00
    ldh a, [$FF80]                                ; $5568: $F0 $80
    ret nc                                        ; $556A: $D0

    ldh [rNR11], a                                ; $556B: $E0 $11
    ldh [$FFD1], a                                ; $556D: $E0 $D1
    ldh [$FF88], a                                ; $556F: $E0 $88
    ldh a, [$FFFB]                                ; $5571: $F0 $FB
    ret nz                                        ; $5573: $C0

    rst RST_08                                    ; $5574: $CF
    ld sp, $7887                                  ; $5575: $31 $87 $78
    add a                                         ; $5578: $87
    ld a, e                                       ; $5579: $7B
    ld c, a                                       ; $557A: $4F
    or b                                          ; $557B: $B0
    rst RST_38                                    ; $557C: $FF
    inc bc                                        ; $557D: $03
    db $FC                                        ; $557E: $FC
    rst RST_38                                    ; $557F: $FF
    nop                                           ; $5580: $00
    nop                                           ; $5581: $00
    nop                                           ; $5582: $00
    nop                                           ; $5583: $00
    stop                                          ; $5584: $10 $00
    jr z, jr_022_5598                             ; $5586: $28 $10

    ld b, h                                       ; $5588: $44
    jr c, jr_022_551D                             ; $5589: $38 $92

    ld a, h                                       ; $558B: $7C
    sbc d                                         ; $558C: $9A
    ld a, h                                       ; $558D: $7C
    ld a, l                                       ; $558E: $7D
    adc d                                         ; $558F: $8A
    swap h                                        ; $5590: $CB $34
    rst RST_38                                    ; $5592: $FF
    ld [$A1FE], sp                                ; $5593: $08 $FE $A1
    ld hl, sp-$59                                 ; $5596: $F8 $A7

jr_022_5598:
    ldh [$FF1F], a                                ; $5598: $E0 $1F
    ret nz                                        ; $559A: $C0

    ld a, a                                       ; $559B: $7F
    add c                                         ; $559C: $81
    cp $00                                        ; $559D: $FE $00

jr_022_559F:
    rst RST_38                                    ; $559F: $FF
    nop                                           ; $55A0: $00
    nop                                           ; $55A1: $00
    nop                                           ; $55A2: $00
    nop                                           ; $55A3: $00
    nop                                           ; $55A4: $00
    nop                                           ; $55A5: $00
    inc bc                                        ; $55A6: $03
    nop                                           ; $55A7: $00
    ld c, $03                                     ; $55A8: $0E $03
    ccf                                           ; $55AA: $3F
    nop                                           ; $55AB: $00
    or $2B                                        ; $55AC: $F6 $2B
    db $EB                                        ; $55AE: $EB
    call nc, $B1CE                                ; $55AF: $D4 $CE $B1
    sbc e                                         ; $55B2: $9B
    ld h, [hl]                                    ; $55B3: $66
    rra                                           ; $55B4: $1F
    add sp, $3C                                   ; $55B5: $E8 $3C
    ret nz                                        ; $55B7: $C0

    ld [hl], h                                    ; $55B8: $74
    adc b                                         ; $55B9: $88
    ret z                                         ; $55BA: $C8

    jr nc, jr_022_55D3                            ; $55BB: $30 $16

    add sp, $21                                   ; $55BD: $E8 $21
    sbc $00                                       ; $55BF: $DE $00
    nop                                           ; $55C1: $00
    nop                                           ; $55C2: $00
    nop                                           ; $55C3: $00
    nop                                           ; $55C4: $00
    nop                                           ; $55C5: $00
    nop                                           ; $55C6: $00
    nop                                           ; $55C7: $00
    nop                                           ; $55C8: $00
    nop                                           ; $55C9: $00
    nop                                           ; $55CA: $00
    nop                                           ; $55CB: $00
    nop                                           ; $55CC: $00
    nop                                           ; $55CD: $00
    nop                                           ; $55CE: $00
    nop                                           ; $55CF: $00
    ret nz                                        ; $55D0: $C0

    nop                                           ; $55D1: $00
    ret nz                                        ; $55D2: $C0

jr_022_55D3:
    add b                                         ; $55D3: $80
    add b                                         ; $55D4: $80
    nop                                           ; $55D5: $00
    ret nz                                        ; $55D6: $C0

    nop                                           ; $55D7: $00
    ret nz                                        ; $55D8: $C0

    add b                                         ; $55D9: $80
    add b                                         ; $55DA: $80
    nop                                           ; $55DB: $00
    ret nz                                        ; $55DC: $C0

    add b                                         ; $55DD: $80
    ret nz                                        ; $55DE: $C0

    nop                                           ; $55DF: $00
    rst RST_38                                    ; $55E0: $FF
    rst RST_38                                    ; $55E1: $FF
    rst RST_38                                    ; $55E2: $FF
    rst RST_38                                    ; $55E3: $FF
    rst RST_38                                    ; $55E4: $FF
    rst RST_38                                    ; $55E5: $FF
    rst RST_38                                    ; $55E6: $FF
    rst RST_38                                    ; $55E7: $FF
    rst RST_38                                    ; $55E8: $FF
    ld a, a                                       ; $55E9: $7F
    ld a, a                                       ; $55EA: $7F
    ccf                                           ; $55EB: $3F
    ccf                                           ; $55EC: $3F
    rra                                           ; $55ED: $1F
    rra                                           ; $55EE: $1F
    rrca                                          ; $55EF: $0F
    rrca                                          ; $55F0: $0F
    inc bc                                        ; $55F1: $03
    inc bc                                        ; $55F2: $03
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
    ret nz                                        ; $5600: $C0

    rst RST_38                                    ; $5601: $FF
    rst RST_38                                    ; $5602: $FF
    rst RST_38                                    ; $5603: $FF
    rst RST_38                                    ; $5604: $FF
    rst RST_38                                    ; $5605: $FF
    rst RST_38                                    ; $5606: $FF
    rst RST_38                                    ; $5607: $FF
    rst RST_38                                    ; $5608: $FF
    rst RST_38                                    ; $5609: $FF
    ld hl, sp-$01                                 ; $560A: $F8 $FF
    rst RST_38                                    ; $560C: $FF
    rst RST_38                                    ; $560D: $FF
    rst RST_38                                    ; $560E: $FF
    rst RST_38                                    ; $560F: $FF
    add b                                         ; $5610: $80
    rst RST_38                                    ; $5611: $FF
    ldh [rIE], a                                  ; $5612: $E0 $FF
    cp $1F                                        ; $5614: $FE $1F
    rra                                           ; $5616: $1F
    nop                                           ; $5617: $00
    nop                                           ; $5618: $00
    nop                                           ; $5619: $00
    nop                                           ; $561A: $00
    nop                                           ; $561B: $00
    nop                                           ; $561C: $00
    nop                                           ; $561D: $00
    ld bc, $0400                                  ; $561E: $01 $00 $04
    rst RST_38                                    ; $5621: $FF
    ld hl, sp-$01                                 ; $5622: $F8 $FF
    ldh a, [rIE]                                  ; $5624: $F0 $FF
    ret nz                                        ; $5626: $C0

    rst RST_38                                    ; $5627: $FF
    inc b                                         ; $5628: $04
    rst RST_38                                    ; $5629: $FF
    ld hl, sp-$01                                 ; $562A: $F8 $FF
    ldh [rIE], a                                  ; $562C: $E0 $FF
    inc bc                                        ; $562E: $03
    db $FC                                        ; $562F: $FC
    dec e                                         ; $5630: $1D
    ldh [$FF0D], a                                ; $5631: $E0 $0D
    ldh a, [$FF03]                                ; $5633: $F0 $03
    db $FC                                        ; $5635: $FC
    rst RST_38                                    ; $5636: $FF
    nop                                           ; $5637: $00
    rst RST_38                                    ; $5638: $FF
    ld a, c                                       ; $5639: $79
    db $DB                                        ; $563A: $DB
    ld [hl], c                                    ; $563B: $71
    pop af                                        ; $563C: $F1
    ld h, b                                       ; $563D: $60
    pop hl                                        ; $563E: $E1
    ld b, b                                       ; $563F: $40
    ld a, [bc]                                    ; $5640: $0A
    pop af                                        ; $5641: $F1
    ld de, $39E0                                  ; $5642: $11 $E0 $39
    ret nc                                        ; $5645: $D0

    ld a, a                                       ; $5646: $7F
    add c                                         ; $5647: $81
    rlca                                          ; $5648: $07
    ei                                            ; $5649: $FB
    rra                                           ; $564A: $1F
    ldh [c], a                                    ; $564B: $E2
    ld a, [hl]                                    ; $564C: $7E
    add b                                         ; $564D: $80
    or b                                          ; $564E: $B0
    ld b, b                                       ; $564F: $40
    ld a, b                                       ; $5650: $78
    or b                                          ; $5651: $B0
    ld hl, sp+$70                                 ; $5652: $F8 $70
    ret z                                         ; $5654: $C8

    ldh a, [$FFF0]                                ; $5655: $F0 $F0
    ldh [$FFA0], a                                ; $5657: $E0 $A0
    ret nz                                        ; $5659: $C0

    ldh [$FFC0], a                                ; $565A: $E0 $C0
    ret nc                                        ; $565C: $D0

    add b                                         ; $565D: $80
    add sp, -$70                                  ; $565E: $E8 $90
    inc a                                         ; $5660: $3C
    ret nz                                        ; $5661: $C0

    db $FC                                        ; $5662: $FC
    jr c, @-$10                                   ; $5663: $38 $EE

    ld hl, sp-$62                                 ; $5665: $F8 $9E
    db $F4                                        ; $5667: $F4
    inc a                                         ; $5668: $3C
    add sp, -$08                                  ; $5669: $E8 $F8
    add b                                         ; $566B: $80
    add b                                         ; $566C: $80
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
    nop                                           ; $5677: $00
    nop                                           ; $5678: $00
    nop                                           ; $5679: $00
    nop                                           ; $567A: $00
    nop                                           ; $567B: $00
    nop                                           ; $567C: $00
    nop                                           ; $567D: $00
    nop                                           ; $567E: $00
    nop                                           ; $567F: $00
    ld a, [de]                                    ; $5680: $1A
    inc c                                         ; $5681: $0C
    ld [hl], $1C                                  ; $5682: $36 $1C
    ld h, d                                       ; $5684: $62
    inc a                                         ; $5685: $3C
    rst RST_38                                    ; $5686: $FF
    ld a, [hl]                                    ; $5687: $7E
    rst RST_38                                    ; $5688: $FF
    nop                                           ; $5689: $00
    nop                                           ; $568A: $00
    nop                                           ; $568B: $00
    nop                                           ; $568C: $00
    nop                                           ; $568D: $00
    nop                                           ; $568E: $00
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
    ldh a, [c]                                    ; $56A0: $F2
    ld e, h                                       ; $56A1: $5C
    db $FD                                        ; $56A2: $FD
    ld a, $FF                                     ; $56A3: $3E $FF
    ld a, a                                       ; $56A5: $7F
    rst RST_38                                    ; $56A6: $FF
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
    nop                                           ; $56BE: $00
    nop                                           ; $56BF: $00
    nop                                           ; $56C0: $00
    nop                                           ; $56C1: $00
    nop                                           ; $56C2: $00
    nop                                           ; $56C3: $00
    add b                                         ; $56C4: $80
    nop                                           ; $56C5: $00
    add b                                         ; $56C6: $80
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
    nop                                           ; $56DF: $00
    nop                                           ; $56E0: $00
    nop                                           ; $56E1: $00
    ld bc, $0100                                  ; $56E2: $01 $00 $01
    nop                                           ; $56E5: $00
    ld bc, $0300                                  ; $56E6: $01 $00 $03
    ld bc, $0307                                  ; $56E9: $01 $07 $03
    ld b, $03                                     ; $56EC: $06 $03
    rlca                                          ; $56EE: $07
    inc bc                                        ; $56EF: $03
    ld b, $03                                     ; $56F0: $06 $03
    rlca                                          ; $56F2: $07
    inc bc                                        ; $56F3: $03
    rrca                                          ; $56F4: $0F
    ld [bc], a                                    ; $56F5: $02
    ld a, [de]                                    ; $56F6: $1A
    inc c                                         ; $56F7: $0C

jr_022_56F8:
    ld [hl], $1C                                  ; $56F8: $36 $1C
    ld h, d                                       ; $56FA: $62
    inc a                                         ; $56FB: $3C
    rst RST_38                                    ; $56FC: $FF
    ld a, [hl]                                    ; $56FD: $7E
    rst RST_38                                    ; $56FE: $FF
    nop                                           ; $56FF: $00
    sbc a                                         ; $5700: $9F
    ld l, b                                       ; $5701: $68
    dec e                                         ; $5702: $1D
    ld [$E619], a                                 ; $5703: $EA $19 $E6
    xor e                                         ; $5706: $AB
    ld b, l                                       ; $5707: $45
    rst RST_08                                    ; $5708: $CF
    add e                                         ; $5709: $83
    adc $87                                       ; $570A: $CE $87
    ld a, a                                       ; $570C: $7F
    rst RST_08                                    ; $570D: $CF
    db $FD                                        ; $570E: $FD
    adc $DF                                       ; $570F: $CE $DF
    adc [hl]                                      ; $5711: $8E
    adc [hl]                                      ; $5712: $8E
    inc b                                         ; $5713: $04
    rrca                                          ; $5714: $0F
    inc b                                         ; $5715: $04
    rrca                                          ; $5716: $0F
    dec b                                         ; $5717: $05
    rrca                                          ; $5718: $0F
    inc bc                                        ; $5719: $03
    rrca                                          ; $571A: $0F
    rlca                                          ; $571B: $07
    rrca                                          ; $571C: $0F
    nop                                           ; $571D: $00
    nop                                           ; $571E: $00
    nop                                           ; $571F: $00
    db $FC                                        ; $5720: $FC
    ret nc                                        ; $5721: $D0

    ldh a, [rP1]                                  ; $5722: $F0 $00
    add b                                         ; $5724: $80
    nop                                           ; $5725: $00
    ret nz                                        ; $5726: $C0

    add b                                         ; $5727: $80
    ret nz                                        ; $5728: $C0

    add b                                         ; $5729: $80
    ld b, b                                       ; $572A: $40
    add b                                         ; $572B: $80
    add b                                         ; $572C: $80
    nop                                           ; $572D: $00
    nop                                           ; $572E: $00
    nop                                           ; $572F: $00
    nop                                           ; $5730: $00
    nop                                           ; $5731: $00
    add b                                         ; $5732: $80
    nop                                           ; $5733: $00
    ld b, b                                       ; $5734: $40
    add b                                         ; $5735: $80
    jr nz, jr_022_56F8                            ; $5736: $20 $C0

    ret nc                                        ; $5738: $D0

    ldh [$FFF8], a                                ; $5739: $E0 $F8
    ldh a, [$FFF8]                                ; $573B: $F0 $F8
    nop                                           ; $573D: $00
    nop                                           ; $573E: $00
    nop                                           ; $573F: $00
    sub d                                         ; $5740: $92
    ld a, h                                       ; $5741: $7C
    sbc d                                         ; $5742: $9A
    ld a, h                                       ; $5743: $7C
    ld a, l                                       ; $5744: $7D
    adc d                                         ; $5745: $8A
    swap h                                        ; $5746: $CB $34
    rst RST_38                                    ; $5748: $FF
    ld c, b                                       ; $5749: $48
    rst RST_38                                    ; $574A: $FF
    ld [hl+], a                                   ; $574B: $22
    cp $29                                        ; $574C: $FE $29

jr_022_574E:
    rst RST_38                                    ; $574E: $FF
    nop                                           ; $574F: $00
    rst RST_08                                    ; $5750: $CF
    or [hl]                                       ; $5751: $B6
    add $B9                                       ; $5752: $C6 $B9
    add $B9                                       ; $5754: $C6 $B9
    rst RST_08                                    ; $5756: $CF
    or [hl]                                       ; $5757: $B6
    cp $01                                        ; $5758: $FE $01
    add [hl]                                      ; $575A: $86
    ld a, e                                       ; $575B: $7B
    ld a, a                                       ; $575C: $7F
    dec a                                         ; $575D: $3D
    ld a, a                                       ; $575E: $7F
    dec bc                                        ; $575F: $0B
    dec sp                                        ; $5760: $3B
    inc c                                         ; $5761: $0C
    xor $33                                       ; $5762: $EE $33
    ei                                            ; $5764: $FB
    db $EC                                        ; $5765: $EC
    sbc $F1                                       ; $5766: $DE $F1
    db $DB                                        ; $5768: $DB
    ld h, $2F                                     ; $5769: $26 $2F
    ret c                                         ; $576B: $D8

    jr jr_022_574E                                ; $576C: $18 $E0

    sub b                                         ; $576E: $90
    ld h, b                                       ; $576F: $60
    ld e, b                                       ; $5770: $58
    and b                                         ; $5771: $A0
    ld h, [hl]                                    ; $5772: $66
    sbc b                                         ; $5773: $98
    ld h, c                                       ; $5774: $61
    sbc [hl]                                      ; $5775: $9E
    ld d, a                                       ; $5776: $57
    adc c                                         ; $5777: $89
    adc a                                         ; $5778: $8F
    rlca                                          ; $5779: $07
    call z, Call_022_7987                         ; $577A: $CC $87 $79
    rst RST_08                                    ; $577D: $CF
    ld a, a                                       ; $577E: $7F
    call c, Call_000_00C0                         ; $577F: $DC $C0 $00
    ret nz                                        ; $5782: $C0

    add b                                         ; $5783: $80
    add b                                         ; $5784: $80
    nop                                           ; $5785: $00
    ret nz                                        ; $5786: $C0

    add b                                         ; $5787: $80
    ret nz                                        ; $5788: $C0

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
    ldh [rP1], a                                  ; $5794: $E0 $00
    ldh [$FFC0], a                                ; $5796: $E0 $C0
    ld [hl], b                                    ; $5798: $70
    ret nz                                        ; $5799: $C0

    ldh a, [$FFA0]                                ; $579A: $F0 $A0
    ldh [rLCDC], a                                ; $579C: $E0 $40
    ret nz                                        ; $579E: $C0

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
    stop                                          ; $57BA: $10 $00
    jr z, jr_022_57CE                             ; $57BC: $28 $10

    ld b, h                                       ; $57BE: $44
    jr c, jr_022_57C1                             ; $57BF: $38 $00

jr_022_57C1:
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

jr_022_57CE:
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
    inc bc                                        ; $57DA: $03
    nop                                           ; $57DB: $00
    rrca                                          ; $57DC: $0F
    ld [bc], a                                    ; $57DD: $02
    ld a, [hl-]                                   ; $57DE: $3A
    inc c                                         ; $57DF: $0C
    ld bc, $0300                                  ; $57E0: $01 $00 $03
    ld bc, $0307                                  ; $57E3: $01 $07 $03
    rrca                                          ; $57E6: $0F
    rlca                                          ; $57E7: $07
    rra                                           ; $57E8: $1F
    rrca                                          ; $57E9: $0F
    ccf                                           ; $57EA: $3F
    rla                                           ; $57EB: $17
    ld a, a                                       ; $57EC: $7F
    cpl                                           ; $57ED: $2F
    ld a, a                                       ; $57EE: $7F
    rrca                                          ; $57EF: $0F
    ccf                                           ; $57F0: $3F
    rra                                           ; $57F1: $1F
    ccf                                           ; $57F2: $3F
    rra                                           ; $57F3: $1F
    ld [hl], a                                    ; $57F4: $77
    ccf                                           ; $57F5: $3F
    ld h, a                                       ; $57F6: $67
    ccf                                           ; $57F7: $3F
    ld h, a                                       ; $57F8: $67
    ccf                                           ; $57F9: $3F
    rst RST_00                                    ; $57FA: $C7
    ld a, a                                       ; $57FB: $7F
    add $7F                                       ; $57FC: $C6 $7F
    sub [hl]                                      ; $57FE: $96
    ld l, a                                       ; $57FF: $6F
    inc bc                                        ; $5800: $03
    nop                                           ; $5801: $00
    rrca                                          ; $5802: $0F
    inc bc                                        ; $5803: $03
    ccf                                           ; $5804: $3F
    rrca                                          ; $5805: $0F
    ld a, a                                       ; $5806: $7F
    ccf                                           ; $5807: $3F
    rst RST_38                                    ; $5808: $FF
    ld a, a                                       ; $5809: $7F
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
    cp $FF                                        ; $5815: $FE $FF
    cp $FD                                        ; $5817: $FE $FD
    cp $FD                                        ; $5819: $FE $FD
    cp $FA                                        ; $581B: $FE $FA
    db $FC                                        ; $581D: $FC
    cp d                                          ; $581E: $BA
    db $FC                                        ; $581F: $FC
    ld a, [hl]                                    ; $5820: $7E
    nop                                           ; $5821: $00
    cp $7C                                        ; $5822: $FE $7C
    db $FC                                        ; $5824: $FC
    ld hl, sp-$08                                 ; $5825: $F8 $F8
    ldh a, [$FFF0]                                ; $5827: $F0 $F0
    ldh [$FFE0], a                                ; $5829: $E0 $E0
    ret nz                                        ; $582B: $C0

    ret nz                                        ; $582C: $C0

    add b                                         ; $582D: $80
    ret nz                                        ; $582E: $C0

    add b                                         ; $582F: $80
    add b                                         ; $5830: $80
    nop                                           ; $5831: $00
    add b                                         ; $5832: $80
    nop                                           ; $5833: $00
    add b                                         ; $5834: $80
    nop                                           ; $5835: $00
    nop                                           ; $5836: $00
    nop                                           ; $5837: $00
    nop                                           ; $5838: $00
    nop                                           ; $5839: $00
    nop                                           ; $583A: $00
    nop                                           ; $583B: $00
    nop                                           ; $583C: $00
    nop                                           ; $583D: $00
    nop                                           ; $583E: $00
    nop                                           ; $583F: $00
    or h                                          ; $5840: $B4
    ld c, a                                       ; $5841: $4F
    call nc, $D40F                                ; $5842: $D4 $0F $D4
    rrca                                          ; $5845: $0F
    sub h                                         ; $5846: $94
    rrca                                          ; $5847: $0F
    db $10                                        ; $5848: $10
    rrca                                          ; $5849: $0F
    db $10                                        ; $584A: $10
    rrca                                          ; $584B: $0F
    ld de, $110E                                  ; $584C: $11 $0E $11
    ld c, $12                                     ; $584F: $0E $12
    inc c                                         ; $5851: $0C
    ld [de], a                                    ; $5852: $12
    inc c                                         ; $5853: $0C
    inc d                                         ; $5854: $14
    ld [$0814], sp                                ; $5855: $08 $14 $08
    inc d                                         ; $5858: $14
    ld [$0018], sp                                ; $5859: $08 $18 $00
    jr jr_022_585E                                ; $585C: $18 $00

jr_022_585E:
    nop                                           ; $585E: $00
    nop                                           ; $585F: $00
    cp d                                          ; $5860: $BA
    db $FC                                        ; $5861: $FC
    ld [hl-], a                                   ; $5862: $32
    db $FC                                        ; $5863: $FC
    ld [hl-], a                                   ; $5864: $32
    db $FC                                        ; $5865: $FC
    ld [hl-], a                                   ; $5866: $32
    db $FC                                        ; $5867: $FC
    ld h, $F8                                     ; $5868: $26 $F8
    ld h, $F8                                     ; $586A: $26 $F8
    rlca                                          ; $586C: $07
    ld hl, sp+$07                                 ; $586D: $F8 $07
    ld hl, sp+$4A                                 ; $586F: $F8 $4A
    or h                                          ; $5871: $B4
    ret                                           ; $5872: $C9


    ld [hl], $C8                                  ; $5873: $36 $C8
    scf                                           ; $5875: $37
    ld d, b                                       ; $5876: $50
    cpl                                           ; $5877: $2F
    ld d, b                                       ; $5878: $50
    cpl                                           ; $5879: $2F
    ld e, c                                       ; $587A: $59
    ld h, $67                                     ; $587B: $26 $67
    ld bc, $0307                                  ; $587D: $01 $07 $03
    ret nz                                        ; $5880: $C0

    ld b, b                                       ; $5881: $40
    ld b, b                                       ; $5882: $40
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
    nop                                           ; $589E: $00
    nop                                           ; $589F: $00
    nop                                           ; $58A0: $00
    nop                                           ; $58A1: $00
    nop                                           ; $58A2: $00
    nop                                           ; $58A3: $00
    rrca                                          ; $58A4: $0F
    nop                                           ; $58A5: $00
    rla                                           ; $58A6: $17
    ld c, $2E                                     ; $58A7: $0E $2E
    inc e                                         ; $58A9: $1C
    ld e, h                                       ; $58AA: $5C
    jr c, jr_022_5929                             ; $58AB: $38 $7C

jr_022_58AD:
    jr nc, jr_022_58AD                            ; $58AD: $30 $FE

    ld c, h                                       ; $58AF: $4C
    cp $40                                        ; $58B0: $FE $40
    ldh [$FFC0], a                                ; $58B2: $E0 $C0
    ldh [$FFC0], a                                ; $58B4: $E0 $C0
    ldh [$FFC0], a                                ; $58B6: $E0 $C0
    ret nz                                        ; $58B8: $C0

    add b                                         ; $58B9: $80
    ret nz                                        ; $58BA: $C0

    add b                                         ; $58BB: $80
    ret nz                                        ; $58BC: $C0

    add b                                         ; $58BD: $80
    ret nz                                        ; $58BE: $C0

Jump_022_58BF:
    add b                                         ; $58BF: $80
    ld d, a                                       ; $58C0: $57
    ld c, $E6                                     ; $58C1: $0E $E6
    ld e, h                                       ; $58C3: $5C
    xor $5C                                       ; $58C4: $EE $5C
    xor $DC                                       ; $58C6: $EE $DC
    cp $BC                                        ; $58C8: $FE $BC
    cp $3C                                        ; $58CA: $FE $3C
    cp $9C                                        ; $58CC: $FE $9C
    cp $C0                                        ; $58CE: $FE $C0
    sub e                                         ; $58D0: $93
    db $EC                                        ; $58D1: $EC
    ld [hl], e                                    ; $58D2: $73
    db $EC                                        ; $58D3: $EC
    or [hl]                                       ; $58D4: $B6
    add sp, -$07                                  ; $58D5: $E8 $F9
    ld h, [hl]                                    ; $58D7: $66
    ld [hl], b                                    ; $58D8: $70
    cpl                                           ; $58D9: $2F
    jr nc, jr_022_58EB                            ; $58DA: $30 $0F

    db $10                                        ; $58DC: $10
    rrca                                          ; $58DD: $0F
    add hl, bc                                    ; $58DE: $09
    ld b, $07                                     ; $58DF: $06 $07
    ld bc, $0307                                  ; $58E1: $01 $07 $03
    inc bc                                        ; $58E4: $03
    ld bc, $0001                                  ; $58E5: $01 $01 $00
    nop                                           ; $58E8: $00
    nop                                           ; $58E9: $00
    nop                                           ; $58EA: $00

jr_022_58EB:
    nop                                           ; $58EB: $00
    nop                                           ; $58EC: $00
    nop                                           ; $58ED: $00
    nop                                           ; $58EE: $00
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
    nop                                           ; $590C: $00
    nop                                           ; $590D: $00
    nop                                           ; $590E: $00
    nop                                           ; $590F: $00
    nop                                           ; $5910: $00
    nop                                           ; $5911: $00
    ld bc, $0100                                  ; $5912: $01 $00 $01
    nop                                           ; $5915: $00
    ld [bc], a                                    ; $5916: $02
    ld bc, $0102                                  ; $5917: $01 $02 $01
    ld [bc], a                                    ; $591A: $02
    ld bc, $0305                                  ; $591B: $01 $05 $03
    dec b                                         ; $591E: $05
    inc bc                                        ; $591F: $03
    jr nc, jr_022_5922                            ; $5920: $30 $00

jr_022_5922:
    jr c, @+$12                                   ; $5922: $38 $10

    inc d                                         ; $5924: $14
    ld [$043F], sp                                ; $5925: $08 $3F $04
    dec [hl]                                      ; $5928: $35

jr_022_5929:
    ld a, [de]                                    ; $5929: $1A
    rra                                           ; $592A: $1F
    dec b                                         ; $592B: $05
    dec a                                         ; $592C: $3D
    ld [bc], a                                    ; $592D: $02
    scf                                           ; $592E: $37
    add hl, de                                    ; $592F: $19
    dec e                                         ; $5930: $1D
    ld b, $07                                     ; $5931: $06 $07
    ld bc, $0001                                  ; $5933: $01 $01 $00
    nop                                           ; $5936: $00
    nop                                           ; $5937: $00
    nop                                           ; $5938: $00
    nop                                           ; $5939: $00
    nop                                           ; $593A: $00
    nop                                           ; $593B: $00
    nop                                           ; $593C: $00
    nop                                           ; $593D: $00
    nop                                           ; $593E: $00
    nop                                           ; $593F: $00
    ld a, a                                       ; $5940: $7F
    nop                                           ; $5941: $00
    add b                                         ; $5942: $80
    ld a, a                                       ; $5943: $7F
    add b                                         ; $5944: $80
    ld a, a                                       ; $5945: $7F
    add b                                         ; $5946: $80
    ld a, a                                       ; $5947: $7F
    add b                                         ; $5948: $80
    ld a, a                                       ; $5949: $7F
    add [hl]                                      ; $594A: $86
    ld a, c                                       ; $594B: $79
    add [hl]                                      ; $594C: $86
    ld a, c                                       ; $594D: $79
    add b                                         ; $594E: $80
    ld a, a                                       ; $594F: $7F
    add b                                         ; $5950: $80
    ld a, a                                       ; $5951: $7F
    add b                                         ; $5952: $80
    ld a, a                                       ; $5953: $7F
    add b                                         ; $5954: $80
    ld a, a                                       ; $5955: $7F
    ld h, c                                       ; $5956: $61
    ld e, $11                                     ; $5957: $1E $11
    ld c, $09                                     ; $5959: $0E $09

jr_022_595B:
    ld b, $05                                     ; $595B: $06 $05

jr_022_595D:
    ld [bc], a                                    ; $595D: $02
    inc bc                                        ; $595E: $03
    nop                                           ; $595F: $00
    nop                                           ; $5960: $00
    nop                                           ; $5961: $00
    nop                                           ; $5962: $00
    nop                                           ; $5963: $00
    nop                                           ; $5964: $00
    nop                                           ; $5965: $00
    nop                                           ; $5966: $00
    nop                                           ; $5967: $00
    rst RST_38                                    ; $5968: $FF
    nop                                           ; $5969: $00
    nop                                           ; $596A: $00
    rst RST_38                                    ; $596B: $FF
    nop                                           ; $596C: $00
    rst RST_38                                    ; $596D: $FF
    nop                                           ; $596E: $00
    rst RST_38                                    ; $596F: $FF
    nop                                           ; $5970: $00
    rst RST_38                                    ; $5971: $FF
    jr jr_022_595B                                ; $5972: $18 $E7

    jr jr_022_595D                                ; $5974: $18 $E7

    nop                                           ; $5976: $00
    rst RST_38                                    ; $5977: $FF
    nop                                           ; $5978: $00
    rst RST_38                                    ; $5979: $FF
    nop                                           ; $597A: $00
    rst RST_38                                    ; $597B: $FF
    nop                                           ; $597C: $00
    rst RST_38                                    ; $597D: $FF
    rst RST_38                                    ; $597E: $FF
    nop                                           ; $597F: $00
    nop                                           ; $5980: $00
    nop                                           ; $5981: $00
    nop                                           ; $5982: $00
    nop                                           ; $5983: $00
    nop                                           ; $5984: $00
    nop                                           ; $5985: $00
    nop                                           ; $5986: $00
    nop                                           ; $5987: $00
    rst RST_38                                    ; $5988: $FF
    nop                                           ; $5989: $00
    nop                                           ; $598A: $00
    rst RST_38                                    ; $598B: $FF
    nop                                           ; $598C: $00
    rst RST_38                                    ; $598D: $FF
    nop                                           ; $598E: $00
    rst RST_38                                    ; $598F: $FF
    nop                                           ; $5990: $00
    rst RST_38                                    ; $5991: $FF
    ld h, c                                       ; $5992: $61
    sbc [hl]                                      ; $5993: $9E
    ld h, c                                       ; $5994: $61
    sbc [hl]                                      ; $5995: $9E
    nop                                           ; $5996: $00
    rst RST_38                                    ; $5997: $FF
    nop                                           ; $5998: $00
    rst RST_38                                    ; $5999: $FF
    nop                                           ; $599A: $00
    rst RST_38                                    ; $599B: $FF
    nop                                           ; $599C: $00
    rst RST_38                                    ; $599D: $FF
    rst RST_38                                    ; $599E: $FF
    nop                                           ; $599F: $00
    nop                                           ; $59A0: $00
    nop                                           ; $59A1: $00
    nop                                           ; $59A2: $00
    nop                                           ; $59A3: $00
    nop                                           ; $59A4: $00
    nop                                           ; $59A5: $00
    nop                                           ; $59A6: $00
    nop                                           ; $59A7: $00
    ld hl, sp+$00                                 ; $59A8: $F8 $00
    inc b                                         ; $59AA: $04
    ld hl, sp+$04                                 ; $59AB: $F8 $04
    ld hl, sp+$04                                 ; $59AD: $F8 $04
    ld hl, sp+$04                                 ; $59AF: $F8 $04
    ld hl, sp-$7C                                 ; $59B1: $F8 $84
    ld a, b                                       ; $59B3: $78
    add h                                         ; $59B4: $84
    ld a, b                                       ; $59B5: $78
    inc b                                         ; $59B6: $04
    ld hl, sp+$04                                 ; $59B7: $F8 $04
    ld hl, sp+$04                                 ; $59B9: $F8 $04
    ld hl, sp+$04                                 ; $59BB: $F8 $04
    ld hl, sp-$08                                 ; $59BD: $F8 $F8
    nop                                           ; $59BF: $00
    ld c, $00                                     ; $59C0: $0E $00
    dec c                                         ; $59C2: $0D
    ld b, $07                                     ; $59C3: $06 $07
    ld bc, $000F                                  ; $59C5: $01 $0F $00
    dec c                                         ; $59C8: $0D
    rlca                                          ; $59C9: $07
    rlca                                          ; $59CA: $07
    nop                                           ; $59CB: $00
    dec c                                         ; $59CC: $0D
    rlca                                          ; $59CD: $07
    rrca                                          ; $59CE: $0F
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
    nop                                           ; $59E0: $00
    nop                                           ; $59E1: $00
    add b                                         ; $59E2: $80
    nop                                           ; $59E3: $00
    ld h, b                                       ; $59E4: $60
    add b                                         ; $59E5: $80
    ret c                                         ; $59E6: $D8

    ld h, b                                       ; $59E7: $60
    ld a, a                                       ; $59E8: $7F
    sbc b                                         ; $59E9: $98
    db $DD                                        ; $59EA: $DD
    ld l, [hl]                                    ; $59EB: $6E
    ld [hl], c                                    ; $59EC: $71
    sbc [hl]                                      ; $59ED: $9E
    db $DD                                        ; $59EE: $DD
    ld a, [hl]                                    ; $59EF: $7E
    ld a, b                                       ; $59F0: $78
    rra                                           ; $59F1: $1F
    rra                                           ; $59F2: $1F
    inc c                                         ; $59F3: $0C
    inc c                                         ; $59F4: $0C
    inc bc                                        ; $59F5: $03
    ld [$0807], sp                                ; $59F6: $08 $07 $08
    rlca                                          ; $59F9: $07
    ld [$0407], sp                                ; $59FA: $08 $07 $04
    inc bc                                        ; $59FD: $03
    inc bc                                        ; $59FE: $03
    nop                                           ; $59FF: $00
    nop                                           ; $5A00: $00
    nop                                           ; $5A01: $00
    nop                                           ; $5A02: $00
    nop                                           ; $5A03: $00
    nop                                           ; $5A04: $00

jr_022_5A05:
    nop                                           ; $5A05: $00
    ld [bc], a                                    ; $5A06: $02
    nop                                           ; $5A07: $00
    dec b                                         ; $5A08: $05
    ld [bc], a                                    ; $5A09: $02
    ld [$1207], sp                                ; $5A0A: $08 $07 $12
    rrca                                          ; $5A0D: $0F
    ld d, $0F                                     ; $5A0E: $16 $0F
    cpl                                           ; $5A10: $2F
    inc d                                         ; $5A11: $14
    inc d                                         ; $5A12: $14
    dec bc                                        ; $5A13: $0B
    cp a                                          ; $5A14: $BF
    inc b                                         ; $5A15: $04
    rst RST_38                                    ; $5A16: $FF
    ld de, $65FF                                  ; $5A17: $11 $FF $65
    ld a, a                                       ; $5A1A: $7F
    and b                                         ; $5A1B: $A0
    ld [hl], c                                    ; $5A1C: $71
    xor [hl]                                      ; $5A1D: $AE
    ld [hl], c                                    ; $5A1E: $71
    xor [hl]                                      ; $5A1F: $AE
    nop                                           ; $5A20: $00
    nop                                           ; $5A21: $00
    nop                                           ; $5A22: $00

Call_022_5A23:
    nop                                           ; $5A23: $00
    add b                                         ; $5A24: $80
    nop                                           ; $5A25: $00
    ld b, e                                       ; $5A26: $43
    add b                                         ; $5A27: $80
    ld l, [hl]                                    ; $5A28: $6E
    add e                                         ; $5A29: $83
    or a                                          ; $5A2A: $B7
    ld c, [hl]                                    ; $5A2B: $4E
    pop de                                        ; $5A2C: $D1
    rrca                                          ; $5A2D: $0F
    rst RST_38                                    ; $5A2E: $FF
    add d                                         ; $5A2F: $82
    ldh a, [c]                                    ; $5A30: $F2
    ld l, l                                       ; $5A31: $6D
    rst RST_20                                    ; $5A32: $E7
    ld e, e                                       ; $5A33: $5B
    rst RST_38                                    ; $5A34: $FF
    rlca                                          ; $5A35: $07
    rst RST_38                                    ; $5A36: $FF
    rst RST_00                                    ; $5A37: $C7
    rst RST_38                                    ; $5A38: $FF
    ld d, $FF                                     ; $5A39: $16 $FF
    ldh a, [$FF30]                                ; $5A3B: $F0 $30
    ldh [$FFE8], a                                ; $5A3D: $E0 $E8
    ret nc                                        ; $5A3F: $D0

    nop                                           ; $5A40: $00
    nop                                           ; $5A41: $00
    inc c                                         ; $5A42: $0C
    nop                                           ; $5A43: $00
    inc a                                         ; $5A44: $3C
    ld [$30E8], sp                                ; $5A45: $08 $E8 $30
    cp h                                          ; $5A48: $BC
    ret nz                                        ; $5A49: $C0

    db $EC                                        ; $5A4A: $EC
    jr c, jr_022_5A05                             ; $5A4B: $38 $B8

jr_022_5A4D:
    ret nz                                        ; $5A4D: $C0

    db $EC                                        ; $5A4E: $EC
    jr jr_022_5A4D                                ; $5A4F: $18 $FC

    ld b, b                                       ; $5A51: $40
    ld [hl], b                                    ; $5A52: $70
    add b                                         ; $5A53: $80
    ld [hl], b                                    ; $5A54: $70
    ldh [$FF60], a                                ; $5A55: $E0 $60
    add b                                         ; $5A57: $80
    ldh a, [$FFE0]                                ; $5A58: $F0 $E0
    ldh [rP1], a                                  ; $5A5A: $E0 $00
    sbc [hl]                                      ; $5A5C: $9E
    ld h, b                                       ; $5A5D: $60
    cp $1C                                        ; $5A5E: $FE $1C
    cp a                                          ; $5A60: $BF
    ld b, b                                       ; $5A61: $40
    rra                                           ; $5A62: $1F
    rst RST_28                                    ; $5A63: $EF
    cp h                                          ; $5A64: $BC
    ld e, a                                       ; $5A65: $5F
    ld a, a                                       ; $5A66: $7F
    rra                                           ; $5A67: $1F
    ccf                                           ; $5A68: $3F
    inc e                                         ; $5A69: $1C
    ccf                                           ; $5A6A: $3F
    ld [bc], a                                    ; $5A6B: $02
    rra                                           ; $5A6C: $1F

jr_022_5A6D:
    inc c                                         ; $5A6D: $0C
    dec e                                         ; $5A6E: $1D
    ld [bc], a                                    ; $5A6F: $02
    ld de, $1A0E                                  ; $5A70: $11 $0E $1A
    inc b                                         ; $5A73: $04
    inc a                                         ; $5A74: $3C

jr_022_5A75:
    jr jr_022_5AF3                                ; $5A75: $18 $7C

    jr c, jr_022_5AE0                             ; $5A77: $38 $67

    inc a                                         ; $5A79: $3C

jr_022_5A7A:
    ld a, a                                       ; $5A7A: $7F
    inc a                                         ; $5A7B: $3C
    ld l, l                                       ; $5A7C: $6D
    jr c, jr_022_5AF7                             ; $5A7D: $38 $78

    jr nc, jr_022_5A6D                            ; $5A7F: $30 $EC

    jr c, jr_022_5A7A                             ; $5A81: $38 $F7

    call c, $BDF7                                 ; $5A83: $DC $F7 $BD
    rst RST_38                                    ; $5A86: $FF
    adc l                                         ; $5A87: $8D
    rst RST_18                                    ; $5A88: $DF
    and b                                         ; $5A89: $A0
    sbc b                                         ; $5A8A: $98
    ld h, b                                       ; $5A8B: $60
    cp h                                          ; $5A8C: $BC
    ld e, b                                       ; $5A8D: $58
    db $FC                                        ; $5A8E: $FC
    jr c, jr_022_5A75                             ; $5A8F: $38 $E4

    ld a, b                                       ; $5A91: $78
    ld hl, sp-$10                                 ; $5A92: $F8 $F0
    ret nc                                        ; $5A94: $D0

    ldh [$FFF0], a                                ; $5A95: $E0 $F0
    ldh [$FFE8], a                                ; $5A97: $E0 $E8
    ld b, b                                       ; $5A99: $40
    db $F4                                        ; $5A9A: $F4
    ld c, b                                       ; $5A9B: $48
    ldh a, [c]                                    ; $5A9C: $F2
    ld e, h                                       ; $5A9D: $5C
    db $FD                                        ; $5A9E: $FD
    ld a, $F7                                     ; $5A9F: $3E $F7
    ld a, h                                       ; $5AA1: $7C
    rst RST_08                                    ; $5AA2: $CF
    ld a, d                                       ; $5AA3: $7A
    sbc [hl]                                      ; $5AA4: $9E
    db $F4                                        ; $5AA5: $F4
    db $FC                                        ; $5AA6: $FC
    ret nz                                        ; $5AA7: $C0

    ret nz                                        ; $5AA8: $C0

    nop                                           ; $5AA9: $00
    nop                                           ; $5AAA: $00
    nop                                           ; $5AAB: $00
    nop                                           ; $5AAC: $00
    nop                                           ; $5AAD: $00
    nop                                           ; $5AAE: $00
    nop                                           ; $5AAF: $00
    nop                                           ; $5AB0: $00
    nop                                           ; $5AB1: $00
    nop                                           ; $5AB2: $00
    nop                                           ; $5AB3: $00
    nop                                           ; $5AB4: $00
    nop                                           ; $5AB5: $00
    nop                                           ; $5AB6: $00
    nop                                           ; $5AB7: $00
    nop                                           ; $5AB8: $00
    nop                                           ; $5AB9: $00
    nop                                           ; $5ABA: $00
    nop                                           ; $5ABB: $00
    nop                                           ; $5ABC: $00
    nop                                           ; $5ABD: $00
    nop                                           ; $5ABE: $00
    nop                                           ; $5ABF: $00
    rrca                                          ; $5AC0: $0F
    ld [bc], a                                    ; $5AC1: $02
    ld a, [de]                                    ; $5AC2: $1A
    inc c                                         ; $5AC3: $0C
    ld [hl], $1C                                  ; $5AC4: $36 $1C
    ld h, d                                       ; $5AC6: $62
    inc a                                         ; $5AC7: $3C
    rst RST_38                                    ; $5AC8: $FF
    ld a, [hl]                                    ; $5AC9: $7E
    rst RST_38                                    ; $5ACA: $FF
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

jr_022_5AE0:
    rst RST_38                                    ; $5AE0: $FF
    ld a, a                                       ; $5AE1: $7F
    rst RST_38                                    ; $5AE2: $FF
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

jr_022_5AF3:
    nop                                           ; $5AF3: $00
    nop                                           ; $5AF4: $00
    nop                                           ; $5AF5: $00
    nop                                           ; $5AF6: $00

jr_022_5AF7:
    nop                                           ; $5AF7: $00
    nop                                           ; $5AF8: $00
    nop                                           ; $5AF9: $00
    nop                                           ; $5AFA: $00
    nop                                           ; $5AFB: $00
    nop                                           ; $5AFC: $00
    nop                                           ; $5AFD: $00
    nop                                           ; $5AFE: $00
    nop                                           ; $5AFF: $00
    add b                                         ; $5B00: $80
    nop                                           ; $5B01: $00
    add b                                         ; $5B02: $80
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
    ld a, a                                       ; $5B20: $7F
    nop                                           ; $5B21: $00
    add b                                         ; $5B22: $80
    ld a, a                                       ; $5B23: $7F
    adc b                                         ; $5B24: $88
    ld [hl], a                                    ; $5B25: $77
    adc a                                         ; $5B26: $8F
    ld [hl], b                                    ; $5B27: $70
    sub c                                         ; $5B28: $91
    ld l, [hl]                                    ; $5B29: $6E
    or d                                          ; $5B2A: $B2
    ld c, l                                       ; $5B2B: $4D
    adc d                                         ; $5B2C: $8A
    ld [hl], l                                    ; $5B2D: $75
    add h                                         ; $5B2E: $84
    ld a, e                                       ; $5B2F: $7B
    adc b                                         ; $5B30: $88
    ld [hl], a                                    ; $5B31: $77
    or b                                          ; $5B32: $B0
    ld c, a                                       ; $5B33: $4F
    add b                                         ; $5B34: $80
    ld a, a                                       ; $5B35: $7F
    ld h, c                                       ; $5B36: $61
    ld e, $11                                     ; $5B37: $1E $11
    ld c, $09                                     ; $5B39: $0E $09
    ld b, $05                                     ; $5B3B: $06 $05
    ld [bc], a                                    ; $5B3D: $02
    inc bc                                        ; $5B3E: $03
    nop                                           ; $5B3F: $00
    nop                                           ; $5B40: $00
    nop                                           ; $5B41: $00
    nop                                           ; $5B42: $00
    nop                                           ; $5B43: $00
    nop                                           ; $5B44: $00
    nop                                           ; $5B45: $00
    nop                                           ; $5B46: $00
    nop                                           ; $5B47: $00
    rst RST_38                                    ; $5B48: $FF
    nop                                           ; $5B49: $00
    nop                                           ; $5B4A: $00
    rst RST_38                                    ; $5B4B: $FF
    ret nz                                        ; $5B4C: $C0

    ccf                                           ; $5B4D: $3F
    ld [bc], a                                    ; $5B4E: $02
    db $FD                                        ; $5B4F: $FD
    ld [bc], a                                    ; $5B50: $02
    db $FD                                        ; $5B51: $FD
    inc [hl]                                      ; $5B52: $34
    rrc h                                         ; $5B53: $CB $0C

jr_022_5B55:
    di                                            ; $5B55: $F3
    inc c                                         ; $5B56: $0C

jr_022_5B57:
    di                                            ; $5B57: $F3
    ld [de], a                                    ; $5B58: $12
    db $ED                                        ; $5B59: $ED
    ld h, b                                       ; $5B5A: $60
    sbc a                                         ; $5B5B: $9F
    nop                                           ; $5B5C: $00
    rst RST_38                                    ; $5B5D: $FF
    rst RST_38                                    ; $5B5E: $FF
    nop                                           ; $5B5F: $00
    nop                                           ; $5B60: $00
    nop                                           ; $5B61: $00
    nop                                           ; $5B62: $00
    nop                                           ; $5B63: $00
    nop                                           ; $5B64: $00
    nop                                           ; $5B65: $00
    nop                                           ; $5B66: $00
    nop                                           ; $5B67: $00
    rst RST_38                                    ; $5B68: $FF
    nop                                           ; $5B69: $00
    nop                                           ; $5B6A: $00
    rst RST_38                                    ; $5B6B: $FF
    inc de                                        ; $5B6C: $13
    db $EC                                        ; $5B6D: $EC
    db $10                                        ; $5B6E: $10
    rst RST_28                                    ; $5B6F: $EF
    ld a, b                                       ; $5B70: $78
    add a                                         ; $5B71: $87
    daa                                           ; $5B72: $27
    ret c                                         ; $5B73: $D8

    jr nz, jr_022_5B55                            ; $5B74: $20 $DF

    jr nz, jr_022_5B57                            ; $5B76: $20 $DF

    ld c, b                                       ; $5B78: $48
    or a                                          ; $5B79: $B7
    ld b, a                                       ; $5B7A: $47
    cp b                                          ; $5B7B: $B8
    nop                                           ; $5B7C: $00
    rst RST_38                                    ; $5B7D: $FF
    rst RST_38                                    ; $5B7E: $FF
    nop                                           ; $5B7F: $00
    nop                                           ; $5B80: $00
    nop                                           ; $5B81: $00
    nop                                           ; $5B82: $00
    nop                                           ; $5B83: $00
    nop                                           ; $5B84: $00
    nop                                           ; $5B85: $00
    nop                                           ; $5B86: $00
    nop                                           ; $5B87: $00
    cp $00                                        ; $5B88: $FE $00
    ld bc, $29FE                                  ; $5B8A: $01 $FE $29
    sub $6D                                       ; $5B8D: $D6 $6D
    sub d                                         ; $5B8F: $92
    ld bc, $6DFE                                  ; $5B90: $01 $FE $6D
    sub d                                         ; $5B93: $92
    add hl, hl                                    ; $5B94: $29
    sub $01                                       ; $5B95: $D6 $01
    cp $01                                        ; $5B97: $FE $01
    cp $01                                        ; $5B99: $FE $01
    cp $01                                        ; $5B9B: $FE $01
    cp $FE                                        ; $5B9D: $FE $FE
    nop                                           ; $5B9F: $00
    nop                                           ; $5BA0: $00
    nop                                           ; $5BA1: $00
    ld a, a                                       ; $5BA2: $7F
    nop                                           ; $5BA3: $00
    add b                                         ; $5BA4: $80
    ld a, a                                       ; $5BA5: $7F
    adc b                                         ; $5BA6: $88
    ld [hl], a                                    ; $5BA7: $77
    adc b                                         ; $5BA8: $88
    ld [hl], a                                    ; $5BA9: $77
    cp [hl]                                       ; $5BAA: $BE
    ld b, c                                       ; $5BAB: $41
    adc b                                         ; $5BAC: $88
    ld [hl], a                                    ; $5BAD: $77
    cp a                                          ; $5BAE: $BF
    ld b, b                                       ; $5BAF: $40
    add h                                         ; $5BB0: $84

jr_022_5BB1:
    ld a, e                                       ; $5BB1: $7B
    add h                                         ; $5BB2: $84
    ld a, e                                       ; $5BB3: $7B
    add b                                         ; $5BB4: $80
    ld a, a                                       ; $5BB5: $7F
    ld a, a                                       ; $5BB6: $7F
    nop                                           ; $5BB7: $00
    nop                                           ; $5BB8: $00
    nop                                           ; $5BB9: $00
    nop                                           ; $5BBA: $00
    nop                                           ; $5BBB: $00
    nop                                           ; $5BBC: $00
    nop                                           ; $5BBD: $00
    nop                                           ; $5BBE: $00
    nop                                           ; $5BBF: $00
    nop                                           ; $5BC0: $00
    nop                                           ; $5BC1: $00
    rst RST_38                                    ; $5BC2: $FF
    nop                                           ; $5BC3: $00
    nop                                           ; $5BC4: $00
    rst RST_38                                    ; $5BC5: $FF
    nop                                           ; $5BC6: $00
    rst RST_38                                    ; $5BC7: $FF
    db $FC                                        ; $5BC8: $FC
    inc bc                                        ; $5BC9: $03
    inc b                                         ; $5BCA: $04
    ei                                            ; $5BCB: $FB
    ld a, [bc]                                    ; $5BCC: $0A
    push af                                       ; $5BCD: $F5
    ld d, d                                       ; $5BCE: $52
    xor l                                         ; $5BCF: $AD
    jr nz, jr_022_5BB1                            ; $5BD0: $20 $DF

    ld de, $00EE                                  ; $5BD2: $11 $EE $00
    rst RST_38                                    ; $5BD5: $FF
    rst RST_38                                    ; $5BD6: $FF
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
    rst RST_38                                    ; $5BE2: $FF
    nop                                           ; $5BE3: $00
    nop                                           ; $5BE4: $00
    rst RST_38                                    ; $5BE5: $FF
    ld [bc], a                                    ; $5BE6: $02
    db $FD                                        ; $5BE7: $FD
    inc bc                                        ; $5BE8: $03
    db $FC                                        ; $5BE9: $FC
    inc b                                         ; $5BEA: $04
    ei                                            ; $5BEB: $FB
    xor [hl]                                      ; $5BEC: $AE
    ld d, c                                       ; $5BED: $51
    and c                                         ; $5BEE: $A1
    ld e, [hl]                                    ; $5BEF: $5E
    ld hl, $CEDE                                  ; $5BF0: $21 $DE $CE
    ld sp, $FF00                                  ; $5BF3: $31 $00 $FF
    rst RST_38                                    ; $5BF6: $FF
    nop                                           ; $5BF7: $00
    nop                                           ; $5BF8: $00
    nop                                           ; $5BF9: $00
    nop                                           ; $5BFA: $00
    nop                                           ; $5BFB: $00
    nop                                           ; $5BFC: $00
    nop                                           ; $5BFD: $00
    nop                                           ; $5BFE: $00
    nop                                           ; $5BFF: $00
    nop                                           ; $5C00: $00
    nop                                           ; $5C01: $00
    rst RST_38                                    ; $5C02: $FF
    nop                                           ; $5C03: $00
    nop                                           ; $5C04: $00
    rst RST_38                                    ; $5C05: $FF
    add hl, bc                                    ; $5C06: $09
    or $C9                                        ; $5C07: $F6 $C9
    ld [hl], $4B                                  ; $5C09: $36 $4B
    or h                                          ; $5C0B: $B4
    cp h                                          ; $5C0C: $BC
    ld b, e                                       ; $5C0D: $43
    adc c                                         ; $5C0E: $89
    halt                                          ; $5C0F: $76
    ld [$07F7], sp                                ; $5C10: $08 $F7 $07
    ld hl, sp+$00                                 ; $5C13: $F8 $00
    rst RST_38                                    ; $5C15: $FF
    ld hl, sp+$07                                 ; $5C16: $F8 $07
    ld [$0907], sp                                ; $5C18: $08 $07 $09
    ld b, $0A                                     ; $5C1B: $06 $0A
    inc b                                         ; $5C1D: $04
    inc c                                         ; $5C1E: $0C
    nop                                           ; $5C1F: $00
    nop                                           ; $5C20: $00
    nop                                           ; $5C21: $00
    db $FC                                        ; $5C22: $FC
    nop                                           ; $5C23: $00
    ld [bc], a                                    ; $5C24: $02
    db $FC                                        ; $5C25: $FC
    ld e, d                                       ; $5C26: $5A
    and h                                         ; $5C27: $A4
    ld e, d                                       ; $5C28: $5A
    and h                                         ; $5C29: $A4
    sbc d                                         ; $5C2A: $9A
    ld h, h                                       ; $5C2B: $64
    sbc d                                         ; $5C2C: $9A
    ld h, h                                       ; $5C2D: $64
    ld a, [de]                                    ; $5C2E: $1A
    db $E4                                        ; $5C2F: $E4
    ld [bc], a                                    ; $5C30: $02
    db $FC                                        ; $5C31: $FC
    sbc d                                         ; $5C32: $9A
    ld h, h                                       ; $5C33: $64
    ld [bc], a                                    ; $5C34: $02
    db $FC                                        ; $5C35: $FC
    ld a, h                                       ; $5C36: $7C
    add b                                         ; $5C37: $80
    add b                                         ; $5C38: $80
    nop                                           ; $5C39: $00
    nop                                           ; $5C3A: $00
    nop                                           ; $5C3B: $00
    nop                                           ; $5C3C: $00
    nop                                           ; $5C3D: $00
    nop                                           ; $5C3E: $00
    nop                                           ; $5C3F: $00
    inc bc                                        ; $5C40: $03
    nop                                           ; $5C41: $00
    dec b                                         ; $5C42: $05
    ld [bc], a                                    ; $5C43: $02
    add hl, bc                                    ; $5C44: $09
    ld b, $30                                     ; $5C45: $06 $30
    rrca                                          ; $5C47: $0F
    ld e, c                                       ; $5C48: $59
    ld [hl], $7F                                  ; $5C49: $36 $7F
    jr nc, jr_022_5C8C                            ; $5C4B: $30 $3F

    rrca                                          ; $5C4D: $0F
    daa                                           ; $5C4E: $27
    rra                                           ; $5C4F: $1F
    inc de                                        ; $5C50: $13
    rrca                                          ; $5C51: $0F
    dec bc                                        ; $5C52: $0B
    ld b, $0B                                     ; $5C53: $06 $0B
    ld b, $0F                                     ; $5C55: $06 $0F
    nop                                           ; $5C57: $00
    rra                                           ; $5C58: $1F
    ld c, $7F                                     ; $5C59: $0E $7F
    rrca                                          ; $5C5B: $0F
    adc a                                         ; $5C5C: $8F
    ld [hl], a                                    ; $5C5D: $77
    rst RST_38                                    ; $5C5E: $FF
    nop                                           ; $5C5F: $00
    db $FC                                        ; $5C60: $FC
    nop                                           ; $5C61: $00
    call nz, $C238                                ; $5C62: $C4 $38 $C2
    inc a                                         ; $5C65: $3C
    pop bc                                        ; $5C66: $C1
    ld a, $31                                     ; $5C67: $3E $31
    ld c, $08                                     ; $5C69: $0E $08
    rlca                                          ; $5C6B: $07
    add a                                         ; $5C6C: $87
    nop                                           ; $5C6D: $00
    adc e                                         ; $5C6E: $8B
    ld b, $8F                                     ; $5C6F: $06 $8F
    ld b, $06                                     ; $5C71: $06 $06
    nop                                           ; $5C73: $00
    nop                                           ; $5C74: $00
    nop                                           ; $5C75: $00
    nop                                           ; $5C76: $00
    nop                                           ; $5C77: $00
    nop                                           ; $5C78: $00
    nop                                           ; $5C79: $00
    add b                                         ; $5C7A: $80
    nop                                           ; $5C7B: $00
    add b                                         ; $5C7C: $80
    nop                                           ; $5C7D: $00
    add b                                         ; $5C7E: $80
    nop                                           ; $5C7F: $00
    ld hl, sp+$00                                 ; $5C80: $F8 $00
    nop                                           ; $5C82: $00
    nop                                           ; $5C83: $00
    nop                                           ; $5C84: $00
    nop                                           ; $5C85: $00
    nop                                           ; $5C86: $00
    nop                                           ; $5C87: $00
    ldh [rP1], a                                  ; $5C88: $E0 $00
    ld hl, sp+$60                                 ; $5C8A: $F8 $60

jr_022_5C8C:
    db $FC                                        ; $5C8C: $FC
    ld hl, sp-$04                                 ; $5C8D: $F8 $FC
    ld hl, sp+$1E                                 ; $5C8F: $F8 $1E
    db $FC                                        ; $5C91: $FC
    rst RST_20                                    ; $5C92: $E7
    ld e, $1B                                     ; $5C93: $1E $1B
    dec b                                         ; $5C95: $05
    rlca                                          ; $5C96: $07
    inc bc                                        ; $5C97: $03
    inc bc                                        ; $5C98: $03
    ld bc, $0007                                  ; $5C99: $01 $07 $00
    ld [$0F07], sp                                ; $5C9C: $08 $07 $0F
    nop                                           ; $5C9F: $00
    ldh [rP1], a                                  ; $5CA0: $E0 $00
    ldh [$FFC0], a                                ; $5CA2: $E0 $C0
    ldh [$FFC0], a                                ; $5CA4: $E0 $C0
    ldh [$FFC0], a                                ; $5CA6: $E0 $C0
    ldh [rLCDC], a                                ; $5CA8: $E0 $40
    ld h, b                                       ; $5CAA: $60
    add b                                         ; $5CAB: $80
    ldh [rP1], a                                  ; $5CAC: $E0 $00
    nop                                           ; $5CAE: $00
    nop                                           ; $5CAF: $00
    nop                                           ; $5CB0: $00
    nop                                           ; $5CB1: $00
    nop                                           ; $5CB2: $00
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
    nop                                           ; $5CC0: $00
    nop                                           ; $5CC1: $00
    nop                                           ; $5CC2: $00
    nop                                           ; $5CC3: $00
    dec b                                         ; $5CC4: $05
    nop                                           ; $5CC5: $00
    rlca                                          ; $5CC6: $07
    nop                                           ; $5CC7: $00
    dec bc                                        ; $5CC8: $0B
    dec b                                         ; $5CC9: $05
    dec bc                                        ; $5CCA: $0B
    dec b                                         ; $5CCB: $05
    ld sp, $C00E                                  ; $5CCC: $31 $0E $C0
    ccf                                           ; $5CCF: $3F
    ld sp, $0B0E                                  ; $5CD0: $31 $0E $0B
    dec b                                         ; $5CD3: $05
    dec bc                                        ; $5CD4: $0B
    inc b                                         ; $5CD5: $04
    dec b                                         ; $5CD6: $05
    ld [bc], a                                    ; $5CD7: $02
    dec b                                         ; $5CD8: $05
    ld [bc], a                                    ; $5CD9: $02
    dec bc                                        ; $5CDA: $0B
    inc b                                         ; $5CDB: $04
    dec bc                                        ; $5CDC: $0B
    inc b                                         ; $5CDD: $04
    inc b                                         ; $5CDE: $04
    nop                                           ; $5CDF: $00
    nop                                           ; $5CE0: $00
    nop                                           ; $5CE1: $00
    ld hl, sp+$00                                 ; $5CE2: $F8 $00
    or h                                          ; $5CE4: $B4
    ret c                                         ; $5CE5: $D8

    db $FC                                        ; $5CE6: $FC
    ld [$F0EC], sp                                ; $5CE7: $08 $EC $F0
    xor $F4                                       ; $5CEA: $EE $F4
    xor $34                                       ; $5CEC: $EE $34
    ld l, h                                       ; $5CEE: $6C
    sub b                                         ; $5CEF: $90
    ldh a, [rP1]                                  ; $5CF0: $F0 $00
    add sp, -$10                                  ; $5CF2: $E8 $F0
    jp hl                                         ; $5CF4: $E9


    ld [hl], b                                    ; $5CF5: $70
    ld l, a                                       ; $5CF6: $6F
    or b                                          ; $5CF7: $B0

Call_022_5CF8:
    ld l, c                                       ; $5CF8: $69
    or [hl]                                       ; $5CF9: $B6
    ld [hl], b                                    ; $5CFA: $70
    xor a                                         ; $5CFB: $AF
    ld h, b                                       ; $5CFC: $60
    sbc a                                         ; $5CFD: $9F
    rst RST_18                                    ; $5CFE: $DF
    nop                                           ; $5CFF: $00
    ld bc, $3200                                  ; $5D00: $01 $00 $32
    ld bc, $132C                                  ; $5D03: $01 $2C $13
    dec l                                         ; $5D06: $2D
    ld [de], a                                    ; $5D07: $12
    scf                                           ; $5D08: $37
    ld a, [de]                                    ; $5D09: $1A
    ld e, $09                                     ; $5D0A: $1E $09
    ld hl, sp+$07                                 ; $5D0C: $F8 $07
    ld [$08F7], sp                                ; $5D0E: $08 $F7 $08
    rst RST_30                                    ; $5D11: $F7
    ld [$88F7], sp                                ; $5D12: $08 $F7 $88
    ld [hl], a                                    ; $5D15: $77
    ld c, b                                       ; $5D16: $48
    or a                                          ; $5D17: $B7
    cp h                                          ; $5D18: $BC
    inc bc                                        ; $5D19: $03
    inc bc                                        ; $5D1A: $03
    nop                                           ; $5D1B: $00
    ld bc, $0000                                  ; $5D1C: $01 $00 $00
    nop                                           ; $5D1F: $00
    ld b, b                                       ; $5D20: $40
    nop                                           ; $5D21: $00
    and e                                         ; $5D22: $A3
    ld b, b                                       ; $5D23: $40
    push af                                       ; $5D24: $F5
    ld [bc], a                                    ; $5D25: $02
    ei                                            ; $5D26: $FB
    or $FE                                        ; $5D27: $F6 $FE
    inc c                                         ; $5D29: $0C
    inc c                                         ; $5D2A: $0C
    ldh a, [$FF03]                                ; $5D2B: $F0 $03
    db $FC                                        ; $5D2D: $FC
    ld [bc], a                                    ; $5D2E: $02
    db $FD                                        ; $5D2F: $FD
    ld [bc], a                                    ; $5D30: $02
    db $FD                                        ; $5D31: $FD
    ld bc, $01FE                                  ; $5D32: $01 $FE $01
    cp $01                                        ; $5D35: $FE $01
    cp $3A                                        ; $5D37: $FE $3A
    call nz, Call_000_38C6                        ; $5D39: $C4 $C6 $38
    ld [bc], a                                    ; $5D3C: $02
    db $FC                                        ; $5D3D: $FC
    rst RST_38                                    ; $5D3E: $FF
    nop                                           ; $5D3F: $00
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
    db $FC                                        ; $5D4A: $FC
    nop                                           ; $5D4B: $00
    ld [bc], a                                    ; $5D4C: $02
    db $FC                                        ; $5D4D: $FC
    ld e, $E0                                     ; $5D4E: $1E $E0
    ld a, [hl]                                    ; $5D50: $7E
    add b                                         ; $5D51: $80
    sbc h                                         ; $5D52: $9C
    ld h, b                                       ; $5D53: $60
    ld [$0CF0], sp                                ; $5D54: $08 $F0 $0C
    ldh a, [$FF8F]                                ; $5D57: $F0 $8F
    ld [hl], h                                    ; $5D59: $74
    rst RST_38                                    ; $5D5A: $FF
    inc c                                         ; $5D5B: $0C
    rst RST_38                                    ; $5D5C: $FF
    ld a, h                                       ; $5D5D: $7C
    ld a, a                                       ; $5D5E: $7F
    nop                                           ; $5D5F: $00
    inc bc                                        ; $5D60: $03
    nop                                           ; $5D61: $00
    dec b                                         ; $5D62: $05
    ld [bc], a                                    ; $5D63: $02
    add hl, bc                                    ; $5D64: $09
    ld b, $30                                     ; $5D65: $06 $30
    rrca                                          ; $5D67: $0F
    ld e, c                                       ; $5D68: $59
    ld [hl], $7F                                  ; $5D69: $36 $7F
    jr nc, jr_022_5DAC                            ; $5D6B: $30 $3F

    rrca                                          ; $5D6D: $0F
    daa                                           ; $5D6E: $27
    rra                                           ; $5D6F: $1F
    inc de                                        ; $5D70: $13
    rrca                                          ; $5D71: $0F
    dec bc                                        ; $5D72: $0B
    ld b, $0B                                     ; $5D73: $06 $0B
    ld b, $0F                                     ; $5D75: $06 $0F
    nop                                           ; $5D77: $00
    rra                                           ; $5D78: $1F
    ld c, $7F                                     ; $5D79: $0E $7F
    rrca                                          ; $5D7B: $0F
    adc a                                         ; $5D7C: $8F
    ld [hl], a                                    ; $5D7D: $77
    rst RST_38                                    ; $5D7E: $FF
    nop                                           ; $5D7F: $00
    db $FC                                        ; $5D80: $FC
    nop                                           ; $5D81: $00
    call nz, $C238                                ; $5D82: $C4 $38 $C2
    inc a                                         ; $5D85: $3C
    pop bc                                        ; $5D86: $C1
    ld a, $31                                     ; $5D87: $3E $31
    ld c, $08                                     ; $5D89: $0E $08
    rlca                                          ; $5D8B: $07
    add a                                         ; $5D8C: $87
    nop                                           ; $5D8D: $00
    adc e                                         ; $5D8E: $8B
    ld b, $8F                                     ; $5D8F: $06 $8F
    ld b, $06                                     ; $5D91: $06 $06
    nop                                           ; $5D93: $00
    nop                                           ; $5D94: $00
    nop                                           ; $5D95: $00
    nop                                           ; $5D96: $00
    nop                                           ; $5D97: $00
    nop                                           ; $5D98: $00
    nop                                           ; $5D99: $00
    add b                                         ; $5D9A: $80
    nop                                           ; $5D9B: $00
    add b                                         ; $5D9C: $80
    nop                                           ; $5D9D: $00
    add b                                         ; $5D9E: $80
    nop                                           ; $5D9F: $00
    ld hl, sp+$00                                 ; $5DA0: $F8 $00
    nop                                           ; $5DA2: $00
    nop                                           ; $5DA3: $00
    nop                                           ; $5DA4: $00
    nop                                           ; $5DA5: $00
    nop                                           ; $5DA6: $00
    nop                                           ; $5DA7: $00
    ldh [rP1], a                                  ; $5DA8: $E0 $00
    ld hl, sp+$60                                 ; $5DAA: $F8 $60

jr_022_5DAC:
    db $FC                                        ; $5DAC: $FC
    ld hl, sp-$04                                 ; $5DAD: $F8 $FC
    ld hl, sp+$1E                                 ; $5DAF: $F8 $1E
    db $FC                                        ; $5DB1: $FC
    rst RST_20                                    ; $5DB2: $E7
    ld e, $1B                                     ; $5DB3: $1E $1B
    dec b                                         ; $5DB5: $05
    rlca                                          ; $5DB6: $07
    inc bc                                        ; $5DB7: $03
    inc bc                                        ; $5DB8: $03
    ld bc, $0007                                  ; $5DB9: $01 $07 $00
    ld [$0F07], sp                                ; $5DBC: $08 $07 $0F
    nop                                           ; $5DBF: $00
    ldh [rP1], a                                  ; $5DC0: $E0 $00
    ldh [$FFC0], a                                ; $5DC2: $E0 $C0
    ldh [$FFC0], a                                ; $5DC4: $E0 $C0
    ldh [$FFC0], a                                ; $5DC6: $E0 $C0
    ldh [rLCDC], a                                ; $5DC8: $E0 $40
    ld h, b                                       ; $5DCA: $60
    add b                                         ; $5DCB: $80
    ldh [rP1], a                                  ; $5DCC: $E0 $00
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
    nop                                           ; $5DE0: $00
    nop                                           ; $5DE1: $00
    rlca                                          ; $5DE2: $07
    nop                                           ; $5DE3: $00
    dec c                                         ; $5DE4: $0D
    ld b, $1F                                     ; $5DE5: $06 $1F
    nop                                           ; $5DE7: $00
    rra                                           ; $5DE8: $1F
    rrca                                          ; $5DE9: $0F
    ccf                                           ; $5DEA: $3F
    rrca                                          ; $5DEB: $0F
    ld e, a                                       ; $5DEC: $5F
    add hl, hl                                    ; $5DED: $29
    adc a                                         ; $5DEE: $8F
    ld [hl], l                                    ; $5DEF: $75
    ld e, a                                       ; $5DF0: $5F
    inc h                                         ; $5DF1: $24
    ccf                                           ; $5DF2: $3F
    rrca                                          ; $5DF3: $0F
    rra                                           ; $5DF4: $1F
    inc bc                                        ; $5DF5: $03
    dec hl                                        ; $5DF6: $2B
    dec d                                         ; $5DF7: $15
    dec hl                                        ; $5DF8: $2B
    dec d                                         ; $5DF9: $15
    ld e, e                                       ; $5DFA: $5B
    dec h                                         ; $5DFB: $25
    ld e, e                                       ; $5DFC: $5B
    inc h                                         ; $5DFD: $24
    ld h, $00                                     ; $5DFE: $26 $00
    nop                                           ; $5E00: $00
    nop                                           ; $5E01: $00
    ret nz                                        ; $5E02: $C0

    nop                                           ; $5E03: $00
    and b                                         ; $5E04: $A0
    ret nz                                        ; $5E05: $C0

    ldh [rLCDC], a                                ; $5E06: $E0 $40
    ld h, c                                       ; $5E08: $61
    add b                                         ; $5E09: $80
    ld [hl], c                                    ; $5E0A: $71
    and b                                         ; $5E0B: $A0
    ld [hl], c                                    ; $5E0C: $71
    and b                                         ; $5E0D: $A0
    ld h, c                                       ; $5E0E: $61
    add b                                         ; $5E0F: $80
    add b                                         ; $5E10: $80
    nop                                           ; $5E11: $00
    ld b, a                                       ; $5E12: $47
    add b                                         ; $5E13: $80
    ld c, b                                       ; $5E14: $48
    add a                                         ; $5E15: $87
    ld a, b                                       ; $5E16: $78
    add a                                         ; $5E17: $87
    ld c, b                                       ; $5E18: $48
    or a                                          ; $5E19: $B7
    add h                                         ; $5E1A: $84
    ld a, e                                       ; $5E1B: $7B
    ld [bc], a                                    ; $5E1C: $02
    db $FD                                        ; $5E1D: $FD
    db $FD                                        ; $5E1E: $FD
    nop                                           ; $5E1F: $00
    ld a, [bc]                                    ; $5E20: $0A
    nop                                           ; $5E21: $00
    sub l                                         ; $5E22: $95
    ld a, [bc]                                    ; $5E23: $0A
    ld h, a                                       ; $5E24: $67
    sbc b                                         ; $5E25: $98
    ld l, a                                       ; $5E26: $6F
    sub a                                         ; $5E27: $97
    cp a                                          ; $5E28: $BF
    ret nc                                        ; $5E29: $D0

    ldh a, [rVBK]                                 ; $5E2A: $F0 $4F
    ret nz                                        ; $5E2C: $C0

    ccf                                           ; $5E2D: $3F
    ld b, b                                       ; $5E2E: $40
    cp a                                          ; $5E2F: $BF
    ld b, b                                       ; $5E30: $40
    cp a                                          ; $5E31: $BF
    ld b, b                                       ; $5E32: $40
    cp a                                          ; $5E33: $BF
    ld b, b                                       ; $5E34: $40

jr_022_5E35:
    cp a                                          ; $5E35: $BF
    ld b, b                                       ; $5E36: $40
    cp a                                          ; $5E37: $BF
    pop hl                                        ; $5E38: $E1
    ld e, $1E                                     ; $5E39: $1E $1E
    ld bc, $0708                                  ; $5E3B: $01 $08 $07
    rlca                                          ; $5E3E: $07
    nop                                           ; $5E3F: $00
    nop                                           ; $5E40: $00
    nop                                           ; $5E41: $00
    jr jr_022_5E44                                ; $5E42: $18 $00

jr_022_5E44:
    xor b                                         ; $5E44: $A8
    db $10                                        ; $5E45: $10
    ret c                                         ; $5E46: $D8

    or b                                          ; $5E47: $B0
    ldh a, [$FF60]                                ; $5E48: $F0 $60
    ld h, a                                       ; $5E4A: $67
    add b                                         ; $5E4B: $80
    jr jr_022_5E35                                ; $5E4C: $18 $E7

    db $10                                        ; $5E4E: $10
    rst RST_28                                    ; $5E4F: $EF
    inc de                                        ; $5E50: $13
    db $EC                                        ; $5E51: $EC
    inc c                                         ; $5E52: $0C
    di                                            ; $5E53: $F3
    ld [$08F7], sp                                ; $5E54: $08 $F7 $08
    rst RST_30                                    ; $5E57: $F7
    call nc, $3723                                ; $5E58: $D4 $23 $37
    ret nz                                        ; $5E5B: $C0

    rla                                           ; $5E5C: $17
    db $E3                                        ; $5E5D: $E3
    ei                                            ; $5E5E: $FB
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
    ldh [rP1], a                                  ; $5E6A: $E0 $00
    db $10                                        ; $5E6C: $10
    ldh [$FFF0], a                                ; $5E6D: $E0 $F0
    nop                                           ; $5E6F: $00
    ldh a, [rP1]                                  ; $5E70: $F0 $00
    ldh [rP1], a                                  ; $5E72: $E0 $00
    ld b, b                                       ; $5E74: $40
    add b                                         ; $5E75: $80
    ld h, b                                       ; $5E76: $60
    add b                                         ; $5E77: $80
    ld a, b                                       ; $5E78: $78
    and b                                         ; $5E79: $A0
    ld hl, sp+$60                                 ; $5E7A: $F8 $60
    ld hl, sp-$20                                 ; $5E7C: $F8 $E0
    ld hl, sp+$00                                 ; $5E7E: $F8 $00
    inc bc                                        ; $5E80: $03
    nop                                           ; $5E81: $00
    dec b                                         ; $5E82: $05
    ld [bc], a                                    ; $5E83: $02
    add hl, bc                                    ; $5E84: $09
    ld b, $30                                     ; $5E85: $06 $30
    rrca                                          ; $5E87: $0F
    ld e, c                                       ; $5E88: $59
    ld [hl], $7F                                  ; $5E89: $36 $7F
    jr nc, jr_022_5ECC                            ; $5E8B: $30 $3F

    rrca                                          ; $5E8D: $0F
    daa                                           ; $5E8E: $27
    rra                                           ; $5E8F: $1F
    inc de                                        ; $5E90: $13
    rrca                                          ; $5E91: $0F
    dec bc                                        ; $5E92: $0B
    ld b, $0B                                     ; $5E93: $06 $0B
    ld b, $0F                                     ; $5E95: $06 $0F
    nop                                           ; $5E97: $00
    rra                                           ; $5E98: $1F
    ld c, $7F                                     ; $5E99: $0E $7F
    rrca                                          ; $5E9B: $0F
    adc a                                         ; $5E9C: $8F
    ld [hl], a                                    ; $5E9D: $77
    rst RST_38                                    ; $5E9E: $FF
    nop                                           ; $5E9F: $00
    db $FC                                        ; $5EA0: $FC
    nop                                           ; $5EA1: $00
    call nz, $C238                                ; $5EA2: $C4 $38 $C2
    inc a                                         ; $5EA5: $3C
    pop bc                                        ; $5EA6: $C1
    ld a, $31                                     ; $5EA7: $3E $31
    ld c, $08                                     ; $5EA9: $0E $08
    rlca                                          ; $5EAB: $07
    add a                                         ; $5EAC: $87
    nop                                           ; $5EAD: $00
    adc e                                         ; $5EAE: $8B
    ld b, $8F                                     ; $5EAF: $06 $8F
    ld b, $06                                     ; $5EB1: $06 $06
    nop                                           ; $5EB3: $00
    nop                                           ; $5EB4: $00
    nop                                           ; $5EB5: $00
    nop                                           ; $5EB6: $00
    nop                                           ; $5EB7: $00
    nop                                           ; $5EB8: $00
    nop                                           ; $5EB9: $00
    add b                                         ; $5EBA: $80
    nop                                           ; $5EBB: $00
    add b                                         ; $5EBC: $80
    nop                                           ; $5EBD: $00
    add b                                         ; $5EBE: $80
    nop                                           ; $5EBF: $00
    ld hl, sp+$00                                 ; $5EC0: $F8 $00
    nop                                           ; $5EC2: $00
    nop                                           ; $5EC3: $00
    nop                                           ; $5EC4: $00
    nop                                           ; $5EC5: $00
    nop                                           ; $5EC6: $00
    nop                                           ; $5EC7: $00
    ldh [rP1], a                                  ; $5EC8: $E0 $00
    ld hl, sp+$60                                 ; $5ECA: $F8 $60

jr_022_5ECC:
    db $FC                                        ; $5ECC: $FC
    ld hl, sp-$04                                 ; $5ECD: $F8 $FC
    ld hl, sp+$1E                                 ; $5ECF: $F8 $1E
    db $FC                                        ; $5ED1: $FC
    rst RST_20                                    ; $5ED2: $E7
    ld e, $1B                                     ; $5ED3: $1E $1B
    dec b                                         ; $5ED5: $05
    rlca                                          ; $5ED6: $07
    inc bc                                        ; $5ED7: $03
    inc bc                                        ; $5ED8: $03
    ld bc, $0007                                  ; $5ED9: $01 $07 $00
    ld [$0F07], sp                                ; $5EDC: $08 $07 $0F
    nop                                           ; $5EDF: $00
    ldh [rP1], a                                  ; $5EE0: $E0 $00
    ldh [$FFC0], a                                ; $5EE2: $E0 $C0
    ldh [$FFC0], a                                ; $5EE4: $E0 $C0
    ldh [$FFC0], a                                ; $5EE6: $E0 $C0
    ldh [rLCDC], a                                ; $5EE8: $E0 $40
    ld h, b                                       ; $5EEA: $60
    add b                                         ; $5EEB: $80
    ldh [rP1], a                                  ; $5EEC: $E0 $00
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
    nop                                           ; $5EF8: $00
    nop                                           ; $5EF9: $00
    nop                                           ; $5EFA: $00
    nop                                           ; $5EFB: $00
    nop                                           ; $5EFC: $00
    nop                                           ; $5EFD: $00
    nop                                           ; $5EFE: $00
    nop                                           ; $5EFF: $00
    nop                                           ; $5F00: $00
    nop                                           ; $5F01: $00
    rrca                                          ; $5F02: $0F
    nop                                           ; $5F03: $00
    dec de                                        ; $5F04: $1B
    dec c                                         ; $5F05: $0D
    ccf                                           ; $5F06: $3F
    nop                                           ; $5F07: $00
    ld a, $1F                                     ; $5F08: $3E $1F
    ld a, $1F                                     ; $5F0A: $3E $1F
    ld a, [hl]                                    ; $5F0C: $7E
    inc de                                        ; $5F0D: $13
    cp [hl]                                       ; $5F0E: $BE
    ld c, e                                       ; $5F0F: $4B
    ld e, a                                       ; $5F10: $5F
    ld [$1F3E], sp                                ; $5F11: $08 $3E $1F
    ld a, $07                                     ; $5F14: $3E $07
    ld d, [hl]                                    ; $5F16: $56

jr_022_5F17:
    dec hl                                        ; $5F17: $2B
    ld d, [hl]                                    ; $5F18: $56
    dec hl                                        ; $5F19: $2B
    or a                                          ; $5F1A: $B7
    ld c, d                                       ; $5F1B: $4A
    or [hl]                                       ; $5F1C: $B6
    ld c, c                                       ; $5F1D: $49
    ld c, l                                       ; $5F1E: $4D
    nop                                           ; $5F1F: $00
    nop                                           ; $5F20: $00
    nop                                           ; $5F21: $00
    add b                                         ; $5F22: $80
    nop                                           ; $5F23: $00
    ld b, b                                       ; $5F24: $40
    add b                                         ; $5F25: $80

jr_022_5F26:
    ret nz                                        ; $5F26: $C0

    add b                                         ; $5F27: $80
    jp $E200                                      ; $5F28: $C3 $00 $E2


    ld b, c                                       ; $5F2B: $41
    ldh [c], a                                    ; $5F2C: $E2
    ld b, c                                       ; $5F2D: $41
    jp Jump_000_0101                              ; $5F2E: $C3 $01 $01


    nop                                           ; $5F31: $00
    adc a                                         ; $5F32: $8F
    nop                                           ; $5F33: $00
    sub b                                         ; $5F34: $90
    rrca                                          ; $5F35: $0F
    ldh a, [rIF]                                  ; $5F36: $F0 $0F
    sub b                                         ; $5F38: $90
    ld l, a                                       ; $5F39: $6F
    ld [$04F7], sp                                ; $5F3A: $08 $F7 $04

jr_022_5F3D:
    ei                                            ; $5F3D: $FB
    ei                                            ; $5F3E: $FB
    nop                                           ; $5F3F: $00
    inc d                                         ; $5F40: $14
    nop                                           ; $5F41: $00
    ld a, [hl+]                                   ; $5F42: $2A
    inc d                                         ; $5F43: $14
    rst RST_08                                    ; $5F44: $CF
    jr nc, jr_022_5F26                            ; $5F45: $30 $DF

    cpl                                           ; $5F47: $2F
    ld a, a                                       ; $5F48: $7F
    and b                                         ; $5F49: $A0
    ldh [$FF9F], a                                ; $5F4A: $E0 $9F
    add b                                         ; $5F4C: $80
    ld a, a                                       ; $5F4D: $7F

jr_022_5F4E:
    add b                                         ; $5F4E: $80
    ld a, a                                       ; $5F4F: $7F
    add b                                         ; $5F50: $80
    ld a, a                                       ; $5F51: $7F
    add b                                         ; $5F52: $80
    ld a, a                                       ; $5F53: $7F
    add b                                         ; $5F54: $80
    ld a, a                                       ; $5F55: $7F
    add b                                         ; $5F56: $80
    ld a, a                                       ; $5F57: $7F
    jp Jump_000_3C3C                              ; $5F58: $C3 $3C $3C


    inc bc                                        ; $5F5B: $03
    db $10                                        ; $5F5C: $10
    rrca                                          ; $5F5D: $0F
    rrca                                          ; $5F5E: $0F
    nop                                           ; $5F5F: $00
    nop                                           ; $5F60: $00
    nop                                           ; $5F61: $00
    jr nc, jr_022_5F64                            ; $5F62: $30 $00

jr_022_5F64:
    ld d, b                                       ; $5F64: $50
    jr nz, jr_022_5F17                            ; $5F65: $20 $B0

    ld h, b                                       ; $5F67: $60
    ldh [$FFC0], a                                ; $5F68: $E0 $C0
    rst RST_08                                    ; $5F6A: $CF
    nop                                           ; $5F6B: $00
    jr nc, jr_022_5F3D                            ; $5F6C: $30 $CF

    ld hl, $27DE                                  ; $5F6E: $21 $DE $27
    ret c                                         ; $5F71: $D8

    add hl, de                                    ; $5F72: $19
    and $10                                       ; $5F73: $E6 $10
    rst RST_28                                    ; $5F75: $EF
    db $10                                        ; $5F76: $10
    rst RST_28                                    ; $5F77: $EF
    xor b                                         ; $5F78: $A8
    ld b, a                                       ; $5F79: $47
    ld l, a                                       ; $5F7A: $6F
    add b                                         ; $5F7B: $80
    cpl                                           ; $5F7C: $2F
    rst RST_00                                    ; $5F7D: $C7
    rst RST_30                                    ; $5F7E: $F7
    nop                                           ; $5F7F: $00
    nop                                           ; $5F80: $00
    nop                                           ; $5F81: $00
    nop                                           ; $5F82: $00
    nop                                           ; $5F83: $00
    nop                                           ; $5F84: $00
    nop                                           ; $5F85: $00
    nop                                           ; $5F86: $00
    nop                                           ; $5F87: $00
    nop                                           ; $5F88: $00
    nop                                           ; $5F89: $00
    ret nz                                        ; $5F8A: $C0

    nop                                           ; $5F8B: $00
    jr nz, jr_022_5F4E                            ; $5F8C: $20 $C0

    ldh [rP1], a                                  ; $5F8E: $E0 $00
    ldh [rP1], a                                  ; $5F90: $E0 $00
    ret nz                                        ; $5F92: $C0

    nop                                           ; $5F93: $00
    add b                                         ; $5F94: $80
    nop                                           ; $5F95: $00
    ret nz                                        ; $5F96: $C0

    nop                                           ; $5F97: $00
    ldh a, [rLCDC]                                ; $5F98: $F0 $40
    ldh a, [$FFC0]                                ; $5F9A: $F0 $C0
    ldh a, [$FFC0]                                ; $5F9C: $F0 $C0
    ldh a, [rP1]                                  ; $5F9E: $F0 $00
    inc bc                                        ; $5FA0: $03
    nop                                           ; $5FA1: $00
    dec b                                         ; $5FA2: $05
    ld [bc], a                                    ; $5FA3: $02
    add hl, bc                                    ; $5FA4: $09
    ld b, $30                                     ; $5FA5: $06 $30
    rrca                                          ; $5FA7: $0F
    ld e, c                                       ; $5FA8: $59
    ld [hl], $7F                                  ; $5FA9: $36 $7F
    jr nc, jr_022_5FEC                            ; $5FAB: $30 $3F

    rrca                                          ; $5FAD: $0F
    daa                                           ; $5FAE: $27
    rra                                           ; $5FAF: $1F
    inc de                                        ; $5FB0: $13
    rrca                                          ; $5FB1: $0F
    dec bc                                        ; $5FB2: $0B
    ld b, $0B                                     ; $5FB3: $06 $0B
    ld b, $0F                                     ; $5FB5: $06 $0F
    nop                                           ; $5FB7: $00
    rra                                           ; $5FB8: $1F
    ld c, $7F                                     ; $5FB9: $0E $7F
    rrca                                          ; $5FBB: $0F
    adc a                                         ; $5FBC: $8F
    ld [hl], a                                    ; $5FBD: $77
    rst RST_38                                    ; $5FBE: $FF
    nop                                           ; $5FBF: $00
    db $FC                                        ; $5FC0: $FC
    nop                                           ; $5FC1: $00
    call nz, $C238                                ; $5FC2: $C4 $38 $C2
    inc a                                         ; $5FC5: $3C
    pop bc                                        ; $5FC6: $C1
    ld a, $31                                     ; $5FC7: $3E $31
    ld c, $08                                     ; $5FC9: $0E $08
    rlca                                          ; $5FCB: $07
    add a                                         ; $5FCC: $87
    nop                                           ; $5FCD: $00
    adc e                                         ; $5FCE: $8B
    ld b, $8F                                     ; $5FCF: $06 $8F
    ld b, $06                                     ; $5FD1: $06 $06
    nop                                           ; $5FD3: $00
    nop                                           ; $5FD4: $00
    nop                                           ; $5FD5: $00
    nop                                           ; $5FD6: $00
    nop                                           ; $5FD7: $00
    nop                                           ; $5FD8: $00
    nop                                           ; $5FD9: $00
    add b                                         ; $5FDA: $80
    nop                                           ; $5FDB: $00
    add b                                         ; $5FDC: $80
    nop                                           ; $5FDD: $00
    add b                                         ; $5FDE: $80
    nop                                           ; $5FDF: $00
    ld hl, sp+$00                                 ; $5FE0: $F8 $00
    nop                                           ; $5FE2: $00
    nop                                           ; $5FE3: $00
    nop                                           ; $5FE4: $00
    nop                                           ; $5FE5: $00
    nop                                           ; $5FE6: $00
    nop                                           ; $5FE7: $00
    ldh [rP1], a                                  ; $5FE8: $E0 $00
    ld hl, sp+$60                                 ; $5FEA: $F8 $60

jr_022_5FEC:
    db $FC                                        ; $5FEC: $FC
    ld hl, sp-$04                                 ; $5FED: $F8 $FC
    ld hl, sp+$1E                                 ; $5FEF: $F8 $1E
    db $FC                                        ; $5FF1: $FC
    rst RST_20                                    ; $5FF2: $E7
    ld e, $1B                                     ; $5FF3: $1E $1B
    dec b                                         ; $5FF5: $05
    rlca                                          ; $5FF6: $07
    inc bc                                        ; $5FF7: $03
    inc bc                                        ; $5FF8: $03
    ld bc, $0007                                  ; $5FF9: $01 $07 $00
    ld [$0F07], sp                                ; $5FFC: $08 $07 $0F
    nop                                           ; $5FFF: $00
    ldh [rP1], a                                  ; $6000: $E0 $00
    ldh [$FFC0], a                                ; $6002: $E0 $C0
    ldh [$FFC0], a                                ; $6004: $E0 $C0
    ldh [$FFC0], a                                ; $6006: $E0 $C0
    ldh [rLCDC], a                                ; $6008: $E0 $40
    ld h, b                                       ; $600A: $60
    add b                                         ; $600B: $80
    ldh [rP1], a                                  ; $600C: $E0 $00
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
    rrca                                          ; $6022: $0F
    nop                                           ; $6023: $00
    dec de                                        ; $6024: $1B
    dec c                                         ; $6025: $0D
    ccf                                           ; $6026: $3F
    nop                                           ; $6027: $00
    ld a, $1F                                     ; $6028: $3E $1F
    ld a, $1F                                     ; $602A: $3E $1F
    ld a, $13                                     ; $602C: $3E $13
    ld e, $0B                                     ; $602E: $1E $0B
    rra                                           ; $6030: $1F
    ld [$1F3E], sp                                ; $6031: $08 $3E $1F
    ld a, $07                                     ; $6034: $3E $07
    ld d, [hl]                                    ; $6036: $56

jr_022_6037:
    dec hl                                        ; $6037: $2B
    ld d, [hl]                                    ; $6038: $56
    dec hl                                        ; $6039: $2B
    or a                                          ; $603A: $B7
    ld c, d                                       ; $603B: $4A
    or [hl]                                       ; $603C: $B6
    ld c, c                                       ; $603D: $49
    ld c, l                                       ; $603E: $4D
    nop                                           ; $603F: $00
    nop                                           ; $6040: $00
    nop                                           ; $6041: $00
    add b                                         ; $6042: $80
    nop                                           ; $6043: $00
    ld b, b                                       ; $6044: $40
    add b                                         ; $6045: $80

jr_022_6046:
    ret nz                                        ; $6046: $C0

    add b                                         ; $6047: $80
    jp $E200                                      ; $6048: $C3 $00 $E2


    ld b, c                                       ; $604B: $41
    ldh [c], a                                    ; $604C: $E2
    ld b, c                                       ; $604D: $41
    jp Jump_000_0101                              ; $604E: $C3 $01 $01


    nop                                           ; $6051: $00
    adc a                                         ; $6052: $8F
    nop                                           ; $6053: $00
    sub b                                         ; $6054: $90
    rrca                                          ; $6055: $0F
    ldh a, [rIF]                                  ; $6056: $F0 $0F
    sub b                                         ; $6058: $90
    ld l, a                                       ; $6059: $6F
    ld [$04F7], sp                                ; $605A: $08 $F7 $04

jr_022_605D:
    ei                                            ; $605D: $FB
    ei                                            ; $605E: $FB
    nop                                           ; $605F: $00
    inc d                                         ; $6060: $14
    nop                                           ; $6061: $00
    ld a, [hl+]                                   ; $6062: $2A
    inc d                                         ; $6063: $14
    rst RST_08                                    ; $6064: $CF
    jr nc, jr_022_6046                            ; $6065: $30 $DF

    cpl                                           ; $6067: $2F
    ld a, a                                       ; $6068: $7F
    and b                                         ; $6069: $A0
    ldh [$FF9F], a                                ; $606A: $E0 $9F
    add b                                         ; $606C: $80
    ld a, a                                       ; $606D: $7F

jr_022_606E:
    add b                                         ; $606E: $80
    ld a, a                                       ; $606F: $7F
    add b                                         ; $6070: $80
    ld a, a                                       ; $6071: $7F
    add b                                         ; $6072: $80
    ld a, a                                       ; $6073: $7F
    add b                                         ; $6074: $80
    ld a, a                                       ; $6075: $7F
    add b                                         ; $6076: $80
    ld a, a                                       ; $6077: $7F
    jp Jump_000_3C3C                              ; $6078: $C3 $3C $3C


    inc bc                                        ; $607B: $03
    db $10                                        ; $607C: $10
    rrca                                          ; $607D: $0F
    rrca                                          ; $607E: $0F
    nop                                           ; $607F: $00
    nop                                           ; $6080: $00
    nop                                           ; $6081: $00
    jr nc, jr_022_6084                            ; $6082: $30 $00

jr_022_6084:
    ld d, b                                       ; $6084: $50
    jr nz, jr_022_6037                            ; $6085: $20 $B0

    ld h, b                                       ; $6087: $60
    ldh [$FFC0], a                                ; $6088: $E0 $C0
    rst RST_08                                    ; $608A: $CF
    nop                                           ; $608B: $00
    jr nc, jr_022_605D                            ; $608C: $30 $CF

    ld hl, $27DE                                  ; $608E: $21 $DE $27
    ret c                                         ; $6091: $D8

    add hl, de                                    ; $6092: $19
    and $10                                       ; $6093: $E6 $10
    rst RST_28                                    ; $6095: $EF
    db $10                                        ; $6096: $10
    rst RST_28                                    ; $6097: $EF
    xor b                                         ; $6098: $A8
    ld b, a                                       ; $6099: $47
    ld l, a                                       ; $609A: $6F
    add b                                         ; $609B: $80
    cpl                                           ; $609C: $2F
    rst RST_00                                    ; $609D: $C7
    rst RST_30                                    ; $609E: $F7
    nop                                           ; $609F: $00
    nop                                           ; $60A0: $00
    nop                                           ; $60A1: $00
    nop                                           ; $60A2: $00
    nop                                           ; $60A3: $00
    nop                                           ; $60A4: $00

jr_022_60A5:
    nop                                           ; $60A5: $00
    nop                                           ; $60A6: $00
    nop                                           ; $60A7: $00
    nop                                           ; $60A8: $00
    nop                                           ; $60A9: $00
    ret nz                                        ; $60AA: $C0

    nop                                           ; $60AB: $00
    jr nz, jr_022_606E                            ; $60AC: $20 $C0

    ldh [rP1], a                                  ; $60AE: $E0 $00
    ldh [rP1], a                                  ; $60B0: $E0 $00
    ret nz                                        ; $60B2: $C0

    nop                                           ; $60B3: $00
    add b                                         ; $60B4: $80
    nop                                           ; $60B5: $00
    ret nz                                        ; $60B6: $C0

    nop                                           ; $60B7: $00
    ldh a, [rLCDC]                                ; $60B8: $F0 $40
    ldh a, [$FFC0]                                ; $60BA: $F0 $C0
    ldh a, [$FFC0]                                ; $60BC: $F0 $C0
    ldh a, [rP1]                                  ; $60BE: $F0 $00
    rst RST_38                                    ; $60C0: $FF
    rst RST_30                                    ; $60C1: $F7
    rst RST_38                                    ; $60C2: $FF
    ld a, b                                       ; $60C3: $78
    ld e, a                                       ; $60C4: $5F
    ld a, $2F                                     ; $60C5: $3E $2F
    ld e, $17                                     ; $60C7: $1E $17
    ld c, $0B                                     ; $60C9: $0E $0B
    ld b, $0F                                     ; $60CB: $06 $0F
    ld bc, $070F                                  ; $60CD: $01 $0F $07
    rrca                                          ; $60D0: $0F
    rlca                                          ; $60D1: $07
    rrca                                          ; $60D2: $0F
    rlca                                          ; $60D3: $07
    rrca                                          ; $60D4: $0F
    ld b, $0F                                     ; $60D5: $06 $0F
    ld [bc], a                                    ; $60D7: $02
    dec bc                                        ; $60D8: $0B
    inc b                                         ; $60D9: $04
    dec b                                         ; $60DA: $05
    ld [bc], a                                    ; $60DB: $02
    dec b                                         ; $60DC: $05
    ld [bc], a                                    ; $60DD: $02
    inc bc                                        ; $60DE: $03
    nop                                           ; $60DF: $00
    inc e                                         ; $60E0: $1C
    ldh [$FFF9], a                                ; $60E1: $E0 $F9

jr_022_60E3:
    ldh [$FFFB], a                                ; $60E3: $E0 $FB
    add c                                         ; $60E5: $81
    rst RST_30                                    ; $60E6: $F7
    inc bc                                        ; $60E7: $03
    rst RST_08                                    ; $60E8: $CF
    ld b, $E7                                     ; $60E9: $06 $E7
    nop                                           ; $60EB: $00
    pop hl                                        ; $60EC: $E1
    nop                                           ; $60ED: $00
    pop af                                        ; $60EE: $F1
    nop                                           ; $60EF: $00
    db $FD                                        ; $60F0: $FD
    add b                                         ; $60F1: $80
    db $FC                                        ; $60F2: $FC
    add b                                         ; $60F3: $80
    cp h                                          ; $60F4: $BC
    nop                                           ; $60F5: $00
    cp b                                          ; $60F6: $B8
    nop                                           ; $60F7: $00
    jr c, jr_022_60FA                             ; $60F8: $38 $00

jr_022_60FA:
    jr jr_022_60FC                                ; $60FA: $18 $00

jr_022_60FC:
    jr jr_022_60FE                                ; $60FC: $18 $00

jr_022_60FE:
    jr jr_022_6100                                ; $60FE: $18 $00

jr_022_6100:
    ret nz                                        ; $6100: $C0

    nop                                           ; $6101: $00
    ldh [rLCDC], a                                ; $6102: $E0 $40
    and b                                         ; $6104: $A0
    ld b, b                                       ; $6105: $40
    ld d, b                                       ; $6106: $50
    jr nz, jr_022_6159                            ; $6107: $20 $50

    jr nz, jr_022_60E3                            ; $6109: $20 $D8

    jr nc, jr_022_60A5                            ; $610B: $30 $98

    ld [hl], b                                    ; $610D: $70
    ld hl, sp+$10                                 ; $610E: $F8 $10
    ldh a, [$FFE0]                                ; $6110: $F0 $E0
    ld hl, sp+$10                                 ; $6112: $F8 $10
    ld hl, sp+$10                                 ; $6114: $F8 $10
    ld hl, sp-$40                                 ; $6116: $F8 $C0
    ld [hl], b                                    ; $6118: $70
    ldh [$FF30], a                                ; $6119: $E0 $30
    ldh [$FFB9], a                                ; $611B: $E0 $B9
    ld [hl], b                                    ; $611D: $70
    rst RST_38                                    ; $611E: $FF
    nop                                           ; $611F: $00
    inc l                                         ; $6120: $2C
    nop                                           ; $6121: $00
    ld d, h                                       ; $6122: $54
    jr z, @-$57                                   ; $6123: $28 $A7

    ld e, b                                       ; $6125: $58
    xor l                                         ; $6126: $AD
    ld e, d                                       ; $6127: $5A
    rst RST_38                                    ; $6128: $FF
    ld b, b                                       ; $6129: $40
    push hl                                       ; $612A: $E5
    dec de                                        ; $612B: $1B
    adc e                                         ; $612C: $8B
    halt                                          ; $612D: $76
    ei                                            ; $612E: $FB
    inc b                                         ; $612F: $04
    ei                                            ; $6130: $FB
    push bc                                       ; $6131: $C5
    cp $41                                        ; $6132: $FE $41
    or $4D                                        ; $6134: $F6 $4D
    rst RST_30                                    ; $6136: $F7
    adc [hl]                                      ; $6137: $8E
    rst RST_20                                    ; $6138: $E7
    ld e, $CF                                     ; $6139: $1E $CF
    ld a, $FF                                     ; $613B: $3E $FF
    ld a, h                                       ; $613D: $7C
    ld a, a                                       ; $613E: $7F
    add b                                         ; $613F: $80
    inc c                                         ; $6140: $0C
    nop                                           ; $6141: $00
    rra                                           ; $6142: $1F
    inc c                                         ; $6143: $0C
    rra                                           ; $6144: $1F
    dec bc                                        ; $6145: $0B
    rra                                           ; $6146: $1F
    dec bc                                        ; $6147: $0B
    ld a, a                                       ; $6148: $7F
    ld b, $FF                                     ; $6149: $06 $FF
    ld a, h                                       ; $614B: $7C
    rst RST_38                                    ; $614C: $FF
    ld h, [hl]                                    ; $614D: $66
    rst RST_38                                    ; $614E: $FF
    rst RST_00                                    ; $614F: $C7
    rst RST_38                                    ; $6150: $FF
    rst RST_38                                    ; $6151: $FF
    rst RST_38                                    ; $6152: $FF
    cp $FF                                        ; $6153: $FE $FF
    add hl, de                                    ; $6155: $19
    ld sp, hl                                     ; $6156: $F9
    ld h, b                                       ; $6157: $60
    ld h, c                                       ; $6158: $61

jr_022_6159:
    nop                                           ; $6159: $00
    ld b, $01                                     ; $615A: $06 $01
    ret c                                         ; $615C: $D8

    rlca                                          ; $615D: $07
    pop af                                        ; $615E: $F1
    rst RST_08                                    ; $615F: $CF
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
    rlca                                          ; $616C: $07
    nop                                           ; $616D: $00
    dec bc                                        ; $616E: $0B
    dec b                                         ; $616F: $05
    rrca                                          ; $6170: $0F
    ld bc, $0307                                  ; $6171: $01 $07 $03
    inc bc                                        ; $6174: $03
    nop                                           ; $6175: $00
    nop                                           ; $6176: $00
    nop                                           ; $6177: $00
    nop                                           ; $6178: $00
    nop                                           ; $6179: $00
    nop                                           ; $617A: $00
    nop                                           ; $617B: $00
    ld bc, $0100                                  ; $617C: $01 $00 $01
    nop                                           ; $617F: $00
    ld a, [hl]                                    ; $6180: $7E
    db $FD                                        ; $6181: $FD
    ld a, l                                       ; $6182: $7D
    ld a, [$F87E]                                 ; $6183: $FA $7E $F8
    db $FC                                        ; $6186: $FC
    db $10                                        ; $6187: $10
    cp h                                          ; $6188: $BC
    ld d, b                                       ; $6189: $50
    cp [hl]                                       ; $618A: $BE
    ld b, h                                       ; $618B: $44
    cp [hl]                                       ; $618C: $BE
    ld a, h                                       ; $618D: $7C
    cp [hl]                                       ; $618E: $BE
    ld a, h                                       ; $618F: $7C
    db $FC                                        ; $6190: $FC
    add b                                         ; $6191: $80
    db $EC                                        ; $6192: $EC
    ret c                                         ; $6193: $D8

    ld l, h                                       ; $6194: $6C
    ret c                                         ; $6195: $D8

    ld a, b                                       ; $6196: $78
    ret nz                                        ; $6197: $C0

    ret nz                                        ; $6198: $C0

    nop                                           ; $6199: $00
    nop                                           ; $619A: $00
    nop                                           ; $619B: $00
    nop                                           ; $619C: $00
    nop                                           ; $619D: $00
    nop                                           ; $619E: $00
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
    add b                                         ; $61B8: $80
    nop                                           ; $61B9: $00
    ld b, b                                       ; $61BA: $40
    add b                                         ; $61BB: $80
    ld b, b                                       ; $61BC: $40
    add b                                         ; $61BD: $80
    ld b, b                                       ; $61BE: $40
    add b                                         ; $61BF: $80
    nop                                           ; $61C0: $00
    nop                                           ; $61C1: $00
    ld bc, $0100                                  ; $61C2: $01 $00 $01
    nop                                           ; $61C5: $00
    ld bc, $0700                                  ; $61C6: $01 $00 $07
    nop                                           ; $61C9: $00
    rrca                                          ; $61CA: $0F
    rlca                                          ; $61CB: $07
    rrca                                          ; $61CC: $0F
    ld b, $7F                                     ; $61CD: $06 $7F
    inc c                                         ; $61CF: $0C
    cp a                                          ; $61D0: $BF
    ld e, a                                       ; $61D1: $5F
    rst RST_38                                    ; $61D2: $FF
    rra                                           ; $61D3: $1F
    ld a, a                                       ; $61D4: $7F
    ld sp, $063F                                  ; $61D5: $31 $3F $06
    ld b, $00                                     ; $61D8: $06 $00
    nop                                           ; $61DA: $00
    nop                                           ; $61DB: $00
    nop                                           ; $61DC: $00
    nop                                           ; $61DD: $00
    nop                                           ; $61DE: $00
    nop                                           ; $61DF: $00
    ret nz                                        ; $61E0: $C0

    nop                                           ; $61E1: $00
    ldh a, [$FFC0]                                ; $61E2: $F0 $C0
    cp $B0                                        ; $61E4: $FE $B0
    rst RST_38                                    ; $61E6: $FF
    or [hl]                                       ; $61E7: $B6
    rst RST_38                                    ; $61E8: $FF
    ld l, [hl]                                    ; $61E9: $6E
    rst RST_38                                    ; $61EA: $FF
    sbc $FF                                       ; $61EB: $DE $FF
    ld a, [hl]                                    ; $61ED: $7E
    rst RST_38                                    ; $61EE: $FF
    halt                                          ; $61EF: $76
    rst RST_38                                    ; $61F0: $FF
    or $FF                                        ; $61F1: $F6 $FF
    db $EC                                        ; $61F3: $EC
    rst RST_38                                    ; $61F4: $FF
    add b                                         ; $61F5: $80
    add a                                         ; $61F6: $87
    nop                                           ; $61F7: $00
    rlca                                          ; $61F8: $07
    nop                                           ; $61F9: $00
    rrca                                          ; $61FA: $0F
    nop                                           ; $61FB: $00
    rra                                           ; $61FC: $1F
    dec c                                         ; $61FD: $0D
    rra                                           ; $61FE: $1F
    ld a, [bc]                                    ; $61FF: $0A
    nop                                           ; $6200: $00
    nop                                           ; $6201: $00
    ldh [rP1], a                                  ; $6202: $E0 $00
    ld hl, sp+$60                                 ; $6204: $F8 $60
    db $FC                                        ; $6206: $FC
    ld a, b                                       ; $6207: $78
    cp $7C                                        ; $6208: $FE $7C
    cp $7C                                        ; $620A: $FE $7C
    rst RST_38                                    ; $620C: $FF
    inc e                                         ; $620D: $1C
    cp $05                                        ; $620E: $FE $05
    rst RST_38                                    ; $6210: $FF
    ld [hl], b                                    ; $6211: $70
    cp $79                                        ; $6212: $FE $79
    rst RST_38                                    ; $6214: $FF
    inc a                                         ; $6215: $3C
    rst RST_38                                    ; $6216: $FF
    ld c, $EF                                     ; $6217: $0E $EF
    ld d, d                                       ; $6219: $52
    rst RST_18                                    ; $621A: $DF
    xor h                                         ; $621B: $AC
    db $FD                                        ; $621C: $FD
    sbc d                                         ; $621D: $9A
    ld a, [$C0F4]                                 ; $621E: $FA $F4 $C0
    nop                                           ; $6221: $00
    ldh [rLCDC], a                                ; $6222: $E0 $40
    ldh a, [$FF60]                                ; $6224: $F0 $60
    ld a, b                                       ; $6226: $78
    jr nc, jr_022_62A5                            ; $6227: $30 $7C

    jr c, @+$7E                                   ; $6229: $38 $7C

    jr c, jr_022_626B                             ; $622B: $38 $3E

    inc e                                         ; $622D: $1C
    ld a, $1C                                     ; $622E: $3E $1C
    cp $1C                                        ; $6230: $FE $1C
    ld a, $DC                                     ; $6232: $3E $DC
    rst RST_38                                    ; $6234: $FF
    cp [hl]                                       ; $6235: $BE
    rst RST_38                                    ; $6236: $FF
    ld a, $7F                                     ; $6237: $3E $7F
    cp [hl]                                       ; $6239: $BE
    rst RST_38                                    ; $623A: $FF
    ld a, [hl]                                    ; $623B: $7E
    cp $7C                                        ; $623C: $FE $7C
    cp $7C                                        ; $623E: $FE $7C
    rra                                           ; $6240: $1F
    dec b                                         ; $6241: $05
    ccf                                           ; $6242: $3F
    dec d                                         ; $6243: $15
    ccf                                           ; $6244: $3F
    ld d, $6F                                     ; $6245: $16 $6F
    dec de                                        ; $6247: $1B
    ld a, [hl]                                    ; $6248: $7E
    dec h                                         ; $6249: $25
    ld a, e                                       ; $624A: $7B
    ld [hl], $3F                                  ; $624B: $36 $3F
    add hl, de                                    ; $624D: $19
    rra                                           ; $624E: $1F
    rlca                                          ; $624F: $07
    rlca                                          ; $6250: $07
    nop                                           ; $6251: $00
    inc bc                                        ; $6252: $03
    nop                                           ; $6253: $00
    rlca                                          ; $6254: $07
    nop                                           ; $6255: $00
    rrca                                          ; $6256: $0F
    ld bc, $021D                                  ; $6257: $01 $1D $02
    add hl, de                                    ; $625A: $19
    ld b, $1A                                     ; $625B: $06 $1A
    inc b                                         ; $625D: $04
    inc c                                         ; $625E: $0C
    nop                                           ; $625F: $00
    db $FC                                        ; $6260: $FC
    ld hl, sp-$08                                 ; $6261: $F8 $F8
    or b                                          ; $6263: $B0
    ldh a, [rLCDC]                                ; $6264: $F0 $40
    and b                                         ; $6266: $A0
    ret nz                                        ; $6267: $C0

    ld b, b                                       ; $6268: $40
    add b                                         ; $6269: $80
    ret nz                                        ; $626A: $C0

jr_022_626B:
    nop                                           ; $626B: $00
    ldh [$FF80], a                                ; $626C: $E0 $80
    ldh a, [$FFE0]                                ; $626E: $F0 $E0
    ldh a, [$FFE0]                                ; $6270: $F0 $E0
    ldh a, [$FF60]                                ; $6272: $F0 $60
    ldh a, [$FFE0]                                ; $6274: $F0 $E0
    ldh [$FFC0], a                                ; $6276: $E0 $C0
    ret nz                                        ; $6278: $C0

    add b                                         ; $6279: $80
    add b                                         ; $627A: $80
    nop                                           ; $627B: $00
    nop                                           ; $627C: $00
    nop                                           ; $627D: $00
    nop                                           ; $627E: $00
    nop                                           ; $627F: $00
    db $FC                                        ; $6280: $FC
    jr c, jr_022_62FB                             ; $6281: $38 $78

    nop                                           ; $6283: $00
    nop                                           ; $6284: $00
    nop                                           ; $6285: $00
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
    ld bc, $0100                                  ; $62A2: $01 $00 $01

jr_022_62A5:
    nop                                           ; $62A5: $00
    ld bc, $0700                                  ; $62A6: $01 $00 $07
    nop                                           ; $62A9: $00
    rrca                                          ; $62AA: $0F
    rlca                                          ; $62AB: $07
    rrca                                          ; $62AC: $0F
    ld b, $7F                                     ; $62AD: $06 $7F
    inc c                                         ; $62AF: $0C
    cp a                                          ; $62B0: $BF
    ld e, a                                       ; $62B1: $5F
    rst RST_38                                    ; $62B2: $FF
    rra                                           ; $62B3: $1F
    ld a, a                                       ; $62B4: $7F
    ld sp, $063F                                  ; $62B5: $31 $3F $06
    ld b, $00                                     ; $62B8: $06 $00
    nop                                           ; $62BA: $00
    nop                                           ; $62BB: $00
    nop                                           ; $62BC: $00
    nop                                           ; $62BD: $00
    nop                                           ; $62BE: $00
    nop                                           ; $62BF: $00
    ret nz                                        ; $62C0: $C0

    nop                                           ; $62C1: $00
    ldh a, [$FFC0]                                ; $62C2: $F0 $C0
    ld hl, sp-$50                                 ; $62C4: $F8 $B0
    ld hl, sp-$50                                 ; $62C6: $F8 $B0
    ld sp, hl                                     ; $62C8: $F9
    ld h, b                                       ; $62C9: $60
    rst RST_38                                    ; $62CA: $FF
    pop de                                        ; $62CB: $D1
    rst RST_38                                    ; $62CC: $FF
    ld a, a                                       ; $62CD: $7F
    rst RST_38                                    ; $62CE: $FF
    halt                                          ; $62CF: $76
    rst RST_38                                    ; $62D0: $FF
    rst RST_30                                    ; $62D1: $F7
    rst RST_38                                    ; $62D2: $FF
    rst RST_28                                    ; $62D3: $EF
    db $FD                                        ; $62D4: $FD
    add e                                         ; $62D5: $83
    add d                                         ; $62D6: $82
    ld bc, $0102                                  ; $62D7: $01 $02 $01
    rrca                                          ; $62DA: $0F
    nop                                           ; $62DB: $00
    rra                                           ; $62DC: $1F
    inc c                                         ; $62DD: $0C
    rra                                           ; $62DE: $1F
    ld a, [bc]                                    ; $62DF: $0A
    ldh [rP1], a                                  ; $62E0: $E0 $00
    ld hl, sp-$20                                 ; $62E2: $F8 $E0
    db $FC                                        ; $62E4: $FC
    ld hl, sp-$02                                 ; $62E5: $F8 $FE
    db $EC                                        ; $62E7: $EC
    rst RST_38                                    ; $62E8: $FF
    ld l, [hl]                                    ; $62E9: $6E
    rst RST_38                                    ; $62EA: $FF
    ld [hl], a                                    ; $62EB: $77
    rst RST_38                                    ; $62EC: $FF
    or e                                          ; $62ED: $B3
    rst RST_30                                    ; $62EE: $F7
    adc e                                         ; $62EF: $8B
    rst RST_28                                    ; $62F0: $EF
    ld d, c                                       ; $62F1: $51
    rst RST_18                                    ; $62F2: $DF
    xor h                                         ; $62F3: $AC
    cp $99                                        ; $62F4: $FE $99
    ld sp, hl                                     ; $62F6: $F9
    or $F7                                        ; $62F7: $F6 $F7
    jp hl                                         ; $62F9: $E9


    rst RST_38                                    ; $62FA: $FF

jr_022_62FB:
    or [hl]                                       ; $62FB: $B6
    rst RST_38                                    ; $62FC: $FF
    ld c, [hl]                                    ; $62FD: $4E
    cp a                                          ; $62FE: $BF
    sbc $01                                       ; $62FF: $DE $01
    nop                                           ; $6301: $00
    add e                                         ; $6302: $83
    ld bc, $0183                                  ; $6303: $01 $83 $01
    jp $C781                                      ; $6306: $C3 $81 $C7


    add e                                         ; $6309: $83
    rst RST_20                                    ; $630A: $E7
    jp Jump_022_47EF                              ; $630B: $C3 $EF $47


    rst RST_28                                    ; $630E: $EF
    rst RST_00                                    ; $630F: $C7
    rst RST_38                                    ; $6310: $FF
    adc $FF                                       ; $6311: $CE $FF
    cp $FE                                        ; $6313: $FE $FE
    db $FC                                        ; $6315: $FC
    cp $FC                                        ; $6316: $FE $FC
    db $FC                                        ; $6318: $FC
    ld hl, sp-$08                                 ; $6319: $F8 $F8
    ldh [$FFE0], a                                ; $631B: $E0 $E0
    add b                                         ; $631D: $80
    add b                                         ; $631E: $80
    nop                                           ; $631F: $00
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
    add b                                         ; $6332: $80
    nop                                           ; $6333: $00
    add b                                         ; $6334: $80
    nop                                           ; $6335: $00
    add b                                         ; $6336: $80
    nop                                           ; $6337: $00
    add b                                         ; $6338: $80
    nop                                           ; $6339: $00
    add b                                         ; $633A: $80
    nop                                           ; $633B: $00
    add b                                         ; $633C: $80
    nop                                           ; $633D: $00
    add b                                         ; $633E: $80
    nop                                           ; $633F: $00
    rra                                           ; $6340: $1F
    dec b                                         ; $6341: $05
    ccf                                           ; $6342: $3F
    dec d                                         ; $6343: $15
    ccf                                           ; $6344: $3F
    ld d, $2F                                     ; $6345: $16 $2F
    dec de                                        ; $6347: $1B
    ld e, $05                                     ; $6348: $1E $05
    dec bc                                        ; $634A: $0B
    ld b, $07                                     ; $634B: $06 $07
    ld bc, $0001                                  ; $634D: $01 $01 $00
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
    nop                                           ; $635A: $00
    nop                                           ; $635B: $00
    nop                                           ; $635C: $00
    nop                                           ; $635D: $00
    nop                                           ; $635E: $00
    nop                                           ; $635F: $00
    ld a, a                                       ; $6360: $7F
    cp [hl]                                       ; $6361: $BE
    rst RST_38                                    ; $6362: $FF
    ld e, l                                       ; $6363: $5D
    rst RST_38                                    ; $6364: $FF
    db $E3                                        ; $6365: $E3
    rst RST_38                                    ; $6366: $FF
    ld a, b                                       ; $6367: $78
    ld a, b                                       ; $6368: $78
    jr nc, jr_022_63E3                            ; $6369: $30 $78

    jr nc, @+$7A                                  ; $636B: $30 $78

    jr nc, jr_022_63DF                            ; $636D: $30 $70

    jr nz, jr_022_63E1                            ; $636F: $20 $70

    jr nz, jr_022_63E3                            ; $6371: $20 $70

    nop                                           ; $6373: $00
    ld d, b                                       ; $6374: $50
    jr nz, @+$32                                  ; $6375: $20 $30

    nop                                           ; $6377: $00
    nop                                           ; $6378: $00
    nop                                           ; $6379: $00
    nop                                           ; $637A: $00
    nop                                           ; $637B: $00
    nop                                           ; $637C: $00
    nop                                           ; $637D: $00
    nop                                           ; $637E: $00
    nop                                           ; $637F: $00
    nop                                           ; $6380: $00
    nop                                           ; $6381: $00
    add b                                         ; $6382: $80
    nop                                           ; $6383: $00
    ld h, b                                       ; $6384: $60
    nop                                           ; $6385: $00
    ld a, b                                       ; $6386: $78
    jr nz, jr_022_63C7                            ; $6387: $20 $3E

    jr jr_022_63C2                                ; $6389: $18 $37

    ld e, $19                                     ; $638B: $1E $19
    rrca                                          ; $638D: $0F
    jr jr_022_639F                                ; $638E: $18 $0F

    inc c                                         ; $6390: $0C
    rlca                                          ; $6391: $07
    inc c                                         ; $6392: $0C
    rlca                                          ; $6393: $07
    ld b, $03                                     ; $6394: $06 $03
    ld b, $03                                     ; $6396: $06 $03
    inc bc                                        ; $6398: $03
    ld bc, $0103                                  ; $6399: $01 $03 $01
    ld bc, $0100                                  ; $639C: $01 $00 $01

jr_022_639F:
    nop                                           ; $639F: $00
    rla                                           ; $63A0: $17
    dec c                                         ; $63A1: $0D
    rla                                           ; $63A2: $17
    dec c                                         ; $63A3: $0D
    rrca                                          ; $63A4: $0F
    ld bc, $0107                                  ; $63A5: $01 $07 $01
    inc bc                                        ; $63A8: $03
    ld bc, $0103                                  ; $63A9: $01 $03 $01
    jp $F301                                      ; $63AC: $C3 $01 $F3


    pop bc                                        ; $63AF: $C1
    ccf                                           ; $63B0: $3F
    pop af                                        ; $63B1: $F1
    rrca                                          ; $63B2: $0F
    db $FD                                        ; $63B3: $FD
    inc bc                                        ; $63B4: $03
    rst RST_38                                    ; $63B5: $FF
    rlca                                          ; $63B6: $07
    ld sp, hl                                     ; $63B7: $F9
    dec bc                                        ; $63B8: $0B
    db $F4                                        ; $63B9: $F4
    inc d                                         ; $63BA: $14
    db $EB                                        ; $63BB: $EB
    sbc a                                         ; $63BC: $9F
    ldh [$FF80], a                                ; $63BD: $E0 $80
    rst RST_38                                    ; $63BF: $FF
    ld a, a                                       ; $63C0: $7F
    db $D3                                        ; $63C1: $D3

jr_022_63C2:
    ld a, e                                       ; $63C2: $7B
    and b                                         ; $63C3: $A0
    sbc h                                         ; $63C4: $9C
    ld [hl], e                                    ; $63C5: $73
    db $FC                                        ; $63C6: $FC

jr_022_63C7:
    dec bc                                        ; $63C7: $0B
    ld h, $DD                                     ; $63C8: $26 $DD
    ld h, a                                       ; $63CA: $67
    sbc d                                         ; $63CB: $9A
    ld e, c                                       ; $63CC: $59
    and a                                         ; $63CD: $A7
    ld b, c                                       ; $63CE: $41
    cp [hl]                                       ; $63CF: $BE
    ld b, d                                       ; $63D0: $42
    cp l                                          ; $63D1: $BD
    adc h                                         ; $63D2: $8C
    ld [hl], e                                    ; $63D3: $73
    sub b                                         ; $63D4: $90
    ld l, a                                       ; $63D5: $6F
    ld [hl], b                                    ; $63D6: $70
    adc a                                         ; $63D7: $8F
    db $10                                        ; $63D8: $10
    rst RST_28                                    ; $63D9: $EF
    and b                                         ; $63DA: $A0
    ld e, a                                       ; $63DB: $5F
    ldh [$FF1F], a                                ; $63DC: $E0 $1F
    nop                                           ; $63DE: $00

jr_022_63DF:
    rst RST_38                                    ; $63DF: $FF
    rst RST_38                                    ; $63E0: $FF

jr_022_63E1:
    ld [hl+], a                                   ; $63E1: $22
    rst RST_38                                    ; $63E2: $FF

jr_022_63E3:
    call nz, $06FD                                ; $63E3: $C4 $FD $06
    ld a, b                                       ; $63E6: $78
    adc a                                         ; $63E7: $8F
    sbc c                                         ; $63E8: $99
    ld c, $37                                     ; $63E9: $0E $37
    jr jr_022_639F                                ; $63EB: $18 $B2

    dec e                                         ; $63ED: $1D
    ldh [c], a                                    ; $63EE: $E2
    cp l                                          ; $63EF: $BD
    ld b, d                                       ; $63F0: $42
    db $FD                                        ; $63F1: $FD
    ld bc, $00FE                                  ; $63F2: $01 $FE $00
    rst RST_38                                    ; $63F5: $FF
    nop                                           ; $63F6: $00
    rst RST_38                                    ; $63F7: $FF
    nop                                           ; $63F8: $00
    rst RST_38                                    ; $63F9: $FF
    nop                                           ; $63FA: $00
    rst RST_38                                    ; $63FB: $FF
    nop                                           ; $63FC: $00
    rst RST_38                                    ; $63FD: $FF
    nop                                           ; $63FE: $00
    rst RST_38                                    ; $63FF: $FF
    ld a, a                                       ; $6400: $7F
    jp c, $DA7F                                   ; $6401: $DA $7F $DA

    rst RST_38                                    ; $6404: $FF
    ld d, [hl]                                    ; $6405: $56
    rst RST_38                                    ; $6406: $FF
    ld b, [hl]                                    ; $6407: $46
    ld a, e                                       ; $6408: $7B
    adc $7B                                       ; $6409: $CE $7B
    adc $FB                                       ; $640B: $CE $FB
    ld d, [hl]                                    ; $640D: $56
    ld a, e                                       ; $640E: $7B
    sub $2B                                       ; $640F: $D6 $2B
    or $8B                                        ; $6411: $F6 $8B
    ld [hl], a                                    ; $6413: $77
    ld c, d                                       ; $6414: $4A
    or a                                          ; $6415: $B7
    inc [hl]                                      ; $6416: $34
    sla d                                         ; $6417: $CB $22
    db $DD                                        ; $6419: $DD
    ccf                                           ; $641A: $3F
    ret nz                                        ; $641B: $C0

    inc h                                         ; $641C: $24
    db $DB                                        ; $641D: $DB
    ccf                                           ; $641E: $3F
    ret nz                                        ; $641F: $C0

    pop bc                                        ; $6420: $C1
    nop                                           ; $6421: $00
    inc hl                                        ; $6422: $23
    pop bc                                        ; $6423: $C1
    add $03                                       ; $6424: $C6 $03
    inc c                                         ; $6426: $0C
    rlca                                          ; $6427: $07
    add hl, de                                    ; $6428: $19
    rrca                                          ; $6429: $0F
    ld sp, $631F                                  ; $642A: $31 $1F $63
    ld a, $C3                                     ; $642D: $3E $C3
    ld a, [hl]                                    ; $642F: $7E
    add [hl]                                      ; $6430: $86
    db $FC                                        ; $6431: $FC
    ld b, $FC                                     ; $6432: $06 $FC
    inc c                                         ; $6434: $0C
    ld hl, sp+$0C                                 ; $6435: $F8 $0C
    ld hl, sp+$18                                 ; $6437: $F8 $18
    ldh a, [rNR23]                                ; $6439: $F0 $18
    ldh a, [$FFB0]                                ; $643B: $F0 $B0
    ld h, b                                       ; $643D: $60
    or b                                          ; $643E: $B0
    ld h, b                                       ; $643F: $60
    nop                                           ; $6440: $00
    nop                                           ; $6441: $00
    ld bc, $0100                                  ; $6442: $01 $00 $01
    nop                                           ; $6445: $00
    ld bc, $0100                                  ; $6446: $01 $00 $01
    nop                                           ; $6449: $00
    nop                                           ; $644A: $00
    nop                                           ; $644B: $00
    nop                                           ; $644C: $00
    nop                                           ; $644D: $00
    inc bc                                        ; $644E: $03
    nop                                           ; $644F: $00
    inc b                                         ; $6450: $04
    inc bc                                        ; $6451: $03
    inc b                                         ; $6452: $04
    inc bc                                        ; $6453: $03
    ld [bc], a                                    ; $6454: $02
    ld bc, $001D                                  ; $6455: $01 $1D $00
    ld a, a                                       ; $6458: $7F
    inc c                                         ; $6459: $0C
    cp e                                          ; $645A: $BB
    ld h, h                                       ; $645B: $64
    cp a                                          ; $645C: $BF
    ld l, c                                       ; $645D: $69
    ld a, a                                       ; $645E: $7F
    dec c                                         ; $645F: $0D
    ld a, [bc]                                    ; $6460: $0A
    nop                                           ; $6461: $00
    sub l                                         ; $6462: $95
    ld a, [bc]                                    ; $6463: $0A
    ld l, c                                       ; $6464: $69
    sub [hl]                                      ; $6465: $96
    ld l, e                                       ; $6466: $6B
    sub [hl]                                      ; $6467: $96
    cp a                                          ; $6468: $BF
    call nc, Call_022_43FC                        ; $6469: $D4 $FC $43
    db $E3                                        ; $646C: $E3
    ld e, h                                       ; $646D: $5C
    rst RST_38                                    ; $646E: $FF
    jr nz, jr_022_64A8                            ; $646F: $20 $37

    ret z                                         ; $6471: $C8

    add hl, sp                                    ; $6472: $39
    rst RST_10                                    ; $6473: $D7
    dec a                                         ; $6474: $3D
    sub $BF                                       ; $6475: $D6 $BF
    ld c, c                                       ; $6477: $49
    ld a, a                                       ; $6478: $7F
    adc [hl]                                      ; $6479: $8E
    ccf                                           ; $647A: $3F
    call c, Call_000_2FDF                         ; $647B: $DC $DF $2F
    rst RST_38                                    ; $647E: $FF
    adc a                                         ; $647F: $8F
    nop                                           ; $6480: $00
    nop                                           ; $6481: $00
    ld [hl], e                                    ; $6482: $73
    nop                                           ; $6483: $00
    sbc l                                         ; $6484: $9D
    ld [hl], d                                    ; $6485: $72
    ld a, e                                       ; $6486: $7B
    and $F6                                       ; $6487: $E6 $F6
    inc e                                         ; $6489: $1C
    ld c, a                                       ; $648A: $4F
    cp h                                          ; $648B: $BC
    ld a, l                                       ; $648C: $7D
    cp b                                          ; $648D: $B8
    ld a, a                                       ; $648E: $7F
    or b                                          ; $648F: $B0
    ld a, e                                       ; $6490: $7B
    add h                                         ; $6491: $84
    rst RST_30                                    ; $6492: $F7
    ld a, [bc]                                    ; $6493: $0A
    rst RST_38                                    ; $6494: $FF
    ld h, d                                       ; $6495: $62
    rst RST_38                                    ; $6496: $FF
    add [hl]                                      ; $6497: $86
    rst RST_28                                    ; $6498: $EF
    ld d, $FB                                     ; $6499: $16 $FB
    ld c, [hl]                                    ; $649B: $4E
    ei                                            ; $649C: $FB
    xor $FF                                       ; $649D: $EE $FF
    jp nc, RST_00                                 ; $649F: $D2 $00 $00

    nop                                           ; $64A2: $00
    nop                                           ; $64A3: $00
    nop                                           ; $64A4: $00
    nop                                           ; $64A5: $00
    nop                                           ; $64A6: $00
    nop                                           ; $64A7: $00

jr_022_64A8:
    nop                                           ; $64A8: $00
    nop                                           ; $64A9: $00
    nop                                           ; $64AA: $00
    nop                                           ; $64AB: $00
    nop                                           ; $64AC: $00
    nop                                           ; $64AD: $00
    ldh [rP1], a                                  ; $64AE: $E0 $00
    db $10                                        ; $64B0: $10
    ldh [rSVBK], a                                ; $64B1: $E0 $70
    add b                                         ; $64B3: $80
    ldh [rP1], a                                  ; $64B4: $E0 $00
    ldh [rP1], a                                  ; $64B6: $E0 $00
    cp $C0                                        ; $64B8: $FE $C0
    ld sp, hl                                     ; $64BA: $F9
    sub $FE                                       ; $64BB: $D6 $FE
    ret nz                                        ; $64BD: $C0

    db $FC                                        ; $64BE: $FC
    ret nz                                        ; $64BF: $C0

    nop                                           ; $64C0: $00
    nop                                           ; $64C1: $00
    nop                                           ; $64C2: $00

jr_022_64C3:
    nop                                           ; $64C3: $00
    nop                                           ; $64C4: $00
    nop                                           ; $64C5: $00
    ld [bc], a                                    ; $64C6: $02
    nop                                           ; $64C7: $00
    inc b                                         ; $64C8: $04
    nop                                           ; $64C9: $00
    inc c                                         ; $64CA: $0C
    nop                                           ; $64CB: $00
    jr jr_022_64CE                                ; $64CC: $18 $00

jr_022_64CE:
    jr c, jr_022_64E0                             ; $64CE: $38 $10

    ld [hl], b                                    ; $64D0: $70
    jr nz, jr_022_64C3                            ; $64D1: $20 $F0

    ld h, b                                       ; $64D3: $60
    ldh [$FFC0], a                                ; $64D4: $E0 $C0
    ld h, b                                       ; $64D6: $60
    ret nz                                        ; $64D7: $C0

    ret nz                                        ; $64D8: $C0

    add b                                         ; $64D9: $80
    ret nz                                        ; $64DA: $C0

    add b                                         ; $64DB: $80
    add b                                         ; $64DC: $80
    nop                                           ; $64DD: $00
    add b                                         ; $64DE: $80
    nop                                           ; $64DF: $00

jr_022_64E0:
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
    ld a, l                                       ; $64EC: $7D
    nop                                           ; $64ED: $00
    sbc d                                         ; $64EE: $9A
    ld [hl], l                                    ; $64EF: $75
    ld sp, hl                                     ; $64F0: $F9
    ld h, [hl]                                    ; $64F1: $66
    ld l, a                                       ; $64F2: $6F
    rla                                           ; $64F3: $17
    sbc a                                         ; $64F4: $9F
    ld a, e                                       ; $64F5: $7B
    rst RST_38                                    ; $64F6: $FF
    ld h, b                                       ; $64F7: $60
    ld h, h                                       ; $64F8: $64

jr_022_64F9:
    inc bc                                        ; $64F9: $03
    inc b                                         ; $64FA: $04
    inc bc                                        ; $64FB: $03
    rlca                                          ; $64FC: $07
    inc bc                                        ; $64FD: $03
    inc bc                                        ; $64FE: $03
    nop                                           ; $64FF: $00
    inc a                                         ; $6500: $3C
    nop                                           ; $6501: $00
    jp nz, Jump_000_3F3C                          ; $6502: $C2 $3C $3F

    db $FC                                        ; $6505: $FC
    db $FC                                        ; $6506: $FC
    dec sp                                        ; $6507: $3B
    ld hl, sp-$49                                 ; $6508: $F8 $B7
    ld sp, hl                                     ; $650A: $F9
    sub [hl]                                      ; $650B: $96
    reti                                          ; $650C: $D9


    add [hl]                                      ; $650D: $86
    adc c                                         ; $650E: $89
    ld b, $89                                     ; $650F: $06 $89
    ld b, $85                                     ; $6511: $06 $85
    ld [bc], a                                    ; $6513: $02
    dec b                                         ; $6514: $05
    ld [bc], a                                    ; $6515: $02
    inc bc                                        ; $6516: $03
    nop                                           ; $6517: $00
    inc bc                                        ; $6518: $03
    ld bc, $0103                                  ; $6519: $01 $03 $01
    ld bc, $0100                                  ; $651C: $01 $00 $01
    nop                                           ; $651F: $00
    nop                                           ; $6520: $00
    nop                                           ; $6521: $00
    nop                                           ; $6522: $00
    nop                                           ; $6523: $00
    add b                                         ; $6524: $80
    nop                                           ; $6525: $00
    ld d, b                                       ; $6526: $50
    add b                                         ; $6527: $80
    xor e                                         ; $6528: $AB
    ld d, b                                       ; $6529: $50
    ld c, h                                       ; $652A: $4C
    or e                                          ; $652B: $B3
    ld e, e                                       ; $652C: $5B
    or a                                          ; $652D: $B7
    rst RST_38                                    ; $652E: $FF
    and b                                         ; $652F: $A0
    ldh [c], a                                    ; $6530: $E2
    dec e                                         ; $6531: $1D
    dec de                                        ; $6532: $1B
    push hl                                       ; $6533: $E5
    ei                                            ; $6534: $FB
    dec d                                         ; $6535: $15
    cp e                                          ; $6536: $BB
    ld b, h                                       ; $6537: $44
    rst RST_08                                    ; $6538: $CF
    cp e                                          ; $6539: $BB
    rst RST_28                                    ; $653A: $EF
    or e                                          ; $653B: $B3
    rst RST_38                                    ; $653C: $FF
    rst RST_08                                    ; $653D: $CF
    rst RST_38                                    ; $653E: $FF
    ldh a, [c]                                    ; $653F: $F2
    nop                                           ; $6540: $00
    nop                                           ; $6541: $00
    sbc b                                         ; $6542: $98
    nop                                           ; $6543: $00
    add sp, -$70                                  ; $6544: $E8 $90
    ret c                                         ; $6546: $D8

    jr nc, jr_022_64F9                            ; $6547: $30 $B0

    ldh [$FF78], a                                ; $6549: $E0 $78
    ldh [$FFE7], a                                ; $654B: $E0 $E7
    ret c                                         ; $654D: $D8

    rst RST_08                                    ; $654E: $CF
    or e                                          ; $654F: $B3
    sbc h                                         ; $6550: $9C
    ld l, a                                       ; $6551: $6F
    ldh a, [$FF9F]                                ; $6552: $F0 $9F
    ldh a, [$FF9F]                                ; $6554: $F0 $9F
    ldh [$FF3F], a                                ; $6556: $E0 $3F
    ldh [$FF3F], a                                ; $6558: $E0 $3F
    ldh [$FF3F], a                                ; $655A: $E0 $3F
    ld h, b                                       ; $655C: $60
    ccf                                           ; $655D: $3F
    ld h, b                                       ; $655E: $60
    ccf                                           ; $655F: $3F
    nop                                           ; $6560: $00
    nop                                           ; $6561: $00
    ldh [rP1], a                                  ; $6562: $E0 $00
    ld hl, sp-$20                                 ; $6564: $F8 $E0
    inc e                                         ; $6566: $1C
    ld hl, sp+$06                                 ; $6567: $F8 $06
    db $FC                                        ; $6569: $FC
    ld b, $FC                                     ; $656A: $06 $FC
    inc bc                                        ; $656C: $03
    cp $03                                        ; $656D: $FE $03
    cp $03                                        ; $656F: $FE $03
    cp $03                                        ; $6571: $FE $03
    cp $03                                        ; $6573: $FE $03
    cp $06                                        ; $6575: $FE $06
    db $FC                                        ; $6577: $FC
    ld b, $FC                                     ; $6578: $06 $FC
    inc e                                         ; $657A: $1C
    ld hl, sp-$08                                 ; $657B: $F8 $F8

Jump_022_657D:
    ldh [$FFE0], a                                ; $657D: $E0 $E0
    nop                                           ; $657F: $00
    rlca                                          ; $6580: $07
    inc bc                                        ; $6581: $03
    dec bc                                        ; $6582: $0B
    dec b                                         ; $6583: $05
    rrca                                          ; $6584: $0F
    ld bc, $030F                                  ; $6585: $01 $0F $03
    inc de                                        ; $6588: $13
    inc c                                         ; $6589: $0C
    jr nz, jr_022_65AB                            ; $658A: $20 $1F

    ld h, c                                       ; $658C: $61
    ld e, $BE                                     ; $658D: $1E $BE
    ld h, b                                       ; $658F: $60
    ld hl, sp+$60                                 ; $6590: $F8 $60
    ld a, b                                       ; $6592: $78
    sub b                                         ; $6593: $90
    jr c, @-$0E                                   ; $6594: $38 $F0

    ld [hl], b                                    ; $6596: $70
    ldh [$FFE0], a                                ; $6597: $E0 $E0
    add b                                         ; $6599: $80
    add b                                         ; $659A: $80
    nop                                           ; $659B: $00
    add b                                         ; $659C: $80
    nop                                           ; $659D: $00
    add b                                         ; $659E: $80
    nop                                           ; $659F: $00
    rst RST_38                                    ; $65A0: $FF
    add h                                         ; $65A1: $84
    cp $FC                                        ; $65A2: $FE $FC
    db $FC                                        ; $65A4: $FC

jr_022_65A5:
    ld hl, sp-$04                                 ; $65A5: $F8 $FC
    jr nz, jr_022_65A5                            ; $65A7: $20 $FC

    ret nz                                        ; $65A9: $C0

    ldh a, [c]                                    ; $65AA: $F2

jr_022_65AB:
    inc c                                         ; $65AB: $0C
    pop hl                                        ; $65AC: $E1
    ld e, $21                                     ; $65AD: $1E $21
    ld e, $10                                     ; $65AF: $1E $10
    rrca                                          ; $65B1: $0F
    dec bc                                        ; $65B2: $0B
    inc b                                         ; $65B3: $04
    dec b                                         ; $65B4: $05
    inc bc                                        ; $65B5: $03
    rlca                                          ; $65B6: $07
    inc bc                                        ; $65B7: $03
    inc bc                                        ; $65B8: $03
    nop                                           ; $65B9: $00
    nop                                           ; $65BA: $00
    nop                                           ; $65BB: $00
    nop                                           ; $65BC: $00
    nop                                           ; $65BD: $00
    nop                                           ; $65BE: $00
    nop                                           ; $65BF: $00
    ld h, b                                       ; $65C0: $60
    ccf                                           ; $65C1: $3F
    ld h, b                                       ; $65C2: $60
    ccf                                           ; $65C3: $3F
    jr c, @+$21                                   ; $65C4: $38 $1F

    rra                                           ; $65C6: $1F
    rlca                                          ; $65C7: $07
    rlca                                          ; $65C8: $07
    nop                                           ; $65C9: $00
    ldh a, [rP1]                                  ; $65CA: $F0 $00
    ld hl, sp+$70                                 ; $65CC: $F8 $70
    ld hl, sp+$70                                 ; $65CE: $F8 $70
    sbc h                                         ; $65D0: $9C
    ld a, b                                       ; $65D1: $78
    adc [hl]                                      ; $65D2: $8E
    ld hl, sp-$09                                 ; $65D3: $F8 $F7
    ld a, [bc]                                    ; $65D5: $0A
    rrca                                          ; $65D6: $0F
    rlca                                          ; $65D7: $07
    rrca                                          ; $65D8: $0F
    rlca                                          ; $65D9: $07
    rra                                           ; $65DA: $1F
    nop                                           ; $65DB: $00
    inc h                                         ; $65DC: $24
    dec de                                        ; $65DD: $1B
    ccf                                           ; $65DE: $3F
    nop                                           ; $65DF: $00
    ld bc, $0300                                  ; $65E0: $01 $00 $03
    ld bc, $0103                                  ; $65E3: $01 $03 $01
    ld [bc], a                                    ; $65E6: $02
    ld bc, $0102                                  ; $65E7: $01 $02 $01
    inc b                                         ; $65EA: $04
    inc bc                                        ; $65EB: $03
    inc c                                         ; $65EC: $0C
    inc bc                                        ; $65ED: $03
    ccf                                           ; $65EE: $3F
    inc c                                         ; $65EF: $0C
    ld e, a                                       ; $65F0: $5F
    daa                                           ; $65F1: $27
    and a                                         ; $65F2: $A7
    ld e, d                                       ; $65F3: $5A
    rst RST_38                                    ; $65F4: $FF
    nop                                           ; $65F5: $00
    nop                                           ; $65F6: $00
    nop                                           ; $65F7: $00
    nop                                           ; $65F8: $00
    nop                                           ; $65F9: $00
    nop                                           ; $65FA: $00
    nop                                           ; $65FB: $00
    nop                                           ; $65FC: $00
    nop                                           ; $65FD: $00
    nop                                           ; $65FE: $00
    nop                                           ; $65FF: $00
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
    inc c                                         ; $661A: $0C
    nop                                           ; $661B: $00
    inc d                                         ; $661C: $14
    ld [$1028], sp                                ; $661D: $08 $28 $10
    add b                                         ; $6620: $80
    nop                                           ; $6621: $00
    add b                                         ; $6622: $80
    nop                                           ; $6623: $00
    add b                                         ; $6624: $80
    nop                                           ; $6625: $00
    add b                                         ; $6626: $80
    nop                                           ; $6627: $00
    add b                                         ; $6628: $80
    nop                                           ; $6629: $00
    nop                                           ; $662A: $00
    nop                                           ; $662B: $00
    nop                                           ; $662C: $00
    nop                                           ; $662D: $00
    nop                                           ; $662E: $00
    nop                                           ; $662F: $00
    nop                                           ; $6630: $00
    nop                                           ; $6631: $00
    nop                                           ; $6632: $00
    nop                                           ; $6633: $00
    nop                                           ; $6634: $00
    nop                                           ; $6635: $00
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
    inc bc                                        ; $664A: $03
    nop                                           ; $664B: $00
    rlca                                          ; $664C: $07
    ld [bc], a                                    ; $664D: $02
    ld b, $03                                     ; $664E: $06 $03
    inc b                                         ; $6650: $04
    inc bc                                        ; $6651: $03
    inc b                                         ; $6652: $04
    inc bc                                        ; $6653: $03
    inc b                                         ; $6654: $04
    inc bc                                        ; $6655: $03
    dec c                                         ; $6656: $0D
    inc bc                                        ; $6657: $03
    ccf                                           ; $6658: $3F
    inc c                                         ; $6659: $0C
    ld e, a                                       ; $665A: $5F
    daa                                           ; $665B: $27
    and a                                         ; $665C: $A7
    ld e, d                                       ; $665D: $5A
    rst RST_38                                    ; $665E: $FF
    nop                                           ; $665F: $00
    rlca                                          ; $6660: $07
    inc bc                                        ; $6661: $03
    dec bc                                        ; $6662: $0B
    dec b                                         ; $6663: $05
    rrca                                          ; $6664: $0F
    ld bc, $030F                                  ; $6665: $01 $0F $03
    inc de                                        ; $6668: $13
    inc c                                         ; $6669: $0C
    jr nz, @+$21                                  ; $666A: $20 $1F

    ld h, c                                       ; $666C: $61
    ld e, $BE                                     ; $666D: $1E $BE
    ld h, b                                       ; $666F: $60
    ld hl, sp+$60                                 ; $6670: $F8 $60
    ld a, b                                       ; $6672: $78
    sub b                                         ; $6673: $90
    jr c, @-$0E                                   ; $6674: $38 $F0

    ld [hl], b                                    ; $6676: $70
    ldh [$FF60], a                                ; $6677: $E0 $60
    ret nz                                        ; $6679: $C0

    ret nz                                        ; $667A: $C0

    add b                                         ; $667B: $80
    ret nz                                        ; $667C: $C0

    nop                                           ; $667D: $00
    ret nz                                        ; $667E: $C0

    add b                                         ; $667F: $80
    ldh [$FF3F], a                                ; $6680: $E0 $3F
    ldh [$FFBF], a                                ; $6682: $E0 $BF
    ldh [$FFBF], a                                ; $6684: $E0 $BF
    ldh [$FFBF], a                                ; $6686: $E0 $BF
    ldh [$FFBF], a                                ; $6688: $E0 $BF
    ldh a, [$FF1F]                                ; $668A: $F0 $1F
    ldh a, [$FFDF]                                ; $668C: $F0 $DF
    db $FC                                        ; $668E: $FC
    rrca                                          ; $668F: $0F
    rst RST_28                                    ; $6690: $EF
    inc de                                        ; $6691: $13
    inc hl                                        ; $6692: $23
    inc e                                         ; $6693: $1C
    db $10                                        ; $6694: $10
    rrca                                          ; $6695: $0F
    dec bc                                        ; $6696: $0B
    inc b                                         ; $6697: $04
    dec b                                         ; $6698: $05
    inc bc                                        ; $6699: $03
    rlca                                          ; $669A: $07
    inc bc                                        ; $669B: $03
    inc bc                                        ; $669C: $03
    nop                                           ; $669D: $00
    nop                                           ; $669E: $00
    nop                                           ; $669F: $00
    nop                                           ; $66A0: $00
    rst RST_38                                    ; $66A1: $FF
    ld bc, $07FF                                  ; $66A2: $01 $FF $07
    cp $FE                                        ; $66A5: $FE $FE
    ld hl, sp-$08                                 ; $66A7: $F8 $F8
    nop                                           ; $66A9: $00
    ldh a, [rP1]                                  ; $66AA: $F0 $00
    ld hl, sp+$70                                 ; $66AC: $F8 $70
    ld hl, sp+$70                                 ; $66AE: $F8 $70
    sbc h                                         ; $66B0: $9C
    ld a, b                                       ; $66B1: $78
    adc [hl]                                      ; $66B2: $8E
    ld hl, sp-$09                                 ; $66B3: $F8 $F7
    ld a, [bc]                                    ; $66B5: $0A
    rrca                                          ; $66B6: $0F
    rlca                                          ; $66B7: $07
    rrca                                          ; $66B8: $0F
    rlca                                          ; $66B9: $07
    rrca                                          ; $66BA: $0F
    nop                                           ; $66BB: $00
    ld [de], a                                    ; $66BC: $12
    dec c                                         ; $66BD: $0D
    rra                                           ; $66BE: $1F
    nop                                           ; $66BF: $00
    ld h, b                                       ; $66C0: $60
    ret nz                                        ; $66C1: $C0

    ret nz                                        ; $66C2: $C0

    add b                                         ; $66C3: $80
    add b                                         ; $66C4: $80
    nop                                           ; $66C5: $00
    nop                                           ; $66C6: $00
    nop                                           ; $66C7: $00
    nop                                           ; $66C8: $00
    nop                                           ; $66C9: $00
    nop                                           ; $66CA: $00
    nop                                           ; $66CB: $00
    nop                                           ; $66CC: $00
    nop                                           ; $66CD: $00
    nop                                           ; $66CE: $00
    nop                                           ; $66CF: $00
    nop                                           ; $66D0: $00
    nop                                           ; $66D1: $00
    nop                                           ; $66D2: $00
    nop                                           ; $66D3: $00
    nop                                           ; $66D4: $00
    nop                                           ; $66D5: $00
    add b                                         ; $66D6: $80
    nop                                           ; $66D7: $00
    add b                                         ; $66D8: $80
    nop                                           ; $66D9: $00
    ret nz                                        ; $66DA: $C0

    nop                                           ; $66DB: $00
    ld b, b                                       ; $66DC: $40
    add b                                         ; $66DD: $80
    ret nz                                        ; $66DE: $C0

    nop                                           ; $66DF: $00
    nop                                           ; $66E0: $00
    nop                                           ; $66E1: $00
    rlca                                          ; $66E2: $07
    nop                                           ; $66E3: $00
    jr jr_022_66ED                                ; $66E4: $18 $07

    daa                                           ; $66E6: $27
    jr jr_022_6767                                ; $66E7: $18 $7E

    dec e                                         ; $66E9: $1D
    cp l                                          ; $66EA: $BD
    ld l, d                                       ; $66EB: $6A
    db $FD                                        ; $66EC: $FD

jr_022_66ED:
    ld b, d                                       ; $66ED: $42
    rst RST_20                                    ; $66EE: $E7
    ld e, d                                       ; $66EF: $5A
    ld a, a                                       ; $66F0: $7F
    jr jr_022_670F                                ; $66F1: $18 $1C

    inc bc                                        ; $66F3: $03
    rlca                                          ; $66F4: $07
    nop                                           ; $66F5: $00
    ld [bc], a                                    ; $66F6: $02
    ld bc, $0207                                  ; $66F7: $01 $07 $02
    rlca                                          ; $66FA: $07
    ld [bc], a                                    ; $66FB: $02
    inc bc                                        ; $66FC: $03

jr_022_66FD:
    ld bc, $0103                                  ; $66FD: $01 $03 $01
    inc c                                         ; $6700: $0C
    nop                                           ; $6701: $00
    ld [hl-], a                                   ; $6702: $32
    inc c                                         ; $6703: $0C
    ld c, h                                       ; $6704: $4C
    jr nc, @-$06                                  ; $6705: $30 $F8

    nop                                           ; $6707: $00
    ld [$F8F0], sp                                ; $6708: $08 $F0 $F8
    or b                                          ; $670B: $B0
    cp [hl]                                       ; $670C: $BE
    ld d, b                                       ; $670D: $50
    inc sp                                        ; $670E: $33

jr_022_670F:
    adc $6F                                       ; $670F: $CE $6F
    call c, $83FE                                 ; $6711: $DC $FE $83
    adc c                                         ; $6714: $89
    ld [hl], a                                    ; $6715: $77
    ld l, a                                       ; $6716: $6F
    sub h                                         ; $6717: $94
    rst RST_28                                    ; $6718: $EF
    ld d, e                                       ; $6719: $53
    db $FC                                        ; $671A: $FC
    rrca                                          ; $671B: $0F
    jr nc, jr_022_66FD                            ; $671C: $30 $DF

    or b                                          ; $671E: $B0
    rst RST_18                                    ; $671F: $DF
    nop                                           ; $6720: $00
    nop                                           ; $6721: $00
    ld h, b                                       ; $6722: $60
    nop                                           ; $6723: $00
    and b                                         ; $6724: $A0
    ld b, b                                       ; $6725: $40
    ld h, b                                       ; $6726: $60
    ret nz                                        ; $6727: $C0

    ret nz                                        ; $6728: $C0

    add b                                         ; $6729: $80
    ldh [$FF80], a                                ; $672A: $E0 $80
    ld hl, sp+$00                                 ; $672C: $F8 $00
    rst RST_38                                    ; $672E: $FF
    ldh a, [$FF03]                                ; $672F: $F0 $03
    rst RST_38                                    ; $6731: $FF
    rlca                                          ; $6732: $07
    db $FC                                        ; $6733: $FC
    rlca                                          ; $6734: $07
    db $FC                                        ; $6735: $FC
    inc bc                                        ; $6736: $03
    cp $00                                        ; $6737: $FE $00
    rst RST_38                                    ; $6739: $FF
    ld bc, $03FF                                  ; $673A: $01 $FF $03
    cp $03                                        ; $673D: $FE $03
    cp $00                                        ; $673F: $FE $00
    nop                                           ; $6741: $00
    nop                                           ; $6742: $00
    nop                                           ; $6743: $00
    nop                                           ; $6744: $00
    nop                                           ; $6745: $00
    nop                                           ; $6746: $00
    nop                                           ; $6747: $00
    nop                                           ; $6748: $00
    nop                                           ; $6749: $00
    nop                                           ; $674A: $00
    nop                                           ; $674B: $00
    nop                                           ; $674C: $00
    nop                                           ; $674D: $00
    nop                                           ; $674E: $00
    nop                                           ; $674F: $00
    ret nz                                        ; $6750: $C0

    nop                                           ; $6751: $00
    ldh a, [rP1]                                  ; $6752: $F0 $00
    nop                                           ; $6754: $00
    nop                                           ; $6755: $00
    ldh a, [rP1]                                  ; $6756: $F0 $00
    ld a, b                                       ; $6758: $78
    ldh [$FFF0], a                                ; $6759: $E0 $F0
    nop                                           ; $675B: $00
    ret nz                                        ; $675C: $C0

    nop                                           ; $675D: $00
    ldh a, [rP1]                                  ; $675E: $F0 $00
    nop                                           ; $6760: $00
    rst RST_38                                    ; $6761: $FF
    db $FC                                        ; $6762: $FC
    rst RST_38                                    ; $6763: $FF
    rst RST_38                                    ; $6764: $FF
    rrca                                          ; $6765: $0F
    ccf                                           ; $6766: $3F

jr_022_6767:
    nop                                           ; $6767: $00
    ld e, b                                       ; $6768: $58
    scf                                           ; $6769: $37
    ld a, h                                       ; $676A: $7C
    inc sp                                        ; $676B: $33
    ccf                                           ; $676C: $3F
    inc c                                         ; $676D: $0C
    daa                                           ; $676E: $27
    rra                                           ; $676F: $1F
    inc de                                        ; $6770: $13
    rrca                                          ; $6771: $0F
    dec bc                                        ; $6772: $0B
    ld b, $0B                                     ; $6773: $06 $0B
    ld b, $0F                                     ; $6775: $06 $0F
    nop                                           ; $6777: $00
    rra                                           ; $6778: $1F
    ld c, $7F                                     ; $6779: $0E $7F
    rrca                                          ; $677B: $0F
    adc a                                         ; $677C: $8F
    ld [hl], a                                    ; $677D: $77
    rst RST_38                                    ; $677E: $FF
    nop                                           ; $677F: $00
    nop                                           ; $6780: $00
    rst RST_38                                    ; $6781: $FF
    nop                                           ; $6782: $00
    rst RST_38                                    ; $6783: $FF
    rst RST_38                                    ; $6784: $FF
    rst RST_38                                    ; $6785: $FF
    rst RST_38                                    ; $6786: $FF
    rra                                           ; $6787: $1F
    ccf                                           ; $6788: $3F
    ret nz                                        ; $6789: $C0

    ret z                                         ; $678A: $C8

    rlca                                          ; $678B: $07
    inc b                                         ; $678C: $04
    inc bc                                        ; $678D: $03
    add e                                         ; $678E: $83
    nop                                           ; $678F: $00
    add l                                         ; $6790: $85
    inc bc                                        ; $6791: $03
    rlca                                          ; $6792: $07
    inc bc                                        ; $6793: $03
    inc bc                                        ; $6794: $03
    nop                                           ; $6795: $00
    nop                                           ; $6796: $00
    nop                                           ; $6797: $00
    nop                                           ; $6798: $00
    nop                                           ; $6799: $00
    add b                                         ; $679A: $80
    nop                                           ; $679B: $00
    add b                                         ; $679C: $80
    nop                                           ; $679D: $00
    add b                                         ; $679E: $80
    nop                                           ; $679F: $00
    ld bc, $0FFF                                  ; $67A0: $01 $FF $0F
    rst RST_38                                    ; $67A3: $FF
    rst RST_38                                    ; $67A4: $FF
    rst RST_38                                    ; $67A5: $FF
    rst RST_38                                    ; $67A6: $FF
    cp $FF                                        ; $67A7: $FE $FF
    nop                                           ; $67A9: $00
    ld [hl], b                                    ; $67AA: $70
    add b                                         ; $67AB: $80
    ld a, b                                       ; $67AC: $78
    or b                                          ; $67AD: $B0
    db $FC                                        ; $67AE: $FC
    ld a, b                                       ; $67AF: $78
    cp $7C                                        ; $67B0: $FE $7C
    adc a                                         ; $67B2: $8F
    ld a, h                                       ; $67B3: $7C
    ld [hl], e                                    ; $67B4: $73
    dec c                                         ; $67B5: $0D
    rrca                                          ; $67B6: $0F
    ld bc, $0001                                  ; $67B7: $01 $01 $00
    nop                                           ; $67BA: $00
    nop                                           ; $67BB: $00
    nop                                           ; $67BC: $00
    nop                                           ; $67BD: $00
    nop                                           ; $67BE: $00
    nop                                           ; $67BF: $00
    rst RST_38                                    ; $67C0: $FF
    ld hl, sp-$01                                 ; $67C1: $F8 $FF
    ret nz                                        ; $67C3: $C0

    ld hl, sp+$00                                 ; $67C4: $F8 $00
    nop                                           ; $67C6: $00
    nop                                           ; $67C7: $00
    nop                                           ; $67C8: $00
    nop                                           ; $67C9: $00
    nop                                           ; $67CA: $00
    nop                                           ; $67CB: $00
    nop                                           ; $67CC: $00
    nop                                           ; $67CD: $00
    nop                                           ; $67CE: $00
    nop                                           ; $67CF: $00
    ret nz                                        ; $67D0: $C0

    nop                                           ; $67D1: $00
    ldh [$FFC0], a                                ; $67D2: $E0 $C0
    ldh [$FFC0], a                                ; $67D4: $E0 $C0
    ldh a, [$FFE0]                                ; $67D6: $F0 $E0
    ldh a, [rLCDC]                                ; $67D8: $F0 $40
    ld c, b                                       ; $67DA: $48
    jr nc, jr_022_6805                            ; $67DB: $30 $28

    db $10                                        ; $67DD: $10
    jr jr_022_67E0                                ; $67DE: $18 $00

jr_022_67E0:
    nop                                           ; $67E0: $00
    nop                                           ; $67E1: $00
    nop                                           ; $67E2: $00
    nop                                           ; $67E3: $00
    nop                                           ; $67E4: $00
    nop                                           ; $67E5: $00
    nop                                           ; $67E6: $00
    nop                                           ; $67E7: $00
    nop                                           ; $67E8: $00
    nop                                           ; $67E9: $00
    ld a, a                                       ; $67EA: $7F
    nop                                           ; $67EB: $00
    and [hl]                                      ; $67EC: $A6
    ld e, e                                       ; $67ED: $5B
    rst RST_38                                    ; $67EE: $FF
    ld e, h                                       ; $67EF: $5C
    rst RST_38                                    ; $67F0: $FF
    ld c, a                                       ; $67F1: $4F
    ld e, a                                       ; $67F2: $5F
    cpl                                           ; $67F3: $2F
    ld a, a                                       ; $67F4: $7F
    jr nc, @+$81                                  ; $67F5: $30 $7F

    inc hl                                        ; $67F7: $23
    inc a                                         ; $67F8: $3C
    rra                                           ; $67F9: $1F
    rra                                           ; $67FA: $1F
    nop                                           ; $67FB: $00
    rlca                                          ; $67FC: $07
    inc bc                                        ; $67FD: $03
    inc bc                                        ; $67FE: $03
    nop                                           ; $67FF: $00
    nop                                           ; $6800: $00
    nop                                           ; $6801: $00
    nop                                           ; $6802: $00
    nop                                           ; $6803: $00

jr_022_6804:
    inc e                                         ; $6804: $1C

jr_022_6805:
    nop                                           ; $6805: $00
    ld [hl+], a                                   ; $6806: $22
    inc e                                         ; $6807: $1C
    ld e, h                                       ; $6808: $5C
    jr nz, jr_022_6804                            ; $6809: $20 $F9

    nop                                           ; $680B: $00
    rrca                                          ; $680C: $0F
    ldh a, [$FFF9]                                ; $680D: $F0 $F9
    halt                                          ; $680F: $76
    ld hl, sp+$77                                 ; $6810: $F8 $77
    rst RST_38                                    ; $6812: $FF
    ld h, b                                       ; $6813: $60
    rst RST_38                                    ; $6814: $FF
    rra                                           ; $6815: $1F
    ldh a, [rIE]                                  ; $6816: $F0 $FF
    nop                                           ; $6818: $00
    rst RST_38                                    ; $6819: $FF
    add b                                         ; $681A: $80
    ld a, a                                       ; $681B: $7F
    rst RST_38                                    ; $681C: $FF
    rst RST_38                                    ; $681D: $FF
    rst RST_38                                    ; $681E: $FF
    nop                                           ; $681F: $00
    add hl, de                                    ; $6820: $19
    nop                                           ; $6821: $00
    ld d, $09                                     ; $6822: $16 $09
    ld d, $09                                     ; $6824: $16 $09
    dec de                                        ; $6826: $1B
    dec c                                         ; $6827: $0D
    rst RST_38                                    ; $6828: $FF
    nop                                           ; $6829: $00
    ld [$08F7], sp                                ; $682A: $08 $F7 $08
    rst RST_30                                    ; $682D: $F7
    dec bc                                        ; $682E: $0B
    db $F4                                        ; $682F: $F4
    sbc a                                         ; $6830: $9F
    ld h, e                                       ; $6831: $63
    rst RST_38                                    ; $6832: $FF
    rra                                           ; $6833: $1F
    ldh a, [rIE]                                  ; $6834: $F0 $FF
    nop                                           ; $6836: $00
    rst RST_38                                    ; $6837: $FF
    nop                                           ; $6838: $00
    rst RST_38                                    ; $6839: $FF
    nop                                           ; $683A: $00
    rst RST_38                                    ; $683B: $FF
    cp $FF                                        ; $683C: $FE $FF
    rst RST_38                                    ; $683E: $FF
    rlca                                          ; $683F: $07
    nop                                           ; $6840: $00
    nop                                           ; $6841: $00
    nop                                           ; $6842: $00
    nop                                           ; $6843: $00
    and b                                         ; $6844: $A0
    nop                                           ; $6845: $00
    ld d, c                                       ; $6846: $51
    and b                                         ; $6847: $A0
    ld a, d                                       ; $6848: $7A
    add c                                         ; $6849: $81
    db $FD                                        ; $684A: $FD
    ld a, e                                       ; $684B: $7B
    rst RST_38                                    ; $684C: $FF
    ld b, $06                                     ; $684D: $06 $06
    ld hl, sp+$01                                 ; $684F: $F8 $01
    cp $1F                                        ; $6851: $FE $1F
    ldh [rIE], a                                  ; $6853: $E0 $FF
    rrca                                          ; $6855: $0F
    rst RST_38                                    ; $6856: $FF
    rst RST_38                                    ; $6857: $FF
    nop                                           ; $6858: $00
    rst RST_38                                    ; $6859: $FF
    nop                                           ; $685A: $00
    rst RST_38                                    ; $685B: $FF
    nop                                           ; $685C: $00
    rst RST_38                                    ; $685D: $FF
    nop                                           ; $685E: $00
    rst RST_38                                    ; $685F: $FF
    nop                                           ; $6860: $00
    nop                                           ; $6861: $00
    nop                                           ; $6862: $00
    nop                                           ; $6863: $00
    nop                                           ; $6864: $00
    nop                                           ; $6865: $00
    add b                                         ; $6866: $80
    nop                                           ; $6867: $00
    add b                                         ; $6868: $80
    nop                                           ; $6869: $00
    add b                                         ; $686A: $80
    nop                                           ; $686B: $00
    nop                                           ; $686C: $00
    nop                                           ; $686D: $00
    db $FC                                        ; $686E: $FC
    nop                                           ; $686F: $00
    inc b                                         ; $6870: $04
    ld hl, sp-$01                                 ; $6871: $F8 $FF
    nop                                           ; $6873: $00
    rst RST_38                                    ; $6874: $FF
    cp $FF                                        ; $6875: $FE $FF
    rst RST_38                                    ; $6877: $FF
    rlca                                          ; $6878: $07
    rst RST_38                                    ; $6879: $FF
    nop                                           ; $687A: $00
    rst RST_38                                    ; $687B: $FF
    nop                                           ; $687C: $00
    rst RST_38                                    ; $687D: $FF
    nop                                           ; $687E: $00
    rst RST_38                                    ; $687F: $FF
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
    db $FC                                        ; $6892: $FC
    nop                                           ; $6893: $00
    rst RST_38                                    ; $6894: $FF
    ret nz                                        ; $6895: $C0

    rst RST_38                                    ; $6896: $FF
    cp $7F                                        ; $6897: $FE $7F
    ld hl, sp+$07                                 ; $6899: $F8 $07
    rst RST_38                                    ; $689B: $FF
    rra                                           ; $689C: $1F
    cp $FF                                        ; $689D: $FE $FF
    ldh a, [rP1]                                  ; $689F: $F0 $00
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
    add b                                         ; $68B0: $80
    nop                                           ; $68B1: $00
    nop                                           ; $68B2: $00
    nop                                           ; $68B3: $00
    ldh [rP1], a                                  ; $68B4: $E0 $00
    ld hl, sp-$40                                 ; $68B6: $F8 $C0
    ldh a, [rP1]                                  ; $68B8: $F0 $00
    ret nz                                        ; $68BA: $C0

    nop                                           ; $68BB: $00
    ldh a, [rP1]                                  ; $68BC: $F0 $00
    ret nz                                        ; $68BE: $C0

    nop                                           ; $68BF: $00
    ld [bc], a                                    ; $68C0: $02
    ld bc, $0001                                  ; $68C1: $01 $01 $00
    ld [bc], a                                    ; $68C4: $02
    ld bc, $0334                                  ; $68C5: $01 $34 $03
    ld e, b                                       ; $68C8: $58
    scf                                           ; $68C9: $37
    ld a, h                                       ; $68CA: $7C
    inc sp                                        ; $68CB: $33
    ccf                                           ; $68CC: $3F
    inc c                                         ; $68CD: $0C
    daa                                           ; $68CE: $27
    rra                                           ; $68CF: $1F
    inc de                                        ; $68D0: $13
    rrca                                          ; $68D1: $0F
    dec bc                                        ; $68D2: $0B
    ld b, $0B                                     ; $68D3: $06 $0B
    ld b, $0F                                     ; $68D5: $06 $0F
    nop                                           ; $68D7: $00
    rra                                           ; $68D8: $1F
    ld c, $7F                                     ; $68D9: $0E $7F
    rrca                                          ; $68DB: $0F
    adc a                                         ; $68DC: $8F
    ld [hl], a                                    ; $68DD: $77
    rst RST_38                                    ; $68DE: $FF
    nop                                           ; $68DF: $00
    rlca                                          ; $68E0: $07
    ld a, [$02FF]                                 ; $68E1: $FA $FF $02
    rst RST_38                                    ; $68E4: $FF
    ld bc, $8679                                  ; $68E5: $01 $79 $86
    jr nc, @-$2F                                  ; $68E8: $30 $CF

    ret z                                         ; $68EA: $C8

    rlca                                          ; $68EB: $07
    inc b                                         ; $68EC: $04
    inc bc                                        ; $68ED: $03
    add e                                         ; $68EE: $83
    nop                                           ; $68EF: $00
    add l                                         ; $68F0: $85
    inc bc                                        ; $68F1: $03
    rlca                                          ; $68F2: $07
    inc bc                                        ; $68F3: $03
    inc bc                                        ; $68F4: $03
    nop                                           ; $68F5: $00
    nop                                           ; $68F6: $00
    nop                                           ; $68F7: $00
    nop                                           ; $68F8: $00
    nop                                           ; $68F9: $00
    add b                                         ; $68FA: $80
    nop                                           ; $68FB: $00
    add b                                         ; $68FC: $80
    nop                                           ; $68FD: $00
    add b                                         ; $68FE: $80
    nop                                           ; $68FF: $00
    ld a, a                                       ; $6900: $7F
    sbc c                                         ; $6901: $99
    db $FD                                        ; $6902: $FD
    ld a, [de]                                    ; $6903: $1A
    rst RST_38                                    ; $6904: $FF
    or $FE                                        ; $6905: $F6 $FE
    inc c                                         ; $6907: $0C
    sbc h                                         ; $6908: $9C
    nop                                           ; $6909: $00
    ld [hl], b                                    ; $690A: $70
    add b                                         ; $690B: $80
    ld a, b                                       ; $690C: $78
    or b                                          ; $690D: $B0
    db $FC                                        ; $690E: $FC
    ld a, b                                       ; $690F: $78
    cp $7C                                        ; $6910: $FE $7C
    adc a                                         ; $6912: $8F
    ld a, h                                       ; $6913: $7C
    ld [hl], e                                    ; $6914: $73
    dec c                                         ; $6915: $0D
    rrca                                          ; $6916: $0F
    ld bc, $0001                                  ; $6917: $01 $01 $00
    nop                                           ; $691A: $00
    nop                                           ; $691B: $00
    nop                                           ; $691C: $00
    nop                                           ; $691D: $00
    nop                                           ; $691E: $00
    nop                                           ; $691F: $00
    nop                                           ; $6920: $00
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
    ret nz                                        ; $6930: $C0

    nop                                           ; $6931: $00
    ldh [$FFC0], a                                ; $6932: $E0 $C0
    ldh [$FFC0], a                                ; $6934: $E0 $C0
    ldh a, [$FFE0]                                ; $6936: $F0 $E0
    ldh a, [rLCDC]                                ; $6938: $F0 $40
    ld c, b                                       ; $693A: $48
    jr nc, jr_022_6965                            ; $693B: $30 $28

    db $10                                        ; $693D: $10
    jr jr_022_6940                                ; $693E: $18 $00

jr_022_6940:
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
    rlca                                          ; $694E: $07
    nop                                           ; $694F: $00
    ld [$7707], sp                                ; $6950: $08 $07 $77
    inc c                                         ; $6953: $0C
    sbc [hl]                                      ; $6954: $9E
    ld l, c                                       ; $6955: $69
    ld a, h                                       ; $6956: $7C
    dec de                                        ; $6957: $1B
    ld a, [hl]                                    ; $6958: $7E
    add hl, de                                    ; $6959: $19
    sbc a                                         ; $695A: $9F

jr_022_695B:
    ld l, h                                       ; $695B: $6C
    ld a, a                                       ; $695C: $7F
    rlca                                          ; $695D: $07
    rlca                                          ; $695E: $07
    nop                                           ; $695F: $00
    nop                                           ; $6960: $00
    nop                                           ; $6961: $00
    nop                                           ; $6962: $00
    nop                                           ; $6963: $00
    nop                                           ; $6964: $00

jr_022_6965:
    nop                                           ; $6965: $00
    inc bc                                        ; $6966: $03
    nop                                           ; $6967: $00
    ld a, [de]                                    ; $6968: $1A
    ld bc, $1927                                  ; $6969: $01 $27 $19
    ld hl, $A01E                                  ; $696C: $21 $1E $A0
    rra                                           ; $696F: $1F
    pop hl                                        ; $6970: $E1
    sbc [hl]                                      ; $6971: $9E
    sub c                                         ; $6972: $91
    ld l, [hl]                                    ; $6973: $6E
    ld [de], a                                    ; $6974: $12
    db $ED                                        ; $6975: $ED
    ld a, [bc]                                    ; $6976: $0A
    push af                                       ; $6977: $F5
    ld [hl], $C1                                  ; $6978: $36 $C1
    pop hl                                        ; $697A: $E1
    nop                                           ; $697B: $00
    pop bc                                        ; $697C: $C1
    nop                                           ; $697D: $00
    add b                                         ; $697E: $80
    nop                                           ; $697F: $00
    nop                                           ; $6980: $00
    nop                                           ; $6981: $00
    nop                                           ; $6982: $00
    nop                                           ; $6983: $00
    inc d                                         ; $6984: $14
    nop                                           ; $6985: $00
    ld a, [hl+]                                   ; $6986: $2A
    inc d                                         ; $6987: $14
    rst RST_08                                    ; $6988: $CF
    jr nc, jr_022_69EA                            ; $6989: $30 $5F

    xor a                                         ; $698B: $AF
    rst RST_38                                    ; $698C: $FF
    and b                                         ; $698D: $A0
    ldh [$FF1F], a                                ; $698E: $E0 $1F
    nop                                           ; $6990: $00
    rst RST_38                                    ; $6991: $FF
    nop                                           ; $6992: $00
    rst RST_38                                    ; $6993: $FF
    nop                                           ; $6994: $00
    rst RST_38                                    ; $6995: $FF
    nop                                           ; $6996: $00
    rst RST_38                                    ; $6997: $FF
    nop                                           ; $6998: $00
    rst RST_38                                    ; $6999: $FF
    nop                                           ; $699A: $00
    rst RST_38                                    ; $699B: $FF
    ld a, [hl]                                    ; $699C: $7E
    add c                                         ; $699D: $81
    pop bc                                        ; $699E: $C1
    ld a, $00                                     ; $699F: $3E $00
    nop                                           ; $69A1: $00
    nop                                           ; $69A2: $00
    nop                                           ; $69A3: $00
    nop                                           ; $69A4: $00
    nop                                           ; $69A5: $00
    jr nc, jr_022_69A8                            ; $69A6: $30 $00

jr_022_69A8:
    ld d, b                                       ; $69A8: $50
    jr nz, jr_022_695B                            ; $69A9: $20 $B0

    ld h, b                                       ; $69AB: $60
    ldh [$FFC0], a                                ; $69AC: $E0 $C0
    ret c                                         ; $69AE: $D8

    nop                                           ; $69AF: $00
    ld h, $D8                                     ; $69B0: $26 $D8
    ld b, c                                       ; $69B2: $41
    cp [hl]                                       ; $69B3: $BE
    ld b, b                                       ; $69B4: $40
    cp a                                          ; $69B5: $BF
    ld a, a                                       ; $69B6: $7F
    add b                                         ; $69B7: $80
    inc hl                                        ; $69B8: $23
    call c, $BC43                                 ; $69B9: $DC $43 $BC
    ld b, a                                       ; $69BC: $47
    cp b                                          ; $69BD: $B8
    rst RST_00                                    ; $69BE: $C7
    dec sp                                        ; $69BF: $3B
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
    nop                                           ; $69D0: $00

jr_022_69D1:
    nop                                           ; $69D1: $00
    add b                                         ; $69D2: $80
    nop                                           ; $69D3: $00
    ld b, b                                       ; $69D4: $40
    add b                                         ; $69D5: $80
    ld b, b                                       ; $69D6: $40
    add b                                         ; $69D7: $80
    add b                                         ; $69D8: $80
    nop                                           ; $69D9: $00
    ldh [rP1], a                                  ; $69DA: $E0 $00

jr_022_69DC:
    ret nc                                        ; $69DC: $D0

    ld h, b                                       ; $69DD: $60
    ldh a, [rNR41]                                ; $69DE: $F0 $20
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

jr_022_69EA:
    nop                                           ; $69EA: $00
    nop                                           ; $69EB: $00
    nop                                           ; $69EC: $00
    nop                                           ; $69ED: $00
    rlca                                          ; $69EE: $07
    nop                                           ; $69EF: $00
    jr jr_022_69F9                                ; $69F0: $18 $07

    daa                                           ; $69F2: $27
    add hl, de                                    ; $69F3: $19
    ld a, a                                       ; $69F4: $7F
    ld e, $BF                                     ; $69F5: $1E $BF
    ld l, [hl]                                    ; $69F7: $6E
    rst RST_38                                    ; $69F8: $FF

jr_022_69F9:
    ld b, d                                       ; $69F9: $42
    ldh [c], a                                    ; $69FA: $E2
    ld e, h                                       ; $69FB: $5C
    ld a, [hl]                                    ; $69FC: $7E
    inc e                                         ; $69FD: $1C
    inc e                                         ; $69FE: $1C
    nop                                           ; $69FF: $00
    inc e                                         ; $6A00: $1C
    nop                                           ; $6A01: $00
    ld [$5314], a                                 ; $6A02: $EA $14 $53
    xor h                                         ; $6A05: $AC
    sub $AD                                       ; $6A06: $D6 $AD
    rst RST_38                                    ; $6A08: $FF
    xor b                                         ; $6A09: $A8
    ld hl, sp-$79                                 ; $6A0A: $F8 $87
    add $B9                                       ; $6A0C: $C6 $B9

jr_022_6A0E:
    cp $05                                        ; $6A0E: $FE $05
    ld l, $11                                     ; $6A10: $2E $11
    ld [hl], e                                    ; $6A12: $73
    ld l, $7B                                     ; $6A13: $2E $7B
    inc l                                         ; $6A15: $2C
    ccf                                           ; $6A16: $3F
    inc de                                        ; $6A17: $13
    ccf                                           ; $6A18: $3F
    ld e, $FF                                     ; $6A19: $1E $FF
    jr c, jr_022_69DC                             ; $6A1B: $38 $BF

    ld e, a                                       ; $6A1D: $5F
    rst RST_38                                    ; $6A1E: $FF
    rra                                           ; $6A1F: $1F
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
    and $00                                       ; $6A2A: $E6 $00
    ld a, [hl-]                                   ; $6A2C: $3A
    db $E4                                        ; $6A2D: $E4
    or $CC                                        ; $6A2E: $F6 $CC

jr_022_6A30:
    db $EC                                        ; $6A30: $EC
    jr c, jr_022_69D1                             ; $6A31: $38 $9E

    ld a, b                                       ; $6A33: $78
    ld sp, hl                                     ; $6A34: $F9
    halt                                          ; $6A35: $76
    ldh a, [$FF6F]                                ; $6A36: $F0 $6F
    db $FC                                        ; $6A38: $FC
    inc bc                                        ; $6A39: $03
    xor $5D                                       ; $6A3A: $EE $5D
    rst RST_18                                    ; $6A3C: $DF
    jr nc, jr_022_6A30                            ; $6A3D: $30 $F1

    adc [hl]                                      ; $6A3F: $8E
    nop                                           ; $6A40: $00
    nop                                           ; $6A41: $00
    nop                                           ; $6A42: $00
    nop                                           ; $6A43: $00
    nop                                           ; $6A44: $00
    nop                                           ; $6A45: $00
    nop                                           ; $6A46: $00
    nop                                           ; $6A47: $00
    add b                                         ; $6A48: $80
    nop                                           ; $6A49: $00
    ld b, b                                       ; $6A4A: $40
    add b                                         ; $6A4B: $80
    jr nz, jr_022_6A0E                            ; $6A4C: $20 $C0

    ldh [rP1], a                                  ; $6A4E: $E0 $00
    ldh a, [rP1]                                  ; $6A50: $F0 $00
    db $FC                                        ; $6A52: $FC
    ld [hl], b                                    ; $6A53: $70
    ldh a, [c]                                    ; $6A54: $F2
    ld l, h                                       ; $6A55: $6C
    db $FC                                        ; $6A56: $FC
    ldh a, [$FFFC]                                ; $6A57: $F0 $FC
    ld [hl], b                                    ; $6A59: $70
    ldh a, [c]                                    ; $6A5A: $F2
    ld l, h                                       ; $6A5B: $6C
    db $FC                                        ; $6A5C: $FC
    ld [hl], b                                    ; $6A5D: $70
    ld [hl], b                                    ; $6A5E: $70
    nop                                           ; $6A5F: $00
    ld a, a                                       ; $6A60: $7F
    ld [hl-], a                                   ; $6A61: $32
    ccf                                           ; $6A62: $3F
    inc c                                         ; $6A63: $0C
    rra                                           ; $6A64: $1F
    nop                                           ; $6A65: $00
    ld h, e                                       ; $6A66: $63
    inc e                                         ; $6A67: $1C
    add c                                         ; $6A68: $81
    ld a, [hl]                                    ; $6A69: $7E
    add $38                                       ; $6A6A: $C6 $38
    ld hl, sp-$40                                 ; $6A6C: $F8 $C0
    ld a, b                                       ; $6A6E: $78
    ldh a, [$FF38]                                ; $6A6F: $F0 $38
    ldh a, [$FFB0]                                ; $6A71: $F0 $B0
    ld h, b                                       ; $6A73: $60
    or b                                          ; $6A74: $B0
    ld h, b                                       ; $6A75: $60
    ldh a, [rP1]                                  ; $6A76: $F0 $00
    ldh a, [$FFE0]                                ; $6A78: $F0 $E0
    ld hl, sp-$10                                 ; $6A7A: $F8 $F0
    ld hl, sp+$70                                 ; $6A7C: $F8 $70
    ld hl, sp+$00                                 ; $6A7E: $F8 $00
    cp a                                          ; $6A80: $BF
    ld l, h                                       ; $6A81: $6C
    cp a                                          ; $6A82: $BF
    ld l, l                                       ; $6A83: $6D
    rst RST_38                                    ; $6A84: $FF
    adc h                                         ; $6A85: $8C
    rst RST_18                                    ; $6A86: $DF
    or a                                          ; $6A87: $B7
    rst RST_38                                    ; $6A88: $FF
    scf                                           ; $6A89: $37
    rst RST_38                                    ; $6A8A: $FF
    nop                                           ; $6A8B: $00
    ldh a, [rP1]                                  ; $6A8C: $F0 $00
    adc b                                         ; $6A8E: $88
    ld [hl], b                                    ; $6A8F: $70
    add h                                         ; $6A90: $84
    ld a, b                                       ; $6A91: $78
    ld b, d                                       ; $6A92: $42
    inc a                                         ; $6A93: $3C
    inc hl                                        ; $6A94: $23
    inc e                                         ; $6A95: $1C
    rra                                           ; $6A96: $1F
    inc bc                                        ; $6A97: $03
    rla                                           ; $6A98: $17
    dec c                                         ; $6A99: $0D
    ld e, $0D                                     ; $6A9A: $1E $0D
    ld c, $01                                     ; $6A9C: $0E $01
    ld bc, $C000                                  ; $6A9E: $01 $00 $C0
    nop                                           ; $6AA1: $00
    ldh [$FFC0], a                                ; $6AA2: $E0 $C0
    ldh a, [$FFE0]                                ; $6AA4: $F0 $E0
    ldh a, [$FFE0]                                ; $6AA6: $F0 $E0
    inc a                                         ; $6AA8: $3C
    ldh a, [$FFDE]                                ; $6AA9: $F0 $DE
    inc [hl]                                      ; $6AAB: $34
    ccf                                           ; $6AAC: $3F
    ld c, $1F                                     ; $6AAD: $0E $1F
    ld c, $1F                                     ; $6AAF: $0E $1F
    nop                                           ; $6AB1: $00
    add hl, hl                                    ; $6AB2: $29
    ld d, $3F                                     ; $6AB3: $16 $3F
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
    inc bc                                        ; $6AC0: $03
    nop                                           ; $6AC1: $00
    dec b                                         ; $6AC2: $05
    inc bc                                        ; $6AC3: $03
    rlca                                          ; $6AC4: $07
    inc bc                                        ; $6AC5: $03
    inc bc                                        ; $6AC6: $03
    nop                                           ; $6AC7: $00
    ld [bc], a                                    ; $6AC8: $02
    ld bc, $0001                                  ; $6AC9: $01 $01 $00
    nop                                           ; $6ACC: $00
    nop                                           ; $6ACD: $00
    nop                                           ; $6ACE: $00
    nop                                           ; $6ACF: $00
    nop                                           ; $6AD0: $00
    nop                                           ; $6AD1: $00
    ld bc, $0700                                  ; $6AD2: $01 $00 $07
    nop                                           ; $6AD5: $00
    ld [$0F07], sp                                ; $6AD6: $08 $07 $0F
    nop                                           ; $6AD9: $00
    nop                                           ; $6ADA: $00
    nop                                           ; $6ADB: $00
    nop                                           ; $6ADC: $00
    nop                                           ; $6ADD: $00
    nop                                           ; $6ADE: $00
    nop                                           ; $6ADF: $00
    rst RST_38                                    ; $6AE0: $FF
    rla                                           ; $6AE1: $17
    ld a, a                                       ; $6AE2: $7F
    nop                                           ; $6AE3: $00
    nop                                           ; $6AE4: $00
    nop                                           ; $6AE5: $00
    dec c                                         ; $6AE6: $0D
    nop                                           ; $6AE7: $00
    ld d, $0D                                     ; $6AE8: $16 $0D
    rra                                           ; $6AEA: $1F
    inc c                                         ; $6AEB: $0C
    rrca                                          ; $6AEC: $0F
    inc bc                                        ; $6AED: $03
    add hl, bc                                    ; $6AEE: $09
    rlca                                          ; $6AEF: $07
    inc b                                         ; $6AF0: $04
    inc bc                                        ; $6AF1: $03
    ld [bc], a                                    ; $6AF2: $02
    ld bc, $0102                                  ; $6AF3: $01 $02 $01
    inc bc                                        ; $6AF6: $03
    nop                                           ; $6AF7: $00
    rlca                                          ; $6AF8: $07
    inc bc                                        ; $6AF9: $03
    rra                                           ; $6AFA: $1F
    inc bc                                        ; $6AFB: $03
    inc hl                                        ; $6AFC: $23
    dec e                                         ; $6AFD: $1D
    ccf                                           ; $6AFE: $3F
    nop                                           ; $6AFF: $00
    rst RST_38                                    ; $6B00: $FF
    ld h, h                                       ; $6B01: $64
    rst RST_38                                    ; $6B02: $FF
    jr jr_022_6B84                                ; $6B03: $18 $7F

    nop                                           ; $6B05: $00
    add a                                         ; $6B06: $87
    ld a, b                                       ; $6B07: $78
    rlca                                          ; $6B08: $07
    ld hl, sp+$18                                 ; $6B09: $F8 $18
    ldh [$FFE0], a                                ; $6B0B: $E0 $E0
    nop                                           ; $6B0D: $00
    ldh [$FFC0], a                                ; $6B0E: $E0 $C0
    ldh [$FFC0], a                                ; $6B10: $E0 $C0
    ret nz                                        ; $6B12: $C0

    add b                                         ; $6B13: $80
    ret nz                                        ; $6B14: $C0

    add b                                         ; $6B15: $80
    ret nz                                        ; $6B16: $C0

    nop                                           ; $6B17: $00
    ret nz                                        ; $6B18: $C0

    add b                                         ; $6B19: $80
    ldh [$FFC0], a                                ; $6B1A: $E0 $C0
    ldh [$FFC0], a                                ; $6B1C: $E0 $C0
    ldh [rP1], a                                  ; $6B1E: $E0 $00
    ei                                            ; $6B20: $FB
    ld b, $E7                                     ; $6B21: $06 $E7
    ld bc, $00E3                                  ; $6B23: $01 $E3 $00
    sub b                                         ; $6B26: $90
    ld h, b                                       ; $6B27: $60
    ld [$84F0], sp                                ; $6B28: $08 $F0 $84
    ld a, b                                       ; $6B2B: $78
    ld b, a                                       ; $6B2C: $47
    jr c, jr_022_6B6E                             ; $6B2D: $38 $3F

    inc bc                                        ; $6B2F: $03
    rla                                           ; $6B30: $17
    dec c                                         ; $6B31: $0D
    rra                                           ; $6B32: $1F
    dec c                                         ; $6B33: $0D
    inc c                                         ; $6B34: $0C
    inc bc                                        ; $6B35: $03
    inc bc                                        ; $6B36: $03
    nop                                           ; $6B37: $00
    nop                                           ; $6B38: $00
    nop                                           ; $6B39: $00
    nop                                           ; $6B3A: $00
    nop                                           ; $6B3B: $00
    nop                                           ; $6B3C: $00
    nop                                           ; $6B3D: $00
    nop                                           ; $6B3E: $00
    nop                                           ; $6B3F: $00
    ld a, h                                       ; $6B40: $7C
    jr c, jr_022_6BBF                             ; $6B41: $38 $7C

    jr c, jr_022_6BC3                             ; $6B43: $38 $7E

    nop                                           ; $6B45: $00
    sub d                                         ; $6B46: $92
    ld l, h                                       ; $6B47: $6C
    cp $00                                        ; $6B48: $FE $00

jr_022_6B4A:
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
    nop                                           ; $6B56: $00
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

jr_022_6B6E:
    nop                                           ; $6B6E: $00
    nop                                           ; $6B6F: $00
    nop                                           ; $6B70: $00
    nop                                           ; $6B71: $00
    inc c                                         ; $6B72: $0C
    nop                                           ; $6B73: $00
    ld a, [hl]                                    ; $6B74: $7E
    inc c                                         ; $6B75: $0C
    or e                                          ; $6B76: $B3
    ld l, h                                       ; $6B77: $6C
    cp a                                          ; $6B78: $BF
    ld l, l                                       ; $6B79: $6D
    ld a, a                                       ; $6B7A: $7F
    ld bc, $75BF                                  ; $6B7B: $01 $BF $75
    cp a                                          ; $6B7E: $BF
    ld [hl], l                                    ; $6B7F: $75
    ld d, $00                                     ; $6B80: $16 $00
    ld a, [hl+]                                   ; $6B82: $2A
    inc d                                         ; $6B83: $14

jr_022_6B84:
    ld d, e                                       ; $6B84: $53
    inc l                                         ; $6B85: $2C
    ld d, [hl]                                    ; $6B86: $56
    dec l                                         ; $6B87: $2D
    ld a, a                                       ; $6B88: $7F
    jr z, jr_022_6C03                             ; $6B89: $28 $78

    rlca                                          ; $6B8B: $07
    ld b, [hl]                                    ; $6B8C: $46
    add hl, sp                                    ; $6B8D: $39

jr_022_6B8E:
    ld a, [hl]                                    ; $6B8E: $7E
    dec b                                         ; $6B8F: $05
    ld l, $11                                     ; $6B90: $2E $11
    ld [hl], e                                    ; $6B92: $73
    ld c, $7B                                     ; $6B93: $0E $7B
    inc l                                         ; $6B95: $2C
    rst RST_38                                    ; $6B96: $FF
    inc de                                        ; $6B97: $13
    rst RST_38                                    ; $6B98: $FF
    call c, $B8FF                                 ; $6B99: $DC $FF $B8
    cp a                                          ; $6B9C: $BF
    ld e, a                                       ; $6B9D: $5F
    rst RST_38                                    ; $6B9E: $FF
    rra                                           ; $6B9F: $1F
    nop                                           ; $6BA0: $00
    nop                                           ; $6BA1: $00
    and $00                                       ; $6BA2: $E6 $00
    ld a, [hl-]                                   ; $6BA4: $3A
    db $E4                                        ; $6BA5: $E4
    or $CC                                        ; $6BA6: $F6 $CC
    db $EC                                        ; $6BA8: $EC
    jr c, jr_022_6B4A                             ; $6BA9: $38 $9F

    ld a, b                                       ; $6BAB: $78
    ld hl, sp+$77                                 ; $6BAC: $F8 $77
    ldh a, [$FF6F]                                ; $6BAE: $F0 $6F
    ld hl, sp+$17                                 ; $6BB0: $F8 $17
    rst RST_38                                    ; $6BB2: $FF
    ld [hl], b                                    ; $6BB3: $70
    ei                                            ; $6BB4: $FB
    ld h, a                                       ; $6BB5: $67
    rst RST_30                                    ; $6BB6: $F7
    call z, $4BF5                                 ; $6BB7: $CC $F5 $4B
    db $FD                                        ; $6BBA: $FD
    jp $D8FF                                      ; $6BBB: $C3 $FF $D8


    db $FD                                        ; $6BBE: $FD

jr_022_6BBF:
    sub e                                         ; $6BBF: $93
    nop                                           ; $6BC0: $00
    nop                                           ; $6BC1: $00
    nop                                           ; $6BC2: $00

jr_022_6BC3:
    nop                                           ; $6BC3: $00
    nop                                           ; $6BC4: $00
    nop                                           ; $6BC5: $00
    nop                                           ; $6BC6: $00
    nop                                           ; $6BC7: $00
    nop                                           ; $6BC8: $00
    nop                                           ; $6BC9: $00
    ret nz                                        ; $6BCA: $C0

    nop                                           ; $6BCB: $00
    jr c, jr_022_6B8E                             ; $6BCC: $38 $C0

    inc b                                         ; $6BCE: $04
    ld hl, sp+$1C                                 ; $6BCF: $F8 $1C
    ldh [$FF78], a                                ; $6BD1: $E0 $78
    add b                                         ; $6BD3: $80
    ldh a, [rP1]                                  ; $6BD4: $F0 $00
    rst RST_38                                    ; $6BD6: $FF
    ld h, b                                       ; $6BD7: $60
    db $FC                                        ; $6BD8: $FC
    ld l, e                                       ; $6BD9: $6B
    rst RST_38                                    ; $6BDA: $FF
    ld l, h                                       ; $6BDB: $6C
    cp $6C                                        ; $6BDC: $FE $6C
    rst RST_38                                    ; $6BDE: $FF
    ld l, h                                       ; $6BDF: $6C
    ld sp, hl                                     ; $6BE0: $F9
    sub $FE                                       ; $6BE1: $D6 $FE
    ret c                                         ; $6BE3: $D8

    db $FC                                        ; $6BE4: $FC
    ret c                                         ; $6BE5: $D8

    cp $D8                                        ; $6BE6: $FE $D8
    ld sp, hl                                     ; $6BE8: $F9
    sub $FE                                       ; $6BE9: $D6 $FE
    or b                                          ; $6BEB: $B0
    ldh a, [rP1]                                  ; $6BEC: $F0 $00
    nop                                           ; $6BEE: $00
    nop                                           ; $6BEF: $00
    nop                                           ; $6BF0: $00
    nop                                           ; $6BF1: $00
    nop                                           ; $6BF2: $00
    nop                                           ; $6BF3: $00
    add b                                         ; $6BF4: $80
    nop                                           ; $6BF5: $00
    ret nz                                        ; $6BF6: $C0

    add b                                         ; $6BF7: $80
    ret nz                                        ; $6BF8: $C0

    add b                                         ; $6BF9: $80
    ldh [$FFC0], a                                ; $6BFA: $E0 $C0
    ld [hl], b                                    ; $6BFC: $70
    ret nz                                        ; $6BFD: $C0

    cp b                                          ; $6BFE: $B8
    ld d, b                                       ; $6BFF: $50
    rra                                           ; $6C00: $1F
    inc c                                         ; $6C01: $0C
    rrca                                          ; $6C02: $0F

jr_022_6C03:
    inc bc                                        ; $6C03: $03
    rlca                                          ; $6C04: $07
    nop                                           ; $6C05: $00
    ld l, h                                       ; $6C06: $6C
    inc bc                                        ; $6C07: $03
    or b                                          ; $6C08: $B0
    ld l, a                                       ; $6C09: $6F
    ld sp, hl                                     ; $6C0A: $F9
    ld h, [hl]                                    ; $6C0B: $66
    ld a, a                                       ; $6C0C: $7F
    jr @+$51                                      ; $6C0D: $18 $4F

    ld a, $27                                     ; $6C0F: $3E $27
    ld e, $16                                     ; $6C11: $1E $16
    inc c                                         ; $6C13: $0C
    ld [de], a                                    ; $6C14: $12
    inc c                                         ; $6C15: $0C
    ld c, $00                                     ; $6C16: $0E $00
    rra                                           ; $6C18: $1F
    ld c, $7F                                     ; $6C19: $0E $7F
    rrca                                          ; $6C1B: $0F
    adc a                                         ; $6C1C: $8F
    ld [hl], a                                    ; $6C1D: $77
    rst RST_38                                    ; $6C1E: $FF
    nop                                           ; $6C1F: $00
    rst RST_38                                    ; $6C20: $FF
    add c                                         ; $6C21: $81
    db $FD                                        ; $6C22: $FD
    nop                                           ; $6C23: $00
    cp $00                                        ; $6C24: $FE $00
    pop af                                        ; $6C26: $F1
    ld c, $60                                     ; $6C27: $0E $60
    sbc a                                         ; $6C29: $9F
    sbc b                                         ; $6C2A: $98
    rlca                                          ; $6C2B: $07
    ld b, $01                                     ; $6C2C: $06 $01
    inc bc                                        ; $6C2E: $03
    nop                                           ; $6C2F: $00
    dec b                                         ; $6C30: $05
    inc bc                                        ; $6C31: $03
    rlca                                          ; $6C32: $07
    inc bc                                        ; $6C33: $03
    inc bc                                        ; $6C34: $03
    nop                                           ; $6C35: $00
    nop                                           ; $6C36: $00
    nop                                           ; $6C37: $00
    nop                                           ; $6C38: $00
    nop                                           ; $6C39: $00
    add b                                         ; $6C3A: $80
    nop                                           ; $6C3B: $00
    add b                                         ; $6C3C: $80
    nop                                           ; $6C3D: $00
    add b                                         ; $6C3E: $80
    nop                                           ; $6C3F: $00
    ld sp, hl                                     ; $6C40: $F9
    sub $FE                                       ; $6C41: $D6 $FE
    ret c                                         ; $6C43: $D8

    cp $D8                                        ; $6C44: $FE $D8
    ld sp, hl                                     ; $6C46: $F9
    sub $FE                                       ; $6C47: $D6 $FE
    or b                                          ; $6C49: $B0
    ldh a, [rP1]                                  ; $6C4A: $F0 $00
    nop                                           ; $6C4C: $00
    nop                                           ; $6C4D: $00
    nop                                           ; $6C4E: $00
    nop                                           ; $6C4F: $00
    add b                                         ; $6C50: $80
    nop                                           ; $6C51: $00
    ld [hl], b                                    ; $6C52: $70
    add b                                         ; $6C53: $80
    ld a, b                                       ; $6C54: $78
    or b                                          ; $6C55: $B0
    db $FC                                        ; $6C56: $FC
    ld a, b                                       ; $6C57: $78
    cp $7C                                        ; $6C58: $FE $7C
    adc a                                         ; $6C5A: $8F
    ld a, [hl]                                    ; $6C5B: $7E
    ld [hl], e                                    ; $6C5C: $73
    ld c, $0F                                     ; $6C5D: $0E $0F
    nop                                           ; $6C5F: $00
    ldh a, [$FF80]                                ; $6C60: $F0 $80
    ld hl, sp-$50                                 ; $6C62: $F8 $B0
    db $FC                                        ; $6C64: $FC
    jr c, jr_022_6CE3                             ; $6C65: $38 $7C

    jr c, jr_022_6CA5                             ; $6C67: $38 $3C

    jr @+$7E                                      ; $6C69: $18 $7C

    nop                                           ; $6C6B: $00
    add h                                         ; $6C6C: $84
    ld a, b                                       ; $6C6D: $78
    db $FC                                        ; $6C6E: $FC
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
    rra                                           ; $6C90: $1F
    nop                                           ; $6C91: $00
    ld h, $1B                                     ; $6C92: $26 $1B
    ld a, a                                       ; $6C94: $7F
    inc e                                         ; $6C95: $1C
    sbc a                                         ; $6C96: $9F
    ld l, a                                       ; $6C97: $6F
    sbc a                                         ; $6C98: $9F
    ld h, c                                       ; $6C99: $61
    di                                            ; $6C9A: $F3
    ld l, h                                       ; $6C9B: $6C
    cp $6C                                        ; $6C9C: $FE $6C
    ld a, h                                       ; $6C9E: $7C
    nop                                           ; $6C9F: $00
    nop                                           ; $6CA0: $00
    nop                                           ; $6CA1: $00
    nop                                           ; $6CA2: $00
    nop                                           ; $6CA3: $00
    nop                                           ; $6CA4: $00

jr_022_6CA5:
    nop                                           ; $6CA5: $00
    nop                                           ; $6CA6: $00
    nop                                           ; $6CA7: $00
    nop                                           ; $6CA8: $00
    nop                                           ; $6CA9: $00

jr_022_6CAA:
    ld e, $00                                     ; $6CAA: $1E $00
    ld [hl+], a                                   ; $6CAC: $22
    inc e                                         ; $6CAD: $1C
    ld e, h                                       ; $6CAE: $5C
    jr nz, jr_022_6CAA                            ; $6CAF: $20 $F9

    nop                                           ; $6CB1: $00
    rrca                                          ; $6CB2: $0F
    ldh a, [$FFF9]                                ; $6CB3: $F0 $F9
    halt                                          ; $6CB5: $76
    ld hl, sp+$77                                 ; $6CB6: $F8 $77
    ld hl, sp+$77                                 ; $6CB8: $F8 $77
    rst RST_38                                    ; $6CBA: $FF
    ld [hl], b                                    ; $6CBB: $70
    ld a, b                                       ; $6CBC: $78
    nop                                           ; $6CBD: $00
    nop                                           ; $6CBE: $00
    nop                                           ; $6CBF: $00
    ld [bc], a                                    ; $6CC0: $02
    nop                                           ; $6CC1: $00
    ld h, l                                       ; $6CC2: $65
    ld [bc], a                                    ; $6CC3: $02
    ld e, d                                       ; $6CC4: $5A
    dec h                                         ; $6CC5: $25
    ld e, d                                       ; $6CC6: $5A
    dec h                                         ; $6CC7: $25
    ld l, a                                       ; $6CC8: $6F
    dec [hl]                                      ; $6CC9: $35
    rst RST_38                                    ; $6CCA: $FF
    db $10                                        ; $6CCB: $10
    jr c, jr_022_6CA5                             ; $6CCC: $38 $D7

    rra                                           ; $6CCE: $1F
    add sp, $0D                                   ; $6CCF: $E8 $0D
    ldh a, [c]                                    ; $6CD1: $F2
    adc [hl]                                      ; $6CD2: $8E
    ld [hl], c                                    ; $6CD3: $71
    ld c, a                                       ; $6CD4: $4F
    or l                                          ; $6CD5: $B5
    rst RST_38                                    ; $6CD6: $FF
    ld [bc], a                                    ; $6CD7: $02
    rrca                                          ; $6CD8: $0F
    inc bc                                        ; $6CD9: $03
    rra                                           ; $6CDA: $1F
    rlca                                          ; $6CDB: $07
    rla                                           ; $6CDC: $17
    dec bc                                        ; $6CDD: $0B
    rra                                           ; $6CDE: $1F
    inc bc                                        ; $6CDF: $03
    add b                                         ; $6CE0: $80
    nop                                           ; $6CE1: $00
    ld e, h                                       ; $6CE2: $5C

jr_022_6CE3:
    add b                                         ; $6CE3: $80
    ld h, a                                       ; $6CE4: $67
    sbc h                                         ; $6CE5: $9C
    sbc $B9                                       ; $6CE6: $DE $B9
    db $FD                                        ; $6CE8: $FD
    rlca                                          ; $6CE9: $07
    inc de                                        ; $6CEA: $13
    rst RST_28                                    ; $6CEB: $EF
    rst RST_18                                    ; $6CEC: $DF
    ld l, $DE                                     ; $6CED: $2E $DE
    xor l                                         ; $6CEF: $AD
    rst RST_18                                    ; $6CF0: $DF
    jr nz, jr_022_6D6E                            ; $6CF1: $20 $7B

    rst RST_00                                    ; $6CF3: $C7
    ld [hl], a                                    ; $6CF4: $77
    adc h                                         ; $6CF5: $8C
    push af                                       ; $6CF6: $F5
    ld l, e                                       ; $6CF7: $6B
    db $FD                                        ; $6CF8: $FD
    add e                                         ; $6CF9: $83

jr_022_6CFA:
    rst RST_38                                    ; $6CFA: $FF
    jr jr_022_6CFA                                ; $6CFB: $18 $FD

    ei                                            ; $6CFD: $FB
    db $FD                                        ; $6CFE: $FD
    di                                            ; $6CFF: $F3
    ret nz                                        ; $6D00: $C0

    nop                                           ; $6D01: $00
    ld b, b                                       ; $6D02: $40
    add b                                         ; $6D03: $80
    ret nz                                        ; $6D04: $C0

    add b                                         ; $6D05: $80
    add b                                         ; $6D06: $80
    nop                                           ; $6D07: $00
    ld hl, sp+$00                                 ; $6D08: $F8 $00
    inc b                                         ; $6D0A: $04
    ld hl, sp+$1C                                 ; $6D0B: $F8 $1C
    ldh [$FF78], a                                ; $6D0D: $E0 $78
    add b                                         ; $6D0F: $80
    ldh [rP1], a                                  ; $6D10: $E0 $00
    ld hl, sp-$20                                 ; $6D12: $F8 $E0
    rst RST_38                                    ; $6D14: $FF
    ld l, b                                       ; $6D15: $68
    db $FC                                        ; $6D16: $FC
    ld l, e                                       ; $6D17: $6B
    rst RST_38                                    ; $6D18: $FF
    ld l, h                                       ; $6D19: $6C
    rst RST_38                                    ; $6D1A: $FF
    ld l, h                                       ; $6D1B: $6C
    db $FC                                        ; $6D1C: $FC
    ld l, e                                       ; $6D1D: $6B
    rst RST_38                                    ; $6D1E: $FF
    ret c                                         ; $6D1F: $D8

    inc bc                                        ; $6D20: $03
    nop                                           ; $6D21: $00
    ld bc, $0300                                  ; $6D22: $01 $00 $03
    nop                                           ; $6D25: $00
    ld l, h                                       ; $6D26: $6C
    inc bc                                        ; $6D27: $03
    or b                                          ; $6D28: $B0
    ld l, a                                       ; $6D29: $6F
    ld sp, hl                                     ; $6D2A: $F9
    ld h, [hl]                                    ; $6D2B: $66
    ld a, a                                       ; $6D2C: $7F
    jr @+$51                                      ; $6D2D: $18 $4F

    ld a, $27                                     ; $6D2F: $3E $27
    ld e, $16                                     ; $6D31: $1E $16
    inc c                                         ; $6D33: $0C
    ld [de], a                                    ; $6D34: $12
    inc c                                         ; $6D35: $0C
    ld c, $00                                     ; $6D36: $0E $00
    rra                                           ; $6D38: $1F
    ld c, $7F                                     ; $6D39: $0E $7F
    rrca                                          ; $6D3B: $0F
    adc a                                         ; $6D3C: $8F
    ld [hl], a                                    ; $6D3D: $77
    rst RST_38                                    ; $6D3E: $FF
    nop                                           ; $6D3F: $00
    db $FC                                        ; $6D40: $FC
    nop                                           ; $6D41: $00
    db $FC                                        ; $6D42: $FC
    nop                                           ; $6D43: $00
    cp $00                                        ; $6D44: $FE $00
    pop af                                        ; $6D46: $F1
    ld c, $60                                     ; $6D47: $0E $60
    sbc a                                         ; $6D49: $9F
    sbc b                                         ; $6D4A: $98
    rlca                                          ; $6D4B: $07
    ld b, $01                                     ; $6D4C: $06 $01
    inc bc                                        ; $6D4E: $03
    nop                                           ; $6D4F: $00
    dec b                                         ; $6D50: $05
    inc bc                                        ; $6D51: $03
    rlca                                          ; $6D52: $07
    inc bc                                        ; $6D53: $03
    inc bc                                        ; $6D54: $03
    nop                                           ; $6D55: $00
    nop                                           ; $6D56: $00
    nop                                           ; $6D57: $00
    nop                                           ; $6D58: $00
    nop                                           ; $6D59: $00
    add b                                         ; $6D5A: $80
    nop                                           ; $6D5B: $00
    add b                                         ; $6D5C: $80
    nop                                           ; $6D5D: $00
    add b                                         ; $6D5E: $80
    nop                                           ; $6D5F: $00
    ld a, a                                       ; $6D60: $7F
    inc c                                         ; $6D61: $0C
    ld a, l                                       ; $6D62: $7D
    ld a, [hl-]                                   ; $6D63: $3A
    dec a                                         ; $6D64: $3D
    ld [bc], a                                    ; $6D65: $02
    adc d                                         ; $6D66: $8A
    inc b                                         ; $6D67: $04
    ld a, d                                       ; $6D68: $7A
    add h                                         ; $6D69: $84
    ld a, h                                       ; $6D6A: $7C
    or b                                          ; $6D6B: $B0
    db $FC                                        ; $6D6C: $FC
    ld a, b                                       ; $6D6D: $78

jr_022_6D6E:
    cp $7C                                        ; $6D6E: $FE $7C
    adc a                                         ; $6D70: $8F
    ld a, [hl]                                    ; $6D71: $7E
    ld [hl], e                                    ; $6D72: $73
    ld c, $0F                                     ; $6D73: $0E $0F
    nop                                           ; $6D75: $00
    ld bc, $0000                                  ; $6D76: $01 $00 $00
    nop                                           ; $6D79: $00
    ld bc, $0200                                  ; $6D7A: $01 $00 $02
    ld bc, $0003                                  ; $6D7D: $01 $03 $00
    ret nz                                        ; $6D80: $C0

    nop                                           ; $6D81: $00
    ldh [$FFC0], a                                ; $6D82: $E0 $C0
    ldh a, [$FFE0]                                ; $6D84: $F0 $E0
    ldh a, [$FFE0]                                ; $6D86: $F0 $E0
    ldh a, [$FF60]                                ; $6D88: $F0 $60
    ldh a, [rP1]                                  ; $6D8A: $F0 $00
    db $10                                        ; $6D8C: $10
    ldh [$FFF0], a                                ; $6D8D: $E0 $F0
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
    ld a, a                                       ; $6DB0: $7F
    nop                                           ; $6DB1: $00
    and [hl]                                      ; $6DB2: $A6
    ld e, e                                       ; $6DB3: $5B
    rst RST_38                                    ; $6DB4: $FF
    ld e, h                                       ; $6DB5: $5C
    rst RST_38                                    ; $6DB6: $FF
    ld c, a                                       ; $6DB7: $4F
    ld e, a                                       ; $6DB8: $5F
    cpl                                           ; $6DB9: $2F
    ld a, a                                       ; $6DBA: $7F
    jr nc, jr_022_6E39                            ; $6DBB: $30 $7C

    jr c, jr_022_6DF7                             ; $6DBD: $38 $38

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

jr_022_6DCA:
    ld e, $00                                     ; $6DCA: $1E $00
    ld [hl+], a                                   ; $6DCC: $22
    inc e                                         ; $6DCD: $1C
    ld e, h                                       ; $6DCE: $5C
    jr nz, jr_022_6DCA                            ; $6DCF: $20 $F9

    nop                                           ; $6DD1: $00
    rrca                                          ; $6DD2: $0F
    ldh a, [$FFF9]                                ; $6DD3: $F0 $F9
    halt                                          ; $6DD5: $76
    ld hl, sp+$77                                 ; $6DD6: $F8 $77
    ld hl, sp+$77                                 ; $6DD8: $F8 $77
    rst RST_38                                    ; $6DDA: $FF
    ld [hl], b                                    ; $6DDB: $70
    ld a, b                                       ; $6DDC: $78
    nop                                           ; $6DDD: $00
    nop                                           ; $6DDE: $00
    nop                                           ; $6DDF: $00
    nop                                           ; $6DE0: $00
    nop                                           ; $6DE1: $00
    nop                                           ; $6DE2: $00
    nop                                           ; $6DE3: $00
    ld bc, $3200                                  ; $6DE4: $01 $00 $32
    ld bc, $132C                                  ; $6DE7: $01 $2C $13
    dec l                                         ; $6DEA: $2D

jr_022_6DEB:
    ld [de], a                                    ; $6DEB: $12
    scf                                           ; $6DEC: $37
    jr jr_022_6DEB                                ; $6DED: $18 $FC

    inc bc                                        ; $6DEF: $03
    ld [$10F7], sp                                ; $6DF0: $08 $F7 $10
    rst RST_28                                    ; $6DF3: $EF
    db $10                                        ; $6DF4: $10
    rst RST_28                                    ; $6DF5: $EF
    sub b                                         ; $6DF6: $90

jr_022_6DF7:
    ld l, a                                       ; $6DF7: $6F
    ld c, b                                       ; $6DF8: $48
    or a                                          ; $6DF9: $B7
    ld hl, sp+$07                                 ; $6DFA: $F8 $07
    inc b                                         ; $6DFC: $04
    inc bc                                        ; $6DFD: $03
    inc bc                                        ; $6DFE: $03
    nop                                           ; $6DFF: $00
    nop                                           ; $6E00: $00
    nop                                           ; $6E01: $00
    nop                                           ; $6E02: $00
    nop                                           ; $6E03: $00
    ld b, b                                       ; $6E04: $40
    nop                                           ; $6E05: $00
    and e                                         ; $6E06: $A3
    ld b, b                                       ; $6E07: $40
    push af                                       ; $6E08: $F5
    ld [bc], a                                    ; $6E09: $02
    ei                                            ; $6E0A: $FB
    or $FE                                        ; $6E0B: $F6 $FE
    inc c                                         ; $6E0D: $0C
    rra                                           ; $6E0E: $1F
    ldh [rSC], a                                  ; $6E0F: $E0 $02
    db $FD                                        ; $6E11: $FD
    inc b                                         ; $6E12: $04
    ei                                            ; $6E13: $FB
    inc b                                         ; $6E14: $04
    ei                                            ; $6E15: $FB
    inc b                                         ; $6E16: $04
    ei                                            ; $6E17: $FB
    inc bc                                        ; $6E18: $03
    db $FC                                        ; $6E19: $FC
    ld bc, $FFFE                                  ; $6E1A: $01 $FE $FF
    nop                                           ; $6E1D: $00
    ld [bc], a                                    ; $6E1E: $02
    db $FC                                        ; $6E1F: $FC
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
    ldh a, [rP1]                                  ; $6E2C: $F0 $00
    ld [$38F0], sp                                ; $6E2E: $08 $F0 $38
    ret nz                                        ; $6E31: $C0

    ld a, h                                       ; $6E32: $7C
    add b                                         ; $6E33: $80
    or a                                          ; $6E34: $B7
    ld c, h                                       ; $6E35: $4C
    inc e                                         ; $6E36: $1C
    db $E3                                        ; $6E37: $E3
    rla                                           ; $6E38: $17

jr_022_6E39:
    db $ED                                        ; $6E39: $ED
    adc a                                         ; $6E3A: $8F
    halt                                          ; $6E3B: $76
    adc a                                         ; $6E3C: $8F
    ld [hl], d                                    ; $6E3D: $72
    ld c, a                                       ; $6E3E: $4F
    ld [hl-], a                                   ; $6E3F: $32
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
    add b                                         ; $6E56: $80
    nop                                           ; $6E57: $00
    ld b, b                                       ; $6E58: $40
    add b                                         ; $6E59: $80
    ld b, b                                       ; $6E5A: $40
    add b                                         ; $6E5B: $80
    ret nz                                        ; $6E5C: $C0

    add b                                         ; $6E5D: $80
    ret nz                                        ; $6E5E: $C0

    add b                                         ; $6E5F: $80
    nop                                           ; $6E60: $00
    nop                                           ; $6E61: $00
    nop                                           ; $6E62: $00
    nop                                           ; $6E63: $00
    ld bc, $0200                                  ; $6E64: $01 $00 $02
    ld bc, $0102                                  ; $6E67: $01 $02 $01
    dec b                                         ; $6E6A: $05
    ld [bc], a                                    ; $6E6B: $02
    rrca                                          ; $6E6C: $0F
    dec b                                         ; $6E6D: $05
    rra                                           ; $6E6E: $1F
    rlca                                          ; $6E6F: $07
    cpl                                           ; $6E70: $2F
    dec de                                        ; $6E71: $1B
    ld e, a                                       ; $6E72: $5F
    scf                                           ; $6E73: $37
    ld e, a                                       ; $6E74: $5F
    ld [hl], $FF                                  ; $6E75: $36 $FF
    ld e, c                                       ; $6E77: $59
    cp a                                          ; $6E78: $BF
    ld l, [hl]                                    ; $6E79: $6E
    ld a, a                                       ; $6E7A: $7F
    ld de, $1C2F                                  ; $6E7B: $11 $2F $1C
    inc e                                         ; $6E7E: $1C
    nop                                           ; $6E7F: $00
    inc bc                                        ; $6E80: $03
    nop                                           ; $6E81: $00
    inc b                                         ; $6E82: $04
    inc bc                                        ; $6E83: $03
    add $01                                       ; $6E84: $C6 $01
    ld c, c                                       ; $6E86: $49
    add [hl]                                      ; $6E87: $86
    ldh a, [rIF]                                  ; $6E88: $F0 $0F
    ld hl, sp+$67                                 ; $6E8A: $F8 $67
    db $EB                                        ; $6E8C: $EB
    call nc, $A0DC                                ; $6E8D: $D4 $DC $A0
    cp b                                          ; $6E90: $B8
    ld d, b                                       ; $6E91: $50
    ldh a, [rNR41]                                ; $6E92: $F0 $20
    ldh [$FFC0], a                                ; $6E94: $E0 $C0
    ret nz                                        ; $6E96: $C0

    nop                                           ; $6E97: $00
    ret nz                                        ; $6E98: $C0

    nop                                           ; $6E99: $00
    ret nz                                        ; $6E9A: $C0

    add b                                         ; $6E9B: $80
    ret nz                                        ; $6E9C: $C0

    add b                                         ; $6E9D: $80
    add b                                         ; $6E9E: $80
    nop                                           ; $6E9F: $00
    inc bc                                        ; $6EA0: $03
    nop                                           ; $6EA1: $00
    inc bc                                        ; $6EA2: $03
    nop                                           ; $6EA3: $00
    dec b                                         ; $6EA4: $05
    ld [bc], a                                    ; $6EA5: $02
    ld l, b                                       ; $6EA6: $68
    rlca                                          ; $6EA7: $07
    or b                                          ; $6EA8: $B0
    ld l, a                                       ; $6EA9: $6F
    ld sp, hl                                     ; $6EAA: $F9
    ld h, [hl]                                    ; $6EAB: $66
    ld a, [hl]                                    ; $6EAC: $7E
    jr @+$51                                      ; $6EAD: $18 $4F

    ld a, $27                                     ; $6EAF: $3E $27
    ld e, $16                                     ; $6EB1: $1E $16
    inc c                                         ; $6EB3: $0C
    ld [de], a                                    ; $6EB4: $12
    inc c                                         ; $6EB5: $0C
    ld c, $00                                     ; $6EB6: $0E $00
    rra                                           ; $6EB8: $1F
    ld c, $7F                                     ; $6EB9: $0E $7F
    rrca                                          ; $6EBB: $0F
    adc a                                         ; $6EBC: $8F
    ld [hl], a                                    ; $6EBD: $77
    rst RST_38                                    ; $6EBE: $FF
    nop                                           ; $6EBF: $00
    ld a, [$FCF4]                                 ; $6EC0: $FA $F4 $FC

jr_022_6EC3:
    jr nc, jr_022_6EC3                            ; $6EC3: $30 $FE

    nop                                           ; $6EC5: $00
    pop af                                        ; $6EC6: $F1
    ld c, $60                                     ; $6EC7: $0E $60
    sbc a                                         ; $6EC9: $9F
    sbc b                                         ; $6ECA: $98
    rlca                                          ; $6ECB: $07
    ld b, $01                                     ; $6ECC: $06 $01
    inc bc                                        ; $6ECE: $03
    nop                                           ; $6ECF: $00
    dec b                                         ; $6ED0: $05
    inc bc                                        ; $6ED1: $03
    rlca                                          ; $6ED2: $07
    inc bc                                        ; $6ED3: $03
    inc bc                                        ; $6ED4: $03
    nop                                           ; $6ED5: $00
    nop                                           ; $6ED6: $00
    nop                                           ; $6ED7: $00
    nop                                           ; $6ED8: $00
    nop                                           ; $6ED9: $00
    add b                                         ; $6EDA: $80
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
    add b                                         ; $6EE6: $80
    nop                                           ; $6EE7: $00
    ld [hl], b                                    ; $6EE8: $70
    add b                                         ; $6EE9: $80
    ld a, b                                       ; $6EEA: $78
    or b                                          ; $6EEB: $B0
    db $FC                                        ; $6EEC: $FC
    ld a, b                                       ; $6EED: $78
    cp $7C                                        ; $6EEE: $FE $7C
    adc a                                         ; $6EF0: $8F
    ld a, [hl]                                    ; $6EF1: $7E
    ld [hl], e                                    ; $6EF2: $73
    ld c, $0F                                     ; $6EF3: $0E $0F
    nop                                           ; $6EF5: $00
    ld bc, $0000                                  ; $6EF6: $01 $00 $00
    nop                                           ; $6EF9: $00
    ld bc, $0200                                  ; $6EFA: $01 $00 $02
    ld bc, $0003                                  ; $6EFD: $01 $03 $00
    ret nz                                        ; $6F00: $C0

    nop                                           ; $6F01: $00
    ldh [$FFC0], a                                ; $6F02: $E0 $C0
    ldh a, [$FFE0]                                ; $6F04: $F0 $E0
    ldh a, [$FFE0]                                ; $6F06: $F0 $E0
    ldh a, [$FF60]                                ; $6F08: $F0 $60
    ldh a, [rP1]                                  ; $6F0A: $F0 $00
    db $10                                        ; $6F0C: $10
    ldh [$FFF0], a                                ; $6F0D: $E0 $F0
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
    nop                                           ; $6F20: $00
    nop                                           ; $6F21: $00
    nop                                           ; $6F22: $00
    nop                                           ; $6F23: $00
    ld b, l                                       ; $6F24: $45
    nop                                           ; $6F25: $00
    xor d                                         ; $6F26: $AA
    ld b, l                                       ; $6F27: $45
    or h                                          ; $6F28: $B4
    ld c, e                                       ; $6F29: $4B
    push de                                       ; $6F2A: $D5
    ld l, e                                       ; $6F2B: $6B
    ld a, a                                       ; $6F2C: $7F
    ld a, [hl+]                                   ; $6F2D: $2A
    rst RST_38                                    ; $6F2E: $FF
    jr nz, jr_022_6F61                            ; $6F2F: $20 $30

    rst RST_08                                    ; $6F31: $CF
    rra                                           ; $6F32: $1F
    ldh [$FF08], a                                ; $6F33: $E0 $08
    rst RST_30                                    ; $6F35: $F7
    ld c, $F3                                     ; $6F36: $0E $F3
    rst RST_18                                    ; $6F38: $DF
    jr nz, @+$01                                  ; $6F39: $20 $FF

    ld e, $1F                                     ; $6F3B: $1E $1F
    dec c                                         ; $6F3D: $0D
    rrca                                          ; $6F3E: $0F
    ld bc, $0007                                  ; $6F3F: $01 $07 $00
    ld a, [bc]                                    ; $6F42: $0A
    dec b                                         ; $6F43: $05
    dec [hl]                                      ; $6F44: $35
    ld a, [bc]                                    ; $6F45: $0A
    call $BB36                                    ; $6F46: $CD $36 $BB
    ld l, [hl]                                    ; $6F49: $6E
    or $1D                                        ; $6F4A: $F6 $1D
    xor [hl]                                      ; $6F4C: $AE
    ld d, l                                       ; $6F4D: $55
    dec a                                         ; $6F4E: $3D
    jp z, Jump_022_58BF                           ; $6F4F: $CA $BF $58

    cp a                                          ; $6F52: $BF
    ld e, b                                       ; $6F53: $58
    rst RST_38                                    ; $6F54: $FF
    adc d                                         ; $6F55: $8A
    rst RST_38                                    ; $6F56: $FF
    ld [hl-], a                                   ; $6F57: $32
    rst RST_38                                    ; $6F58: $FF
    ldh a, [c]                                    ; $6F59: $F2
    rst RST_38                                    ; $6F5A: $FF
    db $F4                                        ; $6F5B: $F4
    rst RST_38                                    ; $6F5C: $FF
    ld a, l                                       ; $6F5D: $7D
    rst RST_38                                    ; $6F5E: $FF
    jr c, jr_022_6F61                             ; $6F5F: $38 $00

jr_022_6F61:
    nop                                           ; $6F61: $00
    add b                                         ; $6F62: $80
    nop                                           ; $6F63: $00
    ld b, b                                       ; $6F64: $40
    add b                                         ; $6F65: $80
    ld b, b                                       ; $6F66: $40
    add b                                         ; $6F67: $80
    ld b, b                                       ; $6F68: $40
    add b                                         ; $6F69: $80
    ld b, b                                       ; $6F6A: $40
    add b                                         ; $6F6B: $80
    add b                                         ; $6F6C: $80
    nop                                           ; $6F6D: $00
    ret nz                                        ; $6F6E: $C0

    nop                                           ; $6F6F: $00
    ld hl, sp-$40                                 ; $6F70: $F8 $C0
    inc [hl]                                      ; $6F72: $34
    ret c                                         ; $6F73: $D8

    db $F4                                        ; $6F74: $F4
    ret c                                         ; $6F75: $D8

    ld hl, sp+$00                                 ; $6F76: $F8 $00
    db $F4                                        ; $6F78: $F4
    cp b                                          ; $6F79: $B8
    db $F4                                        ; $6F7A: $F4
    cp b                                          ; $6F7B: $B8
    ld hl, sp+$40                                 ; $6F7C: $F8 $40
    ldh a, [rP1]                                  ; $6F7E: $F0 $00
    ld bc, $0300                                  ; $6F80: $01 $00 $03
    nop                                           ; $6F83: $00
    dec b                                         ; $6F84: $05
    ld [bc], a                                    ; $6F85: $02
    ld l, b                                       ; $6F86: $68
    rlca                                          ; $6F87: $07
    or b                                          ; $6F88: $B0
    ld l, a                                       ; $6F89: $6F
    ld sp, hl                                     ; $6F8A: $F9
    ld h, [hl]                                    ; $6F8B: $66
    ld a, [hl]                                    ; $6F8C: $7E
    jr jr_022_6FDE                                ; $6F8D: $18 $4F

    ld a, $27                                     ; $6F8F: $3E $27
    ld e, $16                                     ; $6F91: $1E $16
    inc c                                         ; $6F93: $0C
    ld [de], a                                    ; $6F94: $12
    inc c                                         ; $6F95: $0C
    ld c, $00                                     ; $6F96: $0E $00
    rra                                           ; $6F98: $1F
    ld c, $7F                                     ; $6F99: $0E $7F
    rrca                                          ; $6F9B: $0F
    adc a                                         ; $6F9C: $8F
    ld [hl], a                                    ; $6F9D: $77
    rst RST_38                                    ; $6F9E: $FF
    nop                                           ; $6F9F: $00
    db $FC                                        ; $6FA0: $FC
    nop                                           ; $6FA1: $00
    db $FC                                        ; $6FA2: $FC
    nop                                           ; $6FA3: $00
    cp $00                                        ; $6FA4: $FE $00
    pop af                                        ; $6FA6: $F1
    ld c, $60                                     ; $6FA7: $0E $60
    sbc a                                         ; $6FA9: $9F
    sbc b                                         ; $6FAA: $98
    rlca                                          ; $6FAB: $07
    ld b, $01                                     ; $6FAC: $06 $01
    inc bc                                        ; $6FAE: $03
    nop                                           ; $6FAF: $00
    dec b                                         ; $6FB0: $05
    inc bc                                        ; $6FB1: $03
    rlca                                          ; $6FB2: $07
    inc bc                                        ; $6FB3: $03
    inc bc                                        ; $6FB4: $03
    nop                                           ; $6FB5: $00
    nop                                           ; $6FB6: $00
    nop                                           ; $6FB7: $00
    nop                                           ; $6FB8: $00
    nop                                           ; $6FB9: $00
    add b                                         ; $6FBA: $80
    nop                                           ; $6FBB: $00
    add b                                         ; $6FBC: $80
    nop                                           ; $6FBD: $00
    add b                                         ; $6FBE: $80
    nop                                           ; $6FBF: $00
    ld e, $E8                                     ; $6FC0: $1E $E8
    cp $18                                        ; $6FC2: $FE $18
    cp $F8                                        ; $6FC4: $FE $F8
    cp $00                                        ; $6FC6: $FE $00
    ld a, h                                       ; $6FC8: $7C
    nop                                           ; $6FC9: $00
    nop                                           ; $6FCA: $00
    nop                                           ; $6FCB: $00
    nop                                           ; $6FCC: $00
    nop                                           ; $6FCD: $00
    add b                                         ; $6FCE: $80
    nop                                           ; $6FCF: $00
    ld [hl], b                                    ; $6FD0: $70
    add b                                         ; $6FD1: $80
    ld a, b                                       ; $6FD2: $78
    or b                                          ; $6FD3: $B0
    db $FC                                        ; $6FD4: $FC
    ld a, b                                       ; $6FD5: $78
    cp $7C                                        ; $6FD6: $FE $7C
    adc a                                         ; $6FD8: $8F
    ld a, [hl]                                    ; $6FD9: $7E
    ld [hl], e                                    ; $6FDA: $73
    ld c, $0F                                     ; $6FDB: $0E $0F
    nop                                           ; $6FDD: $00

jr_022_6FDE:
    ld bc, $0000                                  ; $6FDE: $01 $00 $00
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
    add b                                         ; $6FEE: $80
    nop                                           ; $6FEF: $00
    ldh a, [$FF80]                                ; $6FF0: $F0 $80
    ld hl, sp-$50                                 ; $6FF2: $F8 $B0
    db $FC                                        ; $6FF4: $FC
    jr c, jr_022_7073                             ; $6FF5: $38 $7C

    jr c, @+$3E                                   ; $6FF7: $38 $3C

    jr jr_022_7077                                ; $6FF9: $18 $7C

    nop                                           ; $6FFB: $00
    add h                                         ; $6FFC: $84
    ld a, b                                       ; $6FFD: $78
    db $FC                                        ; $6FFE: $FC
    nop                                           ; $6FFF: $00
    inc e                                         ; $7000: $1C
    nop                                           ; $7001: $00
    cpl                                           ; $7002: $2F
    inc e                                         ; $7003: $1C
    ld a, a                                       ; $7004: $7F
    ld de, $6EBF                                  ; $7005: $11 $BF $6E
    rst RST_38                                    ; $7008: $FF
    ld e, c                                       ; $7009: $59
    ld e, a                                       ; $700A: $5F
    ld [hl], $5F                                  ; $700B: $36 $5F
    scf                                           ; $700D: $37
    cpl                                           ; $700E: $2F
    dec de                                        ; $700F: $1B
    rra                                           ; $7010: $1F
    rlca                                          ; $7011: $07
    rrca                                          ; $7012: $0F
    dec b                                         ; $7013: $05
    dec b                                         ; $7014: $05
    ld [bc], a                                    ; $7015: $02
    ld [bc], a                                    ; $7016: $02
    ld bc, $0102                                  ; $7017: $01 $02 $01
    ld bc, $0000                                  ; $701A: $01 $00 $00
    nop                                           ; $701D: $00
    nop                                           ; $701E: $00
    nop                                           ; $701F: $00
    nop                                           ; $7020: $00
    nop                                           ; $7021: $00
    add b                                         ; $7022: $80
    nop                                           ; $7023: $00
    ret nz                                        ; $7024: $C0

    add b                                         ; $7025: $80
    ret nz                                        ; $7026: $C0

    add b                                         ; $7027: $80
    add b                                         ; $7028: $80
    nop                                           ; $7029: $00
    ret nz                                        ; $702A: $C0

    nop                                           ; $702B: $00
    ldh [$FFC0], a                                ; $702C: $E0 $C0
    ldh a, [rNR41]                                ; $702E: $F0 $20
    cp b                                          ; $7030: $B8
    ld d, b                                       ; $7031: $50
    rst RST_18                                    ; $7032: $DF
    and b                                         ; $7033: $A0
    add sp, -$29                                  ; $7034: $E8 $D7
    ld hl, sp+$67                                 ; $7036: $F8 $67
    ldh [$FF1F], a                                ; $7038: $E0 $1F
    ld e, h                                       ; $703A: $5C
    add e                                         ; $703B: $83
    jp RST_00                                     ; $703C: $C3 $00 $00


    nop                                           ; $703F: $00
    nop                                           ; $7040: $00
    nop                                           ; $7041: $00
    nop                                           ; $7042: $00
    nop                                           ; $7043: $00
    add hl, de                                    ; $7044: $19
    nop                                           ; $7045: $00
    ld d, $09                                     ; $7046: $16 $09
    ld d, $09                                     ; $7048: $16 $09
    dec de                                        ; $704A: $1B
    dec c                                         ; $704B: $0D
    ld a, a                                       ; $704C: $7F
    nop                                           ; $704D: $00
    add h                                         ; $704E: $84
    ld a, e                                       ; $704F: $7B
    add h                                         ; $7050: $84
    ld a, e                                       ; $7051: $7B
    add h                                         ; $7052: $84
    ld a, e                                       ; $7053: $7B
    ld b, h                                       ; $7054: $44
    cp e                                          ; $7055: $BB
    inc h                                         ; $7056: $24
    db $DB                                        ; $7057: $DB
    ld hl, sp+$07                                 ; $7058: $F8 $07
    inc b                                         ; $705A: $04
    inc bc                                        ; $705B: $03
    inc bc                                        ; $705C: $03
    nop                                           ; $705D: $00
    nop                                           ; $705E: $00
    nop                                           ; $705F: $00
    nop                                           ; $7060: $00
    nop                                           ; $7061: $00
    and b                                         ; $7062: $A0
    nop                                           ; $7063: $00
    ld d, c                                       ; $7064: $51
    and b                                         ; $7065: $A0
    ld a, d                                       ; $7066: $7A
    add c                                         ; $7067: $81
    db $FD                                        ; $7068: $FD
    ld a, e                                       ; $7069: $7B
    rst RST_38                                    ; $706A: $FF
    ld b, $06                                     ; $706B: $06 $06
    ld hl, sp+$01                                 ; $706D: $F8 $01
    cp $01                                        ; $706F: $FE $01
    cp $01                                        ; $7071: $FE $01

jr_022_7073:
    cp $00                                        ; $7073: $FE $00
    rst RST_38                                    ; $7075: $FF
    nop                                           ; $7076: $00

jr_022_7077:
    rst RST_38                                    ; $7077: $FF
    nop                                           ; $7078: $00
    rst RST_38                                    ; $7079: $FF
    dec e                                         ; $707A: $1D
    ldh [c], a                                    ; $707B: $E2
    db $E3                                        ; $707C: $E3
    inc e                                         ; $707D: $1C
    add c                                         ; $707E: $81
    ld a, [hl]                                    ; $707F: $7E
    nop                                           ; $7080: $00
    nop                                           ; $7081: $00
    add b                                         ; $7082: $80
    nop                                           ; $7083: $00
    add b                                         ; $7084: $80
    nop                                           ; $7085: $00
    add b                                         ; $7086: $80
    nop                                           ; $7087: $00
    nop                                           ; $7088: $00
    nop                                           ; $7089: $00
    ld a, [hl]                                    ; $708A: $7E
    nop                                           ; $708B: $00
    add c                                         ; $708C: $81
    ld a, [hl]                                    ; $708D: $7E
    rrca                                          ; $708E: $0F
    ldh a, [$FF3F]                                ; $708F: $F0 $3F
    ret nz                                        ; $7091: $C0

    adc $30                                       ; $7092: $CE $30
    add h                                         ; $7094: $84
    ld a, b                                       ; $7095: $78
    add [hl]                                      ; $7096: $86

jr_022_7097:
    ld a, b                                       ; $7097: $78
    ld b, a                                       ; $7098: $47
    ld a, [hl-]                                   ; $7099: $3A
    ld a, a                                       ; $709A: $7F
    ld b, $7F                                     ; $709B: $06 $7F
    ld a, $3F                                     ; $709D: $3E $3F
    nop                                           ; $709F: $00
    ld bc, $0200                                  ; $70A0: $01 $00 $02
    ld bc, $0334                                  ; $70A3: $01 $34 $03
    ld e, b                                       ; $70A6: $58
    scf                                           ; $70A7: $37
    ld a, h                                       ; $70A8: $7C
    inc sp                                        ; $70A9: $33

jr_022_70AA:
    ccf                                           ; $70AA: $3F
    inc c                                         ; $70AB: $0C
    daa                                           ; $70AC: $27
    rra                                           ; $70AD: $1F
    inc de                                        ; $70AE: $13
    rrca                                          ; $70AF: $0F
    dec bc                                        ; $70B0: $0B
    ld b, $0B                                     ; $70B1: $06 $0B
    ld b, $0F                                     ; $70B3: $06 $0F
    nop                                           ; $70B5: $00
    rra                                           ; $70B6: $1F
    ld c, $7F                                     ; $70B7: $0E $7F
    rrca                                          ; $70B9: $0F
    adc a                                         ; $70BA: $8F
    ld [hl], a                                    ; $70BB: $77
    rst RST_38                                    ; $70BC: $FF
    nop                                           ; $70BD: $00
    nop                                           ; $70BE: $00
    nop                                           ; $70BF: $00
    cp $00                                        ; $70C0: $FE $00
    rst RST_38                                    ; $70C2: $FF
    nop                                           ; $70C3: $00
    ld a, b                                       ; $70C4: $78
    add a                                         ; $70C5: $87
    jr nc, jr_022_7097                            ; $70C6: $30 $CF

    call z, Call_000_0303                         ; $70C8: $CC $03 $03
    nop                                           ; $70CB: $00
    add c                                         ; $70CC: $81
    nop                                           ; $70CD: $00
    add d                                         ; $70CE: $82
    ld bc, $0103                                  ; $70CF: $01 $03 $01
    ld bc, $0000                                  ; $70D2: $01 $00 $00
    nop                                           ; $70D5: $00
    nop                                           ; $70D6: $00
    nop                                           ; $70D7: $00
    add b                                         ; $70D8: $80
    nop                                           ; $70D9: $00
    add b                                         ; $70DA: $80
    nop                                           ; $70DB: $00
    add b                                         ; $70DC: $80
    nop                                           ; $70DD: $00
    nop                                           ; $70DE: $00
    nop                                           ; $70DF: $00
    rrca                                          ; $70E0: $0F
    rlca                                          ; $70E1: $07
    rlca                                          ; $70E2: $07
    nop                                           ; $70E3: $00
    add c                                         ; $70E4: $81
    nop                                           ; $70E5: $00
    ld b, c                                       ; $70E6: $41
    add b                                         ; $70E7: $80
    jr c, jr_022_70AA                             ; $70E8: $38 $C0

    inc a                                         ; $70EA: $3C
    ret c                                         ; $70EB: $D8

    cp $3C                                        ; $70EC: $FE $3C
    rst RST_38                                    ; $70EE: $FF
    cp [hl]                                       ; $70EF: $BE
    rst RST_00                                    ; $70F0: $C7
    cp [hl]                                       ; $70F1: $BE
    cp c                                          ; $70F2: $B9
    ld b, $07                                     ; $70F3: $06 $07
    nop                                           ; $70F5: $00
    nop                                           ; $70F6: $00
    nop                                           ; $70F7: $00
    nop                                           ; $70F8: $00
    nop                                           ; $70F9: $00
    nop                                           ; $70FA: $00
    nop                                           ; $70FB: $00
    nop                                           ; $70FC: $00
    nop                                           ; $70FD: $00
    nop                                           ; $70FE: $00
    nop                                           ; $70FF: $00
    and b                                         ; $7100: $A0
    ld b, b                                       ; $7101: $40
    and b                                         ; $7102: $A0
    ld b, b                                       ; $7103: $40
    ld b, b                                       ; $7104: $40
    add b                                         ; $7105: $80
    ld b, b                                       ; $7106: $40
    add b                                         ; $7107: $80
    add b                                         ; $7108: $80
    nop                                           ; $7109: $00
    nop                                           ; $710A: $00
    nop                                           ; $710B: $00
    nop                                           ; $710C: $00
    nop                                           ; $710D: $00
    nop                                           ; $710E: $00
    nop                                           ; $710F: $00
    ldh [rP1], a                                  ; $7110: $E0 $00
    ldh a, [$FFE0]                                ; $7112: $F0 $E0
    ldh a, [$FFE0]                                ; $7114: $F0 $E0
    ld hl, sp+$70                                 ; $7116: $F8 $70
    ld a, b                                       ; $7118: $78
    jr nz, jr_022_713F                            ; $7119: $20 $24

    jr jr_022_7131                                ; $711B: $18 $14

    ld [$000C], sp                                ; $711D: $08 $0C $00
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
    inc bc                                        ; $712C: $03
    nop                                           ; $712D: $00
    ld a, a                                       ; $712E: $7F
    inc bc                                        ; $712F: $03
    cp h                                          ; $7130: $BC

jr_022_7131:
    ld e, a                                       ; $7131: $5F
    rst RST_38                                    ; $7132: $FF
    ld b, b                                       ; $7133: $40
    rst RST_38                                    ; $7134: $FF
    ld c, e                                       ; $7135: $4B
    ld e, a                                       ; $7136: $5F
    inc l                                         ; $7137: $2C
    ld a, a                                       ; $7138: $7F
    jr nc, jr_022_71B7                            ; $7139: $30 $7C

    jr c, @+$3A                                   ; $713B: $38 $38

    nop                                           ; $713D: $00
    nop                                           ; $713E: $00

jr_022_713F:
    nop                                           ; $713F: $00
    nop                                           ; $7140: $00
    nop                                           ; $7141: $00
    nop                                           ; $7142: $00
    nop                                           ; $7143: $00
    nop                                           ; $7144: $00
    nop                                           ; $7145: $00
    nop                                           ; $7146: $00
    nop                                           ; $7147: $00
    inc e                                         ; $7148: $1C
    nop                                           ; $7149: $00
    ccf                                           ; $714A: $3F
    nop                                           ; $714B: $00
    rst RST_38                                    ; $714C: $FF
    rra                                           ; $714D: $1F
    ldh a, [rIE]                                  ; $714E: $F0 $FF
    nop                                           ; $7150: $00
    rst RST_38                                    ; $7151: $FF
    add b                                         ; $7152: $80
    ld a, a                                       ; $7153: $7F
    rst RST_38                                    ; $7154: $FF
    rst RST_38                                    ; $7155: $FF
    rst RST_38                                    ; $7156: $FF
    nop                                           ; $7157: $00
    rst RST_38                                    ; $7158: $FF
    ld [hl], b                                    ; $7159: $70
    ld a, b                                       ; $715A: $78
    nop                                           ; $715B: $00
    nop                                           ; $715C: $00
    nop                                           ; $715D: $00
    nop                                           ; $715E: $00
    nop                                           ; $715F: $00
    nop                                           ; $7160: $00
    nop                                           ; $7161: $00
    nop                                           ; $7162: $00
    nop                                           ; $7163: $00
    add hl, de                                    ; $7164: $19
    nop                                           ; $7165: $00
    rla                                           ; $7166: $17
    ld [$077F], sp                                ; $7167: $08 $7F $07
    db $FC                                        ; $716A: $FC
    ld a, a                                       ; $716B: $7F
    ret nz                                        ; $716C: $C0

    rst RST_38                                    ; $716D: $FF
    nop                                           ; $716E: $00
    rst RST_38                                    ; $716F: $FF
    nop                                           ; $7170: $00
    rst RST_38                                    ; $7171: $FF
    nop                                           ; $7172: $00
    rst RST_38                                    ; $7173: $FF
    cp $FF                                        ; $7174: $FE $FF
    rst RST_38                                    ; $7176: $FF
    rlca                                          ; $7177: $07
    rst RST_38                                    ; $7178: $FF
    nop                                           ; $7179: $00
    ld [bc], a                                    ; $717A: $02
    ld bc, $0001                                  ; $717B: $01 $01 $00
    nop                                           ; $717E: $00
    nop                                           ; $717F: $00
    nop                                           ; $7180: $00
    nop                                           ; $7181: $00
    and b                                         ; $7182: $A0
    nop                                           ; $7183: $00
    ld e, a                                       ; $7184: $5F
    and b                                         ; $7185: $A0
    rst RST_38                                    ; $7186: $FF
    rrca                                          ; $7187: $0F
    rst RST_38                                    ; $7188: $FF
    rst RST_38                                    ; $7189: $FF
    nop                                           ; $718A: $00
    rst RST_38                                    ; $718B: $FF
    nop                                           ; $718C: $00
    rst RST_38                                    ; $718D: $FF
    nop                                           ; $718E: $00
    rst RST_38                                    ; $718F: $FF
    nop                                           ; $7190: $00
    rst RST_38                                    ; $7191: $FF
    nop                                           ; $7192: $00
    rst RST_38                                    ; $7193: $FF
    nop                                           ; $7194: $00
    rst RST_38                                    ; $7195: $FF
    rst RST_38                                    ; $7196: $FF
    rst RST_38                                    ; $7197: $FF
    rst RST_38                                    ; $7198: $FF
    rrca                                          ; $7199: $0F
    ld a, a                                       ; $719A: $7F
    add b                                         ; $719B: $80
    add c                                         ; $719C: $81
    ld a, [hl]                                    ; $719D: $7E
    rst RST_38                                    ; $719E: $FF
    nop                                           ; $719F: $00
    nop                                           ; $71A0: $00
    nop                                           ; $71A1: $00
    nop                                           ; $71A2: $00
    nop                                           ; $71A3: $00
    cp $00                                        ; $71A4: $FE $00
    rst RST_38                                    ; $71A6: $FF
    cp $FF                                        ; $71A7: $FE $FF
    rst RST_38                                    ; $71A9: $FF
    rlca                                          ; $71AA: $07
    rst RST_38                                    ; $71AB: $FF
    nop                                           ; $71AC: $00
    rst RST_38                                    ; $71AD: $FF
    nop                                           ; $71AE: $00
    rst RST_38                                    ; $71AF: $FF
    nop                                           ; $71B0: $00
    rst RST_38                                    ; $71B1: $FF
    nop                                           ; $71B2: $00
    rst RST_38                                    ; $71B3: $FF
    rlca                                          ; $71B4: $07
    rst RST_38                                    ; $71B5: $FF
    rst RST_38                                    ; $71B6: $FF

jr_022_71B7:
    rst RST_38                                    ; $71B7: $FF
    rst RST_38                                    ; $71B8: $FF
    rst RST_38                                    ; $71B9: $FF
    rst RST_38                                    ; $71BA: $FF
    nop                                           ; $71BB: $00
    add hl, bc                                    ; $71BC: $09
    ld b, $0F                                     ; $71BD: $06 $0F
    nop                                           ; $71BF: $00
    nop                                           ; $71C0: $00
    nop                                           ; $71C1: $00
    nop                                           ; $71C2: $00
    nop                                           ; $71C3: $00
    nop                                           ; $71C4: $00
    nop                                           ; $71C5: $00
    db $FC                                        ; $71C6: $FC
    nop                                           ; $71C7: $00
    rst RST_38                                    ; $71C8: $FF
    ret nz                                        ; $71C9: $C0

    rst RST_38                                    ; $71CA: $FF
    cp $7F                                        ; $71CB: $FE $7F
    ld hl, sp+$07                                 ; $71CD: $F8 $07
    rst RST_38                                    ; $71CF: $FF
    rra                                           ; $71D0: $1F
    cp $FF                                        ; $71D1: $FE $FF
    ldh a, [rIE]                                  ; $71D3: $F0 $FF
    db $FC                                        ; $71D5: $FC
    rst RST_38                                    ; $71D6: $FF
    ldh [$FFFC], a                                ; $71D7: $E0 $FC
    nop                                           ; $71D9: $00
    ld hl, sp+$50                                 ; $71DA: $F8 $50
    ld hl, sp+$50                                 ; $71DC: $F8 $50
    ldh a, [$FFC0]                                ; $71DE: $F0 $C0
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
    add b                                         ; $71F0: $80
    nop                                           ; $71F1: $00
    nop                                           ; $71F2: $00
    nop                                           ; $71F3: $00
    ldh [rP1], a                                  ; $71F4: $E0 $00
    ld hl, sp-$40                                 ; $71F6: $F8 $C0
    cp $00                                        ; $71F8: $FE $00
    ret nz                                        ; $71FA: $C0

    nop                                           ; $71FB: $00
    ldh a, [rP1]                                  ; $71FC: $F0 $00
    ret nz                                        ; $71FE: $C0

    nop                                           ; $71FF: $00
    ld bc, $0200                                  ; $7200: $01 $00 $02
    ld bc, $0334                                  ; $7203: $01 $34 $03
    ld e, b                                       ; $7206: $58
    scf                                           ; $7207: $37
    ld a, h                                       ; $7208: $7C
    inc sp                                        ; $7209: $33
    ccf                                           ; $720A: $3F
    inc c                                         ; $720B: $0C
    daa                                           ; $720C: $27
    rra                                           ; $720D: $1F
    inc de                                        ; $720E: $13
    rrca                                          ; $720F: $0F
    dec bc                                        ; $7210: $0B
    ld b, $0B                                     ; $7211: $06 $0B
    ld b, $0F                                     ; $7213: $06 $0F
    nop                                           ; $7215: $00
    rra                                           ; $7216: $1F
    ld c, $7F                                     ; $7217: $0E $7F
    rrca                                          ; $7219: $0F
    adc a                                         ; $721A: $8F
    ld [hl], a                                    ; $721B: $77
    rst RST_38                                    ; $721C: $FF
    nop                                           ; $721D: $00
    nop                                           ; $721E: $00
    nop                                           ; $721F: $00
    cp $00                                        ; $7220: $FE $00
    rst RST_38                                    ; $7222: $FF
    nop                                           ; $7223: $00
    ld a, b                                       ; $7224: $78
    add a                                         ; $7225: $87
    jr nc, @-$2F                                  ; $7226: $30 $CF

    call z, Call_000_0303                         ; $7228: $CC $03 $03
    nop                                           ; $722B: $00
    add c                                         ; $722C: $81
    nop                                           ; $722D: $00
    add d                                         ; $722E: $82
    ld bc, $0103                                  ; $722F: $01 $03 $01
    ld bc, $0000                                  ; $7232: $01 $00 $00
    nop                                           ; $7235: $00
    nop                                           ; $7236: $00
    nop                                           ; $7237: $00
    add b                                         ; $7238: $80
    nop                                           ; $7239: $00
    add b                                         ; $723A: $80
    nop                                           ; $723B: $00
    add b                                         ; $723C: $80
    nop                                           ; $723D: $00
    nop                                           ; $723E: $00
    nop                                           ; $723F: $00
    ccf                                           ; $7240: $3F
    ld b, $3E                                     ; $7241: $06 $3E
    dec e                                         ; $7243: $1D
    sbc [hl]                                      ; $7244: $9E
    ld bc, $8245                                  ; $7245: $01 $45 $82
    dec a                                         ; $7248: $3D
    jp nz, $D83E                                  ; $7249: $C2 $3E $D8

    cp $3C                                        ; $724C: $FE $3C
    rst RST_38                                    ; $724E: $FF
    cp [hl]                                       ; $724F: $BE
    rst RST_00                                    ; $7250: $C7
    cp [hl]                                       ; $7251: $BE
    cp c                                          ; $7252: $B9
    ld b, $07                                     ; $7253: $06 $07
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
    add b                                         ; $7260: $80
    nop                                           ; $7261: $00
    add b                                         ; $7262: $80
    nop                                           ; $7263: $00
    add b                                         ; $7264: $80
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
    ldh [rP1], a                                  ; $7270: $E0 $00
    ldh a, [$FFE0]                                ; $7272: $F0 $E0
    ldh a, [$FFE0]                                ; $7274: $F0 $E0
    ld hl, sp+$70                                 ; $7276: $F8 $70
    ld a, b                                       ; $7278: $78
    jr nz, jr_022_729F                            ; $7279: $20 $24

    jr jr_022_7291                                ; $727B: $18 $14

    ld [$000C], sp                                ; $727D: $08 $0C $00
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
    ld a, a                                       ; $728E: $7F
    nop                                           ; $728F: $00
    and [hl]                                      ; $7290: $A6

jr_022_7291:
    ld e, e                                       ; $7291: $5B
    rst RST_38                                    ; $7292: $FF
    ld e, h                                       ; $7293: $5C
    rst RST_38                                    ; $7294: $FF
    ld c, a                                       ; $7295: $4F
    ld e, a                                       ; $7296: $5F
    cpl                                           ; $7297: $2F
    ld a, a                                       ; $7298: $7F
    jr nc, jr_022_7317                            ; $7299: $30 $7C

    jr c, jr_022_72D5                             ; $729B: $38 $38

    nop                                           ; $729D: $00
    nop                                           ; $729E: $00

jr_022_729F:
    nop                                           ; $729F: $00
    nop                                           ; $72A0: $00
    nop                                           ; $72A1: $00
    nop                                           ; $72A2: $00
    nop                                           ; $72A3: $00
    nop                                           ; $72A4: $00
    nop                                           ; $72A5: $00
    nop                                           ; $72A6: $00
    nop                                           ; $72A7: $00

jr_022_72A8:
    ld e, $00                                     ; $72A8: $1E $00
    ld [hl+], a                                   ; $72AA: $22
    inc e                                         ; $72AB: $1C
    ld e, h                                       ; $72AC: $5C
    jr nz, jr_022_72A8                            ; $72AD: $20 $F9

    nop                                           ; $72AF: $00
    rrca                                          ; $72B0: $0F
    ldh a, [$FFF9]                                ; $72B1: $F0 $F9
    halt                                          ; $72B3: $76
    ld hl, sp+$77                                 ; $72B4: $F8 $77
    ld hl, sp+$77                                 ; $72B6: $F8 $77
    rst RST_38                                    ; $72B8: $FF
    ld [hl], b                                    ; $72B9: $70
    ld a, b                                       ; $72BA: $78
    nop                                           ; $72BB: $00
    nop                                           ; $72BC: $00
    nop                                           ; $72BD: $00
    nop                                           ; $72BE: $00
    nop                                           ; $72BF: $00
    nop                                           ; $72C0: $00
    nop                                           ; $72C1: $00
    ld bc, $3200                                  ; $72C2: $01 $00 $32
    ld bc, $132C                                  ; $72C5: $01 $2C $13
    dec l                                         ; $72C8: $2D

jr_022_72C9:
    ld [de], a                                    ; $72C9: $12
    scf                                           ; $72CA: $37
    jr jr_022_72C9                                ; $72CB: $18 $FC

    inc bc                                        ; $72CD: $03
    ld [$10F7], sp                                ; $72CE: $08 $F7 $10
    rst RST_28                                    ; $72D1: $EF
    db $10                                        ; $72D2: $10
    rst RST_28                                    ; $72D3: $EF
    sub b                                         ; $72D4: $90

jr_022_72D5:
    ld l, a                                       ; $72D5: $6F
    ld c, b                                       ; $72D6: $48
    or a                                          ; $72D7: $B7
    ld hl, sp+$07                                 ; $72D8: $F8 $07
    inc b                                         ; $72DA: $04
    inc bc                                        ; $72DB: $03
    inc bc                                        ; $72DC: $03
    nop                                           ; $72DD: $00
    ld bc, $0000                                  ; $72DE: $01 $00 $00
    nop                                           ; $72E1: $00
    ld b, b                                       ; $72E2: $40
    nop                                           ; $72E3: $00
    and e                                         ; $72E4: $A3
    ld b, b                                       ; $72E5: $40
    push af                                       ; $72E6: $F5
    ld [bc], a                                    ; $72E7: $02
    ei                                            ; $72E8: $FB
    or $FE                                        ; $72E9: $F6 $FE
    inc c                                         ; $72EB: $0C
    rra                                           ; $72EC: $1F
    ldh [rSC], a                                  ; $72ED: $E0 $02
    db $FD                                        ; $72EF: $FD
    inc b                                         ; $72F0: $04
    ei                                            ; $72F1: $FB
    inc b                                         ; $72F2: $04
    ei                                            ; $72F3: $FB
    inc b                                         ; $72F4: $04
    ei                                            ; $72F5: $FB
    inc bc                                        ; $72F6: $03
    db $FC                                        ; $72F7: $FC
    ld bc, $FFFE                                  ; $72F8: $01 $FE $FF
    nop                                           ; $72FB: $00
    ld [bc], a                                    ; $72FC: $02
    db $FC                                        ; $72FD: $FC
    cp $00                                        ; $72FE: $FE $00
    nop                                           ; $7300: $00
    nop                                           ; $7301: $00
    nop                                           ; $7302: $00
    nop                                           ; $7303: $00
    nop                                           ; $7304: $00
    nop                                           ; $7305: $00
    nop                                           ; $7306: $00
    nop                                           ; $7307: $00
    nop                                           ; $7308: $00
    nop                                           ; $7309: $00
    nop                                           ; $730A: $00
    nop                                           ; $730B: $00
    ldh a, [rP1]                                  ; $730C: $F0 $00
    ld [$38F0], sp                                ; $730E: $08 $F0 $38
    ret nz                                        ; $7311: $C0

    ld a, h                                       ; $7312: $7C
    add b                                         ; $7313: $80
    or a                                          ; $7314: $B7
    ld c, h                                       ; $7315: $4C
    inc e                                         ; $7316: $1C

jr_022_7317:
    db $E3                                        ; $7317: $E3
    rla                                           ; $7318: $17
    db $ED                                        ; $7319: $ED
    adc a                                         ; $731A: $8F
    halt                                          ; $731B: $76
    adc a                                         ; $731C: $8F
    ld [hl], d                                    ; $731D: $72
    ld c, a                                       ; $731E: $4F
    ld [hl-], a                                   ; $731F: $32
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
    add b                                         ; $7336: $80
    nop                                           ; $7337: $00
    ld b, b                                       ; $7338: $40

jr_022_7339:
    add b                                         ; $7339: $80
    ld b, b                                       ; $733A: $40
    add b                                         ; $733B: $80
    ret nz                                        ; $733C: $C0

    add b                                         ; $733D: $80
    ret nz                                        ; $733E: $C0

    add b                                         ; $733F: $80
    rrca                                          ; $7340: $0F
    ld bc, $0307                                  ; $7341: $01 $07 $03
    scf                                           ; $7344: $37
    nop                                           ; $7345: $00
    ld e, b                                       ; $7346: $58
    scf                                           ; $7347: $37
    ld a, h                                       ; $7348: $7C
    inc sp                                        ; $7349: $33
    ccf                                           ; $734A: $3F
    inc c                                         ; $734B: $0C
    daa                                           ; $734C: $27
    rra                                           ; $734D: $1F
    inc de                                        ; $734E: $13
    rrca                                          ; $734F: $0F
    dec bc                                        ; $7350: $0B
    rlca                                          ; $7351: $07
    dec bc                                        ; $7352: $0B
    ld b, $0F                                     ; $7353: $06 $0F
    nop                                           ; $7355: $00
    rra                                           ; $7356: $1F
    ld c, $7F                                     ; $7357: $0E $7F
    rrca                                          ; $7359: $0F
    adc a                                         ; $735A: $8F
    ld [hl], a                                    ; $735B: $77
    rst RST_38                                    ; $735C: $FF
    nop                                           ; $735D: $00
    nop                                           ; $735E: $00
    nop                                           ; $735F: $00
    db $FD                                        ; $7360: $FD
    ei                                            ; $7361: $FB

jr_022_7362:
    rst RST_38                                    ; $7362: $FF
    inc hl                                        ; $7363: $23
    rst RST_38                                    ; $7364: $FF
    ret nz                                        ; $7365: $C0

    ldh a, [rIF]                                  ; $7366: $F0 $0F
    jr nc, jr_022_7339                            ; $7368: $30 $CF

    ret z                                         ; $736A: $C8

    rlca                                          ; $736B: $07
    add h                                         ; $736C: $84
    inc bc                                        ; $736D: $03
    add e                                         ; $736E: $83
    nop                                           ; $736F: $00
    add d                                         ; $7370: $82
    ld bc, $0103                                  ; $7371: $01 $03 $01
    ld bc, $0000                                  ; $7374: $01 $00 $00
    nop                                           ; $7377: $00
    add b                                         ; $7378: $80
    nop                                           ; $7379: $00
    add b                                         ; $737A: $80
    nop                                           ; $737B: $00
    add b                                         ; $737C: $80
    nop                                           ; $737D: $00
    nop                                           ; $737E: $00
    nop                                           ; $737F: $00
    rst RST_38                                    ; $7380: $FF
    halt                                          ; $7381: $76
    rst RST_38                                    ; $7382: $FF
    ld [hl], a                                    ; $7383: $77
    rst RST_30                                    ; $7384: $F7
    nop                                           ; $7385: $00
    add b                                         ; $7386: $80
    nop                                           ; $7387: $00
    add b                                         ; $7388: $80
    nop                                           ; $7389: $00
    ld b, b                                       ; $738A: $40
    add b                                         ; $738B: $80
    ld e, h                                       ; $738C: $5C
    add b                                         ; $738D: $80
    rst RST_38                                    ; $738E: $FF
    inc e                                         ; $738F: $1C
    rst RST_38                                    ; $7390: $FF
    cp a                                          ; $7391: $BF
    rst RST_38                                    ; $7392: $FF
    cp a                                          ; $7393: $BF
    ret nz                                        ; $7394: $C0

    ccf                                           ; $7395: $3F
    ccf                                           ; $7396: $3F
    nop                                           ; $7397: $00
    nop                                           ; $7398: $00
    nop                                           ; $7399: $00
    ld bc, $0200                                  ; $739A: $01 $00 $02
    ld bc, $0003                                  ; $739D: $01 $03 $00
    jr nz, jr_022_7362                            ; $73A0: $20 $C0

    ret nz                                        ; $73A2: $C0

    nop                                           ; $73A3: $00

jr_022_73A4:
    nop                                           ; $73A4: $00
    nop                                           ; $73A5: $00
    nop                                           ; $73A6: $00
    nop                                           ; $73A7: $00
    nop                                           ; $73A8: $00
    nop                                           ; $73A9: $00
    nop                                           ; $73AA: $00
    nop                                           ; $73AB: $00
    nop                                           ; $73AC: $00
    nop                                           ; $73AD: $00
    nop                                           ; $73AE: $00
    nop                                           ; $73AF: $00
    add b                                         ; $73B0: $80
    nop                                           ; $73B1: $00
    ldh a, [$FF80]                                ; $73B2: $F0 $80
    ld hl, sp+$70                                 ; $73B4: $F8 $70
    ld hl, sp-$10                                 ; $73B6: $F8 $F0
    ld hl, sp+$70                                 ; $73B8: $F8 $70
    ld hl, sp+$10                                 ; $73BA: $F8 $10
    jr @-$1E                                      ; $73BC: $18 $E0

    ld hl, sp+$00                                 ; $73BE: $F8 $00
    ld [$2807], sp                                ; $73C0: $08 $07 $28
    rlca                                          ; $73C3: $07
    ld d, l                                       ; $73C4: $55
    ld a, [hl+]                                   ; $73C5: $2A
    and [hl]                                      ; $73C6: $A6
    ld e, c                                       ; $73C7: $59
    xor l                                         ; $73C8: $AD
    ld e, e                                       ; $73C9: $5B
    rst RST_38                                    ; $73CA: $FF
    ld d, b                                       ; $73CB: $50
    pop af                                        ; $73CC: $F1
    ld c, $8D                                     ; $73CD: $0E $8D
    ld [hl], d                                    ; $73CF: $72
    db $FD                                        ; $73D0: $FD
    ld a, [bc]                                    ; $73D1: $0A
    ld e, l                                       ; $73D2: $5D
    ld [hl+], a                                   ; $73D3: $22
    rst RST_20                                    ; $73D4: $E7
    ld e, h                                       ; $73D5: $5C
    rst RST_30                                    ; $73D6: $F7
    ld e, b                                       ; $73D7: $58
    ld a, a                                       ; $73D8: $7F
    daa                                           ; $73D9: $27
    ld a, a                                       ; $73DA: $7F
    inc a                                         ; $73DB: $3C
    rst RST_38                                    ; $73DC: $FF
    ld [hl], b                                    ; $73DD: $70
    ld a, a                                       ; $73DE: $7F
    cp a                                          ; $73DF: $BF
    inc a                                         ; $73E0: $3C
    ret z                                         ; $73E1: $C8

    jr c, jr_022_73A4                             ; $73E2: $38 $C0

    db $EC                                        ; $73E4: $EC
    nop                                           ; $73E5: $00
    ld [hl], h                                    ; $73E6: $74
    ret z                                         ; $73E7: $C8

    db $EC                                        ; $73E8: $EC
    sbc b                                         ; $73E9: $98
    ret c                                         ; $73EA: $D8

    ld [hl], b                                    ; $73EB: $70
    inc a                                         ; $73EC: $3C
    ldh a, [$FFF3]                                ; $73ED: $F0 $F3
    db $EC                                        ; $73EF: $EC
    ldh [$FFDF], a                                ; $73F0: $E0 $DF
    ld hl, sp+$07                                 ; $73F2: $F8 $07
    db $DD                                        ; $73F4: $DD
    cp d                                          ; $73F5: $BA
    cp a                                          ; $73F6: $BF
    ld h, b                                       ; $73F7: $60
    db $E3                                        ; $73F8: $E3
    inc e                                         ; $73F9: $1C
    ld a, a                                       ; $73FA: $7F
    ret c                                         ; $73FB: $D8

    ld a, a                                       ; $73FC: $7F
    db $DB                                        ; $73FD: $DB
    rst RST_38                                    ; $73FE: $FF
    jr @+$62                                      ; $73FF: $18 $60

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
    add b                                         ; $7410: $80
    nop                                           ; $7411: $00
    ld b, b                                       ; $7412: $40
    add b                                         ; $7413: $80
    ret nz                                        ; $7414: $C0

    nop                                           ; $7415: $00
    ldh [rP1], a                                  ; $7416: $E0 $00

jr_022_7418:
    ld hl, sp-$20                                 ; $7418: $F8 $E0
    db $E4                                        ; $741A: $E4
    ret c                                         ; $741B: $D8

    ld hl, sp-$20                                 ; $741C: $F8 $E0
    db $FC                                        ; $741E: $FC
    ldh [rP1], a                                  ; $741F: $E0 $00
    nop                                           ; $7421: $00
    nop                                           ; $7422: $00
    nop                                           ; $7423: $00
    nop                                           ; $7424: $00
    nop                                           ; $7425: $00
    nop                                           ; $7426: $00
    nop                                           ; $7427: $00
    nop                                           ; $7428: $00
    nop                                           ; $7429: $00
    nop                                           ; $742A: $00
    nop                                           ; $742B: $00
    jr jr_022_742E                                ; $742C: $18 $00

jr_022_742E:
    ld a, $18                                     ; $742E: $3E $18
    ccf                                           ; $7430: $3F
    nop                                           ; $7431: $00
    cp $1F                                        ; $7432: $FE $1F
    rst RST_38                                    ; $7434: $FF
    ld e, b                                       ; $7435: $58
    ld a, a                                       ; $7436: $7F
    rla                                           ; $7437: $17
    rra                                           ; $7438: $1F
    ld [$081F], sp                                ; $7439: $08 $1F $08
    inc e                                         ; $743C: $1C
    inc bc                                        ; $743D: $03
    ld [hl+], a                                   ; $743E: $22
    dec e                                         ; $743F: $1D
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
    add b                                         ; $7450: $80
    nop                                           ; $7451: $00
    ld b, b                                       ; $7452: $40
    add b                                         ; $7453: $80
    ret nz                                        ; $7454: $C0

jr_022_7455:
    nop                                           ; $7455: $00
    jr nc, jr_022_7418                            ; $7456: $30 $C0

    ret c                                         ; $7458: $D8

    ld h, b                                       ; $7459: $60
    db $F4                                        ; $745A: $F4
    jr z, @+$7C                                   ; $745B: $28 $7A

    and h                                         ; $745D: $A4
    ld [hl], l                                    ; $745E: $75
    and d                                         ; $745F: $A2
    ld bc, $0200                                  ; $7460: $01 $00 $02
    ld bc, $0334                                  ; $7463: $01 $34 $03
    ld e, b                                       ; $7466: $58
    scf                                           ; $7467: $37
    ld a, h                                       ; $7468: $7C
    inc sp                                        ; $7469: $33
    ccf                                           ; $746A: $3F
    inc c                                         ; $746B: $0C
    daa                                           ; $746C: $27
    rra                                           ; $746D: $1F
    inc de                                        ; $746E: $13
    rrca                                          ; $746F: $0F
    dec bc                                        ; $7470: $0B
    rlca                                          ; $7471: $07
    dec bc                                        ; $7472: $0B
    ld b, $0F                                     ; $7473: $06 $0F
    nop                                           ; $7475: $00
    rra                                           ; $7476: $1F
    ld c, $7F                                     ; $7477: $0E $7F
    rrca                                          ; $7479: $0F
    adc a                                         ; $747A: $8F
    ld [hl], a                                    ; $747B: $77
    rst RST_38                                    ; $747C: $FF
    nop                                           ; $747D: $00
    nop                                           ; $747E: $00
    nop                                           ; $747F: $00
    cp $00                                        ; $7480: $FE $00
    ld a, c                                       ; $7482: $79
    add [hl]                                      ; $7483: $86
    jr nc, jr_022_7455                            ; $7484: $30 $CF

    jr nc, @-$2F                                  ; $7486: $30 $CF

    ret z                                         ; $7488: $C8

    rlca                                          ; $7489: $07
    inc b                                         ; $748A: $04
    inc bc                                        ; $748B: $03
    add e                                         ; $748C: $83
    nop                                           ; $748D: $00
    add d                                         ; $748E: $82
    ld bc, $0183                                  ; $748F: $01 $83 $01
    ld bc, $0000                                  ; $7492: $01 $00 $00
    nop                                           ; $7495: $00
    nop                                           ; $7496: $00
    nop                                           ; $7497: $00
    add b                                         ; $7498: $80
    nop                                           ; $7499: $00
    add b                                         ; $749A: $80
    nop                                           ; $749B: $00
    add b                                         ; $749C: $80
    nop                                           ; $749D: $00
    nop                                           ; $749E: $00
    nop                                           ; $749F: $00
    ccf                                           ; $74A0: $3F
    nop                                           ; $74A1: $00
    nop                                           ; $74A2: $00
    nop                                           ; $74A3: $00
    add b                                         ; $74A4: $80
    nop                                           ; $74A5: $00
    add b                                         ; $74A6: $80
    nop                                           ; $74A7: $00
    ld b, b                                       ; $74A8: $40
    add b                                         ; $74A9: $80
    ld e, h                                       ; $74AA: $5C
    add b                                         ; $74AB: $80
    cp $1C                                        ; $74AC: $FE $1C
    rst RST_38                                    ; $74AE: $FF
    cp [hl]                                       ; $74AF: $BE
    rst RST_38                                    ; $74B0: $FF
    cp a                                          ; $74B1: $BF
    jp Jump_000_3C3F                              ; $74B2: $C3 $3F $3C


    inc bc                                        ; $74B5: $03
    inc bc                                        ; $74B6: $03
    nop                                           ; $74B7: $00
    nop                                           ; $74B8: $00
    nop                                           ; $74B9: $00
    ld bc, $0200                                  ; $74BA: $01 $00 $02
    ld bc, $0003                                  ; $74BD: $01 $03 $00
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
    nop                                           ; $74CC: $00
    nop                                           ; $74CD: $00
    nop                                           ; $74CE: $00
    nop                                           ; $74CF: $00
    add b                                         ; $74D0: $80
    nop                                           ; $74D1: $00
    ldh a, [$FF80]                                ; $74D2: $F0 $80
    ld hl, sp+$70                                 ; $74D4: $F8 $70
    ld hl, sp-$10                                 ; $74D6: $F8 $F0
    ld hl, sp+$70                                 ; $74D8: $F8 $70
    ld hl, sp+$10                                 ; $74DA: $F8 $10
    jr @-$1E                                      ; $74DC: $18 $E0

    ld hl, sp+$00                                 ; $74DE: $F8 $00
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
    rlca                                          ; $74EC: $07
    nop                                           ; $74ED: $00
    ccf                                           ; $74EE: $3F
    ld bc, $0FFE                                  ; $74EF: $01 $FE $0F
    rra                                           ; $74F2: $1F
    inc bc                                        ; $74F3: $03
    ld a, a                                       ; $74F4: $7F
    nop                                           ; $74F5: $00
    nop                                           ; $74F6: $00
    nop                                           ; $74F7: $00
    nop                                           ; $74F8: $00
    nop                                           ; $74F9: $00
    nop                                           ; $74FA: $00
    nop                                           ; $74FB: $00
    nop                                           ; $74FC: $00
    nop                                           ; $74FD: $00
    nop                                           ; $74FE: $00
    nop                                           ; $74FF: $00
    nop                                           ; $7500: $00
    nop                                           ; $7501: $00
    nop                                           ; $7502: $00
    nop                                           ; $7503: $00
    nop                                           ; $7504: $00
    nop                                           ; $7505: $00
    nop                                           ; $7506: $00
    nop                                           ; $7507: $00
    nop                                           ; $7508: $00
    nop                                           ; $7509: $00
    rra                                           ; $750A: $1F
    nop                                           ; $750B: $00
    db $FC                                        ; $750C: $FC
    rlca                                          ; $750D: $07
    nop                                           ; $750E: $00
    rst RST_38                                    ; $750F: $FF
    nop                                           ; $7510: $00
    rst RST_38                                    ; $7511: $FF
    nop                                           ; $7512: $00
    rst RST_38                                    ; $7513: $FF
    cp $03                                        ; $7514: $FE $03
    ccf                                           ; $7516: $3F
    nop                                           ; $7517: $00
    nop                                           ; $7518: $00
    nop                                           ; $7519: $00
    nop                                           ; $751A: $00
    nop                                           ; $751B: $00
    nop                                           ; $751C: $00
    nop                                           ; $751D: $00
    nop                                           ; $751E: $00
    nop                                           ; $751F: $00
    nop                                           ; $7520: $00
    nop                                           ; $7521: $00
    inc b                                         ; $7522: $04
    nop                                           ; $7523: $00
    dec bc                                        ; $7524: $0B
    inc b                                         ; $7525: $04
    dec bc                                        ; $7526: $0B
    inc b                                         ; $7527: $04
    db $FD                                        ; $7528: $FD
    ld b, $87                                     ; $7529: $06 $87
    ld a, b                                       ; $752B: $78
    add d                                         ; $752C: $82
    ld a, l                                       ; $752D: $7D
    ld b, d                                       ; $752E: $42
    cp l                                          ; $752F: $BD
    ld b, d                                       ; $7530: $42
    cp l                                          ; $7531: $BD
    ld [hl+], a                                   ; $7532: $22
    db $DD                                        ; $7533: $DD
    ld [de], a                                    ; $7534: $12
    db $ED                                        ; $7535: $ED
    db $FC                                        ; $7536: $FC
    inc bc                                        ; $7537: $03
    ld [bc], a                                    ; $7538: $02
    ld bc, $0001                                  ; $7539: $01 $01 $00
    nop                                           ; $753C: $00
    nop                                           ; $753D: $00
    nop                                           ; $753E: $00
    nop                                           ; $753F: $00
    ld d, b                                       ; $7540: $50
    nop                                           ; $7541: $00
    xor b                                         ; $7542: $A8
    ld d, b                                       ; $7543: $50
    dec a                                         ; $7544: $3D
    ret nz                                        ; $7545: $C0

    ld a, [hl]                                    ; $7546: $7E
    cp l                                          ; $7547: $BD
    rst RST_38                                    ; $7548: $FF
    add e                                         ; $7549: $83
    add e                                         ; $754A: $83
    ld a, h                                       ; $754B: $7C
    nop                                           ; $754C: $00
    rst RST_38                                    ; $754D: $FF
    nop                                           ; $754E: $00
    rst RST_38                                    ; $754F: $FF
    nop                                           ; $7550: $00
    rst RST_38                                    ; $7551: $FF
    nop                                           ; $7552: $00
    rst RST_38                                    ; $7553: $FF
    nop                                           ; $7554: $00
    rst RST_38                                    ; $7555: $FF
    nop                                           ; $7556: $00
    rst RST_38                                    ; $7557: $FF
    ld a, [hl]                                    ; $7558: $7E
    add c                                         ; $7559: $81
    add c                                         ; $755A: $81
    ld a, [hl]                                    ; $755B: $7E
    add c                                         ; $755C: $81
    ld a, [hl]                                    ; $755D: $7E
    rst RST_38                                    ; $755E: $FF
    nop                                           ; $755F: $00
    nop                                           ; $7560: $00
    nop                                           ; $7561: $00
    ret nz                                        ; $7562: $C0

    nop                                           ; $7563: $00
    ld b, b                                       ; $7564: $40
    add b                                         ; $7565: $80
    ret nz                                        ; $7566: $C0

    add b                                         ; $7567: $80
    add b                                         ; $7568: $80
    nop                                           ; $7569: $00
    cp a                                          ; $756A: $BF
    nop                                           ; $756B: $00
    ret nz                                        ; $756C: $C0

    ccf                                           ; $756D: $3F
    add e                                         ; $756E: $83
    ld a, h                                       ; $756F: $7C
    sbc a                                         ; $7570: $9F
    ld h, b                                       ; $7571: $60
    ld h, [hl]                                    ; $7572: $66
    sbc b                                         ; $7573: $98
    ld b, e                                       ; $7574: $43
    cp h                                          ; $7575: $BC
    ld b, e                                       ; $7576: $43
    cp h                                          ; $7577: $BC
    and e                                         ; $7578: $A3
    dec e                                         ; $7579: $1D
    cp a                                          ; $757A: $BF
    inc bc                                        ; $757B: $03
    ccf                                           ; $757C: $3F
    rra                                           ; $757D: $1F
    ccf                                           ; $757E: $3F
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
    add b                                         ; $758E: $80
    nop                                           ; $758F: $00
    add b                                         ; $7590: $80
    nop                                           ; $7591: $00
    nop                                           ; $7592: $00
    nop                                           ; $7593: $00
    nop                                           ; $7594: $00
    nop                                           ; $7595: $00
    add b                                         ; $7596: $80
    nop                                           ; $7597: $00
    ret nz                                        ; $7598: $C0

    nop                                           ; $7599: $00
    ret nz                                        ; $759A: $C0

    nop                                           ; $759B: $00
    ret nz                                        ; $759C: $C0

    nop                                           ; $759D: $00
    ret nz                                        ; $759E: $C0

    nop                                           ; $759F: $00
    ldh [rP1], a                                  ; $75A0: $E0 $00
    ld b, b                                       ; $75A2: $40
    add b                                         ; $75A3: $80
    ret nz                                        ; $75A4: $C0

    nop                                           ; $75A5: $00
    dec c                                         ; $75A6: $0D
    nop                                           ; $75A7: $00

jr_022_75A8:
    ld d, $0D                                     ; $75A8: $16 $0D
    rra                                           ; $75AA: $1F
    inc c                                         ; $75AB: $0C
    rrca                                          ; $75AC: $0F
    inc bc                                        ; $75AD: $03
    add hl, bc                                    ; $75AE: $09
    rlca                                          ; $75AF: $07
    inc b                                         ; $75B0: $04
    inc bc                                        ; $75B1: $03
    ld [bc], a                                    ; $75B2: $02
    ld bc, $0102                                  ; $75B3: $01 $02 $01
    inc bc                                        ; $75B6: $03
    nop                                           ; $75B7: $00
    rlca                                          ; $75B8: $07
    inc bc                                        ; $75B9: $03
    rra                                           ; $75BA: $1F
    inc bc                                        ; $75BB: $03
    inc hl                                        ; $75BC: $23
    dec e                                         ; $75BD: $1D
    ccf                                           ; $75BE: $3F
    nop                                           ; $75BF: $00
    ld a, a                                       ; $75C0: $7F
    nop                                           ; $75C1: $00
    ld a, a                                       ; $75C2: $7F
    nop                                           ; $75C3: $00
    sbc [hl]                                      ; $75C4: $9E
    ld h, c                                       ; $75C5: $61
    inc c                                         ; $75C6: $0C
    di                                            ; $75C7: $F3
    inc c                                         ; $75C8: $0C
    di                                            ; $75C9: $F3
    ld [hl-], a                                   ; $75CA: $32
    pop bc                                        ; $75CB: $C1
    pop bc                                        ; $75CC: $C1
    nop                                           ; $75CD: $00
    ldh [$FFC0], a                                ; $75CE: $E0 $C0
    ldh [$FFC0], a                                ; $75D0: $E0 $C0
    ldh [$FFC0], a                                ; $75D2: $E0 $C0
    ret nz                                        ; $75D4: $C0

    add b                                         ; $75D5: $80
    ret nz                                        ; $75D6: $C0

    nop                                           ; $75D7: $00
    ret nz                                        ; $75D8: $C0

    add b                                         ; $75D9: $80
    ldh [$FFC0], a                                ; $75DA: $E0 $C0
    ldh [$FFC0], a                                ; $75DC: $E0 $C0
    ldh [rP1], a                                  ; $75DE: $E0 $00
    rst RST_38                                    ; $75E0: $FF
    ld a, $7F                                     ; $75E1: $3E $7F
    add c                                         ; $75E3: $81
    cpl                                           ; $75E4: $2F
    ret nz                                        ; $75E5: $C0

    jr nz, jr_022_75A8                            ; $75E6: $20 $C0

    db $10                                        ; $75E8: $10
    ldh [rNR22], a                                ; $75E9: $E0 $17
    ldh [rIE], a                                  ; $75EB: $E0 $FF
    rlca                                          ; $75ED: $07
    cp a                                          ; $75EE: $BF
    ld l, a                                       ; $75EF: $6F
    rst RST_38                                    ; $75F0: $FF
    ld l, a                                       ; $75F1: $6F
    ld [hl], b                                    ; $75F2: $70
    rrca                                          ; $75F3: $0F
    rrca                                          ; $75F4: $0F
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
    ldh [$FFC0], a                                ; $7600: $E0 $C0
    ret nz                                        ; $7602: $C0

    add b                                         ; $7603: $80
    add b                                         ; $7604: $80
    nop                                           ; $7605: $00
    nop                                           ; $7606: $00
    nop                                           ; $7607: $00
    nop                                           ; $7608: $00
    nop                                           ; $7609: $00
    nop                                           ; $760A: $00
    nop                                           ; $760B: $00
    add b                                         ; $760C: $80
    nop                                           ; $760D: $00
    ret nz                                        ; $760E: $C0

    add b                                         ; $760F: $80
    ldh [$FFC0], a                                ; $7610: $E0 $C0
    db $FC                                        ; $7612: $FC
    ldh [$FF3E], a                                ; $7613: $E0 $3E
    call c, Call_000_3CFE                         ; $7615: $DC $FE $3C
    ld a, $1C                                     ; $7618: $3E $1C
    ld a, [hl]                                    ; $761A: $7E
    inc b                                         ; $761B: $04
    add [hl]                                      ; $761C: $86
    ld a, b                                       ; $761D: $78
    cp $00                                        ; $761E: $FE $00
    nop                                           ; $7620: $00
    nop                                           ; $7621: $00
    inc e                                         ; $7622: $1C
    nop                                           ; $7623: $00
    cpl                                           ; $7624: $2F
    inc e                                         ; $7625: $1C
    ld a, a                                       ; $7626: $7F
    ld de, $6EBF                                  ; $7627: $11 $BF $6E
    rst RST_38                                    ; $762A: $FF
    ld e, c                                       ; $762B: $59
    ld e, a                                       ; $762C: $5F
    ld [hl], $5F                                  ; $762D: $36 $5F
    scf                                           ; $762F: $37
    cpl                                           ; $7630: $2F
    dec de                                        ; $7631: $1B
    rra                                           ; $7632: $1F
    rlca                                          ; $7633: $07
    rrca                                          ; $7634: $0F
    dec b                                         ; $7635: $05
    dec b                                         ; $7636: $05

jr_022_7637:
    ld [bc], a                                    ; $7637: $02
    ld [bc], a                                    ; $7638: $02
    ld bc, $0102                                  ; $7639: $01 $02 $01
    ld bc, $0000                                  ; $763C: $01 $00 $00
    nop                                           ; $763F: $00
    nop                                           ; $7640: $00
    nop                                           ; $7641: $00
    nop                                           ; $7642: $00
    nop                                           ; $7643: $00
    inc bc                                        ; $7644: $03
    nop                                           ; $7645: $00
    ld a, [de]                                    ; $7646: $1A
    ld bc, $1927                                  ; $7647: $01 $27 $19
    and c                                         ; $764A: $A1
    ld e, $E0                                     ; $764B: $1E $E0
    sbc a                                         ; $764D: $9F
    pop hl                                        ; $764E: $E1
    sbc [hl]                                      ; $764F: $9E
    sub c                                         ; $7650: $91
    ld c, $D2                                     ; $7651: $0E $D2
    dec c                                         ; $7653: $0D
    ld [$F6D5], a                                 ; $7654: $EA $D5 $F6
    add hl, hl                                    ; $7657: $29
    cp e                                          ; $7658: $BB
    ld d, h                                       ; $7659: $54
    db $DD                                        ; $765A: $DD
    and b                                         ; $765B: $A0
    add sp, -$30                                  ; $765C: $E8 $D0
    ld hl, sp+$60                                 ; $765E: $F8 $60

Call_022_7660:
    nop                                           ; $7660: $00
    nop                                           ; $7661: $00
    inc d                                         ; $7662: $14
    nop                                           ; $7663: $00
    ld a, [hl+]                                   ; $7664: $2A
    inc d                                         ; $7665: $14
    rst RST_08                                    ; $7666: $CF
    jr nc, jr_022_76C8                            ; $7667: $30 $5F

    xor a                                         ; $7669: $AF
    rst RST_38                                    ; $766A: $FF
    and b                                         ; $766B: $A0
    ldh [$FF1F], a                                ; $766C: $E0 $1F
    nop                                           ; $766E: $00
    rst RST_38                                    ; $766F: $FF
    nop                                           ; $7670: $00
    rst RST_38                                    ; $7671: $FF
    nop                                           ; $7672: $00
    rst RST_38                                    ; $7673: $FF
    nop                                           ; $7674: $00
    rst RST_38                                    ; $7675: $FF
    nop                                           ; $7676: $00
    rst RST_38                                    ; $7677: $FF
    nop                                           ; $7678: $00
    rst RST_38                                    ; $7679: $FF
    ld a, [hl]                                    ; $767A: $7E
    add c                                         ; $767B: $81
    add c                                         ; $767C: $81
    ld a, [hl]                                    ; $767D: $7E
    ld b, b                                       ; $767E: $40
    ccf                                           ; $767F: $3F
    nop                                           ; $7680: $00
    nop                                           ; $7681: $00
    jr nc, jr_022_7684                            ; $7682: $30 $00

jr_022_7684:
    ld d, b                                       ; $7684: $50
    jr nz, jr_022_7637                            ; $7685: $20 $B0

    ld h, b                                       ; $7687: $60
    ldh [$FFC0], a                                ; $7688: $E0 $C0
    ret c                                         ; $768A: $D8

    nop                                           ; $768B: $00
    ld h, $D8                                     ; $768C: $26 $D8
    ld b, c                                       ; $768E: $41
    cp [hl]                                       ; $768F: $BE
    ld b, b                                       ; $7690: $40
    cp a                                          ; $7691: $BF
    ld a, a                                       ; $7692: $7F
    add b                                         ; $7693: $80
    inc hl                                        ; $7694: $23
    call c, $BC43                                 ; $7695: $DC $43 $BC
    ld b, a                                       ; $7698: $47
    cp b                                          ; $7699: $B8
    rst RST_00                                    ; $769A: $C7
    dec sp                                        ; $769B: $3B
    rst RST_28                                    ; $769C: $EF
    ld d, e                                       ; $769D: $53
    rst RST_38                                    ; $769E: $FF
    ld b, e                                       ; $769F: $43
    nop                                           ; $76A0: $00
    nop                                           ; $76A1: $00
    nop                                           ; $76A2: $00
    nop                                           ; $76A3: $00
    nop                                           ; $76A4: $00
    nop                                           ; $76A5: $00
    nop                                           ; $76A6: $00
    nop                                           ; $76A7: $00
    nop                                           ; $76A8: $00
    nop                                           ; $76A9: $00
    nop                                           ; $76AA: $00
    nop                                           ; $76AB: $00
    nop                                           ; $76AC: $00
    nop                                           ; $76AD: $00
    nop                                           ; $76AE: $00
    nop                                           ; $76AF: $00

jr_022_76B0:
    add b                                         ; $76B0: $80
    nop                                           ; $76B1: $00
    ld b, b                                       ; $76B2: $40
    add b                                         ; $76B3: $80
    ld b, b                                       ; $76B4: $40
    add b                                         ; $76B5: $80
    add b                                         ; $76B6: $80
    nop                                           ; $76B7: $00
    ldh [rP1], a                                  ; $76B8: $E0 $00
    ret nc                                        ; $76BA: $D0

    ld h, b                                       ; $76BB: $60
    ldh a, [rNR41]                                ; $76BC: $F0 $20
    and b                                         ; $76BE: $A0
    ld b, b                                       ; $76BF: $40
    ld bc, $0000                                  ; $76C0: $01 $00 $00
    nop                                           ; $76C3: $00
    ld l, a                                       ; $76C4: $6F
    nop                                           ; $76C5: $00
    or c                                          ; $76C6: $B1
    ld l, [hl]                                    ; $76C7: $6E

jr_022_76C8:
    ld a, [$7F65]                                 ; $76C8: $FA $65 $7F
    jr jr_022_76F4                                ; $76CB: $18 $27

    ld e, $13                                     ; $76CD: $1E $13
    rrca                                          ; $76CF: $0F
    dec bc                                        ; $76D0: $0B
    rlca                                          ; $76D1: $07
    dec b                                         ; $76D2: $05
    inc bc                                        ; $76D3: $03
    inc bc                                        ; $76D4: $03
    nop                                           ; $76D5: $00
    rlca                                          ; $76D6: $07
    inc bc                                        ; $76D7: $03
    rra                                           ; $76D8: $1F
    inc bc                                        ; $76D9: $03
    inc hl                                        ; $76DA: $23
    dec e                                         ; $76DB: $1D
    ccf                                           ; $76DC: $3F
    nop                                           ; $76DD: $00
    ld bc, $EF00                                  ; $76DE: $01 $00 $EF
    or b                                          ; $76E1: $B0
    rst RST_38                                    ; $76E2: $FF
    ld c, [hl]                                    ; $76E3: $4E
    cp $79                                        ; $76E4: $FE $79
    cp $E1                                        ; $76E6: $FE $E1
    rst RST_38                                    ; $76E8: $FF
    ld a, [hl]                                    ; $76E9: $7E
    rst RST_38                                    ; $76EA: $FF
    ld a, [hl]                                    ; $76EB: $7E
    rst RST_38                                    ; $76EC: $FF
    ret z                                         ; $76ED: $C8

    rst RST_38                                    ; $76EE: $FF
    jr nc, jr_022_76B0                            ; $76EF: $30 $BF

    ld bc, $0386                                  ; $76F1: $01 $86 $03

jr_022_76F4:
    adc h                                         ; $76F4: $8C
    rlca                                          ; $76F5: $07
    ret c                                         ; $76F6: $D8

    adc a                                         ; $76F7: $8F
    ldh a, [$FFDF]                                ; $76F8: $F0 $DF
    ldh [$FFBF], a                                ; $76FA: $E0 $BF
    ret nz                                        ; $76FC: $C0

    ld a, a                                       ; $76FD: $7F
    add b                                         ; $76FE: $80
    rst RST_38                                    ; $76FF: $FF
    ld a, a                                       ; $7700: $7F
    ret nz                                        ; $7701: $C0

    rst RST_00                                    ; $7702: $C7
    add hl, sp                                    ; $7703: $39
    rst RST_38                                    ; $7704: $FF
    or c                                          ; $7705: $B1
    rst RST_38                                    ; $7706: $FF
    xor e                                         ; $7707: $AB
    rst RST_38                                    ; $7708: $FF
    add hl, de                                    ; $7709: $19
    ld a, a                                       ; $770A: $7F
    or l                                          ; $770B: $B5
    rst RST_18                                    ; $770C: $DF
    ld [hl], h                                    ; $770D: $74
    sbc a                                         ; $770E: $9F
    pop hl                                        ; $770F: $E1
    ld [hl], $E3                                  ; $7710: $36 $E3
    dec l                                         ; $7712: $2D
    rst RST_00                                    ; $7713: $C7
    ld a, c                                       ; $7714: $79
    adc $73                                       ; $7715: $CE $73
    sbc a                                         ; $7717: $9F
    ldh [$FFBF], a                                ; $7718: $E0 $BF
    ret nz                                        ; $771A: $C0

    rst RST_38                                    ; $771B: $FF
    nop                                           ; $771C: $00
    rst RST_38                                    ; $771D: $FF
    nop                                           ; $771E: $00
    rst RST_38                                    ; $771F: $FF
    ld hl, sp+$00                                 ; $7720: $F8 $00
    call nz, $F8B8                                ; $7722: $C4 $B8 $F8
    ret nz                                        ; $7725: $C0

    ldh a, [$FFC0]                                ; $7726: $F0 $C0
    ld hl, sp-$60                                 ; $7728: $F8 $A0
    db $E4                                        ; $772A: $E4
    ld e, b                                       ; $772B: $58
    ei                                            ; $772C: $FB
    ret nz                                        ; $772D: $C0

    rst RST_08                                    ; $772E: $CF
    add e                                         ; $772F: $83
    db $FC                                        ; $7730: $FC
    adc a                                         ; $7731: $8F
    pop af                                        ; $7732: $F1
    ccf                                           ; $7733: $3F
    jp $07FE                                      ; $7734: $C3 $FE $07


    db $FC                                        ; $7737: $FC
    rrca                                          ; $7738: $0F
    ld hl, sp+$1F                                 ; $7739: $F8 $1F
    rst RST_38                                    ; $773B: $FF
    nop                                           ; $773C: $00
    rst RST_38                                    ; $773D: $FF
    ld bc, $00FF                                  ; $773E: $01 $FF $00
    nop                                           ; $7741: $00
    nop                                           ; $7742: $00
    nop                                           ; $7743: $00
    nop                                           ; $7744: $00
    nop                                           ; $7745: $00
    inc c                                         ; $7746: $0C
    nop                                           ; $7747: $00
    inc a                                         ; $7748: $3C
    ld [$30F8], sp                                ; $7749: $08 $F8 $30
    or b                                          ; $774C: $B0
    ldh [$FF60], a                                ; $774D: $E0 $60
    ret nz                                        ; $774F: $C0

    ret nz                                        ; $7750: $C0

    add b                                         ; $7751: $80
    add b                                         ; $7752: $80
    nop                                           ; $7753: $00
    nop                                           ; $7754: $00
    nop                                           ; $7755: $00
    nop                                           ; $7756: $00
    nop                                           ; $7757: $00
    db $FC                                        ; $7758: $FC
    nop                                           ; $7759: $00
    ld hl, sp-$10                                 ; $775A: $F8 $F0
    ld [hl], b                                    ; $775C: $70
    ret nz                                        ; $775D: $C0

    ret nz                                        ; $775E: $C0

    add b                                         ; $775F: $80
    rrca                                          ; $7760: $0F
    ld [bc], a                                    ; $7761: $02
    inc bc                                        ; $7762: $03
    ld bc, $0103                                  ; $7763: $01 $03 $01
    inc bc                                        ; $7766: $03
    nop                                           ; $7767: $00
    inc b                                         ; $7768: $04
    inc bc                                        ; $7769: $03
    ld [$2807], sp                                ; $776A: $08 $07 $28
    rlca                                          ; $776D: $07
    ld d, l                                       ; $776E: $55
    ld a, [hl+]                                   ; $776F: $2A
    and [hl]                                      ; $7770: $A6
    ld e, c                                       ; $7771: $59
    xor l                                         ; $7772: $AD
    ld e, e                                       ; $7773: $5B
    rst RST_38                                    ; $7774: $FF
    ld d, b                                       ; $7775: $50
    pop af                                        ; $7776: $F1
    ld c, $8D                                     ; $7777: $0E $8D
    ld [hl], d                                    ; $7779: $72
    db $FD                                        ; $777A: $FD
    ld a, [bc]                                    ; $777B: $0A
    ld e, l                                       ; $777C: $5D
    ld [hl+], a                                   ; $777D: $22
    rst RST_20                                    ; $777E: $E7
    ld e, h                                       ; $777F: $5C
    and $F8                                       ; $7780: $E6 $F8
    ei                                            ; $7782: $FB
    inc c                                         ; $7783: $0C
    cp $05                                        ; $7784: $FE $05
    adc a                                         ; $7786: $8F
    ld [hl], h                                    ; $7787: $74
    ld c, [hl]                                    ; $7788: $4E
    or h                                          ; $7789: $B4
    inc a                                         ; $778A: $3C
    ret z                                         ; $778B: $C8

    jr c, @-$3E                                   ; $778C: $38 $C0

    db $EC                                        ; $778E: $EC
    nop                                           ; $778F: $00
    ld [hl], h                                    ; $7790: $74
    ret z                                         ; $7791: $C8

    db $EC                                        ; $7792: $EC
    sbc b                                         ; $7793: $98
    ret c                                         ; $7794: $D8

    ld [hl], b                                    ; $7795: $70
    inc a                                         ; $7796: $3C
    ldh a, [$FFF3]                                ; $7797: $F0 $F3
    db $EC                                        ; $7799: $EC
    ldh [$FFDF], a                                ; $779A: $E0 $DF
    ld hl, sp+$07                                 ; $779C: $F8 $07
    db $DD                                        ; $779E: $DD
    cp d                                          ; $779F: $BA
    nop                                           ; $77A0: $00
    nop                                           ; $77A1: $00
    nop                                           ; $77A2: $00
    nop                                           ; $77A3: $00
    add b                                         ; $77A4: $80
    nop                                           ; $77A5: $00
    ld b, b                                       ; $77A6: $40
    add b                                         ; $77A7: $80
    and b                                         ; $77A8: $A0
    ld b, b                                       ; $77A9: $40
    ld h, b                                       ; $77AA: $60
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
    add b                                         ; $77BA: $80
    nop                                           ; $77BB: $00
    ld b, b                                       ; $77BC: $40
    add b                                         ; $77BD: $80
    ret nz                                        ; $77BE: $C0

    nop                                           ; $77BF: $00
    nop                                           ; $77C0: $00
    nop                                           ; $77C1: $00
    nop                                           ; $77C2: $00
    nop                                           ; $77C3: $00
    nop                                           ; $77C4: $00
    nop                                           ; $77C5: $00
    nop                                           ; $77C6: $00
    nop                                           ; $77C7: $00
    nop                                           ; $77C8: $00
    nop                                           ; $77C9: $00
    nop                                           ; $77CA: $00
    nop                                           ; $77CB: $00
    nop                                           ; $77CC: $00
    nop                                           ; $77CD: $00
    nop                                           ; $77CE: $00
    nop                                           ; $77CF: $00
    nop                                           ; $77D0: $00
    nop                                           ; $77D1: $00
    nop                                           ; $77D2: $00
    nop                                           ; $77D3: $00
    nop                                           ; $77D4: $00
    nop                                           ; $77D5: $00
    jr jr_022_77D8                                ; $77D6: $18 $00

jr_022_77D8:
    ld a, $18                                     ; $77D8: $3E $18
    ccf                                           ; $77DA: $3F
    nop                                           ; $77DB: $00
    cp $1F                                        ; $77DC: $FE $1F
    rst RST_38                                    ; $77DE: $FF
    ld e, b                                       ; $77DF: $58
    nop                                           ; $77E0: $00
    nop                                           ; $77E1: $00
    nop                                           ; $77E2: $00
    nop                                           ; $77E3: $00
    nop                                           ; $77E4: $00
    nop                                           ; $77E5: $00
    nop                                           ; $77E6: $00
    nop                                           ; $77E7: $00
    nop                                           ; $77E8: $00
    nop                                           ; $77E9: $00
    nop                                           ; $77EA: $00
    nop                                           ; $77EB: $00
    nop                                           ; $77EC: $00
    nop                                           ; $77ED: $00
    nop                                           ; $77EE: $00
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
    add b                                         ; $77FA: $80
    nop                                           ; $77FB: $00
    ld b, b                                       ; $77FC: $40
    add b                                         ; $77FD: $80
    ret nz                                        ; $77FE: $C0

    nop                                           ; $77FF: $00
    ldh a, [$FF60]                                ; $7800: $F0 $60
    ldh [$FFC0], a                                ; $7802: $E0 $C0
    ret nz                                        ; $7804: $C0

    nop                                           ; $7805: $00
    nop                                           ; $7806: $00
    nop                                           ; $7807: $00
    nop                                           ; $7808: $00
    nop                                           ; $7809: $00
    ret nz                                        ; $780A: $C0

    nop                                           ; $780B: $00
    ldh [$FFC0], a                                ; $780C: $E0 $C0
    ldh [$FFC0], a                                ; $780E: $E0 $C0
    ldh a, [$FFE0]                                ; $7810: $F0 $E0
    ccf                                           ; $7812: $3F
    ldh a, [$FFDF]                                ; $7813: $F0 $DF
    ld l, $3F                                     ; $7815: $2E $3F
    ld e, $1F                                     ; $7817: $1E $1F
    ld c, $3F                                     ; $7819: $0E $3F
    ld [bc], a                                    ; $781B: $02
    ld b, e                                       ; $781C: $43
    inc a                                         ; $781D: $3C
    ld a, a                                       ; $781E: $7F
    nop                                           ; $781F: $00
    rst RST_38                                    ; $7820: $FF
    rra                                           ; $7821: $1F
    ccf                                           ; $7822: $3F
    ret nz                                        ; $7823: $C0

    rra                                           ; $7824: $1F
    ldh [$FF08], a                                ; $7825: $E0 $08
    ldh a, [$FF8F]                                ; $7827: $F0 $8F
    ld [hl], b                                    ; $7829: $70
    ld b, a                                       ; $782A: $47
    dec sp                                        ; $782B: $3B
    ccf                                           ; $782C: $3F
    rlca                                          ; $782D: $07
    ld e, a                                       ; $782E: $5F
    scf                                           ; $782F: $37
    ld a, b                                       ; $7830: $78
    scf                                           ; $7831: $37
    ccf                                           ; $7832: $3F
    nop                                           ; $7833: $00
    nop                                           ; $7834: $00
    nop                                           ; $7835: $00
    add b                                         ; $7836: $80
    nop                                           ; $7837: $00
    ldh [rP1], a                                  ; $7838: $E0 $00
    db $FC                                        ; $783A: $FC
    nop                                           ; $783B: $00
    nop                                           ; $783C: $00
    nop                                           ; $783D: $00
    nop                                           ; $783E: $00
    nop                                           ; $783F: $00
    ccf                                           ; $7840: $3F
    nop                                           ; $7841: $00
    ld c, [hl]                                    ; $7842: $4E
    ld sp, $7986                                  ; $7843: $31 $86 $79
    add $39                                       ; $7846: $C6 $39
    ld sp, hl                                     ; $7848: $F9
    nop                                           ; $7849: $00
    ldh [rP1], a                                  ; $784A: $E0 $00
    ldh a, [rP1]                                  ; $784C: $F0 $00
    ld hl, sp+$00                                 ; $784E: $F8 $00
    db $FC                                        ; $7850: $FC
    nop                                           ; $7851: $00
    cp $00                                        ; $7852: $FE $00
    ld a, a                                       ; $7854: $7F
    nop                                           ; $7855: $00
    sbc a                                         ; $7856: $9F
    nop                                           ; $7857: $00

jr_022_7858:
    rst RST_00                                    ; $7858: $C7
    nop                                           ; $7859: $00
    ldh a, [rP1]                                  ; $785A: $F0 $00
    db $FC                                        ; $785C: $FC
    nop                                           ; $785D: $00
    nop                                           ; $785E: $00
    nop                                           ; $785F: $00
    ld [hl], $FC                                  ; $7860: $36 $FC
    dec de                                        ; $7862: $1B
    xor $9D                                       ; $7863: $EE $9D
    halt                                          ; $7865: $76
    rst RST_28                                    ; $7866: $EF
    inc sp                                        ; $7867: $33
    rst RST_38                                    ; $7868: $FF
    jr @+$01                                      ; $7869: $18 $FF

    ld [$04FF], sp                                ; $786B: $08 $FF $04
    rst RST_38                                    ; $786E: $FF
    add b                                         ; $786F: $80
    rst RST_38                                    ; $7870: $FF
    nop                                           ; $7871: $00
    rst RST_38                                    ; $7872: $FF
    nop                                           ; $7873: $00
    rst RST_38                                    ; $7874: $FF
    nop                                           ; $7875: $00
    ld a, a                                       ; $7876: $7F
    nop                                           ; $7877: $00
    rra                                           ; $7878: $1F
    nop                                           ; $7879: $00
    rlca                                          ; $787A: $07
    nop                                           ; $787B: $00
    nop                                           ; $787C: $00
    nop                                           ; $787D: $00
    nop                                           ; $787E: $00
    nop                                           ; $787F: $00
    nop                                           ; $7880: $00
    nop                                           ; $7881: $00
    nop                                           ; $7882: $00
    nop                                           ; $7883: $00
    nop                                           ; $7884: $00
    nop                                           ; $7885: $00
    nop                                           ; $7886: $00
    nop                                           ; $7887: $00
    nop                                           ; $7888: $00
    nop                                           ; $7889: $00
    add b                                         ; $788A: $80
    nop                                           ; $788B: $00
    ld h, b                                       ; $788C: $60
    add b                                         ; $788D: $80
    db $10                                        ; $788E: $10
    ldh [$FF08], a                                ; $788F: $E0 $08
    ldh a, [$FFF4]                                ; $7891: $F0 $F4
    ld [$C834], sp                                ; $7893: $08 $34 $C8
    jr c, jr_022_7858                             ; $7896: $38 $C0

    ld a, [hl]                                    ; $7898: $7E
    add b                                         ; $7899: $80
    ld a, l                                       ; $789A: $7D
    or [hl]                                       ; $789B: $B6
    rst RST_38                                    ; $789C: $FF
    ld [hl-], a                                   ; $789D: $32
    ld a, [$4034]                                 ; $789E: $FA $34 $40
    nop                                           ; $78A1: $00
    and e                                         ; $78A2: $A3
    ld b, b                                       ; $78A3: $40
    push af                                       ; $78A4: $F5
    ld [bc], a                                    ; $78A5: $02
    ei                                            ; $78A6: $FB
    or $FE                                        ; $78A7: $F6 $FE
    inc c                                         ; $78A9: $0C
    rrca                                          ; $78AA: $0F
    ldh a, [rSC]                                  ; $78AB: $F0 $02
    db $FD                                        ; $78AD: $FD
    inc b                                         ; $78AE: $04

jr_022_78AF:
    ei                                            ; $78AF: $FB
    inc b                                         ; $78B0: $04
    ei                                            ; $78B1: $FB
    rlca                                          ; $78B2: $07
    ld hl, sp+$02                                 ; $78B3: $F8 $02
    db $FD                                        ; $78B5: $FD
    inc b                                         ; $78B6: $04
    ei                                            ; $78B7: $FB
    db $F4                                        ; $78B8: $F4
    dec bc                                        ; $78B9: $0B
    inc c                                         ; $78BA: $0C
    di                                            ; $78BB: $F3
    ld c, $F5                                     ; $78BC: $0E $F5
    rst RST_38                                    ; $78BE: $FF
    inc b                                         ; $78BF: $04
    ld bc, $3200                                  ; $78C0: $01 $00 $32
    ld bc, $13AC                                  ; $78C3: $01 $AC $13
    ld [hl], l                                    ; $78C6: $75
    sbc d                                         ; $78C7: $9A
    rra                                           ; $78C8: $1F
    ld [$F10E], a                                 ; $78C9: $EA $0E $F1
    db $10                                        ; $78CC: $10
    rst RST_28                                    ; $78CD: $EF
    jr nz, jr_022_78AF                            ; $78CE: $20 $DF

    and b                                         ; $78D0: $A0
    ld e, a                                       ; $78D1: $5F
    ld h, b                                       ; $78D2: $60
    sbc a                                         ; $78D3: $9F
    ldh [$FF1F], a                                ; $78D4: $E0 $1F
    db $10                                        ; $78D6: $10
    rrca                                          ; $78D7: $0F
    ld de, $8E0E                                  ; $78D8: $11 $0E $8E
    ld bc, $0384                                  ; $78DB: $01 $84 $03
    jp RST_00                                     ; $78DE: $C3 $00 $00


    nop                                           ; $78E1: $00
    add b                                         ; $78E2: $80
    nop                                           ; $78E3: $00
    jp $C480                                      ; $78E4: $C3 $80 $C4


    add e                                         ; $78E7: $83
    inc h                                         ; $78E8: $24
    jp $E132                                      ; $78E9: $C3 $32 $E1


    ld d, $E1                                     ; $78EC: $16 $E1
    add hl, de                                    ; $78EE: $19
    or $00                                        ; $78EF: $F6 $00
    rst RST_38                                    ; $78F1: $FF
    nop                                           ; $78F2: $00
    rst RST_38                                    ; $78F3: $FF
    ld bc, $03FF                                  ; $78F4: $01 $FF $03
    cp $03                                        ; $78F7: $FE $03
    cp $01                                        ; $78F9: $FE $01
    rst RST_38                                    ; $78FB: $FF
    add hl, bc                                    ; $78FC: $09
    rst RST_38                                    ; $78FD: $FF
    add h                                         ; $78FE: $84
    rst RST_38                                    ; $78FF: $FF
    ld h, [hl]                                    ; $7900: $66
    dec a                                         ; $7901: $3D
    ld [hl], e                                    ; $7902: $73
    inc a                                         ; $7903: $3C
    dec sp                                        ; $7904: $3B
    inc e                                         ; $7905: $1C
    ccf                                           ; $7906: $3F
    ld c, $1F                                     ; $7907: $0E $1F
    ld b, $1F                                     ; $7909: $06 $1F
    inc bc                                        ; $790B: $03
    rrca                                          ; $790C: $0F
    ld bc, $0007                                  ; $790D: $01 $07 $00
    inc bc                                        ; $7910: $03
    nop                                           ; $7911: $00
    ld bc, $0000                                  ; $7912: $01 $00 $00
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
    ld e, $00                                     ; $7920: $1E $00
    ccf                                           ; $7922: $3F
    ld e, $7F                                     ; $7923: $1E $7F
    ccf                                           ; $7925: $3F
    ld [hl], b                                    ; $7926: $70
    ccf                                           ; $7927: $3F
    ldh [$FF7F], a                                ; $7928: $E0 $7F
    ret nz                                        ; $792A: $C0

    ld a, a                                       ; $792B: $7F
    ret nz                                        ; $792C: $C0

    ld a, a                                       ; $792D: $7F
    ret nz                                        ; $792E: $C0

    ld a, a                                       ; $792F: $7F
    ret nz                                        ; $7930: $C0

    ld a, a                                       ; $7931: $7F
    ld h, b                                       ; $7932: $60
    ccf                                           ; $7933: $3F
    ld h, b                                       ; $7934: $60
    ccf                                           ; $7935: $3F
    ld h, b                                       ; $7936: $60
    ccf                                           ; $7937: $3F
    jr nc, jr_022_7959                            ; $7938: $30 $1F

    jr nc, jr_022_795B                            ; $793A: $30 $1F

    add hl, de                                    ; $793C: $19
    rrca                                          ; $793D: $0F
    inc e                                         ; $793E: $1C
    rrca                                          ; $793F: $0F
    inc b                                         ; $7940: $04
    inc bc                                        ; $7941: $03
    ld [bc], a                                    ; $7942: $02
    ld bc, $0102                                  ; $7943: $01 $02 $01
    ld bc, $6F00                                  ; $7946: $01 $00 $6F
    nop                                           ; $7949: $00
    or c                                          ; $794A: $B1
    ld l, [hl]                                    ; $794B: $6E
    ld hl, sp+$67                                 ; $794C: $F8 $67
    ld a, [hl]                                    ; $794E: $7E
    add hl, de                                    ; $794F: $19
    ld c, a                                       ; $7950: $4F
    ld a, $27                                     ; $7951: $3E $27
    ld e, $17                                     ; $7953: $1E $17
    ld c, $0B                                     ; $7955: $0E $0B
    inc b                                         ; $7957: $04
    rrca                                          ; $7958: $0F

jr_022_7959:
    inc bc                                        ; $7959: $03
    ld a, a                                       ; $795A: $7F

jr_022_795B:
    rrca                                          ; $795B: $0F
    adc a                                         ; $795C: $8F
    ld [hl], a                                    ; $795D: $77
    rst RST_38                                    ; $795E: $FF
    nop                                           ; $795F: $00
    ldh [c], a                                    ; $7960: $E2
    dec e                                         ; $7961: $1D
    add hl, de                                    ; $7962: $19
    and $05                                       ; $7963: $E6 $05
    ld a, [$1DE2]                                 ; $7965: $FA $E2 $1D
    ld a, [$7E05]                                 ; $7968: $FA $05 $7E
    add c                                         ; $796B: $81
    ld a, a                                       ; $796C: $7F
    add d                                         ; $796D: $82
    ld a, a                                       ; $796E: $7F
    add d                                         ; $796F: $82
    di                                            ; $7970: $F3
    dec c                                         ; $7971: $0D
    ld de, $880E                                  ; $7972: $11 $0E $88
    rlca                                          ; $7975: $07
    adc b                                         ; $7976: $88
    rlca                                          ; $7977: $07
    add h                                         ; $7978: $84
    inc bc                                        ; $7979: $03
    add e                                         ; $797A: $83
    nop                                           ; $797B: $00
    inc bc                                        ; $797C: $03
    ld bc, $0001                                  ; $797D: $01 $01 $00
    inc b                                         ; $7980: $04
    ld hl, sp-$06                                 ; $7981: $F8 $FA
    inc b                                         ; $7983: $04
    ld a, [de]                                    ; $7984: $1A
    db $E4                                        ; $7985: $E4
    inc e                                         ; $7986: $1C

Call_022_7987:
    ldh [$FF3F], a                                ; $7987: $E0 $3F
    ret nz                                        ; $7989: $C0

    ld a, $DB                                     ; $798A: $3E $DB
    ld a, a                                       ; $798C: $7F
    sbc c                                         ; $798D: $99
    db $FD                                        ; $798E: $FD
    ld a, [de]                                    ; $798F: $1A
    rst RST_38                                    ; $7990: $FF
    or $FF                                        ; $7991: $F6 $FF
    dec c                                         ; $7993: $0D
    ld a, h                                       ; $7994: $7C
    or e                                          ; $7995: $B3
    ld h, e                                       ; $7996: $63
    cp h                                          ; $7997: $BC
    adc l                                         ; $7998: $8D
    ld [hl], b                                    ; $7999: $70
    jp nc, $E3A1                                  ; $799A: $D2 $A1 $E3

    add b                                         ; $799D: $80
    add b                                         ; $799E: $80
    nop                                           ; $799F: $00
    add b                                         ; $79A0: $80
    nop                                           ; $79A1: $00
    add b                                         ; $79A2: $80
    nop                                           ; $79A3: $00
    ldh [rP1], a                                  ; $79A4: $E0 $00
    ldh a, [$FFE0]                                ; $79A6: $F0 $E0
    ldh a, [$FF60]                                ; $79A8: $F0 $60
    ldh a, [$FF60]                                ; $79AA: $F0 $60
    ld hl, sp+$70                                 ; $79AC: $F8 $70
    ld hl, sp+$10                                 ; $79AE: $F8 $10
    jr @-$1E                                      ; $79B0: $18 $E0

    ld hl, sp+$00                                 ; $79B2: $F8 $00
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
    xor a                                         ; $79C0: $AF
    ld d, b                                       ; $79C1: $50
    xor b                                         ; $79C2: $A8
    ld d, a                                       ; $79C3: $57
    ld e, b                                       ; $79C4: $58
    rlca                                          ; $79C5: $07
    ld [$0F07], sp                                ; $79C6: $08 $07 $0F
    nop                                           ; $79C9: $00
    ld [$1007], sp                                ; $79CA: $08 $07 $10
    rrca                                          ; $79CD: $0F
    db $10                                        ; $79CE: $10
    rrca                                          ; $79CF: $0F
    db $10                                        ; $79D0: $10
    rrca                                          ; $79D1: $0F
    db $10                                        ; $79D2: $10
    rrca                                          ; $79D3: $0F
    ld [$0907], sp                                ; $79D4: $08 $07 $09
    ld b, $06                                     ; $79D7: $06 $06
    ld bc, $0304                                  ; $79D9: $01 $04 $03
    inc b                                         ; $79DC: $04
    inc bc                                        ; $79DD: $03

jr_022_79DE:
    inc b                                         ; $79DE: $04
    inc bc                                        ; $79DF: $03
    add b                                         ; $79E0: $80
    nop                                           ; $79E1: $00
    add b                                         ; $79E2: $80
    nop                                           ; $79E3: $00
    add b                                         ; $79E4: $80
    nop                                           ; $79E5: $00
    add b                                         ; $79E6: $80
    nop                                           ; $79E7: $00
    ld h, b                                       ; $79E8: $60
    add b                                         ; $79E9: $80
    ld d, b                                       ; $79EA: $50
    and b                                         ; $79EB: $A0
    ld e, b                                       ; $79EC: $58
    and b                                         ; $79ED: $A0
    ld [hl], h                                    ; $79EE: $74
    xor b                                         ; $79EF: $A8
    db $FC                                        ; $79F0: $FC
    nop                                           ; $79F1: $00
    rlca                                          ; $79F2: $07
    ld hl, sp+$01                                 ; $79F3: $F8 $01
    cp $00                                        ; $79F5: $FE $00
    rst RST_38                                    ; $79F7: $FF
    nop                                           ; $79F8: $00
    rst RST_38                                    ; $79F9: $FF
    nop                                           ; $79FA: $00
    rst RST_38                                    ; $79FB: $FF
    ld bc, $02FE                                  ; $79FC: $01 $FE $02
    db $FD                                        ; $79FF: $FD
    nop                                           ; $7A00: $00
    nop                                           ; $7A01: $00
    nop                                           ; $7A02: $00
    nop                                           ; $7A03: $00
    nop                                           ; $7A04: $00
    nop                                           ; $7A05: $00
    nop                                           ; $7A06: $00
    nop                                           ; $7A07: $00
    nop                                           ; $7A08: $00
    nop                                           ; $7A09: $00
    nop                                           ; $7A0A: $00
    nop                                           ; $7A0B: $00
    nop                                           ; $7A0C: $00
    nop                                           ; $7A0D: $00
    ld h, b                                       ; $7A0E: $60
    nop                                           ; $7A0F: $00
    and b                                         ; $7A10: $A0
    ld b, b                                       ; $7A11: $40
    ld h, b                                       ; $7A12: $60
    ret nz                                        ; $7A13: $C0

    ret nz                                        ; $7A14: $C0

    add b                                         ; $7A15: $80
    add b                                         ; $7A16: $80
    nop                                           ; $7A17: $00
    ld b, b                                       ; $7A18: $40
    add b                                         ; $7A19: $80
    ret nz                                        ; $7A1A: $C0

    nop                                           ; $7A1B: $00
    jr nc, jr_022_79DE                            ; $7A1C: $30 $C0

    ld [$00F0], sp                                ; $7A1E: $08 $F0 $00
    nop                                           ; $7A21: $00
    nop                                           ; $7A22: $00
    nop                                           ; $7A23: $00
    nop                                           ; $7A24: $00
    nop                                           ; $7A25: $00
    rrca                                          ; $7A26: $0F
    nop                                           ; $7A27: $00
    ld d, $0D                                     ; $7A28: $16 $0D
    rra                                           ; $7A2A: $1F
    nop                                           ; $7A2B: $00
    cpl                                           ; $7A2C: $2F
    rra                                           ; $7A2D: $1F
    cpl                                           ; $7A2E: $2F
    rra                                           ; $7A2F: $1F
    cpl                                           ; $7A30: $2F
    inc de                                        ; $7A31: $13
    rra                                           ; $7A32: $1F
    dec bc                                        ; $7A33: $0B
    rra                                           ; $7A34: $1F
    ld [$1F2F], sp                                ; $7A35: $08 $2F $1F
    cpl                                           ; $7A38: $2F
    rra                                           ; $7A39: $1F
    ccf                                           ; $7A3A: $3F
    inc bc                                        ; $7A3B: $03
    ld d, a                                       ; $7A3C: $57
    dec hl                                        ; $7A3D: $2B
    xor a                                         ; $7A3E: $AF
    ld d, a                                       ; $7A3F: $57
    nop                                           ; $7A40: $00
    nop                                           ; $7A41: $00
    add b                                         ; $7A42: $80
    nop                                           ; $7A43: $00
    ret nz                                        ; $7A44: $C0

    add b                                         ; $7A45: $80
    ldh [rP1], a                                  ; $7A46: $E0 $00
    ldh a, [$FFA0]                                ; $7A48: $F0 $A0
    ldh a, [$FFA0]                                ; $7A4A: $F0 $A0
    ldh [$FF80], a                                ; $7A4C: $E0 $80
    ret nz                                        ; $7A4E: $C0

    nop                                           ; $7A4F: $00
    add b                                         ; $7A50: $80
    nop                                           ; $7A51: $00
    ret nz                                        ; $7A52: $C0

    add b                                         ; $7A53: $80
    ret nz                                        ; $7A54: $C0

    add b                                         ; $7A55: $80
    ret nz                                        ; $7A56: $C0

    add b                                         ; $7A57: $80
    ret nz                                        ; $7A58: $C0

    add b                                         ; $7A59: $80
    ret nz                                        ; $7A5A: $C0

    add b                                         ; $7A5B: $80
    ret nz                                        ; $7A5C: $C0

    nop                                           ; $7A5D: $00
    add b                                         ; $7A5E: $80
    nop                                           ; $7A5F: $00
    ld bc, $0100                                  ; $7A60: $01 $00 $01
    nop                                           ; $7A63: $00
    ld l, a                                       ; $7A64: $6F
    nop                                           ; $7A65: $00
    or b                                          ; $7A66: $B0
    ld l, a                                       ; $7A67: $6F
    ld hl, sp+$67                                 ; $7A68: $F8 $67
    ld a, [hl]                                    ; $7A6A: $7E
    add hl, de                                    ; $7A6B: $19
    ld c, a                                       ; $7A6C: $4F
    ld a, $27                                     ; $7A6D: $3E $27
    ld e, $17                                     ; $7A6F: $1E $17
    ld c, $0B                                     ; $7A71: $0E $0B
    inc b                                         ; $7A73: $04
    rrca                                          ; $7A74: $0F
    inc bc                                        ; $7A75: $03
    ld a, a                                       ; $7A76: $7F
    rrca                                          ; $7A77: $0F
    adc a                                         ; $7A78: $8F
    ld [hl], a                                    ; $7A79: $77
    rst RST_38                                    ; $7A7A: $FF
    nop                                           ; $7A7B: $00
    nop                                           ; $7A7C: $00
    nop                                           ; $7A7D: $00
    nop                                           ; $7A7E: $00
    nop                                           ; $7A7F: $00
    add hl, de                                    ; $7A80: $19
    and $05                                       ; $7A81: $E6 $05
    ld a, [$1DE2]                                 ; $7A83: $FA $E2 $1D
    ld a, [$7E05]                                 ; $7A86: $FA $05 $7E
    add c                                         ; $7A89: $81
    ld a, a                                       ; $7A8A: $7F
    add d                                         ; $7A8B: $82
    ld a, a                                       ; $7A8C: $7F
    add d                                         ; $7A8D: $82
    di                                            ; $7A8E: $F3
    dec c                                         ; $7A8F: $0D
    ld de, $080E                                  ; $7A90: $11 $0E $08
    rlca                                          ; $7A93: $07
    adc b                                         ; $7A94: $88
    rlca                                          ; $7A95: $07
    add h                                         ; $7A96: $84
    inc bc                                        ; $7A97: $03
    add e                                         ; $7A98: $83
    nop                                           ; $7A99: $00
    add d                                         ; $7A9A: $82
    ld bc, $0103                                  ; $7A9B: $01 $03 $01
    ld bc, $FA00                                  ; $7A9E: $01 $00 $FA
    inc b                                         ; $7AA1: $04
    ld a, [de]                                    ; $7AA2: $1A
    db $E4                                        ; $7AA3: $E4
    inc e                                         ; $7AA4: $1C
    ldh [$FF3F], a                                ; $7AA5: $E0 $3F
    ret nz                                        ; $7AA7: $C0

    ld a, $DB                                     ; $7AA8: $3E $DB
    ld a, a                                       ; $7AAA: $7F
    sbc c                                         ; $7AAB: $99
    db $FD                                        ; $7AAC: $FD
    ld a, [de]                                    ; $7AAD: $1A
    rst RST_38                                    ; $7AAE: $FF
    or $FF                                        ; $7AAF: $F6 $FF
    inc c                                         ; $7AB1: $0C
    ld a, a                                       ; $7AB2: $7F
    add e                                         ; $7AB3: $83

jr_022_7AB4:
    ld a, h                                       ; $7AB4: $7C
    cp a                                          ; $7AB5: $BF
    db $E3                                        ; $7AB6: $E3
    ld a, h                                       ; $7AB7: $7C
    adc l                                         ; $7AB8: $8D
    ld [hl], b                                    ; $7AB9: $70
    jp nc, $E3A1                                  ; $7ABA: $D2 $A1 $E3

    add b                                         ; $7ABD: $80
    add b                                         ; $7ABE: $80
    nop                                           ; $7ABF: $00
    add b                                         ; $7AC0: $80
    nop                                           ; $7AC1: $00
    add b                                         ; $7AC2: $80
    nop                                           ; $7AC3: $00
    add b                                         ; $7AC4: $80
    nop                                           ; $7AC5: $00
    ldh [rP1], a                                  ; $7AC6: $E0 $00
    ldh a, [$FFE0]                                ; $7AC8: $F0 $E0

jr_022_7ACA:
    ldh a, [$FF60]                                ; $7ACA: $F0 $60
    ldh a, [$FF60]                                ; $7ACC: $F0 $60
    ld hl, sp+$70                                 ; $7ACE: $F8 $70
    ld hl, sp+$10                                 ; $7AD0: $F8 $10
    jr jr_022_7AB4                                ; $7AD2: $18 $E0

    ld hl, sp+$00                                 ; $7AD4: $F8 $00
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
    rla                                           ; $7AE0: $17
    rrca                                          ; $7AE1: $0F
    rla                                           ; $7AE2: $17
    rrca                                          ; $7AE3: $0F
    rla                                           ; $7AE4: $17
    add hl, bc                                    ; $7AE5: $09
    rra                                           ; $7AE6: $1F
    dec b                                         ; $7AE7: $05
    cpl                                           ; $7AE8: $2F
    inc d                                         ; $7AE9: $14
    cpl                                           ; $7AEA: $2F
    rra                                           ; $7AEB: $1F
    cpl                                           ; $7AEC: $2F
    rra                                           ; $7AED: $1F
    ccf                                           ; $7AEE: $3F
    add hl, bc                                    ; $7AEF: $09
    dec hl                                        ; $7AF0: $2B
    dec d                                         ; $7AF1: $15
    ld d, a                                       ; $7AF2: $57
    dec hl                                        ; $7AF3: $2B
    ld d, a                                       ; $7AF4: $57
    jr z, jr_022_7B4B                             ; $7AF5: $28 $54

    dec hl                                        ; $7AF7: $2B
    inc l                                         ; $7AF8: $2C
    inc bc                                        ; $7AF9: $03
    inc b                                         ; $7AFA: $04
    inc bc                                        ; $7AFB: $03
    ld [bc], a                                    ; $7AFC: $02
    ld bc, $0001                                  ; $7AFD: $01 $01 $00
    ret nz                                        ; $7B00: $C0

    add b                                         ; $7B01: $80
    ret nz                                        ; $7B02: $C0

    add b                                         ; $7B03: $80
    add b                                         ; $7B04: $80
    nop                                           ; $7B05: $00
    ld b, b                                       ; $7B06: $40
    add b                                         ; $7B07: $80
    jr c, jr_022_7ACA                             ; $7B08: $38 $C0

    ld h, $D8                                     ; $7B0A: $26 $D8
    ld b, c                                       ; $7B0C: $41
    cp [hl]                                       ; $7B0D: $BE
    ld b, b                                       ; $7B0E: $40
    cp a                                          ; $7B0F: $BF
    jp Jump_022_443C                              ; $7B10: $C3 $3C $44


    dec sp                                        ; $7B13: $3B
    jr z, @+$19                                   ; $7B14: $28 $17

    jr z, jr_022_7B2F                             ; $7B16: $28 $17

    jr jr_022_7B21                                ; $7B18: $18 $07

    ld [$0407], sp                                ; $7B1A: $08 $07 $04
    inc bc                                        ; $7B1D: $03
    dec b                                         ; $7B1E: $05
    ld [bc], a                                    ; $7B1F: $02
    nop                                           ; $7B20: $00

jr_022_7B21:
    nop                                           ; $7B21: $00
    nop                                           ; $7B22: $00
    nop                                           ; $7B23: $00
    nop                                           ; $7B24: $00
    nop                                           ; $7B25: $00
    ld b, b                                       ; $7B26: $40
    nop                                           ; $7B27: $00
    and b                                         ; $7B28: $A0
    ld b, b                                       ; $7B29: $40
    or b                                          ; $7B2A: $B0
    ld b, b                                       ; $7B2B: $40
    add sp, $50                                   ; $7B2C: $E8 $50
    db $FD                                        ; $7B2E: $FD

jr_022_7B2F:
    nop                                           ; $7B2F: $00
    ld c, $F1                                     ; $7B30: $0E $F1
    inc bc                                        ; $7B32: $03
    db $FD                                        ; $7B33: $FD
    ld bc, $00FE                                  ; $7B34: $01 $FE $00
    rst RST_38                                    ; $7B37: $FF
    ld bc, $02FE                                  ; $7B38: $01 $FE $02
    db $FD                                        ; $7B3B: $FD
    inc b                                         ; $7B3C: $04
    ei                                            ; $7B3D: $FB
    call nz, $003B                                ; $7B3E: $C4 $3B $00
    nop                                           ; $7B41: $00
    nop                                           ; $7B42: $00
    nop                                           ; $7B43: $00
    nop                                           ; $7B44: $00
    nop                                           ; $7B45: $00
    nop                                           ; $7B46: $00
    nop                                           ; $7B47: $00
    nop                                           ; $7B48: $00
    nop                                           ; $7B49: $00
    nop                                           ; $7B4A: $00

jr_022_7B4B:
    nop                                           ; $7B4B: $00
    ret nz                                        ; $7B4C: $C0

    nop                                           ; $7B4D: $00
    ld b, b                                       ; $7B4E: $40
    add b                                         ; $7B4F: $80
    ret nz                                        ; $7B50: $C0

    add b                                         ; $7B51: $80
    add b                                         ; $7B52: $80
    nop                                           ; $7B53: $00
    nop                                           ; $7B54: $00
    nop                                           ; $7B55: $00
    add b                                         ; $7B56: $80
    nop                                           ; $7B57: $00
    add b                                         ; $7B58: $80
    nop                                           ; $7B59: $00
    ld h, b                                       ; $7B5A: $60
    add b                                         ; $7B5B: $80
    db $10                                        ; $7B5C: $10
    ldh [$FF08], a                                ; $7B5D: $E0 $08
    ldh a, [rP1]                                  ; $7B5F: $F0 $00
    nop                                           ; $7B61: $00
    nop                                           ; $7B62: $00
    nop                                           ; $7B63: $00
    nop                                           ; $7B64: $00
    nop                                           ; $7B65: $00
    nop                                           ; $7B66: $00
    nop                                           ; $7B67: $00
    nop                                           ; $7B68: $00
    nop                                           ; $7B69: $00
    ld l, h                                       ; $7B6A: $6C
    nop                                           ; $7B6B: $00
    or [hl]                                       ; $7B6C: $B6
    ld l, h                                       ; $7B6D: $6C
    cp $04                                        ; $7B6E: $FE $04
    ld a, [hl]                                    ; $7B70: $7E
    ld hl, sp+$7F                                 ; $7B71: $F8 $7F
    ld a, [$9A7F]                                 ; $7B73: $FA $7F $9A
    cp $50                                        ; $7B76: $FE $50
    ld hl, sp+$40                                 ; $7B78: $F8 $40
    db $FC                                        ; $7B7A: $FC
    ld hl, sp-$04                                 ; $7B7B: $F8 $FC
    ld hl, sp-$04                                 ; $7B7D: $F8 $FC
    sbc b                                         ; $7B7F: $98
    ld [bc], a                                    ; $7B80: $02
    ld bc, $0001                                  ; $7B81: $01 $01 $00
    ld bc, $3000                                  ; $7B84: $01 $00 $30
    nop                                           ; $7B87: $00
    ld e, e                                       ; $7B88: $5B
    jr nc, @+$7E                                  ; $7B89: $30 $7C

    inc sp                                        ; $7B8B: $33
    ccf                                           ; $7B8C: $3F
    inc c                                         ; $7B8D: $0C
    daa                                           ; $7B8E: $27
    rra                                           ; $7B8F: $1F
    rla                                           ; $7B90: $17
    rrca                                          ; $7B91: $0F
    dec bc                                        ; $7B92: $0B
    rlca                                          ; $7B93: $07
    dec bc                                        ; $7B94: $0B
    ld b, $0F                                     ; $7B95: $06 $0F
    nop                                           ; $7B97: $00
    rra                                           ; $7B98: $1F
    ld c, $7F                                     ; $7B99: $0E $7F
    rrca                                          ; $7B9B: $0F
    adc a                                         ; $7B9C: $8F
    ld [hl], a                                    ; $7B9D: $77
    rst RST_38                                    ; $7B9E: $FF
    nop                                           ; $7B9F: $00
    ei                                            ; $7BA0: $FB
    ld l, h                                       ; $7BA1: $6C
    ld a, a                                       ; $7BA2: $7F
    add e                                         ; $7BA3: $83
    ccf                                           ; $7BA4: $3F
    reti                                          ; $7BA5: $D9


    cp a                                          ; $7BA6: $BF
    ld e, b                                       ; $7BA7: $58
    cp a                                          ; $7BA8: $BF
    ld e, a                                       ; $7BA9: $5F
    rst RST_18                                    ; $7BAA: $DF
    cpl                                           ; $7BAB: $2F
    ccf                                           ; $7BAC: $3F
    add $9F                                       ; $7BAD: $C6 $9F
    ld h, c                                       ; $7BAF: $61
    adc a                                         ; $7BB0: $8F
    ld [hl], b                                    ; $7BB1: $70
    adc a                                         ; $7BB2: $8F
    ld [hl], b                                    ; $7BB3: $70
    rst RST_38                                    ; $7BB4: $FF
    nop                                           ; $7BB5: $00
    ld [bc], a                                    ; $7BB6: $02
    ld bc, $0001                                  ; $7BB7: $01 $01 $00
    add b                                         ; $7BBA: $80
    nop                                           ; $7BBB: $00
    add b                                         ; $7BBC: $80
    nop                                           ; $7BBD: $00
    add b                                         ; $7BBE: $80
    nop                                           ; $7BBF: $00
    db $FC                                        ; $7BC0: $FC
    ret nz                                        ; $7BC1: $C0

    rst RST_38                                    ; $7BC2: $FF
    db $EC                                        ; $7BC3: $EC
    db $EB                                        ; $7BC4: $EB
    push de                                       ; $7BC5: $D5
    rst RST_38                                    ; $7BC6: $FF
    push bc                                       ; $7BC7: $C5
    rst RST_38                                    ; $7BC8: $FF
    ld b, b                                       ; $7BC9: $40
    cp $B7                                        ; $7BCA: $FE $B7
    cp $07                                        ; $7BCC: $FE $07
    rst RST_30                                    ; $7BCE: $F7
    nop                                           ; $7BCF: $00
    rra                                           ; $7BD0: $1F
    rst RST_20                                    ; $7BD1: $E7
    rrca                                          ; $7BD2: $0F
    pop af                                        ; $7BD3: $F1
    rrca                                          ; $7BD4: $0F
    ldh a, [c]                                    ; $7BD5: $F2
    add a                                         ; $7BD6: $87
    ld a, c                                       ; $7BD7: $79
    ld b, a                                       ; $7BD8: $47
    add hl, sp                                    ; $7BD9: $39
    ld a, a                                       ; $7BDA: $7F
    inc bc                                        ; $7BDB: $03
    ccf                                           ; $7BDC: $3F
    ld e, $1E                                     ; $7BDD: $1E $1E
    nop                                           ; $7BDF: $00
    nop                                           ; $7BE0: $00
    nop                                           ; $7BE1: $00
    nop                                           ; $7BE2: $00
    nop                                           ; $7BE3: $00
    add b                                         ; $7BE4: $80
    nop                                           ; $7BE5: $00
    ld b, b                                       ; $7BE6: $40
    add b                                         ; $7BE7: $80
    ld b, b                                       ; $7BE8: $40
    add b                                         ; $7BE9: $80
    add b                                         ; $7BEA: $80
    nop                                           ; $7BEB: $00
    add b                                         ; $7BEC: $80
    nop                                           ; $7BED: $00
    add b                                         ; $7BEE: $80
    nop                                           ; $7BEF: $00
    nop                                           ; $7BF0: $00
    nop                                           ; $7BF1: $00
    add b                                         ; $7BF2: $80
    nop                                           ; $7BF3: $00
    ldh [$FF80], a                                ; $7BF4: $E0 $80
    ldh a, [$FFA0]                                ; $7BF6: $F0 $A0
    ld hl, sp+$70                                 ; $7BF8: $F8 $70
    ld hl, sp+$20                                 ; $7BFA: $F8 $20
    and h                                         ; $7BFC: $A4
    ld e, b                                       ; $7BFD: $58
    db $FC                                        ; $7BFE: $FC
    nop                                           ; $7BFF: $00
    rra                                           ; $7C00: $1F
    ld b, $1F                                     ; $7C01: $06 $1F
    ld b, $17                                     ; $7C03: $06 $17
    ld [$0E17], sp                                ; $7C05: $08 $17 $0E
    rrca                                          ; $7C08: $0F
    rlca                                          ; $7C09: $07
    rrca                                          ; $7C0A: $0F
    nop                                           ; $7C0B: $00
    rla                                           ; $7C0C: $17
    rrca                                          ; $7C0D: $0F
    rla                                           ; $7C0E: $17
    rrca                                          ; $7C0F: $0F
    rla                                           ; $7C10: $17
    rrca                                          ; $7C11: $0F
    scf                                           ; $7C12: $37
    rrca                                          ; $7C13: $0F
    scf                                           ; $7C14: $37
    rrca                                          ; $7C15: $0F
    ld d, a                                       ; $7C16: $57
    cpl                                           ; $7C17: $2F
    ld e, a                                       ; $7C18: $5F
    daa                                           ; $7C19: $27
    and a                                         ; $7C1A: $A7
    ld b, b                                       ; $7C1B: $40
    and e                                         ; $7C1C: $A3
    ld b, b                                       ; $7C1D: $40
    ld b, b                                       ; $7C1E: $40
    nop                                           ; $7C1F: $00
    ldh [$FFC0], a                                ; $7C20: $E0 $C0
    ldh [$FFC0], a                                ; $7C22: $E0 $C0
    ldh [$FFC0], a                                ; $7C24: $E0 $C0
    ldh [$FFC0], a                                ; $7C26: $E0 $C0
    ldh [$FFC0], a                                ; $7C28: $E0 $C0
    db $FC                                        ; $7C2A: $FC
    add b                                         ; $7C2B: $80
    sub e                                         ; $7C2C: $93
    ld l, h                                       ; $7C2D: $6C
    ld de, $89EE                                  ; $7C2E: $11 $EE $89
    halt                                          ; $7C31: $76
    ld c, c                                       ; $7C32: $49
    ld [hl], $24                                  ; $7C33: $36 $24
    dec de                                        ; $7C35: $1B
    inc e                                         ; $7C36: $1C
    inc bc                                        ; $7C37: $03
    ld c, $01                                     ; $7C38: $0E $01
    rlca                                          ; $7C3A: $07
    nop                                           ; $7C3B: $00
    inc bc                                        ; $7C3C: $03
    nop                                           ; $7C3D: $00
    ld bc, $0000                                  ; $7C3E: $01 $00 $00
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
    add b                                         ; $7C4C: $80
    nop                                           ; $7C4D: $00
    ld c, d                                       ; $7C4E: $4A
    add b                                         ; $7C4F: $80
    ld d, l                                       ; $7C50: $55
    adc d                                         ; $7C51: $8A
    xor c                                         ; $7C52: $A9
    sub $EB                                       ; $7C53: $D6 $EB
    ld d, [hl]                                    ; $7C55: $56
    rst RST_38                                    ; $7C56: $FF
    ld d, h                                       ; $7C57: $54
    ld a, [hl]                                    ; $7C58: $7E
    add c                                         ; $7C59: $81
    ld hl, $FFDE                                  ; $7C5A: $21 $DE $FF
    nop                                           ; $7C5D: $00
    ld a, c                                       ; $7C5E: $79
    and a                                         ; $7C5F: $A7
    nop                                           ; $7C60: $00
    nop                                           ; $7C61: $00
    nop                                           ; $7C62: $00
    nop                                           ; $7C63: $00
    nop                                           ; $7C64: $00
    nop                                           ; $7C65: $00
    nop                                           ; $7C66: $00
    nop                                           ; $7C67: $00
    inc b                                         ; $7C68: $04
    nop                                           ; $7C69: $00
    ld l, d                                       ; $7C6A: $6A
    inc b                                         ; $7C6B: $04
    sbc d                                         ; $7C6C: $9A
    ld l, h                                       ; $7C6D: $6C
    halt                                          ; $7C6E: $76
    call c, Call_000_38EC                         ; $7C6F: $DC $EC $38
    ld c, h                                       ; $7C72: $4C
    cp b                                          ; $7C73: $B8
    ld e, b                                       ; $7C74: $58
    or b                                          ; $7C75: $B0
    ld a, h                                       ; $7C76: $7C
    and b                                         ; $7C77: $A0
    ld a, e                                       ; $7C78: $7B
    sub h                                         ; $7C79: $94
    ld hl, sp+$17                                 ; $7C7A: $F8 $17
    ldh a, [$FF2F]                                ; $7C7C: $F0 $2F
    ld sp, hl                                     ; $7C7E: $F9
    add $00                                       ; $7C7F: $C6 $00
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
    nop                                           ; $7C8C: $00
    nop                                           ; $7C8D: $00
    nop                                           ; $7C8E: $00
    nop                                           ; $7C8F: $00
    nop                                           ; $7C90: $00
    nop                                           ; $7C91: $00
    nop                                           ; $7C92: $00
    nop                                           ; $7C93: $00
    nop                                           ; $7C94: $00
    nop                                           ; $7C95: $00
    nop                                           ; $7C96: $00
    nop                                           ; $7C97: $00
    nop                                           ; $7C98: $00
    nop                                           ; $7C99: $00
    nop                                           ; $7C9A: $00
    nop                                           ; $7C9B: $00
    add b                                         ; $7C9C: $80
    nop                                           ; $7C9D: $00
    add b                                         ; $7C9E: $80
    nop                                           ; $7C9F: $00
    nop                                           ; $7CA0: $00
    nop                                           ; $7CA1: $00
    nop                                           ; $7CA2: $00
    nop                                           ; $7CA3: $00
    nop                                           ; $7CA4: $00
    nop                                           ; $7CA5: $00
    nop                                           ; $7CA6: $00
    nop                                           ; $7CA7: $00
    nop                                           ; $7CA8: $00
    nop                                           ; $7CA9: $00
    nop                                           ; $7CAA: $00
    nop                                           ; $7CAB: $00
    nop                                           ; $7CAC: $00
    nop                                           ; $7CAD: $00
    ld l, h                                       ; $7CAE: $6C
    nop                                           ; $7CAF: $00
    sub d                                         ; $7CB0: $92
    ld l, h                                       ; $7CB1: $6C
    cp $6C                                        ; $7CB2: $FE $6C
    cp $60                                        ; $7CB4: $FE $60
    ld [hl], c                                    ; $7CB6: $71
    adc [hl]                                      ; $7CB7: $8E
    ld a, a                                       ; $7CB8: $7F
    xor $FE                                       ; $7CB9: $EE $FE
    ld [hl], b                                    ; $7CBB: $70
    db $FC                                        ; $7CBC: $FC
    nop                                           ; $7CBD: $00
    ld a, [hl]                                    ; $7CBE: $7E
    db $FC                                        ; $7CBF: $FC
    ld [bc], a                                    ; $7CC0: $02
    ld bc, $0001                                  ; $7CC1: $01 $01 $00
    ld bc, $3000                                  ; $7CC4: $01 $00 $30
    nop                                           ; $7CC7: $00
    ld e, e                                       ; $7CC8: $5B
    jr nc, @+$7E                                  ; $7CC9: $30 $7C

    inc sp                                        ; $7CCB: $33
    ccf                                           ; $7CCC: $3F
    inc c                                         ; $7CCD: $0C
    daa                                           ; $7CCE: $27
    rra                                           ; $7CCF: $1F
    rla                                           ; $7CD0: $17
    rrca                                          ; $7CD1: $0F
    dec bc                                        ; $7CD2: $0B
    rlca                                          ; $7CD3: $07
    dec bc                                        ; $7CD4: $0B
    ld b, $0F                                     ; $7CD5: $06 $0F
    nop                                           ; $7CD7: $00
    rra                                           ; $7CD8: $1F
    ld c, $7F                                     ; $7CD9: $0E $7F
    rrca                                          ; $7CDB: $0F
    adc a                                         ; $7CDC: $8F
    ld [hl], a                                    ; $7CDD: $77
    rst RST_38                                    ; $7CDE: $FF
    nop                                           ; $7CDF: $00
    ld a, a                                       ; $7CE0: $7F
    add e                                         ; $7CE1: $83
    ccf                                           ; $7CE2: $3F
    reti                                          ; $7CE3: $D9


    ccf                                           ; $7CE4: $3F
    ret c                                         ; $7CE5: $D8

    cp a                                          ; $7CE6: $BF
    ld e, a                                       ; $7CE7: $5F
    rst RST_18                                    ; $7CE8: $DF
    cpl                                           ; $7CE9: $2F
    ccf                                           ; $7CEA: $3F
    add $1F                                       ; $7CEB: $C6 $1F
    pop hl                                        ; $7CED: $E1
    adc a                                         ; $7CEE: $8F
    ld [hl], b                                    ; $7CEF: $70
    adc a                                         ; $7CF0: $8F
    ld [hl], b                                    ; $7CF1: $70
    rst RST_38                                    ; $7CF2: $FF
    nop                                           ; $7CF3: $00
    ld [bc], a                                    ; $7CF4: $02
    ld bc, $0001                                  ; $7CF5: $01 $01 $00
    nop                                           ; $7CF8: $00
    nop                                           ; $7CF9: $00
    add b                                         ; $7CFA: $80
    nop                                           ; $7CFB: $00
    add b                                         ; $7CFC: $80
    nop                                           ; $7CFD: $00
    add b                                         ; $7CFE: $80
    nop                                           ; $7CFF: $00
    rst RST_38                                    ; $7D00: $FF
    db $EC                                        ; $7D01: $EC
    db $EB                                        ; $7D02: $EB
    push de                                       ; $7D03: $D5
    rst RST_38                                    ; $7D04: $FF
    push bc                                       ; $7D05: $C5
    rst RST_38                                    ; $7D06: $FF
    ld b, b                                       ; $7D07: $40
    cp $B7                                        ; $7D08: $FE $B7
    cp $07                                        ; $7D0A: $FE $07
    rst RST_20                                    ; $7D0C: $E7
    nop                                           ; $7D0D: $00
    rra                                           ; $7D0E: $1F
    ldh [rIF], a                                  ; $7D0F: $E0 $0F
    rst RST_30                                    ; $7D11: $F7
    rrca                                          ; $7D12: $0F
    pop af                                        ; $7D13: $F1
    add a                                         ; $7D14: $87
    ld a, d                                       ; $7D15: $7A
    ld b, a                                       ; $7D16: $47
    add hl, sp                                    ; $7D17: $39
    ld a, a                                       ; $7D18: $7F
    ld bc, $237F                                  ; $7D19: $01 $7F $23
    ccf                                           ; $7D1C: $3F
    ld e, $1E                                     ; $7D1D: $1E $1E
    nop                                           ; $7D1F: $00
    nop                                           ; $7D20: $00
    nop                                           ; $7D21: $00
    add b                                         ; $7D22: $80
    nop                                           ; $7D23: $00
    ld b, b                                       ; $7D24: $40
    add b                                         ; $7D25: $80
    ld b, b                                       ; $7D26: $40
    add b                                         ; $7D27: $80
    add b                                         ; $7D28: $80
    nop                                           ; $7D29: $00
    add b                                         ; $7D2A: $80
    nop                                           ; $7D2B: $00
    add b                                         ; $7D2C: $80
    nop                                           ; $7D2D: $00
    nop                                           ; $7D2E: $00
    nop                                           ; $7D2F: $00
    nop                                           ; $7D30: $00
    nop                                           ; $7D31: $00
    add b                                         ; $7D32: $80
    nop                                           ; $7D33: $00
    ldh [$FF80], a                                ; $7D34: $E0 $80
    ldh a, [$FFA0]                                ; $7D36: $F0 $A0
    ld hl, sp+$70                                 ; $7D38: $F8 $70
    ld hl, sp+$20                                 ; $7D3A: $F8 $20
    and h                                         ; $7D3C: $A4
    ld e, b                                       ; $7D3D: $58
    db $FC                                        ; $7D3E: $FC
    nop                                           ; $7D3F: $00
    rra                                           ; $7D40: $1F
    ld b, $1F                                     ; $7D41: $06 $1F
    ld b, $17                                     ; $7D43: $06 $17
    ld [$0E17], sp                                ; $7D45: $08 $17 $0E
    rrca                                          ; $7D48: $0F
    rlca                                          ; $7D49: $07
    rrca                                          ; $7D4A: $0F
    nop                                           ; $7D4B: $00
    rla                                           ; $7D4C: $17
    rrca                                          ; $7D4D: $0F
    rla                                           ; $7D4E: $17
    rrca                                          ; $7D4F: $0F
    rla                                           ; $7D50: $17
    rrca                                          ; $7D51: $0F
    scf                                           ; $7D52: $37
    rrca                                          ; $7D53: $0F
    scf                                           ; $7D54: $37
    rrca                                          ; $7D55: $0F
    ld d, a                                       ; $7D56: $57
    cpl                                           ; $7D57: $2F
    ld e, a                                       ; $7D58: $5F
    daa                                           ; $7D59: $27
    and a                                         ; $7D5A: $A7
    ld b, b                                       ; $7D5B: $40
    and e                                         ; $7D5C: $A3
    ld b, b                                       ; $7D5D: $40
    ld b, b                                       ; $7D5E: $40
    nop                                           ; $7D5F: $00
    ret nz                                        ; $7D60: $C0

    nop                                           ; $7D61: $00
    ldh [$FFC0], a                                ; $7D62: $E0 $C0
    ldh [$FFC0], a                                ; $7D64: $E0 $C0
    ldh [$FFC0], a                                ; $7D66: $E0 $C0
    ldh [$FFC0], a                                ; $7D68: $E0 $C0
    ldh [$FFC0], a                                ; $7D6A: $E0 $C0
    db $FD                                        ; $7D6C: $FD
    ret nz                                        ; $7D6D: $C0

    di                                            ; $7D6E: $F3
    adc h                                         ; $7D6F: $8C
    sub c                                         ; $7D70: $91
    ld l, [hl]                                    ; $7D71: $6E
    ld [$88F7], sp                                ; $7D72: $08 $F7 $88
    ld [hl], a                                    ; $7D75: $77
    ld b, h                                       ; $7D76: $44
    dec sp                                        ; $7D77: $3B
    inc h                                         ; $7D78: $24
    dec de                                        ; $7D79: $1B
    ld a, [de]                                    ; $7D7A: $1A
    dec b                                         ; $7D7B: $05
    rlca                                          ; $7D7C: $07
    nop                                           ; $7D7D: $00
    inc bc                                        ; $7D7E: $03
    nop                                           ; $7D7F: $00
    nop                                           ; $7D80: $00
    nop                                           ; $7D81: $00
    nop                                           ; $7D82: $00
    nop                                           ; $7D83: $00
    nop                                           ; $7D84: $00
    nop                                           ; $7D85: $00
    nop                                           ; $7D86: $00
    nop                                           ; $7D87: $00
    nop                                           ; $7D88: $00
    nop                                           ; $7D89: $00
    add b                                         ; $7D8A: $80
    nop                                           ; $7D8B: $00
    ld c, d                                       ; $7D8C: $4A
    add b                                         ; $7D8D: $80
    ld d, l                                       ; $7D8E: $55
    adc d                                         ; $7D8F: $8A
    xor c                                         ; $7D90: $A9
    sub $EB                                       ; $7D91: $D6 $EB
    ld d, [hl]                                    ; $7D93: $56
    rst RST_38                                    ; $7D94: $FF
    ld d, h                                       ; $7D95: $54
    ld a, [hl]                                    ; $7D96: $7E
    add c                                         ; $7D97: $81
    ld hl, $3FDE                                  ; $7D98: $21 $DE $3F
    ret nz                                        ; $7D9B: $C0

    ld a, c                                       ; $7D9C: $79
    and a                                         ; $7D9D: $A7
    db $FD                                        ; $7D9E: $FD
    ld [hl], $00                                  ; $7D9F: $36 $00
    nop                                           ; $7DA1: $00
    nop                                           ; $7DA2: $00
    nop                                           ; $7DA3: $00
    nop                                           ; $7DA4: $00
    nop                                           ; $7DA5: $00
    inc b                                         ; $7DA6: $04
    nop                                           ; $7DA7: $00
    ld l, d                                       ; $7DA8: $6A
    inc b                                         ; $7DA9: $04
    sbc d                                         ; $7DAA: $9A
    ld l, h                                       ; $7DAB: $6C
    halt                                          ; $7DAC: $76
    call c, Call_000_38EC                         ; $7DAD: $DC $EC $38
    ld c, h                                       ; $7DB0: $4C
    cp b                                          ; $7DB1: $B8
    ld e, b                                       ; $7DB2: $58
    or b                                          ; $7DB3: $B0
    ld a, h                                       ; $7DB4: $7C
    and b                                         ; $7DB5: $A0
    ld a, e                                       ; $7DB6: $7B
    sub h                                         ; $7DB7: $94
    ld hl, sp+$17                                 ; $7DB8: $F8 $17
    ldh a, [$FF2F]                                ; $7DBA: $F0 $2F
    ld sp, hl                                     ; $7DBC: $F9
    add $FE                                       ; $7DBD: $C6 $FE
    ldh [rP1], a                                  ; $7DBF: $E0 $00
    nop                                           ; $7DC1: $00
    nop                                           ; $7DC2: $00
    nop                                           ; $7DC3: $00
    nop                                           ; $7DC4: $00
    nop                                           ; $7DC5: $00
    nop                                           ; $7DC6: $00
    nop                                           ; $7DC7: $00
    nop                                           ; $7DC8: $00
    nop                                           ; $7DC9: $00
    nop                                           ; $7DCA: $00
    nop                                           ; $7DCB: $00
    nop                                           ; $7DCC: $00
    nop                                           ; $7DCD: $00
    nop                                           ; $7DCE: $00
    nop                                           ; $7DCF: $00
    nop                                           ; $7DD0: $00
    nop                                           ; $7DD1: $00
    nop                                           ; $7DD2: $00
    nop                                           ; $7DD3: $00
    nop                                           ; $7DD4: $00
    nop                                           ; $7DD5: $00
    nop                                           ; $7DD6: $00
    nop                                           ; $7DD7: $00
    nop                                           ; $7DD8: $00
    nop                                           ; $7DD9: $00
    add b                                         ; $7DDA: $80
    nop                                           ; $7DDB: $00
    add b                                         ; $7DDC: $80
    nop                                           ; $7DDD: $00
    nop                                           ; $7DDE: $00
    nop                                           ; $7DDF: $00
    nop                                           ; $7DE0: $00
    nop                                           ; $7DE1: $00
    nop                                           ; $7DE2: $00
    nop                                           ; $7DE3: $00
    nop                                           ; $7DE4: $00
    nop                                           ; $7DE5: $00
    nop                                           ; $7DE6: $00
    nop                                           ; $7DE7: $00
    nop                                           ; $7DE8: $00
    nop                                           ; $7DE9: $00
    nop                                           ; $7DEA: $00
    nop                                           ; $7DEB: $00
    nop                                           ; $7DEC: $00
    nop                                           ; $7DED: $00
    nop                                           ; $7DEE: $00
    nop                                           ; $7DEF: $00
    nop                                           ; $7DF0: $00
    nop                                           ; $7DF1: $00
    ld l, h                                       ; $7DF2: $6C
    nop                                           ; $7DF3: $00
    sub d                                         ; $7DF4: $92
    ld l, h                                       ; $7DF5: $6C
    cp $6C                                        ; $7DF6: $FE $6C
    cp $60                                        ; $7DF8: $FE $60
    ld [hl], c                                    ; $7DFA: $71
    adc [hl]                                      ; $7DFB: $8E
    ld a, a                                       ; $7DFC: $7F
    xor $FE                                       ; $7DFD: $EE $FE
    ld [hl], b                                    ; $7DFF: $70
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
