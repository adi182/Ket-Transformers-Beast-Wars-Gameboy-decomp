; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $036", ROMX[$4000], BANK[$36]

    ld a, [$C312]                                 ; $4000: $FA $12 $C3
    ld l, a                                       ; $4003: $6F
    ld a, [$C313]                                 ; $4004: $FA $13 $C3
    ld h, a                                       ; $4007: $67
    ld e, [hl]                                    ; $4008: $5E
    inc hl                                        ; $4009: $23
    ld d, [hl]                                    ; $400A: $56
    inc hl                                        ; $400B: $23
    ld c, [hl]                                    ; $400C: $4E
    push hl                                       ; $400D: $E5
    ld l, e                                       ; $400E: $6B
    ld h, d                                       ; $400F: $62
    xor a                                         ; $4010: $AF

jr_036_4011:
    ld [hl+], a                                   ; $4011: $22
    ld [hl+], a                                   ; $4012: $22
    ld [hl+], a                                   ; $4013: $22
    ld [hl+], a                                   ; $4014: $22
    ld [hl+], a                                   ; $4015: $22
    ld [hl+], a                                   ; $4016: $22
    ld [hl+], a                                   ; $4017: $22
    ld [hl+], a                                   ; $4018: $22
    ld [hl+], a                                   ; $4019: $22
    ld [hl+], a                                   ; $401A: $22
    ld [hl+], a                                   ; $401B: $22
    ld [hl+], a                                   ; $401C: $22
    dec c                                         ; $401D: $0D
    jr nz, jr_036_4011                            ; $401E: $20 $F1

Call_036_4020:
    pop hl                                        ; $4020: $E1
    ld a, [hl+]                                   ; $4021: $2A
    ld c, a                                       ; $4022: $4F

Jump_036_4023:
    push bc                                       ; $4023: $C5
    ld c, [hl]                                    ; $4024: $4E
    inc hl                                        ; $4025: $23
    ld a, [hl]                                    ; $4026: $7E
    swap a                                        ; $4027: $CB $37
    and $0F                                       ; $4029: $E6 $0F
    ld b, a                                       ; $402B: $47
    push hl                                       ; $402C: $E5
    ld hl, $40C8                                  ; $402D: $21 $C8 $40
    rl c                                          ; $4030: $CB $11
    rl b                                          ; $4032: $CB $10
    add hl, bc                                    ; $4034: $09
    add hl, bc                                    ; $4035: $09
    add hl, bc                                    ; $4036: $09
    add hl, bc                                    ; $4037: $09
    add hl, bc                                    ; $4038: $09
    add hl, bc                                    ; $4039: $09
    add hl, bc                                    ; $403A: $09
    add hl, bc                                    ; $403B: $09
    add hl, bc                                    ; $403C: $09
    ld c, l                                       ; $403D: $4D
    ld b, h                                       ; $403E: $44
    ld hl, $000C                                  ; $403F: $21 $0C $00
    add hl, de                                    ; $4042: $19
    ld a, $06                                     ; $4043: $3E $06

jr_036_4045:
    push af                                       ; $4045: $F5
    ld a, [bc]                                    ; $4046: $0A
    ld [de], a                                    ; $4047: $12
    inc bc                                        ; $4048: $03
    inc de                                        ; $4049: $13
    ld a, [bc]                                    ; $404A: $0A
    and $F0                                       ; $404B: $E6 $F0
    ld [hl+], a                                   ; $404D: $22
    ld a, [bc]                                    ; $404E: $0A
    inc bc                                        ; $404F: $03
    swap a                                        ; $4050: $CB $37
    and $F0                                       ; $4052: $E6 $F0
    ld [hl+], a                                   ; $4054: $22
    ld a, [bc]                                    ; $4055: $0A
    ld [de], a                                    ; $4056: $12
    inc bc                                        ; $4057: $03
    inc de                                        ; $4058: $13
    pop af                                        ; $4059: $F1
    dec a                                         ; $405A: $3D
    jr nz, jr_036_4045                            ; $405B: $20 $E8

    pop hl                                        ; $405D: $E1
    ld a, [hl+]                                   ; $405E: $2A
    and $0F                                       ; $405F: $E6 $0F
    ld c, [hl]                                    ; $4061: $4E
    inc hl                                        ; $4062: $23
    ld b, a                                       ; $4063: $47
    push hl                                       ; $4064: $E5
    ld hl, $40C8                                  ; $4065: $21 $C8 $40
    rl c                                          ; $4068: $CB $11
    rl b                                          ; $406A: $CB $10
    add hl, bc                                    ; $406C: $09
    add hl, bc                                    ; $406D: $09
    add hl, bc                                    ; $406E: $09
    add hl, bc                                    ; $406F: $09
    add hl, bc                                    ; $4070: $09
    add hl, bc                                    ; $4071: $09
    add hl, bc                                    ; $4072: $09
    add hl, bc                                    ; $4073: $09
    add hl, bc                                    ; $4074: $09
    ld c, l                                       ; $4075: $4D
    ld b, h                                       ; $4076: $44
    ld hl, $000C                                  ; $4077: $21 $0C $00
    add hl, de                                    ; $407A: $19
    ld a, $06                                     ; $407B: $3E $06

jr_036_407D:
    push af                                       ; $407D: $F5
    ld a, [bc]                                    ; $407E: $0A
    swap a                                        ; $407F: $CB $37
    and $0F                                       ; $4081: $E6 $0F
    push bc                                       ; $4083: $C5
    ld c, a                                       ; $4084: $4F
    ld a, [de]                                    ; $4085: $1A
    or c                                          ; $4086: $B1
    ld [de], a                                    ; $4087: $12
    inc de                                        ; $4088: $13
    pop bc                                        ; $4089: $C1
    ld a, [bc]                                    ; $408A: $0A
    inc bc                                        ; $408B: $03
    push de                                       ; $408C: $D5
    swap a                                        ; $408D: $CB $37
    and $F0                                       ; $408F: $E6 $F0
    ld e, a                                       ; $4091: $5F
    ld a, [bc]                                    ; $4092: $0A
    swap a                                        ; $4093: $CB $37
    and $0F                                       ; $4095: $E6 $0F
    or e                                          ; $4097: $B3
    pop de                                        ; $4098: $D1
    ld [hl+], a                                   ; $4099: $22
    ld a, [bc]                                    ; $409A: $0A
    inc bc                                        ; $409B: $03
    and $0F                                       ; $409C: $E6 $0F
    push de                                       ; $409E: $D5
    ld e, a                                       ; $409F: $5F
    ld a, [bc]                                    ; $40A0: $0A
    swap a                                        ; $40A1: $CB $37
    and $F0                                       ; $40A3: $E6 $F0
    or e                                          ; $40A5: $B3
    ld [hl+], a                                   ; $40A6: $22
    pop de                                        ; $40A7: $D1
    ld a, [bc]                                    ; $40A8: $0A
    inc bc                                        ; $40A9: $03
    push hl                                       ; $40AA: $E5
    swap a                                        ; $40AB: $CB $37
    and $0F                                       ; $40AD: $E6 $0F
    ld l, a                                       ; $40AF: $6F
    ld a, [de]                                    ; $40B0: $1A
    or l                                          ; $40B1: $B5
    pop hl                                        ; $40B2: $E1
    ld [de], a                                    ; $40B3: $12
    inc de                                        ; $40B4: $13
    pop af                                        ; $40B5: $F1
    dec a                                         ; $40B6: $3D
    jr nz, jr_036_407D                            ; $40B7: $20 $C4

    ld hl, $000C                                  ; $40B9: $21 $0C $00
    add hl, de                                    ; $40BC: $19
    ld e, l                                       ; $40BD: $5D
    ld d, h                                       ; $40BE: $54
    pop hl                                        ; $40BF: $E1
    pop bc                                        ; $40C0: $C1
    dec c                                         ; $40C1: $0D
    dec c                                         ; $40C2: $0D
    dec c                                         ; $40C3: $0D
    jp nz, Jump_036_4023                          ; $40C4: $C2 $23 $40

    ret                                           ; $40C7: $C9


    nop                                           ; $40C8: $00
    nop                                           ; $40C9: $00
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
    nop                                           ; $40EA: $00
    nop                                           ; $40EB: $00
    rrca                                          ; $40EC: $0F
    ld [$3019], sp                                ; $40ED: $08 $19 $30
    call z, $3030                                 ; $40F0: $CC $30 $30
    call z, $3030                                 ; $40F3: $CC $30 $30
    call z, $3030                                 ; $40F6: $CC $30 $30
    ret z                                         ; $40F9: $C8

    add hl, de                                    ; $40FA: $19
    rrca                                          ; $40FB: $0F

Call_036_40FC:
    nop                                           ; $40FC: $00
    nop                                           ; $40FD: $00
    ld [bc], a                                    ; $40FE: $02
    nop                                           ; $40FF: $00
    ld b, $0E                                     ; $4100: $06 $0E
    nop                                           ; $4102: $00
    ld b, $06                                     ; $4103: $06 $06
    nop                                           ; $4105: $00
    ld b, $06                                     ; $4106: $06 $06
    nop                                           ; $4108: $00
    ld b, $06                                     ; $4109: $06 $06
    nop                                           ; $410B: $00
    ld b, $1F                                     ; $410C: $06 $1F
    add b                                         ; $410E: $80
    nop                                           ; $410F: $00
    rrca                                          ; $4110: $0F
    ld [$3019], sp                                ; $4111: $08 $19 $30
    call z, $0130                                 ; $4114: $CC $30 $01
    add b                                         ; $4117: $80
    inc bc                                        ; $4118: $03
    ld b, $00                                     ; $4119: $06 $00
    inc c                                         ; $411B: $0C
    jr jr_036_411E                                ; $411C: $18 $00

jr_036_411E:
    jr nc, jr_036_415F                            ; $411E: $30 $3F

    ret nz                                        ; $4120: $C0

    nop                                           ; $4121: $00
    rrca                                          ; $4122: $0F
    ld [$3019], sp                                ; $4123: $08 $19 $30
    call z, $0130                                 ; $4126: $CC $30 $01
    add b                                         ; $4129: $80
    rlca                                          ; $412A: $07
    ld bc, $308C                                  ; $412B: $01 $8C $30
    jr nc, @-$36                                  ; $412E: $30 $C8

    add hl, de                                    ; $4130: $19
    rrca                                          ; $4131: $0F
    nop                                           ; $4132: $00
    nop                                           ; $4133: $00
    ld bc, $0388                                  ; $4134: $01 $88 $03
    rlca                                          ; $4137: $07
    adc b                                         ; $4138: $88
    dec c                                         ; $4139: $0D
    add hl, de                                    ; $413A: $19
    adc b                                         ; $413B: $88
    ld sp, $8831                                  ; $413C: $31 $31 $88
    ld sp, $C83F                                  ; $413F: $31 $3F $C8
    ld bc, $8001                                  ; $4142: $01 $01 $80
    nop                                           ; $4145: $00
    ccf                                           ; $4146: $3F
    ret nz                                        ; $4147: $C0

    jr nc, jr_036_417A                            ; $4148: $30 $30

    nop                                           ; $414A: $00
    jr nc, jr_036_418C                            ; $414B: $30 $3F

    ld [$0031], sp                                ; $414D: $08 $31 $00
    call z, $3000                                 ; $4150: $CC $00 $30
    ret z                                         ; $4153: $C8

    ld sp, $001F                                  ; $4154: $31 $1F $00
    nop                                           ; $4157: $00
    rrca                                          ; $4158: $0F
    add b                                         ; $4159: $80
    jr jr_036_418C                                ; $415A: $18 $30

    nop                                           ; $415C: $00
    jr nc, @+$41                                  ; $415D: $30 $3F

jr_036_415F:
    ld [$3039], sp                                ; $415F: $08 $39 $30
    call z, $3030                                 ; $4162: $CC $30 $30
    ret z                                         ; $4165: $C8

    add hl, de                                    ; $4166: $19
    rrca                                          ; $4167: $0F
    nop                                           ; $4168: $00
    nop                                           ; $4169: $00
    ccf                                           ; $416A: $3F
    call z, RST_00                                ; $416B: $CC $00 $00
    ret z                                         ; $416E: $C8

    ld bc, $0003                                  ; $416F: $01 $03 $00
    ld b, $06                                     ; $4172: $06 $06
    nop                                           ; $4174: $00
    ld b, $06                                     ; $4175: $06 $06
    nop                                           ; $4177: $00
    ld b, $06                                     ; $4178: $06 $06

jr_036_417A:
    nop                                           ; $417A: $00
    nop                                           ; $417B: $00
    rrca                                          ; $417C: $0F
    ld [$3019], sp                                ; $417D: $08 $19 $30
    call z, Call_000_1930                         ; $4180: $CC $30 $19
    add b                                         ; $4183: $80
    rrca                                          ; $4184: $0F
    add hl, de                                    ; $4185: $19
    adc h                                         ; $4186: $8C
    jr nc, jr_036_41B9                            ; $4187: $30 $30

jr_036_4189:
    ret z                                         ; $4189: $C8

    add hl, de                                    ; $418A: $19
    rrca                                          ; $418B: $0F

jr_036_418C:
    nop                                           ; $418C: $00
    nop                                           ; $418D: $00
    rrca                                          ; $418E: $0F
    ld [$3019], sp                                ; $418F: $08 $19 $30
    call z, $3030                                 ; $4192: $CC $30 $30
    call z, Call_000_1930                         ; $4195: $CC $30 $19
    call z, Call_000_000F                         ; $4198: $CC $0F $00
    ret z                                         ; $419B: $C8

    ld bc, $003F                                  ; $419C: $01 $3F $00
    nop                                           ; $419F: $00
    nop                                           ; $41A0: $00
    nop                                           ; $41A1: $00
    rrca                                          ; $41A2: $0F
    add hl, de                                    ; $41A3: $19
    adc h                                         ; $41A4: $8C
    jr nc, jr_036_41D7                            ; $41A5: $30 $30

    call z, $3030                                 ; $41A7: $CC $30 $30

jr_036_41AA:
    call z, $303F                                 ; $41AA: $CC $3F $30
    call z, RST_30                                ; $41AD: $CC $30 $00
    nop                                           ; $41B0: $00
    nop                                           ; $41B1: $00
    nop                                           ; $41B2: $00
    ld [$303F], sp                                ; $41B3: $08 $3F $30
    call z, $3030                                 ; $41B6: $CC $30 $30

jr_036_41B9:
    ret z                                         ; $41B9: $C8

    ccf                                           ; $41BA: $3F
    jr nc, jr_036_4189                            ; $41BB: $30 $CC

    jr nc, jr_036_41EF                            ; $41BD: $30 $30

    ret z                                         ; $41BF: $C8

    ccf                                           ; $41C0: $3F
    nop                                           ; $41C1: $00
    nop                                           ; $41C2: $00
    nop                                           ; $41C3: $00
    nop                                           ; $41C4: $00
    inc c                                         ; $41C5: $0C
    rra                                           ; $41C6: $1F
    jr nc, jr_036_41C9                            ; $41C7: $30 $00

jr_036_41C9:
    jr nc, jr_036_41FB                            ; $41C9: $30 $30

    nop                                           ; $41CB: $00
    jr nc, @+$32                                  ; $41CC: $30 $30

    nop                                           ; $41CE: $00
    jr nc, jr_036_4201                            ; $41CF: $30 $30

    inc c                                         ; $41D1: $0C
    rra                                           ; $41D2: $1F
    nop                                           ; $41D3: $00
    nop                                           ; $41D4: $00
    nop                                           ; $41D5: $00
    nop                                           ; $41D6: $00

jr_036_41D7:
    nop                                           ; $41D7: $00
    ccf                                           ; $41D8: $3F
    ld sp, $308C                                  ; $41D9: $31 $8C $30
    jr nc, jr_036_41AA                            ; $41DC: $30 $CC

    jr nc, @+$32                                  ; $41DE: $30 $30

    call z, Call_000_3130                         ; $41E0: $CC $30 $31

jr_036_41E3:
    add b                                         ; $41E3: $80
    ccf                                           ; $41E4: $3F
    nop                                           ; $41E5: $00
    nop                                           ; $41E6: $00
    nop                                           ; $41E7: $00
    nop                                           ; $41E8: $00
    inc c                                         ; $41E9: $0C
    ccf                                           ; $41EA: $3F
    jr nc, jr_036_41ED                            ; $41EB: $30 $00

jr_036_41ED:
    jr nc, jr_036_421F                            ; $41ED: $30 $30

jr_036_41EF:
    nop                                           ; $41EF: $00
    ccf                                           ; $41F0: $3F
    jr nc, jr_036_41F3                            ; $41F1: $30 $00

jr_036_41F3:
    jr nc, jr_036_4225                            ; $41F3: $30 $30

    inc c                                         ; $41F5: $0C
    ccf                                           ; $41F6: $3F
    nop                                           ; $41F7: $00
    nop                                           ; $41F8: $00
    nop                                           ; $41F9: $00
    nop                                           ; $41FA: $00

jr_036_41FB:
    inc c                                         ; $41FB: $0C
    ccf                                           ; $41FC: $3F
    jr nc, jr_036_41FF                            ; $41FD: $30 $00

jr_036_41FF:
    jr nc, jr_036_4231                            ; $41FF: $30 $30

jr_036_4201:
    nop                                           ; $4201: $00
    ccf                                           ; $4202: $3F
    jr nc, jr_036_4205                            ; $4203: $30 $00

jr_036_4205:
    jr nc, jr_036_4237                            ; $4205: $30 $30

    nop                                           ; $4207: $00
    jr nc, jr_036_420A                            ; $4208: $30 $00

jr_036_420A:
    nop                                           ; $420A: $00
    nop                                           ; $420B: $00
    nop                                           ; $420C: $00
    inc c                                         ; $420D: $0C
    rra                                           ; $420E: $1F
    jr nc, jr_036_4211                            ; $420F: $30 $00

jr_036_4211:
    jr nc, jr_036_4243                            ; $4211: $30 $30

    inc c                                         ; $4213: $0C
    inc sp                                        ; $4214: $33
    jr nc, jr_036_41E3                            ; $4215: $30 $CC

    jr nc, jr_036_4249                            ; $4217: $30 $30

    call z, Call_000_001F                         ; $4219: $CC $1F $00
    nop                                           ; $421C: $00
    nop                                           ; $421D: $00
    nop                                           ; $421E: $00

jr_036_421F:
    inc c                                         ; $421F: $0C
    jr nc, jr_036_4252                            ; $4220: $30 $30

    call z, $3030                                 ; $4222: $CC $30 $30

jr_036_4225:
    call z, $303F                                 ; $4225: $CC $3F $30
    call z, $3030                                 ; $4228: $CC $30 $30
    call z, RST_30                                ; $422B: $CC $30 $00
    nop                                           ; $422E: $00
    nop                                           ; $422F: $00
    nop                                           ; $4230: $00

jr_036_4231:
    nop                                           ; $4231: $00
    rrca                                          ; $4232: $0F
    ld b, $00                                     ; $4233: $06 $00
    ld b, $06                                     ; $4235: $06 $06

jr_036_4237:
    nop                                           ; $4237: $00
    ld b, $06                                     ; $4238: $06 $06
    nop                                           ; $423A: $00
    ld b, $06                                     ; $423B: $06 $06
    nop                                           ; $423D: $00
    rrca                                          ; $423E: $0F
    nop                                           ; $423F: $00

Call_036_4240:
    nop                                           ; $4240: $00
    nop                                           ; $4241: $00
    nop                                           ; $4242: $00

jr_036_4243:
    inc c                                         ; $4243: $0C
    nop                                           ; $4244: $00
    nop                                           ; $4245: $00
    call z, RST_00                                ; $4246: $CC $00 $00

jr_036_4249:
    call z, $3000                                 ; $4249: $CC $00 $30
    call z, $3030                                 ; $424C: $CC $30 $30
    ret z                                         ; $424F: $C8

    rra                                           ; $4250: $1F
    nop                                           ; $4251: $00

jr_036_4252:
    nop                                           ; $4252: $00
    nop                                           ; $4253: $00
    nop                                           ; $4254: $00
    inc c                                         ; $4255: $0C
    jr nc, jr_036_4289                            ; $4256: $30 $31

    add b                                         ; $4258: $80
    inc sp                                        ; $4259: $33
    ld [hl], $00                                  ; $425A: $36 $00
    inc a                                         ; $425C: $3C
    ld [hl], $00                                  ; $425D: $36 $00
    inc sp                                        ; $425F: $33
    ld sp, $308C                                  ; $4260: $31 $8C $30
    nop                                           ; $4263: $00
    nop                                           ; $4264: $00
    nop                                           ; $4265: $00
    nop                                           ; $4266: $00
    nop                                           ; $4267: $00
    jr nc, jr_036_429A                            ; $4268: $30 $30

    nop                                           ; $426A: $00
    jr nc, jr_036_429D                            ; $426B: $30 $30

    nop                                           ; $426D: $00
    jr nc, jr_036_42A0                            ; $426E: $30 $30

    nop                                           ; $4270: $00
    jr nc, jr_036_42A3                            ; $4271: $30 $30

    inc c                                         ; $4273: $0C
    ccf                                           ; $4274: $3F
    nop                                           ; $4275: $00
    nop                                           ; $4276: $00
    nop                                           ; $4277: $00
    nop                                           ; $4278: $00
    inc c                                         ; $4279: $0C
    jr nc, jr_036_42B5                            ; $427A: $30 $39

    call z, $363F                                 ; $427C: $CC $3F $36
    call z, $3030                                 ; $427F: $CC $30 $30
    call z, $3030                                 ; $4282: $CC $30 $30
    call z, RST_30                                ; $4285: $CC $30 $00
    nop                                           ; $4288: $00

jr_036_4289:
    nop                                           ; $4289: $00
    nop                                           ; $428A: $00
    inc c                                         ; $428B: $0C
    jr nc, @+$3A                                  ; $428C: $30 $38

    call z, $363C                                 ; $428E: $CC $3C $36
    call z, $3133                                 ; $4291: $CC $33 $31
    call z, $3030                                 ; $4294: $CC $30 $30
    call z, RST_30                                ; $4297: $CC $30 $00

jr_036_429A:
    nop                                           ; $429A: $00
    nop                                           ; $429B: $00
    nop                                           ; $429C: $00

jr_036_429D:
    ld [$301F], sp                                ; $429D: $08 $1F $30

jr_036_42A0:
    call z, $3030                                 ; $42A0: $CC $30 $30

jr_036_42A3:
    call z, $3030                                 ; $42A3: $CC $30 $30
    call z, $3030                                 ; $42A6: $CC $30 $30

jr_036_42A9:
    ret z                                         ; $42A9: $C8

    rra                                           ; $42AA: $1F
    nop                                           ; $42AB: $00
    nop                                           ; $42AC: $00
    nop                                           ; $42AD: $00
    nop                                           ; $42AE: $00
    ld [$303F], sp                                ; $42AF: $08 $3F $30
    call z, $3030                                 ; $42B2: $CC $30 $30

jr_036_42B5:
    call z, Call_000_3F30                         ; $42B5: $CC $30 $3F
    add b                                         ; $42B8: $80
    jr nc, jr_036_42EB                            ; $42B9: $30 $30

    nop                                           ; $42BB: $00
    jr nc, jr_036_42BE                            ; $42BC: $30 $00

jr_036_42BE:
    nop                                           ; $42BE: $00
    nop                                           ; $42BF: $00
    nop                                           ; $42C0: $00
    ld [$301F], sp                                ; $42C1: $08 $1F $30
    call z, $3030                                 ; $42C4: $CC $30 $30
    call z, $3030                                 ; $42C7: $CC $30 $30
    call z, $3936                                 ; $42CA: $CC $36 $39
    adc h                                         ; $42CD: $8C
    rra                                           ; $42CE: $1F
    nop                                           ; $42CF: $00
    nop                                           ; $42D0: $00
    nop                                           ; $42D1: $00
    nop                                           ; $42D2: $00
    ld [$303F], sp                                ; $42D3: $08 $3F $30
    call z, $3030                                 ; $42D6: $CC $30 $30
    call z, Call_000_3F30                         ; $42D9: $CC $30 $3F
    add b                                         ; $42DC: $80
    inc sp                                        ; $42DD: $33
    ld sp, $308C                                  ; $42DE: $31 $8C $30
    nop                                           ; $42E1: $00
    nop                                           ; $42E2: $00
    nop                                           ; $42E3: $00
    nop                                           ; $42E4: $00
    inc c                                         ; $42E5: $0C
    rra                                           ; $42E6: $1F
    jr nc, jr_036_42A9                            ; $42E7: $30 $C0

    jr nc, jr_036_431B                            ; $42E9: $30 $30

jr_036_42EB:
    ld [$001F], sp                                ; $42EB: $08 $1F $00
    call z, $3000                                 ; $42EE: $CC $00 $30
    ret z                                         ; $42F1: $C8

    ccf                                           ; $42F2: $3F
    nop                                           ; $42F3: $00
    nop                                           ; $42F4: $00
    nop                                           ; $42F5: $00
    nop                                           ; $42F6: $00
    inc c                                         ; $42F7: $0C
    ccf                                           ; $42F8: $3F
    ld b, $00                                     ; $42F9: $06 $00
    ld b, $06                                     ; $42FB: $06 $06
    nop                                           ; $42FD: $00
    ld b, $06                                     ; $42FE: $06 $06
    nop                                           ; $4300: $00
    ld b, $06                                     ; $4301: $06 $06
    nop                                           ; $4303: $00
    ld b, $00                                     ; $4304: $06 $00
    nop                                           ; $4306: $00
    nop                                           ; $4307: $00
    nop                                           ; $4308: $00
    inc c                                         ; $4309: $0C
    jr nc, jr_036_433C                            ; $430A: $30 $30

Call_036_430C:
Jump_036_430C:
    call z, $3030                                 ; $430C: $CC $30 $30
    call z, $3030                                 ; $430F: $CC $30 $30
    call z, $3030                                 ; $4312: $CC $30 $30
    ret z                                         ; $4315: $C8

    rra                                           ; $4316: $1F
    nop                                           ; $4317: $00
    nop                                           ; $4318: $00
    nop                                           ; $4319: $00
    nop                                           ; $431A: $00

jr_036_431B:
    inc c                                         ; $431B: $0C
    jr nc, jr_036_434E                            ; $431C: $30 $30

    call z, Call_000_1930                         ; $431E: $CC $30 $19
    adc b                                         ; $4321: $88
    add hl, de                                    ; $4322: $19
    rrca                                          ; $4323: $0F
    nop                                           ; $4324: $00
    rrca                                          ; $4325: $0F
    ld b, $00                                     ; $4326: $06 $00

jr_036_4328:
    ld b, $00                                     ; $4328: $06 $00
    nop                                           ; $432A: $00
    nop                                           ; $432B: $00
    nop                                           ; $432C: $00
    inc c                                         ; $432D: $0C
    jr nc, jr_036_4360                            ; $432E: $30 $30

    call z, $3030                                 ; $4330: $CC $30 $30
    call z, Call_000_3F36                         ; $4333: $CC $36 $3F
    call z, $3039                                 ; $4336: $CC $39 $30
    call nz, RST_20                               ; $4339: $C4 $20 $00

jr_036_433C:
    nop                                           ; $433C: $00
    nop                                           ; $433D: $00
    nop                                           ; $433E: $00
    inc c                                         ; $433F: $0C
    jr nc, jr_036_4372                            ; $4340: $30 $30

    call z, Call_000_1930                         ; $4342: $CC $30 $19
    add b                                         ; $4345: $80
    rrca                                          ; $4346: $0F
    add hl, de                                    ; $4347: $19
    adc h                                         ; $4348: $8C
    jr nc, jr_036_437B                            ; $4349: $30 $30

    call z, RST_30                                ; $434B: $CC $30 $00

jr_036_434E:
    nop                                           ; $434E: $00
    nop                                           ; $434F: $00
    nop                                           ; $4350: $00
    inc c                                         ; $4351: $0C
    jr nc, jr_036_4384                            ; $4352: $30 $30

    call z, Call_000_1930                         ; $4354: $CC $30 $19
    add b                                         ; $4357: $80
    rrca                                          ; $4358: $0F
    ld b, $00                                     ; $4359: $06 $00
    ld b, $06                                     ; $435B: $06 $06
    nop                                           ; $435D: $00
    ld b, $00                                     ; $435E: $06 $00

jr_036_4360:
    nop                                           ; $4360: $00
    nop                                           ; $4361: $00
    nop                                           ; $4362: $00
    inc c                                         ; $4363: $0C
    ccf                                           ; $4364: $3F
    nop                                           ; $4365: $00
    ret z                                         ; $4366: $C8

    ld bc, $0003                                  ; $4367: $01 $03 $00
    ld b, $0C                                     ; $436A: $06 $0C
    nop                                           ; $436C: $00
    jr @+$32                                      ; $436D: $18 $30

    inc c                                         ; $436F: $0C
    ccf                                           ; $4370: $3F
    nop                                           ; $4371: $00

jr_036_4372:
    nop                                           ; $4372: $00
    nop                                           ; $4373: $00
    inc c                                         ; $4374: $0C
    ld [$3E45], sp                                ; $4375: $08 $45 $3E
    nop                                           ; $4378: $00
    add hl, bc                                    ; $4379: $09
    rrca                                          ; $437A: $0F

jr_036_437B:
    add h                                         ; $437B: $84
    add hl, de                                    ; $437C: $19
    ld a, [hl+]                                   ; $437D: $2A
    ld [hl+], a                                   ; $437E: $22
    ld c, d                                       ; $437F: $4A
    ld c, h                                       ; $4380: $4C
    inc h                                         ; $4381: $24
    inc [hl]                                      ; $4382: $34
    nop                                           ; $4383: $00

jr_036_4384:
    add b                                         ; $4384: $80
    nop                                           ; $4385: $00
    nop                                           ; $4386: $00
    nop                                           ; $4387: $00
    add b                                         ; $4388: $80
    ld b, b                                       ; $4389: $40
    add h                                         ; $438A: $84
    ld b, b                                       ; $438B: $40
    ld b, b                                       ; $438C: $40
    ld [hl+], a                                   ; $438D: $22
    ld b, b                                       ; $438E: $40
    ld c, b                                       ; $438F: $48
    nop                                           ; $4390: $00
    ld d, b                                       ; $4391: $50
    jr nc, jr_036_4394                            ; $4392: $30 $00

jr_036_4394:
    stop                                          ; $4394: $10 $00
    nop                                           ; $4396: $00
    nop                                           ; $4397: $00
    jr jr_036_439A                                ; $4398: $18 $00

jr_036_439A:
    rlca                                          ; $439A: $07
    nop                                           ; $439B: $00
    nop                                           ; $439C: $00
    ld b, a                                       ; $439D: $47
    jr c, jr_036_4328                             ; $439E: $38 $88

    nop                                           ; $43A0: $00
    nop                                           ; $43A1: $00
    adc b                                         ; $43A2: $88
    nop                                           ; $43A3: $00
    ld bc, $0200                                  ; $43A4: $01 $00 $02
    inc e                                         ; $43A7: $1C
    nop                                           ; $43A8: $00
    nop                                           ; $43A9: $00
    ld [$0700], sp                                ; $43AA: $08 $00 $07
    nop                                           ; $43AD: $00
    ld [$1927], sp                                ; $43AE: $08 $27 $19
    nop                                           ; $43B1: $00
    ld [bc], a                                    ; $43B2: $02
    inc b                                         ; $43B3: $04
    nop                                           ; $43B4: $00

jr_036_43B5:
    ld c, $11                                     ; $43B5: $0E $11
    nop                                           ; $43B7: $00
    ld hl, $E040                                  ; $43B8: $21 $40 $E0
    nop                                           ; $43BB: $00
    jr jr_036_43BE                                ; $43BC: $18 $00

jr_036_43BE:
    ld [$428E], sp                                ; $43BE: $08 $8E $42
    ld a, b                                       ; $43C1: $78
    rrca                                          ; $43C2: $0F
    jr z, jr_036_43DD                             ; $43C3: $28 $18

    jr z, jr_036_440B                             ; $43C5: $28 $44

    ld c, b                                       ; $43C7: $48
    adc b                                         ; $43C8: $88
    ld c, b                                       ; $43C9: $48
    ld c, b                                       ; $43CA: $48
    inc sp                                        ; $43CB: $33
    nop                                           ; $43CC: $00
    nop                                           ; $43CD: $00
    jr nc, jr_036_43D0                            ; $43CE: $30 $00

jr_036_43D0:
    db $10                                        ; $43D0: $10
    sbc h                                         ; $43D1: $9C
    add h                                         ; $43D2: $84
    ld [hl], d                                    ; $43D3: $72

jr_036_43D4:
    ld [hl+], a                                   ; $43D4: $22
    ld h, $22                                     ; $43D5: $26 $22
    ld [hl+], a                                   ; $43D7: $22
    jr nz, @+$44                                  ; $43D8: $20 $42

    ld d, d                                       ; $43DA: $52
    nop                                           ; $43DB: $00
    ld c, h                                       ; $43DC: $4C

jr_036_43DD:
    adc b                                         ; $43DD: $88
    nop                                           ; $43DE: $00
    nop                                           ; $43DF: $00
    inc c                                         ; $43E0: $0C
    ld [$1E25], sp                                ; $43E1: $08 $25 $1E
    inc c                                         ; $43E4: $0C
    ld b, d                                       ; $43E5: $42
    ccf                                           ; $43E6: $3F
    nop                                           ; $43E7: $00
    ld bc, $8803                                  ; $43E8: $01 $03 $88
    ld b, b                                       ; $43EB: $40
    ld b, b                                       ; $43EC: $40
    nop                                           ; $43ED: $00
    jr nz, jr_036_440F                            ; $43EE: $20 $1F

    nop                                           ; $43F0: $00
    nop                                           ; $43F1: $00
    ld b, $00                                     ; $43F2: $06 $00
    ld [bc], a                                    ; $43F4: $02
    inc b                                         ; $43F5: $04
    nop                                           ; $43F6: $00
    ld [$0010], sp                                ; $43F7: $08 $10 $00
    jr nz, jr_036_440C                            ; $43FA: $20 $10

    nop                                           ; $43FC: $00
    ld [$0004], sp                                ; $43FD: $08 $04 $00

Call_036_4400:
    ld [bc], a                                    ; $4400: $02
    ld [bc], a                                    ; $4401: $02

Call_036_4402:
    nop                                           ; $4402: $00
    nop                                           ; $4403: $00
    ld bc, $4088                                  ; $4404: $01 $88 $40
    jr z, jr_036_43B5                             ; $4407: $28 $AC

    daa                                           ; $4409: $27
    ld b, b                                       ; $440A: $40

jr_036_440B:
    adc b                                         ; $440B: $88

jr_036_440C:
    ld b, b                                       ; $440C: $40
    ld b, b                                       ; $440D: $40
    adc b                                         ; $440E: $88

jr_036_440F:
    ld c, b                                       ; $440F: $48
    ld d, c                                       ; $4410: $51
    nop                                           ; $4411: $00
    ld hl, $0022                                  ; $4412: $21 $22 $00
    nop                                           ; $4415: $00
    nop                                           ; $4416: $00
    nop                                           ; $4417: $00
    jr nz, jr_036_4439                            ; $4418: $20 $1F

    add b                                         ; $441A: $80
    ld bc, $0002                                  ; $441B: $01 $02 $00
    nop                                           ; $441E: $00
    nop                                           ; $441F: $00
    nop                                           ; $4420: $00
    ld b, b                                       ; $4421: $40
    jr nc, jr_036_4430                            ; $4422: $30 $0C

    rrca                                          ; $4424: $0F
    nop                                           ; $4425: $00
    nop                                           ; $4426: $00
    nop                                           ; $4427: $00
    jr nc, jr_036_43D4                            ; $4428: $30 $AA

    db $10                                        ; $442A: $10
    sbc h                                         ; $442B: $9C
    ld [$2272], sp                                ; $442C: $08 $72 $22
    ld b, d                                       ; $442F: $42

jr_036_4430:
    ld [hl+], a                                   ; $4430: $22
    ld [hl+], a                                   ; $4431: $22
    ld h, b                                       ; $4432: $60
    ld b, d                                       ; $4433: $42
    ld d, d                                       ; $4434: $52
    nop                                           ; $4435: $00
    ld c, h                                       ; $4436: $4C
    adc b                                         ; $4437: $88
    nop                                           ; $4438: $00

jr_036_4439:
    nop                                           ; $4439: $00
    inc c                                         ; $443A: $0C
    xor d                                         ; $443B: $AA
    inc h                                         ; $443C: $24
    rra                                           ; $443D: $1F
    nop                                           ; $443E: $00
    ld b, d                                       ; $443F: $42
    ccf                                           ; $4440: $3F
    add b                                         ; $4441: $80
    ld bc, $8803                                  ; $4442: $01 $03 $88
    ld b, b                                       ; $4445: $40
    ld b, b                                       ; $4446: $40
    nop                                           ; $4447: $00
    jr nz, jr_036_4469                            ; $4448: $20 $1F

Jump_036_444A:
    nop                                           ; $444A: $00
    nop                                           ; $444B: $00

Call_036_444C:
    ld b, $00                                     ; $444C: $06 $00
    ld [bc], a                                    ; $444E: $02
    inc b                                         ; $444F: $04
    xor d                                         ; $4450: $AA
    ld [$0010], sp                                ; $4451: $08 $10 $00
    jr nz, jr_036_4466                            ; $4454: $20 $10

    nop                                           ; $4456: $00
    ld [$0004], sp                                ; $4457: $08 $04 $00
    ld [bc], a                                    ; $445A: $02
    ld [bc], a                                    ; $445B: $02
    nop                                           ; $445C: $00
    nop                                           ; $445D: $00
    nop                                           ; $445E: $00
    xor d                                         ; $445F: $AA
    add d                                         ; $4460: $82
    ld b, c                                       ; $4461: $41
    inc b                                         ; $4462: $04
    ld d, c                                       ; $4463: $51
    adc a                                         ; $4464: $8F
    add b                                         ; $4465: $80

jr_036_4466:
    add c                                         ; $4466: $81
    sub c                                         ; $4467: $91
    nop                                           ; $4468: $00

jr_036_4469:
    and c                                         ; $4469: $A1
    ld b, d                                       ; $446A: $42
    nop                                           ; $446B: $00
    ld b, d                                       ; $446C: $42
    inc b                                         ; $446D: $04
    nop                                           ; $446E: $00
    nop                                           ; $446F: $00
    nop                                           ; $4470: $00
    xor d                                         ; $4471: $AA
    jr nz, jr_036_4492                            ; $4472: $20 $1E

    nop                                           ; $4474: $00
    ld bc, $0002                                  ; $4475: $01 $02 $00
    nop                                           ; $4478: $00
    nop                                           ; $4479: $00
    nop                                           ; $447A: $00
    ld b, b                                       ; $447B: $40
    jr nc, @+$0E                                  ; $447C: $30 $0C

    rrca                                          ; $447E: $0F
    nop                                           ; $447F: $00
    nop                                           ; $4480: $00
    nop                                           ; $4481: $00
    inc c                                         ; $4482: $0C
    inc c                                         ; $4483: $0C
    ld b, h                                       ; $4484: $44
    ccf                                           ; $4485: $3F
    nop                                           ; $4486: $00
    ld [bc], a                                    ; $4487: $02
    ld bc, $1D00                                  ; $4488: $01 $00 $1D
    inc hl                                        ; $448B: $23
    adc b                                         ; $448C: $88
    ld b, b                                       ; $448D: $40
    ld b, b                                       ; $448E: $40
    nop                                           ; $448F: $00
    jr nz, jr_036_44B1                            ; $4490: $20 $1F

jr_036_4492:
    nop                                           ; $4492: $00
    nop                                           ; $4493: $00
    nop                                           ; $4494: $00
    nop                                           ; $4495: $00
    jr nz, jr_036_44C8                            ; $4496: $20 $30

    nop                                           ; $4498: $00
    jr nz, jr_036_44BB                            ; $4499: $20 $20

    nop                                           ; $449B: $00
    jr nz, @+$22                                  ; $449C: $20 $20

    inc b                                         ; $449E: $04
    jr nz, jr_036_44C1                            ; $449F: $20 $20

    add b                                         ; $44A1: $80
    ld de, $000E                                  ; $44A2: $11 $0E $00
    nop                                           ; $44A5: $00
    ld b, $04                                     ; $44A6: $06 $04
    ld [bc], a                                    ; $44A8: $02
    sbc a                                         ; $44A9: $9F
    ldh [$FF62], a                                ; $44AA: $E0 $62
    ld c, $00                                     ; $44AC: $0E $00
    ld [de], a                                    ; $44AE: $12
    ld [de], a                                    ; $44AF: $12
    nop                                           ; $44B0: $00

jr_036_44B1:
    ld c, $02                                     ; $44B1: $0E $02
    nop                                           ; $44B3: $00
    inc b                                         ; $44B4: $04
    ld [$0000], sp                                ; $44B5: $08 $00 $00
    nop                                           ; $44B8: $00
    nop                                           ; $44B9: $00
    inc bc                                        ; $44BA: $03

jr_036_44BB:
    ld h, c                                       ; $44BB: $61
    inc b                                         ; $44BC: $04
    ld hl, $E0AF                                  ; $44BD: $21 $AF $E0
    ld [hl], c                                    ; $44C0: $71

jr_036_44C1:
    dec h                                         ; $44C1: $25
    nop                                           ; $44C2: $00
    ld [hl+], a                                   ; $44C3: $22
    jr nz, jr_036_44C6                            ; $44C4: $20 $00

jr_036_44C6:
    db $10                                        ; $44C6: $10
    rrca                                          ; $44C7: $0F

jr_036_44C8:
    add b                                         ; $44C8: $80
    nop                                           ; $44C9: $00
    db $10                                        ; $44CA: $10
    ld [$010F], sp                                ; $44CB: $08 $0F $01
    nop                                           ; $44CE: $00
    ld [bc], a                                    ; $44CF: $02

jr_036_44D0:
    inc c                                         ; $44D0: $0C
    ldh [$FF7F], a                                ; $44D1: $E0 $7F
    ld [hl+], a                                   ; $44D3: $22
    nop                                           ; $44D4: $00
    inc b                                         ; $44D5: $04
    inc b                                         ; $44D6: $04
    nop                                           ; $44D7: $00
    ld [bc], a                                    ; $44D8: $02
    ld bc, $0080                                  ; $44D9: $01 $80 $00
    inc c                                         ; $44DC: $0C
    xor d                                         ; $44DD: $AA
    ld b, h                                       ; $44DE: $44
    ccf                                           ; $44DF: $3F
    nop                                           ; $44E0: $00
    ld [bc], a                                    ; $44E1: $02
    ld bc, $1D00                                  ; $44E2: $01 $00 $1D
    inc hl                                        ; $44E5: $23
    adc b                                         ; $44E6: $88
    ld b, b                                       ; $44E7: $40
    ld b, b                                       ; $44E8: $40
    nop                                           ; $44E9: $00
    jr nz, jr_036_450B                            ; $44EA: $20 $1F

    nop                                           ; $44EC: $00
    nop                                           ; $44ED: $00
    nop                                           ; $44EE: $00
    ld [$3262], sp                                ; $44EF: $08 $62 $32
    add b                                         ; $44F2: $80
    jr nz, jr_036_4515                            ; $44F3: $20 $20

    nop                                           ; $44F5: $00
    jr nz, @+$22                                  ; $44F6: $20 $20

    inc b                                         ; $44F8: $04
    jr nz, jr_036_451B                            ; $44F9: $20 $20

    add b                                         ; $44FB: $80
    ld de, $000E                                  ; $44FC: $11 $0E $00
    nop                                           ; $44FF: $00
    ld b, $AA                                     ; $4500: $06 $AA
    ld [bc], a                                    ; $4502: $02
    sbc a                                         ; $4503: $9F
    ret nz                                        ; $4504: $C0

    ld h, d                                       ; $4505: $62
    ld c, $00                                     ; $4506: $0E $00
    ld [de], a                                    ; $4508: $12
    ld [de], a                                    ; $4509: $12
    nop                                           ; $450A: $00

jr_036_450B:
    ld c, $02                                     ; $450B: $0E $02
    nop                                           ; $450D: $00
    inc b                                         ; $450E: $04
    ld [$0000], sp                                ; $450F: $08 $00 $00
    nop                                           ; $4512: $00
    xor d                                         ; $4513: $AA
    ld [bc], a                                    ; $4514: $02

jr_036_4515:
    ld h, c                                       ; $4515: $61
    nop                                           ; $4516: $00
    ld hl, $E0AF                                  ; $4517: $21 $AF $E0
    ld [hl], c                                    ; $451A: $71

jr_036_451B:
    dec h                                         ; $451B: $25
    nop                                           ; $451C: $00
    ld [hl+], a                                   ; $451D: $22
    jr nz, jr_036_4520                            ; $451E: $20 $00

jr_036_4520:
    db $10                                        ; $4520: $10
    rrca                                          ; $4521: $0F
    add b                                         ; $4522: $80
    nop                                           ; $4523: $00
    jr nz, jr_036_44D0                            ; $4524: $20 $AA

    ld e, $02                                     ; $4526: $1E $02
    nop                                           ; $4528: $00
    inc b                                         ; $4529: $04
    add hl, de                                    ; $452A: $19
    ret nz                                        ; $452B: $C0

    cp $44                                        ; $452C: $FE $44
    nop                                           ; $452E: $00
    ld [$0008], sp                                ; $452F: $08 $08 $00
    inc b                                         ; $4532: $04
    inc bc                                        ; $4533: $03
    nop                                           ; $4534: $00
    nop                                           ; $4535: $00
    jr nc, jr_036_4538                            ; $4536: $30 $00

jr_036_4538:
    db $10                                        ; $4538: $10
    ld d, $00                                     ; $4539: $16 $00
    ld hl, sp+$20                                 ; $453B: $F8 $20
    inc c                                         ; $453D: $0C
    inc hl                                        ; $453E: $23
    inc h                                         ; $453F: $24
    nop                                           ; $4540: $00
    ld b, b                                       ; $4541: $40
    ld b, b                                       ; $4542: $40
    nop                                           ; $4543: $00
    add h                                         ; $4544: $84
    add e                                         ; $4545: $83
    ret nz                                        ; $4546: $C0

    nop                                           ; $4547: $00
    jr jr_036_4552                                ; $4548: $18 $08

    add hl, bc                                    ; $454A: $09
    ld c, [hl]                                    ; $454B: $4E
    nop                                           ; $454C: $00
    jr c, jr_036_455F                             ; $454D: $38 $10

    ld [$3817], sp                                ; $454F: $08 $17 $38

jr_036_4552:
    ld b, h                                       ; $4552: $44
    jr nz, jr_036_4555                            ; $4553: $20 $00

jr_036_4555:
    ld c, b                                       ; $4555: $48
    ld bc, $001E                                  ; $4556: $01 $1E $00
    nop                                           ; $4559: $00
    nop                                           ; $455A: $00
    nop                                           ; $455B: $00
    nop                                           ; $455C: $00
    rlca                                          ; $455D: $07
    add h                                         ; $455E: $84

jr_036_455F:
    sbc b                                         ; $455F: $98
    ldh [rNR43], a                                ; $4560: $E0 $22
    nop                                           ; $4562: $00
    nop                                           ; $4563: $00
    inc h                                         ; $4564: $24
    nop                                           ; $4565: $00
    ld bc, $0680                                  ; $4566: $01 $80 $06
    nop                                           ; $4569: $00
    nop                                           ; $456A: $00
    nop                                           ; $456B: $00
    nop                                           ; $456C: $00
    nop                                           ; $456D: $00
    nop                                           ; $456E: $00
    ld b, a                                       ; $456F: $47
    ldh [$FF39], a                                ; $4570: $E0 $39
    ld [bc], a                                    ; $4572: $02
    nop                                           ; $4573: $00
    inc b                                         ; $4574: $04
    inc b                                         ; $4575: $04
    nop                                           ; $4576: $00
    inc b                                         ; $4577: $04
    inc b                                         ; $4578: $04
    nop                                           ; $4579: $00
    ld [bc], a                                    ; $457A: $02
    ld bc, $00C0                                  ; $457B: $01 $C0 $00
    jr nc, jr_036_4580                            ; $457E: $30 $00

jr_036_4580:
    jr jr_036_4592                                ; $4580: $18 $10

    ld [$1310], sp                                ; $4582: $08 $10 $13
    add b                                         ; $4585: $80
    inc e                                         ; $4586: $1C
    jr nz, jr_036_4589                            ; $4587: $20 $00

jr_036_4589:
    ld b, b                                       ; $4589: $40
    ld b, b                                       ; $458A: $40
    inc b                                         ; $458B: $04
    jr nz, jr_036_45AD                            ; $458C: $20 $1F

    ret nz                                        ; $458E: $C0

    nop                                           ; $458F: $00
    jr nc, @-$54                                  ; $4590: $30 $AA

jr_036_4592:
    db $10                                        ; $4592: $10
    ld d, $00                                     ; $4593: $16 $00
    ld a, b                                       ; $4595: $78
    jr nz, jr_036_45A4                            ; $4596: $20 $0C

    inc hl                                        ; $4598: $23
    inc h                                         ; $4599: $24
    nop                                           ; $459A: $00
    ld b, b                                       ; $459B: $40
    ld b, b                                       ; $459C: $40
    nop                                           ; $459D: $00
    add h                                         ; $459E: $84
    add e                                         ; $459F: $83
    ret nz                                        ; $45A0: $C0

    nop                                           ; $45A1: $00
    jr @-$54                                      ; $45A2: $18 $AA

jr_036_45A4:
    ld [$004E], sp                                ; $45A4: $08 $4E $00
    jr c, jr_036_45B9                             ; $45A7: $38 $10

    ld [$3817], sp                                ; $45A9: $08 $17 $38
    ld b, h                                       ; $45AC: $44

jr_036_45AD:
    jr nz, jr_036_45AF                            ; $45AD: $20 $00

jr_036_45AF:
    ld c, b                                       ; $45AF: $48
    ld bc, $001E                                  ; $45B0: $01 $1E $00
    nop                                           ; $45B3: $00
    nop                                           ; $45B4: $00
    xor d                                         ; $45B5: $AA
    nop                                           ; $45B6: $00
    rlca                                          ; $45B7: $07
    add h                                         ; $45B8: $84

jr_036_45B9:
    sbc b                                         ; $45B9: $98
    ldh [rNR43], a                                ; $45BA: $E0 $22
    nop                                           ; $45BC: $00
    nop                                           ; $45BD: $00
    inc h                                         ; $45BE: $24
    nop                                           ; $45BF: $00
    ld bc, $0680                                  ; $45C0: $01 $80 $06
    nop                                           ; $45C3: $00
    nop                                           ; $45C4: $00
    nop                                           ; $45C5: $00
    nop                                           ; $45C6: $00
    nop                                           ; $45C7: $00
    nop                                           ; $45C8: $00
    adc a                                         ; $45C9: $8F
    ret nz                                        ; $45CA: $C0

    ld [hl], d                                    ; $45CB: $72
    inc b                                         ; $45CC: $04
    xor d                                         ; $45CD: $AA
    ld [$0008], sp                                ; $45CE: $08 $08 $00
    ld [$0008], sp                                ; $45D1: $08 $08 $00

jr_036_45D4:
    inc b                                         ; $45D4: $04
    inc bc                                        ; $45D5: $03
    add b                                         ; $45D6: $80
    nop                                           ; $45D7: $00
    jr nc, @-$54                                  ; $45D8: $30 $AA

    jr jr_036_45EC                                ; $45DA: $18 $10

    ld [$1310], sp                                ; $45DC: $08 $10 $13
    add b                                         ; $45DF: $80
    inc e                                         ; $45E0: $1C
    jr nz, jr_036_45E3                            ; $45E1: $20 $00

jr_036_45E3:
    ld b, b                                       ; $45E3: $40
    ld b, b                                       ; $45E4: $40
    inc b                                         ; $45E5: $04
    jr nz, jr_036_4607                            ; $45E6: $20 $1F

    ret nz                                        ; $45E8: $C0

    nop                                           ; $45E9: $00
    jr nc, jr_036_45EC                            ; $45EA: $30 $00

jr_036_45EC:
    db $10                                        ; $45EC: $10
    inc e                                         ; $45ED: $1C
    ld b, d                                       ; $45EE: $42
    ldh [rNR42], a                                ; $45EF: $E0 $21
    and b                                         ; $45F1: $A0
    ld b, c                                       ; $45F2: $41
    ld b, c                                       ; $45F3: $41
    nop                                           ; $45F4: $00
    adc a                                         ; $45F5: $8F
    sub c                                         ; $45F6: $91
    add h                                         ; $45F7: $84
    ld de, $000E                                  ; $45F8: $11 $0E $00
    nop                                           ; $45FB: $00
    nop                                           ; $45FC: $00
    nop                                           ; $45FD: $00
    add b                                         ; $45FE: $80
    ld b, e                                       ; $45FF: $43
    ret nz                                        ; $4600: $C0

    ld c, h                                       ; $4601: $4C
    add b                                         ; $4602: $80
    nop                                           ; $4603: $00
    add b                                         ; $4604: $80
    add b                                         ; $4605: $80
    nop                                           ; $4606: $00

jr_036_4607:
    xor b                                         ; $4607: $A8
    call nz, Call_036_430C                        ; $4608: $C4 $0C $43
    ld b, b                                       ; $460B: $40
    nop                                           ; $460C: $00
    nop                                           ; $460D: $00
    inc c                                         ; $460E: $0C
    nop                                           ; $460F: $00
    call nz, Call_000_0044                        ; $4610: $C4 $44 $00
    ld e, a                                       ; $4613: $5F
    inc h                                         ; $4614: $24
    add h                                         ; $4615: $84
    ld h, h                                       ; $4616: $64
    xor b                                         ; $4617: $A8
    ld b, h                                       ; $4618: $44
    xor b                                         ; $4619: $A8
    sub c                                         ; $461A: $91
    add $9A                                       ; $461B: $C6 $9A
    ld h, c                                       ; $461D: $61
    and b                                         ; $461E: $A0
    nop                                           ; $461F: $00
    ld h, b                                       ; $4620: $60
    nop                                           ; $4621: $00
    jr nz, jr_036_45D4                            ; $4622: $20 $B0

    ld [$2C63], sp                                ; $4624: $08 $63 $2C
    ld b, h                                       ; $4627: $44
    jr nc, jr_036_468A                            ; $4628: $30 $60

    ld b, h                                       ; $462A: $44
    ld h, b                                       ; $462B: $60
    and e                                         ; $462C: $A3
    add $A4                                       ; $462D: $C6 $A4
    inc hl                                        ; $462F: $23
    and b                                         ; $4630: $A0
    nop                                           ; $4631: $00
    nop                                           ; $4632: $00
    nop                                           ; $4633: $00
    nop                                           ; $4634: $00
    rra                                           ; $4635: $1F
    add h                                         ; $4636: $84
    inc h                                         ; $4637: $24
    ld b, h                                       ; $4638: $44
    ld [hl+], a                                   ; $4639: $22
    add h                                         ; $463A: $84
    add h                                         ; $463B: $84
    ld [hl+], a                                   ; $463C: $22
    adc b                                         ; $463D: $88
    ld c, b                                       ; $463E: $48
    inc h                                         ; $463F: $24
    jr nc, jr_036_4643                            ; $4640: $30 $01

    add b                                         ; $4642: $80

jr_036_4643:
    nop                                           ; $4643: $00
    nop                                           ; $4644: $00
    nop                                           ; $4645: $00
    add e                                         ; $4646: $83
    ld b, c                                       ; $4647: $41
    inc b                                         ; $4648: $04
    ld d, c                                       ; $4649: $51
    adc a                                         ; $464A: $8F
    add b                                         ; $464B: $80
    add c                                         ; $464C: $81
    add c                                         ; $464D: $81
    nop                                           ; $464E: $00
    and c                                         ; $464F: $A1
    rst RST_08                                    ; $4650: $CF

Jump_036_4651:
    ld [$4E51], sp                                ; $4651: $08 $51 $4E
    ld b, b                                       ; $4654: $40
    nop                                           ; $4655: $00
    nop                                           ; $4656: $00
    nop                                           ; $4657: $00
    adc b                                         ; $4658: $88
    ld [hl], c                                    ; $4659: $71
    ld [$2010], sp                                ; $465A: $08 $10 $20
    jp z, $4040                                   ; $465D: $CA $40 $40

    adc b                                         ; $4660: $88
    ld b, b                                       ; $4661: $40
    ld b, c                                       ; $4662: $41
    nop                                           ; $4663: $00
    ld [hl+], a                                   ; $4664: $22
    inc e                                         ; $4665: $1C
    nop                                           ; $4666: $00
    nop                                           ; $4667: $00
    stop                                          ; $4668: $10 $00
    inc c                                         ; $466A: $0C
    inc bc                                        ; $466B: $03
    nop                                           ; $466C: $00
    inc b                                         ; $466D: $04
    ld [$0900], sp                                ; $466E: $08 $00 $09
    and h                                         ; $4671: $A4
    add $42                                       ; $4672: $C6 $42
    ld b, d                                       ; $4674: $42
    add b                                         ; $4675: $80
    ld [de], a                                    ; $4676: $12
    inc c                                         ; $4677: $0C
    nop                                           ; $4678: $00
    nop                                           ; $4679: $00
    nop                                           ; $467A: $00
    nop                                           ; $467B: $00
    nop                                           ; $467C: $00
    nop                                           ; $467D: $00
    nop                                           ; $467E: $00
    jr jr_036_46A5                                ; $467F: $18 $24

    nop                                           ; $4681: $00
    ld b, d                                       ; $4682: $42
    pop bc                                        ; $4683: $C1
    inc c                                         ; $4684: $0C
    nop                                           ; $4685: $00
    nop                                           ; $4686: $00
    ld h, b                                       ; $4687: $60
    nop                                           ; $4688: $00
    nop                                           ; $4689: $00

jr_036_468A:
    nop                                           ; $468A: $00
    nop                                           ; $468B: $00
    nop                                           ; $468C: $00
    inc c                                         ; $468D: $0C
    adc a                                         ; $468E: $8F
    ld b, c                                       ; $468F: $41
    nop                                           ; $4690: $00
    ld b, c                                       ; $4691: $41
    adc c                                         ; $4692: $89
    ret nz                                        ; $4693: $C0

    add a                                         ; $4694: $87
    add c                                         ; $4695: $81
    nop                                           ; $4696: $00
    and c                                         ; $4697: $A1
    rst RST_08                                    ; $4698: $CF
    ld [$4E51], sp                                ; $4699: $08 $51 $4E
    ld b, b                                       ; $469C: $40
    nop                                           ; $469D: $00

jr_036_469E:
    nop                                           ; $469E: $00
    xor d                                         ; $469F: $AA
    add d                                         ; $46A0: $82
    ld b, c                                       ; $46A1: $41
    nop                                           ; $46A2: $00
    ld d, c                                       ; $46A3: $51
    adc a                                         ; $46A4: $8F

jr_036_46A5:
    add b                                         ; $46A5: $80
    add c                                         ; $46A6: $81
    add c                                         ; $46A7: $81
    nop                                           ; $46A8: $00
    and c                                         ; $46A9: $A1
    rst RST_08                                    ; $46AA: $CF
    ld [$4E51], sp                                ; $46AB: $08 $51 $4E
    ld b, b                                       ; $46AE: $40
    nop                                           ; $46AF: $00
    nop                                           ; $46B0: $00
    xor d                                         ; $46B1: $AA
    adc b                                         ; $46B2: $88
    ld [hl], b                                    ; $46B3: $70
    nop                                           ; $46B4: $00
    ld de, $8C20                                  ; $46B5: $11 $20 $8C
    ld b, b                                       ; $46B8: $40
    ld b, b                                       ; $46B9: $40
    xor b                                         ; $46BA: $A8
    ld b, b                                       ; $46BB: $40
    ld b, c                                       ; $46BC: $41
    nop                                           ; $46BD: $00
    ld [hl+], a                                   ; $46BE: $22
    inc e                                         ; $46BF: $1C
    nop                                           ; $46C0: $00
    nop                                           ; $46C1: $00
    db $10                                        ; $46C2: $10
    xor d                                         ; $46C3: $AA
    inc c                                         ; $46C4: $0C
    ld [bc], a                                    ; $46C5: $02
    nop                                           ; $46C6: $00
    inc b                                         ; $46C7: $04
    ld [$0900], sp                                ; $46C8: $08 $00 $09
    and h                                         ; $46CB: $A4
    add $42                                       ; $46CC: $C6 $42
    ld b, d                                       ; $46CE: $42
    add b                                         ; $46CF: $80
    ld [de], a                                    ; $46D0: $12
    inc c                                         ; $46D1: $0C
    nop                                           ; $46D2: $00
    nop                                           ; $46D3: $00
    nop                                           ; $46D4: $00
    nop                                           ; $46D5: $00
    nop                                           ; $46D6: $00
    nop                                           ; $46D7: $00
    xor d                                         ; $46D8: $AA
    jr jr_036_46FF                                ; $46D9: $18 $24

    nop                                           ; $46DB: $00
    ld b, d                                       ; $46DC: $42
    pop bc                                        ; $46DD: $C1
    inc c                                         ; $46DE: $0C
    nop                                           ; $46DF: $00
    nop                                           ; $46E0: $00
    ld h, b                                       ; $46E1: $60
    nop                                           ; $46E2: $00
    nop                                           ; $46E3: $00
    nop                                           ; $46E4: $00
    nop                                           ; $46E5: $00
    nop                                           ; $46E6: $00
    xor d                                         ; $46E7: $AA
    adc [hl]                                      ; $46E8: $8E
    ld b, c                                       ; $46E9: $41
    nop                                           ; $46EA: $00
    ld b, c                                       ; $46EB: $41
    adc c                                         ; $46EC: $89
    ld [$8187], sp                                ; $46ED: $08 $87 $81
    nop                                           ; $46F0: $00
    and c                                         ; $46F1: $A1
    rst RST_08                                    ; $46F2: $CF
    ld [$4E51], sp                                ; $46F3: $08 $51 $4E
    ld b, b                                       ; $46F6: $40
    nop                                           ; $46F7: $00
    nop                                           ; $46F8: $00
    ld [$4280], a                                 ; $46F9: $EA $80 $42
    ldh [rHDMA1], a                               ; $46FC: $E0 $51
    adc a                                         ; $46FE: $8F

jr_036_46FF:
    add b                                         ; $46FF: $80
    add c                                         ; $4700: $81
    add c                                         ; $4701: $81
    nop                                           ; $4702: $00
    and c                                         ; $4703: $A1
    rst RST_08                                    ; $4704: $CF
    ld [$4E51], sp                                ; $4705: $08 $51 $4E
    ld b, b                                       ; $4708: $40
    nop                                           ; $4709: $00
    nop                                           ; $470A: $00
    ld [$7088], a                                 ; $470B: $EA $88 $70
    ldh [rNR11], a                                ; $470E: $E0 $11
    jr nz, jr_036_469E                            ; $4710: $20 $8C

    ld b, b                                       ; $4712: $40
    ld b, b                                       ; $4713: $40
    and b                                         ; $4714: $A0
    ld b, c                                       ; $4715: $41
    ld b, c                                       ; $4716: $41
    nop                                           ; $4717: $00
    ld [hl+], a                                   ; $4718: $22
    inc e                                         ; $4719: $1C
    nop                                           ; $471A: $00
    nop                                           ; $471B: $00
    db $10                                        ; $471C: $10
    ld [$020C], a                                 ; $471D: $EA $0C $02
    ldh [rDIV], a                                 ; $4720: $E0 $04
    ld [$0900], sp                                ; $4722: $08 $00 $09
    and h                                         ; $4725: $A4
    add $42                                       ; $4726: $C6 $42
    ld b, d                                       ; $4728: $42
    add b                                         ; $4729: $80
    ld [de], a                                    ; $472A: $12
    inc c                                         ; $472B: $0C
    nop                                           ; $472C: $00
    nop                                           ; $472D: $00
    nop                                           ; $472E: $00
    nop                                           ; $472F: $00
    nop                                           ; $4730: $00
    ld bc, $19C4                                  ; $4731: $01 $C4 $19
    dec h                                         ; $4734: $25
    ret nz                                        ; $4735: $C0

    ld b, d                                       ; $4736: $42
    pop bc                                        ; $4737: $C1
    inc c                                         ; $4738: $0C
    nop                                           ; $4739: $00
    nop                                           ; $473A: $00
    ld h, b                                       ; $473B: $60
    nop                                           ; $473C: $00
    nop                                           ; $473D: $00
    nop                                           ; $473E: $00
    nop                                           ; $473F: $00
    nop                                           ; $4740: $00
    ld [$428E], a                                 ; $4741: $EA $8E $42

Call_036_4744:
    ldh [rSTAT], a                                ; $4744: $E0 $41
    adc c                                         ; $4746: $89
    ret nz                                        ; $4747: $C0

    add a                                         ; $4748: $87
    add c                                         ; $4749: $81
    nop                                           ; $474A: $00
    and c                                         ; $474B: $A1
    rst RST_08                                    ; $474C: $CF
    ld [$4E51], sp                                ; $474D: $08 $51 $4E
    ld b, b                                       ; $4750: $40
    nop                                           ; $4751: $00
    inc c                                         ; $4752: $0C
    inc c                                         ; $4753: $0C
    add a                                         ; $4754: $87
    ld a, h                                       ; $4755: $7C
    nop                                           ; $4756: $00
    inc b                                         ; $4757: $04
    ld b, a                                       ; $4758: $47
    add b                                         ; $4759: $80
    inc a                                         ; $475A: $3C
    inc b                                         ; $475B: $04
    nop                                           ; $475C: $00
    inc a                                         ; $475D: $3C
    ld b, a                                       ; $475E: $47
    ld [$3844], sp                                ; $475F: $08 $44 $38
    ld b, b                                       ; $4762: $40
    nop                                           ; $4763: $00
    nop                                           ; $4764: $00
    nop                                           ; $4765: $00
    ld c, h                                       ; $4766: $4C
    inc [hl]                                      ; $4767: $34
    nop                                           ; $4768: $00
    dec b                                         ; $4769: $05
    ld [$3EC8], sp                                ; $476A: $08 $C8 $3E
    ld c, c                                       ; $476D: $49
    adc h                                         ; $476E: $8C
    adc b                                         ; $476F: $88
    sub c                                         ; $4770: $91
    jr nz, jr_036_47D5                            ; $4771: $20 $62

    inc b                                         ; $4773: $04
    nop                                           ; $4774: $00
    nop                                           ; $4775: $00
    jr nc, jr_036_4778                            ; $4776: $30 $00

jr_036_4778:
    db $10                                        ; $4778: $10
    sub h                                         ; $4779: $94
    inc c                                         ; $477A: $0C
    ld a, b                                       ; $477B: $78
    db $10                                        ; $477C: $10
    ld h, $71                                     ; $477D: $26 $71
    sub c                                         ; $477F: $91
    ld [$6090], sp                                ; $4780: $08 $90 $60
    adc b                                         ; $4783: $88
    jr nz, jr_036_47A5                            ; $4784: $20 $1F

    nop                                           ; $4786: $00
    nop                                           ; $4787: $00
    ld b, $00                                     ; $4788: $06 $00
    ld h, d                                       ; $478A: $62
    ld [hl+], a                                   ; $478B: $22
    ld [$342F], sp                                ; $478C: $08 $2F $34
    ld b, d                                       ; $478F: $42
    ld d, h                                       ; $4790: $54
    sbc b                                         ; $4791: $98
    ld [hl+], a                                   ; $4792: $22
    adc b                                         ; $4793: $88
    sub h                                         ; $4794: $94
    ld c, b                                       ; $4795: $48
    ld h, b                                       ; $4796: $60
    inc bc                                        ; $4797: $03
    nop                                           ; $4798: $00
    nop                                           ; $4799: $00
    jr jr_036_479C                                ; $479A: $18 $00

jr_036_479C:
    ld c, b                                       ; $479C: $48
    ld a, $00                                     ; $479D: $3E $00
    ld [$0848], sp                                ; $479F: $08 $48 $08
    ld a, $10                                     ; $47A2: $3E $10
    ld b, h                                       ; $47A4: $44

jr_036_47A5:
    db $10                                        ; $47A5: $10
    db $10                                        ; $47A6: $10

jr_036_47A7:
    ld c, b                                       ; $47A7: $48
    ld [$0007], sp                                ; $47A8: $08 $07 $00
    nop                                           ; $47AB: $00
    inc b                                         ; $47AC: $04
    nop                                           ; $47AD: $00
    ld [hl-], a                                   ; $47AE: $32
    ld [hl+], a                                   ; $47AF: $22
    inc c                                         ; $47B0: $0C
    inc hl                                        ; $47B1: $23
    cp h                                          ; $47B2: $BC
    ld [hl+], a                                   ; $47B3: $22
    ret nc                                        ; $47B4: $D0

    ld [de], a                                    ; $47B5: $12
    inc l                                         ; $47B6: $2C
    add hl, bc                                    ; $47B7: $09
    ld [$0400], sp                                ; $47B8: $08 $00 $04
    inc b                                         ; $47BB: $04
    nop                                           ; $47BC: $00
    nop                                           ; $47BD: $00
    ld b, $00                                     ; $47BE: $06 $00
    jp nz, Jump_000_084F                          ; $47C0: $C2 $4F $08

    sub d                                         ; $47C3: $92

Call_036_47C4:
    and d                                         ; $47C4: $A2
    ld b, h                                       ; $47C5: $44
    and d                                         ; $47C6: $A2
    jp nz, Jump_036_4A48                          ; $47C7: $C2 $48 $4A

    ld b, a                                       ; $47CA: $47

jr_036_47CB:
    nop                                           ; $47CB: $00
    inc b                                         ; $47CC: $04
    jr jr_036_47CF                                ; $47CD: $18 $00

jr_036_47CF:
    nop                                           ; $47CF: $00
    inc c                                         ; $47D0: $0C
    nop                                           ; $47D1: $00
    inc b                                         ; $47D2: $04
    inc b                                         ; $47D3: $04
    ret nz                                        ; $47D4: $C0

jr_036_47D5:
    rlca                                          ; $47D5: $07
    inc b                                         ; $47D6: $04
    nop                                           ; $47D7: $00
    inc b                                         ; $47D8: $04
    inc b                                         ; $47D9: $04
    nop                                           ; $47DA: $00
    inc a                                         ; $47DB: $3C
    ld b, a                                       ; $47DC: $47
    ld [$3844], sp                                ; $47DD: $08 $44 $38
    ld b, b                                       ; $47E0: $40
    nop                                           ; $47E1: $00
    nop                                           ; $47E2: $00
    nop                                           ; $47E3: $00
    nop                                           ; $47E4: $00
    nop                                           ; $47E5: $00
    nop                                           ; $47E6: $00
    ld a, [de]                                    ; $47E7: $1A
    inc de                                        ; $47E8: $13
    ld [$380C], sp                                ; $47E9: $08 $0C $38
    add b                                         ; $47EC: $80
    add hl, bc                                    ; $47ED: $09
    inc b                                         ; $47EE: $04

jr_036_47EF:
    nop                                           ; $47EF: $00
    inc b                                         ; $47F0: $04
    nop                                           ; $47F1: $00
    nop                                           ; $47F2: $00
    nop                                           ; $47F3: $00
    nop                                           ; $47F4: $00
    nop                                           ; $47F5: $00
    nop                                           ; $47F6: $00
    ld b, $00                                     ; $47F7: $06 $00
    ld [de], a                                    ; $47F9: $12
    daa                                           ; $47FA: $27
    ld [$322A], sp                                ; $47FB: $08 $2A $32
    add b                                         ; $47FE: $80
    rla                                           ; $47FF: $17
    ld [bc], a                                    ; $4800: $02
    nop                                           ; $4801: $00
    inc c                                         ; $4802: $0C
    nop                                           ; $4803: $00
    nop                                           ; $4804: $00

jr_036_4805:
    nop                                           ; $4805: $00
    nop                                           ; $4806: $00
    nop                                           ; $4807: $00
    nop                                           ; $4808: $00
    nop                                           ; $4809: $00
    nop                                           ; $480A: $00
    inc c                                         ; $480B: $0C
    inc b                                         ; $480C: $04
    add b                                         ; $480D: $80
    rlca                                          ; $480E: $07
    inc b                                         ; $480F: $04
    nop                                           ; $4810: $00
    ld e, $25                                     ; $4811: $1E $25
    ld [$0018], sp                                ; $4813: $08 $18 $00
    nop                                           ; $4816: $00
    nop                                           ; $4817: $00
    ld [$0400], sp                                ; $4818: $08 $00 $04
    inc bc                                        ; $481B: $03
    nop                                           ; $481C: $00
    inc b                                         ; $481D: $04
    jr nc, jr_036_4820                            ; $481E: $30 $00

jr_036_4820:
    rla                                           ; $4820: $17
    jr z, jr_036_47A7                             ; $4821: $28 $84

    jr nc, jr_036_4845                            ; $4823: $30 $20

    ld c, b                                       ; $4825: $48

jr_036_4826:
    nop                                           ; $4826: $00
    rrca                                          ; $4827: $0F
    nop                                           ; $4828: $00
    nop                                           ; $4829: $00
    jr nz, jr_036_482C                            ; $482A: $20 $00

jr_036_482C:
    inc de                                        ; $482C: $13
    inc d                                         ; $482D: $14
    adc b                                         ; $482E: $88
    inc h                                         ; $482F: $24
    jr z, @-$76                                   ; $4830: $28 $88

    jr z, @+$12                                   ; $4832: $28 $10

    adc b                                         ; $4834: $88
    db $10                                        ; $4835: $10
    ld bc, $0200                                  ; $4836: $01 $00 $02
    inc c                                         ; $4839: $0C
    nop                                           ; $483A: $00
    nop                                           ; $483B: $00
    nop                                           ; $483C: $00
    nop                                           ; $483D: $00
    ld l, $13                                     ; $483E: $2E $13
    nop                                           ; $4840: $00
    inc b                                         ; $4841: $04
    ld [$1F00], sp                                ; $4842: $08 $00 $1F

jr_036_4845:
    jr nc, jr_036_47CB                            ; $4845: $30 $84

    ld b, b                                       ; $4847: $40
    inc e                                         ; $4848: $1C
    ld c, b                                       ; $4849: $48
    ld [hl+], a                                   ; $484A: $22
    rra                                           ; $484B: $1F
    nop                                           ; $484C: $00
    nop                                           ; $484D: $00
    ld h, b                                       ; $484E: $60

Call_036_484F:
    nop                                           ; $484F: $00
    jr nz, jr_036_4805                            ; $4850: $20 $B3

    ld [$2864], sp                                ; $4852: $08 $64 $28
    adc b                                         ; $4855: $88
    jr nc, jr_036_48B9                            ; $4856: $30 $61

    nop                                           ; $4858: $00
    ld h, c                                       ; $4859: $61
    and c                                         ; $485A: $A1
    ld [bc], a                                    ; $485B: $02
    and c                                         ; $485C: $A1
    jr nz, @-$3E                                  ; $485D: $20 $C0

    nop                                           ; $485F: $00
    nop                                           ; $4860: $00
    nop                                           ; $4861: $00
    ld l, $13                                     ; $4862: $2E $13
    nop                                           ; $4864: $00
    inc b                                         ; $4865: $04
    ld [$1F00], sp                                ; $4866: $08 $00 $1F
    jr nc, jr_036_47EF                            ; $4869: $30 $84

    ld b, b                                       ; $486B: $40
    nop                                           ; $486C: $00
    ld c, b                                       ; $486D: $48
    nop                                           ; $486E: $00
    rra                                           ; $486F: $1F
    nop                                           ; $4870: $00
    nop                                           ; $4871: $00
    ld h, b                                       ; $4872: $60
    nop                                           ; $4873: $00
    jr nz, jr_036_4826                            ; $4874: $20 $B0

    ld [$2867], sp                                ; $4876: $08 $67 $28
    ld b, d                                       ; $4879: $42
    jr nc, @+$62                                  ; $487A: $30 $60

    ld [hl+], a                                   ; $487C: $22
    ld h, b                                       ; $487D: $60
    and b                                         ; $487E: $A0
    inc h                                         ; $487F: $24
    and b                                         ; $4880: $A0
    daa                                           ; $4881: $27
    add b                                         ; $4882: $80
    nop                                           ; $4883: $00
    inc c                                         ; $4884: $0C
    inc c                                         ; $4885: $0C
    ld b, l                                       ; $4886: $45
    ld a, $00                                     ; $4887: $3E $00
    ld [$061E], sp                                ; $4889: $08 $1E $06
    ld sp, $8047                                  ; $488C: $31 $47 $80
    add hl, bc                                    ; $488F: $09
    stop                                          ; $4890: $10 $00
    db $10                                        ; $4892: $10
    rrca                                          ; $4893: $0F
    ret nz                                        ; $4894: $C0

jr_036_4895:
    nop                                           ; $4895: $00
    inc c                                         ; $4896: $0C
    nop                                           ; $4897: $00
    inc b                                         ; $4898: $04
    inc b                                         ; $4899: $04
    nop                                           ; $489A: $00
    ld [$0008], sp                                ; $489B: $08 $08 $00
    inc c                                         ; $489E: $0C
    ld [de], a                                    ; $489F: $12
    ld [bc], a                                    ; $48A0: $02
    ld [de], a                                    ; $48A1: $12
    ld [hl+], a                                   ; $48A2: $22
    inc h                                         ; $48A3: $24
    ld [hl+], a                                   ; $48A4: $22
    ld b, c                                       ; $48A5: $41
    add b                                         ; $48A6: $80
    nop                                           ; $48A7: $00
    nop                                           ; $48A8: $00
    nop                                           ; $48A9: $00
    nop                                           ; $48AA: $00
    nop                                           ; $48AB: $00
    nop                                           ; $48AC: $00
    nop                                           ; $48AD: $00
    rlca                                          ; $48AE: $07
    ld [$0038], sp                                ; $48AF: $08 $38 $00
    ld b, h                                       ; $48B2: $44
    nop                                           ; $48B3: $00
    nop                                           ; $48B4: $00
    add b                                         ; $48B5: $80
    rlca                                          ; $48B6: $07
    nop                                           ; $48B7: $00
    nop                                           ; $48B8: $00

jr_036_48B9:
    nop                                           ; $48B9: $00
    nop                                           ; $48BA: $00
    nop                                           ; $48BB: $00
    nop                                           ; $48BC: $00
    ld a, [bc]                                    ; $48BD: $0A
    nop                                           ; $48BE: $00
    inc e                                         ; $48BF: $1C
    ld a, [bc]                                    ; $48C0: $0A
    nop                                           ; $48C1: $00
    rrca                                          ; $48C2: $0F
    ld a, [de]                                    ; $48C3: $1A
    add h                                         ; $48C4: $84
    ld a, [hl+]                                   ; $48C5: $2A
    inc l                                         ; $48C6: $2C
    ld c, b                                       ; $48C7: $48
    jr jr_036_48CA                                ; $48C8: $18 $00

jr_036_48CA:
    nop                                           ; $48CA: $00
    nop                                           ; $48CB: $00
    nop                                           ; $48CC: $00
    nop                                           ; $48CD: $00
    nop                                           ; $48CE: $00
    nop                                           ; $48CF: $00
    nop                                           ; $48D0: $00
    jr nz, @+$23                                  ; $48D1: $20 $21

    ld [$2420], sp                                ; $48D3: $08 $20 $24
    ld b, h                                       ; $48D6: $44
    jr z, jr_036_48F1                             ; $48D7: $28 $18

    nop                                           ; $48D9: $00
    ld [$0000], sp                                ; $48DA: $08 $00 $00
    nop                                           ; $48DD: $00
    nop                                           ; $48DE: $00
    nop                                           ; $48DF: $00
    nop                                           ; $48E0: $00
    ld [$0700], sp                                ; $48E1: $08 $00 $07
    nop                                           ; $48E4: $00
    nop                                           ; $48E5: $00
    cpl                                           ; $48E6: $2F
    db $10                                        ; $48E7: $10
    adc b                                         ; $48E8: $88
    nop                                           ; $48E9: $00
    ld bc, $0E00                                  ; $48EA: $01 $00 $0E
    nop                                           ; $48ED: $00
    nop                                           ; $48EE: $00
    nop                                           ; $48EF: $00
    nop                                           ; $48F0: $00

jr_036_48F1:
    nop                                           ; $48F1: $00
    nop                                           ; $48F2: $00
    stop                                          ; $48F3: $10 $00
    inc c                                         ; $48F5: $0C
    jr nz, jr_036_48F8                            ; $48F6: $20 $00

jr_036_48F8:
    ld e, $04                                     ; $48F8: $1E $04
    nop                                           ; $48FA: $00
    ld c, $12                                     ; $48FB: $0E $12
    ld [$0021], sp                                ; $48FD: $08 $21 $00
    nop                                           ; $4900: $00
    nop                                           ; $4901: $00
    nop                                           ; $4902: $00
    nop                                           ; $4903: $00
    nop                                           ; $4904: $00
    ld a, [bc]                                    ; $4905: $0A
    ld [$083C], sp                                ; $4906: $08 $3C $08
    ld b, b                                       ; $4909: $40
    rrca                                          ; $490A: $0F
    jr jr_036_4895                                ; $490B: $18 $88

    jr z, jr_036_4937                             ; $490D: $28 $28

    add b                                         ; $490F: $80
    add hl, de                                    ; $4910: $19
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
    ld c, $43                                     ; $491B: $0E $43
    inc a                                         ; $491D: $3C
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
    jr c, jr_036_4932                             ; $492C: $38 $04

    ld b, h                                       ; $492E: $44
    inc bc                                        ; $492F: $03
    add b                                         ; $4930: $80
    nop                                           ; $4931: $00

jr_036_4932:
    nop                                           ; $4932: $00
    nop                                           ; $4933: $00
    nop                                           ; $4934: $00
    nop                                           ; $4935: $00
    nop                                           ; $4936: $00

jr_036_4937:
    nop                                           ; $4937: $00
    nop                                           ; $4938: $00
    inc b                                         ; $4939: $04
    nop                                           ; $493A: $00
    ld a, a                                       ; $493B: $7F
    db $E4                                        ; $493C: $E4
    jr nz, jr_036_4943                            ; $493D: $20 $04

    add b                                         ; $493F: $80
    inc bc                                        ; $4940: $03
    ld [bc], a                                    ; $4941: $02
    nop                                           ; $4942: $00

jr_036_4943:
    ld [bc], a                                    ; $4943: $02
    inc b                                         ; $4944: $04
    nop                                           ; $4945: $00
    inc b                                         ; $4946: $04
    ld [$0000], sp                                ; $4947: $08 $00 $00
    nop                                           ; $494A: $00
    ld [$0001], sp                                ; $494B: $08 $01 $00
    add b                                         ; $494E: $80
    ld bc, $0002                                  ; $494F: $01 $02 $00
    ld b, $1A                                     ; $4952: $06 $1A
    nop                                           ; $4954: $00
    ld h, d                                       ; $4955: $62
    ld [bc], a                                    ; $4956: $02
    nop                                           ; $4957: $00
    ld [bc], a                                    ; $4958: $02
    ld [bc], a                                    ; $4959: $02
    nop                                           ; $495A: $00
    nop                                           ; $495B: $00
    inc c                                         ; $495C: $0C
    nop                                           ; $495D: $00
    inc b                                         ; $495E: $04
    ld b, h                                       ; $495F: $44
    ld c, [hl]                                    ; $4960: $4E
    ld a, a                                       ; $4961: $7F
    ld b, b                                       ; $4962: $40
    ld b, h                                       ; $4963: $44
    ld b, b                                       ; $4964: $40
    ld b, b                                       ; $4965: $40
    ld b, h                                       ; $4966: $44
    nop                                           ; $4967: $00
    nop                                           ; $4968: $00
    add b                                         ; $4969: $80
    ld bc, $001E                                  ; $496A: $01 $1E $00
    nop                                           ; $496D: $00
    nop                                           ; $496E: $00
    nop                                           ; $496F: $00
    ld bc, $803F                                  ; $4970: $01 $3F $80
    inc b                                         ; $4973: $04
    inc b                                         ; $4974: $04
    nop                                           ; $4975: $00
    inc b                                         ; $4976: $04
    inc b                                         ; $4977: $04
    nop                                           ; $4978: $00
    inc b                                         ; $4979: $04
    inc b                                         ; $497A: $04
    ld c, [hl]                                    ; $497B: $4E

jr_036_497C:
    ld a, a                                       ; $497C: $7F
    jr nz, jr_036_497F                            ; $497D: $20 $00

jr_036_497F:
    nop                                           ; $497F: $00
    inc bc                                        ; $4980: $03
    nop                                           ; $4981: $00
    ld bc, $4E01                                  ; $4982: $01 $01 $4E
    ld a, a                                       ; $4985: $7F
    inc hl                                        ; $4986: $23
    nop                                           ; $4987: $00
    dec b                                         ; $4988: $05
    add hl, bc                                    ; $4989: $09
    nop                                           ; $498A: $00
    ld de, $0061                                  ; $498B: $11 $61 $00
    dec b                                         ; $498E: $05
    inc bc                                        ; $498F: $03
    nop                                           ; $4990: $00
    nop                                           ; $4991: $00
    jr nc, jr_036_4994                            ; $4992: $30 $00

jr_036_4994:
    db $10                                        ; $4994: $10
    ld de, $FF08                                  ; $4995: $11 $08 $FF

jr_036_4998:
    ld d, c                                       ; $4998: $51
    nop                                           ; $4999: $00
    ld de, $0011                                  ; $499A: $11 $11 $00
    ld hl, $0029                                  ; $499D: $21 $29 $00
    ld b, [hl]                                    ; $49A0: $46
    add h                                         ; $49A1: $84
    nop                                           ; $49A2: $00
    nop                                           ; $49A3: $00
    jr nc, jr_036_49A6                            ; $49A4: $30 $00

jr_036_49A6:
    ld [de], a                                    ; $49A6: $12
    rla                                           ; $49A7: $17
    nop                                           ; $49A8: $00
    ld hl, sp+$49                                 ; $49A9: $F8 $49
    ld [$F80F], sp                                ; $49AB: $08 $0F $F8
    nop                                           ; $49AE: $00
    ld c, b                                       ; $49AF: $48
    inc b                                         ; $49B0: $04
    nop                                           ; $49B1: $00
    inc b                                         ; $49B2: $04
    inc b                                         ; $49B3: $04
    nop                                           ; $49B4: $00
    nop                                           ; $49B5: $00
    jr nc, jr_036_49B8                            ; $49B6: $30 $00

jr_036_49B8:
    ld de, $801F                                  ; $49B8: $11 $1F $80
    ld sp, $0021                                  ; $49BB: $31 $21 $00
    ld b, c                                       ; $49BE: $41
    add d                                         ; $49BF: $82
    nop                                           ; $49C0: $00
    ld [bc], a                                    ; $49C1: $02
    inc b                                         ; $49C2: $04
    nop                                           ; $49C3: $00
    jr jr_036_4A26                                ; $49C4: $18 $60

    nop                                           ; $49C6: $00
    nop                                           ; $49C7: $00
    jr nc, jr_036_49CA                            ; $49C8: $30 $00

jr_036_49CA:
    db $10                                        ; $49CA: $10
    db $10                                        ; $49CB: $10
    adc h                                         ; $49CC: $8C
    ccf                                           ; $49CD: $3F

jr_036_49CE:
    ld [hl+], a                                   ; $49CE: $22
    nop                                           ; $49CF: $00
    ld b, d                                       ; $49D0: $42
    add d                                         ; $49D1: $82
    nop                                           ; $49D2: $00
    inc b                                         ; $49D3: $04
    inc b                                         ; $49D4: $04
    nop                                           ; $49D5: $00
    ld [$0010], sp                                ; $49D6: $08 $10 $00
    nop                                           ; $49D9: $00
    nop                                           ; $49DA: $00
    nop                                           ; $49DB: $00
    ld bc, $80FF                                  ; $49DC: $01 $FF $80
    ld b, c                                       ; $49DF: $41
    ld bc, $0100                                  ; $49E0: $01 $00 $01
    ld bc, $0100                                  ; $49E3: $01 $00 $01
    rst RST_38                                    ; $49E6: $FF
    add b                                         ; $49E7: $80
    ld b, b                                       ; $49E8: $40
    nop                                           ; $49E9: $00
    nop                                           ; $49EA: $00
    nop                                           ; $49EB: $00
    jr jr_036_4998                                ; $49EC: $18 $AA

    ld [$0808], sp                                ; $49EE: $08 $08 $08
    ld a, a                                       ; $49F1: $7F
    jr z, jr_036_497C                             ; $49F2: $28 $88

    ld [$8808], sp                                ; $49F4: $08 $08 $88
    db $10                                        ; $49F7: $10
    inc d                                         ; $49F8: $14
    add b                                         ; $49F9: $80
    inc hl                                        ; $49FA: $23
    ld b, d                                       ; $49FB: $42
    nop                                           ; $49FC: $00
    nop                                           ; $49FD: $00
    jr nc, @-$54                                  ; $49FE: $30 $AA

    db $10                                        ; $4A00: $10
    ld d, $00                                     ; $4A01: $16 $00
    ld hl, sp+$49                                 ; $4A03: $F8 $49
    ld [$F80F], sp                                ; $4A05: $08 $0F $F8
    nop                                           ; $4A08: $00
    ld c, b                                       ; $4A09: $48
    inc b                                         ; $4A0A: $04
    nop                                           ; $4A0B: $00
    inc b                                         ; $4A0C: $04
    inc b                                         ; $4A0D: $04
    nop                                           ; $4A0E: $00
    nop                                           ; $4A0F: $00
    jr @-$54                                      ; $4A10: $18 $AA

    ld [$080F], sp                                ; $4A12: $08 $0F $08
    jr jr_036_4A27                                ; $4A15: $18 $10

    adc b                                         ; $4A17: $88
    jr nz, jr_036_4A5B                            ; $4A18: $20 $41

    nop                                           ; $4A1A: $00
    ld bc, $0002                                  ; $4A1B: $01 $02 $00
    inc c                                         ; $4A1E: $0C
    jr nc, jr_036_4A21                            ; $4A1F: $30 $00

jr_036_4A21:
    nop                                           ; $4A21: $00
    jr nc, jr_036_49CE                            ; $4A22: $30 $AA

    db $10                                        ; $4A24: $10
    db $10                                        ; $4A25: $10

jr_036_4A26:
    inc c                                         ; $4A26: $0C

jr_036_4A27:
    ccf                                           ; $4A27: $3F
    ld [hl+], a                                   ; $4A28: $22
    nop                                           ; $4A29: $00
    ld b, d                                       ; $4A2A: $42
    add d                                         ; $4A2B: $82
    nop                                           ; $4A2C: $00
    inc b                                         ; $4A2D: $04
    inc b                                         ; $4A2E: $04
    nop                                           ; $4A2F: $00
    ld [$0010], sp                                ; $4A30: $08 $10 $00
    nop                                           ; $4A33: $00
    nop                                           ; $4A34: $00
    xor d                                         ; $4A35: $AA
    nop                                           ; $4A36: $00
    rst RST_38                                    ; $4A37: $FF
    nop                                           ; $4A38: $00
    ld b, c                                       ; $4A39: $41
    ld bc, $0100                                  ; $4A3A: $01 $00 $01
    ld bc, $0100                                  ; $4A3D: $01 $00 $01
    ld bc, $FF08                                  ; $4A40: $01 $08 $FF
    ld b, b                                       ; $4A43: $40
    nop                                           ; $4A44: $00
    nop                                           ; $4A45: $00
    inc bc                                        ; $4A46: $03
    nop                                           ; $4A47: $00

Jump_036_4A48:
    ld sp, $4E11                                  ; $4A48: $31 $11 $4E
    sbc a                                         ; $4A4B: $9F
    ld [hl], c                                    ; $4A4C: $71
    nop                                           ; $4A4D: $00
    ld de, $0011                                  ; $4A4E: $11 $11 $00
    ld [bc], a                                    ; $4A51: $02
    ld [bc], a                                    ; $4A52: $02
    nop                                           ; $4A53: $00
    inc b                                         ; $4A54: $04
    jr jr_036_4A57                                ; $4A55: $18 $00

jr_036_4A57:
    nop                                           ; $4A57: $00
    nop                                           ; $4A58: $00
    nop                                           ; $4A59: $00
    ld h, b                                       ; $4A5A: $60

jr_036_4A5B:
    stop                                          ; $4A5B: $10 $00
    nop                                           ; $4A5D: $00
    ret nz                                        ; $4A5E: $C0

    ld c, b                                       ; $4A5F: $48
    jr nz, jr_036_4A63                            ; $4A60: $20 $01

    nop                                           ; $4A62: $00

jr_036_4A63:
    ld [bc], a                                    ; $4A63: $02
    inc c                                         ; $4A64: $0C
    nop                                           ; $4A65: $00
    ld [hl], b                                    ; $4A66: $70
    jr nz, jr_036_4A69                            ; $4A67: $20 $00

jr_036_4A69:
    nop                                           ; $4A69: $00
    nop                                           ; $4A6A: $00
    nop                                           ; $4A6B: $00
    ld [bc], a                                    ; $4A6C: $02
    ld a, a                                       ; $4A6D: $7F
    nop                                           ; $4A6E: $00
    ld [hl+], a                                   ; $4A6F: $22
    ld [bc], a                                    ; $4A70: $02
    nop                                           ; $4A71: $00
    inc b                                         ; $4A72: $04
    inc b                                         ; $4A73: $04
    nop                                           ; $4A74: $00
    ld a, [bc]                                    ; $4A75: $0A
    ld de, $2008                                  ; $4A76: $11 $08 $20
    ret nz                                        ; $4A79: $C0

    add b                                         ; $4A7A: $80
    nop                                           ; $4A7B: $00
    nop                                           ; $4A7C: $00
    nop                                           ; $4A7D: $00
    jr nc, jr_036_4A90                            ; $4A7E: $30 $10

    adc h                                         ; $4A80: $8C
    inc de                                        ; $4A81: $13
    sbc h                                         ; $4A82: $9C
    add b                                         ; $4A83: $80
    ld [hl], c                                    ; $4A84: $71
    ld [de], a                                    ; $4A85: $12
    nop                                           ; $4A86: $00
    db $10                                        ; $4A87: $10
    db $10                                        ; $4A88: $10
    ld [$000F], sp                                ; $4A89: $08 $0F $00
    nop                                           ; $4A8C: $00
    nop                                           ; $4A8D: $00
    nop                                           ; $4A8E: $00
    nop                                           ; $4A8F: $00

jr_036_4A90:
    nop                                           ; $4A90: $00
    ld b, c                                       ; $4A91: $41
    adc b                                         ; $4A92: $88
    jr nz, jr_036_4AA5                            ; $4A93: $20 $10

    adc b                                         ; $4A95: $88
    db $10                                        ; $4A96: $10
    ld bc, $0100                                  ; $4A97: $01 $00 $01
    ld [bc], a                                    ; $4A9A: $02
    nop                                           ; $4A9B: $00
    inc b                                         ; $4A9C: $04
    jr jr_036_4A9F                                ; $4A9D: $18 $00

jr_036_4A9F:
    nop                                           ; $4A9F: $00
    ld b, $AA                                     ; $4AA0: $06 $AA
    ld h, d                                       ; $4AA2: $62
    ld [hl+], a                                   ; $4AA3: $22
    inc c                                         ; $4AA4: $0C

jr_036_4AA5:
    cp a                                          ; $4AA5: $BF
    ld h, d                                       ; $4AA6: $62
    nop                                           ; $4AA7: $00
    ld [hl+], a                                   ; $4AA8: $22
    ld [hl+], a                                   ; $4AA9: $22
    nop                                           ; $4AAA: $00
    inc b                                         ; $4AAB: $04
    inc b                                         ; $4AAC: $04
    nop                                           ; $4AAD: $00
    ld [$0030], sp                                ; $4AAE: $08 $30 $00
    nop                                           ; $4AB1: $00
    nop                                           ; $4AB2: $00
    xor d                                         ; $4AB3: $AA
    ld h, b                                       ; $4AB4: $60
    stop                                          ; $4AB5: $10 $00
    nop                                           ; $4AB7: $00
    ret nz                                        ; $4AB8: $C0

    ld c, b                                       ; $4AB9: $48
    jr nz, jr_036_4ABD                            ; $4ABA: $20 $01

    nop                                           ; $4ABC: $00

jr_036_4ABD:
    ld [bc], a                                    ; $4ABD: $02
    inc c                                         ; $4ABE: $0C
    nop                                           ; $4ABF: $00
    ld [hl], b                                    ; $4AC0: $70
    jr nz, jr_036_4AC3                            ; $4AC1: $20 $00

jr_036_4AC3:
    nop                                           ; $4AC3: $00
    nop                                           ; $4AC4: $00
    xor d                                         ; $4AC5: $AA
    nop                                           ; $4AC6: $00
    ld a, [hl]                                    ; $4AC7: $7E
    nop                                           ; $4AC8: $00
    ld [hl+], a                                   ; $4AC9: $22
    ld [bc], a                                    ; $4ACA: $02
    nop                                           ; $4ACB: $00
    inc b                                         ; $4ACC: $04
    inc b                                         ; $4ACD: $04
    nop                                           ; $4ACE: $00
    ld a, [bc]                                    ; $4ACF: $0A
    ld de, $2008                                  ; $4AD0: $11 $08 $20
    ret nz                                        ; $4AD3: $C0

    add b                                         ; $4AD4: $80
    nop                                           ; $4AD5: $00
    nop                                           ; $4AD6: $00
    xor d                                         ; $4AD7: $AA
    jr nc, jr_036_4AEA                            ; $4AD8: $30 $10

    inc c                                         ; $4ADA: $0C
    inc de                                        ; $4ADB: $13
    sbc h                                         ; $4ADC: $9C
    add b                                         ; $4ADD: $80
    ld [hl], c                                    ; $4ADE: $71
    ld [de], a                                    ; $4ADF: $12
    nop                                           ; $4AE0: $00
    db $10                                        ; $4AE1: $10
    db $10                                        ; $4AE2: $10
    ld [$000F], sp                                ; $4AE3: $08 $0F $00
    nop                                           ; $4AE6: $00
    nop                                           ; $4AE7: $00
    nop                                           ; $4AE8: $00
    xor d                                         ; $4AE9: $AA

jr_036_4AEA:
    nop                                           ; $4AEA: $00
    ld b, b                                       ; $4AEB: $40
    ld [$1020], sp                                ; $4AEC: $08 $20 $10
    adc b                                         ; $4AEF: $88
    db $10                                        ; $4AF0: $10
    ld bc, $0100                                  ; $4AF1: $01 $00 $01
    ld [bc], a                                    ; $4AF4: $02
    nop                                           ; $4AF5: $00
    inc b                                         ; $4AF6: $04
    jr jr_036_4AF9                                ; $4AF7: $18 $00

jr_036_4AF9:
    nop                                           ; $4AF9: $00
    jr jr_036_4B04                                ; $4AFA: $18 $08

    ld [$C80F], sp                                ; $4AFC: $08 $0F $C8
    jr @+$12                                      ; $4AFF: $18 $10

    adc b                                         ; $4B01: $88
    inc l                                         ; $4B02: $2C
    ld b, e                                       ; $4B03: $43

jr_036_4B04:
    ld [$0201], sp                                ; $4B04: $08 $01 $02
    add b                                         ; $4B07: $80
    inc c                                         ; $4B08: $0C
    jr nc, jr_036_4B0B                            ; $4B09: $30 $00

jr_036_4B0B:
    nop                                           ; $4B0B: $00
    ld bc, $0600                                  ; $4B0C: $01 $00 $06
    inc a                                         ; $4B0F: $3C
    ld [$0704], sp                                ; $4B10: $08 $04 $07
    ret nz                                        ; $4B13: $C0

    db $FC                                        ; $4B14: $FC
    ld b, h                                       ; $4B15: $44
    nop                                           ; $4B16: $00
    ld [$0008], sp                                ; $4B17: $08 $08 $00
    db $10                                        ; $4B1A: $10
    jr nz, jr_036_4B1D                            ; $4B1B: $20 $00

jr_036_4B1D:
    nop                                           ; $4B1D: $00
    nop                                           ; $4B1E: $00
    inc c                                         ; $4B1F: $0C
    ld [$4444], sp                                ; $4B20: $08 $44 $44
    inc h                                         ; $4B23: $24
    jr nz, jr_036_4B6A                            ; $4B24: $20 $44

    nop                                           ; $4B26: $00
    nop                                           ; $4B27: $00
    adc b                                         ; $4B28: $88
    nop                                           ; $4B29: $00
    ld bc, $0600                                  ; $4B2A: $01 $00 $06
    jr jr_036_4B2F                                ; $4B2D: $18 $00

jr_036_4B2F:
    nop                                           ; $4B2F: $00
    nop                                           ; $4B30: $00
    nop                                           ; $4B31: $00
    ld [bc], a                                    ; $4B32: $02
    ccf                                           ; $4B33: $3F
    nop                                           ; $4B34: $00
    nop                                           ; $4B35: $00
    nop                                           ; $4B36: $00
    adc h                                         ; $4B37: $8C
    rst RST_38                                    ; $4B38: $FF
    ld b, h                                       ; $4B39: $44
    nop                                           ; $4B3A: $00
    inc b                                         ; $4B3B: $04
    inc b                                         ; $4B3C: $04
    nop                                           ; $4B3D: $00
    ld [$0010], sp                                ; $4B3E: $08 $10 $00
    nop                                           ; $4B41: $00
    nop                                           ; $4B42: $00
    nop                                           ; $4B43: $00
    jr jr_036_4B4E                                ; $4B44: $18 $08

    nop                                           ; $4B46: $00
    ld [$0008], sp                                ; $4B47: $08 $08 $00
    ld c, $0B                                     ; $4B4A: $0E $0B
    nop                                           ; $4B4C: $00
    add hl, bc                                    ; $4B4D: $09

jr_036_4B4E:
    ld [$0800], sp                                ; $4B4E: $08 $00 $08
    ld [$0000], sp                                ; $4B51: $08 $00 $00
    jr @-$54                                      ; $4B54: $18 $AA

    ld [$080F], sp                                ; $4B56: $08 $0F $08
    jr @+$12                                      ; $4B59: $18 $10

    adc b                                         ; $4B5B: $88
    inc l                                         ; $4B5C: $2C
    ld b, e                                       ; $4B5D: $43
    ld [$0201], sp                                ; $4B5E: $08 $01 $02
    add b                                         ; $4B61: $80
    inc c                                         ; $4B62: $0C
    jr nc, jr_036_4B65                            ; $4B63: $30 $00

jr_036_4B65:
    nop                                           ; $4B65: $00
    nop                                           ; $4B66: $00
    xor d                                         ; $4B67: $AA
    ld b, $3C                                     ; $4B68: $06 $3C

jr_036_4B6A:
    ld [$0704], sp                                ; $4B6A: $08 $04 $07
    ret nz                                        ; $4B6D: $C0

    db $FC                                        ; $4B6E: $FC
    ld b, h                                       ; $4B6F: $44
    nop                                           ; $4B70: $00
    ld [$0008], sp                                ; $4B71: $08 $08 $00
    db $10                                        ; $4B74: $10
    jr nz, jr_036_4B77                            ; $4B75: $20 $00

jr_036_4B77:
    nop                                           ; $4B77: $00
    nop                                           ; $4B78: $00
    xor d                                         ; $4B79: $AA
    ld [$0444], sp                                ; $4B7A: $08 $44 $04
    inc h                                         ; $4B7D: $24
    jr nz, @+$46                                  ; $4B7E: $20 $44

    nop                                           ; $4B80: $00
    nop                                           ; $4B81: $00
    adc b                                         ; $4B82: $88
    nop                                           ; $4B83: $00
    ld bc, $0600                                  ; $4B84: $01 $00 $06
    jr jr_036_4B89                                ; $4B87: $18 $00

jr_036_4B89:
    nop                                           ; $4B89: $00
    nop                                           ; $4B8A: $00
    xor d                                         ; $4B8B: $AA
    nop                                           ; $4B8C: $00
    ccf                                           ; $4B8D: $3F
    nop                                           ; $4B8E: $00
    nop                                           ; $4B8F: $00
    nop                                           ; $4B90: $00
    adc h                                         ; $4B91: $8C
    rst RST_38                                    ; $4B92: $FF
    ld b, h                                       ; $4B93: $44
    nop                                           ; $4B94: $00
    inc b                                         ; $4B95: $04
    inc b                                         ; $4B96: $04
    nop                                           ; $4B97: $00
    ld [$0010], sp                                ; $4B98: $08 $10 $00
    nop                                           ; $4B9B: $00
    nop                                           ; $4B9C: $00
    inc b                                         ; $4B9D: $04
    add hl, de                                    ; $4B9E: $19
    add hl, bc                                    ; $4B9F: $09
    ld b, b                                       ; $4BA0: $40
    ld [$0008], sp                                ; $4BA1: $08 $08 $00
    ld c, $0B                                     ; $4BA4: $0E $0B
    nop                                           ; $4BA6: $00
    add hl, bc                                    ; $4BA7: $09
    ld [$0800], sp                                ; $4BA8: $08 $00 $08
    ld [$0000], sp                                ; $4BAB: $08 $00 $00
    nop                                           ; $4BAE: $00
    nop                                           ; $4BAF: $00
    ld b, $02                                     ; $4BB0: $06 $02
    ld c, [hl]                                    ; $4BB2: $4E
    inc bc                                        ; $4BB3: $03
    ld a, [hl]                                    ; $4BB4: $7E
    nop                                           ; $4BB5: $00
    ld [hl+], a                                   ; $4BB6: $22
    ld [bc], a                                    ; $4BB7: $02
    nop                                           ; $4BB8: $00
    inc b                                         ; $4BB9: $04
    inc b                                         ; $4BBA: $04
    nop                                           ; $4BBB: $00
    ld [$0010], sp                                ; $4BBC: $08 $10 $00
    nop                                           ; $4BBF: $00
    nop                                           ; $4BC0: $00
    nop                                           ; $4BC1: $00
    nop                                           ; $4BC2: $00
    ld bc, $7F08                                  ; $4BC3: $01 $08 $7F
    jr nz, jr_036_4BC8                            ; $4BC6: $20 $00

jr_036_4BC8:
    nop                                           ; $4BC8: $00
    nop                                           ; $4BC9: $00
    ld [$FF00], sp                                ; $4BCA: $08 $00 $FF
    ret nz                                        ; $4BCD: $C0

    ld b, b                                       ; $4BCE: $40
    nop                                           ; $4BCF: $00
    nop                                           ; $4BD0: $00
    nop                                           ; $4BD1: $00
    nop                                           ; $4BD2: $00
    ld [$3F00], sp                                ; $4BD3: $08 $00 $3F
    adc b                                         ; $4BD6: $88
    stop                                          ; $4BD7: $10 $00
    add b                                         ; $4BD9: $80
    dec c                                         ; $4BDA: $0D
    inc bc                                        ; $4BDB: $03
    ld [$0402], sp                                ; $4BDC: $08 $02 $04
    ld b, h                                       ; $4BDF: $44
    jr jr_036_4C42                                ; $4BE0: $18 $60

    nop                                           ; $4BE2: $00
    nop                                           ; $4BE3: $00
    ld [$0500], sp                                ; $4BE4: $08 $00 $05
    ld a, a                                       ; $4BE7: $7F
    add b                                         ; $4BE8: $80
    ld hl, $0002                                  ; $4BE9: $21 $02 $00
    ld b, $1D                                     ; $4BEC: $06 $1D
    adc h                                         ; $4BEE: $8C
    db $E4                                        ; $4BEF: $E4
    inc b                                         ; $4BF0: $04
    nop                                           ; $4BF1: $00
    inc b                                         ; $4BF2: $04
    inc b                                         ; $4BF3: $04
    nop                                           ; $4BF4: $00
    nop                                           ; $4BF5: $00
    nop                                           ; $4BF6: $00
    nop                                           ; $4BF7: $00
    nop                                           ; $4BF8: $00
    nop                                           ; $4BF9: $00
    adc h                                         ; $4BFA: $8C
    nop                                           ; $4BFB: $00
    nop                                           ; $4BFC: $00
    add b                                         ; $4BFD: $80
    ld bc, $0001                                  ; $4BFE: $01 $01 $00
    ld [bc], a                                    ; $4C01: $02
    inc b                                         ; $4C02: $04
    nop                                           ; $4C03: $00
    jr jr_036_4C66                                ; $4C04: $18 $60

    nop                                           ; $4C06: $00
    nop                                           ; $4C07: $00
    nop                                           ; $4C08: $00
    nop                                           ; $4C09: $00
    nop                                           ; $4C0A: $00
    ld [hl-], a                                   ; $4C0B: $32
    nop                                           ; $4C0C: $00
    ld de, $8810                                  ; $4C0D: $11 $10 $88
    db $10                                        ; $4C10: $10
    jr nz, jr_036_4C57                            ; $4C11: $20 $44

    jr nz, jr_036_4C55                            ; $4C13: $20 $40

    ld b, b                                       ; $4C15: $40
    add b                                         ; $4C16: $80
    nop                                           ; $4C17: $00
    nop                                           ; $4C18: $00
    nop                                           ; $4C19: $00
    nop                                           ; $4C1A: $00
    nop                                           ; $4C1B: $00
    ld h, b                                       ; $4C1C: $60
    ld hl, $2108                                  ; $4C1D: $21 $08 $21
    ld h, $00                                     ; $4C20: $26 $00
    jr c, @+$22                                   ; $4C22: $38 $20

    nop                                           ; $4C24: $00
    jr nz, jr_036_4C47                            ; $4C25: $20 $20

    ld [$001F], sp                                ; $4C27: $08 $1F $00
    nop                                           ; $4C2A: $00
    nop                                           ; $4C2B: $00
    nop                                           ; $4C2C: $00
    nop                                           ; $4C2D: $00
    ld bc, $80FF                                  ; $4C2E: $01 $FF $80
    ld b, c                                       ; $4C31: $41
    ld bc, $0100                                  ; $4C32: $01 $00 $01
    ld [bc], a                                    ; $4C35: $02
    nop                                           ; $4C36: $00
    ld [bc], a                                    ; $4C37: $02
    inc c                                         ; $4C38: $0C
    nop                                           ; $4C39: $00
    jr nc, jr_036_4C3C                            ; $4C3A: $30 $00

jr_036_4C3C:
    nop                                           ; $4C3C: $00
    nop                                           ; $4C3D: $00
    nop                                           ; $4C3E: $00
    nop                                           ; $4C3F: $00
    nop                                           ; $4C40: $00
    nop                                           ; $4C41: $00

jr_036_4C42:
    nop                                           ; $4C42: $00
    jr @+$26                                      ; $4C43: $18 $24

    nop                                           ; $4C45: $00
    ldh [c], a                                    ; $4C46: $E2

jr_036_4C47:
    ld b, c                                       ; $4C47: $41
    add [hl]                                      ; $4C48: $86
    nop                                           ; $4C49: $00
    nop                                           ; $4C4A: $00
    nop                                           ; $4C4B: $00
    nop                                           ; $4C4C: $00
    nop                                           ; $4C4D: $00
    nop                                           ; $4C4E: $00
    nop                                           ; $4C4F: $00
    nop                                           ; $4C50: $00
    nop                                           ; $4C51: $00
    inc c                                         ; $4C52: $0C
    inc b                                         ; $4C53: $04
    adc h                                         ; $4C54: $8C

jr_036_4C55:
    ld a, a                                       ; $4C55: $7F
    inc b                                         ; $4C56: $04

jr_036_4C57:
    nop                                           ; $4C57: $00
    dec h                                         ; $4C58: $25
    inc h                                         ; $4C59: $24
    add h                                         ; $4C5A: $84
    inc h                                         ; $4C5B: $24
    ld b, h                                       ; $4C5C: $44
    ld b, b                                       ; $4C5D: $40
    inc c                                         ; $4C5E: $0C
    inc b                                         ; $4C5F: $04
    nop                                           ; $4C60: $00
    nop                                           ; $4C61: $00
    nop                                           ; $4C62: $00
    xor d                                         ; $4C63: $AA
    nop                                           ; $4C64: $00
    ld [hl-], a                                   ; $4C65: $32

jr_036_4C66:
    nop                                           ; $4C66: $00
    ld de, $8810                                  ; $4C67: $11 $10 $88
    db $10                                        ; $4C6A: $10
    jr nz, jr_036_4CB1                            ; $4C6B: $20 $44

    jr nz, jr_036_4CAF                            ; $4C6D: $20 $40

    ld b, b                                       ; $4C6F: $40
    add b                                         ; $4C70: $80
    nop                                           ; $4C71: $00
    nop                                           ; $4C72: $00
    nop                                           ; $4C73: $00
    nop                                           ; $4C74: $00
    xor d                                         ; $4C75: $AA
    ld h, b                                       ; $4C76: $60
    ld hl, $2108                                  ; $4C77: $21 $08 $21
    ld h, $00                                     ; $4C7A: $26 $00
    jr c, @+$22                                   ; $4C7C: $38 $20

    nop                                           ; $4C7E: $00
    jr nz, jr_036_4CA1                            ; $4C7F: $20 $20

    ld [$001F], sp                                ; $4C81: $08 $1F $00
    nop                                           ; $4C84: $00
    nop                                           ; $4C85: $00
    nop                                           ; $4C86: $00
    xor d                                         ; $4C87: $AA
    nop                                           ; $4C88: $00
    rst RST_38                                    ; $4C89: $FF
    nop                                           ; $4C8A: $00
    ld b, c                                       ; $4C8B: $41
    ld bc, $0100                                  ; $4C8C: $01 $00 $01
    ld [bc], a                                    ; $4C8F: $02
    nop                                           ; $4C90: $00
    ld [bc], a                                    ; $4C91: $02
    inc c                                         ; $4C92: $0C
    nop                                           ; $4C93: $00
    jr nc, jr_036_4C96                            ; $4C94: $30 $00

jr_036_4C96:
    nop                                           ; $4C96: $00
    nop                                           ; $4C97: $00
    nop                                           ; $4C98: $00
    inc b                                         ; $4C99: $04
    ld bc, $4001                                  ; $4C9A: $01 $01 $40
    jr jr_036_4CC3                                ; $4C9D: $18 $24

    nop                                           ; $4C9F: $00
    ldh [c], a                                    ; $4CA0: $E2

jr_036_4CA1:
    ld b, c                                       ; $4CA1: $41
    add [hl]                                      ; $4CA2: $86
    nop                                           ; $4CA3: $00
    nop                                           ; $4CA4: $00
    nop                                           ; $4CA5: $00
    nop                                           ; $4CA6: $00
    nop                                           ; $4CA7: $00
    nop                                           ; $4CA8: $00
    nop                                           ; $4CA9: $00
    nop                                           ; $4CAA: $00
    xor d                                         ; $4CAB: $AA
    inc c                                         ; $4CAC: $0C
    inc b                                         ; $4CAD: $04
    inc c                                         ; $4CAE: $0C

jr_036_4CAF:
    ld a, a                                       ; $4CAF: $7F
    inc b                                         ; $4CB0: $04

jr_036_4CB1:
    nop                                           ; $4CB1: $00
    dec h                                         ; $4CB2: $25
    inc h                                         ; $4CB3: $24
    add h                                         ; $4CB4: $84
    inc h                                         ; $4CB5: $24
    ld b, h                                       ; $4CB6: $44
    ld b, b                                       ; $4CB7: $40
    inc c                                         ; $4CB8: $0C
    inc b                                         ; $4CB9: $04
    nop                                           ; $4CBA: $00
    nop                                           ; $4CBB: $00
    nop                                           ; $4CBC: $00
    ld [$3200], a                                 ; $4CBD: $EA $00 $32
    ldh [rNR11], a                                ; $4CC0: $E0 $11
    db $10                                        ; $4CC2: $10

jr_036_4CC3:
    adc b                                         ; $4CC3: $88
    db $10                                        ; $4CC4: $10
    jr nz, jr_036_4D0B                            ; $4CC5: $20 $44

    jr nz, @+$42                                  ; $4CC7: $20 $40

    ld b, b                                       ; $4CC9: $40
    add b                                         ; $4CCA: $80
    nop                                           ; $4CCB: $00
    nop                                           ; $4CCC: $00
    nop                                           ; $4CCD: $00
    nop                                           ; $4CCE: $00
    ld [$2060], a                                 ; $4CCF: $EA $60 $20
    ldh [rNR42], a                                ; $4CD2: $E0 $21
    ld h, $00                                     ; $4CD4: $26 $00
    jr c, jr_036_4CF8                             ; $4CD6: $38 $20

    nop                                           ; $4CD8: $00
    jr nz, jr_036_4CFB                            ; $4CD9: $20 $20

    inc c                                         ; $4CDB: $0C
    rra                                           ; $4CDC: $1F
    nop                                           ; $4CDD: $00
    nop                                           ; $4CDE: $00
    nop                                           ; $4CDF: $00
    nop                                           ; $4CE0: $00
    ld [$FE00], a                                 ; $4CE1: $EA $00 $FE
    ldh [rSTAT], a                                ; $4CE4: $E0 $41
    ld bc, $0100                                  ; $4CE6: $01 $00 $01
    ld [bc], a                                    ; $4CE9: $02
    nop                                           ; $4CEA: $00
    ld [bc], a                                    ; $4CEB: $02
    inc c                                         ; $4CEC: $0C
    nop                                           ; $4CED: $00
    jr nc, jr_036_4CF0                            ; $4CEE: $30 $00

jr_036_4CF0:
    nop                                           ; $4CF0: $00
    nop                                           ; $4CF1: $00
    nop                                           ; $4CF2: $00
    inc c                                         ; $4CF3: $0C
    ld bc, $4C01                                  ; $4CF4: $01 $01 $4C
    add hl, de                                    ; $4CF7: $19

jr_036_4CF8:
    inc h                                         ; $4CF8: $24
    nop                                           ; $4CF9: $00
    ldh [c], a                                    ; $4CFA: $E2

jr_036_4CFB:
    ld b, c                                       ; $4CFB: $41
    add [hl]                                      ; $4CFC: $86
    nop                                           ; $4CFD: $00
    nop                                           ; $4CFE: $00
    nop                                           ; $4CFF: $00
    nop                                           ; $4D00: $00
    nop                                           ; $4D01: $00
    nop                                           ; $4D02: $00
    nop                                           ; $4D03: $00
    nop                                           ; $4D04: $00
    ld [$040C], a                                 ; $4D05: $EA $0C $04
    ldh [$FF7F], a                                ; $4D08: $E0 $7F
    inc b                                         ; $4D0A: $04

jr_036_4D0B:
    nop                                           ; $4D0B: $00
    dec h                                         ; $4D0C: $25
    inc h                                         ; $4D0D: $24
    add h                                         ; $4D0E: $84
    inc h                                         ; $4D0F: $24
    ld b, h                                       ; $4D10: $44
    ld b, b                                       ; $4D11: $40
    inc c                                         ; $4D12: $0C
    inc b                                         ; $4D13: $04
    nop                                           ; $4D14: $00
    nop                                           ; $4D15: $00
    nop                                           ; $4D16: $00
    nop                                           ; $4D17: $00
    nop                                           ; $4D18: $00
    nop                                           ; $4D19: $00
    ld c, [hl]                                    ; $4D1A: $4E
    ld a, a                                       ; $4D1B: $7F
    jr nz, jr_036_4D66                            ; $4D1C: $20 $48

    nop                                           ; $4D1E: $00
    add hl, bc                                    ; $4D1F: $09
    nop                                           ; $4D20: $00
    ld b, $03                                     ; $4D21: $06 $03
    nop                                           ; $4D23: $00
    ld bc, $0000                                  ; $4D24: $01 $00 $00
    nop                                           ; $4D27: $00
    nop                                           ; $4D28: $00
    nop                                           ; $4D29: $00
    jr jr_036_4D32                                ; $4D2A: $18 $06

    nop                                           ; $4D2C: $00
    inc bc                                        ; $4D2D: $03
    jr jr_036_4D30                                ; $4D2E: $18 $00

jr_036_4D30:
    ld b, $02                                     ; $4D30: $06 $02

jr_036_4D32:
    nop                                           ; $4D32: $00
    jr c, jr_036_4D43                             ; $4D33: $38 $0E

    nop                                           ; $4D35: $00
    inc bc                                        ; $4D36: $03
    nop                                           ; $4D37: $00
    nop                                           ; $4D38: $00
    nop                                           ; $4D39: $00
    nop                                           ; $4D3A: $00
    nop                                           ; $4D3B: $00
    nop                                           ; $4D3C: $00
    jr jr_036_4D3F                                ; $4D3D: $18 $00

jr_036_4D3F:
    ld [$0008], sp                                ; $4D3F: $08 $08 $00
    db $10                                        ; $4D42: $10

jr_036_4D43:
    ld de, $2008                                  ; $4D43: $11 $08 $20
    inc hl                                        ; $4D46: $23
    call nz, Call_036_40FC                        ; $4D47: $C4 $FC $40
    ld b, b                                       ; $4D4A: $40
    nop                                           ; $4D4B: $00
    nop                                           ; $4D4C: $00
    inc c                                         ; $4D4D: $0C
    nop                                           ; $4D4E: $00
    nop                                           ; $4D4F: $00
    ld c, b                                       ; $4D50: $48
    nop                                           ; $4D51: $00
    inc c                                         ; $4D52: $0C
    add b                                         ; $4D53: $80
    inc bc                                        ; $4D54: $03
    ld bc, $0288                                  ; $4D55: $01 $88 $02
    inc b                                         ; $4D58: $04
    ld b, h                                       ; $4D59: $44
    jr jr_036_4DBC                                ; $4D5A: $18 $60

    nop                                           ; $4D5C: $00
    nop                                           ; $4D5D: $00
    nop                                           ; $4D5E: $00
    nop                                           ; $4D5F: $00
    ld bc, $807F                                  ; $4D60: $01 $7F $80
    ld [$8C08], sp                                ; $4D63: $08 $08 $8C

jr_036_4D66:
    rrca                                          ; $4D66: $0F
    ld a, b                                       ; $4D67: $78
    nop                                           ; $4D68: $00
    ld [$0C08], sp                                ; $4D69: $08 $08 $0C
    rlca                                          ; $4D6C: $07
    nop                                           ; $4D6D: $00
    nop                                           ; $4D6E: $00
    nop                                           ; $4D6F: $00
    nop                                           ; $4D70: $00
    nop                                           ; $4D71: $00
    jr nc, jr_036_4D84                            ; $4D72: $30 $10

    ld c, [hl]                                    ; $4D74: $4E
    ld de, $489E                                  ; $4D75: $11 $9E $48
    ld l, b                                       ; $4D78: $68
    add hl, bc                                    ; $4D79: $09
    nop                                           ; $4D7A: $00
    ld [$0004], sp                                ; $4D7B: $08 $04 $00
    inc b                                         ; $4D7E: $04
    inc b                                         ; $4D7F: $04
    nop                                           ; $4D80: $00
    nop                                           ; $4D81: $00
    nop                                           ; $4D82: $00
    nop                                           ; $4D83: $00

jr_036_4D84:
    nop                                           ; $4D84: $00
    ld bc, $1F08                                  ; $4D85: $01 $08 $1F
    ld bc, $0100                                  ; $4D88: $01 $00 $01
    ld bc, $0200                                  ; $4D8B: $01 $00 $02
    ld [bc], a                                    ; $4D8E: $02
    ld c, [hl]                                    ; $4D8F: $4E
    ld a, a                                       ; $4D90: $7F
    jr nz, jr_036_4D93                            ; $4D91: $20 $00

jr_036_4D93:
    nop                                           ; $4D93: $00
    nop                                           ; $4D94: $00
    ld [$7F00], sp                                ; $4D95: $08 $00 $7F
    ret z                                         ; $4D98: $C8

    jr nz, jr_036_4D9B                            ; $4D99: $20 $00

jr_036_4D9B:
    adc b                                         ; $4D9B: $88
    ccf                                           ; $4D9C: $3F
    nop                                           ; $4D9D: $00
    adc b                                         ; $4D9E: $88
    nop                                           ; $4D9F: $00
    nop                                           ; $4DA0: $00
    adc b                                         ; $4DA1: $88
    ld a, a                                       ; $4DA2: $7F
    jr nz, @-$7E                                  ; $4DA3: $20 $80

    nop                                           ; $4DA5: $00
    nop                                           ; $4DA6: $00
    nop                                           ; $4DA7: $00
    nop                                           ; $4DA8: $00
    nop                                           ; $4DA9: $00
    nop                                           ; $4DAA: $00
    jr jr_036_4DB5                                ; $4DAB: $18 $08

    adc h                                         ; $4DAD: $8C
    dec bc                                        ; $4DAE: $0B
    inc a                                         ; $4DAF: $3C
    add b                                         ; $4DB0: $80
    dec b                                         ; $4DB1: $05
    inc b                                         ; $4DB2: $04
    nop                                           ; $4DB3: $00
    ld [bc], a                                    ; $4DB4: $02

jr_036_4DB5:
    ld [bc], a                                    ; $4DB5: $02
    nop                                           ; $4DB6: $00
    nop                                           ; $4DB7: $00
    nop                                           ; $4DB8: $00
    nop                                           ; $4DB9: $00
    nop                                           ; $4DBA: $00
    nop                                           ; $4DBB: $00

jr_036_4DBC:
    nop                                           ; $4DBC: $00
    nop                                           ; $4DBD: $00
    ld [bc], a                                    ; $4DBE: $02
    nop                                           ; $4DBF: $00
    rra                                           ; $4DC0: $1F
    ld [bc], a                                    ; $4DC1: $02
    nop                                           ; $4DC2: $00
    ld [bc], a                                    ; $4DC3: $02
    inc b                                         ; $4DC4: $04
    adc h                                         ; $4DC5: $8C
    ld a, a                                       ; $4DC6: $7F
    jr nz, jr_036_4DC9                            ; $4DC7: $20 $00

jr_036_4DC9:
    nop                                           ; $4DC9: $00
    nop                                           ; $4DCA: $00
    nop                                           ; $4DCB: $00
    nop                                           ; $4DCC: $00
    nop                                           ; $4DCD: $00
    nop                                           ; $4DCE: $00
    ld bc, $803F                                  ; $4DCF: $01 $3F $80
    ld bc, $001F                                  ; $4DD2: $01 $1F $00
    ld bc, $0001                                  ; $4DD5: $01 $01 $00
    ccf                                           ; $4DD8: $3F
    ld de, $0000                                  ; $4DD9: $11 $00 $00
    ld [bc], a                                    ; $4DDC: $02
    nop                                           ; $4DDD: $00
    ccf                                           ; $4DDE: $3F
    nop                                           ; $4DDF: $00
    ld [$7F00], sp                                ; $4DE0: $08 $00 $7F
    ret z                                         ; $4DE3: $C8

    jr nz, jr_036_4DE6                            ; $4DE4: $20 $00

jr_036_4DE6:
    adc b                                         ; $4DE6: $88
    nop                                           ; $4DE7: $00
    ld bc, $0200                                  ; $4DE8: $01 $00 $02
    inc e                                         ; $4DEB: $1C
    nop                                           ; $4DEC: $00
    nop                                           ; $4DED: $00
    nop                                           ; $4DEE: $00
    ld [$3001], sp                                ; $4DEF: $08 $01 $30
    adc b                                         ; $4DF2: $88
    db $10                                        ; $4DF3: $10
    db $10                                        ; $4DF4: $10
    adc b                                         ; $4DF5: $88
    db $10                                        ; $4DF6: $10
    db $10                                        ; $4DF7: $10
    add b                                         ; $4DF8: $80
    ld bc, $0001                                  ; $4DF9: $01 $01 $00
    ld [bc], a                                    ; $4DFC: $02
    inc c                                         ; $4DFD: $0C
    nop                                           ; $4DFE: $00
    nop                                           ; $4DFF: $00
    nop                                           ; $4E00: $00
    nop                                           ; $4E01: $00
    nop                                           ; $4E02: $00
    inc c                                         ; $4E03: $0C
    nop                                           ; $4E04: $00
    ld h, h                                       ; $4E05: $64
    inc h                                         ; $4E06: $24
    nop                                           ; $4E07: $00
    inc h                                         ; $4E08: $24
    inc h                                         ; $4E09: $24
    inc h                                         ; $4E0A: $24
    inc h                                         ; $4E0B: $24
    ld b, l                                       ; $4E0C: $45
    add b                                         ; $4E0D: $80
    ld b, [hl]                                    ; $4E0E: $46
    add b                                         ; $4E0F: $80
    nop                                           ; $4E10: $00
    nop                                           ; $4E11: $00
    nop                                           ; $4E12: $00
    nop                                           ; $4E13: $00
    ld h, b                                       ; $4E14: $60
    jr nz, jr_036_4E17                            ; $4E15: $20 $00

jr_036_4E17:
    jr nz, jr_036_4E39                            ; $4E17: $20 $20

    inc b                                         ; $4E19: $04
    jr nz, @+$22                                  ; $4E1A: $20 $20

    add b                                         ; $4E1C: $80
    ld hl, $0026                                  ; $4E1D: $21 $26 $00
    ld a, b                                       ; $4E20: $78
    jr nz, jr_036_4E23                            ; $4E21: $20 $00

jr_036_4E23:
    nop                                           ; $4E23: $00
    nop                                           ; $4E24: $00
    nop                                           ; $4E25: $00
    nop                                           ; $4E26: $00
    ret nz                                        ; $4E27: $C0

    adc h                                         ; $4E28: $8C
    ld a, a                                       ; $4E29: $7F
    ld b, b                                       ; $4E2A: $40
    adc b                                         ; $4E2B: $88
    ld b, b                                       ; $4E2C: $40
    ld b, c                                       ; $4E2D: $41
    nop                                           ; $4E2E: $00
    ld b, c                                       ; $4E2F: $41
    ld b, c                                       ; $4E30: $41
    ld [$407F], sp                                ; $4E31: $08 $7F $40
    nop                                           ; $4E34: $00
    nop                                           ; $4E35: $00
    nop                                           ; $4E36: $00
    inc b                                         ; $4E37: $04
    ret nz                                        ; $4E38: $C0

jr_036_4E39:
    ld a, a                                       ; $4E39: $7F
    call nz, $4040                                ; $4E3A: $C4 $40 $40
    ld b, h                                       ; $4E3D: $44
    ld b, b                                       ; $4E3E: $40
    ld b, b                                       ; $4E3F: $40
    adc b                                         ; $4E40: $88
    nop                                           ; $4E41: $00
    ld bc, $0200                                  ; $4E42: $01 $00 $02
    inc e                                         ; $4E45: $1C
    nop                                           ; $4E46: $00
    nop                                           ; $4E47: $00
    nop                                           ; $4E48: $00
    ld [$FF00], sp                                ; $4E49: $08 $00 $FF
    ret z                                         ; $4E4C: $C8

    ld b, b                                       ; $4E4D: $40
    nop                                           ; $4E4E: $00
    adc b                                         ; $4E4F: $88
    ld a, a                                       ; $4E50: $7F
    ld hl, $0100                                  ; $4E51: $21 $00 $01
    ld [bc], a                                    ; $4E54: $02
    nop                                           ; $4E55: $00
    inc c                                         ; $4E56: $0C
    jr nc, jr_036_4E59                            ; $4E57: $30 $00

jr_036_4E59:
    nop                                           ; $4E59: $00
    nop                                           ; $4E5A: $00
    nop                                           ; $4E5B: $00
    nop                                           ; $4E5C: $00
    ret nz                                        ; $4E5D: $C0

    nop                                           ; $4E5E: $00
    jr nc, jr_036_4E71                            ; $4E5F: $30 $10

    inc b                                         ; $4E61: $04
    nop                                           ; $4E62: $00
    nop                                           ; $4E63: $00
    add b                                         ; $4E64: $80
    ld bc, $0006                                  ; $4E65: $01 $06 $00
    ld a, b                                       ; $4E68: $78
    jr nz, jr_036_4E6B                            ; $4E69: $20 $00

jr_036_4E6B:
    nop                                           ; $4E6B: $00
    nop                                           ; $4E6C: $00
    nop                                           ; $4E6D: $00
    nop                                           ; $4E6E: $00
    nop                                           ; $4E6F: $00
    nop                                           ; $4E70: $00

jr_036_4E71:
    ld [$8825], sp                                ; $4E71: $08 $25 $88
    inc d                                         ; $4E74: $14
    db $10                                        ; $4E75: $10
    add b                                         ; $4E76: $80
    ld bc, $0002                                  ; $4E77: $01 $02 $00
    inc c                                         ; $4E7A: $0C
    nop                                           ; $4E7B: $00
    nop                                           ; $4E7C: $00
    nop                                           ; $4E7D: $00
    nop                                           ; $4E7E: $00
    nop                                           ; $4E7F: $00
    nop                                           ; $4E80: $00
    nop                                           ; $4E81: $00
    nop                                           ; $4E82: $00
    ld bc, $807F                                  ; $4E83: $01 $7F $80
    ld hl, $000E                                  ; $4E86: $21 $0E $00
    inc b                                         ; $4E89: $04
    inc b                                         ; $4E8A: $04
    nop                                           ; $4E8B: $00
    ld [$0000], sp                                ; $4E8C: $08 $00 $00
    nop                                           ; $4E8F: $00
    nop                                           ; $4E90: $00
    nop                                           ; $4E91: $00
    nop                                           ; $4E92: $00
    ld bc, $0008                                  ; $4E93: $01 $08 $00
    ld bc, $0200                                  ; $4E96: $01 $00 $02
    ld c, $00                                     ; $4E99: $0E $00
    ld [hl-], a                                   ; $4E9B: $32
    ld [bc], a                                    ; $4E9C: $02
    nop                                           ; $4E9D: $00
    ld [bc], a                                    ; $4E9E: $02
    nop                                           ; $4E9F: $00
    nop                                           ; $4EA0: $00
    nop                                           ; $4EA1: $00
    nop                                           ; $4EA2: $00
    nop                                           ; $4EA3: $00
    nop                                           ; $4EA4: $00
    inc c                                         ; $4EA5: $0C
    ld [$3F24], sp                                ; $4EA6: $08 $24 $3F
    ret z                                         ; $4EA9: $C8

    jr nz, jr_036_4ECC                            ; $4EAA: $20 $20

    add b                                         ; $4EAC: $80
    ld bc, $0002                                  ; $4EAD: $01 $02 $00
    inc c                                         ; $4EB0: $0C
    nop                                           ; $4EB1: $00
    nop                                           ; $4EB2: $00
    nop                                           ; $4EB3: $00
    nop                                           ; $4EB4: $00
    nop                                           ; $4EB5: $00
    nop                                           ; $4EB6: $00
    ld [bc], a                                    ; $4EB7: $02
    nop                                           ; $4EB8: $00
    rra                                           ; $4EB9: $1F
    inc b                                         ; $4EBA: $04
    nop                                           ; $4EBB: $00
    inc b                                         ; $4EBC: $04
    inc b                                         ; $4EBD: $04
    nop                                           ; $4EBE: $00
    dec b                                         ; $4EBF: $05
    ccf                                           ; $4EC0: $3F
    add b                                         ; $4EC1: $80
    stop                                          ; $4EC2: $10 $00
    nop                                           ; $4EC4: $00
    nop                                           ; $4EC5: $00
    nop                                           ; $4EC6: $00
    nop                                           ; $4EC7: $00
    nop                                           ; $4EC8: $00
    ld b, $00                                     ; $4EC9: $06 $00
    ld [bc], a                                    ; $4ECB: $02

jr_036_4ECC:
    ccf                                           ; $4ECC: $3F
    add b                                         ; $4ECD: $80
    ld b, $0A                                     ; $4ECE: $06 $0A
    nop                                           ; $4ED0: $00
    ld [de], a                                    ; $4ED1: $12
    ld h, $00                                     ; $4ED2: $26 $00
    ld [bc], a                                    ; $4ED4: $02
    nop                                           ; $4ED5: $00
    nop                                           ; $4ED6: $00
    nop                                           ; $4ED7: $00
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
    jr nz, jr_036_4EE6                            ; $4EE4: $20 $00

jr_036_4EE6:
    jr jr_036_4EF0                                ; $4EE6: $18 $08

    nop                                           ; $4EE8: $00
    nop                                           ; $4EE9: $00
    nop                                           ; $4EEA: $00
    nop                                           ; $4EEB: $00
    nop                                           ; $4EEC: $00
    nop                                           ; $4EED: $00
    nop                                           ; $4EEE: $00
    nop                                           ; $4EEF: $00

jr_036_4EF0:
    nop                                           ; $4EF0: $00
    nop                                           ; $4EF1: $00
    nop                                           ; $4EF2: $00
    nop                                           ; $4EF3: $00
    nop                                           ; $4EF4: $00
    jr @+$26                                      ; $4EF5: $18 $24

    nop                                           ; $4EF7: $00
    inc h                                         ; $4EF8: $24
    jr jr_036_4EFB                                ; $4EF9: $18 $00

jr_036_4EFB:
    nop                                           ; $4EFB: $00
    nop                                           ; $4EFC: $00
    nop                                           ; $4EFD: $00
    nop                                           ; $4EFE: $00
    nop                                           ; $4EFF: $00
    nop                                           ; $4F00: $00
    nop                                           ; $4F01: $00
    nop                                           ; $4F02: $00
    nop                                           ; $4F03: $00
    ld b, $06                                     ; $4F04: $06 $06
    nop                                           ; $4F06: $00
    nop                                           ; $4F07: $00
    nop                                           ; $4F08: $00
    nop                                           ; $4F09: $00
    nop                                           ; $4F0A: $00
    nop                                           ; $4F0B: $00
    nop                                           ; $4F0C: $00
    nop                                           ; $4F0D: $00
    jr jr_036_4F10                                ; $4F0E: $18 $00

jr_036_4F10:
    jr jr_036_4F2A                                ; $4F10: $18 $18

    nop                                           ; $4F12: $00
    jr jr_036_4F2D                                ; $4F13: $18 $18

    nop                                           ; $4F15: $00
    jr jr_036_4F30                                ; $4F16: $18 $18

    nop                                           ; $4F18: $00
    nop                                           ; $4F19: $00
    jr jr_036_4F1C                                ; $4F1A: $18 $00

jr_036_4F1C:
    jr jr_036_4F1E                                ; $4F1C: $18 $00

jr_036_4F1E:
    nop                                           ; $4F1E: $00
    nop                                           ; $4F1F: $00
    ccf                                           ; $4F20: $3F
    ld [$6161], sp                                ; $4F21: $08 $61 $61
    adc b                                         ; $4F24: $88
    ld bc, $0007                                  ; $4F25: $01 $07 $00
    inc c                                         ; $4F28: $0C
    inc c                                         ; $4F29: $0C

jr_036_4F2A:
    nop                                           ; $4F2A: $00
    nop                                           ; $4F2B: $00
    inc c                                         ; $4F2C: $0C

jr_036_4F2D:
    nop                                           ; $4F2D: $00
    inc c                                         ; $4F2E: $0C
    nop                                           ; $4F2F: $00

jr_036_4F30:
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
    jr nc, jr_036_4F40                            ; $4F3E: $30 $00

jr_036_4F40:
    jr nc, jr_036_4F42                            ; $4F40: $30 $00

jr_036_4F42:
    nop                                           ; $4F42: $00
    nop                                           ; $4F43: $00
    nop                                           ; $4F44: $00
    nop                                           ; $4F45: $00
    nop                                           ; $4F46: $00
    nop                                           ; $4F47: $00

Call_036_4F48:
    nop                                           ; $4F48: $00
    nop                                           ; $4F49: $00
    nop                                           ; $4F4A: $00
    nop                                           ; $4F4B: $00
    nop                                           ; $4F4C: $00
    nop                                           ; $4F4D: $00
    nop                                           ; $4F4E: $00
    jr nc, jr_036_4F81                            ; $4F4F: $30 $30

    nop                                           ; $4F51: $00
    db $10                                        ; $4F52: $10
    jr nz, jr_036_4F55                            ; $4F53: $20 $00

jr_036_4F55:
    nop                                           ; $4F55: $00
    nop                                           ; $4F56: $00
    nop                                           ; $4F57: $00
    nop                                           ; $4F58: $00
    inc c                                         ; $4F59: $0C
    nop                                           ; $4F5A: $00
    inc c                                         ; $4F5B: $0C
    nop                                           ; $4F5C: $00
    nop                                           ; $4F5D: $00
    nop                                           ; $4F5E: $00
    nop                                           ; $4F5F: $00
    nop                                           ; $4F60: $00
    inc c                                         ; $4F61: $0C
    inc c                                         ; $4F62: $0C
    nop                                           ; $4F63: $00
    nop                                           ; $4F64: $00
    nop                                           ; $4F65: $00
    nop                                           ; $4F66: $00
    nop                                           ; $4F67: $00
    rrca                                          ; $4F68: $0F
    add b                                         ; $4F69: $80

Jump_036_4F6A:
    ld [$0008], sp                                ; $4F6A: $08 $08 $00
    ld [$0008], sp                                ; $4F6D: $08 $08 $00
    ld [$0008], sp                                ; $4F70: $08 $08 $00
    ld [$0008], sp                                ; $4F73: $08 $08 $00
    nop                                           ; $4F76: $00
    nop                                           ; $4F77: $00
    nop                                           ; $4F78: $00
    nop                                           ; $4F79: $00
    nop                                           ; $4F7A: $00
    nop                                           ; $4F7B: $00
    nop                                           ; $4F7C: $00
    ld [bc], a                                    ; $4F7D: $02
    nop                                           ; $4F7E: $00
    ld [bc], a                                    ; $4F7F: $02
    ld [bc], a                                    ; $4F80: $02

jr_036_4F81:
    nop                                           ; $4F81: $00
    ld [bc], a                                    ; $4F82: $02
    ld [bc], a                                    ; $4F83: $02
    nop                                           ; $4F84: $00
    ld [bc], a                                    ; $4F85: $02
    ld [bc], a                                    ; $4F86: $02
    nop                                           ; $4F87: $00
    ld [bc], a                                    ; $4F88: $02
    ld a, $00                                     ; $4F89: $3E $00
    nop                                           ; $4F8B: $00
    inc bc                                        ; $4F8C: $03
    ld [$0303], sp                                ; $4F8D: $08 $03 $03
    adc h                                         ; $4F90: $8C
    ld [bc], a                                    ; $4F91: $02
    ld [bc], a                                    ; $4F92: $02
    call nz, Call_000_0202                        ; $4F93: $C4 $02 $02
    ld b, h                                       ; $4F96: $44
    ld a, $7E                                     ; $4F97: $3E $7E
    ld b, b                                       ; $4F99: $40
    ld a, h                                       ; $4F9A: $7C
    jr c, jr_036_4F9D                             ; $4F9B: $38 $00

jr_036_4F9D:
    nop                                           ; $4F9D: $00
    inc bc                                        ; $4F9E: $03
    ldh a, [rDIV]                                 ; $4F9F: $F0 $04
    add hl, bc                                    ; $4FA1: $09
    or d                                          ; $4FA2: $B2
    ld a, [bc]                                    ; $4FA3: $0A
    ld a, [bc]                                    ; $4FA4: $0A
    inc hl                                        ; $4FA5: $23
    add hl, bc                                    ; $4FA6: $09
    ld [$08AA], sp                                ; $4FA7: $08 $AA $08
    dec bc                                        ; $4FAA: $0B
    jr nc, jr_036_4FB1                            ; $4FAB: $30 $04

    inc bc                                        ; $4FAD: $03
    ldh a, [rP1]                                  ; $4FAE: $F0 $00
    rst RST_38                                    ; $4FB0: $FF

jr_036_4FB1:
    ldh a, [rP1]                                  ; $4FB1: $F0 $00
    and e                                         ; $4FB3: $A3
    sub d                                         ; $4FB4: $92
    ld [hl+], a                                   ; $4FB5: $22
    ld [hl+], a                                   ; $4FB6: $22
    ld a, [hl+]                                   ; $4FB7: $2A
    and e                                         ; $4FB8: $A3
    ld [hl+], a                                   ; $4FB9: $22
    ld [hl+], a                                   ; $4FBA: $22

jr_036_4FBB:
    ld [hl+], a                                   ; $4FBB: $22
    cp e                                          ; $4FBC: $BB
    sub b                                         ; $4FBD: $90
    nop                                           ; $4FBE: $00
    rst RST_38                                    ; $4FBF: $FF
    ldh a, [rP1]                                  ; $4FC0: $F0 $00
    ld hl, sp+$00                                 ; $4FC2: $F8 $00
    inc b                                         ; $4FC4: $04
    cp d                                          ; $4FC5: $BA
    nop                                           ; $4FC6: $00
    ld [de], a                                    ; $4FC7: $12
    ld [de], a                                    ; $4FC8: $12
    nop                                           ; $4FC9: $00
    ld [de], a                                    ; $4FCA: $12
    ld [de], a                                    ; $4FCB: $12
    nop                                           ; $4FCC: $00
    ld [de], a                                    ; $4FCD: $12
    sub d                                         ; $4FCE: $92
    nop                                           ; $4FCF: $00
    inc b                                         ; $4FD0: $04
    ld hl, sp+$00                                 ; $4FD1: $F8 $00
    nop                                           ; $4FD3: $00
    ccf                                           ; $4FD4: $3F
    ldh a, [rLCDC]                                ; $4FD5: $F0 $40
    sbc e                                         ; $4FD7: $9B
    sub d                                         ; $4FD8: $92
    and c                                         ; $4FD9: $A1
    and c                                         ; $4FDA: $A1
    ld [hl+], a                                   ; $4FDB: $22
    sub c                                         ; $4FDC: $91
    adc c                                         ; $4FDD: $89
    ld [hl-], a                                   ; $4FDE: $32
    adc c                                         ; $4FDF: $89
    or c                                          ; $4FE0: $B1
    jr nz, jr_036_5023                            ; $4FE1: $20 $40

    ccf                                           ; $4FE3: $3F
    ldh a, [rP1]                                  ; $4FE4: $F0 $00
    rst RST_38                                    ; $4FE6: $FF
    add h                                         ; $4FE7: $84
    nop                                           ; $4FE8: $00
    inc sp                                        ; $4FE9: $33
    and d                                         ; $4FEA: $A2
    xor c                                         ; $4FEB: $A9
    xor c                                         ; $4FEC: $A9
    ld [hl+], a                                   ; $4FED: $22
    xor c                                         ; $4FEE: $A9
    cp c                                          ; $4FEF: $B9
    ld [hl+], a                                   ; $4FF0: $22
    or c                                          ; $4FF1: $B1
    xor c                                         ; $4FF2: $A9
    inc h                                         ; $4FF3: $24
    nop                                           ; $4FF4: $00
    rst RST_38                                    ; $4FF5: $FF
    add b                                         ; $4FF6: $80
    nop                                           ; $4FF7: $00
    nop                                           ; $4FF8: $00
    nop                                           ; $4FF9: $00
    inc b                                         ; $4FFA: $04
    ld c, $00                                     ; $4FFB: $0E $00
    rra                                           ; $4FFD: $1F
    ccf                                           ; $4FFE: $3F
    adc h                                         ; $4FFF: $8C
    ld a, a                                       ; $5000: $7F
    ld c, $00                                     ; $5001: $0E $00
    ld c, $0E                                     ; $5003: $0E $0E
    nop                                           ; $5005: $00
    ld c, $00                                     ; $5006: $0E $00
    nop                                           ; $5008: $00
    nop                                           ; $5009: $00
    nop                                           ; $500A: $00
    nop                                           ; $500B: $00
    nop                                           ; $500C: $00
    ccf                                           ; $500D: $3F
    adc b                                         ; $500E: $88
    rra                                           ; $500F: $1F
    rrca                                          ; $5010: $0F
    adc b                                         ; $5011: $88
    rra                                           ; $5012: $1F
    ccf                                           ; $5013: $3F
    adc b                                         ; $5014: $88
    ld a, l                                       ; $5015: $7D
    jr c, @-$7E                                   ; $5016: $38 $80

    stop                                          ; $5018: $10 $00
    nop                                           ; $501A: $00
    nop                                           ; $501B: $00
    nop                                           ; $501C: $00
    nop                                           ; $501D: $00
    inc b                                         ; $501E: $04
    ld b, $00                                     ; $501F: $06 $00
    rlca                                          ; $5021: $07
    ld a, a                                       ; $5022: $7F

jr_036_5023:
    adc h                                         ; $5023: $8C
    ld a, a                                       ; $5024: $7F
    ld a, a                                       ; $5025: $7F
    add b                                         ; $5026: $80
    rlca                                          ; $5027: $07
    ld b, $00                                     ; $5028: $06 $00
    inc b                                         ; $502A: $04
    nop                                           ; $502B: $00
    nop                                           ; $502C: $00
    nop                                           ; $502D: $00
    nop                                           ; $502E: $00
    nop                                           ; $502F: $00
    db $10                                        ; $5030: $10
    jr c, jr_036_4FBB                             ; $5031: $38 $88

    ld a, l                                       ; $5033: $7D
    ccf                                           ; $5034: $3F
    adc b                                         ; $5035: $88
    rra                                           ; $5036: $1F
    rrca                                          ; $5037: $0F
    adc b                                         ; $5038: $88
    rra                                           ; $5039: $1F
    ccf                                           ; $503A: $3F
    add b                                         ; $503B: $80
    nop                                           ; $503C: $00
    nop                                           ; $503D: $00
    nop                                           ; $503E: $00
    nop                                           ; $503F: $00
    nop                                           ; $5040: $00
    nop                                           ; $5041: $00
    ld c, $0E                                     ; $5042: $0E $0E
    nop                                           ; $5044: $00
    ld c, $0E                                     ; $5045: $0E $0E
    inc c                                         ; $5047: $0C
    ld a, a                                       ; $5048: $7F
    ccf                                           ; $5049: $3F
    add b                                         ; $504A: $80
    rra                                           ; $504B: $1F
    ld c, $00                                     ; $504C: $0E $00
    inc b                                         ; $504E: $04
    nop                                           ; $504F: $00
    nop                                           ; $5050: $00
    nop                                           ; $5051: $00
    nop                                           ; $5052: $00
    nop                                           ; $5053: $00
    ld bc, $8C23                                  ; $5054: $01 $23 $8C
    scf                                           ; $5057: $37
    ccf                                           ; $5058: $3F
    add b                                         ; $5059: $80
    ccf                                           ; $505A: $3F
    ld a, $00                                     ; $505B: $3E $00
    ccf                                           ; $505D: $3F
    ccf                                           ; $505E: $3F
    add b                                         ; $505F: $80
    nop                                           ; $5060: $00
    nop                                           ; $5061: $00
    nop                                           ; $5062: $00
    nop                                           ; $5063: $00
    nop                                           ; $5064: $00
    nop                                           ; $5065: $00
    inc b                                         ; $5066: $04
    inc c                                         ; $5067: $0C
    nop                                           ; $5068: $00
    inc e                                         ; $5069: $1C
    ccf                                           ; $506A: $3F
    call z, Call_000_3F7F                         ; $506B: $CC $7F $3F
    ret nz                                        ; $506E: $C0

    inc e                                         ; $506F: $1C
    inc c                                         ; $5070: $0C
    nop                                           ; $5071: $00
    inc b                                         ; $5072: $04
    nop                                           ; $5073: $00
    nop                                           ; $5074: $00
    nop                                           ; $5075: $00
    nop                                           ; $5076: $00
    nop                                           ; $5077: $00
    nop                                           ; $5078: $00
    ccf                                           ; $5079: $3F
    add b                                         ; $507A: $80
    ccf                                           ; $507B: $3F
    ld a, $00                                     ; $507C: $3E $00
    ccf                                           ; $507E: $3F
    ccf                                           ; $507F: $3F
    adc h                                         ; $5080: $8C
    scf                                           ; $5081: $37
    inc hl                                        ; $5082: $23
    add b                                         ; $5083: $80
    ld bc, $0000                                  ; $5084: $01 $00 $00
    nop                                           ; $5087: $00
    nop                                           ; $5088: $00
    nop                                           ; $5089: $00
    nop                                           ; $508A: $00
    nop                                           ; $508B: $00
    nop                                           ; $508C: $00
    nop                                           ; $508D: $00
    nop                                           ; $508E: $00
    ld b, $66                                     ; $508F: $06 $66
    ld h, [hl]                                    ; $5091: $66
    ld h, b                                       ; $5092: $60
    nop                                           ; $5093: $00
    nop                                           ; $5094: $00
    nop                                           ; $5095: $00
    nop                                           ; $5096: $00
    nop                                           ; $5097: $00
    nop                                           ; $5098: $00
    nop                                           ; $5099: $00
    rra                                           ; $509A: $1F
    nop                                           ; $509B: $00
    ld de, $0E15                                  ; $509C: $11 $15 $0E
    pop af                                        ; $509F: $F1
    add b                                         ; $50A0: $80
    ld a, [hl+]                                   ; $50A1: $2A
    and b                                         ; $50A2: $A0
    add b                                         ; $50A3: $80
    ld l, $F1                                     ; $50A4: $2E $F1
    dec d                                         ; $50A6: $15
    nop                                           ; $50A7: $00
    ld de, $001F                                  ; $50A8: $11 $1F $00
    nop                                           ; $50AB: $00
    rra                                           ; $50AC: $1F
    ld [$4E20], sp                                ; $50AD: $08 $20 $4E
    ld b, d                                       ; $50B0: $42
    sbc e                                         ; $50B1: $9B
    sbc e                                         ; $50B2: $9B
    ld [hl+], a                                   ; $50B3: $22
    sbc e                                         ; $50B4: $9B
    sbc a                                         ; $50B5: $9F
    ld [hl+], a                                   ; $50B6: $22
    sbc e                                         ; $50B7: $9B

jr_036_50B8:
    ld e, e                                       ; $50B8: $5B
    ld c, b                                       ; $50B9: $48
    jr nz, jr_036_50DB                            ; $50BA: $20 $1F

    nop                                           ; $50BC: $00
    nop                                           ; $50BD: $00
    rra                                           ; $50BE: $1F
    ld [$5E20], sp                                ; $50BF: $08 $20 $5E
    ld b, d                                       ; $50C2: $42
    sbc e                                         ; $50C3: $9B
    sbc e                                         ; $50C4: $9B
    ld [hl+], a                                   ; $50C5: $22
    sbc [hl]                                      ; $50C6: $9E
    sbc e                                         ; $50C7: $9B
    ld [hl+], a                                   ; $50C8: $22
    sbc e                                         ; $50C9: $9B
    ld e, [hl]                                    ; $50CA: $5E
    ld c, b                                       ; $50CB: $48
    jr nz, jr_036_50ED                            ; $50CC: $20 $1F

    nop                                           ; $50CE: $00
    nop                                           ; $50CF: $00
    ld c, $00                                     ; $50D0: $0E $00
    ld c, $06                                     ; $50D2: $0E $06
    nop                                           ; $50D4: $00
    inc b                                         ; $50D5: $04
    ld [$0000], sp                                ; $50D6: $08 $00 $00
    nop                                           ; $50D9: $00
    nop                                           ; $50DA: $00

jr_036_50DB:
    nop                                           ; $50DB: $00
    nop                                           ; $50DC: $00
    nop                                           ; $50DD: $00
    nop                                           ; $50DE: $00
    nop                                           ; $50DF: $00
    nop                                           ; $50E0: $00
    nop                                           ; $50E1: $00
    ld [hl], c                                    ; $50E2: $71
    add $DB                                       ; $50E3: $C6 $DB
    db $DB                                        ; $50E5: $DB
    ld h, [hl]                                    ; $50E6: $66
    db $DB                                        ; $50E7: $DB
    db $DB                                        ; $50E8: $DB
    ld l, h                                       ; $50E9: $6C
    reti                                          ; $50EA: $D9


jr_036_50EB:
    ld a, e                                       ; $50EB: $7B
    ld h, [hl]                                    ; $50EC: $66

jr_036_50ED:
    dec de                                        ; $50ED: $1B
    dec de                                        ; $50EE: $1B
    ld h, [hl]                                    ; $50EF: $66
    dec de                                        ; $50F0: $1B
    pop af                                        ; $50F1: $F1
    ret nz                                        ; $50F2: $C0

    nop                                           ; $50F3: $00
    dec de                                        ; $50F4: $1B
    nop                                           ; $50F5: $00
    dec de                                        ; $50F6: $1B
    add hl, bc                                    ; $50F7: $09
    nop                                           ; $50F8: $00
    ld [de], a                                    ; $50F9: $12

jr_036_50FA:
    nop                                           ; $50FA: $00
    nop                                           ; $50FB: $00
    nop                                           ; $50FC: $00
    nop                                           ; $50FD: $00
    nop                                           ; $50FE: $00
    nop                                           ; $50FF: $00
    nop                                           ; $5100: $00
    nop                                           ; $5101: $00
    nop                                           ; $5102: $00
    nop                                           ; $5103: $00
    nop                                           ; $5104: $00
    nop                                           ; $5105: $00
    nop                                           ; $5106: $00
    nop                                           ; $5107: $00
    nop                                           ; $5108: $00
    ld a, b                                       ; $5109: $78
    ld [hl+], a                                   ; $510A: $22
    ld c, b                                       ; $510B: $48
    xor c                                         ; $510C: $A9
    ld a, [hl+]                                   ; $510D: $2A
    jr jr_036_5118                                ; $510E: $18 $08

    ld c, d                                       ; $5110: $4A
    db $10                                        ; $5111: $10
    db $E3                                        ; $5112: $E3
    nop                                           ; $5113: $00
    nop                                           ; $5114: $00
    nop                                           ; $5115: $00
    nop                                           ; $5116: $00
    nop                                           ; $5117: $00

jr_036_5118:
    nop                                           ; $5118: $00
    nop                                           ; $5119: $00
    inc b                                         ; $511A: $04
    ld a, [bc]                                    ; $511B: $0A
    nop                                           ; $511C: $00
    ld de, $8C20                                  ; $511D: $11 $20 $8C
    ld a, e                                       ; $5120: $7B
    ld a, [bc]                                    ; $5121: $0A
    nop                                           ; $5122: $00
    ld a, [bc]                                    ; $5123: $0A
    ld a, [bc]                                    ; $5124: $0A
    nop                                           ; $5125: $00
    ld c, $00                                     ; $5126: $0E $00
    nop                                           ; $5128: $00
    nop                                           ; $5129: $00
    nop                                           ; $512A: $00
    nop                                           ; $512B: $00
    nop                                           ; $512C: $00
    ccf                                           ; $512D: $3F
    adc b                                         ; $512E: $88
    db $10                                        ; $512F: $10
    ld [$1088], sp                                ; $5130: $08 $88 $10
    ld [hl+], a                                   ; $5133: $22
    adc b                                         ; $5134: $88
    ld b, l                                       ; $5135: $45
    jr z, jr_036_50B8                             ; $5136: $28 $80

    stop                                          ; $5138: $10 $00
    nop                                           ; $513A: $00
    nop                                           ; $513B: $00
    nop                                           ; $513C: $00
    nop                                           ; $513D: $00
    inc b                                         ; $513E: $04
    ld b, $00                                     ; $513F: $06 $00
    dec b                                         ; $5141: $05
    ld a, h                                       ; $5142: $7C
    add h                                         ; $5143: $84
    ld b, b                                       ; $5144: $40
    ld a, h                                       ; $5145: $7C
    add b                                         ; $5146: $80
    dec b                                         ; $5147: $05
    ld b, $00                                     ; $5148: $06 $00
    inc b                                         ; $514A: $04
    nop                                           ; $514B: $00
    nop                                           ; $514C: $00
    nop                                           ; $514D: $00
    nop                                           ; $514E: $00
    nop                                           ; $514F: $00
    db $10                                        ; $5150: $10
    jr z, jr_036_50DB                             ; $5151: $28 $88

    ld b, l                                       ; $5153: $45
    ld [hl+], a                                   ; $5154: $22
    adc b                                         ; $5155: $88
    db $10                                        ; $5156: $10
    ld [$1088], sp                                ; $5157: $08 $88 $10
    ccf                                           ; $515A: $3F
    add b                                         ; $515B: $80
    nop                                           ; $515C: $00
    nop                                           ; $515D: $00
    nop                                           ; $515E: $00
    nop                                           ; $515F: $00
    nop                                           ; $5160: $00
    nop                                           ; $5161: $00
    ld c, $0A                                     ; $5162: $0E $0A
    nop                                           ; $5164: $00
    ld a, [bc]                                    ; $5165: $0A
    ld a, [bc]                                    ; $5166: $0A
    inc c                                         ; $5167: $0C
    ld a, e                                       ; $5168: $7B
    jr nz, jr_036_50EB                            ; $5169: $20 $80

    ld de, $000A                                  ; $516B: $11 $0A $00
    inc b                                         ; $516E: $04
    nop                                           ; $516F: $00
    nop                                           ; $5170: $00
    nop                                           ; $5171: $00
    nop                                           ; $5172: $00
    nop                                           ; $5173: $00
    ld bc, $8422                                  ; $5174: $01 $22 $84
    inc [hl]                                      ; $5177: $34
    jr z, jr_036_50FA                             ; $5178: $28 $80

    ld hl, $0022                                  ; $517A: $21 $22 $00
    ld hl, $803F                                  ; $517D: $21 $3F $80
    nop                                           ; $5180: $00
    nop                                           ; $5181: $00
    nop                                           ; $5182: $00
    nop                                           ; $5183: $00
    nop                                           ; $5184: $00
    nop                                           ; $5185: $00
    inc b                                         ; $5186: $04
    inc c                                         ; $5187: $0C
    nop                                           ; $5188: $00
    inc d                                         ; $5189: $14
    daa                                           ; $518A: $27
    call nz, $2740                                ; $518B: $C4 $40 $27
    ret nz                                        ; $518E: $C0

    inc d                                         ; $518F: $14
    inc c                                         ; $5190: $0C
    nop                                           ; $5191: $00
    inc b                                         ; $5192: $04
    nop                                           ; $5193: $00
    nop                                           ; $5194: $00
    nop                                           ; $5195: $00
    nop                                           ; $5196: $00
    nop                                           ; $5197: $00
    nop                                           ; $5198: $00
    ccf                                           ; $5199: $3F
    add b                                         ; $519A: $80
    ld hl, $0022                                  ; $519B: $21 $22 $00
    ld hl, $8428                                  ; $519E: $21 $28 $84
    inc [hl]                                      ; $51A1: $34
    ld [hl+], a                                   ; $51A2: $22
    add b                                         ; $51A3: $80
    ld bc, $0000                                  ; $51A4: $01 $00 $00
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
    rst RST_38                                    ; $51B7: $FF
    ldh [rP1], a                                  ; $51B8: $E0 $00
    rst RST_38                                    ; $51BA: $FF
    and $80                                       ; $51BB: $E6 $80
    add b                                         ; $51BD: $80
    xor $81                                       ; $51BE: $EE $81
    add e                                         ; $51C0: $83
    xor $87                                       ; $51C1: $EE $87
    adc a                                         ; $51C3: $8F
    xor $9F                                       ; $51C4: $EE $9F
    cp a                                          ; $51C6: $BF
    xor $FF                                       ; $51C7: $EE $FF
    rst RST_38                                    ; $51C9: $FF
    ldh [rP1], a                                  ; $51CA: $E0 $00
    inc b                                         ; $51CC: $04
    nop                                           ; $51CD: $00
    ld [$0010], sp                                ; $51CE: $08 $10 $00
    db $10                                        ; $51D1: $10
    jr nz, jr_036_51D4                            ; $51D2: $20 $00

jr_036_51D4:
    jr nz, @+$22                                  ; $51D4: $20 $20

    nop                                           ; $51D6: $00
    db $10                                        ; $51D7: $10
    stop                                          ; $51D8: $10 $00
    ld [$0004], sp                                ; $51DA: $08 $04 $00
    nop                                           ; $51DD: $00
    inc b                                         ; $51DE: $04
    nop                                           ; $51DF: $00
    ld [bc], a                                    ; $51E0: $02
    ld bc, $0100                                  ; $51E1: $01 $00 $01
    nop                                           ; $51E4: $00
    adc b                                         ; $51E5: $88
    nop                                           ; $51E6: $00
    nop                                           ; $51E7: $00
    add b                                         ; $51E8: $80
    ld bc, $0001                                  ; $51E9: $01 $01 $00
    ld [bc], a                                    ; $51EC: $02
    inc b                                         ; $51ED: $04
    nop                                           ; $51EE: $00
    nop                                           ; $51EF: $00
    rra                                           ; $51F0: $1F
    add b                                         ; $51F1: $80
    ld e, $1C                                     ; $51F2: $1E $1C
    nop                                           ; $51F4: $00
    jr jr_036_520F                                ; $51F5: $18 $18

    nop                                           ; $51F7: $00
    jr jr_036_5212                                ; $51F8: $18 $18

    nop                                           ; $51FA: $00
    jr jr_036_5219                                ; $51FB: $18 $1C

    nop                                           ; $51FD: $00
    ld e, $1F                                     ; $51FE: $1E $1F
    add b                                         ; $5200: $80
    nop                                           ; $5201: $00
    ccf                                           ; $5202: $3F
    nop                                           ; $5203: $00
    rrca                                          ; $5204: $0F
    rlca                                          ; $5205: $07
    nop                                           ; $5206: $00
    inc bc                                        ; $5207: $03
    inc bc                                        ; $5208: $03
    nop                                           ; $5209: $00
    inc bc                                        ; $520A: $03
    inc bc                                        ; $520B: $03
    nop                                           ; $520C: $00
    inc bc                                        ; $520D: $03
    rlca                                          ; $520E: $07

jr_036_520F:
    nop                                           ; $520F: $00
    rrca                                          ; $5210: $0F
    ccf                                           ; $5211: $3F

jr_036_5212:
    nop                                           ; $5212: $00
    nop                                           ; $5213: $00
    rlca                                          ; $5214: $07
    call z, Call_000_0C0F                         ; $5215: $CC $0F $0C
    dec e                                         ; $5218: $1D

jr_036_5219:
    dec c                                         ; $5219: $0D
    dec c                                         ; $521A: $0D
    db $DD                                        ; $521B: $DD
    inc c                                         ; $521C: $0C
    rrca                                          ; $521D: $0F
    call c, Call_000_0007                         ; $521E: $DC $07 $00
    nop                                           ; $5221: $00
    nop                                           ; $5222: $00
    nop                                           ; $5223: $00
    nop                                           ; $5224: $00
    nop                                           ; $5225: $00
    nop                                           ; $5226: $00
    nop                                           ; $5227: $00
    nop                                           ; $5228: $00
    sbc e                                         ; $5229: $9B
    inc sp                                        ; $522A: $33
    sbc e                                         ; $522B: $9B
    sbc e                                         ; $522C: $9B
    inc sp                                        ; $522D: $33
    sbc e                                         ; $522E: $9B
    ei                                            ; $522F: $FB
    rst RST_38                                    ; $5230: $FF
    ld sp, hl                                     ; $5231: $F9
    nop                                           ; $5232: $00
    scf                                           ; $5233: $37
    inc bc                                        ; $5234: $03
    inc bc                                        ; $5235: $03
    ldh [rP1], a                                  ; $5236: $E0 $00
    ld a, h                                       ; $5238: $7C
    rst RST_38                                    ; $5239: $FF
    ld a, [hl]                                    ; $523A: $7E
    ld h, [hl]                                    ; $523B: $66
    call z, Call_036_7E7C                         ; $523C: $CC $7C $7E
    rst RST_38                                    ; $523F: $FF
    ld h, [hl]                                    ; $5240: $66
    ld a, [hl]                                    ; $5241: $7E
    call z, Call_000_007C                         ; $5242: $CC $7C $00
    nop                                           ; $5245: $00
    nop                                           ; $5246: $00
    nop                                           ; $5247: $00

Call_036_5248:
    nop                                           ; $5248: $00
    nop                                           ; $5249: $00
    add [hl]                                      ; $524A: $86
    inc sp                                        ; $524B: $33
    rst RST_08                                    ; $524C: $CF
    reti                                          ; $524D: $D9


    cp e                                          ; $524E: $BB
    reti                                          ; $524F: $D9


    reti                                          ; $5250: $D9


Call_036_5251:
    cp e                                          ; $5251: $BB

Call_036_5252:
    sbc a                                         ; $5252: $9F
    rst RST_18                                    ; $5253: $DF
    cp e                                          ; $5254: $BB
    reti                                          ; $5255: $D9


    nop                                           ; $5256: $00
    nop                                           ; $5257: $00
    nop                                           ; $5258: $00
    nop                                           ; $5259: $00
    nop                                           ; $525A: $00
    nop                                           ; $525B: $00
    ld h, [hl]                                    ; $525C: $66
    nop                                           ; $525D: $00
    halt                                          ; $525E: $76
    ld a, [hl]                                    ; $525F: $7E
    nop                                           ; $5260: $00
    ld a, [hl]                                    ; $5261: $7E
    ld l, [hl]                                    ; $5262: $6E
    nop                                           ; $5263: $00
    ld h, [hl]                                    ; $5264: $66
    ld h, [hl]                                    ; $5265: $66
    nop                                           ; $5266: $00
    ld h, [hl]                                    ; $5267: $66
    nop                                           ; $5268: $00
    nop                                           ; $5269: $00
    nop                                           ; $526A: $00
    nop                                           ; $526B: $00
    nop                                           ; $526C: $00
    nop                                           ; $526D: $00
    nop                                           ; $526E: $00
    nop                                           ; $526F: $00
    cp $C3                                        ; $5270: $FE $C3
    ld b, $C3                                     ; $5272: $06 $C3
    jp $C376                                      ; $5274: $C3 $76 $C3


    cp $66                                        ; $5277: $FE $66
    ret nz                                        ; $5279: $C0

    ret nz                                        ; $527A: $C0

    ld h, [hl]                                    ; $527B: $66
    ret nz                                        ; $527C: $C0

    nop                                           ; $527D: $00
    nop                                           ; $527E: $00
    nop                                           ; $527F: $00
    nop                                           ; $5280: $00
    nop                                           ; $5281: $00
    nop                                           ; $5282: $00
    nop                                           ; $5283: $00
    nop                                           ; $5284: $00
    adc $1B                                       ; $5285: $CE $1B
    nop                                           ; $5287: $00
    dec de                                        ; $5288: $1B
    dec de                                        ; $5289: $1B
    ld b, $1B                                     ; $528A: $06 $1B
    dec de                                        ; $528C: $1B
    ld h, [hl]                                    ; $528D: $66
    ld c, $00                                     ; $528E: $0E $00
    jr nc, jr_036_5292                            ; $5290: $30 $00

jr_036_5292:
    nop                                           ; $5292: $00
    nop                                           ; $5293: $00
    nop                                           ; $5294: $00
    ret nz                                        ; $5295: $C0

    inc bc                                        ; $5296: $03
    ld c, $DB                                     ; $5297: $0E $DB
    ld h, [hl]                                    ; $5299: $66
    db $DB                                        ; $529A: $DB
    rst RST_18                                    ; $529B: $DF
    ld h, [hl]                                    ; $529C: $66
    ret c                                         ; $529D: $D8

    ret c                                         ; $529E: $D8

    ld h, e                                       ; $529F: $63
    rst RST_08                                    ; $52A0: $CF
    add b                                         ; $52A1: $80
    nop                                           ; $52A2: $00
    nop                                           ; $52A3: $00
    nop                                           ; $52A4: $00
    nop                                           ; $52A5: $00
    inc c                                         ; $52A6: $0C
    inc c                                         ; $52A7: $0C
    nop                                           ; $52A8: $00
    rst RST_18                                    ; $52A9: $DF

jr_036_52AA:
    inc c                                         ; $52AA: $0C
    nop                                           ; $52AB: $00
    inc c                                         ; $52AC: $0C
    inc c                                         ; $52AD: $0C
    nop                                           ; $52AE: $00
    inc c                                         ; $52AF: $0C
    inc c                                         ; $52B0: $0C
    nop                                           ; $52B1: $00
    rst RST_00                                    ; $52B2: $C7
    nop                                           ; $52B3: $00
    nop                                           ; $52B4: $00
    nop                                           ; $52B5: $00
    inc b                                         ; $52B6: $04
    nop                                           ; $52B7: $00
    ld a, h                                       ; $52B8: $7C
    rlca                                          ; $52B9: $07
    inc c                                         ; $52BA: $0C
    inc b                                         ; $52BB: $04
    inc a                                         ; $52BC: $3C
    nop                                           ; $52BD: $00
    ld b, [hl]                                    ; $52BE: $46
    add l                                         ; $52BF: $85
    ld b, d                                       ; $52C0: $42
    add l                                         ; $52C1: $85
    adc c                                         ; $52C2: $89
    jr nz, jr_036_5336                            ; $52C3: $20 $71

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
    ld b, $00                                     ; $52DA: $06 $00
    inc b                                         ; $52DC: $04
    inc b                                         ; $52DD: $04
    ld c, [hl]                                    ; $52DE: $4E
    rst RST_38                                    ; $52DF: $FF
    inc b                                         ; $52E0: $04
    nop                                           ; $52E1: $00
    ld b, $0A                                     ; $52E2: $06 $0A
    nop                                           ; $52E4: $00
    add hl, bc                                    ; $52E5: $09
    db $10                                        ; $52E6: $10
    add h                                         ; $52E7: $84
    jr nz, jr_036_52AA                            ; $52E8: $20 $C0

    jr nz, jr_036_52EC                            ; $52EA: $20 $00

jr_036_52EC:
    ld b, $00                                     ; $52EC: $06 $00
    inc b                                         ; $52EE: $04
    inc b                                         ; $52EF: $04
    ld h, h                                       ; $52F0: $64
    halt                                          ; $52F1: $76
    dec d                                         ; $52F2: $15
    add b                                         ; $52F3: $80
    dec d                                         ; $52F4: $15
    inc h                                         ; $52F5: $24
    adc b                                         ; $52F6: $88
    inc h                                         ; $52F7: $24
    ld b, h                                       ; $52F8: $44
    ld b, d                                       ; $52F9: $42
    add h                                         ; $52FA: $84
    inc c                                         ; $52FB: $0C
    nop                                           ; $52FC: $00
    nop                                           ; $52FD: $00
    ccf                                           ; $52FE: $3F
    adc b                                         ; $52FF: $88
    jr nz, jr_036_5341                            ; $5300: $20 $3F

    adc b                                         ; $5302: $88
    jr nz, jr_036_5344                            ; $5303: $20 $3F

    add b                                         ; $5305: $80
    nop                                           ; $5306: $00
    ei                                            ; $5307: $FB
    ldh [c], a                                    ; $5308: $E2
    adc d                                         ; $5309: $8A
    ei                                            ; $530A: $FB
    ldh [c], a                                    ; $530B: $E2
    adc d                                         ; $530C: $8A
    ei                                            ; $530D: $FB
    ldh [rP1], a                                  ; $530E: $E0 $00
    jr jr_036_5316                                ; $5310: $18 $04

    db $10                                        ; $5312: $10
    rst RST_38                                    ; $5313: $FF
    db $E4                                        ; $5314: $E4
    db $10                                        ; $5315: $10

jr_036_5316:
    db $10                                        ; $5316: $10
    ld b, h                                       ; $5317: $44
    db $10                                        ; $5318: $10
    db $10                                        ; $5319: $10
    ld b, h                                       ; $531A: $44
    jr nz, jr_036_5341                            ; $531B: $20 $24

    ld c, b                                       ; $531D: $48
    ld b, d                                       ; $531E: $42
    add c                                         ; $531F: $81
    nop                                           ; $5320: $00
    nop                                           ; $5321: $00
    rst RST_38                                    ; $5322: $FF
    ldh [$FF0A], a                                ; $5323: $E0 $0A
    ld a, a                                       ; $5325: $7F
    call nz, Call_036_7F4A                        ; $5326: $C4 $4A $7F
    ret nz                                        ; $5329: $C0

    ld a, [bc]                                    ; $532A: $0A
    rst RST_38                                    ; $532B: $FF
    ldh [rDIV], a                                 ; $532C: $E0 $04
    ld d, d                                       ; $532E: $52
    ld c, d                                       ; $532F: $4A
    ld d, b                                       ; $5330: $50
    adc a                                         ; $5331: $8F
    add b                                         ; $5332: $80
    nop                                           ; $5333: $00
    nop                                           ; $5334: $00
    ld c, [hl]                                    ; $5335: $4E

jr_036_5336:
    ld a, a                                       ; $5336: $7F
    ld b, h                                       ; $5337: $44
    ld b, h                                       ; $5338: $44
    ld b, h                                       ; $5339: $44
    ld a, a                                       ; $533A: $7F
    call nz, $4444                                ; $533B: $C4 $44 $44
    ld c, h                                       ; $533E: $4C
    ld a, a                                       ; $533F: $7F
    ld b, h                                       ; $5340: $44

jr_036_5341:
    ld b, h                                       ; $5341: $44
    ld b, h                                       ; $5342: $44
    add h                                         ; $5343: $84

jr_036_5344:
    ret nz                                        ; $5344: $C0

    nop                                           ; $5345: $00
    ld bc, $3E80                                  ; $5346: $01 $80 $3E
    inc b                                         ; $5349: $04
    nop                                           ; $534A: $00
    inc b                                         ; $534B: $04
    ld a, a                                       ; $534C: $7F
    ret nz                                        ; $534D: $C0

    inc b                                         ; $534E: $04
    inc b                                         ; $534F: $04
    ld c, [hl]                                    ; $5350: $4E
    rst RST_38                                    ; $5351: $FF
    inc b                                         ; $5352: $04
    nop                                           ; $5353: $00
    inc b                                         ; $5354: $04
    inc e                                         ; $5355: $1C
    nop                                           ; $5356: $00
    nop                                           ; $5357: $00
    inc b                                         ; $5358: $04
    ld c, $7F                                     ; $5359: $0E $7F
    ld b, b                                       ; $535B: $40
    ld b, b                                       ; $535C: $40
    add c                                         ; $535D: $81
    ld bc, $FF0E                                  ; $535E: $01 $0E $FF
    ld bc, $2100                                  ; $5361: $01 $00 $21
    ld de, $1100                                  ; $5364: $11 $00 $11
    rlca                                          ; $5367: $07
    nop                                           ; $5368: $00
    nop                                           ; $5369: $00
    inc b                                         ; $536A: $04
    ld c, $FF                                     ; $536B: $0E $FF
    ccf                                           ; $536D: $3F
    adc b                                         ; $536E: $88
    inc h                                         ; $536F: $24
    ld a, a                                       ; $5370: $7F
    call nz, $FF04                                ; $5371: $C4 $04 $FF
    db $E4                                        ; $5374: $E4
    inc b                                         ; $5375: $04
    ld a, a                                       ; $5376: $7F
    ret nz                                        ; $5377: $C0

    inc b                                         ; $5378: $04
    inc c                                         ; $5379: $0C
    nop                                           ; $537A: $00
    nop                                           ; $537B: $00
    ld [bc], a                                    ; $537C: $02
    add h                                         ; $537D: $84
    ld [bc], a                                    ; $537E: $02
    ld a, a                                       ; $537F: $7F
    ldh [rSCY], a                                 ; $5380: $E0 $42
    ld b, d                                       ; $5382: $42
    ld b, $79                                     ; $5383: $06 $79
    ld c, c                                       ; $5385: $49
    ld c, b                                       ; $5386: $48
    ld c, b                                       ; $5387: $48
    ld c, c                                       ; $5388: $49
    and [hl]                                      ; $5389: $A6
    adc d                                         ; $538A: $8A
    sbc b                                         ; $538B: $98
    jr nz, jr_036_538E                            ; $538C: $20 $00

jr_036_538E:
    ld bc, $1180                                  ; $538E: $01 $80 $11
    ld sp, hl                                     ; $5391: $F9
    ld c, $27                                     ; $5392: $0E $27
    ld hl, $2122                                  ; $5394: $21 $22 $21
    ld hl, $3A22                                  ; $5397: $21 $22 $3A
    ldh [c], a                                    ; $539A: $E2
    ld a, [hl+]                                   ; $539B: $2A
    add h                                         ; $539C: $84
    jr @+$42                                      ; $539D: $18 $40

    nop                                           ; $539F: $00
    ld sp, $2580                                  ; $53A0: $31 $80 $25
    dec h                                         ; $53A3: $25
    ld l, d                                       ; $53A4: $6A
    push af                                       ; $53A5: $F5
    daa                                           ; $53A6: $27
    ld [hl+], a                                   ; $53A7: $22
    dec l                                         ; $53A8: $2D
    dec h                                         ; $53A9: $25
    ld h, b                                       ; $53AA: $60
    dec [hl]                                      ; $53AB: $35
    db $E4                                        ; $53AC: $E4
    ld [bc], a                                    ; $53AD: $02

jr_036_53AE:
    add h                                         ; $53AE: $84
    inc bc                                        ; $53AF: $03
    ldh [rP1], a                                  ; $53B0: $E0 $00
    rst RST_38                                    ; $53B2: $FF
    ldh [rDIV], a                                 ; $53B3: $E0 $04
    inc b                                         ; $53B5: $04
    nop                                           ; $53B6: $00
    rlca                                          ; $53B7: $07
    inc b                                         ; $53B8: $04
    add h                                         ; $53B9: $84
    inc b                                         ; $53BA: $04
    inc b                                         ; $53BB: $04
    nop                                           ; $53BC: $00
    inc b                                         ; $53BD: $04
    inc b                                         ; $53BE: $04
    nop                                           ; $53BF: $00
    inc b                                         ; $53C0: $04
    nop                                           ; $53C1: $00
    nop                                           ; $53C2: $00
    nop                                           ; $53C3: $00
    ld c, a                                       ; $53C4: $4F
    ldh [c], a                                    ; $53C5: $E2
    jr z, jr_036_53CA                             ; $53C6: $28 $02

    adc d                                         ; $53C8: $8A
    add d                                         ; $53C9: $82

jr_036_53CA:
    ld c, h                                       ; $53CA: $4C
    ldh [rSB], a                                  ; $53CB: $E0 $01
    cpl                                           ; $53CD: $2F
    add sp, -$5D                                  ; $53CE: $E8 $A3
    ld h, l                                       ; $53D0: $65
    ld b, d                                       ; $53D1: $42
    ld c, c                                       ; $53D2: $49
    ld b, c                                       ; $53D3: $41
    nop                                           ; $53D4: $00
    nop                                           ; $53D5: $00
    jr nz, jr_036_541C                            ; $53D6: $20 $44

    ld hl, sp+$27                                 ; $53D8: $F8 $27
    db $E4                                        ; $53DA: $E4
    jr nz, @-$04                                  ; $53DB: $20 $FA

    ld b, h                                       ; $53DD: $44
    ld bc, $4421                                  ; $53DE: $01 $21 $44
    ld hl, sp+$20                                 ; $53E1: $F8 $20
    ld c, h                                       ; $53E3: $4C
    add hl, sp                                    ; $53E4: $39
    ldh [$FF80], a                                ; $53E5: $E0 $80
    nop                                           ; $53E7: $00
    jr jr_036_53F8                                ; $53E8: $18 $0E

    db $E3                                        ; $53EA: $E3
    add d                                         ; $53EB: $82
    ld [hl+], a                                   ; $53EC: $22
    add d                                         ; $53ED: $82
    ld a, [$8222]                                 ; $53EE: $FA $22 $82
    adc d                                         ; $53F1: $8A
    ld l, $FA                                     ; $53F2: $2E $FA
    add d                                         ; $53F4: $82
    ld b, b                                       ; $53F5: $40
    ld [bc], a                                    ; $53F6: $02
    ld [bc], a                                    ; $53F7: $02

jr_036_53F8:
    nop                                           ; $53F8: $00
    nop                                           ; $53F9: $00
    nop                                           ; $53FA: $00
    ld c, [hl]                                    ; $53FB: $4E
    rst RST_38                                    ; $53FC: $FF
    nop                                           ; $53FD: $00
    ld b, h                                       ; $53FE: $44
    ld a, [hl]                                    ; $53FF: $7E
    nop                                           ; $5400: $00
    ld b, h                                       ; $5401: $44
    ld a, $22                                     ; $5402: $3E $22
    ld b, h                                       ; $5404: $44
    ld [hl+], a                                   ; $5405: $22
    ld a, $4C                                     ; $5406: $3E $4C
    inc hl                                        ; $5408: $23
    nop                                           ; $5409: $00
    add b                                         ; $540A: $80
    nop                                           ; $540B: $00
    inc b                                         ; $540C: $04
    nop                                           ; $540D: $00
    ld a, [bc]                                    ; $540E: $0A
    ld de, $2008                                  ; $540F: $11 $08 $20
    rst RST_18                                    ; $5412: $DF
    ld h, b                                       ; $5413: $60
    nop                                           ; $5414: $00
    ld a, a                                       ; $5415: $7F
    adc b                                         ; $5416: $88
    ld [$8808], sp                                ; $5417: $08 $08 $88
    dec bc                                        ; $541A: $0B
    add hl, bc                                    ; $541B: $09

jr_036_541C:
    nop                                           ; $541C: $00
    nop                                           ; $541D: $00
    inc b                                         ; $541E: $04
    ld c, $7F                                     ; $541F: $0E $7F
    ld b, b                                       ; $5421: $40
    ld c, b                                       ; $5422: $48
    cp a                                          ; $5423: $BF
    jr nz, jr_036_53AE                            ; $5424: $20 $88

    ccf                                           ; $5426: $3F
    jr nz, jr_036_5431                            ; $5427: $20 $08

    ccf                                           ; $5429: $3F
    jr nz, @-$76                                  ; $542A: $20 $88

    jr nz, @+$41                                  ; $542C: $20 $3F

    add b                                         ; $542E: $80
    nop                                           ; $542F: $00
    ld [hl+], a                                   ; $5430: $22

jr_036_5431:
    adc [hl]                                      ; $5431: $8E
    cpl                                           ; $5432: $2F
    ld b, d                                       ; $5433: $42
    adc b                                         ; $5434: $88
    ld b, d                                       ; $5435: $42
    rst RST_18                                    ; $5436: $DF
    ldh [rLCDC], a                                ; $5437: $E0 $40
    ld b, a                                       ; $5439: $47
    call nz, Call_036_4744                        ; $543A: $C4 $44 $47
    call nz, Call_036_4744                        ; $543D: $C4 $44 $47
    ret nz                                        ; $5440: $C0

    nop                                           ; $5441: $00
    ld sp, $2180                                  ; $5442: $31 $80 $21
    or c                                          ; $5445: $B1
    ld l, $B7                                     ; $5446: $2E $B7
    and d                                         ; $5448: $A2
    nop                                           ; $5449: $00
    ld [hl+], a                                   ; $544A: $22
    ld [hl+], a                                   ; $544B: $22
    nop                                           ; $544C: $00
    ld [hl+], a                                   ; $544D: $22
    ld [hl+], a                                   ; $544E: $22
    nop                                           ; $544F: $00
    ld [hl+], a                                   ; $5450: $22
    ld hl, $00E0                                  ; $5451: $21 $E0 $00

jr_036_5454:
    nop                                           ; $5454: $00
    adc h                                         ; $5455: $8C
    ld a, a                                       ; $5456: $7F
    ld b, b                                       ; $5457: $40
    adc b                                         ; $5458: $88
    ld b, b                                       ; $5459: $40
    ld b, b                                       ; $545A: $40
    adc b                                         ; $545B: $88
    ld a, a                                       ; $545C: $7F
    ld b, b                                       ; $545D: $40
    adc b                                         ; $545E: $88
    ld b, b                                       ; $545F: $40
    ld b, b                                       ; $5460: $40
    adc b                                         ; $5461: $88
    ld a, a                                       ; $5462: $7F
    ld b, b                                       ; $5463: $40
    add b                                         ; $5464: $80
    nop                                           ; $5465: $00
    ld [bc], a                                    ; $5466: $02
    adc d                                         ; $5467: $8A
    jp z, $C826                                   ; $5468: $CA $26 $C8

    ld [bc], a                                    ; $546B: $02
    and $CA                                       ; $546C: $E6 $CA
    ld a, [hl+]                                   ; $546E: $2A
    ld [hl+], a                                   ; $546F: $22
    adc d                                         ; $5470: $8A
    inc h                                         ; $5471: $24
    jr z, jr_036_5454                             ; $5472: $28 $E0

    ld h, b                                       ; $5474: $60
    sbc a                                         ; $5475: $9F
    ldh [rP1], a                                  ; $5476: $E0 $00
    ld b, $08                                     ; $5478: $06 $08
    inc h                                         ; $547A: $24
    inc h                                         ; $547B: $24
    adc b                                         ; $547C: $88
    inc h                                         ; $547D: $24
    ccf                                           ; $547E: $3F
    add b                                         ; $547F: $80
    inc b                                         ; $5480: $04
    ld b, h                                       ; $5481: $44
    ld b, h                                       ; $5482: $44
    ld b, h                                       ; $5483: $44
    ld b, h                                       ; $5484: $44
    ld c, h                                       ; $5485: $4C
    ld a, a                                       ; $5486: $7F
    ld b, b                                       ; $5487: $40
    ld b, b                                       ; $5488: $40
    nop                                           ; $5489: $00
    ld [bc], a                                    ; $548A: $02
    nop                                           ; $548B: $00
    rra                                           ; $548C: $1F
    ld [bc], a                                    ; $548D: $02
    nop                                           ; $548E: $00
    ld [bc], a                                    ; $548F: $02
    dec b                                         ; $5490: $05
    nop                                           ; $5491: $00
    dec b                                         ; $5492: $05
    add hl, bc                                    ; $5493: $09
    ld [$1008], sp                                ; $5494: $08 $08 $10
    add h                                         ; $5497: $84
    jr nz, jr_036_54DA                            ; $5498: $20 $40

    jr nz, jr_036_549C                            ; $549A: $20 $00

jr_036_549C:
    ld hl, $2F0E                                  ; $549C: $21 $0E $2F
    ld b, c                                       ; $549F: $41
    ld c, $4F                                     ; $54A0: $0E $4F
    ret                                           ; $54A2: $C9


    ld l, $4F                                     ; $54A3: $2E $4F
    ld b, c                                       ; $54A5: $41
    nop                                           ; $54A6: $00
    ld b, l                                       ; $54A7: $45
    ld b, d                                       ; $54A8: $42
    ld [$5845], sp                                ; $54A9: $08 $45 $58
    ld h, b                                       ; $54AC: $60
    nop                                           ; $54AD: $00
    inc b                                         ; $54AE: $04
    ld c, $7F                                     ; $54AF: $0E $7F
    ld b, b                                       ; $54B1: $40
    ld b, b                                       ; $54B2: $40
    sbc a                                         ; $54B3: $9F
    inc b                                         ; $54B4: $04
    inc b                                         ; $54B5: $04
    inc b                                         ; $54B6: $04
    rst RST_38                                    ; $54B7: $FF
    ldh [rDIV], a                                 ; $54B8: $E0 $04
    inc b                                         ; $54BA: $04
    nop                                           ; $54BB: $00

jr_036_54BC:
    inc e                                         ; $54BC: $1C
    ld [$0000], sp                                ; $54BD: $08 $00 $00
    inc b                                         ; $54C0: $04
    ld c, $7F                                     ; $54C1: $0E $7F
    ld b, b                                       ; $54C3: $40
    ld b, b                                       ; $54C4: $40
    add h                                         ; $54C5: $84
    ld a, a                                       ; $54C6: $7F
    call nz, $4444                                ; $54C7: $C4 $44 $44
    ld c, h                                       ; $54CA: $4C
    ld a, a                                       ; $54CB: $7F
    ld b, h                                       ; $54CC: $44
    ld b, h                                       ; $54CD: $44
    ld b, h                                       ; $54CE: $44
    ld a, a                                       ; $54CF: $7F
    ret nz                                        ; $54D0: $C0

    nop                                           ; $54D1: $00
    nop                                           ; $54D2: $00
    adc h                                         ; $54D3: $8C
    ld a, a                                       ; $54D4: $7F
    inc h                                         ; $54D5: $24
    adc b                                         ; $54D6: $88
    inc h                                         ; $54D7: $24
    inc d                                         ; $54D8: $14
    add b                                         ; $54D9: $80

jr_036_54DA:
    dec d                                         ; $54DA: $15
    rst RST_38                                    ; $54DB: $FF
    ldh [rDIV], a                                 ; $54DC: $E0 $04
    inc b                                         ; $54DE: $04
    nop                                           ; $54DF: $00
    inc b                                         ; $54E0: $04
    inc b                                         ; $54E1: $04
    nop                                           ; $54E2: $00
    nop                                           ; $54E3: $00
    inc c                                         ; $54E4: $0C
    nop                                           ; $54E5: $00
    ld [hl], b                                    ; $54E6: $70
    ld de, $FDE2                                  ; $54E7: $11 $E2 $FD
    ld de, $3922                                  ; $54EA: $11 $22 $39
    dec [hl]                                      ; $54ED: $35
    ld [hl+], a                                   ; $54EE: $22
    ld d, l                                       ; $54EF: $55
    sub c                                         ; $54F0: $91
    ldh [c], a                                    ; $54F1: $E2
    ld de, $0010                                  ; $54F2: $11 $10 $00
    nop                                           ; $54F5: $00
    dec de                                        ; $54F6: $1B
    nop                                           ; $54F7: $00
    ldh [c], a                                    ; $54F8: $E2

jr_036_54F9:
    ld [hl+], a                                   ; $54F9: $22
    nop                                           ; $54FA: $00
    ld a, [$0022]                                 ; $54FB: $FA $22 $00
    ld [hl+], a                                   ; $54FE: $22
    ld a, [$8A00]                                 ; $54FF: $FA $00 $8A
    adc d                                         ; $5502: $8A
    ld [hl+], a                                   ; $5503: $22
    ld a, [$E089]                                 ; $5504: $FA $89 $E0
    nop                                           ; $5507: $00
    ei                                            ; $5508: $FB
    ldh [c], a                                    ; $5509: $E2
    xor b                                         ; $550A: $A8
    ld sp, hl                                     ; $550B: $F9
    ld c, b                                       ; $550C: $48
    xor b                                         ; $550D: $A8
    ei                                            ; $550E: $FB
    ld [$2020], a                                 ; $550F: $EA $20 $20
    ret z                                         ; $5512: $C8

    ld hl, sp+$20                                 ; $5513: $F8 $20
    adc b                                         ; $5515: $88

jr_036_5516:
    jr c, jr_036_54F9                             ; $5516: $38 $E1

    add b                                         ; $5518: $80
    nop                                           ; $5519: $00
    ld hl, $FDE2                                  ; $551A: $21 $E2 $FD
    ld b, c                                       ; $551D: $41
    ldh [c], a                                    ; $551E: $E2
    ld b, c                                       ; $551F: $41
    dec a                                         ; $5520: $3D
    ldh [c], a                                    ; $5521: $E2
    ld [bc], a                                    ; $5522: $02
    ld a, a                                       ; $5523: $7F
    ret nz                                        ; $5524: $C0

    inc b                                         ; $5525: $04
    ccf                                           ; $5526: $3F
    add b                                         ; $5527: $80
    inc b                                         ; $5528: $04
    rst RST_38                                    ; $5529: $FF
    ldh [rP1], a                                  ; $552A: $E0 $00
    jr nc, jr_036_5532                            ; $552C: $30 $04

    jr nz, jr_036_5557                            ; $552E: $20 $27

    add sp, -$08                                  ; $5530: $E8 $F8

jr_036_5532:
    jr nz, jr_036_54BC                            ; $5532: $20 $88

    jr c, jr_036_5516                             ; $5534: $38 $E0

    adc b                                         ; $5536: $88
    and b                                         ; $5537: $A0
    jr nz, @-$76                                  ; $5538: $20 $88

    jr nz, jr_036_559D                            ; $553A: $20 $61

    add b                                         ; $553C: $80
    nop                                           ; $553D: $00
    ld de, $F70C                                  ; $553E: $11 $0C $F7
    ld b, c                                       ; $5541: $41
    ld b, h                                       ; $5542: $44
    ld b, d                                       ; $5543: $42
    ld [hl], h                                    ; $5544: $74
    ld h, b                                       ; $5545: $60
    ld d, c                                       ; $5546: $51
    pop de                                        ; $5547: $D1
    ld c, $57                                     ; $5548: $0E $57
    ld d, c                                       ; $554A: $51
    nop                                           ; $554B: $00
    ld [hl], c                                    ; $554C: $71
    ld bc, $0000                                  ; $554D: $01 $00 $00
    ld b, b                                       ; $5550: $40
    adc h                                         ; $5551: $8C
    ld a, a                                       ; $5552: $7F
    xor d                                         ; $5553: $AA
    adc d                                         ; $5554: $8A
    ld a, [hl+]                                   ; $5555: $2A
    rst RST_38                                    ; $5556: $FF

jr_036_5557:
    add sp, $2A                                   ; $5557: $E8 $2A
    ld a, [hl+]                                   ; $5559: $2A
    adc h                                         ; $555A: $8C
    ld a, a                                       ; $555B: $7F
    nop                                           ; $555C: $00
    inc b                                         ; $555D: $04
    ld d, d                                       ; $555E: $52
    adc c                                         ; $555F: $89
    jr nz, jr_036_5562                            ; $5560: $20 $00

jr_036_5562:
    ld hl, $F982                                  ; $5562: $21 $82 $F9
    ld d, c                                       ; $5565: $51
    db $E4                                        ; $5566: $E4
    ld a, [$44AA]                                 ; $5567: $FA $AA $44
    db $FD                                        ; $556A: $FD
    xor c                                         ; $556B: $A9
    ld c, b                                       ; $556C: $48
    ld hl, sp-$27                                 ; $556D: $F8 $D9
    ld b, h                                       ; $556F: $44
    ld a, [$208C]                                 ; $5570: $FA $8C $20
    nop                                           ; $5573: $00
    ld bc, $F204                                  ; $5574: $01 $04 $F2
    rla                                           ; $5577: $17
    ldh [rNR11], a                                ; $5578: $E0 $11
    ld [hl], c                                    ; $557A: $71
    ld c, $47                                     ; $557B: $0E $47
    push af                                       ; $557D: $F5
    ld l, $17                                     ; $557E: $2E $17
    ld de, $1104                                  ; $5580: $11 $04 $11
    rst RST_20                                    ; $5583: $E7
    and b                                         ; $5584: $A0
    nop                                           ; $5585: $00
    ccf                                           ; $5586: $3F
    adc b                                         ; $5587: $88
    jr nz, jr_036_55C9                            ; $5588: $20 $3F

    add b                                         ; $558A: $80
    ld de, $C07F                                  ; $558B: $11 $7F $C0
    ld de, $E8FF                                  ; $558E: $11 $FF $E8
    inc h                                         ; $5591: $24
    push de                                       ; $5592: $D5
    ld h, b                                       ; $5593: $60
    ld c, $35                                     ; $5594: $0E $35
    add b                                         ; $5596: $80
    nop                                           ; $5597: $00
    inc b                                         ; $5598: $04
    inc c                                         ; $5599: $0C
    ld a, a                                       ; $559A: $7F
    inc b                                         ; $559B: $04
    inc b                                         ; $559C: $04

jr_036_559D:
    inc b                                         ; $559D: $04
    rst RST_38                                    ; $559E: $FF
    ldh [rDIV], a                                 ; $559F: $E0 $04
    inc [hl]                                      ; $55A1: $34
    inc c                                         ; $55A2: $0C
    daa                                           ; $55A3: $27
    inc [hl]                                      ; $55A4: $34
    nop                                           ; $55A5: $00
    ld c, h                                       ; $55A6: $4C
    add e                                         ; $55A7: $83
    ldh [rP1], a                                  ; $55A8: $E0 $00
    ld de, $7F0C                                  ; $55AA: $11 $0C $7F
    ld de, $1F00                                  ; $55AD: $11 $00 $1F
    rra                                           ; $55B0: $1F
    nop                                           ; $55B1: $00
    ld de, $E4FF                                  ; $55B2: $11 $FF $E4
    ld b, h                                       ; $55B5: $44
    sbc a                                         ; $55B6: $9F
    jr nz, jr_036_55BD                            ; $55B7: $20 $04

    ld a, a                                       ; $55B9: $7F
    ret nz                                        ; $55BA: $C0

    nop                                           ; $55BB: $00
    nop                                           ; $55BC: $00

jr_036_55BD:
    adc [hl]                                      ; $55BD: $8E
    rst RST_30                                    ; $55BE: $F7
    ld b, h                                       ; $55BF: $44
    xor b                                         ; $55C0: $A8
    ld b, h                                       ; $55C1: $44
    ld [hl], a                                    ; $55C2: $77
    ldh [c], a                                    ; $55C3: $E2
    ld d, l                                       ; $55C4: $55
    push de                                       ; $55C5: $D5
    inc l                                         ; $55C6: $2C
    ld d, h                                       ; $55C7: $54
    ld d, h                                       ; $55C8: $54

jr_036_55C9:
    add h                                         ; $55C9: $84
    ld [hl], l                                    ; $55CA: $75
    ld a, [bc]                                    ; $55CB: $0A
    jr nz, jr_036_55CE                            ; $55CC: $20 $00

jr_036_55CE:
    ld hl, $3F0E                                  ; $55CE: $21 $0E $3F
    cpl                                           ; $55D1: $2F
    ld [$2FFA], a                                 ; $55D2: $EA $FA $2F
    ldh [rNR42], a                                ; $55D5: $E0 $21
    cpl                                           ; $55D7: $2F
    add sp, $32                                   ; $55D8: $E8 $32
    call z, $14A4                                 ; $55DA: $CC $A4 $14
    rlca                                          ; $55DD: $07
    jr nz, jr_036_55E0                            ; $55DE: $20 $00

jr_036_55E0:
    ld [hl+], a                                   ; $55E0: $22
    inc c                                         ; $55E1: $0C
    ccf                                           ; $55E2: $3F
    ld b, l                                       ; $55E3: $45
    ld [$DF4A], sp                                ; $55E4: $08 $4A $DF
    jp z, Jump_036_4F6A                           ; $55E7: $CA $6A $4F

    adc b                                         ; $55EA: $88
    ld c, d                                       ; $55EB: $4A
    ld c, a                                       ; $55EC: $4F
    add d                                         ; $55ED: $82
    ld c, d                                       ; $55EE: $4A
    ld b, e                                       ; $55EF: $43
    ldh [rP1], a                                  ; $55F0: $E0 $00
    inc h                                         ; $55F2: $24
    ld c, b                                       ; $55F3: $48
    ld [hl+], a                                   ; $55F4: $22
    rst RST_30                                    ; $55F5: $F7
    ldh [rNR42], a                                ; $55F6: $E0 $21
    cpl                                           ; $55F8: $2F
    ldh [$FF71], a                                ; $55F9: $E0 $71
    ld l, a                                       ; $55FB: $6F
    ldh [$FFA1], a                                ; $55FC: $E0 $A1
    dec hl                                        ; $55FE: $2B
    and h                                         ; $55FF: $A4
    dec h                                         ; $5600: $25
    add hl, hl                                    ; $5601: $29
    jr nz, jr_036_5604                            ; $5602: $20 $00

jr_036_5604:
    ld a, l                                       ; $5604: $7D
    add sp, $50                                   ; $5605: $E8 $50
    ld a, l                                       ; $5607: $7D
    ldh [c], a                                    ; $5608: $E2
    ld b, l                                       ; $5609: $45
    ld a, l                                       ; $560A: $7D
    ldh [c], a                                    ; $560B: $E2
    ld b, l                                       ; $560C: $45
    ld a, l                                       ; $560D: $7D
    ldh [c], a                                    ; $560E: $E2
    ld d, c                                       ; $560F: $51
    ld d, l                                       ; $5610: $55
    ldh [$FF94], a                                ; $5611: $E0 $94
    ld sp, $0020                                  ; $5613: $31 $20 $00
    ld b, d                                       ; $5616: $42
    nop                                           ; $5617: $00
    ld [hl+], a                                   ; $5618: $22
    adc a                                         ; $5619: $8F
    adc b                                         ; $561A: $88
    ld b, d                                       ; $561B: $42
    ld [bc], a                                    ; $561C: $02
    xor [hl]                                      ; $561D: $AE
    cpl                                           ; $561E: $2F
    ld [hl+], a                                   ; $561F: $22
    nop                                           ; $5620: $00
    and l                                         ; $5621: $A5
    ld b, l                                       ; $5622: $45
    ld [$5048], sp                                ; $5623: $08 $48 $50
    ld h, b                                       ; $5626: $60
    nop                                           ; $5627: $00
    ld de, $FF0E                                  ; $5628: $11 $0E $FF
    inc b                                         ; $562B: $04
    inc c                                         ; $562C: $0C
    ld a, a                                       ; $562D: $7F
    inc b                                         ; $562E: $04
    ld c, $FF                                     ; $562F: $0E $FF
    db $10                                        ; $5631: $10
    ld c, h                                       ; $5632: $4C
    ccf                                           ; $5633: $3F
    ld e, a                                       ; $5634: $5F
    call nz, Call_000_1F90                        ; $5635: $C4 $90 $1F
    ret nz                                        ; $5638: $C0

jr_036_5639:
    nop                                           ; $5639: $00
    rst RST_30                                    ; $563A: $F7
    call nz, $A794                                ; $563B: $C4 $94 $A7
    call nz, $A7C4                                ; $563E: $C4 $C4 $A7
    ret nz                                        ; $5641: $C0

    sub l                                         ; $5642: $95
    sub l                                         ; $5643: $95
    inc l                                         ; $5644: $2C
    sub h                                         ; $5645: $94
    db $E4                                        ; $5646: $E4
    add h                                         ; $5647: $84
    add a                                         ; $5648: $87
    adc h                                         ; $5649: $8C
    jr nz, jr_036_564C                            ; $564A: $20 $00

jr_036_564C:
    inc bc                                        ; $564C: $03
    nop                                           ; $564D: $00
    ld [bc], a                                    ; $564E: $02
    inc d                                         ; $564F: $14
    cpl                                           ; $5650: $2F
    rra                                           ; $5651: $1F
    db $10                                        ; $5652: $10
    ld l, $1F                                     ; $5653: $2E $1F
    db $10                                        ; $5655: $10
    ld l, $1F                                     ; $5656: $2E $1F
    db $10                                        ; $5658: $10
    ld l, $1F                                     ; $5659: $2E $1F
    db $10                                        ; $565B: $10
    jr nz, jr_036_565E                            ; $565C: $20 $00

jr_036_565E:
    ld hl, $3942                                  ; $565E: $21 $42 $39
    ld c, a                                       ; $5661: $4F
    ldh [$FFB1], a                                ; $5662: $E0 $B1
    ld d, d                                       ; $5664: $52
    adc b                                         ; $5665: $88
    ld [hl+], a                                   ; $5666: $22
    ld b, h                                       ; $5667: $44
    ld b, d                                       ; $5668: $42
    adc b                                         ; $5669: $88
    nop                                           ; $566A: $00
    inc b                                         ; $566B: $04
    ld d, d                                       ; $566C: $52
    adc c                                         ; $566D: $89
    jr nz, jr_036_5670                            ; $566E: $20 $00

jr_036_5670:
    nop                                           ; $5670: $00
    ld c, [hl]                                    ; $5671: $4E
    rst RST_38                                    ; $5672: $FF
    add b                                         ; $5673: $80
    ld b, h                                       ; $5674: $44
    sbc [hl]                                      ; $5675: $9E
    sub d                                         ; $5676: $92
    ld b, h                                       ; $5677: $44
    sub d                                         ; $5678: $92
    sbc [hl]                                      ; $5679: $9E
    ld b, h                                       ; $567A: $44
    sub d                                         ; $567B: $92
    add b                                         ; $567C: $80

jr_036_567D:
    ld c, h                                       ; $567D: $4C
    rst RST_38                                    ; $567E: $FF
    add b                                         ; $567F: $80
    ld b, b                                       ; $5680: $40
    nop                                           ; $5681: $00
    inc h                                         ; $5682: $24
    ld c, $4F                                     ; $5683: $0E $4F
    or h                                          ; $5685: $B4
    ld c, h                                       ; $5686: $4C
    daa                                           ; $5687: $27
    ld b, h                                       ; $5688: $44
    ld c, h                                       ; $5689: $4C
    rst RST_00                                    ; $568A: $C7
    ld b, d                                       ; $568B: $42
    inc c                                         ; $568C: $0C
    ld b, a                                       ; $568D: $47
    ld e, d                                       ; $568E: $5A
    ld c, b                                       ; $568F: $48

jr_036_5690:
    ld b, c                                       ; $5690: $41
    ld e, [hl]                                    ; $5691: $5E
    ld h, b                                       ; $5692: $60
    nop                                           ; $5693: $00
    nop                                           ; $5694: $00
    adc h                                         ; $5695: $8C
    ld a, a                                       ; $5696: $7F
    ld b, b                                       ; $5697: $40
    adc b                                         ; $5698: $88
    ld b, b                                       ; $5699: $40
    ld b, b                                       ; $569A: $40
    adc b                                         ; $569B: $88
    ld a, a                                       ; $569C: $7F
    ld [de], a                                    ; $569D: $12
    nop                                           ; $569E: $00
    ld [de], a                                    ; $569F: $12
    ld [hl+], a                                   ; $56A0: $22
    ld b, [hl]                                    ; $56A1: $46
    ld b, d                                       ; $56A2: $42
    add c                                         ; $56A3: $81
    ret nz                                        ; $56A4: $C0

    nop                                           ; $56A5: $00
    inc b                                         ; $56A6: $04
    ld [$243F], sp                                ; $56A7: $08 $3F $24

Call_036_56AA:
    adc [hl]                                      ; $56AA: $8E
    rst RST_38                                    ; $56AB: $FF
    jr nz, @-$76                                  ; $56AC: $20 $88

    ccf                                           ; $56AE: $3F
    jr nz, jr_036_5639                            ; $56AF: $20 $88

    ccf                                           ; $56B1: $3F
    jr nz, @-$76                                  ; $56B2: $20 $88

    ccf                                           ; $56B4: $3F
    ld [hl], c                                    ; $56B5: $71
    ret nz                                        ; $56B6: $C0

    nop                                           ; $56B7: $00
    jr nc, jr_036_56C8                            ; $56B8: $30 $0E

    inc hl                                        ; $56BA: $23
    ld sp, hl                                     ; $56BB: $F9
    ld [hl+], a                                   ; $56BC: $22
    ld hl, $60FA                                  ; $56BD: $21 $FA $60
    jr nz, jr_036_567D                            ; $56C0: $20 $BB

    ldh [c], a                                    ; $56C2: $E2
    and d                                         ; $56C3: $A2
    and e                                         ; $56C4: $A3
    ldh [$FFE0], a                                ; $56C5: $E0 $E0
    sbc a                                         ; $56C7: $9F

jr_036_56C8:
    ldh [rP1], a                                  ; $56C8: $E0 $00
    ld sp, $2140                                  ; $56CA: $31 $40 $21
    rst RST_30                                    ; $56CD: $F7
    add sp, $24                                   ; $56CE: $E8 $24
    db $F4                                        ; $56D0: $F4
    adc d                                         ; $56D1: $8A
    inc h                                         ; $56D2: $24
    or h                                          ; $56D3: $B4
    ld c, h                                       ; $56D4: $4C
    and [hl]                                      ; $56D5: $A6
    and l                                         ; $56D6: $A5
    jr nz, @-$1E                                  ; $56D7: $20 $E0

    sbc a                                         ; $56D9: $9F
    ldh [rP1], a                                  ; $56DA: $E0 $00
    jr @+$2C                                      ; $56DC: $18 $2A

    ld d, c                                       ; $56DE: $51
    ld a, l                                       ; $56DF: $7D
    ld [hl+], a                                   ; $56E0: $22
    sub c                                         ; $56E1: $91

jr_036_56E2:
    ld a, l                                       ; $56E2: $7D
    ld [hl+], a                                   ; $56E3: $22
    ld de, $227D                                  ; $56E4: $11 $7D $22
    ld d, l                                       ; $56E7: $55
    ld d, h                                       ; $56E8: $54
    ld a, [hl+]                                   ; $56E9: $2A
    ld e, h                                       ; $56EA: $5C
    db $10                                        ; $56EB: $10
    ld h, b                                       ; $56EC: $60
    nop                                           ; $56ED: $00
    ld c, b                                       ; $56EE: $48
    ld c, $8E                                     ; $56EF: $0E $8E
    inc h                                         ; $56F1: $24
    xor d                                         ; $56F2: $AA
    ld e, [hl]                                    ; $56F3: $5E
    call nz, Call_036_56AA                        ; $56F4: $C4 $AA $56
    ld d, h                                       ; $56F7: $54
    xor d                                         ; $56F8: $AA
    ld d, h                                       ; $56F9: $54
    ld e, [hl]                                    ; $56FA: $5E
    add sp, $58                                   ; $56FB: $E8 $58
    ld b, b                                       ; $56FD: $40
    add b                                         ; $56FE: $80
    nop                                           ; $56FF: $00
    jr nz, jr_036_5690                            ; $5700: $20 $8E

    ld b, a                                       ; $5702: $47
    sub b                                         ; $5703: $90
    adc b                                         ; $5704: $88
    ld h, b                                       ; $5705: $60
    ld c, e                                       ; $5706: $4B
    ldh [$FFF8], a                                ; $5707: $E0 $F8
    jr nz, jr_036_5719                            ; $5709: $20 $0E

    xor e                                         ; $570B: $AB
    xor d                                         ; $570C: $AA
    ld [hl+], a                                   ; $570D: $22
    xor d                                         ; $570E: $AA
    inc hl                                        ; $570F: $23
    ldh [rP1], a                                  ; $5710: $E0 $00
    ccf                                           ; $5712: $3F
    call nz, Call_000_3F20                        ; $5713: $C4 $20 $3F
    ret nz                                        ; $5716: $C0

    jr nz, jr_036_5758                            ; $5717: $20 $3F

jr_036_5719:
    ldh [c], a                                    ; $5719: $E2
    jr nz, jr_036_574B                            ; $571A: $20 $2F

    ld [hl+], a                                   ; $571C: $22
    ld c, c                                       ; $571D: $49
    ld c, a                                       ; $571E: $4F
    ld [hl+], a                                   ; $571F: $22
    add b                                         ; $5720: $80
    nop                                           ; $5721: $00
    ret nz                                        ; $5722: $C0

    nop                                           ; $5723: $00
    ld [hl], l                                    ; $5724: $75
    ld c, h                                       ; $5725: $4C
    ld d, a                                       ; $5726: $57
    ld d, d                                       ; $5727: $52
    adc [hl]                                      ; $5728: $8E
    ld a, a                                       ; $5729: $7F
    ld d, h                                       ; $572A: $54
    ld b, d                                       ; $572B: $42
    ld e, c                                       ; $572C: $59
    ld [hl], a                                    ; $572D: $77
    call nz, Call_036_5251                        ; $572E: $C4 $51 $52
    ld b, h                                       ; $5731: $44
    ld d, d                                       ; $5732: $52
    or h                                          ; $5733: $B4
    ret nz                                        ; $5734: $C0

    nop                                           ; $5735: $00
    pop af                                        ; $5736: $F1
    xor $F1                                       ; $5737: $EE $F1
    sub c                                         ; $5739: $91
    ld l, $F1                                     ; $573A: $2E $F1
    cp h                                          ; $573C: $BC
    xor [hl]                                      ; $573D: $AE
    add e                                         ; $573E: $83
    cp h                                          ; $573F: $BC
    xor d                                         ; $5740: $AA
    and l                                         ; $5741: $A5
    cp h                                          ; $5742: $BC
    xor d                                         ; $5743: $AA
    sub h                                         ; $5744: $94
    cp c                                          ; $5745: $B9
    and b                                         ; $5746: $A0
    nop                                           ; $5747: $00
    inc c                                         ; $5748: $0C
    nop                                           ; $5749: $00
    ld [bc], a                                    ; $574A: $02

jr_036_574B:
    ld [bc], a                                    ; $574B: $02
    ret z                                         ; $574C: $C8

    jr @+$13                                      ; $574D: $18 $11

    inc b                                         ; $574F: $04
    ld d, d                                       ; $5750: $52
    ld d, h                                       ; $5751: $54
    ld [hl+], a                                   ; $5752: $22
    sbc b                                         ; $5753: $98
    jr nc, jr_036_56E2                            ; $5754: $30 $8C

    ret nc                                        ; $5756: $D0

    rrca                                          ; $5757: $0F

jr_036_5758:
    add b                                         ; $5758: $80
    nop                                           ; $5759: $00
    ld l, e                                       ; $575A: $6B
    adc b                                         ; $575B: $88
    ld [de], a                                    ; $575C: $12
    ld [hl-], a                                   ; $575D: $32
    xor [hl]                                      ; $575E: $AE
    call nc, Call_000_0C20                        ; $575F: $D4 $20 $0C
    daa                                           ; $5762: $27
    ld a, [$2244]                                 ; $5763: $FA $44 $22
    ld [hl], c                                    ; $5766: $71
    adc b                                         ; $5767: $88
    xor c                                         ; $5768: $A9
    ld h, $60                                     ; $5769: $26 $60
    nop                                           ; $576B: $00
    ld sp, $2180                                  ; $576C: $31 $80 $21
    rst RST_30                                    ; $576F: $F7
    ldh [rNR42], a                                ; $5770: $E0 $21
    ld hl, $370C                                  ; $5772: $21 $0C $37
    jr nz, jr_036_57BF                            ; $5775: $20 $48

    ld h, d                                       ; $5777: $62
    and c                                         ; $5778: $A1
    ld [$6C22], sp                                ; $5779: $08 $22 $6C
    ld h, b                                       ; $577C: $60
    nop                                           ; $577D: $00
    nop                                           ; $577E: $00
    ld c, [hl]                                    ; $577F: $4E
    rst RST_30                                    ; $5780: $F7
    sub h                                         ; $5781: $94
    ld b, h                                       ; $5782: $44
    sub h                                         ; $5783: $94
    sub h                                         ; $5784: $94
    ld b, h                                       ; $5785: $44
    sub h                                         ; $5786: $94
    sub h                                         ; $5787: $94
    ld b, h                                       ; $5788: $44
    db $F4                                        ; $5789: $F4
    add h                                         ; $578A: $84
    ret nz                                        ; $578B: $C0

    inc b                                         ; $578C: $04
    inc b                                         ; $578D: $04
    nop                                           ; $578E: $00
    nop                                           ; $578F: $00
    ld b, d                                       ; $5790: $42
    inc c                                         ; $5791: $0C
    cpl                                           ; $5792: $2F
    ld a, [bc]                                    ; $5793: $0A
    ld c, [hl]                                    ; $5794: $4E
    sbc a                                         ; $5795: $9F
    ld c, a                                       ; $5796: $4F
    call nz, Call_000_0F08                        ; $5797: $C4 $08 $0F
    call z, Call_036_484F                         ; $579A: $CC $4F $48
    ld c, h                                       ; $579D: $4C
    adc a                                         ; $579E: $8F
    sub b                                         ; $579F: $90
    jr nz, jr_036_57A2                            ; $57A0: $20 $00

jr_036_57A2:
    ld bc, $7F4E                                  ; $57A2: $01 $4E $7F
    ld e, l                                       ; $57A5: $5D
    inc b                                         ; $57A6: $04
    ld b, c                                       ; $57A7: $41
    ld e, h                                       ; $57A8: $5C
    adc d                                         ; $57A9: $8A
    sub l                                         ; $57AA: $95
    sbc [hl]                                      ; $57AB: $9E
    ld h, b                                       ; $57AC: $60
    inc b                                         ; $57AD: $04
    ld d, d                                       ; $57AE: $52
    ld c, d                                       ; $57AF: $4A
    ld d, b                                       ; $57B0: $50
    adc a                                         ; $57B1: $8F
    add b                                         ; $57B2: $80
    nop                                           ; $57B3: $00
    rra                                           ; $57B4: $1F
    nop                                           ; $57B5: $00
    ld [hl+], a                                   ; $57B6: $22
    rst RST_38                                    ; $57B7: $FF
    adc b                                         ; $57B8: $88
    jr nz, jr_036_57FA                            ; $57B9: $20 $3F

    adc b                                         ; $57BB: $88
    jr nz, jr_036_57FD                            ; $57BC: $20 $3F

    adc b                                         ; $57BE: $88

jr_036_57BF:
    jr nz, jr_036_5800                            ; $57BF: $20 $3F

    add b                                         ; $57C1: $80
    ld de, $C060                                  ; $57C2: $11 $60 $C0
    nop                                           ; $57C5: $00
    ld h, e                                       ; $57C6: $63
    ldh [c], a                                    ; $57C7: $E2
    ld [bc], a                                    ; $57C8: $02
    ldh a, [c]                                    ; $57C9: $F2
    ld [hl+], a                                   ; $57CA: $22
    ld [bc], a                                    ; $57CB: $02
    di                                            ; $57CC: $F3
    add sp, $02                                   ; $57CD: $E8 $02
    ldh a, [c]                                    ; $57CF: $F2
    adc b                                         ; $57D0: $88
    ld [bc], a                                    ; $57D1: $02
    ldh a, [c]                                    ; $57D2: $F2
    ld b, h                                       ; $57D3: $44
    sub d                                         ; $57D4: $92
    db $F4                                        ; $57D5: $F4
    jr nz, jr_036_57D8                            ; $57D6: $20 $00

jr_036_57D8:
    ld c, b                                       ; $57D8: $48
    add b                                         ; $57D9: $80
    dec h                                         ; $57DA: $25
    rst RST_38                                    ; $57DB: $FF
    ld [$BFA0], a                                 ; $57DC: $EA $A0 $BF
    adc b                                         ; $57DF: $88
    jr nz, jr_036_5821                            ; $57E0: $20 $3F

    adc b                                         ; $57E2: $88
    jr nz, jr_036_5824                            ; $57E3: $20 $3F

    add d                                         ; $57E5: $82
    ld [de], a                                    ; $57E6: $12
    pop hl                                        ; $57E7: $E1
    ldh [rP1], a                                  ; $57E8: $E0 $00
    daa                                           ; $57EA: $27
    ret nz                                        ; $57EB: $C0

    ld hl, $C4B7                                  ; $57EC: $21 $B7 $C4
    or d                                          ; $57EF: $B2
    or d                                          ; $57F0: $B2
    ld c, [hl]                                    ; $57F1: $4E
    cpl                                           ; $57F2: $2F
    jr nz, jr_036_5801                            ; $57F3: $20 $0C

    daa                                           ; $57F5: $27
    inc h                                         ; $57F6: $24
    ld b, h                                       ; $57F7: $44
    inc h                                         ; $57F8: $24
    daa                                           ; $57F9: $27

jr_036_57FA:
    ret nz                                        ; $57FA: $C0

    nop                                           ; $57FB: $00
    ccf                                           ; $57FC: $3F

jr_036_57FD:
    adc b                                         ; $57FD: $88
    jr nz, jr_036_583F                            ; $57FE: $20 $3F

jr_036_5800:
    adc b                                         ; $5800: $88

jr_036_5801:
    jr nz, @+$01                                  ; $5801: $20 $FF

    ldh [rOBP0], a                                ; $5803: $E0 $48
    ld a, a                                       ; $5805: $7F
    call nz, Call_036_597A                        ; $5806: $C4 $7A $59
    adc b                                         ; $5809: $88
    ld [$600C], a                                 ; $580A: $EA $0C $60
    nop                                           ; $580D: $00
    ld hl, $4204                                  ; $580E: $21 $04 $42
    sub [hl]                                      ; $5811: $96
    add h                                         ; $5812: $84
    ld hl, $E04F                                  ; $5813: $21 $4F $E0
    jp nz, $C443                                  ; $5816: $C2 $43 $C4

    ld b, [hl]                                    ; $5819: $46
    ld c, d                                       ; $581A: $4A
    adc b                                         ; $581B: $88
    ld b, c                                       ; $581C: $41
    ld c, [hl]                                    ; $581D: $4E
    ld h, b                                       ; $581E: $60
    nop                                           ; $581F: $00
    inc b                                         ; $5820: $04

jr_036_5821:
    inc c                                         ; $5821: $0C
    ld a, a                                       ; $5822: $7F
    inc b                                         ; $5823: $04

jr_036_5824:
    ld [$203F], sp                                ; $5824: $08 $3F $20
    adc b                                         ; $5827: $88
    ccf                                           ; $5828: $3F
    ccf                                           ; $5829: $3F
    adc b                                         ; $582A: $88

jr_036_582B:
    jr nz, @+$01                                  ; $582B: $20 $FF

    add sp, $11                                   ; $582D: $E8 $11
    ld h, b                                       ; $582F: $60

jr_036_5830:
    ld b, b                                       ; $5830: $40
    nop                                           ; $5831: $00
    jr nz, jr_036_5898                            ; $5832: $20 $64

    jr z, @+$4C                                   ; $5834: $28 $4A

    ld b, h                                       ; $5836: $44
    ld c, c                                       ; $5837: $49
    ret                                           ; $5838: $C9


    ld b, h                                       ; $5839: $44
    ld c, b                                       ; $583A: $48
    ld c, b                                       ; $583B: $48
    ld c, b                                       ; $583C: $48
    ld c, d                                       ; $583D: $4A
    ld e, h                                       ; $583E: $5C

jr_036_583F:
    jp nz, Jump_036_4651                          ; $583F: $C2 $51 $46

    jr nz, jr_036_5844                            ; $5842: $20 $00

jr_036_5844:
    ld sp, $E100                                  ; $5844: $31 $00 $E1
    ld hl, $F900                                  ; $5847: $21 $00 $F9
    ld [hl+], a                                   ; $584A: $22
    nop                                           ; $584B: $00
    ld [hl], d                                    ; $584C: $72
    ld l, d                                       ; $584D: $6A
    inc b                                         ; $584E: $04

jr_036_584F:
    xor d                                         ; $584F: $AA
    inc h                                         ; $5850: $24
    ld c, [hl]                                    ; $5851: $4E
    inc h                                         ; $5852: $24
    cpl                                           ; $5853: $2F
    jr nz, jr_036_5856                            ; $5854: $20 $00

jr_036_5856:
    ld [$0F08], sp                                ; $5856: $08 $08 $0F
    db $10                                        ; $5859: $10
    add b                                         ; $585A: $80
    ld sp, $00CA                                  ; $585B: $31 $CA $00
    inc b                                         ; $585E: $04
    rrca                                          ; $585F: $0F
    call nz, $C838                                ; $5860: $C4 $38 $C8
    ld c, h                                       ; $5863: $4C
    rrca                                          ; $5864: $0F
    ld [$0040], sp                                ; $5865: $08 $40 $00
    ld [bc], a                                    ; $5868: $02
    ld c, [hl]                                    ; $5869: $4E
    rst RST_38                                    ; $586A: $FF

jr_036_586B:
    ld [bc], a                                    ; $586B: $02
    inc b                                         ; $586C: $04
    ld a, c                                       ; $586D: $79
    ld c, b                                       ; $586E: $48

jr_036_586F:
    adc d                                         ; $586F: $8A
    ld a, e                                       ; $5870: $7B

jr_036_5871:
    nop                                           ; $5871: $00
    ld h, b                                       ; $5872: $60
    db $F4                                        ; $5873: $F4
    ld [bc], a                                    ; $5874: $02
    ld c, d                                       ; $5875: $4A
    ld d, b                                       ; $5876: $50
    sbc a                                         ; $5877: $9F
    add b                                         ; $5878: $80
    nop                                           ; $5879: $00
    ccf                                           ; $587A: $3F
    adc b                                         ; $587B: $88
    jr nz, jr_036_58BD                            ; $587C: $20 $3F

    adc b                                         ; $587E: $88
    jr nz, jr_036_58C0                            ; $587F: $20 $3F

    add b                                         ; $5881: $80
    ld b, h                                       ; $5882: $44
    ld a, a                                       ; $5883: $7F
    ret nz                                        ; $5884: $C0

    add h                                         ; $5885: $84
    ccf                                           ; $5886: $3F
    add b                                         ; $5887: $80
    inc b                                         ; $5888: $04
    rst RST_38                                    ; $5889: $FF
    ldh [rP1], a                                  ; $588A: $E0 $00
    inc b                                         ; $588C: $04
    ld c, $FF                                     ; $588D: $0E $FF
    add hl, bc                                    ; $588F: $09
    inc b                                         ; $5890: $04
    ld c, c                                       ; $5891: $49
    sub e                                         ; $5892: $93
    jr nz, jr_036_589D                            ; $5893: $20 $08

    rrca                                          ; $5895: $0F
    nop                                           ; $5896: $00
    add hl, de                                    ; $5897: $19

jr_036_5898:
    ld h, [hl]                                    ; $5898: $66
    nop                                           ; $5899: $00
    dec de                                        ; $589A: $1B
    ldh [$FFE0], a                                ; $589B: $E0 $E0

jr_036_589D:
    nop                                           ; $589D: $00
    ld [$3F08], sp                                ; $589E: $08 $08 $3F
    jr nz, jr_036_582B                            ; $58A1: $20 $88

    ccf                                           ; $58A3: $3F
    jr nz, jr_036_5830                            ; $58A4: $20 $8A

    ccf                                           ; $58A6: $3F
    jr nz, jr_036_5871                            ; $58A7: $20 $C8

    rst RST_38                                    ; $58A9: $FF
    inc c                                         ; $58AA: $0C
    adc b                                         ; $58AB: $88
    jr nc, jr_036_586F                            ; $58AC: $30 $C1

    add b                                         ; $58AE: $80
    nop                                           ; $58AF: $00
    ld bc, $CF0E                                  ; $58B0: $01 $0E $CF
    ld hl, $0F0E                                  ; $58B3: $21 $0E $0F
    jp hl                                         ; $58B6: $E9


    ld l, $2F                                     ; $58B7: $2E $2F
    inc hl                                        ; $58B9: $23
    add h                                         ; $58BA: $84
    dec h                                         ; $58BB: $25
    add hl, hl                                    ; $58BC: $29

jr_036_58BD:
    jr nz, jr_036_5910                            ; $58BD: $20 $51

    adc a                                         ; $58BF: $8F

jr_036_58C0:
    ldh [rP1], a                                  ; $58C0: $E0 $00
    ld bc, $3100                                  ; $58C2: $01 $00 $31
    jr nz, jr_036_584F                            ; $58C5: $20 $88

    ld b, b                                       ; $58C7: $40
    ld c, b                                       ; $58C8: $48
    ld b, d                                       ; $58C9: $42
    adc b                                         ; $58CA: $88
    ld de, $1008                                  ; $58CB: $11 $08 $10
    daa                                           ; $58CE: $27
    add h                                         ; $58CF: $84
    ld hl, sp+$40                                 ; $58D0: $F8 $40
    ld b, b                                       ; $58D2: $40
    nop                                           ; $58D3: $00
    inc bc                                        ; $58D4: $03
    db $E4                                        ; $58D5: $E4
    ld a, h                                       ; $58D6: $7C
    inc h                                         ; $58D7: $24
    adc [hl]                                      ; $58D8: $8E
    ld a, a                                       ; $58D9: $7F
    ld c, c                                       ; $58DA: $49
    ld l, $7F                                     ; $58DB: $2E $7F
    ld a, h                                       ; $58DD: $7C
    ld c, [hl]                                    ; $58DE: $4E
    ld b, a                                       ; $58DF: $47
    ld a, h                                       ; $58E0: $7C
    ld b, h                                       ; $58E1: $44
    ld c, c                                       ; $58E2: $49
    db $F4                                        ; $58E3: $F4
    ret nz                                        ; $58E4: $C0

    nop                                           ; $58E5: $00
    inc b                                         ; $58E6: $04
    ld c, $FF                                     ; $58E7: $0E $FF
    jr nz, jr_036_586B                            ; $58E9: $20 $80

    ld de, $E2FF                                  ; $58EB: $11 $FF $E2
    add h                                         ; $58EE: $84
    ccf                                           ; $58EF: $3F
    adc b                                         ; $58F0: $88
    inc h                                         ; $58F1: $24
    inc h                                         ; $58F2: $24
    adc b                                         ; $58F3: $88
    dec h                                         ; $58F4: $25
    inc b                                         ; $58F5: $04
    nop                                           ; $58F6: $00
    nop                                           ; $58F7: $00
    ld b, $04                                     ; $58F8: $06 $04
    ld b, h                                       ; $58FA: $44
    ld a, a                                       ; $58FB: $7F
    db $E4                                        ; $58FC: $E4
    ld b, h                                       ; $58FD: $44

jr_036_58FE:
    ld b, h                                       ; $58FE: $44
    ld b, h                                       ; $58FF: $44
    ld b, h                                       ; $5900: $44
    ld a, a                                       ; $5901: $7F
    call nz, $0444                                ; $5902: $C4 $44 $04
    nop                                           ; $5905: $00
    inc b                                         ; $5906: $04
    inc b                                         ; $5907: $04
    nop                                           ; $5908: $00
    nop                                           ; $5909: $00
    nop                                           ; $590A: $00
    adc h                                         ; $590B: $8C
    ld a, a                                       ; $590C: $7F
    inc b                                         ; $590D: $04
    nop                                           ; $590E: $00
    inc b                                         ; $590F: $04

jr_036_5910:
    inc b                                         ; $5910: $04
    nop                                           ; $5911: $00
    inc b                                         ; $5912: $04
    inc b                                         ; $5913: $04
    nop                                           ; $5914: $00
    inc b                                         ; $5915: $04
    inc b                                         ; $5916: $04
    ld c, [hl]                                    ; $5917: $4E
    rst RST_38                                    ; $5918: $FF
    nop                                           ; $5919: $00
    nop                                           ; $591A: $00
    nop                                           ; $591B: $00
    ld h, $04                                     ; $591C: $26 $04
    inc h                                         ; $591E: $24
    ld b, a                                       ; $591F: $47
    ldh [rWY], a                                  ; $5920: $E0 $4A
    jp nc, Jump_036_430C                          ; $5922: $D2 $0C $43

    ld b, d                                       ; $5925: $42
    nop                                           ; $5926: $00
    ld b, d                                       ; $5927: $42
    ld b, e                                       ; $5928: $43
    ret nz                                        ; $5929: $C0

    ld b, d                                       ; $592A: $42
    ld b, d                                       ; $592B: $42
    nop                                           ; $592C: $00
    nop                                           ; $592D: $00
    ccf                                           ; $592E: $3F
    adc b                                         ; $592F: $88
    jr nz, @+$81                                  ; $5930: $20 $7F

    call nz, Call_036_7F40                        ; $5932: $C4 $40 $7F
    call nz, Call_036_7F40                        ; $5935: $C4 $40 $7F
    call nz, Call_036_7F40                        ; $5938: $C4 $40 $7F
    ret z                                         ; $593B: $C8

    jr nz, jr_036_58FE                            ; $593C: $20 $C0

    ld h, b                                       ; $593E: $60
    nop                                           ; $593F: $00
    jr nz, @+$50                                  ; $5940: $20 $4E

    ld c, a                                       ; $5942: $4F
    add c                                         ; $5943: $81

jr_036_5944:
    nop                                           ; $5944: $00
    ld hl, $0E4D                                  ; $5945: $21 $4D $0E
    ret                                           ; $5948: $C9


    ld c, c                                       ; $5949: $49
    nop                                           ; $594A: $00
    ld c, c                                       ; $594B: $49
    ld c, c                                       ; $594C: $49
    ld [bc], a                                    ; $594D: $02
    ld c, c                                       ; $594E: $49
    ld e, a                                       ; $594F: $5F
    ldh [rP1], a                                  ; $5950: $E0 $00
    ld [hl], a                                    ; $5952: $77
    ldh [c], a                                    ; $5953: $E2
    ld d, h                                       ; $5954: $54
    ld d, h                                       ; $5955: $54
    ld h, b                                       ; $5956: $60
    ld [hl], h                                    ; $5957: $74
    ld d, a                                       ; $5958: $57
    ldh [c], a                                    ; $5959: $E2
    ld d, l                                       ; $595A: $55
    ld [hl], l                                    ; $595B: $75
    inc h                                         ; $595C: $24
    ld d, l                                       ; $595D: $55
    ld d, h                                       ; $595E: $54
    add h                                         ; $595F: $84
    ld d, l                                       ; $5960: $55
    or [hl]                                       ; $5961: $B6
    jr nz, jr_036_5964                            ; $5962: $20 $00

jr_036_5964:
    ld de, $FF0E                                  ; $5964: $11 $0E $FF
    inc b                                         ; $5967: $04
    inc c                                         ; $5968: $0C
    ld a, a                                       ; $5969: $7F
    inc h                                         ; $596A: $24
    add h                                         ; $596B: $84
    ld d, l                                       ; $596C: $55
    rst RST_38                                    ; $596D: $FF
    db $E4                                        ; $596E: $E4
    ld c, [hl]                                    ; $596F: $4E
    ld c, d                                       ; $5970: $4A
    ld b, h                                       ; $5971: $44
    ld c, [hl]                                    ; $5972: $4E
    ld a, a                                       ; $5973: $7F
    ret nz                                        ; $5974: $C0

    nop                                           ; $5975: $00
    ld de, $FF0E                                  ; $5976: $11 $0E $FF
    inc b                                         ; $5979: $04

Call_036_597A:
    adc b                                         ; $597A: $88
    ld d, l                                       ; $597B: $55
    sbc a                                         ; $597C: $9F
    ld [$5E21], a                                 ; $597D: $EA $21 $5E
    and h                                         ; $5980: $A4
    ret nz                                        ; $5981: $C0

    ld e, [hl]                                    ; $5982: $5E
    ld c, d                                       ; $5983: $4A
    ld c, h                                       ; $5984: $4C
    ld d, [hl]                                    ; $5985: $56
    and b                                         ; $5986: $A0
    nop                                           ; $5987: $00
    inc b                                         ; $5988: $04
    inc c                                         ; $5989: $0C
    ld a, a                                       ; $598A: $7F
    inc b                                         ; $598B: $04
    ld [$043F], sp                                ; $598C: $08 $3F $04
    ld c, $FF                                     ; $598F: $0E $FF
    ld [$1200], sp                                ; $5991: $08 $00 $12
    inc c                                         ; $5994: $0C
    adc d                                         ; $5995: $8A
    ld e, a                                       ; $5996: $5F
    ld b, h                                       ; $5997: $44
    jr nz, jr_036_599A                            ; $5998: $20 $00

jr_036_599A:
    ld bc, $EF0E                                  ; $599A: $01 $0E $EF
    and c                                         ; $599D: $A1
    inc c                                         ; $599E: $0C
    and a                                         ; $599F: $A7
    pop hl                                        ; $59A0: $E1
    ld c, $AF                                     ; $59A1: $0E $AF
    and a                                         ; $59A3: $A7
    call z, $E4A7                                 ; $59A4: $CC $A7 $E4
    ld c, h                                       ; $59A7: $4C
    add a                                         ; $59A8: $87
    inc b                                         ; $59A9: $04
    ld b, b                                       ; $59AA: $40
    nop                                           ; $59AB: $00
    xor c                                         ; $59AC: $A9
    ld b, d                                       ; $59AD: $42
    xor c                                         ; $59AE: $A9
    ld bc, $FB0E                                  ; $59AF: $01 $0E $FB
    xor c                                         ; $59B2: $A9
    nop                                           ; $59B3: $00
    ld sp, hl                                     ; $59B4: $F9
    xor c                                         ; $59B5: $A9
    inc h                                         ; $59B6: $24
    ld sp, hl                                     ; $59B7: $F9
    jr nz, jr_036_5944                            ; $59B8: $20 $8A

    ld sp, hl                                     ; $59BA: $F9
    ld [hl+], a                                   ; $59BB: $22
    ld b, b                                       ; $59BC: $40
    nop                                           ; $59BD: $00
    inc b                                         ; $59BE: $04
    inc c                                         ; $59BF: $0C
    ld a, a                                       ; $59C0: $7F
    inc b                                         ; $59C1: $04
    ld [$243F], sp                                ; $59C2: $08 $3F $24
    adc b                                         ; $59C5: $88
    ccf                                           ; $59C6: $3F
    inc h                                         ; $59C7: $24
    adc b                                         ; $59C8: $88
    ccf                                           ; $59C9: $3F
    inc b                                         ; $59CA: $04
    ld l, $FF                                     ; $59CB: $2E $FF
    inc b                                         ; $59CD: $04
    nop                                           ; $59CE: $00
    nop                                           ; $59CF: $00
    ld b, $00                                     ; $59D0: $06 $00
    inc b                                         ; $59D2: $04
    inc b                                         ; $59D3: $04
    nop                                           ; $59D4: $00
    inc b                                         ; $59D5: $04
    rst RST_38                                    ; $59D6: $FF
    ldh [rDIV], a                                 ; $59D7: $E0 $04
    inc b                                         ; $59D9: $04
    nop                                           ; $59DA: $00
    inc b                                         ; $59DB: $04
    inc b                                         ; $59DC: $04
    ld c, h                                       ; $59DD: $4C
    ld a, a                                       ; $59DE: $7F
    nop                                           ; $59DF: $00
    nop                                           ; $59E0: $00
    nop                                           ; $59E1: $00
    ccf                                           ; $59E2: $3F
    adc b                                         ; $59E3: $88
    jr nz, jr_036_5A25                            ; $59E4: $20 $3F

    add b                                         ; $59E6: $80
    nop                                           ; $59E7: $00
    rst RST_38                                    ; $59E8: $FF
    ldh [rNR10], a                                ; $59E9: $E0 $10
    db $10                                        ; $59EB: $10
    adc h                                         ; $59EC: $8C
    rra                                           ; $59ED: $1F
    jr nz, @-$76                                  ; $59EE: $20 $88

    nop                                           ; $59F0: $00
    rlca                                          ; $59F1: $07
    nop                                           ; $59F2: $00
    nop                                           ; $59F3: $00

jr_036_59F4:
    jr nz, jr_036_5A44                            ; $59F4: $20 $4E

    cpl                                           ; $59F6: $2F
    ld c, b                                       ; $59F7: $48
    inc b                                         ; $59F8: $04
    ld c, b                                       ; $59F9: $48
    rst RST_08                                    ; $59FA: $CF
    db $E4                                        ; $59FB: $E4
    ld c, d                                       ; $59FC: $4A
    ld c, d                                       ; $59FD: $4A
    ld c, b                                       ; $59FE: $48
    ld c, c                                       ; $59FF: $49
    ld c, b                                       ; $5A00: $48
    add h                                         ; $5A01: $84
    ld d, c                                       ; $5A02: $51
    ld d, [hl]                                    ; $5A03: $56
    jr nz, jr_036_5A06                            ; $5A04: $20 $00

jr_036_5A06:
    and a                                         ; $5A06: $A7
    call nz, $4444                                ; $5A07: $C4 $44 $44
    ld c, h                                       ; $5A0A: $4C
    and a                                         ; $5A0B: $A7
    inc h                                         ; $5A0C: $24
    ld b, h                                       ; $5A0D: $44
    ld h, h                                       ; $5A0E: $64
    ld h, h                                       ; $5A0F: $64
    ld c, h                                       ; $5A10: $4C
    and a                                         ; $5A11: $A7
    inc h                                         ; $5A12: $24
    ld b, h                                       ; $5A13: $44
    inc h                                         ; $5A14: $24
    rst RST_08                                    ; $5A15: $CF
    ldh [rP1], a                                  ; $5A16: $E0 $00
    rlca                                          ; $5A18: $07
    ldh [c], a                                    ; $5A19: $E2
    call nz, $E427                                ; $5A1A: $C4 $27 $E4
    dec b                                         ; $5A1D: $05
    rst RST_20                                    ; $5A1E: $E7
    add sp, $24                                   ; $5A1F: $E8 $24
    daa                                           ; $5A21: $27
    add sp, $28                                   ; $5A22: $E8 $28
    dec hl                                        ; $5A24: $2B

jr_036_5A25:
    add sp, $50                                   ; $5A25: $E8 $50
    adc a                                         ; $5A27: $8F
    ldh [rP1], a                                  ; $5A28: $E0 $00
    ld de, $7F0C                                  ; $5A2A: $11 $0C $7F
    ld de, $1102                                  ; $5A2D: $11 $02 $11
    rst RST_38                                    ; $5A30: $FF
    ldh [rP1], a                                  ; $5A31: $E0 $00
    ccf                                           ; $5A33: $3F
    adc b                                         ; $5A34: $88
    jr nz, @+$41                                  ; $5A35: $20 $3F

    adc b                                         ; $5A37: $88
    jr nz, jr_036_5A79                            ; $5A38: $20 $3F

    add b                                         ; $5A3A: $80
    nop                                           ; $5A3B: $00
    dec h                                         ; $5A3C: $25
    inc h                                         ; $5A3D: $24
    add hl, hl                                    ; $5A3E: $29
    push af                                       ; $5A3F: $F5
    inc h                                         ; $5A40: $24
    add hl, hl                                    ; $5A41: $29
    ld a, l                                       ; $5A42: $7D
    ld h, b                                       ; $5A43: $60

jr_036_5A44:
    ld [hl], c                                    ; $5A44: $71
    xor a                                         ; $5A45: $AF
    ldh [$FFA5], a                                ; $5A46: $E0 $A5
    inc h                                         ; $5A48: $24
    xor h                                         ; $5A49: $AC
    ld a, [hl+]                                   ; $5A4A: $2A
    add hl, hl                                    ; $5A4B: $29
    jr nz, jr_036_5A4E                            ; $5A4C: $20 $00

jr_036_5A4E:
    ld h, b                                       ; $5A4E: $60
    adc d                                         ; $5A4F: $8A
    ld a, [bc]                                    ; $5A50: $0A
    and $A8                                       ; $5A51: $E6 $A8
    nop                                           ; $5A53: $00
    db $E3                                        ; $5A54: $E3
    add sp, $0C                                   ; $5A55: $E8 $0C
    push hl                                       ; $5A57: $E5
    jp z, $E406                                   ; $5A58: $CA $06 $E4

    add b                                         ; $5A5B: $80
    and h                                         ; $5A5C: $A4
    db $EB                                        ; $5A5D: $EB
    ldh [rP1], a                                  ; $5A5E: $E0 $00
    ld hl, $270C                                  ; $5A60: $21 $0C $27
    pop af                                        ; $5A63: $F1
    ld c, $2F                                     ; $5A64: $0E $2F
    jr nz, @+$46                                  ; $5A66: $20 $44

    jr nc, jr_036_5AD9                            ; $5A68: $30 $6F

    db $E4                                        ; $5A6A: $E4
    and h                                         ; $5A6B: $A4
    ld [hl+], a                                   ; $5A6C: $22
    ld b, h                                       ; $5A6D: $44
    jr nz, jr_036_5AD0                            ; $5A6E: $20 $60

    ret nz                                        ; $5A70: $C0

    nop                                           ; $5A71: $00
    jr nz, jr_036_59F4                            ; $5A72: $20 $80

    ld de, $C47F                                  ; $5A74: $11 $7F $C4
    inc b                                         ; $5A77: $04
    ld a, a                                       ; $5A78: $7F

jr_036_5A79:
    ret nz                                        ; $5A79: $C0

    ld b, h                                       ; $5A7A: $44
    rst RST_38                                    ; $5A7B: $FF
    ldh [c], a                                    ; $5A7C: $E2
    inc c                                         ; $5A7D: $0C
    inc [hl]                                      ; $5A7E: $34
    inc l                                         ; $5A7F: $2C
    call nz, $0004                                ; $5A80: $C4 $04 $00
    nop                                           ; $5A83: $00
    ld [bc], a                                    ; $5A84: $02
    ld c, $7F                                     ; $5A85: $0E $7F
    ld b, b                                       ; $5A87: $40
    inc b                                         ; $5A88: $04
    ld c, d                                       ; $5A89: $4A
    ld c, d                                       ; $5A8A: $4A
    ld c, d                                       ; $5A8B: $4A
    ld d, [hl]                                    ; $5A8C: $56
    ld b, d                                       ; $5A8D: $42
    inc c                                         ; $5A8E: $0C
    ld e, a                                       ; $5A8F: $5F
    ld b, d                                       ; $5A90: $42
    inc b                                         ; $5A91: $04
    add d                                         ; $5A92: $82
    cp a                                          ; $5A93: $BF
    ldh [rP1], a                                  ; $5A94: $E0 $00
    ld h, d                                       ; $5A96: $62
    ld c, b                                       ; $5A97: $48
    ld [bc], a                                    ; $5A98: $02
    rst RST_30                                    ; $5A99: $F7
    add sp, $0C                                   ; $5A9A: $E8 $0C
    db $F4                                        ; $5A9C: $F4
    adc [hl]                                      ; $5A9D: $8E
    rlca                                          ; $5A9E: $07
    db $F4                                        ; $5A9F: $F4
    adc [hl]                                      ; $5AA0: $8E
    rlca                                          ; $5AA1: $07
    db $F4                                        ; $5AA2: $F4
    adc b                                         ; $5AA3: $88
    sub h                                         ; $5AA4: $94
    rst RST_30                                    ; $5AA5: $F7
    ldh [rP1], a                                  ; $5AA6: $E0 $00
    inc b                                         ; $5AA8: $04
    nop                                           ; $5AA9: $00

Jump_036_5AAA:
    ld a, [bc]                                    ; $5AAA: $0A
    ld de, $2008                                  ; $5AAB: $11 $08 $20
    rst RST_18                                    ; $5AAE: $DF
    ld h, b                                       ; $5AAF: $60
    nop                                           ; $5AB0: $00
    ccf                                           ; $5AB1: $3F
    ret z                                         ; $5AB2: $C8

    nop                                           ; $5AB3: $00
    nop                                           ; $5AB4: $00
    add b                                         ; $5AB5: $80
    ld bc, $0002                                  ; $5AB6: $01 $02 $00
    nop                                           ; $5AB9: $00
    inc b                                         ; $5ABA: $04
    ld c, $FF                                     ; $5ABB: $0E $FF
    inc b                                         ; $5ABD: $04
    ld [$243F], sp                                ; $5ABE: $08 $3F $24
    adc b                                         ; $5AC1: $88
    ccf                                           ; $5AC2: $3F
    inc h                                         ; $5AC3: $24
    adc b                                         ; $5AC4: $88
    ccf                                           ; $5AC5: $3F
    ld c, $08                                     ; $5AC6: $0E $08
    dec [hl]                                      ; $5AC8: $35
    call nz, JoypadTransitionInterrupt            ; $5AC9: $C4 $60 $00
    inc b                                         ; $5ACC: $04
    ld c, $FF                                     ; $5ACD: $0E $FF
    nop                                           ; $5ACF: $00

jr_036_5AD0:
    ld [$203F], sp                                ; $5AD0: $08 $3F $20
    adc b                                         ; $5AD3: $88
    jr nz, jr_036_5B15                            ; $5AD4: $20 $3F

    add b                                         ; $5AD6: $80
    inc b                                         ; $5AD7: $04
    inc h                                         ; $5AD8: $24

jr_036_5AD9:
    add h                                         ; $5AD9: $84
    inc h                                         ; $5ADA: $24
    ld c, h                                       ; $5ADB: $4C
    ld b, b                                       ; $5ADC: $40
    nop                                           ; $5ADD: $00
    ld sp, $E180                                  ; $5ADE: $31 $80 $E1
    dec h                                         ; $5AE1: $25
    ld [hl+], a                                   ; $5AE2: $22
    push af                                       ; $5AE3: $F5
    dec h                                         ; $5AE4: $25
    ld b, b                                       ; $5AE5: $40
    ld [hl], c                                    ; $5AE6: $71
    ld l, d                                       ; $5AE7: $6A
    adc b                                         ; $5AE8: $88
    and d                                         ; $5AE9: $A2
    inc h                                         ; $5AEA: $24
    ld b, h                                       ; $5AEB: $44
    inc h                                         ; $5AEC: $24
    jr z, jr_036_5B0F                             ; $5AED: $28 $20

    nop                                           ; $5AEF: $00
    inc b                                         ; $5AF0: $04
    inc c                                         ; $5AF1: $0C
    ld a, a                                       ; $5AF2: $7F
    inc h                                         ; $5AF3: $24
    adc b                                         ; $5AF4: $88
    inc d                                         ; $5AF5: $14
    dec d                                         ; $5AF6: $15
    ld c, $FF                                     ; $5AF7: $0E $FF
    ld c, $00                                     ; $5AF9: $0E $00
    dec d                                         ; $5AFB: $15
    inc h                                         ; $5AFC: $24
    add [hl]                                      ; $5AFD: $86
    call nz, $0004                                ; $5AFE: $C4 $04 $00
    nop                                           ; $5B01: $00
    db $F4                                        ; $5B02: $F4
    ld c, b                                       ; $5B03: $48
    ld [bc], a                                    ; $5B04: $02
    rst RST_30                                    ; $5B05: $F7
    call nz, $F404                                ; $5B06: $C4 $04 $F4
    ld c, h                                       ; $5B09: $4C
    rlca                                          ; $5B0A: $07
    ldh a, [c]                                    ; $5B0B: $F2
    adc b                                         ; $5B0C: $88
    ld [bc], a                                    ; $5B0D: $02
    ldh a, [c]                                    ; $5B0E: $F2

jr_036_5B0F:
    adc d                                         ; $5B0F: $8A
    sub d                                         ; $5B10: $92
    db $F4                                        ; $5B11: $F4
    ldh [rP1], a                                  ; $5B12: $E0 $00
    nop                                           ; $5B14: $00

jr_036_5B15:
    ld c, [hl]                                    ; $5B15: $4E
    rst RST_30                                    ; $5B16: $F7
    sub h                                         ; $5B17: $94
    ld c, h                                       ; $5B18: $4C
    sub a                                         ; $5B19: $97
    db $F4                                        ; $5B1A: $F4
    ld b, h                                       ; $5B1B: $44
    sub h                                         ; $5B1C: $94
    sub a                                         ; $5B1D: $97
    call nz, $88F4                                ; $5B1E: $C4 $F4 $88
    ld b, h                                       ; $5B21: $44
    ld [$C010], sp                                ; $5B22: $08 $10 $C0
    nop                                           ; $5B25: $00
    ld bc, $C902                                  ; $5B26: $01 $02 $C9
    dec h                                         ; $5B29: $25
    inc h                                         ; $5B2A: $24
    dec b                                         ; $5B2B: $05
    rst RST_28                                    ; $5B2C: $EF
    add sp, $23                                   ; $5B2D: $E8 $23
    dec h                                         ; $5B2F: $25
    ld b, d                                       ; $5B30: $42
    add hl, hl                                    ; $5B31: $29
    ld hl, $5020                                  ; $5B32: $21 $20 $50
    adc a                                         ; $5B35: $8F
    ldh [rP1], a                                  ; $5B36: $E0 $00
    ld [bc], a                                    ; $5B38: $02
    adc [hl]                                      ; $5B39: $8E
    rst RST_08                                    ; $5B3A: $CF
    ld hl, $070C                                  ; $5B3B: $21 $0C $07
    db $E4                                        ; $5B3E: $E4
    ld c, h                                       ; $5B3F: $4C
    daa                                           ; $5B40: $27
    daa                                           ; $5B41: $27
    call nz, Call_000_2724                        ; $5B42: $C4 $24 $27
    ret nz                                        ; $5B45: $C0

    ld d, b                                       ; $5B46: $50
    adc a                                         ; $5B47: $8F
    ldh [rP1], a                                  ; $5B48: $E0 $00

Jump_036_5B4A:
    ld b, d                                       ; $5B4A: $42
    ld c, $7B                                     ; $5B4B: $0E $7B
    sub h                                         ; $5B4D: $94
    adc h                                         ; $5B4E: $8C
    ld a, a                                       ; $5B4F: $7F
    inc b                                         ; $5B50: $04
    ld c, h                                       ; $5B51: $4C
    ld a, a                                       ; $5B52: $7F
    ld b, h                                       ; $5B53: $44
    ld c, $FF                                     ; $5B54: $0E $FF
    inc c                                         ; $5B56: $0C
    ld [hl+], a                                   ; $5B57: $22
    inc [hl]                                      ; $5B58: $34
    call nz, Call_000_00C0                        ; $5B59: $C4 $C0 $00
    nop                                           ; $5B5C: $00
    nop                                           ; $5B5D: $00
    nop                                           ; $5B5E: $00
    nop                                           ; $5B5F: $00
    nop                                           ; $5B60: $00
    nop                                           ; $5B61: $00
    nop                                           ; $5B62: $00
    ld c, [hl]                                    ; $5B63: $4E
    rst RST_38                                    ; $5B64: $FF
    nop                                           ; $5B65: $00
    nop                                           ; $5B66: $00
    nop                                           ; $5B67: $00
    nop                                           ; $5B68: $00
    nop                                           ; $5B69: $00
    nop                                           ; $5B6A: $00
    nop                                           ; $5B6B: $00
    nop                                           ; $5B6C: $00
    nop                                           ; $5B6D: $00
    inc b                                         ; $5B6E: $04
    ld [$2427], sp                                ; $5B6F: $08 $27 $24
    inc b                                         ; $5B72: $04
    inc h                                         ; $5B73: $24
    rst RST_38                                    ; $5B74: $FF
    ldh [rDIV], a                                 ; $5B75: $E0 $04
    inc h                                         ; $5B77: $24
    add h                                         ; $5B78: $84
    ld c, h                                       ; $5B79: $4C
    add c                                         ; $5B7A: $81
    ld [hl+], a                                   ; $5B7B: $22
    ld b, $78                                     ; $5B7C: $06 $78
    nop                                           ; $5B7E: $00
    nop                                           ; $5B7F: $00
    inc b                                         ; $5B80: $04
    nop                                           ; $5B81: $00
    ld a, [bc]                                    ; $5B82: $0A
    ld sp, $C286                                  ; $5B83: $31 $86 $C2
    rra                                           ; $5B86: $1F
    ld [$7F00], sp                                ; $5B87: $08 $00 $7F
    ret nz                                        ; $5B8A: $C0

    ld [$8410], sp                                ; $5B8B: $08 $10 $84
    daa                                           ; $5B8E: $27
    ld a, b                                       ; $5B8F: $78
    ld b, b                                       ; $5B90: $40
    nop                                           ; $5B91: $00
    ld bc, $3E88                                  ; $5B92: $01 $88 $3E
    dec d                                         ; $5B95: $15
    ld c, $FF                                     ; $5B96: $0E $FF
    dec d                                         ; $5B98: $15
    ld [$FF24], sp                                ; $5B99: $08 $24 $FF
    add sp, $24                                   ; $5B9C: $E8 $24
    ccf                                           ; $5B9E: $3F
    adc b                                         ; $5B9F: $88
    inc h                                         ; $5BA0: $24
    ccf                                           ; $5BA1: $3F
    add b                                         ; $5BA2: $80
    nop                                           ; $5BA3: $00
    ld bc, $E70C                                  ; $5BA4: $01 $0C $E7
    and c                                         ; $5BA7: $A1
    nop                                           ; $5BA8: $00
    and c                                         ; $5BA9: $A1

jr_036_5BAA:
    rst RST_28                                    ; $5BAA: $EF
    db $E4                                        ; $5BAB: $E4
    and b                                         ; $5BAC: $A0
    xor a                                         ; $5BAD: $AF
    db $E4                                        ; $5BAE: $E4
    and h                                         ; $5BAF: $A4
    ldh [c], a                                    ; $5BB0: $E2
    ld b, h                                       ; $5BB1: $44
    add d                                         ; $5BB2: $82
    nop                                           ; $5BB3: $00
    ret nz                                        ; $5BB4: $C0

    nop                                           ; $5BB5: $00
    ei                                            ; $5BB6: $FB
    ldh [c], a                                    ; $5BB7: $E2
    adc d                                         ; $5BB8: $8A

jr_036_5BB9:
    ei                                            ; $5BB9: $FB
    ldh [c], a                                    ; $5BBA: $E2
    adc d                                         ; $5BBB: $8A
    ei                                            ; $5BBC: $FB
    ldh [c], a                                    ; $5BBD: $E2
    add b                                         ; $5BBE: $80
    sbc a                                         ; $5BBF: $9F
    ld [hl+], a                                   ; $5BC0: $22
    sub c                                         ; $5BC1: $91
    sbc a                                         ; $5BC2: $9F
    ld [hl+], a                                   ; $5BC3: $22
    sub c                                         ; $5BC4: $91
    sbc a                                         ; $5BC5: $9F
    ld h, b                                       ; $5BC6: $60
    nop                                           ; $5BC7: $00
    ld hl, $4F0E                                  ; $5BC8: $21 $0E $4F
    sub c                                         ; $5BCB: $91
    inc c                                         ; $5BCC: $0C
    ld h, a                                       ; $5BCD: $67
    ld b, b                                       ; $5BCE: $40
    ld c, $EF                                     ; $5BCF: $0E $EF
    jr z, jr_036_5BFB                             ; $5BD1: $28 $28

    or d                                          ; $5BD3: $B2
    or d                                          ; $5BD4: $B2
    adc d                                         ; $5BD5: $8A
    and h                                         ; $5BD6: $A4
    jr z, jr_036_5BB9                             ; $5BD7: $28 $E0

    nop                                           ; $5BD9: $00
    ld b, $00                                     ; $5BDA: $06 $00
    inc b                                         ; $5BDC: $04
    inc b                                         ; $5BDD: $04
    nop                                           ; $5BDE: $00
    inc b                                         ; $5BDF: $04
    inc b                                         ; $5BE0: $04
    nop                                           ; $5BE1: $00
    ld b, $0A                                     ; $5BE2: $06 $0A
    nop                                           ; $5BE4: $00
    add hl, bc                                    ; $5BE5: $09
    db $10                                        ; $5BE6: $10
    add h                                         ; $5BE7: $84
    jr nz, jr_036_5BAA                            ; $5BE8: $20 $C0

    jr nz, jr_036_5BEC                            ; $5BEA: $20 $00

jr_036_5BEC:
    nop                                           ; $5BEC: $00
    adc h                                         ; $5BED: $8C

jr_036_5BEE:
    ld a, a                                       ; $5BEE: $7F
    inc b                                         ; $5BEF: $04
    nop                                           ; $5BF0: $00
    inc b                                         ; $5BF1: $04
    inc b                                         ; $5BF2: $04
    adc h                                         ; $5BF3: $8C
    daa                                           ; $5BF4: $27
    inc h                                         ; $5BF5: $24
    nop                                           ; $5BF6: $00
    inc h                                         ; $5BF7: $24
    inc h                                         ; $5BF8: $24
    inc b                                         ; $5BF9: $04
    inc h                                         ; $5BFA: $24

jr_036_5BFB:
    rst RST_38                                    ; $5BFB: $FF
    ldh [rP1], a                                  ; $5BFC: $E0 $00
    ld [hl+], a                                   ; $5BFE: $22
    inc c                                         ; $5BFF: $0C
    daa                                           ; $5C00: $27
    db $FC                                        ; $5C01: $FC
    ld c, b                                       ; $5C02: $48
    ld [hl+], a                                   ; $5C03: $22
    ld [hl], e                                    ; $5C04: $73
    add h                                         ; $5C05: $84
    ld h, h                                       ; $5C06: $64
    xor b                                         ; $5C07: $A8
    inc l                                         ; $5C08: $2C
    and a                                         ; $5C09: $A7
    inc h                                         ; $5C0A: $24
    ld b, h                                       ; $5C0B: $44
    inc h                                         ; $5C0C: $24
    daa                                           ; $5C0D: $27
    ret nz                                        ; $5C0E: $C0

    nop                                           ; $5C0F: $00
    ld b, e                                       ; $5C10: $43
    adc b                                         ; $5C11: $88
    ld b, d                                       ; $5C12: $42
    rst RST_28                                    ; $5C13: $EF
    ld [$4E4A], a                                 ; $5C14: $EA $4A $4E
    ldh [$FF61], a                                ; $5C17: $E0 $61
    rst RST_08                                    ; $5C19: $CF
    add sp, $43                                   ; $5C1A: $E8 $43
    ld b, l                                       ; $5C1C: $45
    ld b, d                                       ; $5C1D: $42
    ld c, c                                       ; $5C1E: $49
    pop bc                                        ; $5C1F: $C1
    nop                                           ; $5C20: $00
    nop                                           ; $5C21: $00
    ld b, $04                                     ; $5C22: $06 $04
    inc b                                         ; $5C24: $04
    rst RST_38                                    ; $5C25: $FF
    ldh [$FF08], a                                ; $5C26: $E0 $08
    ld [$0F8C], sp                                ; $5C28: $08 $8C $0F
    ld [$1088], sp                                ; $5C2B: $08 $88 $10
    db $10                                        ; $5C2E: $10
    add b                                         ; $5C2F: $80
    daa                                           ; $5C30: $27
    jp nz, RST_00                                 ; $5C31: $C2 $00 $00

    ld b, e                                       ; $5C34: $43
    nop                                           ; $5C35: $00
    ld [hl+], a                                   ; $5C36: $22
    rrca                                          ; $5C37: $0F
    ret nz                                        ; $5C38: $C0

    add d                                         ; $5C39: $82
    ld b, d                                       ; $5C3A: $42
    ld c, $3F                                     ; $5C3B: $0E $3F
    inc h                                         ; $5C3D: $24
    inc b                                         ; $5C3E: $04
    call nz, $A249                                ; $5C3F: $C4 $49 $A2
    ld e, [hl]                                    ; $5C42: $5E
    ld c, b                                       ; $5C43: $48
    jr nz, jr_036_5C46                            ; $5C44: $20 $00

jr_036_5C46:
    scf                                           ; $5C46: $37
    ldh [c], a                                    ; $5C47: $E2
    dec h                                         ; $5C48: $25
    push af                                       ; $5C49: $F5
    ld l, $27                                     ; $5C4A: $2E $27
    dec [hl]                                      ; $5C4C: $35
    ld [hl+], a                                   ; $5C4D: $22
    dec h                                         ; $5C4E: $25
    ld h, a                                       ; $5C4F: $67
    ldh [c], a                                    ; $5C50: $E2
    and l                                         ; $5C51: $A5
    ld hl, $2100                                  ; $5C52: $21 $00 $21
    ld h, c                                       ; $5C55: $61
    nop                                           ; $5C56: $00
    nop                                           ; $5C57: $00
    ld b, $04                                     ; $5C58: $06 $04
    inc b                                         ; $5C5A: $04
    rst RST_38                                    ; $5C5B: $FF
    ldh [rP1], a                                  ; $5C5C: $E0 $00
    ld hl, $1180                                  ; $5C5E: $21 $80 $11
    ld de, $1200                                  ; $5C61: $11 $00 $12
    ld [bc], a                                    ; $5C64: $02
    ld l, $FF                                     ; $5C65: $2E $FF
    nop                                           ; $5C67: $00
    nop                                           ; $5C68: $00
    nop                                           ; $5C69: $00
    jr nz, jr_036_5BEE                            ; $5C6A: $20 $82

    ld de, $E0FF                                  ; $5C6C: $11 $FF $E0
    nop                                           ; $5C6F: $00
    ld a, d                                       ; $5C70: $7A
    ld h, h                                       ; $5C71: $64
    ld c, d                                       ; $5C72: $4A
    ld a, d                                       ; $5C73: $7A
    ld b, h                                       ; $5C74: $44
    ld c, d                                       ; $5C75: $4A
    ld a, d                                       ; $5C76: $7A
    ld b, h                                       ; $5C77: $44
    ld c, b                                       ; $5C78: $48
    ld e, b                                       ; $5C79: $58
    ret nz                                        ; $5C7A: $C0

    nop                                           ; $5C7B: $00
    ld b, $00                                     ; $5C7C: $06 $00
    inc b                                         ; $5C7E: $04
    inc b                                         ; $5C7F: $04
    ld [$0704], sp                                ; $5C80: $08 $04 $07
    ret nz                                        ; $5C83: $C0

    inc b                                         ; $5C84: $04
    inc b                                         ; $5C85: $04
    nop                                           ; $5C86: $00
    inc b                                         ; $5C87: $04
    inc b                                         ; $5C88: $04
    ld l, $FF                                     ; $5C89: $2E $FF
    nop                                           ; $5C8B: $00
    nop                                           ; $5C8C: $00
    nop                                           ; $5C8D: $00
    inc hl                                        ; $5C8E: $23
    adc d                                         ; $5C8F: $8A
    ld a, [$E877]                                 ; $5C90: $FA $77 $E8
    ld [hl], d                                    ; $5C93: $72
    ld sp, hl                                     ; $5C94: $F9
    inc c                                         ; $5C95: $0C
    ld h, $1F                                     ; $5C96: $26 $1F
    nop                                           ; $5C98: $00
    inc b                                         ; $5C99: $04
    ccf                                           ; $5C9A: $3F
    adc [hl]                                      ; $5C9B: $8E
    rst RST_38                                    ; $5C9C: $FF
    inc b                                         ; $5C9D: $04
    nop                                           ; $5C9E: $00
    nop                                           ; $5C9F: $00
    ld bc, $F982                                  ; $5CA0: $01 $82 $F9
    sub a                                         ; $5CA3: $97
    ldh [$FF91], a                                ; $5CA4: $E0 $91
    and c                                         ; $5CA6: $A1
    ld c, $A1                                     ; $5CA7: $0E $A1
    sub c                                         ; $5CA9: $91
    ld [hl+], a                                   ; $5CAA: $22
    sub d                                         ; $5CAB: $92
    ldh [c], a                                    ; $5CAC: $E2
    inc h                                         ; $5CAD: $24
    add h                                         ; $5CAE: $84
    adc b                                         ; $5CAF: $88
    ret nz                                        ; $5CB0: $C0

    nop                                           ; $5CB1: $00
    inc bc                                        ; $5CB2: $03
    nop                                           ; $5CB3: $00
    ld [bc], a                                    ; $5CB4: $02
    di                                            ; $5CB5: $F3
    db $E4                                        ; $5CB6: $E4
    inc h                                         ; $5CB7: $24
    ld a, [hl+]                                   ; $5CB8: $2A
    ld b, h                                       ; $5CB9: $44
    ld [hl+], a                                   ; $5CBA: $22
    ld [hl+], a                                   ; $5CBB: $22
    adc b                                         ; $5CBC: $88
    ld sp, $08E1                                  ; $5CBD: $31 $E1 $08
    add d                                         ; $5CC0: $82
    inc c                                         ; $5CC1: $0C
    ld h, b                                       ; $5CC2: $60
    nop                                           ; $5CC3: $00
    jr nz, jr_036_5CD4                            ; $5CC4: $20 $0E

    inc hl                                        ; $5CC6: $23
    ld a, [$2222]                                 ; $5CC7: $FA $22 $22
    ld [hl], e                                    ; $5CCA: $73
    ldh [c], a                                    ; $5CCB: $E2
    ld l, d                                       ; $5CCC: $6A
    and d                                         ; $5CCD: $A2
    ld l, $A3                                     ; $5CCE: $2E $A3
    ld [hl+], a                                   ; $5CD0: $22
    ld [hl+], a                                   ; $5CD1: $22
    ld [hl+], a                                   ; $5CD2: $22
    inc hl                                        ; $5CD3: $23

jr_036_5CD4:
    ldh [rP1], a                                  ; $5CD4: $E0 $00
    ccf                                           ; $5CD6: $3F
    add b                                         ; $5CD7: $80
    jr nz, jr_036_5D19                            ; $5CD8: $20 $3F

    nop                                           ; $5CDA: $00
    jr nz, @+$41                                  ; $5CDB: $20 $3F

    inc b                                         ; $5CDD: $04
    jr nz, @+$01                                  ; $5CDE: $20 $FF

    ldh [$FF28], a                                ; $5CE0: $E0 $28
    inc h                                         ; $5CE2: $24
    add b                                         ; $5CE3: $80
    dec hl                                        ; $5CE4: $2B
    ld [hl], b                                    ; $5CE5: $70
    ret nz                                        ; $5CE6: $C0

    nop                                           ; $5CE7: $00
    nop                                           ; $5CE8: $00
    ld c, [hl]                                    ; $5CE9: $4E
    rst RST_38                                    ; $5CEA: $FF
    add d                                         ; $5CEB: $82
    ld b, h                                       ; $5CEC: $44
    cp a                                          ; $5CED: $BF
    add b                                         ; $5CEE: $80
    ld b, h                                       ; $5CEF: $44
    cp a                                          ; $5CF0: $BF
    and c                                         ; $5CF1: $A1
    ld b, h                                       ; $5CF2: $44
    and c                                         ; $5CF3: $A1
    cp a                                          ; $5CF4: $BF
    ld b, h                                       ; $5CF5: $44
    add b                                         ; $5CF6: $80
    add b                                         ; $5CF7: $80
    ret nz                                        ; $5CF8: $C0

    nop                                           ; $5CF9: $00
    ld [$8F4E], sp                                ; $5CFA: $08 $4E $8F
    ld c, b                                       ; $5CFD: $48
    ld b, h                                       ; $5CFE: $44
    ld a, [bc]                                    ; $5CFF: $0A
    ld [de], a                                    ; $5D00: $12
    ld c, b                                       ; $5D01: $48
    ld [bc], a                                    ; $5D02: $02
    ld [hl+], a                                   ; $5D03: $22
    nop                                           ; $5D04: $00
    inc hl                                        ; $5D05: $23
    push hl                                       ; $5D06: $E5
    ld [$4844], sp                                ; $5D07: $08 $44 $48
    ld h, b                                       ; $5D0A: $60
    nop                                           ; $5D0B: $00
    ld [hl+], a                                   ; $5D0C: $22
    inc b                                         ; $5D0D: $04
    ld [hl], d                                    ; $5D0E: $72
    dec hl                                        ; $5D0F: $2B
    db $E4                                        ; $5D10: $E4

jr_036_5D11:
    ld a, [$4413]                                 ; $5D11: $FA $13 $44
    ld h, l                                       ; $5D14: $65
    pop af                                        ; $5D15: $F1
    ld c, b                                       ; $5D16: $48
    jr nz, jr_036_5D11                            ; $5D17: $20 $F8

jr_036_5D19:
    add h                                         ; $5D19: $84
    ld de, $2066                                  ; $5D1A: $11 $66 $20
    nop                                           ; $5D1D: $00
    jr nc, jr_036_5D20                            ; $5D1E: $30 $00

jr_036_5D20:
    jr nz, jr_036_5D62                            ; $5D20: $20 $40

    ld c, [hl]                                    ; $5D22: $4E
    rst RST_38                                    ; $5D23: $FF
    add b                                         ; $5D24: $80
    ld b, h                                       ; $5D25: $44
    cp a                                          ; $5D26: $BF
    and c                                         ; $5D27: $A1
    ld b, h                                       ; $5D28: $44
    and c                                         ; $5D29: $A1
    cp a                                          ; $5D2A: $BF
    ld b, h                                       ; $5D2B: $44
    add b                                         ; $5D2C: $80
    add b                                         ; $5D2D: $80
    ret nz                                        ; $5D2E: $C0

    nop                                           ; $5D2F: $00
    nop                                           ; $5D30: $00
    ld c, [hl]                                    ; $5D31: $4E
    ld c, a                                       ; $5D32: $4F
    ld b, d                                       ; $5D33: $42
    ld b, h                                       ; $5D34: $44
    ldh a, [c]                                    ; $5D35: $F2
    ld b, d                                       ; $5D36: $42
    ld b, h                                       ; $5D37: $44
    ld b, d                                       ; $5D38: $42
    ld b, d                                       ; $5D39: $42
    ld b, h                                       ; $5D3A: $44
    inc [hl]                                      ; $5D3B: $34
    inc b                                         ; $5D3C: $04
    ld b, h                                       ; $5D3D: $44
    ld [$8011], sp                                ; $5D3E: $08 $11 $80
    nop                                           ; $5D41: $00
    ld de, $1100                                  ; $5D42: $11 $00 $11
    dec h                                         ; $5D45: $25
    ld l, [hl]                                    ; $5D46: $6E
    ld b, a                                       ; $5D47: $47
    db $DD                                        ; $5D48: $DD
    inc h                                         ; $5D49: $24
    ld b, l                                       ; $5D4A: $45
    ld b, l                                       ; $5D4B: $45
    nop                                           ; $5D4C: $00
    ld b, h                                       ; $5D4D: $44
    ld b, h                                       ; $5D4E: $44
    ld [hl+], a                                   ; $5D4F: $22
    ld b, h                                       ; $5D50: $44
    ld b, e                                       ; $5D51: $43
    ldh [rP1], a                                  ; $5D52: $E0 $00
    ld [$0804], sp                                ; $5D54: $08 $04 $08
    ld a, a                                       ; $5D57: $7F
    ldh [rNR10], a                                ; $5D58: $E0 $10
    db $10                                        ; $5D5A: $10
    ld c, [hl]                                    ; $5D5B: $4E
    cpl                                           ; $5D5C: $2F
    ld hl, $4100                                  ; $5D5D: $21 $00 $41
    add c                                         ; $5D60: $81
    nop                                           ; $5D61: $00

jr_036_5D62:
    ld bc, $E01F                                  ; $5D62: $01 $1F $E0
    nop                                           ; $5D65: $00
    ld [$0804], sp                                ; $5D66: $08 $04 $08
    ld a, a                                       ; $5D69: $7F
    ldh [rNR10], a                                ; $5D6A: $E0 $10
    db $10                                        ; $5D6C: $10
    ld c, [hl]                                    ; $5D6D: $4E
    ccf                                           ; $5D6E: $3F
    jr nc, jr_036_5DB5                            ; $5D6F: $30 $44

    ld d, b                                       ; $5D71: $50
    sub b                                         ; $5D72: $90
    ld b, h                                       ; $5D73: $44
    db $10                                        ; $5D74: $10
    rra                                           ; $5D75: $1F
    ret nz                                        ; $5D76: $C0

    nop                                           ; $5D77: $00
    ccf                                           ; $5D78: $3F
    adc b                                         ; $5D79: $88
    jr nz, jr_036_5DBB                            ; $5D7A: $20 $3F

    adc b                                         ; $5D7C: $88
    jr nz, jr_036_5DBE                            ; $5D7D: $20 $3F

    adc b                                         ; $5D7F: $88
    jr nz, @+$41                                  ; $5D80: $20 $3F

    adc b                                         ; $5D82: $88
    ld a, [hl+]                                   ; $5D83: $2A
    ld a, [bc]                                    ; $5D84: $0A
    ld [hl+], a                                   ; $5D85: $22
    ld [de], a                                    ; $5D86: $12
    pop hl                                        ; $5D87: $E1
    ldh [rP1], a                                  ; $5D88: $E0 $00
    nop                                           ; $5D8A: $00
    ld c, [hl]                                    ; $5D8B: $4E
    rst RST_38                                    ; $5D8C: $FF
    inc b                                         ; $5D8D: $04
    ld a, [bc]                                    ; $5D8E: $0A
    cp a                                          ; $5D8F: $BF
    and h                                         ; $5D90: $A4
    xor d                                         ; $5D91: $AA
    cp a                                          ; $5D92: $BF
    and h                                         ; $5D93: $A4
    xor d                                         ; $5D94: $AA
    cp a                                          ; $5D95: $BF
    add b                                         ; $5D96: $80
    ld l, $FF                                     ; $5D97: $2E $FF
    add b                                         ; $5D99: $80
    jr nz, jr_036_5D9C                            ; $5D9A: $20 $00

jr_036_5D9C:
    nop                                           ; $5D9C: $00
    ld c, [hl]                                    ; $5D9D: $4E
    rst RST_38                                    ; $5D9E: $FF
    ld [$1000], sp                                ; $5D9F: $08 $00 $10
    rst RST_38                                    ; $5DA2: $FF
    ldh [c], a                                    ; $5DA3: $E2
    sub c                                         ; $5DA4: $91
    sbc a                                         ; $5DA5: $9F
    ld [hl+], a                                   ; $5DA6: $22
    sub c                                         ; $5DA7: $91
    sbc a                                         ; $5DA8: $9F
    ld [hl+], a                                   ; $5DA9: $22
    sub c                                         ; $5DAA: $91
    rst RST_38                                    ; $5DAB: $FF
    ldh [rP1], a                                  ; $5DAC: $E0 $00
    inc b                                         ; $5DAE: $04
    ld c, b                                       ; $5DAF: $48
    ld b, d                                       ; $5DB0: $42
    ld c, a                                       ; $5DB1: $4F
    ldh [c], a                                    ; $5DB2: $E2
    jp hl                                         ; $5DB3: $E9


    ld c, a                                       ; $5DB4: $4F

jr_036_5DB5:
    ldh [c], a                                    ; $5DB5: $E2
    ld c, c                                       ; $5DB6: $49
    ld c, a                                       ; $5DB7: $4F
    db $E4                                        ; $5DB8: $E4
    ld h, h                                       ; $5DB9: $64
    rst RST_00                                    ; $5DBA: $C7

jr_036_5DBB:
    call nz, $0704                                ; $5DBB: $C4 $04 $07

jr_036_5DBE:
    ret nz                                        ; $5DBE: $C0

    nop                                           ; $5DBF: $00
    ld b, $0C                                     ; $5DC0: $06 $0C
    ld b, h                                       ; $5DC2: $44
    inc h                                         ; $5DC3: $24
    add b                                         ; $5DC4: $80
    dec h                                         ; $5DC5: $25
    ld a, a                                       ; $5DC6: $7F
    call nz, RST_00                               ; $5DC7: $C4 $00 $00
    ld c, h                                       ; $5DCA: $4C
    ld a, a                                       ; $5DCB: $7F

jr_036_5DCC:
    nop                                           ; $5DCC: $00
    ld b, h                                       ; $5DCD: $44
    nop                                           ; $5DCE: $00
    ld a, a                                       ; $5DCF: $7F
    ret nz                                        ; $5DD0: $C0

    nop                                           ; $5DD1: $00
    ld a, h                                       ; $5DD2: $7C
    add d                                         ; $5DD3: $82

jr_036_5DD4:
    dec bc                                        ; $5DD4: $0B
    ld d, c                                       ; $5DD5: $51
    ld c, b                                       ; $5DD6: $48
    jr nz, jr_036_5E58                            ; $5DD7: $20 $7F

    ldh [$FF92], a                                ; $5DD9: $E0 $92
    ld [de], a                                    ; $5DDB: $12
    inc c                                         ; $5DDC: $0C
    ld a, a                                       ; $5DDD: $7F
    ld [de], a                                    ; $5DDE: $12
    ld [bc], a                                    ; $5DDF: $02
    ld [hl+], a                                   ; $5DE0: $22
    pop bc                                        ; $5DE1: $C1
    ldh [rP1], a                                  ; $5DE2: $E0 $00
    inc b                                         ; $5DE4: $04
    ld c, $FF                                     ; $5DE5: $0E $FF
    inc b                                         ; $5DE7: $04
    ld [$003F], sp                                ; $5DE8: $08 $3F $00
    ld c, $7F                                     ; $5DEB: $0E $7F
    add b                                         ; $5DED: $80
    inc h                                         ; $5DEE: $24
    sub e                                         ; $5DEF: $93
    ld [de], a                                    ; $5DF0: $12
    ld [bc], a                                    ; $5DF1: $02
    ld [hl+], a                                   ; $5DF2: $22
    pop bc                                        ; $5DF3: $C1
    ldh [rP1], a                                  ; $5DF4: $E0 $00
    ld hl, $4180                                  ; $5DF6: $21 $80 $41
    sub a                                         ; $5DF9: $97
    ret nz                                        ; $5DFA: $C0

    ld hl, $E46F                                  ; $5DFB: $21 $6F $E4
    and b                                         ; $5DFE: $A0
    cpl                                           ; $5DFF: $2F
    db $E4                                        ; $5E00: $E4
    inc h                                         ; $5E01: $24
    ld [hl+], a                                   ; $5E02: $22
    ld b, h                                       ; $5E03: $44
    jr nz, @+$22                                  ; $5E04: $20 $20

    ret nz                                        ; $5E06: $C0

    nop                                           ; $5E07: $00
    rst RST_38                                    ; $5E08: $FF
    ldh [$FF0A], a                                ; $5E09: $E0 $0A
    ld a, a                                       ; $5E0B: $7F
    call nz, $4A4A                                ; $5E0C: $C4 $4A $4A
    ld c, h                                       ; $5E0F: $4C
    ld a, a                                       ; $5E10: $7F
    db $10                                        ; $5E11: $10
    ld c, $FF                                     ; $5E12: $0E $FF
    ld de, $0F00                                  ; $5E14: $11 $00 $0F
    ld [hl], b                                    ; $5E17: $70
    ret nz                                        ; $5E18: $C0

    nop                                           ; $5E19: $00
    dec c                                         ; $5E1A: $0D
    ld b, d                                       ; $5E1B: $42
    ld [hl], c                                    ; $5E1C: $71
    ld de, $FF0E                                  ; $5E1D: $11 $0E $FF
    ld de, $1102                                  ; $5E20: $11 $02 $11
    dec e                                         ; $5E23: $1D
    inc l                                         ; $5E24: $2C
    ldh a, [$FF90]                                ; $5E25: $F0 $90
    add h                                         ; $5E27: $84
    ld de, $2032                                  ; $5E28: $11 $32 $20
    nop                                           ; $5E2B: $00
    ld a, [de]                                    ; $5E2C: $1A
    nop                                           ; $5E2D: $00
    ld [de], a                                    ; $5E2E: $12
    ld hl, $4008                                  ; $5E2F: $21 $08 $40
    add b                                         ; $5E32: $80
    ld l, b                                       ; $5E33: $68
    ccf                                           ; $5E34: $3F
    ld [$0888], sp                                ; $5E35: $08 $88 $08
    db $10                                        ; $5E38: $10
    adc b                                         ; $5E39: $88
    jr nz, jr_036_5E7F                            ; $5E3A: $20 $43

    nop                                           ; $5E3C: $00
    nop                                           ; $5E3D: $00
    jr nz, jr_036_5DCC                            ; $5E3E: $20 $8C

    cpl                                           ; $5E40: $2F
    db $F4                                        ; $5E41: $F4
    add b                                         ; $5E42: $80
    dec h                                         ; $5E43: $25
    dec h                                         ; $5E44: $25
    call nz, Call_036_6634                        ; $5E45: $C4 $34 $66
    ld b, h                                       ; $5E48: $44
    and l                                         ; $5E49: $A5
    jr z, jr_036_5DD4                             ; $5E4A: $28 $88

    add hl, hl                                    ; $5E4C: $29
    ld h, [hl]                                    ; $5E4D: $66

jr_036_5E4E:
    ld h, b                                       ; $5E4E: $60
    nop                                           ; $5E4F: $00
    db $FC                                        ; $5E50: $FC
    ld c, $4B                                     ; $5E51: $0E $4B
    ld a, c                                       ; $5E53: $79
    ld [hl+], a                                   ; $5E54: $22
    ld c, c                                       ; $5E55: $49
    ld c, c                                       ; $5E56: $49
    inc h                                         ; $5E57: $24

jr_036_5E58:
    ld a, c                                       ; $5E58: $79
    ld c, c                                       ; $5E59: $49
    ld c, b                                       ; $5E5A: $48
    ld c, b                                       ; $5E5B: $48
    ld a, b                                       ; $5E5C: $78
    add h                                         ; $5E5D: $84
    ret                                           ; $5E5E: $C9


    ld a, [bc]                                    ; $5E5F: $0A
    jr nz, jr_036_5E62                            ; $5E60: $20 $00

jr_036_5E62:
    scf                                           ; $5E62: $37
    call nz, $A7A0                                ; $5E63: $C4 $A0 $A7
    call nz, $AFA0                                ; $5E66: $C4 $A0 $AF
    ldh [c], a                                    ; $5E69: $E2
    xor c                                         ; $5E6A: $A9
    daa                                           ; $5E6B: $27
    call nz, $4525                                ; $5E6C: $C4 $25 $45
    ld c, h                                       ; $5E6F: $4C
    ld b, l                                       ; $5E70: $45
    add c                                         ; $5E71: $81
    nop                                           ; $5E72: $00
    nop                                           ; $5E73: $00
    jr nz, jr_036_5E84                            ; $5E74: $20 $0E

    db $FD                                        ; $5E76: $FD
    ld c, c                                       ; $5E77: $49
    inc h                                         ; $5E78: $24
    ld d, c                                       ; $5E79: $51
    db $FD                                        ; $5E7A: $FD
    ld b, d                                       ; $5E7B: $42
    ld bc, $2279                                  ; $5E7C: $01 $79 $22

jr_036_5E7F:
    ld c, c                                       ; $5E7F: $49
    ld c, c                                       ; $5E80: $49
    ret nz                                        ; $5E81: $C0

    ld a, c                                       ; $5E82: $79
    ld c, c                                       ; $5E83: $49

jr_036_5E84:
    nop                                           ; $5E84: $00
    nop                                           ; $5E85: $00
    ld a, a                                       ; $5E86: $7F
    ldh [c], a                                    ; $5E87: $E2
    ld b, b                                       ; $5E88: $40
    ld a, a                                       ; $5E89: $7F
    ldh [rLCDC], a                                ; $5E8A: $E0 $40
    ld a, a                                       ; $5E8C: $7F
    ret z                                         ; $5E8D: $C8

    ld c, b                                       ; $5E8E: $48
    ld e, a                                       ; $5E8F: $5F
    ld b, b                                       ; $5E90: $40
    ld b, d                                       ; $5E91: $42
    ld e, a                                       ; $5E92: $5F
    ret nz                                        ; $5E93: $C0

    add d                                         ; $5E94: $82
    cp a                                          ; $5E95: $BF
    ldh [rP1], a                                  ; $5E96: $E0 $00
    ld [hl+], a                                   ; $5E98: $22
    ld c, $53                                     ; $5E99: $0E $53
    adc h                                         ; $5E9B: $8C
    adc b                                         ; $5E9C: $88
    ld a, b                                       ; $5E9D: $78
    ld c, e                                       ; $5E9E: $4B
    ld [$4A7A], a                                 ; $5E9F: $EA $7A $4A
    xor d                                         ; $5EA2: $AA
    ld a, d                                       ; $5EA3: $7A
    ld d, d                                       ; $5EA4: $52
    xor [hl]                                      ; $5EA5: $AE
    ld a, d                                       ; $5EA6: $7A
    ret z                                         ; $5EA7: $C8

    add b                                         ; $5EA8: $80
    nop                                           ; $5EA9: $00
    ld b, h                                       ; $5EAA: $44
    ld b, h                                       ; $5EAB: $44
    ld b, h                                       ; $5EAC: $44
    ld a, a                                       ; $5EAD: $7F
    ret nz                                        ; $5EAE: $C0

    nop                                           ; $5EAF: $00
    rst RST_38                                    ; $5EB0: $FF
    ldh [$FF08], a                                ; $5EB1: $E0 $08
    db $10                                        ; $5EB3: $10
    inc c                                         ; $5EB4: $0C
    ccf                                           ; $5EB5: $3F
    ret nc                                        ; $5EB6: $D0

    ld b, h                                       ; $5EB7: $44
    db $10                                        ; $5EB8: $10
    rra                                           ; $5EB9: $1F
    ret nz                                        ; $5EBA: $C0

    nop                                           ; $5EBB: $00
    ld b, $04                                     ; $5EBC: $06 $04
    ld b, h                                       ; $5EBE: $44
    ld a, a                                       ; $5EBF: $7F
    db $E4                                        ; $5EC0: $E4
    ld b, b                                       ; $5EC1: $40
    add c                                         ; $5EC2: $81
    nop                                           ; $5EC3: $00
    add hl, de                                    ; $5EC4: $19
    ld de, $2008                                  ; $5EC5: $11 $08 $20
    jr nz, jr_036_5E4E                            ; $5EC8: $20 $84

    ld b, b                                       ; $5ECA: $40
    add b                                         ; $5ECB: $80
    jr nz, jr_036_5ECE                            ; $5ECC: $20 $00

jr_036_5ECE:
    ld de, $FF0E                                  ; $5ECE: $11 $0E $FF
    ld de, $4200                                  ; $5ED1: $11 $00 $42
    inc hl                                        ; $5ED4: $23
    db $E4                                        ; $5ED5: $E4
    adc h                                         ; $5ED6: $8C
    ld b, e                                       ; $5ED7: $43
    add [hl]                                      ; $5ED8: $86
    inc c                                         ; $5ED9: $0C
    daa                                           ; $5EDA: $27
    call nz, Call_036_47C4                        ; $5EDB: $C4 $C4 $47
    ret nz                                        ; $5EDE: $C0

    nop                                           ; $5EDF: $00
    ld [hl-], a                                   ; $5EE0: $32
    inc c                                         ; $5EE1: $0C
    db $E3                                        ; $5EE2: $E3
    inc h                                         ; $5EE3: $24
    ld c, b                                       ; $5EE4: $48
    ldh a, [c]                                    ; $5EE5: $F2
    ld hl, $7208                                  ; $5EE6: $21 $08 $72
    ld l, c                                       ; $5EE9: $69
    ldh [c], a                                    ; $5EEA: $E2
    and d                                         ; $5EEB: $A2
    dec h                                         ; $5EEC: $25
    ld c, b                                       ; $5EED: $48
    ld hl, $0026                                  ; $5EEE: $21 $26 $00
    nop                                           ; $5EF1: $00
    ld de, $6180                                  ; $5EF2: $11 $80 $61
    ld sp, hl                                     ; $5EF5: $F9
    ld c, $27                                     ; $5EF6: $0E $27
    ld sp, hl                                     ; $5EF8: $F9
    ld [hl+], a                                   ; $5EF9: $22
    xor c                                         ; $5EFA: $A9
    ld sp, hl                                     ; $5EFB: $F9
    ld [hl+], a                                   ; $5EFC: $22
    xor c                                         ; $5EFD: $A9
    ld a, [$6222]                                 ; $5EFE: $FA $22 $62
    db $F4                                        ; $5F01: $F4
    ret nz                                        ; $5F02: $C0

    nop                                           ; $5F03: $00
    nop                                           ; $5F04: $00
    adc h                                         ; $5F05: $8C
    rra                                           ; $5F06: $1F
    add sp, -$80                                  ; $5F07: $E8 $80
    xor c                                         ; $5F09: $A9
    xor l                                         ; $5F0A: $AD
    call nz, $EAAC                                ; $5F0B: $C4 $AC $EA
    adc b                                         ; $5F0E: $88
    sub d                                         ; $5F0F: $92
    ld de, $2208                                  ; $5F10: $11 $08 $22
    ld c, h                                       ; $5F13: $4C
    ld h, b                                       ; $5F14: $60
    nop                                           ; $5F15: $00
    db $10                                        ; $5F16: $10
    ld c, $57                                     ; $5F17: $0E $57
    ld d, b                                       ; $5F19: $50
    ld [hl+], a                                   ; $5F1A: $22
    ld d, d                                       ; $5F1B: $52
    ld d, d                                       ; $5F1C: $52
    inc h                                         ; $5F1D: $24
    ld d, c                                       ; $5F1E: $51
    ld e, b                                       ; $5F1F: $58
    ret z                                         ; $5F20: $C8

    ldh a, [$FF91]                                ; $5F21: $F0 $91
    ld b, h                                       ; $5F23: $44
    ld [de], a                                    ; $5F24: $12
    inc d                                         ; $5F25: $14
    jr nz, jr_036_5F28                            ; $5F26: $20 $00

jr_036_5F28:
    rst RST_38                                    ; $5F28: $FF
    add b                                         ; $5F29: $80
    add b                                         ; $5F2A: $80
    add b                                         ; $5F2B: $80
    nop                                           ; $5F2C: $00
    rst RST_38                                    ; $5F2D: $FF
    add c                                         ; $5F2E: $81
    nop                                           ; $5F2F: $00
    add c                                         ; $5F30: $81
    rst RST_38                                    ; $5F31: $FF
    nop                                           ; $5F32: $00
    add b                                         ; $5F33: $80
    add b                                         ; $5F34: $80
    adc b                                         ; $5F35: $88
    rst RST_38                                    ; $5F36: $FF
    add b                                         ; $5F37: $80
    nop                                           ; $5F38: $00
    nop                                           ; $5F39: $00
    ld d, $00                                     ; $5F3A: $16 $00
    inc d                                         ; $5F3C: $14
    inc h                                         ; $5F3D: $24
    ld l, h                                       ; $5F3E: $6C
    ld h, h                                       ; $5F3F: $64
    and a                                         ; $5F40: $A7
    nop                                           ; $5F41: $00
    inc h                                         ; $5F42: $24
    inc h                                         ; $5F43: $24
    nop                                           ; $5F44: $00
    inc h                                         ; $5F45: $24
    inc h                                         ; $5F46: $24
    ld b, [hl]                                    ; $5F47: $46
    inc h                                         ; $5F48: $24
    inc hl                                        ; $5F49: $23
    ret nz                                        ; $5F4A: $C0

    nop                                           ; $5F4B: $00
    jr nz, jr_036_5F78                            ; $5F4C: $20 $2A

    ld a, $48                                     ; $5F4E: $3E $48

Call_036_5F50:
    xor d                                         ; $5F50: $AA
    ld c, d                                       ; $5F51: $4A
    sbc $AA                                       ; $5F52: $DE $AA
    ld b, b                                       ; $5F54: $40
    ld b, h                                       ; $5F55: $44
    xor d                                         ; $5F56: $AA
    ld e, [hl]                                    ; $5F57: $5E
    ld b, h                                       ; $5F58: $44
    ld [hl+], a                                   ; $5F59: $22
    ld b, a                                       ; $5F5A: $47
    ld e, b                                       ; $5F5B: $58
    ld h, b                                       ; $5F5C: $60
    nop                                           ; $5F5D: $00
    ld c, $E2                                     ; $5F5E: $0E $E2
    jp nz, $E82E                                  ; $5F60: $C2 $2E $E8

    ld [$E8EE], sp                                ; $5F63: $08 $EE $E8
    ld [hl+], a                                   ; $5F66: $22
    daa                                           ; $5F67: $27
    ret z                                         ; $5F68: $C8

    ld [hl+], a                                   ; $5F69: $22
    cpl                                           ; $5F6A: $2F
    db $E4                                        ; $5F6B: $E4
    ld d, h                                       ; $5F6C: $54
    adc a                                         ; $5F6D: $8F
    ldh [rP1], a                                  ; $5F6E: $E0 $00
    ld [bc], a                                    ; $5F70: $02
    ld a, [hl+]                                   ; $5F71: $2A
    ld a, [hl]                                    ; $5F72: $7E
    ld b, d                                       ; $5F73: $42
    xor d                                         ; $5F74: $AA
    ld a, [hl]                                    ; $5F75: $7E
    ld c, b                                       ; $5F76: $48
    xor d                                         ; $5F77: $AA

jr_036_5F78:
    ld a, [hl]                                    ; $5F78: $7E
    ld l, d                                       ; $5F79: $6A
    xor d                                         ; $5F7A: $AA
    ld l, d                                       ; $5F7B: $6A
    xor d                                         ; $5F7C: $AA
    ld [hl+], a                                   ; $5F7D: $22
    xor [hl]                                      ; $5F7E: $AE
    ld [$0060], sp                                ; $5F7F: $08 $60 $00
    ld [hl+], a                                   ; $5F82: $22
    inc c                                         ; $5F83: $0C
    ld b, e                                       ; $5F84: $43
    sub h                                         ; $5F85: $94
    ld c, b                                       ; $5F86: $48
    ld h, d                                       ; $5F87: $62
    ld c, c                                       ; $5F88: $49
    ld [$24FA], sp                                ; $5F89: $08 $FA $24
    ld l, b                                       ; $5F8C: $68
    xor c                                         ; $5F8D: $A9
    xor b                                         ; $5F8E: $A8
    ld c, b                                       ; $5F8F: $48

Call_036_5F90:
    xor c                                         ; $5F90: $A9
    jr nz, jr_036_5FD3                            ; $5F91: $20 $40

    nop                                           ; $5F93: $00
    nop                                           ; $5F94: $00
    adc h                                         ; $5F95: $8C
    ld a, a                                       ; $5F96: $7F
    nop                                           ; $5F97: $00
    add b                                         ; $5F98: $80
    ld bc, $0006                                  ; $5F99: $01 $06 $00
    inc b                                         ; $5F9C: $04
    inc b                                         ; $5F9D: $04
    nop                                           ; $5F9E: $00
    inc b                                         ; $5F9F: $04
    inc b                                         ; $5FA0: $04
    nop                                           ; $5FA1: $00
    inc e                                         ; $5FA2: $1C

jr_036_5FA3:
    ld [$0000], sp                                ; $5FA3: $08 $00 $00
    dec b                                         ; $5FA6: $05
    inc c                                         ; $5FA7: $0C

jr_036_5FA8:
    inc b                                         ; $5FA8: $04
    rst RST_38                                    ; $5FA9: $FF
    db $E4                                        ; $5FAA: $E4
    inc b                                         ; $5FAB: $04
    call nz, Call_000_2D80                        ; $5FAC: $C4 $80 $2D
    ld d, $00                                     ; $5FAF: $16 $00
    dec h                                         ; $5FB1: $25
    ld b, h                                       ; $5FB2: $44
    add [hl]                                      ; $5FB3: $86
    sbc h                                         ; $5FB4: $9C
    ld [$0000], sp                                ; $5FB5: $08 $00 $00
    ld hl, $2104                                  ; $5FB8: $21 $04 $21
    ld d, a                                       ; $5FBB: $57
    ldh [c], a                                    ; $5FBC: $E2
    sub h                                         ; $5FBD: $94
    inc h                                         ; $5FBE: $24
    ld c, [hl]                                    ; $5FBF: $4E
    ld h, a                                       ; $5FC0: $67
    and h                                         ; $5FC1: $A4
    ld [hl+], a                                   ; $5FC2: $22
    ld h, $25                                     ; $5FC3: $26 $25
    ld c, b                                       ; $5FC5: $48
    inc h                                         ; $5FC6: $24
    dec hl                                        ; $5FC7: $2B

Call_036_5FC8:
    ld h, b                                       ; $5FC8: $60
    nop                                           ; $5FC9: $00
    ld de, $FF0E                                  ; $5FCA: $11 $0E $FF
    ld de, $0000                                  ; $5FCD: $11 $00 $00
    ld [de], a                                    ; $5FD0: $12
    inc h                                         ; $5FD1: $24
    ld [de], a                                    ; $5FD2: $12

jr_036_5FD3:
    inc hl                                        ; $5FD3: $23
    add b                                         ; $5FD4: $80
    ld h, d                                       ; $5FD5: $62
    and d                                         ; $5FD6: $A2
    ld [hl+], a                                   ; $5FD7: $22
    ld [hl+], a                                   ; $5FD8: $22
    ld hl, $00E0                                  ; $5FD9: $21 $E0 $00
    jr nz, jr_036_602C                            ; $5FDC: $20 $4E

    inc hl                                        ; $5FDE: $23
    xor d                                         ; $5FDF: $AA
    xor d                                         ; $5FE0: $AA
    xor d                                         ; $5FE1: $AA
    ld l, d                                       ; $5FE2: $6A
    xor [hl]                                      ; $5FE3: $AE
    ld l, e                                       ; $5FE4: $6B
    ld [hl+], a                                   ; $5FE5: $22
    xor d                                         ; $5FE6: $AA
    ld [hl+], a                                   ; $5FE7: $22
    ld d, d                                       ; $5FE8: $52
    xor [hl]                                      ; $5FE9: $AE
    ld c, e                                       ; $5FEA: $4B
    adc b                                         ; $5FEB: $88
    nop                                           ; $5FEC: $00
    nop                                           ; $5FED: $00
    nop                                           ; $5FEE: $00
    ld c, [hl]                                    ; $5FEF: $4E
    ld a, a                                       ; $5FF0: $7F
    ld b, h                                       ; $5FF1: $44
    ld c, h                                       ; $5FF2: $4C
    ld a, a                                       ; $5FF3: $7F
    ld b, h                                       ; $5FF4: $44
    ld c, h                                       ; $5FF5: $4C
    ld a, a                                       ; $5FF6: $7F
    inc b                                         ; $5FF7: $04
    ld c, $FF                                     ; $5FF8: $0E $FF
    ld [$1022], sp                                ; $5FFA: $08 $22 $10
    db $E3                                        ; $5FFD: $E3
    ret nz                                        ; $5FFE: $C0

    nop                                           ; $5FFF: $00
    nop                                           ; $6000: $00
    ld c, [hl]                                    ; $6001: $4E
    rst RST_38                                    ; $6002: $FF
    ld [$0800], sp                                ; $6003: $08 $00 $08
    db $10                                        ; $6006: $10
    ld c, [hl]                                    ; $6007: $4E
    ccf                                           ; $6008: $3F
    ld d, b                                       ; $6009: $50
    ld b, h                                       ; $600A: $44
    sub b                                         ; $600B: $90
    db $10                                        ; $600C: $10
    ld c, h                                       ; $600D: $4C
    rra                                           ; $600E: $1F
    db $10                                        ; $600F: $10
    ld b, b                                       ; $6010: $40
    nop                                           ; $6011: $00
    inc de                                        ; $6012: $13
    ld [$C420], sp                                ; $6013: $08 $20 $C4
    ld b, b                                       ; $6016: $40
    ld a, [bc]                                    ; $6017: $0A
    ld de, $2008                                  ; $6018: $11 $08 $20
    rst RST_38                                    ; $601B: $FF
    add sp, $20                                   ; $601C: $E8 $20
    jr nz, jr_036_5FA8                            ; $601E: $20 $88

    ccf                                           ; $6020: $3F
    jr nz, jr_036_5FA3                            ; $6021: $20 $80

    nop                                           ; $6023: $00
    inc c                                         ; $6024: $0C
    inc b                                         ; $6025: $04
    ld [$E0FF], sp                                ; $6026: $08 $FF $E0
    ld [$8C08], sp                                ; $6029: $08 $08 $8C

jr_036_602C:
    rra                                           ; $602C: $1F
    inc d                                         ; $602D: $14
    adc b                                         ; $602E: $88
    inc h                                         ; $602F: $24
    inc hl                                        ; $6030: $23
    ld [$9845], sp                                ; $6031: $08 $45 $98
    ld h, b                                       ; $6034: $60
    nop                                           ; $6035: $00
    inc b                                         ; $6036: $04
    ld c, $FF                                     ; $6037: $0E $FF
    add b                                         ; $6039: $80
    jr nz, jr_036_6044                            ; $603A: $20 $08

    rst RST_38                                    ; $603C: $FF
    ldh [$FF08], a                                ; $603D: $E0 $08
    ld [de], a                                    ; $603F: $12
    nop                                           ; $6040: $00
    ld [de], a                                    ; $6041: $12
    inc h                                         ; $6042: $24
    adc b                                         ; $6043: $88

jr_036_6044:
    ld c, b                                       ; $6044: $48
    sbc a                                         ; $6045: $9F
    ld b, b                                       ; $6046: $40
    nop                                           ; $6047: $00
    inc b                                         ; $6048: $04
    nop                                           ; $6049: $00
    ld b, $04                                     ; $604A: $06 $04
    ld [$2434], sp                                ; $604C: $08 $34 $24
    ld b, h                                       ; $604F: $44
    ld b, h                                       ; $6050: $44
    ld b, h                                       ; $6051: $44
    ld [hl+], a                                   ; $6052: $22
    add h                                         ; $6053: $84
    inc b                                         ; $6054: $04
    nop                                           ; $6055: $00
    inc e                                         ; $6056: $1C
    ld [$0000], sp                                ; $6057: $08 $00 $00
    dec b                                         ; $605A: $05
    ld c, d                                       ; $605B: $4A
    ei                                            ; $605C: $FB
    dec h                                         ; $605D: $25
    ld c, d                                       ; $605E: $4A
    dec hl                                        ; $605F: $2B
    ld c, a                                       ; $6060: $4F
    db $E4                                        ; $6061: $E4
    ld [hl], c                                    ; $6062: $71
    rst RST_18                                    ; $6063: $DF
    ld [$5654], a                                 ; $6064: $EA $54 $56
    call nz, $4875                                ; $6067: $C4 $75 $48
    and b                                         ; $606A: $A0
    nop                                           ; $606B: $00
    ld b, d                                       ; $606C: $42
    ld b, d                                       ; $606D: $42
    ld b, d                                       ; $606E: $42
    db $F4                                        ; $606F: $F4
    jr z, jr_036_6083                             ; $6070: $28 $11

    ld [hl+], a                                   ; $6072: $22
    ld b, d                                       ; $6073: $42
    ld d, h                                       ; $6074: $54
    db $E3                                        ; $6075: $E3
    call nz, Call_036_5252                        ; $6076: $C4 $52 $52
    ld b, h                                       ; $6079: $44
    ld b, d                                       ; $607A: $42
    ld b, e                                       ; $607B: $43
    ret nz                                        ; $607C: $C0

    nop                                           ; $607D: $00
    rlca                                          ; $607E: $07
    ldh [c], a                                    ; $607F: $E2
    pop af                                        ; $6080: $F1
    sub c                                         ; $6081: $91
    ld [hl+], a                                   ; $6082: $22

jr_036_6083:
    sub c                                         ; $6083: $91
    ldh a, [c]                                    ; $6084: $F2
    inc l                                         ; $6085: $2C
    sub h                                         ; $6086: $94
    sub b                                         ; $6087: $90
    ld c, $F7                                     ; $6088: $0E $F7
    sub h                                         ; $608A: $94
    ld [hl+], a                                   ; $608B: $22
    inc b                                         ; $608C: $04
    rlca                                          ; $608D: $07
    ldh [rP1], a                                  ; $608E: $E0 $00
    inc b                                         ; $6090: $04
    ld c, $FF                                     ; $6091: $0E $FF
    ld de, $0E00                                  ; $6093: $11 $00 $0E
    ld sp, $CE86                                  ; $6096: $31 $86 $CE
    ld b, b                                       ; $6099: $40
    ld c, h                                       ; $609A: $4C
    ld a, a                                       ; $609B: $7F
    ld b, h                                       ; $609C: $44
    ld b, h                                       ; $609D: $44
    ld d, l                                       ; $609E: $55
    adc h                                         ; $609F: $8C
    ld b, b                                       ; $60A0: $40
    nop                                           ; $60A1: $00
    ld de, $FF0E                                  ; $60A2: $11 $0E $FF
    ld bc, $770C                                  ; $60A5: $01 $0C $77
    ld d, d                                       ; $60A8: $52
    adc [hl]                                      ; $60A9: $8E
    ld [hl], a                                    ; $60AA: $77
    ld d, l                                       ; $60AB: $55
    ld b, d                                       ; $60AC: $42
    ld a, c                                       ; $60AD: $79
    ld d, l                                       ; $60AE: $55
    ld c, b                                       ; $60AF: $48
    sub e                                         ; $60B0: $93
    sub l                                         ; $60B1: $95
    ld h, b                                       ; $60B2: $60
    nop                                           ; $60B3: $00
    inc b                                         ; $60B4: $04
    inc c                                         ; $60B5: $0C
    rlca                                          ; $60B6: $07
    inc b                                         ; $60B7: $04
    inc c                                         ; $60B8: $0C
    ld a, a                                       ; $60B9: $7F
    ld b, b                                       ; $60BA: $40
    ld c, h                                       ; $60BB: $4C
    ld a, a                                       ; $60BC: $7F
    ld b, b                                       ; $60BD: $40
    ld c, h                                       ; $60BE: $4C
    ld a, a                                       ; $60BF: $7F
    inc b                                         ; $60C0: $04
    ld c, $FF                                     ; $60C1: $0E $FF
    inc b                                         ; $60C3: $04
    nop                                           ; $60C4: $00
    nop                                           ; $60C5: $00
    ld b, $04                                     ; $60C6: $06 $04
    inc [hl]                                      ; $60C8: $34
    dec h                                         ; $60C9: $25
    db $E4                                        ; $60CA: $E4
    ld a, $E4                                     ; $60CB: $3E $E4
    ld c, h                                       ; $60CD: $4C
    inc h                                         ; $60CE: $24
    inc h                                         ; $60CF: $24
    ld [bc], a                                    ; $60D0: $02
    inc h                                         ; $60D1: $24
    jr nz, @+$24                                  ; $60D2: $20 $22

    jr nz, @+$21                                  ; $60D4: $20 $1F

    ldh [rP1], a                                  ; $60D6: $E0 $00
    ld a, a                                       ; $60D8: $7F
    ret nz                                        ; $60D9: $C0

    inc b                                         ; $60DA: $04
    rst RST_38                                    ; $60DB: $FF
    ldh [c], a                                    ; $60DC: $E2
    and l                                         ; $60DD: $A5
    db $10                                        ; $60DE: $10
    adc h                                         ; $60DF: $8C
    di                                            ; $60E0: $F3
    sub [hl]                                      ; $60E1: $96
    ld c, b                                       ; $60E2: $48
    pop af                                        ; $60E3: $F1
    daa                                           ; $60E4: $27
    db $E4                                        ; $60E5: $E4
    or d                                          ; $60E6: $B2
    db $E3                                        ; $60E7: $E3
    ret nz                                        ; $60E8: $C0

    nop                                           ; $60E9: $00
    ld b, $00                                     ; $60EA: $06 $00
    inc b                                         ; $60EC: $04
    inc b                                         ; $60ED: $04
    ld c, [hl]                                    ; $60EE: $4E
    rst RST_38                                    ; $60EF: $FF
    ld c, $00                                     ; $60F0: $0E $00
    dec d                                         ; $60F2: $15
    dec d                                         ; $60F3: $15
    ld [$4424], sp                                ; $60F4: $08 $24 $44
    ld b, d                                       ; $60F7: $42
    add h                                         ; $60F8: $84
    inc b                                         ; $60F9: $04
    nop                                           ; $60FA: $00
    nop                                           ; $60FB: $00
    ld b, d                                       ; $60FC: $42
    ld c, $7B                                     ; $60FD: $0E $7B
    and h                                         ; $60FF: $A4
    adc h                                         ; $6100: $8C
    ccf                                           ; $6101: $3F
    inc h                                         ; $6102: $24
    inc c                                         ; $6103: $0C

jr_036_6104:
    ccf                                           ; $6104: $3F
    inc h                                         ; $6105: $24
    ld c, $3F                                     ; $6106: $0E $3F
    nop                                           ; $6108: $00
    ld [hl+], a                                   ; $6109: $22
    ld d, l                                       ; $610A: $55
    sub d                                         ; $610B: $92
    ret nz                                        ; $610C: $C0

    nop                                           ; $610D: $00
    ld b, $04                                     ; $610E: $06 $04
    ld b, h                                       ; $6110: $44
    ld a, a                                       ; $6111: $7F
    db $E4                                        ; $6112: $E4
    ld b, h                                       ; $6113: $44
    ld b, h                                       ; $6114: $44
    ld c, h                                       ; $6115: $4C
    ld a, a                                       ; $6116: $7F
    ld b, h                                       ; $6117: $44
    ld b, b                                       ; $6118: $40
    jr jr_036_6127                                ; $6119: $18 $0C

    nop                                           ; $611B: $00
    inc de                                        ; $611C: $13
    ldh [$FFE0], a                                ; $611D: $E0 $E0
    nop                                           ; $611F: $00
    ld hl, sp+$2E                                 ; $6120: $F8 $2E
    xor a                                         ; $6122: $AF
    xor b                                         ; $6123: $A8
    adc b                                         ; $6124: $88
    ld hl, sp-$58                                 ; $6125: $F8 $A8

jr_036_6127:
    adc b                                         ; $6127: $88
    xor b                                         ; $6128: $A8
    ld hl, sp-$78                                 ; $6129: $F8 $88
    adc b                                         ; $612B: $88
    nop                                           ; $612C: $00
    adc b                                         ; $612D: $88
    inc bc                                        ; $612E: $03
    ld bc, $0000                                  ; $612F: $01 $00 $00
    nop                                           ; $6132: $00
    ld c, [hl]                                    ; $6133: $4E
    ld a, a                                       ; $6134: $7F
    ld b, h                                       ; $6135: $44
    ld b, h                                       ; $6136: $44
    ld b, h                                       ; $6137: $44
    ld b, h                                       ; $6138: $44
    ld c, h                                       ; $6139: $4C
    ld a, a                                       ; $613A: $7F
    ld b, h                                       ; $613B: $44
    ld b, h                                       ; $613C: $44
    ld b, h                                       ; $613D: $44
    ld b, h                                       ; $613E: $44
    ld c, h                                       ; $613F: $4C
    ld a, a                                       ; $6140: $7F
    ld b, b                                       ; $6141: $40
    ld b, b                                       ; $6142: $40
    nop                                           ; $6143: $00
    ld [hl+], a                                   ; $6144: $22
    inc b                                         ; $6145: $04
    inc h                                         ; $6146: $24
    ld c, a                                       ; $6147: $4F
    ldh [rLYC], a                                 ; $6148: $E0 $45
    push bc                                       ; $614A: $C5
    ld l, $48                                     ; $614B: $2E $48
    ld b, d                                       ; $614D: $42
    ld [$4C47], sp                                ; $614E: $08 $47 $4C
    add b                                         ; $6151: $80
    ld b, e                                       ; $6152: $43
    ld e, h                                       ; $6153: $5C
    ldh [rP1], a                                  ; $6154: $E0 $00
    inc b                                         ; $6156: $04
    inc c                                         ; $6157: $0C
    ld a, a                                       ; $6158: $7F
    ld de, $7F0E                                  ; $6159: $11 $0E $7F
    ld b, b                                       ; $615C: $40
    add b                                         ; $615D: $80
    ld b, e                                       ; $615E: $43
    ld e, h                                       ; $615F: $5C
    ld c, b                                       ; $6160: $48
    ld b, c                                       ; $6161: $41
    ld e, [hl]                                    ; $6162: $5E
    inc l                                         ; $6163: $2C
    ld b, b                                       ; $6164: $40
    sbc a                                         ; $6165: $9F
    nop                                           ; $6166: $00
    nop                                           ; $6167: $00
    rrca                                          ; $6168: $0F
    ldh [c], a                                    ; $6169: $E2
    ld [$8023], sp                                ; $616A: $08 $23 $80
    pop af                                        ; $616D: $F1
    inc hl                                        ; $616E: $23
    inc l                                         ; $616F: $2C
    dec l                                         ; $6170: $2D
    ld [hl+], a                                   ; $6171: $22
    adc h                                         ; $6172: $8C
    dec [hl]                                      ; $6173: $35
    jp z, $04A8                                   ; $6174: $CA $A8 $04

    inc bc                                        ; $6177: $03
    nop                                           ; $6178: $00
    nop                                           ; $6179: $00
    inc b                                         ; $617A: $04
    inc c                                         ; $617B: $0C
    ld a, a                                       ; $617C: $7F
    inc b                                         ; $617D: $04
    ld c, $FF                                     ; $617E: $0E $FF
    jr nz, jr_036_6104                            ; $6180: $20 $82

    ld de, $E0FF                                  ; $6182: $11 $FF $E0
    inc b                                         ; $6185: $04
    ld a, a                                       ; $6186: $7F
    ret nz                                        ; $6187: $C0

    inc b                                         ; $6188: $04
    inc b                                         ; $6189: $04
    nop                                           ; $618A: $00
    nop                                           ; $618B: $00
    nop                                           ; $618C: $00
    nop                                           ; $618D: $00
    nop                                           ; $618E: $00
    nop                                           ; $618F: $00
    adc h                                         ; $6190: $8C
    ld a, a                                       ; $6191: $7F
    nop                                           ; $6192: $00
    nop                                           ; $6193: $00
    nop                                           ; $6194: $00
    nop                                           ; $6195: $00
    nop                                           ; $6196: $00
    nop                                           ; $6197: $00
    nop                                           ; $6198: $00
    ld c, [hl]                                    ; $6199: $4E
    rst RST_38                                    ; $619A: $FF
    nop                                           ; $619B: $00
    nop                                           ; $619C: $00
    nop                                           ; $619D: $00
    db $10                                        ; $619E: $10
    inc c                                         ; $619F: $0C
    ld a, a                                       ; $61A0: $7F
    ld d, l                                       ; $61A1: $55
    ld b, h                                       ; $61A2: $44
    ld b, h                                       ; $61A3: $44
    ld e, a                                       ; $61A4: $5F
    ld b, h                                       ; $61A5: $44
    ld b, h                                       ; $61A6: $44
    ld d, l                                       ; $61A7: $55
    ld c, [hl]                                    ; $61A8: $4E
    rst RST_38                                    ; $61A9: $FF
    ld a, [bc]                                    ; $61AA: $0A
    nop                                           ; $61AB: $00
    ld de, $C060                                  ; $61AC: $11 $60 $C0
    nop                                           ; $61AF: $00
    inc c                                         ; $61B0: $0C
    nop                                           ; $61B1: $00
    ld [$0608], sp                                ; $61B2: $08 $08 $06
    ret z                                         ; $61B5: $C8

    adc b                                         ; $61B6: $88
    ld b, h                                       ; $61B7: $44
    adc b                                         ; $61B8: $88
    adc b                                         ; $61B9: $88
    ld b, h                                       ; $61BA: $44
    adc b                                         ; $61BB: $88
    adc b                                         ; $61BC: $88
    ld c, h                                       ; $61BD: $4C
    rst RST_38                                    ; $61BE: $FF
    add b                                         ; $61BF: $80
    ld b, b                                       ; $61C0: $40
    nop                                           ; $61C1: $00
    ld bc, $7980                                  ; $61C2: $01 $80 $79
    ld c, c                                       ; $61C5: $49
    ld c, $4B                                     ; $61C6: $0E $4B
    ld a, c                                       ; $61C8: $79
    ld [hl+], a                                   ; $61C9: $22
    ld c, c                                       ; $61CA: $49
    ld a, c                                       ; $61CB: $79
    ld [hl+], a                                   ; $61CC: $22
    ld c, d                                       ; $61CD: $4A
    ld e, d                                       ; $61CE: $5A
    ld [hl+], a                                   ; $61CF: $22
    db $E4                                        ; $61D0: $E4
    ld [$00C0], sp                                ; $61D1: $08 $C0 $00
    nop                                           ; $61D4: $00
    adc h                                         ; $61D5: $8C
    ld a, a                                       ; $61D6: $7F
    nop                                           ; $61D7: $00
    nop                                           ; $61D8: $00
    nop                                           ; $61D9: $00
    ld bc, $3F08                                  ; $61DA: $01 $08 $3F
    nop                                           ; $61DD: $00
    nop                                           ; $61DE: $00
    nop                                           ; $61DF: $00
    nop                                           ; $61E0: $00
    ld c, [hl]                                    ; $61E1: $4E
    rst RST_38                                    ; $61E2: $FF
    nop                                           ; $61E3: $00
    nop                                           ; $61E4: $00
    nop                                           ; $61E5: $00
    db $10                                        ; $61E6: $10
    ld c, $7D                                     ; $61E7: $0E $7D
    ld b, l                                       ; $61E9: $45
    ld [hl+], a                                   ; $61EA: $22
    ld a, l                                       ; $61EB: $7D
    ld b, l                                       ; $61EC: $45
    ld b, h                                       ; $61ED: $44
    ld a, l                                       ; $61EE: $7D
    ld b, c                                       ; $61EF: $41
    ld [hl+], a                                   ; $61F0: $22
    ld c, c                                       ; $61F1: $49
    ld e, l                                       ; $61F2: $5D
    inc l                                         ; $61F3: $2C
    ld h, l                                       ; $61F4: $65
    pop bc                                        ; $61F5: $C1
    nop                                           ; $61F6: $00

jr_036_61F7:
    nop                                           ; $61F7: $00
    ld [hl+], a                                   ; $61F8: $22
    adc b                                         ; $61F9: $88
    ld [hl+], a                                   ; $61FA: $22
    ld [$26AC], a                                 ; $61FB: $EA $AC $26
    ld [hl+], a                                   ; $61FE: $22
    adc h                                         ; $61FF: $8C
    ld h, $6A                                     ; $6200: $26 $6A
    xor b                                         ; $6202: $A8
    and d                                         ; $6203: $A2
    inc h                                         ; $6204: $24
    adc d                                         ; $6205: $8A
    inc h                                         ; $6206: $24
    ld l, b                                       ; $6207: $68
    ld h, b                                       ; $6208: $60
    nop                                           ; $6209: $00
    ld d, c                                       ; $620A: $51
    nop                                           ; $620B: $00
    ld c, c                                       ; $620C: $49
    adc c                                         ; $620D: $89
    ld [$4832], a                                 ; $620E: $EA $32 $48
    adc b                                         ; $6211: $88
    add h                                         ; $6212: $84
    ld a, c                                       ; $6213: $79
    ld b, h                                       ; $6214: $44
    ld c, c                                       ; $6215: $49
    ld c, c                                       ; $6216: $49
    ld b, d                                       ; $6217: $42
    ld c, d                                       ; $6218: $4A
    ld a, d                                       ; $6219: $7A
    jr nz, jr_036_621C                            ; $621A: $20 $00

jr_036_621C:
    ld d, c                                       ; $621C: $51
    inc b                                         ; $621D: $04
    ld a, [$E457]                                 ; $621E: $FA $57 $E4
    ld a, [$4EAA]                                 ; $6221: $FA $AA $4E
    ei                                            ; $6224: $FB
    ld [hl+], a                                   ; $6225: $22
    ld c, [hl]                                    ; $6226: $4E
    ei                                            ; $6227: $FB
    ld [hl+], a                                   ; $6228: $22
    ld b, h                                       ; $6229: $44
    ld a, [$E053]                                 ; $622A: $FA $53 $E0
    nop                                           ; $622D: $00
    ccf                                           ; $622E: $3F
    adc b                                         ; $622F: $88
    jr nz, jr_036_6271                            ; $6230: $20 $3F

    adc b                                         ; $6232: $88
    jr nz, @+$41                                  ; $6233: $20 $3F

    add b                                         ; $6235: $80
    db $10                                        ; $6236: $10
    ccf                                           ; $6237: $3F
    ldh [c], a                                    ; $6238: $E2
    ld c, c                                       ; $6239: $49
    sub d                                         ; $623A: $92
    ld [hl+], a                                   ; $623B: $22
    inc h                                         ; $623C: $24
    ld c, b                                       ; $623D: $48
    ret nz                                        ; $623E: $C0

    nop                                           ; $623F: $00
    ld [bc], a                                    ; $6240: $02
    ld c, $7F                                     ; $6241: $0E $7F
    ld c, b                                       ; $6243: $48
    adc [hl]                                      ; $6244: $8E
    ld a, a                                       ; $6245: $7F
    ld c, b                                       ; $6246: $48
    adc b                                         ; $6247: $88
    ld c, a                                       ; $6248: $4F
    ld b, b                                       ; $6249: $40
    ld [$485F], sp                                ; $624A: $08 $5F $48
    add b                                         ; $624D: $80
    add a                                         ; $624E: $87
    cp b                                          ; $624F: $B8
    ldh [rP1], a                                  ; $6250: $E0 $00
    rrca                                          ; $6252: $0F
    ldh [$FF81], a                                ; $6253: $E0 $81
    add a                                         ; $6255: $87
    call nz, $E794                                ; $6256: $C4 $94 $E7
    call nz, $8784                                ; $6259: $C4 $84 $87
    call nz, Call_036_7794                        ; $625C: $C4 $94 $77
    ret z                                         ; $625F: $C8

    ld [bc], a                                    ; $6260: $02
    inc c                                         ; $6261: $0C
    ld h, b                                       ; $6262: $60
    nop                                           ; $6263: $00
    jr nz, @+$4E                                  ; $6264: $20 $4C

    ld b, a                                       ; $6266: $47
    sub b                                         ; $6267: $90
    ld [bc], a                                    ; $6268: $02
    jr nz, jr_036_62DA                            ; $6269: $20 $6F

    add sp, -$60                                  ; $626B: $E8 $A0
    jr nz, jr_036_61F7                            ; $626D: $20 $88

    jr nz, jr_036_6291                            ; $626F: $20 $20

jr_036_6271:
    adc b                                         ; $6271: $88
    inc hl                                        ; $6272: $23
    ld hl, $0000                                  ; $6273: $21 $00 $00
    rra                                           ; $6276: $1F
    inc b                                         ; $6277: $04
    nop                                           ; $6278: $00
    rst RST_38                                    ; $6279: $FF
    ldh [rP1], a                                  ; $627A: $E0 $00
    ccf                                           ; $627C: $3F
    add b                                         ; $627D: $80
    nop                                           ; $627E: $00
    ccf                                           ; $627F: $3F
    add b                                         ; $6280: $80
    nop                                           ; $6281: $00
    ccf                                           ; $6282: $3F
    adc b                                         ; $6283: $88
    jr nz, @+$41                                  ; $6284: $20 $3F

    add b                                         ; $6286: $80
    nop                                           ; $6287: $00
    inc de                                        ; $6288: $13
    nop                                           ; $6289: $00
    ld [de], a                                    ; $628A: $12
    ld [hl+], a                                   ; $628B: $22
    ld c, [hl]                                    ; $628C: $4E
    ld e, a                                       ; $628D: $5F
    call nz, Call_036_4400                        ; $628E: $C4 $00 $44

jr_036_6291:
    ld c, a                                       ; $6291: $4F
    ret nz                                        ; $6292: $C0

    ld c, c                                       ; $6293: $49
    ld d, c                                       ; $6294: $51
    inc b                                         ; $6295: $04
    ld b, c                                       ; $6296: $41
    ld e, a                                       ; $6297: $5F
    ldh [rP1], a                                  ; $6298: $E0 $00
    ld b, d                                       ; $629A: $42
    ld c, [hl]                                    ; $629B: $4E
    ld e, a                                       ; $629C: $5F
    ld b, d                                       ; $629D: $42
    inc c                                         ; $629E: $0C
    rst RST_28                                    ; $629F: $EF
    ld c, d                                       ; $62A0: $4A
    ld c, h                                       ; $62A1: $4C
    ld c, a                                       ; $62A2: $4F
    ld c, d                                       ; $62A3: $4A
    ld c, [hl]                                    ; $62A4: $4E
    ld e, a                                       ; $62A5: $5F
    ld c, b                                       ; $62A6: $48
    adc b                                         ; $62A7: $88
    ld b, h                                       ; $62A8: $44
    ld b, c                                       ; $62A9: $41
    add b                                         ; $62AA: $80
    nop                                           ; $62AB: $00
    jr jr_036_62AE                                ; $62AC: $18 $00

jr_036_62AE:
    ld de, $801F                                  ; $62AE: $11 $1F $80
    ld hl, $0021                                  ; $62B1: $21 $21 $00
    ld b, d                                       ; $62B4: $42
    add d                                         ; $62B5: $82
    nop                                           ; $62B6: $00
    dec b                                         ; $62B7: $05
    add hl, bc                                    ; $62B8: $09
    ld [$C030], sp                                ; $62B9: $08 $30 $C0
    ld h, b                                       ; $62BC: $60
    nop                                           ; $62BD: $00
    inc b                                         ; $62BE: $04
    inc c                                         ; $62BF: $0C

jr_036_62C0:
    ld a, a                                       ; $62C0: $7F
    ld c, $08                                     ; $62C1: $0E $08
    dec [hl]                                      ; $62C3: $35
    call nz, Call_000_2468                        ; $62C4: $C4 $68 $24
    ei                                            ; $62C7: $FB
    add sp, $20                                   ; $62C8: $E8 $20
    ld [hl], c                                    ; $62CA: $71
    jp z, Jump_000_20AA                           ; $62CB: $CA $AA $20

    add b                                         ; $62CE: $80
    nop                                           ; $62CF: $00
    jr nc, jr_036_6336                            ; $62D0: $30 $64

    ld h, $24                                     ; $62D2: $26 $24
    ld b, h                                       ; $62D4: $44
    inc h                                         ; $62D5: $24
    inc h                                         ; $62D6: $24
    ld b, h                                       ; $62D7: $44
    inc h                                         ; $62D8: $24
    inc h                                         ; $62D9: $24

jr_036_62DA:
    ld b, h                                       ; $62DA: $44
    inc h                                         ; $62DB: $24
    ld b, h                                       ; $62DC: $44
    ld b, h                                       ; $62DD: $44
    ld b, b                                       ; $62DE: $40
    add b                                         ; $62DF: $80
    ld b, b                                       ; $62E0: $40
    nop                                           ; $62E1: $00
    ld sp, hl                                     ; $62E2: $F9
    inc h                                         ; $62E3: $24
    ld d, d                                       ; $62E4: $52
    ld d, a                                       ; $62E5: $57
    db $E4                                        ; $62E6: $E4
    ld d, d                                       ; $62E7: $52
    ld a, [$334E]                                 ; $62E8: $FA $4E $33
    ld d, d                                       ; $62EB: $52
    ld c, [hl]                                    ; $62EC: $4E

jr_036_62ED:
    ld d, e                                       ; $62ED: $53
    sub d                                         ; $62EE: $92
    ld b, h                                       ; $62EF: $44
    sub d                                         ; $62F0: $92
    inc sp                                        ; $62F1: $33
    ldh [rP1], a                                  ; $62F2: $E0 $00
    ld b, h                                       ; $62F4: $44
    adc b                                         ; $62F5: $88

jr_036_62F6:
    sbc [hl]                                      ; $62F6: $9E
    ld a, [hl+]                                   ; $62F7: $2A
    ld [$C05D], a                                 ; $62F8: $EA $5D $C0
    xor d                                         ; $62FB: $AA
    ld e, [hl]                                    ; $62FC: $5E
    ld d, d                                       ; $62FD: $52
    and h                                         ; $62FE: $A4
    ld e, [hl]                                    ; $62FF: $5E
    ld d, d                                       ; $6300: $52
    ld c, d                                       ; $6301: $4A
    ld e, [hl]                                    ; $6302: $5E
    ld d, d                                       ; $6303: $52
    and b                                         ; $6304: $A0
    nop                                           ; $6305: $00
    ld b, c                                       ; $6306: $41
    add b                                         ; $6307: $80
    dec h                                         ; $6308: $25
    add l                                         ; $6309: $85
    ld l, d                                       ; $630A: $6A
    ld b, l                                       ; $630B: $45
    rlca                                          ; $630C: $07
    ld [hl+], a                                   ; $630D: $22
    dec l                                         ; $630E: $2D
    dec h                                         ; $630F: $25
    ld h, b                                       ; $6310: $60
    ld b, l                                       ; $6311: $45
    call nz, Call_036_4402                        ; $6312: $C4 $02 $44
    ld b, e                                       ; $6315: $43
    ldh [rP1], a                                  ; $6316: $E0 $00
    ld c, a                                       ; $6318: $4F
    ld [$0F2A], a                                 ; $6319: $EA $2A $0F
    ldh [$FF81], a                                ; $631C: $E0 $81
    ld c, a                                       ; $631E: $4F
    db $E4                                        ; $631F: $E4
    inc b                                         ; $6320: $04
    ld [bc], a                                    ; $6321: $02
    adc [hl]                                      ; $6322: $8E
    ld c, a                                       ; $6323: $4F
    ld b, c                                       ; $6324: $41
    ld c, $8F                                     ; $6325: $0E $8F
    add c                                         ; $6327: $81
    nop                                           ; $6328: $00
    nop                                           ; $6329: $00
    ld [$7F0C], sp                                ; $632A: $08 $0C $7F
    ld [$7F0C], sp                                ; $632D: $08 $0C $7F
    ld [$FF0E], sp                                ; $6330: $08 $0E $FF
    db $10                                        ; $6333: $10
    adc [hl]                                      ; $6334: $8E
    rst RST_38                                    ; $6335: $FF

jr_036_6336:
    jr z, jr_036_62C0                             ; $6336: $28 $88

jr_036_6338:
    ld b, h                                       ; $6338: $44
    add c                                         ; $6339: $81
    add b                                         ; $633A: $80
    nop                                           ; $633B: $00
    rst RST_38                                    ; $633C: $FF
    ldh [c], a                                    ; $633D: $E2
    add b                                         ; $633E: $80
    sub c                                         ; $633F: $91
    ld [hl+], a                                   ; $6340: $22
    adc d                                         ; $6341: $8A
    cp a                                          ; $6342: $BF
    and d                                         ; $6343: $A2
    add h                                         ; $6344: $84
    sub l                                         ; $6345: $95
    ld [hl+], a                                   ; $6346: $22
    sub l                                         ; $6347: $95
    sbc a                                         ; $6348: $9F
    ld [hl+], a                                   ; $6349: $22
    add b                                         ; $634A: $80
    add b                                         ; $634B: $80
    ld h, b                                       ; $634C: $60
    nop                                           ; $634D: $00
    ld b, $04                                     ; $634E: $06 $04
    inc b                                         ; $6350: $04
    ld a, a                                       ; $6351: $7F
    ldh [rLCDC], a                                ; $6352: $E0 $40
    ld b, e                                       ; $6354: $43
    nop                                           ; $6355: $00
    ld b, d                                       ; $6356: $42
    ld b, h                                       ; $6357: $44
    ld [$4844], sp                                ; $6358: $08 $44 $48
    ld c, h                                       ; $635B: $4C
    sbc a                                         ; $635C: $9F
    adc b                                         ; $635D: $88
    jr nz, jr_036_6360                            ; $635E: $20 $00

jr_036_6360:
    ld [$3F08], sp                                ; $6360: $08 $08 $3F
    jr nz, jr_036_62ED                            ; $6363: $20 $88

    ccf                                           ; $6365: $3F
    jr nz, jr_036_62F6                            ; $6366: $20 $8E

    ccf                                           ; $6368: $3F
    jr nz, jr_036_6379                            ; $6369: $20 $0E

    ccf                                           ; $636B: $3F
    nop                                           ; $636C: $00
    ld [hl+], a                                   ; $636D: $22
    ld d, l                                       ; $636E: $55
    sub d                                         ; $636F: $92
    ret nz                                        ; $6370: $C0

    nop                                           ; $6371: $00
    ld b, b                                       ; $6372: $40
    ret nz                                        ; $6373: $C0

    daa                                           ; $6374: $27
    inc b                                         ; $6375: $04
    ld c, $87                                     ; $6376: $0E $87
    ld b, h                                       ; $6378: $44

jr_036_6379:
    adc b                                         ; $6379: $88
    inc b                                         ; $637A: $04
    inc b                                         ; $637B: $04
    adc [hl]                                      ; $637C: $8E
    ld e, a                                       ; $637D: $5F
    ld b, b                                       ; $637E: $40
    inc b                                         ; $637F: $04
    adc b                                         ; $6380: $88
    sub b                                         ; $6381: $90
    jr nz, jr_036_6384                            ; $6382: $20 $00

jr_036_6384:
    inc b                                         ; $6384: $04
    ld c, [hl]                                    ; $6385: $4E
    rst RST_38                                    ; $6386: $FF
    inc b                                         ; $6387: $04
    ld [$203F], sp                                ; $6388: $08 $3F $20
    adc b                                         ; $638B: $88
    jr nz, jr_036_63CD                            ; $638C: $20 $3F

    add b                                         ; $638E: $80
    ld a, [bc]                                    ; $638F: $0A
    ld [de], a                                    ; $6390: $12
    ld b, [hl]                                    ; $6391: $46
    ld [hl+], a                                   ; $6392: $22
    pop bc                                        ; $6393: $C1
    ret nz                                        ; $6394: $C0

    nop                                           ; $6395: $00
    ld de, $7D04                                  ; $6396: $11 $04 $7D
    ld de, $1120                                  ; $6399: $11 $20 $11
    rst RST_38                                    ; $639C: $FF
    add sp, $00                                   ; $639D: $E8 $00
    ld a, h                                       ; $639F: $7C
    and h                                         ; $63A0: $A4
    ld b, h                                       ; $63A1: $44
    ld b, h                                       ; $63A2: $44
    call nz, $027D                                ; $63A3: $C4 $7D $02
    jr nz, jr_036_63A8                            ; $63A6: $20 $00

jr_036_63A8:
    jr nz, jr_036_6338                            ; $63A8: $20 $8E

    daa                                           ; $63AA: $27
    and b                                         ; $63AB: $A0
    add h                                         ; $63AC: $84
    xor c                                         ; $63AD: $A9
    xor a                                         ; $63AE: $AF
    db $E4                                        ; $63AF: $E4
    xor b                                         ; $63B0: $A8
    xor e                                         ; $63B1: $AB
    call z, $FBAA                                 ; $63B2: $CC $AA $FB
    call nz, RST_00                               ; $63B5: $C4 $00 $00
    ret nz                                        ; $63B8: $C0

    nop                                           ; $63B9: $00
    ld b, c                                       ; $63BA: $41
    add b                                         ; $63BB: $80
    add hl, hl                                    ; $63BC: $29
    rrca                                          ; $63BD: $0F
    ret nz                                        ; $63BE: $C0

    adc c                                         ; $63BF: $89
    ld d, c                                       ; $63C0: $51
    ld l, $3F                                     ; $63C1: $2E $3F
    jr nz, @+$0E                                  ; $63C3: $20 $0C

    rst RST_08                                    ; $63C5: $CF
    ld c, b                                       ; $63C6: $48
    ld b, h                                       ; $63C7: $44
    ld c, b                                       ; $63C8: $48
    ld c, a                                       ; $63C9: $4F
    ret nz                                        ; $63CA: $C0

    nop                                           ; $63CB: $00
    adc b                                         ; $63CC: $88

jr_036_63CD:
    db $E4                                        ; $63CD: $E4
    ld a, $08                                     ; $63CE: $3E $08
    ld [$2ABE], a                                 ; $63D0: $EA $BE $2A
    ld [$083E], a                                 ; $63D3: $EA $3E $08
    ld [$5A5C], a                                 ; $63D6: $EA $5C $5A
    ldh [$FFA8], a                                ; $63D9: $E0 $A8
    adc b                                         ; $63DB: $88
    and b                                         ; $63DC: $A0
    nop                                           ; $63DD: $00
    inc b                                         ; $63DE: $04
    ld c, $FF                                     ; $63DF: $0E $FF
    add h                                         ; $63E1: $84
    jr z, jr_036_6423                             ; $63E2: $28 $3F

    inc b                                         ; $63E4: $04
    ld c, $FF                                     ; $63E5: $0E $FF
    ld c, d                                       ; $63E7: $4A
    ld c, h                                       ; $63E8: $4C
    ld a, a                                       ; $63E9: $7F
    inc b                                         ; $63EA: $04
    ld c, d                                       ; $63EB: $4A
    ld d, d                                       ; $63EC: $52
    sbc a                                         ; $63ED: $9F
    add b                                         ; $63EE: $80
    nop                                           ; $63EF: $00
    ld [hl+], a                                   ; $63F0: $22
    inc b                                         ; $63F1: $04
    ld c, d                                       ; $63F2: $4A
    ei                                            ; $63F3: $FB
    add d                                         ; $63F4: $82
    ld [bc], a                                    ; $63F5: $02
    ld a, e                                       ; $63F6: $7B
    ldh [rWY], a                                  ; $63F7: $E0 $4A
    ld a, e                                       ; $63F9: $7B
    jp nz, Jump_036_5B4A                          ; $63FA: $C2 $4A $5B

    ldh [rP1], a                                  ; $63FD: $E0 $00
    adc c                                         ; $63FF: $89
    jr nz, jr_036_6402                            ; $6400: $20 $00

jr_036_6402:
    ld a, [$5244]                                 ; $6402: $FA $44 $52
    ld [hl], l                                    ; $6405: $75
    jr nz, jr_036_6459                            ; $6406: $20 $51

    ld d, d                                       ; $6408: $52
    ld c, h                                       ; $6409: $4C
    ld [hl], a                                    ; $640A: $77
    ld d, b                                       ; $640B: $50
    ld a, [bc]                                    ; $640C: $0A
    ld d, h                                       ; $640D: $54
    ld hl, sp-$5C                                 ; $640E: $F8 $A4
    ld a, [de]                                    ; $6410: $1A
    ld de, $00C0                                  ; $6411: $11 $C0 $00
    ld [$FC88], sp                                ; $6414: $08 $88 $FC
    ld [$7888], sp                                ; $6417: $08 $88 $78
    ld b, c                                       ; $641A: $41
    nop                                           ; $641B: $00
    ld b, c                                       ; $641C: $41
    ld sp, hl                                     ; $641D: $F9
    inc b                                         ; $641E: $04
    ld a, [bc]                                    ; $641F: $0A
    ld a, [bc]                                    ; $6420: $0A
    ld l, $13                                     ; $6421: $2E $13

jr_036_6423:
    ld h, d                                       ; $6423: $62

Call_036_6424:
    jr nz, jr_036_6426                            ; $6424: $20 $00

jr_036_6426:
    ld b, c                                       ; $6426: $41
    ld b, b                                       ; $6427: $40
    ld hl, $E09F                                  ; $6428: $21 $9F $E0
    ld b, c                                       ; $642B: $41
    rrca                                          ; $642C: $0F
    ldh [c], a                                    ; $642D: $E2
    add hl, hl                                    ; $642E: $29
    cpl                                           ; $642F: $2F
    ldh [c], a                                    ; $6430: $E2
    ret                                           ; $6431: $C9


    ld c, a                                       ; $6432: $4F
    ldh [c], a                                    ; $6433: $E2
    ld c, c                                       ; $6434: $49
    ld c, c                                       ; $6435: $49
    ld h, b                                       ; $6436: $60
    nop                                           ; $6437: $00
    ld b, c                                       ; $6438: $41
    inc c                                         ; $6439: $0C
    daa                                           ; $643A: $27
    ld bc, $0F0E                                  ; $643B: $01 $0E $0F
    ldh [c], a                                    ; $643E: $E2
    adc [hl]                                      ; $643F: $8E
    cpl                                           ; $6440: $2F
    ld hl, $2F0E                                  ; $6441: $21 $0E $2F
    ld hl, $5000                                  ; $6444: $21 $00 $50
    adc a                                         ; $6447: $8F
    ldh [rP1], a                                  ; $6448: $E0 $00
    jr nz, @+$10                                  ; $644A: $20 $0E

    ld d, a                                       ; $644C: $57
    xor h                                         ; $644D: $AC
    nop                                           ; $644E: $00
    ld [hl], h                                    ; $644F: $74
    ld d, a                                       ; $6450: $57
    ldh [c], a                                    ; $6451: $E2
    ld [hl], l                                    ; $6452: $75
    ld d, l                                       ; $6453: $55
    inc l                                         ; $6454: $2C
    ld [hl], h                                    ; $6455: $74
    ld b, h                                       ; $6456: $44
    add h                                         ; $6457: $84
    ld [hl], l                                    ; $6458: $75

jr_036_6459:
    jp z, RST_20                                  ; $6459: $CA $20 $00

    jr nz, @+$4A                                  ; $645C: $20 $48

    rst RST_30                                    ; $645E: $F7
    inc h                                         ; $645F: $24
    ld c, $37                                     ; $6460: $0E $37
    db $E4                                        ; $6462: $E4
    adc b                                         ; $6463: $88
    jr z, jr_036_6466                             ; $6464: $28 $00

jr_036_6466:
    inc c                                         ; $6466: $0C
    ld a, a                                       ; $6467: $7F
    ld b, b                                       ; $6468: $40

jr_036_6469:
    ld b, h                                       ; $6469: $44
    ld b, b                                       ; $646A: $40
    ld a, a                                       ; $646B: $7F
    ret nz                                        ; $646C: $C0

    nop                                           ; $646D: $00
    jr nc, @+$46                                  ; $646E: $30 $44

    jr nz, jr_036_6469                            ; $6470: $20 $F7

    db $E4                                        ; $6472: $E4
    jr nz, jr_036_64E5                            ; $6473: $20 $70

    ld b, h                                       ; $6475: $44
    ld l, d                                       ; $6476: $6A
    and c                                         ; $6477: $A1
    ld b, h                                       ; $6478: $44
    and b                                         ; $6479: $A0
    jr nz, jr_036_64C0                            ; $647A: $20 $44

jr_036_647C:
    jr nz, jr_036_649E                            ; $647C: $20 $20

    ret nz                                        ; $647E: $C0

jr_036_647F:
    nop                                           ; $647F: $00
    ld bc, $F70C                                  ; $6480: $01 $0C $F7
    sub c                                         ; $6483: $91
    ld c, $F7                                     ; $6484: $0E $F7
    sub d                                         ; $6486: $92
    adc d                                         ; $6487: $8A
    ldh a, [c]                                    ; $6488: $F2
    sub h                                         ; $6489: $94
    ldh [$FF91], a                                ; $648A: $E0 $91
    rst RST_30                                    ; $648C: $F7
    ret nz                                        ; $648D: $C0

    add c                                         ; $648E: $81
    rrca                                          ; $648F: $0F
    ldh [rP1], a                                  ; $6490: $E0 $00
    ld de, $7F0C                                  ; $6492: $11 $0C $7F
    inc b                                         ; $6495: $04
    ld [$043F], sp                                ; $6496: $08 $3F $04
    ld l, $FF                                     ; $6499: $2E $FF
    inc b                                         ; $649B: $04
    inc c                                         ; $649C: $0C
    ld a, a                                       ; $649D: $7F

jr_036_649E:
    ld a, [bc]                                    ; $649E: $0A
    ld [$C031], sp                                ; $649F: $08 $31 $C0
    ld h, b                                       ; $64A2: $60
    nop                                           ; $64A3: $00
    ld [$3F80], sp                                ; $64A4: $08 $80 $3F
    ld a, [bc]                                    ; $64A7: $0A
    ld c, [hl]                                    ; $64A8: $4E
    rst RST_38                                    ; $64A9: $FF
    ld [$1F08], sp                                ; $64AA: $08 $08 $1F
    ld hl, $C204                                  ; $64AD: $21 $04 $C2
    ccf                                           ; $64B0: $3F
    ldh [rSC], a                                  ; $64B1: $E0 $02
    ld b, $00                                     ; $64B3: $06 $00
    nop                                           ; $64B5: $00
    ld b, $08                                     ; $64B6: $06 $08
    inc b                                         ; $64B8: $04
    ld a, a                                       ; $64B9: $7F
    ret nz                                        ; $64BA: $C0

    inc b                                         ; $64BB: $04
    inc b                                         ; $64BC: $04
    ld c, [hl]                                    ; $64BD: $4E
    rst RST_38                                    ; $64BE: $FF
    ld a, [bc]                                    ; $64BF: $0A

jr_036_64C0:
    nop                                           ; $64C0: $00

jr_036_64C1:
    ld a, [bc]                                    ; $64C1: $0A
    ld de, $2008                                  ; $64C2: $11 $08 $20
    ret nz                                        ; $64C5: $C0

    ld h, b                                       ; $64C6: $60
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
    nop                                           ; $64D8: $00
    nop                                           ; $64D9: $00
    cpl                                           ; $64DA: $2F
    ret nz                                        ; $64DB: $C0

    ld [hl+], a                                   ; $64DC: $22
    ld c, a                                       ; $64DD: $4F
    call z, $CF4B                                 ; $64DE: $CC $4B $CF
    ld c, [hl]                                    ; $64E1: $4E
    ld e, a                                       ; $64E2: $5F
    ld d, l                                       ; $64E3: $55
    inc l                                         ; $64E4: $2C

jr_036_64E5:
    ld b, a                                       ; $64E5: $47
    ld c, h                                       ; $64E6: $4C
    add b                                         ; $64E7: $80
    ld b, e                                       ; $64E8: $43
    ld c, h                                       ; $64E9: $4C
    ldh [rP1], a                                  ; $64EA: $E0 $00
    ld de, $FF0E                                  ; $64EC: $11 $0E $FF
    ld de, $3F08                                  ; $64EF: $11 $08 $3F
    jr nz, jr_036_647C                            ; $64F2: $20 $88

    ccf                                           ; $64F4: $3F
    jr nz, jr_036_647F                            ; $64F5: $20 $88

    ccf                                           ; $64F7: $3F
    inc b                                         ; $64F8: $04
    ld l, $FF                                     ; $64F9: $2E $FF
    inc b                                         ; $64FB: $04
    nop                                           ; $64FC: $00
    nop                                           ; $64FD: $00
    cp $2A                                        ; $64FE: $FE $2A
    add d                                         ; $6500: $82
    xor d                                         ; $6501: $AA
    xor d                                         ; $6502: $AA
    xor d                                         ; $6503: $AA
    cp $AA                                        ; $6504: $FE $AA
    sub d                                         ; $6506: $92
    sub $A2                                       ; $6507: $D6 $A2
    sub $FE                                       ; $6509: $D6 $FE
    ld [hl+], a                                   ; $650B: $22
    add d                                         ; $650C: $82
    add [hl]                                      ; $650D: $86
    ld h, b                                       ; $650E: $60
    nop                                           ; $650F: $00
    inc b                                         ; $6510: $04
    ld c, $FF                                     ; $6511: $0E $FF
    ld de, $1F00                                  ; $6513: $11 $00 $1F
    nop                                           ; $6516: $00
    ld c, $FF                                     ; $6517: $0E $FF
    add b                                         ; $6519: $80
    ld [hl+], a                                   ; $651A: $22
    sbc a                                         ; $651B: $9F
    sub c                                         ; $651C: $91
    ld [hl+], a                                   ; $651D: $22
    sbc a                                         ; $651E: $9F
    add b                                         ; $651F: $80
    ld h, b                                       ; $6520: $60
    nop                                           ; $6521: $00
    ld b, $04                                     ; $6522: $06 $04
    inc b                                         ; $6524: $04
    rst RST_38                                    ; $6525: $FF
    ldh [rDIV], a                                 ; $6526: $E0 $04
    sbc a                                         ; $6528: $9F
    adc b                                         ; $6529: $88
    sub b                                         ; $652A: $90
    sbc a                                         ; $652B: $9F
    adc b                                         ; $652C: $88
    sub b                                         ; $652D: $90
    sbc a                                         ; $652E: $9F
    adc b                                         ; $652F: $88
    sub b                                         ; $6530: $90
    rst RST_38                                    ; $6531: $FF
    ldh [rP1], a                                  ; $6532: $E0 $00
    nop                                           ; $6534: $00
    adc h                                         ; $6535: $8C
    ccf                                           ; $6536: $3F
    jr nz, jr_036_64C1                            ; $6537: $20 $88

    ccf                                           ; $6539: $3F
    jr nz, @-$76                                  ; $653A: $20 $88

    ccf                                           ; $653C: $3F
    inc b                                         ; $653D: $04
    ld c, [hl]                                    ; $653E: $4E
    rst RST_38                                    ; $653F: $FF
    inc b                                         ; $6540: $04
    nop                                           ; $6541: $00
    inc b                                         ; $6542: $04
    inc b                                         ; $6543: $04
    nop                                           ; $6544: $00
    nop                                           ; $6545: $00
    nop                                           ; $6546: $00
    ld c, [hl]                                    ; $6547: $4E
    daa                                           ; $6548: $27
    inc h                                         ; $6549: $24
    ld c, $F7                                     ; $654A: $0E $F7
    inc h                                         ; $654C: $24
    ld [hl+], a                                   ; $654D: $22
    ld h, $25                                     ; $654E: $26 $25
    ld b, h                                       ; $6550: $44
    dec [hl]                                      ; $6551: $35
    ld h, h                                       ; $6552: $64
    add h                                         ; $6553: $84
    adc c                                         ; $6554: $89
    ld [de], a                                    ; $6555: $12
    jr nz, jr_036_6558                            ; $6556: $20 $00

jr_036_6558:
    ld b, h                                       ; $6558: $44
    ld c, b                                       ; $6559: $48
    ld [hl+], a                                   ; $655A: $22
    rlca                                          ; $655B: $07
    ret nz                                        ; $655C: $C0

    sub c                                         ; $655D: $91
    ld d, a                                       ; $655E: $57
    ret nz                                        ; $655F: $C0

    ld hl, $4E21                                  ; $6560: $21 $21 $4E
    rst RST_08                                    ; $6563: $CF
    ld b, c                                       ; $6564: $41
    nop                                           ; $6565: $00
    ld b, c                                       ; $6566: $41
    ld b, c                                       ; $6567: $41
    nop                                           ; $6568: $00
    nop                                           ; $6569: $00
    ld hl, $2100                                  ; $656A: $21 $00 $21
    ld a, e                                       ; $656D: $7B
    db $E4                                        ; $656E: $E4
    sub b                                         ; $656F: $90
    inc b                                         ; $6570: $04
    adc h                                         ; $6571: $8C
    ld a, a                                       ; $6572: $7F
    db $10                                        ; $6573: $10
    adc b                                         ; $6574: $88
    db $10                                        ; $6575: $10
    ld de, $1104                                  ; $6576: $11 $04 $11
    rst RST_38                                    ; $6579: $FF
    ldh [rP1], a                                  ; $657A: $E0 $00
    ld b, $04                                     ; $657C: $06 $04
    inc b                                         ; $657E: $04
    rst RST_38                                    ; $657F: $FF
    add sp, $20                                   ; $6580: $E8 $20
    ld de, $1100                                  ; $6582: $11 $00 $11
    ld a, [bc]                                    ; $6585: $0A
    nop                                           ; $6586: $00
    inc b                                         ; $6587: $04
    ld a, [bc]                                    ; $6588: $0A
    ld [$C031], sp                                ; $6589: $08 $31 $C0
    ld h, b                                       ; $658C: $60
    nop                                           ; $658D: $00
    nop                                           ; $658E: $00
    adc h                                         ; $658F: $8C
    ld a, a                                       ; $6590: $7F
    ld [$0800], sp                                ; $6591: $08 $00 $08
    ld [$7F8C], sp                                ; $6594: $08 $8C $7F
    ld [$1088], sp                                ; $6597: $08 $88 $10
    db $10                                        ; $659A: $10
    adc b                                         ; $659B: $88
    db $10                                        ; $659C: $10
    rst RST_38                                    ; $659D: $FF
    ldh [rP1], a                                  ; $659E: $E0 $00
    ld b, $00                                     ; $65A0: $06 $00
    inc b                                         ; $65A2: $04
    inc b                                         ; $65A3: $04
    inc b                                         ; $65A4: $04
    inc b                                         ; $65A5: $04
    rst RST_38                                    ; $65A6: $FF
    ldh [rDIV], a                                 ; $65A7: $E0 $04
    inc b                                         ; $65A9: $04
    nop                                           ; $65AA: $00
    inc b                                         ; $65AB: $04
    inc b                                         ; $65AC: $04
    nop                                           ; $65AD: $00
    inc b                                         ; $65AE: $04
    inc b                                         ; $65AF: $04
    nop                                           ; $65B0: $00
    nop                                           ; $65B1: $00
    ld b, h                                       ; $65B2: $44
    ld b, h                                       ; $65B3: $44
    ld b, h                                       ; $65B4: $44
    ld a, a                                       ; $65B5: $7F
    call nz, Call_036_444C                        ; $65B6: $C4 $4C $44
    ld b, h                                       ; $65B9: $44
    ld e, a                                       ; $65BA: $5F
    ld d, l                                       ; $65BB: $55
    ld b, h                                       ; $65BC: $44
    ld e, a                                       ; $65BD: $5F
    ld b, h                                       ; $65BE: $44
    ld b, h                                       ; $65BF: $44
    add a                                         ; $65C0: $87
    sbc c                                         ; $65C1: $99
    jr nz, jr_036_65C4                            ; $65C2: $20 $00

jr_036_65C4:
    inc hl                                        ; $65C4: $23
    adc b                                         ; $65C5: $88
    ld a, [$AE52]                                 ; $65C6: $FA $52 $AE
    db $FC                                        ; $65C9: $FC
    jr nz, @+$0E                                  ; $65CA: $20 $0C

    rst RST_10                                    ; $65CC: $D7
    ld a, [de]                                    ; $65CD: $1A
    ld c, b                                       ; $65CE: $48
    ld sp, $84D8                                  ; $65CF: $31 $D8 $84
    ld de, $2066                                  ; $65D2: $11 $66 $20
    nop                                           ; $65D5: $00
    ld sp, $2580                                  ; $65D6: $31 $80 $25
    rst RST_30                                    ; $65D9: $F7
    ret nz                                        ; $65DA: $C0

    dec l                                         ; $65DB: $2D
    ld [hl], c                                    ; $65DC: $71
    ld c, [hl]                                    ; $65DD: $4E
    ld l, a                                       ; $65DE: $6F
    and e                                         ; $65DF: $A3
    add h                                         ; $65E0: $84
    and l                                         ; $65E1: $A5
    dec h                                         ; $65E2: $25
    ld b, d                                       ; $65E3: $42
    add hl, hl                                    ; $65E4: $29
    ld hl, $0000                                  ; $65E5: $21 $00 $00
    ld [bc], a                                    ; $65E8: $02
    add h                                         ; $65E9: $84
    ld [bc], a                                    ; $65EA: $02
    rst RST_38                                    ; $65EB: $FF
    ldh [rSC], a                                  ; $65EC: $E0 $02
    ld a, [bc]                                    ; $65EE: $0A
    nop                                           ; $65EF: $00
    ld sp, hl                                     ; $65F0: $F9
    ld hl, $2100                                  ; $65F1: $21 $00 $21
    inc l                                         ; $65F4: $2C
    xor d                                         ; $65F5: $AA
    jr nc, @-$3E                                  ; $65F6: $30 $C0

    ld h, b                                       ; $65F8: $60
    nop                                           ; $65F9: $00
    ld sp, $2180                                  ; $65FA: $31 $80 $21
    ld sp, hl                                     ; $65FD: $F9
    inc b                                         ; $65FE: $04
    ld de, $E027                                  ; $65FF: $11 $27 $E0
    ld [hl], c                                    ; $6602: $71
    or c                                          ; $6603: $B1
    nop                                           ; $6604: $00
    ld hl, $0221                                  ; $6605: $21 $21 $02
    ld hl, $E027                                  ; $6608: $21 $27 $E0
    nop                                           ; $660B: $00
    ld a, a                                       ; $660C: $7F
    ldh [rLY], a                                  ; $660D: $E0 $44
    ld e, a                                       ; $660F: $5F
    call nz, Call_036_5F50                        ; $6610: $C4 $50 $5F
    call nz, Call_036_5F50                        ; $6613: $C4 $50 $5F

jr_036_6616:
    ret nz                                        ; $6616: $C0

    ld b, d                                       ; $6617: $42
    sub d                                         ; $6618: $92
    ld b, d                                       ; $6619: $42
    sub d                                         ; $661A: $92
    ld h, $20                                     ; $661B: $26 $20
    nop                                           ; $661D: $00
    nop                                           ; $661E: $00
    inc b                                         ; $661F: $04
    ld b, b                                       ; $6620: $40
    ld a, a                                       ; $6621: $7F
    db $E4                                        ; $6622: $E4
    ld b, b                                       ; $6623: $40
    ld b, b                                       ; $6624: $40
    ld b, h                                       ; $6625: $44
    ld b, b                                       ; $6626: $40
    ld b, b                                       ; $6627: $40
    ld b, h                                       ; $6628: $44
    ld b, b                                       ; $6629: $40
    ld b, b                                       ; $662A: $40
    ld c, h                                       ; $662B: $4C
    ld a, a                                       ; $662C: $7F
    ld b, b                                       ; $662D: $40
    ld b, b                                       ; $662E: $40
    nop                                           ; $662F: $00
    inc c                                         ; $6630: $0C
    xor d                                         ; $6631: $AA
    inc b                                         ; $6632: $04
    ld b, h                                       ; $6633: $44

Call_036_6634:
    inc c                                         ; $6634: $0C
    ld a, a                                       ; $6635: $7F
    ld b, b                                       ; $6636: $40
    ld b, h                                       ; $6637: $44
    ld b, b                                       ; $6638: $40
    ld b, b                                       ; $6639: $40
    ld b, h                                       ; $663A: $44
    nop                                           ; $663B: $00
    nop                                           ; $663C: $00
    add b                                         ; $663D: $80
    ld bc, $001E                                  ; $663E: $01 $1E $00
    nop                                           ; $6641: $00
    jr nz, jr_036_6650                            ; $6642: $20 $0C

    ccf                                           ; $6644: $3F
    ld b, b                                       ; $6645: $40
    ld [$00BF], sp                                ; $6646: $08 $BF $00
    ld [$08FF], sp                                ; $6649: $08 $FF $08
    adc b                                         ; $664C: $88
    ld l, b                                       ; $664D: $68
    db $10                                        ; $664E: $10
    and [hl]                                      ; $664F: $A6

jr_036_6650:
    jr z, jr_036_6616                             ; $6650: $28 $C4

    jr nz, jr_036_6654                            ; $6652: $20 $00

jr_036_6654:
    ld [hl+], a                                   ; $6654: $22
    inc b                                         ; $6655: $04
    ld [hl+], a                                   ; $6656: $22
    ld e, a                                       ; $6657: $5F
    ldh [rSCY], a                                 ; $6658: $E0 $42
    rst RST_00                                    ; $665A: $C7
    nop                                           ; $665B: $00
    ld b, a                                       ; $665C: $47
    ld c, d                                       ; $665D: $4A
    add h                                         ; $665E: $84
    ld d, d                                       ; $665F: $52
    ld l, a                                       ; $6660: $6F
    and b                                         ; $6661: $A0
    ld b, d                                       ; $6662: $42
    ld b, d                                       ; $6663: $42
    nop                                           ; $6664: $00
    nop                                           ; $6665: $00
    ld [bc], a                                    ; $6666: $02
    ld c, b                                       ; $6667: $48
    call nz, $E827                                ; $6668: $C4 $27 $E8
    inc c                                         ; $666B: $0C
    rst RST_20                                    ; $666C: $E7
    add sp, $24                                   ; $666D: $E8 $24
    daa                                           ; $666F: $27
    add sp, $24                                   ; $6670: $E8 $24
    daa                                           ; $6672: $27
    ldh [$FF50], a                                ; $6673: $E0 $50
    adc a                                         ; $6675: $8F
    ldh [rP1], a                                  ; $6676: $E0 $00
    stop                                          ; $6678: $10 $00
    ccf                                           ; $667A: $3F
    ld h, d                                       ; $667B: $62
    nop                                           ; $667C: $00
    sub h                                         ; $667D: $94
    add hl, de                                    ; $667E: $19
    ld c, $33                                     ; $667F: $0E $33
    add $24                                       ; $6681: $C6 $24
    ld a, [de]                                    ; $6683: $1A
    ld bc, $0780                                  ; $6684: $01 $80 $07
    jr c, jr_036_6689                             ; $6687: $38 $00

jr_036_6689:
    nop                                           ; $6689: $00
    ld b, $04                                     ; $668A: $06 $04
    inc b                                         ; $668C: $04
    rst RST_38                                    ; $668D: $FF
    ldh [$FF0E], a                                ; $668E: $E0 $0E
    dec d                                         ; $6690: $15
    nop                                           ; $6691: $00
    dec d                                         ; $6692: $15
    inc h                                         ; $6693: $24
    add h                                         ; $6694: $84
    ld b, h                                       ; $6695: $44
    sbc a                                         ; $6696: $9F
    jr nz, @+$06                                  ; $6697: $20 $04

jr_036_6699:
    inc b                                         ; $6699: $04
    nop                                           ; $669A: $00
    nop                                           ; $669B: $00
    jr nz, jr_036_66E2                            ; $669C: $20 $44

    ld d, d                                       ; $669E: $52
    adc c                                         ; $669F: $89
    ld b, h                                       ; $66A0: $44
    ld [hl], b                                    ; $66A1: $70
    ld [hl+], a                                   ; $66A2: $22
    ld b, h                                       ; $66A3: $44
    ld sp, hl                                     ; $66A4: $F9
    jr nz, jr_036_6713                            ; $66A5: $20 $6C

    xor e                                         ; $66A7: $AB
    xor b                                         ; $66A8: $A8
    ld b, h                                       ; $66A9: $44
    jr nz, @+$62                                  ; $66AA: $20 $60

    ld b, b                                       ; $66AC: $40
    nop                                           ; $66AD: $00
    ld b, a                                       ; $66AE: $47
    adc b                                         ; $66AF: $88
    ld b, h                                       ; $66B0: $44
    db $E4                                        ; $66B1: $E4
    adc d                                         ; $66B2: $8A
    ld b, h                                       ; $66B3: $44
    ld c, b                                       ; $66B4: $48
    ld h, b                                       ; $66B5: $60
    ld h, b                                       ; $66B6: $60
    rst RST_00                                    ; $66B7: $C7
    call nz, Call_036_4240                        ; $66B8: $C4 $40 $42
    adc b                                         ; $66BB: $88
    ld b, c                                       ; $66BC: $41
    adc $60                                       ; $66BD: $CE $60
    nop                                           ; $66BF: $00
    inc hl                                        ; $66C0: $23
    nop                                           ; $66C1: $00
    ld b, d                                       ; $66C2: $42
    di                                            ; $66C3: $F3
    ldh [c], a                                    ; $66C4: $E2
    sub h                                         ; $66C5: $94
    sub b                                         ; $66C6: $90
    ld [hl+], a                                   ; $66C7: $22
    ldh a, [c]                                    ; $66C8: $F2
    sub c                                         ; $66C9: $91
    ld [hl+], a                                   ; $66CA: $22
    sub b                                         ; $66CB: $90
    ldh a, [$FF4C]                                ; $66CC: $F0 $4C
    sub c                                         ; $66CE: $91
    nop                                           ; $66CF: $00
    add b                                         ; $66D0: $80
    nop                                           ; $66D1: $00
    nop                                           ; $66D2: $00
    ret nz                                        ; $66D3: $C0

    rst RST_00                                    ; $66D4: $C7
    inc h                                         ; $66D5: $24
    ld [bc], a                                    ; $66D6: $02
    inc b                                         ; $66D7: $04
    rst RST_20                                    ; $66D8: $E7
    add sp, $24                                   ; $66D9: $E8 $24
    inc h                                         ; $66DB: $24
    adc b                                         ; $66DC: $88
    jr z, jr_036_6707                             ; $66DD: $28 $28

    add b                                         ; $66DF: $80
    ld d, b                                       ; $66E0: $50
    adc a                                         ; $66E1: $8F

jr_036_66E2:
    ldh [rP1], a                                  ; $66E2: $E0 $00
    ld [hl+], a                                   ; $66E4: $22
    ld [hl+], a                                   ; $66E5: $22
    ld a, $48                                     ; $66E6: $3E $48
    xor d                                         ; $66E8: $AA
    ld c, [hl]                                    ; $66E9: $4E
    jp z, Jump_036_5AAA                           ; $66EA: $CA $AA $5A

    ld d, [hl]                                    ; $66ED: $56
    xor d                                         ; $66EE: $AA
    ld b, d                                       ; $66EF: $42
    ld b, h                                       ; $66F0: $44
    ld [hl+], a                                   ; $66F1: $22
    ld b, h                                       ; $66F2: $44
    ld c, b                                       ; $66F3: $48
    ld h, b                                       ; $66F4: $60
    nop                                           ; $66F5: $00
    daa                                           ; $66F6: $27
    call nz, Call_000_2724                        ; $66F7: $C4 $24 $27
    call nz, Call_000_2FF4                        ; $66FA: $C4 $F4 $2F
    ldh [rNR43], a                                ; $66FD: $E0 $22
    scf                                           ; $66FF: $37
    ld [$C42A], a                                 ; $6700: $EA $2A $C4
    and d                                         ; $6703: $A2
    add hl, bc                                    ; $6704: $09
    ld [bc], a                                    ; $6705: $02
    ld b, b                                       ; $6706: $40

jr_036_6707:
    nop                                           ; $6707: $00
    inc b                                         ; $6708: $04
    nop                                           ; $6709: $00
    ld a, [bc]                                    ; $670A: $0A
    ld de, $2208                                  ; $670B: $11 $08 $22
    rst RST_18                                    ; $670E: $DF
    ld h, b                                       ; $670F: $60
    nop                                           ; $6710: $00
    ccf                                           ; $6711: $3F
    adc b                                         ; $6712: $88

jr_036_6713:
    jr nz, @+$22                                  ; $6713: $20 $20

    adc b                                         ; $6715: $88
    ccf                                           ; $6716: $3F
    jr nz, jr_036_6699                            ; $6717: $20 $80

    nop                                           ; $6719: $00
    inc b                                         ; $671A: $04
    ld c, b                                       ; $671B: $48
    jp nz, $E02F                                  ; $671C: $C2 $2F $E0

    ld bc, $44E5                                  ; $671F: $01 $E5 $44
    dec h                                         ; $6722: $25
    daa                                           ; $6723: $27

Call_036_6724:
    ret nz                                        ; $6724: $C0

    ld hl, $0022                                  ; $6725: $21 $22 $00
    ld d, b                                       ; $6728: $50
    adc a                                         ; $6729: $8F
    ldh [rP1], a                                  ; $672A: $E0 $00
    ld [bc], a                                    ; $672C: $02
    inc c                                         ; $672D: $0C
    rrca                                          ; $672E: $0F
    call nz, $1F4E                                ; $672F: $C4 $4E $1F
    rrca                                          ; $6732: $0F
    call nz, Call_036_5FC8                        ; $6733: $C4 $C8 $5F
    add sp, $44                                   ; $6736: $E8 $44
    ld e, a                                       ; $6738: $5F
    add sp, $60                                   ; $6739: $E8 $60
    sbc a                                         ; $673B: $9F
    ldh [rP1], a                                  ; $673C: $E0 $00
    ld h, h                                       ; $673E: $64
    ld c, b                                       ; $673F: $48

jr_036_6740:
    ld [bc], a                                    ; $6740: $02
    rst RST_30                                    ; $6741: $F7
    ldh [rSB], a                                  ; $6742: $E0 $01
    pop af                                        ; $6744: $F1
    inc c                                         ; $6745: $0C
    rlca                                          ; $6746: $07
    pop af                                        ; $6747: $F1
    ld [bc], a                                    ; $6748: $02
    ld bc, $E0F7                                  ; $6749: $01 $F7 $E0
    sub c                                         ; $674C: $91
    pop af                                        ; $674D: $F1
    nop                                           ; $674E: $00
    nop                                           ; $674F: $00
    add c                                         ; $6750: $81
    ld b, b                                       ; $6751: $40
    ld b, c                                       ; $6752: $41
    rra                                           ; $6753: $1F
    add sp, -$70                                  ; $6754: $E8 $90
    ld e, [hl]                                    ; $6756: $5E
    adc b                                         ; $6757: $88
    db $10                                        ; $6758: $10
    ld e, $AA                                     ; $6759: $1E $AA
    ld e, d                                       ; $675B: $5A
    ld e, [hl]                                    ; $675C: $5E
    ld c, h                                       ; $675D: $4C
    sub b                                         ; $675E: $90
    and c                                         ; $675F: $A1
    jr nz, jr_036_6762                            ; $6760: $20 $00

jr_036_6762:
    ld b, $00                                     ; $6762: $06 $00
    inc b                                         ; $6764: $04
    inc h                                         ; $6765: $24
    add h                                         ; $6766: $84
    inc h                                         ; $6767: $24
    ld b, h                                       ; $6768: $44
    ld [hl+], a                                   ; $6769: $22
    add h                                         ; $676A: $84
    dec c                                         ; $676B: $0D
    nop                                           ; $676C: $00
    ld bc, $0002                                  ; $676D: $01 $02 $00
    inc c                                         ; $6770: $0C
    ldh a, [rP1]                                  ; $6771: $F0 $00
    nop                                           ; $6773: $00
    db $10                                        ; $6774: $10
    ld [$101F], sp                                ; $6775: $08 $1F $10
    nop                                           ; $6778: $00
    db $10                                        ; $6779: $10
    ccf                                           ; $677A: $3F
    adc b                                         ; $677B: $88
    jr nz, jr_036_677E                            ; $677C: $20 $00

jr_036_677E:
    xor [hl]                                      ; $677E: $AE
    rst RST_38                                    ; $677F: $FF
    nop                                           ; $6780: $00
    add b                                         ; $6781: $80
    ld bc, $0006                                  ; $6782: $01 $06 $00
    nop                                           ; $6785: $00
    ld bc, $F140                                  ; $6786: $01 $40 $F1
    ld b, a                                       ; $6789: $47
    ldh [$FF71], a                                ; $678A: $E0 $71
    ld d, a                                       ; $678C: $57
    ldh [rHDMA1], a                               ; $678D: $E0 $51
    or a                                          ; $678F: $B7
    add sp, $10                                   ; $6790: $E8 $10
    jr nz, jr_036_6740                            ; $6792: $20 $AC

jr_036_6794:
    ld b, b                                       ; $6794: $40

jr_036_6795:
    add a                                         ; $6795: $87
    jr nz, jr_036_6798                            ; $6796: $20 $00

jr_036_6798:
    inc c                                         ; $6798: $0C
    nop                                           ; $6799: $00
    inc de                                        ; $679A: $13
    ld l, $86                                     ; $679B: $2E $86
    ret nz                                        ; $679D: $C0

    rra                                           ; $679E: $1F
    add b                                         ; $679F: $80
    ld bc, $0002                                  ; $67A0: $01 $02 $00
    inc d                                         ; $67A3: $14
    ld d, d                                       ; $67A4: $52
    ld c, d                                       ; $67A5: $4A
    ld d, b                                       ; $67A6: $50
    adc a                                         ; $67A7: $8F
    add b                                         ; $67A8: $80
    nop                                           ; $67A9: $00
    rst RST_38                                    ; $67AA: $FF
    ldh [c], a                                    ; $67AB: $E2
    add b                                         ; $67AC: $80
    add l                                         ; $67AD: $85
    ld a, [hl+]                                   ; $67AE: $2A
    cp a                                          ; $67AF: $BF
    add h                                         ; $67B0: $84
    ld [hl+], a                                   ; $67B1: $22
    adc [hl]                                      ; $67B2: $8E
    sub l                                         ; $67B3: $95
    ld a, [hl+]                                   ; $67B4: $2A
    and h                                         ; $67B5: $A4
    add h                                         ; $67B6: $84
    ld l, $FF                                     ; $67B7: $2E $FF
    add b                                         ; $67B9: $80
    jr nz, jr_036_67BC                            ; $67BA: $20 $00

jr_036_67BC:
    ld hl, sp+$22                                 ; $67BC: $F8 $22
    adc c                                         ; $67BE: $89
    adc c                                         ; $67BF: $89
    ld [hl+], a                                   ; $67C0: $22
    ld sp, hl                                     ; $67C1: $F9
    ld b, c                                       ; $67C2: $41
    ld [hl+], a                                   ; $67C3: $22
    ld b, c                                       ; $67C4: $41
    ld a, c                                       ; $67C5: $79
    ld [hl+], a                                   ; $67C6: $22
    ld c, c                                       ; $67C7: $49
    ld c, b                                       ; $67C8: $48
    ld [hl+], a                                   ; $67C9: $22
    adc b                                         ; $67CA: $88
    jr nc, jr_036_682D                            ; $67CB: $30 $60

    nop                                           ; $67CD: $00
    inc b                                         ; $67CE: $04
    nop                                           ; $67CF: $00
    ld a, [bc]                                    ; $67D0: $0A
    ld de, $2008                                  ; $67D1: $11 $08 $20
    rst RST_18                                    ; $67D4: $DF
    ld h, b                                       ; $67D5: $60
    inc b                                         ; $67D6: $04
    inc b                                         ; $67D7: $04
    ld [$043F], sp                                ; $67D8: $08 $3F $04
    ld [$7F04], sp                                ; $67DB: $08 $04 $7F
    ret nz                                        ; $67DE: $C0

    nop                                           ; $67DF: $00
    inc b                                         ; $67E0: $04
    adc [hl]                                      ; $67E1: $8E
    rst RST_08                                    ; $67E2: $CF
    inc h                                         ; $67E3: $24
    ld c, $07                                     ; $67E4: $0E $07
    push hl                                       ; $67E6: $E5
    inc h                                         ; $67E7: $24
    dec h                                         ; $67E8: $25
    dec h                                         ; $67E9: $25
    db $E4                                        ; $67EA: $E4
    add hl, hl                                    ; $67EB: $29
    ld a, [hl+]                                   ; $67EC: $2A
    ld b, b                                       ; $67ED: $40
    ld d, b                                       ; $67EE: $50
    adc a                                         ; $67EF: $8F
    ldh [rP1], a                                  ; $67F0: $E0 $00
    ld [hl+], a                                   ; $67F2: $22
    ld b, h                                       ; $67F3: $44
    ld b, d                                       ; $67F4: $42
    sub l                                         ; $67F5: $95
    jr nz, jr_036_6859                            ; $67F6: $20 $61

    ld b, d                                       ; $67F8: $42
    ld c, d                                       ; $67F9: $4A
    rst RST_30                                    ; $67FA: $F7
    jr nz, jr_036_6805                            ; $67FB: $20 $08

    and d                                         ; $67FD: $A2
    xor d                                         ; $67FE: $AA
    inc h                                         ; $67FF: $24
    xor d                                         ; $6800: $AA
    ld hl, $00C0                                  ; $6801: $21 $C0 $00
    nop                                           ; $6804: $00

jr_036_6805:
    adc h                                         ; $6805: $8C
    ccf                                           ; $6806: $3F
    jr nz, @-$76                                  ; $6807: $20 $88

    ccf                                           ; $6809: $3F
    jr nz, jr_036_6794                            ; $680A: $20 $88

    jr nz, jr_036_684D                            ; $680C: $20 $3F

    adc b                                         ; $680E: $88
    jr nz, jr_036_6831                            ; $680F: $20 $20

    adc b                                         ; $6811: $88
    ccf                                           ; $6812: $3F
    jr nz, jr_036_6795                            ; $6813: $20 $80

    nop                                           ; $6815: $00
    inc c                                         ; $6816: $0C
    ld [bc], a                                    ; $6817: $02
    ld b, h                                       ; $6818: $44
    ld a, a                                       ; $6819: $7F
    ldh [c], a                                    ; $681A: $E2
    sub d                                         ; $681B: $92
    ld [hl+], a                                   ; $681C: $22
    ld c, h                                       ; $681D: $4C
    pop bc                                        ; $681E: $C1
    inc b                                         ; $681F: $04
    ld c, $FF                                     ; $6820: $0E $FF
    ld a, [bc]                                    ; $6822: $0A
    ld [$C031], sp                                ; $6823: $08 $31 $C0
    ld h, b                                       ; $6826: $60
    nop                                           ; $6827: $00
    ld a, a                                       ; $6828: $7F
    ld c, b                                       ; $6829: $48
    ld bc, $4A2D                                  ; $682A: $01 $2D $4A

jr_036_682D:
    ret z                                         ; $682D: $C8

    ld c, b                                       ; $682E: $48
    ld h, b                                       ; $682F: $60
    rst RST_38                                    ; $6830: $FF

jr_036_6831:
    ld c, c                                       ; $6831: $49
    ld c, b                                       ; $6832: $48
    ld c, c                                       ; $6833: $49
    ld c, c                                       ; $6834: $49
    ld c, d                                       ; $6835: $4A
    adc b                                         ; $6836: $88
    adc b                                         ; $6837: $88
    ld h, b                                       ; $6838: $60
    nop                                           ; $6839: $00
    ccf                                           ; $683A: $3F
    adc b                                         ; $683B: $88
    jr nz, jr_036_687D                            ; $683C: $20 $3F

    adc b                                         ; $683E: $88
    jr nz, jr_036_6880                            ; $683F: $20 $3F

    adc b                                         ; $6841: $88
    jr nz, @+$41                                  ; $6842: $20 $3F

    add b                                         ; $6844: $80
    nop                                           ; $6845: $00
    rst RST_38                                    ; $6846: $FF
    add sp, $20                                   ; $6847: $E8 $20
    ld b, b                                       ; $6849: $40
    ld b, b                                       ; $684A: $40
    nop                                           ; $684B: $00
    ldh a, [c]                                    ; $684C: $F2

jr_036_684D:
    adc b                                         ; $684D: $88
    sub d                                         ; $684E: $92
    sbc d                                         ; $684F: $9A
    xor h                                         ; $6850: $AC
    or $22                                        ; $6851: $F6 $22
    adc h                                         ; $6853: $8C
    ld h, $BA                                     ; $6854: $26 $BA
    xor b                                         ; $6856: $A8
    and d                                         ; $6857: $A2
    or h                                          ; $6858: $B4

jr_036_6859:
    adc d                                         ; $6859: $8A
    db $E4                                        ; $685A: $E4
    adc b                                         ; $685B: $88
    ld h, b                                       ; $685C: $60
    nop                                           ; $685D: $00
    nop                                           ; $685E: $00
    ld c, [hl]                                    ; $685F: $4E
    rst RST_00                                    ; $6860: $C7
    inc h                                         ; $6861: $24
    ld c, $07                                     ; $6862: $0E $07
    push hl                                       ; $6864: $E5
    ld [hl+], a                                   ; $6865: $22
    dec h                                         ; $6866: $25
    dec h                                         ; $6867: $25
    ld c, h                                       ; $6868: $4C
    jr z, @+$2D                                   ; $6869: $28 $2B

    jr nz, jr_036_68BD                            ; $686B: $20 $50

    adc a                                         ; $686D: $8F
    ldh [rP1], a                                  ; $686E: $E0 $00
    ld bc, $CF0E                                  ; $6870: $01 $0E $CF
    ld hl, $070C                                  ; $6873: $21 $0C $07
    push hl                                       ; $6876: $E5
    ld c, h                                       ; $6877: $4C
    daa                                           ; $6878: $27
    dec h                                         ; $6879: $25
    ld c, h                                       ; $687A: $4C
    daa                                           ; $687B: $27
    cpl                                           ; $687C: $2F

jr_036_687D:
    ldh [rHDMA1], a                               ; $687D: $E0 $51
    adc a                                         ; $687F: $8F

jr_036_6880:
    ldh [rP1], a                                  ; $6880: $E0 $00
    ld b, $02                                     ; $6882: $06 $02
    ld b, h                                       ; $6884: $44
    rst RST_38                                    ; $6885: $FF
    ldh [c], a                                    ; $6886: $E2
    sub d                                         ; $6887: $92
    ld [hl+], a                                   ; $6888: $22
    ld c, h                                       ; $6889: $4C
    pop bc                                        ; $688A: $C1
    nop                                           ; $688B: $00
    inc c                                         ; $688C: $0C
    ld a, a                                       ; $688D: $7F
    inc b                                         ; $688E: $04
    inc b                                         ; $688F: $04
    inc b                                         ; $6890: $04
    rst RST_38                                    ; $6891: $FF
    ldh [rP1], a                                  ; $6892: $E0 $00
    ld bc, $C708                                  ; $6894: $01 $08 $C7
    ld hl, $0100                                  ; $6897: $21 $00 $01
    pop hl                                        ; $689A: $E1
    ld [$2222], sp                                ; $689B: $08 $22 $22
    add h                                         ; $689E: $84
    inc h                                         ; $689F: $24
    jr z, jr_036_68C2                             ; $68A0: $28 $20

    ld d, b                                       ; $68A2: $50
    adc a                                         ; $68A3: $8F
    ldh [rP1], a                                  ; $68A4: $E0 $00
    ld hl, $A180                                  ; $68A6: $21 $80 $A1
    rst RST_30                                    ; $68A9: $F7
    ret nz                                        ; $68AA: $C0

    and c                                         ; $68AB: $A1
    cpl                                           ; $68AC: $2F
    db $E4                                        ; $68AD: $E4
    jr nc, jr_036_691F                            ; $68AE: $30 $6F

    db $E4                                        ; $68B0: $E4
    and h                                         ; $68B1: $A4
    ld [hl+], a                                   ; $68B2: $22
    ld b, h                                       ; $68B3: $44
    jr nz, jr_036_68D6                            ; $68B4: $20 $20

    ret nz                                        ; $68B6: $C0

    nop                                           ; $68B7: $00
    jr nz, jr_036_6908                            ; $68B8: $20 $4E

    ei                                            ; $68BA: $FB
    jr nz, jr_036_68BD                            ; $68BB: $20 $00

jr_036_68BD:
    ld hl, sp-$55                                 ; $68BD: $F8 $AB
    add sp, -$08                                  ; $68BF: $E8 $F8
    xor b                                         ; $68C1: $A8

jr_036_68C2:
    add b                                         ; $68C2: $80
    ld sp, hl                                     ; $68C3: $F9
    ld hl, $FB4A                                  ; $68C4: $21 $4A $FB
    ld [hl+], a                                   ; $68C7: $22
    jr nz, jr_036_68CA                            ; $68C8: $20 $00

jr_036_68CA:
    and a                                         ; $68CA: $A7
    ret z                                         ; $68CB: $C8

    ld h, b                                       ; $68CC: $60
    ld b, c                                       ; $68CD: $41
    ld l, $AF                                     ; $68CE: $2E $AF
    ld hl, $6300                                  ; $68D0: $21 $00 $63
    and b                                         ; $68D3: $A0
    ld c, $2F                                     ; $68D4: $0E $2F

jr_036_68D6:
    ld a, [hl+]                                   ; $68D6: $2A
    xor d                                         ; $68D7: $AA
    ld a, [hl+]                                   ; $68D8: $2A
    rst RST_18                                    ; $68D9: $DF
    ldh [rP1], a                                  ; $68DA: $E0 $00
    ld [$FF0E], sp                                ; $68DC: $08 $0E $FF
    inc h                                         ; $68DF: $24
    adc h                                         ; $68E0: $8C
    ld a, a                                       ; $68E1: $7F
    and h                                         ; $68E2: $A4
    jr z, jr_036_6924                             ; $68E3: $28 $3F

    ccf                                           ; $68E5: $3F
    add b                                         ; $68E6: $80
    ld bc, $E0FF                                  ; $68E7: $01 $FF $E0
    ld de, $000B                                  ; $68EA: $11 $0B $00
    nop                                           ; $68ED: $00
    nop                                           ; $68EE: $00
    ld b, $60                                     ; $68EF: $06 $60
    ld b, h                                       ; $68F1: $44
    ld b, h                                       ; $68F2: $44
    ld b, d                                       ; $68F3: $42
    ld b, d                                       ; $68F4: $42
    ld c, b                                       ; $68F5: $48
    ld b, b                                       ; $68F6: $40
    ld b, b                                       ; $68F7: $40
    adc b                                         ; $68F8: $88
    ld c, c                                       ; $68F9: $49
    ld [hl], c                                    ; $68FA: $71
    ld b, d                                       ; $68FB: $42
    jp nz, $208C                                  ; $68FC: $C2 $8C $20

    nop                                           ; $68FF: $00
    ld sp, $2580                                  ; $6900: $31 $80 $25
    dec a                                         ; $6903: $3D
    nop                                           ; $6904: $00
    ld b, l                                       ; $6905: $45
    ld c, c                                       ; $6906: $49
    add h                                         ; $6907: $84

jr_036_6908:
    xor c                                         ; $6908: $A9
    ld de, $1120                                  ; $6909: $11 $20 $11
    ld hl, $4100                                  ; $690C: $21 $00 $41
    add c                                         ; $690F: $81
    nop                                           ; $6910: $00
    nop                                           ; $6911: $00
    ld [$0400], sp                                ; $6912: $08 $00 $04
    ld [bc], a                                    ; $6915: $02
    nop                                           ; $6916: $00
    ld [bc], a                                    ; $6917: $02
    db $10                                        ; $6918: $10
    inc b                                         ; $6919: $04
    ld d, b                                       ; $691A: $50
    ld d, b                                       ; $691B: $50
    ld [hl+], a                                   ; $691C: $22
    ld d, b                                       ; $691D: $50
    sub b                                         ; $691E: $90

jr_036_691F:
    adc h                                         ; $691F: $8C
    db $10                                        ; $6920: $10
    rrca                                          ; $6921: $0F
    add b                                         ; $6922: $80
    nop                                           ; $6923: $00

jr_036_6924:
    inc b                                         ; $6924: $04
    ld c, $FF                                     ; $6925: $0E $FF
    add b                                         ; $6927: $80
    jr z, jr_036_6969                             ; $6928: $28 $3F

    ld [$7404], sp                                ; $692A: $08 $04 $74
    ld c, $80                                     ; $692D: $0E $80
    ld [hl], e                                    ; $692F: $73
    ld c, $86                                     ; $6930: $0E $86
    ld [hl], d                                    ; $6932: $72
    inc c                                         ; $6933: $0C
    nop                                           ; $6934: $00
    nop                                           ; $6935: $00
    ld bc, $770E                                  ; $6936: $01 $0E $77
    ld e, b                                       ; $6939: $58
    jr nz, jr_036_69B0                            ; $693A: $20 $74

    ld d, a                                       ; $693C: $57
    ld [$7659], a                                 ; $693D: $EA $59 $76
    xor b                                         ; $6940: $A8
    ld d, d                                       ; $6941: $52
    ld d, h                                       ; $6942: $54
    adc d                                         ; $6943: $8A
    sub h                                         ; $6944: $94
    cp b                                          ; $6945: $B8
    ld h, b                                       ; $6946: $60
    nop                                           ; $6947: $00
    ld b, d                                       ; $6948: $42
    ld c, $7B                                     ; $6949: $0E $7B
    and h                                         ; $694B: $A4
    add b                                         ; $694C: $80
    inc b                                         ; $694D: $04
    rst RST_38                                    ; $694E: $FF
    ldh [rDIV], a                                 ; $694F: $E0 $04
    ld a, a                                       ; $6951: $7F
    call nz, Call_000_0E44                        ; $6952: $C4 $44 $0E
    ld [$C435], sp                                ; $6955: $08 $35 $C4
    ld h, b                                       ; $6958: $60
    nop                                           ; $6959: $00
    nop                                           ; $695A: $00
    ld c, [hl]                                    ; $695B: $4E
    rst RST_30                                    ; $695C: $F7
    dec h                                         ; $695D: $25
    ld c, h                                       ; $695E: $4C
    daa                                           ; $695F: $27
    push af                                       ; $6960: $F5
    ld c, h                                       ; $6961: $4C
    daa                                           ; $6962: $27
    ld hl, $370C                                  ; $6963: $21 $0C $37
    pop hl                                        ; $6966: $E1
    ld [bc], a                                    ; $6967: $02
    add c                                         ; $6968: $81

jr_036_6969:
    rrca                                          ; $6969: $0F
    ldh [rP1], a                                  ; $696A: $E0 $00
    ld hl, $2580                                  ; $696C: $21 $80 $25
    or l                                          ; $696F: $B5
    ld l, $A7                                     ; $6970: $2E $A7
    xor c                                         ; $6972: $A9
    nop                                           ; $6973: $00
    ld hl, $C027                                  ; $6974: $21 $27 $C0
    ld hl, $0221                                  ; $6977: $21 $21 $02
    ld hl, $E02F                                  ; $697A: $21 $2F $E0
    nop                                           ; $697D: $00
    ld c, b                                       ; $697E: $48
    ret nz                                        ; $697F: $C0

    cpl                                           ; $6980: $2F
    adc b                                         ; $6981: $88
    ld l, b                                       ; $6982: $68
    ld c, e                                       ; $6983: $4B
    ld a, [de]                                    ; $6984: $1A
    adc d                                         ; $6985: $8A
    ld a, [hl+]                                   ; $6986: $2A
    ld a, [hl+]                                   ; $6987: $2A
    ret z                                         ; $6988: $C8

    jp z, Jump_036_444A                           ; $6989: $CA $4A $44

    ld d, d                                       ; $698C: $52
    ld d, d                                       ; $698D: $52
    jr nz, jr_036_6990                            ; $698E: $20 $00

jr_036_6990:
    ldh a, [$FF2C]                                ; $6990: $F0 $2C
    inc d                                         ; $6992: $14
    daa                                           ; $6993: $27
    ld b, h                                       ; $6994: $44
    dec h                                         ; $6995: $25
    dec [hl]                                      ; $6996: $35
    ld b, h                                       ; $6997: $44
    ld h, l                                       ; $6998: $65
    and l                                         ; $6999: $A5
    ld b, h                                       ; $699A: $44
    dec h                                         ; $699B: $25
    dec h                                         ; $699C: $25
    ld c, d                                       ; $699D: $4A
    dec hl                                        ; $699E: $2B
    ld c, d                                       ; $699F: $4A
    jr nz, jr_036_69A2                            ; $69A0: $20 $00

jr_036_69A2:
    and c                                         ; $69A2: $A1
    add b                                         ; $69A3: $80
    ld b, c                                       ; $69A4: $41
    ld c, a                                       ; $69A5: $4F
    ldh [c], a                                    ; $69A6: $E2
    xor c                                         ; $69A7: $A9
    add hl, hl                                    ; $69A8: $29
    ld l, $6F                                     ; $69A9: $2E $6F
    xor c                                         ; $69AB: $A9
    nop                                           ; $69AC: $00
    ld hl, $4A21                                  ; $69AD: $21 $21 $4A

jr_036_69B0:
    cpl                                           ; $69B0: $2F
    call nz, RST_20                               ; $69B1: $C4 $20 $00
    ld h, b                                       ; $69B4: $60
    ld c, [hl]                                    ; $69B5: $4E
    ld b, a                                       ; $69B6: $47
    ld d, b                                       ; $69B7: $50
    ld c, b                                       ; $69B8: $48
    ld hl, sp+$51                                 ; $69B9: $F8 $51
    inc b                                         ; $69BB: $04
    sub c                                         ; $69BC: $91
    rst RST_10                                    ; $69BD: $D7
    ldh [rNR42], a                                ; $69BE: $E0 $21
    ld sp, $5100                                  ; $69C0: $31 $00 $51
    add e                                         ; $69C3: $83
    nop                                           ; $69C4: $00
    nop                                           ; $69C5: $00
    ld bc, $7EC4                                  ; $69C6: $01 $C4 $7E
    inc h                                         ; $69C9: $24
    adc [hl]                                      ; $69CA: $8E
    rst RST_38                                    ; $69CB: $FF
    add b                                         ; $69CC: $80
    jr z, jr_036_6A0E                             ; $69CD: $28 $3F

    ld de, $0A00                                  ; $69CF: $11 $00 $0A
    inc b                                         ; $69D2: $04
    nop                                           ; $69D3: $00
    dec de                                        ; $69D4: $1B
    ldh [$FFE0], a                                ; $69D5: $E0 $E0
    nop                                           ; $69D7: $00
    inc bc                                        ; $69D8: $03
    nop                                           ; $69D9: $00
    ldh a, [c]                                    ; $69DA: $F2
    ld b, a                                       ; $69DB: $47
    ldh [c], a                                    ; $69DC: $E2
    ld c, b                                       ; $69DD: $48
    ld [hl], a                                    ; $69DE: $77
    ld [hl+], a                                   ; $69DF: $22
    pop de                                        ; $69E0: $D1
    ld d, a                                       ; $69E1: $57
    inc l                                         ; $69E2: $2C
    ld d, h                                       ; $69E3: $54
    ld [hl], h                                    ; $69E4: $74
    ld [bc], a                                    ; $69E5: $02
    ld b, h                                       ; $69E6: $44
    inc bc                                        ; $69E7: $03
    ldh [rP1], a                                  ; $69E8: $E0 $00
    ld b, h                                       ; $69EA: $44
    ld c, [hl]                                    ; $69EB: $4E
    ld l, $04                                     ; $69EC: $2E $04
    ld c, [hl]                                    ; $69EE: $4E
    sbc a                                         ; $69EF: $9F
    ld c, d                                       ; $69F0: $4A
    jp nz, Jump_000_0F11                          ; $69F1: $C2 $11 $0F

    call nz, Call_036_4F48                        ; $69F4: $C4 $48 $4F
    call nz, $8F88                                ; $69F7: $C4 $88 $8F
    ret nz                                        ; $69FA: $C0

    nop                                           ; $69FB: $00
    ccf                                           ; $69FC: $3F
    adc b                                         ; $69FD: $88
    jr nz, jr_036_6A20                            ; $69FE: $20 $20

    adc b                                         ; $6A00: $88
    ccf                                           ; $6A01: $3F
    inc b                                         ; $6A02: $04
    ld [$2724], sp                                ; $6A03: $08 $24 $27
    ret nz                                        ; $6A06: $C0

    inc h                                         ; $6A07: $24
    inc [hl]                                      ; $6A08: $34
    nop                                           ; $6A09: $00
    ld c, h                                       ; $6A0A: $4C

jr_036_6A0B:
    add e                                         ; $6A0B: $83
    ldh [rP1], a                                  ; $6A0C: $E0 $00

jr_036_6A0E:
    ld bc, $7F08                                  ; $6A0E: $01 $08 $7F
    nop                                           ; $6A11: $00
    inc b                                         ; $6A12: $04
    nop                                           ; $6A13: $00
    rst RST_38                                    ; $6A14: $FF
    ldh [rNR12], a                                ; $6A15: $E0 $12
    ld [de], a                                    ; $6A17: $12
    nop                                           ; $6A18: $00
    ld [hl+], a                                   ; $6A19: $22
    ld [hl+], a                                   ; $6A1A: $22
    ld b, [hl]                                    ; $6A1B: $46
    ld b, d                                       ; $6A1C: $42
    add c                                         ; $6A1D: $81
    ret nz                                        ; $6A1E: $C0

    nop                                           ; $6A1F: $00

jr_036_6A20:
    nop                                           ; $6A20: $00
    nop                                           ; $6A21: $00
    nop                                           ; $6A22: $00
    nop                                           ; $6A23: $00
    nop                                           ; $6A24: $00
    nop                                           ; $6A25: $00
    nop                                           ; $6A26: $00
    inc c                                         ; $6A27: $0C
    ld a, a                                       ; $6A28: $7F
    nop                                           ; $6A29: $00
    nop                                           ; $6A2A: $00
    nop                                           ; $6A2B: $00
    nop                                           ; $6A2C: $00
    nop                                           ; $6A2D: $00
    nop                                           ; $6A2E: $00
    nop                                           ; $6A2F: $00
    nop                                           ; $6A30: $00
    nop                                           ; $6A31: $00
    ld [hl+], a                                   ; $6A32: $22
    nop                                           ; $6A33: $00
    inc d                                         ; $6A34: $14
    ld a, a                                       ; $6A35: $7F
    nop                                           ; $6A36: $00
    add hl, bc                                    ; $6A37: $09
    rra                                           ; $6A38: $1F
    adc b                                         ; $6A39: $88
    db $10                                        ; $6A3A: $10
    ccf                                           ; $6A3B: $3F
    ldh [c], a                                    ; $6A3C: $E2
    ld b, b                                       ; $6A3D: $40
    xor d                                         ; $6A3E: $AA
    and d                                         ; $6A3F: $A2
    ld c, d                                       ; $6A40: $4A
    nop                                           ; $6A41: $00
    ret nz                                        ; $6A42: $C0

    nop                                           ; $6A43: $00
    ld a, a                                       ; $6A44: $7F
    call nz, Call_036_7F44                        ; $6A45: $C4 $44 $7F
    call nz, Call_036_7F44                        ; $6A48: $C4 $44 $7F
    ret nz                                        ; $6A4B: $C0

    inc b                                         ; $6A4C: $04
    rst RST_38                                    ; $6A4D: $FF
    ldh [c], a                                    ; $6A4E: $E2
    ld c, c                                       ; $6A4F: $49
    ld a, a                                       ; $6A50: $7F
    ret nz                                        ; $6A51: $C0

    inc b                                         ; $6A52: $04
    rst RST_38                                    ; $6A53: $FF
    ldh [rP1], a                                  ; $6A54: $E0 $00
    inc b                                         ; $6A56: $04
    ld c, $07                                     ; $6A57: $0E $07
    db $F4                                        ; $6A59: $F4
    ld [hl+], a                                   ; $6A5A: $22
    sub l                                         ; $6A5B: $95
    sbc c                                         ; $6A5C: $99
    ld b, b                                       ; $6A5D: $40
    sub c                                         ; $6A5E: $91
    sub c                                         ; $6A5F: $91
    ld [$82F2], sp                                ; $6A60: $08 $F2 $82
    add h                                         ; $6A63: $84
    inc b                                         ; $6A64: $04
    jr @+$22                                      ; $6A65: $18 $20

    nop                                           ; $6A67: $00
    ld a, a                                       ; $6A68: $7F
    ret nz                                        ; $6A69: $C0

    inc b                                         ; $6A6A: $04
    rst RST_38                                    ; $6A6B: $FF
    ld [$BFB5], a                                 ; $6A6C: $EA $B5 $BF
    xor b                                         ; $6A6F: $A8
    inc h                                         ; $6A70: $24
    ccf                                           ; $6A71: $3F
    adc b                                         ; $6A72: $88
    inc h                                         ; $6A73: $24
    ccf                                           ; $6A74: $3F
    add d                                         ; $6A75: $82
    inc b                                         ; $6A76: $04
    inc bc                                        ; $6A77: $03
    ldh [rP1], a                                  ; $6A78: $E0 $00
    ld [de], a                                    ; $6A7A: $12
    ld c, b                                       ; $6A7B: $48
    di                                            ; $6A7C: $F3
    ld [de], a                                    ; $6A7D: $12
    ld l, $33                                     ; $6A7E: $2E $33
    ret nc                                        ; $6A80: $D0

    ld [$203F], sp                                ; $6A81: $08 $3F $20
    adc b                                         ; $6A84: $88
    ccf                                           ; $6A85: $3F
    jr nz, @-$76                                  ; $6A86: $20 $88

    ccf                                           ; $6A88: $3F
    jr nz, jr_036_6A0B                            ; $6A89: $20 $80

    nop                                           ; $6A8B: $00
    rra                                           ; $6A8C: $1F
    nop                                           ; $6A8D: $00
    ld [hl+], a                                   ; $6A8E: $22
    ld a, a                                       ; $6A8F: $7F
    adc b                                         ; $6A90: $88
    add b                                         ; $6A91: $80
    ccf                                           ; $6A92: $3F
    adc b                                         ; $6A93: $88
    nop                                           ; $6A94: $00
    ccf                                           ; $6A95: $3F
    add b                                         ; $6A96: $80
    inc b                                         ; $6A97: $04
    ld d, d                                       ; $6A98: $52
    ld c, d                                       ; $6A99: $4A
    ld d, b                                       ; $6A9A: $50
    adc a                                         ; $6A9B: $8F
    add b                                         ; $6A9C: $80
    nop                                           ; $6A9D: $00
    di                                            ; $6A9E: $F3
    call nz, $A492                                ; $6A9F: $C4 $92 $A4
    ld c, b                                       ; $6AA2: $48
    jp z, $0EA1                                   ; $6AA3: $CA $A1 $0E

    sub [hl]                                      ; $6AA6: $96
    sub b                                         ; $6AA7: $90
    adc [hl]                                      ; $6AA8: $8E
    sub a                                         ; $6AA9: $97
    ldh [c], a                                    ; $6AAA: $E2
    adc [hl]                                      ; $6AAB: $8E
    adc a                                         ; $6AAC: $8F
    add b                                         ; $6AAD: $80
    add b                                         ; $6AAE: $80
    nop                                           ; $6AAF: $00
    inc de                                        ; $6AB0: $13
    ldh [$FFF9], a                                ; $6AB1: $E0 $F9
    inc bc                                        ; $6AB3: $03
    ldh [c], a                                    ; $6AB4: $E2
    ld a, [$E28B]                                 ; $6AB5: $FA $8B $E2
    adc d                                         ; $6AB8: $8A
    ei                                            ; $6AB9: $FB
    ldh [c], a                                    ; $6ABA: $E2
    ld [bc], a                                    ; $6ABB: $02
    sub e                                         ; $6ABC: $93
    db $E4                                        ; $6ABD: $E4
    ld e, c                                       ; $6ABE: $59
    and $20                                       ; $6ABF: $E6 $20
    nop                                           ; $6AC1: $00
    ld de, $FF0E                                  ; $6AC2: $11 $0E $FF
    ld de, $0404                                  ; $6AC5: $11 $04 $04
    rst RST_38                                    ; $6AC8: $FF
    ldh [rDIV], a                                 ; $6AC9: $E0 $04
    inc b                                         ; $6ACB: $04
    ld [$203F], sp                                ; $6ACC: $08 $3F $20
    adc b                                         ; $6ACF: $88
    jr nz, jr_036_6B11                            ; $6AD0: $20 $3F

    add b                                         ; $6AD2: $80
    nop                                           ; $6AD3: $00
    daa                                           ; $6AD4: $27
    call nz, $A724                                ; $6AD5: $C4 $24 $A7
    ret z                                         ; $6AD8: $C8

    or d                                          ; $6AD9: $B2
    xor a                                         ; $6ADA: $AF
    add sp, $22                                   ; $6ADB: $E8 $22
    cpl                                           ; $6ADD: $2F
    db $E4                                        ; $6ADE: $E4
    inc h                                         ; $6ADF: $24
    ld c, l                                       ; $6AE0: $4D
    ld l, b                                       ; $6AE1: $68
    ld b, e                                       ; $6AE2: $43
    adc l                                         ; $6AE3: $8D
    ld h, b                                       ; $6AE4: $60
    nop                                           ; $6AE5: $00
    push af                                       ; $6AE6: $F5
    inc h                                         ; $6AE7: $24
    db $10                                        ; $6AE8: $10
    rla                                           ; $6AE9: $17
    ldh [c], a                                    ; $6AEA: $E2
    push af                                       ; $6AEB: $F5
    add a                                         ; $6AEC: $87
    ldh [c], a                                    ; $6AED: $E2
    add l                                         ; $6AEE: $85
    rst RST_30                                    ; $6AEF: $F7
    ldh [$FF91], a                                ; $6AF0: $E0 $91

jr_036_6AF2:
    rla                                           ; $6AF2: $17
    ldh [rNR11], a                                ; $6AF3: $E0 $11
    ld h, c                                       ; $6AF5: $61
    nop                                           ; $6AF6: $00
    nop                                           ; $6AF7: $00
    dec bc                                        ; $6AF8: $0B
    adc b                                         ; $6AF9: $88
    ld a, [$A682]                                 ; $6AFA: $FA $82 $A6
    sub h                                         ; $6AFD: $94
    ret nc                                        ; $6AFE: $D0

    ld c, $B7                                     ; $6AFF: $0E $B7
    xor d                                         ; $6B01: $AA
    ld b, h                                       ; $6B02: $44
    ret                                           ; $6B03: $C9


    add b                                         ; $6B04: $80
    add h                                         ; $6B05: $84
    ld sp, hl                                     ; $6B06: $F9
    add [hl]                                      ; $6B07: $86
    jr nz, jr_036_6B0A                            ; $6B08: $20 $00

jr_036_6B0A:
    jr nz, jr_036_6B50                            ; $6B0A: $20 $44

    ld a, b                                       ; $6B0C: $78
    ld c, b                                       ; $6B0D: $48
    ld c, [hl]                                    ; $6B0E: $4E
    ld a, e                                       ; $6B0F: $7B
    ld c, b                                       ; $6B10: $48

jr_036_6B11:
    ld b, h                                       ; $6B11: $44
    ld a, d                                       ; $6B12: $7A
    ld c, c                                       ; $6B13: $49
    ld b, h                                       ; $6B14: $44
    db $FC                                        ; $6B15: $FC
    jr @+$46                                      ; $6B16: $18 $44

    jr z, jr_036_6AF2                             ; $6B18: $28 $D8

    ret nz                                        ; $6B1A: $C0

jr_036_6B1B:
    nop                                           ; $6B1B: $00
    rlca                                          ; $6B1C: $07
    call nz, Call_000_27C4                        ; $6B1D: $C4 $C4 $27
    call nz, $E704                                ; $6B20: $C4 $04 $E7
    ret z                                         ; $6B23: $C8

    inc h                                         ; $6B24: $24
    inc h                                         ; $6B25: $24
    and h                                         ; $6B26: $A4
    ld h, $2C                                     ; $6B27: $26 $2C
    jr nz, jr_036_6B7B                            ; $6B29: $20 $50

    adc a                                         ; $6B2B: $8F
    ldh [rP1], a                                  ; $6B2C: $E0 $00

jr_036_6B2E:
    ld a, a                                       ; $6B2E: $7F
    call nz, Call_036_7F4A                        ; $6B2F: $C4 $4A $7F
    ret nz                                        ; $6B32: $C0

    inc b                                         ; $6B33: $04
    rst RST_38                                    ; $6B34: $FF
    ldh [rDIV], a                                 ; $6B35: $E0 $04
    ld e, a                                       ; $6B37: $5F
    adc b                                         ; $6B38: $88
    ld d, b                                       ; $6B39: $50
    ld e, a                                       ; $6B3A: $5F
    adc b                                         ; $6B3B: $88
    ld d, b                                       ; $6B3C: $50
    ld a, a                                       ; $6B3D: $7F
    ldh [rP1], a                                  ; $6B3E: $E0 $00
    pop af                                        ; $6B40: $F1
    ld [bc], a                                    ; $6B41: $02
    sbc l                                         ; $6B42: $9D
    sub l                                         ; $6B43: $95
    call nz, Call_000_2BF5                        ; $6B44: $C4 $F5 $2B
    jr nz, @+$22                                  ; $6B47: $20 $20

    scf                                           ; $6B49: $37
    call nz, $A7A4                                ; $6B4A: $C4 $A4 $A7
    call nz, $E7B4                                ; $6B4D: $C4 $B4 $E7

jr_036_6B50:
    ret nz                                        ; $6B50: $C0

    nop                                           ; $6B51: $00
    inc b                                         ; $6B52: $04
    ld c, $FF                                     ; $6B53: $0E $FF
    add l                                         ; $6B55: $85
    inc h                                         ; $6B56: $24
    ld d, d                                       ; $6B57: $52
    sub h                                         ; $6B58: $94
    xor d                                         ; $6B59: $AA
    rrca                                          ; $6B5A: $0F
    ldh a, [rP1]                                  ; $6B5B: $F0 $00
    inc b                                         ; $6B5D: $04
    ld b, h                                       ; $6B5E: $44
    ld b, h                                       ; $6B5F: $44
    ld b, h                                       ; $6B60: $44
    ld a, a                                       ; $6B61: $7F
    ret nz                                        ; $6B62: $C0

jr_036_6B63:
    nop                                           ; $6B63: $00
    jr nc, jr_036_6B2E                            ; $6B64: $30 $C8

    jr nz, jr_036_6B63                            ; $6B66: $20 $FB

    add sp, $20                                   ; $6B68: $E8 $20
    ld [hl], c                                    ; $6B6A: $71
    call z, $AA69                                 ; $6B6B: $CC $69 $AA
    xor d                                         ; $6B6E: $AA
    ld [hl+], a                                   ; $6B6F: $22
    inc h                                         ; $6B70: $24
    adc b                                         ; $6B71: $88
    jr nz, jr_036_6B94                            ; $6B72: $20 $20

    add b                                         ; $6B74: $80
    nop                                           ; $6B75: $00
    dec b                                         ; $6B76: $05
    ld b, h                                       ; $6B77: $44
    push bc                                       ; $6B78: $C5
    dec h                                         ; $6B79: $25
    ld c, b                                       ; $6B7A: $48

jr_036_6B7B:
    ld a, [bc]                                    ; $6B7B: $0A
    ld [$2584], a                                 ; $6B7C: $EA $84 $25
    dec h                                         ; $6B7F: $25
    ld b, h                                       ; $6B80: $44
    dec h                                         ; $6B81: $25
    jr nc, jr_036_6B84                            ; $6B82: $30 $00

jr_036_6B84:
    ld c, b                                       ; $6B84: $48

jr_036_6B85:
    add a                                         ; $6B85: $87
    ldh [rP1], a                                  ; $6B86: $E0 $00
    inc b                                         ; $6B88: $04
    ld c, $FF                                     ; $6B89: $0E $FF

jr_036_6B8B:
    ld c, $08                                     ; $6B8B: $0E $08
    dec [hl]                                      ; $6B8D: $35
    call nz, Call_000_3F68                        ; $6B8E: $C4 $68 $3F
    jr nz, jr_036_6B1B                            ; $6B91: $20 $88

    ccf                                           ; $6B93: $3F

jr_036_6B94:
    jr nz, @-$76                                  ; $6B94: $20 $88

    jr nz, @+$01                                  ; $6B96: $20 $FF

    ldh [rP1], a                                  ; $6B98: $E0 $00
    stop                                          ; $6B9A: $10 $00
    ld e, $24                                     ; $6B9C: $1E $24
    adc h                                         ; $6B9E: $8C
    ld a, a                                       ; $6B9F: $7F
    and h                                         ; $6BA0: $A4
    adc b                                         ; $6BA1: $88
    ccf                                           ; $6BA2: $3F
    inc h                                         ; $6BA3: $24
    adc b                                         ; $6BA4: $88
    ccf                                           ; $6BA5: $3F
    ld b, b                                       ; $6BA6: $40
    adc b                                         ; $6BA7: $88
    ld b, b                                       ; $6BA8: $40
    add c                                         ; $6BA9: $81

jr_036_6BAA:
    add b                                         ; $6BAA: $80
    nop                                           ; $6BAB: $00
    inc b                                         ; $6BAC: $04
    inc h                                         ; $6BAD: $24
    cp $48                                        ; $6BAE: $FE $48
    add b                                         ; $6BB0: $80
    ld c, e                                       ; $6BB1: $4B
    ld c, b                                       ; $6BB2: $48
    inc h                                         ; $6BB3: $24
    cp $48                                        ; $6BB4: $FE $48
    add b                                         ; $6BB6: $80
    ld c, e                                       ; $6BB7: $4B
    ld c, b                                       ; $6BB8: $48
    inc h                                         ; $6BB9: $24
    adc b                                         ; $6BBA: $88
    adc e                                         ; $6BBB: $8B
    add b                                         ; $6BBC: $80
    nop                                           ; $6BBD: $00
    ld [hl+], a                                   ; $6BBE: $22
    ld c, [hl]                                    ; $6BBF: $4E
    cpl                                           ; $6BC0: $2F
    ldh a, [c]                                    ; $6BC1: $F2
    ld b, b                                       ; $6BC2: $40
    jr nz, jr_036_6BEC                            ; $6BC3: $20 $27

    ldh [c], a                                    ; $6BC5: $E2
    dec [hl]                                      ; $6BC6: $35
    ld h, a                                       ; $6BC7: $67
    ldh [c], a                                    ; $6BC8: $E2
    and l                                         ; $6BC9: $A5
    dec h                                         ; $6BCA: $25
    ld l, $27                                     ; $6BCB: $2E $27
    ld h, h                                       ; $6BCD: $64
    jr nz, jr_036_6BD0                            ; $6BCE: $20 $00

jr_036_6BD0:
    ld de, $F180                                  ; $6BD0: $11 $80 $F1
    ld b, l                                       ; $6BD3: $45
    ld b, d                                       ; $6BD4: $42

jr_036_6BD5:
    ld b, l                                       ; $6BD5: $45
    ld a, c                                       ; $6BD6: $79
    jr nz, jr_036_6BAA                            ; $6BD7: $20 $D1

    ld d, e                                       ; $6BD9: $53
    ld b, h                                       ; $6BDA: $44
    ld d, b                                       ; $6BDB: $50
    ld d, b                                       ; $6BDC: $50
    add b                                         ; $6BDD: $80
    ld [hl], c                                    ; $6BDE: $71
    ld b, $00                                     ; $6BDF: $06 $00
    nop                                           ; $6BE1: $00
    db $F4                                        ; $6BE2: $F4
    adc d                                         ; $6BE3: $8A
    sbc [hl]                                      ; $6BE4: $9E
    sub b                                         ; $6BE5: $90
    adc [hl]                                      ; $6BE6: $8E
    rst RST_38                                    ; $6BE7: $FF
    ld a, [hl+]                                   ; $6BE8: $2A
    adc d                                         ; $6BE9: $8A
    ld l, $34                                     ; $6BEA: $2E $34

jr_036_6BEC:
    call z, $ADA4                                 ; $6BEC: $CC $A4 $AD
    ld b, h                                       ; $6BEF: $44
    or l                                          ; $6BF0: $B5
    and $60                                       ; $6BF1: $E6 $60
    nop                                           ; $6BF3: $00
    inc c                                         ; $6BF4: $0C
    ld [$1008], sp                                ; $6BF5: $08 $08 $10
    ld c, [hl]                                    ; $6BF8: $4E
    inc hl                                        ; $6BF9: $23
    db $FC                                        ; $6BFA: $FC
    jr nz, @-$7E                                  ; $6BFB: $20 $80

    ccf                                           ; $6BFD: $3F
    adc b                                         ; $6BFE: $88
    jr nz, jr_036_6C21                            ; $6BFF: $20 $20

    adc b                                         ; $6C01: $88
    ccf                                           ; $6C02: $3F
    jr nz, jr_036_6B85                            ; $6C03: $20 $80

    nop                                           ; $6C05: $00
    inc b                                         ; $6C06: $04
    inc c                                         ; $6C07: $0C
    ld a, a                                       ; $6C08: $7F
    jr nz, jr_036_6B8B                            ; $6C09: $20 $80

    ld de, $E0FF                                  ; $6C0B: $11 $FF $E0
    nop                                           ; $6C0E: $00
    ccf                                           ; $6C0F: $3F
    adc b                                         ; $6C10: $88
    jr nz, @+$41                                  ; $6C11: $20 $3F

    adc b                                         ; $6C13: $88
    jr nz, @+$41                                  ; $6C14: $20 $3F

    add b                                         ; $6C16: $80
    nop                                           ; $6C17: $00
    ld b, c                                       ; $6C18: $41
    add b                                         ; $6C19: $80
    ld hl, $E28F                                  ; $6C1A: $21 $8F $E2
    ld c, c                                       ; $6C1D: $49
    add hl, de                                    ; $6C1E: $19
    ld c, $2F                                     ; $6C1F: $0E $2F

jr_036_6C21:
    ld a, [hl+]                                   ; $6C21: $2A
    ld c, b                                       ; $6C22: $48
    jp z, Jump_000_0849                           ; $6C23: $CA $49 $08

    ld d, d                                       ; $6C26: $52
    ld d, h                                       ; $6C27: $54
    ld h, b                                       ; $6C28: $60
    nop                                           ; $6C29: $00
    inc b                                         ; $6C2A: $04
    ld [bc], a                                    ; $6C2B: $02
    sbc a                                         ; $6C2C: $9F
    ld d, c                                       ; $6C2D: $51
    ld b, b                                       ; $6C2E: $40
    rra                                           ; $6C2F: $1F
    ld d, c                                       ; $6C30: $51
    ld b, d                                       ; $6C31: $42
    sbc a                                         ; $6C32: $9F
    inc b                                         ; $6C33: $04
    ld c, $FF                                     ; $6C34: $0E $FF
    ld c, $08                                     ; $6C36: $0E $08
    dec [hl]                                      ; $6C38: $35
    call nz, JoypadTransitionInterrupt            ; $6C39: $C4 $60 $00
    db $10                                        ; $6C3C: $10
    adc h                                         ; $6C3D: $8C
    rst RST_30                                    ; $6C3E: $F7
    inc h                                         ; $6C3F: $24
    adc b                                         ; $6C40: $88
    ld h, $35                                     ; $6C41: $26 $35
    adc d                                         ; $6C43: $8A
    ret z                                         ; $6C44: $C8

    nop                                           ; $6C45: $00
    ld h, b                                       ; $6C46: $60
    inc d                                         ; $6C47: $14
    ld d, d                                       ; $6C48: $52
    ld c, d                                       ; $6C49: $4A
    ld d, b                                       ; $6C4A: $50
    adc a                                         ; $6C4B: $8F
    add b                                         ; $6C4C: $80

jr_036_6C4D:
    nop                                           ; $6C4D: $00
    inc b                                         ; $6C4E: $04
    inc c                                         ; $6C4F: $0C
    ld a, a                                       ; $6C50: $7F
    jr nz, jr_036_6BD5                            ; $6C51: $20 $82

    ld de, $E8FF                                  ; $6C53: $11 $FF $E8
    inc h                                         ; $6C56: $24
    ccf                                           ; $6C57: $3F
    adc b                                         ; $6C58: $88
    inc h                                         ; $6C59: $24
    ccf                                           ; $6C5A: $3F
    and d                                         ; $6C5B: $A2
    inc b                                         ; $6C5C: $04
    inc bc                                        ; $6C5D: $03
    ldh [rP1], a                                  ; $6C5E: $E0 $00
    ld [$1100], sp                                ; $6C60: $08 $00 $11
    ccf                                           ; $6C63: $3F
    add b                                         ; $6C64: $80
    ld [$E8FF], sp                                ; $6C65: $08 $FF $E8
    ld [hl+], a                                   ; $6C68: $22
    call Call_000_3260                            ; $6C69: $CD $60 $32
    inc c                                         ; $6C6C: $0C
    add b                                         ; $6C6D: $80
    inc bc                                        ; $6C6E: $03
    inc a                                         ; $6C6F: $3C

jr_036_6C70:
    nop                                           ; $6C70: $00
    nop                                           ; $6C71: $00
    ld h, h                                       ; $6C72: $64
    ld c, [hl]                                    ; $6C73: $4E
    rrca                                          ; $6C74: $0F
    db $E4                                        ; $6C75: $E4
    ld c, h                                       ; $6C76: $4C
    rlca                                          ; $6C77: $07
    db $E4                                        ; $6C78: $E4
    ld c, h                                       ; $6C79: $4C
    rlca                                          ; $6C7A: $07
    pop hl                                        ; $6C7B: $E1
    ld c, $0F                                     ; $6C7C: $0E $0F
    db $E3                                        ; $6C7E: $E3
    add h                                         ; $6C7F: $84
    and l                                         ; $6C80: $A5
    jp hl                                         ; $6C81: $E9


    jr nz, jr_036_6C84                            ; $6C82: $20 $00

jr_036_6C84:
    inc c                                         ; $6C84: $0C
    inc b                                         ; $6C85: $04
    ld [$E0FF], sp                                ; $6C86: $08 $FF $E0
    db $10                                        ; $6C89: $10
    rla                                           ; $6C8A: $17
    ret z                                         ; $6C8B: $C8

    jr nz, @+$63                                  ; $6C8C: $20 $61

    ld l, $AF                                     ; $6C8E: $2E $AF
    ld hl, $2100                                  ; $6C90: $21 $00 $21
    inc hl                                        ; $6C93: $23
    nop                                           ; $6C94: $00
    nop                                           ; $6C95: $00
    inc c                                         ; $6C96: $0C
    inc b                                         ; $6C97: $04
    ld [$E0FF], sp                                ; $6C98: $08 $FF $E0
    db $10                                        ; $6C9B: $10
    ld hl, $2180                                  ; $6C9C: $21 $80 $21
    ld h, a                                       ; $6C9F: $67
    ret nz                                        ; $6CA0: $C0

    and c                                         ; $6CA1: $A1
    ld hl, $2102                                  ; $6CA2: $21 $02 $21
    cpl                                           ; $6CA5: $2F
    ldh [rP1], a                                  ; $6CA6: $E0 $00
    ld [bc], a                                    ; $6CA8: $02
    nop                                           ; $6CA9: $00
    add e                                         ; $6CAA: $83
    ld b, h                                       ; $6CAB: $44
    add h                                         ; $6CAC: $84
    ld [$A017], sp                                ; $6CAD: $08 $17 $A0
    nop                                           ; $6CB0: $00
    cpl                                           ; $6CB1: $2F
    call nz, $42C2                                ; $6CB2: $C4 $C2 $42
    ld c, h                                       ; $6CB5: $4C
    ld b, d                                       ; $6CB6: $42
    ld b, d                                       ; $6CB7: $42
    nop                                           ; $6CB8: $00
    nop                                           ; $6CB9: $00
    ld hl, $FAC4                                  ; $6CBA: $21 $C4 $FA
    jr nz, jr_036_6C4D                            ; $6CBD: $20 $8E

    ei                                            ; $6CBF: $FB
    jr nz, jr_036_6C70                            ; $6CC0: $20 $AE

    ei                                            ; $6CC2: $FB
    adc b                                         ; $6CC3: $88
    xor [hl]                                      ; $6CC4: $AE
    ei                                            ; $6CC5: $FB
    adc b                                         ; $6CC6: $88
    adc b                                         ; $6CC7: $88
    ld hl, sp-$77                                 ; $6CC8: $F8 $89
    add b                                         ; $6CCA: $80
    nop                                           ; $6CCB: $00
    ccf                                           ; $6CCC: $3F
    add b                                         ; $6CCD: $80
    add hl, bc                                    ; $6CCE: $09
    ld b, $0C                                     ; $6CCF: $06 $0C
    ld a, a                                       ; $6CD1: $7F
    ld b, h                                       ; $6CD2: $44
    ld c, h                                       ; $6CD3: $4C
    ld a, a                                       ; $6CD4: $7F
    ld b, h                                       ; $6CD5: $44
    ld c, [hl]                                    ; $6CD6: $4E
    rst RST_38                                    ; $6CD7: $FF
    ld [$1022], sp                                ; $6CD8: $08 $22 $10
    ld h, b                                       ; $6CDB: $60
    ret nz                                        ; $6CDC: $C0

    nop                                           ; $6CDD: $00
    ld c, b                                       ; $6CDE: $48
    ld c, b                                       ; $6CDF: $48
    inc h                                         ; $6CE0: $24
    rra                                           ; $6CE1: $1F
    add sp, -$7C                                  ; $6CE2: $E8 $84
    ld c, b                                       ; $6CE4: $48
    ld b, d                                       ; $6CE5: $42
    stop                                          ; $6CE6: $10 $00
    inc c                                         ; $6CE8: $0C
    ld e, a                                       ; $6CE9: $5F
    ld d, l                                       ; $6CEA: $55
    ld b, h                                       ; $6CEB: $44
    sub l                                         ; $6CEC: $95
    cp a                                          ; $6CED: $BF
    ldh [rP1], a                                  ; $6CEE: $E0 $00
    jr nc, jr_036_6D14                            ; $6CF0: $30 $22

    add hl, hl                                    ; $6CF2: $29
    ld b, l                                       ; $6CF3: $45
    ld [hl+], a                                   ; $6CF4: $22
    cp c                                          ; $6CF5: $B9
    ld de, $7D22                                  ; $6CF6: $11 $22 $7D
    ld d, l                                       ; $6CF9: $55
    ld [hl+], a                                   ; $6CFA: $22
    ld a, l                                       ; $6CFB: $7D
    jr z, @+$24                                   ; $6CFC: $28 $22

    ld b, h                                       ; $6CFE: $44
    add h                                         ; $6CFF: $84
    ldh [rP1], a                                  ; $6D00: $E0 $00
    inc b                                         ; $6D02: $04
    ld c, $7F                                     ; $6D03: $0E $7F
    ret nz                                        ; $6D05: $C0

    jr nz, @-$5F                                  ; $6D06: $20 $9F

    ld [bc], a                                    ; $6D08: $02
    inc b                                         ; $6D09: $04
    inc b                                         ; $6D0A: $04
    rst RST_38                                    ; $6D0B: $FF
    ldh [rDIV], a                                 ; $6D0C: $E0 $04
    inc b                                         ; $6D0E: $04
    nop                                           ; $6D0F: $00
    inc e                                         ; $6D10: $1C
    ld [$0000], sp                                ; $6D11: $08 $00 $00

jr_036_6D14:
    jr nz, @+$4A                                  ; $6D14: $20 $48

    ei                                            ; $6D16: $FB
    ld [hl+], a                                   ; $6D17: $22
    nop                                           ; $6D18: $00
    ld a, [$E4AB]                                 ; $6D19: $FA $AB $E4
    ld a, [$44AA]                                 ; $6D1C: $FA $AA $44
    ld a, [$4422]                                 ; $6D1F: $FA $22 $44
    ld a, [$4024]                                 ; $6D22: $FA $24 $40
    nop                                           ; $6D25: $00
    jr nz, jr_036_6D56                            ; $6D26: $20 $2E

    daa                                           ; $6D28: $27
    db $F4                                        ; $6D29: $F4
    inc c                                         ; $6D2A: $0C
    dec h                                         ; $6D2B: $25
    inc h                                         ; $6D2C: $24
    ld c, $37                                     ; $6D2D: $0E $37
    ld h, l                                       ; $6D2F: $65
    ld b, [hl]                                    ; $6D30: $46
    and l                                         ; $6D31: $A5
    dec h                                         ; $6D32: $25
    ld c, d                                       ; $6D33: $4A
    add hl, hl                                    ; $6D34: $29
    ld l, e                                       ; $6D35: $6B
    jr nz, jr_036_6D38                            ; $6D36: $20 $00

jr_036_6D38:
    ld b, $00                                     ; $6D38: $06 $00
    inc b                                         ; $6D3A: $04
    inc b                                         ; $6D3B: $04
    ld [$2734], sp                                ; $6D3C: $08 $34 $27
    ret nz                                        ; $6D3F: $C0

    inc h                                         ; $6D40: $24
    inc h                                         ; $6D41: $24
    nop                                           ; $6D42: $00
    inc h                                         ; $6D43: $24
    inc h                                         ; $6D44: $24
    inc b                                         ; $6D45: $04
    inc h                                         ; $6D46: $24
    rst RST_38                                    ; $6D47: $FF
    ldh [rP1], a                                  ; $6D48: $E0 $00
    nop                                           ; $6D4A: $00
    ld c, [hl]                                    ; $6D4B: $4E
    ld a, a                                       ; $6D4C: $7F
    ld b, b                                       ; $6D4D: $40
    ld [$7F40], sp                                ; $6D4E: $08 $40 $7F
    ret z                                         ; $6D51: $C8

    ld c, b                                       ; $6D52: $48
    ld c, c                                       ; $6D53: $49
    nop                                           ; $6D54: $00
    ld b, l                                       ; $6D55: $45

jr_036_6D56:
    ld b, d                                       ; $6D56: $42
    ld [$B08D], sp                                ; $6D57: $08 $8D $B0
    ld h, b                                       ; $6D5A: $60
    nop                                           ; $6D5B: $00
    rst RST_38                                    ; $6D5C: $FF
    ldh [rDIV], a                                 ; $6D5D: $E0 $04
    inc b                                         ; $6D5F: $04
    ld c, [hl]                                    ; $6D60: $4E
    ld a, a                                       ; $6D61: $7F
    ld b, h                                       ; $6D62: $44
    ld b, h                                       ; $6D63: $44
    ld d, l                                       ; $6D64: $55
    ld d, l                                       ; $6D65: $55
    ld b, h                                       ; $6D66: $44
    ld e, a                                       ; $6D67: $5F
    ld b, b                                       ; $6D68: $40
    ld b, h                                       ; $6D69: $44
    ld b, b                                       ; $6D6A: $40
    ld b, b                                       ; $6D6B: $40
    ret nz                                        ; $6D6C: $C0

    nop                                           ; $6D6D: $00
    ld bc, $1E80                                  ; $6D6E: $01 $80 $1E
    db $10                                        ; $6D71: $10
    adc h                                         ; $6D72: $8C
    rra                                           ; $6D73: $1F
    ld de, $1100                                  ; $6D74: $11 $00 $11
    ld de, $FF2E                                  ; $6D77: $11 $2E $FF
    add hl, bc                                    ; $6D7A: $09
    ld [$6010], sp                                ; $6D7B: $08 $10 $60
    ld b, b                                       ; $6D7E: $40
    nop                                           ; $6D7F: $00
    ld a, a                                       ; $6D80: $7F
    call nz, Call_036_7F40                        ; $6D81: $C4 $40 $7F
    ret nz                                        ; $6D84: $C0

    ld b, b                                       ; $6D85: $40
    ld b, h                                       ; $6D86: $44
    ld [$445F], sp                                ; $6D87: $08 $5F $44
    adc b                                         ; $6D8A: $88
    ld b, h                                       ; $6D8B: $44
    ld c, b                                       ; $6D8C: $48
    xor d                                         ; $6D8D: $AA
    adc b                                         ; $6D8E: $88
    or b                                          ; $6D8F: $B0
    ld h, b                                       ; $6D90: $60
    nop                                           ; $6D91: $00
    ld a, a                                       ; $6D92: $7F
    call nz, Call_036_7F40                        ; $6D93: $C4 $40 $7F
    ret nz                                        ; $6D96: $C0

    ld b, e                                       ; $6D97: $43
    ld e, h                                       ; $6D98: $5C
    nop                                           ; $6D99: $00
    ld b, a                                       ; $6D9A: $47
    ld e, h                                       ; $6D9B: $5C
    ld [$7C47], sp                                ; $6D9C: $08 $47 $7C
    ld b, [hl]                                    ; $6D9F: $46
    add h                                         ; $6DA0: $84
    add e                                         ; $6DA1: $83
    ret nz                                        ; $6DA2: $C0

    nop                                           ; $6DA3: $00
    ld c, c                                       ; $6DA4: $49
    and h                                         ; $6DA5: $A4
    dec h                                         ; $6DA6: $25
    ld bc, $870C                                  ; $6DA7: $01 $0C $87
    ld d, h                                       ; $6DAA: $54
    ld c, h                                       ; $6DAB: $4C
    rla                                           ; $6DAC: $17
    inc h                                         ; $6DAD: $24
    ld c, h                                       ; $6DAE: $4C
    rst RST_20                                    ; $6DAF: $E7
    ld b, h                                       ; $6DB0: $44
    ld b, h                                       ; $6DB1: $44
    ld b, h                                       ; $6DB2: $44
    ld b, h                                       ; $6DB3: $44
    ret nz                                        ; $6DB4: $C0

    nop                                           ; $6DB5: $00
    nop                                           ; $6DB6: $00
    nop                                           ; $6DB7: $00
    nop                                           ; $6DB8: $00
    inc c                                         ; $6DB9: $0C
    nop                                           ; $6DBA: $00
    ld [$801F], sp                                ; $6DBB: $08 $1F $80
    ld de, $0022                                  ; $6DBE: $11 $22 $00
    ld c, h                                       ; $6DC1: $4C
    ld [bc], a                                    ; $6DC2: $02
    nop                                           ; $6DC3: $00
    ld bc, $0000                                  ; $6DC4: $01 $00 $00
    nop                                           ; $6DC7: $00
    inc b                                         ; $6DC8: $04
    ld c, $FF                                     ; $6DC9: $0E $FF
    ld [de], a                                    ; $6DCB: $12
    inc c                                         ; $6DCC: $0C
    inc de                                        ; $6DCD: $13
    ld [hl+], a                                   ; $6DCE: $22
    ld b, h                                       ; $6DCF: $44
    ld h, l                                       ; $6DD0: $65
    and h                                         ; $6DD1: $A4
    adc b                                         ; $6DD2: $88
    ld a, [hl+]                                   ; $6DD3: $2A
    ld hl, $2208                                  ; $6DD4: $21 $08 $22
    inc l                                         ; $6DD7: $2C
    ld h, b                                       ; $6DD8: $60
    nop                                           ; $6DD9: $00
    inc h                                         ; $6DDA: $24
    ld c, $27                                     ; $6DDB: $0E $27
    ld c, d                                       ; $6DDD: $4A
    ld c, b                                       ; $6DDE: $48
    ld d, c                                       ; $6DDF: $51
    sub $60                                       ; $6DE0: $D6 $60
    ld d, c                                       ; $6DE2: $51
    ld d, [hl]                                    ; $6DE3: $56
    ld c, b                                       ; $6DE4: $48
    ld d, c                                       ; $6DE5: $51
    ld d, [hl]                                    ; $6DE6: $56
    inc l                                         ; $6DE7: $2C
    ld b, b                                       ; $6DE8: $40
    ld b, a                                       ; $6DE9: $47
    nop                                           ; $6DEA: $00
    nop                                           ; $6DEB: $00
    inc hl                                        ; $6DEC: $23
    nop                                           ; $6DED: $00
    and d                                         ; $6DEE: $A2
    rst RST_30                                    ; $6DEF: $F7
    ld [$22AA], a                                 ; $6DF0: $EA $AA $22
    xor d                                         ; $6DF3: $AA
    inc [hl]                                      ; $6DF4: $34
    ld h, l                                       ; $6DF5: $65
    ld [hl+], a                                   ; $6DF6: $22
    xor c                                         ; $6DF7: $A9
    ld [hl+], a                                   ; $6DF8: $22
    inc h                                         ; $6DF9: $24
    inc h                                         ; $6DFA: $24
    jr nz, @-$3E                                  ; $6DFB: $20 $C0

    nop                                           ; $6DFD: $00
    inc b                                         ; $6DFE: $04
    add b                                         ; $6DFF: $80
    ccf                                           ; $6E00: $3F
    ld b, $2E                                     ; $6E01: $06 $2E
    rst RST_38                                    ; $6E03: $FF
    ld [$1F08], sp                                ; $6E04: $08 $08 $1F
    jr z, jr_036_6E11                             ; $6E07: $28 $08

    rst RST_18                                    ; $6E09: $DF
    db $10                                        ; $6E0A: $10
    adc b                                         ; $6E0B: $88
    nop                                           ; $6E0C: $00
    inc bc                                        ; $6E0D: $03
    nop                                           ; $6E0E: $00
    nop                                           ; $6E0F: $00
    nop                                           ; $6E10: $00

jr_036_6E11:
    ld c, [hl]                                    ; $6E11: $4E
    rst RST_38                                    ; $6E12: $FF
    inc b                                         ; $6E13: $04
    nop                                           ; $6E14: $00
    inc b                                         ; $6E15: $04
    inc b                                         ; $6E16: $04
    ld c, h                                       ; $6E17: $4C
    ld a, a                                       ; $6E18: $7F
    inc b                                         ; $6E19: $04
    nop                                           ; $6E1A: $00
    ld a, [bc]                                    ; $6E1B: $0A
    ld de, $2008                                  ; $6E1C: $11 $08 $20
    ret nz                                        ; $6E1F: $C0

    ld h, b                                       ; $6E20: $60
    nop                                           ; $6E21: $00
    inc bc                                        ; $6E22: $03
    nop                                           ; $6E23: $00
    ldh a, [c]                                    ; $6E24: $F2
    inc de                                        ; $6E25: $13
    db $E4                                        ; $6E26: $E4
    sub h                                         ; $6E27: $94
    db $F4                                        ; $6E28: $F4
    ld c, b                                       ; $6E29: $48
    adc d                                         ; $6E2A: $8A
    add d                                         ; $6E2B: $82
    add b                                         ; $6E2C: $80
    sub c                                         ; $6E2D: $91
    sbc c                                         ; $6E2E: $99
    add h                                         ; $6E2F: $84
    ld [hl], d                                    ; $6E30: $72
    inc c                                         ; $6E31: $0C
    jr nz, jr_036_6E34                            ; $6E32: $20 $00

jr_036_6E34:
    ld b, d                                       ; $6E34: $42
    nop                                           ; $6E35: $00
    ld b, d                                       ; $6E36: $42
    rst RST_30                                    ; $6E37: $F7
    db $E4                                        ; $6E38: $E4
    ld c, h                                       ; $6E39: $4C
    ld b, h                                       ; $6E3A: $44
    ld c, b                                       ; $6E3B: $48
    ld a, d                                       ; $6E3C: $7A
    ld d, d                                       ; $6E3D: $52
    add b                                         ; $6E3E: $80
    ld d, c                                       ; $6E3F: $51
    ld d, c                                       ; $6E40: $51
    add h                                         ; $6E41: $84
    sub d                                         ; $6E42: $92
    xor h                                         ; $6E43: $AC
    jr nz, jr_036_6E46                            ; $6E44: $20 $00

jr_036_6E46:
    ld hl, $4102                                  ; $6E46: $21 $02 $41
    sub a                                         ; $6E49: $97
    db $E4                                        ; $6E4A: $E4
    ld h, c                                       ; $6E4B: $61
    ld c, a                                       ; $6E4C: $4F
    ldh [$FFF1], a                                ; $6E4D: $E0 $F1
    inc hl                                        ; $6E4F: $23
    ldh [c], a                                    ; $6E50: $E2
    xor [hl]                                      ; $6E51: $AE
    xor e                                         ; $6E52: $AB
    ldh [c], a                                    ; $6E53: $E2
    xor d                                         ; $6E54: $AA
    inc hl                                        ; $6E55: $23
    ldh [rP1], a                                  ; $6E56: $E0 $00
    ld de, $7942                                  ; $6E58: $11 $42 $79
    ld bc, $FF0E                                  ; $6E5B: $01 $0E $FF
    ld bc, $1100                                  ; $6E5E: $01 $00 $11
    ld e, h                                       ; $6E61: $5C
    adc d                                         ; $6E62: $8A
    ld d, b                                       ; $6E63: $50
    ld e, [hl]                                    ; $6E64: $5E
    and [hl]                                      ; $6E65: $A6
    ldh a, [rLCDC]                                ; $6E66: $F0 $40
    jr nz, jr_036_6E6A                            ; $6E68: $20 $00

jr_036_6E6A:
    ld a, e                                       ; $6E6A: $7B
    call nz, Call_036_7B4A                        ; $6E6B: $C4 $4A $7B
    ret nz                                        ; $6E6E: $C0

    db $10                                        ; $6E6F: $10
    rst RST_38                                    ; $6E70: $FF
    add sp, $20                                   ; $6E71: $E8 $20
    ld b, b                                       ; $6E73: $40
    ld c, [hl]                                    ; $6E74: $4E
    ei                                            ; $6E75: $FB
    ld c, d                                       ; $6E76: $4A
    ld b, h                                       ; $6E77: $44
    ld c, d                                       ; $6E78: $4A
    ld a, e                                       ; $6E79: $7B
    ret nz                                        ; $6E7A: $C0

    nop                                           ; $6E7B: $00
    inc b                                         ; $6E7C: $04
    ld c, $FF                                     ; $6E7D: $0E $FF
    nop                                           ; $6E7F: $00
    ld [$4061], sp                                ; $6E80: $08 $61 $40
    ld c, d                                       ; $6E83: $4A
    sub c                                         ; $6E84: $91
    ld de, $0A00                                  ; $6E85: $11 $00 $0A
    inc b                                         ; $6E88: $04
    nop                                           ; $6E89: $00
    dec de                                        ; $6E8A: $1B
    ldh [$FFE0], a                                ; $6E8B: $E0 $E0
    nop                                           ; $6E8D: $00
    inc hl                                        ; $6E8E: $23
    ld b, d                                       ; $6E8F: $42
    ld [hl+], a                                   ; $6E90: $22
    ld [hl+], a                                   ; $6E91: $22
    ld c, $42                                     ; $6E92: $0E $42
    rst RST_18                                    ; $6E94: $DF
    nop                                           ; $6E95: $00
    ld b, d                                       ; $6E96: $42
    ld b, d                                       ; $6E97: $42
    nop                                           ; $6E98: $00
    ld b, c                                       ; $6E99: $41
    ld b, c                                       ; $6E9A: $41
    ld a, [hl+]                                   ; $6E9B: $2A
    ld b, b                                       ; $6E9C: $40
    ld b, b                                       ; $6E9D: $40
    ld h, b                                       ; $6E9E: $60
    nop                                           ; $6E9F: $00
    ccf                                           ; $6EA0: $3F
    call nz, $2020                                ; $6EA1: $C4 $20 $20
    ld c, h                                       ; $6EA4: $4C
    ccf                                           ; $6EA5: $3F
    jr nz, @+$46                                  ; $6EA6: $20 $44

    jr nz, @+$41                                  ; $6EA8: $20 $3F

    call nz, Call_036_4020                        ; $6EAA: $C4 $20 $40
    ld c, h                                       ; $6EAD: $4C
    ld b, c                                       ; $6EAE: $41
    add b                                         ; $6EAF: $80
    add b                                         ; $6EB0: $80
    nop                                           ; $6EB1: $00
    inc h                                         ; $6EB2: $24
    inc c                                         ; $6EB3: $0C
    inc h                                         ; $6EB4: $24
    rst RST_30                                    ; $6EB5: $F7
    ld [bc], a                                    ; $6EB6: $02
    inc h                                         ; $6EB7: $24
    inc hl                                        ; $6EB8: $23
    ldh [$FF30], a                                ; $6EB9: $E0 $30
    ld h, a                                       ; $6EBB: $67
    call nz, $27A4                                ; $6EBC: $C4 $A4 $27
    call nz, Call_036_6724                        ; $6EBF: $C4 $24 $67
    ret nz                                        ; $6EC2: $C0

jr_036_6EC3:
    nop                                           ; $6EC3: $00
    ld [bc], a                                    ; $6EC4: $02
    ld c, $7F                                     ; $6EC5: $0E $7F
    ld b, c                                       ; $6EC7: $41
    ld c, $DF                                     ; $6EC8: $0E $DF
    ld d, c                                       ; $6ECA: $51
    inc l                                         ; $6ECB: $2C
    ld e, a                                       ; $6ECC: $5F
    call nc, Call_036_5248                        ; $6ECD: $D4 $48 $52
    ld d, c                                       ; $6ED0: $51
    ld [$ACA2], sp                                ; $6ED1: $08 $A2 $AC
    ld h, b                                       ; $6ED4: $60
    nop                                           ; $6ED5: $00
    inc hl                                        ; $6ED6: $23
    ld [bc], a                                    ; $6ED7: $02
    ld [hl+], a                                   ; $6ED8: $22
    rst RST_30                                    ; $6ED9: $F7
    ldh [rNR43], a                                ; $6EDA: $E0 $22
    ld [hl+], a                                   ; $6EDC: $22
    ld c, [hl]                                    ; $6EDD: $4E
    inc sp                                        ; $6EDE: $33
    ld h, d                                       ; $6EDF: $62
    ld b, h                                       ; $6EE0: $44
    and l                                         ; $6EE1: $A5
    inc h                                         ; $6EE2: $24
    add h                                         ; $6EE3: $84
    add hl, hl                                    ; $6EE4: $29
    ld h, d                                       ; $6EE5: $62
    jr nz, jr_036_6EE8                            ; $6EE6: $20 $00

jr_036_6EE8:
    ld bc, $3F08                                  ; $6EE8: $01 $08 $3F
    ld bc, $0200                                  ; $6EEB: $01 $00 $02
    inc b                                         ; $6EEE: $04
    ld c, [hl]                                    ; $6EEF: $4E
    rst RST_38                                    ; $6EF0: $FF
    ld [bc], a                                    ; $6EF1: $02
    nop                                           ; $6EF2: $00
    ld [bc], a                                    ; $6EF3: $02
    ld [bc], a                                    ; $6EF4: $02
    nop                                           ; $6EF5: $00
    ld [bc], a                                    ; $6EF6: $02
    inc c                                         ; $6EF7: $0C
    nop                                           ; $6EF8: $00
    nop                                           ; $6EF9: $00
    inc c                                         ; $6EFA: $0C
    inc c                                         ; $6EFB: $0C
    ld [$827F], sp                                ; $6EFC: $08 $7F $82
    add hl, bc                                    ; $6EFF: $09
    rst RST_38                                    ; $6F00: $FF
    ldh [rDIV], a                                 ; $6F01: $E0 $04
    ccf                                           ; $6F03: $3F
    adc b                                         ; $6F04: $88
    ret nc                                        ; $6F05: $D0

    rra                                           ; $6F06: $1F
    adc b                                         ; $6F07: $88
    db $10                                        ; $6F08: $10
    rra                                           ; $6F09: $1F
    add b                                         ; $6F0A: $80
    nop                                           ; $6F0B: $00
    ld de, $FF0E                                  ; $6F0C: $11 $0E $FF
    inc b                                         ; $6F0F: $04
    inc c                                         ; $6F10: $0C
    ld a, a                                       ; $6F11: $7F
    inc b                                         ; $6F12: $04
    ld c, $FF                                     ; $6F13: $0E $FF
    ld de, $FF0E                                  ; $6F15: $11 $0E $FF
    ld de, $F84A                                  ; $6F18: $11 $4A $F8
    inc sp                                        ; $6F1B: $33
    ld h, b                                       ; $6F1C: $60
    nop                                           ; $6F1D: $00
    inc hl                                        ; $6F1E: $23
    call nz, $9442                                ; $6F1F: $C4 $42 $94
    adc [hl]                                      ; $6F22: $8E
    ld l, e                                       ; $6F23: $6B
    ld b, h                                       ; $6F24: $44
    xor d                                         ; $6F25: $AA
    db $F4                                        ; $6F26: $F4
    daa                                           ; $6F27: $27
    ldh [$FFB4], a                                ; $6F28: $E0 $B4
    or h                                          ; $6F2A: $B4
    ld [bc], a                                    ; $6F2B: $02
    or h                                          ; $6F2C: $B4
    inc hl                                        ; $6F2D: $23
    ldh [rP1], a                                  ; $6F2E: $E0 $00
    inc b                                         ; $6F30: $04
    inc c                                         ; $6F31: $0C
    ld a, a                                       ; $6F32: $7F
    inc b                                         ; $6F33: $04
    ld [$043F], sp                                ; $6F34: $08 $3F $04
    ld c, $FF                                     ; $6F37: $0E $FF
    jr nz, jr_036_6EC3                            ; $6F39: $20 $88

    ccf                                           ; $6F3B: $3F
    jr nz, @-$76                                  ; $6F3C: $20 $88

    ccf                                           ; $6F3E: $3F
    jr nz, @-$7E                                  ; $6F3F: $20 $80

    nop                                           ; $6F41: $00
    inc b                                         ; $6F42: $04
    ld [$043F], sp                                ; $6F43: $08 $3F $04
    adc [hl]                                      ; $6F46: $8E
    rst RST_38                                    ; $6F47: $FF
    ccf                                           ; $6F48: $3F
    add h                                         ; $6F49: $84
    inc b                                         ; $6F4A: $04
    rst RST_38                                    ; $6F4B: $FF
    add sp, $20                                   ; $6F4C: $E8 $20
    ccf                                           ; $6F4E: $3F
    adc b                                         ; $6F4F: $88
    jr nz, jr_036_6F91                            ; $6F50: $20 $3F

    add b                                         ; $6F52: $80
    nop                                           ; $6F53: $00
    ld b, $04                                     ; $6F54: $06 $04
    inc b                                         ; $6F56: $04
    rst RST_38                                    ; $6F57: $FF
    ldh [rDIV], a                                 ; $6F58: $E0 $04
    ld a, a                                       ; $6F5A: $7F
    call nz, $4444                                ; $6F5B: $C4 $44 $44
    ld b, h                                       ; $6F5E: $44
    ld b, h                                       ; $6F5F: $44
    ld b, l                                       ; $6F60: $45
    ret z                                         ; $6F61: $C8

    inc b                                         ; $6F62: $04
    inc b                                         ; $6F63: $04
    nop                                           ; $6F64: $00
    nop                                           ; $6F65: $00
    ld h, e                                       ; $6F66: $63
    ld [bc], a                                    ; $6F67: $02
    ld b, d                                       ; $6F68: $42
    ld a, e                                       ; $6F69: $7B
    add sp, -$6C                                  ; $6F6A: $E8 $94
    sub h                                         ; $6F6C: $94
    adc b                                         ; $6F6D: $88
    db $10                                        ; $6F6E: $10
    db $10                                        ; $6F6F: $10
    adc b                                         ; $6F70: $88
    db $10                                        ; $6F71: $10
    db $10                                        ; $6F72: $10
    adc b                                         ; $6F73: $88
    db $10                                        ; $6F74: $10
    ld de, $0080                                  ; $6F75: $11 $80 $00
    ld de, $FF0E                                  ; $6F78: $11 $0E $FF
    ld de, $0400                                  ; $6F7B: $11 $00 $04
    ccf                                           ; $6F7E: $3F
    adc b                                         ; $6F7F: $88
    inc h                                         ; $6F80: $24
    inc h                                         ; $6F81: $24
    adc [hl]                                      ; $6F82: $8E
    rst RST_38                                    ; $6F83: $FF
    ld a, [bc]                                    ; $6F84: $0A
    ld [$C031], sp                                ; $6F85: $08 $31 $C0
    ld h, b                                       ; $6F88: $60
    nop                                           ; $6F89: $00
    inc b                                         ; $6F8A: $04
    ld c, $FF                                     ; $6F8B: $0E $FF
    ld de, $1F00                                  ; $6F8D: $11 $00 $1F
    ld b, b                                       ; $6F90: $40

jr_036_6F91:
    ld c, [hl]                                    ; $6F91: $4E
    ld a, a                                       ; $6F92: $7F
    ret nz                                        ; $6F93: $C0

    ld c, b                                       ; $6F94: $48
    sub d                                         ; $6F95: $92
    ld [de], a                                    ; $6F96: $12
    ld [bc], a                                    ; $6F97: $02
    ld [hl+], a                                   ; $6F98: $22
    pop bc                                        ; $6F99: $C1
    ldh [rP1], a                                  ; $6F9A: $E0 $00
    inc b                                         ; $6F9C: $04
    nop                                           ; $6F9D: $00
    ld a, [bc]                                    ; $6F9E: $0A
    ld de, $2008                                  ; $6F9F: $11 $08 $20
    reti                                          ; $6FA2: $D9


    ld h, b                                       ; $6FA3: $60
    ld de, $0011                                  ; $6FA4: $11 $11 $00
    ld de, $0021                                  ; $6FA7: $11 $21 $00
    ld hl, $0041                                  ; $6FAA: $21 $41 $00
    nop                                           ; $6FAD: $00
    ccf                                           ; $6FAE: $3F
    adc b                                         ; $6FAF: $88
    inc h                                         ; $6FB0: $24
    rst RST_38                                    ; $6FB1: $FF
    add sp, $24                                   ; $6FB2: $E8 $24
    ccf                                           ; $6FB4: $3F
    adc b                                         ; $6FB5: $88
    jr nz, jr_036_6FF7                            ; $6FB6: $20 $3F

    adc b                                         ; $6FB8: $88
    jr nz, jr_036_6FFA                            ; $6FB9: $20 $3F

    adc b                                         ; $6FBB: $88

jr_036_6FBC:
    jr nz, jr_036_6FFE                            ; $6FBC: $20 $40

    ld b, b                                       ; $6FBE: $40

jr_036_6FBF:
    nop                                           ; $6FBF: $00
    rlca                                          ; $6FC0: $07
    ret z                                         ; $6FC1: $C8

    ret nz                                        ; $6FC2: $C0

    inc hl                                        ; $6FC3: $23
    ld c, $0F                                     ; $6FC4: $0E $0F
    jp hl                                         ; $6FC6: $E9


    ld l, $2F                                     ; $6FC7: $2E $2F
    add hl, hl                                    ; $6FC9: $29
    ld l, $2F                                     ; $6FCA: $2E $2F
    add hl, hl                                    ; $6FCC: $29
    jr nz, jr_036_701F                            ; $6FCD: $20 $50

    adc a                                         ; $6FCF: $8F
    ldh [rP1], a                                  ; $6FD0: $E0 $00
    xor c                                         ; $6FD2: $A9
    ld c, $21                                     ; $6FD3: $0E $21
    ld sp, hl                                     ; $6FD5: $F9
    ld b, h                                       ; $6FD6: $44
    inc hl                                        ; $6FD7: $23
    xor c                                         ; $6FD8: $A9
    ld b, h                                       ; $6FD9: $44
    ld b, c                                       ; $6FDA: $41
    db $FD                                        ; $6FDB: $FD
    ld c, b                                       ; $6FDC: $48
    ld c, b                                       ; $6FDD: $48
    ld c, b                                       ; $6FDE: $48
    add h                                         ; $6FDF: $84
    ld sp, $204A                                  ; $6FE0: $31 $4A $20
    nop                                           ; $6FE3: $00
    jr nz, jr_036_702E                            ; $6FE4: $20 $48

    ei                                            ; $6FE6: $FB
    ld d, d                                       ; $6FE7: $52
    nop                                           ; $6FE8: $00
    ld d, d                                       ; $6FE9: $52
    ei                                            ; $6FEA: $FB
    db $E4                                        ; $6FEB: $E4
    ld [hl+], a                                   ; $6FEC: $22
    ld a, [$2244]                                 ; $6FED: $FA $44 $22
    ld [hl], d                                    ; $6FF0: $72
    ld b, h                                       ; $6FF1: $44
    and d                                         ; $6FF2: $A2
    inc h                                         ; $6FF3: $24
    ld b, b                                       ; $6FF4: $40
    nop                                           ; $6FF5: $00
    adc c                                         ; $6FF6: $89

jr_036_6FF7:
    nop                                           ; $6FF7: $00
    ld e, l                                       ; $6FF8: $5D
    dec d                                         ; $6FF9: $15

jr_036_6FFA:
    db $E4                                        ; $6FFA: $E4
    sbc a                                         ; $6FFB: $9F
    ld c, c                                       ; $6FFC: $49
    ld b, h                                       ; $6FFD: $44

jr_036_6FFE:
    ccf                                           ; $6FFE: $3F
    ld de, $5C48                                  ; $6FFF: $11 $48 $5C
    ld d, h                                       ; $7002: $54
    add h                                         ; $7003: $84
    sub l                                         ; $7004: $95
    xor d                                         ; $7005: $AA
    jr nz, jr_036_7008                            ; $7006: $20 $00

jr_036_7008:
    jr nz, jr_036_7016                            ; $7008: $20 $0C

    daa                                           ; $700A: $27
    db $F4                                        ; $700B: $F4
    ld b, h                                       ; $700C: $44
    inc d                                         ; $700D: $14
    rla                                           ; $700E: $17
    call nz, Call_036_6424                        ; $700F: $C4 $24 $64
    ld c, h                                       ; $7012: $4C
    or a                                          ; $7013: $B7
    inc h                                         ; $7014: $24
    ld b, h                                       ; $7015: $44

jr_036_7016:
    inc h                                         ; $7016: $24
    cpl                                           ; $7017: $2F
    ldh [rP1], a                                  ; $7018: $E0 $00
    ld [hl+], a                                   ; $701A: $22
    adc b                                         ; $701B: $88
    ld [hl+], a                                   ; $701C: $22
    ldh a, [c]                                    ; $701D: $F2
    ld b, h                                       ; $701E: $44

jr_036_701F:
    inc h                                         ; $701F: $24
    ld [hl], h                                    ; $7020: $74
    ld [hl+], a                                   ; $7021: $22
    ld l, c                                       ; $7022: $69
    and c                                         ; $7023: $A1
    inc b                                         ; $7024: $04
    and d                                         ; $7025: $A2
    ld [hl+], a                                   ; $7026: $22
    ld c, d                                       ; $7027: $4A
    inc h                                         ; $7028: $24
    cpl                                           ; $7029: $2F
    jr nz, jr_036_702C                            ; $702A: $20 $00

jr_036_702C:
    inc b                                         ; $702C: $04
    inc c                                         ; $702D: $0C

jr_036_702E:
    ld a, a                                       ; $702E: $7F
    ld de, $FF0E                                  ; $702F: $11 $0E $FF
    jr nz, jr_036_6FBC                            ; $7032: $20 $88

    ccf                                           ; $7034: $3F
    jr nz, jr_036_6FBF                            ; $7035: $20 $88

    ccf                                           ; $7037: $3F
    inc d                                         ; $7038: $14
    ld c, d                                       ; $7039: $4A

jr_036_703A:
    ld d, d                                       ; $703A: $52
    adc a                                         ; $703B: $8F
    add b                                         ; $703C: $80
    nop                                           ; $703D: $00
    inc b                                         ; $703E: $04
    ld h, h                                       ; $703F: $64
    cp $04                                        ; $7040: $FE $04
    ld b, h                                       ; $7042: $44
    inc a                                         ; $7043: $3C
    ld b, b                                       ; $7044: $40
    ld b, h                                       ; $7045: $44
    ld a, h                                       ; $7046: $7C
    add h                                         ; $7047: $84
    ld b, h                                       ; $7048: $44
    inc b                                         ; $7049: $04
    inc b                                         ; $704A: $04
    ld b, h                                       ; $704B: $44
    jr c, jr_036_705E                             ; $704C: $38 $10

    ld b, b                                       ; $704E: $40
    nop                                           ; $704F: $00
    ld bc, $3F08                                  ; $7050: $01 $08 $3F
    ld bc, $0A00                                  ; $7053: $01 $00 $0A
    ld b, $4E                                     ; $7056: $06 $4E
    rst RST_38                                    ; $7058: $FF
    inc b                                         ; $7059: $04
    ld c, b                                       ; $705A: $48
    inc b                                         ; $705B: $04
    inc b                                         ; $705C: $04
    nop                                           ; $705D: $00

jr_036_705E:
    inc d                                         ; $705E: $14
    inc c                                         ; $705F: $0C
    nop                                           ; $7060: $00
    nop                                           ; $7061: $00
    inc b                                         ; $7062: $04
    ld c, $7F                                     ; $7063: $0E $7F
    add b                                         ; $7065: $80
    jr nz, jr_036_7069                            ; $7066: $20 $01

    ccf                                           ; $7068: $3F

jr_036_7069:
    add b                                         ; $7069: $80
    inc b                                         ; $706A: $04
    inc h                                         ; $706B: $24
    ld [$2427], sp                                ; $706C: $08 $27 $24
    nop                                           ; $706F: $00
    ld e, h                                       ; $7070: $5C
    add e                                         ; $7071: $83
    ldh [rP1], a                                  ; $7072: $E0 $00
    ld b, $00                                     ; $7074: $06 $00
    inc b                                         ; $7076: $04
    ccf                                           ; $7077: $3F
    add b                                         ; $7078: $80
    inc b                                         ; $7079: $04
    inc b                                         ; $707A: $04
    adc h                                         ; $707B: $8C
    ld a, a                                       ; $707C: $7F
    ld c, $00                                     ; $707D: $0E $00
    dec d                                         ; $707F: $15
    inc h                                         ; $7080: $24
    add [hl]                                      ; $7081: $86
    call nz, $0004                                ; $7082: $C4 $04 $00
    nop                                           ; $7085: $00
    ld [hl], c                                    ; $7086: $71
    add $DB                                       ; $7087: $C6 $DB

jr_036_7089:
    db $DB                                        ; $7089: $DB
    ld h, [hl]                                    ; $708A: $66
    db $DB                                        ; $708B: $DB
    db $DB                                        ; $708C: $DB
    ld h, [hl]                                    ; $708D: $66
    db $DB                                        ; $708E: $DB
    ld a, c                                       ; $708F: $79
    and $18                                       ; $7090: $E6 $18

jr_036_7092:
    jr jr_036_70FA                                ; $7092: $18 $66

    jr jr_036_7089                                ; $7094: $18 $F3

    ret nz                                        ; $7096: $C0

    nop                                           ; $7097: $00
    ld a, h                                       ; $7098: $7C
    ld [hl+], a                                   ; $7099: $22
    ld hl, $2279                                  ; $709A: $21 $79 $22
    ret                                           ; $709D: $C9


    add hl, hl                                    ; $709E: $29
    ld [hl+], a                                   ; $709F: $22
    db $10                                        ; $70A0: $10
    jr nz, jr_036_70C9                            ; $70A1: $20 $26

    ret nz                                        ; $70A3: $C0

    nop                                           ; $70A4: $00
    inc b                                         ; $70A5: $04

jr_036_70A6:
    ld d, d                                       ; $70A6: $52
    adc c                                         ; $70A7: $89
    jr nz, jr_036_70AA                            ; $70A8: $20 $00

jr_036_70AA:
    jr nz, jr_036_703A                            ; $70AA: $20 $8E

    dec a                                         ; $70AC: $3D
    ld b, h                                       ; $70AD: $44
    xor [hl]                                      ; $70AE: $AE
    ld c, e                                       ; $70AF: $4B
    ret z                                         ; $70B0: $C8

    xor [hl]                                      ; $70B1: $AE
    ld e, l                                       ; $70B2: $5D
    ld b, h                                       ; $70B3: $44
    adc h                                         ; $70B4: $8C
    ld d, l                                       ; $70B5: $55
    ld c, b                                       ; $70B6: $48
    add b                                         ; $70B7: $80
    ld c, h                                       ; $70B8: $4C
    ld d, e                                       ; $70B9: $53
    ldh [rP1], a                                  ; $70BA: $E0 $00
    ld b, $00                                     ; $70BC: $06 $00
    inc b                                         ; $70BE: $04
    inc b                                         ; $70BF: $04
    ld c, [hl]                                    ; $70C0: $4E
    rst RST_38                                    ; $70C1: $FF
    inc b                                         ; $70C2: $04
    nop                                           ; $70C3: $00
    ld b, $0A                                     ; $70C4: $06 $0A
    nop                                           ; $70C6: $00
    add hl, bc                                    ; $70C7: $09
    db $10                                        ; $70C8: $10

jr_036_70C9:
    add h                                         ; $70C9: $84
    inc h                                         ; $70CA: $24
    jp nz, RST_20                                 ; $70CB: $C2 $20 $00

    inc hl                                        ; $70CE: $23
    add b                                         ; $70CF: $80
    jr nz, jr_036_7101                            ; $70D0: $20 $2F

    ldh [rLCDC], a                                ; $70D2: $E0 $40
    rst RST_00                                    ; $70D4: $C7
    ret nz                                        ; $70D5: $C0

    ld b, b                                       ; $70D6: $40
    ld b, a                                       ; $70D7: $47
    ret nz                                        ; $70D8: $C0

    ld b, b                                       ; $70D9: $40
    ld b, a                                       ; $70DA: $47
    call nz, Call_036_4744                        ; $70DB: $C4 $44 $47
    ret nz                                        ; $70DE: $C0

    nop                                           ; $70DF: $00
    sbc a                                         ; $70E0: $9F
    call nz, $1F50                                ; $70E1: $C4 $50 $1F
    call nz, Call_036_5F90                        ; $70E4: $C4 $90 $5F
    ret nz                                        ; $70E7: $C0

    nop                                           ; $70E8: $00
    ld d, c                                       ; $70E9: $51
    inc l                                         ; $70EA: $2C
    ld e, l                                       ; $70EB: $5D
    ld d, c                                       ; $70EC: $51
    ld [bc], a                                    ; $70ED: $02
    sbc l                                         ; $70EE: $9D
    or b                                          ; $70EF: $B0
    ldh [rP1], a                                  ; $70F0: $E0 $00
    nop                                           ; $70F2: $00
    ld c, [hl]                                    ; $70F3: $4E
    rst RST_38                                    ; $70F4: $FF
    inc b                                         ; $70F5: $04
    ld c, $FF                                     ; $70F6: $0E $FF
    add h                                         ; $70F8: $84
    ld [hl+], a                                   ; $70F9: $22

jr_036_70FA:
    and l                                         ; $70FA: $A5
    sub h                                         ; $70FB: $94
    and d                                         ; $70FC: $A2
    and l                                         ; $70FD: $A5
    sub h                                         ; $70FE: $94
    and d                                         ; $70FF: $A2
    add h                                         ; $7100: $84

jr_036_7101:
    add h                                         ; $7101: $84
    ld h, b                                       ; $7102: $60
    nop                                           ; $7103: $00
    jr nz, jr_036_7154                            ; $7104: $20 $4E

    ei                                            ; $7106: $FB
    ld c, b                                       ; $7107: $48
    ld b, h                                       ; $7108: $44
    pop de                                        ; $7109: $D1
    jr nc, jr_036_7092                            ; $710A: $30 $86

    rlc b                                         ; $710C: $CB $00
    inc b                                         ; $710E: $04
    inc d                                         ; $710F: $14
    ld d, d                                       ; $7110: $52
    jr z, jr_036_7163                             ; $7111: $28 $50

    adc a                                         ; $7113: $8F
    add b                                         ; $7114: $80
    nop                                           ; $7115: $00
    jr nz, jr_036_70A6                            ; $7116: $20 $8E

    ei                                            ; $7118: $FB
    jr nz, @-$70                                  ; $7119: $20 $8E

    ei                                            ; $711B: $FB
    ld d, c                                       ; $711C: $51
    ld b, d                                       ; $711D: $42
    adc d                                         ; $711E: $8A
    ccf                                           ; $711F: $3F
    adc b                                         ; $7120: $88
    jr nz, jr_036_7162                            ; $7121: $20 $3F

    adc b                                         ; $7123: $88
    jr nz, jr_036_7165                            ; $7124: $20 $3F

    add b                                         ; $7126: $80
    nop                                           ; $7127: $00
    inc sp                                        ; $7128: $33
    nop                                           ; $7129: $00
    ld [hl+], a                                   ; $712A: $22
    ld a, [$2200]                                 ; $712B: $FA $00 $22
    ld [hl+], a                                   ; $712E: $22
    nop                                           ; $712F: $00
    ld [hl], d                                    ; $7130: $72
    ld [hl], d                                    ; $7131: $72
    inc b                                         ; $7132: $04
    xor d                                         ; $7133: $AA
    and d                                         ; $7134: $A2
    ld h, h                                       ; $7135: $64
    ld [hl+], a                                   ; $7136: $22
    ld hl, $00C0                                  ; $7137: $21 $C0 $00
    nop                                           ; $713A: $00
    nop                                           ; $713B: $00
    nop                                           ; $713C: $00
    nop                                           ; $713D: $00
    nop                                           ; $713E: $00
    nop                                           ; $713F: $00
    nop                                           ; $7140: $00
    nop                                           ; $7141: $00
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
    nop                                           ; $7152: $00
    nop                                           ; $7153: $00

jr_036_7154:
    nop                                           ; $7154: $00
    nop                                           ; $7155: $00
    nop                                           ; $7156: $00
    nop                                           ; $7157: $00
    nop                                           ; $7158: $00
    nop                                           ; $7159: $00
    nop                                           ; $715A: $00
    nop                                           ; $715B: $00
    nop                                           ; $715C: $00
    nop                                           ; $715D: $00
    nop                                           ; $715E: $00
    nop                                           ; $715F: $00
    nop                                           ; $7160: $00
    nop                                           ; $7161: $00

jr_036_7162:
    nop                                           ; $7162: $00

jr_036_7163:
    nop                                           ; $7163: $00
    nop                                           ; $7164: $00

jr_036_7165:
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
    nop                                           ; $7172: $00
    nop                                           ; $7173: $00
    nop                                           ; $7174: $00
    nop                                           ; $7175: $00
    nop                                           ; $7176: $00
    nop                                           ; $7177: $00
    nop                                           ; $7178: $00
    nop                                           ; $7179: $00
    nop                                           ; $717A: $00
    nop                                           ; $717B: $00
    nop                                           ; $717C: $00
    nop                                           ; $717D: $00
    nop                                           ; $717E: $00
    nop                                           ; $717F: $00
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
    nop                                           ; $71B8: $00
    nop                                           ; $71B9: $00
    nop                                           ; $71BA: $00
    nop                                           ; $71BB: $00
    nop                                           ; $71BC: $00
    nop                                           ; $71BD: $00
    nop                                           ; $71BE: $00
    nop                                           ; $71BF: $00
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
    nop                                           ; $71D2: $00
    nop                                           ; $71D3: $00
    nop                                           ; $71D4: $00
    nop                                           ; $71D5: $00
    nop                                           ; $71D6: $00
    nop                                           ; $71D7: $00
    nop                                           ; $71D8: $00
    nop                                           ; $71D9: $00
    nop                                           ; $71DA: $00
    nop                                           ; $71DB: $00
    nop                                           ; $71DC: $00
    nop                                           ; $71DD: $00
    nop                                           ; $71DE: $00
    nop                                           ; $71DF: $00
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
    nop                                           ; $71F6: $00
    nop                                           ; $71F7: $00
    nop                                           ; $71F8: $00
    nop                                           ; $71F9: $00
    nop                                           ; $71FA: $00
    nop                                           ; $71FB: $00
    nop                                           ; $71FC: $00
    nop                                           ; $71FD: $00
    nop                                           ; $71FE: $00
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
    nop                                           ; $721A: $00
    nop                                           ; $721B: $00
    nop                                           ; $721C: $00
    nop                                           ; $721D: $00
    nop                                           ; $721E: $00
    nop                                           ; $721F: $00
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
    nop                                           ; $723A: $00
    nop                                           ; $723B: $00
    nop                                           ; $723C: $00
    nop                                           ; $723D: $00
    nop                                           ; $723E: $00
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
    nop                                           ; $724C: $00
    nop                                           ; $724D: $00
    nop                                           ; $724E: $00
    nop                                           ; $724F: $00
    nop                                           ; $7250: $00
    nop                                           ; $7251: $00
    nop                                           ; $7252: $00
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
    nop                                           ; $7260: $00
    nop                                           ; $7261: $00
    nop                                           ; $7262: $00
    nop                                           ; $7263: $00
    nop                                           ; $7264: $00
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
    nop                                           ; $7270: $00
    nop                                           ; $7271: $00
    nop                                           ; $7272: $00
    nop                                           ; $7273: $00
    nop                                           ; $7274: $00
    nop                                           ; $7275: $00
    nop                                           ; $7276: $00
    nop                                           ; $7277: $00
    nop                                           ; $7278: $00
    nop                                           ; $7279: $00
    nop                                           ; $727A: $00
    nop                                           ; $727B: $00
    nop                                           ; $727C: $00
    nop                                           ; $727D: $00
    nop                                           ; $727E: $00
    nop                                           ; $727F: $00
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
    nop                                           ; $728E: $00
    nop                                           ; $728F: $00
    nop                                           ; $7290: $00
    nop                                           ; $7291: $00
    nop                                           ; $7292: $00
    nop                                           ; $7293: $00
    nop                                           ; $7294: $00
    nop                                           ; $7295: $00
    nop                                           ; $7296: $00
    nop                                           ; $7297: $00
    nop                                           ; $7298: $00
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
    nop                                           ; $72D8: $00
    nop                                           ; $72D9: $00
    nop                                           ; $72DA: $00
    nop                                           ; $72DB: $00
    nop                                           ; $72DC: $00
    nop                                           ; $72DD: $00
    nop                                           ; $72DE: $00
    nop                                           ; $72DF: $00
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
    nop                                           ; $72FA: $00
    nop                                           ; $72FB: $00
    nop                                           ; $72FC: $00
    nop                                           ; $72FD: $00
    nop                                           ; $72FE: $00
    nop                                           ; $72FF: $00
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
    nop                                           ; $730C: $00
    nop                                           ; $730D: $00
    nop                                           ; $730E: $00
    nop                                           ; $730F: $00
    nop                                           ; $7310: $00
    nop                                           ; $7311: $00
    nop                                           ; $7312: $00
    nop                                           ; $7313: $00
    nop                                           ; $7314: $00
    nop                                           ; $7315: $00
    nop                                           ; $7316: $00
    nop                                           ; $7317: $00
    nop                                           ; $7318: $00
    nop                                           ; $7319: $00
    nop                                           ; $731A: $00
    nop                                           ; $731B: $00
    nop                                           ; $731C: $00
    nop                                           ; $731D: $00
    nop                                           ; $731E: $00
    nop                                           ; $731F: $00
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
    nop                                           ; $734E: $00
    nop                                           ; $734F: $00
    nop                                           ; $7350: $00
    nop                                           ; $7351: $00
    nop                                           ; $7352: $00
    nop                                           ; $7353: $00
    nop                                           ; $7354: $00
    nop                                           ; $7355: $00
    nop                                           ; $7356: $00
    nop                                           ; $7357: $00
    nop                                           ; $7358: $00
    nop                                           ; $7359: $00
    nop                                           ; $735A: $00
    nop                                           ; $735B: $00
    nop                                           ; $735C: $00
    nop                                           ; $735D: $00
    nop                                           ; $735E: $00
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
    nop                                           ; $7378: $00
    nop                                           ; $7379: $00
    nop                                           ; $737A: $00
    nop                                           ; $737B: $00
    nop                                           ; $737C: $00
    nop                                           ; $737D: $00
    nop                                           ; $737E: $00
    nop                                           ; $737F: $00
    nop                                           ; $7380: $00
    nop                                           ; $7381: $00
    nop                                           ; $7382: $00
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
    nop                                           ; $73B4: $00
    nop                                           ; $73B5: $00
    nop                                           ; $73B6: $00
    nop                                           ; $73B7: $00
    nop                                           ; $73B8: $00
    nop                                           ; $73B9: $00
    nop                                           ; $73BA: $00
    nop                                           ; $73BB: $00
    nop                                           ; $73BC: $00
    nop                                           ; $73BD: $00
    nop                                           ; $73BE: $00
    nop                                           ; $73BF: $00
    nop                                           ; $73C0: $00
    nop                                           ; $73C1: $00
    nop                                           ; $73C2: $00
    nop                                           ; $73C3: $00
    nop                                           ; $73C4: $00
    nop                                           ; $73C5: $00
    nop                                           ; $73C6: $00
    nop                                           ; $73C7: $00
    nop                                           ; $73C8: $00
    nop                                           ; $73C9: $00
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
    nop                                           ; $73FE: $00
    nop                                           ; $73FF: $00
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
    nop                                           ; $7418: $00
    nop                                           ; $7419: $00
    nop                                           ; $741A: $00
    nop                                           ; $741B: $00
    nop                                           ; $741C: $00
    nop                                           ; $741D: $00
    nop                                           ; $741E: $00
    nop                                           ; $741F: $00
    nop                                           ; $7420: $00
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
    nop                                           ; $742C: $00
    nop                                           ; $742D: $00
    nop                                           ; $742E: $00
    nop                                           ; $742F: $00
    nop                                           ; $7430: $00
    nop                                           ; $7431: $00
    nop                                           ; $7432: $00
    nop                                           ; $7433: $00
    nop                                           ; $7434: $00
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
    nop                                           ; $7450: $00
    nop                                           ; $7451: $00
    nop                                           ; $7452: $00
    nop                                           ; $7453: $00
    nop                                           ; $7454: $00
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
    nop                                           ; $7476: $00
    nop                                           ; $7477: $00
    nop                                           ; $7478: $00
    nop                                           ; $7479: $00
    nop                                           ; $747A: $00
    nop                                           ; $747B: $00
    nop                                           ; $747C: $00
    nop                                           ; $747D: $00
    nop                                           ; $747E: $00
    nop                                           ; $747F: $00
    nop                                           ; $7480: $00
    nop                                           ; $7481: $00
    nop                                           ; $7482: $00
    nop                                           ; $7483: $00
    nop                                           ; $7484: $00
    nop                                           ; $7485: $00
    nop                                           ; $7486: $00
    nop                                           ; $7487: $00
    nop                                           ; $7488: $00
    nop                                           ; $7489: $00
    nop                                           ; $748A: $00
    nop                                           ; $748B: $00
    nop                                           ; $748C: $00
    nop                                           ; $748D: $00
    nop                                           ; $748E: $00
    nop                                           ; $748F: $00
    nop                                           ; $7490: $00
    nop                                           ; $7491: $00
    nop                                           ; $7492: $00
    nop                                           ; $7493: $00
    nop                                           ; $7494: $00
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
    nop                                           ; $74A0: $00
    nop                                           ; $74A1: $00
    nop                                           ; $74A2: $00
    nop                                           ; $74A3: $00
    nop                                           ; $74A4: $00
    nop                                           ; $74A5: $00
    nop                                           ; $74A6: $00
    nop                                           ; $74A7: $00
    nop                                           ; $74A8: $00
    nop                                           ; $74A9: $00
    nop                                           ; $74AA: $00
    nop                                           ; $74AB: $00
    nop                                           ; $74AC: $00
    nop                                           ; $74AD: $00
    nop                                           ; $74AE: $00
    nop                                           ; $74AF: $00
    nop                                           ; $74B0: $00
    nop                                           ; $74B1: $00
    nop                                           ; $74B2: $00
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
    nop                                           ; $74F4: $00
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
    nop                                           ; $751A: $00
    nop                                           ; $751B: $00
    nop                                           ; $751C: $00
    nop                                           ; $751D: $00
    nop                                           ; $751E: $00
    nop                                           ; $751F: $00
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
    nop                                           ; $7536: $00
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
    nop                                           ; $75B6: $00
    nop                                           ; $75B7: $00
    nop                                           ; $75B8: $00
    nop                                           ; $75B9: $00
    nop                                           ; $75BA: $00
    nop                                           ; $75BB: $00
    nop                                           ; $75BC: $00
    nop                                           ; $75BD: $00
    nop                                           ; $75BE: $00
    nop                                           ; $75BF: $00
    nop                                           ; $75C0: $00
    nop                                           ; $75C1: $00
    nop                                           ; $75C2: $00
    nop                                           ; $75C3: $00
    nop                                           ; $75C4: $00
    nop                                           ; $75C5: $00
    nop                                           ; $75C6: $00
    nop                                           ; $75C7: $00
    nop                                           ; $75C8: $00
    nop                                           ; $75C9: $00
    nop                                           ; $75CA: $00
    nop                                           ; $75CB: $00
    nop                                           ; $75CC: $00
    nop                                           ; $75CD: $00
    nop                                           ; $75CE: $00
    nop                                           ; $75CF: $00
    nop                                           ; $75D0: $00
    nop                                           ; $75D1: $00
    nop                                           ; $75D2: $00
    nop                                           ; $75D3: $00
    nop                                           ; $75D4: $00
    nop                                           ; $75D5: $00
    nop                                           ; $75D6: $00
    nop                                           ; $75D7: $00
    nop                                           ; $75D8: $00
    nop                                           ; $75D9: $00
    nop                                           ; $75DA: $00
    nop                                           ; $75DB: $00
    nop                                           ; $75DC: $00
    nop                                           ; $75DD: $00
    nop                                           ; $75DE: $00
    nop                                           ; $75DF: $00
    nop                                           ; $75E0: $00
    nop                                           ; $75E1: $00
    nop                                           ; $75E2: $00
    nop                                           ; $75E3: $00
    nop                                           ; $75E4: $00
    nop                                           ; $75E5: $00
    nop                                           ; $75E6: $00
    nop                                           ; $75E7: $00
    nop                                           ; $75E8: $00
    nop                                           ; $75E9: $00
    nop                                           ; $75EA: $00
    nop                                           ; $75EB: $00
    nop                                           ; $75EC: $00
    nop                                           ; $75ED: $00
    nop                                           ; $75EE: $00
    nop                                           ; $75EF: $00
    nop                                           ; $75F0: $00
    nop                                           ; $75F1: $00
    nop                                           ; $75F2: $00
    nop                                           ; $75F3: $00
    nop                                           ; $75F4: $00
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
    nop                                           ; $7600: $00
    nop                                           ; $7601: $00
    nop                                           ; $7602: $00
    nop                                           ; $7603: $00
    nop                                           ; $7604: $00
    nop                                           ; $7605: $00
    nop                                           ; $7606: $00
    nop                                           ; $7607: $00
    nop                                           ; $7608: $00
    nop                                           ; $7609: $00
    nop                                           ; $760A: $00
    nop                                           ; $760B: $00
    nop                                           ; $760C: $00
    nop                                           ; $760D: $00
    nop                                           ; $760E: $00
    nop                                           ; $760F: $00
    nop                                           ; $7610: $00
    nop                                           ; $7611: $00
    nop                                           ; $7612: $00
    nop                                           ; $7613: $00
    nop                                           ; $7614: $00
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
    nop                                           ; $7620: $00
    nop                                           ; $7621: $00
    nop                                           ; $7622: $00
    nop                                           ; $7623: $00
    nop                                           ; $7624: $00
    nop                                           ; $7625: $00
    nop                                           ; $7626: $00
    nop                                           ; $7627: $00
    nop                                           ; $7628: $00
    nop                                           ; $7629: $00
    nop                                           ; $762A: $00
    nop                                           ; $762B: $00
    nop                                           ; $762C: $00
    nop                                           ; $762D: $00
    nop                                           ; $762E: $00
    nop                                           ; $762F: $00
    nop                                           ; $7630: $00
    nop                                           ; $7631: $00
    nop                                           ; $7632: $00
    nop                                           ; $7633: $00
    nop                                           ; $7634: $00
    nop                                           ; $7635: $00
    nop                                           ; $7636: $00
    nop                                           ; $7637: $00
    nop                                           ; $7638: $00
    nop                                           ; $7639: $00
    nop                                           ; $763A: $00
    nop                                           ; $763B: $00
    nop                                           ; $763C: $00
    nop                                           ; $763D: $00
    nop                                           ; $763E: $00
    nop                                           ; $763F: $00
    nop                                           ; $7640: $00
    nop                                           ; $7641: $00
    nop                                           ; $7642: $00
    nop                                           ; $7643: $00
    nop                                           ; $7644: $00
    nop                                           ; $7645: $00
    nop                                           ; $7646: $00
    nop                                           ; $7647: $00
    nop                                           ; $7648: $00
    nop                                           ; $7649: $00
    nop                                           ; $764A: $00
    nop                                           ; $764B: $00
    nop                                           ; $764C: $00
    nop                                           ; $764D: $00
    nop                                           ; $764E: $00
    nop                                           ; $764F: $00
    nop                                           ; $7650: $00
    nop                                           ; $7651: $00
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
    nop                                           ; $7660: $00
    nop                                           ; $7661: $00
    nop                                           ; $7662: $00
    nop                                           ; $7663: $00
    nop                                           ; $7664: $00
    nop                                           ; $7665: $00
    nop                                           ; $7666: $00
    nop                                           ; $7667: $00
    nop                                           ; $7668: $00
    nop                                           ; $7669: $00
    nop                                           ; $766A: $00
    nop                                           ; $766B: $00
    nop                                           ; $766C: $00
    nop                                           ; $766D: $00
    nop                                           ; $766E: $00
    nop                                           ; $766F: $00
    nop                                           ; $7670: $00
    nop                                           ; $7671: $00
    nop                                           ; $7672: $00
    nop                                           ; $7673: $00
    nop                                           ; $7674: $00
    nop                                           ; $7675: $00
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
    nop                                           ; $7680: $00
    nop                                           ; $7681: $00
    nop                                           ; $7682: $00
    nop                                           ; $7683: $00
    nop                                           ; $7684: $00
    nop                                           ; $7685: $00
    nop                                           ; $7686: $00
    nop                                           ; $7687: $00
    nop                                           ; $7688: $00
    nop                                           ; $7689: $00
    nop                                           ; $768A: $00
    nop                                           ; $768B: $00
    nop                                           ; $768C: $00
    nop                                           ; $768D: $00
    nop                                           ; $768E: $00
    nop                                           ; $768F: $00
    nop                                           ; $7690: $00
    nop                                           ; $7691: $00
    nop                                           ; $7692: $00
    nop                                           ; $7693: $00
    nop                                           ; $7694: $00
    nop                                           ; $7695: $00
    nop                                           ; $7696: $00
    nop                                           ; $7697: $00
    nop                                           ; $7698: $00
    nop                                           ; $7699: $00
    nop                                           ; $769A: $00
    nop                                           ; $769B: $00
    nop                                           ; $769C: $00
    nop                                           ; $769D: $00
    nop                                           ; $769E: $00
    nop                                           ; $769F: $00
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

Call_036_7794:
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
    nop                                           ; $77BE: $00
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
    nop                                           ; $77FA: $00
    nop                                           ; $77FB: $00
    nop                                           ; $77FC: $00
    nop                                           ; $77FD: $00
    nop                                           ; $77FE: $00
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
    nop                                           ; $7822: $00
    nop                                           ; $7823: $00
    nop                                           ; $7824: $00
    nop                                           ; $7825: $00
    nop                                           ; $7826: $00
    nop                                           ; $7827: $00
    nop                                           ; $7828: $00
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
    nop                                           ; $7860: $00
    nop                                           ; $7861: $00
    nop                                           ; $7862: $00
    nop                                           ; $7863: $00
    nop                                           ; $7864: $00
    nop                                           ; $7865: $00
    nop                                           ; $7866: $00
    nop                                           ; $7867: $00
    nop                                           ; $7868: $00
    nop                                           ; $7869: $00
    nop                                           ; $786A: $00
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
    nop                                           ; $788A: $00
    nop                                           ; $788B: $00
    nop                                           ; $788C: $00
    nop                                           ; $788D: $00
    nop                                           ; $788E: $00
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
    nop                                           ; $78A0: $00
    nop                                           ; $78A1: $00
    nop                                           ; $78A2: $00
    nop                                           ; $78A3: $00
    nop                                           ; $78A4: $00
    nop                                           ; $78A5: $00
    nop                                           ; $78A6: $00
    nop                                           ; $78A7: $00
    nop                                           ; $78A8: $00
    nop                                           ; $78A9: $00
    nop                                           ; $78AA: $00
    nop                                           ; $78AB: $00
    nop                                           ; $78AC: $00
    nop                                           ; $78AD: $00
    nop                                           ; $78AE: $00
    nop                                           ; $78AF: $00
    nop                                           ; $78B0: $00
    nop                                           ; $78B1: $00
    nop                                           ; $78B2: $00
    nop                                           ; $78B3: $00
    nop                                           ; $78B4: $00
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
    nop                                           ; $78C0: $00
    nop                                           ; $78C1: $00
    nop                                           ; $78C2: $00
    nop                                           ; $78C3: $00
    nop                                           ; $78C4: $00
    nop                                           ; $78C5: $00
    nop                                           ; $78C6: $00
    nop                                           ; $78C7: $00
    nop                                           ; $78C8: $00
    nop                                           ; $78C9: $00
    nop                                           ; $78CA: $00
    nop                                           ; $78CB: $00
    nop                                           ; $78CC: $00
    nop                                           ; $78CD: $00
    nop                                           ; $78CE: $00
    nop                                           ; $78CF: $00
    nop                                           ; $78D0: $00
    nop                                           ; $78D1: $00
    nop                                           ; $78D2: $00
    nop                                           ; $78D3: $00
    nop                                           ; $78D4: $00
    nop                                           ; $78D5: $00
    nop                                           ; $78D6: $00
    nop                                           ; $78D7: $00
    nop                                           ; $78D8: $00
    nop                                           ; $78D9: $00
    nop                                           ; $78DA: $00
    nop                                           ; $78DB: $00
    nop                                           ; $78DC: $00
    nop                                           ; $78DD: $00
    nop                                           ; $78DE: $00
    nop                                           ; $78DF: $00
    nop                                           ; $78E0: $00
    nop                                           ; $78E1: $00
    nop                                           ; $78E2: $00
    nop                                           ; $78E3: $00
    nop                                           ; $78E4: $00
    nop                                           ; $78E5: $00
    nop                                           ; $78E6: $00
    nop                                           ; $78E7: $00
    nop                                           ; $78E8: $00
    nop                                           ; $78E9: $00
    nop                                           ; $78EA: $00
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
    nop                                           ; $7920: $00
    nop                                           ; $7921: $00
    nop                                           ; $7922: $00
    nop                                           ; $7923: $00
    nop                                           ; $7924: $00
    nop                                           ; $7925: $00
    nop                                           ; $7926: $00
    nop                                           ; $7927: $00
    nop                                           ; $7928: $00
    nop                                           ; $7929: $00
    nop                                           ; $792A: $00
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
    nop                                           ; $7940: $00
    nop                                           ; $7941: $00
    nop                                           ; $7942: $00
    nop                                           ; $7943: $00
    nop                                           ; $7944: $00
    nop                                           ; $7945: $00
    nop                                           ; $7946: $00
    nop                                           ; $7947: $00
    nop                                           ; $7948: $00
    nop                                           ; $7949: $00
    nop                                           ; $794A: $00
    nop                                           ; $794B: $00
    nop                                           ; $794C: $00
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
    nop                                           ; $7980: $00
    nop                                           ; $7981: $00
    nop                                           ; $7982: $00
    nop                                           ; $7983: $00
    nop                                           ; $7984: $00
    nop                                           ; $7985: $00
    nop                                           ; $7986: $00
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
    nop                                           ; $799D: $00
    nop                                           ; $799E: $00
    nop                                           ; $799F: $00
    nop                                           ; $79A0: $00
    nop                                           ; $79A1: $00
    nop                                           ; $79A2: $00
    nop                                           ; $79A3: $00
    nop                                           ; $79A4: $00
    nop                                           ; $79A5: $00
    nop                                           ; $79A6: $00
    nop                                           ; $79A7: $00
    nop                                           ; $79A8: $00
    nop                                           ; $79A9: $00
    nop                                           ; $79AA: $00
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
    nop                                           ; $79C0: $00
    nop                                           ; $79C1: $00
    nop                                           ; $79C2: $00
    nop                                           ; $79C3: $00
    nop                                           ; $79C4: $00
    nop                                           ; $79C5: $00
    nop                                           ; $79C6: $00
    nop                                           ; $79C7: $00
    nop                                           ; $79C8: $00
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
    nop                                           ; $79E0: $00
    nop                                           ; $79E1: $00
    nop                                           ; $79E2: $00
    nop                                           ; $79E3: $00
    nop                                           ; $79E4: $00
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
    nop                                           ; $7A0E: $00
    nop                                           ; $7A0F: $00
    nop                                           ; $7A10: $00
    nop                                           ; $7A11: $00
    nop                                           ; $7A12: $00
    nop                                           ; $7A13: $00
    nop                                           ; $7A14: $00
    nop                                           ; $7A15: $00
    nop                                           ; $7A16: $00
    nop                                           ; $7A17: $00
    nop                                           ; $7A18: $00
    nop                                           ; $7A19: $00
    nop                                           ; $7A1A: $00
    nop                                           ; $7A1B: $00
    nop                                           ; $7A1C: $00
    nop                                           ; $7A1D: $00
    nop                                           ; $7A1E: $00
    nop                                           ; $7A1F: $00
    nop                                           ; $7A20: $00
    nop                                           ; $7A21: $00
    nop                                           ; $7A22: $00
    nop                                           ; $7A23: $00
    nop                                           ; $7A24: $00
    nop                                           ; $7A25: $00
    nop                                           ; $7A26: $00
    nop                                           ; $7A27: $00
    nop                                           ; $7A28: $00
    nop                                           ; $7A29: $00
    nop                                           ; $7A2A: $00
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
    nop                                           ; $7A58: $00
    nop                                           ; $7A59: $00
    nop                                           ; $7A5A: $00
    nop                                           ; $7A5B: $00
    nop                                           ; $7A5C: $00
    nop                                           ; $7A5D: $00
    nop                                           ; $7A5E: $00
    nop                                           ; $7A5F: $00
    nop                                           ; $7A60: $00
    nop                                           ; $7A61: $00
    nop                                           ; $7A62: $00
    nop                                           ; $7A63: $00
    nop                                           ; $7A64: $00
    nop                                           ; $7A65: $00
    nop                                           ; $7A66: $00
    nop                                           ; $7A67: $00
    nop                                           ; $7A68: $00
    nop                                           ; $7A69: $00
    nop                                           ; $7A6A: $00
    nop                                           ; $7A6B: $00
    nop                                           ; $7A6C: $00
    nop                                           ; $7A6D: $00
    nop                                           ; $7A6E: $00
    nop                                           ; $7A6F: $00
    nop                                           ; $7A70: $00
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
    nop                                           ; $7A7C: $00
    nop                                           ; $7A7D: $00
    nop                                           ; $7A7E: $00
    nop                                           ; $7A7F: $00
    nop                                           ; $7A80: $00
    nop                                           ; $7A81: $00
    nop                                           ; $7A82: $00
    nop                                           ; $7A83: $00
    nop                                           ; $7A84: $00
    nop                                           ; $7A85: $00
    nop                                           ; $7A86: $00
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
    nop                                           ; $7AA0: $00
    nop                                           ; $7AA1: $00
    nop                                           ; $7AA2: $00
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
    nop                                           ; $7AC0: $00
    nop                                           ; $7AC1: $00
    nop                                           ; $7AC2: $00
    nop                                           ; $7AC3: $00
    nop                                           ; $7AC4: $00
    nop                                           ; $7AC5: $00
    nop                                           ; $7AC6: $00
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
    nop                                           ; $7AE0: $00
    nop                                           ; $7AE1: $00
    nop                                           ; $7AE2: $00
    nop                                           ; $7AE3: $00
    nop                                           ; $7AE4: $00
    nop                                           ; $7AE5: $00
    nop                                           ; $7AE6: $00
    nop                                           ; $7AE7: $00
    nop                                           ; $7AE8: $00
    nop                                           ; $7AE9: $00
    nop                                           ; $7AEA: $00
    nop                                           ; $7AEB: $00
    nop                                           ; $7AEC: $00
    nop                                           ; $7AED: $00
    nop                                           ; $7AEE: $00
    nop                                           ; $7AEF: $00
    nop                                           ; $7AF0: $00
    nop                                           ; $7AF1: $00
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
    nop                                           ; $7B22: $00
    nop                                           ; $7B23: $00
    nop                                           ; $7B24: $00
    nop                                           ; $7B25: $00
    nop                                           ; $7B26: $00
    nop                                           ; $7B27: $00
    nop                                           ; $7B28: $00
    nop                                           ; $7B29: $00
    nop                                           ; $7B2A: $00
    nop                                           ; $7B2B: $00
    nop                                           ; $7B2C: $00
    nop                                           ; $7B2D: $00
    nop                                           ; $7B2E: $00
    nop                                           ; $7B2F: $00
    nop                                           ; $7B30: $00
    nop                                           ; $7B31: $00
    nop                                           ; $7B32: $00
    nop                                           ; $7B33: $00
    nop                                           ; $7B34: $00
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
    nop                                           ; $7B40: $00
    nop                                           ; $7B41: $00
    nop                                           ; $7B42: $00
    nop                                           ; $7B43: $00
    nop                                           ; $7B44: $00
    nop                                           ; $7B45: $00
    nop                                           ; $7B46: $00
    nop                                           ; $7B47: $00
    rst RST_38                                    ; $7B48: $FF
    rst RST_38                                    ; $7B49: $FF

Call_036_7B4A:
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

Call_036_7E7C:
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

Call_036_7F40:
    rst RST_38                                    ; $7F40: $FF
    rst RST_38                                    ; $7F41: $FF
    rst RST_38                                    ; $7F42: $FF
    rst RST_38                                    ; $7F43: $FF

Call_036_7F44:
    rst RST_38                                    ; $7F44: $FF
    rst RST_38                                    ; $7F45: $FF
    rst RST_38                                    ; $7F46: $FF
    rst RST_38                                    ; $7F47: $FF
    rst RST_38                                    ; $7F48: $FF
    rst RST_38                                    ; $7F49: $FF

Call_036_7F4A:
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
