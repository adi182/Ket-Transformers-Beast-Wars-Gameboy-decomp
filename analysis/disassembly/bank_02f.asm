; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02f", ROMX[$4000], BANK[$2f]

    ldh a, [$FFF3]                                ; $4000: $F0 $F3
    inc a                                         ; $4002: $3C
    and $07                                       ; $4003: $E6 $07
    ldh [$FFF3], a                                ; $4005: $E0 $F3
    add $F8                                       ; $4007: $C6 $F8
    ld l, a                                       ; $4009: $6F
    ld h, $D5                                     ; $400A: $26 $D5
    ld [hl], d                                    ; $400C: $72
    ret                                           ; $400D: $C9


    call Call_02F_4070                            ; $400E: $CD $70 $40
    ld de, $D526                                  ; $4011: $11 $26 $D5
    ld hl, $D4A6                                  ; $4014: $21 $A6 $D4
    call Call_02F_46A5                            ; $4017: $CD $A5 $46
    ld de, $D546                                  ; $401A: $11 $46 $D5
    ld hl, $D4C6                                  ; $401D: $21 $C6 $D4
    call Call_02F_46A5                            ; $4020: $CD $A5 $46
    ld de, $D566                                  ; $4023: $11 $66 $D5
    ld hl, $D4E6                                  ; $4026: $21 $E6 $D4
    call Call_02F_46A5                            ; $4029: $CD $A5 $46
    ld de, $D586                                  ; $402C: $11 $86 $D5
    ld hl, $D506                                  ; $402F: $21 $06 $D5
    call Call_02F_46A5                            ; $4032: $CD $A5 $46
    ld hl, $D4A6                                  ; $4035: $21 $A6 $D4
    ld a, $08                                     ; $4038: $3E $08
    ld [$D485], a                                 ; $403A: $EA $85 $D4

jr_02F_403D:
    ld a, l                                       ; $403D: $7D
    ldh [$FFF0], a                                ; $403E: $E0 $F0
    ld a, h                                       ; $4040: $7C
    ldh [$FFF1], a                                ; $4041: $E0 $F1
    push hl                                       ; $4043: $E5
    ld a, [hl]                                    ; $4044: $7E
    bit 7, a                                      ; $4045: $CB $7F
    call nz, Call_02F_4257                        ; $4047: $C4 $57 $42
    ld hl, $D485                                  ; $404A: $21 $85 $D4
    dec [hl]                                      ; $404D: $35
    pop hl                                        ; $404E: $E1
    ld de, $0020                                  ; $404F: $11 $20 $00
    add hl, de                                    ; $4052: $19
    jr nz, jr_02F_403D                            ; $4053: $20 $E8

    ld hl, $D4B2                                  ; $4055: $21 $B2 $D4
    ld de, $D4B3                                  ; $4058: $11 $B3 $D4
    call Call_02F_466D                            ; $405B: $CD $6D $46
    ld hl, $D4D2                                  ; $405E: $21 $D2 $D4
    ld de, $D4D3                                  ; $4061: $11 $D3 $D4
    call Call_02F_466D                            ; $4064: $CD $6D $46
    ld hl, $D512                                  ; $4067: $21 $12 $D5
    ld de, $D513                                  ; $406A: $11 $13 $D5
    jp Jump_02F_466D                              ; $406D: $C3 $6D $46


Call_02F_4070:
    ld hl, $FFF2                                  ; $4070: $21 $F2 $FF
    ld a, [hl+]                                   ; $4073: $2A
    cp [hl]                                       ; $4074: $BE
    jr z, @+$0F                                   ; $4075: $28 $0D

    dec l                                         ; $4077: $2D
    ld a, [hl]                                    ; $4078: $7E
    inc a                                         ; $4079: $3C
    and $07                                       ; $407A: $E6 $07
    ld [hl], a                                    ; $407C: $77
    add $F8                                       ; $407D: $C6 $F8
    ld l, a                                       ; $407F: $6F
    ld h, $D5                                     ; $4080: $26 $D5
    ld a, [hl]                                    ; $4082: $7E
    ld bc, $803E                                  ; $4083: $01 $3E $80
    bit 7, a                                      ; $4086: $CB $7F
    jp z, Jump_02F_46C9                           ; $4088: $CA $C9 $46

    cp $DF                                        ; $408B: $FE $DF
    jp nc, Jump_02F_46C9                          ; $408D: $D2 $C9 $46

    sub $80                                       ; $4090: $D6 $80
    ret z                                         ; $4092: $C8

    ld e, a                                       ; $4093: $5F
    xor a                                         ; $4094: $AF
    ld d, a                                       ; $4095: $57
    ld hl, $4723                                  ; $4096: $21 $23 $47
    add hl, de                                    ; $4099: $19
    add hl, de                                    ; $409A: $19
    ld a, [hl+]                                   ; $409B: $2A
    ld b, [hl]                                    ; $409C: $46
    ld c, a                                       ; $409D: $4F
    ld hl, $40A7                                  ; $409E: $21 $A7 $40
    add hl, de                                    ; $40A1: $19
    add hl, de                                    ; $40A2: $19
    ld a, [hl+]                                   ; $40A3: $2A
    ld h, [hl]                                    ; $40A4: $66
    ld l, a                                       ; $40A5: $6F
    jp hl                                         ; $40A6: $E9


    ld d, c                                       ; $40A7: $51
    ld b, d                                       ; $40A8: $42
    ld h, a                                       ; $40A9: $67
    ld b, c                                       ; $40AA: $41
    ld h, a                                       ; $40AB: $67
    ld b, c                                       ; $40AC: $41
    ld h, a                                       ; $40AD: $67
    ld b, c                                       ; $40AE: $41
    ld h, a                                       ; $40AF: $67
    ld b, c                                       ; $40B0: $41
    ld h, a                                       ; $40B1: $67
    ld b, c                                       ; $40B2: $41
    ld h, a                                       ; $40B3: $67
    ld b, c                                       ; $40B4: $41
    ld h, a                                       ; $40B5: $67
    ld b, c                                       ; $40B6: $41
    ld h, a                                       ; $40B7: $67
    ld b, c                                       ; $40B8: $41
    ld h, a                                       ; $40B9: $67
    ld b, c                                       ; $40BA: $41
    ld h, a                                       ; $40BB: $67
    ld b, c                                       ; $40BC: $41
    ld h, a                                       ; $40BD: $67
    ld b, c                                       ; $40BE: $41
    ld h, a                                       ; $40BF: $67
    ld b, c                                       ; $40C0: $41
    ld h, a                                       ; $40C1: $67
    ld b, c                                       ; $40C2: $41
    ld h, a                                       ; $40C3: $67
    ld b, c                                       ; $40C4: $41
    ld h, a                                       ; $40C5: $67
    ld b, c                                       ; $40C6: $41
    ld h, a                                       ; $40C7: $67
    ld b, c                                       ; $40C8: $41
    ld h, a                                       ; $40C9: $67
    ld b, c                                       ; $40CA: $41
    ld h, a                                       ; $40CB: $67
    ld b, c                                       ; $40CC: $41
    ld h, a                                       ; $40CD: $67
    ld b, c                                       ; $40CE: $41
    ld h, a                                       ; $40CF: $67
    ld b, c                                       ; $40D0: $41
    ld h, a                                       ; $40D1: $67
    ld b, c                                       ; $40D2: $41
    ld h, a                                       ; $40D3: $67
    ld b, c                                       ; $40D4: $41
    ld h, a                                       ; $40D5: $67
    ld b, c                                       ; $40D6: $41
    ld h, a                                       ; $40D7: $67
    ld b, c                                       ; $40D8: $41
    ld h, a                                       ; $40D9: $67
    ld b, c                                       ; $40DA: $41
    ld h, a                                       ; $40DB: $67
    ld b, c                                       ; $40DC: $41
    ld h, a                                       ; $40DD: $67
    ld b, c                                       ; $40DE: $41
    ld h, a                                       ; $40DF: $67
    ld b, c                                       ; $40E0: $41
    ld h, a                                       ; $40E1: $67
    ld b, c                                       ; $40E2: $41
    ld h, a                                       ; $40E3: $67
    ld b, c                                       ; $40E4: $41
    ld h, a                                       ; $40E5: $67
    ld b, c                                       ; $40E6: $41
    ld h, a                                       ; $40E7: $67
    ld b, c                                       ; $40E8: $41
    ld h, a                                       ; $40E9: $67
    ld b, c                                       ; $40EA: $41
    ld h, a                                       ; $40EB: $67
    ld b, c                                       ; $40EC: $41
    ld h, a                                       ; $40ED: $67
    ld b, c                                       ; $40EE: $41
    ld h, a                                       ; $40EF: $67
    ld b, c                                       ; $40F0: $41
    ld h, a                                       ; $40F1: $67
    ld b, c                                       ; $40F2: $41
    ld h, a                                       ; $40F3: $67
    ld b, c                                       ; $40F4: $41
    ld h, a                                       ; $40F5: $67
    ld b, c                                       ; $40F6: $41
    ld a, [hl]                                    ; $40F7: $7E
    ld b, c                                       ; $40F8: $41
    add e                                         ; $40F9: $83
    ld b, c                                       ; $40FA: $41
    rst RST_30                                    ; $40FB: $F7
    ld b, c                                       ; $40FC: $41
    rst RST_30                                    ; $40FD: $F7
    ld b, c                                       ; $40FE: $41
    rst RST_30                                    ; $40FF: $F7
    ld b, c                                       ; $4100: $41
    rst RST_30                                    ; $4101: $F7
    ld b, c                                       ; $4102: $41
    add hl, bc                                    ; $4103: $09
    ld b, d                                       ; $4104: $42
    add hl, bc                                    ; $4105: $09
    ld b, d                                       ; $4106: $42
    add hl, bc                                    ; $4107: $09
    ld b, d                                       ; $4108: $42
    add hl, bc                                    ; $4109: $09
    ld b, d                                       ; $410A: $42
    add hl, bc                                    ; $410B: $09
    ld b, d                                       ; $410C: $42
    add hl, bc                                    ; $410D: $09
    ld b, d                                       ; $410E: $42
    add hl, bc                                    ; $410F: $09
    ld b, d                                       ; $4110: $42
    add hl, bc                                    ; $4111: $09
    ld b, d                                       ; $4112: $42
    add hl, bc                                    ; $4113: $09
    ld b, d                                       ; $4114: $42
    add hl, bc                                    ; $4115: $09
    ld b, d                                       ; $4116: $42
    add hl, bc                                    ; $4117: $09
    ld b, d                                       ; $4118: $42
    add hl, bc                                    ; $4119: $09
    ld b, d                                       ; $411A: $42
    add hl, bc                                    ; $411B: $09
    ld b, d                                       ; $411C: $42
    add hl, bc                                    ; $411D: $09
    ld b, d                                       ; $411E: $42
    add hl, bc                                    ; $411F: $09
    ld b, d                                       ; $4120: $42
    add hl, bc                                    ; $4121: $09
    ld b, d                                       ; $4122: $42
    add hl, bc                                    ; $4123: $09
    ld b, d                                       ; $4124: $42
    add hl, bc                                    ; $4125: $09
    ld b, d                                       ; $4126: $42
    rst RST_30                                    ; $4127: $F7
    ld b, c                                       ; $4128: $41
    rst RST_30                                    ; $4129: $F7
    ld b, c                                       ; $412A: $41
    add hl, bc                                    ; $412B: $09
    ld b, d                                       ; $412C: $42
    rst RST_30                                    ; $412D: $F7
    ld b, c                                       ; $412E: $41
    add hl, bc                                    ; $412F: $09
    ld b, d                                       ; $4130: $42
    rst RST_30                                    ; $4131: $F7
    ld b, c                                       ; $4132: $41
    jp c, $DA41                                   ; $4133: $DA $41 $DA

    ld b, c                                       ; $4136: $41
    jp c, $DA41                                   ; $4137: $DA $41 $DA

    ld b, c                                       ; $413A: $41
    jp c, $DA41                                   ; $413B: $DA $41 $DA

    ld b, c                                       ; $413E: $41
    jp c, $DA41                                   ; $413F: $DA $41 $DA

    ld b, c                                       ; $4142: $41
    jp c, $DA41                                   ; $4143: $DA $41 $DA

    ld b, c                                       ; $4146: $41
    jp c, $DA41                                   ; $4147: $DA $41 $DA

    ld b, c                                       ; $414A: $41
    jp c, $DA41                                   ; $414B: $DA $41 $DA

    ld b, c                                       ; $414E: $41
    jp c, $DA41                                   ; $414F: $DA $41 $DA

    ld b, c                                       ; $4152: $41
    jp c, $DA41                                   ; $4153: $DA $41 $DA

    ld b, c                                       ; $4156: $41
    jp c, $DA41                                   ; $4157: $DA $41 $DA

    ld b, c                                       ; $415A: $41
    jp c, $DA41                                   ; $415B: $DA $41 $DA

    ld b, c                                       ; $415E: $41
    jp c, $DA41                                   ; $415F: $DA $41 $DA

    ld b, c                                       ; $4162: $41
    jp c, $DA41                                   ; $4163: $DA $41 $DA

    ld b, c                                       ; $4166: $41
    xor a                                         ; $4167: $AF
    ld [$D481], a                                 ; $4168: $EA $81 $D4
    push bc                                       ; $416B: $C5
    call Call_02F_46C9                            ; $416C: $CD $C9 $46
    pop bc                                        ; $416F: $C1
    ld de, $D4A6                                  ; $4170: $11 $A6 $D4
    push hl                                       ; $4173: $E5
    ld hl, $D5F0                                  ; $4174: $21 $F0 $D5
    ld a, $22                                     ; $4177: $3E $22
    ld [hl], a                                    ; $4179: $77
    pop hl                                        ; $417A: $E1
    jp Jump_02F_4228                              ; $417B: $C3 $28 $42


    call Call_02F_4188                            ; $417E: $CD $88 $41
    jr jr_02F_41DA                                ; $4181: $18 $57

    call Call_02F_41AA                            ; $4183: $CD $AA $41
    jr jr_02F_41DA                                ; $4186: $18 $52

Call_02F_4188:
    xor a                                         ; $4188: $AF
    ldh [rNR51], a                                ; $4189: $E0 $25
    ld hl, $D4A6                                  ; $418B: $21 $A6 $D4
    set 0, [hl]                                   ; $418E: $CB $C6
    ld hl, $D4C6                                  ; $4190: $21 $C6 $D4
    set 0, [hl]                                   ; $4193: $CB $C6
    ld hl, $D4E6                                  ; $4195: $21 $E6 $D4
    set 0, [hl]                                   ; $4198: $CB $C6
    ld hl, $D506                                  ; $419A: $21 $06 $D5
    set 0, [hl]                                   ; $419D: $CB $C6
    ld hl, $D566                                  ; $419F: $21 $66 $D5
    set 0, [hl]                                   ; $41A2: $CB $C6
    ld hl, $D586                                  ; $41A4: $21 $86 $D5
    set 0, [hl]                                   ; $41A7: $CB $C6
    ret                                           ; $41A9: $C9


Call_02F_41AA:
    ldh [rNR51], a                                ; $41AA: $E0 $25
    ld hl, $D4A6                                  ; $41AC: $21 $A6 $D4
    res 0, [hl]                                   ; $41AF: $CB $86
    ld hl, $D4C6                                  ; $41B1: $21 $C6 $D4
    res 0, [hl]                                   ; $41B4: $CB $86
    ld hl, $D4E6                                  ; $41B6: $21 $E6 $D4
    res 0, [hl]                                   ; $41B9: $CB $86
    ld hl, $D506                                  ; $41BB: $21 $06 $D5
    res 0, [hl]                                   ; $41BE: $CB $86
    ld hl, $D566                                  ; $41C0: $21 $66 $D5
    res 0, [hl]                                   ; $41C3: $CB $86
    ld hl, $D586                                  ; $41C5: $21 $86 $D5
    res 0, [hl]                                   ; $41C8: $CB $86
    ret                                           ; $41CA: $C9


    ld a, $80                                     ; $41CB: $3E $80
    ld [$D481], a                                 ; $41CD: $EA $81 $D4
    jr jr_02F_41DA                                ; $41D0: $18 $08

    ld a, [$D481]                                 ; $41D2: $FA $81 $D4
    bit 7, a                                      ; $41D5: $CB $7F
    jp nz, Jump_02F_4251                          ; $41D7: $C2 $51 $42

jr_02F_41DA:
    xor a                                         ; $41DA: $AF
    ldh [rNR10], a                                ; $41DB: $E0 $10
    ld de, $D526                                  ; $41DD: $11 $26 $D5
    jr jr_02F_4220                                ; $41E0: $18 $3E

    xor a                                         ; $41E2: $AF
    ldh [rNR10], a                                ; $41E3: $E0 $10
    ld [$D526], a                                 ; $41E5: $EA $26 $D5
    call Call_02F_46E0                            ; $41E8: $CD $E0 $46
    jr jr_02F_4251                                ; $41EB: $18 $64

    ld a, [$D481]                                 ; $41ED: $FA $81 $D4
    or $80                                        ; $41F0: $F6 $80
    ld [$D481], a                                 ; $41F2: $EA $81 $D4
    jr jr_02F_41FF                                ; $41F5: $18 $08

    ld a, [$D481]                                 ; $41F7: $FA $81 $D4
    bit 7, a                                      ; $41FA: $CB $7F
    jp nz, Jump_02F_4251                          ; $41FC: $C2 $51 $42

jr_02F_41FF:
    ld de, $D546                                  ; $41FF: $11 $46 $D5
    jr jr_02F_4220                                ; $4202: $18 $1C

    ld de, $D566                                  ; $4204: $11 $66 $D5
    jr jr_02F_4220                                ; $4207: $18 $17

    ld a, [$D481]                                 ; $4209: $FA $81 $D4
    or $40                                        ; $420C: $F6 $40
    ld [$D481], a                                 ; $420E: $EA $81 $D4
    jr jr_02F_421B                                ; $4211: $18 $08

    ld a, [$D481]                                 ; $4213: $FA $81 $D4
    bit 6, a                                      ; $4216: $CB $77
    jp nz, Jump_02F_4251                          ; $4218: $C2 $51 $42

jr_02F_421B:
    ld de, $D586                                  ; $421B: $11 $86 $D5
    jr jr_02F_4220                                ; $421E: $18 $00

jr_02F_4220:
    push hl                                       ; $4220: $E5
    ld hl, $D5F0                                  ; $4221: $21 $F0 $D5
    ld a, $77                                     ; $4224: $3E $77
    ld [hl], a                                    ; $4226: $77
    pop hl                                        ; $4227: $E1

Jump_02F_4228:
    ld l, c                                       ; $4228: $69
    ld h, b                                       ; $4229: $60
    ld a, [hl+]                                   ; $422A: $2A
    ld b, a                                       ; $422B: $47

jr_02F_422C:
    ld a, [hl+]                                   ; $422C: $2A
    ld [de], a                                    ; $422D: $12
    inc de                                        ; $422E: $13
    ld a, [hl+]                                   ; $422F: $2A
    ld [de], a                                    ; $4230: $12
    inc de                                        ; $4231: $13
    ld a, [hl+]                                   ; $4232: $2A
    ld [de], a                                    ; $4233: $12
    inc de                                        ; $4234: $13
    ld a, [hl+]                                   ; $4235: $2A
    ld [de], a                                    ; $4236: $12
    inc de                                        ; $4237: $13
    ld a, [hl+]                                   ; $4238: $2A
    ld [de], a                                    ; $4239: $12
    inc de                                        ; $423A: $13
    ld a, [hl+]                                   ; $423B: $2A
    ld [de], a                                    ; $423C: $12
    inc de                                        ; $423D: $13
    ld a, $20                                     ; $423E: $3E $20
    ld [de], a                                    ; $4240: $12
    inc de                                        ; $4241: $13
    ld a, $01                                     ; $4242: $3E $01
    ld [de], a                                    ; $4244: $12
    inc de                                        ; $4245: $13
    xor a                                         ; $4246: $AF
    ld c, $18                                     ; $4247: $0E $18

jr_02F_4249:
    ld [de], a                                    ; $4249: $12
    inc de                                        ; $424A: $13
    dec c                                         ; $424B: $0D
    jr nz, jr_02F_4249                            ; $424C: $20 $FB

    dec b                                         ; $424E: $05
    jr nz, jr_02F_422C                            ; $424F: $20 $DB

Jump_02F_4251:
jr_02F_4251:
    ld a, $80                                     ; $4251: $3E $80
    ld [$D480], a                                 ; $4253: $EA $80 $D4
    ret                                           ; $4256: $C9


Call_02F_4257:
    bit 0, a                                      ; $4257: $CB $47
    ret nz                                        ; $4259: $C0

    ld bc, $0008                                  ; $425A: $01 $08 $00
    add hl, bc                                    ; $425D: $09
    ld a, [hl]                                    ; $425E: $7E
    inc a                                         ; $425F: $3C
    ld [hl-], a                                   ; $4260: $32
    cp [hl]                                       ; $4261: $BE
    ret nz                                        ; $4262: $C0

    ldh a, [$FFF0]                                ; $4263: $F0 $F0
    ld e, a                                       ; $4265: $5F
    ldh a, [$FFF1]                                ; $4266: $F0 $F1
    ld d, a                                       ; $4268: $57
    ld hl, $0002                                  ; $4269: $21 $02 $00
    add hl, de                                    ; $426C: $19
    ld a, [hl+]                                   ; $426D: $2A
    ldh [$FFF4], a                                ; $426E: $E0 $F4
    ld a, [hl]                                    ; $4270: $7E
    ldh [$FFF5], a                                ; $4271: $E0 $F5

Jump_02F_4273:
    ldh a, [$FFF4]                                ; $4273: $F0 $F4
    ld l, a                                       ; $4275: $6F
    ldh a, [$FFF5]                                ; $4276: $F0 $F5
    ld h, a                                       ; $4278: $67
    ld a, [hl]                                    ; $4279: $7E
    ld hl, $FFF4                                  ; $427A: $21 $F4 $FF
    inc [hl]                                      ; $427D: $34
    jr nz, jr_02F_4282                            ; $427E: $20 $02

    inc l                                         ; $4280: $2C
    inc [hl]                                      ; $4281: $34

jr_02F_4282:
    cp $E0                                        ; $4282: $FE $E0
    jp nc, Jump_02F_43B4                          ; $4284: $D2 $B4 $43

    ld hl, $0001                                  ; $4287: $21 $01 $00
    add hl, de                                    ; $428A: $19
    bit 5, [hl]                                   ; $428B: $CB $6E
    jr z, jr_02F_4298                             ; $428D: $28 $09

    ld hl, $000E                                  ; $428F: $21 $0E $00
    add hl, de                                    ; $4292: $19
    ld [hl+], a                                   ; $4293: $22
    xor a                                         ; $4294: $AF
    ld [hl], a                                    ; $4295: $77
    jr jr_02F_42B8                                ; $4296: $18 $20

jr_02F_4298:
    cp $80                                        ; $4298: $FE $80
    jp c, Jump_02F_42EB                           ; $429A: $DA $EB $42

    sub $80                                       ; $429D: $D6 $80
    jr z, jr_02F_42A6                             ; $429F: $28 $05

    ld hl, $0004                                  ; $42A1: $21 $04 $00
    add hl, de                                    ; $42A4: $19
    add [hl]                                      ; $42A5: $86

jr_02F_42A6:
    ld hl, $47E3                                  ; $42A6: $21 $E3 $47
    ld c, a                                       ; $42A9: $4F
    ld b, $00                                     ; $42AA: $06 $00
    add hl, bc                                    ; $42AC: $09
    add hl, bc                                    ; $42AD: $09
    ld c, [hl]                                    ; $42AE: $4E
    inc hl                                        ; $42AF: $23
    ld b, [hl]                                    ; $42B0: $46
    ld hl, $000E                                  ; $42B1: $21 $0E $00
    add hl, de                                    ; $42B4: $19
    ld [hl], c                                    ; $42B5: $71
    inc hl                                        ; $42B6: $23
    ld [hl], b                                    ; $42B7: $70

jr_02F_42B8:
    ld a, [de]                                    ; $42B8: $1A
    bit 2, a                                      ; $42B9: $CB $57
    jr nz, jr_02F_42D8                            ; $42BB: $20 $1B

    bit 1, a                                      ; $42BD: $CB $4F
    ld hl, $0001                                  ; $42BF: $21 $01 $00
    add hl, de                                    ; $42C2: $19
    ld a, [hl]                                    ; $42C3: $7E
    ld c, a                                       ; $42C4: $4F
    jr nz, jr_02F_42CF                            ; $42C5: $20 $08

    dec c                                         ; $42C7: $0D
    ld hl, $000D                                  ; $42C8: $21 $0D $00
    add hl, de                                    ; $42CB: $19
    ld a, [hl]                                    ; $42CC: $7E
    ldh [c], a                                    ; $42CD: $E2
    inc c                                         ; $42CE: $0C

jr_02F_42CF:
    ld hl, $000E                                  ; $42CF: $21 $0E $00
    add hl, de                                    ; $42D2: $19
    ld a, [hl+]                                   ; $42D3: $2A
    ldh [c], a                                    ; $42D4: $E2
    inc c                                         ; $42D5: $0C
    ld a, [hl]                                    ; $42D6: $7E
    ldh [c], a                                    ; $42D7: $E2

jr_02F_42D8:
    ldh a, [$FFF4]                                ; $42D8: $F0 $F4
    ld l, a                                       ; $42DA: $6F
    ldh a, [$FFF5]                                ; $42DB: $F0 $F5
    ld h, a                                       ; $42DD: $67
    ld a, [hl]                                    ; $42DE: $7E
    cp $80                                        ; $42DF: $FE $80
    jr nc, jr_02F_42F0                            ; $42E1: $30 $0D

    ld hl, $FFF4                                  ; $42E3: $21 $F4 $FF
    inc [hl]                                      ; $42E6: $34
    jr nz, jr_02F_42EB                            ; $42E7: $20 $02

    inc l                                         ; $42E9: $2C
    inc [hl]                                      ; $42EA: $34

Jump_02F_42EB:
jr_02F_42EB:
    ld hl, $0007                                  ; $42EB: $21 $07 $00
    add hl, de                                    ; $42EE: $19
    ld [hl], a                                    ; $42EF: $77

jr_02F_42F0:
    ld hl, $0002                                  ; $42F0: $21 $02 $00
    add hl, de                                    ; $42F3: $19
    ldh a, [$FFF4]                                ; $42F4: $F0 $F4
    ld [hl+], a                                   ; $42F6: $22
    ldh a, [$FFF5]                                ; $42F7: $F0 $F5
    ld [hl], a                                    ; $42F9: $77
    ld hl, $0008                                  ; $42FA: $21 $08 $00
    add hl, de                                    ; $42FD: $19
    xor a                                         ; $42FE: $AF
    ld [hl], a                                    ; $42FF: $77
    ld hl, $000C                                  ; $4300: $21 $0C $00
    add hl, de                                    ; $4303: $19
    ld a, [hl]                                    ; $4304: $7E
    and $F0                                       ; $4305: $E6 $F0
    ld [hl], a                                    ; $4307: $77
    ld a, [de]                                    ; $4308: $1A
    bit 2, a                                      ; $4309: $CB $57
    jp nz, Jump_02F_43B3                          ; $430B: $C2 $B3 $43

    ld hl, $000E                                  ; $430E: $21 $0E $00
    add hl, de                                    ; $4311: $19
    ld a, [hl+]                                   ; $4312: $2A
    or [hl]                                       ; $4313: $B6
    jr nz, jr_02F_4345                            ; $4314: $20 $2F

    ld hl, $0001                                  ; $4316: $21 $01 $00
    add hl, de                                    ; $4319: $19
    ld a, [hl]                                    ; $431A: $7E
    cp $13                                        ; $431B: $FE $13
    jr z, jr_02F_433C                             ; $431D: $28 $1D

    cp $18                                        ; $431F: $FE $18
    jr z, jr_02F_4336                             ; $4321: $28 $13

    cp $1D                                        ; $4323: $FE $1D
    jr z, jr_02F_432D                             ; $4325: $28 $06

    ldh a, [rNR51]                                ; $4327: $F0 $25
    and $77                                       ; $4329: $E6 $77
    jr jr_02F_4340                                ; $432B: $18 $13

jr_02F_432D:
    xor a                                         ; $432D: $AF
    ldh [rNR30], a                                ; $432E: $E0 $1A
    ldh a, [rNR51]                                ; $4330: $F0 $25
    and $BB                                       ; $4332: $E6 $BB
    jr jr_02F_4340                                ; $4334: $18 $0A

jr_02F_4336:
    ldh a, [rNR51]                                ; $4336: $F0 $25
    and $DD                                       ; $4338: $E6 $DD
    jr jr_02F_4340                                ; $433A: $18 $04

jr_02F_433C:
    ldh a, [rNR51]                                ; $433C: $F0 $25
    and $EE                                       ; $433E: $E6 $EE

jr_02F_4340:
    ldh [rNR51], a                                ; $4340: $E0 $25
    jp Jump_02F_43B3                              ; $4342: $C3 $B3 $43


jr_02F_4345:
    ld a, [de]                                    ; $4345: $1A
    bit 1, a                                      ; $4346: $CB $4F
    jp nz, Jump_02F_43B3                          ; $4348: $C2 $B3 $43

    ld hl, $0010                                  ; $434B: $21 $10 $00
    add hl, de                                    ; $434E: $19
    ld bc, $0001                                  ; $434F: $01 $01 $00
    ldh a, [$FFF0]                                ; $4352: $F0 $F0
    add c                                         ; $4354: $81
    ld c, a                                       ; $4355: $4F
    ldh a, [$FFF1]                                ; $4356: $F0 $F1
    adc b                                         ; $4358: $88
    ld b, a                                       ; $4359: $47
    ld a, [bc]                                    ; $435A: $0A
    ld c, a                                       ; $435B: $4F
    inc c                                         ; $435C: $0C
    cp $13                                        ; $435D: $FE $13
    jr z, jr_02F_437F                             ; $435F: $28 $1E

    cp $18                                        ; $4361: $FE $18
    jr z, jr_02F_437A                             ; $4363: $28 $15

    cp $22                                        ; $4365: $FE $22
    jr z, jr_02F_4375                             ; $4367: $28 $0C

    xor a                                         ; $4369: $AF
    ldh [rNR30], a                                ; $436A: $E0 $1A
    ld a, $80                                     ; $436C: $3E $80
    ldh [rNR30], a                                ; $436E: $E0 $1A
    ld a, [hl]                                    ; $4370: $7E
    and $44                                       ; $4371: $E6 $44
    jr jr_02F_4382                                ; $4373: $18 $0D

jr_02F_4375:
    ld a, [hl]                                    ; $4375: $7E
    and $88                                       ; $4376: $E6 $88
    jr jr_02F_4382                                ; $4378: $18 $08

jr_02F_437A:
    ld a, [hl]                                    ; $437A: $7E
    and $22                                       ; $437B: $E6 $22
    jr jr_02F_4382                                ; $437D: $18 $03

jr_02F_437F:
    ld a, [hl]                                    ; $437F: $7E
    and $11                                       ; $4380: $E6 $11

jr_02F_4382:
    ld b, a                                       ; $4382: $47
    ldh a, [rNR51]                                ; $4383: $F0 $25
    or b                                          ; $4385: $B0
    ldh [rNR51], a                                ; $4386: $E0 $25
    ld hl, $0001                                  ; $4388: $21 $01 $00
    add hl, de                                    ; $438B: $19
    ld a, [hl]                                    ; $438C: $7E
    cp $1D                                        ; $438D: $FE $1D
    jr nz, jr_02F_43AB                            ; $438F: $20 $1A

    ld a, [de]                                    ; $4391: $1A
    bit 3, a                                      ; $4392: $CB $5F
    jr nz, jr_02F_43AB                            ; $4394: $20 $15

    ld a, [$D483]                                 ; $4396: $FA $83 $D4
    cp $FF                                        ; $4399: $FE $FF
    jr z, jr_02F_43AB                             ; $439B: $28 $0E

    ldh [rNR31], a                                ; $439D: $E0 $1B
    ld hl, $000F                                  ; $439F: $21 $0F $00
    add hl, de                                    ; $43A2: $19
    ld a, [hl]                                    ; $43A3: $7E
    set 7, a                                      ; $43A4: $CB $FF
    or $40                                        ; $43A6: $F6 $40
    ldh [c], a                                    ; $43A8: $E2
    jr jr_02F_43B3                                ; $43A9: $18 $08

jr_02F_43AB:
    ld hl, $000F                                  ; $43AB: $21 $0F $00
    add hl, de                                    ; $43AE: $19
    ld a, [hl]                                    ; $43AF: $7E
    set 7, a                                      ; $43B0: $CB $FF
    ldh [c], a                                    ; $43B2: $E2

Jump_02F_43B3:
jr_02F_43B3:
    ret                                           ; $43B3: $C9


Jump_02F_43B4:
    ld hl, $43C6                                  ; $43B4: $21 $C6 $43
    push hl                                       ; $43B7: $E5
    and $1F                                       ; $43B8: $E6 $1F
    ld hl, $43D2                                  ; $43BA: $21 $D2 $43
    ld c, a                                       ; $43BD: $4F
    ld b, $00                                     ; $43BE: $06 $00
    add hl, bc                                    ; $43C0: $09
    add hl, bc                                    ; $43C1: $09
    ld a, [hl+]                                   ; $43C2: $2A
    ld h, [hl]                                    ; $43C3: $66
    ld l, a                                       ; $43C4: $6F
    jp hl                                         ; $43C5: $E9


    ld hl, $FFF4                                  ; $43C6: $21 $F4 $FF
    inc [hl]                                      ; $43C9: $34
    jp nz, Jump_02F_4273                          ; $43CA: $C2 $73 $42

    inc hl                                        ; $43CD: $23
    inc [hl]                                      ; $43CE: $34
    jp Jump_02F_4273                              ; $43CF: $C3 $73 $42


    ld [de], a                                    ; $43D2: $12
    ld b, h                                       ; $43D3: $44
    ld [de], a                                    ; $43D4: $12
    ld b, h                                       ; $43D5: $44
    ld [de], a                                    ; $43D6: $12
    ld b, h                                       ; $43D7: $44
    ldh [rLYC], a                                 ; $43D8: $E0 $45
    and a                                         ; $43DA: $A7
    ld b, h                                       ; $43DB: $44
    ld b, c                                       ; $43DC: $41
    ld b, l                                       ; $43DD: $45
    dec l                                         ; $43DE: $2D
    ld b, h                                       ; $43DF: $44
    db $ED                                        ; $43E0: $ED
    ld b, h                                       ; $43E1: $44
    call c, $8544                                 ; $43E2: $DC $44 $85
    ld b, h                                       ; $43E5: $44
    ld [de], a                                    ; $43E6: $12
    ld b, h                                       ; $43E7: $44
    ld [de], a                                    ; $43E8: $12
    ld b, h                                       ; $43E9: $44
    ld d, e                                       ; $43EA: $53
    ld b, l                                       ; $43EB: $45
    ld a, [hl]                                    ; $43EC: $7E
    ld b, l                                       ; $43ED: $45
    push bc                                       ; $43EE: $C5
    ld b, h                                       ; $43EF: $44
    ld d, [hl]                                    ; $43F0: $56
    ld b, h                                       ; $43F1: $44
    ld c, a                                       ; $43F2: $4F
    ld b, h                                       ; $43F3: $44
    dec sp                                        ; $43F4: $3B
    ld b, h                                       ; $43F5: $44
    ld c, b                                       ; $43F6: $48
    ld b, h                                       ; $43F7: $44
    sub h                                         ; $43F8: $94
    ld b, l                                       ; $43F9: $45
    ret c                                         ; $43FA: $D8

    ld b, l                                       ; $43FB: $45
    inc e                                         ; $43FC: $1C
    ld b, h                                       ; $43FD: $44
    adc $45                                       ; $43FE: $CE $45
    ld [de], a                                    ; $4400: $12
    ld b, h                                       ; $4401: $44
    ld [de], a                                    ; $4402: $12
    ld b, h                                       ; $4403: $44
    ld [de], a                                    ; $4404: $12
    ld b, h                                       ; $4405: $44
    ld e, l                                       ; $4406: $5D
    ld b, h                                       ; $4407: $44
    ld [de], a                                    ; $4408: $12
    ld b, h                                       ; $4409: $44
    ld [de], a                                    ; $440A: $12
    ld b, h                                       ; $440B: $44
    ld [de], a                                    ; $440C: $12
    ld b, h                                       ; $440D: $44
    ld [de], a                                    ; $440E: $12
    ld b, h                                       ; $440F: $44
    ld [de], a                                    ; $4410: $12
    ld b, h                                       ; $4411: $44

Jump_02F_4412:
    ld hl, $FFF4                                  ; $4412: $21 $F4 $FF
    ld a, [hl]                                    ; $4415: $7E
    sub $01                                       ; $4416: $D6 $01
    ld [hl+], a                                   ; $4418: $22
    ret nc                                        ; $4419: $D0

    dec [hl]                                      ; $441A: $35
    ret                                           ; $441B: $C9


    ldh a, [$FFF4]                                ; $441C: $F0 $F4
    ld l, a                                       ; $441E: $6F
    ldh a, [$FFF5]                                ; $441F: $F0 $F5
    ld h, a                                       ; $4421: $67
    ld a, [hl]                                    ; $4422: $7E
    cpl                                           ; $4423: $2F
    ld [$D483], a                                 ; $4424: $EA $83 $D4
    cp $FF                                        ; $4427: $FE $FF
    ret z                                         ; $4429: $C8

    ldh [rNR31], a                                ; $442A: $E0 $1B
    ret                                           ; $442C: $C9


    ldh a, [$FFF4]                                ; $442D: $F0 $F4
    ld l, a                                       ; $442F: $6F
    ldh a, [$FFF5]                                ; $4430: $F0 $F5
    ld h, a                                       ; $4432: $67
    ld a, [hl]                                    ; $4433: $7E
    ld hl, $0004                                  ; $4434: $21 $04 $00
    add hl, de                                    ; $4437: $19
    add [hl]                                      ; $4438: $86
    ld [hl], a                                    ; $4439: $77
    ret                                           ; $443A: $C9


    ld a, [de]                                    ; $443B: $1A
    set 6, a                                      ; $443C: $CB $F7
    ld [de], a                                    ; $443E: $12
    ld hl, $0009                                  ; $443F: $21 $09 $00
    add hl, de                                    ; $4442: $19
    ld [hl], $00                                  ; $4443: $36 $00
    jp Jump_02F_4412                              ; $4445: $C3 $12 $44


    ld a, [de]                                    ; $4448: $1A
    res 6, a                                      ; $4449: $CB $B7
    ld [de], a                                    ; $444B: $12
    jp Jump_02F_4412                              ; $444C: $C3 $12 $44


    ld a, [de]                                    ; $444F: $1A
    res 1, a                                      ; $4450: $CB $8F
    ld [de], a                                    ; $4452: $12
    jp Jump_02F_4412                              ; $4453: $C3 $12 $44


    ld a, [de]                                    ; $4456: $1A
    set 1, a                                      ; $4457: $CB $CF
    ld [de], a                                    ; $4459: $12
    jp Jump_02F_4412                              ; $445A: $C3 $12 $44


    pop hl                                        ; $445D: $E1
    ldh a, [$FFF4]                                ; $445E: $F0 $F4
    ld l, a                                       ; $4460: $6F
    ldh a, [$FFF5]                                ; $4461: $F0 $F5
    ld h, a                                       ; $4463: $67
    ld a, [hl]                                    ; $4464: $7E
    ld hl, $0007                                  ; $4465: $21 $07 $00
    add hl, de                                    ; $4468: $19
    ld [hl], a                                    ; $4469: $77
    ld hl, $FFF4                                  ; $446A: $21 $F4 $FF
    inc [hl]                                      ; $446D: $34
    jr nz, jr_02F_4472                            ; $446E: $20 $02

    inc l                                         ; $4470: $2C
    inc [hl]                                      ; $4471: $34

jr_02F_4472:
    ld hl, $0002                                  ; $4472: $21 $02 $00
    add hl, de                                    ; $4475: $19
    ldh a, [$FFF4]                                ; $4476: $F0 $F4
    ld [hl+], a                                   ; $4478: $22
    ldh a, [$FFF5]                                ; $4479: $F0 $F5
    ld [hl], a                                    ; $447B: $77
    ld hl, $0008                                  ; $447C: $21 $08 $00
    add hl, de                                    ; $447F: $19
    ld [hl], $00                                  ; $4480: $36 $00
    jp Jump_02F_43B3                              ; $4482: $C3 $B3 $43


    ldh a, [rNR51]                                ; $4485: $F0 $25
    ld c, a                                       ; $4487: $4F
    ldh a, [$FFF4]                                ; $4488: $F0 $F4
    ld l, a                                       ; $448A: $6F
    ldh a, [$FFF5]                                ; $448B: $F0 $F5
    ld h, a                                       ; $448D: $67
    ld a, [hl]                                    ; $448E: $7E
    ld b, a                                       ; $448F: $47
    swap a                                        ; $4490: $CB $37
    cpl                                           ; $4492: $2F
    and c                                         ; $4493: $A1
    or b                                          ; $4494: $B0
    ld hl, $0010                                  ; $4495: $21 $10 $00
    add hl, de                                    ; $4498: $19
    ld [hl], a                                    ; $4499: $77
    ldh [rNR51], a                                ; $449A: $E0 $25
    ld hl, $0000                                  ; $449C: $21 $00 $00
    add hl, de                                    ; $449F: $19
    bit 3, [hl]                                   ; $44A0: $CB $5E
    ret nz                                        ; $44A2: $C0

    ld [$D482], a                                 ; $44A3: $EA $82 $D4
    ret                                           ; $44A6: $C9


    ld hl, $0001                                  ; $44A7: $21 $01 $00
    add hl, de                                    ; $44AA: $19
    ld a, [hl]                                    ; $44AB: $7E
    dec a                                         ; $44AC: $3D
    ld c, a                                       ; $44AD: $4F
    ldh a, [$FFF4]                                ; $44AE: $F0 $F4
    ld l, a                                       ; $44B0: $6F
    ldh a, [$FFF5]                                ; $44B1: $F0 $F5
    ld h, a                                       ; $44B3: $67
    ld a, [hl]                                    ; $44B4: $7E
    ld hl, $000D                                  ; $44B5: $21 $0D $00
    add hl, de                                    ; $44B8: $19
    ld [hl], a                                    ; $44B9: $77
    call Call_02F_469C                            ; $44BA: $CD $9C $46
    and $F0                                       ; $44BD: $E6 $F0
    ld hl, $000C                                  ; $44BF: $21 $0C $00
    add hl, de                                    ; $44C2: $19
    ld [hl], a                                    ; $44C3: $77
    ret                                           ; $44C4: $C9


    ld hl, $0001                                  ; $44C5: $21 $01 $00
    add hl, de                                    ; $44C8: $19
    ld a, [hl]                                    ; $44C9: $7E
    sub $02                                       ; $44CA: $D6 $02
    ld c, a                                       ; $44CC: $4F
    ldh a, [$FFF4]                                ; $44CD: $F0 $F4
    ld l, a                                       ; $44CF: $6F
    ldh a, [$FFF5]                                ; $44D0: $F0 $F5
    ld h, a                                       ; $44D2: $67
    ld a, [hl]                                    ; $44D3: $7E
    ld hl, $000A                                  ; $44D4: $21 $0A $00
    add hl, de                                    ; $44D7: $19
    ld [hl], a                                    ; $44D8: $77
    jp Jump_02F_469C                              ; $44D9: $C3 $9C $46


    ldh a, [$FFF4]                                ; $44DC: $F0 $F4
    ld l, a                                       ; $44DE: $6F
    ldh a, [$FFF5]                                ; $44DF: $F0 $F5
    ld h, a                                       ; $44E1: $67
    ld a, [hl]                                    ; $44E2: $7E
    ld hl, $000B                                  ; $44E3: $21 $0B $00
    add hl, de                                    ; $44E6: $19
    ld [hl], a                                    ; $44E7: $77
    ld c, $10                                     ; $44E8: $0E $10
    jp Jump_02F_469C                              ; $44EA: $C3 $9C $46


    ldh a, [$FFF4]                                ; $44ED: $F0 $F4
    ld l, a                                       ; $44EF: $6F
    ldh a, [$FFF5]                                ; $44F0: $F0 $F5
    ld h, a                                       ; $44F2: $67
    ld c, [hl]                                    ; $44F3: $4E
    inc hl                                        ; $44F4: $23
    ld a, l                                       ; $44F5: $7D
    ldh [$FFF4], a                                ; $44F6: $E0 $F4
    ld a, h                                       ; $44F8: $7C
    ldh [$FFF5], a                                ; $44F9: $E0 $F5
    ld a, c                                       ; $44FB: $79
    add $12                                       ; $44FC: $C6 $12
    ld b, $00                                     ; $44FE: $06 $00
    ld c, a                                       ; $4500: $4F
    ld hl, $0000                                  ; $4501: $21 $00 $00
    add hl, bc                                    ; $4504: $09
    add hl, de                                    ; $4505: $19
    ld a, [hl]                                    ; $4506: $7E
    or a                                          ; $4507: $B7
    jr nz, jr_02F_4525                            ; $4508: $20 $1B

    ldh a, [$FFF4]                                ; $450A: $F0 $F4
    ld c, a                                       ; $450C: $4F
    ldh a, [$FFF5]                                ; $450D: $F0 $F5
    ld b, a                                       ; $450F: $47
    ld a, [bc]                                    ; $4510: $0A
    ld [hl], a                                    ; $4511: $77
    inc bc                                        ; $4512: $03
    ld a, c                                       ; $4513: $79
    ldh [$FFF4], a                                ; $4514: $E0 $F4
    ld a, b                                       ; $4516: $78
    ldh [$FFF5], a                                ; $4517: $E0 $F5
    dec [hl]                                      ; $4519: $35
    jp nz, Jump_02F_4541                          ; $451A: $C2 $41 $45

    inc bc                                        ; $451D: $03
    ld a, c                                       ; $451E: $79
    ldh [$FFF4], a                                ; $451F: $E0 $F4
    ld a, b                                       ; $4521: $78
    ldh [$FFF5], a                                ; $4522: $E0 $F5
    ret                                           ; $4524: $C9


jr_02F_4525:
    ldh a, [$FFF4]                                ; $4525: $F0 $F4
    add $01                                       ; $4527: $C6 $01
    ldh [$FFF4], a                                ; $4529: $E0 $F4
    ldh a, [$FFF5]                                ; $452B: $F0 $F5
    adc $00                                       ; $452D: $CE $00
    ldh [$FFF5], a                                ; $452F: $E0 $F5
    dec [hl]                                      ; $4531: $35
    jr nz, jr_02F_4541                            ; $4532: $20 $0D

    ldh a, [$FFF4]                                ; $4534: $F0 $F4
    add $01                                       ; $4536: $C6 $01
    ldh [$FFF4], a                                ; $4538: $E0 $F4
    ldh a, [$FFF5]                                ; $453A: $F0 $F5
    adc $00                                       ; $453C: $CE $00
    ldh [$FFF5], a                                ; $453E: $E0 $F5
    ret                                           ; $4540: $C9


Jump_02F_4541:
jr_02F_4541:
    ldh a, [$FFF4]                                ; $4541: $F0 $F4
    ld l, a                                       ; $4543: $6F
    ldh a, [$FFF5]                                ; $4544: $F0 $F5
    ld h, a                                       ; $4546: $67
    ld a, [hl+]                                   ; $4547: $2A
    ld c, a                                       ; $4548: $4F
    ld a, [hl]                                    ; $4549: $7E
    ld b, a                                       ; $454A: $47
    dec bc                                        ; $454B: $0B
    ld a, c                                       ; $454C: $79
    ldh [$FFF4], a                                ; $454D: $E0 $F4
    ld a, b                                       ; $454F: $78
    ldh [$FFF5], a                                ; $4550: $E0 $F5
    ret                                           ; $4552: $C9


    ldh a, [$FFF4]                                ; $4553: $F0 $F4
    ld l, a                                       ; $4555: $6F
    ldh a, [$FFF5]                                ; $4556: $F0 $F5
    ld h, a                                       ; $4558: $67
    ld a, [hl+]                                   ; $4559: $2A
    ld c, a                                       ; $455A: $4F
    ld a, [hl]                                    ; $455B: $7E
    ld b, a                                       ; $455C: $47
    ld a, l                                       ; $455D: $7D
    ldh [$FFF4], a                                ; $455E: $E0 $F4
    ld a, h                                       ; $4560: $7C
    ldh [$FFF5], a                                ; $4561: $E0 $F5
    push bc                                       ; $4563: $C5
    ld hl, $0006                                  ; $4564: $21 $06 $00
    add hl, de                                    ; $4567: $19
    dec [hl]                                      ; $4568: $35
    ld a, [hl]                                    ; $4569: $7E
    dec [hl]                                      ; $456A: $35
    ld l, a                                       ; $456B: $6F
    ld h, $00                                     ; $456C: $26 $00
    add hl, de                                    ; $456E: $19
    ldh a, [$FFF5]                                ; $456F: $F0 $F5
    ld [hl-], a                                   ; $4571: $32
    ldh a, [$FFF4]                                ; $4572: $F0 $F4
    ld [hl], a                                    ; $4574: $77
    pop bc                                        ; $4575: $C1
    dec bc                                        ; $4576: $0B
    ld a, c                                       ; $4577: $79
    ldh [$FFF4], a                                ; $4578: $E0 $F4
    ld a, b                                       ; $457A: $78
    ldh [$FFF5], a                                ; $457B: $E0 $F5
    ret                                           ; $457D: $C9


    ld hl, $0006                                  ; $457E: $21 $06 $00
    add hl, de                                    ; $4581: $19
    ld a, [hl]                                    ; $4582: $7E
    ld l, a                                       ; $4583: $6F
    ld h, $00                                     ; $4584: $26 $00
    add hl, de                                    ; $4586: $19
    ld a, [hl+]                                   ; $4587: $2A
    ldh [$FFF4], a                                ; $4588: $E0 $F4
    ld a, [hl]                                    ; $458A: $7E
    ldh [$FFF5], a                                ; $458B: $E0 $F5
    ld hl, $0006                                  ; $458D: $21 $06 $00
    add hl, de                                    ; $4590: $19
    inc [hl]                                      ; $4591: $34
    inc [hl]                                      ; $4592: $34
    ret                                           ; $4593: $C9


    ld a, [de]                                    ; $4594: $1A
    bit 2, a                                      ; $4595: $CB $57
    ret nz                                        ; $4597: $C0

    xor a                                         ; $4598: $AF
    ldh [rNR30], a                                ; $4599: $E0 $1A
    ldh a, [$FFF4]                                ; $459B: $F0 $F4
    ld l, a                                       ; $459D: $6F
    ldh a, [$FFF5]                                ; $459E: $F0 $F5
    ld h, a                                       ; $45A0: $67
    ld a, [hl]                                    ; $45A1: $7E
    ld hl, $0011                                  ; $45A2: $21 $11 $00
    add hl, de                                    ; $45A5: $19
    ld [hl], a                                    ; $45A6: $77
    ld hl, $4877                                  ; $45A7: $21 $77 $48
    call Call_02F_46AF                            ; $45AA: $CD $AF $46
    ld c, $30                                     ; $45AD: $0E $30
    ld b, $10                                     ; $45AF: $06 $10

jr_02F_45B1:
    ld a, [hl+]                                   ; $45B1: $2A
    ldh [c], a                                    ; $45B2: $E2
    inc c                                         ; $45B3: $0C
    dec b                                         ; $45B4: $05
    jr nz, jr_02F_45B1                            ; $45B5: $20 $FA

    ret                                           ; $45B7: $C9


Call_02F_45B8:
    ld a, $00                                     ; $45B8: $3E $00
    ldh [rNR30], a                                ; $45BA: $E0 $1A
    ld a, [hl]                                    ; $45BC: $7E
    ld hl, $4877                                  ; $45BD: $21 $77 $48
    call Call_02F_46AF                            ; $45C0: $CD $AF $46
    ld c, $30                                     ; $45C3: $0E $30
    ld b, $10                                     ; $45C5: $06 $10

jr_02F_45C7:
    ld a, [hl+]                                   ; $45C7: $2A
    ldh [c], a                                    ; $45C8: $E2
    inc c                                         ; $45C9: $0C
    dec b                                         ; $45CA: $05
    jr nz, jr_02F_45C7                            ; $45CB: $20 $FA

    ret                                           ; $45CD: $C9


    ld a, [$D481]                                 ; $45CE: $FA $81 $D4
    and $BF                                       ; $45D1: $E6 $BF
    ld [$D481], a                                 ; $45D3: $EA $81 $D4
    jr jr_02F_45E0                                ; $45D6: $18 $08

    ld a, [$D481]                                 ; $45D8: $FA $81 $D4
    and $7F                                       ; $45DB: $E6 $7F
    ld [$D481], a                                 ; $45DD: $EA $81 $D4

jr_02F_45E0:
    push hl                                       ; $45E0: $E5
    ld hl, $D5F0                                  ; $45E1: $21 $F0 $D5
    ld a, $00                                     ; $45E4: $3E $00
    ld [hl], a                                    ; $45E6: $77
    pop hl                                        ; $45E7: $E1
    call Call_02F_468B                            ; $45E8: $CD $8B $46
    ldh a, [$FFF0]                                ; $45EB: $F0 $F0
    ld l, a                                       ; $45ED: $6F
    ldh a, [$FFF1]                                ; $45EE: $F0 $F1
    ld h, a                                       ; $45F0: $67
    ld a, [$D4A6]                                 ; $45F1: $FA $A6 $D4
    bit 7, a                                      ; $45F4: $CB $7F
    jr z, jr_02F_4648                             ; $45F6: $28 $50

    ld a, [hl]                                    ; $45F8: $7E
    bit 3, a                                      ; $45F9: $CB $5F
    jr nz, jr_02F_4601                            ; $45FB: $20 $04

    xor a                                         ; $45FD: $AF
    ld [hl], a                                    ; $45FE: $77
    pop hl                                        ; $45FF: $E1
    ret                                           ; $4600: $C9


jr_02F_4601:
    xor a                                         ; $4601: $AF
    ld [hl], a                                    ; $4602: $77
    ld bc, $FF8A                                  ; $4603: $01 $8A $FF
    add hl, bc                                    ; $4606: $09
    push hl                                       ; $4607: $E5
    ld hl, $0001                                  ; $4608: $21 $01 $00
    add hl, de                                    ; $460B: $19
    ld a, [hl]                                    ; $460C: $7E
    pop hl                                        ; $460D: $E1
    ld c, a                                       ; $460E: $4F
    dec c                                         ; $460F: $0D
    cp $13                                        ; $4610: $FE $13
    jr nz, jr_02F_4618                            ; $4612: $20 $04

    ld a, $08                                     ; $4614: $3E $08
    ldh [rNR10], a                                ; $4616: $E0 $10

jr_02F_4618:
    cp $1D                                        ; $4618: $FE $1D
    jr nz, jr_02F_4622                            ; $461A: $20 $06

    inc hl                                        ; $461C: $23
    inc hl                                        ; $461D: $23
    inc hl                                        ; $461E: $23
    ld a, [hl+]                                   ; $461F: $2A
    jr jr_02F_462F                                ; $4620: $18 $0D

jr_02F_4622:
    dec c                                         ; $4622: $0D
    ld a, [hl+]                                   ; $4623: $2A
    ldh [c], a                                    ; $4624: $E2
    inc hl                                        ; $4625: $23
    inc c                                         ; $4626: $0C
    ld a, [hl+]                                   ; $4627: $2A
    and $F0                                       ; $4628: $E6 $F0
    ld b, a                                       ; $462A: $47
    ld a, [hl+]                                   ; $462B: $2A
    and $0F                                       ; $462C: $E6 $0F
    add b                                         ; $462E: $80

jr_02F_462F:
    ldh [c], a                                    ; $462F: $E2
    inc c                                         ; $4630: $0C
    ld a, [hl+]                                   ; $4631: $2A
    ldh [c], a                                    ; $4632: $E2
    inc c                                         ; $4633: $0C
    push hl                                       ; $4634: $E5
    ld hl, $0001                                  ; $4635: $21 $01 $00
    add hl, de                                    ; $4638: $19
    ld a, [hl]                                    ; $4639: $7E
    pop hl                                        ; $463A: $E1
    cp $1D                                        ; $463B: $FE $1D
    jr z, jr_02F_465B                             ; $463D: $28 $1C

    ld a, [hl+]                                   ; $463F: $2A
    or $80                                        ; $4640: $F6 $80
    ldh [c], a                                    ; $4642: $E2
    ld a, [$D482]                                 ; $4643: $FA $82 $D4
    ldh [rNR51], a                                ; $4646: $E0 $25

jr_02F_4648:
    ld hl, $0001                                  ; $4648: $21 $01 $00
    add hl, de                                    ; $464B: $19
    ld a, [hl]                                    ; $464C: $7E
    dec a                                         ; $464D: $3D
    ld c, a                                       ; $464E: $4F
    xor a                                         ; $464F: $AF
    ldh [c], a                                    ; $4650: $E2
    ldh a, [$FFF0]                                ; $4651: $F0 $F0
    ld l, a                                       ; $4653: $6F
    ldh a, [$FFF1]                                ; $4654: $F0 $F1
    ld h, a                                       ; $4656: $67
    xor a                                         ; $4657: $AF
    ld [hl], a                                    ; $4658: $77
    pop hl                                        ; $4659: $E1
    ret                                           ; $465A: $C9


jr_02F_465B:
    ld a, [$D483]                                 ; $465B: $FA $83 $D4
    or a                                          ; $465E: $B7
    ld a, [hl+]                                   ; $465F: $2A
    cp $FF                                        ; $4660: $FE $FF
    jr z, jr_02F_4666                             ; $4662: $28 $02

    or $40                                        ; $4664: $F6 $40

jr_02F_4666:
    ldh [c], a                                    ; $4666: $E2
    inc hl                                        ; $4667: $23
    call Call_02F_45B8                            ; $4668: $CD $B8 $45
    pop hl                                        ; $466B: $E1
    ret                                           ; $466C: $C9


Call_02F_466D:
Jump_02F_466D:
    inc [hl]                                      ; $466D: $34
    ld a, [hl]                                    ; $466E: $7E
    and $0F                                       ; $466F: $E6 $0F
    ld c, a                                       ; $4671: $4F
    ld a, [de]                                    ; $4672: $1A
    and $0F                                       ; $4673: $E6 $0F
    cp c                                          ; $4675: $B9
    ret nz                                        ; $4676: $C0

    bit 3, a                                      ; $4677: $CB $5F
    jr z, jr_02F_4683                             ; $4679: $28 $08

    ld a, [hl]                                    ; $467B: $7E
    and $F0                                       ; $467C: $E6 $F0
    add $10                                       ; $467E: $C6 $10
    ret c                                         ; $4680: $D8

    ld [hl], a                                    ; $4681: $77
    ret                                           ; $4682: $C9


jr_02F_4683:
    ld a, [hl]                                    ; $4683: $7E
    and $F0                                       ; $4684: $E6 $F0
    ret z                                         ; $4686: $C8

    sub $10                                       ; $4687: $D6 $10
    ld [hl], a                                    ; $4689: $77
    ret                                           ; $468A: $C9


Call_02F_468B:
    ld hl, $0001                                  ; $468B: $21 $01 $00
    add hl, de                                    ; $468E: $19
    ld a, [hl]                                    ; $468F: $7E
    dec a                                         ; $4690: $3D
    ld c, a                                       ; $4691: $4F
    xor a                                         ; $4692: $AF
    ld hl, $0000                                  ; $4693: $21 $00 $00
    add hl, de                                    ; $4696: $19
    bit 2, [hl]                                   ; $4697: $CB $56
    ret nz                                        ; $4699: $C0

    ldh [c], a                                    ; $469A: $E2
    ret                                           ; $469B: $C9


Call_02F_469C:
Jump_02F_469C:
    ld hl, $0000                                  ; $469C: $21 $00 $00
    add hl, de                                    ; $469F: $19
    bit 2, [hl]                                   ; $46A0: $CB $56
    ret nz                                        ; $46A2: $C0

    ldh [c], a                                    ; $46A3: $E2
    ret                                           ; $46A4: $C9


Call_02F_46A5:
    ld a, [de]                                    ; $46A5: $1A
    or a                                          ; $46A6: $B7
    jr z, jr_02F_46AC                             ; $46A7: $28 $03

    set 2, [hl]                                   ; $46A9: $CB $D6
    ret                                           ; $46AB: $C9


jr_02F_46AC:
    res 2, [hl]                                   ; $46AC: $CB $96
    ret                                           ; $46AE: $C9


Call_02F_46AF:
    dec a                                         ; $46AF: $3D
    ld c, a                                       ; $46B0: $4F
    ld b, $00                                     ; $46B1: $06 $00
    add hl, bc                                    ; $46B3: $09
    add hl, bc                                    ; $46B4: $09
    ld a, [hl+]                                   ; $46B5: $2A
    ld h, [hl]                                    ; $46B6: $66
    ld l, a                                       ; $46B7: $6F
    ret                                           ; $46B8: $C9


    ld a, $80                                     ; $46B9: $3E $80
    ldh [rNR52], a                                ; $46BB: $E0 $26
    ld hl, $4711                                  ; $46BD: $21 $11 $47
    ld b, $12                                     ; $46C0: $06 $12
    xor a                                         ; $46C2: $AF

jr_02F_46C3:
    ld c, [hl]                                    ; $46C3: $4E
    ldh [c], a                                    ; $46C4: $E2
    inc hl                                        ; $46C5: $23
    dec b                                         ; $46C6: $05
    jr nz, jr_02F_46C3                            ; $46C7: $20 $FA

Call_02F_46C9:
Jump_02F_46C9:
    ld hl, $D4A6                                  ; $46C9: $21 $A6 $D4
    xor a                                         ; $46CC: $AF
    ld c, $09                                     ; $46CD: $0E $09

jr_02F_46CF:
    ld b, $20                                     ; $46CF: $06 $20

jr_02F_46D1:
    ld [hl+], a                                   ; $46D1: $22
    dec b                                         ; $46D2: $05
    jr nz, jr_02F_46D1                            ; $46D3: $20 $FC

    dec c                                         ; $46D5: $0D
    jr nz, jr_02F_46CF                            ; $46D6: $20 $F7

    ld a, $77                                     ; $46D8: $3E $77
    ldh [rNR50], a                                ; $46DA: $E0 $24
    xor a                                         ; $46DC: $AF
    ld [$D481], a                                 ; $46DD: $EA $81 $D4

Call_02F_46E0:
    ld a, $08                                     ; $46E0: $3E $08
    ldh [rNR10], a                                ; $46E2: $E0 $10
    xor a                                         ; $46E4: $AF
    ldh [rNR30], a                                ; $46E5: $E0 $1A
    ldh [rNR51], a                                ; $46E7: $E0 $25
    ld a, $80                                     ; $46E9: $3E $80
    ld [$D480], a                                 ; $46EB: $EA $80 $D4
    ret                                           ; $46EE: $C9


    ld a, $FF                                     ; $46EF: $3E $FF
    ldh [rNR51], a                                ; $46F1: $E0 $25
    ld a, $80                                     ; $46F3: $3E $80
    ldh [rNR11], a                                ; $46F5: $E0 $11
    ld a, $F7                                     ; $46F7: $3E $F7
    ldh [rNR12], a                                ; $46F9: $E0 $12
    ld a, $D6                                     ; $46FB: $3E $D6
    ldh [rNR13], a                                ; $46FD: $E0 $13
    ld a, $86                                     ; $46FF: $3E $86
    ldh [rNR14], a                                ; $4701: $E0 $14
    ret                                           ; $4703: $C9


    ld a, $F7                                     ; $4704: $3E $F7
    ldh [rNR22], a                                ; $4706: $E0 $17
    ld a, $14                                     ; $4708: $3E $14
    ldh [rNR23], a                                ; $470A: $E0 $18
    ld a, $87                                     ; $470C: $3E $87
    ldh [rNR24], a                                ; $470E: $E0 $19
    ret                                           ; $4710: $C9


    db $10                                        ; $4711: $10
    ld de, $1312                                  ; $4712: $11 $12 $13
    inc d                                         ; $4715: $14
    ld d, $17                                     ; $4716: $16 $17
    jr jr_02F_4733                                ; $4718: $18 $19

    ld a, [de]                                    ; $471A: $1A
    dec de                                        ; $471B: $1B
    inc e                                         ; $471C: $1C
    dec e                                         ; $471D: $1D
    ld e, $20                                     ; $471E: $1E $20
    ld hl, $2322                                  ; $4720: $21 $22 $23
    ld l, a                                       ; $4723: $6F
    ld c, l                                       ; $4724: $4D
    ld l, a                                       ; $4725: $6F
    ld c, l                                       ; $4726: $4D
    ld l, a                                       ; $4727: $6F
    ld c, l                                       ; $4728: $4D
    ld l, a                                       ; $4729: $6F
    ld c, l                                       ; $472A: $4D
    ld l, a                                       ; $472B: $6F
    ld c, l                                       ; $472C: $4D
    ld l, a                                       ; $472D: $6F
    ld c, l                                       ; $472E: $4D
    ld l, a                                       ; $472F: $6F
    ld c, l                                       ; $4730: $4D
    ld l, a                                       ; $4731: $6F
    ld c, l                                       ; $4732: $4D

jr_02F_4733:
    ld l, a                                       ; $4733: $6F
    ld c, l                                       ; $4734: $4D
    ld l, a                                       ; $4735: $6F
    ld c, l                                       ; $4736: $4D
    ld l, a                                       ; $4737: $6F
    ld c, l                                       ; $4738: $4D
    jp Jump_000_0F52                              ; $4739: $C3 $52 $0F


    ld d, [hl]                                    ; $473C: $56
    sub c                                         ; $473D: $91
    ld e, d                                       ; $473E: $5A
    jr nc, jr_02F_47A2                            ; $473F: $30 $61

    rst RST_38                                    ; $4741: $FF
    ld h, e                                       ; $4742: $63
    adc c                                         ; $4743: $89
    ld h, l                                       ; $4744: $65
    add [hl]                                      ; $4745: $86
    ld h, a                                       ; $4746: $67
    adc e                                         ; $4747: $8B
    ld l, c                                       ; $4748: $69
    ld [hl], b                                    ; $4749: $70
    ld l, h                                       ; $474A: $6C
    ld b, c                                       ; $474B: $41
    ld l, [hl]                                    ; $474C: $6E
    sub a                                         ; $474D: $97
    ld [hl], h                                    ; $474E: $74
    ld b, b                                       ; $474F: $40
    ld [hl], a                                    ; $4750: $77
    ld l, a                                       ; $4751: $6F
    ld c, l                                       ; $4752: $4D
    ld l, a                                       ; $4753: $6F
    ld c, l                                       ; $4754: $4D
    ld l, a                                       ; $4755: $6F
    ld c, l                                       ; $4756: $4D
    ld l, a                                       ; $4757: $6F
    ld c, l                                       ; $4758: $4D
    ld l, a                                       ; $4759: $6F
    ld c, l                                       ; $475A: $4D
    ld l, a                                       ; $475B: $6F
    ld c, l                                       ; $475C: $4D
    ld l, a                                       ; $475D: $6F
    ld c, l                                       ; $475E: $4D
    ld l, a                                       ; $475F: $6F
    ld c, l                                       ; $4760: $4D
    ld l, a                                       ; $4761: $6F
    ld c, l                                       ; $4762: $4D
    ld l, a                                       ; $4763: $6F
    ld c, l                                       ; $4764: $4D
    ld l, a                                       ; $4765: $6F
    ld c, l                                       ; $4766: $4D
    ld l, a                                       ; $4767: $6F
    ld c, l                                       ; $4768: $4D
    ld l, a                                       ; $4769: $6F
    ld c, l                                       ; $476A: $4D
    ld l, a                                       ; $476B: $6F
    ld c, l                                       ; $476C: $4D
    ld l, a                                       ; $476D: $6F
    ld c, l                                       ; $476E: $4D
    ld l, a                                       ; $476F: $6F
    ld c, l                                       ; $4770: $4D
    ld l, a                                       ; $4771: $6F
    ld c, l                                       ; $4772: $4D
    ld c, b                                       ; $4773: $48
    ld c, l                                       ; $4774: $4D
    ld e, e                                       ; $4775: $5B
    ld c, l                                       ; $4776: $4D
    ld d, b                                       ; $4777: $50
    ld c, c                                       ; $4778: $49
    ld [hl], l                                    ; $4779: $75
    ld c, c                                       ; $477A: $49
    xor l                                         ; $477B: $AD
    ld c, c                                       ; $477C: $49
    dec b                                         ; $477D: $05
    ld c, d                                       ; $477E: $4A
    ld b, a                                       ; $477F: $47
    ld c, d                                       ; $4780: $4A
    ld h, l                                       ; $4781: $65
    ld c, d                                       ; $4782: $4A
    add e                                         ; $4783: $83
    ld c, d                                       ; $4784: $4A
    sbc d                                         ; $4785: $9A
    ld c, d                                       ; $4786: $4A
    or d                                          ; $4787: $B2
    ld c, d                                       ; $4788: $4A
    call nz, $EE4A                                ; $4789: $C4 $4A $EE
    ld c, d                                       ; $478C: $4A
    ld c, $4B                                     ; $478D: $0E $4B
    ld [hl+], a                                   ; $478F: $22
    ld c, e                                       ; $4790: $4B
    ld c, l                                       ; $4791: $4D
    ld c, e                                       ; $4792: $4B
    ld h, [hl]                                    ; $4793: $66
    ld c, e                                       ; $4794: $4B
    add b                                         ; $4795: $80
    ld c, e                                       ; $4796: $4B
    sub d                                         ; $4797: $92
    ld c, e                                       ; $4798: $4B
    cp b                                          ; $4799: $B8
    ld c, e                                       ; $479A: $4B
    add $4B                                       ; $479B: $C6 $4B
    db $EC                                        ; $479D: $EC
    ld c, e                                       ; $479E: $4B
    ld b, b                                       ; $479F: $40
    ld c, h                                       ; $47A0: $4C
    ld e, b                                       ; $47A1: $58

jr_02F_47A2:
    ld c, h                                       ; $47A2: $4C
    adc l                                         ; $47A3: $8D
    ld c, h                                       ; $47A4: $4C
    xor [hl]                                      ; $47A5: $AE
    ld c, h                                       ; $47A6: $4C
    cp [hl]                                       ; $47A7: $BE
    ld c, h                                       ; $47A8: $4C
    rst RST_10                                    ; $47A9: $D7
    ld c, h                                       ; $47AA: $4C
    ld [$FC4C], a                                 ; $47AB: $EA $4C $FC
    ld c, h                                       ; $47AE: $4C
    ld d, b                                       ; $47AF: $50
    ld c, c                                       ; $47B0: $49
    ld d, b                                       ; $47B1: $50
    ld c, c                                       ; $47B2: $49
    ld d, b                                       ; $47B3: $50
    ld c, c                                       ; $47B4: $49
    ld d, b                                       ; $47B5: $50
    ld c, c                                       ; $47B6: $49
    ld d, b                                       ; $47B7: $50
    ld c, c                                       ; $47B8: $49
    ld d, b                                       ; $47B9: $50
    ld c, c                                       ; $47BA: $49
    ld d, b                                       ; $47BB: $50
    ld c, c                                       ; $47BC: $49
    ld d, b                                       ; $47BD: $50
    ld c, c                                       ; $47BE: $49
    ld d, b                                       ; $47BF: $50
    ld c, c                                       ; $47C0: $49
    ld d, b                                       ; $47C1: $50
    ld c, c                                       ; $47C2: $49
    ld d, b                                       ; $47C3: $50
    ld c, c                                       ; $47C4: $49
    ld d, b                                       ; $47C5: $50
    ld c, c                                       ; $47C6: $49
    ld d, b                                       ; $47C7: $50
    ld c, c                                       ; $47C8: $49
    ld d, b                                       ; $47C9: $50
    ld c, c                                       ; $47CA: $49
    ld d, b                                       ; $47CB: $50
    ld c, c                                       ; $47CC: $49
    ld d, b                                       ; $47CD: $50
    ld c, c                                       ; $47CE: $49
    ld d, b                                       ; $47CF: $50
    ld c, c                                       ; $47D0: $49
    ld d, b                                       ; $47D1: $50
    ld c, c                                       ; $47D2: $49
    ld d, b                                       ; $47D3: $50
    ld c, c                                       ; $47D4: $49
    ld d, b                                       ; $47D5: $50
    ld c, c                                       ; $47D6: $49
    ld d, b                                       ; $47D7: $50
    ld c, c                                       ; $47D8: $49
    ld d, b                                       ; $47D9: $50
    ld c, c                                       ; $47DA: $49
    ld d, b                                       ; $47DB: $50
    ld c, c                                       ; $47DC: $49
    ld d, b                                       ; $47DD: $50
    ld c, c                                       ; $47DE: $49
    ld d, b                                       ; $47DF: $50
    ld c, c                                       ; $47E0: $49
    ld d, b                                       ; $47E1: $50
    ld c, c                                       ; $47E2: $49
    nop                                           ; $47E3: $00
    nop                                           ; $47E4: $00
    inc l                                         ; $47E5: $2C
    nop                                           ; $47E6: $00
    sbc h                                         ; $47E7: $9C
    nop                                           ; $47E8: $00
    ld b, $01                                     ; $47E9: $06 $01
    ld l, e                                       ; $47EB: $6B
    ld bc, $01C9                                  ; $47EC: $01 $C9 $01
    inc hl                                        ; $47EF: $23
    ld [bc], a                                    ; $47F0: $02
    ld [hl], a                                    ; $47F1: $77
    ld [bc], a                                    ; $47F2: $02
    rst RST_00                                    ; $47F3: $C7
    ld [bc], a                                    ; $47F4: $02
    ld [de], a                                    ; $47F5: $12
    inc bc                                        ; $47F6: $03
    ld e, b                                       ; $47F7: $58
    inc bc                                        ; $47F8: $03
    sbc e                                         ; $47F9: $9B
    inc bc                                        ; $47FA: $03
    jp c, $1603                                   ; $47FB: $DA $03 $16

    inc b                                         ; $47FE: $04
    ld c, [hl]                                    ; $47FF: $4E
    inc b                                         ; $4800: $04
    add e                                         ; $4801: $83
    inc b                                         ; $4802: $04
    or l                                          ; $4803: $B5
    inc b                                         ; $4804: $04
    push hl                                       ; $4805: $E5
    inc b                                         ; $4806: $04
    ld de, $3C05                                  ; $4807: $11 $05 $3C
    dec b                                         ; $480A: $05
    ld h, e                                       ; $480B: $63
    dec b                                         ; $480C: $05
    adc c                                         ; $480D: $89
    dec b                                         ; $480E: $05
    xor h                                         ; $480F: $AC
    dec b                                         ; $4810: $05
    adc $05                                       ; $4811: $CE $05
    db $ED                                        ; $4813: $ED
    dec b                                         ; $4814: $05
    dec bc                                        ; $4815: $0B
    ld b, $28                                     ; $4816: $06 $28
    ld b, $42                                     ; $4818: $06 $42
    ld b, $5B                                     ; $481A: $06 $5B
    ld b, $72                                     ; $481C: $06 $72
    ld b, $89                                     ; $481E: $06 $89
    ld b, $9E                                     ; $4820: $06 $9E
    ld b, $B2                                     ; $4822: $06 $B2
    ld b, $C4                                     ; $4824: $06 $C4
    ld b, $D6                                     ; $4826: $06 $D6
    ld b, $E7                                     ; $4828: $06 $E7
    ld b, $F7                                     ; $482A: $06 $F7
    ld b, $05                                     ; $482C: $06 $05
    rlca                                          ; $482E: $07
    inc d                                         ; $482F: $14
    rlca                                          ; $4830: $07
    ld hl, $2D07                                  ; $4831: $21 $07 $2D
    rlca                                          ; $4834: $07
    add hl, sp                                    ; $4835: $39
    rlca                                          ; $4836: $07
    ld b, h                                       ; $4837: $44
    rlca                                          ; $4838: $07
    ld c, a                                       ; $4839: $4F
    rlca                                          ; $483A: $07
    ld e, c                                       ; $483B: $59
    rlca                                          ; $483C: $07
    ld h, d                                       ; $483D: $62
    rlca                                          ; $483E: $07
    ld l, e                                       ; $483F: $6B
    rlca                                          ; $4840: $07
    ld [hl], e                                    ; $4841: $73
    rlca                                          ; $4842: $07
    ld a, e                                       ; $4843: $7B
    rlca                                          ; $4844: $07
    add e                                         ; $4845: $83
    rlca                                          ; $4846: $07
    adc d                                         ; $4847: $8A
    rlca                                          ; $4848: $07
    sub b                                         ; $4849: $90
    rlca                                          ; $484A: $07
    sub a                                         ; $484B: $97
    rlca                                          ; $484C: $07
    sbc l                                         ; $484D: $9D
    rlca                                          ; $484E: $07
    and d                                         ; $484F: $A2
    rlca                                          ; $4850: $07
    and a                                         ; $4851: $A7
    rlca                                          ; $4852: $07
    xor h                                         ; $4853: $AC
    rlca                                          ; $4854: $07
    or c                                          ; $4855: $B1
    rlca                                          ; $4856: $07
    or [hl]                                       ; $4857: $B6
    rlca                                          ; $4858: $07
    cp d                                          ; $4859: $BA
    rlca                                          ; $485A: $07
    cp [hl]                                       ; $485B: $BE
    rlca                                          ; $485C: $07
    pop bc                                        ; $485D: $C1
    rlca                                          ; $485E: $07
    push bc                                       ; $485F: $C5
    rlca                                          ; $4860: $07
    ret z                                         ; $4861: $C8

    rlca                                          ; $4862: $07
    rlc a                                         ; $4863: $CB $07
    adc $07                                       ; $4865: $CE $07
    pop de                                        ; $4867: $D1
    rlca                                          ; $4868: $07
    call nc, $D607                                ; $4869: $D4 $07 $D6
    rlca                                          ; $486C: $07
    reti                                          ; $486D: $D9


    rlca                                          ; $486E: $07
    db $DB                                        ; $486F: $DB
    rlca                                          ; $4870: $07
    db $DD                                        ; $4871: $DD
    rlca                                          ; $4872: $07
    rst RST_18                                    ; $4873: $DF
    rlca                                          ; $4874: $07
    pop hl                                        ; $4875: $E1
    rlca                                          ; $4876: $07
    adc e                                         ; $4877: $8B
    ld c, b                                       ; $4878: $48
    sbc e                                         ; $4879: $9B
    ld c, b                                       ; $487A: $48
    xor e                                         ; $487B: $AB
    ld c, b                                       ; $487C: $48
    cp e                                          ; $487D: $BB
    ld c, b                                       ; $487E: $48
    bit 1, b                                      ; $487F: $CB $48
    db $DB                                        ; $4881: $DB
    ld c, b                                       ; $4882: $48
    db $EB                                        ; $4883: $EB
    ld c, b                                       ; $4884: $48
    ei                                            ; $4885: $FB
    ld c, b                                       ; $4886: $48
    dec bc                                        ; $4887: $0B
    ld c, c                                       ; $4888: $49
    dec de                                        ; $4889: $1B
    ld c, c                                       ; $488A: $49
    ld bc, $4523                                  ; $488B: $01 $23 $45
    ld h, a                                       ; $488E: $67
    adc c                                         ; $488F: $89
    xor e                                         ; $4890: $AB
    call $EDEF                                    ; $4891: $CD $EF $ED
    res 5, c                                      ; $4894: $CB $A9
    add a                                         ; $4896: $87
    ld h, l                                       ; $4897: $65
    ld b, e                                       ; $4898: $43
    ld hl, $FF00                                  ; $4899: $21 $00 $FF
    xor $DD                                       ; $489C: $EE $DD
    call z, $AABB                                 ; $489E: $CC $BB $AA
    sbc c                                         ; $48A1: $99
    adc b                                         ; $48A2: $88
    ld [hl], a                                    ; $48A3: $77
    ld h, [hl]                                    ; $48A4: $66
    ld d, l                                       ; $48A5: $55
    ld b, h                                       ; $48A6: $44
    inc sp                                        ; $48A7: $33
    ld [hl+], a                                   ; $48A8: $22
    ld de, $FF00                                  ; $48A9: $11 $00 $FF
    rst RST_38                                    ; $48AC: $FF
    rst RST_38                                    ; $48AD: $FF
    rst RST_38                                    ; $48AE: $FF
    rst RST_38                                    ; $48AF: $FF
    rst RST_38                                    ; $48B0: $FF
    rst RST_38                                    ; $48B1: $FF
    rst RST_38                                    ; $48B2: $FF
    nop                                           ; $48B3: $00
    nop                                           ; $48B4: $00
    nop                                           ; $48B5: $00
    nop                                           ; $48B6: $00
    nop                                           ; $48B7: $00
    nop                                           ; $48B8: $00
    nop                                           ; $48B9: $00
    nop                                           ; $48BA: $00
    rst RST_38                                    ; $48BB: $FF
    rst RST_38                                    ; $48BC: $FF
    rst RST_38                                    ; $48BD: $FF
    rst RST_38                                    ; $48BE: $FF
    nop                                           ; $48BF: $00
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
    ld [bc], a                                    ; $48CB: $02
    ld b, [hl]                                    ; $48CC: $46
    adc c                                         ; $48CD: $89
    xor e                                         ; $48CE: $AB
    call z, $EEDD                                 ; $48CF: $CC $DD $EE
    rst RST_38                                    ; $48D2: $FF
    cp $ED                                        ; $48D3: $FE $ED
    db $DD                                        ; $48D5: $DD
    call z, $98BA                                 ; $48D6: $CC $BA $98
    ld h, h                                       ; $48D9: $64
    ld sp, $AFCF                                  ; $48DA: $31 $CF $AF
    jr nc, jr_02F_48F1                            ; $48DD: $30 $12

    ld hl, $7F01                                  ; $48DF: $21 $01 $7F
    jp nz, $07EA                                  ; $48E2: $C2 $EA $07

    db $FC                                        ; $48E5: $FC
    ld h, d                                       ; $48E6: $62
    ld [de], a                                    ; $48E7: $12
    ld e, e                                       ; $48E8: $5B
    ei                                            ; $48E9: $FB
    ld [de], a                                    ; $48EA: $12
    add [hl]                                      ; $48EB: $86
    inc sp                                        ; $48EC: $33
    ld [hl+], a                                   ; $48ED: $22
    ld de, $0B00                                  ; $48EE: $11 $00 $0B

jr_02F_48F1:
    rst RST_28                                    ; $48F1: $EF
    rst RST_38                                    ; $48F2: $FF
    rst RST_38                                    ; $48F3: $FF
    rst RST_38                                    ; $48F4: $FF
    rst RST_38                                    ; $48F5: $FF
    rst RST_38                                    ; $48F6: $FF
    rst RST_38                                    ; $48F7: $FF
    rst RST_38                                    ; $48F8: $FF
    rst RST_38                                    ; $48F9: $FF
    xor $87                                       ; $48FA: $EE $87
    halt                                          ; $48FC: $76
    ld h, l                                       ; $48FD: $65
    ld d, h                                       ; $48FE: $54

jr_02F_48FF:
    ld b, e                                       ; $48FF: $43
    ld [hl-], a                                   ; $4900: $32
    ld hl, $0F10                                  ; $4901: $21 $10 $0F
    cp $ED                                        ; $4904: $FE $ED
    call c, $BACB                                 ; $4906: $DC $CB $BA
    xor c                                         ; $4909: $A9
    sbc b                                         ; $490A: $98
    jr jr_02F_48FF                                ; $490B: $18 $F2

    ld l, b                                       ; $490D: $68
    ld c, [hl]                                    ; $490E: $4E
    jr jr_02F_4987                                ; $490F: $18 $76

    ld a, [de]                                    ; $4911: $1A
    ld c, h                                       ; $4912: $4C
    add l                                         ; $4913: $85
    ld b, e                                       ; $4914: $43
    ld l, $DC                                     ; $4915: $2E $DC
    rst RST_38                                    ; $4917: $FF
    ld [de], a                                    ; $4918: $12
    add h                                         ; $4919: $84
    ld c, b                                       ; $491A: $48
    call z, $936B                                 ; $491B: $CC $6B $93
    ld [hl], a                                    ; $491E: $77
    jr z, @-$44                                   ; $491F: $28 $BA

    ld l, [hl]                                    ; $4921: $6E
    dec [hl]                                      ; $4922: $35
    ld d, c                                       ; $4923: $51
    jp $ED9C                                      ; $4924: $C3 $9C $ED


    cp b                                          ; $4927: $B8
    dec hl                                        ; $4928: $2B
    add hl, hl                                    ; $4929: $29
    ldh [c], a                                    ; $492A: $E2
    nop                                           ; $492B: $00
    nop                                           ; $492C: $00
    nop                                           ; $492D: $00
    nop                                           ; $492E: $00
    nop                                           ; $492F: $00
    nop                                           ; $4930: $00
    jr z, jr_02F_4987                             ; $4931: $28 $54

    ld [hl], d                                    ; $4933: $72
    ld h, b                                       ; $4934: $60
    jr nc, jr_02F_4937                            ; $4935: $30 $00

jr_02F_4937:
    jr z, jr_02F_498D                             ; $4937: $28 $54

    ld a, a                                       ; $4939: $7F
    ld h, b                                       ; $493A: $60
    jr nc, jr_02F_493D                            ; $493B: $30 $00

jr_02F_493D:
    jr z, jr_02F_4993                             ; $493D: $28 $54

    ld [hl], l                                    ; $493F: $75
    ld h, b                                       ; $4940: $60
    jr nc, jr_02F_4943                            ; $4941: $30 $00

jr_02F_4943:
    jr z, jr_02F_4999                             ; $4943: $28 $54

    ld [hl], a                                    ; $4945: $77
    ld h, b                                       ; $4946: $60
    jr nc, jr_02F_4949                            ; $4947: $30 $00

jr_02F_4949:
    jr z, jr_02F_499F                             ; $4949: $28 $54

    ld a, h                                       ; $494B: $7C
    ld h, b                                       ; $494C: $60
    jr nc, jr_02F_494F                            ; $494D: $30 $00

jr_02F_494F:
    add b                                         ; $494F: $80
    ld bc, $1888                                  ; $4950: $01 $88 $18
    ld d, a                                       ; $4953: $57
    ld c, c                                       ; $4954: $49
    inc c                                         ; $4955: $0C
    add c                                         ; $4956: $81
    db $E4                                        ; $4957: $E4
    jp Jump_000_22E9                              ; $4958: $C3 $E9 $22


    xor $C0                                       ; $495B: $EE $C0
    and d                                         ; $495D: $A2
    ld [bc], a                                    ; $495E: $02
    and l                                         ; $495F: $A5
    xor c                                         ; $4960: $A9
    xor h                                         ; $4961: $AC
    db $E4                                        ; $4962: $E4
    ld [hl], e                                    ; $4963: $73
    and d                                         ; $4964: $A2
    and l                                         ; $4965: $A5
    xor c                                         ; $4966: $A9
    xor h                                         ; $4967: $AC
    db $E4                                        ; $4968: $E4
    ld b, e                                       ; $4969: $43
    and d                                         ; $496A: $A2
    and l                                         ; $496B: $A5
    xor c                                         ; $496C: $A9
    xor h                                         ; $496D: $AC
    db $E4                                        ; $496E: $E4
    inc hl                                        ; $496F: $23
    and d                                         ; $4970: $A2
    and l                                         ; $4971: $A5
    xor c                                         ; $4972: $A9
    xor h                                         ; $4973: $AC
    db $E3                                        ; $4974: $E3
    ld bc, $1888                                  ; $4975: $01 $88 $18
    ld a, h                                       ; $4978: $7C
    ld c, c                                       ; $4979: $49
    nop                                           ; $497A: $00
    add c                                         ; $497B: $81
    db $E4                                        ; $497C: $E4
    ldh a, [c]                                    ; $497D: $F2
    jp hl                                         ; $497E: $E9


    ld [hl+], a                                   ; $497F: $22
    xor $C0                                       ; $4980: $EE $C0
    sbc l                                         ; $4982: $9D
    ld [bc], a                                    ; $4983: $02
    and l                                         ; $4984: $A5
    and b                                         ; $4985: $A0
    xor c                                         ; $4986: $A9

jr_02F_4987:
    and l                                         ; $4987: $A5
    xor h                                         ; $4988: $AC
    xor c                                         ; $4989: $A9
    or c                                          ; $498A: $B1
    db $E4                                        ; $498B: $E4
    sub d                                         ; $498C: $92

jr_02F_498D:
    sbc l                                         ; $498D: $9D
    ld [bc], a                                    ; $498E: $02
    and l                                         ; $498F: $A5
    and b                                         ; $4990: $A0
    xor c                                         ; $4991: $A9
    and l                                         ; $4992: $A5

jr_02F_4993:
    xor h                                         ; $4993: $AC
    xor c                                         ; $4994: $A9
    or c                                          ; $4995: $B1
    db $E4                                        ; $4996: $E4
    ld d, d                                       ; $4997: $52
    sbc l                                         ; $4998: $9D

jr_02F_4999:
    ld [bc], a                                    ; $4999: $02
    and l                                         ; $499A: $A5
    and b                                         ; $499B: $A0
    xor c                                         ; $499C: $A9
    and l                                         ; $499D: $A5
    xor h                                         ; $499E: $AC

jr_02F_499F:
    xor c                                         ; $499F: $A9
    or c                                          ; $49A0: $B1
    db $E4                                        ; $49A1: $E4
    ld [hl+], a                                   ; $49A2: $22
    sbc l                                         ; $49A3: $9D
    ld [bc], a                                    ; $49A4: $02
    and l                                         ; $49A5: $A5
    and b                                         ; $49A6: $A0
    xor c                                         ; $49A7: $A9
    and l                                         ; $49A8: $A5
    xor h                                         ; $49A9: $AC
    xor c                                         ; $49AA: $A9
    or c                                          ; $49AB: $B1
    db $E3                                        ; $49AC: $E3
    ld bc, $1888                                  ; $49AD: $01 $88 $18
    or h                                          ; $49B0: $B4
    ld c, c                                       ; $49B1: $49
    inc c                                         ; $49B2: $0C
    add c                                         ; $49B3: $81
    db $E4                                        ; $49B4: $E4
    ld l, d                                       ; $49B5: $6A
    jp hl                                         ; $49B6: $E9


    ld [hl+], a                                   ; $49B7: $22
    xor $00                                       ; $49B8: $EE $00
    db $EC                                        ; $49BA: $EC
    ld a, [$E649]                                 ; $49BB: $FA $49 $E6
    ld bc, $FAEC                                  ; $49BE: $01 $EC $FA
    ld c, c                                       ; $49C1: $49
    and $01                                       ; $49C2: $E6 $01
    db $EC                                        ; $49C4: $EC
    ld a, [$E649]                                 ; $49C5: $FA $49 $E6
    ld bc, $FAEC                                  ; $49C8: $01 $EC $FA
    ld c, c                                       ; $49CB: $49
    and $01                                       ; $49CC: $E6 $01
    db $EC                                        ; $49CE: $EC
    ld a, [$E649]                                 ; $49CF: $FA $49 $E6
    ld bc, $FAEC                                  ; $49D2: $01 $EC $FA
    ld c, c                                       ; $49D5: $49
    and $01                                       ; $49D6: $E6 $01
    db $EC                                        ; $49D8: $EC
    ld a, [$E649]                                 ; $49D9: $FA $49 $E6
    ld bc, $FAEC                                  ; $49DC: $01 $EC $FA
    ld c, c                                       ; $49DF: $49
    and $01                                       ; $49E0: $E6 $01
    db $EC                                        ; $49E2: $EC
    ld a, [$E649]                                 ; $49E3: $FA $49 $E6
    ld bc, $FAEC                                  ; $49E6: $01 $EC $FA
    ld c, c                                       ; $49E9: $49
    and $01                                       ; $49EA: $E6 $01
    db $EC                                        ; $49EC: $EC
    ld a, [$E649]                                 ; $49ED: $FA $49 $E6
    ld bc, $FAEC                                  ; $49F0: $01 $EC $FA
    ld c, c                                       ; $49F3: $49
    and $01                                       ; $49F4: $E6 $01
    db $EC                                        ; $49F6: $EC
    ld a, [$E349]                                 ; $49F7: $FA $49 $E3
    and l                                         ; $49FA: $A5
    ld bc, $A7A6                                  ; $49FB: $01 $A6 $A7
    and [hl]                                      ; $49FE: $A6
    rst RST_20                                    ; $49FF: $E7
    nop                                           ; $4A00: $00
    ld [bc], a                                    ; $4A01: $02
    ld a, [$ED49]                                 ; $4A02: $FA $49 $ED
    inc bc                                        ; $4A05: $03
    adc b                                         ; $4A06: $88
    jr jr_02F_4A21                                ; $4A07: $18 $18

    ld c, d                                       ; $4A09: $4A
    inc c                                         ; $4A0A: $0C
    add c                                         ; $4A0B: $81
    adc b                                         ; $4A0C: $88
    dec e                                         ; $4A0D: $1D
    dec a                                         ; $4A0E: $3D
    ld c, d                                       ; $4A0F: $4A
    nop                                           ; $4A10: $00
    add c                                         ; $4A11: $81
    adc b                                         ; $4A12: $88
    ld [hl+], a                                   ; $4A13: $22
    ld b, b                                       ; $4A14: $40
    ld c, d                                       ; $4A15: $4A
    nop                                           ; $4A16: $00
    add c                                         ; $4A17: $81
    db $E4                                        ; $4A18: $E4
    sub h                                         ; $4A19: $94
    jp hl                                         ; $4A1A: $E9


    ld [hl+], a                                   ; $4A1B: $22
    xor $40                                       ; $4A1C: $EE $40
    add b                                         ; $4A1E: $80
    ld b, $A2                                     ; $4A1F: $06 $A2

jr_02F_4A21:
    ld [bc], a                                    ; $4A21: $02
    xor [hl]                                      ; $4A22: $AE
    ld b, $E4                                     ; $4A23: $06 $E4
    ld [hl], a                                    ; $4A25: $77
    and d                                         ; $4A26: $A2
    ld bc, $05AE                                  ; $4A27: $01 $AE $05
    db $E4                                        ; $4A2A: $E4
    ld d, a                                       ; $4A2B: $57
    and d                                         ; $4A2C: $A2
    ld bc, $05AE                                  ; $4A2D: $01 $AE $05
    db $E4                                        ; $4A30: $E4
    scf                                           ; $4A31: $37
    and d                                         ; $4A32: $A2
    ld bc, $05AE                                  ; $4A33: $01 $AE $05
    db $E4                                        ; $4A36: $E4
    daa                                           ; $4A37: $27
    and d                                         ; $4A38: $A2
    ld bc, $1DAE                                  ; $4A39: $01 $AE $1D
    db $E3                                        ; $4A3C: $E3
    db $E4                                        ; $4A3D: $E4
    ld b, b                                       ; $4A3E: $40
    db $E3                                        ; $4A3F: $E3
    db $E4                                        ; $4A40: $E4
    ldh a, [c]                                    ; $4A41: $F2
    jp hl                                         ; $4A42: $E9


    adc b                                         ; $4A43: $88
    ld [hl], c                                    ; $4A44: $71
    ld b, $E3                                     ; $4A45: $06 $E3
    ld bc, $2288                                  ; $4A47: $01 $88 $22
    ld c, [hl]                                    ; $4A4A: $4E
    ld c, d                                       ; $4A4B: $4A
    nop                                           ; $4A4C: $00
    add c                                         ; $4A4D: $81
    db $E4                                        ; $4A4E: $E4
    ld a, c                                       ; $4A4F: $79
    jp hl                                         ; $4A50: $E9


    adc b                                         ; $4A51: $88
    scf                                           ; $4A52: $37
    ld bc, $36EF                                  ; $4A53: $01 $EF $36
    ld bc, $0135                                  ; $4A56: $01 $35 $01
    inc [hl]                                      ; $4A59: $34
    ld bc, $0133                                  ; $4A5A: $01 $33 $01
    ld [hl-], a                                   ; $4A5D: $32
    ld bc, $0131                                  ; $4A5E: $01 $31 $01
    jr nc, @+$03                                  ; $4A61: $30 $01

    ldh a, [$FFE3]                                ; $4A63: $F0 $E3
    ld bc, $2288                                  ; $4A65: $01 $88 $22
    ld l, h                                       ; $4A68: $6C
    ld c, d                                       ; $4A69: $4A
    nop                                           ; $4A6A: $00
    add c                                         ; $4A6B: $81
    db $E4                                        ; $4A6C: $E4
    add hl, sp                                    ; $4A6D: $39
    jp hl                                         ; $4A6E: $E9


    adc b                                         ; $4A6F: $88
    ld b, a                                       ; $4A70: $47
    ld [bc], a                                    ; $4A71: $02
    rst RST_28                                    ; $4A72: $EF
    ld b, [hl]                                    ; $4A73: $46
    ld [bc], a                                    ; $4A74: $02
    ld b, l                                       ; $4A75: $45
    ld [bc], a                                    ; $4A76: $02
    ld b, h                                       ; $4A77: $44
    ld [bc], a                                    ; $4A78: $02
    ld b, e                                       ; $4A79: $43
    ld [bc], a                                    ; $4A7A: $02
    ld b, d                                       ; $4A7B: $42
    ld [bc], a                                    ; $4A7C: $02
    ld b, c                                       ; $4A7D: $41
    ld [bc], a                                    ; $4A7E: $02
    ld b, b                                       ; $4A7F: $40
    ld [bc], a                                    ; $4A80: $02
    ldh a, [$FFE3]                                ; $4A81: $F0 $E3
    ld bc, $2288                                  ; $4A83: $01 $88 $22
    adc d                                         ; $4A86: $8A
    ld c, d                                       ; $4A87: $4A
    nop                                           ; $4A88: $00
    add c                                         ; $4A89: $81
    db $E4                                        ; $4A8A: $E4
    rst RST_30                                    ; $4A8B: $F7
    jp hl                                         ; $4A8C: $E9


    adc b                                         ; $4A8D: $88
    scf                                           ; $4A8E: $37
    ld bc, $0145                                  ; $4A8F: $01 $45 $01
    scf                                           ; $4A92: $37
    ld bc, $24EF                                  ; $4A93: $01 $EF $24
    ld bc, $0155                                  ; $4A96: $01 $55 $01
    db $E3                                        ; $4A99: $E3
    ld bc, $2288                                  ; $4A9A: $01 $88 $22
    and c                                         ; $4A9D: $A1
    ld c, d                                       ; $4A9E: $4A
    nop                                           ; $4A9F: $00
    add c                                         ; $4AA0: $81
    db $E4                                        ; $4AA1: $E4
    or a                                          ; $4AA2: $B7
    jp hl                                         ; $4AA3: $E9


    adc b                                         ; $4AA4: $88
    daa                                           ; $4AA5: $27
    ld [bc], a                                    ; $4AA6: $02
    ld b, l                                       ; $4AA7: $45
    ld [bc], a                                    ; $4AA8: $02
    rla                                           ; $4AA9: $17
    ld [bc], a                                    ; $4AAA: $02
    rst RST_28                                    ; $4AAB: $EF
    inc d                                         ; $4AAC: $14
    ld [bc], a                                    ; $4AAD: $02
    rla                                           ; $4AAE: $17
    ld [bc], a                                    ; $4AAF: $02
    ldh a, [$FFE3]                                ; $4AB0: $F0 $E3
    ld bc, $2288                                  ; $4AB2: $01 $88 $22
    cp c                                          ; $4AB5: $B9
    ld c, d                                       ; $4AB6: $4A
    nop                                           ; $4AB7: $00
    add c                                         ; $4AB8: $81
    db $E4                                        ; $4AB9: $E4
    ldh a, [c]                                    ; $4ABA: $F2
    jp hl                                         ; $4ABB: $E9


    adc b                                         ; $4ABC: $88
    ld [hl], c                                    ; $4ABD: $71
    dec b                                         ; $4ABE: $05
    nop                                           ; $4ABF: $00
    ld bc, $0635                                  ; $4AC0: $01 $35 $06
    db $E3                                        ; $4AC3: $E3
    ld bc, $2288                                  ; $4AC4: $01 $88 $22
    bit 1, d                                      ; $4AC7: $CB $4A
    nop                                           ; $4AC9: $00
    add c                                         ; $4ACA: $81
    db $E4                                        ; $4ACB: $E4
    ldh a, [c]                                    ; $4ACC: $F2
    jp hl                                         ; $4ACD: $E9


    adc b                                         ; $4ACE: $88
    ld b, b                                       ; $4ACF: $40
    ld bc, $41EF                                  ; $4AD0: $01 $EF $41
    ld bc, $0142                                  ; $4AD3: $01 $42 $01
    ld b, e                                       ; $4AD6: $43
    ld bc, HeaderNewLicenseeCode                  ; $4AD7: $01 $44 $01
    ld b, l                                       ; $4ADA: $45
    ld bc, HeaderSGBFlag                          ; $4ADB: $01 $46 $01
    ld b, a                                       ; $4ADE: $47
    ld bc, $35F0                                  ; $4ADF: $01 $F0 $35
    ld bc, $34EF                                  ; $4AE2: $01 $EF $34
    ld bc, $0133                                  ; $4AE5: $01 $33 $01
    ld [hl-], a                                   ; $4AE8: $32
    ld bc, $0131                                  ; $4AE9: $01 $31 $01
    jr nc, @-$1B                                  ; $4AEC: $30 $E3

    ld bc, $2288                                  ; $4AEE: $01 $88 $22
    push af                                       ; $4AF1: $F5
    ld c, d                                       ; $4AF2: $4A
    nop                                           ; $4AF3: $00
    add c                                         ; $4AF4: $81
    db $E4                                        ; $4AF5: $E4
    rst RST_30                                    ; $4AF6: $F7
    jp hl                                         ; $4AF7: $E9


    adc b                                         ; $4AF8: $88
    ld b, l                                       ; $4AF9: $45
    ld [bc], a                                    ; $4AFA: $02
    daa                                           ; $4AFB: $27
    inc bc                                        ; $4AFC: $03
    dec [hl]                                      ; $4AFD: $35
    ld bc, $0127                                  ; $4AFE: $01 $27 $01
    inc [hl]                                      ; $4B01: $34
    ld bc, $0171                                  ; $4B02: $01 $71 $01
    ld d, h                                       ; $4B05: $54
    ld bc, HeaderCartridgeType                    ; $4B06: $01 $47 $01
    ld h, h                                       ; $4B09: $64
    ld [bc], a                                    ; $4B0A: $02
    ld [hl], c                                    ; $4B0B: $71
    ld h, h                                       ; $4B0C: $64
    db $E3                                        ; $4B0D: $E3
    ld bc, $2288                                  ; $4B0E: $01 $88 $22
    dec d                                         ; $4B11: $15
    ld c, e                                       ; $4B12: $4B
    nop                                           ; $4B13: $00
    add c                                         ; $4B14: $81
    db $E4                                        ; $4B15: $E4
    di                                            ; $4B16: $F3
    jp hl                                         ; $4B17: $E9


    adc b                                         ; $4B18: $88
    ld [hl], $02                                  ; $4B19: $36 $02
    ld [hl], d                                    ; $4B1B: $72
    ld [bc], a                                    ; $4B1C: $02
    ld [hl], $03                                  ; $4B1D: $36 $03
    ld d, a                                       ; $4B1F: $57
    ld a, [bc]                                    ; $4B20: $0A
    db $E3                                        ; $4B21: $E3
    ld bc, $2288                                  ; $4B22: $01 $88 $22
    add hl, hl                                    ; $4B25: $29
    ld c, e                                       ; $4B26: $4B
    nop                                           ; $4B27: $00
    add c                                         ; $4B28: $81
    db $E4                                        ; $4B29: $E4
    add hl, hl                                    ; $4B2A: $29
    jp hl                                         ; $4B2B: $E9


    adc b                                         ; $4B2C: $88
    jr nc, @+$04                                  ; $4B2D: $30 $02

    rst RST_28                                    ; $4B2F: $EF
    ld sp, $3202                                  ; $4B30: $31 $02 $32
    ld [bc], a                                    ; $4B33: $02
    inc sp                                        ; $4B34: $33
    ld [bc], a                                    ; $4B35: $02
    inc [hl]                                      ; $4B36: $34
    ld [bc], a                                    ; $4B37: $02
    dec [hl]                                      ; $4B38: $35
    ld [bc], a                                    ; $4B39: $02
    ld [hl], $02                                  ; $4B3A: $36 $02
    scf                                           ; $4B3C: $37
    ld [bc], a                                    ; $4B3D: $02
    ld [hl], $02                                  ; $4B3E: $36 $02
    dec [hl]                                      ; $4B40: $35
    ld [bc], a                                    ; $4B41: $02
    inc [hl]                                      ; $4B42: $34
    ld [bc], a                                    ; $4B43: $02
    inc sp                                        ; $4B44: $33
    ld [bc], a                                    ; $4B45: $02
    ld [hl-], a                                   ; $4B46: $32
    ld [bc], a                                    ; $4B47: $02
    ld sp, $3002                                  ; $4B48: $31 $02 $30
    ld [bc], a                                    ; $4B4B: $02
    db $E3                                        ; $4B4C: $E3
    ld bc, $2288                                  ; $4B4D: $01 $88 $22
    ld d, h                                       ; $4B50: $54
    ld c, e                                       ; $4B51: $4B
    nop                                           ; $4B52: $00
    add c                                         ; $4B53: $81
    db $E4                                        ; $4B54: $E4
    rst RST_30                                    ; $4B55: $F7
    jp hl                                         ; $4B56: $E9


    adc b                                         ; $4B57: $88
    ld b, a                                       ; $4B58: $47
    ld bc, $0155                                  ; $4B59: $01 $55 $01
    nop                                           ; $4B5C: $00
    ld bc, HeaderCartridgeType                    ; $4B5D: $01 $47 $01
    rst RST_28                                    ; $4B60: $EF
    inc [hl]                                      ; $4B61: $34
    ld bc, $0155                                  ; $4B62: $01 $55 $01
    db $E3                                        ; $4B65: $E3
    ld bc, $2288                                  ; $4B66: $01 $88 $22
    ld l, l                                       ; $4B69: $6D
    ld c, e                                       ; $4B6A: $4B
    nop                                           ; $4B6B: $00
    add c                                         ; $4B6C: $81
    db $E4                                        ; $4B6D: $E4
    and c                                         ; $4B6E: $A1
    jp hl                                         ; $4B6F: $E9


    adc b                                         ; $4B70: $88
    ld d, c                                       ; $4B71: $51
    ld [bc], a                                    ; $4B72: $02
    ld b, l                                       ; $4B73: $45
    ld [bc], a                                    ; $4B74: $02
    nop                                           ; $4B75: $00
    ld [bc], a                                    ; $4B76: $02
    ld b, c                                       ; $4B77: $41
    ld [bc], a                                    ; $4B78: $02
    daa                                           ; $4B79: $27
    ld [bc], a                                    ; $4B7A: $02
    ld [$0001], sp                                ; $4B7B: $08 $01 $00
    ld bc, $01E3                                  ; $4B7E: $01 $E3 $01
    adc b                                         ; $4B81: $88
    ld [hl+], a                                   ; $4B82: $22
    add a                                         ; $4B83: $87
    ld c, e                                       ; $4B84: $4B
    nop                                           ; $4B85: $00
    add c                                         ; $4B86: $81
    db $E4                                        ; $4B87: $E4
    ldh a, [c]                                    ; $4B88: $F2
    jp hl                                         ; $4B89: $E9


    adc b                                         ; $4B8A: $88
    ld h, c                                       ; $4B8B: $61
    inc bc                                        ; $4B8C: $03
    nop                                           ; $4B8D: $00
    ld bc, $0425                                  ; $4B8E: $01 $25 $04
    db $E3                                        ; $4B91: $E3
    ld bc, $2288                                  ; $4B92: $01 $88 $22
    sbc c                                         ; $4B95: $99
    ld c, e                                       ; $4B96: $4B
    nop                                           ; $4B97: $00
    add c                                         ; $4B98: $81
    db $E4                                        ; $4B99: $E4
    rst RST_30                                    ; $4B9A: $F7
    jp hl                                         ; $4B9B: $E9


    adc b                                         ; $4B9C: $88
    ld b, l                                       ; $4B9D: $45
    ld bc, $55EF                                  ; $4B9E: $01 $EF $55
    ld [bc], a                                    ; $4BA1: $02
    ld b, a                                       ; $4BA2: $47
    ld [bc], a                                    ; $4BA3: $02
    ld b, [hl]                                    ; $4BA4: $46
    ld [bc], a                                    ; $4BA5: $02
    ld b, l                                       ; $4BA6: $45
    ld [bc], a                                    ; $4BA7: $02
    ld b, h                                       ; $4BA8: $44
    ld [bc], a                                    ; $4BA9: $02
    ld b, e                                       ; $4BAA: $43
    ld [bc], a                                    ; $4BAB: $02
    ld b, d                                       ; $4BAC: $42
    ld [bc], a                                    ; $4BAD: $02
    ld b, c                                       ; $4BAE: $41
    ld bc, $0140                                  ; $4BAF: $01 $40 $01
    ldh a, [$FFE4]                                ; $4BB2: $F0 $E4
    ldh a, [c]                                    ; $4BB4: $F2
    ld [hl-], a                                   ; $4BB5: $32
    ld e, $E3                                     ; $4BB6: $1E $E3
    ld bc, $2288                                  ; $4BB8: $01 $88 $22
    cp a                                          ; $4BBB: $BF
    ld c, e                                       ; $4BBC: $4B
    nop                                           ; $4BBD: $00
    add c                                         ; $4BBE: $81
    db $E4                                        ; $4BBF: $E4
    dec sp                                        ; $4BC0: $3B
    jp hl                                         ; $4BC1: $E9


    adc b                                         ; $4BC2: $88
    ld d, l                                       ; $4BC3: $55
    ld b, [hl]                                    ; $4BC4: $46
    db $E3                                        ; $4BC5: $E3
    ld bc, $2288                                  ; $4BC6: $01 $88 $22
    call Call_000_004B                            ; $4BC9: $CD $4B $00
    add c                                         ; $4BCC: $81
    db $E4                                        ; $4BCD: $E4
    xor c                                         ; $4BCE: $A9
    jp hl                                         ; $4BCF: $E9


    adc b                                         ; $4BD0: $88
    ld sp, $EF03                                  ; $4BD1: $31 $03 $EF
    ld [hl-], a                                   ; $4BD4: $32
    inc bc                                        ; $4BD5: $03
    inc sp                                        ; $4BD6: $33
    inc bc                                        ; $4BD7: $03
    inc [hl]                                      ; $4BD8: $34
    inc bc                                        ; $4BD9: $03
    dec [hl]                                      ; $4BDA: $35
    inc bc                                        ; $4BDB: $03
    ld [hl], $03                                  ; $4BDC: $36 $03
    scf                                           ; $4BDE: $37
    inc bc                                        ; $4BDF: $03
    ld b, e                                       ; $4BE0: $43
    inc bc                                        ; $4BE1: $03
    ld b, h                                       ; $4BE2: $44
    inc bc                                        ; $4BE3: $03
    ld b, l                                       ; $4BE4: $45
    inc bc                                        ; $4BE5: $03
    ld b, [hl]                                    ; $4BE6: $46
    inc bc                                        ; $4BE7: $03
    ld b, a                                       ; $4BE8: $47
    inc bc                                        ; $4BE9: $03
    ldh a, [$FFE3]                                ; $4BEA: $F0 $E3
    ld bc, $2288                                  ; $4BEC: $01 $88 $22
    di                                            ; $4BEF: $F3
    ld c, e                                       ; $4BF0: $4B
    nop                                           ; $4BF1: $00
    add c                                         ; $4BF2: $81
    db $E4                                        ; $4BF3: $E4
    xor c                                         ; $4BF4: $A9
    jp hl                                         ; $4BF5: $E9


    adc b                                         ; $4BF6: $88
    ld d, a                                       ; $4BF7: $57
    ld [bc], a                                    ; $4BF8: $02
    rst RST_28                                    ; $4BF9: $EF
    ld d, [hl]                                    ; $4BFA: $56
    ld [bc], a                                    ; $4BFB: $02
    ld d, l                                       ; $4BFC: $55
    ld [bc], a                                    ; $4BFD: $02
    ld d, h                                       ; $4BFE: $54
    ld [bc], a                                    ; $4BFF: $02
    ld d, e                                       ; $4C00: $53
    ld [bc], a                                    ; $4C01: $02
    ld b, a                                       ; $4C02: $47
    ld [bc], a                                    ; $4C03: $02
    ld b, [hl]                                    ; $4C04: $46
    ld [bc], a                                    ; $4C05: $02
    ld b, l                                       ; $4C06: $45
    ld [bc], a                                    ; $4C07: $02
    ld b, h                                       ; $4C08: $44
    ld [bc], a                                    ; $4C09: $02
    ld b, e                                       ; $4C0A: $43
    ld [bc], a                                    ; $4C0B: $02
    ld b, d                                       ; $4C0C: $42
    ld [bc], a                                    ; $4C0D: $02
    ld b, c                                       ; $4C0E: $41
    ld [bc], a                                    ; $4C0F: $02
    ldh a, [$FFE4]                                ; $4C10: $F0 $E4
    pop af                                        ; $4C12: $F1
    daa                                           ; $4C13: $27
    ld bc, $0126                                  ; $4C14: $01 $26 $01
    dec h                                         ; $4C17: $25
    ld bc, $0124                                  ; $4C18: $01 $24 $01
    inc hl                                        ; $4C1B: $23
    ld bc, $0122                                  ; $4C1C: $01 $22 $01
    ld hl, $2001                                  ; $4C1F: $21 $01 $20
    ld bc, $0121                                  ; $4C22: $01 $21 $01
    ld [hl+], a                                   ; $4C25: $22
    ld bc, $0123                                  ; $4C26: $01 $23 $01
    inc h                                         ; $4C29: $24
    ld bc, $0125                                  ; $4C2A: $01 $25 $01
    ld h, $01                                     ; $4C2D: $26 $01
    daa                                           ; $4C2F: $27
    ld bc, $0131                                  ; $4C30: $01 $31 $01
    ld [hl-], a                                   ; $4C33: $32
    ld bc, $0133                                  ; $4C34: $01 $33 $01
    inc [hl]                                      ; $4C37: $34
    ld bc, $0135                                  ; $4C38: $01 $35 $01
    ld [hl], $01                                  ; $4C3B: $36 $01
    scf                                           ; $4C3D: $37
    ld bc, $01E3                                  ; $4C3E: $01 $E3 $01
    adc b                                         ; $4C41: $88
    ld [hl+], a                                   ; $4C42: $22
    ld b, a                                       ; $4C43: $47
    ld c, h                                       ; $4C44: $4C
    nop                                           ; $4C45: $00
    add c                                         ; $4C46: $81
    db $E4                                        ; $4C47: $E4
    di                                            ; $4C48: $F3
    jp hl                                         ; $4C49: $E9


    adc b                                         ; $4C4A: $88
    ld [hl], c                                    ; $4C4B: $71
    ld [bc], a                                    ; $4C4C: $02
    ld d, h                                       ; $4C4D: $54
    ld [bc], a                                    ; $4C4E: $02
    inc [hl]                                      ; $4C4F: $34
    ld [bc], a                                    ; $4C50: $02
    ld d, h                                       ; $4C51: $54
    ld [bc], a                                    ; $4C52: $02
    inc [hl]                                      ; $4C53: $34
    dec b                                         ; $4C54: $05
    ld [hl], c                                    ; $4C55: $71
    ld e, $E3                                     ; $4C56: $1E $E3
    ld bc, $2288                                  ; $4C58: $01 $88 $22
    ld e, a                                       ; $4C5B: $5F
    ld c, h                                       ; $4C5C: $4C
    nop                                           ; $4C5D: $00
    add c                                         ; $4C5E: $81
    db $E4                                        ; $4C5F: $E4
    and a                                         ; $4C60: $A7
    jp hl                                         ; $4C61: $E9


    adc b                                         ; $4C62: $88
    ld b, c                                       ; $4C63: $41
    ld bc, $41EF                                  ; $4C64: $01 $EF $41
    ld bc, $0141                                  ; $4C67: $01 $41 $01
    add hl, sp                                    ; $4C6A: $39
    ld bc, $0138                                  ; $4C6B: $01 $38 $01
    scf                                           ; $4C6E: $37
    ld bc, $0136                                  ; $4C6F: $01 $36 $01
    dec [hl]                                      ; $4C72: $35
    ld bc, $41F0                                  ; $4C73: $01 $F0 $41
    ld bc, $41EF                                  ; $4C76: $01 $EF $41
    ld bc, $0141                                  ; $4C79: $01 $41 $01
    add hl, sp                                    ; $4C7C: $39
    ld bc, $0138                                  ; $4C7D: $01 $38 $01
    scf                                           ; $4C80: $37
    ld bc, $0136                                  ; $4C81: $01 $36 $01
    dec [hl]                                      ; $4C84: $35
    ld bc, $E7F0                                  ; $4C85: $01 $F0 $E7
    nop                                           ; $4C88: $00
    inc bc                                        ; $4C89: $03
    ld e, a                                       ; $4C8A: $5F
    ld c, h                                       ; $4C8B: $4C
    db $E3                                        ; $4C8C: $E3
    ld bc, $1888                                  ; $4C8D: $01 $88 $18
    sub h                                         ; $4C90: $94
    ld c, h                                       ; $4C91: $4C
    ld b, $81                                     ; $4C92: $06 $81
    db $E4                                        ; $4C94: $E4
    rrca                                          ; $4C95: $0F
    jp hl                                         ; $4C96: $E9


    ld [hl+], a                                   ; $4C97: $22
    xor $C0                                       ; $4C98: $EE $C0
    adc a                                         ; $4C9A: $8F
    ld bc, $91EF                                  ; $4C9B: $01 $EF $91
    sub d                                         ; $4C9E: $92
    sub h                                         ; $4C9F: $94
    sub [hl]                                      ; $4CA0: $96
    sbc b                                         ; $4CA1: $98
    sbc c                                         ; $4CA2: $99
    sbc e                                         ; $4CA3: $9B
    sbc l                                         ; $4CA4: $9D
    sbc [hl]                                      ; $4CA5: $9E
    and b                                         ; $4CA6: $A0
    and d                                         ; $4CA7: $A2
    and h                                         ; $4CA8: $A4
    and l                                         ; $4CA9: $A5
    and a                                         ; $4CAA: $A7
    push hl                                       ; $4CAB: $E5
    sub h                                         ; $4CAC: $94
    ld c, h                                       ; $4CAD: $4C
    ld bc, $1888                                  ; $4CAE: $01 $88 $18
    or l                                          ; $4CB1: $B5
    ld c, h                                       ; $4CB2: $4C
    inc c                                         ; $4CB3: $0C
    add c                                         ; $4CB4: $81
    db $E4                                        ; $4CB5: $E4
    adc h                                         ; $4CB6: $8C
    jp hl                                         ; $4CB7: $E9


    ld [hl+], a                                   ; $4CB8: $22
    xor $C0                                       ; $4CB9: $EE $C0
    adc d                                         ; $4CBB: $8A
    add hl, de                                    ; $4CBC: $19
    db $E3                                        ; $4CBD: $E3
    ld bc, $2288                                  ; $4CBE: $01 $88 $22
    push bc                                       ; $4CC1: $C5
    ld c, h                                       ; $4CC2: $4C
    nop                                           ; $4CC3: $00
    add c                                         ; $4CC4: $81
    db $E4                                        ; $4CC5: $E4
    dec de                                        ; $4CC6: $1B
    jp hl                                         ; $4CC7: $E9


    adc b                                         ; $4CC8: $88
    daa                                           ; $4CC9: $27
    ld a, [bc]                                    ; $4CCA: $0A
    rst RST_28                                    ; $4CCB: $EF
    ld h, $0A                                     ; $4CCC: $26 $0A
    dec h                                         ; $4CCE: $25
    ld a, [bc]                                    ; $4CCF: $0A
    inc h                                         ; $4CD0: $24
    ld a, [bc]                                    ; $4CD1: $0A
    inc hl                                        ; $4CD2: $23
    ld a, [bc]                                    ; $4CD3: $0A
    ld [hl+], a                                   ; $4CD4: $22
    ld a, [bc]                                    ; $4CD5: $0A
    db $E3                                        ; $4CD6: $E3
    ld bc, $1888                                  ; $4CD7: $01 $88 $18
    sbc $4C                                       ; $4CDA: $DE $4C
    nop                                           ; $4CDC: $00
    add c                                         ; $4CDD: $81
    db $E4                                        ; $4CDE: $E4
    rst RST_30                                    ; $4CDF: $F7
    jp hl                                         ; $4CE0: $E9


    ld [hl+], a                                   ; $4CE1: $22
    xor $80                                       ; $4CE2: $EE $80
    cp h                                          ; $4CE4: $BC
    ld bc, $C2BD                                  ; $4CE5: $01 $BD $C2
    ld [bc], a                                    ; $4CE8: $02
    db $E3                                        ; $4CE9: $E3
    ld bc, $2288                                  ; $4CEA: $01 $88 $22
    pop af                                        ; $4CED: $F1
    ld c, h                                       ; $4CEE: $4C
    nop                                           ; $4CEF: $00
    add c                                         ; $4CF0: $81
    db $E4                                        ; $4CF1: $E4
    di                                            ; $4CF2: $F3
    jp hl                                         ; $4CF3: $E9


    adc b                                         ; $4CF4: $88
    ld h, d                                       ; $4CF5: $62
    inc bc                                        ; $4CF6: $03
    ld [hl], $04                                  ; $4CF7: $36 $04
    ld h, a                                       ; $4CF9: $67
    ld a, [bc]                                    ; $4CFA: $0A
    db $E3                                        ; $4CFB: $E3
    ld bc, $1888                                  ; $4CFC: $01 $88 $18
    inc bc                                        ; $4CFF: $03
    ld c, l                                       ; $4D00: $4D
    nop                                           ; $4D01: $00
    add c                                         ; $4D02: $81

jr_02F_4D03:
    db $E4                                        ; $4D03: $E4
    rst RST_30                                    ; $4D04: $F7
    jp hl                                         ; $4D05: $E9


    ld [hl+], a                                   ; $4D06: $22
    xor $80                                       ; $4D07: $EE $80
    or b                                          ; $4D09: $B0
    ld e, $E4                                     ; $4D0A: $1E $E4
    ld [hl], a                                    ; $4D0C: $77
    or b                                          ; $4D0D: $B0
    db $E3                                        ; $4D0E: $E3
    inc bc                                        ; $4D0F: $03
    add b                                         ; $4D10: $80
    inc de                                        ; $4D11: $13
    dec [hl]                                      ; $4D12: $35
    ld c, l                                       ; $4D13: $4D
    nop                                           ; $4D14: $00
    add c                                         ; $4D15: $81
    add b                                         ; $4D16: $80
    jr jr_02F_4D55                                ; $4D17: $18 $3C

    ld c, l                                       ; $4D19: $4D
    nop                                           ; $4D1A: $00
    add c                                         ; $4D1B: $81
    add b                                         ; $4D1C: $80
    dec e                                         ; $4D1D: $1D
    ld b, e                                       ; $4D1E: $43
    ld c, l                                       ; $4D1F: $4D
    nop                                           ; $4D20: $00
    add c                                         ; $4D21: $81
    inc bc                                        ; $4D22: $03
    adc b                                         ; $4D23: $88
    inc de                                        ; $4D24: $13
    dec [hl]                                      ; $4D25: $35
    ld c, l                                       ; $4D26: $4D
    nop                                           ; $4D27: $00
    add c                                         ; $4D28: $81
    adc b                                         ; $4D29: $88
    jr jr_02F_4D68                                ; $4D2A: $18 $3C

    ld c, l                                       ; $4D2C: $4D
    nop                                           ; $4D2D: $00
    add c                                         ; $4D2E: $81
    adc b                                         ; $4D2F: $88
    dec e                                         ; $4D30: $1D
    ld b, e                                       ; $4D31: $43
    ld c, l                                       ; $4D32: $4D
    nop                                           ; $4D33: $00
    add c                                         ; $4D34: $81
    jp hl                                         ; $4D35: $E9


    ld de, $80EE                                  ; $4D36: $11 $EE $80
    db $E4                                        ; $4D39: $E4
    nop                                           ; $4D3A: $00
    db $E3                                        ; $4D3B: $E3
    jp hl                                         ; $4D3C: $E9


    ld [hl+], a                                   ; $4D3D: $22
    xor $80                                       ; $4D3E: $EE $80
    db $E4                                        ; $4D40: $E4
    nop                                           ; $4D41: $00
    db $E3                                        ; $4D42: $E3
    jp hl                                         ; $4D43: $E9


    ld b, h                                       ; $4D44: $44
    db $E4                                        ; $4D45: $E4
    nop                                           ; $4D46: $00
    db $E3                                        ; $4D47: $E3
    inc bc                                        ; $4D48: $03
    add b                                         ; $4D49: $80
    inc de                                        ; $4D4A: $13
    dec [hl]                                      ; $4D4B: $35
    ld c, l                                       ; $4D4C: $4D
    nop                                           ; $4D4D: $00
    add c                                         ; $4D4E: $81
    add b                                         ; $4D4F: $80
    jr jr_02F_4D8E                                ; $4D50: $18 $3C

    ld c, l                                       ; $4D52: $4D
    nop                                           ; $4D53: $00
    add c                                         ; $4D54: $81

jr_02F_4D55:
    add b                                         ; $4D55: $80
    dec e                                         ; $4D56: $1D
    ld b, e                                       ; $4D57: $43
    ld c, l                                       ; $4D58: $4D
    nop                                           ; $4D59: $00
    add c                                         ; $4D5A: $81
    inc bc                                        ; $4D5B: $03
    adc b                                         ; $4D5C: $88
    inc de                                        ; $4D5D: $13
    dec [hl]                                      ; $4D5E: $35
    ld c, l                                       ; $4D5F: $4D
    nop                                           ; $4D60: $00
    add c                                         ; $4D61: $81
    adc b                                         ; $4D62: $88
    jr jr_02F_4DA1                                ; $4D63: $18 $3C

    ld c, l                                       ; $4D65: $4D
    nop                                           ; $4D66: $00
    add c                                         ; $4D67: $81

jr_02F_4D68:
    adc b                                         ; $4D68: $88
    dec e                                         ; $4D69: $1D
    ld b, e                                       ; $4D6A: $43
    ld c, l                                       ; $4D6B: $4D
    nop                                           ; $4D6C: $00
    add c                                         ; $4D6D: $81
    db $E3                                        ; $4D6E: $E3
    inc b                                         ; $4D6F: $04
    add b                                         ; $4D70: $80
    inc de                                        ; $4D71: $13
    adc b                                         ; $4D72: $88
    ld c, l                                       ; $4D73: $4D
    nop                                           ; $4D74: $00
    add c                                         ; $4D75: $81
    add b                                         ; $4D76: $80
    jr @-$6F                                      ; $4D77: $18 $8F

    ld c, [hl]                                    ; $4D79: $4E
    inc c                                         ; $4D7A: $0C
    add c                                         ; $4D7B: $81
    add b                                         ; $4D7C: $80
    dec e                                         ; $4D7D: $1D
    cp a                                          ; $4D7E: $BF
    ld c, a                                       ; $4D7F: $4F

jr_02F_4D80:
    jr jr_02F_4D03                                ; $4D80: $18 $81

    add b                                         ; $4D82: $80
    ld [hl+], a                                   ; $4D83: $22
    db $10                                        ; $4D84: $10
    ld d, c                                       ; $4D85: $51
    nop                                           ; $4D86: $00
    add c                                         ; $4D87: $81

jr_02F_4D88:
    db $E4                                        ; $4D88: $E4
    ld [hl], a                                    ; $4D89: $77
    jp hl                                         ; $4D8A: $E9


    ld de, $00EE                                  ; $4D8B: $11 $EE $00

jr_02F_4D8E:
    add b                                         ; $4D8E: $80
    ld h, b                                       ; $4D8F: $60
    add b                                         ; $4D90: $80
    sub c                                         ; $4D91: $91
    jr @-$1A                                      ; $4D92: $18 $E4

    ld d, a                                       ; $4D94: $57
    sub c                                         ; $4D95: $91
    inc c                                         ; $4D96: $0C
    db $E4                                        ; $4D97: $E4
    ld [hl], a                                    ; $4D98: $77
    sub d                                         ; $4D99: $92
    jr jr_02F_4D80                                ; $4D9A: $18 $E4

    ld d, a                                       ; $4D9C: $57
    sub d                                         ; $4D9D: $92
    inc c                                         ; $4D9E: $0C
    db $E4                                        ; $4D9F: $E4
    ld [hl], a                                    ; $4DA0: $77

jr_02F_4DA1:
    adc a                                         ; $4DA1: $8F
    jr jr_02F_4D88                                ; $4DA2: $18 $E4

    ld d, a                                       ; $4DA4: $57
    adc a                                         ; $4DA5: $8F
    db $E4                                        ; $4DA6: $E4
    ld [hl], a                                    ; $4DA7: $77
    adc [hl]                                      ; $4DA8: $8E
    db $E4                                        ; $4DA9: $E4
    ld d, a                                       ; $4DAA: $57
    adc [hl]                                      ; $4DAB: $8E
    add b                                         ; $4DAC: $80
    inc c                                         ; $4DAD: $0C
    db $E4                                        ; $4DAE: $E4
    ld [hl], a                                    ; $4DAF: $77
    adc a                                         ; $4DB0: $8F
    ld b, $8E                                     ; $4DB1: $06 $8E
    adc h                                         ; $4DB3: $8C
    inc c                                         ; $4DB4: $0C
    db $E4                                        ; $4DB5: $E4
    ld d, a                                       ; $4DB6: $57
    adc h                                         ; $4DB7: $8C
    ld b, $E4                                     ; $4DB8: $06 $E4
    ld [hl], a                                    ; $4DBA: $77
    adc a                                         ; $4DBB: $8F
    inc c                                         ; $4DBC: $0C
    db $E4                                        ; $4DBD: $E4
    ld d, a                                       ; $4DBE: $57
    adc a                                         ; $4DBF: $8F
    ld b, $E4                                     ; $4DC0: $06 $E4
    ld [hl], a                                    ; $4DC2: $77
    adc h                                         ; $4DC3: $8C
    inc c                                         ; $4DC4: $0C
    db $E4                                        ; $4DC5: $E4
    ld d, a                                       ; $4DC6: $57
    adc h                                         ; $4DC7: $8C
    ld b, $E4                                     ; $4DC8: $06 $E4
    ld a, b                                       ; $4DCA: $78
    adc e                                         ; $4DCB: $8B
    jr nc, @-$1A                                  ; $4DCC: $30 $E4

    ld e, b                                       ; $4DCE: $58
    adc e                                         ; $4DCF: $8B
    ld c, b                                       ; $4DD0: $48
    add b                                         ; $4DD1: $80
    ld b, $E4                                     ; $4DD2: $06 $E4
    ld [hl], a                                    ; $4DD4: $77
    adc d                                         ; $4DD5: $8A
    adc c                                         ; $4DD6: $89
    ld h, b                                       ; $4DD7: $60
    add b                                         ; $4DD8: $80
    add b                                         ; $4DD9: $80
    ld b, $E4                                     ; $4DDA: $06 $E4
    ld [hl], l                                    ; $4DDC: $75
    db $EC                                        ; $4DDD: $EC
    inc b                                         ; $4DDE: $04
    ld c, [hl]                                    ; $4DDF: $4E
    db $EC                                        ; $4DE0: $EC
    dec de                                        ; $4DE1: $1B
    ld c, [hl]                                    ; $4DE2: $4E
    and $01                                       ; $4DE3: $E6 $01
    db $EC                                        ; $4DE5: $EC
    inc b                                         ; $4DE6: $04
    ld c, [hl]                                    ; $4DE7: $4E
    and $FF                                       ; $4DE8: $E6 $FF
    sub d                                         ; $4DEA: $92
    ld b, $80                                     ; $4DEB: $06 $80
    add b                                         ; $4DED: $80
    sub b                                         ; $4DEE: $90
    add b                                         ; $4DEF: $80
    add b                                         ; $4DF0: $80
    sub e                                         ; $4DF1: $93
    add b                                         ; $4DF2: $80
    add b                                         ; $4DF3: $80
    sub b                                         ; $4DF4: $90
    add b                                         ; $4DF5: $80
    add b                                         ; $4DF6: $80
    sub d                                         ; $4DF7: $92
    sub b                                         ; $4DF8: $90
    sub d                                         ; $4DF9: $92
    sub e                                         ; $4DFA: $93
    db $EC                                        ; $4DFB: $EC
    ld [hl-], a                                   ; $4DFC: $32
    ld c, [hl]                                    ; $4DFD: $4E
    db $EC                                        ; $4DFE: $EC
    ld a, b                                       ; $4DFF: $78
    ld c, [hl]                                    ; $4E00: $4E
    push hl                                       ; $4E01: $E5
    ldh [rKEY1], a                                ; $4E02: $E0 $4D
    sub c                                         ; $4E04: $91
    ld b, $80                                     ; $4E05: $06 $80
    add b                                         ; $4E07: $80
    adc a                                         ; $4E08: $8F
    add b                                         ; $4E09: $80
    add b                                         ; $4E0A: $80
    sub d                                         ; $4E0B: $92
    add b                                         ; $4E0C: $80
    add b                                         ; $4E0D: $80
    adc a                                         ; $4E0E: $8F
    add b                                         ; $4E0F: $80
    add b                                         ; $4E10: $80
    sub c                                         ; $4E11: $91
    add b                                         ; $4E12: $80
    adc a                                         ; $4E13: $8F
    add b                                         ; $4E14: $80
    rst RST_20                                    ; $4E15: $E7
    nop                                           ; $4E16: $00
    inc bc                                        ; $4E17: $03
    inc b                                         ; $4E18: $04
    ld c, [hl]                                    ; $4E19: $4E
    db $ED                                        ; $4E1A: $ED
    sub c                                         ; $4E1B: $91
    ld b, $80                                     ; $4E1C: $06 $80
    add b                                         ; $4E1E: $80
    adc a                                         ; $4E1F: $8F
    add b                                         ; $4E20: $80
    add b                                         ; $4E21: $80
    sub d                                         ; $4E22: $92
    add b                                         ; $4E23: $80
    add b                                         ; $4E24: $80
    adc a                                         ; $4E25: $8F
    add b                                         ; $4E26: $80
    add b                                         ; $4E27: $80
    sub c                                         ; $4E28: $91
    add b                                         ; $4E29: $80
    adc a                                         ; $4E2A: $8F
    add b                                         ; $4E2B: $80
    rst RST_20                                    ; $4E2C: $E7
    nop                                           ; $4E2D: $00
    ld a, [bc]                                    ; $4E2E: $0A
    dec de                                        ; $4E2F: $1B
    ld c, [hl]                                    ; $4E30: $4E
    db $ED                                        ; $4E31: $ED
    adc l                                         ; $4E32: $8D
    sbc c                                         ; $4E33: $99
    add b                                         ; $4E34: $80
    adc e                                         ; $4E35: $8B
    sub a                                         ; $4E36: $97
    add b                                         ; $4E37: $80
    adc [hl]                                      ; $4E38: $8E
    sbc d                                         ; $4E39: $9A
    add b                                         ; $4E3A: $80
    adc e                                         ; $4E3B: $8B
    sub a                                         ; $4E3C: $97
    add b                                         ; $4E3D: $80
    adc l                                         ; $4E3E: $8D
    sbc c                                         ; $4E3F: $99
    adc e                                         ; $4E40: $8B
    sub a                                         ; $4E41: $97
    adc l                                         ; $4E42: $8D
    sbc c                                         ; $4E43: $99
    add b                                         ; $4E44: $80
    adc e                                         ; $4E45: $8B
    sub a                                         ; $4E46: $97
    add b                                         ; $4E47: $80
    adc [hl]                                      ; $4E48: $8E
    sbc d                                         ; $4E49: $9A
    add b                                         ; $4E4A: $80
    adc e                                         ; $4E4B: $8B
    sub a                                         ; $4E4C: $97
    add b                                         ; $4E4D: $80
    adc l                                         ; $4E4E: $8D
    sbc c                                         ; $4E4F: $99
    adc e                                         ; $4E50: $8B
    sub a                                         ; $4E51: $97
    adc [hl]                                      ; $4E52: $8E
    sbc d                                         ; $4E53: $9A
    add b                                         ; $4E54: $80
    adc h                                         ; $4E55: $8C
    sbc b                                         ; $4E56: $98
    add b                                         ; $4E57: $80
    adc a                                         ; $4E58: $8F
    sbc e                                         ; $4E59: $9B
    add b                                         ; $4E5A: $80
    adc h                                         ; $4E5B: $8C
    sbc b                                         ; $4E5C: $98
    add b                                         ; $4E5D: $80
    adc [hl]                                      ; $4E5E: $8E
    sbc d                                         ; $4E5F: $9A
    adc h                                         ; $4E60: $8C
    sbc b                                         ; $4E61: $98
    adc [hl]                                      ; $4E62: $8E
    sbc d                                         ; $4E63: $9A
    add b                                         ; $4E64: $80
    adc h                                         ; $4E65: $8C
    sbc b                                         ; $4E66: $98
    add b                                         ; $4E67: $80
    adc a                                         ; $4E68: $8F
    sbc e                                         ; $4E69: $9B
    add b                                         ; $4E6A: $80
    adc h                                         ; $4E6B: $8C
    sbc b                                         ; $4E6C: $98
    add b                                         ; $4E6D: $80
    adc [hl]                                      ; $4E6E: $8E
    sbc d                                         ; $4E6F: $9A
    adc h                                         ; $4E70: $8C
    sbc b                                         ; $4E71: $98
    rst RST_20                                    ; $4E72: $E7
    nop                                           ; $4E73: $00
    ld [bc], a                                    ; $4E74: $02
    ld [hl-], a                                   ; $4E75: $32
    ld c, [hl]                                    ; $4E76: $4E
    db $ED                                        ; $4E77: $ED
    sub c                                         ; $4E78: $91
    ld b, $80                                     ; $4E79: $06 $80
    add b                                         ; $4E7B: $80
    adc a                                         ; $4E7C: $8F
    add b                                         ; $4E7D: $80
    add b                                         ; $4E7E: $80
    sub d                                         ; $4E7F: $92
    add b                                         ; $4E80: $80
    add b                                         ; $4E81: $80
    adc a                                         ; $4E82: $8F
    add b                                         ; $4E83: $80
    add b                                         ; $4E84: $80
    sub c                                         ; $4E85: $91
    add b                                         ; $4E86: $80
    adc a                                         ; $4E87: $8F
    add b                                         ; $4E88: $80
    rst RST_20                                    ; $4E89: $E7
    nop                                           ; $4E8A: $00
    ld [bc], a                                    ; $4E8B: $02
    ld a, b                                       ; $4E8C: $78
    ld c, [hl]                                    ; $4E8D: $4E
    db $ED                                        ; $4E8E: $ED
    db $E4                                        ; $4E8F: $E4
    ld d, d                                       ; $4E90: $52
    jp hl                                         ; $4E91: $E9


    ld [hl+], a                                   ; $4E92: $22
    xor $80                                       ; $4E93: $EE $80
    add b                                         ; $4E95: $80
    ld b, $E4                                     ; $4E96: $06 $E4
    ld sp, $0691                                  ; $4E98: $31 $91 $06
    add b                                         ; $4E9B: $80
    sbc l                                         ; $4E9C: $9D
    add b                                         ; $4E9D: $80
    sub [hl]                                      ; $4E9E: $96
    add b                                         ; $4E9F: $80
    sbc b                                         ; $4EA0: $98
    sub c                                         ; $4EA1: $91
    db $E4                                        ; $4EA2: $E4
    ld b, c                                       ; $4EA3: $41
    add b                                         ; $4EA4: $80
    sub c                                         ; $4EA5: $91
    sbc l                                         ; $4EA6: $9D
    add b                                         ; $4EA7: $80
    sub [hl]                                      ; $4EA8: $96
    add b                                         ; $4EA9: $80
    sbc b                                         ; $4EAA: $98
    add b                                         ; $4EAB: $80
    db $E4                                        ; $4EAC: $E4
    ld d, c                                       ; $4EAD: $51
    sub c                                         ; $4EAE: $91
    ld b, $80                                     ; $4EAF: $06 $80
    sbc l                                         ; $4EB1: $9D
    add b                                         ; $4EB2: $80
    sub [hl]                                      ; $4EB3: $96
    add b                                         ; $4EB4: $80
    sbc b                                         ; $4EB5: $98
    sub c                                         ; $4EB6: $91
    db $E4                                        ; $4EB7: $E4
    ld h, c                                       ; $4EB8: $61
    add b                                         ; $4EB9: $80
    sub c                                         ; $4EBA: $91
    sbc l                                         ; $4EBB: $9D
    add b                                         ; $4EBC: $80
    sub [hl]                                      ; $4EBD: $96
    add b                                         ; $4EBE: $80
    sbc b                                         ; $4EBF: $98
    add b                                         ; $4EC0: $80
    db $E4                                        ; $4EC1: $E4
    ld d, c                                       ; $4EC2: $51
    db $EC                                        ; $4EC3: $EC
    pop af                                        ; $4EC4: $F1
    ld c, [hl]                                    ; $4EC5: $4E
    sub c                                         ; $4EC6: $91
    ld b, $80                                     ; $4EC7: $06 $80
    sbc l                                         ; $4EC9: $9D
    add b                                         ; $4ECA: $80
    sub [hl]                                      ; $4ECB: $96
    add b                                         ; $4ECC: $80
    sbc b                                         ; $4ECD: $98
    sub c                                         ; $4ECE: $91
    add b                                         ; $4ECF: $80
    sub c                                         ; $4ED0: $91
    sbc l                                         ; $4ED1: $9D
    add b                                         ; $4ED2: $80
    sub [hl]                                      ; $4ED3: $96
    add b                                         ; $4ED4: $80
    sbc b                                         ; $4ED5: $98
    add b                                         ; $4ED6: $80
    ld h, b                                       ; $4ED7: $60
    db $EC                                        ; $4ED8: $EC
    ld [$EC4F], sp                                ; $4ED9: $08 $4F $EC
    dec [hl]                                      ; $4EDC: $35
    ld c, a                                       ; $4EDD: $4F
    and $01                                       ; $4EDE: $E6 $01
    db $EC                                        ; $4EE0: $EC
    ld h, d                                       ; $4EE1: $62
    ld c, a                                       ; $4EE2: $4F
    db $EC                                        ; $4EE3: $EC
    ld h, d                                       ; $4EE4: $62
    ld c, a                                       ; $4EE5: $4F
    and $FF                                       ; $4EE6: $E6 $FF
    db $EC                                        ; $4EE8: $EC
    ld a, c                                       ; $4EE9: $79
    ld c, a                                       ; $4EEA: $4F
    db $EC                                        ; $4EEB: $EC
    ld h, d                                       ; $4EEC: $62
    ld c, a                                       ; $4EED: $4F
    push hl                                       ; $4EEE: $E5
    db $DB                                        ; $4EEF: $DB
    ld c, [hl]                                    ; $4EF0: $4E
    sub c                                         ; $4EF1: $91
    ld b, $80                                     ; $4EF2: $06 $80
    sbc l                                         ; $4EF4: $9D
    add b                                         ; $4EF5: $80
    sub [hl]                                      ; $4EF6: $96
    add b                                         ; $4EF7: $80
    sbc b                                         ; $4EF8: $98
    sub c                                         ; $4EF9: $91
    add b                                         ; $4EFA: $80
    sub c                                         ; $4EFB: $91
    sbc l                                         ; $4EFC: $9D
    add b                                         ; $4EFD: $80
    sub [hl]                                      ; $4EFE: $96
    add b                                         ; $4EFF: $80
    sbc b                                         ; $4F00: $98
    add b                                         ; $4F01: $80
    rst RST_20                                    ; $4F02: $E7
    nop                                           ; $4F03: $00
    inc b                                         ; $4F04: $04
    pop af                                        ; $4F05: $F1
    ld c, [hl]                                    ; $4F06: $4E
    db $ED                                        ; $4F07: $ED
    db $E4                                        ; $4F08: $E4
    ld d, c                                       ; $4F09: $51
    sub c                                         ; $4F0A: $91
    ld b, $91                                     ; $4F0B: $06 $91
    sbc l                                         ; $4F0D: $9D
    db $E4                                        ; $4F0E: $E4
    ld sp, $E49D                                  ; $4F0F: $31 $9D $E4
    ld d, c                                       ; $4F12: $51
    sub [hl]                                      ; $4F13: $96
    db $E4                                        ; $4F14: $E4
    ld sp, $E496                                  ; $4F15: $31 $96 $E4
    ld d, c                                       ; $4F18: $51
    sbc b                                         ; $4F19: $98
    sub c                                         ; $4F1A: $91
    db $E4                                        ; $4F1B: $E4
    ld sp, $E491                                  ; $4F1C: $31 $91 $E4
    ld d, c                                       ; $4F1F: $51
    sub c                                         ; $4F20: $91
    sbc l                                         ; $4F21: $9D
    db $E4                                        ; $4F22: $E4
    ld sp, $E49D                                  ; $4F23: $31 $9D $E4
    ld d, c                                       ; $4F26: $51
    sub [hl]                                      ; $4F27: $96
    db $E4                                        ; $4F28: $E4
    ld sp, $E496                                  ; $4F29: $31 $96 $E4
    ld d, c                                       ; $4F2C: $51
    sbc b                                         ; $4F2D: $98
    adc a                                         ; $4F2E: $8F
    rst RST_20                                    ; $4F2F: $E7
    nop                                           ; $4F30: $00
    inc bc                                        ; $4F31: $03
    ld [$ED4F], sp                                ; $4F32: $08 $4F $ED
    db $E4                                        ; $4F35: $E4
    ld d, c                                       ; $4F36: $51
    sub c                                         ; $4F37: $91
    ld b, $91                                     ; $4F38: $06 $91
    sbc l                                         ; $4F3A: $9D
    db $E4                                        ; $4F3B: $E4
    ld sp, $E49D                                  ; $4F3C: $31 $9D $E4
    ld d, c                                       ; $4F3F: $51
    sub [hl]                                      ; $4F40: $96
    db $E4                                        ; $4F41: $E4
    ld sp, $E496                                  ; $4F42: $31 $96 $E4
    ld d, c                                       ; $4F45: $51
    sbc b                                         ; $4F46: $98
    sub c                                         ; $4F47: $91
    db $E4                                        ; $4F48: $E4
    ld sp, $E491                                  ; $4F49: $31 $91 $E4
    ld d, c                                       ; $4F4C: $51
    sub c                                         ; $4F4D: $91
    sbc l                                         ; $4F4E: $9D
    db $E4                                        ; $4F4F: $E4
    ld sp, $E49D                                  ; $4F50: $31 $9D $E4
    ld d, c                                       ; $4F53: $51
    sub [hl]                                      ; $4F54: $96
    db $E4                                        ; $4F55: $E4
    ld sp, $E496                                  ; $4F56: $31 $96 $E4
    ld d, c                                       ; $4F59: $51
    sbc b                                         ; $4F5A: $98
    adc a                                         ; $4F5B: $8F
    rst RST_20                                    ; $4F5C: $E7
    nop                                           ; $4F5D: $00
    ld a, [bc]                                    ; $4F5E: $0A
    dec [hl]                                      ; $4F5F: $35
    ld c, a                                       ; $4F60: $4F
    db $ED                                        ; $4F61: $ED
    sub c                                         ; $4F62: $91
    ld b, $91                                     ; $4F63: $06 $91
    sbc l                                         ; $4F65: $9D
    add b                                         ; $4F66: $80
    sub [hl]                                      ; $4F67: $96
    add b                                         ; $4F68: $80
    sbc b                                         ; $4F69: $98
    sub c                                         ; $4F6A: $91
    add b                                         ; $4F6B: $80
    sub c                                         ; $4F6C: $91
    sbc l                                         ; $4F6D: $9D
    add b                                         ; $4F6E: $80
    sub [hl]                                      ; $4F6F: $96
    add b                                         ; $4F70: $80
    sbc b                                         ; $4F71: $98
    adc a                                         ; $4F72: $8F
    rst RST_20                                    ; $4F73: $E7
    nop                                           ; $4F74: $00
    ld [bc], a                                    ; $4F75: $02
    ld h, d                                       ; $4F76: $62
    ld c, a                                       ; $4F77: $4F
    db $ED                                        ; $4F78: $ED
    add b                                         ; $4F79: $80
    adc b                                         ; $4F7A: $88
    adc b                                         ; $4F7B: $88
    sub h                                         ; $4F7C: $94
    sub h                                         ; $4F7D: $94
    adc b                                         ; $4F7E: $88
    adc b                                         ; $4F7F: $88
    sub h                                         ; $4F80: $94
    sub h                                         ; $4F81: $94
    and b                                         ; $4F82: $A0
    and b                                         ; $4F83: $A0
    sub h                                         ; $4F84: $94
    sub h                                         ; $4F85: $94
    sub d                                         ; $4F86: $92
    sub d                                         ; $4F87: $92
    sub h                                         ; $4F88: $94
    add b                                         ; $4F89: $80
    adc b                                         ; $4F8A: $88
    adc b                                         ; $4F8B: $88
    sub h                                         ; $4F8C: $94
    sub h                                         ; $4F8D: $94
    adc b                                         ; $4F8E: $88
    adc b                                         ; $4F8F: $88
    sub h                                         ; $4F90: $94
    sub h                                         ; $4F91: $94
    and b                                         ; $4F92: $A0
    and b                                         ; $4F93: $A0
    sub h                                         ; $4F94: $94
    sub h                                         ; $4F95: $94
    sub d                                         ; $4F96: $92
    sub d                                         ; $4F97: $92
    sub h                                         ; $4F98: $94
    add b                                         ; $4F99: $80
    adc c                                         ; $4F9A: $89
    adc c                                         ; $4F9B: $89
    sub l                                         ; $4F9C: $95
    sub l                                         ; $4F9D: $95
    adc c                                         ; $4F9E: $89
    adc c                                         ; $4F9F: $89
    sub l                                         ; $4FA0: $95
    sub l                                         ; $4FA1: $95
    and c                                         ; $4FA2: $A1
    and c                                         ; $4FA3: $A1
    sub l                                         ; $4FA4: $95
    sub l                                         ; $4FA5: $95
    sub e                                         ; $4FA6: $93
    sub e                                         ; $4FA7: $93
    sub l                                         ; $4FA8: $95
    add b                                         ; $4FA9: $80
    adc c                                         ; $4FAA: $89
    adc c                                         ; $4FAB: $89
    sub l                                         ; $4FAC: $95
    sub l                                         ; $4FAD: $95
    adc c                                         ; $4FAE: $89
    adc c                                         ; $4FAF: $89
    sub l                                         ; $4FB0: $95
    sub l                                         ; $4FB1: $95
    and c                                         ; $4FB2: $A1
    and c                                         ; $4FB3: $A1
    sub l                                         ; $4FB4: $95
    sub l                                         ; $4FB5: $95
    sub e                                         ; $4FB6: $93
    sub e                                         ; $4FB7: $93
    sub l                                         ; $4FB8: $95
    rst RST_20                                    ; $4FB9: $E7
    nop                                           ; $4FBA: $00
    ld [bc], a                                    ; $4FBB: $02
    ld a, c                                       ; $4FBC: $79
    ld c, a                                       ; $4FBD: $4F
    db $ED                                        ; $4FBE: $ED
    db $E4                                        ; $4FBF: $E4
    ld b, b                                       ; $4FC0: $40
    jp hl                                         ; $4FC1: $E9


    ld b, h                                       ; $4FC2: $44
    di                                            ; $4FC3: $F3
    inc bc                                        ; $4FC4: $03
    push af                                       ; $4FC5: $F5
    ld [hl-], a                                   ; $4FC6: $32
    db $E4                                        ; $4FC7: $E4
    ld h, b                                       ; $4FC8: $60
    sub c                                         ; $4FC9: $91
    ld b, $80                                     ; $4FCA: $06 $80
    sbc l                                         ; $4FCC: $9D
    add b                                         ; $4FCD: $80
    sub [hl]                                      ; $4FCE: $96
    add b                                         ; $4FCF: $80
    sbc b                                         ; $4FD0: $98
    sub c                                         ; $4FD1: $91
    add b                                         ; $4FD2: $80
    sub c                                         ; $4FD3: $91
    sbc l                                         ; $4FD4: $9D
    add b                                         ; $4FD5: $80
    sub [hl]                                      ; $4FD6: $96
    add b                                         ; $4FD7: $80
    sbc b                                         ; $4FD8: $98
    add b                                         ; $4FD9: $80
    db $E4                                        ; $4FDA: $E4
    ld b, b                                       ; $4FDB: $40
    sub c                                         ; $4FDC: $91
    ld b, $80                                     ; $4FDD: $06 $80
    sbc l                                         ; $4FDF: $9D
    add b                                         ; $4FE0: $80
    sub [hl]                                      ; $4FE1: $96
    add b                                         ; $4FE2: $80
    sbc b                                         ; $4FE3: $98
    sub c                                         ; $4FE4: $91
    add b                                         ; $4FE5: $80
    sub c                                         ; $4FE6: $91
    sbc l                                         ; $4FE7: $9D
    add b                                         ; $4FE8: $80
    sub [hl]                                      ; $4FE9: $96

jr_02F_4FEA:
    add b                                         ; $4FEA: $80
    sbc b                                         ; $4FEB: $98
    add b                                         ; $4FEC: $80
    db $EC                                        ; $4FED: $EC
    jr nz, jr_02F_5040                            ; $4FEE: $20 $50

    db $EC                                        ; $4FF0: $EC
    ld h, [hl]                                    ; $4FF1: $66
    ld d, b                                       ; $4FF2: $50

jr_02F_4FF3:
    db $EC                                        ; $4FF3: $EC
    xor h                                         ; $4FF4: $AC
    ld d, b                                       ; $4FF5: $50
    and $01                                       ; $4FF6: $E6 $01
    db $EC                                        ; $4FF8: $EC
    xor h                                         ; $4FF9: $AC
    ld d, b                                       ; $4FFA: $50
    and $FF                                       ; $4FFB: $E6 $FF
    db $EC                                        ; $4FFD: $EC
    adc $50                                       ; $4FFE: $CE $50
    db $E4                                        ; $5000: $E4
    ld b, b                                       ; $5001: $40
    pop af                                        ; $5002: $F1
    sub a                                         ; $5003: $97
    jr jr_02F_4FEA                                ; $5004: $18 $E4

    ld h, b                                       ; $5006: $60
    sub a                                         ; $5007: $97
    inc c                                         ; $5008: $0C
    db $E4                                        ; $5009: $E4
    ld b, b                                       ; $500A: $40
    pop af                                        ; $500B: $F1
    sub [hl]                                      ; $500C: $96
    jr jr_02F_4FF3                                ; $500D: $18 $E4

    ld h, b                                       ; $500F: $60
    sub [hl]                                      ; $5010: $96
    inc c                                         ; $5011: $0C
    db $E4                                        ; $5012: $E4
    ld b, b                                       ; $5013: $40
    pop af                                        ; $5014: $F1
    sub l                                         ; $5015: $95
    jr nc, @-$1A                                  ; $5016: $30 $E4

    ld h, b                                       ; $5018: $60
    sub l                                         ; $5019: $95
    ld c, b                                       ; $501A: $48
    db $E4                                        ; $501B: $E4
    ld b, b                                       ; $501C: $40
    push hl                                       ; $501D: $E5
    ldh a, [rVBK]                                 ; $501E: $F0 $4F
    db $E4                                        ; $5020: $E4
    ld b, b                                       ; $5021: $40
    sub c                                         ; $5022: $91
    ld b, $E4                                     ; $5023: $06 $E4
    ld h, b                                       ; $5025: $60
    sub c                                         ; $5026: $91
    db $E4                                        ; $5027: $E4
    ld b, b                                       ; $5028: $40
    sbc l                                         ; $5029: $9D
    db $E4                                        ; $502A: $E4
    ld h, b                                       ; $502B: $60
    sbc l                                         ; $502C: $9D
    db $E4                                        ; $502D: $E4
    ld b, b                                       ; $502E: $40
    sub [hl]                                      ; $502F: $96
    db $E4                                        ; $5030: $E4
    ld h, b                                       ; $5031: $60
    sub [hl]                                      ; $5032: $96
    db $E4                                        ; $5033: $E4
    ld b, b                                       ; $5034: $40
    sbc b                                         ; $5035: $98
    sub c                                         ; $5036: $91
    db $E4                                        ; $5037: $E4
    ld h, b                                       ; $5038: $60
    sub c                                         ; $5039: $91
    db $E4                                        ; $503A: $E4
    ld b, b                                       ; $503B: $40
    sub c                                         ; $503C: $91
    sbc l                                         ; $503D: $9D
    db $E4                                        ; $503E: $E4
    ld h, b                                       ; $503F: $60

jr_02F_5040:
    sbc l                                         ; $5040: $9D
    db $E4                                        ; $5041: $E4
    ld b, b                                       ; $5042: $40
    sub [hl]                                      ; $5043: $96
    db $E4                                        ; $5044: $E4
    ld h, b                                       ; $5045: $60
    sub [hl]                                      ; $5046: $96
    sbc b                                         ; $5047: $98
    db $E4                                        ; $5048: $E4
    ld h, b                                       ; $5049: $60
    sbc b                                         ; $504A: $98
    rst RST_20                                    ; $504B: $E7
    nop                                           ; $504C: $00
    ld b, $20                                     ; $504D: $06 $20
    ld d, b                                       ; $504F: $50
    add b                                         ; $5050: $80
    ld h, b                                       ; $5051: $60
    add b                                         ; $5052: $80
    push af                                       ; $5053: $F5
    nop                                           ; $5054: $00
    db $E4                                        ; $5055: $E4
    ld b, b                                       ; $5056: $40
    adc a                                         ; $5057: $8F
    ld b, $8E                                     ; $5058: $06 $8E
    adc a                                         ; $505A: $8F
    add b                                         ; $505B: $80
    add b                                         ; $505C: $80
    inc h                                         ; $505D: $24
    adc a                                         ; $505E: $8F
    ld b, $8E                                     ; $505F: $06 $8E
    adc a                                         ; $5061: $8F
    pop af                                        ; $5062: $F1
    sub c                                         ; $5063: $91
    ld [de], a                                    ; $5064: $12
    db $ED                                        ; $5065: $ED
    adc a                                         ; $5066: $8F
    ld b, $8E                                     ; $5067: $06 $8E
    adc a                                         ; $5069: $8F
    add b                                         ; $506A: $80
    inc h                                         ; $506B: $24
    adc a                                         ; $506C: $8F
    ld b, $8E                                     ; $506D: $06 $8E
    adc a                                         ; $506F: $8F
    sub [hl]                                      ; $5070: $96
    pop af                                        ; $5071: $F1
    sub l                                         ; $5072: $95
    ld [de], a                                    ; $5073: $12
    adc a                                         ; $5074: $8F

jr_02F_5075:
    ld b, $8E                                     ; $5075: $06 $8E
    adc a                                         ; $5077: $8F
    add b                                         ; $5078: $80

jr_02F_5079:
    add b                                         ; $5079: $80
    inc h                                         ; $507A: $24
    adc a                                         ; $507B: $8F
    ld b, $8E                                     ; $507C: $06 $8E
    adc a                                         ; $507E: $8F
    pop af                                        ; $507F: $F1
    sub c                                         ; $5080: $91

jr_02F_5081:
    ld [de], a                                    ; $5081: $12
    adc a                                         ; $5082: $8F
    ld b, $8E                                     ; $5083: $06 $8E
    adc a                                         ; $5085: $8F
    add b                                         ; $5086: $80
    inc h                                         ; $5087: $24
    adc a                                         ; $5088: $8F

jr_02F_5089:
    ld b, $8E                                     ; $5089: $06 $8E
    adc a                                         ; $508B: $8F
    sub [hl]                                      ; $508C: $96
    pop af                                        ; $508D: $F1
    adc h                                         ; $508E: $8C
    ld [de], a                                    ; $508F: $12
    db $E4                                        ; $5090: $E4
    ld b, b                                       ; $5091: $40
    adc e                                         ; $5092: $8B
    jr jr_02F_5079                                ; $5093: $18 $E4

    ld h, b                                       ; $5095: $60
    adc e                                         ; $5096: $8B
    inc c                                         ; $5097: $0C
    db $E4                                        ; $5098: $E4
    ld b, b                                       ; $5099: $40
    adc d                                         ; $509A: $8A
    jr jr_02F_5081                                ; $509B: $18 $E4

    ld h, b                                       ; $509D: $60
    adc d                                         ; $509E: $8A
    inc c                                         ; $509F: $0C
    db $E4                                        ; $50A0: $E4
    ld b, b                                       ; $50A1: $40
    adc b                                         ; $50A2: $88
    jr jr_02F_5089                                ; $50A3: $18 $E4

    ld h, b                                       ; $50A5: $60
    adc b                                         ; $50A6: $88
    ld h, b                                       ; $50A7: $60
    add b                                         ; $50A8: $80
    db $E4                                        ; $50A9: $E4
    ld b, b                                       ; $50AA: $40
    db $ED                                        ; $50AB: $ED
    adc a                                         ; $50AC: $8F
    ld b, $8E                                     ; $50AD: $06 $8E
    adc a                                         ; $50AF: $8F
    add b                                         ; $50B0: $80
    add b                                         ; $50B1: $80
    inc h                                         ; $50B2: $24
    adc a                                         ; $50B3: $8F
    ld b, $8E                                     ; $50B4: $06 $8E
    adc a                                         ; $50B6: $8F
    pop af                                        ; $50B7: $F1
    sub c                                         ; $50B8: $91
    ld [de], a                                    ; $50B9: $12
    adc a                                         ; $50BA: $8F
    ld b, $8E                                     ; $50BB: $06 $8E
    adc a                                         ; $50BD: $8F
    add b                                         ; $50BE: $80
    inc h                                         ; $50BF: $24
    adc a                                         ; $50C0: $8F
    ld b, $8E                                     ; $50C1: $06 $8E
    adc a                                         ; $50C3: $8F
    sub [hl]                                      ; $50C4: $96
    pop af                                        ; $50C5: $F1
    sub l                                         ; $50C6: $95

jr_02F_50C7:
    ld [de], a                                    ; $50C7: $12
    rst RST_20                                    ; $50C8: $E7
    nop                                           ; $50C9: $00
    ld [bc], a                                    ; $50CA: $02
    xor h                                         ; $50CB: $AC
    ld d, b                                       ; $50CC: $50
    db $ED                                        ; $50CD: $ED
    db $E4                                        ; $50CE: $E4
    ld b, b                                       ; $50CF: $40
    pop af                                        ; $50D0: $F1
    sub a                                         ; $50D1: $97
    inc h                                         ; $50D2: $24
    db $E4                                        ; $50D3: $E4
    ld h, b                                       ; $50D4: $60
    sub a                                         ; $50D5: $97
    jr @-$1A                                      ; $50D6: $18 $E4

    ld b, b                                       ; $50D8: $40
    sbc c                                         ; $50D9: $99
    inc b                                         ; $50DA: $04
    sbc b                                         ; $50DB: $98
    sub [hl]                                      ; $50DC: $96
    db $E4                                        ; $50DD: $E4
    ld b, b                                       ; $50DE: $40
    pop af                                        ; $50DF: $F1
    sub a                                         ; $50E0: $97

jr_02F_50E1:
    jr jr_02F_50C7                                ; $50E1: $18 $E4

    ld h, b                                       ; $50E3: $60
    sub a                                         ; $50E4: $97
    ld c, b                                       ; $50E5: $48
    db $E4                                        ; $50E6: $E4
    ld b, b                                       ; $50E7: $40
    sbc e                                         ; $50E8: $9B
    inc c                                         ; $50E9: $0C
    sbc c                                         ; $50EA: $99
    ld b, $9B                                     ; $50EB: $06 $9B
    pop af                                        ; $50ED: $F1
    sbc b                                         ; $50EE: $98
    inc h                                         ; $50EF: $24
    db $E4                                        ; $50F0: $E4
    ld h, b                                       ; $50F1: $60
    sbc b                                         ; $50F2: $98
    jr jr_02F_5075                                ; $50F3: $18 $80

    ld b, $E4                                     ; $50F5: $06 $E4
    ld b, b                                       ; $50F7: $40
    sub a                                         ; $50F8: $97
    pop af                                        ; $50F9: $F1
    sbc b                                         ; $50FA: $98
    jr nc, jr_02F_50E1                            ; $50FB: $30 $E4

    ld h, b                                       ; $50FD: $60
    sbc b                                         ; $50FE: $98
    inc h                                         ; $50FF: $24
    db $E4                                        ; $5100: $E4
    ld b, b                                       ; $5101: $40
    sbc d                                         ; $5102: $9A
    ld b, $9B                                     ; $5103: $06 $9B
    sbc e                                         ; $5105: $9B
    inc c                                         ; $5106: $0C
    sbc c                                         ; $5107: $99
    ld b, $98                                     ; $5108: $06 $98
    rst RST_20                                    ; $510A: $E7
    nop                                           ; $510B: $00
    ld [bc], a                                    ; $510C: $02
    adc $50                                       ; $510D: $CE $50
    db $ED                                        ; $510F: $ED
    jp hl                                         ; $5110: $E9


    adc b                                         ; $5111: $88
    db $E4                                        ; $5112: $E4
    nop                                           ; $5113: $00
    nop                                           ; $5114: $00
    ld h, b                                       ; $5115: $60
    db $E4                                        ; $5116: $E4
    nop                                           ; $5117: $00
    nop                                           ; $5118: $00
    ld h, b                                       ; $5119: $60
    db $EC                                        ; $511A: $EC
    ret z                                         ; $511B: $C8

    ld d, c                                       ; $511C: $51
    db $EC                                        ; $511D: $EC
    jp c, $EC51                                   ; $511E: $DA $51 $EC

    db $E4                                        ; $5121: $E4
    ld d, c                                       ; $5122: $51
    db $EC                                        ; $5123: $EC
    ld h, $52                                     ; $5124: $26 $52
    db $E4                                        ; $5126: $E4
    ld [hl], c                                    ; $5127: $71
    ld [hl], $06                                  ; $5128: $36 $06
    db $E4                                        ; $512A: $E4
    ld b, c                                       ; $512B: $41
    ld hl, $E406                                  ; $512C: $21 $06 $E4
    ld d, e                                       ; $512F: $53
    ld de, $E40C                                  ; $5130: $11 $0C $E4
    ld h, d                                       ; $5133: $62
    inc h                                         ; $5134: $24
    ld b, $E4                                     ; $5135: $06 $E4
    ld b, c                                       ; $5137: $41
    ld hl, $E406                                  ; $5138: $21 $06 $E4
    ld d, e                                       ; $513B: $53
    ld de, $E406                                  ; $513C: $11 $06 $E4
    ld [hl], c                                    ; $513F: $71
    ld [hl], $06                                  ; $5140: $36 $06
    db $E4                                        ; $5142: $E4
    ld [hl], c                                    ; $5143: $71
    ld [hl], $06                                  ; $5144: $36 $06
    db $E4                                        ; $5146: $E4
    ld b, c                                       ; $5147: $41
    ld hl, $E406                                  ; $5148: $21 $06 $E4
    ld [hl], c                                    ; $514B: $71
    ld [hl], $06                                  ; $514C: $36 $06
    db $E4                                        ; $514E: $E4
    ld b, c                                       ; $514F: $41
    ld hl, $EC06                                  ; $5150: $21 $06 $EC
    jp c, $EC51                                   ; $5153: $DA $51 $EC

    ld l, b                                       ; $5156: $68
    ld d, d                                       ; $5157: $52
    db $E4                                        ; $5158: $E4
    ld [hl], c                                    ; $5159: $71
    ld [hl], $06                                  ; $515A: $36 $06
    db $E4                                        ; $515C: $E4
    ld b, c                                       ; $515D: $41
    ld hl, $E406                                  ; $515E: $21 $06 $E4
    ld d, e                                       ; $5161: $53
    ld de, $E40C                                  ; $5162: $11 $0C $E4
    ld [hl], c                                    ; $5165: $71
    ld [hl], $06                                  ; $5166: $36 $06
    db $E4                                        ; $5168: $E4
    ld b, c                                       ; $5169: $41
    ld hl, $E406                                  ; $516A: $21 $06 $E4
    ld d, e                                       ; $516D: $53
    ld de, $E40C                                  ; $516E: $11 $0C $E4
    ld [hl], c                                    ; $5171: $71
    ld [hl], $06                                  ; $5172: $36 $06
    db $E4                                        ; $5174: $E4
    ld b, c                                       ; $5175: $41
    ld hl, $E406                                  ; $5176: $21 $06 $E4
    ld d, e                                       ; $5179: $53
    ld de, $E406                                  ; $517A: $11 $06 $E4
    ld [hl], c                                    ; $517D: $71
    ld [hl], $06                                  ; $517E: $36 $06
    db $EC                                        ; $5180: $EC
    jp c, $EC51                                   ; $5181: $DA $51 $EC

    and [hl]                                      ; $5184: $A6
    ld d, d                                       ; $5185: $52
    db $E4                                        ; $5186: $E4
    ld [hl], c                                    ; $5187: $71
    ld [hl], $06                                  ; $5188: $36 $06
    db $E4                                        ; $518A: $E4
    ld b, c                                       ; $518B: $41
    ld hl, $E406                                  ; $518C: $21 $06 $E4
    ld [hl], c                                    ; $518F: $71
    ld [hl], $06                                  ; $5190: $36 $06
    db $E4                                        ; $5192: $E4
    ld b, c                                       ; $5193: $41
    ld hl, $E406                                  ; $5194: $21 $06 $E4
    ld h, d                                       ; $5197: $62
    inc h                                         ; $5198: $24
    ld b, $E4                                     ; $5199: $06 $E4
    ld b, c                                       ; $519B: $41
    ld hl, $E406                                  ; $519C: $21 $06 $E4
    ld [hl], c                                    ; $519F: $71
    ld [hl], $06                                  ; $51A0: $36 $06
    db $E4                                        ; $51A2: $E4
    ld d, e                                       ; $51A3: $53
    ld de, $EC06                                  ; $51A4: $11 $06 $EC
    and [hl]                                      ; $51A7: $A6
    ld d, d                                       ; $51A8: $52
    db $E4                                        ; $51A9: $E4
    ld h, d                                       ; $51AA: $62
    inc h                                         ; $51AB: $24
    ld b, $E4                                     ; $51AC: $06 $E4
    ld h, d                                       ; $51AE: $62
    inc h                                         ; $51AF: $24
    ld b, $E4                                     ; $51B0: $06 $E4
    ld [hl], c                                    ; $51B2: $71
    ld [hl], $06                                  ; $51B3: $36 $06
    db $E4                                        ; $51B5: $E4
    ld [hl], c                                    ; $51B6: $71
    ld [hl], $06                                  ; $51B7: $36 $06
    db $E4                                        ; $51B9: $E4
    ld h, d                                       ; $51BA: $62
    inc h                                         ; $51BB: $24
    ld b, $E4                                     ; $51BC: $06 $E4
    ld [hl], c                                    ; $51BE: $71
    ld [hl], $0C                                  ; $51BF: $36 $0C
    db $E4                                        ; $51C1: $E4
    ld [hl], c                                    ; $51C2: $71
    ld [hl], $06                                  ; $51C3: $36 $06
    push hl                                       ; $51C5: $E5
    inc hl                                        ; $51C6: $23
    ld d, c                                       ; $51C7: $51
    db $E4                                        ; $51C8: $E4
    ld b, c                                       ; $51C9: $41
    ld hl, $E406                                  ; $51CA: $21 $06 $E4
    ld b, c                                       ; $51CD: $41
    ld hl, $E406                                  ; $51CE: $21 $06 $E4
    ld d, e                                       ; $51D1: $53
    ld de, $E70C                                  ; $51D2: $11 $0C $E7
    nop                                           ; $51D5: $00
    rla                                           ; $51D6: $17
    ret z                                         ; $51D7: $C8

    ld d, c                                       ; $51D8: $51
    db $ED                                        ; $51D9: $ED
    db $E4                                        ; $51DA: $E4
    ld h, d                                       ; $51DB: $62
    inc h                                         ; $51DC: $24
    ld b, $E7                                     ; $51DD: $06 $E7
    nop                                           ; $51DF: $00
    inc b                                         ; $51E0: $04
    jp c, $ED51                                   ; $51E1: $DA $51 $ED

    db $E4                                        ; $51E4: $E4
    ld [hl], c                                    ; $51E5: $71
    ld [hl], $06                                  ; $51E6: $36 $06
    db $E4                                        ; $51E8: $E4
    ld b, c                                       ; $51E9: $41
    ld hl, $E406                                  ; $51EA: $21 $06 $E4
    ld d, e                                       ; $51ED: $53
    ld de, $E40C                                  ; $51EE: $11 $0C $E4
    ld h, d                                       ; $51F1: $62
    inc h                                         ; $51F2: $24
    ld b, $E4                                     ; $51F3: $06 $E4
    ld b, c                                       ; $51F5: $41
    ld hl, $E406                                  ; $51F6: $21 $06 $E4
    ld d, e                                       ; $51F9: $53
    ld de, $E406                                  ; $51FA: $11 $06 $E4
    ld [hl], c                                    ; $51FD: $71
    ld [hl], $06                                  ; $51FE: $36 $06
    db $E4                                        ; $5200: $E4
    ld [hl], c                                    ; $5201: $71
    ld [hl], $06                                  ; $5202: $36 $06
    db $E4                                        ; $5204: $E4
    ld b, c                                       ; $5205: $41
    ld hl, $E406                                  ; $5206: $21 $06 $E4
    ld [hl], c                                    ; $5209: $71
    ld [hl], $06                                  ; $520A: $36 $06
    db $E4                                        ; $520C: $E4
    ld b, c                                       ; $520D: $41
    ld hl, $E406                                  ; $520E: $21 $06 $E4
    ld h, d                                       ; $5211: $62
    inc h                                         ; $5212: $24
    ld b, $E4                                     ; $5213: $06 $E4
    ld b, c                                       ; $5215: $41
    ld hl, $E406                                  ; $5216: $21 $06 $E4
    ld [hl], c                                    ; $5219: $71
    ld [hl], $06                                  ; $521A: $36 $06
    db $E4                                        ; $521C: $E4
    ld d, e                                       ; $521D: $53
    ld de, $E706                                  ; $521E: $11 $06 $E7
    nop                                           ; $5221: $00
    inc bc                                        ; $5222: $03
    db $E4                                        ; $5223: $E4
    ld d, c                                       ; $5224: $51
    db $ED                                        ; $5225: $ED
    db $E4                                        ; $5226: $E4
    ld [hl], c                                    ; $5227: $71
    ld [hl], $06                                  ; $5228: $36 $06
    db $E4                                        ; $522A: $E4
    ld b, c                                       ; $522B: $41
    ld hl, $E406                                  ; $522C: $21 $06 $E4
    ld d, e                                       ; $522F: $53
    ld de, $E40C                                  ; $5230: $11 $0C $E4
    ld h, d                                       ; $5233: $62
    inc h                                         ; $5234: $24
    ld b, $E4                                     ; $5235: $06 $E4
    ld b, c                                       ; $5237: $41
    ld hl, $E406                                  ; $5238: $21 $06 $E4
    ld d, e                                       ; $523B: $53
    ld de, $E406                                  ; $523C: $11 $06 $E4
    ld [hl], c                                    ; $523F: $71
    ld [hl], $06                                  ; $5240: $36 $06
    db $E4                                        ; $5242: $E4
    ld [hl], c                                    ; $5243: $71
    ld [hl], $06                                  ; $5244: $36 $06
    db $E4                                        ; $5246: $E4
    ld b, c                                       ; $5247: $41
    ld hl, $E406                                  ; $5248: $21 $06 $E4
    ld [hl], c                                    ; $524B: $71
    ld [hl], $06                                  ; $524C: $36 $06
    db $E4                                        ; $524E: $E4
    ld b, c                                       ; $524F: $41
    ld hl, $E406                                  ; $5250: $21 $06 $E4
    ld h, d                                       ; $5253: $62
    inc h                                         ; $5254: $24
    ld b, $E4                                     ; $5255: $06 $E4
    ld b, c                                       ; $5257: $41
    ld hl, $E406                                  ; $5258: $21 $06 $E4
    ld [hl], c                                    ; $525B: $71
    ld [hl], $06                                  ; $525C: $36 $06
    db $E4                                        ; $525E: $E4
    ld d, e                                       ; $525F: $53
    ld de, $E706                                  ; $5260: $11 $06 $E7
    nop                                           ; $5263: $00
    dec c                                         ; $5264: $0D
    ld h, $52                                     ; $5265: $26 $52
    db $ED                                        ; $5267: $ED
    db $E4                                        ; $5268: $E4
    ld [hl], c                                    ; $5269: $71
    ld [hl], $06                                  ; $526A: $36 $06
    db $E4                                        ; $526C: $E4
    ld b, c                                       ; $526D: $41
    ld hl, $E406                                  ; $526E: $21 $06 $E4
    ld d, e                                       ; $5271: $53
    ld de, $E40C                                  ; $5272: $11 $0C $E4
    ld [hl], c                                    ; $5275: $71
    ld [hl], $06                                  ; $5276: $36 $06
    db $E4                                        ; $5278: $E4
    ld b, c                                       ; $5279: $41
    ld hl, $E406                                  ; $527A: $21 $06 $E4
    ld d, e                                       ; $527D: $53
    ld de, $E40C                                  ; $527E: $11 $0C $E4
    ld [hl], c                                    ; $5281: $71
    ld [hl], $06                                  ; $5282: $36 $06
    db $E4                                        ; $5284: $E4
    ld b, c                                       ; $5285: $41
    ld hl, $E406                                  ; $5286: $21 $06 $E4
    ld d, e                                       ; $5289: $53
    ld de, $E406                                  ; $528A: $11 $06 $E4
    ld [hl], c                                    ; $528D: $71
    ld [hl], $06                                  ; $528E: $36 $06
    db $E4                                        ; $5290: $E4
    ld [hl], c                                    ; $5291: $71
    ld [hl], $06                                  ; $5292: $36 $06
    db $E4                                        ; $5294: $E4
    ld b, c                                       ; $5295: $41
    ld hl, $E406                                  ; $5296: $21 $06 $E4

jr_02F_5299:
    ld [hl], c                                    ; $5299: $71
    ld [hl], $06                                  ; $529A: $36 $06
    db $E4                                        ; $529C: $E4
    ld d, e                                       ; $529D: $53
    ld de, $E706                                  ; $529E: $11 $06 $E7
    nop                                           ; $52A1: $00
    rlca                                          ; $52A2: $07
    ld l, b                                       ; $52A3: $68
    ld d, d                                       ; $52A4: $52
    db $ED                                        ; $52A5: $ED
    db $E4                                        ; $52A6: $E4
    ld [hl], c                                    ; $52A7: $71
    ld [hl], $06                                  ; $52A8: $36 $06
    db $E4                                        ; $52AA: $E4
    ld b, c                                       ; $52AB: $41
    ld hl, $E406                                  ; $52AC: $21 $06 $E4
    ld d, e                                       ; $52AF: $53
    ld de, $E40C                                  ; $52B0: $11 $0C $E4
    ld h, d                                       ; $52B3: $62
    inc h                                         ; $52B4: $24
    ld b, $E4                                     ; $52B5: $06 $E4
    ld b, c                                       ; $52B7: $41
    ld hl, $E406                                  ; $52B8: $21 $06 $E4
    ld d, e                                       ; $52BB: $53
    ld de, $E406                                  ; $52BC: $11 $06 $E4
    ld [hl], c                                    ; $52BF: $71
    ld [hl], $06                                  ; $52C0: $36 $06
    db $ED                                        ; $52C2: $ED
    inc b                                         ; $52C3: $04
    add b                                         ; $52C4: $80
    inc de                                        ; $52C5: $13
    call c, Call_000_0C52                         ; $52C6: $DC $52 $0C
    add c                                         ; $52C9: $81
    add b                                         ; $52CA: $80
    jr jr_02F_5299                                ; $52CB: $18 $CC

    ld d, e                                       ; $52CD: $53
    inc c                                         ; $52CE: $0C
    add c                                         ; $52CF: $81
    add b                                         ; $52D0: $80
    dec e                                         ; $52D1: $1D
    sub e                                         ; $52D2: $93
    ld d, h                                       ; $52D3: $54
    inc c                                         ; $52D4: $0C
    add c                                         ; $52D5: $81
    add b                                         ; $52D6: $80
    ld [hl+], a                                   ; $52D7: $22
    jr nc, jr_02F_532F                            ; $52D8: $30 $55

jr_02F_52DA:
    nop                                           ; $52DA: $00
    add c                                         ; $52DB: $81
    db $E4                                        ; $52DC: $E4
    ld [hl], a                                    ; $52DD: $77
    jp hl                                         ; $52DE: $E9


    ld de, $C0EE                                  ; $52DF: $11 $EE $C0
    db $EC                                        ; $52E2: $EC
    ldh a, [rHDMA2]                               ; $52E3: $F0 $52
    db $EC                                        ; $52E5: $EC
    ld h, $53                                     ; $52E6: $26 $53
    add b                                         ; $52E8: $80

jr_02F_52E9:
    ld b, $EC                                     ; $52E9: $06 $EC
    ld e, d                                       ; $52EB: $5A
    ld d, e                                       ; $52EC: $53
    push hl                                       ; $52ED: $E5
    call c, $E452                                 ; $52EE: $DC $52 $E4

jr_02F_52F1:
    ld a, b                                       ; $52F1: $78

jr_02F_52F2:
    sbc b                                         ; $52F2: $98
    jr nc, @-$1A                                  ; $52F3: $30 $E4

    ld e, b                                       ; $52F5: $58
    pop af                                        ; $52F6: $F1
    sbc b                                         ; $52F7: $98
    db $E4                                        ; $52F8: $E4

jr_02F_52F9:
    ld a, b                                       ; $52F9: $78
    sbc c                                         ; $52FA: $99
    jr @-$1A                                      ; $52FB: $18 $E4

    ld e, b                                       ; $52FD: $58
    pop af                                        ; $52FE: $F1
    sbc c                                         ; $52FF: $99
    db $E4                                        ; $5300: $E4

jr_02F_5301:
    ld a, b                                       ; $5301: $78
    sub [hl]                                      ; $5302: $96
    jr jr_02F_52E9                                ; $5303: $18 $E4

    ld e, b                                       ; $5305: $58
    pop af                                        ; $5306: $F1
    sub [hl]                                      ; $5307: $96

jr_02F_5308:
    db $E4                                        ; $5308: $E4
    ld a, b                                       ; $5309: $78
    sbc c                                         ; $530A: $99
    jr nc, jr_02F_52F1                            ; $530B: $30 $E4

    ld e, b                                       ; $530D: $58
    pop af                                        ; $530E: $F1
    sbc c                                         ; $530F: $99
    db $E4                                        ; $5310: $E4
    ld a, b                                       ; $5311: $78
    sbc l                                         ; $5312: $9D
    jr jr_02F_52F9                                ; $5313: $18 $E4

    ld e, b                                       ; $5315: $58
    pop af                                        ; $5316: $F1
    sbc l                                         ; $5317: $9D
    db $E4                                        ; $5318: $E4
    ld a, b                                       ; $5319: $78
    sbc e                                         ; $531A: $9B
    jr jr_02F_5301                                ; $531B: $18 $E4

    ld e, b                                       ; $531D: $58
    pop af                                        ; $531E: $F1
    sbc e                                         ; $531F: $9B
    rst RST_20                                    ; $5320: $E7
    nop                                           ; $5321: $00
    ld [bc], a                                    ; $5322: $02
    ldh a, [rHDMA2]                               ; $5323: $F0 $52
    db $ED                                        ; $5325: $ED
    sbc d                                         ; $5326: $9A
    inc c                                         ; $5327: $0C
    sub [hl]                                      ; $5328: $96
    sbc b                                         ; $5329: $98
    sub l                                         ; $532A: $95
    sub [hl]                                      ; $532B: $96
    sub e                                         ; $532C: $93
    sub l                                         ; $532D: $95
    sub c                                         ; $532E: $91

jr_02F_532F:
    sub e                                         ; $532F: $93
    sub c                                         ; $5330: $91
    sub e                                         ; $5331: $93
    sub l                                         ; $5332: $95
    sub [hl]                                      ; $5333: $96
    sbc b                                         ; $5334: $98
    sbc d                                         ; $5335: $9A
    sbc e                                         ; $5336: $9B
    sbc l                                         ; $5337: $9D
    inc h                                         ; $5338: $24
    sbc e                                         ; $5339: $9B
    and b                                         ; $533A: $A0
    sbc a                                         ; $533B: $9F
    sbc l                                         ; $533C: $9D
    jr jr_02F_52DA                                ; $533D: $18 $9B

    sbc l                                         ; $533F: $9D
    inc c                                         ; $5340: $0C
    sbc a                                         ; $5341: $9F
    and d                                         ; $5342: $A2
    sbc d                                         ; $5343: $9A
    sbc b                                         ; $5344: $98
    sub [hl]                                      ; $5345: $96
    sbc b                                         ; $5346: $98
    sbc l                                         ; $5347: $9D
    sbc b                                         ; $5348: $98
    sub [hl]                                      ; $5349: $96
    sub l                                         ; $534A: $95
    sub c                                         ; $534B: $91
    sub e                                         ; $534C: $93
    sub [hl]                                      ; $534D: $96
    sub l                                         ; $534E: $95
    sub c                                         ; $534F: $91
    sub h                                         ; $5350: $94
    inc h                                         ; $5351: $24
    sbc e                                         ; $5352: $9B
    sbc b                                         ; $5353: $98
    sbc l                                         ; $5354: $9D
    sbc e                                         ; $5355: $9B
    jr jr_02F_52F2                                ; $5356: $18 $9A

    ld [de], a                                    ; $5358: $12
    db $ED                                        ; $5359: $ED
    sub l                                         ; $535A: $95
    inc h                                         ; $535B: $24
    sbc b                                         ; $535C: $98
    ld b, $97                                     ; $535D: $06 $97
    sbc b                                         ; $535F: $98
    ld [de], a                                    ; $5360: $12
    sbc d                                         ; $5361: $9A
    sbc h                                         ; $5362: $9C
    inc c                                         ; $5363: $0C
    sbc a                                         ; $5364: $9F
    ld [de], a                                    ; $5365: $12
    sbc h                                         ; $5366: $9C
    and e                                         ; $5367: $A3
    inc c                                         ; $5368: $0C
    sbc a                                         ; $5369: $9F
    jr jr_02F_5308                                ; $536A: $18 $9C

    sbc [hl]                                      ; $536C: $9E
    inc h                                         ; $536D: $24
    sbc h                                         ; $536E: $9C
    ld b, $9B                                     ; $536F: $06 $9B
    sbc h                                         ; $5371: $9C
    ld [de], a                                    ; $5372: $12
    sbc c                                         ; $5373: $99
    and e                                         ; $5374: $A3
    inc c                                         ; $5375: $0C
    and c                                         ; $5376: $A1
    ld [de], a                                    ; $5377: $12
    and b                                         ; $5378: $A0
    sbc [hl]                                      ; $5379: $9E
    inc c                                         ; $537A: $0C
    and b                                         ; $537B: $A0
    ld [de], a                                    ; $537C: $12
    and c                                         ; $537D: $A1
    and e                                         ; $537E: $A3
    inc c                                         ; $537F: $0C
    and h                                         ; $5380: $A4

jr_02F_5381:
    inc h                                         ; $5381: $24
    and d                                         ; $5382: $A2
    ld b, $A0                                     ; $5383: $06 $A0
    and d                                         ; $5385: $A2
    ld [de], a                                    ; $5386: $12
    and a                                         ; $5387: $A7
    and d                                         ; $5388: $A2
    inc c                                         ; $5389: $0C
    and b                                         ; $538A: $A0
    ld [de], a                                    ; $538B: $12
    sbc a                                         ; $538C: $9F
    sbc e                                         ; $538D: $9B
    inc c                                         ; $538E: $0C
    sbc l                                         ; $538F: $9D
    ld [de], a                                    ; $5390: $12
    sbc a                                         ; $5391: $9F
    and b                                         ; $5392: $A0
    inc c                                         ; $5393: $0C
    and c                                         ; $5394: $A1
    inc h                                         ; $5395: $24
    xor b                                         ; $5396: $A8
    db $E4                                        ; $5397: $E4
    ld e, b                                       ; $5398: $58
    pop af                                        ; $5399: $F1
    xor b                                         ; $539A: $A8
    jr jr_02F_5381                                ; $539B: $18 $E4

jr_02F_539D:
    ld [hl], d                                    ; $539D: $72
    and c                                         ; $539E: $A1
    ld b, $9F                                     ; $539F: $06 $9F
    xor b                                         ; $53A1: $A8
    and [hl]                                      ; $53A2: $A6
    sbc a                                         ; $53A3: $9F
    sbc h                                         ; $53A4: $9C
    and h                                         ; $53A5: $A4
    and c                                         ; $53A6: $A1
    sbc h                                         ; $53A7: $9C
    sbc d                                         ; $53A8: $9A
    and c                                         ; $53A9: $A1
    sbc a                                         ; $53AA: $9F
    sbc b                                         ; $53AB: $98
    sub a                                         ; $53AC: $97
    sbc a                                         ; $53AD: $9F
    sbc h                                         ; $53AE: $9C
    db $E4                                        ; $53AF: $E4
    ld [hl], a                                    ; $53B0: $77
    sbc a                                         ; $53B1: $9F
    inc c                                         ; $53B2: $0C
    sbc [hl]                                      ; $53B3: $9E
    sbc d                                         ; $53B4: $9A
    sbc c                                         ; $53B5: $99
    sub e                                         ; $53B6: $93
    jr jr_02F_539D                                ; $53B7: $18 $E4

    ld d, a                                       ; $53B9: $57
    pop af                                        ; $53BA: $F1
    sub e                                         ; $53BB: $93
    db $E4                                        ; $53BC: $E4
    scf                                           ; $53BD: $37
    sbc c                                         ; $53BE: $99
    inc c                                         ; $53BF: $0C
    sbc c                                         ; $53C0: $99
    sbc c                                         ; $53C1: $99
    db $E4                                        ; $53C2: $E4
    ld d, a                                       ; $53C3: $57
    sbc c                                         ; $53C4: $99
    sbc c                                         ; $53C5: $99
    sbc c                                         ; $53C6: $99
    db $E4                                        ; $53C7: $E4
    ld [hl], a                                    ; $53C8: $77
    sbc c                                         ; $53C9: $99
    sbc c                                         ; $53CA: $99
    db $ED                                        ; $53CB: $ED
    db $E4                                        ; $53CC: $E4
    ld [hl], a                                    ; $53CD: $77
    jp hl                                         ; $53CE: $E9


    ld [hl+], a                                   ; $53CF: $22
    xor $C0                                       ; $53D0: $EE $C0
    db $EC                                        ; $53D2: $EC
    rrca                                          ; $53D3: $0F
    ld d, h                                       ; $53D4: $54
    db $E4                                        ; $53D5: $E4
    ld d, a                                       ; $53D6: $57
    add b                                         ; $53D7: $80
    ld b, $EC                                     ; $53D8: $06 $EC
    ld b, l                                       ; $53DA: $45
    ld d, h                                       ; $53DB: $54
    db $EC                                        ; $53DC: $EC
    ld a, c                                       ; $53DD: $79

jr_02F_53DE:
    ld d, h                                       ; $53DE: $54
    and $04                                       ; $53DF: $E6 $04
    db $EC                                        ; $53E1: $EC
    ld a, c                                       ; $53E2: $79
    ld d, h                                       ; $53E3: $54
    and $04                                       ; $53E4: $E6 $04
    db $EC                                        ; $53E6: $EC
    ld a, c                                       ; $53E7: $79
    ld d, h                                       ; $53E8: $54
    and $04                                       ; $53E9: $E6 $04
    db $EC                                        ; $53EB: $EC
    ld a, c                                       ; $53EC: $79
    ld d, h                                       ; $53ED: $54
    and $F4                                       ; $53EE: $E6 $F4
    db $E4                                        ; $53F0: $E4
    ld [hl], a                                    ; $53F1: $77
    sbc d                                         ; $53F2: $9A
    inc c                                         ; $53F3: $0C
    sbc c                                         ; $53F4: $99
    sub e                                         ; $53F5: $93
    sub d                                         ; $53F6: $92
    adc [hl]                                      ; $53F7: $8E

jr_02F_53F8:
    jr jr_02F_53DE                                ; $53F8: $18 $E4

    ld d, a                                       ; $53FA: $57
    pop af                                        ; $53FB: $F1
    adc [hl]                                      ; $53FC: $8E
    db $E4                                        ; $53FD: $E4
    scf                                           ; $53FE: $37
    sub d                                         ; $53FF: $92

jr_02F_5400:
    inc c                                         ; $5400: $0C
    sub d                                         ; $5401: $92
    sub d                                         ; $5402: $92
    db $E4                                        ; $5403: $E4
    ld d, a                                       ; $5404: $57
    sub d                                         ; $5405: $92
    sub d                                         ; $5406: $92
    sub d                                         ; $5407: $92

jr_02F_5408:
    db $E4                                        ; $5408: $E4
    ld [hl], a                                    ; $5409: $77
    sub d                                         ; $540A: $92
    sub d                                         ; $540B: $92
    push hl                                       ; $540C: $E5
    call z, $E453                                 ; $540D: $CC $53 $E4

jr_02F_5410:
    ld a, b                                       ; $5410: $78

jr_02F_5411:
    sub c                                         ; $5411: $91
    jr nc, jr_02F_53F8                            ; $5412: $30 $E4

    ld e, b                                       ; $5414: $58
    pop af                                        ; $5415: $F1
    sub c                                         ; $5416: $91
    db $E4                                        ; $5417: $E4

jr_02F_5418:
    ld a, b                                       ; $5418: $78
    sub d                                         ; $5419: $92
    jr jr_02F_5400                                ; $541A: $18 $E4

    ld e, b                                       ; $541C: $58
    pop af                                        ; $541D: $F1
    sub d                                         ; $541E: $92
    db $E4                                        ; $541F: $E4

jr_02F_5420:
    ld a, b                                       ; $5420: $78
    adc a                                         ; $5421: $8F
    jr jr_02F_5408                                ; $5422: $18 $E4

    ld e, b                                       ; $5424: $58
    pop af                                        ; $5425: $F1
    adc a                                         ; $5426: $8F
    db $E4                                        ; $5427: $E4
    ld a, b                                       ; $5428: $78
    sub d                                         ; $5429: $92
    jr nc, jr_02F_5410                            ; $542A: $30 $E4

    ld e, b                                       ; $542C: $58
    pop af                                        ; $542D: $F1
    sub d                                         ; $542E: $92
    db $E4                                        ; $542F: $E4
    ld a, b                                       ; $5430: $78
    sub [hl]                                      ; $5431: $96
    jr jr_02F_5418                                ; $5432: $18 $E4

    ld e, b                                       ; $5434: $58
    pop af                                        ; $5435: $F1
    sub [hl]                                      ; $5436: $96
    db $E4                                        ; $5437: $E4
    ld a, b                                       ; $5438: $78
    sub h                                         ; $5439: $94
    jr jr_02F_5420                                ; $543A: $18 $E4

    ld e, b                                       ; $543C: $58
    pop af                                        ; $543D: $F1
    sub h                                         ; $543E: $94
    rst RST_20                                    ; $543F: $E7
    nop                                           ; $5440: $00
    ld [bc], a                                    ; $5441: $02
    rrca                                          ; $5442: $0F
    ld d, h                                       ; $5443: $54
    db $ED                                        ; $5444: $ED
    sbc d                                         ; $5445: $9A
    inc c                                         ; $5446: $0C
    sub [hl]                                      ; $5447: $96
    sbc b                                         ; $5448: $98
    sub l                                         ; $5449: $95
    sub [hl]                                      ; $544A: $96
    sub e                                         ; $544B: $93
    sub l                                         ; $544C: $95
    sub c                                         ; $544D: $91
    sub e                                         ; $544E: $93
    sub c                                         ; $544F: $91
    sub e                                         ; $5450: $93
    sub l                                         ; $5451: $95
    sub [hl]                                      ; $5452: $96
    sbc b                                         ; $5453: $98
    sbc d                                         ; $5454: $9A
    sbc e                                         ; $5455: $9B
    sbc l                                         ; $5456: $9D
    inc h                                         ; $5457: $24
    sbc e                                         ; $5458: $9B
    and b                                         ; $5459: $A0
    sbc a                                         ; $545A: $9F
    sbc l                                         ; $545B: $9D
    jr @-$63                                      ; $545C: $18 $9B

    sbc l                                         ; $545E: $9D
    inc c                                         ; $545F: $0C
    sbc a                                         ; $5460: $9F
    and d                                         ; $5461: $A2
    sbc d                                         ; $5462: $9A
    sbc b                                         ; $5463: $98
    sub [hl]                                      ; $5464: $96
    sbc b                                         ; $5465: $98
    sbc l                                         ; $5466: $9D
    sbc b                                         ; $5467: $98
    sub [hl]                                      ; $5468: $96
    sub l                                         ; $5469: $95
    sub c                                         ; $546A: $91
    sub e                                         ; $546B: $93
    sub [hl]                                      ; $546C: $96
    sub l                                         ; $546D: $95
    sub c                                         ; $546E: $91
    sub h                                         ; $546F: $94
    inc h                                         ; $5470: $24
    sbc e                                         ; $5471: $9B
    sbc b                                         ; $5472: $98
    sbc l                                         ; $5473: $9D
    sbc e                                         ; $5474: $9B
    jr jr_02F_5411                                ; $5475: $18 $9A

    ld [de], a                                    ; $5477: $12
    db $ED                                        ; $5478: $ED
    and c                                         ; $5479: $A1
    ld [$989C], sp                                ; $547A: $08 $9C $98
    sub l                                         ; $547D: $95
    sub b                                         ; $547E: $90
    adc h                                         ; $547F: $8C
    adc c                                         ; $5480: $89
    adc h                                         ; $5481: $8C
    sub b                                         ; $5482: $90
    adc h                                         ; $5483: $8C
    sub b                                         ; $5484: $90
    sub l                                         ; $5485: $95
    sub b                                         ; $5486: $90
    sub l                                         ; $5487: $95
    sbc b                                         ; $5488: $98
    sub l                                         ; $5489: $95
    sbc b                                         ; $548A: $98
    sbc h                                         ; $548B: $9C
    sbc b                                         ; $548C: $98
    sbc h                                         ; $548D: $9C
    and c                                         ; $548E: $A1
    sbc h                                         ; $548F: $9C
    and c                                         ; $5490: $A1
    and h                                         ; $5491: $A4
    db $ED                                        ; $5492: $ED
    db $E4                                        ; $5493: $E4
    ld b, b                                       ; $5494: $40
    jp hl                                         ; $5495: $E9


    ld b, h                                       ; $5496: $44
    di                                            ; $5497: $F3
    ld [bc], a                                    ; $5498: $02
    push af                                       ; $5499: $F5
    ld [hl-], a                                   ; $549A: $32
    db $EC                                        ; $549B: $EC
    ret nc                                        ; $549C: $D0

    ld d, h                                       ; $549D: $54
    db $EC                                        ; $549E: $EC
    rst RST_30                                    ; $549F: $F7
    ld d, h                                       ; $54A0: $54

jr_02F_54A1:
    db $EC                                        ; $54A1: $EC
    ld e, $55                                     ; $54A2: $1E $55
    and $04                                       ; $54A4: $E6 $04
    db $EC                                        ; $54A6: $EC
    ld e, $55                                     ; $54A7: $1E $55
    and $04                                       ; $54A9: $E6 $04
    db $EC                                        ; $54AB: $EC
    ld e, $55                                     ; $54AC: $1E $55
    and $04                                       ; $54AE: $E6 $04
    db $EC                                        ; $54B0: $EC
    ld e, $55                                     ; $54B1: $1E $55
    and $F4                                       ; $54B3: $E6 $F4
    sub e                                         ; $54B5: $93
    inc c                                         ; $54B6: $0C
    sub d                                         ; $54B7: $92
    adc [hl]                                      ; $54B8: $8E
    adc l                                         ; $54B9: $8D
    add a                                         ; $54BA: $87
    jr jr_02F_54A1                                ; $54BB: $18 $E4

    ld h, b                                       ; $54BD: $60
    pop af                                        ; $54BE: $F1
    add a                                         ; $54BF: $87
    db $E4                                        ; $54C0: $E4
    ld h, b                                       ; $54C1: $60
    sbc c                                         ; $54C2: $99
    inc c                                         ; $54C3: $0C
    sbc c                                         ; $54C4: $99
    sbc c                                         ; $54C5: $99
    sbc c                                         ; $54C6: $99
    db $E4                                        ; $54C7: $E4
    ld b, b                                       ; $54C8: $40
    sbc c                                         ; $54C9: $99
    sbc c                                         ; $54CA: $99
    sbc c                                         ; $54CB: $99
    sbc c                                         ; $54CC: $99
    push hl                                       ; $54CD: $E5
    sub e                                         ; $54CE: $93
    ld d, h                                       ; $54CF: $54
    add l                                         ; $54D0: $85
    inc c                                         ; $54D1: $0C
    adc h                                         ; $54D2: $8C
    adc l                                         ; $54D3: $8D
    add l                                         ; $54D4: $85
    adc h                                         ; $54D5: $8C
    adc l                                         ; $54D6: $8D
    add l                                         ; $54D7: $85
    adc h                                         ; $54D8: $8C
    adc l                                         ; $54D9: $8D
    add l                                         ; $54DA: $85
    adc h                                         ; $54DB: $8C
    adc l                                         ; $54DC: $8D
    add l                                         ; $54DD: $85
    adc h                                         ; $54DE: $8C
    adc l                                         ; $54DF: $8D
    add l                                         ; $54E0: $85
    add [hl]                                      ; $54E1: $86
    adc l                                         ; $54E2: $8D
    adc [hl]                                      ; $54E3: $8E
    add [hl]                                      ; $54E4: $86
    adc l                                         ; $54E5: $8D
    adc [hl]                                      ; $54E6: $8E
    add [hl]                                      ; $54E7: $86
    adc l                                         ; $54E8: $8D
    adc [hl]                                      ; $54E9: $8E
    add [hl]                                      ; $54EA: $86
    adc l                                         ; $54EB: $8D
    adc [hl]                                      ; $54EC: $8E
    add [hl]                                      ; $54ED: $86
    adc l                                         ; $54EE: $8D
    adc [hl]                                      ; $54EF: $8E
    add [hl]                                      ; $54F0: $86
    rst RST_20                                    ; $54F1: $E7
    nop                                           ; $54F2: $00
    ld [bc], a                                    ; $54F3: $02
    ret nc                                        ; $54F4: $D0

    ld d, h                                       ; $54F5: $54
    db $ED                                        ; $54F6: $ED
    add a                                         ; $54F7: $87
    inc c                                         ; $54F8: $0C
    add a                                         ; $54F9: $87
    adc [hl]                                      ; $54FA: $8E
    add a                                         ; $54FB: $87
    add b                                         ; $54FC: $80
    add b                                         ; $54FD: $80
    add a                                         ; $54FE: $87
    add a                                         ; $54FF: $87
    adc [hl]                                      ; $5500: $8E
    add a                                         ; $5501: $87
    add b                                         ; $5502: $80
    add b                                         ; $5503: $80
    add a                                         ; $5504: $87
    add a                                         ; $5505: $87
    adc [hl]                                      ; $5506: $8E
    add a                                         ; $5507: $87
    adc b                                         ; $5508: $88
    adc b                                         ; $5509: $88
    adc a                                         ; $550A: $8F
    adc b                                         ; $550B: $88
    add b                                         ; $550C: $80
    add b                                         ; $550D: $80
    adc b                                         ; $550E: $88
    adc b                                         ; $550F: $88
    adc a                                         ; $5510: $8F
    adc b                                         ; $5511: $88
    add b                                         ; $5512: $80
    add b                                         ; $5513: $80
    adc b                                         ; $5514: $88
    adc b                                         ; $5515: $88
    adc a                                         ; $5516: $8F
    adc b                                         ; $5517: $88
    rst RST_20                                    ; $5518: $E7
    nop                                           ; $5519: $00
    ld [bc], a                                    ; $551A: $02
    rst RST_30                                    ; $551B: $F7
    ld d, h                                       ; $551C: $54
    db $ED                                        ; $551D: $ED
    adc c                                         ; $551E: $89
    inc c                                         ; $551F: $0C
    sub b                                         ; $5520: $90
    sub l                                         ; $5521: $95
    adc c                                         ; $5522: $89
    sub b                                         ; $5523: $90
    sub l                                         ; $5524: $95
    adc c                                         ; $5525: $89
    sub b                                         ; $5526: $90
    sub l                                         ; $5527: $95
    adc c                                         ; $5528: $89
    sub b                                         ; $5529: $90
    sub l                                         ; $552A: $95
    adc c                                         ; $552B: $89
    sub b                                         ; $552C: $90
    sub l                                         ; $552D: $95
    adc c                                         ; $552E: $89
    db $ED                                        ; $552F: $ED
    jp hl                                         ; $5530: $E9


    adc b                                         ; $5531: $88
    db $EC                                        ; $5532: $EC
    ld c, a                                       ; $5533: $4F
    ld d, l                                       ; $5534: $55
    db $EC                                        ; $5535: $EC
    sub l                                         ; $5536: $95
    ld d, l                                       ; $5537: $55
    db $EC                                        ; $5538: $EC
    db $D3                                        ; $5539: $D3
    ld d, l                                       ; $553A: $55
    db $EC                                        ; $553B: $EC
    jp hl                                         ; $553C: $E9


    ld d, l                                       ; $553D: $55
    db $E4                                        ; $553E: $E4
    ld h, d                                       ; $553F: $62
    inc h                                         ; $5540: $24
    inc c                                         ; $5541: $0C
    db $E4                                        ; $5542: $E4
    ld [hl], c                                    ; $5543: $71
    ld [hl], $0C                                  ; $5544: $36 $0C
    db $EC                                        ; $5546: $EC
    ei                                            ; $5547: $FB
    ld d, l                                       ; $5548: $55
    db $EC                                        ; $5549: $EC
    dec b                                         ; $554A: $05
    ld d, [hl]                                    ; $554B: $56
    push hl                                       ; $554C: $E5
    jr nc, @+$57                                  ; $554D: $30 $55

    db $E4                                        ; $554F: $E4
    ld [hl], c                                    ; $5550: $71
    ld [hl], $0C                                  ; $5551: $36 $0C
    db $E4                                        ; $5553: $E4
    ld [hl], c                                    ; $5554: $71
    ld [hl], $0C                                  ; $5555: $36 $0C
    db $E4                                        ; $5557: $E4
    ld h, d                                       ; $5558: $62
    inc h                                         ; $5559: $24
    inc c                                         ; $555A: $0C
    db $E4                                        ; $555B: $E4
    ld [hl], c                                    ; $555C: $71
    ld [hl], $0C                                  ; $555D: $36 $0C
    db $E4                                        ; $555F: $E4
    ld [hl], c                                    ; $5560: $71
    ld [hl], $0C                                  ; $5561: $36 $0C
    db $E4                                        ; $5563: $E4
    ld h, d                                       ; $5564: $62
    inc h                                         ; $5565: $24
    inc c                                         ; $5566: $0C
    db $E4                                        ; $5567: $E4
    ld [hl], c                                    ; $5568: $71
    ld [hl], $0C                                  ; $5569: $36 $0C
    db $E4                                        ; $556B: $E4
    ld [hl], c                                    ; $556C: $71
    ld [hl], $0C                                  ; $556D: $36 $0C
    db $E4                                        ; $556F: $E4
    ld h, d                                       ; $5570: $62
    inc h                                         ; $5571: $24
    inc c                                         ; $5572: $0C
    db $E4                                        ; $5573: $E4
    ld [hl], c                                    ; $5574: $71
    ld [hl], $0C                                  ; $5575: $36 $0C
    db $E4                                        ; $5577: $E4
    ld [hl], c                                    ; $5578: $71
    ld [hl], $0C                                  ; $5579: $36 $0C
    db $E4                                        ; $557B: $E4
    ld h, d                                       ; $557C: $62
    inc h                                         ; $557D: $24
    inc c                                         ; $557E: $0C
    db $E4                                        ; $557F: $E4
    ld [hl], c                                    ; $5580: $71
    ld [hl], $0C                                  ; $5581: $36 $0C
    db $E4                                        ; $5583: $E4
    ld [hl], c                                    ; $5584: $71
    ld [hl], $0C                                  ; $5585: $36 $0C
    db $E4                                        ; $5587: $E4
    ld h, d                                       ; $5588: $62
    inc h                                         ; $5589: $24
    inc c                                         ; $558A: $0C
    db $E4                                        ; $558B: $E4
    ld [hl], c                                    ; $558C: $71
    ld [hl], $0C                                  ; $558D: $36 $0C
    rst RST_20                                    ; $558F: $E7
    nop                                           ; $5590: $00
    inc b                                         ; $5591: $04
    ld c, a                                       ; $5592: $4F
    ld d, l                                       ; $5593: $55
    db $ED                                        ; $5594: $ED
    db $E4                                        ; $5595: $E4
    ld [hl], c                                    ; $5596: $71
    ld [hl], $0C                                  ; $5597: $36 $0C
    db $E4                                        ; $5599: $E4
    ld [hl], c                                    ; $559A: $71
    ld [hl], $0C                                  ; $559B: $36 $0C
    db $E4                                        ; $559D: $E4
    ld h, d                                       ; $559E: $62
    inc h                                         ; $559F: $24
    inc c                                         ; $55A0: $0C
    db $E4                                        ; $55A1: $E4
    ld [hl], c                                    ; $55A2: $71
    ld [hl], $0C                                  ; $55A3: $36 $0C
    db $E4                                        ; $55A5: $E4
    ld b, c                                       ; $55A6: $41
    ld hl, $E418                                  ; $55A7: $21 $18 $E4
    ld [hl], c                                    ; $55AA: $71
    ld [hl], $0C                                  ; $55AB: $36 $0C
    db $E4                                        ; $55AD: $E4
    ld [hl], c                                    ; $55AE: $71
    ld [hl], $0C                                  ; $55AF: $36 $0C
    db $E4                                        ; $55B1: $E4
    ld h, d                                       ; $55B2: $62
    inc h                                         ; $55B3: $24
    inc c                                         ; $55B4: $0C
    db $E4                                        ; $55B5: $E4
    ld [hl], c                                    ; $55B6: $71
    ld [hl], $0C                                  ; $55B7: $36 $0C
    db $E4                                        ; $55B9: $E4
    ld b, c                                       ; $55BA: $41
    ld hl, $E418                                  ; $55BB: $21 $18 $E4
    ld [hl], c                                    ; $55BE: $71
    ld [hl], $0C                                  ; $55BF: $36 $0C
    db $E4                                        ; $55C1: $E4
    ld [hl], c                                    ; $55C2: $71
    ld [hl], $0C                                  ; $55C3: $36 $0C
    db $E4                                        ; $55C5: $E4
    ld h, d                                       ; $55C6: $62
    inc h                                         ; $55C7: $24
    inc c                                         ; $55C8: $0C
    db $E4                                        ; $55C9: $E4
    ld [hl], c                                    ; $55CA: $71
    ld [hl], $0C                                  ; $55CB: $36 $0C
    rst RST_20                                    ; $55CD: $E7
    nop                                           ; $55CE: $00
    inc b                                         ; $55CF: $04
    sub l                                         ; $55D0: $95
    ld d, l                                       ; $55D1: $55
    db $ED                                        ; $55D2: $ED
    db $E4                                        ; $55D3: $E4
    ld [hl], c                                    ; $55D4: $71
    ld [hl], $0C                                  ; $55D5: $36 $0C
    db $E4                                        ; $55D7: $E4
    ld [hl], c                                    ; $55D8: $71
    ld [hl], $0C                                  ; $55D9: $36 $0C
    db $E4                                        ; $55DB: $E4
    ld h, d                                       ; $55DC: $62
    inc h                                         ; $55DD: $24
    inc c                                         ; $55DE: $0C
    db $E4                                        ; $55DF: $E4
    ld [hl], c                                    ; $55E0: $71
    ld [hl], $0C                                  ; $55E1: $36 $0C
    rst RST_20                                    ; $55E3: $E7
    nop                                           ; $55E4: $00
    db $10                                        ; $55E5: $10
    db $D3                                        ; $55E6: $D3
    ld d, l                                       ; $55E7: $55
    db $ED                                        ; $55E8: $ED
    db $E4                                        ; $55E9: $E4
    ld h, d                                       ; $55EA: $62
    inc h                                         ; $55EB: $24
    inc c                                         ; $55EC: $0C
    db $E4                                        ; $55ED: $E4
    ld [hl], c                                    ; $55EE: $71
    ld [hl], $0C                                  ; $55EF: $36 $0C
    db $E4                                        ; $55F1: $E4
    ld [hl], c                                    ; $55F2: $71
    ld [hl], $0C                                  ; $55F3: $36 $0C
    rst RST_20                                    ; $55F5: $E7
    nop                                           ; $55F6: $00
    ld [bc], a                                    ; $55F7: $02
    jp hl                                         ; $55F8: $E9


    ld d, l                                       ; $55F9: $55
    db $ED                                        ; $55FA: $ED
    db $E4                                        ; $55FB: $E4
    ld [hl], c                                    ; $55FC: $71
    ld [hl], $0C                                  ; $55FD: $36 $0C
    rst RST_20                                    ; $55FF: $E7
    nop                                           ; $5600: $00
    inc b                                         ; $5601: $04
    ei                                            ; $5602: $FB
    ld d, l                                       ; $5603: $55
    db $ED                                        ; $5604: $ED
    db $E4                                        ; $5605: $E4
    ld h, d                                       ; $5606: $62
    inc h                                         ; $5607: $24
    inc c                                         ; $5608: $0C
    rst RST_20                                    ; $5609: $E7
    nop                                           ; $560A: $00
    inc b                                         ; $560B: $04
    dec b                                         ; $560C: $05
    ld d, [hl]                                    ; $560D: $56
    db $ED                                        ; $560E: $ED
    inc b                                         ; $560F: $04
    add b                                         ; $5610: $80
    inc de                                        ; $5611: $13
    jr z, jr_02F_566A                             ; $5612: $28 $56

    inc c                                         ; $5614: $0C
    add c                                         ; $5615: $81
    add b                                         ; $5616: $80
    jr jr_02F_5646                                ; $5617: $18 $2D

    ld d, a                                       ; $5619: $57
    inc c                                         ; $561A: $0C
    add c                                         ; $561B: $81
    add b                                         ; $561C: $80
    dec e                                         ; $561D: $1D
    jr z, jr_02F_5678                             ; $561E: $28 $58

    inc c                                         ; $5620: $0C
    add c                                         ; $5621: $81
    add b                                         ; $5622: $80
    ld [hl+], a                                   ; $5623: $22
    dec d                                         ; $5624: $15
    ld e, c                                       ; $5625: $59
    nop                                           ; $5626: $00
    add c                                         ; $5627: $81
    db $E4                                        ; $5628: $E4
    ld [hl], l                                    ; $5629: $75
    jp hl                                         ; $562A: $E9


    ld de, $00EE                                  ; $562B: $11 $EE $00
    db $EC                                        ; $562E: $EC
    ld h, c                                       ; $562F: $61
    ld d, [hl]                                    ; $5630: $56
    db $EC                                        ; $5631: $EC
    add l                                         ; $5632: $85
    ld d, [hl]                                    ; $5633: $56
    sbc l                                         ; $5634: $9D
    inc b                                         ; $5635: $04
    sbc e                                         ; $5636: $9B
    sbc b                                         ; $5637: $98
    sbc l                                         ; $5638: $9D
    sbc e                                         ; $5639: $9B
    sbc b                                         ; $563A: $98
    sbc e                                         ; $563B: $9B
    ld b, $9D                                     ; $563C: $06 $9D
    and b                                         ; $563E: $A0
    and d                                         ; $563F: $A2
    db $EC                                        ; $5640: $EC
    rst RST_18                                    ; $5641: $DF
    ld d, [hl]                                    ; $5642: $56
    db $E4                                        ; $5643: $E4
    ld [hl], l                                    ; $5644: $75
    db $EC                                        ; $5645: $EC

jr_02F_5646:
    add l                                         ; $5646: $85
    ld d, [hl]                                    ; $5647: $56
    sbc l                                         ; $5648: $9D
    inc b                                         ; $5649: $04
    sbc e                                         ; $564A: $9B
    sbc b                                         ; $564B: $98
    sbc l                                         ; $564C: $9D
    sbc e                                         ; $564D: $9B
    sbc b                                         ; $564E: $98
    sbc e                                         ; $564F: $9B
    ld b, $9D                                     ; $5650: $06 $9D
    and b                                         ; $5652: $A0
    and d                                         ; $5653: $A2
    db $EC                                        ; $5654: $EC
    db $EB                                        ; $5655: $EB
    ld d, [hl]                                    ; $5656: $56
    and $01                                       ; $5657: $E6 $01
    db $EC                                        ; $5659: $EC
    db $EB                                        ; $565A: $EB
    ld d, [hl]                                    ; $565B: $56
    and $FF                                       ; $565C: $E6 $FF
    push hl                                       ; $565E: $E5
    ld sp, $E456                                  ; $565F: $31 $56 $E4
    ld [hl], l                                    ; $5662: $75
    sbc l                                         ; $5663: $9D
    ld b, $9D                                     ; $5664: $06 $9D
    sbc c                                         ; $5666: $99
    sbc e                                         ; $5667: $9B
    sbc e                                         ; $5668: $9B
    sub [hl]                                      ; $5669: $96

jr_02F_566A:
    sbc b                                         ; $566A: $98
    sbc b                                         ; $566B: $98
    sub h                                         ; $566C: $94
    sub [hl]                                      ; $566D: $96
    sub [hl]                                      ; $566E: $96
    sub c                                         ; $566F: $91
    sub h                                         ; $5670: $94
    sub e                                         ; $5671: $93
    sub c                                         ; $5672: $91
    adc a                                         ; $5673: $8F
    sub c                                         ; $5674: $91
    sub h                                         ; $5675: $94
    sub c                                         ; $5676: $91
    adc a                                         ; $5677: $8F

jr_02F_5678:
    adc a                                         ; $5678: $8F
    ld [$9190], sp                                ; $5679: $08 $90 $91
    sub h                                         ; $567C: $94
    sub [hl]                                      ; $567D: $96
    sbc b                                         ; $567E: $98
    sbc e                                         ; $567F: $9B
    ld b, $9C                                     ; $5680: $06 $9C
    sbc l                                         ; $5682: $9D
    and b                                         ; $5683: $A0
    db $ED                                        ; $5684: $ED
    and b                                         ; $5685: $A0
    ld b, $A0                                     ; $5686: $06 $A0
    sbc l                                         ; $5688: $9D
    sbc a                                         ; $5689: $9F
    sbc a                                         ; $568A: $9F
    sbc e                                         ; $568B: $9B
    sbc l                                         ; $568C: $9D
    sbc l                                         ; $568D: $9D
    sbc b                                         ; $568E: $98
    sbc e                                         ; $568F: $9B
    sbc e                                         ; $5690: $9B
    sub [hl]                                      ; $5691: $96
    sbc b                                         ; $5692: $98
    sbc b                                         ; $5693: $98
    sub h                                         ; $5694: $94
    sub [hl]                                      ; $5695: $96
    sub [hl]                                      ; $5696: $96
    sub e                                         ; $5697: $93
    sub h                                         ; $5698: $94
    sub h                                         ; $5699: $94

jr_02F_569A:
    sub c                                         ; $569A: $91
    sub e                                         ; $569B: $93
    sub h                                         ; $569C: $94
    sub [hl]                                      ; $569D: $96
    sub e                                         ; $569E: $93
    sub h                                         ; $569F: $94
    sub [hl]                                      ; $56A0: $96
    sbc b                                         ; $56A1: $98
    sub h                                         ; $56A2: $94
    sub [hl]                                      ; $56A3: $96
    sbc b                                         ; $56A4: $98
    sbc e                                         ; $56A5: $9B
    sub [hl]                                      ; $56A6: $96
    sbc b                                         ; $56A7: $98
    sbc e                                         ; $56A8: $9B
    sbc l                                         ; $56A9: $9D
    sbc a                                         ; $56AA: $9F
    and b                                         ; $56AB: $A0
    and d                                         ; $56AC: $A2
    inc c                                         ; $56AD: $0C
    rst RST_20                                    ; $56AE: $E7
    nop                                           ; $56AF: $00
    ld [bc], a                                    ; $56B0: $02
    add l                                         ; $56B1: $85
    ld d, [hl]                                    ; $56B2: $56
    and h                                         ; $56B3: $A4
    jr jr_02F_569A                                ; $56B4: $18 $E4

    ld d, a                                       ; $56B6: $57
    and h                                         ; $56B7: $A4
    db $E4                                        ; $56B8: $E4
    ld [hl], l                                    ; $56B9: $75
    and d                                         ; $56BA: $A2
    ld b, $A0                                     ; $56BB: $06 $A0
    sbc a                                         ; $56BD: $9F
    and d                                         ; $56BE: $A2
    and b                                         ; $56BF: $A0
    sbc l                                         ; $56C0: $9D
    sbc a                                         ; $56C1: $9F
    and b                                         ; $56C2: $A0
    sbc a                                         ; $56C3: $9F
    sbc e                                         ; $56C4: $9B
    sbc l                                         ; $56C5: $9D
    sbc a                                         ; $56C6: $9F
    sbc l                                         ; $56C7: $9D
    sbc b                                         ; $56C8: $98
    sbc e                                         ; $56C9: $9B
    sbc l                                         ; $56CA: $9D
    sbc e                                         ; $56CB: $9B
    sub [hl]                                      ; $56CC: $96
    sbc b                                         ; $56CD: $98
    sbc e                                         ; $56CE: $9B
    sbc b                                         ; $56CF: $98
    sub e                                         ; $56D0: $93
    sub h                                         ; $56D1: $94
    sub [hl]                                      ; $56D2: $96
    sub h                                         ; $56D3: $94
    sub [hl]                                      ; $56D4: $96
    sbc b                                         ; $56D5: $98

jr_02F_56D6:
    sub [hl]                                      ; $56D6: $96
    sbc b                                         ; $56D7: $98
    inc b                                         ; $56D8: $04
    sbc e                                         ; $56D9: $9B
    sbc l                                         ; $56DA: $9D
    and b                                         ; $56DB: $A0
    ld b, $9D                                     ; $56DC: $06 $9D
    db $ED                                        ; $56DE: $ED
    db $E4                                        ; $56DF: $E4
    ld [hl], l                                    ; $56E0: $75
    and h                                         ; $56E1: $A4
    db $E4                                        ; $56E2: $E4
    ld b, l                                       ; $56E3: $45
    and h                                         ; $56E4: $A4
    rst RST_20                                    ; $56E5: $E7
    nop                                           ; $56E6: $00
    inc b                                         ; $56E7: $04
    rst RST_18                                    ; $56E8: $DF
    ld d, [hl]                                    ; $56E9: $56
    db $ED                                        ; $56EA: $ED
    and c                                         ; $56EB: $A1
    ld b, $9D                                     ; $56EC: $06 $9D
    sbc d                                         ; $56EE: $9A
    and c                                         ; $56EF: $A1
    jr jr_02F_56D6                                ; $56F0: $18 $E4

    ld d, a                                       ; $56F2: $57
    and c                                         ; $56F3: $A1
    inc c                                         ; $56F4: $0C
    db $E4                                        ; $56F5: $E4
    ld [hl], a                                    ; $56F6: $77
    and d                                         ; $56F7: $A2
    ld b, $A1                                     ; $56F8: $06 $A1
    sbc a                                         ; $56FA: $9F
    and c                                         ; $56FB: $A1
    sbc a                                         ; $56FC: $9F
    sbc l                                         ; $56FD: $9D
    sbc d                                         ; $56FE: $9A
    db $E4                                        ; $56FF: $E4
    ld [hl], a                                    ; $5700: $77
    rst RST_20                                    ; $5701: $E7
    nop                                           ; $5702: $00
    ld [bc], a                                    ; $5703: $02
    db $EB                                        ; $5704: $EB
    ld d, [hl]                                    ; $5705: $56
    and c                                         ; $5706: $A1
    ld b, $9D                                     ; $5707: $06 $9D
    sbc d                                         ; $5709: $9A
    and c                                         ; $570A: $A1
    jr @-$1A                                      ; $570B: $18 $E4

    ld d, a                                       ; $570D: $57
    and c                                         ; $570E: $A1
    inc c                                         ; $570F: $0C
    db $E4                                        ; $5710: $E4
    ld [hl], a                                    ; $5711: $77
    and d                                         ; $5712: $A2
    ld b, $A1                                     ; $5713: $06 $A1
    sbc a                                         ; $5715: $9F
    and c                                         ; $5716: $A1
    sbc a                                         ; $5717: $9F
    and c                                         ; $5718: $A1
    and d                                         ; $5719: $A2
    db $E4                                        ; $571A: $E4
    ld [hl], a                                    ; $571B: $77
    and h                                         ; $571C: $A4
    sbc d                                         ; $571D: $9A
    sbc d                                         ; $571E: $9A
    and d                                         ; $571F: $A2
    sbc d                                         ; $5720: $9A
    sbc d                                         ; $5721: $9A
    and c                                         ; $5722: $A1
    sbc d                                         ; $5723: $9A
    sbc d                                         ; $5724: $9A
    sbc a                                         ; $5725: $9F
    sbc d                                         ; $5726: $9A
    sbc d                                         ; $5727: $9A
    sbc e                                         ; $5728: $9B
    sbc l                                         ; $5729: $9D
    sbc a                                         ; $572A: $9F
    and c                                         ; $572B: $A1
    db $ED                                        ; $572C: $ED
    db $E4                                        ; $572D: $E4
    ld [hl], d                                    ; $572E: $72
    jp hl                                         ; $572F: $E9


    ld [hl+], a                                   ; $5730: $22
    xor $C0                                       ; $5731: $EE $C0
    db $EC                                        ; $5733: $EC
    ld h, l                                       ; $5734: $65
    ld d, a                                       ; $5735: $57
    db $EC                                        ; $5736: $EC
    add a                                         ; $5737: $87
    ld d, a                                       ; $5738: $57
    add h                                         ; $5739: $84
    add h                                         ; $573A: $84
    adc d                                         ; $573B: $8A
    inc c                                         ; $573C: $0C
    add h                                         ; $573D: $84
    ld b, $8A                                     ; $573E: $06 $8A
    inc c                                         ; $5740: $0C
    add h                                         ; $5741: $84
    ld b, $93                                     ; $5742: $06 $93
    inc b                                         ; $5744: $04
    sub c                                         ; $5745: $91
    adc a                                         ; $5746: $8F
    adc h                                         ; $5747: $8C
    adc d                                         ; $5748: $8A
    add a                                         ; $5749: $87
    adc l                                         ; $574A: $8D
    ld [$8A8C], sp                                ; $574B: $08 $8C $8A
    db $EC                                        ; $574E: $EC
    add a                                         ; $574F: $87
    ld d, a                                       ; $5750: $57
    add h                                         ; $5751: $84
    ld [$8C87], sp                                ; $5752: $08 $87 $8C
    add a                                         ; $5755: $87
    adc h                                         ; $5756: $8C
    sub b                                         ; $5757: $90
    db $EC                                        ; $5758: $EC
    db $E3                                        ; $5759: $E3
    ld d, a                                       ; $575A: $57
    and $01                                       ; $575B: $E6 $01
    db $EC                                        ; $575D: $EC
    db $E3                                        ; $575E: $E3
    ld d, a                                       ; $575F: $57
    and $FF                                       ; $5760: $E6 $FF
    push hl                                       ; $5762: $E5
    ld [hl], $57                                  ; $5763: $36 $57
    and b                                         ; $5765: $A0
    ld b, $A0                                     ; $5766: $06 $A0
    sbc l                                         ; $5768: $9D
    sbc a                                         ; $5769: $9F
    sbc a                                         ; $576A: $9F
    sbc e                                         ; $576B: $9B
    sbc l                                         ; $576C: $9D
    sbc l                                         ; $576D: $9D
    sbc b                                         ; $576E: $98
    sbc e                                         ; $576F: $9B
    sbc e                                         ; $5770: $9B
    sbc b                                         ; $5771: $98
    sbc b                                         ; $5772: $98
    sub [hl]                                      ; $5773: $96
    sub h                                         ; $5774: $94
    sub e                                         ; $5775: $93
    sbc b                                         ; $5776: $98
    sbc e                                         ; $5777: $9B
    sbc b                                         ; $5778: $98
    sub h                                         ; $5779: $94
    sub h                                         ; $577A: $94
    ld [$9695], sp                                ; $577B: $08 $95 $96
    sbc b                                         ; $577E: $98
    sbc c                                         ; $577F: $99
    sbc e                                         ; $5780: $9B
    and b                                         ; $5781: $A0
    ld b, $A1                                     ; $5782: $06 $A1
    and d                                         ; $5784: $A2
    and h                                         ; $5785: $A4
    db $ED                                        ; $5786: $ED
    sub c                                         ; $5787: $91
    ld b, $80                                     ; $5788: $06 $80
    adc b                                         ; $578A: $88
    adc d                                         ; $578B: $8A
    adc h                                         ; $578C: $8C
    add b                                         ; $578D: $80
    sub c                                         ; $578E: $91
    add b                                         ; $578F: $80
    adc b                                         ; $5790: $88
    adc d                                         ; $5791: $8A
    adc h                                         ; $5792: $8C
    add b                                         ; $5793: $80
    sub c                                         ; $5794: $91
    sub c                                         ; $5795: $91
    adc h                                         ; $5796: $8C
    adc a                                         ; $5797: $8F
    adc a                                         ; $5798: $8F
    adc d                                         ; $5799: $8A
    adc h                                         ; $579A: $8C
    adc h                                         ; $579B: $8C
    rst RST_20                                    ; $579C: $E7
    nop                                           ; $579D: $00
    ld [bc], a                                    ; $579E: $02
    add a                                         ; $579F: $87
    ld d, a                                       ; $57A0: $57
    sub h                                         ; $57A1: $94
    add b                                         ; $57A2: $80
    adc h                                         ; $57A3: $8C
    adc l                                         ; $57A4: $8D
    adc a                                         ; $57A5: $8F
    add b                                         ; $57A6: $80
    sub h                                         ; $57A7: $94
    add b                                         ; $57A8: $80
    adc h                                         ; $57A9: $8C
    adc l                                         ; $57AA: $8D
    adc a                                         ; $57AB: $8F
    add b                                         ; $57AC: $80
    sub h                                         ; $57AD: $94
    sub h                                         ; $57AE: $94
    adc a                                         ; $57AF: $8F
    sub e                                         ; $57B0: $93
    sub e                                         ; $57B1: $93
    adc a                                         ; $57B2: $8F
    adc a                                         ; $57B3: $8F
    adc a                                         ; $57B4: $8F
    rst RST_20                                    ; $57B5: $E7
    nop                                           ; $57B6: $00
    ld [bc], a                                    ; $57B7: $02
    and c                                         ; $57B8: $A1
    ld d, a                                       ; $57B9: $57
    sub [hl]                                      ; $57BA: $96
    add b                                         ; $57BB: $80
    adc l                                         ; $57BC: $8D
    adc a                                         ; $57BD: $8F
    sub c                                         ; $57BE: $91
    add b                                         ; $57BF: $80
    sub [hl]                                      ; $57C0: $96
    add b                                         ; $57C1: $80
    adc l                                         ; $57C2: $8D
    adc a                                         ; $57C3: $8F
    sub c                                         ; $57C4: $91
    add b                                         ; $57C5: $80
    sub [hl]                                      ; $57C6: $96
    sub [hl]                                      ; $57C7: $96
    sub c                                         ; $57C8: $91
    sub h                                         ; $57C9: $94
    sub h                                         ; $57CA: $94
    sub c                                         ; $57CB: $91
    sub c                                         ; $57CC: $91
    sub c                                         ; $57CD: $91
    sbc c                                         ; $57CE: $99
    sub c                                         ; $57CF: $91
    sub c                                         ; $57D0: $91
    sbc b                                         ; $57D1: $98
    sub c                                         ; $57D2: $91
    sub c                                         ; $57D3: $91
    sub [hl]                                      ; $57D4: $96
    adc l                                         ; $57D5: $8D
    adc l                                         ; $57D6: $8D
    sub h                                         ; $57D7: $94
    adc l                                         ; $57D8: $8D
    adc l                                         ; $57D9: $8D
    sub c                                         ; $57DA: $91
    adc d                                         ; $57DB: $8A
    adc d                                         ; $57DC: $8A
    adc d                                         ; $57DD: $8A
    adc l                                         ; $57DE: $8D
    adc d                                         ; $57DF: $8A
    adc d                                         ; $57E0: $8A
    adc d                                         ; $57E1: $8A
    db $ED                                        ; $57E2: $ED
    sub c                                         ; $57E3: $91
    ld b, $80                                     ; $57E4: $06 $80
    adc [hl]                                      ; $57E6: $8E
    sub l                                         ; $57E7: $95
    adc [hl]                                      ; $57E8: $8E
    sub l                                         ; $57E9: $95
    sub c                                         ; $57EA: $91
    adc [hl]                                      ; $57EB: $8E
    adc c                                         ; $57EC: $89
    adc [hl]                                      ; $57ED: $8E
    sub c                                         ; $57EE: $91
    sub l                                         ; $57EF: $95
    sbc d                                         ; $57F0: $9A
    sbc b                                         ; $57F1: $98
    sub l                                         ; $57F2: $95
    sub c                                         ; $57F3: $91
    adc [hl]                                      ; $57F4: $8E
    add b                                         ; $57F5: $80
    adc d                                         ; $57F6: $8A
    sub c                                         ; $57F7: $91
    adc d                                         ; $57F8: $8A
    sub c                                         ; $57F9: $91
    adc [hl]                                      ; $57FA: $8E
    adc d                                         ; $57FB: $8A
    adc h                                         ; $57FC: $8C
    add b                                         ; $57FD: $80
    adc c                                         ; $57FE: $89
    sub b                                         ; $57FF: $90
    adc c                                         ; $5800: $89
    sub e                                         ; $5801: $93
    sub b                                         ; $5802: $90
    adc h                                         ; $5803: $8C
    adc d                                         ; $5804: $8A
    add b                                         ; $5805: $80
    add a                                         ; $5806: $87
    adc [hl]                                      ; $5807: $8E
    add a                                         ; $5808: $87
    adc [hl]                                      ; $5809: $8E
    adc d                                         ; $580A: $8A
    add a                                         ; $580B: $87
    add a                                         ; $580C: $87
    adc d                                         ; $580D: $8A
    adc [hl]                                      ; $580E: $8E
    sub e                                         ; $580F: $93
    sub [hl]                                      ; $5810: $96
    sub e                                         ; $5811: $93
    adc [hl]                                      ; $5812: $8E
    adc d                                         ; $5813: $8A
    sub e                                         ; $5814: $93
    add b                                         ; $5815: $80
    adc a                                         ; $5816: $8F
    sub [hl]                                      ; $5817: $96
    adc a                                         ; $5818: $8F
    sub [hl]                                      ; $5819: $96
    sub e                                         ; $581A: $93
    adc a                                         ; $581B: $8F
    add a                                         ; $581C: $87
    adc d                                         ; $581D: $8A
    adc a                                         ; $581E: $8F
    sub e                                         ; $581F: $93
    sub [hl]                                      ; $5820: $96
    inc b                                         ; $5821: $04
    sub e                                         ; $5822: $93
    sub [hl]                                      ; $5823: $96
    sbc b                                         ; $5824: $98
    ld b, $96                                     ; $5825: $06 $96
    db $ED                                        ; $5827: $ED
    db $E4                                        ; $5828: $E4
    ld b, b                                       ; $5829: $40
    jp hl                                         ; $582A: $E9


    ld b, h                                       ; $582B: $44
    di                                            ; $582C: $F3
    ld [bc], a                                    ; $582D: $02
    push af                                       ; $582E: $F5
    inc d                                         ; $582F: $14
    db $EC                                        ; $5830: $EC
    ld l, d                                       ; $5831: $6A
    ld e, b                                       ; $5832: $58
    db $EC                                        ; $5833: $EC
    add [hl]                                      ; $5834: $86
    ld e, b                                       ; $5835: $58
    adc h                                         ; $5836: $8C
    adc h                                         ; $5837: $8C
    adc a                                         ; $5838: $8F
    inc c                                         ; $5839: $0C
    adc h                                         ; $583A: $8C
    ld b, $8F                                     ; $583B: $06 $8F
    inc c                                         ; $583D: $0C
    adc h                                         ; $583E: $8C
    ld b, $98                                     ; $583F: $06 $98
    inc b                                         ; $5841: $04
    sub [hl]                                      ; $5842: $96
    sub e                                         ; $5843: $93
    sub b                                         ; $5844: $90
    sub c                                         ; $5845: $91
    adc a                                         ; $5846: $8F
    push af                                       ; $5847: $F5
    nop                                           ; $5848: $00
    add [hl]                                      ; $5849: $86
    ld [$8385], sp                                ; $584A: $08 $85 $83
    push af                                       ; $584D: $F5
    inc d                                         ; $584E: $14
    db $EC                                        ; $584F: $EC
    add [hl]                                      ; $5850: $86
    ld e, b                                       ; $5851: $58
    push af                                       ; $5852: $F5
    nop                                           ; $5853: $00
    adc h                                         ; $5854: $8C
    ld [$9390], sp                                ; $5855: $08 $90 $93
    sub b                                         ; $5858: $90
    sub e                                         ; $5859: $93
    sbc b                                         ; $585A: $98
    push af                                       ; $585B: $F5
    inc d                                         ; $585C: $14
    db $EC                                        ; $585D: $EC
    db $D3                                        ; $585E: $D3
    ld e, b                                       ; $585F: $58
    and $01                                       ; $5860: $E6 $01
    db $EC                                        ; $5862: $EC
    db $D3                                        ; $5863: $D3
    ld e, b                                       ; $5864: $58
    and $FF                                       ; $5865: $E6 $FF
    push hl                                       ; $5867: $E5
    inc sp                                        ; $5868: $33
    ld e, b                                       ; $5869: $58
    add e                                         ; $586A: $83
    ld b, $83                                     ; $586B: $06 $83
    add e                                         ; $586D: $83
    add e                                         ; $586E: $83
    add [hl]                                      ; $586F: $86
    rst RST_20                                    ; $5870: $E7
    nop                                           ; $5871: $00
    db $10                                        ; $5872: $10
    ld l, a                                       ; $5873: $6F
    ld e, b                                       ; $5874: $58
    push af                                       ; $5875: $F5
    nop                                           ; $5876: $00
    adc d                                         ; $5877: $8A
    ld [$8C8B], sp                                ; $5878: $08 $8B $8C
    add e                                         ; $587B: $83
    add l                                         ; $587C: $85
    add a                                         ; $587D: $87
    adc d                                         ; $587E: $8A
    ld b, $8B                                     ; $587F: $06 $8B
    adc h                                         ; $5881: $8C
    add e                                         ; $5882: $83
    push af                                       ; $5883: $F5
    inc d                                         ; $5884: $14
    db $ED                                        ; $5885: $ED
    adc a                                         ; $5886: $8F
    ld b, $91                                     ; $5887: $06 $91
    add l                                         ; $5889: $85
    add l                                         ; $588A: $85
    add l                                         ; $588B: $85
    add l                                         ; $588C: $85
    adc a                                         ; $588D: $8F
    sub c                                         ; $588E: $91
    add l                                         ; $588F: $85
    add l                                         ; $5890: $85
    add l                                         ; $5891: $85
    add l                                         ; $5892: $85
    add l                                         ; $5893: $85
    add l                                         ; $5894: $85
    adc b                                         ; $5895: $88
    adc d                                         ; $5896: $8A
    adc e                                         ; $5897: $8B
    adc d                                         ; $5898: $8A
    adc b                                         ; $5899: $88
    add l                                         ; $589A: $85
    rst RST_20                                    ; $589B: $E7
    nop                                           ; $589C: $00
    ld [bc], a                                    ; $589D: $02
    add [hl]                                      ; $589E: $86
    ld e, b                                       ; $589F: $58
    sub d                                         ; $58A0: $92
    sub h                                         ; $58A1: $94
    adc b                                         ; $58A2: $88
    adc b                                         ; $58A3: $88
    adc b                                         ; $58A4: $88
    adc b                                         ; $58A5: $88
    sub d                                         ; $58A6: $92
    sub h                                         ; $58A7: $94
    adc b                                         ; $58A8: $88
    adc b                                         ; $58A9: $88
    adc b                                         ; $58AA: $88
    adc b                                         ; $58AB: $88
    adc b                                         ; $58AC: $88
    adc b                                         ; $58AD: $88
    adc e                                         ; $58AE: $8B
    adc l                                         ; $58AF: $8D
    adc [hl]                                      ; $58B0: $8E
    adc l                                         ; $58B1: $8D
    adc h                                         ; $58B2: $8C
    adc b                                         ; $58B3: $88
    rst RST_20                                    ; $58B4: $E7
    nop                                           ; $58B5: $00
    ld [bc], a                                    ; $58B6: $02
    and b                                         ; $58B7: $A0
    ld e, b                                       ; $58B8: $58
    sub h                                         ; $58B9: $94
    sub [hl]                                      ; $58BA: $96
    adc d                                         ; $58BB: $8A
    adc d                                         ; $58BC: $8A
    adc d                                         ; $58BD: $8A
    adc d                                         ; $58BE: $8A
    sub h                                         ; $58BF: $94
    sub [hl]                                      ; $58C0: $96
    adc d                                         ; $58C1: $8A
    adc d                                         ; $58C2: $8A
    adc d                                         ; $58C3: $8A
    adc d                                         ; $58C4: $8A
    adc d                                         ; $58C5: $8A
    adc d                                         ; $58C6: $8A
    adc l                                         ; $58C7: $8D
    adc a                                         ; $58C8: $8F
    sub b                                         ; $58C9: $90
    adc a                                         ; $58CA: $8F
    adc l                                         ; $58CB: $8D
    adc d                                         ; $58CC: $8A
    rst RST_20                                    ; $58CD: $E7
    nop                                           ; $58CE: $00
    ld [bc], a                                    ; $58CF: $02
    cp c                                          ; $58D0: $B9
    ld e, b                                       ; $58D1: $58
    db $ED                                        ; $58D2: $ED
    add d                                         ; $58D3: $82
    ld b, $82                                     ; $58D4: $06 $82
    add b                                         ; $58D6: $80
    add d                                         ; $58D7: $82
    add b                                         ; $58D8: $80
    add d                                         ; $58D9: $82
    add l                                         ; $58DA: $85
    add d                                         ; $58DB: $82
    add b                                         ; $58DC: $80
    add d                                         ; $58DD: $82
    add l                                         ; $58DE: $85
    add d                                         ; $58DF: $82
    add d                                         ; $58E0: $82
    add d                                         ; $58E1: $82
    add l                                         ; $58E2: $85
    add a                                         ; $58E3: $87
    adc d                                         ; $58E4: $8A
    adc d                                         ; $58E5: $8A
    add l                                         ; $58E6: $85
    adc d                                         ; $58E7: $8A
    add b                                         ; $58E8: $80
    add l                                         ; $58E9: $85
    adc c                                         ; $58EA: $89
    adc d                                         ; $58EB: $8A
    adc c                                         ; $58EC: $89
    adc c                                         ; $58ED: $89
    sub b                                         ; $58EE: $90
    adc c                                         ; $58EF: $89
    adc h                                         ; $58F0: $8C
    adc h                                         ; $58F1: $8C
    sub e                                         ; $58F2: $93
    adc h                                         ; $58F3: $8C
    add a                                         ; $58F4: $87
    add a                                         ; $58F5: $87
    add l                                         ; $58F6: $85
    add a                                         ; $58F7: $87
    add b                                         ; $58F8: $80
    add a                                         ; $58F9: $87
    add l                                         ; $58FA: $85
    add a                                         ; $58FB: $87
    add b                                         ; $58FC: $80
    add l                                         ; $58FD: $85
    add a                                         ; $58FE: $87
    adc d                                         ; $58FF: $8A
    add a                                         ; $5900: $87
    add a                                         ; $5901: $87
    adc d                                         ; $5902: $8A
    add a                                         ; $5903: $87
    adc a                                         ; $5904: $8F
    adc a                                         ; $5905: $8F
    adc [hl]                                      ; $5906: $8E
    adc a                                         ; $5907: $8F
    add b                                         ; $5908: $80
    adc d                                         ; $5909: $8A
    adc [hl]                                      ; $590A: $8E
    adc a                                         ; $590B: $8F
    add b                                         ; $590C: $80
    adc a                                         ; $590D: $8F
    adc [hl]                                      ; $590E: $8E
    adc a                                         ; $590F: $8F
    adc a                                         ; $5910: $8F
    adc a                                         ; $5911: $8F
    adc d                                         ; $5912: $8A
    add b                                         ; $5913: $80
    db $ED                                        ; $5914: $ED
    jp hl                                         ; $5915: $E9


    adc b                                         ; $5916: $88
    db $EC                                        ; $5917: $EC
    ld h, l                                       ; $5918: $65
    ld e, c                                       ; $5919: $59
    db $EC                                        ; $591A: $EC
    cp e                                          ; $591B: $BB
    ld e, c                                       ; $591C: $59
    db $E4                                        ; $591D: $E4
    ld [hl], c                                    ; $591E: $71
    ld [hl], $06                                  ; $591F: $36 $06
    db $E4                                        ; $5921: $E4
    ld [hl], c                                    ; $5922: $71
    ld [hl], $06                                  ; $5923: $36 $06
    db $E4                                        ; $5925: $E4
    ld d, a                                       ; $5926: $57
    db $10                                        ; $5927: $10
    inc c                                         ; $5928: $0C
    db $E4                                        ; $5929: $E4
    ld [hl], c                                    ; $592A: $71
    ld [hl], $06                                  ; $592B: $36 $06
    db $E4                                        ; $592D: $E4
    ld d, a                                       ; $592E: $57
    db $10                                        ; $592F: $10
    inc c                                         ; $5930: $0C
    db $E4                                        ; $5931: $E4
    ld h, d                                       ; $5932: $62
    inc h                                         ; $5933: $24
    ld b, $EC                                     ; $5934: $06 $EC
    add hl, hl                                    ; $5936: $29
    ld e, d                                       ; $5937: $5A
    db $E4                                        ; $5938: $E4
    ld [hl], d                                    ; $5939: $72
    ld [hl-], a                                   ; $593A: $32
    ld b, $E4                                     ; $593B: $06 $E4
    ld h, d                                       ; $593D: $62
    inc h                                         ; $593E: $24
    ld b, $E4                                     ; $593F: $06 $E4
    ld h, d                                       ; $5941: $62
    inc h                                         ; $5942: $24
    ld b, $E4                                     ; $5943: $06 $E4
    ld h, d                                       ; $5945: $62
    inc h                                         ; $5946: $24
    ld b, $EC                                     ; $5947: $06 $EC
    cp e                                          ; $5949: $BB
    ld e, c                                       ; $594A: $59
    db $E4                                        ; $594B: $E4

jr_02F_594C:
    ld d, a                                       ; $594C: $57
    db $10                                        ; $594D: $10
    inc c                                         ; $594E: $0C
    db $E4                                        ; $594F: $E4
    ld h, d                                       ; $5950: $62
    inc h                                         ; $5951: $24
    inc b                                         ; $5952: $04
    db $E4                                        ; $5953: $E4
    ld [hl], d                                    ; $5954: $72
    ld [hl-], a                                   ; $5955: $32
    inc b                                         ; $5956: $04
    db $E4                                        ; $5957: $E4
    ld [hl], c                                    ; $5958: $71
    ld [hl], $04                                  ; $5959: $36 $04
    db $E4                                        ; $595B: $E4
    ld h, d                                       ; $595C: $62
    inc h                                         ; $595D: $24
    jr jr_02F_594C                                ; $595E: $18 $EC

    inc sp                                        ; $5960: $33
    ld e, d                                       ; $5961: $5A
    push hl                                       ; $5962: $E5
    ld a, [de]                                    ; $5963: $1A
    ld e, c                                       ; $5964: $59
    db $E4                                        ; $5965: $E4
    ld d, a                                       ; $5966: $57
    db $10                                        ; $5967: $10
    inc c                                         ; $5968: $0C
    db $E4                                        ; $5969: $E4
    ld [hl], d                                    ; $596A: $72
    ld [hl-], a                                   ; $596B: $32
    inc b                                         ; $596C: $04
    db $E4                                        ; $596D: $E4
    ld [hl], d                                    ; $596E: $72
    db $10                                        ; $596F: $10
    inc b                                         ; $5970: $04
    db $E4                                        ; $5971: $E4
    ld [hl], c                                    ; $5972: $71
    ld [hl], $04                                  ; $5973: $36 $04
    db $E4                                        ; $5975: $E4
    ld d, a                                       ; $5976: $57
    db $10                                        ; $5977: $10
    inc c                                         ; $5978: $0C
    db $E4                                        ; $5979: $E4
    ld h, d                                       ; $597A: $62
    inc h                                         ; $597B: $24
    ld b, $E7                                     ; $597C: $06 $E7
    nop                                           ; $597E: $00
    ld a, [bc]                                    ; $597F: $0A
    ld a, c                                       ; $5980: $79
    ld e, c                                       ; $5981: $59
    db $E4                                        ; $5982: $E4
    ld [hl], c                                    ; $5983: $71
    ld [hl], $06                                  ; $5984: $36 $06
    db $E4                                        ; $5986: $E4
    ld h, d                                       ; $5987: $62
    inc h                                         ; $5988: $24
    ld b, $E4                                     ; $5989: $06 $E4
    ld h, d                                       ; $598B: $62
    inc h                                         ; $598C: $24
    ld b, $E4                                     ; $598D: $06 $E4
    ld h, d                                       ; $598F: $62
    inc h                                         ; $5990: $24
    ld b, $E4                                     ; $5991: $06 $E4
    ld [hl], d                                    ; $5993: $72
    ld [hl-], a                                   ; $5994: $32
    ld [$72E4], sp                                ; $5995: $08 $E4 $72
    ld [hl-], a                                   ; $5998: $32
    ld [$72E4], sp                                ; $5999: $08 $E4 $72
    db $10                                        ; $599C: $10
    ld [$72E4], sp                                ; $599D: $08 $E4 $72
    db $10                                        ; $59A0: $10
    ld [$62E4], sp                                ; $59A1: $08 $E4 $62
    inc h                                         ; $59A4: $24
    ld [$62E4], sp                                ; $59A5: $08 $E4 $62
    inc h                                         ; $59A8: $24
    ld [$71E4], sp                                ; $59A9: $08 $E4 $71
    ld [hl], $06                                  ; $59AC: $36 $06
    db $E4                                        ; $59AE: $E4
    ld h, d                                       ; $59AF: $62
    inc h                                         ; $59B0: $24
    ld b, $E4                                     ; $59B1: $06 $E4
    ld h, d                                       ; $59B3: $62
    inc h                                         ; $59B4: $24
    ld b, $E4                                     ; $59B5: $06 $E4
    ld h, d                                       ; $59B7: $62
    inc h                                         ; $59B8: $24
    ld b, $ED                                     ; $59B9: $06 $ED
    db $E4                                        ; $59BB: $E4
    ld h, d                                       ; $59BC: $62
    inc h                                         ; $59BD: $24
    inc c                                         ; $59BE: $0C
    db $E4                                        ; $59BF: $E4
    ld [hl], d                                    ; $59C0: $72
    ld [hl-], a                                   ; $59C1: $32
    ld b, $E4                                     ; $59C2: $06 $E4
    ld [hl], d                                    ; $59C4: $72
    db $10                                        ; $59C5: $10
    ld b, $E4                                     ; $59C6: $06 $E4
    ld [hl], c                                    ; $59C8: $71
    ld [hl], $0C                                  ; $59C9: $36 $0C
    db $E4                                        ; $59CB: $E4
    ld h, d                                       ; $59CC: $62
    inc h                                         ; $59CD: $24
    inc c                                         ; $59CE: $0C
    db $E4                                        ; $59CF: $E4
    ld [hl], d                                    ; $59D0: $72
    ld [hl-], a                                   ; $59D1: $32
    ld b, $E4                                     ; $59D2: $06 $E4
    ld [hl], d                                    ; $59D4: $72
    db $10                                        ; $59D5: $10
    ld b, $E4                                     ; $59D6: $06 $E4
    ld [hl], c                                    ; $59D8: $71
    ld [hl], $0C                                  ; $59D9: $36 $0C
    db $E4                                        ; $59DB: $E4
    ld h, d                                       ; $59DC: $62
    inc h                                         ; $59DD: $24
    inc c                                         ; $59DE: $0C
    db $E4                                        ; $59DF: $E4
    ld [hl], c                                    ; $59E0: $71
    ld [hl], $0C                                  ; $59E1: $36 $0C
    db $E4                                        ; $59E3: $E4
    ld h, d                                       ; $59E4: $62
    inc h                                         ; $59E5: $24
    inc c                                         ; $59E6: $0C
    db $E4                                        ; $59E7: $E4
    ld [hl], c                                    ; $59E8: $71
    ld [hl], $06                                  ; $59E9: $36 $06
    db $E4                                        ; $59EB: $E4
    ld [hl], c                                    ; $59EC: $71
    ld [hl], $06                                  ; $59ED: $36 $06
    db $E4                                        ; $59EF: $E4
    ld h, d                                       ; $59F0: $62
    inc h                                         ; $59F1: $24
    inc c                                         ; $59F2: $0C
    db $E4                                        ; $59F3: $E4
    ld [hl], d                                    ; $59F4: $72
    ld [hl-], a                                   ; $59F5: $32
    ld b, $E4                                     ; $59F6: $06 $E4
    ld [hl], d                                    ; $59F8: $72
    db $10                                        ; $59F9: $10
    ld b, $E4                                     ; $59FA: $06 $E4
    ld [hl], c                                    ; $59FC: $71
    ld [hl], $0C                                  ; $59FD: $36 $0C
    db $E4                                        ; $59FF: $E4
    ld h, d                                       ; $5A00: $62
    inc h                                         ; $5A01: $24
    inc c                                         ; $5A02: $0C
    db $E4                                        ; $5A03: $E4
    ld [hl], d                                    ; $5A04: $72
    ld [hl-], a                                   ; $5A05: $32
    ld b, $E4                                     ; $5A06: $06 $E4
    ld [hl], d                                    ; $5A08: $72
    db $10                                        ; $5A09: $10
    ld b, $E4                                     ; $5A0A: $06 $E4
    ld [hl], c                                    ; $5A0C: $71
    ld [hl], $0C                                  ; $5A0D: $36 $0C
    db $E4                                        ; $5A0F: $E4
    ld h, d                                       ; $5A10: $62
    inc h                                         ; $5A11: $24
    ld b, $E4                                     ; $5A12: $06 $E4
    ld [hl], c                                    ; $5A14: $71
    ld [hl], $0C                                  ; $5A15: $36 $0C
    db $E4                                        ; $5A17: $E4
    ld [hl], c                                    ; $5A18: $71
    ld [hl], $06                                  ; $5A19: $36 $06
    db $E4                                        ; $5A1B: $E4
    ld h, d                                       ; $5A1C: $62
    inc h                                         ; $5A1D: $24
    inc c                                         ; $5A1E: $0C
    db $E4                                        ; $5A1F: $E4
    ld [hl], c                                    ; $5A20: $71
    ld [hl], $0C                                  ; $5A21: $36 $0C
    rst RST_20                                    ; $5A23: $E7
    nop                                           ; $5A24: $00
    inc bc                                        ; $5A25: $03
    cp e                                          ; $5A26: $BB
    ld e, c                                       ; $5A27: $59
    db $ED                                        ; $5A28: $ED
    db $E4                                        ; $5A29: $E4
    ld h, d                                       ; $5A2A: $62
    inc h                                         ; $5A2B: $24
    inc b                                         ; $5A2C: $04
    rst RST_20                                    ; $5A2D: $E7
    nop                                           ; $5A2E: $00
    ld b, $29                                     ; $5A2F: $06 $29
    ld e, d                                       ; $5A31: $5A
    db $ED                                        ; $5A32: $ED
    db $E4                                        ; $5A33: $E4
    ld [hl], c                                    ; $5A34: $71
    ld [hl], $0C                                  ; $5A35: $36 $0C
    db $E4                                        ; $5A37: $E4
    ld h, d                                       ; $5A38: $62
    inc h                                         ; $5A39: $24
    inc c                                         ; $5A3A: $0C
    db $E4                                        ; $5A3B: $E4
    ld [hl], c                                    ; $5A3C: $71
    ld [hl], $06                                  ; $5A3D: $36 $06
    db $E4                                        ; $5A3F: $E4
    ld [hl], c                                    ; $5A40: $71
    ld [hl], $06                                  ; $5A41: $36 $06
    db $E4                                        ; $5A43: $E4
    ld h, d                                       ; $5A44: $62
    inc h                                         ; $5A45: $24
    inc c                                         ; $5A46: $0C
    db $E4                                        ; $5A47: $E4
    ld [hl], c                                    ; $5A48: $71
    ld [hl], $0C                                  ; $5A49: $36 $0C
    db $E4                                        ; $5A4B: $E4
    ld h, d                                       ; $5A4C: $62
    inc h                                         ; $5A4D: $24
    ld b, $E4                                     ; $5A4E: $06 $E4
    ld [hl], c                                    ; $5A50: $71
    ld [hl], $0C                                  ; $5A51: $36 $0C
    db $E4                                        ; $5A53: $E4
    ld [hl], c                                    ; $5A54: $71
    ld [hl], $06                                  ; $5A55: $36 $06
    db $E4                                        ; $5A57: $E4
    ld h, d                                       ; $5A58: $62
    inc h                                         ; $5A59: $24
    inc c                                         ; $5A5A: $0C
    rst RST_20                                    ; $5A5B: $E7
    nop                                           ; $5A5C: $00
    rlca                                          ; $5A5D: $07
    inc sp                                        ; $5A5E: $33
    ld e, d                                       ; $5A5F: $5A
    db $E4                                        ; $5A60: $E4
    ld [hl], c                                    ; $5A61: $71
    ld [hl], $0C                                  ; $5A62: $36 $0C
    db $E4                                        ; $5A64: $E4
    ld h, d                                       ; $5A65: $62
    inc h                                         ; $5A66: $24
    inc c                                         ; $5A67: $0C
    db $E4                                        ; $5A68: $E4
    ld [hl], c                                    ; $5A69: $71
    ld [hl], $06                                  ; $5A6A: $36 $06
    db $E4                                        ; $5A6C: $E4
    ld [hl], c                                    ; $5A6D: $71
    ld [hl], $06                                  ; $5A6E: $36 $06
    db $E4                                        ; $5A70: $E4
    ld h, d                                       ; $5A71: $62
    inc h                                         ; $5A72: $24
    inc c                                         ; $5A73: $0C
    db $E4                                        ; $5A74: $E4
    ld [hl], c                                    ; $5A75: $71
    ld [hl], $0C                                  ; $5A76: $36 $0C
    db $E4                                        ; $5A78: $E4
    ld h, d                                       ; $5A79: $62
    inc h                                         ; $5A7A: $24
    ld b, $E4                                     ; $5A7B: $06 $E4
    ld h, d                                       ; $5A7D: $62
    inc h                                         ; $5A7E: $24
    ld b, $E4                                     ; $5A7F: $06 $E4
    ld h, d                                       ; $5A81: $62
    inc h                                         ; $5A82: $24
    ld b, $E4                                     ; $5A83: $06 $E4
    ld h, d                                       ; $5A85: $62
    inc h                                         ; $5A86: $24
    ld b, $E4                                     ; $5A87: $06 $E4
    ld h, d                                       ; $5A89: $62
    inc h                                         ; $5A8A: $24
    ld b, $E4                                     ; $5A8B: $06 $E4
    ld h, d                                       ; $5A8D: $62
    inc h                                         ; $5A8E: $24
    ld b, $ED                                     ; $5A8F: $06 $ED
    inc b                                         ; $5A91: $04
    add b                                         ; $5A92: $80
    inc de                                        ; $5A93: $13
    xor d                                         ; $5A94: $AA
    ld e, d                                       ; $5A95: $5A
    nop                                           ; $5A96: $00
    add c                                         ; $5A97: $81
    add b                                         ; $5A98: $80
    jr jr_02F_5A9B                                ; $5A99: $18 $00

jr_02F_5A9B:
    ld e, h                                       ; $5A9B: $5C
    inc c                                         ; $5A9C: $0C
    add c                                         ; $5A9D: $81
    add b                                         ; $5A9E: $80
    dec e                                         ; $5A9F: $1D
    ld a, [hl-]                                   ; $5AA0: $3A
    ld e, l                                       ; $5AA1: $5D
    inc c                                         ; $5AA2: $0C
    add c                                         ; $5AA3: $81
    add b                                         ; $5AA4: $80
    ld [hl+], a                                   ; $5AA5: $22
    ld a, l                                       ; $5AA6: $7D
    ld e, a                                       ; $5AA7: $5F
    nop                                           ; $5AA8: $00
    add c                                         ; $5AA9: $81
    db $E4                                        ; $5AAA: $E4
    ld a, b                                       ; $5AAB: $78
    jp hl                                         ; $5AAC: $E9


    ld de, $C0EE                                  ; $5AAD: $11 $EE $C0
    db $EC                                        ; $5AB0: $EC
    ld sp, hl                                     ; $5AB1: $F9
    ld e, d                                       ; $5AB2: $5A
    db $EC                                        ; $5AB3: $EC
    ld b, e                                       ; $5AB4: $43
    ld e, e                                       ; $5AB5: $5B
    db $EC                                        ; $5AB6: $EC
    xor a                                         ; $5AB7: $AF
    ld e, e                                       ; $5AB8: $5B
    and $02                                       ; $5AB9: $E6 $02
    db $EC                                        ; $5ABB: $EC
    xor a                                         ; $5ABC: $AF
    ld e, e                                       ; $5ABD: $5B
    and $FE                                       ; $5ABE: $E6 $FE
    db $E4                                        ; $5AC0: $E4
    ld a, b                                       ; $5AC1: $78
    sbc h                                         ; $5AC2: $9C
    inc de                                        ; $5AC3: $13
    sbc e                                         ; $5AC4: $9B
    sbc d                                         ; $5AC5: $9A
    ld [de], a                                    ; $5AC6: $12
    sbc e                                         ; $5AC7: $9B
    inc de                                        ; $5AC8: $13
    sbc h                                         ; $5AC9: $9C
    sbc e                                         ; $5ACA: $9B
    ld [de], a                                    ; $5ACB: $12
    sbc h                                         ; $5ACC: $9C
    inc de                                        ; $5ACD: $13
    sbc e                                         ; $5ACE: $9B
    sbc h                                         ; $5ACF: $9C
    ld [de], a                                    ; $5AD0: $12
    sbc l                                         ; $5AD1: $9D
    inc de                                        ; $5AD2: $13
    sbc h                                         ; $5AD3: $9C
    sbc e                                         ; $5AD4: $9B
    ld [de], a                                    ; $5AD5: $12
    sbc h                                         ; $5AD6: $9C
    inc de                                        ; $5AD7: $13
    sbc l                                         ; $5AD8: $9D
    sbc h                                         ; $5AD9: $9C
    ld [de], a                                    ; $5ADA: $12
    sbc l                                         ; $5ADB: $9D
    inc de                                        ; $5ADC: $13
    sbc [hl]                                      ; $5ADD: $9E
    sbc a                                         ; $5ADE: $9F
    ld [de], a                                    ; $5ADF: $12
    db $E4                                        ; $5AE0: $E4
    ld h, d                                       ; $5AE1: $62
    db $EC                                        ; $5AE2: $EC
    cp a                                          ; $5AE3: $BF
    ld e, e                                       ; $5AE4: $5B
    and $03                                       ; $5AE5: $E6 $03
    db $EC                                        ; $5AE7: $EC
    cp a                                          ; $5AE8: $BF
    ld e, e                                       ; $5AE9: $5B
    and $FD                                       ; $5AEA: $E6 $FD
    db $EC                                        ; $5AEC: $EC
    push hl                                       ; $5AED: $E5
    ld e, e                                       ; $5AEE: $5B
    and $01                                       ; $5AEF: $E6 $01
    db $EC                                        ; $5AF1: $EC
    push hl                                       ; $5AF2: $E5
    ld e, e                                       ; $5AF3: $5B
    and $FF                                       ; $5AF4: $E6 $FF
    push hl                                       ; $5AF6: $E5
    xor d                                         ; $5AF7: $AA
    ld e, d                                       ; $5AF8: $5A
    db $E4                                        ; $5AF9: $E4
    ld e, b                                       ; $5AFA: $58
    add b                                         ; $5AFB: $80
    ld c, $F1                                     ; $5AFC: $0E $F1
    add l                                         ; $5AFE: $85
    inc e                                         ; $5AFF: $1C
    ld a, [$FA07]                                 ; $5B00: $FA $07 $FA
    inc bc                                        ; $5B03: $03
    add [hl]                                      ; $5B04: $86
    inc b                                         ; $5B05: $04
    add a                                         ; $5B06: $87
    inc bc                                        ; $5B07: $03
    adc b                                         ; $5B08: $88
    inc b                                         ; $5B09: $04
    adc c                                         ; $5B0A: $89
    inc bc                                        ; $5B0B: $03
    adc d                                         ; $5B0C: $8A
    inc b                                         ; $5B0D: $04
    adc e                                         ; $5B0E: $8B
    inc e                                         ; $5B0F: $1C
    ld a, [$FA07]                                 ; $5B10: $FA $07 $FA
    inc bc                                        ; $5B13: $03
    adc d                                         ; $5B14: $8A
    inc b                                         ; $5B15: $04
    adc c                                         ; $5B16: $89
    inc bc                                        ; $5B17: $03
    adc b                                         ; $5B18: $88
    inc b                                         ; $5B19: $04
    add a                                         ; $5B1A: $87
    inc bc                                        ; $5B1B: $03
    add [hl]                                      ; $5B1C: $86
    inc b                                         ; $5B1D: $04
    add l                                         ; $5B1E: $85
    ld c, $86                                     ; $5B1F: $0E $86
    inc bc                                        ; $5B21: $03
    add a                                         ; $5B22: $87
    inc b                                         ; $5B23: $04
    adc b                                         ; $5B24: $88

jr_02F_5B25:
    inc bc                                        ; $5B25: $03
    adc d                                         ; $5B26: $8A
    inc b                                         ; $5B27: $04
    adc e                                         ; $5B28: $8B
    jr c, jr_02F_5B25                             ; $5B29: $38 $FA

    ld c, $E4                                     ; $5B2B: $0E $E4
    scf                                           ; $5B2D: $37
    add b                                         ; $5B2E: $80
    add hl, bc                                    ; $5B2F: $09
    adc e                                         ; $5B30: $8B
    adc e                                         ; $5B31: $8B
    ld a, [bc]                                    ; $5B32: $0A
    adc d                                         ; $5B33: $8A
    add hl, bc                                    ; $5B34: $09
    adc d                                         ; $5B35: $8A
    adc d                                         ; $5B36: $8A
    ld a, [bc]                                    ; $5B37: $0A
    adc c                                         ; $5B38: $89
    add hl, bc                                    ; $5B39: $09
    adc c                                         ; $5B3A: $89
    adc c                                         ; $5B3B: $89
    ld a, [bc]                                    ; $5B3C: $0A
    adc b                                         ; $5B3D: $88
    add hl, bc                                    ; $5B3E: $09
    adc b                                         ; $5B3F: $88
    adc b                                         ; $5B40: $88
    ld a, [bc]                                    ; $5B41: $0A
    db $ED                                        ; $5B42: $ED
    db $E4                                        ; $5B43: $E4
    ld h, d                                       ; $5B44: $62
    add b                                         ; $5B45: $80
    ld c, $93                                     ; $5B46: $0E $93
    add hl, bc                                    ; $5B48: $09
    adc b                                         ; $5B49: $88
    adc b                                         ; $5B4A: $88
    ld a, [bc]                                    ; $5B4B: $0A
    sub e                                         ; $5B4C: $93
    ld c, $80                                     ; $5B4D: $0E $80
    inc e                                         ; $5B4F: $1C
    add b                                         ; $5B50: $80
    ld c, $93                                     ; $5B51: $0E $93
    add hl, bc                                    ; $5B53: $09
    adc b                                         ; $5B54: $88
    adc b                                         ; $5B55: $88
    ld a, [bc]                                    ; $5B56: $0A
    sub e                                         ; $5B57: $93
    add hl, bc                                    ; $5B58: $09
    sub e                                         ; $5B59: $93
    sub e                                         ; $5B5A: $93
    ld a, [bc]                                    ; $5B5B: $0A
    sub h                                         ; $5B5C: $94
    add hl, bc                                    ; $5B5D: $09
    sub h                                         ; $5B5E: $94
    sub h                                         ; $5B5F: $94
    ld a, [bc]                                    ; $5B60: $0A
    sub e                                         ; $5B61: $93
    add hl, bc                                    ; $5B62: $09
    adc b                                         ; $5B63: $88
    adc b                                         ; $5B64: $88
    ld a, [bc]                                    ; $5B65: $0A
    sub e                                         ; $5B66: $93
    ld c, $80                                     ; $5B67: $0E $80
    inc e                                         ; $5B69: $1C
    add b                                         ; $5B6A: $80
    ld c, $93                                     ; $5B6B: $0E $93
    add hl, bc                                    ; $5B6D: $09
    adc b                                         ; $5B6E: $88
    adc b                                         ; $5B6F: $88
    ld a, [bc]                                    ; $5B70: $0A
    sub [hl]                                      ; $5B71: $96
    add hl, bc                                    ; $5B72: $09
    sub [hl]                                      ; $5B73: $96
    sub [hl]                                      ; $5B74: $96
    ld a, [bc]                                    ; $5B75: $0A
    sub h                                         ; $5B76: $94
    add hl, bc                                    ; $5B77: $09
    sub h                                         ; $5B78: $94
    sub h                                         ; $5B79: $94
    ld a, [bc]                                    ; $5B7A: $0A
    sub e                                         ; $5B7B: $93
    add hl, bc                                    ; $5B7C: $09
    adc b                                         ; $5B7D: $88
    adc b                                         ; $5B7E: $88
    ld a, [bc]                                    ; $5B7F: $0A
    sub e                                         ; $5B80: $93
    ld c, $80                                     ; $5B81: $0E $80
    inc e                                         ; $5B83: $1C
    add b                                         ; $5B84: $80
    ld c, $93                                     ; $5B85: $0E $93
    add hl, bc                                    ; $5B87: $09
    adc b                                         ; $5B88: $88
    adc b                                         ; $5B89: $88
    ld a, [bc]                                    ; $5B8A: $0A
    sub e                                         ; $5B8B: $93
    add hl, bc                                    ; $5B8C: $09
    sub e                                         ; $5B8D: $93
    sub e                                         ; $5B8E: $93
    ld a, [bc]                                    ; $5B8F: $0A
    sub h                                         ; $5B90: $94
    add hl, bc                                    ; $5B91: $09
    sub h                                         ; $5B92: $94
    sub h                                         ; $5B93: $94
    ld a, [bc]                                    ; $5B94: $0A
    sub e                                         ; $5B95: $93
    add hl, bc                                    ; $5B96: $09
    adc b                                         ; $5B97: $88
    adc b                                         ; $5B98: $88
    ld a, [bc]                                    ; $5B99: $0A
    sub e                                         ; $5B9A: $93
    ld c, $80                                     ; $5B9B: $0E $80
    inc e                                         ; $5B9D: $1C
    add b                                         ; $5B9E: $80
    ld c, $93                                     ; $5B9F: $0E $93
    add hl, bc                                    ; $5BA1: $09
    adc b                                         ; $5BA2: $88
    adc b                                         ; $5BA3: $88
    ld a, [bc]                                    ; $5BA4: $0A
    sub [hl]                                      ; $5BA5: $96
    add hl, bc                                    ; $5BA6: $09
    sub [hl]                                      ; $5BA7: $96
    sub [hl]                                      ; $5BA8: $96
    ld a, [bc]                                    ; $5BA9: $0A
    sub h                                         ; $5BAA: $94
    add hl, bc                                    ; $5BAB: $09
    sub h                                         ; $5BAC: $94
    dec b                                         ; $5BAD: $05
    db $ED                                        ; $5BAE: $ED
    adc d                                         ; $5BAF: $8A
    add hl, bc                                    ; $5BB0: $09
    adc c                                         ; $5BB1: $89
    adc d                                         ; $5BB2: $8A
    ld a, [bc]                                    ; $5BB3: $0A
    adc c                                         ; $5BB4: $89
    add hl, bc                                    ; $5BB5: $09
    adc d                                         ; $5BB6: $8A
    adc c                                         ; $5BB7: $89
    ld a, [bc]                                    ; $5BB8: $0A
    rst RST_20                                    ; $5BB9: $E7
    nop                                           ; $5BBA: $00
    inc bc                                        ; $5BBB: $03
    xor a                                         ; $5BBC: $AF
    ld e, e                                       ; $5BBD: $5B
    db $ED                                        ; $5BBE: $ED
    adc e                                         ; $5BBF: $8B
    add hl, bc                                    ; $5BC0: $09
    adc e                                         ; $5BC1: $8B
    adc e                                         ; $5BC2: $8B
    ld a, [bc]                                    ; $5BC3: $0A
    adc e                                         ; $5BC4: $8B
    dec b                                         ; $5BC5: $05
    add b                                         ; $5BC6: $80
    sub d                                         ; $5BC7: $92
    inc b                                         ; $5BC8: $04
    sbc c                                         ; $5BC9: $99
    dec b                                         ; $5BCA: $05
    sbc c                                         ; $5BCB: $99
    sbc [hl]                                      ; $5BCC: $9E
    inc b                                         ; $5BCD: $04
    sbc [hl]                                      ; $5BCE: $9E
    dec b                                         ; $5BCF: $05
    and l                                         ; $5BD0: $A5
    sbc [hl]                                      ; $5BD1: $9E
    inc b                                         ; $5BD2: $04
    and l                                         ; $5BD3: $A5
    ld c, $8B                                     ; $5BD4: $0E $8B
    add hl, bc                                    ; $5BD6: $09
    adc e                                         ; $5BD7: $8B
    adc e                                         ; $5BD8: $8B
    ld a, [bc]                                    ; $5BD9: $0A
    adc e                                         ; $5BDA: $8B
    add hl, bc                                    ; $5BDB: $09
    adc e                                         ; $5BDC: $8B
    adc e                                         ; $5BDD: $8B
    ld a, [bc]                                    ; $5BDE: $0A
    adc e                                         ; $5BDF: $8B
    add hl, bc                                    ; $5BE0: $09
    adc e                                         ; $5BE1: $8B

jr_02F_5BE2:
    adc e                                         ; $5BE2: $8B
    ld a, [bc]                                    ; $5BE3: $0A
    db $ED                                        ; $5BE4: $ED
    db $E4                                        ; $5BE5: $E4
    ld a, b                                       ; $5BE6: $78
    add l                                         ; $5BE7: $85
    ld a, [hl+]                                   ; $5BE8: $2A
    add [hl]                                      ; $5BE9: $86
    add e                                         ; $5BEA: $83
    adc d                                         ; $5BEB: $8A
    adc c                                         ; $5BEC: $89
    ld d, h                                       ; $5BED: $54
    db $E4                                        ; $5BEE: $E4

jr_02F_5BEF:
    jr c, jr_02F_5BE2                             ; $5BEF: $38 $F1

    adc c                                         ; $5BF1: $89
    db $E4                                        ; $5BF2: $E4
    ld a, b                                       ; $5BF3: $78
    add l                                         ; $5BF4: $85
    ld a, [hl+]                                   ; $5BF5: $2A
    add [hl]                                      ; $5BF6: $86
    add e                                         ; $5BF7: $83
    adc l                                         ; $5BF8: $8D
    adc h                                         ; $5BF9: $8C
    ld d, h                                       ; $5BFA: $54
    db $E4                                        ; $5BFB: $E4
    jr c, jr_02F_5BEF                             ; $5BFC: $38 $F1

    adc h                                         ; $5BFE: $8C
    db $ED                                        ; $5BFF: $ED
    db $E4                                        ; $5C00: $E4
    ld e, b                                       ; $5C01: $58
    jp hl                                         ; $5C02: $E9


    ld [hl+], a                                   ; $5C03: $22
    xor $C0                                       ; $5C04: $EE $C0
    db $EC                                        ; $5C06: $EC
    cpl                                           ; $5C07: $2F
    ld e, h                                       ; $5C08: $5C
    db $EC                                        ; $5C09: $EC
    sub b                                         ; $5C0A: $90
    ld e, h                                       ; $5C0B: $5C
    db $EC                                        ; $5C0C: $EC
    sub $5C                                       ; $5C0D: $D6 $5C
    db $EC                                        ; $5C0F: $EC
    inc c                                         ; $5C10: $0C
    ld e, l                                       ; $5C11: $5D
    and $01                                       ; $5C12: $E6 $01
    db $EC                                        ; $5C14: $EC
    inc c                                         ; $5C15: $0C
    ld e, l                                       ; $5C16: $5D
    and $01                                       ; $5C17: $E6 $01
    db $EC                                        ; $5C19: $EC
    sub $5C                                       ; $5C1A: $D6 $5C
    and $FE                                       ; $5C1C: $E6 $FE
    add b                                         ; $5C1E: $80
    ld c, $EC                                     ; $5C1F: $0E $EC
    inc e                                         ; $5C21: $1C
    ld e, l                                       ; $5C22: $5D
    add b                                         ; $5C23: $80
    ld c, $E6                                     ; $5C24: $0E $E6
    ld bc, $1CEC                                  ; $5C26: $01 $EC $1C
    ld e, l                                       ; $5C29: $5D
    and $FF                                       ; $5C2A: $E6 $FF
    push hl                                       ; $5C2C: $E5
    nop                                           ; $5C2D: $00
    ld e, h                                       ; $5C2E: $5C
    pop af                                        ; $5C2F: $F1
    adc c                                         ; $5C30: $89
    inc e                                         ; $5C31: $1C
    ld a, [$FA07]                                 ; $5C32: $FA $07 $FA
    inc bc                                        ; $5C35: $03
    adc d                                         ; $5C36: $8A
    inc b                                         ; $5C37: $04
    adc e                                         ; $5C38: $8B
    inc bc                                        ; $5C39: $03
    adc h                                         ; $5C3A: $8C
    inc b                                         ; $5C3B: $04
    adc l                                         ; $5C3C: $8D
    inc bc                                        ; $5C3D: $03
    adc [hl]                                      ; $5C3E: $8E
    inc b                                         ; $5C3F: $04
    adc a                                         ; $5C40: $8F
    inc e                                         ; $5C41: $1C
    ld a, [$FA07]                                 ; $5C42: $FA $07 $FA
    inc bc                                        ; $5C45: $03
    adc [hl]                                      ; $5C46: $8E
    inc b                                         ; $5C47: $04
    adc l                                         ; $5C48: $8D
    inc bc                                        ; $5C49: $03
    adc h                                         ; $5C4A: $8C
    inc b                                         ; $5C4B: $04
    adc e                                         ; $5C4C: $8B
    inc bc                                        ; $5C4D: $03
    adc d                                         ; $5C4E: $8A
    inc b                                         ; $5C4F: $04
    adc c                                         ; $5C50: $89
    ld c, $8A                                     ; $5C51: $0E $8A
    inc bc                                        ; $5C53: $03
    adc e                                         ; $5C54: $8B
    inc b                                         ; $5C55: $04
    adc h                                         ; $5C56: $8C
    inc bc                                        ; $5C57: $03
    adc [hl]                                      ; $5C58: $8E
    inc b                                         ; $5C59: $04
    adc a                                         ; $5C5A: $8F
    inc e                                         ; $5C5B: $1C
    db $E4                                        ; $5C5C: $E4
    ld d, e                                       ; $5C5D: $53
    sub b                                         ; $5C5E: $90
    inc bc                                        ; $5C5F: $03
    adc a                                         ; $5C60: $8F
    inc b                                         ; $5C61: $04
    rst RST_20                                    ; $5C62: $E7
    nop                                           ; $5C63: $00
    ld [$5C5C], sp                                ; $5C64: $08 $5C $5C
    add b                                         ; $5C67: $80
    dec b                                         ; $5C68: $05
    adc l                                         ; $5C69: $8D
    add b                                         ; $5C6A: $80
    inc b                                         ; $5C6B: $04
    adc l                                         ; $5C6C: $8D
    dec b                                         ; $5C6D: $05
    add b                                         ; $5C6E: $80
    adc l                                         ; $5C6F: $8D
    inc b                                         ; $5C70: $04
    add b                                         ; $5C71: $80
    dec b                                         ; $5C72: $05
    adc [hl]                                      ; $5C73: $8E
    add b                                         ; $5C74: $80
    inc b                                         ; $5C75: $04
    adc [hl]                                      ; $5C76: $8E
    dec b                                         ; $5C77: $05
    add b                                         ; $5C78: $80
    adc [hl]                                      ; $5C79: $8E
    inc b                                         ; $5C7A: $04
    add b                                         ; $5C7B: $80
    dec b                                         ; $5C7C: $05
    adc a                                         ; $5C7D: $8F
    add b                                         ; $5C7E: $80
    inc b                                         ; $5C7F: $04
    adc a                                         ; $5C80: $8F
    dec b                                         ; $5C81: $05
    add b                                         ; $5C82: $80
    adc a                                         ; $5C83: $8F
    inc b                                         ; $5C84: $04
    add b                                         ; $5C85: $80
    dec b                                         ; $5C86: $05
    sub c                                         ; $5C87: $91
    add b                                         ; $5C88: $80
    inc b                                         ; $5C89: $04
    sub c                                         ; $5C8A: $91
    dec b                                         ; $5C8B: $05
    add b                                         ; $5C8C: $80
    add b                                         ; $5C8D: $80
    inc b                                         ; $5C8E: $04
    db $ED                                        ; $5C8F: $ED
    adc [hl]                                      ; $5C90: $8E
    add hl, bc                                    ; $5C91: $09
    adc [hl]                                      ; $5C92: $8E
    adc [hl]                                      ; $5C93: $8E
    ld a, [bc]                                    ; $5C94: $0A
    adc [hl]                                      ; $5C95: $8E
    add hl, bc                                    ; $5C96: $09
    adc [hl]                                      ; $5C97: $8E
    adc [hl]                                      ; $5C98: $8E
    ld a, [bc]                                    ; $5C99: $0A
    sub e                                         ; $5C9A: $93
    ld c, $80                                     ; $5C9B: $0E $80
    adc [hl]                                      ; $5C9D: $8E
    add hl, bc                                    ; $5C9E: $09
    adc [hl]                                      ; $5C9F: $8E
    adc [hl]                                      ; $5CA0: $8E
    ld a, [bc]                                    ; $5CA1: $0A
    adc [hl]                                      ; $5CA2: $8E
    add hl, bc                                    ; $5CA3: $09
    adc [hl]                                      ; $5CA4: $8E
    adc [hl]                                      ; $5CA5: $8E
    ld a, [bc]                                    ; $5CA6: $0A
    adc a                                         ; $5CA7: $8F
    add hl, bc                                    ; $5CA8: $09
    adc a                                         ; $5CA9: $8F
    adc a                                         ; $5CAA: $8F
    ld a, [bc]                                    ; $5CAB: $0A
    adc [hl]                                      ; $5CAC: $8E
    add hl, bc                                    ; $5CAD: $09
    adc [hl]                                      ; $5CAE: $8E
    adc [hl]                                      ; $5CAF: $8E
    ld a, [bc]                                    ; $5CB0: $0A
    adc [hl]                                      ; $5CB1: $8E
    add hl, bc                                    ; $5CB2: $09
    adc [hl]                                      ; $5CB3: $8E
    adc [hl]                                      ; $5CB4: $8E
    ld a, [bc]                                    ; $5CB5: $0A
    sub e                                         ; $5CB6: $93
    ld c, $80                                     ; $5CB7: $0E $80
    adc [hl]                                      ; $5CB9: $8E
    add hl, bc                                    ; $5CBA: $09
    adc [hl]                                      ; $5CBB: $8E
    adc [hl]                                      ; $5CBC: $8E
    ld a, [bc]                                    ; $5CBD: $0A
    sub c                                         ; $5CBE: $91
    add hl, bc                                    ; $5CBF: $09
    sub c                                         ; $5CC0: $91
    dec b                                         ; $5CC1: $05
    sub b                                         ; $5CC2: $90
    dec b                                         ; $5CC3: $05
    sub c                                         ; $5CC4: $91
    add b                                         ; $5CC5: $80
    inc b                                         ; $5CC6: $04
    adc a                                         ; $5CC7: $8F
    add hl, bc                                    ; $5CC8: $09
    adc a                                         ; $5CC9: $8F
    dec b                                         ; $5CCA: $05
    add l                                         ; $5CCB: $85
    dec b                                         ; $5CCC: $05
    adc a                                         ; $5CCD: $8F
    add b                                         ; $5CCE: $80
    inc b                                         ; $5CCF: $04
    rst RST_20                                    ; $5CD0: $E7
    nop                                           ; $5CD1: $00
    ld [bc], a                                    ; $5CD2: $02
    sub b                                         ; $5CD3: $90
    ld e, h                                       ; $5CD4: $5C
    db $ED                                        ; $5CD5: $ED
    db $E4                                        ; $5CD6: $E4
    ld d, a                                       ; $5CD7: $57
    sub b                                         ; $5CD8: $90
    dec b                                         ; $5CD9: $05
    add b                                         ; $5CDA: $80
    sub l                                         ; $5CDB: $95
    ld c, $80                                     ; $5CDC: $0E $80
    inc b                                         ; $5CDE: $04
    pop af                                        ; $5CDF: $F1
    sub e                                         ; $5CE0: $93
    ld a, [hl+]                                   ; $5CE1: $2A
    add b                                         ; $5CE2: $80
    dec b                                         ; $5CE3: $05
    sub d                                         ; $5CE4: $92
    add b                                         ; $5CE5: $80
    inc b                                         ; $5CE6: $04
    pop af                                        ; $5CE7: $F1
    sub l                                         ; $5CE8: $95
    ld a, [hl+]                                   ; $5CE9: $2A
    add b                                         ; $5CEA: $80
    dec b                                         ; $5CEB: $05
    sub e                                         ; $5CEC: $93
    add b                                         ; $5CED: $80
    inc b                                         ; $5CEE: $04
    pop af                                        ; $5CEF: $F1
    sub [hl]                                      ; $5CF0: $96
    inc e                                         ; $5CF1: $1C
    add b                                         ; $5CF2: $80
    dec b                                         ; $5CF3: $05
    add b                                         ; $5CF4: $80
    sbc e                                         ; $5CF5: $9B
    ld c, $80                                     ; $5CF6: $0E $80
    inc b                                         ; $5CF8: $04
    pop af                                        ; $5CF9: $F1
    sbc c                                         ; $5CFA: $99
    ld a, [hl+]                                   ; $5CFB: $2A
    add b                                         ; $5CFC: $80
    dec b                                         ; $5CFD: $05
    sbc b                                         ; $5CFE: $98
    add b                                         ; $5CFF: $80
    inc b                                         ; $5D00: $04
    pop af                                        ; $5D01: $F1
    sbc e                                         ; $5D02: $9B
    ld a, [hl+]                                   ; $5D03: $2A
    add b                                         ; $5D04: $80
    dec b                                         ; $5D05: $05
    sbc c                                         ; $5D06: $99
    add b                                         ; $5D07: $80
    inc b                                         ; $5D08: $04
    sbc h                                         ; $5D09: $9C
    inc e                                         ; $5D0A: $1C
    db $ED                                        ; $5D0B: $ED
    sbc c                                         ; $5D0C: $99
    inc de                                        ; $5D0D: $13
    sbc b                                         ; $5D0E: $98
    sub a                                         ; $5D0F: $97
    ld [de], a                                    ; $5D10: $12
    sbc b                                         ; $5D11: $98
    inc de                                        ; $5D12: $13
    sbc c                                         ; $5D13: $99
    sbc b                                         ; $5D14: $98
    ld [de], a                                    ; $5D15: $12
    sbc c                                         ; $5D16: $99
    inc de                                        ; $5D17: $13
    sbc b                                         ; $5D18: $98
    sbc c                                         ; $5D19: $99
    ld [de], a                                    ; $5D1A: $12
    db $ED                                        ; $5D1B: $ED
    db $E4                                        ; $5D1C: $E4
    ld e, b                                       ; $5D1D: $58
    sub c                                         ; $5D1E: $91
    ld a, [hl+]                                   ; $5D1F: $2A
    sub d                                         ; $5D20: $92
    adc a                                         ; $5D21: $8F
    sub d                                         ; $5D22: $92
    sub c                                         ; $5D23: $91
    ld d, h                                       ; $5D24: $54
    db $E4                                        ; $5D25: $E4
    ld c, b                                       ; $5D26: $48
    pop af                                        ; $5D27: $F1
    sub c                                         ; $5D28: $91
    db $E4                                        ; $5D29: $E4
    ld a, b                                       ; $5D2A: $78
    sub c                                         ; $5D2B: $91
    ld a, [hl+]                                   ; $5D2C: $2A
    sub d                                         ; $5D2D: $92
    adc a                                         ; $5D2E: $8F
    sub [hl]                                      ; $5D2F: $96
    sub l                                         ; $5D30: $95
    ld d, h                                       ; $5D31: $54
    db $E4                                        ; $5D32: $E4
    ld c, b                                       ; $5D33: $48
    pop af                                        ; $5D34: $F1
    sub l                                         ; $5D35: $95
    jr c, @-$7E                                   ; $5D36: $38 $80

    ld c, $ED                                     ; $5D38: $0E $ED
    db $E4                                        ; $5D3A: $E4
    ld b, b                                       ; $5D3B: $40
    jp hl                                         ; $5D3C: $E9


    ld b, h                                       ; $5D3D: $44
    di                                            ; $5D3E: $F3
    inc b                                         ; $5D3F: $04
    push af                                       ; $5D40: $F5
    nop                                           ; $5D41: $00
    db $EC                                        ; $5D42: $EC
    ld h, e                                       ; $5D43: $63
    ld e, l                                       ; $5D44: $5D
    db $EC                                        ; $5D45: $EC
    and a                                         ; $5D46: $A7
    ld e, l                                       ; $5D47: $5D
    db $EC                                        ; $5D48: $EC
    inc bc                                        ; $5D49: $03
    ld e, [hl]                                    ; $5D4A: $5E
    db $EC                                        ; $5D4B: $EC
    inc l                                         ; $5D4C: $2C
    ld e, [hl]                                    ; $5D4D: $5E
    and $01                                       ; $5D4E: $E6 $01
    db $EC                                        ; $5D50: $EC
    inc l                                         ; $5D51: $2C
    ld e, [hl]                                    ; $5D52: $5E
    and $01                                       ; $5D53: $E6 $01
    db $EC                                        ; $5D55: $EC
    inc bc                                        ; $5D56: $03
    ld e, [hl]                                    ; $5D57: $5E
    and $FE                                       ; $5D58: $E6 $FE
    db $EC                                        ; $5D5A: $EC
    ld l, c                                       ; $5D5B: $69
    ld e, [hl]                                    ; $5D5C: $5E
    db $EC                                        ; $5D5D: $EC
    di                                            ; $5D5E: $F3
    ld e, [hl]                                    ; $5D5F: $5E
    push hl                                       ; $5D60: $E5
    ld a, [hl-]                                   ; $5D61: $3A
    ld e, l                                       ; $5D62: $5D
    pop af                                        ; $5D63: $F1
    add l                                         ; $5D64: $85
    inc e                                         ; $5D65: $1C
    ld a, [$FA07]                                 ; $5D66: $FA $07 $FA
    inc bc                                        ; $5D69: $03
    add [hl]                                      ; $5D6A: $86
    inc b                                         ; $5D6B: $04
    add a                                         ; $5D6C: $87
    inc bc                                        ; $5D6D: $03
    adc b                                         ; $5D6E: $88
    inc b                                         ; $5D6F: $04
    adc c                                         ; $5D70: $89
    inc bc                                        ; $5D71: $03
    adc d                                         ; $5D72: $8A
    inc b                                         ; $5D73: $04
    adc e                                         ; $5D74: $8B
    inc e                                         ; $5D75: $1C
    ld a, [$FA07]                                 ; $5D76: $FA $07 $FA
    inc bc                                        ; $5D79: $03
    adc d                                         ; $5D7A: $8A
    inc b                                         ; $5D7B: $04
    adc c                                         ; $5D7C: $89
    inc bc                                        ; $5D7D: $03
    adc b                                         ; $5D7E: $88
    inc b                                         ; $5D7F: $04
    add a                                         ; $5D80: $87
    inc bc                                        ; $5D81: $03
    add [hl]                                      ; $5D82: $86
    inc b                                         ; $5D83: $04
    add l                                         ; $5D84: $85
    ld c, $86                                     ; $5D85: $0E $86
    inc bc                                        ; $5D87: $03
    add a                                         ; $5D88: $87
    inc b                                         ; $5D89: $04
    adc b                                         ; $5D8A: $88
    inc bc                                        ; $5D8B: $03
    adc d                                         ; $5D8C: $8A
    inc b                                         ; $5D8D: $04
    adc e                                         ; $5D8E: $8B
    ld d, h                                       ; $5D8F: $54
    push af                                       ; $5D90: $F5
    ld a, [bc]                                    ; $5D91: $0A
    adc a                                         ; $5D92: $8F
    add hl, bc                                    ; $5D93: $09
    adc a                                         ; $5D94: $8F
    adc a                                         ; $5D95: $8F
    ld a, [bc]                                    ; $5D96: $0A
    sub b                                         ; $5D97: $90
    add hl, bc                                    ; $5D98: $09
    sub b                                         ; $5D99: $90
    sub b                                         ; $5D9A: $90
    ld a, [bc]                                    ; $5D9B: $0A
    sub c                                         ; $5D9C: $91
    add hl, bc                                    ; $5D9D: $09
    sub c                                         ; $5D9E: $91
    sub c                                         ; $5D9F: $91
    ld a, [bc]                                    ; $5DA0: $0A
    sub d                                         ; $5DA1: $92
    add hl, bc                                    ; $5DA2: $09
    sub d                                         ; $5DA3: $92
    sub d                                         ; $5DA4: $92
    ld a, [bc]                                    ; $5DA5: $0A
    db $ED                                        ; $5DA6: $ED
    sub e                                         ; $5DA7: $93
    add hl, bc                                    ; $5DA8: $09
    adc b                                         ; $5DA9: $88
    adc b                                         ; $5DAA: $88
    ld a, [bc]                                    ; $5DAB: $0A
    db $E4                                        ; $5DAC: $E4
    ld h, b                                       ; $5DAD: $60
    sub e                                         ; $5DAE: $93
    add hl, bc                                    ; $5DAF: $09
    sbc b                                         ; $5DB0: $98
    dec b                                         ; $5DB1: $05
    sbc l                                         ; $5DB2: $9D
    dec b                                         ; $5DB3: $05
    sbc l                                         ; $5DB4: $9D
    and d                                         ; $5DB5: $A2
    inc b                                         ; $5DB6: $04
    and d                                         ; $5DB7: $A2
    dec b                                         ; $5DB8: $05

jr_02F_5DB9:
    and a                                         ; $5DB9: $A7
    and d                                         ; $5DBA: $A2
    inc b                                         ; $5DBB: $04
    and a                                         ; $5DBC: $A7
    ld c, $E4                                     ; $5DBD: $0E $E4
    ld b, b                                       ; $5DBF: $40
    sub e                                         ; $5DC0: $93
    add hl, bc                                    ; $5DC1: $09
    adc b                                         ; $5DC2: $88
    adc b                                         ; $5DC3: $88
    ld a, [bc]                                    ; $5DC4: $0A
    sub e                                         ; $5DC5: $93
    add hl, bc                                    ; $5DC6: $09
    sub e                                         ; $5DC7: $93
    sub e                                         ; $5DC8: $93
    ld a, [bc]                                    ; $5DC9: $0A
    sub h                                         ; $5DCA: $94
    add hl, bc                                    ; $5DCB: $09
    sub h                                         ; $5DCC: $94
    sub h                                         ; $5DCD: $94
    ld a, [bc]                                    ; $5DCE: $0A
    sub e                                         ; $5DCF: $93
    add hl, bc                                    ; $5DD0: $09
    adc b                                         ; $5DD1: $88
    adc b                                         ; $5DD2: $88
    ld a, [bc]                                    ; $5DD3: $0A
    db $E4                                        ; $5DD4: $E4
    ld h, b                                       ; $5DD5: $60
    sub e                                         ; $5DD6: $93
    add hl, bc                                    ; $5DD7: $09
    sbc b                                         ; $5DD8: $98
    dec b                                         ; $5DD9: $05
    sbc l                                         ; $5DDA: $9D
    dec b                                         ; $5DDB: $05
    sbc l                                         ; $5DDC: $9D
    and d                                         ; $5DDD: $A2
    inc b                                         ; $5DDE: $04
    and d                                         ; $5DDF: $A2
    dec b                                         ; $5DE0: $05
    and a                                         ; $5DE1: $A7
    and d                                         ; $5DE2: $A2
    inc b                                         ; $5DE3: $04
    and a                                         ; $5DE4: $A7
    ld c, $E4                                     ; $5DE5: $0E $E4
    ld b, b                                       ; $5DE7: $40
    sub e                                         ; $5DE8: $93
    add hl, bc                                    ; $5DE9: $09
    adc b                                         ; $5DEA: $88
    adc b                                         ; $5DEB: $88
    ld a, [bc]                                    ; $5DEC: $0A
    sub [hl]                                      ; $5DED: $96
    add hl, bc                                    ; $5DEE: $09
    sub [hl]                                      ; $5DEF: $96
    dec b                                         ; $5DF0: $05
    sub h                                         ; $5DF1: $94
    sub [hl]                                      ; $5DF2: $96
    add b                                         ; $5DF3: $80
    inc b                                         ; $5DF4: $04
    sub h                                         ; $5DF5: $94
    add hl, bc                                    ; $5DF6: $09
    sub h                                         ; $5DF7: $94
    dec b                                         ; $5DF8: $05
    adc a                                         ; $5DF9: $8F
    sub h                                         ; $5DFA: $94
    add b                                         ; $5DFB: $80
    inc b                                         ; $5DFC: $04
    rst RST_20                                    ; $5DFD: $E7
    nop                                           ; $5DFE: $00
    ld [bc], a                                    ; $5DFF: $02
    and a                                         ; $5E00: $A7
    ld e, l                                       ; $5E01: $5D
    db $ED                                        ; $5E02: $ED
    push af                                       ; $5E03: $F5
    nop                                           ; $5E04: $00
    sub l                                         ; $5E05: $95
    ld c, $80                                     ; $5E06: $0E $80
    sbc b                                         ; $5E08: $98
    ld a, [hl+]                                   ; $5E09: $2A
    add b                                         ; $5E0A: $80
    dec b                                         ; $5E0B: $05
    sub a                                         ; $5E0C: $97
    add b                                         ; $5E0D: $80
    inc b                                         ; $5E0E: $04
    pop af                                        ; $5E0F: $F1
    sbc d                                         ; $5E10: $9A
    ld a, [hl+]                                   ; $5E11: $2A
    add b                                         ; $5E12: $80
    dec b                                         ; $5E13: $05
    sbc b                                         ; $5E14: $98
    add b                                         ; $5E15: $80
    inc b                                         ; $5E16: $04
    pop af                                        ; $5E17: $F1
    sbc e                                         ; $5E18: $9B
    jr c, jr_02F_5DB9                             ; $5E19: $38 $9E

    ld a, [hl+]                                   ; $5E1B: $2A
    add b                                         ; $5E1C: $80
    dec b                                         ; $5E1D: $05
    sbc l                                         ; $5E1E: $9D
    add b                                         ; $5E1F: $80
    inc b                                         ; $5E20: $04
    pop af                                        ; $5E21: $F1
    and b                                         ; $5E22: $A0
    ld a, [hl+]                                   ; $5E23: $2A
    add b                                         ; $5E24: $80
    dec b                                         ; $5E25: $05
    sbc [hl]                                      ; $5E26: $9E
    add b                                         ; $5E27: $80
    inc b                                         ; $5E28: $04
    and c                                         ; $5E29: $A1
    inc e                                         ; $5E2A: $1C
    db $ED                                        ; $5E2B: $ED
    and d                                         ; $5E2C: $A2
    dec b                                         ; $5E2D: $05
    and d                                         ; $5E2E: $A2
    sub e                                         ; $5E2F: $93
    inc b                                         ; $5E30: $04
    add b                                         ; $5E31: $80
    dec b                                         ; $5E32: $05
    sub e                                         ; $5E33: $93
    add b                                         ; $5E34: $80
    inc b                                         ; $5E35: $04
    sub e                                         ; $5E36: $93
    dec b                                         ; $5E37: $05
    add b                                         ; $5E38: $80
    sub e                                         ; $5E39: $93
    inc b                                         ; $5E3A: $04
    add b                                         ; $5E3B: $80
    dec b                                         ; $5E3C: $05
    and d                                         ; $5E3D: $A2
    and d                                         ; $5E3E: $A2
    inc b                                         ; $5E3F: $04
    sub e                                         ; $5E40: $93
    dec b                                         ; $5E41: $05
    add b                                         ; $5E42: $80
    sub e                                         ; $5E43: $93
    inc b                                         ; $5E44: $04
    add b                                         ; $5E45: $80
    dec b                                         ; $5E46: $05
    and d                                         ; $5E47: $A2
    and d                                         ; $5E48: $A2
    inc b                                         ; $5E49: $04
    and d                                         ; $5E4A: $A2
    dec b                                         ; $5E4B: $05
    add b                                         ; $5E4C: $80
    and d                                         ; $5E4D: $A2
    inc b                                         ; $5E4E: $04
    add b                                         ; $5E4F: $80
    dec b                                         ; $5E50: $05
    sub e                                         ; $5E51: $93
    add b                                         ; $5E52: $80
    inc b                                         ; $5E53: $04
    and d                                         ; $5E54: $A2
    dec b                                         ; $5E55: $05
    and d                                         ; $5E56: $A2
    sub e                                         ; $5E57: $93
    inc b                                         ; $5E58: $04
    add b                                         ; $5E59: $80
    dec b                                         ; $5E5A: $05
    sub e                                         ; $5E5B: $93
    add b                                         ; $5E5C: $80
    inc b                                         ; $5E5D: $04
    sub e                                         ; $5E5E: $93
    dec b                                         ; $5E5F: $05
    add b                                         ; $5E60: $80
    and d                                         ; $5E61: $A2
    inc b                                         ; $5E62: $04
    add b                                         ; $5E63: $80
    dec b                                         ; $5E64: $05
    sub e                                         ; $5E65: $93
    add b                                         ; $5E66: $80
    inc b                                         ; $5E67: $04
    db $ED                                        ; $5E68: $ED
    db $E4                                        ; $5E69: $E4
    ld b, b                                       ; $5E6A: $40
    and h                                         ; $5E6B: $A4
    dec b                                         ; $5E6C: $05
    db $E4                                        ; $5E6D: $E4
    ld h, b                                       ; $5E6E: $60
    and h                                         ; $5E6F: $A4
    db $E4                                        ; $5E70: $E4
    ld b, b                                       ; $5E71: $40
    sbc b                                         ; $5E72: $98
    inc b                                         ; $5E73: $04
    db $E4                                        ; $5E74: $E4
    ld h, b                                       ; $5E75: $60
    and h                                         ; $5E76: $A4
    dec b                                         ; $5E77: $05
    db $E4                                        ; $5E78: $E4
    ld b, b                                       ; $5E79: $40
    sbc c                                         ; $5E7A: $99
    db $E4                                        ; $5E7B: $E4
    ld h, b                                       ; $5E7C: $60
    sbc c                                         ; $5E7D: $99
    inc b                                         ; $5E7E: $04
    db $E4                                        ; $5E7F: $E4
    ld b, b                                       ; $5E80: $40
    sbc b                                         ; $5E81: $98
    dec b                                         ; $5E82: $05
    db $E4                                        ; $5E83: $E4
    ld h, b                                       ; $5E84: $60
    sbc b                                         ; $5E85: $98
    db $E4                                        ; $5E86: $E4
    ld b, b                                       ; $5E87: $40
    adc h                                         ; $5E88: $8C
    inc b                                         ; $5E89: $04
    db $E4                                        ; $5E8A: $E4
    ld h, b                                       ; $5E8B: $60
    adc h                                         ; $5E8C: $8C
    dec b                                         ; $5E8D: $05
    db $E4                                        ; $5E8E: $E4
    ld b, b                                       ; $5E8F: $40
    adc l                                         ; $5E90: $8D
    db $E4                                        ; $5E91: $E4
    ld h, b                                       ; $5E92: $60
    adc l                                         ; $5E93: $8D
    inc b                                         ; $5E94: $04
    db $E4                                        ; $5E95: $E4
    ld b, b                                       ; $5E96: $40
    adc h                                         ; $5E97: $8C
    dec b                                         ; $5E98: $05
    db $E4                                        ; $5E99: $E4
    ld h, b                                       ; $5E9A: $60
    adc h                                         ; $5E9B: $8C
    db $E4                                        ; $5E9C: $E4
    ld b, b                                       ; $5E9D: $40
    sub d                                         ; $5E9E: $92
    inc b                                         ; $5E9F: $04
    db $E4                                        ; $5EA0: $E4
    ld h, b                                       ; $5EA1: $60
    sub d                                         ; $5EA2: $92
    dec b                                         ; $5EA3: $05
    db $E4                                        ; $5EA4: $E4
    ld b, b                                       ; $5EA5: $40
    sub h                                         ; $5EA6: $94
    db $E4                                        ; $5EA7: $E4
    ld h, b                                       ; $5EA8: $60
    sub h                                         ; $5EA9: $94
    inc b                                         ; $5EAA: $04
    db $E4                                        ; $5EAB: $E4
    ld b, b                                       ; $5EAC: $40
    sub d                                         ; $5EAD: $92
    dec b                                         ; $5EAE: $05
    db $E4                                        ; $5EAF: $E4
    ld h, b                                       ; $5EB0: $60
    sub d                                         ; $5EB1: $92
    db $E4                                        ; $5EB2: $E4
    ld b, b                                       ; $5EB3: $40
    sbc c                                         ; $5EB4: $99
    inc b                                         ; $5EB5: $04
    db $E4                                        ; $5EB6: $E4
    ld h, b                                       ; $5EB7: $60
    sbc c                                         ; $5EB8: $99
    dec b                                         ; $5EB9: $05
    db $E4                                        ; $5EBA: $E4
    ld b, b                                       ; $5EBB: $40
    sbc e                                         ; $5EBC: $9B
    db $E4                                        ; $5EBD: $E4
    ld h, b                                       ; $5EBE: $60
    sbc e                                         ; $5EBF: $9B
    inc b                                         ; $5EC0: $04
    db $E4                                        ; $5EC1: $E4
    ld b, b                                       ; $5EC2: $40
    sbc c                                         ; $5EC3: $99
    dec b                                         ; $5EC4: $05
    db $E4                                        ; $5EC5: $E4
    ld h, b                                       ; $5EC6: $60
    sbc c                                         ; $5EC7: $99
    db $E4                                        ; $5EC8: $E4
    ld b, b                                       ; $5EC9: $40
    sbc [hl]                                      ; $5ECA: $9E
    inc b                                         ; $5ECB: $04
    db $E4                                        ; $5ECC: $E4
    ld h, b                                       ; $5ECD: $60
    sbc [hl]                                      ; $5ECE: $9E
    dec b                                         ; $5ECF: $05
    db $E4                                        ; $5ED0: $E4
    ld b, b                                       ; $5ED1: $40
    and b                                         ; $5ED2: $A0
    db $E4                                        ; $5ED3: $E4
    ld h, b                                       ; $5ED4: $60
    and b                                         ; $5ED5: $A0
    inc b                                         ; $5ED6: $04
    db $E4                                        ; $5ED7: $E4
    ld b, b                                       ; $5ED8: $40
    sbc [hl]                                      ; $5ED9: $9E
    dec b                                         ; $5EDA: $05
    db $E4                                        ; $5EDB: $E4
    ld h, b                                       ; $5EDC: $60
    sbc [hl]                                      ; $5EDD: $9E
    db $E4                                        ; $5EDE: $E4
    ld b, b                                       ; $5EDF: $40
    and l                                         ; $5EE0: $A5
    inc b                                         ; $5EE1: $04
    db $E4                                        ; $5EE2: $E4
    ld h, b                                       ; $5EE3: $60
    and l                                         ; $5EE4: $A5
    dec b                                         ; $5EE5: $05
    db $E4                                        ; $5EE6: $E4
    ld b, b                                       ; $5EE7: $40
    and a                                         ; $5EE8: $A7
    db $E4                                        ; $5EE9: $E4
    ld h, b                                       ; $5EEA: $60
    and a                                         ; $5EEB: $A7
    inc b                                         ; $5EEC: $04
    rst RST_20                                    ; $5EED: $E7
    nop                                           ; $5EEE: $00
    inc b                                         ; $5EEF: $04
    ld l, c                                       ; $5EF0: $69
    ld e, [hl]                                    ; $5EF1: $5E
    db $ED                                        ; $5EF2: $ED
    db $E4                                        ; $5EF3: $E4
    ld b, b                                       ; $5EF4: $40
    and l                                         ; $5EF5: $A5
    dec b                                         ; $5EF6: $05
    db $E4                                        ; $5EF7: $E4
    ld h, b                                       ; $5EF8: $60
    and l                                         ; $5EF9: $A5
    db $E4                                        ; $5EFA: $E4
    ld b, b                                       ; $5EFB: $40
    sbc c                                         ; $5EFC: $99
    inc b                                         ; $5EFD: $04
    db $E4                                        ; $5EFE: $E4
    ld h, b                                       ; $5EFF: $60
    sbc c                                         ; $5F00: $99
    dec b                                         ; $5F01: $05
    db $E4                                        ; $5F02: $E4
    ld b, b                                       ; $5F03: $40
    sbc d                                         ; $5F04: $9A
    db $E4                                        ; $5F05: $E4
    ld h, b                                       ; $5F06: $60
    sbc d                                         ; $5F07: $9A
    inc b                                         ; $5F08: $04
    db $E4                                        ; $5F09: $E4
    ld b, b                                       ; $5F0A: $40
    sbc c                                         ; $5F0B: $99
    dec b                                         ; $5F0C: $05
    db $E4                                        ; $5F0D: $E4
    ld h, b                                       ; $5F0E: $60
    sbc c                                         ; $5F0F: $99
    db $E4                                        ; $5F10: $E4
    ld b, b                                       ; $5F11: $40
    adc l                                         ; $5F12: $8D
    inc b                                         ; $5F13: $04
    db $E4                                        ; $5F14: $E4
    ld h, b                                       ; $5F15: $60
    adc l                                         ; $5F16: $8D
    dec b                                         ; $5F17: $05
    db $E4                                        ; $5F18: $E4
    ld b, b                                       ; $5F19: $40
    adc [hl]                                      ; $5F1A: $8E
    db $E4                                        ; $5F1B: $E4
    ld h, b                                       ; $5F1C: $60
    adc [hl]                                      ; $5F1D: $8E
    inc b                                         ; $5F1E: $04
    db $E4                                        ; $5F1F: $E4
    ld b, b                                       ; $5F20: $40
    adc l                                         ; $5F21: $8D
    dec b                                         ; $5F22: $05
    db $E4                                        ; $5F23: $E4
    ld h, b                                       ; $5F24: $60
    adc l                                         ; $5F25: $8D
    db $E4                                        ; $5F26: $E4
    ld b, b                                       ; $5F27: $40
    sub e                                         ; $5F28: $93
    inc b                                         ; $5F29: $04
    db $E4                                        ; $5F2A: $E4
    ld h, b                                       ; $5F2B: $60
    sub e                                         ; $5F2C: $93
    dec b                                         ; $5F2D: $05
    db $E4                                        ; $5F2E: $E4
    ld b, b                                       ; $5F2F: $40
    sub l                                         ; $5F30: $95
    db $E4                                        ; $5F31: $E4
    ld h, b                                       ; $5F32: $60
    sub l                                         ; $5F33: $95
    inc b                                         ; $5F34: $04
    db $E4                                        ; $5F35: $E4
    ld b, b                                       ; $5F36: $40
    sub e                                         ; $5F37: $93
    dec b                                         ; $5F38: $05
    db $E4                                        ; $5F39: $E4
    ld h, b                                       ; $5F3A: $60
    sub e                                         ; $5F3B: $93
    db $E4                                        ; $5F3C: $E4
    ld b, b                                       ; $5F3D: $40
    sbc d                                         ; $5F3E: $9A
    inc b                                         ; $5F3F: $04
    db $E4                                        ; $5F40: $E4
    ld h, b                                       ; $5F41: $60
    sbc d                                         ; $5F42: $9A
    dec b                                         ; $5F43: $05
    db $E4                                        ; $5F44: $E4
    ld b, b                                       ; $5F45: $40
    sbc h                                         ; $5F46: $9C
    db $E4                                        ; $5F47: $E4
    ld h, b                                       ; $5F48: $60
    sbc h                                         ; $5F49: $9C
    inc b                                         ; $5F4A: $04
    db $E4                                        ; $5F4B: $E4
    ld b, b                                       ; $5F4C: $40
    sbc d                                         ; $5F4D: $9A
    dec b                                         ; $5F4E: $05
    db $E4                                        ; $5F4F: $E4
    ld h, b                                       ; $5F50: $60
    sbc d                                         ; $5F51: $9A
    db $E4                                        ; $5F52: $E4
    ld b, b                                       ; $5F53: $40
    sbc a                                         ; $5F54: $9F
    inc b                                         ; $5F55: $04
    db $E4                                        ; $5F56: $E4
    ld h, b                                       ; $5F57: $60
    sbc a                                         ; $5F58: $9F
    dec b                                         ; $5F59: $05
    db $E4                                        ; $5F5A: $E4
    ld b, b                                       ; $5F5B: $40
    and c                                         ; $5F5C: $A1
    db $E4                                        ; $5F5D: $E4
    ld h, b                                       ; $5F5E: $60
    and c                                         ; $5F5F: $A1
    inc b                                         ; $5F60: $04
    db $E4                                        ; $5F61: $E4
    ld b, b                                       ; $5F62: $40
    sbc a                                         ; $5F63: $9F
    dec b                                         ; $5F64: $05
    db $E4                                        ; $5F65: $E4
    ld h, b                                       ; $5F66: $60
    sbc a                                         ; $5F67: $9F
    db $E4                                        ; $5F68: $E4
    ld b, b                                       ; $5F69: $40
    and [hl]                                      ; $5F6A: $A6
    inc b                                         ; $5F6B: $04
    db $E4                                        ; $5F6C: $E4
    ld h, b                                       ; $5F6D: $60
    and [hl]                                      ; $5F6E: $A6
    dec b                                         ; $5F6F: $05
    db $E4                                        ; $5F70: $E4
    ld b, b                                       ; $5F71: $40
    xor b                                         ; $5F72: $A8
    db $E4                                        ; $5F73: $E4
    ld h, b                                       ; $5F74: $60
    xor b                                         ; $5F75: $A8
    inc b                                         ; $5F76: $04
    rst RST_20                                    ; $5F77: $E7
    nop                                           ; $5F78: $00
    inc b                                         ; $5F79: $04
    di                                            ; $5F7A: $F3
    ld e, [hl]                                    ; $5F7B: $5E
    db $ED                                        ; $5F7C: $ED
    jp hl                                         ; $5F7D: $E9


    adc b                                         ; $5F7E: $88
    db $EC                                        ; $5F7F: $EC
    sub h                                         ; $5F80: $94
    ld e, a                                       ; $5F81: $5F
    db $EC                                        ; $5F82: $EC
    ldh [c], a                                    ; $5F83: $E2
    ld e, a                                       ; $5F84: $5F
    db $EC                                        ; $5F85: $EC
    jr z, jr_02F_5FE8                             ; $5F86: $28 $60

    db $EC                                        ; $5F88: $EC
    ld a, $60                                     ; $5F89: $3E $60
    db $EC                                        ; $5F8B: $EC
    add h                                         ; $5F8C: $84
    ld h, b                                       ; $5F8D: $60
    db $EC                                        ; $5F8E: $EC
    jp nz, $E560                                  ; $5F8F: $C2 $60 $E5

    ld a, l                                       ; $5F92: $7D
    ld e, a                                       ; $5F93: $5F
    db $E4                                        ; $5F94: $E4
    ld b, c                                       ; $5F95: $41
    ld hl, $E454                                  ; $5F96: $21 $54 $E4
    ld b, c                                       ; $5F99: $41
    ld hl, $E454                                  ; $5F9A: $21 $54 $E4
    ld [hl], c                                    ; $5F9D: $71
    ld [hl], $05                                  ; $5F9E: $36 $05
    db $E4                                        ; $5FA0: $E4
    ld h, d                                       ; $5FA1: $62
    inc h                                         ; $5FA2: $24
    dec b                                         ; $5FA3: $05
    db $E4                                        ; $5FA4: $E4
    ld [hl], c                                    ; $5FA5: $71
    ld [hl], $04                                  ; $5FA6: $36 $04
    rst RST_20                                    ; $5FA8: $E7
    nop                                           ; $5FA9: $00
    inc bc                                        ; $5FAA: $03
    sbc h                                         ; $5FAB: $9C
    ld e, a                                       ; $5FAC: $5F
    db $E4                                        ; $5FAD: $E4
    ld h, d                                       ; $5FAE: $62
    inc h                                         ; $5FAF: $24
    dec b                                         ; $5FB0: $05
    db $E4                                        ; $5FB1: $E4
    ld [hl], c                                    ; $5FB2: $71
    ld [hl], $05                                  ; $5FB3: $36 $05
    db $E4                                        ; $5FB5: $E4
    ld h, d                                       ; $5FB6: $62
    inc h                                         ; $5FB7: $24
    inc b                                         ; $5FB8: $04
    db $E4                                        ; $5FB9: $E4
    ld d, e                                       ; $5FBA: $53
    ld de, $E41C                                  ; $5FBB: $11 $1C $E4
    ld [hl], c                                    ; $5FBE: $71
    ld [hl], $09                                  ; $5FBF: $36 $09
    db $E4                                        ; $5FC1: $E4
    ld [hl], c                                    ; $5FC2: $71
    ld [hl], $09                                  ; $5FC3: $36 $09
    db $E4                                        ; $5FC5: $E4
    ld [hl], c                                    ; $5FC6: $71
    ld [hl], $0A                                  ; $5FC7: $36 $0A
    db $E4                                        ; $5FC9: $E4
    ld h, d                                       ; $5FCA: $62
    inc h                                         ; $5FCB: $24
    add hl, bc                                    ; $5FCC: $09
    db $E4                                        ; $5FCD: $E4
    ld h, d                                       ; $5FCE: $62
    inc h                                         ; $5FCF: $24
    add hl, bc                                    ; $5FD0: $09
    db $E4                                        ; $5FD1: $E4
    ld h, d                                       ; $5FD2: $62
    inc h                                         ; $5FD3: $24
    ld a, [bc]                                    ; $5FD4: $0A
    db $E4                                        ; $5FD5: $E4
    ld [hl], c                                    ; $5FD6: $71
    ld [hl], $09                                  ; $5FD7: $36 $09
    db $E4                                        ; $5FD9: $E4
    ld [hl], c                                    ; $5FDA: $71
    ld [hl], $09                                  ; $5FDB: $36 $09
    db $E4                                        ; $5FDD: $E4
    ld [hl], c                                    ; $5FDE: $71
    ld [hl], $0A                                  ; $5FDF: $36 $0A
    db $ED                                        ; $5FE1: $ED
    db $E4                                        ; $5FE2: $E4
    ld [hl], c                                    ; $5FE3: $71
    ld [hl], $09                                  ; $5FE4: $36 $09
    db $E4                                        ; $5FE6: $E4
    ld h, d                                       ; $5FE7: $62

jr_02F_5FE8:
    inc h                                         ; $5FE8: $24
    add hl, bc                                    ; $5FE9: $09
    db $E4                                        ; $5FEA: $E4
    ld h, d                                       ; $5FEB: $62
    inc h                                         ; $5FEC: $24
    ld a, [bc]                                    ; $5FED: $0A
    db $E4                                        ; $5FEE: $E4
    ld [hl], c                                    ; $5FEF: $71
    ld [hl], $1C                                  ; $5FF0: $36 $1C
    db $E4                                        ; $5FF2: $E4
    ld [hl], c                                    ; $5FF3: $71
    ld [hl], $1C                                  ; $5FF4: $36 $1C
    db $E4                                        ; $5FF6: $E4
    ld [hl], c                                    ; $5FF7: $71
    ld [hl], $09                                  ; $5FF8: $36 $09
    db $E4                                        ; $5FFA: $E4
    ld [hl], c                                    ; $5FFB: $71
    ld [hl], $05                                  ; $5FFC: $36 $05
    db $E4                                        ; $5FFE: $E4
    ld [hl], c                                    ; $5FFF: $71
    ld [hl], $05                                  ; $6000: $36 $05
    db $E4                                        ; $6002: $E4
    ld h, d                                       ; $6003: $62
    inc h                                         ; $6004: $24
    add hl, bc                                    ; $6005: $09
    db $E4                                        ; $6006: $E4
    ld [hl], c                                    ; $6007: $71
    ld [hl], $09                                  ; $6008: $36 $09
    db $E4                                        ; $600A: $E4
    ld h, d                                       ; $600B: $62
    inc h                                         ; $600C: $24
    add hl, bc                                    ; $600D: $09
    db $E4                                        ; $600E: $E4
    ld h, d                                       ; $600F: $62
    inc h                                         ; $6010: $24
    ld a, [bc]                                    ; $6011: $0A
    db $E4                                        ; $6012: $E4
    ld [hl], c                                    ; $6013: $71
    ld [hl], $09                                  ; $6014: $36 $09
    db $E4                                        ; $6016: $E4
    ld [hl], d                                    ; $6017: $72
    ld [hl-], a                                   ; $6018: $32
    dec b                                         ; $6019: $05
    db $E4                                        ; $601A: $E4
    ld [hl], d                                    ; $601B: $72
    ld [hl-], a                                   ; $601C: $32
    dec b                                         ; $601D: $05
    db $E4                                        ; $601E: $E4
    ld [hl], d                                    ; $601F: $72
    ld [hl-], a                                   ; $6020: $32
    add hl, bc                                    ; $6021: $09
    rst RST_20                                    ; $6022: $E7
    nop                                           ; $6023: $00
    ld b, $E2                                     ; $6024: $06 $E2
    ld e, a                                       ; $6026: $5F
    db $ED                                        ; $6027: $ED
    db $E4                                        ; $6028: $E4
    ld d, e                                       ; $6029: $53
    ld de, $E413                                  ; $602A: $11 $13 $E4
    ld d, e                                       ; $602D: $53
    ld de, $E413                                  ; $602E: $11 $13 $E4
    ld d, e                                       ; $6031: $53
    ld de, $E409                                  ; $6032: $11 $09 $E4
    ld [hl], c                                    ; $6035: $71
    ld [hl], $09                                  ; $6036: $36 $09
    rst RST_20                                    ; $6038: $E7
    nop                                           ; $6039: $00
    ld b, $28                                     ; $603A: $06 $28
    ld h, b                                       ; $603C: $60
    db $ED                                        ; $603D: $ED
    db $E4                                        ; $603E: $E4
    ld [hl], c                                    ; $603F: $71
    ld [hl], $09                                  ; $6040: $36 $09
    db $E4                                        ; $6042: $E4
    ld h, d                                       ; $6043: $62
    inc h                                         ; $6044: $24
    add hl, bc                                    ; $6045: $09
    db $E4                                        ; $6046: $E4
    ld h, d                                       ; $6047: $62
    inc h                                         ; $6048: $24
    ld a, [bc]                                    ; $6049: $0A
    db $E4                                        ; $604A: $E4
    ld [hl], c                                    ; $604B: $71
    ld [hl], $1C                                  ; $604C: $36 $1C
    db $E4                                        ; $604E: $E4
    ld [hl], c                                    ; $604F: $71
    ld [hl], $1C                                  ; $6050: $36 $1C
    db $E4                                        ; $6052: $E4
    ld [hl], c                                    ; $6053: $71
    ld [hl], $09                                  ; $6054: $36 $09
    db $E4                                        ; $6056: $E4
    ld [hl], c                                    ; $6057: $71
    ld [hl], $05                                  ; $6058: $36 $05
    db $E4                                        ; $605A: $E4
    ld [hl], c                                    ; $605B: $71
    ld [hl], $05                                  ; $605C: $36 $05
    db $E4                                        ; $605E: $E4
    ld h, d                                       ; $605F: $62
    inc h                                         ; $6060: $24
    add hl, bc                                    ; $6061: $09
    db $E4                                        ; $6062: $E4
    ld [hl], c                                    ; $6063: $71
    ld [hl], $09                                  ; $6064: $36 $09
    db $E4                                        ; $6066: $E4
    ld h, d                                       ; $6067: $62
    inc h                                         ; $6068: $24
    add hl, bc                                    ; $6069: $09
    db $E4                                        ; $606A: $E4
    ld h, d                                       ; $606B: $62
    inc h                                         ; $606C: $24
    ld a, [bc]                                    ; $606D: $0A
    db $E4                                        ; $606E: $E4
    ld [hl], c                                    ; $606F: $71
    ld [hl], $09                                  ; $6070: $36 $09
    db $E4                                        ; $6072: $E4
    ld [hl], d                                    ; $6073: $72
    ld [hl-], a                                   ; $6074: $32
    dec b                                         ; $6075: $05
    db $E4                                        ; $6076: $E4
    ld [hl], d                                    ; $6077: $72
    ld [hl-], a                                   ; $6078: $32
    dec b                                         ; $6079: $05
    db $E4                                        ; $607A: $E4
    ld [hl], d                                    ; $607B: $72
    ld [hl-], a                                   ; $607C: $32
    add hl, bc                                    ; $607D: $09
    rst RST_20                                    ; $607E: $E7
    nop                                           ; $607F: $00
    ld [bc], a                                    ; $6080: $02
    ld a, $60                                     ; $6081: $3E $60
    db $ED                                        ; $6083: $ED
    db $E4                                        ; $6084: $E4
    ld d, e                                       ; $6085: $53
    ld de, $E42A                                  ; $6086: $11 $2A $E4
    ld d, e                                       ; $6089: $53
    ld de, $E42A                                  ; $608A: $11 $2A $E4
    ld d, e                                       ; $608D: $53
    ld de, $E42A                                  ; $608E: $11 $2A $E4
    ld d, e                                       ; $6091: $53
    ld de, $E42A                                  ; $6092: $11 $2A $E4
    ld d, e                                       ; $6095: $53
    ld de, $E470                                  ; $6096: $11 $70 $E4
    ld h, d                                       ; $6099: $62
    inc h                                         ; $609A: $24
    dec b                                         ; $609B: $05
    db $E4                                        ; $609C: $E4
    ld h, d                                       ; $609D: $62
    inc h                                         ; $609E: $24
    dec b                                         ; $609F: $05
    db $E4                                        ; $60A0: $E4
    ld h, d                                       ; $60A1: $62
    inc h                                         ; $60A2: $24
    inc b                                         ; $60A3: $04
    db $E4                                        ; $60A4: $E4
    ld [hl], c                                    ; $60A5: $71
    ld [hl], $05                                  ; $60A6: $36 $05
    db $E4                                        ; $60A8: $E4
    ld [hl], c                                    ; $60A9: $71
    ld [hl], $05                                  ; $60AA: $36 $05
    db $E4                                        ; $60AC: $E4
    ld [hl], c                                    ; $60AD: $71
    ld [hl], $04                                  ; $60AE: $36 $04
    db $E4                                        ; $60B0: $E4
    ld h, d                                       ; $60B1: $62
    inc h                                         ; $60B2: $24
    add hl, bc                                    ; $60B3: $09
    db $E4                                        ; $60B4: $E4
    ld h, d                                       ; $60B5: $62
    inc h                                         ; $60B6: $24
    add hl, bc                                    ; $60B7: $09
    db $E4                                        ; $60B8: $E4
    ld h, d                                       ; $60B9: $62
    inc h                                         ; $60BA: $24
    ld a, [bc]                                    ; $60BB: $0A
    rst RST_20                                    ; $60BC: $E7
    nop                                           ; $60BD: $00
    ld [bc], a                                    ; $60BE: $02
    add h                                         ; $60BF: $84
    ld h, b                                       ; $60C0: $60
    db $ED                                        ; $60C1: $ED
    db $E4                                        ; $60C2: $E4
    ld [hl], c                                    ; $60C3: $71
    ld [hl], $1C                                  ; $60C4: $36 $1C
    db $E4                                        ; $60C6: $E4
    ld [hl], c                                    ; $60C7: $71
    ld [hl], $1C                                  ; $60C8: $36 $1C
    db $E4                                        ; $60CA: $E4
    ld [hl], c                                    ; $60CB: $71
    ld [hl], $1C                                  ; $60CC: $36 $1C
    db $E4                                        ; $60CE: $E4
    ld [hl], c                                    ; $60CF: $71
    ld [hl], $09                                  ; $60D0: $36 $09
    db $E4                                        ; $60D2: $E4
    ld [hl], c                                    ; $60D3: $71
    ld [hl], $05                                  ; $60D4: $36 $05
    db $E4                                        ; $60D6: $E4
    ld [hl], c                                    ; $60D7: $71
    ld [hl], $05                                  ; $60D8: $36 $05
    db $E4                                        ; $60DA: $E4
    ld h, d                                       ; $60DB: $62
    inc h                                         ; $60DC: $24
    add hl, bc                                    ; $60DD: $09
    db $E4                                        ; $60DE: $E4
    ld [hl], c                                    ; $60DF: $71
    ld [hl], $1C                                  ; $60E0: $36 $1C
    db $E4                                        ; $60E2: $E4
    ld [hl], c                                    ; $60E3: $71
    ld [hl], $09                                  ; $60E4: $36 $09
    db $E4                                        ; $60E6: $E4
    ld [hl], c                                    ; $60E7: $71
    ld [hl], $05                                  ; $60E8: $36 $05
    db $E4                                        ; $60EA: $E4
    ld [hl], c                                    ; $60EB: $71
    ld [hl], $05                                  ; $60EC: $36 $05
    db $E4                                        ; $60EE: $E4
    ld h, d                                       ; $60EF: $62
    inc h                                         ; $60F0: $24
    add hl, bc                                    ; $60F1: $09

jr_02F_60F2:
    db $E4                                        ; $60F2: $E4
    ld [hl], c                                    ; $60F3: $71
    ld [hl], $1C                                  ; $60F4: $36 $1C
    db $E4                                        ; $60F6: $E4
    ld [hl], c                                    ; $60F7: $71
    ld [hl], $1C                                  ; $60F8: $36 $1C
    db $E4                                        ; $60FA: $E4
    ld [hl], c                                    ; $60FB: $71
    ld [hl], $1C                                  ; $60FC: $36 $1C
    db $E4                                        ; $60FE: $E4
    ld [hl], c                                    ; $60FF: $71
    ld [hl], $09                                  ; $6100: $36 $09
    db $E4                                        ; $6102: $E4
    ld [hl], c                                    ; $6103: $71
    ld [hl], $05                                  ; $6104: $36 $05
    db $E4                                        ; $6106: $E4
    ld [hl], c                                    ; $6107: $71
    ld [hl], $05                                  ; $6108: $36 $05
    db $E4                                        ; $610A: $E4
    ld h, d                                       ; $610B: $62
    inc h                                         ; $610C: $24
    add hl, bc                                    ; $610D: $09
    db $E4                                        ; $610E: $E4
    ld [hl], c                                    ; $610F: $71
    ld [hl], $09                                  ; $6110: $36 $09
    db $E4                                        ; $6112: $E4
    ld [hl], c                                    ; $6113: $71
    ld [hl], $05                                  ; $6114: $36 $05
    db $E4                                        ; $6116: $E4
    ld [hl], c                                    ; $6117: $71
    ld [hl], $05                                  ; $6118: $36 $05
    db $E4                                        ; $611A: $E4
    ld [hl], c                                    ; $611B: $71
    ld [hl], $09                                  ; $611C: $36 $09
    db $E4                                        ; $611E: $E4
    ld h, d                                       ; $611F: $62
    inc h                                         ; $6120: $24
    add hl, bc                                    ; $6121: $09
    db $E4                                        ; $6122: $E4
    ld [hl], c                                    ; $6123: $71
    ld [hl], $09                                  ; $6124: $36 $09
    db $E4                                        ; $6126: $E4
    ld h, d                                       ; $6127: $62
    inc h                                         ; $6128: $24
    ld a, [bc]                                    ; $6129: $0A
    rst RST_20                                    ; $612A: $E7
    nop                                           ; $612B: $00
    ld [bc], a                                    ; $612C: $02
    jp nz, $ED60                                  ; $612D: $C2 $60 $ED

    inc b                                         ; $6130: $04
    add b                                         ; $6131: $80
    inc de                                        ; $6132: $13
    ld c, c                                       ; $6133: $49
    ld h, c                                       ; $6134: $61
    inc c                                         ; $6135: $0C
    add c                                         ; $6136: $81
    add b                                         ; $6137: $80
    jr jr_02F_60F2                                ; $6138: $18 $B8

    ld h, c                                       ; $613A: $61
    inc c                                         ; $613B: $0C
    add c                                         ; $613C: $81
    add b                                         ; $613D: $80
    dec e                                         ; $613E: $1D
    ld l, a                                       ; $613F: $6F
    ld h, d                                       ; $6140: $62
    inc c                                         ; $6141: $0C
    add c                                         ; $6142: $81
    add b                                         ; $6143: $80
    ld [hl+], a                                   ; $6144: $22
    reti                                          ; $6145: $D9


    ld h, d                                       ; $6146: $62
    nop                                           ; $6147: $00
    add c                                         ; $6148: $81
    db $E4                                        ; $6149: $E4
    ld a, b                                       ; $614A: $78
    jp hl                                         ; $614B: $E9


    ld de, $80EE                                  ; $614C: $11 $EE $80
    db $EC                                        ; $614F: $EC
    ld l, e                                       ; $6150: $6B
    ld h, c                                       ; $6151: $61
    db $EC                                        ; $6152: $EC
    sub d                                         ; $6153: $92
    ld h, c                                       ; $6154: $61
    adc a                                         ; $6155: $8F
    sbc c                                         ; $6156: $99
    sub d                                         ; $6157: $92
    adc a                                         ; $6158: $8F
    sub a                                         ; $6159: $97
    sub d                                         ; $615A: $92
    sub a                                         ; $615B: $97
    sbc e                                         ; $615C: $9B
    db $EC                                        ; $615D: $EC
    sub d                                         ; $615E: $92
    ld h, c                                       ; $615F: $61
    sbc e                                         ; $6160: $9B
    sbc [hl]                                      ; $6161: $9E
    sbc e                                         ; $6162: $9B
    sub a                                         ; $6163: $97
    sbc e                                         ; $6164: $9B
    sbc [hl]                                      ; $6165: $9E
    and e                                         ; $6166: $A3
    sbc [hl]                                      ; $6167: $9E
    push hl                                       ; $6168: $E5
    ld c, c                                       ; $6169: $49
    ld h, c                                       ; $616A: $61
    sbc l                                         ; $616B: $9D
    ld b, $9D                                     ; $616C: $06 $9D
    sbc b                                         ; $616E: $98
    sbc e                                         ; $616F: $9B
    sbc e                                         ; $6170: $9B
    sub [hl]                                      ; $6171: $96
    sbc b                                         ; $6172: $98
    sbc b                                         ; $6173: $98
    sub h                                         ; $6174: $94
    sub [hl]                                      ; $6175: $96
    sub [hl]                                      ; $6176: $96
    sub c                                         ; $6177: $91
    sub h                                         ; $6178: $94
    sub e                                         ; $6179: $93
    sub c                                         ; $617A: $91
    adc a                                         ; $617B: $8F
    sub d                                         ; $617C: $92
    sub c                                         ; $617D: $91
    adc h                                         ; $617E: $8C
    sub c                                         ; $617F: $91
    adc a                                         ; $6180: $8F
    adc h                                         ; $6181: $8C
    adc a                                         ; $6182: $8F
    adc h                                         ; $6183: $8C
    adc d                                         ; $6184: $8A
    adc h                                         ; $6185: $8C
    adc d                                         ; $6186: $8A
    adc b                                         ; $6187: $88
    adc d                                         ; $6188: $8A
    adc e                                         ; $6189: $8B
    adc h                                         ; $618A: $8C
    adc a                                         ; $618B: $8F
    rst RST_20                                    ; $618C: $E7
    nop                                           ; $618D: $00
    inc b                                         ; $618E: $04
    ld l, e                                       ; $618F: $6B
    ld h, c                                       ; $6190: $61
    db $ED                                        ; $6191: $ED
    sub a                                         ; $6192: $97
    sub d                                         ; $6193: $92
    adc a                                         ; $6194: $8F
    sub a                                         ; $6195: $97
    sub d                                         ; $6196: $92
    adc a                                         ; $6197: $8F
    sbc c                                         ; $6198: $99
    sub d                                         ; $6199: $92
    adc a                                         ; $619A: $8F
    sub a                                         ; $619B: $97
    sub d                                         ; $619C: $92
    adc a                                         ; $619D: $8F
    sub [hl]                                      ; $619E: $96
    sub d                                         ; $619F: $92
    adc a                                         ; $61A0: $8F
    sub a                                         ; $61A1: $97
    sub d                                         ; $61A2: $92
    adc a                                         ; $61A3: $8F
    sbc c                                         ; $61A4: $99
    sub d                                         ; $61A5: $92
    adc a                                         ; $61A6: $8F
    sub a                                         ; $61A7: $97
    sub d                                         ; $61A8: $92
    adc a                                         ; $61A9: $8F
    rst RST_20                                    ; $61AA: $E7
    nop                                           ; $61AB: $00
    ld [bc], a                                    ; $61AC: $02
    sub d                                         ; $61AD: $92
    ld h, c                                       ; $61AE: $61
    sub a                                         ; $61AF: $97
    sub d                                         ; $61B0: $92
    adc a                                         ; $61B1: $8F
    sbc c                                         ; $61B2: $99
    sub d                                         ; $61B3: $92
    adc a                                         ; $61B4: $8F
    sbc e                                         ; $61B5: $9B
    sub d                                         ; $61B6: $92
    db $ED                                        ; $61B7: $ED
    db $E4                                        ; $61B8: $E4
    ld h, [hl]                                    ; $61B9: $66
    jp hl                                         ; $61BA: $E9


    ld [hl+], a                                   ; $61BB: $22
    xor $80                                       ; $61BC: $EE $80
    db $EC                                        ; $61BE: $EC
    dec bc                                        ; $61BF: $0B
    ld h, d                                       ; $61C0: $62
    add b                                         ; $61C1: $80
    ld b, $E4                                     ; $61C2: $06 $E4
    ld b, a                                       ; $61C4: $47
    db $EC                                        ; $61C5: $EC
    ld b, d                                       ; $61C6: $42
    ld h, d                                       ; $61C7: $62
    adc b                                         ; $61C8: $88
    adc a                                         ; $61C9: $8F
    sub h                                         ; $61CA: $94
    and e                                         ; $61CB: $A3
    sbc [hl]                                      ; $61CC: $9E
    sbc e                                         ; $61CD: $9B
    adc e                                         ; $61CE: $8B
    adc a                                         ; $61CF: $8F
    sub h                                         ; $61D0: $94
    sbc [hl]                                      ; $61D1: $9E
    sbc e                                         ; $61D2: $9B
    sub a                                         ; $61D3: $97
    adc a                                         ; $61D4: $8F
    sub h                                         ; $61D5: $94
    sub a                                         ; $61D6: $97
    sbc e                                         ; $61D7: $9B
    add h                                         ; $61D8: $84
    adc e                                         ; $61D9: $8B
    sub b                                         ; $61DA: $90
    and b                                         ; $61DB: $A0
    sbc e                                         ; $61DC: $9B
    sub a                                         ; $61DD: $97
    adc b                                         ; $61DE: $88
    adc e                                         ; $61DF: $8B
    sub b                                         ; $61E0: $90
    sbc e                                         ; $61E1: $9B
    sub a                                         ; $61E2: $97
    sub h                                         ; $61E3: $94
    adc e                                         ; $61E4: $8B
    sub b                                         ; $61E5: $90
    sub h                                         ; $61E6: $94
    sub a                                         ; $61E7: $97
    add [hl]                                      ; $61E8: $86
    adc l                                         ; $61E9: $8D
    add [hl]                                      ; $61EA: $86
    sbc h                                         ; $61EB: $9C
    sbc c                                         ; $61EC: $99
    sub [hl]                                      ; $61ED: $96
    add [hl]                                      ; $61EE: $86
    adc l                                         ; $61EF: $8D
    sub d                                         ; $61F0: $92
    sbc c                                         ; $61F1: $99
    sub [hl]                                      ; $61F2: $96
    sub d                                         ; $61F3: $92
    adc l                                         ; $61F4: $8D
    sub d                                         ; $61F5: $92
    sub [hl]                                      ; $61F6: $96
    sbc c                                         ; $61F7: $99
    adc b                                         ; $61F8: $88
    adc a                                         ; $61F9: $8F
    sub h                                         ; $61FA: $94
    adc e                                         ; $61FB: $8B
    sub h                                         ; $61FC: $94
    sub a                                         ; $61FD: $97
    adc a                                         ; $61FE: $8F
    sub h                                         ; $61FF: $94
    sbc e                                         ; $6200: $9B
    sub h                                         ; $6201: $94
    sbc e                                         ; $6202: $9B
    and b                                         ; $6203: $A0
    sub a                                         ; $6204: $97
    sbc e                                         ; $6205: $9B
    sbc [hl]                                      ; $6206: $9E
    and e                                         ; $6207: $A3
    push hl                                       ; $6208: $E5
    cp b                                          ; $6209: $B8
    ld h, c                                       ; $620A: $61
    sbc b                                         ; $620B: $98
    ld b, $94                                     ; $620C: $06 $94
    sub c                                         ; $620E: $91
    sub [hl]                                      ; $620F: $96
    sub e                                         ; $6210: $93
    adc a                                         ; $6211: $8F
    sub h                                         ; $6212: $94
    sub c                                         ; $6213: $91
    adc l                                         ; $6214: $8D
    sub e                                         ; $6215: $93
    adc a                                         ; $6216: $8F
    adc h                                         ; $6217: $8C
    sub c                                         ; $6218: $91
    adc l                                         ; $6219: $8D
    adc d                                         ; $621A: $8A
    adc a                                         ; $621B: $8F
    rst RST_20                                    ; $621C: $E7
    nop                                           ; $621D: $00
    ld b, $0B                                     ; $621E: $06 $0B
    ld h, d                                       ; $6220: $62
    sbc b                                         ; $6221: $98
    sub h                                         ; $6222: $94
    sub c                                         ; $6223: $91
    sub [hl]                                      ; $6224: $96
    add [hl]                                      ; $6225: $86
    adc d                                         ; $6226: $8A
    adc l                                         ; $6227: $8D
    sub d                                         ; $6228: $92
    adc d                                         ; $6229: $8A
    adc l                                         ; $622A: $8D
    sub d                                         ; $622B: $92
    sub [hl]                                      ; $622C: $96
    adc l                                         ; $622D: $8D
    sub d                                         ; $622E: $92
    sub [hl]                                      ; $622F: $96
    sbc c                                         ; $6230: $99
    sub d                                         ; $6231: $92
    sub [hl]                                      ; $6232: $96
    sbc c                                         ; $6233: $99
    sbc [hl]                                      ; $6234: $9E
    sub [hl]                                      ; $6235: $96
    sbc c                                         ; $6236: $99
    sbc [hl]                                      ; $6237: $9E
    and d                                         ; $6238: $A2
    sbc c                                         ; $6239: $99
    sbc [hl]                                      ; $623A: $9E
    and l                                         ; $623B: $A5
    and d                                         ; $623C: $A2
    sub [hl]                                      ; $623D: $96
    sbc c                                         ; $623E: $99
    sbc [hl]                                      ; $623F: $9E
    and d                                         ; $6240: $A2
    db $ED                                        ; $6241: $ED
    sub a                                         ; $6242: $97
    sub d                                         ; $6243: $92
    adc a                                         ; $6244: $8F
    sub a                                         ; $6245: $97
    sub d                                         ; $6246: $92
    adc a                                         ; $6247: $8F
    sbc c                                         ; $6248: $99
    sub d                                         ; $6249: $92
    adc a                                         ; $624A: $8F
    sub a                                         ; $624B: $97
    sub d                                         ; $624C: $92
    adc a                                         ; $624D: $8F
    sub [hl]                                      ; $624E: $96
    sub d                                         ; $624F: $92
    adc a                                         ; $6250: $8F
    sub a                                         ; $6251: $97
    sub d                                         ; $6252: $92
    adc a                                         ; $6253: $8F
    sbc c                                         ; $6254: $99
    sub d                                         ; $6255: $92
    adc a                                         ; $6256: $8F
    sub a                                         ; $6257: $97
    sub d                                         ; $6258: $92
    adc a                                         ; $6259: $8F
    rst RST_20                                    ; $625A: $E7
    nop                                           ; $625B: $00
    ld [bc], a                                    ; $625C: $02
    ld b, d                                       ; $625D: $42
    ld h, d                                       ; $625E: $62
    sub a                                         ; $625F: $97

jr_02F_6260:
    sub d                                         ; $6260: $92
    adc a                                         ; $6261: $8F
    sbc c                                         ; $6262: $99
    sub d                                         ; $6263: $92
    adc a                                         ; $6264: $8F
    sbc e                                         ; $6265: $9B
    sub d                                         ; $6266: $92
    adc a                                         ; $6267: $8F
    sbc c                                         ; $6268: $99
    sub d                                         ; $6269: $92
    sbc e                                         ; $626A: $9B
    sub a                                         ; $626B: $97
    sbc e                                         ; $626C: $9B
    sbc [hl]                                      ; $626D: $9E
    db $ED                                        ; $626E: $ED
    db $E4                                        ; $626F: $E4
    ld b, b                                       ; $6270: $40
    jp hl                                         ; $6271: $E9


    ld b, h                                       ; $6272: $44

jr_02F_6273:
    di                                            ; $6273: $F3
    inc b                                         ; $6274: $04
    push af                                       ; $6275: $F5

jr_02F_6276:
    rrca                                          ; $6276: $0F
    db $EC                                        ; $6277: $EC
    xor l                                         ; $6278: $AD
    ld h, d                                       ; $6279: $62
    and $FC                                       ; $627A: $E6 $FC
    db $EC                                        ; $627C: $EC
    xor l                                         ; $627D: $AD
    ld h, d                                       ; $627E: $62
    and $04                                       ; $627F: $E6 $04
    db $EC                                        ; $6281: $EC
    xor l                                         ; $6282: $AD
    ld h, d                                       ; $6283: $62

jr_02F_6284:
    db $EC                                        ; $6284: $EC
    or l                                          ; $6285: $B5
    ld h, d                                       ; $6286: $62
    db $EC                                        ; $6287: $EC
    pop bc                                        ; $6288: $C1
    ld h, d                                       ; $6289: $62
    db $E4                                        ; $628A: $E4
    ld b, b                                       ; $628B: $40
    sub b                                         ; $628C: $90
    jr nc, jr_02F_6273                            ; $628D: $30 $E4

    ld b, b                                       ; $628F: $40
    jr jr_02F_6276                                ; $6290: $18 $E4

    ld b, b                                       ; $6292: $40
    sbc [hl]                                      ; $6293: $9E
    ld b, $9B                                     ; $6294: $06 $9B
    sbc [hl]                                      ; $6296: $9E
    and e                                         ; $6297: $A3
    db $EC                                        ; $6298: $EC
    pop bc                                        ; $6299: $C1
    ld h, d                                       ; $629A: $62
    db $E4                                        ; $629B: $E4
    ld b, b                                       ; $629C: $40
    sub h                                         ; $629D: $94
    jr nc, jr_02F_6284                            ; $629E: $30 $E4

    ld b, b                                       ; $62A0: $40
    sub h                                         ; $62A1: $94
    ld b, $92                                     ; $62A2: $06 $92
    adc a                                         ; $62A4: $8F
    adc a                                         ; $62A5: $8F
    adc a                                         ; $62A6: $8F
    adc e                                         ; $62A7: $8B
    adc d                                         ; $62A8: $8A
    adc b                                         ; $62A9: $88
    push hl                                       ; $62AA: $E5
    ld l, a                                       ; $62AB: $6F

jr_02F_62AC:
    ld h, d                                       ; $62AC: $62
    add l                                         ; $62AD: $85
    ld b, $E7                                     ; $62AE: $06 $E7
    nop                                           ; $62B0: $00
    jr nz, jr_02F_6260                            ; $62B1: $20 $AD

jr_02F_62B3:
    ld h, d                                       ; $62B3: $62
    db $ED                                        ; $62B4: $ED
    add e                                         ; $62B5: $83
    ld b, $83                                     ; $62B6: $06 $83
    add e                                         ; $62B8: $83
    add e                                         ; $62B9: $83

jr_02F_62BA:
    add [hl]                                      ; $62BA: $86
    rst RST_20                                    ; $62BB: $E7
    nop                                           ; $62BC: $00
    inc e                                         ; $62BD: $1C
    cp d                                          ; $62BE: $BA
    ld h, d                                       ; $62BF: $62
    db $ED                                        ; $62C0: $ED
    push af                                       ; $62C1: $F5
    nop                                           ; $62C2: $00
    db $E4                                        ; $62C3: $E4
    ld b, b                                       ; $62C4: $40
    adc b                                         ; $62C5: $88
    jr nc, jr_02F_62AC                            ; $62C6: $30 $E4

    ld h, b                                       ; $62C8: $60
    adc b                                         ; $62C9: $88
    db $E4                                        ; $62CA: $E4
    ld b, b                                       ; $62CB: $40
    sub b                                         ; $62CC: $90
    jr nc, jr_02F_62B3                            ; $62CD: $30 $E4

    ld h, b                                       ; $62CF: $60
    sub b                                         ; $62D0: $90
    db $E4                                        ; $62D1: $E4
    ld b, b                                       ; $62D2: $40
    sub d                                         ; $62D3: $92
    jr nc, jr_02F_62BA                            ; $62D4: $30 $E4

    ld h, b                                       ; $62D6: $60
    sub d                                         ; $62D7: $92
    db $ED                                        ; $62D8: $ED
    jp hl                                         ; $62D9: $E9


    adc b                                         ; $62DA: $88
    db $EC                                        ; $62DB: $EC
    dec [hl]                                      ; $62DC: $35
    ld h, e                                       ; $62DD: $63
    db $E4                                        ; $62DE: $E4
    ld [hl], c                                    ; $62DF: $71
    ld [hl], $0C                                  ; $62E0: $36 $0C
    db $E4                                        ; $62E2: $E4
    ld [hl], d                                    ; $62E3: $72
    ld [hl-], a                                   ; $62E4: $32
    ld b, $E4                                     ; $62E5: $06 $E4

jr_02F_62E7:
    ld [hl], d                                    ; $62E7: $72
    db $10                                        ; $62E8: $10
    ld b, $E4                                     ; $62E9: $06 $E4
    ld h, d                                       ; $62EB: $62
    inc h                                         ; $62EC: $24
    inc c                                         ; $62ED: $0C
    db $E4                                        ; $62EE: $E4
    ld [hl], d                                    ; $62EF: $72
    ld [hl-], a                                   ; $62F0: $32
    ld b, $E4                                     ; $62F1: $06 $E4
    ld [hl], d                                    ; $62F3: $72
    db $10                                        ; $62F4: $10
    ld b, $E4                                     ; $62F5: $06 $E4
    ld [hl], c                                    ; $62F7: $71
    ld [hl], $0C                                  ; $62F8: $36 $0C
    db $E4                                        ; $62FA: $E4
    ld [hl], c                                    ; $62FB: $71
    ld [hl], $0C                                  ; $62FC: $36 $0C
    db $E4                                        ; $62FE: $E4
    ld h, d                                       ; $62FF: $62
    inc h                                         ; $6300: $24
    jr jr_02F_62E7                                ; $6301: $18 $E4

    ld [hl], c                                    ; $6303: $71
    ld [hl], $0C                                  ; $6304: $36 $0C
    db $E4                                        ; $6306: $E4
    ld b, c                                       ; $6307: $41
    ld hl, $EC0C                                  ; $6308: $21 $0C $EC
    ld [hl], e                                    ; $630B: $73
    ld h, e                                       ; $630C: $63
    db $EC                                        ; $630D: $EC
    ld a, l                                       ; $630E: $7D
    ld h, e                                       ; $630F: $63
    db $E4                                        ; $6310: $E4
    ld h, d                                       ; $6311: $62
    inc h                                         ; $6312: $24
    inc c                                         ; $6313: $0C
    db $E4                                        ; $6314: $E4
    ld [hl], d                                    ; $6315: $72
    ld [hl-], a                                   ; $6316: $32
    ld b, $E4                                     ; $6317: $06 $E4
    ld [hl], d                                    ; $6319: $72
    db $10                                        ; $631A: $10
    ld b, $E4                                     ; $631B: $06 $E4
    ld h, d                                       ; $631D: $62
    inc h                                         ; $631E: $24
    ld b, $E4                                     ; $631F: $06 $E4
    ld [hl], d                                    ; $6321: $72
    ld [hl-], a                                   ; $6322: $32
    ld b, $E4                                     ; $6323: $06 $E4
    ld [hl], d                                    ; $6325: $72
    db $10                                        ; $6326: $10
    ld b, $E4                                     ; $6327: $06 $E4
    ld [hl], c                                    ; $6329: $71
    ld [hl], $06                                  ; $632A: $36 $06
    db $EC                                        ; $632C: $EC
    adc a                                         ; $632D: $8F
    ld h, e                                       ; $632E: $63
    db $EC                                        ; $632F: $EC
    ret                                           ; $6330: $C9


    ld h, e                                       ; $6331: $63

jr_02F_6332:
    push hl                                       ; $6332: $E5
    reti                                          ; $6333: $D9


    ld h, d                                       ; $6334: $62
    db $E4                                        ; $6335: $E4
    ld [hl], c                                    ; $6336: $71
    ld [hl], $12                                  ; $6337: $36 $12
    db $E4                                        ; $6339: $E4
    ld [hl], c                                    ; $633A: $71
    ld [hl], $06                                  ; $633B: $36 $06
    db $E4                                        ; $633D: $E4
    ld h, d                                       ; $633E: $62
    inc h                                         ; $633F: $24
    inc c                                         ; $6340: $0C
    db $E4                                        ; $6341: $E4
    ld [hl], c                                    ; $6342: $71
    ld [hl], $18                                  ; $6343: $36 $18
    db $E4                                        ; $6345: $E4
    ld [hl], c                                    ; $6346: $71
    ld [hl], $0C                                  ; $6347: $36 $0C
    db $E4                                        ; $6349: $E4
    ld h, d                                       ; $634A: $62
    inc h                                         ; $634B: $24
    jr jr_02F_6332                                ; $634C: $18 $E4

    ld [hl], c                                    ; $634E: $71
    ld [hl], $12                                  ; $634F: $36 $12
    db $E4                                        ; $6351: $E4
    ld [hl], c                                    ; $6352: $71
    ld [hl], $06                                  ; $6353: $36 $06
    db $E4                                        ; $6355: $E4
    ld h, d                                       ; $6356: $62
    inc h                                         ; $6357: $24
    inc c                                         ; $6358: $0C
    db $E4                                        ; $6359: $E4
    ld [hl], c                                    ; $635A: $71
    ld [hl], $18                                  ; $635B: $36 $18
    db $E4                                        ; $635D: $E4
    ld [hl], c                                    ; $635E: $71
    ld [hl], $06                                  ; $635F: $36 $06
    db $E4                                        ; $6361: $E4
    ld [hl], c                                    ; $6362: $71
    ld [hl], $06                                  ; $6363: $36 $06
    db $E4                                        ; $6365: $E4
    ld h, d                                       ; $6366: $62
    inc h                                         ; $6367: $24
    inc c                                         ; $6368: $0C
    db $E4                                        ; $6369: $E4
    ld d, e                                       ; $636A: $53
    ld de, $E70C                                  ; $636B: $11 $0C $E7
    nop                                           ; $636E: $00
    inc bc                                        ; $636F: $03
    dec [hl]                                      ; $6370: $35
    ld h, e                                       ; $6371: $63
    db $ED                                        ; $6372: $ED
    db $E4                                        ; $6373: $E4
    ld h, d                                       ; $6374: $62
    inc h                                         ; $6375: $24
    ld b, $E7                                     ; $6376: $06 $E7
    nop                                           ; $6378: $00
    inc c                                         ; $6379: $0C
    ld [hl], e                                    ; $637A: $73
    ld h, e                                       ; $637B: $63
    db $ED                                        ; $637C: $ED
    db $E4                                        ; $637D: $E4
    ld b, c                                       ; $637E: $41
    ld hl, $E406                                  ; $637F: $21 $06 $E4
    ld b, c                                       ; $6382: $41
    ld hl, $E406                                  ; $6383: $21 $06 $E4
    ld d, e                                       ; $6386: $53
    ld de, $E70C                                  ; $6387: $11 $0C $E7
    nop                                           ; $638A: $00
    ld c, $7D                                     ; $638B: $0E $7D
    ld h, e                                       ; $638D: $63
    db $ED                                        ; $638E: $ED
    db $E4                                        ; $638F: $E4
    ld [hl], c                                    ; $6390: $71
    ld [hl], $06                                  ; $6391: $36 $06
    db $E4                                        ; $6393: $E4
    ld b, c                                       ; $6394: $41
    ld hl, $E406                                  ; $6395: $21 $06 $E4
    ld d, e                                       ; $6398: $53
    ld de, $E40C                                  ; $6399: $11 $0C $E4
    ld [hl], c                                    ; $639C: $71
    ld [hl], $06                                  ; $639D: $36 $06
    db $E4                                        ; $639F: $E4
    ld b, c                                       ; $63A0: $41
    ld hl, $E406                                  ; $63A1: $21 $06 $E4
    ld d, e                                       ; $63A4: $53
    ld de, $E40C                                  ; $63A5: $11 $0C $E4
    ld [hl], c                                    ; $63A8: $71
    ld [hl], $06                                  ; $63A9: $36 $06
    db $E4                                        ; $63AB: $E4
    ld b, c                                       ; $63AC: $41
    ld hl, $E406                                  ; $63AD: $21 $06 $E4
    ld d, e                                       ; $63B0: $53
    ld de, $E406                                  ; $63B1: $11 $06 $E4
    ld h, d                                       ; $63B4: $62
    inc h                                         ; $63B5: $24
    ld b, $E4                                     ; $63B6: $06 $E4
    ld h, d                                       ; $63B8: $62
    inc h                                         ; $63B9: $24
    ld b, $E4                                     ; $63BA: $06 $E4
    ld b, c                                       ; $63BC: $41
    ld hl, $E406                                  ; $63BD: $21 $06 $E4
    ld d, e                                       ; $63C0: $53
    ld de, $E70C                                  ; $63C1: $11 $0C $E7
    nop                                           ; $63C4: $00
    inc bc                                        ; $63C5: $03
    adc a                                         ; $63C6: $8F
    ld h, e                                       ; $63C7: $63
    db $ED                                        ; $63C8: $ED
    db $E4                                        ; $63C9: $E4
    ld h, d                                       ; $63CA: $62
    inc h                                         ; $63CB: $24
    ld b, $E4                                     ; $63CC: $06 $E4
    ld h, d                                       ; $63CE: $62
    inc h                                         ; $63CF: $24
    ld b, $E4                                     ; $63D0: $06 $E4
    ld [hl], c                                    ; $63D2: $71
    ld [hl], $06                                  ; $63D3: $36 $06
    db $E4                                        ; $63D5: $E4
    ld [hl], c                                    ; $63D6: $71
    ld [hl], $06                                  ; $63D7: $36 $06
    rst RST_20                                    ; $63D9: $E7
    nop                                           ; $63DA: $00
    ld [bc], a                                    ; $63DB: $02
    ret                                           ; $63DC: $C9


    ld h, e                                       ; $63DD: $63
    db $E4                                        ; $63DE: $E4
    ld h, d                                       ; $63DF: $62
    inc h                                         ; $63E0: $24
    ld b, $E4                                     ; $63E1: $06 $E4
    ld h, d                                       ; $63E3: $62
    inc h                                         ; $63E4: $24
    ld b, $E4                                     ; $63E5: $06 $E4
    ld [hl], d                                    ; $63E7: $72

jr_02F_63E8:
    ld [hl-], a                                   ; $63E8: $32
    ld b, $E4                                     ; $63E9: $06 $E4
    ld [hl], d                                    ; $63EB: $72
    ld [hl-], a                                   ; $63EC: $32
    ld b, $E4                                     ; $63ED: $06 $E4
    ld [hl], d                                    ; $63EF: $72
    ld [hl-], a                                   ; $63F0: $32
    ld b, $E4                                     ; $63F1: $06 $E4
    ld [hl], d                                    ; $63F3: $72
    db $10                                        ; $63F4: $10

jr_02F_63F5:
    ld b, $E4                                     ; $63F5: $06 $E4
    ld [hl], c                                    ; $63F7: $71
    ld [hl], $06                                  ; $63F8: $36 $06

jr_02F_63FA:
    db $E4                                        ; $63FA: $E4
    ld [hl], c                                    ; $63FB: $71
    ld [hl], $06                                  ; $63FC: $36 $06
    db $ED                                        ; $63FE: $ED
    inc b                                         ; $63FF: $04
    add b                                         ; $6400: $80
    inc de                                        ; $6401: $13
    jr jr_02F_6468                                ; $6402: $18 $64

    nop                                           ; $6404: $00
    add c                                         ; $6405: $81
    add b                                         ; $6406: $80
    jr jr_02F_6473                                ; $6407: $18 $6A

    ld h, h                                       ; $6409: $64
    nop                                           ; $640A: $00
    add c                                         ; $640B: $81
    add b                                         ; $640C: $80
    dec e                                         ; $640D: $1D
    call nz, Call_000_0C64                        ; $640E: $C4 $64 $0C
    add c                                         ; $6411: $81
    add b                                         ; $6412: $80
    ld [hl+], a                                   ; $6413: $22
    ld d, $65                                     ; $6414: $16 $65
    nop                                           ; $6416: $00
    add c                                         ; $6417: $81
    db $E4                                        ; $6418: $E4
    ld a, b                                       ; $6419: $78
    jp hl                                         ; $641A: $E9


    ld de, $80EE                                  ; $641B: $11 $EE $80
    db $EC                                        ; $641E: $EC
    ld hl, $9664                                  ; $641F: $21 $64 $96
    ld b, $98                                     ; $6422: $06 $98
    sbc d                                         ; $6424: $9A
    sbc l                                         ; $6425: $9D
    sbc b                                         ; $6426: $98
    ld b, $9A                                     ; $6427: $06 $9A
    sbc h                                         ; $6429: $9C
    sbc a                                         ; $642A: $9F
    sbc d                                         ; $642B: $9A
    ld b, $9C                                     ; $642C: $06 $9C
    sbc [hl]                                      ; $642E: $9E
    and c                                         ; $642F: $A1
    sbc h                                         ; $6430: $9C
    ld b, $9E                                     ; $6431: $06 $9E
    and b                                         ; $6433: $A0
    and e                                         ; $6434: $A3
    sbc [hl]                                      ; $6435: $9E
    ld b, $A0                                     ; $6436: $06 $A0
    and d                                         ; $6438: $A2
    and l                                         ; $6439: $A5
    xor d                                         ; $643A: $AA
    ld b, $A5                                     ; $643B: $06 $A5
    xor d                                         ; $643D: $AA
    xor [hl]                                      ; $643E: $AE
    or c                                          ; $643F: $B1
    inc b                                         ; $6440: $04
    db $E4                                        ; $6441: $E4
    jr z, jr_02F_63F5                             ; $6442: $28 $B1

    or c                                          ; $6444: $B1
    inc b                                         ; $6445: $04
    db $E4                                        ; $6446: $E4
    jr c, jr_02F_63FA                             ; $6447: $38 $B1

    or c                                          ; $6449: $B1
    inc b                                         ; $644A: $04
    db $E4                                        ; $644B: $E4
    ld c, b                                       ; $644C: $48
    or c                                          ; $644D: $B1

jr_02F_644E:
    or c                                          ; $644E: $B1
    inc b                                         ; $644F: $04
    db $E4                                        ; $6450: $E4
    ld e, b                                       ; $6451: $58
    or c                                          ; $6452: $B1

jr_02F_6453:
    or c                                          ; $6453: $B1
    inc b                                         ; $6454: $04
    db $E4                                        ; $6455: $E4
    ld l, b                                       ; $6456: $68
    or c                                          ; $6457: $B1
    or c                                          ; $6458: $B1
    inc b                                         ; $6459: $04
    db $E4                                        ; $645A: $E4
    ld a, b                                       ; $645B: $78
    or c                                          ; $645C: $B1
    sub d                                         ; $645D: $92
    ld [$73E4], sp                                ; $645E: $08 $E4 $73
    sub d                                         ; $6461: $92
    sub d                                         ; $6462: $92
    sub d                                         ; $6463: $92
    inc c                                         ; $6464: $0C
    add b                                         ; $6465: $80
    jr nc, jr_02F_63E8                            ; $6466: $30 $80

jr_02F_6468:
    inc c                                         ; $6468: $0C
    db $E3                                        ; $6469: $E3
    db $E4                                        ; $646A: $E4
    ld c, b                                       ; $646B: $48
    jp hl                                         ; $646C: $E9


    ld [hl+], a                                   ; $646D: $22
    xor $80                                       ; $646E: $EE $80
    db $EC                                        ; $6470: $EC
    adc h                                         ; $6471: $8C
    ld h, h                                       ; $6472: $64

jr_02F_6473:
    and $02                                       ; $6473: $E6 $02
    db $EC                                        ; $6475: $EC
    adc h                                         ; $6476: $8C
    ld h, h                                       ; $6477: $64
    and $02                                       ; $6478: $E6 $02
    db $EC                                        ; $647A: $EC
    adc h                                         ; $647B: $8C
    ld h, h                                       ; $647C: $64
    and $02                                       ; $647D: $E6 $02
    db $EC                                        ; $647F: $EC
    adc h                                         ; $6480: $8C
    ld h, h                                       ; $6481: $64
    and $01                                       ; $6482: $E6 $01
    db $EC                                        ; $6484: $EC
    adc h                                         ; $6485: $8C
    ld h, h                                       ; $6486: $64
    and $F9                                       ; $6487: $E6 $F9
    db $EC                                        ; $6489: $EC
    sub h                                         ; $648A: $94
    ld h, h                                       ; $648B: $64
    sub [hl]                                      ; $648C: $96
    inc b                                         ; $648D: $04
    sbc d                                         ; $648E: $9A
    sbc l                                         ; $648F: $9D
    and d                                         ; $6490: $A2
    sbc l                                         ; $6491: $9D
    sbc d                                         ; $6492: $9A
    db $ED                                        ; $6493: $ED

jr_02F_6494:
    xor [hl]                                      ; $6494: $AE
    inc b                                         ; $6495: $04
    xor d                                         ; $6496: $AA
    and l                                         ; $6497: $A5
    or c                                          ; $6498: $B1
    xor d                                         ; $6499: $AA
    xor [hl]                                      ; $649A: $AE
    xor [hl]                                      ; $649B: $AE
    inc b                                         ; $649C: $04
    db $E4                                        ; $649D: $E4
    jr z, jr_02F_644E                             ; $649E: $28 $AE

    xor [hl]                                      ; $64A0: $AE
    inc b                                         ; $64A1: $04
    db $E4                                        ; $64A2: $E4
    jr c, jr_02F_6453                             ; $64A3: $38 $AE

    xor [hl]                                      ; $64A5: $AE
    inc b                                         ; $64A6: $04

jr_02F_64A7:
    db $E4                                        ; $64A7: $E4
    ld c, b                                       ; $64A8: $48
    xor [hl]                                      ; $64A9: $AE
    xor [hl]                                      ; $64AA: $AE
    inc b                                         ; $64AB: $04
    db $E4                                        ; $64AC: $E4
    ld e, b                                       ; $64AD: $58
    xor [hl]                                      ; $64AE: $AE
    xor [hl]                                      ; $64AF: $AE
    inc b                                         ; $64B0: $04
    db $E4                                        ; $64B1: $E4
    ld l, b                                       ; $64B2: $68
    xor [hl]                                      ; $64B3: $AE
    xor [hl]                                      ; $64B4: $AE
    inc b                                         ; $64B5: $04
    db $E4                                        ; $64B6: $E4
    ld a, b                                       ; $64B7: $78
    xor [hl]                                      ; $64B8: $AE
    and d                                         ; $64B9: $A2
    ld [$A2A2], sp                                ; $64BA: $08 $A2 $A2
    and d                                         ; $64BD: $A2
    inc c                                         ; $64BE: $0C
    add b                                         ; $64BF: $80
    inc c                                         ; $64C0: $0C
    add b                                         ; $64C1: $80
    jr nc, jr_02F_64A7                            ; $64C2: $30 $E3

    db $E4                                        ; $64C4: $E4
    ld b, b                                       ; $64C5: $40
    jp hl                                         ; $64C6: $E9


    ld b, h                                       ; $64C7: $44
    di                                            ; $64C8: $F3
    inc bc                                        ; $64C9: $03
    push af                                       ; $64CA: $F5
    rrca                                          ; $64CB: $0F
    db $EC                                        ; $64CC: $EC
    rst RST_08                                    ; $64CD: $CF
    ld h, h                                       ; $64CE: $64
    adc d                                         ; $64CF: $8A
    ld b, $91                                     ; $64D0: $06 $91
    adc [hl]                                      ; $64D2: $8E
    sub [hl]                                      ; $64D3: $96
    adc h                                         ; $64D4: $8C
    ld b, $93                                     ; $64D5: $06 $93
    sub b                                         ; $64D7: $90
    sbc b                                         ; $64D8: $98
    adc [hl]                                      ; $64D9: $8E
    ld b, $95                                     ; $64DA: $06 $95
    sbc [hl]                                      ; $64DC: $9E
    sbc d                                         ; $64DD: $9A
    sub b                                         ; $64DE: $90
    ld b, $97                                     ; $64DF: $06 $97
    sub h                                         ; $64E1: $94
    sbc h                                         ; $64E2: $9C
    add [hl]                                      ; $64E3: $86
    ld b, $88                                     ; $64E4: $06 $88
    adc d                                         ; $64E6: $8A
    adc e                                         ; $64E7: $8B
    adc l                                         ; $64E8: $8D
    ld b, $8F                                     ; $64E9: $06 $8F
    sub c                                         ; $64EB: $91
    sub d                                         ; $64EC: $92
    sub d                                         ; $64ED: $92
    inc b                                         ; $64EE: $04
    db $E4                                        ; $64EF: $E4
    ld h, b                                       ; $64F0: $60
    sub d                                         ; $64F1: $92
    sub d                                         ; $64F2: $92
    inc b                                         ; $64F3: $04
    db $E4                                        ; $64F4: $E4
    ld h, b                                       ; $64F5: $60
    sub d                                         ; $64F6: $92
    sub d                                         ; $64F7: $92
    inc b                                         ; $64F8: $04
    db $E4                                        ; $64F9: $E4
    ld h, b                                       ; $64FA: $60
    sub d                                         ; $64FB: $92
    sub d                                         ; $64FC: $92
    inc b                                         ; $64FD: $04
    db $E4                                        ; $64FE: $E4
    ld b, b                                       ; $64FF: $40
    sub d                                         ; $6500: $92
    sub d                                         ; $6501: $92
    inc b                                         ; $6502: $04
    db $E4                                        ; $6503: $E4
    ld b, b                                       ; $6504: $40
    sub d                                         ; $6505: $92
    sub d                                         ; $6506: $92
    inc b                                         ; $6507: $04
    db $E4                                        ; $6508: $E4
    ld b, b                                       ; $6509: $40
    sub d                                         ; $650A: $92
    add [hl]                                      ; $650B: $86
    ld [$8686], sp                                ; $650C: $08 $86 $86
    add [hl]                                      ; $650F: $86
    inc c                                         ; $6510: $0C
    add b                                         ; $6511: $80
    jr nc, jr_02F_6494                            ; $6512: $30 $80

    inc c                                         ; $6514: $0C
    db $E3                                        ; $6515: $E3
    jp hl                                         ; $6516: $E9


    adc b                                         ; $6517: $88
    db $EC                                        ; $6518: $EC
    ld e, $65                                     ; $6519: $1E $65
    db $EC                                        ; $651B: $EC
    inc [hl]                                      ; $651C: $34
    ld h, l                                       ; $651D: $65
    db $E4                                        ; $651E: $E4
    ld h, d                                       ; $651F: $62
    inc h                                         ; $6520: $24
    ld b, $E4                                     ; $6521: $06 $E4
    ld [hl], c                                    ; $6523: $71
    ld [hl], $06                                  ; $6524: $36 $06
    db $E4                                        ; $6526: $E4
    ld b, c                                       ; $6527: $41
    ld hl, $E406                                  ; $6528: $21 $06 $E4
    ld b, c                                       ; $652B: $41
    ld hl, $E706                                  ; $652C: $21 $06 $E7
    nop                                           ; $652F: $00
    ld [bc], a                                    ; $6530: $02
    ld e, $65                                     ; $6531: $1E $65
    db $ED                                        ; $6533: $ED
    db $E4                                        ; $6534: $E4
    ld h, d                                       ; $6535: $62
    inc h                                         ; $6536: $24
    ld b, $E4                                     ; $6537: $06 $E4
    ld [hl], c                                    ; $6539: $71
    ld [hl], $06                                  ; $653A: $36 $06
    db $E4                                        ; $653C: $E4
    ld b, c                                       ; $653D: $41
    ld hl, $E406                                  ; $653E: $21 $06 $E4
    ld h, d                                       ; $6541: $62
    inc h                                         ; $6542: $24
    ld b, $E4                                     ; $6543: $06 $E4
    ld h, d                                       ; $6545: $62
    inc h                                         ; $6546: $24
    ld b, $E4                                     ; $6547: $06 $E4
    ld [hl], c                                    ; $6549: $71
    ld [hl], $06                                  ; $654A: $36 $06
    db $E4                                        ; $654C: $E4
    ld h, d                                       ; $654D: $62
    inc h                                         ; $654E: $24
    ld b, $E4                                     ; $654F: $06 $E4
    ld h, d                                       ; $6551: $62
    inc h                                         ; $6552: $24
    ld b, $E4                                     ; $6553: $06 $E4
    ld [hl], c                                    ; $6555: $71
    ld [hl], $06                                  ; $6556: $36 $06
    db $E4                                        ; $6558: $E4
    ld h, d                                       ; $6559: $62
    inc h                                         ; $655A: $24
    ld b, $E4                                     ; $655B: $06 $E4
    ld h, d                                       ; $655D: $62
    inc h                                         ; $655E: $24
    ld b, $E4                                     ; $655F: $06 $E4
    ld h, d                                       ; $6561: $62
    inc h                                         ; $6562: $24
    ld b, $E4                                     ; $6563: $06 $E4
    ld b, c                                       ; $6565: $41
    ld hl, $E406                                  ; $6566: $21 $06 $E4
    ld h, d                                       ; $6569: $62
    ld [hl], $06                                  ; $656A: $36 $06
    db $E4                                        ; $656C: $E4
    ld b, c                                       ; $656D: $41
    ld hl, $E406                                  ; $656E: $21 $06 $E4
    ld h, d                                       ; $6571: $62
    ld [hl], $06                                  ; $6572: $36 $06
    db $E4                                        ; $6574: $E4
    ld d, e                                       ; $6575: $53
    ld de, $E430                                  ; $6576: $11 $30 $E4
    ld h, d                                       ; $6579: $62
    inc h                                         ; $657A: $24
    ld [$62E4], sp                                ; $657B: $08 $E4 $62
    inc h                                         ; $657E: $24
    ld [$62E4], sp                                ; $657F: $08 $E4 $62
    inc h                                         ; $6582: $24
    ld [$62E4], sp                                ; $6583: $08 $E4 $62
    inc h                                         ; $6586: $24
    ld c, b                                       ; $6587: $48
    db $E3                                        ; $6588: $E3
    inc b                                         ; $6589: $04
    add b                                         ; $658A: $80
    inc de                                        ; $658B: $13
    and d                                         ; $658C: $A2
    ld h, l                                       ; $658D: $65
    inc c                                         ; $658E: $0C
    add c                                         ; $658F: $81
    add b                                         ; $6590: $80
    jr jr_02F_660D                                ; $6591: $18 $7A

    ld h, [hl]                                    ; $6593: $66
    nop                                           ; $6594: $00
    add c                                         ; $6595: $81
    add b                                         ; $6596: $80
    dec e                                         ; $6597: $1D
    jp nc, $0C66                                  ; $6598: $D2 $66 $0C

    add c                                         ; $659B: $81
    add b                                         ; $659C: $80
    ld [hl+], a                                   ; $659D: $22
    inc l                                         ; $659E: $2C
    ld h, a                                       ; $659F: $67
    nop                                           ; $65A0: $00
    add c                                         ; $65A1: $81
    db $E4                                        ; $65A2: $E4
    ld a, b                                       ; $65A3: $78
    jp hl                                         ; $65A4: $E9


    ld de, $C0EE                                  ; $65A5: $11 $EE $C0
    add d                                         ; $65A8: $82
    dec b                                         ; $65A9: $05
    add c                                         ; $65AA: $81
    add d                                         ; $65AB: $82
    inc b                                         ; $65AC: $04
    add c                                         ; $65AD: $81
    dec b                                         ; $65AE: $05
    add d                                         ; $65AF: $82
    add c                                         ; $65B0: $81
    inc b                                         ; $65B1: $04
    add l                                         ; $65B2: $85
    dec b                                         ; $65B3: $05
    add e                                         ; $65B4: $83
    add l                                         ; $65B5: $85
    inc b                                         ; $65B6: $04
    add e                                         ; $65B7: $83
    dec b                                         ; $65B8: $05
    add l                                         ; $65B9: $85
    add e                                         ; $65BA: $83
    inc b                                         ; $65BB: $04
    add a                                         ; $65BC: $87
    dec b                                         ; $65BD: $05
    add [hl]                                      ; $65BE: $86
    add a                                         ; $65BF: $87
    inc b                                         ; $65C0: $04
    add [hl]                                      ; $65C1: $86
    dec b                                         ; $65C2: $05
    add a                                         ; $65C3: $87
    add [hl]                                      ; $65C4: $86
    inc b                                         ; $65C5: $04
    adc d                                         ; $65C6: $8A
    dec b                                         ; $65C7: $05
    adc c                                         ; $65C8: $89
    adc d                                         ; $65C9: $8A
    inc b                                         ; $65CA: $04
    adc c                                         ; $65CB: $89
    dec b                                         ; $65CC: $05
    adc d                                         ; $65CD: $8A
    adc c                                         ; $65CE: $89
    inc b                                         ; $65CF: $04
    db $EC                                        ; $65D0: $EC
    inc [hl]                                      ; $65D1: $34
    ld h, [hl]                                    ; $65D2: $66
    adc a                                         ; $65D3: $8F
    adc [hl]                                      ; $65D4: $8E
    adc a                                         ; $65D5: $8F
    sub h                                         ; $65D6: $94
    add a                                         ; $65D7: $87
    dec b                                         ; $65D8: $05
    add [hl]                                      ; $65D9: $86
    add a                                         ; $65DA: $87
    inc b                                         ; $65DB: $04
    add [hl]                                      ; $65DC: $86
    dec b                                         ; $65DD: $05
    add a                                         ; $65DE: $87
    add [hl]                                      ; $65DF: $86
    inc b                                         ; $65E0: $04
    adc d                                         ; $65E1: $8A
    dec b                                         ; $65E2: $05
    adc c                                         ; $65E3: $89
    adc d                                         ; $65E4: $8A
    inc b                                         ; $65E5: $04
    adc c                                         ; $65E6: $89
    dec b                                         ; $65E7: $05
    adc d                                         ; $65E8: $8A
    adc c                                         ; $65E9: $89
    inc b                                         ; $65EA: $04
    adc [hl]                                      ; $65EB: $8E
    dec b                                         ; $65EC: $05
    adc l                                         ; $65ED: $8D
    adc [hl]                                      ; $65EE: $8E
    inc b                                         ; $65EF: $04
    adc l                                         ; $65F0: $8D
    dec b                                         ; $65F1: $05
    adc [hl]                                      ; $65F2: $8E
    adc l                                         ; $65F3: $8D
    inc b                                         ; $65F4: $04
    sub e                                         ; $65F5: $93
    dec b                                         ; $65F6: $05
    sub d                                         ; $65F7: $92
    sub e                                         ; $65F8: $93
    inc b                                         ; $65F9: $04
    sub d                                         ; $65FA: $92
    dec b                                         ; $65FB: $05
    sub e                                         ; $65FC: $93
    sub d                                         ; $65FD: $92
    inc b                                         ; $65FE: $04
    sub [hl]                                      ; $65FF: $96
    add hl, bc                                    ; $6600: $09
    sub e                                         ; $6601: $93
    adc [hl]                                      ; $6602: $8E
    ld a, [bc]                                    ; $6603: $0A
    adc d                                         ; $6604: $8A
    add hl, bc                                    ; $6605: $09
    adc [hl]                                      ; $6606: $8E
    sub e                                         ; $6607: $93
    ld a, [bc]                                    ; $6608: $0A
    sub h                                         ; $6609: $94
    add hl, bc                                    ; $660A: $09
    adc a                                         ; $660B: $8F
    adc h                                         ; $660C: $8C

jr_02F_660D:
    ld a, [bc]                                    ; $660D: $0A
    adc b                                         ; $660E: $88
    add hl, bc                                    ; $660F: $09
    adc h                                         ; $6610: $8C
    adc a                                         ; $6611: $8F
    ld a, [bc]                                    ; $6612: $0A
    db $EC                                        ; $6613: $EC
    ld b, c                                       ; $6614: $41
    ld h, [hl]                                    ; $6615: $66
    and $01                                       ; $6616: $E6 $01
    db $EC                                        ; $6618: $EC
    ld b, c                                       ; $6619: $41
    ld h, [hl]                                    ; $661A: $66
    and $FF                                       ; $661B: $E6 $FF
    adc b                                         ; $661D: $88
    rlca                                          ; $661E: $07
    adc h                                         ; $661F: $8C
    adc a                                         ; $6620: $8F
    sub h                                         ; $6621: $94
    adc h                                         ; $6622: $8C
    adc a                                         ; $6623: $8F
    sub h                                         ; $6624: $94
    sbc b                                         ; $6625: $98
    adc a                                         ; $6626: $8F
    sub h                                         ; $6627: $94
    sbc b                                         ; $6628: $98
    sbc e                                         ; $6629: $9B
    sub h                                         ; $662A: $94
    sbc b                                         ; $662B: $98
    sbc e                                         ; $662C: $9B
    and b                                         ; $662D: $A0
    db $EC                                        ; $662E: $EC
    ld l, d                                       ; $662F: $6A
    ld h, [hl]                                    ; $6630: $66
    push hl                                       ; $6631: $E5
    and d                                         ; $6632: $A2
    ld h, l                                       ; $6633: $65
    adc a                                         ; $6634: $8F
    rlca                                          ; $6635: $07
    adc [hl]                                      ; $6636: $8E
    adc a                                         ; $6637: $8F
    sub h                                         ; $6638: $94
    adc a                                         ; $6639: $8F
    adc [hl]                                      ; $663A: $8E
    rst RST_20                                    ; $663B: $E7
    nop                                           ; $663C: $00
    ld [bc], a                                    ; $663D: $02
    inc [hl]                                      ; $663E: $34
    ld h, [hl]                                    ; $663F: $66
    db $ED                                        ; $6640: $ED
    sub e                                         ; $6641: $93
    dec b                                         ; $6642: $05
    sub d                                         ; $6643: $92
    sub e                                         ; $6644: $93
    inc b                                         ; $6645: $04
    sub d                                         ; $6646: $92
    dec b                                         ; $6647: $05
    sub e                                         ; $6648: $93
    sub d                                         ; $6649: $92
    inc b                                         ; $664A: $04
    adc [hl]                                      ; $664B: $8E
    dec b                                         ; $664C: $05
    adc l                                         ; $664D: $8D
    adc [hl]                                      ; $664E: $8E
    inc b                                         ; $664F: $04
    adc l                                         ; $6650: $8D
    dec b                                         ; $6651: $05
    adc [hl]                                      ; $6652: $8E
    adc l                                         ; $6653: $8D
    inc b                                         ; $6654: $04
    adc d                                         ; $6655: $8A
    dec b                                         ; $6656: $05
    adc c                                         ; $6657: $89
    adc d                                         ; $6658: $8A
    inc b                                         ; $6659: $04
    adc c                                         ; $665A: $89
    dec b                                         ; $665B: $05
    adc d                                         ; $665C: $8A
    adc c                                         ; $665D: $89
    inc b                                         ; $665E: $04
    add a                                         ; $665F: $87
    dec b                                         ; $6660: $05
    add [hl]                                      ; $6661: $86
    add a                                         ; $6662: $87
    inc b                                         ; $6663: $04
    add [hl]                                      ; $6664: $86
    dec b                                         ; $6665: $05
    add a                                         ; $6666: $87
    add [hl]                                      ; $6667: $86
    inc b                                         ; $6668: $04
    db $ED                                        ; $6669: $ED
    db $E4                                        ; $666A: $E4
    ld [hl], a                                    ; $666B: $77

jr_02F_666C:
    and h                                         ; $666C: $A4
    db $E4                                        ; $666D: $E4
    ld d, a                                       ; $666E: $57
    and h                                         ; $666F: $A4
    and h                                         ; $6670: $A4
    db $E4                                        ; $6671: $E4
    scf                                           ; $6672: $37
    and h                                         ; $6673: $A4
    rst RST_20                                    ; $6674: $E7
    nop                                           ; $6675: $00
    inc b                                         ; $6676: $04
    ld l, d                                       ; $6677: $6A
    ld h, [hl]                                    ; $6678: $66
    db $ED                                        ; $6679: $ED
    db $E4                                        ; $667A: $E4
    ld h, [hl]                                    ; $667B: $66
    jp hl                                         ; $667C: $E9


    ld [hl+], a                                   ; $667D: $22
    xor $C0                                       ; $667E: $EE $C0
    db $EC                                        ; $6680: $EC
    cp c                                          ; $6681: $B9
    ld h, [hl]                                    ; $6682: $66
    db $E4                                        ; $6683: $E4
    ld a, b                                       ; $6684: $78
    adc [hl]                                      ; $6685: $8E
    jr c, jr_02F_666C                             ; $6686: $38 $E4

    ld e, b                                       ; $6688: $58
    pop af                                        ; $6689: $F1
    adc [hl]                                      ; $668A: $8E
    db $E4                                        ; $668B: $E4
    ld a, b                                       ; $668C: $78
    sub c                                         ; $668D: $91
    inc e                                         ; $668E: $1C
    db $E4                                        ; $668F: $E4
    ld e, b                                       ; $6690: $58
    pop af                                        ; $6691: $F1
    sub c                                         ; $6692: $91
    db $E4                                        ; $6693: $E4
    ld a, b                                       ; $6694: $78
    adc a                                         ; $6695: $8F
    inc e                                         ; $6696: $1C
    db $E4                                        ; $6697: $E4
    ld e, b                                       ; $6698: $58
    pop af                                        ; $6699: $F1
    adc a                                         ; $669A: $8F
    db $EC                                        ; $669B: $EC
    cp c                                          ; $669C: $B9
    ld h, [hl]                                    ; $669D: $66
    db $E4                                        ; $669E: $E4
    ld a, b                                       ; $669F: $78
    adc a                                         ; $66A0: $8F
    jr c, @-$1A                                   ; $66A1: $38 $E4

    ld e, b                                       ; $66A3: $58
    pop af                                        ; $66A4: $F1
    adc a                                         ; $66A5: $8F
    db $E4                                        ; $66A6: $E4
    ld a, b                                       ; $66A7: $78
    sub e                                         ; $66A8: $93
    inc e                                         ; $66A9: $1C
    db $E4                                        ; $66AA: $E4
    ld e, b                                       ; $66AB: $58
    pop af                                        ; $66AC: $F1
    sub e                                         ; $66AD: $93
    db $E4                                        ; $66AE: $E4
    ld a, b                                       ; $66AF: $78
    sub c                                         ; $66B0: $91
    inc e                                         ; $66B1: $1C
    db $E4                                        ; $66B2: $E4
    ld e, b                                       ; $66B3: $58
    pop af                                        ; $66B4: $F1
    sub c                                         ; $66B5: $91
    push hl                                       ; $66B6: $E5
    ld a, d                                       ; $66B7: $7A
    ld h, [hl]                                    ; $66B8: $66
    db $E4                                        ; $66B9: $E4
    ld a, b                                       ; $66BA: $78
    adc [hl]                                      ; $66BB: $8E
    jr c, @-$1A                                   ; $66BC: $38 $E4

    ld e, b                                       ; $66BE: $58
    pop af                                        ; $66BF: $F1
    adc [hl]                                      ; $66C0: $8E
    db $E4                                        ; $66C1: $E4
    ld a, b                                       ; $66C2: $78
    adc a                                         ; $66C3: $8F
    inc e                                         ; $66C4: $1C
    db $E4                                        ; $66C5: $E4

jr_02F_66C6:
    ld e, b                                       ; $66C6: $58
    pop af                                        ; $66C7: $F1
    adc a                                         ; $66C8: $8F
    db $E4                                        ; $66C9: $E4
    ld a, b                                       ; $66CA: $78
    adc h                                         ; $66CB: $8C
    inc e                                         ; $66CC: $1C
    db $E4                                        ; $66CD: $E4
    ld e, b                                       ; $66CE: $58
    pop af                                        ; $66CF: $F1
    adc h                                         ; $66D0: $8C
    db $ED                                        ; $66D1: $ED
    db $E4                                        ; $66D2: $E4
    ld b, b                                       ; $66D3: $40
    jp hl                                         ; $66D4: $E9


    ld b, h                                       ; $66D5: $44
    di                                            ; $66D6: $F3
    ld [bc], a                                    ; $66D7: $02
    push af                                       ; $66D8: $F5
    nop                                           ; $66D9: $00
    db $EC                                        ; $66DA: $EC
    inc de                                        ; $66DB: $13
    ld h, a                                       ; $66DC: $67
    db $E4                                        ; $66DD: $E4
    ld b, b                                       ; $66DE: $40
    add a                                         ; $66DF: $87
    jr c, jr_02F_66C6                             ; $66E0: $38 $E4

    ld h, b                                       ; $66E2: $60
    pop af                                        ; $66E3: $F1
    add a                                         ; $66E4: $87
    db $E4                                        ; $66E5: $E4
    ld b, b                                       ; $66E6: $40
    adc d                                         ; $66E7: $8A
    inc e                                         ; $66E8: $1C
    db $E4                                        ; $66E9: $E4
    ld h, b                                       ; $66EA: $60
    pop af                                        ; $66EB: $F1
    adc d                                         ; $66EC: $8A
    db $E4                                        ; $66ED: $E4
    ld b, b                                       ; $66EE: $40
    adc b                                         ; $66EF: $88
    inc e                                         ; $66F0: $1C
    db $E4                                        ; $66F1: $E4
    ld h, b                                       ; $66F2: $60
    pop af                                        ; $66F3: $F1
    adc b                                         ; $66F4: $88
    db $EC                                        ; $66F5: $EC
    inc de                                        ; $66F6: $13
    ld h, a                                       ; $66F7: $67
    db $E4                                        ; $66F8: $E4
    ld b, b                                       ; $66F9: $40
    adc b                                         ; $66FA: $88
    jr c, @-$1A                                   ; $66FB: $38 $E4

    ld h, b                                       ; $66FD: $60
    pop af                                        ; $66FE: $F1
    adc b                                         ; $66FF: $88
    db $E4                                        ; $6700: $E4
    ld b, b                                       ; $6701: $40
    adc h                                         ; $6702: $8C
    inc e                                         ; $6703: $1C
    db $E4                                        ; $6704: $E4
    ld h, b                                       ; $6705: $60
    pop af                                        ; $6706: $F1
    adc h                                         ; $6707: $8C
    db $E4                                        ; $6708: $E4
    ld b, b                                       ; $6709: $40
    adc d                                         ; $670A: $8A
    inc e                                         ; $670B: $1C
    db $E4                                        ; $670C: $E4
    ld h, b                                       ; $670D: $60
    pop af                                        ; $670E: $F1
    adc d                                         ; $670F: $8A
    push hl                                       ; $6710: $E5
    jp nc, $E466                                  ; $6711: $D2 $66 $E4

    ld b, b                                       ; $6714: $40
    add a                                         ; $6715: $87
    jr c, @-$1A                                   ; $6716: $38 $E4

    ld h, b                                       ; $6718: $60
    pop af                                        ; $6719: $F1
    add a                                         ; $671A: $87
    db $E4                                        ; $671B: $E4
    ld b, b                                       ; $671C: $40
    adc b                                         ; $671D: $88
    inc e                                         ; $671E: $1C
    db $E4                                        ; $671F: $E4
    ld h, b                                       ; $6720: $60
    pop af                                        ; $6721: $F1
    adc b                                         ; $6722: $88
    db $E4                                        ; $6723: $E4
    ld b, b                                       ; $6724: $40
    add l                                         ; $6725: $85
    inc e                                         ; $6726: $1C
    db $E4                                        ; $6727: $E4
    ld h, b                                       ; $6728: $60
    pop af                                        ; $6729: $F1
    add l                                         ; $672A: $85
    db $ED                                        ; $672B: $ED
    jp hl                                         ; $672C: $E9


    adc b                                         ; $672D: $88
    db $EC                                        ; $672E: $EC
    inc [hl]                                      ; $672F: $34
    ld h, a                                       ; $6730: $67
    push hl                                       ; $6731: $E5
    inc l                                         ; $6732: $2C
    ld h, a                                       ; $6733: $67
    db $E4                                        ; $6734: $E4
    ld h, d                                       ; $6735: $62
    inc h                                         ; $6736: $24
    inc e                                         ; $6737: $1C
    db $E4                                        ; $6738: $E4
    ld h, d                                       ; $6739: $62
    inc h                                         ; $673A: $24

jr_02F_673B:
    add hl, bc                                    ; $673B: $09
    db $E4                                        ; $673C: $E4
    ld h, d                                       ; $673D: $62
    inc h                                         ; $673E: $24
    add hl, bc                                    ; $673F: $09
    db $E4                                        ; $6740: $E4
    ld h, d                                       ; $6741: $62
    inc h                                         ; $6742: $24
    ld a, [bc]                                    ; $6743: $0A
    db $E4                                        ; $6744: $E4
    ld h, d                                       ; $6745: $62
    inc h                                         ; $6746: $24
    inc e                                         ; $6747: $1C
    db $E4                                        ; $6748: $E4
    ld h, d                                       ; $6749: $62
    inc h                                         ; $674A: $24
    add hl, bc                                    ; $674B: $09
    db $E4                                        ; $674C: $E4
    ld h, d                                       ; $674D: $62
    inc h                                         ; $674E: $24
    add hl, bc                                    ; $674F: $09
    db $E4                                        ; $6750: $E4
    ld h, d                                       ; $6751: $62
    inc h                                         ; $6752: $24
    ld a, [bc]                                    ; $6753: $0A
    db $E4                                        ; $6754: $E4
    ld h, d                                       ; $6755: $62
    inc h                                         ; $6756: $24
    inc e                                         ; $6757: $1C
    db $E4                                        ; $6758: $E4
    ld h, d                                       ; $6759: $62
    inc h                                         ; $675A: $24
    add hl, bc                                    ; $675B: $09
    db $E4                                        ; $675C: $E4
    ld h, d                                       ; $675D: $62
    inc h                                         ; $675E: $24
    add hl, bc                                    ; $675F: $09
    db $E4                                        ; $6760: $E4
    ld h, d                                       ; $6761: $62
    inc h                                         ; $6762: $24
    dec b                                         ; $6763: $05
    db $E4                                        ; $6764: $E4
    ld h, d                                       ; $6765: $62
    inc h                                         ; $6766: $24
    dec b                                         ; $6767: $05
    db $E4                                        ; $6768: $E4
    ld h, d                                       ; $6769: $62
    inc h                                         ; $676A: $24
    add hl, bc                                    ; $676B: $09
    db $E4                                        ; $676C: $E4
    ld h, d                                       ; $676D: $62
    inc h                                         ; $676E: $24
    add hl, bc                                    ; $676F: $09
    db $E4                                        ; $6770: $E4
    ld h, d                                       ; $6771: $62
    inc h                                         ; $6772: $24
    ld a, [bc]                                    ; $6773: $0A
    db $E4                                        ; $6774: $E4
    ld h, d                                       ; $6775: $62
    inc h                                         ; $6776: $24
    add hl, bc                                    ; $6777: $09
    db $E4                                        ; $6778: $E4
    ld h, d                                       ; $6779: $62
    inc h                                         ; $677A: $24
    add hl, bc                                    ; $677B: $09
    db $E4                                        ; $677C: $E4
    ld h, d                                       ; $677D: $62
    inc h                                         ; $677E: $24
    ld a, [bc]                                    ; $677F: $0A
    rst RST_20                                    ; $6780: $E7
    nop                                           ; $6781: $00
    inc b                                         ; $6782: $04
    inc [hl]                                      ; $6783: $34
    ld h, a                                       ; $6784: $67
    db $ED                                        ; $6785: $ED
    inc b                                         ; $6786: $04
    add b                                         ; $6787: $80
    inc de                                        ; $6788: $13
    sbc c                                         ; $6789: $99
    ld h, a                                       ; $678A: $67
    inc c                                         ; $678B: $0C
    add c                                         ; $678C: $81
    add b                                         ; $678D: $80
    jr jr_02F_673B                                ; $678E: $18 $AB

    ld l, b                                       ; $6790: $68
    inc c                                         ; $6791: $0C
    add c                                         ; $6792: $81
    add b                                         ; $6793: $80
    dec e                                         ; $6794: $1D
    ld b, [hl]                                    ; $6795: $46
    ld l, c                                       ; $6796: $69
    inc c                                         ; $6797: $0C
    add c                                         ; $6798: $81
    db $E4                                        ; $6799: $E4
    ld a, b                                       ; $679A: $78
    jp hl                                         ; $679B: $E9


    ld de, $80EE                                  ; $679C: $11 $EE $80
    db $EC                                        ; $679F: $EC
    and l                                         ; $67A0: $A5
    ld h, a                                       ; $67A1: $67
    push hl                                       ; $67A2: $E5
    sbc c                                         ; $67A3: $99
    ld h, a                                       ; $67A4: $67
    db $E4                                        ; $67A5: $E4
    ld [hl], a                                    ; $67A6: $77
    sbc c                                         ; $67A7: $99
    inc d                                         ; $67A8: $14
    sub a                                         ; $67A9: $97
    ld a, [bc]                                    ; $67AA: $0A
    db $E4                                        ; $67AB: $E4
    ld d, a                                       ; $67AC: $57
    sub a                                         ; $67AD: $97
    db $E4                                        ; $67AE: $E4
    ld [hl], a                                    ; $67AF: $77
    sub a                                         ; $67B0: $97
    inc d                                         ; $67B1: $14
    sub [hl]                                      ; $67B2: $96
    ld a, [bc]                                    ; $67B3: $0A
    db $E4                                        ; $67B4: $E4
    ld d, a                                       ; $67B5: $57
    sub [hl]                                      ; $67B6: $96
    db $E4                                        ; $67B7: $E4
    ld [hl], a                                    ; $67B8: $77
    sub [hl]                                      ; $67B9: $96
    inc d                                         ; $67BA: $14
    sub h                                         ; $67BB: $94
    ld a, [bc]                                    ; $67BC: $0A
    db $E4                                        ; $67BD: $E4
    ld d, a                                       ; $67BE: $57
    sub h                                         ; $67BF: $94
    db $E4                                        ; $67C0: $E4
    ld [hl], a                                    ; $67C1: $77
    sub [hl]                                      ; $67C2: $96
    inc d                                         ; $67C3: $14
    sub a                                         ; $67C4: $97
    ld a, [bc]                                    ; $67C5: $0A
    db $E4                                        ; $67C6: $E4
    ld d, a                                       ; $67C7: $57
    sub a                                         ; $67C8: $97
    db $E4                                        ; $67C9: $E4
    ld [hl], a                                    ; $67CA: $77
    sub [hl]                                      ; $67CB: $96
    inc d                                         ; $67CC: $14
    sub h                                         ; $67CD: $94
    ld a, [bc]                                    ; $67CE: $0A
    db $E4                                        ; $67CF: $E4
    ld d, a                                       ; $67D0: $57
    sub h                                         ; $67D1: $94
    db $E4                                        ; $67D2: $E4
    ld [hl], a                                    ; $67D3: $77
    sub h                                         ; $67D4: $94
    inc d                                         ; $67D5: $14
    sub d                                         ; $67D6: $92
    ld a, [bc]                                    ; $67D7: $0A
    db $E4                                        ; $67D8: $E4
    ld d, a                                       ; $67D9: $57
    sub d                                         ; $67DA: $92
    db $E4                                        ; $67DB: $E4
    ld [hl], a                                    ; $67DC: $77
    sub d                                         ; $67DD: $92
    inc d                                         ; $67DE: $14
    sub c                                         ; $67DF: $91
    ld a, [bc]                                    ; $67E0: $0A
    db $E4                                        ; $67E1: $E4
    ld d, a                                       ; $67E2: $57
    sub c                                         ; $67E3: $91
    db $E4                                        ; $67E4: $E4
    ld [hl], a                                    ; $67E5: $77
    sub d                                         ; $67E6: $92
    inc d                                         ; $67E7: $14
    sub h                                         ; $67E8: $94
    ld a, [bc]                                    ; $67E9: $0A
    db $E4                                        ; $67EA: $E4
    ld d, a                                       ; $67EB: $57
    sub h                                         ; $67EC: $94
    db $E4                                        ; $67ED: $E4
    ld [hl], a                                    ; $67EE: $77
    sub d                                         ; $67EF: $92
    inc d                                         ; $67F0: $14
    adc l                                         ; $67F1: $8D
    ld a, [bc]                                    ; $67F2: $0A
    db $E4                                        ; $67F3: $E4
    ld d, a                                       ; $67F4: $57
    adc l                                         ; $67F5: $8D
    db $E4                                        ; $67F6: $E4
    ld [hl], a                                    ; $67F7: $77
    adc l                                         ; $67F8: $8D
    inc d                                         ; $67F9: $14
    sub d                                         ; $67FA: $92
    ld a, [bc]                                    ; $67FB: $0A
    db $E4                                        ; $67FC: $E4
    ld d, a                                       ; $67FD: $57
    sub d                                         ; $67FE: $92
    db $E4                                        ; $67FF: $E4
    ld [hl], a                                    ; $6800: $77
    sub d                                         ; $6801: $92
    inc d                                         ; $6802: $14
    adc l                                         ; $6803: $8D
    ld a, [bc]                                    ; $6804: $0A
    db $E4                                        ; $6805: $E4
    ld d, a                                       ; $6806: $57
    adc l                                         ; $6807: $8D
    db $E4                                        ; $6808: $E4
    ld [hl], a                                    ; $6809: $77
    sub d                                         ; $680A: $92
    inc d                                         ; $680B: $14
    sub [hl]                                      ; $680C: $96
    ld a, [bc]                                    ; $680D: $0A
    db $E4                                        ; $680E: $E4
    ld d, a                                       ; $680F: $57
    sub [hl]                                      ; $6810: $96
    db $E4                                        ; $6811: $E4
    ld [hl], a                                    ; $6812: $77
    sub a                                         ; $6813: $97
    inc d                                         ; $6814: $14
    sub [hl]                                      ; $6815: $96
    ld a, [bc]                                    ; $6816: $0A
    db $E4                                        ; $6817: $E4
    ld d, a                                       ; $6818: $57
    sub [hl]                                      ; $6819: $96
    db $E4                                        ; $681A: $E4
    ld [hl], a                                    ; $681B: $77
    sub h                                         ; $681C: $94
    inc d                                         ; $681D: $14
    sub a                                         ; $681E: $97
    ld a, [bc]                                    ; $681F: $0A
    db $E4                                        ; $6820: $E4
    ld d, a                                       ; $6821: $57
    sub a                                         ; $6822: $97
    db $E4                                        ; $6823: $E4
    ld [hl], a                                    ; $6824: $77
    sub [hl]                                      ; $6825: $96
    ld e, $E4                                     ; $6826: $1E $E4
    ld d, a                                       ; $6828: $57
    sub [hl]                                      ; $6829: $96
    ld a, [bc]                                    ; $682A: $0A
    db $E4                                        ; $682B: $E4
    ld [hl], a                                    ; $682C: $77
    sub c                                         ; $682D: $91
    ld e, $E4                                     ; $682E: $1E $E4
    ld d, a                                       ; $6830: $57
    sub c                                         ; $6831: $91
    ld a, [bc]                                    ; $6832: $0A
    db $E4                                        ; $6833: $E4
    ld [hl], a                                    ; $6834: $77
    sbc c                                         ; $6835: $99
    inc d                                         ; $6836: $14
    sub a                                         ; $6837: $97
    ld a, [bc]                                    ; $6838: $0A
    db $E4                                        ; $6839: $E4
    ld d, a                                       ; $683A: $57
    sub a                                         ; $683B: $97
    db $E4                                        ; $683C: $E4
    ld [hl], a                                    ; $683D: $77
    sub a                                         ; $683E: $97
    inc d                                         ; $683F: $14
    sub [hl]                                      ; $6840: $96
    ld a, [bc]                                    ; $6841: $0A
    db $E4                                        ; $6842: $E4
    ld d, a                                       ; $6843: $57
    sub [hl]                                      ; $6844: $96
    db $E4                                        ; $6845: $E4
    ld [hl], a                                    ; $6846: $77
    sub [hl]                                      ; $6847: $96
    inc d                                         ; $6848: $14
    sub h                                         ; $6849: $94
    ld a, [bc]                                    ; $684A: $0A
    db $E4                                        ; $684B: $E4
    ld d, a                                       ; $684C: $57
    sub h                                         ; $684D: $94
    db $E4                                        ; $684E: $E4
    ld [hl], a                                    ; $684F: $77
    sub [hl]                                      ; $6850: $96
    inc d                                         ; $6851: $14
    sbc l                                         ; $6852: $9D
    ld a, [bc]                                    ; $6853: $0A
    db $E4                                        ; $6854: $E4
    ld d, a                                       ; $6855: $57
    sbc l                                         ; $6856: $9D
    db $E4                                        ; $6857: $E4
    ld [hl], a                                    ; $6858: $77
    sbc [hl]                                      ; $6859: $9E
    inc d                                         ; $685A: $14
    sbc l                                         ; $685B: $9D
    ld a, [bc]                                    ; $685C: $0A
    db $E4                                        ; $685D: $E4
    ld d, a                                       ; $685E: $57
    sbc l                                         ; $685F: $9D
    db $E4                                        ; $6860: $E4
    ld [hl], a                                    ; $6861: $77
    sbc l                                         ; $6862: $9D
    inc d                                         ; $6863: $14
    sbc e                                         ; $6864: $9B
    ld a, [bc]                                    ; $6865: $0A
    db $E4                                        ; $6866: $E4
    ld d, a                                       ; $6867: $57
    sbc e                                         ; $6868: $9B
    db $E4                                        ; $6869: $E4
    ld [hl], a                                    ; $686A: $77
    sbc e                                         ; $686B: $9B
    inc d                                         ; $686C: $14
    sbc c                                         ; $686D: $99
    ld a, [bc]                                    ; $686E: $0A
    db $E4                                        ; $686F: $E4
    ld d, a                                       ; $6870: $57
    sbc c                                         ; $6871: $99
    db $E4                                        ; $6872: $E4
    ld [hl], a                                    ; $6873: $77
    sbc e                                         ; $6874: $9B
    inc d                                         ; $6875: $14
    sbc l                                         ; $6876: $9D
    ld a, [bc]                                    ; $6877: $0A
    db $E4                                        ; $6878: $E4
    ld d, a                                       ; $6879: $57
    sbc l                                         ; $687A: $9D
    db $E4                                        ; $687B: $E4
    ld [hl], a                                    ; $687C: $77
    sbc e                                         ; $687D: $9B
    inc d                                         ; $687E: $14
    sub a                                         ; $687F: $97
    ld a, [bc]                                    ; $6880: $0A
    db $E4                                        ; $6881: $E4
    ld d, a                                       ; $6882: $57
    sub a                                         ; $6883: $97
    db $E4                                        ; $6884: $E4
    ld [hl], a                                    ; $6885: $77
    sub a                                         ; $6886: $97
    inc d                                         ; $6887: $14
    sbc e                                         ; $6888: $9B
    ld a, [bc]                                    ; $6889: $0A
    db $E4                                        ; $688A: $E4
    ld d, a                                       ; $688B: $57
    sbc e                                         ; $688C: $9B
    db $E4                                        ; $688D: $E4
    ld [hl], a                                    ; $688E: $77
    sbc c                                         ; $688F: $99
    inc d                                         ; $6890: $14
    sub d                                         ; $6891: $92
    ld a, [bc]                                    ; $6892: $0A
    db $E4                                        ; $6893: $E4
    ld d, a                                       ; $6894: $57
    sub d                                         ; $6895: $92
    db $E4                                        ; $6896: $E4
    ld [hl], a                                    ; $6897: $77
    sub d                                         ; $6898: $92
    inc d                                         ; $6899: $14
    sub [hl]                                      ; $689A: $96
    ld a, [bc]                                    ; $689B: $0A
    db $E4                                        ; $689C: $E4
    ld d, a                                       ; $689D: $57
    sub [hl]                                      ; $689E: $96
    db $E4                                        ; $689F: $E4
    ld [hl], a                                    ; $68A0: $77
    sub h                                         ; $68A1: $94
    inc d                                         ; $68A2: $14
    sub [hl]                                      ; $68A3: $96
    sub a                                         ; $68A4: $97
    sbc e                                         ; $68A5: $9B
    sbc [hl]                                      ; $68A6: $9E
    sbc l                                         ; $68A7: $9D
    sbc e                                         ; $68A8: $9B
    sbc l                                         ; $68A9: $9D
    db $ED                                        ; $68AA: $ED
    db $E4                                        ; $68AB: $E4
    ld d, h                                       ; $68AC: $54
    jp hl                                         ; $68AD: $E9


    ld [hl+], a                                   ; $68AE: $22
    xor $40                                       ; $68AF: $EE $40
    db $EC                                        ; $68B1: $EC
    or a                                          ; $68B2: $B7
    ld l, b                                       ; $68B3: $68
    push hl                                       ; $68B4: $E5
    xor e                                         ; $68B5: $AB
    ld l, b                                       ; $68B6: $68
    sub [hl]                                      ; $68B7: $96
    inc d                                         ; $68B8: $14
    sub h                                         ; $68B9: $94
    ld a, [bc]                                    ; $68BA: $0A
    adc l                                         ; $68BB: $8D
    sub h                                         ; $68BC: $94
    adc l                                         ; $68BD: $8D
    sub d                                         ; $68BE: $92
    adc l                                         ; $68BF: $8D
    sub d                                         ; $68C0: $92
    inc d                                         ; $68C1: $14
    sub c                                         ; $68C2: $91
    ld a, [bc]                                    ; $68C3: $0A
    adc b                                         ; $68C4: $88
    adc l                                         ; $68C5: $8D
    sub c                                         ; $68C6: $91
    sub h                                         ; $68C7: $94
    sub c                                         ; $68C8: $91
    sub d                                         ; $68C9: $92
    inc d                                         ; $68CA: $14
    sub c                                         ; $68CB: $91
    ld a, [bc]                                    ; $68CC: $0A
    adc d                                         ; $68CD: $8A
    sub c                                         ; $68CE: $91
    adc d                                         ; $68CF: $8A
    adc a                                         ; $68D0: $8F
    adc d                                         ; $68D1: $8A
    adc l                                         ; $68D2: $8D
    inc d                                         ; $68D3: $14
    adc b                                         ; $68D4: $88
    ld a, [bc]                                    ; $68D5: $0A
    add l                                         ; $68D6: $85
    adc d                                         ; $68D7: $8A
    adc l                                         ; $68D8: $8D
    adc a                                         ; $68D9: $8F
    sub c                                         ; $68DA: $91
    adc a                                         ; $68DB: $8F
    inc d                                         ; $68DC: $14
    adc e                                         ; $68DD: $8B
    ld a, [bc]                                    ; $68DE: $0A
    add [hl]                                      ; $68DF: $86
    adc d                                         ; $68E0: $8A
    add [hl]                                      ; $68E1: $86
    adc a                                         ; $68E2: $8F
    add [hl]                                      ; $68E3: $86
    adc l                                         ; $68E4: $8D
    inc d                                         ; $68E5: $14
    adc d                                         ; $68E6: $8A
    ld a, [bc]                                    ; $68E7: $0A
    add [hl]                                      ; $68E8: $86
    adc l                                         ; $68E9: $8D
    add [hl]                                      ; $68EA: $86
    sub d                                         ; $68EB: $92
    adc d                                         ; $68EC: $8A
    sub h                                         ; $68ED: $94
    inc d                                         ; $68EE: $14
    sub d                                         ; $68EF: $92
    ld a, [bc]                                    ; $68F0: $0A
    adc e                                         ; $68F1: $8B
    adc a                                         ; $68F2: $8F
    adc e                                         ; $68F3: $8B
    sub d                                         ; $68F4: $92
    adc e                                         ; $68F5: $8B
    sub c                                         ; $68F6: $91
    inc d                                         ; $68F7: $14
    add d                                         ; $68F8: $82
    ld a, [bc]                                    ; $68F9: $0A
    add l                                         ; $68FA: $85
    adc d                                         ; $68FB: $8A
    add l                                         ; $68FC: $85
    adc d                                         ; $68FD: $8A
    adc [hl]                                      ; $68FE: $8E
    sub [hl]                                      ; $68FF: $96
    inc d                                         ; $6900: $14
    sub h                                         ; $6901: $94
    ld a, [bc]                                    ; $6902: $0A
    adc l                                         ; $6903: $8D
    sub h                                         ; $6904: $94
    adc l                                         ; $6905: $8D
    sub d                                         ; $6906: $92
    adc l                                         ; $6907: $8D
    sub c                                         ; $6908: $91
    inc d                                         ; $6909: $14
    adc e                                         ; $690A: $8B
    ld a, [bc]                                    ; $690B: $0A
    adc b                                         ; $690C: $88
    sub c                                         ; $690D: $91
    adc l                                         ; $690E: $8D
    sbc c                                         ; $690F: $99
    sub c                                         ; $6910: $91
    sbc e                                         ; $6911: $9B
    inc d                                         ; $6912: $14
    sbc c                                         ; $6913: $99
    ld a, [bc]                                    ; $6914: $0A
    sub d                                         ; $6915: $92
    sbc c                                         ; $6916: $99
    sub d                                         ; $6917: $92
    sub a                                         ; $6918: $97
    sub d                                         ; $6919: $92
    sub a                                         ; $691A: $97
    inc d                                         ; $691B: $14
    sub [hl]                                      ; $691C: $96
    ld a, [bc]                                    ; $691D: $0A
    sub c                                         ; $691E: $91
    sub a                                         ; $691F: $97
    sub c                                         ; $6920: $91
    sbc c                                         ; $6921: $99
    sub c                                         ; $6922: $91
    sub a                                         ; $6923: $97
    inc d                                         ; $6924: $14
    sub d                                         ; $6925: $92
    ld a, [bc]                                    ; $6926: $0A
    adc a                                         ; $6927: $8F
    sub d                                         ; $6928: $92
    adc a                                         ; $6929: $8F
    sub a                                         ; $692A: $97
    adc a                                         ; $692B: $8F
    sub [hl]                                      ; $692C: $96
    inc d                                         ; $692D: $14
    adc l                                         ; $692E: $8D
    ld a, [bc]                                    ; $692F: $0A
    adc d                                         ; $6930: $8A
    adc l                                         ; $6931: $8D
    adc d                                         ; $6932: $8A
    sub d                                         ; $6933: $92
    adc l                                         ; $6934: $8D
    adc a                                         ; $6935: $8F
    adc e                                         ; $6936: $8B
    sub c                                         ; $6937: $91
    adc e                                         ; $6938: $8B
    sub d                                         ; $6939: $92
    adc e                                         ; $693A: $8B
    sub [hl]                                      ; $693B: $96
    adc e                                         ; $693C: $8B
    sub [hl]                                      ; $693D: $96
    adc l                                         ; $693E: $8D
    sub h                                         ; $693F: $94
    adc l                                         ; $6940: $8D
    sub d                                         ; $6941: $92
    adc l                                         ; $6942: $8D
    sub h                                         ; $6943: $94
    adc l                                         ; $6944: $8D
    db $ED                                        ; $6945: $ED
    db $E4                                        ; $6946: $E4
    ld b, b                                       ; $6947: $40
    jp hl                                         ; $6948: $E9


    ld b, h                                       ; $6949: $44
    di                                            ; $694A: $F3
    inc b                                         ; $694B: $04
    push af                                       ; $694C: $F5
    ld [hl-], a                                   ; $694D: $32
    db $EC                                        ; $694E: $EC
    ld h, e                                       ; $694F: $63
    ld l, c                                       ; $6950: $69
    adc d                                         ; $6951: $8A
    ld a, [bc]                                    ; $6952: $0A
    adc [hl]                                      ; $6953: $8E
    sub c                                         ; $6954: $91
    sub [hl]                                      ; $6955: $96
    and d                                         ; $6956: $A2
    sbc l                                         ; $6957: $9D
    sbc d                                         ; $6958: $9A
    sub [hl]                                      ; $6959: $96
    db $EC                                        ; $695A: $EC
    ld h, e                                       ; $695B: $63
    ld l, c                                       ; $695C: $69
    pop af                                        ; $695D: $F1
    adc l                                         ; $695E: $8D
    ld d, b                                       ; $695F: $50
    push hl                                       ; $6960: $E5
    ld b, [hl]                                    ; $6961: $46
    ld l, c                                       ; $6962: $69
    sub d                                         ; $6963: $92
    inc d                                         ; $6964: $14
    sbc c                                         ; $6965: $99
    sbc c                                         ; $6966: $99
    inc d                                         ; $6967: $14
    sub d                                         ; $6968: $92
    sub c                                         ; $6969: $91
    sbc c                                         ; $696A: $99
    sbc c                                         ; $696B: $99
    inc d                                         ; $696C: $14
    sub c                                         ; $696D: $91
    adc a                                         ; $696E: $8F
    sub [hl]                                      ; $696F: $96
    sub [hl]                                      ; $6970: $96
    inc d                                         ; $6971: $14
    adc a                                         ; $6972: $8F
    adc l                                         ; $6973: $8D
    sub h                                         ; $6974: $94
    sub h                                         ; $6975: $94
    inc d                                         ; $6976: $14
    adc l                                         ; $6977: $8D
    adc e                                         ; $6978: $8B
    sub d                                         ; $6979: $92
    sub d                                         ; $697A: $92
    inc d                                         ; $697B: $14
    adc e                                         ; $697C: $8B
    adc d                                         ; $697D: $8A
    sub d                                         ; $697E: $92
    sub d                                         ; $697F: $92
    inc d                                         ; $6980: $14
    adc d                                         ; $6981: $8A
    adc b                                         ; $6982: $88
    adc a                                         ; $6983: $8F
    ld a, [bc]                                    ; $6984: $0A
    add b                                         ; $6985: $80
    adc a                                         ; $6986: $8F
    inc d                                         ; $6987: $14
    adc b                                         ; $6988: $88
    db $ED                                        ; $6989: $ED
    db $ED                                        ; $698A: $ED
    inc b                                         ; $698B: $04
    add b                                         ; $698C: $80
    inc de                                        ; $698D: $13
    and h                                         ; $698E: $A4
    ld l, c                                       ; $698F: $69
    inc c                                         ; $6990: $0C
    add c                                         ; $6991: $81
    add b                                         ; $6992: $80
    jr jr_02F_6A04                                ; $6993: $18 $6F

    ld l, d                                       ; $6995: $6A
    nop                                           ; $6996: $00
    add c                                         ; $6997: $81
    add b                                         ; $6998: $80
    dec e                                         ; $6999: $1D
    db $10                                        ; $699A: $10
    ld l, e                                       ; $699B: $6B
    inc c                                         ; $699C: $0C
    add c                                         ; $699D: $81
    add b                                         ; $699E: $80
    ld [hl+], a                                   ; $699F: $22
    add l                                         ; $69A0: $85
    ld l, e                                       ; $69A1: $6B
    nop                                           ; $69A2: $00
    add c                                         ; $69A3: $81
    db $E4                                        ; $69A4: $E4
    ld [hl], a                                    ; $69A5: $77
    jp hl                                         ; $69A6: $E9


    ld de, $80EE                                  ; $69A7: $11 $EE $80
    db $EC                                        ; $69AA: $EC
    or b                                          ; $69AB: $B0
    ld l, c                                       ; $69AC: $69
    push hl                                       ; $69AD: $E5
    and h                                         ; $69AE: $A4
    ld l, c                                       ; $69AF: $69
    sub l                                         ; $69B0: $95
    rlca                                          ; $69B1: $07
    sbc d                                         ; $69B2: $9A
    sbc h                                         ; $69B3: $9C
    ld c, $E4                                     ; $69B4: $0E $E4
    ld d, a                                       ; $69B6: $57
    pop af                                        ; $69B7: $F1
    sbc h                                         ; $69B8: $9C
    db $E4                                        ; $69B9: $E4
    ld a, b                                       ; $69BA: $78
    sub l                                         ; $69BB: $95
    rlca                                          ; $69BC: $07
    sbc d                                         ; $69BD: $9A
    sbc h                                         ; $69BE: $9C
    ld c, $95                                     ; $69BF: $0E $95
    sbc d                                         ; $69C1: $9A
    db $E4                                        ; $69C2: $E4
    ld a, b                                       ; $69C3: $78
    sbc a                                         ; $69C4: $9F
    db $E4                                        ; $69C5: $E4
    ld e, b                                       ; $69C6: $58
    pop af                                        ; $69C7: $F1
    sbc a                                         ; $69C8: $9F
    db $E4                                        ; $69C9: $E4
    ld a, b                                       ; $69CA: $78
    sbc [hl]                                      ; $69CB: $9E
    ld c, $9A                                     ; $69CC: $0E $9A
    sub l                                         ; $69CE: $95
    ld a, [hl+]                                   ; $69CF: $2A
    db $E4                                        ; $69D0: $E4
    ld e, b                                       ; $69D1: $58
    pop af                                        ; $69D2: $F1
    sub l                                         ; $69D3: $95
    inc e                                         ; $69D4: $1C
    db $E4                                        ; $69D5: $E4
    ld a, b                                       ; $69D6: $78
    sub l                                         ; $69D7: $95
    rlca                                          ; $69D8: $07
    sbc d                                         ; $69D9: $9A
    sbc h                                         ; $69DA: $9C
    ld c, $E4                                     ; $69DB: $0E $E4
    ld d, a                                       ; $69DD: $57
    pop af                                        ; $69DE: $F1
    sbc h                                         ; $69DF: $9C
    db $E4                                        ; $69E0: $E4
    ld a, b                                       ; $69E1: $78
    sub l                                         ; $69E2: $95
    rlca                                          ; $69E3: $07
    sbc d                                         ; $69E4: $9A
    sbc h                                         ; $69E5: $9C
    ld c, $95                                     ; $69E6: $0E $95
    sbc d                                         ; $69E8: $9A
    db $E4                                        ; $69E9: $E4
    ld a, b                                       ; $69EA: $78
    and e                                         ; $69EB: $A3
    db $E4                                        ; $69EC: $E4
    ld e, b                                       ; $69ED: $58
    pop af                                        ; $69EE: $F1
    and e                                         ; $69EF: $A3
    db $E4                                        ; $69F0: $E4
    ld a, b                                       ; $69F1: $78
    and c                                         ; $69F2: $A1
    ld c, $A1                                     ; $69F3: $0E $A1
    ld a, [hl+]                                   ; $69F5: $2A
    db $E4                                        ; $69F6: $E4
    ld e, b                                       ; $69F7: $58
    pop af                                        ; $69F8: $F1
    and c                                         ; $69F9: $A1
    inc e                                         ; $69FA: $1C
    db $E4                                        ; $69FB: $E4
    ld a, b                                       ; $69FC: $78
    sbc [hl]                                      ; $69FD: $9E
    rlca                                          ; $69FE: $07
    sbc a                                         ; $69FF: $9F
    db $E4                                        ; $6A00: $E4
    ld a, b                                       ; $6A01: $78
    and c                                         ; $6A02: $A1
    inc e                                         ; $6A03: $1C

jr_02F_6A04:
    db $E4                                        ; $6A04: $E4
    ld e, b                                       ; $6A05: $58
    pop af                                        ; $6A06: $F1
    and c                                         ; $6A07: $A1
    ld c, $E4                                     ; $6A08: $0E $E4
    ld a, b                                       ; $6A0A: $78
    sbc a                                         ; $6A0B: $9F
    rlca                                          ; $6A0C: $07
    sbc [hl]                                      ; $6A0D: $9E
    db $E4                                        ; $6A0E: $E4
    ld a, b                                       ; $6A0F: $78
    sbc d                                         ; $6A10: $9A
    inc e                                         ; $6A11: $1C
    db $E4                                        ; $6A12: $E4
    ld e, b                                       ; $6A13: $58
    pop af                                        ; $6A14: $F1
    sbc d                                         ; $6A15: $9A
    ld c, $E4                                     ; $6A16: $0E $E4
    ld a, b                                       ; $6A18: $78
    sbc d                                         ; $6A19: $9A
    rlca                                          ; $6A1A: $07
    sbc h                                         ; $6A1B: $9C
    db $E4                                        ; $6A1C: $E4
    ld a, b                                       ; $6A1D: $78
    sbc [hl]                                      ; $6A1E: $9E
    ld c, $E4                                     ; $6A1F: $0E $E4
    ld e, b                                       ; $6A21: $58
    pop af                                        ; $6A22: $F1
    sbc [hl]                                      ; $6A23: $9E
    db $E4                                        ; $6A24: $E4
    ld a, b                                       ; $6A25: $78
    sbc h                                         ; $6A26: $9C
    ld c, $E4                                     ; $6A27: $0E $E4
    ld e, b                                       ; $6A29: $58
    pop af                                        ; $6A2A: $F1
    sbc h                                         ; $6A2B: $9C
    db $E4                                        ; $6A2C: $E4
    ld a, b                                       ; $6A2D: $78
    sbc d                                         ; $6A2E: $9A
    ld c, $E4                                     ; $6A2F: $0E $E4
    ld e, b                                       ; $6A31: $58
    pop af                                        ; $6A32: $F1
    sbc d                                         ; $6A33: $9A
    db $E4                                        ; $6A34: $E4
    ld a, b                                       ; $6A35: $78
    sbc c                                         ; $6A36: $99
    ld c, $E4                                     ; $6A37: $0E $E4
    ld e, b                                       ; $6A39: $58
    pop af                                        ; $6A3A: $F1
    sbc c                                         ; $6A3B: $99
    db $E4                                        ; $6A3C: $E4
    ld a, b                                       ; $6A3D: $78
    sbc d                                         ; $6A3E: $9A
    inc e                                         ; $6A3F: $1C
    db $E4                                        ; $6A40: $E4
    ld e, b                                       ; $6A41: $58
    pop af                                        ; $6A42: $F1
    sbc d                                         ; $6A43: $9A
    db $E4                                        ; $6A44: $E4
    ld a, b                                       ; $6A45: $78
    sub a                                         ; $6A46: $97
    ld c, $E4                                     ; $6A47: $0E $E4
    ld e, b                                       ; $6A49: $58
    sub a                                         ; $6A4A: $97
    rlca                                          ; $6A4B: $07
    db $E4                                        ; $6A4C: $E4
    ld a, b                                       ; $6A4D: $78
    sbc c                                         ; $6A4E: $99
    ld c, $E4                                     ; $6A4F: $0E $E4
    ld e, b                                       ; $6A51: $58
    sbc c                                         ; $6A52: $99
    rlca                                          ; $6A53: $07
    db $E4                                        ; $6A54: $E4
    ld a, b                                       ; $6A55: $78

jr_02F_6A56:
    sbc d                                         ; $6A56: $9A
    ld c, $E4                                     ; $6A57: $0E $E4
    ld a, b                                       ; $6A59: $78
    sbc [hl]                                      ; $6A5A: $9E
    inc e                                         ; $6A5B: $1C
    db $E4                                        ; $6A5C: $E4
    ld e, b                                       ; $6A5D: $58
    pop af                                        ; $6A5E: $F1
    sbc [hl]                                      ; $6A5F: $9E
    db $E4                                        ; $6A60: $E4
    ld a, b                                       ; $6A61: $78
    sbc h                                         ; $6A62: $9C
    ld c, $E4                                     ; $6A63: $0E $E4
    ld e, b                                       ; $6A65: $58
    sbc h                                         ; $6A66: $9C
    db $E4                                        ; $6A67: $E4
    ld a, b                                       ; $6A68: $78
    adc [hl]                                      ; $6A69: $8E
    rlca                                          ; $6A6A: $07
    sub b                                         ; $6A6B: $90
    sub d                                         ; $6A6C: $92
    sub e                                         ; $6A6D: $93
    db $ED                                        ; $6A6E: $ED
    db $E4                                        ; $6A6F: $E4
    ld d, [hl]                                    ; $6A70: $56
    jp hl                                         ; $6A71: $E9


    ld [hl+], a                                   ; $6A72: $22
    xor $80                                       ; $6A73: $EE $80
    adc [hl]                                      ; $6A75: $8E
    rlca                                          ; $6A76: $07
    sub l                                         ; $6A77: $95
    sbc d                                         ; $6A78: $9A
    sbc [hl]                                      ; $6A79: $9E
    sbc a                                         ; $6A7A: $9F
    adc [hl]                                      ; $6A7B: $8E
    sbc [hl]                                      ; $6A7C: $9E
    adc [hl]                                      ; $6A7D: $8E
    sbc h                                         ; $6A7E: $9C
    sub l                                         ; $6A7F: $95
    sbc d                                         ; $6A80: $9A
    and c                                         ; $6A81: $A1
    and e                                         ; $6A82: $A3
    sbc d                                         ; $6A83: $9A
    sbc c                                         ; $6A84: $99
    sbc d                                         ; $6A85: $9A
    and [hl]                                      ; $6A86: $A6
    sbc [hl]                                      ; $6A87: $9E
    and c                                         ; $6A88: $A1
    sub l                                         ; $6A89: $95
    sbc d                                         ; $6A8A: $9A
    sbc [hl]                                      ; $6A8B: $9E
    sub l                                         ; $6A8C: $95
    sbc d                                         ; $6A8D: $9A
    adc [hl]                                      ; $6A8E: $8E
    sub d                                         ; $6A8F: $92
    sub l                                         ; $6A90: $95
    db $E4                                        ; $6A91: $E4
    ld [hl], $95                                  ; $6A92: $36 $95
    db $E4                                        ; $6A94: $E4
    ld d, [hl]                                    ; $6A95: $56
    sub l                                         ; $6A96: $95
    db $E4                                        ; $6A97: $E4
    ld [hl], $95                                  ; $6A98: $36 $95
    db $E4                                        ; $6A9A: $E4
    ld d, [hl]                                    ; $6A9B: $56
    sub l                                         ; $6A9C: $95
    db $E4                                        ; $6A9D: $E4
    ld [hl], $95                                  ; $6A9E: $36 $95
    db $E4                                        ; $6AA0: $E4
    ld d, [hl]                                    ; $6AA1: $56
    adc h                                         ; $6AA2: $8C
    rlca                                          ; $6AA3: $07
    sub l                                         ; $6AA4: $95
    sbc d                                         ; $6AA5: $9A
    sbc [hl]                                      ; $6AA6: $9E
    sbc a                                         ; $6AA7: $9F
    adc h                                         ; $6AA8: $8C
    sbc [hl]                                      ; $6AA9: $9E
    adc h                                         ; $6AAA: $8C
    sbc h                                         ; $6AAB: $9C
    sub l                                         ; $6AAC: $95
    sbc d                                         ; $6AAD: $9A
    and c                                         ; $6AAE: $A1
    and e                                         ; $6AAF: $A3
    sbc d                                         ; $6AB0: $9A
    sbc c                                         ; $6AB1: $99
    sbc d                                         ; $6AB2: $9A
    and [hl]                                      ; $6AB3: $A6
    sbc [hl]                                      ; $6AB4: $9E
    and c                                         ; $6AB5: $A1
    sub l                                         ; $6AB6: $95
    sbc d                                         ; $6AB7: $9A
    sbc [hl]                                      ; $6AB8: $9E
    sub l                                         ; $6AB9: $95
    sbc d                                         ; $6ABA: $9A
    adc h                                         ; $6ABB: $8C
    sub d                                         ; $6ABC: $92
    sub l                                         ; $6ABD: $95
    db $E4                                        ; $6ABE: $E4
    jr c, jr_02F_6A56                             ; $6ABF: $38 $95

    db $E4                                        ; $6AC1: $E4
    ld d, [hl]                                    ; $6AC2: $56
    sub l                                         ; $6AC3: $95
    db $E4                                        ; $6AC4: $E4
    ld [hl], $95                                  ; $6AC5: $36 $95
    db $E4                                        ; $6AC7: $E4
    ld d, [hl]                                    ; $6AC8: $56
    sub l                                         ; $6AC9: $95
    db $E4                                        ; $6ACA: $E4
    ld [hl], $95                                  ; $6ACB: $36 $95
    db $E4                                        ; $6ACD: $E4
    ld d, [hl]                                    ; $6ACE: $56
    db $EC                                        ; $6ACF: $EC
    or $6A                                        ; $6AD0: $F6 $6A
    and $03                                       ; $6AD2: $E6 $03
    db $EC                                        ; $6AD4: $EC
    or $6A                                        ; $6AD5: $F6 $6A
    and $FD                                       ; $6AD7: $E6 $FD
    sbc d                                         ; $6AD9: $9A
    and c                                         ; $6ADA: $A1
    sbc [hl]                                      ; $6ADB: $9E
    and [hl]                                      ; $6ADC: $A6
    xor d                                         ; $6ADD: $AA
    and [hl]                                      ; $6ADE: $A6
    and c                                         ; $6ADF: $A1
    sbc [hl]                                      ; $6AE0: $9E
    sub d                                         ; $6AE1: $92
    sbc c                                         ; $6AE2: $99
    sub [hl]                                      ; $6AE3: $96
    sbc [hl]                                      ; $6AE4: $9E
    and l                                         ; $6AE5: $A5
    and d                                         ; $6AE6: $A2
    sbc [hl]                                      ; $6AE7: $9E
    sbc c                                         ; $6AE8: $99
    db $EC                                        ; $6AE9: $EC
    rst RST_38                                    ; $6AEA: $FF
    ld l, d                                       ; $6AEB: $6A
    and $02                                       ; $6AEC: $E6 $02
    db $EC                                        ; $6AEE: $EC
    rst RST_38                                    ; $6AEF: $FF
    ld l, d                                       ; $6AF0: $6A
    and $FE                                       ; $6AF1: $E6 $FE
    push hl                                       ; $6AF3: $E5
    ld l, a                                       ; $6AF4: $6F
    ld l, d                                       ; $6AF5: $6A
    sub e                                         ; $6AF6: $93
    sbc d                                         ; $6AF7: $9A
    sub a                                         ; $6AF8: $97
    sbc a                                         ; $6AF9: $9F
    and e                                         ; $6AFA: $A3
    sbc a                                         ; $6AFB: $9F
    sbc d                                         ; $6AFC: $9A
    sub a                                         ; $6AFD: $97
    db $ED                                        ; $6AFE: $ED
    add a                                         ; $6AFF: $87
    adc e                                         ; $6B00: $8B
    adc [hl]                                      ; $6B01: $8E
    sub e                                         ; $6B02: $93
    sbc d                                         ; $6B03: $9A
    sub a                                         ; $6B04: $97
    sbc a                                         ; $6B05: $9F
    and e                                         ; $6B06: $A3
    and [hl]                                      ; $6B07: $A6
    and e                                         ; $6B08: $A3
    sbc a                                         ; $6B09: $9F
    sbc d                                         ; $6B0A: $9A
    sbc a                                         ; $6B0B: $9F
    sbc d                                         ; $6B0C: $9A
    sub a                                         ; $6B0D: $97
    sub d                                         ; $6B0E: $92
    db $ED                                        ; $6B0F: $ED
    db $E4                                        ; $6B10: $E4
    ld b, b                                       ; $6B11: $40
    jp hl                                         ; $6B12: $E9


    ld b, h                                       ; $6B13: $44
    di                                            ; $6B14: $F3
    inc b                                         ; $6B15: $04
    push af                                       ; $6B16: $F5
    nop                                           ; $6B17: $00
    db $EC                                        ; $6B18: $EC
    ld e, l                                       ; $6B19: $5D
    ld l, e                                       ; $6B1A: $6B
    and $FE                                       ; $6B1B: $E6 $FE
    db $EC                                        ; $6B1D: $EC
    ld e, l                                       ; $6B1E: $5D
    ld l, e                                       ; $6B1F: $6B
    and $02                                       ; $6B20: $E6 $02
    db $E4                                        ; $6B22: $E4
    ld b, b                                       ; $6B23: $40
    adc e                                         ; $6B24: $8B
    inc e                                         ; $6B25: $1C
    db $E4                                        ; $6B26: $E4
    ld h, b                                       ; $6B27: $60
    pop af                                        ; $6B28: $F1
    adc e                                         ; $6B29: $8B
    db $E4                                        ; $6B2A: $E4

jr_02F_6B2B:
    ld b, b                                       ; $6B2B: $40
    adc d                                         ; $6B2C: $8A
    inc e                                         ; $6B2D: $1C
    db $E4                                        ; $6B2E: $E4
    ld h, b                                       ; $6B2F: $60
    pop af                                        ; $6B30: $F1
    adc d                                         ; $6B31: $8A
    db $E4                                        ; $6B32: $E4
    ld b, b                                       ; $6B33: $40
    adc c                                         ; $6B34: $89
    inc e                                         ; $6B35: $1C
    db $E4                                        ; $6B36: $E4
    ld h, b                                       ; $6B37: $60

jr_02F_6B38:
    pop af                                        ; $6B38: $F1
    adc c                                         ; $6B39: $89
    db $E4                                        ; $6B3A: $E4
    ld b, b                                       ; $6B3B: $40
    adc b                                         ; $6B3C: $88
    inc e                                         ; $6B3D: $1C
    db $E4                                        ; $6B3E: $E4
    ld h, b                                       ; $6B3F: $60
    pop af                                        ; $6B40: $F1
    adc b                                         ; $6B41: $88
    db $E4                                        ; $6B42: $E4
    ld b, b                                       ; $6B43: $40
    add a                                         ; $6B44: $87
    jr c, jr_02F_6B2B                             ; $6B45: $38 $E4

    ld h, b                                       ; $6B47: $60
    pop af                                        ; $6B48: $F1
    add a                                         ; $6B49: $87
    db $E4                                        ; $6B4A: $E4
    ld b, b                                       ; $6B4B: $40
    adc c                                         ; $6B4C: $89
    ld a, [hl+]                                   ; $6B4D: $2A
    db $E4                                        ; $6B4E: $E4
    ld h, b                                       ; $6B4F: $60
    pop af                                        ; $6B50: $F1
    adc c                                         ; $6B51: $89
    jr c, jr_02F_6B38                             ; $6B52: $38 $E4

    ld b, b                                       ; $6B54: $40
    adc b                                         ; $6B55: $88
    dec b                                         ; $6B56: $05
    adc b                                         ; $6B57: $88
    adc b                                         ; $6B58: $88
    inc b                                         ; $6B59: $04
    push hl                                       ; $6B5A: $E5
    db $10                                        ; $6B5B: $10
    ld l, e                                       ; $6B5C: $6B
    db $E4                                        ; $6B5D: $E4
    ld b, b                                       ; $6B5E: $40
    adc [hl]                                      ; $6B5F: $8E
    jr c, @-$1A                                   ; $6B60: $38 $E4

    ld h, b                                       ; $6B62: $60
    pop af                                        ; $6B63: $F1
    adc [hl]                                      ; $6B64: $8E
    ld d, h                                       ; $6B65: $54
    add b                                         ; $6B66: $80
    ld a, [hl+]                                   ; $6B67: $2A
    push af                                       ; $6B68: $F5
    ld [hl-], a                                   ; $6B69: $32
    db $E4                                        ; $6B6A: $E4
    ld b, b                                       ; $6B6B: $40
    adc [hl]                                      ; $6B6C: $8E
    rlca                                          ; $6B6D: $07
    db $E4                                        ; $6B6E: $E4
    ld h, b                                       ; $6B6F: $60
    pop af                                        ; $6B70: $F1
    adc [hl]                                      ; $6B71: $8E
    db $E4                                        ; $6B72: $E4
    ld b, b                                       ; $6B73: $40
    adc [hl]                                      ; $6B74: $8E
    rlca                                          ; $6B75: $07
    db $E4                                        ; $6B76: $E4
    ld h, b                                       ; $6B77: $60
    pop af                                        ; $6B78: $F1
    adc [hl]                                      ; $6B79: $8E
    db $E4                                        ; $6B7A: $E4
    ld b, b                                       ; $6B7B: $40
    adc [hl]                                      ; $6B7C: $8E
    rlca                                          ; $6B7D: $07
    db $E4                                        ; $6B7E: $E4
    ld h, b                                       ; $6B7F: $60
    pop af                                        ; $6B80: $F1
    adc [hl]                                      ; $6B81: $8E
    push af                                       ; $6B82: $F5
    nop                                           ; $6B83: $00
    db $ED                                        ; $6B84: $ED
    jp hl                                         ; $6B85: $E9


    adc b                                         ; $6B86: $88
    db $EC                                        ; $6B87: $EC
    sub e                                         ; $6B88: $93
    ld l, e                                       ; $6B89: $6B
    db $EC                                        ; $6B8A: $EC
    sub e                                         ; $6B8B: $93
    ld l, e                                       ; $6B8C: $6B
    db $EC                                        ; $6B8D: $EC
    xor $6B                                       ; $6B8E: $EE $6B
    push hl                                       ; $6B90: $E5
    add l                                         ; $6B91: $85
    ld l, e                                       ; $6B92: $6B
    db $E4                                        ; $6B93: $E4
    ld d, a                                       ; $6B94: $57
    db $10                                        ; $6B95: $10
    ld c, $E4                                     ; $6B96: $0E $E4
    ld b, c                                       ; $6B98: $41
    ld hl, $E407                                  ; $6B99: $21 $07 $E4
    ld b, c                                       ; $6B9C: $41
    ld hl, $E407                                  ; $6B9D: $21 $07 $E4
    ld [hl], c                                    ; $6BA0: $71
    ld [hl], $07                                  ; $6BA1: $36 $07
    db $E4                                        ; $6BA3: $E4
    ld b, c                                       ; $6BA4: $41
    ld hl, $E407                                  ; $6BA5: $21 $07 $E4
    ld b, c                                       ; $6BA8: $41
    ld hl, $E407                                  ; $6BA9: $21 $07 $E4
    ld b, c                                       ; $6BAC: $41
    ld hl, $E707                                  ; $6BAD: $21 $07 $E7
    nop                                           ; $6BB0: $00
    ld [bc], a                                    ; $6BB1: $02
    sbc a                                         ; $6BB2: $9F
    ld l, e                                       ; $6BB3: $6B
    db $E4                                        ; $6BB4: $E4
    ld [hl], c                                    ; $6BB5: $71
    ld [hl], $07                                  ; $6BB6: $36 $07
    db $E4                                        ; $6BB8: $E4
    ld b, c                                       ; $6BB9: $41
    ld hl, $E407                                  ; $6BBA: $21 $07 $E4
    ld d, e                                       ; $6BBD: $53
    ld de, $E407                                  ; $6BBE: $11 $07 $E4
    ld b, c                                       ; $6BC1: $41
    ld hl, $E407                                  ; $6BC2: $21 $07 $E4
    ld [hl], c                                    ; $6BC5: $71
    ld [hl], $07                                  ; $6BC6: $36 $07
    db $E4                                        ; $6BC8: $E4
    ld b, c                                       ; $6BC9: $41
    ld hl, $E407                                  ; $6BCA: $21 $07 $E4
    ld b, c                                       ; $6BCD: $41
    ld hl, $E407                                  ; $6BCE: $21 $07 $E4
    ld b, c                                       ; $6BD1: $41
    ld hl, $E707                                  ; $6BD2: $21 $07 $E7
    nop                                           ; $6BD5: $00
    ld [bc], a                                    ; $6BD6: $02
    call nz, $E46B                                ; $6BD7: $C4 $6B $E4
    ld [hl], c                                    ; $6BDA: $71
    ld [hl], $07                                  ; $6BDB: $36 $07
    db $E4                                        ; $6BDD: $E4
    ld b, c                                       ; $6BDE: $41
    ld hl, $E407                                  ; $6BDF: $21 $07 $E4
    ld h, d                                       ; $6BE2: $62
    inc h                                         ; $6BE3: $24
    ld c, $E4                                     ; $6BE4: $0E $E4
    ld h, d                                       ; $6BE6: $62
    inc h                                         ; $6BE7: $24
    ld c, $E4                                     ; $6BE8: $0E $E4
    ld h, d                                       ; $6BEA: $62
    inc h                                         ; $6BEB: $24
    ld c, $ED                                     ; $6BEC: $0E $ED
    db $E4                                        ; $6BEE: $E4
    ld d, a                                       ; $6BEF: $57
    db $10                                        ; $6BF0: $10
    ld c, $E4                                     ; $6BF1: $0E $E4
    ld b, c                                       ; $6BF3: $41
    ld hl, $E407                                  ; $6BF4: $21 $07 $E4
    ld b, c                                       ; $6BF7: $41
    ld hl, $E407                                  ; $6BF8: $21 $07 $E4
    ld [hl], c                                    ; $6BFB: $71
    ld [hl], $07                                  ; $6BFC: $36 $07
    db $E4                                        ; $6BFE: $E4
    ld b, c                                       ; $6BFF: $41
    ld hl, $E407                                  ; $6C00: $21 $07 $E4
    ld b, c                                       ; $6C03: $41

jr_02F_6C04:
    ld hl, $E407                                  ; $6C04: $21 $07 $E4
    ld b, c                                       ; $6C07: $41
    ld hl, $E407                                  ; $6C08: $21 $07 $E4
    ld [hl], c                                    ; $6C0B: $71
    ld [hl], $07                                  ; $6C0C: $36 $07
    db $E4                                        ; $6C0E: $E4
    ld b, c                                       ; $6C0F: $41

jr_02F_6C10:
    ld hl, $E407                                  ; $6C10: $21 $07 $E4
    ld b, c                                       ; $6C13: $41
    ld hl, $E407                                  ; $6C14: $21 $07 $E4
    ld b, c                                       ; $6C17: $41
    ld hl, $E407                                  ; $6C18: $21 $07 $E4
    ld [hl], c                                    ; $6C1B: $71
    ld [hl], $07                                  ; $6C1C: $36 $07
    db $E4                                        ; $6C1E: $E4
    ld b, c                                       ; $6C1F: $41
    ld hl, $E407                                  ; $6C20: $21 $07 $E4
    ld d, e                                       ; $6C23: $53
    ld de, $E407                                  ; $6C24: $11 $07 $E4
    ld b, c                                       ; $6C27: $41
    ld hl, $E707                                  ; $6C28: $21 $07 $E7
    nop                                           ; $6C2B: $00
    inc bc                                        ; $6C2C: $03
    xor $6B                                       ; $6C2D: $EE $6B
    db $E4                                        ; $6C2F: $E4
    ld d, a                                       ; $6C30: $57
    db $10                                        ; $6C31: $10
    ld c, $E4                                     ; $6C32: $0E $E4
    ld b, c                                       ; $6C34: $41
    ld hl, $E407                                  ; $6C35: $21 $07 $E4
    ld b, c                                       ; $6C38: $41
    ld hl, $E407                                  ; $6C39: $21 $07 $E4
    ld [hl], c                                    ; $6C3C: $71
    ld [hl], $07                                  ; $6C3D: $36 $07
    db $E4                                        ; $6C3F: $E4
    ld b, c                                       ; $6C40: $41
    ld hl, $E407                                  ; $6C41: $21 $07 $E4
    ld b, c                                       ; $6C44: $41
    ld hl, $E407                                  ; $6C45: $21 $07 $E4
    ld b, c                                       ; $6C48: $41
    ld hl, $E407                                  ; $6C49: $21 $07 $E4
    ld [hl], c                                    ; $6C4C: $71
    ld [hl], $07                                  ; $6C4D: $36 $07
    db $E4                                        ; $6C4F: $E4
    ld b, c                                       ; $6C50: $41
    ld hl, $E407                                  ; $6C51: $21 $07 $E4
    ld b, c                                       ; $6C54: $41
    ld hl, $E407                                  ; $6C55: $21 $07 $E4
    ld b, c                                       ; $6C58: $41
    ld hl, $E407                                  ; $6C59: $21 $07 $E4
    ld [hl], c                                    ; $6C5C: $71
    ld [hl], $07                                  ; $6C5D: $36 $07
    db $E4                                        ; $6C5F: $E4
    ld b, c                                       ; $6C60: $41
    ld hl, $E407                                  ; $6C61: $21 $07 $E4
    ld [hl], d                                    ; $6C64: $72
    ld [hl-], a                                   ; $6C65: $32
    dec b                                         ; $6C66: $05
    db $E4                                        ; $6C67: $E4
    ld [hl], d                                    ; $6C68: $72
    ld [hl-], a                                   ; $6C69: $32
    dec b                                         ; $6C6A: $05
    db $E4                                        ; $6C6B: $E4
    ld [hl], d                                    ; $6C6C: $72
    ld [hl-], a                                   ; $6C6D: $32
    inc b                                         ; $6C6E: $04
    db $ED                                        ; $6C6F: $ED
    inc b                                         ; $6C70: $04
    add b                                         ; $6C71: $80
    inc de                                        ; $6C72: $13
    add e                                         ; $6C73: $83
    ld l, h                                       ; $6C74: $6C
    inc c                                         ; $6C75: $0C
    add c                                         ; $6C76: $81
    add b                                         ; $6C77: $80
    jr jr_02F_6C10                                ; $6C78: $18 $96

    ld l, l                                       ; $6C7A: $6D
    inc c                                         ; $6C7B: $0C
    add c                                         ; $6C7C: $81
    add b                                         ; $6C7D: $80
    dec e                                         ; $6C7E: $1D
    db $ED                                        ; $6C7F: $ED
    ld l, l                                       ; $6C80: $6D
    jr jr_02F_6C04                                ; $6C81: $18 $81

    db $E4                                        ; $6C83: $E4
    ld e, b                                       ; $6C84: $58
    jp hl                                         ; $6C85: $E9


    ld de, $C0EE                                  ; $6C86: $11 $EE $C0
    db $EC                                        ; $6C89: $EC
    ld [hl+], a                                   ; $6C8A: $22
    ld l, l                                       ; $6C8B: $6D
    db $E4                                        ; $6C8C: $E4
    ld d, a                                       ; $6C8D: $57
    add c                                         ; $6C8E: $81
    ld a, [bc]                                    ; $6C8F: $0A
    db $E4                                        ; $6C90: $E4
    scf                                           ; $6C91: $37
    add c                                         ; $6C92: $81
    db $E4                                        ; $6C93: $E4
    ld d, a                                       ; $6C94: $57
    adc b                                         ; $6C95: $88
    db $E4                                        ; $6C96: $E4
    scf                                           ; $6C97: $37
    adc b                                         ; $6C98: $88
    db $E4                                        ; $6C99: $E4
    ld d, a                                       ; $6C9A: $57
    sub b                                         ; $6C9B: $90
    db $E4                                        ; $6C9C: $E4
    scf                                           ; $6C9D: $37
    sub b                                         ; $6C9E: $90
    db $E4                                        ; $6C9F: $E4
    rla                                           ; $6CA0: $17
    sub b                                         ; $6CA1: $90
    inc d                                         ; $6CA2: $14
    db $E4                                        ; $6CA3: $E4
    ld d, a                                       ; $6CA4: $57
    add e                                         ; $6CA5: $83
    ld a, [bc]                                    ; $6CA6: $0A
    db $E4                                        ; $6CA7: $E4
    scf                                           ; $6CA8: $37
    add e                                         ; $6CA9: $83
    db $E4                                        ; $6CAA: $E4
    ld d, a                                       ; $6CAB: $57
    adc d                                         ; $6CAC: $8A
    db $E4                                        ; $6CAD: $E4
    scf                                           ; $6CAE: $37
    adc d                                         ; $6CAF: $8A
    db $E4                                        ; $6CB0: $E4
    ld d, a                                       ; $6CB1: $57
    sub d                                         ; $6CB2: $92
    db $E4                                        ; $6CB3: $E4
    scf                                           ; $6CB4: $37
    sub d                                         ; $6CB5: $92
    db $E4                                        ; $6CB6: $E4
    ld d, a                                       ; $6CB7: $57
    adc l                                         ; $6CB8: $8D
    db $E4                                        ; $6CB9: $E4
    scf                                           ; $6CBA: $37
    adc l                                         ; $6CBB: $8D
    db $E4                                        ; $6CBC: $E4
    ld d, a                                       ; $6CBD: $57
    sub [hl]                                      ; $6CBE: $96
    db $E4                                        ; $6CBF: $E4
    scf                                           ; $6CC0: $37
    sub [hl]                                      ; $6CC1: $96
    db $E4                                        ; $6CC2: $E4
    ld d, a                                       ; $6CC3: $57
    sub d                                         ; $6CC4: $92
    db $E4                                        ; $6CC5: $E4
    scf                                           ; $6CC6: $37
    sub d                                         ; $6CC7: $92
    db $E4                                        ; $6CC8: $E4
    ld d, a                                       ; $6CC9: $57
    sbc c                                         ; $6CCA: $99
    db $E4                                        ; $6CCB: $E4
    scf                                           ; $6CCC: $37
    sbc c                                         ; $6CCD: $99
    db $E4                                        ; $6CCE: $E4
    ld d, a                                       ; $6CCF: $57
    sub [hl]                                      ; $6CD0: $96
    db $E4                                        ; $6CD1: $E4
    scf                                           ; $6CD2: $37
    sub [hl]                                      ; $6CD3: $96
    db $EC                                        ; $6CD4: $EC
    ld [hl+], a                                   ; $6CD5: $22
    ld l, l                                       ; $6CD6: $6D
    db $E4                                        ; $6CD7: $E4
    ld d, a                                       ; $6CD8: $57
    add [hl]                                      ; $6CD9: $86
    ld a, [bc]                                    ; $6CDA: $0A
    db $E4                                        ; $6CDB: $E4
    scf                                           ; $6CDC: $37
    add [hl]                                      ; $6CDD: $86
    db $E4                                        ; $6CDE: $E4
    ld d, a                                       ; $6CDF: $57
    adc l                                         ; $6CE0: $8D
    db $E4                                        ; $6CE1: $E4
    scf                                           ; $6CE2: $37
    adc l                                         ; $6CE3: $8D
    db $E4                                        ; $6CE4: $E4
    ld d, a                                       ; $6CE5: $57
    sub [hl]                                      ; $6CE6: $96
    db $E4                                        ; $6CE7: $E4
    scf                                           ; $6CE8: $37
    sub [hl]                                      ; $6CE9: $96
    db $E4                                        ; $6CEA: $E4
    rla                                           ; $6CEB: $17
    sub [hl]                                      ; $6CEC: $96
    inc d                                         ; $6CED: $14
    db $E4                                        ; $6CEE: $E4
    ld d, a                                       ; $6CEF: $57
    adc b                                         ; $6CF0: $88
    ld a, [bc]                                    ; $6CF1: $0A
    db $E4                                        ; $6CF2: $E4
    scf                                           ; $6CF3: $37
    adc b                                         ; $6CF4: $88
    db $E4                                        ; $6CF5: $E4
    ld d, a                                       ; $6CF6: $57
    adc a                                         ; $6CF7: $8F
    db $E4                                        ; $6CF8: $E4
    scf                                           ; $6CF9: $37
    adc a                                         ; $6CFA: $8F
    db $E4                                        ; $6CFB: $E4
    ld d, a                                       ; $6CFC: $57
    sbc c                                         ; $6CFD: $99
    db $E4                                        ; $6CFE: $E4
    scf                                           ; $6CFF: $37
    sbc c                                         ; $6D00: $99
    db $E4                                        ; $6D01: $E4
    ld d, a                                       ; $6D02: $57
    adc a                                         ; $6D03: $8F
    db $E4                                        ; $6D04: $E4
    scf                                           ; $6D05: $37
    adc a                                         ; $6D06: $8F
    db $E4                                        ; $6D07: $E4
    ld d, a                                       ; $6D08: $57
    sub a                                         ; $6D09: $97
    db $E4                                        ; $6D0A: $E4
    scf                                           ; $6D0B: $37
    sub a                                         ; $6D0C: $97
    db $E4                                        ; $6D0D: $E4
    ld d, a                                       ; $6D0E: $57
    adc a                                         ; $6D0F: $8F
    db $E4                                        ; $6D10: $E4
    scf                                           ; $6D11: $37
    adc a                                         ; $6D12: $8F
    db $E4                                        ; $6D13: $E4
    ld d, a                                       ; $6D14: $57
    sub [hl]                                      ; $6D15: $96
    db $E4                                        ; $6D16: $E4
    scf                                           ; $6D17: $37
    sub [hl]                                      ; $6D18: $96
    db $E4                                        ; $6D19: $E4
    ld d, a                                       ; $6D1A: $57
    sub a                                         ; $6D1B: $97
    db $E4                                        ; $6D1C: $E4
    scf                                           ; $6D1D: $37
    sub a                                         ; $6D1E: $97
    push hl                                       ; $6D1F: $E5
    add e                                         ; $6D20: $83
    ld l, h                                       ; $6D21: $6C
    db $E4                                        ; $6D22: $E4
    ld d, a                                       ; $6D23: $57
    adc b                                         ; $6D24: $88
    ld a, [bc]                                    ; $6D25: $0A
    db $E4                                        ; $6D26: $E4
    scf                                           ; $6D27: $37
    adc b                                         ; $6D28: $88
    db $E4                                        ; $6D29: $E4
    ld d, a                                       ; $6D2A: $57
    adc a                                         ; $6D2B: $8F
    db $E4                                        ; $6D2C: $E4
    scf                                           ; $6D2D: $37
    adc a                                         ; $6D2E: $8F
    db $E4                                        ; $6D2F: $E4
    ld d, a                                       ; $6D30: $57
    sub a                                         ; $6D31: $97
    db $E4                                        ; $6D32: $E4
    scf                                           ; $6D33: $37
    sub a                                         ; $6D34: $97
    db $E4                                        ; $6D35: $E4
    scf                                           ; $6D36: $37
    sub a                                         ; $6D37: $97
    inc d                                         ; $6D38: $14

jr_02F_6D39:
    db $E4                                        ; $6D39: $E4
    ld d, a                                       ; $6D3A: $57
    add h                                         ; $6D3B: $84
    ld a, [bc]                                    ; $6D3C: $0A
    db $E4                                        ; $6D3D: $E4
    scf                                           ; $6D3E: $37
    add h                                         ; $6D3F: $84
    db $E4                                        ; $6D40: $E4
    ld d, a                                       ; $6D41: $57
    adc e                                         ; $6D42: $8B
    db $E4                                        ; $6D43: $E4
    scf                                           ; $6D44: $37
    adc e                                         ; $6D45: $8B
    db $E4                                        ; $6D46: $E4
    ld d, a                                       ; $6D47: $57
    sub h                                         ; $6D48: $94
    db $E4                                        ; $6D49: $E4
    scf                                           ; $6D4A: $37
    sub h                                         ; $6D4B: $94
    db $E4                                        ; $6D4C: $E4
    scf                                           ; $6D4D: $37
    sub h                                         ; $6D4E: $94
    inc d                                         ; $6D4F: $14
    db $E4                                        ; $6D50: $E4
    ld d, a                                       ; $6D51: $57
    add [hl]                                      ; $6D52: $86
    ld a, [bc]                                    ; $6D53: $0A
    db $E4                                        ; $6D54: $E4
    scf                                           ; $6D55: $37
    add [hl]                                      ; $6D56: $86
    db $E4                                        ; $6D57: $E4
    ld d, a                                       ; $6D58: $57
    adc l                                         ; $6D59: $8D
    db $E4                                        ; $6D5A: $E4
    scf                                           ; $6D5B: $37
    adc l                                         ; $6D5C: $8D
    db $E4                                        ; $6D5D: $E4
    ld d, a                                       ; $6D5E: $57
    sub [hl]                                      ; $6D5F: $96
    db $E4                                        ; $6D60: $E4
    scf                                           ; $6D61: $37
    sub [hl]                                      ; $6D62: $96
    db $E4                                        ; $6D63: $E4
    scf                                           ; $6D64: $37
    sub [hl]                                      ; $6D65: $96
    inc d                                         ; $6D66: $14
    db $E4                                        ; $6D67: $E4
    ld d, a                                       ; $6D68: $57
    add e                                         ; $6D69: $83
    ld a, [bc]                                    ; $6D6A: $0A
    db $E4                                        ; $6D6B: $E4
    scf                                           ; $6D6C: $37
    add e                                         ; $6D6D: $83
    db $E4                                        ; $6D6E: $E4
    ld d, a                                       ; $6D6F: $57
    adc e                                         ; $6D70: $8B
    db $E4                                        ; $6D71: $E4
    scf                                           ; $6D72: $37
    adc e                                         ; $6D73: $8B
    db $E4                                        ; $6D74: $E4
    ld d, a                                       ; $6D75: $57
    sub d                                         ; $6D76: $92
    db $E4                                        ; $6D77: $E4
    scf                                           ; $6D78: $37
    sub d                                         ; $6D79: $92
    db $E4                                        ; $6D7A: $E4
    scf                                           ; $6D7B: $37
    sub d                                         ; $6D7C: $92
    inc d                                         ; $6D7D: $14
    db $E4                                        ; $6D7E: $E4
    ld d, a                                       ; $6D7F: $57
    add h                                         ; $6D80: $84
    ld a, [bc]                                    ; $6D81: $0A
    db $E4                                        ; $6D82: $E4
    scf                                           ; $6D83: $37
    add h                                         ; $6D84: $84
    db $E4                                        ; $6D85: $E4
    ld d, a                                       ; $6D86: $57
    adc e                                         ; $6D87: $8B
    db $E4                                        ; $6D88: $E4
    scf                                           ; $6D89: $37
    adc e                                         ; $6D8A: $8B
    db $E4                                        ; $6D8B: $E4
    ld d, a                                       ; $6D8C: $57
    sub h                                         ; $6D8D: $94
    db $E4                                        ; $6D8E: $E4
    scf                                           ; $6D8F: $37
    sub h                                         ; $6D90: $94
    db $E4                                        ; $6D91: $E4
    scf                                           ; $6D92: $37

jr_02F_6D93:
    sub h                                         ; $6D93: $94
    inc d                                         ; $6D94: $14
    db $ED                                        ; $6D95: $ED
    db $E4                                        ; $6D96: $E4
    ld d, e                                       ; $6D97: $53

jr_02F_6D98:
    jp hl                                         ; $6D98: $E9


    ld [hl+], a                                   ; $6D99: $22
    xor $80                                       ; $6D9A: $EE $80
    db $EC                                        ; $6D9C: $EC
    and d                                         ; $6D9D: $A2
    ld l, l                                       ; $6D9E: $6D
    push hl                                       ; $6D9F: $E5

jr_02F_6DA0:
    sub [hl]                                      ; $6DA0: $96
    ld l, l                                       ; $6DA1: $6D
    add b                                         ; $6DA2: $80
    jr z, jr_02F_6D39                             ; $6DA3: $28 $94

    inc d                                         ; $6DA5: $14
    sbc c                                         ; $6DA6: $99
    sub a                                         ; $6DA7: $97
    sbc c                                         ; $6DA8: $99
    sub a                                         ; $6DA9: $97

jr_02F_6DAA:
    add b                                         ; $6DAA: $80
    add b                                         ; $6DAB: $80
    sub d                                         ; $6DAC: $92
    add b                                         ; $6DAD: $80
    sub a                                         ; $6DAE: $97
    sub [hl]                                      ; $6DAF: $96
    sub a                                         ; $6DB0: $97
    sub [hl]                                      ; $6DB1: $96
    add b                                         ; $6DB2: $80
    sub h                                         ; $6DB3: $94
    sub [hl]                                      ; $6DB4: $96
    sub a                                         ; $6DB5: $97

jr_02F_6DB6:
    add b                                         ; $6DB6: $80
    sbc c                                         ; $6DB7: $99
    sub a                                         ; $6DB8: $97

jr_02F_6DB9:
    sub h                                         ; $6DB9: $94
    add b                                         ; $6DBA: $80
    sub [hl]                                      ; $6DBB: $96
    sub d                                         ; $6DBC: $92
    and l                                         ; $6DBD: $A5
    ld a, [bc]                                    ; $6DBE: $0A
    and e                                         ; $6DBF: $A3
    and d                                         ; $6DC0: $A2

jr_02F_6DC1:
    and b                                         ; $6DC1: $A0
    sbc [hl]                                      ; $6DC2: $9E

jr_02F_6DC3:
    and b                                         ; $6DC3: $A0
    and d                                         ; $6DC4: $A2
    and e                                         ; $6DC5: $A3
    and l                                         ; $6DC6: $A5
    and d                                         ; $6DC7: $A2
    and l                                         ; $6DC8: $A5
    xor d                                         ; $6DC9: $AA
    xor h                                         ; $6DCA: $AC

jr_02F_6DCB:
    add b                                         ; $6DCB: $80
    ld e, $94                                     ; $6DCC: $1E $94

jr_02F_6DCE:
    inc d                                         ; $6DCE: $14
    sbc c                                         ; $6DCF: $99

jr_02F_6DD0:
    sub a                                         ; $6DD0: $97
    sbc c                                         ; $6DD1: $99
    sub a                                         ; $6DD2: $97
    add b                                         ; $6DD3: $80
    add b                                         ; $6DD4: $80
    sub d                                         ; $6DD5: $92
    add b                                         ; $6DD6: $80
    sub a                                         ; $6DD7: $97
    sub [hl]                                      ; $6DD8: $96
    sub a                                         ; $6DD9: $97
    sub [hl]                                      ; $6DDA: $96
    add b                                         ; $6DDB: $80
    sbc h                                         ; $6DDC: $9C
    sub a                                         ; $6DDD: $97
    sbc e                                         ; $6DDE: $9B
    sbc c                                         ; $6DDF: $99
    sub a                                         ; $6DE0: $97
    sub h                                         ; $6DE1: $94
    add b                                         ; $6DE2: $80
    sub b                                         ; $6DE3: $90
    add b                                         ; $6DE4: $80
    add b                                         ; $6DE5: $80
    sub [hl]                                      ; $6DE6: $96
    add b                                         ; $6DE7: $80
    sub h                                         ; $6DE8: $94
    add b                                         ; $6DE9: $80
    sub d                                         ; $6DEA: $92
    sub h                                         ; $6DEB: $94
    db $ED                                        ; $6DEC: $ED
    db $E4                                        ; $6DED: $E4
    ld b, b                                       ; $6DEE: $40
    jp hl                                         ; $6DEF: $E9


    ld b, h                                       ; $6DF0: $44
    di                                            ; $6DF1: $F3
    rlca                                          ; $6DF2: $07
    push af                                       ; $6DF3: $F5
    nop                                           ; $6DF4: $00
    add b                                         ; $6DF5: $80
    jr z, jr_02F_6D93                             ; $6DF6: $28 $9B

    inc d                                         ; $6DF8: $14
    sbc h                                         ; $6DF9: $9C
    sbc e                                         ; $6DFA: $9B
    jr z, jr_02F_6D98                             ; $6DFB: $28 $9B

    inc d                                         ; $6DFD: $14
    and b                                         ; $6DFE: $A0
    sbc c                                         ; $6DFF: $99
    jr z, @-$65                                   ; $6E00: $28 $99

    inc d                                         ; $6E02: $14
    sbc e                                         ; $6E03: $9B

jr_02F_6E04:
    sbc c                                         ; $6E04: $99
    jr z, jr_02F_6DA0                             ; $6E05: $28 $99

    inc d                                         ; $6E07: $14
    sbc [hl]                                      ; $6E08: $9E
    sub a                                         ; $6E09: $97
    sbc c                                         ; $6E0A: $99
    sbc e                                         ; $6E0B: $9B
    sub a                                         ; $6E0C: $97
    sbc h                                         ; $6E0D: $9C
    sbc e                                         ; $6E0E: $9B
    sub a                                         ; $6E0F: $97
    sub h                                         ; $6E10: $94
    sbc c                                         ; $6E11: $99
    jr z, jr_02F_6DAA                             ; $6E12: $28 $96

    inc d                                         ; $6E14: $14
    sub a                                         ; $6E15: $97
    sbc c                                         ; $6E16: $99
    sbc [hl]                                      ; $6E17: $9E
    jr z, jr_02F_6DB6                             ; $6E18: $28 $9C

    inc d                                         ; $6E1A: $14
    sbc e                                         ; $6E1B: $9B
    jr z, jr_02F_6DB9                             ; $6E1C: $28 $9B

    inc d                                         ; $6E1E: $14
    sbc h                                         ; $6E1F: $9C
    sbc e                                         ; $6E20: $9B
    jr z, jr_02F_6DC3                             ; $6E21: $28 $A0

jr_02F_6E23:
    inc d                                         ; $6E23: $14
    and e                                         ; $6E24: $A3
    sbc c                                         ; $6E25: $99
    jr z, jr_02F_6DC1                             ; $6E26: $28 $99

    inc d                                         ; $6E28: $14
    sbc e                                         ; $6E29: $9B
    sbc c                                         ; $6E2A: $99
    jr z, jr_02F_6DCB                             ; $6E2B: $28 $9E

    inc d                                         ; $6E2D: $14
    and d                                         ; $6E2E: $A2
    and b                                         ; $6E2F: $A0
    jr z, jr_02F_6DD0                             ; $6E30: $28 $9E

    inc d                                         ; $6E32: $14
    sbc h                                         ; $6E33: $9C
    sbc e                                         ; $6E34: $9B
    jr z, jr_02F_6DCE                             ; $6E35: $28 $97

    inc d                                         ; $6E37: $14
    sub d                                         ; $6E38: $92
    sub h                                         ; $6E39: $94
    ld a, b                                       ; $6E3A: $78
    add b                                         ; $6E3B: $80
    jr z, jr_02F_6E23                             ; $6E3C: $28 $E5

    db $ED                                        ; $6E3E: $ED
    ld l, l                                       ; $6E3F: $6D
    db $ED                                        ; $6E40: $ED
    inc b                                         ; $6E41: $04
    add b                                         ; $6E42: $80
    inc de                                        ; $6E43: $13
    ld e, d                                       ; $6E44: $5A
    ld l, [hl]                                    ; $6E45: $6E
    inc c                                         ; $6E46: $0C
    add c                                         ; $6E47: $81
    add b                                         ; $6E48: $80
    jr jr_02F_6E04                                ; $6E49: $18 $B9

    ld l, a                                       ; $6E4B: $6F
    inc c                                         ; $6E4C: $0C
    add c                                         ; $6E4D: $81
    add b                                         ; $6E4E: $80
    dec e                                         ; $6E4F: $1D
    ld a, [hl-]                                   ; $6E50: $3A

jr_02F_6E51:
    ld [hl], c                                    ; $6E51: $71
    inc c                                         ; $6E52: $0C
    add c                                         ; $6E53: $81
    add b                                         ; $6E54: $80
    ld [hl+], a                                   ; $6E55: $22
    adc d                                         ; $6E56: $8A
    ld [hl], d                                    ; $6E57: $72
    nop                                           ; $6E58: $00

jr_02F_6E59:
    add c                                         ; $6E59: $81
    db $E4                                        ; $6E5A: $E4
    ld [hl], a                                    ; $6E5B: $77
    jp hl                                         ; $6E5C: $E9


    ld de, $80EE                                  ; $6E5D: $11 $EE $80
    db $EC                                        ; $6E60: $EC

jr_02F_6E61:
    jp nz, $EE6E                                  ; $6E61: $C2 $6E $EE

    ret nz                                        ; $6E64: $C0

    db $EC                                        ; $6E65: $EC
    db $DD                                        ; $6E66: $DD
    ld l, [hl]                                    ; $6E67: $6E
    db $E4                                        ; $6E68: $E4

jr_02F_6E69:
    ld [hl], a                                    ; $6E69: $77
    sbc h                                         ; $6E6A: $9C
    jr jr_02F_6E51                                ; $6E6B: $18 $E4

    ld d, a                                       ; $6E6D: $57
    sbc h                                         ; $6E6E: $9C
    inc c                                         ; $6E6F: $0C
    db $E4                                        ; $6E70: $E4
    ld [hl], a                                    ; $6E71: $77
    sbc c                                         ; $6E72: $99
    jr jr_02F_6E59                                ; $6E73: $18 $E4

    ld d, a                                       ; $6E75: $57
    sbc c                                         ; $6E76: $99
    inc c                                         ; $6E77: $0C
    db $E4                                        ; $6E78: $E4
    ld [hl], a                                    ; $6E79: $77
    and b                                         ; $6E7A: $A0
    jr jr_02F_6E61                                ; $6E7B: $18 $E4

    ld d, a                                       ; $6E7D: $57
    and b                                         ; $6E7E: $A0
    inc c                                         ; $6E7F: $0C
    db $E4                                        ; $6E80: $E4

jr_02F_6E81:
    ld [hl], a                                    ; $6E81: $77
    sbc [hl]                                      ; $6E82: $9E
    jr jr_02F_6E69                                ; $6E83: $18 $E4

    ld d, a                                       ; $6E85: $57
    sbc [hl]                                      ; $6E86: $9E
    inc c                                         ; $6E87: $0C
    db $E4                                        ; $6E88: $E4
    ld [hl], a                                    ; $6E89: $77
    sbc h                                         ; $6E8A: $9C
    inc c                                         ; $6E8B: $0C
    db $E4                                        ; $6E8C: $E4
    ld d, a                                       ; $6E8D: $57
    sbc h                                         ; $6E8E: $9C
    db $E4                                        ; $6E8F: $E4
    ld [hl], a                                    ; $6E90: $77
    sbc [hl]                                      ; $6E91: $9E
    db $E4                                        ; $6E92: $E4

jr_02F_6E93:
    ld d, a                                       ; $6E93: $57
    sbc [hl]                                      ; $6E94: $9E
    db $EC                                        ; $6E95: $EC
    db $DD                                        ; $6E96: $DD
    ld l, [hl]                                    ; $6E97: $6E
    db $E4                                        ; $6E98: $E4
    ld [hl], a                                    ; $6E99: $77
    sbc e                                         ; $6E9A: $9B
    jr jr_02F_6E81                                ; $6E9B: $18 $E4

    ld d, a                                       ; $6E9D: $57
    sbc e                                         ; $6E9E: $9B
    ld c, b                                       ; $6E9F: $48
    db $E4                                        ; $6EA0: $E4
    ld [hl], a                                    ; $6EA1: $77
    sbc c                                         ; $6EA2: $99
    inc h                                         ; $6EA3: $24
    db $E4                                        ; $6EA4: $E4
    ld d, a                                       ; $6EA5: $57
    sbc c                                         ; $6EA6: $99
    inc c                                         ; $6EA7: $0C
    db $E4                                        ; $6EA8: $E4
    ld [hl], a                                    ; $6EA9: $77
    sbc l                                         ; $6EAA: $9D
    inc c                                         ; $6EAB: $0C
    db $E4                                        ; $6EAC: $E4
    ld d, a                                       ; $6EAD: $57
    sbc l                                         ; $6EAE: $9D
    ld b, $E4                                     ; $6EAF: $06 $E4
    ld [hl], a                                    ; $6EB1: $77
    sbc [hl]                                      ; $6EB2: $9E
    inc c                                         ; $6EB3: $0C
    db $E4                                        ; $6EB4: $E4
    ld d, a                                       ; $6EB5: $57
    sbc [hl]                                      ; $6EB6: $9E
    ld b, $E4                                     ; $6EB7: $06 $E4
    ld [hl], a                                    ; $6EB9: $77
    and b                                         ; $6EBA: $A0
    inc c                                         ; $6EBB: $0C
    db $EC                                        ; $6EBC: $EC
    ld e, e                                       ; $6EBD: $5B
    ld l, a                                       ; $6EBE: $6F
    push hl                                       ; $6EBF: $E5
    ld e, d                                       ; $6EC0: $5A
    ld l, [hl]                                    ; $6EC1: $6E
    and [hl]                                      ; $6EC2: $A6
    ld b, $9D                                     ; $6EC3: $06 $9D
    sbc a                                         ; $6EC5: $9F

jr_02F_6EC6:
    sbc l                                         ; $6EC6: $9D
    and h                                         ; $6EC7: $A4
    and d                                         ; $6EC8: $A2
    sbc a                                         ; $6EC9: $9F
    and [hl]                                      ; $6ECA: $A6
    db $E4                                        ; $6ECB: $E4
    ld d, a                                       ; $6ECC: $57
    and [hl]                                      ; $6ECD: $A6
    db $E4                                        ; $6ECE: $E4
    ld [hl], a                                    ; $6ECF: $77
    sbc l                                         ; $6ED0: $9D

jr_02F_6ED1:
    and h                                         ; $6ED1: $A4
    sbc a                                         ; $6ED2: $9F
    and d                                         ; $6ED3: $A2
    sbc l                                         ; $6ED4: $9D
    and [hl]                                      ; $6ED5: $A6
    sbc a                                         ; $6ED6: $9F
    rst RST_20                                    ; $6ED7: $E7
    nop                                           ; $6ED8: $00
    ld [$6EC2], sp                                ; $6ED9: $08 $C2 $6E
    db $ED                                        ; $6EDC: $ED
    db $E4                                        ; $6EDD: $E4
    ld [hl], a                                    ; $6EDE: $77
    sbc h                                         ; $6EDF: $9C
    jr jr_02F_6EC6                                ; $6EE0: $18 $E4

    ld d, a                                       ; $6EE2: $57
    sbc h                                         ; $6EE3: $9C
    inc c                                         ; $6EE4: $0C
    db $E4                                        ; $6EE5: $E4
    ld [hl], a                                    ; $6EE6: $77
    sbc c                                         ; $6EE7: $99
    ld b, $9B                                     ; $6EE8: $06 $9B
    sbc h                                         ; $6EEA: $9C
    jr jr_02F_6ED1                                ; $6EEB: $18 $E4

    ld d, a                                       ; $6EED: $57
    sbc h                                         ; $6EEE: $9C
    inc c                                         ; $6EEF: $0C
    db $E4                                        ; $6EF0: $E4
    ld [hl], a                                    ; $6EF1: $77
    sbc e                                         ; $6EF2: $9B
    ld b, $9C                                     ; $6EF3: $06 $9C
    sbc [hl]                                      ; $6EF5: $9E
    jr jr_02F_6E93                                ; $6EF6: $18 $9B

    sbc e                                         ; $6EF8: $9B
    inc c                                         ; $6EF9: $0C
    db $E4                                        ; $6EFA: $E4
    ld d, a                                       ; $6EFB: $57

jr_02F_6EFC:
    sbc e                                         ; $6EFC: $9B
    ld b, $E4                                     ; $6EFD: $06 $E4
    ld [hl], a                                    ; $6EFF: $77
    sbc h                                         ; $6F00: $9C
    inc c                                         ; $6F01: $0C
    db $E4                                        ; $6F02: $E4
    ld d, a                                       ; $6F03: $57
    sbc h                                         ; $6F04: $9C
    ld b, $E4                                     ; $6F05: $06 $E4
    ld [hl], a                                    ; $6F07: $77

jr_02F_6F08:
    sbc [hl]                                      ; $6F08: $9E
    inc c                                         ; $6F09: $0C
    and c                                         ; $6F0A: $A1
    inc h                                         ; $6F0B: $24
    db $E4                                        ; $6F0C: $E4
    ld a, b                                       ; $6F0D: $78
    and b                                         ; $6F0E: $A0
    ld b, $9E                                     ; $6F0F: $06 $9E
    and b                                         ; $6F11: $A0
    inc h                                         ; $6F12: $24
    db $E4                                        ; $6F13: $E4
    ld d, a                                       ; $6F14: $57
    and b                                         ; $6F15: $A0
    jr nc, jr_02F_6EFC                            ; $6F16: $30 $E4

    ld [hl], a                                    ; $6F18: $77
    sbc [hl]                                      ; $6F19: $9E
    ld b, $A0                                     ; $6F1A: $06 $A0
    sbc [hl]                                      ; $6F1C: $9E
    inc c                                         ; $6F1D: $0C
    sbc h                                         ; $6F1E: $9C
    sbc c                                         ; $6F1F: $99
    sbc e                                         ; $6F20: $9B
    sbc h                                         ; $6F21: $9C
    jr jr_02F_6F08                                ; $6F22: $18 $E4

    ld d, a                                       ; $6F24: $57
    sbc h                                         ; $6F25: $9C
    db $E4                                        ; $6F26: $E4
    ld [hl], a                                    ; $6F27: $77
    sbc c                                         ; $6F28: $99
    inc c                                         ; $6F29: $0C
    db $E4                                        ; $6F2A: $E4
    ld d, a                                       ; $6F2B: $57
    sbc c                                         ; $6F2C: $99
    ld b, $E4                                     ; $6F2D: $06 $E4
    ld [hl], a                                    ; $6F2F: $77
    sbc h                                         ; $6F30: $9C
    inc c                                         ; $6F31: $0C
    db $E4                                        ; $6F32: $E4
    ld d, a                                       ; $6F33: $57
    sbc h                                         ; $6F34: $9C
    ld b, $E4                                     ; $6F35: $06 $E4
    ld [hl], a                                    ; $6F37: $77
    and b                                         ; $6F38: $A0
    inc c                                         ; $6F39: $0C
    db $E4                                        ; $6F3A: $E4
    ld [hl], a                                    ; $6F3B: $77
    and b                                         ; $6F3C: $A0
    ld [de], a                                    ; $6F3D: $12
    db $E4                                        ; $6F3E: $E4
    ld d, a                                       ; $6F3F: $57
    and b                                         ; $6F40: $A0
    ld b, $E4                                     ; $6F41: $06 $E4
    ld [hl], a                                    ; $6F43: $77

jr_02F_6F44:
    sbc [hl]                                      ; $6F44: $9E
    ld [de], a                                    ; $6F45: $12

jr_02F_6F46:
    db $E4                                        ; $6F46: $E4
    ld d, a                                       ; $6F47: $57
    sbc [hl]                                      ; $6F48: $9E
    ld b, $E4                                     ; $6F49: $06 $E4
    ld [hl], a                                    ; $6F4B: $77

jr_02F_6F4C:
    sbc h                                         ; $6F4C: $9C
    ld [de], a                                    ; $6F4D: $12
    db $E4                                        ; $6F4E: $E4
    ld d, a                                       ; $6F4F: $57
    sbc h                                         ; $6F50: $9C
    ld b, $E4                                     ; $6F51: $06 $E4
    ld [hl], a                                    ; $6F53: $77

jr_02F_6F54:
    sbc [hl]                                      ; $6F54: $9E
    ld [de], a                                    ; $6F55: $12
    db $E4                                        ; $6F56: $E4
    ld d, a                                       ; $6F57: $57
    sbc [hl]                                      ; $6F58: $9E
    ld b, $ED                                     ; $6F59: $06 $ED
    db $E4                                        ; $6F5B: $E4
    ld [hl], a                                    ; $6F5C: $77
    and d                                         ; $6F5D: $A2
    jr jr_02F_6F44                                ; $6F5E: $18 $E4

    ld d, a                                       ; $6F60: $57
    and d                                         ; $6F61: $A2
    inc c                                         ; $6F62: $0C
    db $E4                                        ; $6F63: $E4
    ld [hl], a                                    ; $6F64: $77
    and b                                         ; $6F65: $A0
    jr jr_02F_6F4C                                ; $6F66: $18 $E4

jr_02F_6F68:
    ld d, a                                       ; $6F68: $57
    and b                                         ; $6F69: $A0
    inc c                                         ; $6F6A: $0C
    db $E4                                        ; $6F6B: $E4
    ld [hl], a                                    ; $6F6C: $77
    sbc e                                         ; $6F6D: $9B
    jr jr_02F_6F54                                ; $6F6E: $18 $E4

jr_02F_6F70:
    ld d, a                                       ; $6F70: $57
    sbc e                                         ; $6F71: $9B
    inc c                                         ; $6F72: $0C
    and d                                         ; $6F73: $A2
    and b                                         ; $6F74: $A0
    sbc e                                         ; $6F75: $9B
    and d                                         ; $6F76: $A2
    and b                                         ; $6F77: $A0

jr_02F_6F78:
    sbc e                                         ; $6F78: $9B
    and d                                         ; $6F79: $A2
    rst RST_20                                    ; $6F7A: $E7
    nop                                           ; $6F7B: $00
    ld [bc], a                                    ; $6F7C: $02
    ld e, e                                       ; $6F7D: $5B
    ld l, a                                       ; $6F7E: $6F
    db $E4                                        ; $6F7F: $E4
    ld [hl], a                                    ; $6F80: $77
    and b                                         ; $6F81: $A0
    jr jr_02F_6F68                                ; $6F82: $18 $E4

    ld d, a                                       ; $6F84: $57
    and b                                         ; $6F85: $A0
    inc c                                         ; $6F86: $0C

jr_02F_6F87:
    db $E4                                        ; $6F87: $E4
    ld [hl], a                                    ; $6F88: $77
    sbc [hl]                                      ; $6F89: $9E
    jr jr_02F_6F70                                ; $6F8A: $18 $E4

    ld d, a                                       ; $6F8C: $57
    sbc [hl]                                      ; $6F8D: $9E
    inc c                                         ; $6F8E: $0C
    db $E4                                        ; $6F8F: $E4
    ld [hl], a                                    ; $6F90: $77
    sbc c                                         ; $6F91: $99
    jr jr_02F_6F78                                ; $6F92: $18 $E4

    ld d, a                                       ; $6F94: $57
    sbc c                                         ; $6F95: $99
    inc c                                         ; $6F96: $0C
    sbc [hl]                                      ; $6F97: $9E
    sbc l                                         ; $6F98: $9D
    sbc c                                         ; $6F99: $99
    sbc [hl]                                      ; $6F9A: $9E
    sbc l                                         ; $6F9B: $9D
    sbc c                                         ; $6F9C: $99
    sbc [hl]                                      ; $6F9D: $9E
    db $E4                                        ; $6F9E: $E4
    ld [hl], a                                    ; $6F9F: $77
    sbc l                                         ; $6FA0: $9D
    jr jr_02F_6F87                                ; $6FA1: $18 $E4

    ld d, a                                       ; $6FA3: $57
    sbc l                                         ; $6FA4: $9D
    inc c                                         ; $6FA5: $0C
    db $E4                                        ; $6FA6: $E4
    ld [hl], a                                    ; $6FA7: $77
    sbc e                                         ; $6FA8: $9B
    jr jr_02F_6F46                                ; $6FA9: $18 $9B

    db $E4                                        ; $6FAB: $E4
    ld d, a                                       ; $6FAC: $57
    sbc e                                         ; $6FAD: $9B
    db $E4                                        ; $6FAE: $E4
    ld [hl], a                                    ; $6FAF: $77
    sbc e                                         ; $6FB0: $9B
    inc c                                         ; $6FB1: $0C
    sbc l                                         ; $6FB2: $9D
    sbc [hl]                                      ; $6FB3: $9E
    sbc l                                         ; $6FB4: $9D
    sbc a                                         ; $6FB5: $9F
    and c                                         ; $6FB6: $A1
    and h                                         ; $6FB7: $A4
    db $ED                                        ; $6FB8: $ED
    db $E4                                        ; $6FB9: $E4
    ld d, h                                       ; $6FBA: $54
    jp hl                                         ; $6FBB: $E9


    ld [hl+], a                                   ; $6FBC: $22
    xor $80                                       ; $6FBD: $EE $80
    db $EC                                        ; $6FBF: $EC
    inc d                                         ; $6FC0: $14
    ld [hl], b                                    ; $6FC1: $70
    db $E4                                        ; $6FC2: $E4
    ld d, d                                       ; $6FC3: $52
    jp hl                                         ; $6FC4: $E9


    ld [hl+], a                                   ; $6FC5: $22
    xor $40                                       ; $6FC6: $EE $40
    db $EC                                        ; $6FC8: $EC
    add h                                         ; $6FC9: $84
    ld [hl], b                                    ; $6FCA: $70
    adc c                                         ; $6FCB: $89
    add [hl]                                      ; $6FCC: $86
    adc l                                         ; $6FCD: $8D
    sub d                                         ; $6FCE: $92
    add b                                         ; $6FCF: $80
    adc l                                         ; $6FD0: $8D
    add b                                         ; $6FD1: $80
    adc c                                         ; $6FD2: $89
    adc a                                         ; $6FD3: $8F
    add b                                         ; $6FD4: $80
    adc e                                         ; $6FD5: $8B
    add b                                         ; $6FD6: $80
    adc a                                         ; $6FD7: $8F
    adc e                                         ; $6FD8: $8B
    adc b                                         ; $6FD9: $88
    add b                                         ; $6FDA: $80
    adc l                                         ; $6FDB: $8D
    adc c                                         ; $6FDC: $89
    sub b                                         ; $6FDD: $90
    sub l                                         ; $6FDE: $95
    add b                                         ; $6FDF: $80
    sub b                                         ; $6FE0: $90
    add b                                         ; $6FE1: $80
    adc l                                         ; $6FE2: $8D
    sub d                                         ; $6FE3: $92
    add b                                         ; $6FE4: $80
    adc a                                         ; $6FE5: $8F
    add b                                         ; $6FE6: $80
    sub d                                         ; $6FE7: $92
    adc a                                         ; $6FE8: $8F
    adc e                                         ; $6FE9: $8B
    add b                                         ; $6FEA: $80
    db $EC                                        ; $6FEB: $EC
    add h                                         ; $6FEC: $84
    ld [hl], b                                    ; $6FED: $70
    sub d                                         ; $6FEE: $92
    adc l                                         ; $6FEF: $8D
    sub h                                         ; $6FF0: $94
    sbc c                                         ; $6FF1: $99
    add b                                         ; $6FF2: $80
    sub h                                         ; $6FF3: $94
    add b                                         ; $6FF4: $80
    sub d                                         ; $6FF5: $92
    sub h                                         ; $6FF6: $94
    add b                                         ; $6FF7: $80
    sub d                                         ; $6FF8: $92
    add b                                         ; $6FF9: $80
    sub h                                         ; $6FFA: $94
    sub d                                         ; $6FFB: $92
    adc l                                         ; $6FFC: $8D
    add b                                         ; $6FFD: $80
    sub c                                         ; $6FFE: $91
    adc l                                         ; $6FFF: $8D
    sub h                                         ; $7000: $94
    sbc c                                         ; $7001: $99
    add b                                         ; $7002: $80
    sub h                                         ; $7003: $94
    add b                                         ; $7004: $80
    sub c                                         ; $7005: $91
    sub h                                         ; $7006: $94
    add b                                         ; $7007: $80
    sub c                                         ; $7008: $91
    add b                                         ; $7009: $80
    sub h                                         ; $700A: $94
    sub c                                         ; $700B: $91
    adc l                                         ; $700C: $8D
    add b                                         ; $700D: $80
    db $EC                                        ; $700E: $EC
    push hl                                       ; $700F: $E5
    ld [hl], b                                    ; $7010: $70
    push hl                                       ; $7011: $E5
    cp c                                          ; $7012: $B9
    ld l, a                                       ; $7013: $6F
    sub [hl]                                      ; $7014: $96
    ld b, $91                                     ; $7015: $06 $91
    sub e                                         ; $7017: $93
    sub c                                         ; $7018: $91
    sbc b                                         ; $7019: $98
    sub c                                         ; $701A: $91
    sub [hl]                                      ; $701B: $96
    sub c                                         ; $701C: $91
    sub [hl]                                      ; $701D: $96
    sub c                                         ; $701E: $91
    sub e                                         ; $701F: $93
    sub c                                         ; $7020: $91
    sbc b                                         ; $7021: $98
    sub c                                         ; $7022: $91
    sub e                                         ; $7023: $93
    sub c                                         ; $7024: $91
    rst RST_20                                    ; $7025: $E7
    nop                                           ; $7026: $00
    ld [bc], a                                    ; $7027: $02
    inc d                                         ; $7028: $14
    ld [hl], b                                    ; $7029: $70
    sub [hl]                                      ; $702A: $96
    sub c                                         ; $702B: $91
    sub e                                         ; $702C: $93
    sub c                                         ; $702D: $91
    sbc b                                         ; $702E: $98
    sub c                                         ; $702F: $91
    sub [hl]                                      ; $7030: $96
    sub c                                         ; $7031: $91
    sub [hl]                                      ; $7032: $96
    sub c                                         ; $7033: $91
    sub d                                         ; $7034: $92
    sub c                                         ; $7035: $91
    sbc b                                         ; $7036: $98
    sub c                                         ; $7037: $91
    sub d                                         ; $7038: $92
    sub c                                         ; $7039: $91
    sub c                                         ; $703A: $91
    add l                                         ; $703B: $85
    adc d                                         ; $703C: $8A
    adc [hl]                                      ; $703D: $8E
    sub c                                         ; $703E: $91
    adc [hl]                                      ; $703F: $8E
    sub c                                         ; $7040: $91
    sub [hl]                                      ; $7041: $96
    sub e                                         ; $7042: $93
    adc h                                         ; $7043: $8C
    sub b                                         ; $7044: $90
    sub e                                         ; $7045: $93
    sbc b                                         ; $7046: $98
    sub e                                         ; $7047: $93
    sbc b                                         ; $7048: $98
    sbc h                                         ; $7049: $9C
    sub [hl]                                      ; $704A: $96
    sub c                                         ; $704B: $91
    sub e                                         ; $704C: $93
    sub c                                         ; $704D: $91
    sbc b                                         ; $704E: $98
    sub c                                         ; $704F: $91
    sub [hl]                                      ; $7050: $96
    sub c                                         ; $7051: $91
    sub [hl]                                      ; $7052: $96
    sub c                                         ; $7053: $91
    sub e                                         ; $7054: $93
    sub c                                         ; $7055: $91
    sbc b                                         ; $7056: $98
    sub c                                         ; $7057: $91
    sub e                                         ; $7058: $93
    sub c                                         ; $7059: $91
    rst RST_20                                    ; $705A: $E7
    nop                                           ; $705B: $00
    ld [bc], a                                    ; $705C: $02
    ld c, d                                       ; $705D: $4A
    ld [hl], b                                    ; $705E: $70
    sub e                                         ; $705F: $93
    adc a                                         ; $7060: $8F
    sub c                                         ; $7061: $91
    adc a                                         ; $7062: $8F
    sub [hl]                                      ; $7063: $96
    adc a                                         ; $7064: $8F
    sub c                                         ; $7065: $91
    adc a                                         ; $7066: $8F
    sub l                                         ; $7067: $95
    sub c                                         ; $7068: $91
    sub e                                         ; $7069: $93
    sub c                                         ; $706A: $91
    sbc b                                         ; $706B: $98
    sub c                                         ; $706C: $91
    sub e                                         ; $706D: $93
    sub c                                         ; $706E: $91
    sub [hl]                                      ; $706F: $96
    sub e                                         ; $7070: $93
    sub l                                         ; $7071: $95
    sub e                                         ; $7072: $93
    sbc d                                         ; $7073: $9A
    sub e                                         ; $7074: $93
    sub l                                         ; $7075: $95
    sub e                                         ; $7076: $93
    sub c                                         ; $7077: $91
    db $E4                                        ; $7078: $E4
    inc sp                                        ; $7079: $33
    and [hl]                                      ; $707A: $A6
    sbc l                                         ; $707B: $9D
    and h                                         ; $707C: $A4
    sbc a                                         ; $707D: $9F
    and d                                         ; $707E: $A2
    sbc l                                         ; $707F: $9D
    and [hl]                                      ; $7080: $A6
    db $E4                                        ; $7081: $E4
    ld d, h                                       ; $7082: $54
    db $ED                                        ; $7083: $ED
    sub b                                         ; $7084: $90
    adc l                                         ; $7085: $8D
    sub h                                         ; $7086: $94
    sbc c                                         ; $7087: $99
    add b                                         ; $7088: $80
    sub h                                         ; $7089: $94
    add b                                         ; $708A: $80
    sub b                                         ; $708B: $90
    sub h                                         ; $708C: $94
    add b                                         ; $708D: $80
    sub b                                         ; $708E: $90
    add b                                         ; $708F: $80
    sub h                                         ; $7090: $94
    sub b                                         ; $7091: $90
    adc l                                         ; $7092: $8D
    add b                                         ; $7093: $80
    adc a                                         ; $7094: $8F
    adc e                                         ; $7095: $8B
    sub d                                         ; $7096: $92
    sub a                                         ; $7097: $97
    add b                                         ; $7098: $80
    sub d                                         ; $7099: $92
    add b                                         ; $709A: $80
    adc a                                         ; $709B: $8F
    sub d                                         ; $709C: $92
    add b                                         ; $709D: $80
    adc a                                         ; $709E: $8F
    add b                                         ; $709F: $80
    sub d                                         ; $70A0: $92
    adc a                                         ; $70A1: $8F
    adc e                                         ; $70A2: $8B
    add b                                         ; $70A3: $80
    sub h                                         ; $70A4: $94
    sub b                                         ; $70A5: $90
    sub a                                         ; $70A6: $97
    sbc h                                         ; $70A7: $9C
    add b                                         ; $70A8: $80
    sub a                                         ; $70A9: $97
    add b                                         ; $70AA: $80
    sub h                                         ; $70AB: $94
    sub a                                         ; $70AC: $97
    add b                                         ; $70AD: $80
    sub h                                         ; $70AE: $94
    add b                                         ; $70AF: $80
    sub a                                         ; $70B0: $97
    sub h                                         ; $70B1: $94
    sub b                                         ; $70B2: $90
    add b                                         ; $70B3: $80
    sub [hl]                                      ; $70B4: $96
    sub d                                         ; $70B5: $92
    sbc c                                         ; $70B6: $99
    sbc [hl]                                      ; $70B7: $9E
    add b                                         ; $70B8: $80
    sbc c                                         ; $70B9: $99
    add b                                         ; $70BA: $80
    sub [hl]                                      ; $70BB: $96
    sbc c                                         ; $70BC: $99
    add b                                         ; $70BD: $80
    sub [hl]                                      ; $70BE: $96
    add b                                         ; $70BF: $80
    sbc c                                         ; $70C0: $99
    sub [hl]                                      ; $70C1: $96
    sub d                                         ; $70C2: $92
    add b                                         ; $70C3: $80
    adc l                                         ; $70C4: $8D
    adc c                                         ; $70C5: $89
    sub b                                         ; $70C6: $90
    sub l                                         ; $70C7: $95
    add b                                         ; $70C8: $80
    sub b                                         ; $70C9: $90
    add b                                         ; $70CA: $80
    adc l                                         ; $70CB: $8D
    sub b                                         ; $70CC: $90
    add b                                         ; $70CD: $80
    adc l                                         ; $70CE: $8D
    add b                                         ; $70CF: $80
    sub b                                         ; $70D0: $90
    adc l                                         ; $70D1: $8D
    adc c                                         ; $70D2: $89
    add b                                         ; $70D3: $80
    adc a                                         ; $70D4: $8F
    adc e                                         ; $70D5: $8B
    sub d                                         ; $70D6: $92
    sub a                                         ; $70D7: $97
    add b                                         ; $70D8: $80
    sub d                                         ; $70D9: $92
    add b                                         ; $70DA: $80
    adc a                                         ; $70DB: $8F
    sub d                                         ; $70DC: $92
    add b                                         ; $70DD: $80
    adc a                                         ; $70DE: $8F
    add b                                         ; $70DF: $80
    sub d                                         ; $70E0: $92
    adc a                                         ; $70E1: $8F
    adc e                                         ; $70E2: $8B
    add b                                         ; $70E3: $80
    db $ED                                        ; $70E4: $ED
    sub a                                         ; $70E5: $97
    sub d                                         ; $70E6: $92
    rst RST_20                                    ; $70E7: $E7
    nop                                           ; $70E8: $00
    ld [$70E5], sp                                ; $70E9: $08 $E5 $70
    sub a                                         ; $70EC: $97
    sub d                                         ; $70ED: $92
    adc a                                         ; $70EE: $8F
    adc e                                         ; $70EF: $8B
    add [hl]                                      ; $70F0: $86
    adc e                                         ; $70F1: $8B
    adc a                                         ; $70F2: $8F
    sub d                                         ; $70F3: $92
    adc a                                         ; $70F4: $8F
    adc e                                         ; $70F5: $8B
    add [hl]                                      ; $70F6: $86
    add e                                         ; $70F7: $83
    add e                                         ; $70F8: $83
    add e                                         ; $70F9: $83
    add [hl]                                      ; $70FA: $86
    adc e                                         ; $70FB: $8B
    sub a                                         ; $70FC: $97
    sub h                                         ; $70FD: $94
    rst RST_20                                    ; $70FE: $E7
    nop                                           ; $70FF: $00
    ld [$70FC], sp                                ; $7100: $08 $FC $70
    sub a                                         ; $7103: $97
    sub h                                         ; $7104: $94
    adc a                                         ; $7105: $8F
    adc e                                         ; $7106: $8B

jr_02F_7107:
    adc b                                         ; $7107: $88
    adc e                                         ; $7108: $8B
    adc a                                         ; $7109: $8F
    sub h                                         ; $710A: $94
    adc a                                         ; $710B: $8F
    adc e                                         ; $710C: $8B
    adc b                                         ; $710D: $88
    add e                                         ; $710E: $83
    add e                                         ; $710F: $83
    add e                                         ; $7110: $83
    adc b                                         ; $7111: $88
    adc e                                         ; $7112: $8B
    sub [hl]                                      ; $7113: $96
    sub d                                         ; $7114: $92
    rst RST_20                                    ; $7115: $E7
    nop                                           ; $7116: $00

jr_02F_7117:
    ld [$7113], sp                                ; $7117: $08 $13 $71
    sub [hl]                                      ; $711A: $96
    sub d                                         ; $711B: $92
    adc l                                         ; $711C: $8D
    adc d                                         ; $711D: $8A
    add [hl]                                      ; $711E: $86
    adc d                                         ; $711F: $8A
    adc l                                         ; $7120: $8D
    sub d                                         ; $7121: $92
    adc l                                         ; $7122: $8D
    adc d                                         ; $7123: $8A
    add [hl]                                      ; $7124: $86
    add c                                         ; $7125: $81
    add c                                         ; $7126: $81
    add c                                         ; $7127: $81
    add [hl]                                      ; $7128: $86
    adc d                                         ; $7129: $8A
    sub [hl]                                      ; $712A: $96
    sub d                                         ; $712B: $92
    rst RST_20                                    ; $712C: $E7
    nop                                           ; $712D: $00
    add hl, bc                                    ; $712E: $09
    ld a, [hl+]                                   ; $712F: $2A
    ld [hl], c                                    ; $7130: $71
    sub d                                         ; $7131: $92
    inc c                                         ; $7132: $0C
    sub h                                         ; $7133: $94
    sub [hl]                                      ; $7134: $96
    sbc b                                         ; $7135: $98
    sbc e                                         ; $7136: $9B
    sbc l                                         ; $7137: $9D
    and c                                         ; $7138: $A1
    db $ED                                        ; $7139: $ED
    db $E4                                        ; $713A: $E4
    ld b, b                                       ; $713B: $40
    jp hl                                         ; $713C: $E9


    ld b, h                                       ; $713D: $44
    di                                            ; $713E: $F3
    inc b                                         ; $713F: $04
    push af                                       ; $7140: $F5
    nop                                           ; $7141: $00
    db $EC                                        ; $7142: $EC
    ld a, e                                       ; $7143: $7B
    ld [hl], c                                    ; $7144: $71
    db $EC                                        ; $7145: $EC
    adc h                                         ; $7146: $8C
    ld [hl], c                                    ; $7147: $71
    db $EC                                        ; $7148: $EC
    ld l, b                                       ; $7149: $68
    ld [hl], d                                    ; $714A: $72
    and $FD                                       ; $714B: $E6 $FD
    db $EC                                        ; $714D: $EC
    ld l, b                                       ; $714E: $68
    ld [hl], d                                    ; $714F: $72
    and $FE                                       ; $7150: $E6 $FE
    db $EC                                        ; $7152: $EC
    ld l, b                                       ; $7153: $68
    ld [hl], d                                    ; $7154: $72
    and $05                                       ; $7155: $E6 $05
    add e                                         ; $7157: $83
    ld b, $8F                                     ; $7158: $06 $8F
    adc a                                         ; $715A: $8F
    adc a                                         ; $715B: $8F
    add b                                         ; $715C: $80
    add b                                         ; $715D: $80

jr_02F_715E:
    adc a                                         ; $715E: $8F
    adc a                                         ; $715F: $8F
    adc a                                         ; $7160: $8F
    adc a                                         ; $7161: $8F
    add b                                         ; $7162: $80
    add b                                         ; $7163: $80
    adc a                                         ; $7164: $8F
    adc a                                         ; $7165: $8F
    adc a                                         ; $7166: $8F
    adc a                                         ; $7167: $8F
    add e                                         ; $7168: $83
    add e                                         ; $7169: $83
    adc a                                         ; $716A: $8F
    add e                                         ; $716B: $83
    add b                                         ; $716C: $80
    add b                                         ; $716D: $80
    add l                                         ; $716E: $85
    add l                                         ; $716F: $85
    sub c                                         ; $7170: $91
    add l                                         ; $7171: $85
    add b                                         ; $7172: $80
    add b                                         ; $7173: $80
    add l                                         ; $7174: $85
    add l                                         ; $7175: $85
    sub c                                         ; $7176: $91
    adc h                                         ; $7177: $8C
    push hl                                       ; $7178: $E5
    ld a, [hl-]                                   ; $7179: $3A
    ld [hl], c                                    ; $717A: $71
    add e                                         ; $717B: $83
    ld h, b                                       ; $717C: $60
    add l                                         ; $717D: $85
    add a                                         ; $717E: $87
    jr nc, jr_02F_7107                            ; $717F: $30 $86

    add l                                         ; $7181: $85
    add h                                         ; $7182: $84
    add e                                         ; $7183: $83
    ld h, b                                       ; $7184: $60
    add l                                         ; $7185: $85
    adc h                                         ; $7186: $8C
    jr nc, jr_02F_7117                            ; $7187: $30 $8E

    adc a                                         ; $7189: $8F
    add b                                         ; $718A: $80
    db $ED                                        ; $718B: $ED
    push af                                       ; $718C: $F5
    ld [hl-], a                                   ; $718D: $32
    adc l                                         ; $718E: $8D
    ld b, $8B                                     ; $718F: $06 $8B
    adc l                                         ; $7191: $8D
    add b                                         ; $7192: $80
    add b                                         ; $7193: $80
    add b                                         ; $7194: $80
    adc l                                         ; $7195: $8D
    adc l                                         ; $7196: $8D
    add b                                         ; $7197: $80
    adc e                                         ; $7198: $8B
    add b                                         ; $7199: $80
    adc l                                         ; $719A: $8D
    sub b                                         ; $719B: $90
    adc l                                         ; $719C: $8D
    ld [de], a                                    ; $719D: $12
    rst RST_20                                    ; $719E: $E7
    nop                                           ; $719F: $00
    inc bc                                        ; $71A0: $03
    adc [hl]                                      ; $71A1: $8E
    ld [hl], c                                    ; $71A2: $71
    adc l                                         ; $71A3: $8D
    ld b, $8B                                     ; $71A4: $06 $8B
    adc l                                         ; $71A6: $8D
    add b                                         ; $71A7: $80
    add b                                         ; $71A8: $80
    add b                                         ; $71A9: $80
    adc l                                         ; $71AA: $8D
    adc l                                         ; $71AB: $8D
    add b                                         ; $71AC: $80
    adc e                                         ; $71AD: $8B
    add b                                         ; $71AE: $80
    adc l                                         ; $71AF: $8D
    sub d                                         ; $71B0: $92
    adc l                                         ; $71B1: $8D
    ld [de], a                                    ; $71B2: $12
    adc c                                         ; $71B3: $89
    ld b, $88                                     ; $71B4: $06 $88
    adc c                                         ; $71B6: $89
    add b                                         ; $71B7: $80
    add b                                         ; $71B8: $80
    add b                                         ; $71B9: $80
    adc c                                         ; $71BA: $89
    adc c                                         ; $71BB: $89
    add b                                         ; $71BC: $80
    adc b                                         ; $71BD: $88
    add b                                         ; $71BE: $80
    adc c                                         ; $71BF: $89
    adc l                                         ; $71C0: $8D
    adc c                                         ; $71C1: $89
    ld [de], a                                    ; $71C2: $12
    adc e                                         ; $71C3: $8B
    ld b, $89                                     ; $71C4: $06 $89
    adc e                                         ; $71C6: $8B
    add b                                         ; $71C7: $80
    add b                                         ; $71C8: $80
    add b                                         ; $71C9: $80
    adc e                                         ; $71CA: $8B
    adc e                                         ; $71CB: $8B
    add b                                         ; $71CC: $80
    adc c                                         ; $71CD: $89
    add b                                         ; $71CE: $80
    adc e                                         ; $71CF: $8B
    adc a                                         ; $71D0: $8F
    adc e                                         ; $71D1: $8B
    ld [de], a                                    ; $71D2: $12
    push af                                       ; $71D3: $F5
    inc a                                         ; $71D4: $3C
    add [hl]                                      ; $71D5: $86
    jr jr_02F_715E                                ; $71D6: $18 $86

    inc c                                         ; $71D8: $0C
    add [hl]                                      ; $71D9: $86
    adc b                                         ; $71DA: $88
    adc b                                         ; $71DB: $88
    adc b                                         ; $71DC: $88
    adc b                                         ; $71DD: $88
    adc c                                         ; $71DE: $89
    adc c                                         ; $71DF: $89
    adc c                                         ; $71E0: $89
    adc c                                         ; $71E1: $89
    adc e                                         ; $71E2: $8B
    adc e                                         ; $71E3: $8B
    adc e                                         ; $71E4: $8B
    adc e                                         ; $71E5: $8B
    push af                                       ; $71E6: $F5
    ld [hl-], a                                   ; $71E7: $32
    adc l                                         ; $71E8: $8D
    ld b, $8B                                     ; $71E9: $06 $8B
    adc l                                         ; $71EB: $8D
    add b                                         ; $71EC: $80
    add b                                         ; $71ED: $80
    add b                                         ; $71EE: $80
    adc l                                         ; $71EF: $8D
    adc l                                         ; $71F0: $8D
    add b                                         ; $71F1: $80
    adc e                                         ; $71F2: $8B
    add b                                         ; $71F3: $80
    adc l                                         ; $71F4: $8D
    sub b                                         ; $71F5: $90
    adc l                                         ; $71F6: $8D
    ld [de], a                                    ; $71F7: $12
    adc a                                         ; $71F8: $8F
    ld b, $8B                                     ; $71F9: $06 $8B
    adc a                                         ; $71FB: $8F
    add b                                         ; $71FC: $80
    add b                                         ; $71FD: $80
    add b                                         ; $71FE: $80
    adc a                                         ; $71FF: $8F
    adc a                                         ; $7200: $8F
    add b                                         ; $7201: $80
    adc e                                         ; $7202: $8B
    add b                                         ; $7203: $80
    adc a                                         ; $7204: $8F
    sub d                                         ; $7205: $92
    adc a                                         ; $7206: $8F
    ld [de], a                                    ; $7207: $12
    sub b                                         ; $7208: $90
    ld b, $8B                                     ; $7209: $06 $8B
    sub b                                         ; $720B: $90
    add b                                         ; $720C: $80
    add b                                         ; $720D: $80
    add b                                         ; $720E: $80
    sub b                                         ; $720F: $90
    sub b                                         ; $7210: $90
    add b                                         ; $7211: $80
    adc e                                         ; $7212: $8B
    add b                                         ; $7213: $80
    sub b                                         ; $7214: $90
    sub h                                         ; $7215: $94
    sub b                                         ; $7216: $90
    ld [de], a                                    ; $7217: $12
    sub d                                         ; $7218: $92
    ld b, $8D                                     ; $7219: $06 $8D
    sub d                                         ; $721B: $92
    add b                                         ; $721C: $80
    add b                                         ; $721D: $80
    add b                                         ; $721E: $80
    sub d                                         ; $721F: $92
    sub d                                         ; $7220: $92
    add b                                         ; $7221: $80
    adc l                                         ; $7222: $8D
    add b                                         ; $7223: $80
    sub d                                         ; $7224: $92
    sub [hl]                                      ; $7225: $96
    sub d                                         ; $7226: $92
    inc c                                         ; $7227: $0C
    add [hl]                                      ; $7228: $86
    ld b, $89                                     ; $7229: $06 $89
    ld b, $88                                     ; $722B: $06 $88
    adc c                                         ; $722D: $89
    add b                                         ; $722E: $80
    add b                                         ; $722F: $80
    add b                                         ; $7230: $80
    adc c                                         ; $7231: $89
    adc c                                         ; $7232: $89
    add b                                         ; $7233: $80
    adc b                                         ; $7234: $88
    add b                                         ; $7235: $80
    adc c                                         ; $7236: $89
    adc l                                         ; $7237: $8D
    adc c                                         ; $7238: $89
    ld [de], a                                    ; $7239: $12
    adc e                                         ; $723A: $8B
    ld b, $89                                     ; $723B: $06 $89
    adc e                                         ; $723D: $8B
    add b                                         ; $723E: $80
    add b                                         ; $723F: $80
    add b                                         ; $7240: $80
    adc e                                         ; $7241: $8B
    adc e                                         ; $7242: $8B
    add b                                         ; $7243: $80
    adc c                                         ; $7244: $89
    add b                                         ; $7245: $80
    adc e                                         ; $7246: $8B
    adc a                                         ; $7247: $8F
    adc e                                         ; $7248: $8B
    ld [de], a                                    ; $7249: $12
    adc l                                         ; $724A: $8D
    ld b, $8B                                     ; $724B: $06 $8B
    adc l                                         ; $724D: $8D
    add b                                         ; $724E: $80
    add b                                         ; $724F: $80
    add b                                         ; $7250: $80
    adc l                                         ; $7251: $8D
    adc l                                         ; $7252: $8D
    add b                                         ; $7253: $80
    adc e                                         ; $7254: $8B
    add b                                         ; $7255: $80
    adc l                                         ; $7256: $8D
    sub d                                         ; $7257: $92
    adc l                                         ; $7258: $8D
    ld [de], a                                    ; $7259: $12
    adc l                                         ; $725A: $8D
    ld b, $8B                                     ; $725B: $06 $8B
    adc l                                         ; $725D: $8D
    add b                                         ; $725E: $80
    add b                                         ; $725F: $80
    add b                                         ; $7260: $80
    adc l                                         ; $7261: $8D
    adc l                                         ; $7262: $8D
    adc l                                         ; $7263: $8D
    db $10                                        ; $7264: $10
    adc a                                         ; $7265: $8F
    sub c                                         ; $7266: $91
    db $ED                                        ; $7267: $ED
    adc e                                         ; $7268: $8B
    ld b, $97                                     ; $7269: $06 $97
    sub a                                         ; $726B: $97
    sub a                                         ; $726C: $97
    add b                                         ; $726D: $80
    add b                                         ; $726E: $80
    sub a                                         ; $726F: $97
    sub a                                         ; $7270: $97
    sub a                                         ; $7271: $97
    sub a                                         ; $7272: $97
    add b                                         ; $7273: $80
    add b                                         ; $7274: $80
    sub a                                         ; $7275: $97
    sub a                                         ; $7276: $97
    sub a                                         ; $7277: $97
    sub a                                         ; $7278: $97
    adc e                                         ; $7279: $8B
    adc e                                         ; $727A: $8B
    sub a                                         ; $727B: $97
    adc e                                         ; $727C: $8B
    add b                                         ; $727D: $80
    add b                                         ; $727E: $80
    adc e                                         ; $727F: $8B
    adc e                                         ; $7280: $8B
    sub a                                         ; $7281: $97
    adc e                                         ; $7282: $8B
    add b                                         ; $7283: $80
    add b                                         ; $7284: $80
    adc e                                         ; $7285: $8B
    adc e                                         ; $7286: $8B
    sub a                                         ; $7287: $97
    adc e                                         ; $7288: $8B
    db $ED                                        ; $7289: $ED
    jp hl                                         ; $728A: $E9


    adc b                                         ; $728B: $88
    db $EC                                        ; $728C: $EC
    ld [hl], l                                    ; $728D: $75
    ld [hl], e                                    ; $728E: $73
    db $E4                                        ; $728F: $E4
    ld [hl], c                                    ; $7290: $71
    ld [hl], $0C                                  ; $7291: $36 $0C
    db $E4                                        ; $7293: $E4
    ld b, c                                       ; $7294: $41
    ld hl, $E406                                  ; $7295: $21 $06 $E4
    ld b, c                                       ; $7298: $41
    ld hl, $E406                                  ; $7299: $21 $06 $E4
    ld d, a                                       ; $729C: $57
    db $10                                        ; $729D: $10
    inc c                                         ; $729E: $0C
    db $E4                                        ; $729F: $E4
    ld b, c                                       ; $72A0: $41
    ld hl, $E406                                  ; $72A1: $21 $06 $E4
    ld b, c                                       ; $72A4: $41
    ld hl, $E406                                  ; $72A5: $21 $06 $E4
    ld [hl], c                                    ; $72A8: $71
    ld [hl], $0C                                  ; $72A9: $36 $0C
    db $E4                                        ; $72AB: $E4
    ld b, c                                       ; $72AC: $41
    ld hl, $E406                                  ; $72AD: $21 $06 $E4
    ld b, c                                       ; $72B0: $41
    ld hl, $EC06                                  ; $72B1: $21 $06 $EC
    ld [hl], l                                    ; $72B4: $75
    ld [hl], e                                    ; $72B5: $73
    db $E4                                        ; $72B6: $E4
    ld h, d                                       ; $72B7: $62
    inc h                                         ; $72B8: $24
    ld b, $E4                                     ; $72B9: $06 $E4
    ld h, d                                       ; $72BB: $62
    inc h                                         ; $72BC: $24
    ld b, $E4                                     ; $72BD: $06 $E4
    ld h, d                                       ; $72BF: $62
    inc h                                         ; $72C0: $24
    ld b, $E4                                     ; $72C1: $06 $E4
    ld h, d                                       ; $72C3: $62
    inc h                                         ; $72C4: $24
    ld b, $E4                                     ; $72C5: $06 $E4
    ld b, c                                       ; $72C7: $41
    ld hl, $EC30                                  ; $72C8: $21 $30 $EC
    call z, $EC73                                 ; $72CB: $CC $73 $EC
    ld [hl-], a                                   ; $72CE: $32
    ld [hl], h                                    ; $72CF: $74
    db $EC                                        ; $72D0: $EC
    call z, $E473                                 ; $72D1: $CC $73 $E4
    ld d, a                                       ; $72D4: $57
    db $10                                        ; $72D5: $10
    ld b, $E4                                     ; $72D6: $06 $E4
    ld [hl], c                                    ; $72D8: $71
    ld [hl], $06                                  ; $72D9: $36 $06
    db $E4                                        ; $72DB: $E4
    ld b, c                                       ; $72DC: $41
    ld hl, $E40C                                  ; $72DD: $21 $0C $E4
    ld h, d                                       ; $72E0: $62
    inc h                                         ; $72E1: $24
    inc c                                         ; $72E2: $0C
    db $E4                                        ; $72E3: $E4
    ld b, c                                       ; $72E4: $41
    ld hl, $E406                                  ; $72E5: $21 $06 $E4
    ld [hl], c                                    ; $72E8: $71
    ld [hl], $0C                                  ; $72E9: $36 $0C
    db $E4                                        ; $72EB: $E4
    ld [hl], c                                    ; $72EC: $71
    ld [hl], $06                                  ; $72ED: $36 $06
    db $E4                                        ; $72EF: $E4
    ld b, c                                       ; $72F0: $41
    ld hl, $E406                                  ; $72F1: $21 $06 $E4
    ld [hl], c                                    ; $72F4: $71
    ld [hl], $06                                  ; $72F5: $36 $06
    db $E4                                        ; $72F7: $E4
    ld h, d                                       ; $72F8: $62
    inc h                                         ; $72F9: $24
    ld b, $E4                                     ; $72FA: $06 $E4
    ld [hl], c                                    ; $72FC: $71
    ld [hl], $06                                  ; $72FD: $36 $06
    db $E4                                        ; $72FF: $E4
    ld b, c                                       ; $7300: $41
    ld hl, $E40C                                  ; $7301: $21 $0C $E4
    ld [hl], c                                    ; $7304: $71
    ld [hl], $06                                  ; $7305: $36 $06
    db $E4                                        ; $7307: $E4
    ld [hl], c                                    ; $7308: $71
    ld [hl], $06                                  ; $7309: $36 $06
    db $E4                                        ; $730B: $E4
    ld b, c                                       ; $730C: $41
    ld hl, $E40C                                  ; $730D: $21 $0C $E4
    ld h, d                                       ; $7310: $62
    inc h                                         ; $7311: $24
    inc c                                         ; $7312: $0C
    db $E4                                        ; $7313: $E4
    ld h, d                                       ; $7314: $62
    inc h                                         ; $7315: $24
    ld b, $E4                                     ; $7316: $06 $E4
    ld h, d                                       ; $7318: $62
    inc h                                         ; $7319: $24
    ld b, $E4                                     ; $731A: $06 $E4
    ld h, d                                       ; $731C: $62
    inc h                                         ; $731D: $24
    ld [$62E4], sp                                ; $731E: $08 $E4 $62
    inc h                                         ; $7321: $24
    ld [$72E4], sp                                ; $7322: $08 $E4 $72
    ld [hl-], a                                   ; $7325: $32
    ld [$72E4], sp                                ; $7326: $08 $E4 $72
    ld [hl-], a                                   ; $7329: $32
    ld [$72E4], sp                                ; $732A: $08 $E4 $72
    db $10                                        ; $732D: $10
    ld [$72E4], sp                                ; $732E: $08 $E4 $72
    db $10                                        ; $7331: $10
    ld [$60EC], sp                                ; $7332: $08 $EC $60
    ld [hl], h                                    ; $7335: $74
    db $EC                                        ; $7336: $EC
    ld h, b                                       ; $7337: $60
    ld [hl], h                                    ; $7338: $74
    db $EC                                        ; $7339: $EC
    ld h, b                                       ; $733A: $60
    ld [hl], h                                    ; $733B: $74
    db $E4                                        ; $733C: $E4
    ld [hl], c                                    ; $733D: $71
    ld [hl], $0C                                  ; $733E: $36 $0C
    db $E4                                        ; $7340: $E4
    ld b, c                                       ; $7341: $41
    ld hl, $E40C                                  ; $7342: $21 $0C $E4
    ld [hl], c                                    ; $7345: $71
    ld [hl], $0C                                  ; $7346: $36 $0C
    db $E4                                        ; $7348: $E4
    ld b, c                                       ; $7349: $41
    ld hl, $E40C                                  ; $734A: $21 $0C $E4
    ld [hl], c                                    ; $734D: $71
    ld [hl], $0C                                  ; $734E: $36 $0C
    db $E4                                        ; $7350: $E4
    ld b, c                                       ; $7351: $41
    ld hl, $E40C                                  ; $7352: $21 $0C $E4
    ld [hl], c                                    ; $7355: $71
    ld [hl], $0C                                  ; $7356: $36 $0C
    db $E4                                        ; $7358: $E4
    ld b, c                                       ; $7359: $41
    ld hl, $E40C                                  ; $735A: $21 $0C $E4
    ld [hl], c                                    ; $735D: $71
    ld [hl], $0C                                  ; $735E: $36 $0C
    db $E4                                        ; $7360: $E4
    ld h, d                                       ; $7361: $62
    inc h                                         ; $7362: $24
    inc c                                         ; $7363: $0C
    db $E4                                        ; $7364: $E4
    ld h, d                                       ; $7365: $62
    inc h                                         ; $7366: $24
    inc c                                         ; $7367: $0C
    db $E4                                        ; $7368: $E4
    ld h, d                                       ; $7369: $62
    inc h                                         ; $736A: $24
    inc c                                         ; $736B: $0C
    db $EC                                        ; $736C: $EC
    add e                                         ; $736D: $83
    ld [hl], h                                    ; $736E: $74
    db $EC                                        ; $736F: $EC
    adc l                                         ; $7370: $8D
    ld [hl], h                                    ; $7371: $74
    push hl                                       ; $7372: $E5
    adc d                                         ; $7373: $8A
    ld [hl], d                                    ; $7374: $72
    db $E4                                        ; $7375: $E4
    ld d, a                                       ; $7376: $57
    db $10                                        ; $7377: $10
    inc c                                         ; $7378: $0C
    db $E4                                        ; $7379: $E4
    ld b, c                                       ; $737A: $41
    ld hl, $E406                                  ; $737B: $21 $06 $E4
    ld b, c                                       ; $737E: $41
    ld hl, $E406                                  ; $737F: $21 $06 $E4
    ld [hl], c                                    ; $7382: $71
    ld [hl], $0C                                  ; $7383: $36 $0C
    db $E4                                        ; $7385: $E4
    ld b, c                                       ; $7386: $41
    ld hl, $E406                                  ; $7387: $21 $06 $E4
    ld b, c                                       ; $738A: $41
    ld hl, $E706                                  ; $738B: $21 $06 $E7
    nop                                           ; $738E: $00
    ld b, $81                                     ; $738F: $06 $81
    ld [hl], e                                    ; $7391: $73
    db $E4                                        ; $7392: $E4
    ld [hl], c                                    ; $7393: $71
    ld [hl], $06                                  ; $7394: $36 $06
    db $E4                                        ; $7396: $E4
    ld b, c                                       ; $7397: $41
    ld hl, $E406                                  ; $7398: $21 $06 $E4
    ld d, e                                       ; $739B: $53
    ld de, $E406                                  ; $739C: $11 $06 $E4
    ld b, c                                       ; $739F: $41
    ld hl, $E406                                  ; $73A0: $21 $06 $E4
    ld d, a                                       ; $73A3: $57
    db $10                                        ; $73A4: $10
    inc c                                         ; $73A5: $0C
    db $E4                                        ; $73A6: $E4
    ld b, c                                       ; $73A7: $41
    ld hl, $E406                                  ; $73A8: $21 $06 $E4
    ld b, c                                       ; $73AB: $41
    ld hl, $E406                                  ; $73AC: $21 $06 $E4
    ld [hl], c                                    ; $73AF: $71
    ld [hl], $0C                                  ; $73B0: $36 $0C
    db $E4                                        ; $73B2: $E4
    ld b, c                                       ; $73B3: $41
    ld hl, $E406                                  ; $73B4: $21 $06 $E4
    ld b, c                                       ; $73B7: $41
    ld hl, $E706                                  ; $73B8: $21 $06 $E7
    nop                                           ; $73BB: $00
    ld [bc], a                                    ; $73BC: $02
    and d                                         ; $73BD: $A2
    ld [hl], e                                    ; $73BE: $73
    db $E4                                        ; $73BF: $E4
    ld d, a                                       ; $73C0: $57
    db $10                                        ; $73C1: $10
    inc c                                         ; $73C2: $0C
    db $E4                                        ; $73C3: $E4
    ld b, c                                       ; $73C4: $41
    ld hl, $E406                                  ; $73C5: $21 $06 $E4
    ld b, c                                       ; $73C8: $41
    ld hl, $ED06                                  ; $73C9: $21 $06 $ED
    db $E4                                        ; $73CC: $E4
    ld d, a                                       ; $73CD: $57
    db $10                                        ; $73CE: $10
    ld b, $E4                                     ; $73CF: $06 $E4
    ld [hl], c                                    ; $73D1: $71
    ld [hl], $06                                  ; $73D2: $36 $06
    db $E4                                        ; $73D4: $E4
    ld b, c                                       ; $73D5: $41
    ld hl, $E40C                                  ; $73D6: $21 $0C $E4
    ld h, d                                       ; $73D9: $62
    inc h                                         ; $73DA: $24
    inc c                                         ; $73DB: $0C
    db $E4                                        ; $73DC: $E4
    ld b, c                                       ; $73DD: $41
    ld hl, $E406                                  ; $73DE: $21 $06 $E4
    ld [hl], c                                    ; $73E1: $71
    ld [hl], $0C                                  ; $73E2: $36 $0C
    db $E4                                        ; $73E4: $E4
    ld [hl], c                                    ; $73E5: $71
    ld [hl], $06                                  ; $73E6: $36 $06
    db $E4                                        ; $73E8: $E4
    ld b, c                                       ; $73E9: $41
    ld hl, $E406                                  ; $73EA: $21 $06 $E4
    ld [hl], c                                    ; $73ED: $71
    ld [hl], $06                                  ; $73EE: $36 $06
    db $E4                                        ; $73F0: $E4
    ld h, d                                       ; $73F1: $62
    inc h                                         ; $73F2: $24
    ld b, $E4                                     ; $73F3: $06 $E4
    ld [hl], c                                    ; $73F5: $71
    ld [hl], $06                                  ; $73F6: $36 $06
    db $E4                                        ; $73F8: $E4
    ld b, c                                       ; $73F9: $41
    ld hl, $E40C                                  ; $73FA: $21 $0C $E4
    ld [hl], c                                    ; $73FD: $71
    ld [hl], $06                                  ; $73FE: $36 $06
    db $E4                                        ; $7400: $E4
    ld [hl], c                                    ; $7401: $71
    ld [hl], $06                                  ; $7402: $36 $06
    db $E4                                        ; $7404: $E4
    ld b, c                                       ; $7405: $41
    ld hl, $E40C                                  ; $7406: $21 $0C $E4
    ld h, d                                       ; $7409: $62
    inc h                                         ; $740A: $24
    inc c                                         ; $740B: $0C
    db $E4                                        ; $740C: $E4
    ld b, c                                       ; $740D: $41
    ld hl, $E406                                  ; $740E: $21 $06 $E4
    ld [hl], c                                    ; $7411: $71
    ld [hl], $0C                                  ; $7412: $36 $0C
    db $E4                                        ; $7414: $E4
    ld [hl], c                                    ; $7415: $71
    ld [hl], $06                                  ; $7416: $36 $06
    db $E4                                        ; $7418: $E4
    ld b, c                                       ; $7419: $41
    ld hl, $E406                                  ; $741A: $21 $06 $E4
    ld [hl], c                                    ; $741D: $71
    ld [hl], $06                                  ; $741E: $36 $06
    db $E4                                        ; $7420: $E4
    ld h, d                                       ; $7421: $62
    inc h                                         ; $7422: $24
    ld b, $E4                                     ; $7423: $06 $E4
    ld [hl], c                                    ; $7425: $71
    ld [hl], $06                                  ; $7426: $36 $06
    db $E4                                        ; $7428: $E4
    ld b, c                                       ; $7429: $41
    ld hl, $E70C                                  ; $742A: $21 $0C $E7
    nop                                           ; $742D: $00
    dec b                                         ; $742E: $05
    db $FC                                        ; $742F: $FC
    ld [hl], e                                    ; $7430: $73
    db $ED                                        ; $7431: $ED
    db $E4                                        ; $7432: $E4
    ld [hl], c                                    ; $7433: $71
    ld [hl], $0C                                  ; $7434: $36 $0C
    db $E4                                        ; $7436: $E4
    ld b, c                                       ; $7437: $41
    ld hl, $E40C                                  ; $7438: $21 $0C $E4
    ld h, d                                       ; $743B: $62
    inc h                                         ; $743C: $24
    inc c                                         ; $743D: $0C
    db $E4                                        ; $743E: $E4
    ld b, c                                       ; $743F: $41
    ld hl, $E70C                                  ; $7440: $21 $0C $E7
    nop                                           ; $7443: $00
    inc bc                                        ; $7444: $03
    ld [hl-], a                                   ; $7445: $32
    ld [hl], h                                    ; $7446: $74
    db $E4                                        ; $7447: $E4
    ld [hl], c                                    ; $7448: $71
    ld [hl], $0C                                  ; $7449: $36 $0C
    db $E4                                        ; $744B: $E4
    ld [hl], c                                    ; $744C: $71
    ld [hl], $06                                  ; $744D: $36 $06
    db $E4                                        ; $744F: $E4
    ld [hl], c                                    ; $7450: $71
    ld [hl], $06                                  ; $7451: $36 $06
    db $E4                                        ; $7453: $E4
    ld h, d                                       ; $7454: $62
    inc h                                         ; $7455: $24
    ld b, $E4                                     ; $7456: $06 $E4
    ld h, d                                       ; $7458: $62
    inc h                                         ; $7459: $24
    inc c                                         ; $745A: $0C
    db $E4                                        ; $745B: $E4
    ld h, d                                       ; $745C: $62
    inc h                                         ; $745D: $24
    ld b, $ED                                     ; $745E: $06 $ED
    db $E4                                        ; $7460: $E4
    ld [hl], c                                    ; $7461: $71
    ld [hl], $0C                                  ; $7462: $36 $0C
    db $E4                                        ; $7464: $E4
    ld b, c                                       ; $7465: $41
    ld hl, $E70C                                  ; $7466: $21 $0C $E7
    nop                                           ; $7469: $00
    dec b                                         ; $746A: $05
    ld h, b                                       ; $746B: $60
    ld [hl], h                                    ; $746C: $74
    db $E4                                        ; $746D: $E4
    ld [hl], c                                    ; $746E: $71
    ld [hl], $0C                                  ; $746F: $36 $0C
    db $E4                                        ; $7471: $E4
    ld d, e                                       ; $7472: $53
    ld de, $E40C                                  ; $7473: $11 $0C $E4
    ld b, c                                       ; $7476: $41
    ld hl, $E40C                                  ; $7477: $21 $0C $E4
    ld d, e                                       ; $747A: $53
    ld de, $E70C                                  ; $747B: $11 $0C $E7
    nop                                           ; $747E: $00
    ld [bc], a                                    ; $747F: $02
    ld [hl], l                                    ; $7480: $75
    ld [hl], h                                    ; $7481: $74
    db $ED                                        ; $7482: $ED
    db $E4                                        ; $7483: $E4
    ld h, d                                       ; $7484: $62
    inc h                                         ; $7485: $24
    ld b, $E7                                     ; $7486: $06 $E7
    nop                                           ; $7488: $00
    inc b                                         ; $7489: $04
    add e                                         ; $748A: $83
    ld [hl], h                                    ; $748B: $74
    db $ED                                        ; $748C: $ED
    db $E4                                        ; $748D: $E4
    ld h, d                                       ; $748E: $62
    inc h                                         ; $748F: $24
    inc b                                         ; $7490: $04
    rst RST_20                                    ; $7491: $E7
    nop                                           ; $7492: $00
    ld b, $8D                                     ; $7493: $06 $8D
    ld [hl], h                                    ; $7495: $74
    db $ED                                        ; $7496: $ED
    inc b                                         ; $7497: $04
    add b                                         ; $7498: $80
    inc de                                        ; $7499: $13
    or b                                          ; $749A: $B0
    ld [hl], h                                    ; $749B: $74
    inc c                                         ; $749C: $0C
    add c                                         ; $749D: $81
    add b                                         ; $749E: $80
    jr jr_02F_7520                                ; $749F: $18 $7F

    ld [hl], l                                    ; $74A1: $75
    inc c                                         ; $74A2: $0C
    add c                                         ; $74A3: $81
    add b                                         ; $74A4: $80
    dec e                                         ; $74A5: $1D
    dec [hl]                                      ; $74A6: $35
    halt                                          ; $74A7: $76
    inc c                                         ; $74A8: $0C
    add c                                         ; $74A9: $81
    add b                                         ; $74AA: $80
    ld [hl+], a                                   ; $74AB: $22
    db $DD                                        ; $74AC: $DD
    halt                                          ; $74AD: $76
    nop                                           ; $74AE: $00
    add c                                         ; $74AF: $81
    db $E4                                        ; $74B0: $E4
    ld [hl], a                                    ; $74B1: $77
    jp hl                                         ; $74B2: $E9


    ld de, $80EE                                  ; $74B3: $11 $EE $80
    db $EC                                        ; $74B6: $EC
    and $74                                       ; $74B7: $E6 $74
    and $02                                       ; $74B9: $E6 $02
    db $EC                                        ; $74BB: $EC
    and $74                                       ; $74BC: $E6 $74
    and $FE                                       ; $74BE: $E6 $FE
    db $EC                                        ; $74C0: $EC
    and $74                                       ; $74C1: $E6 $74
    and $02                                       ; $74C3: $E6 $02
    db $EC                                        ; $74C5: $EC
    and $74                                       ; $74C6: $E6 $74
    and $FE                                       ; $74C8: $E6 $FE
    xor $00                                       ; $74CA: $EE $00
    db $EC                                        ; $74CC: $EC
    rst RST_38                                    ; $74CD: $FF
    ld [hl], h                                    ; $74CE: $74
    sub e                                         ; $74CF: $93
    rlca                                          ; $74D0: $07
    adc a                                         ; $74D1: $8F
    adc l                                         ; $74D2: $8D
    adc d                                         ; $74D3: $8A
    add a                                         ; $74D4: $87
    adc d                                         ; $74D5: $8A
    adc l                                         ; $74D6: $8D
    adc a                                         ; $74D7: $8F
    sub e                                         ; $74D8: $93
    adc a                                         ; $74D9: $8F
    adc l                                         ; $74DA: $8D
    sub [hl]                                      ; $74DB: $96
    sub e                                         ; $74DC: $93
    adc a                                         ; $74DD: $8F
    adc l                                         ; $74DE: $8D
    adc d                                         ; $74DF: $8A
    db $EC                                        ; $74E0: $EC
    rst RST_38                                    ; $74E1: $FF
    ld [hl], h                                    ; $74E2: $74
    push hl                                       ; $74E3: $E5
    or b                                          ; $74E4: $B0
    ld [hl], h                                    ; $74E5: $74
    db $E4                                        ; $74E6: $E4
    ld [hl], h                                    ; $74E7: $74
    adc a                                         ; $74E8: $8F
    rlca                                          ; $74E9: $07
    add b                                         ; $74EA: $80
    sub e                                         ; $74EB: $93
    add b                                         ; $74EC: $80
    sub [hl]                                      ; $74ED: $96
    add b                                         ; $74EE: $80
    sbc c                                         ; $74EF: $99
    sbc e                                         ; $74F0: $9B
    add b                                         ; $74F1: $80
    sbc e                                         ; $74F2: $9B
    sbc c                                         ; $74F3: $99
    add b                                         ; $74F4: $80
    sub [hl]                                      ; $74F5: $96
    add b                                         ; $74F6: $80
    sub e                                         ; $74F7: $93
    add b                                         ; $74F8: $80
    rst RST_20                                    ; $74F9: $E7
    nop                                           ; $74FA: $00
    ld [bc], a                                    ; $74FB: $02
    and $74                                       ; $74FC: $E6 $74
    db $ED                                        ; $74FE: $ED
    db $E4                                        ; $74FF: $E4
    ld [hl], a                                    ; $7500: $77
    and d                                         ; $7501: $A2
    inc e                                         ; $7502: $1C
    db $E4                                        ; $7503: $E4
    ld d, a                                       ; $7504: $57
    and d                                         ; $7505: $A2
    ld c, $E4                                     ; $7506: $0E $E4
    ld [hl], a                                    ; $7508: $77
    sbc l                                         ; $7509: $9D
    rlca                                          ; $750A: $07
    add b                                         ; $750B: $80
    sbc e                                         ; $750C: $9B
    sbc d                                         ; $750D: $9A
    add b                                         ; $750E: $80
    sbc e                                         ; $750F: $9B
    dec d                                         ; $7510: $15
    sbc l                                         ; $7511: $9D
    rlca                                          ; $7512: $07
    add b                                         ; $7513: $80
    sbc e                                         ; $7514: $9B
    ld c, $9A                                     ; $7515: $0E $9A
    rlca                                          ; $7517: $07
    sub [hl]                                      ; $7518: $96
    ld a, [hl+]                                   ; $7519: $2A
    db $E4                                        ; $751A: $E4
    ld d, a                                       ; $751B: $57
    sub [hl]                                      ; $751C: $96
    inc e                                         ; $751D: $1C
    add b                                         ; $751E: $80
    rlca                                          ; $751F: $07

jr_02F_7520:
    db $E4                                        ; $7520: $E4
    ld [hl], a                                    ; $7521: $77
    sub [hl]                                      ; $7522: $96
    add b                                         ; $7523: $80
    sbc d                                         ; $7524: $9A
    sub [hl]                                      ; $7525: $96
    add b                                         ; $7526: $80
    sub [hl]                                      ; $7527: $96
    dec d                                         ; $7528: $15
    sub h                                         ; $7529: $94
    rlca                                          ; $752A: $07
    add b                                         ; $752B: $80
    sub h                                         ; $752C: $94
    ld c, $96                                     ; $752D: $0E $96
    rlca                                          ; $752F: $07
    add b                                         ; $7530: $80
    sbc d                                         ; $7531: $9A
    ld c, $96                                     ; $7532: $0E $96
    rlca                                          ; $7534: $07
    add b                                         ; $7535: $80
    sbc e                                         ; $7536: $9B
    ld c, $9A                                     ; $7537: $0E $9A
    rlca                                          ; $7539: $07
    sub [hl]                                      ; $753A: $96
    ld a, [hl+]                                   ; $753B: $2A
    add b                                         ; $753C: $80
    rlca                                          ; $753D: $07
    sub h                                         ; $753E: $94
    sub [hl]                                      ; $753F: $96
    sbc d                                         ; $7540: $9A
    sub [hl]                                      ; $7541: $96
    add b                                         ; $7542: $80
    sub [hl]                                      ; $7543: $96
    sbc c                                         ; $7544: $99
    rlca                                          ; $7545: $07
    add b                                         ; $7546: $80
    sbc c                                         ; $7547: $99
    add b                                         ; $7548: $80
    sbc e                                         ; $7549: $9B
    ld c, $99                                     ; $754A: $0E $99
    rlca                                          ; $754C: $07
    add b                                         ; $754D: $80
    sbc e                                         ; $754E: $9B
    dec d                                         ; $754F: $15
    sbc l                                         ; $7550: $9D
    sub [hl]                                      ; $7551: $96
    ld c, $99                                     ; $7552: $0E $99
    rlca                                          ; $7554: $07
    add b                                         ; $7555: $80
    sbc c                                         ; $7556: $99
    add b                                         ; $7557: $80
    sbc e                                         ; $7558: $9B
    add b                                         ; $7559: $80
    sbc c                                         ; $755A: $99
    sub [hl]                                      ; $755B: $96
    add b                                         ; $755C: $80
    ld c, $96                                     ; $755D: $0E $96
    rlca                                          ; $755F: $07
    add b                                         ; $7560: $80
    sbc e                                         ; $7561: $9B
    ld c, $9D                                     ; $7562: $0E $9D
    rlca                                          ; $7564: $07
    add b                                         ; $7565: $80
    sbc e                                         ; $7566: $9B
    ld c, $9A                                     ; $7567: $0E $9A
    rlca                                          ; $7569: $07
    sub [hl]                                      ; $756A: $96
    inc e                                         ; $756B: $1C
    db $E4                                        ; $756C: $E4
    ld d, a                                       ; $756D: $57
    sub [hl]                                      ; $756E: $96
    ld a, [hl+]                                   ; $756F: $2A
    db $E4                                        ; $7570: $E4
    ld [hl], a                                    ; $7571: $77
    add b                                         ; $7572: $80
    rlca                                          ; $7573: $07
    sub h                                         ; $7574: $94
    sub [hl]                                      ; $7575: $96
    sbc d                                         ; $7576: $9A
    dec d                                         ; $7577: $15
    sub [hl]                                      ; $7578: $96
    sbc e                                         ; $7579: $9B
    sub [hl]                                      ; $757A: $96
    sbc l                                         ; $757B: $9D
    ld c, $96                                     ; $757C: $0E $96
    db $ED                                        ; $757E: $ED
    db $E4                                        ; $757F: $E4
    ld d, h                                       ; $7580: $54
    jp hl                                         ; $7581: $E9


    ld [hl+], a                                   ; $7582: $22
    xor $80                                       ; $7583: $EE $80
    add b                                         ; $7585: $80
    rlca                                          ; $7586: $07
    db $EC                                        ; $7587: $EC
    db $D3                                        ; $7588: $D3
    ld [hl], l                                    ; $7589: $75
    and $02                                       ; $758A: $E6 $02
    db $EC                                        ; $758C: $EC
    db $D3                                        ; $758D: $D3
    ld [hl], l                                    ; $758E: $75
    and $FE                                       ; $758F: $E6 $FE
    db $EC                                        ; $7591: $EC
    db $D3                                        ; $7592: $D3
    ld [hl], l                                    ; $7593: $75
    and $02                                       ; $7594: $E6 $02
    adc a                                         ; $7596: $8F
    rlca                                          ; $7597: $07
    add b                                         ; $7598: $80
    sub e                                         ; $7599: $93
    add b                                         ; $759A: $80
    sub [hl]                                      ; $759B: $96
    add b                                         ; $759C: $80
    sbc c                                         ; $759D: $99
    sbc e                                         ; $759E: $9B
    add b                                         ; $759F: $80
    sbc e                                         ; $75A0: $9B
    sbc c                                         ; $75A1: $99
    add b                                         ; $75A2: $80
    sub [hl]                                      ; $75A3: $96
    add b                                         ; $75A4: $80
    sub e                                         ; $75A5: $93
    add b                                         ; $75A6: $80
    adc a                                         ; $75A7: $8F
    rlca                                          ; $75A8: $07
    add b                                         ; $75A9: $80
    sub e                                         ; $75AA: $93
    add b                                         ; $75AB: $80
    sub [hl]                                      ; $75AC: $96
    add b                                         ; $75AD: $80
    sbc c                                         ; $75AE: $99
    sbc e                                         ; $75AF: $9B
    add b                                         ; $75B0: $80
    sbc e                                         ; $75B1: $9B
    sbc c                                         ; $75B2: $99
    add b                                         ; $75B3: $80
    sub [hl]                                      ; $75B4: $96
    add b                                         ; $75B5: $80
    sub e                                         ; $75B6: $93
    and $FE                                       ; $75B7: $E6 $FE
    db $EC                                        ; $75B9: $EC
    db $EC                                        ; $75BA: $EC
    ld [hl], l                                    ; $75BB: $75
    adc a                                         ; $75BC: $8F
    rlca                                          ; $75BD: $07
    adc d                                         ; $75BE: $8A
    adc b                                         ; $75BF: $88
    add a                                         ; $75C0: $87
    add e                                         ; $75C1: $83
    add a                                         ; $75C2: $87
    adc b                                         ; $75C3: $88
    adc d                                         ; $75C4: $8A
    adc a                                         ; $75C5: $8F
    adc d                                         ; $75C6: $8A
    adc b                                         ; $75C7: $88
    sub e                                         ; $75C8: $93
    adc a                                         ; $75C9: $8F
    adc d                                         ; $75CA: $8A
    adc b                                         ; $75CB: $88
    add a                                         ; $75CC: $87
    db $EC                                        ; $75CD: $EC
    db $EC                                        ; $75CE: $EC
    ld [hl], l                                    ; $75CF: $75
    push hl                                       ; $75D0: $E5
    ld a, a                                       ; $75D1: $7F
    ld [hl], l                                    ; $75D2: $75
    db $E4                                        ; $75D3: $E4
    ld d, h                                       ; $75D4: $54
    adc a                                         ; $75D5: $8F
    rlca                                          ; $75D6: $07
    add b                                         ; $75D7: $80
    sub e                                         ; $75D8: $93
    add b                                         ; $75D9: $80
    sub [hl]                                      ; $75DA: $96
    add b                                         ; $75DB: $80
    sbc c                                         ; $75DC: $99
    sbc e                                         ; $75DD: $9B
    add b                                         ; $75DE: $80
    sbc e                                         ; $75DF: $9B
    sbc c                                         ; $75E0: $99
    add b                                         ; $75E1: $80
    sub [hl]                                      ; $75E2: $96
    add b                                         ; $75E3: $80
    sub e                                         ; $75E4: $93
    add b                                         ; $75E5: $80
    rst RST_20                                    ; $75E6: $E7
    nop                                           ; $75E7: $00
    ld [bc], a                                    ; $75E8: $02
    db $D3                                        ; $75E9: $D3
    ld [hl], l                                    ; $75EA: $75
    db $ED                                        ; $75EB: $ED
    db $E4                                        ; $75EC: $E4
    ld h, h                                       ; $75ED: $64
    adc d                                         ; $75EE: $8A
    rlca                                          ; $75EF: $07
    add b                                         ; $75F0: $80
    adc [hl]                                      ; $75F1: $8E
    add b                                         ; $75F2: $80
    sub c                                         ; $75F3: $91
    add b                                         ; $75F4: $80
    sub h                                         ; $75F5: $94
    sub [hl]                                      ; $75F6: $96
    add b                                         ; $75F7: $80
    sub [hl]                                      ; $75F8: $96
    sub h                                         ; $75F9: $94
    add b                                         ; $75FA: $80
    sub c                                         ; $75FB: $91
    add b                                         ; $75FC: $80
    adc [hl]                                      ; $75FD: $8E
    add b                                         ; $75FE: $80
    rst RST_20                                    ; $75FF: $E7
    nop                                           ; $7600: $00
    inc b                                         ; $7601: $04
    db $EC                                        ; $7602: $EC
    ld [hl], l                                    ; $7603: $75
    db $E4                                        ; $7604: $E4
    ld h, h                                       ; $7605: $64
    adc a                                         ; $7606: $8F
    rlca                                          ; $7607: $07
    add b                                         ; $7608: $80
    sub e                                         ; $7609: $93
    add b                                         ; $760A: $80
    sub [hl]                                      ; $760B: $96
    add b                                         ; $760C: $80
    sbc c                                         ; $760D: $99
    sbc e                                         ; $760E: $9B
    add b                                         ; $760F: $80
    sbc e                                         ; $7610: $9B
    sbc c                                         ; $7611: $99
    add b                                         ; $7612: $80
    sub [hl]                                      ; $7613: $96
    add b                                         ; $7614: $80
    sub e                                         ; $7615: $93
    add b                                         ; $7616: $80
    rst RST_20                                    ; $7617: $E7
    nop                                           ; $7618: $00
    ld [bc], a                                    ; $7619: $02
    inc b                                         ; $761A: $04
    halt                                          ; $761B: $76
    db $E4                                        ; $761C: $E4
    ld h, h                                       ; $761D: $64
    adc d                                         ; $761E: $8A
    rlca                                          ; $761F: $07
    add b                                         ; $7620: $80
    adc [hl]                                      ; $7621: $8E
    add b                                         ; $7622: $80
    sub c                                         ; $7623: $91
    add b                                         ; $7624: $80
    sub h                                         ; $7625: $94
    sub [hl]                                      ; $7626: $96
    add b                                         ; $7627: $80
    sub [hl]                                      ; $7628: $96
    sub h                                         ; $7629: $94
    add b                                         ; $762A: $80
    sub c                                         ; $762B: $91
    add b                                         ; $762C: $80
    adc [hl]                                      ; $762D: $8E
    add b                                         ; $762E: $80
    rst RST_20                                    ; $762F: $E7
    nop                                           ; $7630: $00
    ld [bc], a                                    ; $7631: $02
    inc e                                         ; $7632: $1C
    halt                                          ; $7633: $76
    db $ED                                        ; $7634: $ED
    db $E4                                        ; $7635: $E4
    ld b, b                                       ; $7636: $40
    jp hl                                         ; $7637: $E9


    ld b, h                                       ; $7638: $44
    di                                            ; $7639: $F3
    ld [bc], a                                    ; $763A: $02
    push af                                       ; $763B: $F5
    ld a, [bc]                                    ; $763C: $0A
    db $EC                                        ; $763D: $EC
    ld [hl], h                                    ; $763E: $74
    halt                                          ; $763F: $76
    db $EC                                        ; $7640: $EC
    cp e                                          ; $7641: $BB
    halt                                          ; $7642: $76
    db $EC                                        ; $7643: $EC
    cp e                                          ; $7644: $BB
    halt                                          ; $7645: $76
    and $05                                       ; $7646: $E6 $05
    db $EC                                        ; $7648: $EC
    cp e                                          ; $7649: $BB
    halt                                          ; $764A: $76
    and $FB                                       ; $764B: $E6 $FB
    db $EC                                        ; $764D: $EC
    cp e                                          ; $764E: $BB
    halt                                          ; $764F: $76
    adc a                                         ; $7650: $8F
    rlca                                          ; $7651: $07
    adc a                                         ; $7652: $8F
    sub e                                         ; $7653: $93
    adc a                                         ; $7654: $8F
    adc l                                         ; $7655: $8D
    adc a                                         ; $7656: $8F
    add b                                         ; $7657: $80
    adc a                                         ; $7658: $8F
    add b                                         ; $7659: $80
    adc a                                         ; $765A: $8F
    adc l                                         ; $765B: $8D
    adc a                                         ; $765C: $8F
    sub e                                         ; $765D: $93
    sub e                                         ; $765E: $93
    adc a                                         ; $765F: $8F
    adc l                                         ; $7660: $8D
    db $EC                                        ; $7661: $EC
    cp e                                          ; $7662: $BB
    halt                                          ; $7663: $76
    db $EC                                        ; $7664: $EC
    cp e                                          ; $7665: $BB
    halt                                          ; $7666: $76
    and $05                                       ; $7667: $E6 $05
    db $EC                                        ; $7669: $EC
    cp e                                          ; $766A: $BB
    halt                                          ; $766B: $76
    and $FB                                       ; $766C: $E6 $FB
    db $EC                                        ; $766E: $EC
    cp e                                          ; $766F: $BB
    halt                                          ; $7670: $76
    push hl                                       ; $7671: $E5
    dec [hl]                                      ; $7672: $35
    halt                                          ; $7673: $76
    adc a                                         ; $7674: $8F
    rlca                                          ; $7675: $07
    adc a                                         ; $7676: $8F
    sub e                                         ; $7677: $93
    adc a                                         ; $7678: $8F
    adc l                                         ; $7679: $8D
    adc a                                         ; $767A: $8F
    add b                                         ; $767B: $80
    adc a                                         ; $767C: $8F
    add b                                         ; $767D: $80
    adc a                                         ; $767E: $8F
    adc l                                         ; $767F: $8D
    adc a                                         ; $7680: $8F
    sub e                                         ; $7681: $93
    sub e                                         ; $7682: $93
    adc a                                         ; $7683: $8F
    adc l                                         ; $7684: $8D
    adc a                                         ; $7685: $8F
    adc a                                         ; $7686: $8F
    sub e                                         ; $7687: $93
    adc a                                         ; $7688: $8F
    adc l                                         ; $7689: $8D
    adc a                                         ; $768A: $8F
    add b                                         ; $768B: $80
    adc a                                         ; $768C: $8F
    add b                                         ; $768D: $80
    adc a                                         ; $768E: $8F
    sub e                                         ; $768F: $93
    adc a                                         ; $7690: $8F
    add b                                         ; $7691: $80
    adc a                                         ; $7692: $8F
    adc a                                         ; $7693: $8F
    add b                                         ; $7694: $80
    sub c                                         ; $7695: $91
    sub c                                         ; $7696: $91
    sub l                                         ; $7697: $95
    sub c                                         ; $7698: $91
    adc a                                         ; $7699: $8F
    sub c                                         ; $769A: $91
    add b                                         ; $769B: $80
    sub c                                         ; $769C: $91
    add b                                         ; $769D: $80
    sub c                                         ; $769E: $91
    sub l                                         ; $769F: $95
    sub c                                         ; $76A0: $91
    adc a                                         ; $76A1: $8F
    sub c                                         ; $76A2: $91
    adc a                                         ; $76A3: $8F
    sub c                                         ; $76A4: $91
    sub c                                         ; $76A5: $91
    sub c                                         ; $76A6: $91
    sub l                                         ; $76A7: $95
    sub c                                         ; $76A8: $91
    adc a                                         ; $76A9: $8F
    sub c                                         ; $76AA: $91
    sub l                                         ; $76AB: $95
    sbc b                                         ; $76AC: $98
    add b                                         ; $76AD: $80
    sbc b                                         ; $76AE: $98
    sub l                                         ; $76AF: $95
    sub c                                         ; $76B0: $91
    adc a                                         ; $76B1: $8F
    sub c                                         ; $76B2: $91
    add b                                         ; $76B3: $80
    sub b                                         ; $76B4: $90
    rst RST_20                                    ; $76B5: $E7
    nop                                           ; $76B6: $00
    ld [bc], a                                    ; $76B7: $02
    ld [hl], h                                    ; $76B8: $74
    halt                                          ; $76B9: $76
    db $ED                                        ; $76BA: $ED
    adc d                                         ; $76BB: $8A
    rlca                                          ; $76BC: $07
    adc d                                         ; $76BD: $8A
    adc [hl]                                      ; $76BE: $8E
    adc d                                         ; $76BF: $8A
    adc b                                         ; $76C0: $88
    adc d                                         ; $76C1: $8A
    add b                                         ; $76C2: $80
    adc d                                         ; $76C3: $8A
    add b                                         ; $76C4: $80
    adc d                                         ; $76C5: $8A
    adc b                                         ; $76C6: $88
    adc d                                         ; $76C7: $8A
    adc [hl]                                      ; $76C8: $8E
    adc [hl]                                      ; $76C9: $8E
    adc d                                         ; $76CA: $8A
    adc b                                         ; $76CB: $88
    adc d                                         ; $76CC: $8A
    adc d                                         ; $76CD: $8A
    adc [hl]                                      ; $76CE: $8E
    adc d                                         ; $76CF: $8A
    adc b                                         ; $76D0: $88
    adc d                                         ; $76D1: $8A
    add b                                         ; $76D2: $80
    adc d                                         ; $76D3: $8A
    add b                                         ; $76D4: $80
    adc d                                         ; $76D5: $8A
    adc [hl]                                      ; $76D6: $8E
    adc d                                         ; $76D7: $8A
    add b                                         ; $76D8: $80
    adc d                                         ; $76D9: $8A
    adc d                                         ; $76DA: $8A
    add b                                         ; $76DB: $80
    db $ED                                        ; $76DC: $ED
    jp hl                                         ; $76DD: $E9


    adc b                                         ; $76DE: $88
    db $EC                                        ; $76DF: $EC
    inc b                                         ; $76E0: $04
    ld [hl], a                                    ; $76E1: $77
    db $E4                                        ; $76E2: $E4
    ld [hl], c                                    ; $76E3: $71
    ld [hl], $0E                                  ; $76E4: $36 $0E
    db $E4                                        ; $76E6: $E4
    ld b, c                                       ; $76E7: $41
    ld hl, $E41C                                  ; $76E8: $21 $1C $E4
    ld b, c                                       ; $76EB: $41
    ld hl, $E41C                                  ; $76EC: $21 $1C $E4
    ld b, c                                       ; $76EF: $41
    ld hl, $E40E                                  ; $76F0: $21 $0E $E4
    ld h, d                                       ; $76F3: $62
    inc h                                         ; $76F4: $24
    rlca                                          ; $76F5: $07
    db $E4                                        ; $76F6: $E4
    ld h, d                                       ; $76F7: $62
    inc h                                         ; $76F8: $24
    rlca                                          ; $76F9: $07
    db $E4                                        ; $76FA: $E4
    ld d, e                                       ; $76FB: $53
    ld de, $EC0E                                  ; $76FC: $11 $0E $EC
    ld [hl+], a                                   ; $76FF: $22
    ld [hl], a                                    ; $7700: $77
    push hl                                       ; $7701: $E5
    db $DD                                        ; $7702: $DD
    halt                                          ; $7703: $76
    db $E4                                        ; $7704: $E4
    ld [hl], c                                    ; $7705: $71
    ld [hl], $0E                                  ; $7706: $36 $0E
    db $E4                                        ; $7708: $E4
    ld b, c                                       ; $7709: $41
    ld hl, $E407                                  ; $770A: $21 $07 $E4
    ld b, c                                       ; $770D: $41
    ld hl, $E407                                  ; $770E: $21 $07 $E4
    ld h, d                                       ; $7711: $62
    inc h                                         ; $7712: $24
    ld c, $E4                                     ; $7713: $0E $E4
    ld b, c                                       ; $7715: $41
    ld hl, $E407                                  ; $7716: $21 $07 $E4
    ld b, c                                       ; $7719: $41
    ld hl, $E707                                  ; $771A: $21 $07 $E7
    nop                                           ; $771D: $00
    jr nz, jr_02F_7724                            ; $771E: $20 $04

    ld [hl], a                                    ; $7720: $77

jr_02F_7721:
    db $ED                                        ; $7721: $ED
    db $E4                                        ; $7722: $E4
    ld [hl], c                                    ; $7723: $71

jr_02F_7724:
    ld [hl], $0E                                  ; $7724: $36 $0E
    db $E4                                        ; $7726: $E4
    ld b, c                                       ; $7727: $41
    ld hl, $E407                                  ; $7728: $21 $07 $E4
    ld b, c                                       ; $772B: $41
    ld hl, $E407                                  ; $772C: $21 $07 $E4
    ld h, d                                       ; $772F: $62
    inc h                                         ; $7730: $24
    ld c, $E4                                     ; $7731: $0E $E4
    ld b, c                                       ; $7733: $41
    ld hl, $E407                                  ; $7734: $21 $07 $E4
    ld b, c                                       ; $7737: $41
    ld hl, $E707                                  ; $7738: $21 $07 $E7
    nop                                           ; $773B: $00
    db $10                                        ; $773C: $10
    ld [hl+], a                                   ; $773D: $22

jr_02F_773E:
    ld [hl], a                                    ; $773E: $77
    db $ED                                        ; $773F: $ED
    inc b                                         ; $7740: $04
    add b                                         ; $7741: $80

jr_02F_7742:
    inc de                                        ; $7742: $13
    ld e, c                                       ; $7743: $59
    ld [hl], a                                    ; $7744: $77
    nop                                           ; $7745: $00
    add c                                         ; $7746: $81
    add b                                         ; $7747: $80
    jr jr_02F_77B3                                ; $7748: $18 $69

jr_02F_774A:
    ld a, b                                       ; $774A: $78
    inc c                                         ; $774B: $0C
    add c                                         ; $774C: $81
    add b                                         ; $774D: $80

jr_02F_774E:
    dec e                                         ; $774E: $1D
    ld a, c                                       ; $774F: $79
    ld a, c                                       ; $7750: $79
    inc c                                         ; $7751: $0C
    add c                                         ; $7752: $81
    add b                                         ; $7753: $80
    ld [hl+], a                                   ; $7754: $22
    ld e, b                                       ; $7755: $58

jr_02F_7756:
    ld a, d                                       ; $7756: $7A
    nop                                           ; $7757: $00
    add c                                         ; $7758: $81
    db $E4                                        ; $7759: $E4

jr_02F_775A:
    ld a, b                                       ; $775A: $78
    jp hl                                         ; $775B: $E9


    ld de, $40EE                                  ; $775C: $11 $EE $40

jr_02F_775F:
    db $EC                                        ; $775F: $EC
    ld [hl], c                                    ; $7760: $71
    ld [hl], a                                    ; $7761: $77
    db $EC                                        ; $7762: $EC

jr_02F_7763:
    ld a, [hl]                                    ; $7763: $7E
    ld [hl], a                                    ; $7764: $77
    db $EC                                        ; $7765: $EC
    adc e                                         ; $7766: $8B

jr_02F_7767:
    ld [hl], a                                    ; $7767: $77
    db $EC                                        ; $7768: $EC
    sbc b                                         ; $7769: $98
    ld [hl], a                                    ; $776A: $77

jr_02F_776B:
    db $EC                                        ; $776B: $EC
    ld d, [hl]                                    ; $776C: $56
    ld a, b                                       ; $776D: $78
    push hl                                       ; $776E: $E5
    ld e, c                                       ; $776F: $59
    ld [hl], a                                    ; $7770: $77
    db $E4                                        ; $7771: $E4
    ld a, b                                       ; $7772: $78

jr_02F_7773:
    sbc b                                         ; $7773: $98
    dec b                                         ; $7774: $05
    db $E4                                        ; $7775: $E4
    ld c, b                                       ; $7776: $48
    sbc b                                         ; $7777: $98
    rst RST_20                                    ; $7778: $E7
    nop                                           ; $7779: $00
    ld b, b                                       ; $777A: $40

jr_02F_777B:
    ld [hl], c                                    ; $777B: $71
    ld [hl], a                                    ; $777C: $77
    db $ED                                        ; $777D: $ED
    db $E4                                        ; $777E: $E4
    ld a, b                                       ; $777F: $78
    sbc c                                         ; $7780: $99
    dec b                                         ; $7781: $05
    db $E4                                        ; $7782: $E4

jr_02F_7783:
    ld c, b                                       ; $7783: $48
    sbc c                                         ; $7784: $99
    rst RST_20                                    ; $7785: $E7
    nop                                           ; $7786: $00
    jr nz, jr_02F_7807                            ; $7787: $20 $7E

    ld [hl], a                                    ; $7789: $77
    db $ED                                        ; $778A: $ED
    db $E4                                        ; $778B: $E4
    ld a, b                                       ; $778C: $78
    sbc e                                         ; $778D: $9B
    dec b                                         ; $778E: $05
    db $E4                                        ; $778F: $E4
    ld c, b                                       ; $7790: $48
    sbc e                                         ; $7791: $9B
    rst RST_20                                    ; $7792: $E7
    nop                                           ; $7793: $00
    jr nz, jr_02F_7721                            ; $7794: $20 $8B

    ld [hl], a                                    ; $7796: $77
    db $ED                                        ; $7797: $ED
    db $E4                                        ; $7798: $E4
    ld a, b                                       ; $7799: $78

jr_02F_779A:
    sbc a                                         ; $779A: $9F
    ld a, [bc]                                    ; $779B: $0A
    db $E4                                        ; $779C: $E4
    jr c, jr_02F_773E                             ; $779D: $38 $9F

    ld a, [bc]                                    ; $779F: $0A
    db $E4                                        ; $77A0: $E4
    jr z, jr_02F_7742                             ; $77A1: $28 $9F

    ld a, [bc]                                    ; $77A3: $0A
    db $E4                                        ; $77A4: $E4
    ld a, b                                       ; $77A5: $78

jr_02F_77A6:
    sbc a                                         ; $77A6: $9F
    ld a, [bc]                                    ; $77A7: $0A
    db $E4                                        ; $77A8: $E4
    jr c, jr_02F_774A                             ; $77A9: $38 $9F

    ld a, [bc]                                    ; $77AB: $0A
    db $E4                                        ; $77AC: $E4
    jr z, jr_02F_774E                             ; $77AD: $28 $9F

    ld a, [bc]                                    ; $77AF: $0A
    db $E4                                        ; $77B0: $E4
    ld a, b                                       ; $77B1: $78

jr_02F_77B2:
    sbc a                                         ; $77B2: $9F

jr_02F_77B3:
    ld a, [bc]                                    ; $77B3: $0A
    db $E4                                        ; $77B4: $E4
    jr c, jr_02F_7756                             ; $77B5: $38 $9F

    ld a, [bc]                                    ; $77B7: $0A
    db $E4                                        ; $77B8: $E4
    jr z, jr_02F_775A                             ; $77B9: $28 $9F

    ld a, [bc]                                    ; $77BB: $0A
    db $E4                                        ; $77BC: $E4

jr_02F_77BD:
    jr c, jr_02F_775F                             ; $77BD: $38 $A0

    dec b                                         ; $77BF: $05
    db $E4                                        ; $77C0: $E4

jr_02F_77C1:
    jr jr_02F_7763                                ; $77C1: $18 $A0

    dec b                                         ; $77C3: $05
    db $E4                                        ; $77C4: $E4

jr_02F_77C5:
    jr c, jr_02F_7767                             ; $77C5: $38 $A0

    dec b                                         ; $77C7: $05
    db $E4                                        ; $77C8: $E4

jr_02F_77C9:
    jr jr_02F_776B                                ; $77C9: $18 $A0

    dec b                                         ; $77CB: $05
    db $E4                                        ; $77CC: $E4
    ld c, b                                       ; $77CD: $48
    and b                                         ; $77CE: $A0
    dec b                                         ; $77CF: $05
    db $E4                                        ; $77D0: $E4

jr_02F_77D1:
    jr z, jr_02F_7773                             ; $77D1: $28 $A0

    dec b                                         ; $77D3: $05
    db $E4                                        ; $77D4: $E4
    ld e, b                                       ; $77D5: $58
    and b                                         ; $77D6: $A0
    dec b                                         ; $77D7: $05
    db $E4                                        ; $77D8: $E4

jr_02F_77D9:
    jr z, jr_02F_777B                             ; $77D9: $28 $A0

    dec b                                         ; $77DB: $05
    db $E4                                        ; $77DC: $E4
    ld l, b                                       ; $77DD: $68
    and b                                         ; $77DE: $A0
    dec b                                         ; $77DF: $05
    db $E4                                        ; $77E0: $E4

jr_02F_77E1:
    jr c, jr_02F_7783                             ; $77E1: $38 $A0

    dec b                                         ; $77E3: $05
    db $E4                                        ; $77E4: $E4
    ld a, b                                       ; $77E5: $78
    and b                                         ; $77E6: $A0
    dec b                                         ; $77E7: $05
    db $E4                                        ; $77E8: $E4
    ld c, b                                       ; $77E9: $48
    and b                                         ; $77EA: $A0
    dec b                                         ; $77EB: $05
    db $E4                                        ; $77EC: $E4
    ld a, b                                       ; $77ED: $78
    and b                                         ; $77EE: $A0
    dec b                                         ; $77EF: $05
    db $E4                                        ; $77F0: $E4
    ld e, b                                       ; $77F1: $58
    and b                                         ; $77F2: $A0
    dec b                                         ; $77F3: $05
    db $E4                                        ; $77F4: $E4
    ld a, b                                       ; $77F5: $78
    sbc a                                         ; $77F6: $9F
    ld a, [bc]                                    ; $77F7: $0A
    db $E4                                        ; $77F8: $E4
    jr c, jr_02F_779A                             ; $77F9: $38 $9F

    ld a, [bc]                                    ; $77FB: $0A
    db $E4                                        ; $77FC: $E4
    jr z, @-$5F                                   ; $77FD: $28 $9F

    ld a, [bc]                                    ; $77FF: $0A
    db $E4                                        ; $7800: $E4
    ld a, b                                       ; $7801: $78
    sbc a                                         ; $7802: $9F
    ld a, [bc]                                    ; $7803: $0A
    db $E4                                        ; $7804: $E4
    jr c, jr_02F_77A6                             ; $7805: $38 $9F

jr_02F_7807:
    ld a, [bc]                                    ; $7807: $0A
    db $E4                                        ; $7808: $E4
    jr z, @-$5F                                   ; $7809: $28 $9F

    ld a, [bc]                                    ; $780B: $0A
    db $E4                                        ; $780C: $E4
    ld a, b                                       ; $780D: $78
    sbc a                                         ; $780E: $9F
    ld a, [bc]                                    ; $780F: $0A
    db $E4                                        ; $7810: $E4
    jr c, jr_02F_77B2                             ; $7811: $38 $9F

    ld a, [bc]                                    ; $7813: $0A
    db $E4                                        ; $7814: $E4
    jr z, @-$5F                                   ; $7815: $28 $9F

    ld a, [bc]                                    ; $7817: $0A
    db $E4                                        ; $7818: $E4
    jr c, jr_02F_77BD                             ; $7819: $38 $A2

    dec b                                         ; $781B: $05
    db $E4                                        ; $781C: $E4
    jr jr_02F_77C1                                ; $781D: $18 $A2

    dec b                                         ; $781F: $05
    db $E4                                        ; $7820: $E4
    jr c, jr_02F_77C5                             ; $7821: $38 $A2

    dec b                                         ; $7823: $05
    db $E4                                        ; $7824: $E4
    jr jr_02F_77C9                                ; $7825: $18 $A2

jr_02F_7827:
    dec b                                         ; $7827: $05
    db $E4                                        ; $7828: $E4
    ld c, b                                       ; $7829: $48
    and d                                         ; $782A: $A2
    dec b                                         ; $782B: $05
    db $E4                                        ; $782C: $E4
    jr z, jr_02F_77D1                             ; $782D: $28 $A2

    dec b                                         ; $782F: $05
    db $E4                                        ; $7830: $E4
    ld e, b                                       ; $7831: $58
    and d                                         ; $7832: $A2
    dec b                                         ; $7833: $05
    db $E4                                        ; $7834: $E4
    jr z, jr_02F_77D9                             ; $7835: $28 $A2

    dec b                                         ; $7837: $05
    db $E4                                        ; $7838: $E4
    ld l, b                                       ; $7839: $68
    and d                                         ; $783A: $A2
    dec b                                         ; $783B: $05
    db $E4                                        ; $783C: $E4
    jr c, jr_02F_77E1                             ; $783D: $38 $A2

    dec b                                         ; $783F: $05
    db $E4                                        ; $7840: $E4

jr_02F_7841:
    ld a, b                                       ; $7841: $78
    and d                                         ; $7842: $A2
    dec b                                         ; $7843: $05
    db $E4                                        ; $7844: $E4
    ld c, b                                       ; $7845: $48
    and d                                         ; $7846: $A2

jr_02F_7847:
    dec b                                         ; $7847: $05
    db $E4                                        ; $7848: $E4
    ld a, b                                       ; $7849: $78
    and d                                         ; $784A: $A2

jr_02F_784B:
    dec b                                         ; $784B: $05
    db $E4                                        ; $784C: $E4
    ld e, b                                       ; $784D: $58
    and d                                         ; $784E: $A2
    dec b                                         ; $784F: $05
    rst RST_20                                    ; $7850: $E7
    nop                                           ; $7851: $00
    ld [bc], a                                    ; $7852: $02

jr_02F_7853:
    sbc b                                         ; $7853: $98
    ld [hl], a                                    ; $7854: $77
    db $ED                                        ; $7855: $ED
    db $E4                                        ; $7856: $E4

jr_02F_7857:
    ld a, b                                       ; $7857: $78
    and b                                         ; $7858: $A0
    ld e, $9F                                     ; $7859: $1E $9F
    sbc e                                         ; $785B: $9B
    and b                                         ; $785C: $A0
    sbc a                                         ; $785D: $9F
    inc d                                         ; $785E: $14

jr_02F_785F:
    sbc e                                         ; $785F: $9B
    sbc b                                         ; $7860: $98
    ld e, $9D                                     ; $7861: $1E $9D

jr_02F_7863:
    and h                                         ; $7863: $A4
    and e                                         ; $7864: $A3
    and d                                         ; $7865: $A2
    inc d                                         ; $7866: $14
    sbc a                                         ; $7867: $9F
    db $ED                                        ; $7868: $ED
    db $E4                                        ; $7869: $E4

jr_02F_786A:
    ld a, b                                       ; $786A: $78
    jp hl                                         ; $786B: $E9


    ld [hl+], a                                   ; $786C: $22
    xor $80                                       ; $786D: $EE $80
    db $EC                                        ; $786F: $EC
    add c                                         ; $7870: $81
    ld a, b                                       ; $7871: $78

jr_02F_7872:
    db $EC                                        ; $7872: $EC
    adc [hl]                                      ; $7873: $8E
    ld a, b                                       ; $7874: $78
    db $EC                                        ; $7875: $EC

jr_02F_7876:
    sbc e                                         ; $7876: $9B
    ld a, b                                       ; $7877: $78
    db $EC                                        ; $7878: $EC
    xor b                                         ; $7879: $A8
    ld a, b                                       ; $787A: $78
    db $EC                                        ; $787B: $EC
    ld h, [hl]                                    ; $787C: $66
    ld a, c                                       ; $787D: $79

jr_02F_787E:
    push hl                                       ; $787E: $E5
    ld l, c                                       ; $787F: $69
    ld a, b                                       ; $7880: $78
    db $E4                                        ; $7881: $E4
    ld a, b                                       ; $7882: $78
    sub e                                         ; $7883: $93
    dec b                                         ; $7884: $05
    db $E4                                        ; $7885: $E4

jr_02F_7886:
    ld c, b                                       ; $7886: $48
    sub e                                         ; $7887: $93
    rst RST_20                                    ; $7888: $E7
    nop                                           ; $7889: $00
    ld b, b                                       ; $788A: $40
    add c                                         ; $788B: $81
    ld a, b                                       ; $788C: $78
    db $ED                                        ; $788D: $ED

jr_02F_788E:
    db $E4                                        ; $788E: $E4
    ld a, b                                       ; $788F: $78
    sub h                                         ; $7890: $94
    dec b                                         ; $7891: $05
    db $E4                                        ; $7892: $E4
    ld c, b                                       ; $7893: $48
    sub h                                         ; $7894: $94
    rst RST_20                                    ; $7895: $E7
    nop                                           ; $7896: $00
    jr nz, jr_02F_7827                            ; $7897: $20 $8E

    ld a, b                                       ; $7899: $78
    db $ED                                        ; $789A: $ED
    db $E4                                        ; $789B: $E4
    ld a, b                                       ; $789C: $78
    sub [hl]                                      ; $789D: $96
    dec b                                         ; $789E: $05
    db $E4                                        ; $789F: $E4
    ld c, b                                       ; $78A0: $48
    sub [hl]                                      ; $78A1: $96
    rst RST_20                                    ; $78A2: $E7

jr_02F_78A3:
    nop                                           ; $78A3: $00
    jr nz, jr_02F_7841                            ; $78A4: $20 $9B

    ld a, b                                       ; $78A6: $78

jr_02F_78A7:
    db $ED                                        ; $78A7: $ED
    db $E4                                        ; $78A8: $E4
    ld a, b                                       ; $78A9: $78
    sbc b                                         ; $78AA: $98
    ld a, [bc]                                    ; $78AB: $0A
    db $E4                                        ; $78AC: $E4
    jr c, jr_02F_7847                             ; $78AD: $38 $98

jr_02F_78AF:
    ld a, [bc]                                    ; $78AF: $0A
    db $E4                                        ; $78B0: $E4
    jr z, jr_02F_784B                             ; $78B1: $28 $98

jr_02F_78B3:
    ld a, [bc]                                    ; $78B3: $0A
    db $E4                                        ; $78B4: $E4
    ld a, b                                       ; $78B5: $78
    sbc b                                         ; $78B6: $98
    ld a, [bc]                                    ; $78B7: $0A
    db $E4                                        ; $78B8: $E4
    jr c, jr_02F_7853                             ; $78B9: $38 $98

jr_02F_78BB:
    ld a, [bc]                                    ; $78BB: $0A
    db $E4                                        ; $78BC: $E4
    jr z, jr_02F_7857                             ; $78BD: $28 $98

jr_02F_78BF:
    ld a, [bc]                                    ; $78BF: $0A
    db $E4                                        ; $78C0: $E4
    ld a, b                                       ; $78C1: $78
    sbc b                                         ; $78C2: $98
    ld a, [bc]                                    ; $78C3: $0A
    db $E4                                        ; $78C4: $E4
    jr c, jr_02F_785F                             ; $78C5: $38 $98

    ld a, [bc]                                    ; $78C7: $0A

jr_02F_78C8:
    db $E4                                        ; $78C8: $E4
    jr z, jr_02F_7863                             ; $78C9: $28 $98

    ld a, [bc]                                    ; $78CB: $0A

jr_02F_78CC:
    db $E4                                        ; $78CC: $E4
    jr c, jr_02F_786A                             ; $78CD: $38 $9B

    dec b                                         ; $78CF: $05

jr_02F_78D0:
    db $E4                                        ; $78D0: $E4
    jr @-$63                                      ; $78D1: $18 $9B

    dec b                                         ; $78D3: $05

jr_02F_78D4:
    db $E4                                        ; $78D4: $E4
    jr c, jr_02F_7872                             ; $78D5: $38 $9B

    dec b                                         ; $78D7: $05
    db $E4                                        ; $78D8: $E4
    jr jr_02F_7876                                ; $78D9: $18 $9B

    dec b                                         ; $78DB: $05

jr_02F_78DC:
    db $E4                                        ; $78DC: $E4
    ld c, b                                       ; $78DD: $48
    sbc e                                         ; $78DE: $9B
    dec b                                         ; $78DF: $05
    db $E4                                        ; $78E0: $E4
    jr z, jr_02F_787E                             ; $78E1: $28 $9B

    dec b                                         ; $78E3: $05

jr_02F_78E4:
    db $E4                                        ; $78E4: $E4
    ld e, b                                       ; $78E5: $58
    sbc e                                         ; $78E6: $9B
    dec b                                         ; $78E7: $05
    db $E4                                        ; $78E8: $E4
    jr z, jr_02F_7886                             ; $78E9: $28 $9B

    dec b                                         ; $78EB: $05

jr_02F_78EC:
    db $E4                                        ; $78EC: $E4
    ld l, b                                       ; $78ED: $68
    sbc e                                         ; $78EE: $9B
    dec b                                         ; $78EF: $05
    db $E4                                        ; $78F0: $E4
    jr c, jr_02F_788E                             ; $78F1: $38 $9B

    dec b                                         ; $78F3: $05
    db $E4                                        ; $78F4: $E4
    ld a, b                                       ; $78F5: $78
    sbc e                                         ; $78F6: $9B
    dec b                                         ; $78F7: $05
    db $E4                                        ; $78F8: $E4
    ld c, b                                       ; $78F9: $48
    sbc e                                         ; $78FA: $9B
    dec b                                         ; $78FB: $05
    db $E4                                        ; $78FC: $E4
    ld a, b                                       ; $78FD: $78
    sbc e                                         ; $78FE: $9B
    dec b                                         ; $78FF: $05
    db $E4                                        ; $7900: $E4
    ld e, b                                       ; $7901: $58
    sbc e                                         ; $7902: $9B
    dec b                                         ; $7903: $05
    db $E4                                        ; $7904: $E4
    ld a, b                                       ; $7905: $78
    sbc b                                         ; $7906: $98
    ld a, [bc]                                    ; $7907: $0A
    db $E4                                        ; $7908: $E4
    jr c, jr_02F_78A3                             ; $7909: $38 $98

    ld a, [bc]                                    ; $790B: $0A
    db $E4                                        ; $790C: $E4
    jr z, jr_02F_78A7                             ; $790D: $28 $98

    ld a, [bc]                                    ; $790F: $0A
    db $E4                                        ; $7910: $E4
    ld a, b                                       ; $7911: $78
    sbc b                                         ; $7912: $98
    ld a, [bc]                                    ; $7913: $0A
    db $E4                                        ; $7914: $E4
    jr c, jr_02F_78AF                             ; $7915: $38 $98

    ld a, [bc]                                    ; $7917: $0A
    db $E4                                        ; $7918: $E4
    jr z, jr_02F_78B3                             ; $7919: $28 $98

    ld a, [bc]                                    ; $791B: $0A
    db $E4                                        ; $791C: $E4
    ld a, b                                       ; $791D: $78
    sbc b                                         ; $791E: $98
    ld a, [bc]                                    ; $791F: $0A
    db $E4                                        ; $7920: $E4
    jr c, jr_02F_78BB                             ; $7921: $38 $98

    ld a, [bc]                                    ; $7923: $0A
    db $E4                                        ; $7924: $E4
    jr z, jr_02F_78BF                             ; $7925: $28 $98

    ld a, [bc]                                    ; $7927: $0A
    db $E4                                        ; $7928: $E4
    jr c, jr_02F_78C8                             ; $7929: $38 $9D

    dec b                                         ; $792B: $05
    db $E4                                        ; $792C: $E4
    jr jr_02F_78CC                                ; $792D: $18 $9D

    dec b                                         ; $792F: $05
    db $E4                                        ; $7930: $E4
    jr c, jr_02F_78D0                             ; $7931: $38 $9D

    dec b                                         ; $7933: $05
    db $E4                                        ; $7934: $E4
    jr jr_02F_78D4                                ; $7935: $18 $9D

    dec b                                         ; $7937: $05
    db $E4                                        ; $7938: $E4
    ld c, b                                       ; $7939: $48
    sbc l                                         ; $793A: $9D
    dec b                                         ; $793B: $05
    db $E4                                        ; $793C: $E4
    jr z, jr_02F_78DC                             ; $793D: $28 $9D

    dec b                                         ; $793F: $05
    db $E4                                        ; $7940: $E4
    ld e, b                                       ; $7941: $58
    sbc l                                         ; $7942: $9D
    dec b                                         ; $7943: $05
    db $E4                                        ; $7944: $E4
    jr z, jr_02F_78E4                             ; $7945: $28 $9D

    dec b                                         ; $7947: $05
    db $E4                                        ; $7948: $E4
    ld l, b                                       ; $7949: $68
    sbc l                                         ; $794A: $9D
    dec b                                         ; $794B: $05
    db $E4                                        ; $794C: $E4
    jr c, jr_02F_78EC                             ; $794D: $38 $9D

    dec b                                         ; $794F: $05
    db $E4                                        ; $7950: $E4
    ld a, b                                       ; $7951: $78
    sbc l                                         ; $7952: $9D
    dec b                                         ; $7953: $05
    db $E4                                        ; $7954: $E4
    ld c, b                                       ; $7955: $48
    sbc l                                         ; $7956: $9D
    dec b                                         ; $7957: $05
    db $E4                                        ; $7958: $E4
    ld a, b                                       ; $7959: $78
    sbc l                                         ; $795A: $9D
    dec b                                         ; $795B: $05
    db $E4                                        ; $795C: $E4
    ld e, b                                       ; $795D: $58
    sbc l                                         ; $795E: $9D
    dec b                                         ; $795F: $05
    rst RST_20                                    ; $7960: $E7
    nop                                           ; $7961: $00
    ld [bc], a                                    ; $7962: $02
    xor b                                         ; $7963: $A8
    ld a, b                                       ; $7964: $78
    db $ED                                        ; $7965: $ED
    db $E4                                        ; $7966: $E4
    ld a, b                                       ; $7967: $78
    sbc b                                         ; $7968: $98
    ld e, $96                                     ; $7969: $1E $96
    sub e                                         ; $796B: $93
    sbc b                                         ; $796C: $98
    sub [hl]                                      ; $796D: $96
    inc d                                         ; $796E: $14
    sub h                                         ; $796F: $94
    sub h                                         ; $7970: $94
    ld e, $8C                                     ; $7971: $1E $8C
    sbc l                                         ; $7973: $9D
    sbc h                                         ; $7974: $9C
    sbc e                                         ; $7975: $9B
    inc d                                         ; $7976: $14
    sbc c                                         ; $7977: $99
    db $ED                                        ; $7978: $ED
    db $E4                                        ; $7979: $E4
    ld b, b                                       ; $797A: $40
    jp hl                                         ; $797B: $E9


    ld b, h                                       ; $797C: $44
    di                                            ; $797D: $F3
    inc bc                                        ; $797E: $03
    push af                                       ; $797F: $F5
    nop                                           ; $7980: $00
    db $EC                                        ; $7981: $EC
    sbc e                                         ; $7982: $9B
    ld a, c                                       ; $7983: $79
    db $EC                                        ; $7984: $EC
    or d                                          ; $7985: $B2
    ld a, c                                       ; $7986: $79
    db $EC                                        ; $7987: $EC
    ret nz                                        ; $7988: $C0

    ld a, c                                       ; $7989: $79
    db $E4                                        ; $798A: $E4
    ld b, b                                       ; $798B: $40
    jp hl                                         ; $798C: $E9


    ld b, h                                       ; $798D: $44
    di                                            ; $798E: $F3
    inc bc                                        ; $798F: $03
    push af                                       ; $7990: $F5
    ld e, $EC                                     ; $7991: $1E $EC
    pop de                                        ; $7993: $D1
    ld a, c                                       ; $7994: $79
    db $EC                                        ; $7995: $EC
    inc sp                                        ; $7996: $33
    ld a, d                                       ; $7997: $7A
    push hl                                       ; $7998: $E5
    ld a, c                                       ; $7999: $79
    ld a, c                                       ; $799A: $79
    sbc b                                         ; $799B: $98
    ld e, $96                                     ; $799C: $1E $96
    sbc b                                         ; $799E: $98
    sub e                                         ; $799F: $93
    sub [hl]                                      ; $79A0: $96
    inc d                                         ; $79A1: $14
    sub c                                         ; $79A2: $91
    sub e                                         ; $79A3: $93
    ld e, $8F                                     ; $79A4: $1E $8F
    sub c                                         ; $79A6: $91
    ld a, [bc]                                    ; $79A7: $0A
    adc h                                         ; $79A8: $8C
    ld e, $8A                                     ; $79A9: $1E $8A
    adc e                                         ; $79AB: $8B
    rst RST_20                                    ; $79AC: $E7
    nop                                           ; $79AD: $00
    ld [bc], a                                    ; $79AE: $02
    sbc e                                         ; $79AF: $9B
    ld a, c                                       ; $79B0: $79
    db $ED                                        ; $79B1: $ED
    sbc e                                         ; $79B2: $9B
    ld e, $99                                     ; $79B3: $1E $99
    sbc e                                         ; $79B5: $9B
    sub h                                         ; $79B6: $94
    sub [hl]                                      ; $79B7: $96
    inc d                                         ; $79B8: $14
    sbc c                                         ; $79B9: $99
    rst RST_20                                    ; $79BA: $E7
    nop                                           ; $79BB: $00
    ld [bc], a                                    ; $79BC: $02
    or d                                          ; $79BD: $B2
    ld a, c                                       ; $79BE: $79
    db $ED                                        ; $79BF: $ED
    sbc l                                         ; $79C0: $9D
    ld e, $9B                                     ; $79C1: $1E $9B
    sbc l                                         ; $79C3: $9D
    sbc b                                         ; $79C4: $98
    sbc e                                         ; $79C5: $9B
    inc d                                         ; $79C6: $14
    sub [hl]                                      ; $79C7: $96
    sbc c                                         ; $79C8: $99
    ld e, $94                                     ; $79C9: $1E $94
    sbc b                                         ; $79CB: $98
    sub e                                         ; $79CC: $93
    sub [hl]                                      ; $79CD: $96
    inc d                                         ; $79CE: $14
    sub c                                         ; $79CF: $91
    db $ED                                        ; $79D0: $ED
    db $E4                                        ; $79D1: $E4
    ld b, b                                       ; $79D2: $40
    add l                                         ; $79D3: $85
    ld a, [bc]                                    ; $79D4: $0A
    add b                                         ; $79D5: $80
    inc d                                         ; $79D6: $14
    db $E4                                        ; $79D7: $E4
    ld b, b                                       ; $79D8: $40
    add l                                         ; $79D9: $85
    ld a, [bc]                                    ; $79DA: $0A
    add b                                         ; $79DB: $80
    inc d                                         ; $79DC: $14
    db $E4                                        ; $79DD: $E4
    ld b, b                                       ; $79DE: $40
    add l                                         ; $79DF: $85
    ld a, [bc]                                    ; $79E0: $0A
    add b                                         ; $79E1: $80
    inc d                                         ; $79E2: $14
    db $E4                                        ; $79E3: $E4
    ld h, b                                       ; $79E4: $60
    add e                                         ; $79E5: $83
    ld a, [bc]                                    ; $79E6: $0A
    db $E4                                        ; $79E7: $E4
    ld h, b                                       ; $79E8: $60
    add e                                         ; $79E9: $83
    ld a, [bc]                                    ; $79EA: $0A
    db $E4                                        ; $79EB: $E4
    ld h, b                                       ; $79EC: $60
    add e                                         ; $79ED: $83
    ld a, [bc]                                    ; $79EE: $0A
    db $E4                                        ; $79EF: $E4
    ld b, b                                       ; $79F0: $40
    add e                                         ; $79F1: $83
    ld a, [bc]                                    ; $79F2: $0A
    db $E4                                        ; $79F3: $E4
    ld b, b                                       ; $79F4: $40
    add e                                         ; $79F5: $83
    ld a, [bc]                                    ; $79F6: $0A
    db $E4                                        ; $79F7: $E4
    ld b, b                                       ; $79F8: $40
    add e                                         ; $79F9: $83
    ld a, [bc]                                    ; $79FA: $0A
    db $E4                                        ; $79FB: $E4
    ld b, b                                       ; $79FC: $40
    add e                                         ; $79FD: $83
    ld a, [bc]                                    ; $79FE: $0A
    db $E4                                        ; $79FF: $E4
    ld b, b                                       ; $7A00: $40
    add l                                         ; $7A01: $85
    ld a, [bc]                                    ; $7A02: $0A
    add b                                         ; $7A03: $80
    inc d                                         ; $7A04: $14
    db $E4                                        ; $7A05: $E4
    ld b, b                                       ; $7A06: $40
    add l                                         ; $7A07: $85
    ld a, [bc]                                    ; $7A08: $0A
    add b                                         ; $7A09: $80
    inc d                                         ; $7A0A: $14
    db $E4                                        ; $7A0B: $E4
    ld b, b                                       ; $7A0C: $40
    add l                                         ; $7A0D: $85
    ld a, [bc]                                    ; $7A0E: $0A
    add b                                         ; $7A0F: $80
    inc d                                         ; $7A10: $14
    db $E4                                        ; $7A11: $E4
    ld h, b                                       ; $7A12: $60
    add c                                         ; $7A13: $81
    ld a, [bc]                                    ; $7A14: $0A
    db $E4                                        ; $7A15: $E4
    ld h, b                                       ; $7A16: $60
    add c                                         ; $7A17: $81
    ld a, [bc]                                    ; $7A18: $0A
    db $E4                                        ; $7A19: $E4
    ld h, b                                       ; $7A1A: $60
    add c                                         ; $7A1B: $81
    ld a, [bc]                                    ; $7A1C: $0A
    db $E4                                        ; $7A1D: $E4
    ld b, b                                       ; $7A1E: $40
    add c                                         ; $7A1F: $81
    ld a, [bc]                                    ; $7A20: $0A
    db $E4                                        ; $7A21: $E4
    ld b, b                                       ; $7A22: $40
    add c                                         ; $7A23: $81
    ld a, [bc]                                    ; $7A24: $0A
    db $E4                                        ; $7A25: $E4
    ld b, b                                       ; $7A26: $40
    add c                                         ; $7A27: $81
    ld a, [bc]                                    ; $7A28: $0A
    db $E4                                        ; $7A29: $E4
    ld b, b                                       ; $7A2A: $40
    add c                                         ; $7A2B: $81
    ld a, [bc]                                    ; $7A2C: $0A
    rst RST_20                                    ; $7A2D: $E7
    nop                                           ; $7A2E: $00
    ld [bc], a                                    ; $7A2F: $02
    pop de                                        ; $7A30: $D1
    ld a, c                                       ; $7A31: $79
    db $ED                                        ; $7A32: $ED
    adc b                                         ; $7A33: $88
    ld a, [bc]                                    ; $7A34: $0A
    adc b                                         ; $7A35: $88
    adc b                                         ; $7A36: $88
    adc b                                         ; $7A37: $88
    adc b                                         ; $7A38: $88
    adc b                                         ; $7A39: $88
    adc b                                         ; $7A3A: $88
    adc b                                         ; $7A3B: $88
    add a                                         ; $7A3C: $87
    ld a, [bc]                                    ; $7A3D: $0A
    add a                                         ; $7A3E: $87
    add a                                         ; $7A3F: $87
    add a                                         ; $7A40: $87
    add l                                         ; $7A41: $85
    add l                                         ; $7A42: $85
    add l                                         ; $7A43: $85
    add l                                         ; $7A44: $85
    add d                                         ; $7A45: $82
    ld a, [bc]                                    ; $7A46: $0A
    add d                                         ; $7A47: $82
    add d                                         ; $7A48: $82
    add d                                         ; $7A49: $82
    add d                                         ; $7A4A: $82
    add d                                         ; $7A4B: $82
    add d                                         ; $7A4C: $82
    add d                                         ; $7A4D: $82
    add c                                         ; $7A4E: $81
    ld a, [bc]                                    ; $7A4F: $0A
    add c                                         ; $7A50: $81
    add c                                         ; $7A51: $81
    add c                                         ; $7A52: $81
    add c                                         ; $7A53: $81
    add c                                         ; $7A54: $81
    add c                                         ; $7A55: $81
    add c                                         ; $7A56: $81
    db $ED                                        ; $7A57: $ED
    jp hl                                         ; $7A58: $E9


    adc b                                         ; $7A59: $88
    db $EC                                        ; $7A5A: $EC
    inc bc                                        ; $7A5B: $03
    ld a, e                                       ; $7A5C: $7B
    db $EC                                        ; $7A5D: $EC
    sub l                                         ; $7A5E: $95
    ld a, e                                       ; $7A5F: $7B
    db $EC                                        ; $7A60: $EC
    rst RST_20                                    ; $7A61: $E7
    ld a, e                                       ; $7A62: $7B
    db $E4                                        ; $7A63: $E4
    ld h, d                                       ; $7A64: $62
    inc h                                         ; $7A65: $24
    dec b                                         ; $7A66: $05
    db $E4                                        ; $7A67: $E4
    ld [hl], c                                    ; $7A68: $71
    ld [hl], $05                                  ; $7A69: $36 $05
    db $E4                                        ; $7A6B: $E4
    ld [hl], c                                    ; $7A6C: $71
    ld [hl], $05                                  ; $7A6D: $36 $05
    db $E4                                        ; $7A6F: $E4
    ld [hl], c                                    ; $7A70: $71
    ld [hl], $05                                  ; $7A71: $36 $05
    db $E4                                        ; $7A73: $E4
    ld h, d                                       ; $7A74: $62
    inc h                                         ; $7A75: $24
    dec b                                         ; $7A76: $05
    db $E4                                        ; $7A77: $E4
    ld [hl], c                                    ; $7A78: $71
    ld [hl], $05                                  ; $7A79: $36 $05
    db $E4                                        ; $7A7B: $E4
    ld h, d                                       ; $7A7C: $62
    inc h                                         ; $7A7D: $24
    dec b                                         ; $7A7E: $05
    db $E4                                        ; $7A7F: $E4
    ld [hl], c                                    ; $7A80: $71
    ld [hl], $05                                  ; $7A81: $36 $05
    db $EC                                        ; $7A83: $EC
    rst RST_20                                    ; $7A84: $E7
    ld a, e                                       ; $7A85: $7B
    db $E4                                        ; $7A86: $E4
    ld h, d                                       ; $7A87: $62
    inc h                                         ; $7A88: $24
    dec b                                         ; $7A89: $05
    db $E4                                        ; $7A8A: $E4
    ld h, d                                       ; $7A8B: $62
    inc h                                         ; $7A8C: $24
    dec b                                         ; $7A8D: $05
    db $E4                                        ; $7A8E: $E4
    ld [hl], d                                    ; $7A8F: $72
    ld [hl-], a                                   ; $7A90: $32
    dec b                                         ; $7A91: $05
    db $E4                                        ; $7A92: $E4
    ld [hl], d                                    ; $7A93: $72
    db $10                                        ; $7A94: $10
    dec b                                         ; $7A95: $05
    db $E4                                        ; $7A96: $E4
    ld h, d                                       ; $7A97: $62
    inc h                                         ; $7A98: $24
    dec b                                         ; $7A99: $05
    db $E4                                        ; $7A9A: $E4
    ld h, d                                       ; $7A9B: $62
    inc h                                         ; $7A9C: $24
    dec b                                         ; $7A9D: $05
    db $E4                                        ; $7A9E: $E4
    ld h, d                                       ; $7A9F: $62
    inc h                                         ; $7AA0: $24
    dec b                                         ; $7AA1: $05
    db $E4                                        ; $7AA2: $E4
    ld h, d                                       ; $7AA3: $62
    inc h                                         ; $7AA4: $24
    dec b                                         ; $7AA5: $05
    db $EC                                        ; $7AA6: $EC
    db $FD                                        ; $7AA7: $FD
    ld a, e                                       ; $7AA8: $7B
    db $EC                                        ; $7AA9: $EC
    ld c, a                                       ; $7AAA: $4F
    ld a, h                                       ; $7AAB: $7C
    db $EC                                        ; $7AAC: $EC
    ld h, b                                       ; $7AAD: $60
    ld a, h                                       ; $7AAE: $7C
    db $EC                                        ; $7AAF: $EC
    ld [hl], c                                    ; $7AB0: $71
    ld a, h                                       ; $7AB1: $7C
    db $EC                                        ; $7AB2: $EC
    ld h, b                                       ; $7AB3: $60
    ld a, h                                       ; $7AB4: $7C
    db $EC                                        ; $7AB5: $EC
    ld c, a                                       ; $7AB6: $4F
    ld a, h                                       ; $7AB7: $7C
    db $EC                                        ; $7AB8: $EC
    ld h, b                                       ; $7AB9: $60
    ld a, h                                       ; $7ABA: $7C
    db $E4                                        ; $7ABB: $E4
    ld [hl], c                                    ; $7ABC: $71
    ld [hl], $05                                  ; $7ABD: $36 $05
    db $E4                                        ; $7ABF: $E4
    ld b, c                                       ; $7AC0: $41
    ld hl, $E405                                  ; $7AC1: $21 $05 $E4
    ld b, c                                       ; $7AC4: $41
    ld hl, $E405                                  ; $7AC5: $21 $05 $E4
    ld h, d                                       ; $7AC8: $62
    inc h                                         ; $7AC9: $24
    dec b                                         ; $7ACA: $05
    db $EC                                        ; $7ACB: $EC
    ld h, b                                       ; $7ACC: $60
    ld a, h                                       ; $7ACD: $7C
    db $EC                                        ; $7ACE: $EC
    ld c, a                                       ; $7ACF: $4F
    ld a, h                                       ; $7AD0: $7C
    db $EC                                        ; $7AD1: $EC
    ld h, b                                       ; $7AD2: $60
    ld a, h                                       ; $7AD3: $7C
    db $E4                                        ; $7AD4: $E4
    ld [hl], c                                    ; $7AD5: $71
    ld [hl], $05                                  ; $7AD6: $36 $05
    db $E4                                        ; $7AD8: $E4
    ld h, d                                       ; $7AD9: $62
    inc h                                         ; $7ADA: $24
    dec b                                         ; $7ADB: $05
    db $E4                                        ; $7ADC: $E4
    ld b, c                                       ; $7ADD: $41
    ld hl, $E405                                  ; $7ADE: $21 $05 $E4
    ld b, c                                       ; $7AE1: $41
    ld hl, $EC05                                  ; $7AE2: $21 $05 $EC
    ld h, b                                       ; $7AE5: $60
    ld a, h                                       ; $7AE6: $7C
    db $EC                                        ; $7AE7: $EC
    ld c, a                                       ; $7AE8: $4F
    ld a, h                                       ; $7AE9: $7C
    db $EC                                        ; $7AEA: $EC
    ld h, b                                       ; $7AEB: $60
    ld a, h                                       ; $7AEC: $7C
    db $EC                                        ; $7AED: $EC
    ld [hl], c                                    ; $7AEE: $71
    ld a, h                                       ; $7AEF: $7C
    db $E4                                        ; $7AF0: $E4
    ld h, d                                       ; $7AF1: $62
    inc h                                         ; $7AF2: $24
    dec b                                         ; $7AF3: $05
    db $E4                                        ; $7AF4: $E4
    ld h, d                                       ; $7AF5: $62
    inc h                                         ; $7AF6: $24
    dec b                                         ; $7AF7: $05
    db $E4                                        ; $7AF8: $E4
    ld h, d                                       ; $7AF9: $62
    inc h                                         ; $7AFA: $24
    dec b                                         ; $7AFB: $05
    db $E4                                        ; $7AFC: $E4
    ld h, d                                       ; $7AFD: $62
    inc h                                         ; $7AFE: $24
    dec b                                         ; $7AFF: $05
    push hl                                       ; $7B00: $E5
    ld e, b                                       ; $7B01: $58
    ld a, d                                       ; $7B02: $7A
    db $E4                                        ; $7B03: $E4
    ld h, d                                       ; $7B04: $62
    inc h                                         ; $7B05: $24
    ld a, [bc]                                    ; $7B06: $0A
    db $E4                                        ; $7B07: $E4
    ld [hl], c                                    ; $7B08: $71
    ld [hl], $0A                                  ; $7B09: $36 $0A
    db $E4                                        ; $7B0B: $E4
    ld [hl], c                                    ; $7B0C: $71
    ld [hl], $0A                                  ; $7B0D: $36 $0A
    db $E4                                        ; $7B0F: $E4
    ld h, d                                       ; $7B10: $62
    inc h                                         ; $7B11: $24
    ld a, [bc]                                    ; $7B12: $0A
    db $E4                                        ; $7B13: $E4
    ld [hl], c                                    ; $7B14: $71
    ld [hl], $0A                                  ; $7B15: $36 $0A
    db $E4                                        ; $7B17: $E4
    ld [hl], c                                    ; $7B18: $71
    ld [hl], $0A                                  ; $7B19: $36 $0A
    db $E4                                        ; $7B1B: $E4
    ld h, d                                       ; $7B1C: $62
    inc h                                         ; $7B1D: $24
    ld a, [bc]                                    ; $7B1E: $0A
    db $E4                                        ; $7B1F: $E4
    ld [hl], c                                    ; $7B20: $71
    ld [hl], $0A                                  ; $7B21: $36 $0A
    db $E4                                        ; $7B23: $E4
    ld [hl], c                                    ; $7B24: $71
    ld [hl], $0A                                  ; $7B25: $36 $0A
    db $E4                                        ; $7B27: $E4
    ld h, d                                       ; $7B28: $62
    inc h                                         ; $7B29: $24
    ld a, [bc]                                    ; $7B2A: $0A
    db $E4                                        ; $7B2B: $E4
    ld [hl], c                                    ; $7B2C: $71
    ld [hl], $0A                                  ; $7B2D: $36 $0A
    db $E4                                        ; $7B2F: $E4
    ld [hl], c                                    ; $7B30: $71
    ld [hl], $0A                                  ; $7B31: $36 $0A
    db $E4                                        ; $7B33: $E4
    ld h, d                                       ; $7B34: $62
    inc h                                         ; $7B35: $24
    ld a, [bc]                                    ; $7B36: $0A
    db $E4                                        ; $7B37: $E4
    ld [hl], c                                    ; $7B38: $71
    ld [hl], $05                                  ; $7B39: $36 $05
    db $E4                                        ; $7B3B: $E4
    ld [hl], c                                    ; $7B3C: $71
    ld [hl], $05                                  ; $7B3D: $36 $05
    db $E4                                        ; $7B3F: $E4
    ld h, d                                       ; $7B40: $62
    inc h                                         ; $7B41: $24
    ld a, [bc]                                    ; $7B42: $0A
    db $E4                                        ; $7B43: $E4
    ld [hl], c                                    ; $7B44: $71
    ld [hl], $0A                                  ; $7B45: $36 $0A
    db $E4                                        ; $7B47: $E4
    ld h, d                                       ; $7B48: $62
    inc h                                         ; $7B49: $24
    ld a, [bc]                                    ; $7B4A: $0A
    db $E4                                        ; $7B4B: $E4
    ld [hl], c                                    ; $7B4C: $71
    ld [hl], $0A                                  ; $7B4D: $36 $0A
    db $E4                                        ; $7B4F: $E4
    ld [hl], c                                    ; $7B50: $71
    ld [hl], $0A                                  ; $7B51: $36 $0A
    db $E4                                        ; $7B53: $E4
    ld h, d                                       ; $7B54: $62
    inc h                                         ; $7B55: $24
    ld a, [bc]                                    ; $7B56: $0A
    db $E4                                        ; $7B57: $E4
    ld [hl], c                                    ; $7B58: $71
    ld [hl], $0A                                  ; $7B59: $36 $0A
    db $E4                                        ; $7B5B: $E4
    ld [hl], c                                    ; $7B5C: $71
    ld [hl], $0A                                  ; $7B5D: $36 $0A
    db $E4                                        ; $7B5F: $E4
    ld h, d                                       ; $7B60: $62
    inc h                                         ; $7B61: $24
    ld a, [bc]                                    ; $7B62: $0A
    db $E4                                        ; $7B63: $E4
    ld [hl], c                                    ; $7B64: $71
    ld [hl], $0A                                  ; $7B65: $36 $0A
    db $E4                                        ; $7B67: $E4
    ld h, d                                       ; $7B68: $62
    inc h                                         ; $7B69: $24
    ld a, [bc]                                    ; $7B6A: $0A
    db $E4                                        ; $7B6B: $E4
    ld [hl], c                                    ; $7B6C: $71
    ld [hl], $0A                                  ; $7B6D: $36 $0A
    db $E4                                        ; $7B6F: $E4
    ld h, d                                       ; $7B70: $62
    inc h                                         ; $7B71: $24
    ld a, [bc]                                    ; $7B72: $0A
    db $E4                                        ; $7B73: $E4
    ld [hl], c                                    ; $7B74: $71
    ld [hl], $05                                  ; $7B75: $36 $05
    db $E4                                        ; $7B77: $E4
    ld [hl], c                                    ; $7B78: $71
    ld [hl], $0A                                  ; $7B79: $36 $0A
    db $E4                                        ; $7B7B: $E4
    ld [hl], c                                    ; $7B7C: $71
    ld [hl], $05                                  ; $7B7D: $36 $05
    db $E4                                        ; $7B7F: $E4
    ld [hl], c                                    ; $7B80: $71
    ld [hl], $0A                                  ; $7B81: $36 $0A
    db $E4                                        ; $7B83: $E4
    ld h, d                                       ; $7B84: $62
    inc h                                         ; $7B85: $24
    ld a, [bc]                                    ; $7B86: $0A
    db $E4                                        ; $7B87: $E4
    ld [hl], c                                    ; $7B88: $71
    ld [hl], $05                                  ; $7B89: $36 $05
    db $E4                                        ; $7B8B: $E4
    ld [hl], c                                    ; $7B8C: $71
    ld [hl], $05                                  ; $7B8D: $36 $05
    rst RST_20                                    ; $7B8F: $E7
    nop                                           ; $7B90: $00
    ld [bc], a                                    ; $7B91: $02
    inc bc                                        ; $7B92: $03
    ld a, e                                       ; $7B93: $7B
    db $ED                                        ; $7B94: $ED
    db $E4                                        ; $7B95: $E4
    ld h, d                                       ; $7B96: $62
    inc h                                         ; $7B97: $24
    rrca                                          ; $7B98: $0F
    db $E4                                        ; $7B99: $E4
    ld [hl], c                                    ; $7B9A: $71
    ld [hl], $05                                  ; $7B9B: $36 $05
    db $E4                                        ; $7B9D: $E4
    ld h, d                                       ; $7B9E: $62
    inc h                                         ; $7B9F: $24
    ld a, [bc]                                    ; $7BA0: $0A
    db $E4                                        ; $7BA1: $E4
    ld [hl], c                                    ; $7BA2: $71
    ld [hl], $0A                                  ; $7BA3: $36 $0A
    db $E4                                        ; $7BA5: $E4
    ld h, d                                       ; $7BA6: $62
    inc h                                         ; $7BA7: $24
    dec b                                         ; $7BA8: $05
    db $E4                                        ; $7BA9: $E4
    ld [hl], c                                    ; $7BAA: $71
    ld [hl], $0A                                  ; $7BAB: $36 $0A
    db $E4                                        ; $7BAD: $E4
    ld [hl], c                                    ; $7BAE: $71
    ld [hl], $05                                  ; $7BAF: $36 $05
    db $E4                                        ; $7BB1: $E4
    ld h, d                                       ; $7BB2: $62
    inc h                                         ; $7BB3: $24
    ld a, [bc]                                    ; $7BB4: $0A
    db $E4                                        ; $7BB5: $E4
    ld [hl], c                                    ; $7BB6: $71
    ld [hl], $0A                                  ; $7BB7: $36 $0A
    db $E4                                        ; $7BB9: $E4
    ld h, d                                       ; $7BBA: $62
    inc h                                         ; $7BBB: $24
    rrca                                          ; $7BBC: $0F
    db $E4                                        ; $7BBD: $E4
    ld [hl], c                                    ; $7BBE: $71
    ld [hl], $05                                  ; $7BBF: $36 $05
    db $E4                                        ; $7BC1: $E4
    ld h, d                                       ; $7BC2: $62
    inc h                                         ; $7BC3: $24
    ld a, [bc]                                    ; $7BC4: $0A
    db $E4                                        ; $7BC5: $E4
    ld [hl], c                                    ; $7BC6: $71
    ld [hl], $0A                                  ; $7BC7: $36 $0A
    db $E4                                        ; $7BC9: $E4
    ld h, d                                       ; $7BCA: $62
    inc h                                         ; $7BCB: $24
    dec b                                         ; $7BCC: $05
    db $E4                                        ; $7BCD: $E4
    ld [hl], c                                    ; $7BCE: $71
    ld [hl], $0A                                  ; $7BCF: $36 $0A
    db $E4                                        ; $7BD1: $E4
    ld [hl], c                                    ; $7BD2: $71
    ld [hl], $05                                  ; $7BD3: $36 $05
    db $E4                                        ; $7BD5: $E4
    ld h, d                                       ; $7BD6: $62
    inc h                                         ; $7BD7: $24
    ld a, [bc]                                    ; $7BD8: $0A
    db $E4                                        ; $7BD9: $E4
    ld [hl], c                                    ; $7BDA: $71
    ld [hl], $05                                  ; $7BDB: $36 $05
    db $E4                                        ; $7BDD: $E4
    ld [hl], c                                    ; $7BDE: $71
    ld [hl], $05                                  ; $7BDF: $36 $05
    rst RST_20                                    ; $7BE1: $E7
    nop                                           ; $7BE2: $00
    ld [bc], a                                    ; $7BE3: $02
    sub l                                         ; $7BE4: $95
    ld a, e                                       ; $7BE5: $7B
    db $ED                                        ; $7BE6: $ED
    db $E4                                        ; $7BE7: $E4
    ld h, d                                       ; $7BE8: $62
    inc h                                         ; $7BE9: $24
    dec b                                         ; $7BEA: $05
    db $E4                                        ; $7BEB: $E4
    ld [hl], c                                    ; $7BEC: $71
    ld [hl], $05                                  ; $7BED: $36 $05
    db $E4                                        ; $7BEF: $E4
    ld [hl], c                                    ; $7BF0: $71
    ld [hl], $05                                  ; $7BF1: $36 $05
    db $E4                                        ; $7BF3: $E4
    ld [hl], c                                    ; $7BF4: $71
    ld [hl], $05                                  ; $7BF5: $36 $05
    rst RST_20                                    ; $7BF7: $E7
    nop                                           ; $7BF8: $00
    ld b, $E7                                     ; $7BF9: $06 $E7
    ld a, e                                       ; $7BFB: $7B
    db $ED                                        ; $7BFC: $ED
    db $E4                                        ; $7BFD: $E4
    ld h, d                                       ; $7BFE: $62
    inc h                                         ; $7BFF: $24
    ld a, [bc]                                    ; $7C00: $0A
    db $E4                                        ; $7C01: $E4
    ld [hl], d                                    ; $7C02: $72
    ld [hl-], a                                   ; $7C03: $32
    dec b                                         ; $7C04: $05
    db $E4                                        ; $7C05: $E4
    ld [hl], d                                    ; $7C06: $72
    db $10                                        ; $7C07: $10
    dec b                                         ; $7C08: $05
    db $E4                                        ; $7C09: $E4
    ld [hl], c                                    ; $7C0A: $71
    ld [hl], $0A                                  ; $7C0B: $36 $0A
    db $E4                                        ; $7C0D: $E4
    ld h, d                                       ; $7C0E: $62
    inc h                                         ; $7C0F: $24
    ld a, [bc]                                    ; $7C10: $0A
    db $E4                                        ; $7C11: $E4
    ld [hl], d                                    ; $7C12: $72
    ld [hl-], a                                   ; $7C13: $32
    dec b                                         ; $7C14: $05
    db $E4                                        ; $7C15: $E4
    ld [hl], d                                    ; $7C16: $72
    db $10                                        ; $7C17: $10
    dec b                                         ; $7C18: $05
    db $E4                                        ; $7C19: $E4
    ld [hl], c                                    ; $7C1A: $71
    ld [hl], $0A                                  ; $7C1B: $36 $0A
    db $E4                                        ; $7C1D: $E4
    ld h, d                                       ; $7C1E: $62
    inc h                                         ; $7C1F: $24
    ld a, [bc]                                    ; $7C20: $0A
    db $E4                                        ; $7C21: $E4
    ld [hl], d                                    ; $7C22: $72
    ld [hl-], a                                   ; $7C23: $32
    dec b                                         ; $7C24: $05
    db $E4                                        ; $7C25: $E4
    ld [hl], d                                    ; $7C26: $72
    db $10                                        ; $7C27: $10
    dec b                                         ; $7C28: $05
    db $E4                                        ; $7C29: $E4
    ld [hl], c                                    ; $7C2A: $71
    ld [hl], $0A                                  ; $7C2B: $36 $0A
    db $E4                                        ; $7C2D: $E4
    ld h, d                                       ; $7C2E: $62
    inc h                                         ; $7C2F: $24
    ld a, [bc]                                    ; $7C30: $0A
    db $E4                                        ; $7C31: $E4
    ld h, d                                       ; $7C32: $62
    inc h                                         ; $7C33: $24
    ld a, [bc]                                    ; $7C34: $0A
    db $E4                                        ; $7C35: $E4
    ld h, d                                       ; $7C36: $62
    inc h                                         ; $7C37: $24
    ld a, [bc]                                    ; $7C38: $0A
    db $E4                                        ; $7C39: $E4
    ld h, d                                       ; $7C3A: $62
    inc h                                         ; $7C3B: $24
    ld a, [bc]                                    ; $7C3C: $0A
    db $E4                                        ; $7C3D: $E4
    ld h, d                                       ; $7C3E: $62
    inc h                                         ; $7C3F: $24
    ld a, [bc]                                    ; $7C40: $0A
    db $E4                                        ; $7C41: $E4
    ld h, d                                       ; $7C42: $62
    inc h                                         ; $7C43: $24
    ld a, [bc]                                    ; $7C44: $0A
    db $E4                                        ; $7C45: $E4
    ld h, d                                       ; $7C46: $62
    inc h                                         ; $7C47: $24
    ld a, [bc]                                    ; $7C48: $0A
    rst RST_20                                    ; $7C49: $E7
    nop                                           ; $7C4A: $00
    inc b                                         ; $7C4B: $04
    db $FD                                        ; $7C4C: $FD
    ld a, e                                       ; $7C4D: $7B
    db $ED                                        ; $7C4E: $ED
    db $E4                                        ; $7C4F: $E4
    ld [hl], c                                    ; $7C50: $71
    inc h                                         ; $7C51: $24
    dec b                                         ; $7C52: $05
    db $E4                                        ; $7C53: $E4
    ld b, c                                       ; $7C54: $41
    ld hl, $E405                                  ; $7C55: $21 $05 $E4
    ld b, c                                       ; $7C58: $41
    ld hl, $E405                                  ; $7C59: $21 $05 $E4
    ld b, c                                       ; $7C5C: $41
    ld hl, $ED05                                  ; $7C5D: $21 $05 $ED
    db $E4                                        ; $7C60: $E4
    ld h, d                                       ; $7C61: $62
    inc h                                         ; $7C62: $24
    dec b                                         ; $7C63: $05
    db $E4                                        ; $7C64: $E4
    ld b, c                                       ; $7C65: $41
    ld hl, $E405                                  ; $7C66: $21 $05 $E4
    ld b, c                                       ; $7C69: $41
    ld hl, $E405                                  ; $7C6A: $21 $05 $E4
    ld b, c                                       ; $7C6D: $41
    ld hl, $ED05                                  ; $7C6E: $21 $05 $ED
    db $E4                                        ; $7C71: $E4
    ld [hl], c                                    ; $7C72: $71
    ld [hl], $05                                  ; $7C73: $36 $05
    db $E4                                        ; $7C75: $E4
    ld b, c                                       ; $7C76: $41
    ld hl, $E405                                  ; $7C77: $21 $05 $E4
    ld h, d                                       ; $7C7A: $62
    inc h                                         ; $7C7B: $24
    dec b                                         ; $7C7C: $05
    db $E4                                        ; $7C7D: $E4
    ld b, c                                       ; $7C7E: $41
    ld hl, $ED05                                  ; $7C7F: $21 $05 $ED
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
