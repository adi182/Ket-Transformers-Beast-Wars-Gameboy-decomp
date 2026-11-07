; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02e", ROMX[$4000], BANK[$2e]

    ldh a, [$FFF3]                                ; $4000: $F0 $F3
    inc a                                         ; $4002: $3C
    and $07                                       ; $4003: $E6 $07
    ldh [$FFF3], a                                ; $4005: $E0 $F3
    add $F8                                       ; $4007: $C6 $F8
    ld l, a                                       ; $4009: $6F
    ld h, $D5                                     ; $400A: $26 $D5
    ld [hl], d                                    ; $400C: $72
    ret                                           ; $400D: $C9


    call Call_02E_4070                            ; $400E: $CD $70 $40
    ld de, $D526                                  ; $4011: $11 $26 $D5
    ld hl, $D4A6                                  ; $4014: $21 $A6 $D4
    call Call_02E_46A5                            ; $4017: $CD $A5 $46
    ld de, $D546                                  ; $401A: $11 $46 $D5
    ld hl, $D4C6                                  ; $401D: $21 $C6 $D4
    call Call_02E_46A5                            ; $4020: $CD $A5 $46
    ld de, $D566                                  ; $4023: $11 $66 $D5
    ld hl, $D4E6                                  ; $4026: $21 $E6 $D4
    call Call_02E_46A5                            ; $4029: $CD $A5 $46
    ld de, $D586                                  ; $402C: $11 $86 $D5
    ld hl, $D506                                  ; $402F: $21 $06 $D5
    call Call_02E_46A5                            ; $4032: $CD $A5 $46
    ld hl, $D4A6                                  ; $4035: $21 $A6 $D4
    ld a, $08                                     ; $4038: $3E $08
    ld [$D485], a                                 ; $403A: $EA $85 $D4

jr_02E_403D:
    ld a, l                                       ; $403D: $7D
    ldh [$FFF0], a                                ; $403E: $E0 $F0
    ld a, h                                       ; $4040: $7C
    ldh [$FFF1], a                                ; $4041: $E0 $F1
    push hl                                       ; $4043: $E5
    ld a, [hl]                                    ; $4044: $7E
    bit 7, a                                      ; $4045: $CB $7F
    call nz, Call_02E_4257                        ; $4047: $C4 $57 $42
    ld hl, $D485                                  ; $404A: $21 $85 $D4
    dec [hl]                                      ; $404D: $35
    pop hl                                        ; $404E: $E1
    ld de, $0020                                  ; $404F: $11 $20 $00
    add hl, de                                    ; $4052: $19
    jr nz, jr_02E_403D                            ; $4053: $20 $E8

    ld hl, $D4B2                                  ; $4055: $21 $B2 $D4
    ld de, $D4B3                                  ; $4058: $11 $B3 $D4
    call Call_02E_466D                            ; $405B: $CD $6D $46
    ld hl, $D4D2                                  ; $405E: $21 $D2 $D4
    ld de, $D4D3                                  ; $4061: $11 $D3 $D4
    call Call_02E_466D                            ; $4064: $CD $6D $46
    ld hl, $D512                                  ; $4067: $21 $12 $D5
    ld de, $D513                                  ; $406A: $11 $13 $D5
    jp Jump_02E_466D                              ; $406D: $C3 $6D $46


Call_02E_4070:
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
    jp z, Jump_02E_46C9                           ; $4088: $CA $C9 $46

    cp $DF                                        ; $408B: $FE $DF
    jp nc, Jump_02E_46C9                          ; $408D: $D2 $C9 $46

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
    call Call_02E_46C9                            ; $416C: $CD $C9 $46
    pop bc                                        ; $416F: $C1
    ld de, $D4A6                                  ; $4170: $11 $A6 $D4
    push hl                                       ; $4173: $E5
    ld hl, $D5F0                                  ; $4174: $21 $F0 $D5
    ld a, $22                                     ; $4177: $3E $22
    ld [hl], a                                    ; $4179: $77
    pop hl                                        ; $417A: $E1
    jp Jump_02E_4228                              ; $417B: $C3 $28 $42


    call Call_02E_4188                            ; $417E: $CD $88 $41
    jr jr_02E_41DA                                ; $4181: $18 $57

    call Call_02E_41AA                            ; $4183: $CD $AA $41
    jr jr_02E_41DA                                ; $4186: $18 $52

Call_02E_4188:
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


Call_02E_41AA:
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
    jr jr_02E_41DA                                ; $41D0: $18 $08

    ld a, [$D481]                                 ; $41D2: $FA $81 $D4
    bit 7, a                                      ; $41D5: $CB $7F
    jp nz, Jump_02E_4251                          ; $41D7: $C2 $51 $42

jr_02E_41DA:
    xor a                                         ; $41DA: $AF
    ldh [rNR10], a                                ; $41DB: $E0 $10
    ld de, $D526                                  ; $41DD: $11 $26 $D5
    jr jr_02E_4220                                ; $41E0: $18 $3E

    xor a                                         ; $41E2: $AF
    ldh [rNR10], a                                ; $41E3: $E0 $10
    ld [$D526], a                                 ; $41E5: $EA $26 $D5
    call Call_02E_46E0                            ; $41E8: $CD $E0 $46
    jr jr_02E_4251                                ; $41EB: $18 $64

    ld a, [$D481]                                 ; $41ED: $FA $81 $D4
    or $80                                        ; $41F0: $F6 $80
    ld [$D481], a                                 ; $41F2: $EA $81 $D4
    jr jr_02E_41FF                                ; $41F5: $18 $08

    ld a, [$D481]                                 ; $41F7: $FA $81 $D4
    bit 7, a                                      ; $41FA: $CB $7F
    jp nz, Jump_02E_4251                          ; $41FC: $C2 $51 $42

jr_02E_41FF:
    ld de, $D546                                  ; $41FF: $11 $46 $D5
    jr jr_02E_4220                                ; $4202: $18 $1C

    ld de, $D566                                  ; $4204: $11 $66 $D5
    jr jr_02E_4220                                ; $4207: $18 $17

    ld a, [$D481]                                 ; $4209: $FA $81 $D4
    or $40                                        ; $420C: $F6 $40
    ld [$D481], a                                 ; $420E: $EA $81 $D4
    jr jr_02E_421B                                ; $4211: $18 $08

    ld a, [$D481]                                 ; $4213: $FA $81 $D4
    bit 6, a                                      ; $4216: $CB $77
    jp nz, Jump_02E_4251                          ; $4218: $C2 $51 $42

jr_02E_421B:
    ld de, $D586                                  ; $421B: $11 $86 $D5
    jr jr_02E_4220                                ; $421E: $18 $00

jr_02E_4220:
    push hl                                       ; $4220: $E5
    ld hl, $D5F0                                  ; $4221: $21 $F0 $D5
    ld a, $77                                     ; $4224: $3E $77
    ld [hl], a                                    ; $4226: $77
    pop hl                                        ; $4227: $E1

Jump_02E_4228:
    ld l, c                                       ; $4228: $69
    ld h, b                                       ; $4229: $60
    ld a, [hl+]                                   ; $422A: $2A
    ld b, a                                       ; $422B: $47

jr_02E_422C:
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

jr_02E_4249:
    ld [de], a                                    ; $4249: $12
    inc de                                        ; $424A: $13
    dec c                                         ; $424B: $0D
    jr nz, jr_02E_4249                            ; $424C: $20 $FB

    dec b                                         ; $424E: $05
    jr nz, jr_02E_422C                            ; $424F: $20 $DB

Jump_02E_4251:
jr_02E_4251:
    ld a, $80                                     ; $4251: $3E $80
    ld [$D480], a                                 ; $4253: $EA $80 $D4
    ret                                           ; $4256: $C9


Call_02E_4257:
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

Jump_02E_4273:
    ldh a, [$FFF4]                                ; $4273: $F0 $F4
    ld l, a                                       ; $4275: $6F
    ldh a, [$FFF5]                                ; $4276: $F0 $F5
    ld h, a                                       ; $4278: $67
    ld a, [hl]                                    ; $4279: $7E
    ld hl, $FFF4                                  ; $427A: $21 $F4 $FF
    inc [hl]                                      ; $427D: $34
    jr nz, jr_02E_4282                            ; $427E: $20 $02

    inc l                                         ; $4280: $2C
    inc [hl]                                      ; $4281: $34

jr_02E_4282:
    cp $E0                                        ; $4282: $FE $E0
    jp nc, Jump_02E_43B4                          ; $4284: $D2 $B4 $43

    ld hl, $0001                                  ; $4287: $21 $01 $00
    add hl, de                                    ; $428A: $19
    bit 5, [hl]                                   ; $428B: $CB $6E
    jr z, jr_02E_4298                             ; $428D: $28 $09

    ld hl, $000E                                  ; $428F: $21 $0E $00
    add hl, de                                    ; $4292: $19
    ld [hl+], a                                   ; $4293: $22
    xor a                                         ; $4294: $AF
    ld [hl], a                                    ; $4295: $77
    jr jr_02E_42B8                                ; $4296: $18 $20

jr_02E_4298:
    cp $80                                        ; $4298: $FE $80
    jp c, Jump_02E_42EB                           ; $429A: $DA $EB $42

    sub $80                                       ; $429D: $D6 $80
    jr z, jr_02E_42A6                             ; $429F: $28 $05

    ld hl, $0004                                  ; $42A1: $21 $04 $00
    add hl, de                                    ; $42A4: $19
    add [hl]                                      ; $42A5: $86

jr_02E_42A6:
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

jr_02E_42B8:
    ld a, [de]                                    ; $42B8: $1A
    bit 2, a                                      ; $42B9: $CB $57
    jr nz, jr_02E_42D8                            ; $42BB: $20 $1B

    bit 1, a                                      ; $42BD: $CB $4F
    ld hl, $0001                                  ; $42BF: $21 $01 $00
    add hl, de                                    ; $42C2: $19
    ld a, [hl]                                    ; $42C3: $7E
    ld c, a                                       ; $42C4: $4F
    jr nz, jr_02E_42CF                            ; $42C5: $20 $08

    dec c                                         ; $42C7: $0D
    ld hl, $000D                                  ; $42C8: $21 $0D $00
    add hl, de                                    ; $42CB: $19
    ld a, [hl]                                    ; $42CC: $7E
    ldh [c], a                                    ; $42CD: $E2
    inc c                                         ; $42CE: $0C

jr_02E_42CF:
    ld hl, $000E                                  ; $42CF: $21 $0E $00
    add hl, de                                    ; $42D2: $19
    ld a, [hl+]                                   ; $42D3: $2A
    ldh [c], a                                    ; $42D4: $E2
    inc c                                         ; $42D5: $0C
    ld a, [hl]                                    ; $42D6: $7E
    ldh [c], a                                    ; $42D7: $E2

jr_02E_42D8:
    ldh a, [$FFF4]                                ; $42D8: $F0 $F4
    ld l, a                                       ; $42DA: $6F
    ldh a, [$FFF5]                                ; $42DB: $F0 $F5
    ld h, a                                       ; $42DD: $67
    ld a, [hl]                                    ; $42DE: $7E
    cp $80                                        ; $42DF: $FE $80
    jr nc, jr_02E_42F0                            ; $42E1: $30 $0D

    ld hl, $FFF4                                  ; $42E3: $21 $F4 $FF
    inc [hl]                                      ; $42E6: $34
    jr nz, jr_02E_42EB                            ; $42E7: $20 $02

    inc l                                         ; $42E9: $2C
    inc [hl]                                      ; $42EA: $34

Jump_02E_42EB:
jr_02E_42EB:
    ld hl, $0007                                  ; $42EB: $21 $07 $00
    add hl, de                                    ; $42EE: $19
    ld [hl], a                                    ; $42EF: $77

jr_02E_42F0:
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
    jp nz, Jump_02E_43B3                          ; $430B: $C2 $B3 $43

    ld hl, $000E                                  ; $430E: $21 $0E $00
    add hl, de                                    ; $4311: $19
    ld a, [hl+]                                   ; $4312: $2A
    or [hl]                                       ; $4313: $B6
    jr nz, jr_02E_4345                            ; $4314: $20 $2F

    ld hl, $0001                                  ; $4316: $21 $01 $00
    add hl, de                                    ; $4319: $19
    ld a, [hl]                                    ; $431A: $7E
    cp $13                                        ; $431B: $FE $13
    jr z, jr_02E_433C                             ; $431D: $28 $1D

    cp $18                                        ; $431F: $FE $18
    jr z, jr_02E_4336                             ; $4321: $28 $13

    cp $1D                                        ; $4323: $FE $1D
    jr z, jr_02E_432D                             ; $4325: $28 $06

    ldh a, [rNR51]                                ; $4327: $F0 $25
    and $77                                       ; $4329: $E6 $77
    jr jr_02E_4340                                ; $432B: $18 $13

jr_02E_432D:
    xor a                                         ; $432D: $AF
    ldh [rNR30], a                                ; $432E: $E0 $1A
    ldh a, [rNR51]                                ; $4330: $F0 $25
    and $BB                                       ; $4332: $E6 $BB
    jr jr_02E_4340                                ; $4334: $18 $0A

jr_02E_4336:
    ldh a, [rNR51]                                ; $4336: $F0 $25
    and $DD                                       ; $4338: $E6 $DD
    jr jr_02E_4340                                ; $433A: $18 $04

jr_02E_433C:
    ldh a, [rNR51]                                ; $433C: $F0 $25
    and $EE                                       ; $433E: $E6 $EE

jr_02E_4340:
    ldh [rNR51], a                                ; $4340: $E0 $25
    jp Jump_02E_43B3                              ; $4342: $C3 $B3 $43


jr_02E_4345:
    ld a, [de]                                    ; $4345: $1A
    bit 1, a                                      ; $4346: $CB $4F
    jp nz, Jump_02E_43B3                          ; $4348: $C2 $B3 $43

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
    jr z, jr_02E_437F                             ; $435F: $28 $1E

    cp $18                                        ; $4361: $FE $18
    jr z, jr_02E_437A                             ; $4363: $28 $15

    cp $22                                        ; $4365: $FE $22
    jr z, jr_02E_4375                             ; $4367: $28 $0C

    xor a                                         ; $4369: $AF
    ldh [rNR30], a                                ; $436A: $E0 $1A
    ld a, $80                                     ; $436C: $3E $80
    ldh [rNR30], a                                ; $436E: $E0 $1A
    ld a, [hl]                                    ; $4370: $7E
    and $44                                       ; $4371: $E6 $44
    jr jr_02E_4382                                ; $4373: $18 $0D

jr_02E_4375:
    ld a, [hl]                                    ; $4375: $7E
    and $88                                       ; $4376: $E6 $88
    jr jr_02E_4382                                ; $4378: $18 $08

jr_02E_437A:
    ld a, [hl]                                    ; $437A: $7E
    and $22                                       ; $437B: $E6 $22
    jr jr_02E_4382                                ; $437D: $18 $03

jr_02E_437F:
    ld a, [hl]                                    ; $437F: $7E
    and $11                                       ; $4380: $E6 $11

jr_02E_4382:
    ld b, a                                       ; $4382: $47
    ldh a, [rNR51]                                ; $4383: $F0 $25
    or b                                          ; $4385: $B0
    ldh [rNR51], a                                ; $4386: $E0 $25
    ld hl, $0001                                  ; $4388: $21 $01 $00
    add hl, de                                    ; $438B: $19
    ld a, [hl]                                    ; $438C: $7E
    cp $1D                                        ; $438D: $FE $1D
    jr nz, jr_02E_43AB                            ; $438F: $20 $1A

    ld a, [de]                                    ; $4391: $1A
    bit 3, a                                      ; $4392: $CB $5F
    jr nz, jr_02E_43AB                            ; $4394: $20 $15

    ld a, [$D483]                                 ; $4396: $FA $83 $D4
    cp $FF                                        ; $4399: $FE $FF
    jr z, jr_02E_43AB                             ; $439B: $28 $0E

    ldh [rNR31], a                                ; $439D: $E0 $1B
    ld hl, $000F                                  ; $439F: $21 $0F $00
    add hl, de                                    ; $43A2: $19
    ld a, [hl]                                    ; $43A3: $7E
    set 7, a                                      ; $43A4: $CB $FF
    or $40                                        ; $43A6: $F6 $40
    ldh [c], a                                    ; $43A8: $E2
    jr jr_02E_43B3                                ; $43A9: $18 $08

jr_02E_43AB:
    ld hl, $000F                                  ; $43AB: $21 $0F $00
    add hl, de                                    ; $43AE: $19
    ld a, [hl]                                    ; $43AF: $7E
    set 7, a                                      ; $43B0: $CB $FF
    ldh [c], a                                    ; $43B2: $E2

Jump_02E_43B3:
jr_02E_43B3:
    ret                                           ; $43B3: $C9


Jump_02E_43B4:
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
    jp nz, Jump_02E_4273                          ; $43CA: $C2 $73 $42

    inc hl                                        ; $43CD: $23
    inc [hl]                                      ; $43CE: $34
    jp Jump_02E_4273                              ; $43CF: $C3 $73 $42


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

Jump_02E_4412:
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
    jp Jump_02E_4412                              ; $4445: $C3 $12 $44


    ld a, [de]                                    ; $4448: $1A
    res 6, a                                      ; $4449: $CB $B7
    ld [de], a                                    ; $444B: $12
    jp Jump_02E_4412                              ; $444C: $C3 $12 $44


    ld a, [de]                                    ; $444F: $1A
    res 1, a                                      ; $4450: $CB $8F
    ld [de], a                                    ; $4452: $12
    jp Jump_02E_4412                              ; $4453: $C3 $12 $44


    ld a, [de]                                    ; $4456: $1A
    set 1, a                                      ; $4457: $CB $CF
    ld [de], a                                    ; $4459: $12
    jp Jump_02E_4412                              ; $445A: $C3 $12 $44


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
    jr nz, jr_02E_4472                            ; $446E: $20 $02

    inc l                                         ; $4470: $2C
    inc [hl]                                      ; $4471: $34

jr_02E_4472:
    ld hl, $0002                                  ; $4472: $21 $02 $00
    add hl, de                                    ; $4475: $19
    ldh a, [$FFF4]                                ; $4476: $F0 $F4
    ld [hl+], a                                   ; $4478: $22
    ldh a, [$FFF5]                                ; $4479: $F0 $F5
    ld [hl], a                                    ; $447B: $77
    ld hl, $0008                                  ; $447C: $21 $08 $00
    add hl, de                                    ; $447F: $19
    ld [hl], $00                                  ; $4480: $36 $00
    jp Jump_02E_43B3                              ; $4482: $C3 $B3 $43


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
    call Call_02E_469C                            ; $44BA: $CD $9C $46
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
    jp Jump_02E_469C                              ; $44D9: $C3 $9C $46


    ldh a, [$FFF4]                                ; $44DC: $F0 $F4
    ld l, a                                       ; $44DE: $6F
    ldh a, [$FFF5]                                ; $44DF: $F0 $F5
    ld h, a                                       ; $44E1: $67
    ld a, [hl]                                    ; $44E2: $7E
    ld hl, $000B                                  ; $44E3: $21 $0B $00
    add hl, de                                    ; $44E6: $19
    ld [hl], a                                    ; $44E7: $77
    ld c, $10                                     ; $44E8: $0E $10
    jp Jump_02E_469C                              ; $44EA: $C3 $9C $46


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
    jr nz, jr_02E_4525                            ; $4508: $20 $1B

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
    jp nz, Jump_02E_4541                          ; $451A: $C2 $41 $45

    inc bc                                        ; $451D: $03
    ld a, c                                       ; $451E: $79
    ldh [$FFF4], a                                ; $451F: $E0 $F4
    ld a, b                                       ; $4521: $78
    ldh [$FFF5], a                                ; $4522: $E0 $F5
    ret                                           ; $4524: $C9


jr_02E_4525:
    ldh a, [$FFF4]                                ; $4525: $F0 $F4
    add $01                                       ; $4527: $C6 $01
    ldh [$FFF4], a                                ; $4529: $E0 $F4
    ldh a, [$FFF5]                                ; $452B: $F0 $F5
    adc $00                                       ; $452D: $CE $00
    ldh [$FFF5], a                                ; $452F: $E0 $F5
    dec [hl]                                      ; $4531: $35
    jr nz, jr_02E_4541                            ; $4532: $20 $0D

    ldh a, [$FFF4]                                ; $4534: $F0 $F4
    add $01                                       ; $4536: $C6 $01
    ldh [$FFF4], a                                ; $4538: $E0 $F4
    ldh a, [$FFF5]                                ; $453A: $F0 $F5
    adc $00                                       ; $453C: $CE $00
    ldh [$FFF5], a                                ; $453E: $E0 $F5
    ret                                           ; $4540: $C9


Jump_02E_4541:
jr_02E_4541:
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
    call Call_02E_46AF                            ; $45AA: $CD $AF $46
    ld c, $30                                     ; $45AD: $0E $30
    ld b, $10                                     ; $45AF: $06 $10

jr_02E_45B1:
    ld a, [hl+]                                   ; $45B1: $2A
    ldh [c], a                                    ; $45B2: $E2
    inc c                                         ; $45B3: $0C
    dec b                                         ; $45B4: $05
    jr nz, jr_02E_45B1                            ; $45B5: $20 $FA

    ret                                           ; $45B7: $C9


Call_02E_45B8:
    ld a, $00                                     ; $45B8: $3E $00
    ldh [rNR30], a                                ; $45BA: $E0 $1A
    ld a, [hl]                                    ; $45BC: $7E
    ld hl, $4877                                  ; $45BD: $21 $77 $48
    call Call_02E_46AF                            ; $45C0: $CD $AF $46
    ld c, $30                                     ; $45C3: $0E $30
    ld b, $10                                     ; $45C5: $06 $10

jr_02E_45C7:
    ld a, [hl+]                                   ; $45C7: $2A
    ldh [c], a                                    ; $45C8: $E2
    inc c                                         ; $45C9: $0C
    dec b                                         ; $45CA: $05
    jr nz, jr_02E_45C7                            ; $45CB: $20 $FA

    ret                                           ; $45CD: $C9


    ld a, [$D481]                                 ; $45CE: $FA $81 $D4
    and $BF                                       ; $45D1: $E6 $BF
    ld [$D481], a                                 ; $45D3: $EA $81 $D4
    jr jr_02E_45E0                                ; $45D6: $18 $08

    ld a, [$D481]                                 ; $45D8: $FA $81 $D4
    and $7F                                       ; $45DB: $E6 $7F
    ld [$D481], a                                 ; $45DD: $EA $81 $D4

jr_02E_45E0:
    push hl                                       ; $45E0: $E5
    ld hl, $D5F0                                  ; $45E1: $21 $F0 $D5
    ld a, $00                                     ; $45E4: $3E $00
    ld [hl], a                                    ; $45E6: $77
    pop hl                                        ; $45E7: $E1
    call Call_02E_468B                            ; $45E8: $CD $8B $46
    ldh a, [$FFF0]                                ; $45EB: $F0 $F0
    ld l, a                                       ; $45ED: $6F
    ldh a, [$FFF1]                                ; $45EE: $F0 $F1
    ld h, a                                       ; $45F0: $67
    ld a, [$D4A6]                                 ; $45F1: $FA $A6 $D4
    bit 7, a                                      ; $45F4: $CB $7F
    jr z, jr_02E_4648                             ; $45F6: $28 $50

    ld a, [hl]                                    ; $45F8: $7E
    bit 3, a                                      ; $45F9: $CB $5F
    jr nz, jr_02E_4601                            ; $45FB: $20 $04

    xor a                                         ; $45FD: $AF
    ld [hl], a                                    ; $45FE: $77
    pop hl                                        ; $45FF: $E1
    ret                                           ; $4600: $C9


jr_02E_4601:
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
    jr nz, jr_02E_4618                            ; $4612: $20 $04

    ld a, $08                                     ; $4614: $3E $08
    ldh [rNR10], a                                ; $4616: $E0 $10

jr_02E_4618:
    cp $1D                                        ; $4618: $FE $1D
    jr nz, jr_02E_4622                            ; $461A: $20 $06

    inc hl                                        ; $461C: $23
    inc hl                                        ; $461D: $23
    inc hl                                        ; $461E: $23
    ld a, [hl+]                                   ; $461F: $2A
    jr jr_02E_462F                                ; $4620: $18 $0D

jr_02E_4622:
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

jr_02E_462F:
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
    jr z, jr_02E_465B                             ; $463D: $28 $1C

    ld a, [hl+]                                   ; $463F: $2A
    or $80                                        ; $4640: $F6 $80
    ldh [c], a                                    ; $4642: $E2
    ld a, [$D482]                                 ; $4643: $FA $82 $D4
    ldh [rNR51], a                                ; $4646: $E0 $25

jr_02E_4648:
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


jr_02E_465B:
    ld a, [$D483]                                 ; $465B: $FA $83 $D4
    or a                                          ; $465E: $B7
    ld a, [hl+]                                   ; $465F: $2A
    cp $FF                                        ; $4660: $FE $FF
    jr z, jr_02E_4666                             ; $4662: $28 $02

    or $40                                        ; $4664: $F6 $40

jr_02E_4666:
    ldh [c], a                                    ; $4666: $E2
    inc hl                                        ; $4667: $23
    call Call_02E_45B8                            ; $4668: $CD $B8 $45
    pop hl                                        ; $466B: $E1
    ret                                           ; $466C: $C9


Call_02E_466D:
Jump_02E_466D:
    inc [hl]                                      ; $466D: $34
    ld a, [hl]                                    ; $466E: $7E
    and $0F                                       ; $466F: $E6 $0F
    ld c, a                                       ; $4671: $4F
    ld a, [de]                                    ; $4672: $1A
    and $0F                                       ; $4673: $E6 $0F
    cp c                                          ; $4675: $B9
    ret nz                                        ; $4676: $C0

    bit 3, a                                      ; $4677: $CB $5F
    jr z, jr_02E_4683                             ; $4679: $28 $08

    ld a, [hl]                                    ; $467B: $7E
    and $F0                                       ; $467C: $E6 $F0
    add $10                                       ; $467E: $C6 $10
    ret c                                         ; $4680: $D8

    ld [hl], a                                    ; $4681: $77
    ret                                           ; $4682: $C9


jr_02E_4683:
    ld a, [hl]                                    ; $4683: $7E
    and $F0                                       ; $4684: $E6 $F0
    ret z                                         ; $4686: $C8

    sub $10                                       ; $4687: $D6 $10
    ld [hl], a                                    ; $4689: $77
    ret                                           ; $468A: $C9


Call_02E_468B:
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


Call_02E_469C:
Jump_02E_469C:
    ld hl, $0000                                  ; $469C: $21 $00 $00
    add hl, de                                    ; $469F: $19
    bit 2, [hl]                                   ; $46A0: $CB $56
    ret nz                                        ; $46A2: $C0

    ldh [c], a                                    ; $46A3: $E2
    ret                                           ; $46A4: $C9


Call_02E_46A5:
    ld a, [de]                                    ; $46A5: $1A
    or a                                          ; $46A6: $B7
    jr z, jr_02E_46AC                             ; $46A7: $28 $03

    set 2, [hl]                                   ; $46A9: $CB $D6
    ret                                           ; $46AB: $C9


jr_02E_46AC:
    res 2, [hl]                                   ; $46AC: $CB $96
    ret                                           ; $46AE: $C9


Call_02E_46AF:
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

jr_02E_46C3:
    ld c, [hl]                                    ; $46C3: $4E
    ldh [c], a                                    ; $46C4: $E2
    inc hl                                        ; $46C5: $23
    dec b                                         ; $46C6: $05
    jr nz, jr_02E_46C3                            ; $46C7: $20 $FA

Call_02E_46C9:
Jump_02E_46C9:
    ld hl, $D4A6                                  ; $46C9: $21 $A6 $D4
    xor a                                         ; $46CC: $AF
    ld c, $09                                     ; $46CD: $0E $09

jr_02E_46CF:
    ld b, $20                                     ; $46CF: $06 $20

jr_02E_46D1:
    ld [hl+], a                                   ; $46D1: $22
    dec b                                         ; $46D2: $05
    jr nz, jr_02E_46D1                            ; $46D3: $20 $FC

    dec c                                         ; $46D5: $0D
    jr nz, jr_02E_46CF                            ; $46D6: $20 $F7

    ld a, $77                                     ; $46D8: $3E $77
    ldh [rNR50], a                                ; $46DA: $E0 $24
    xor a                                         ; $46DC: $AF
    ld [$D481], a                                 ; $46DD: $EA $81 $D4

Call_02E_46E0:
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
    jr jr_02E_4733                                ; $4718: $18 $19

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
    ld c, e                                       ; $4727: $4B
    ld d, e                                       ; $4728: $53
    dec a                                         ; $4729: $3D
    ld d, l                                       ; $472A: $55
    dec h                                         ; $472B: $25
    ld e, c                                       ; $472C: $59
    inc hl                                        ; $472D: $23
    ld e, a                                       ; $472E: $5F
    and $64                                       ; $472F: $E6 $64
    jr c, jr_02E_47A0                             ; $4731: $38 $6D

jr_02E_4733:
    sbc b                                         ; $4733: $98
    ld [hl], d                                    ; $4734: $72
    or l                                          ; $4735: $B5
    ld [hl], a                                    ; $4736: $77
    ld l, a                                       ; $4737: $6F
    ld c, l                                       ; $4738: $4D
    ld l, a                                       ; $4739: $6F
    ld c, l                                       ; $473A: $4D
    ld l, a                                       ; $473B: $6F
    ld c, l                                       ; $473C: $4D
    ld l, a                                       ; $473D: $6F
    ld c, l                                       ; $473E: $4D
    ld l, a                                       ; $473F: $6F
    ld c, l                                       ; $4740: $4D
    ld l, a                                       ; $4741: $6F
    ld c, l                                       ; $4742: $4D
    ld l, a                                       ; $4743: $6F
    ld c, l                                       ; $4744: $4D
    ld l, a                                       ; $4745: $6F
    ld c, l                                       ; $4746: $4D
    ld l, a                                       ; $4747: $6F
    ld c, l                                       ; $4748: $4D
    ld l, a                                       ; $4749: $6F
    ld c, l                                       ; $474A: $4D
    ld l, a                                       ; $474B: $6F
    ld c, l                                       ; $474C: $4D
    ld l, a                                       ; $474D: $6F
    ld c, l                                       ; $474E: $4D
    ld l, a                                       ; $474F: $6F
    ld c, l                                       ; $4750: $4D
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

jr_02E_47A0:
    ld c, h                                       ; $47A0: $4C
    ld e, b                                       ; $47A1: $58
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
    jr nc, jr_02E_48F1                            ; $48DD: $30 $12

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

jr_02E_48F1:
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

jr_02E_48FF:
    ld b, e                                       ; $48FF: $43
    ld [hl-], a                                   ; $4900: $32
    ld hl, $0F10                                  ; $4901: $21 $10 $0F
    cp $ED                                        ; $4904: $FE $ED
    call c, $BACB                                 ; $4906: $DC $CB $BA
    xor c                                         ; $4909: $A9
    sbc b                                         ; $490A: $98
    jr jr_02E_48FF                                ; $490B: $18 $F2

    ld l, b                                       ; $490D: $68
    ld c, [hl]                                    ; $490E: $4E
    jr jr_02E_4987                                ; $490F: $18 $76

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
    jr z, jr_02E_4987                             ; $4931: $28 $54

    ld [hl], d                                    ; $4933: $72
    ld h, b                                       ; $4934: $60
    jr nc, jr_02E_4937                            ; $4935: $30 $00

jr_02E_4937:
    jr z, jr_02E_498D                             ; $4937: $28 $54

    ld a, a                                       ; $4939: $7F
    ld h, b                                       ; $493A: $60
    jr nc, jr_02E_493D                            ; $493B: $30 $00

jr_02E_493D:
    jr z, jr_02E_4993                             ; $493D: $28 $54

    ld [hl], l                                    ; $493F: $75
    ld h, b                                       ; $4940: $60
    jr nc, jr_02E_4943                            ; $4941: $30 $00

jr_02E_4943:
    jr z, jr_02E_4999                             ; $4943: $28 $54

    ld [hl], a                                    ; $4945: $77
    ld h, b                                       ; $4946: $60
    jr nc, jr_02E_4949                            ; $4947: $30 $00

jr_02E_4949:
    jr z, jr_02E_499F                             ; $4949: $28 $54

    ld a, h                                       ; $494B: $7C
    ld h, b                                       ; $494C: $60
    jr nc, jr_02E_494F                            ; $494D: $30 $00

jr_02E_494F:
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

jr_02E_4987:
    and l                                         ; $4987: $A5
    xor h                                         ; $4988: $AC
    xor c                                         ; $4989: $A9
    or c                                          ; $498A: $B1
    db $E4                                        ; $498B: $E4
    sub d                                         ; $498C: $92

jr_02E_498D:
    sbc l                                         ; $498D: $9D
    ld [bc], a                                    ; $498E: $02
    and l                                         ; $498F: $A5
    and b                                         ; $4990: $A0
    xor c                                         ; $4991: $A9
    and l                                         ; $4992: $A5

jr_02E_4993:
    xor h                                         ; $4993: $AC
    xor c                                         ; $4994: $A9
    or c                                          ; $4995: $B1
    db $E4                                        ; $4996: $E4
    ld d, d                                       ; $4997: $52
    sbc l                                         ; $4998: $9D

jr_02E_4999:
    ld [bc], a                                    ; $4999: $02
    and l                                         ; $499A: $A5
    and b                                         ; $499B: $A0
    xor c                                         ; $499C: $A9
    and l                                         ; $499D: $A5
    xor h                                         ; $499E: $AC

jr_02E_499F:
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
    jr jr_02E_4A21                                ; $4A07: $18 $18

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

jr_02E_4A21:
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
    jr jr_02E_4D55                                ; $4D17: $18 $3C

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
    jr jr_02E_4D68                                ; $4D2A: $18 $3C

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
    jr jr_02E_4D8E                                ; $4D50: $18 $3C

    ld c, l                                       ; $4D52: $4D
    nop                                           ; $4D53: $00
    add c                                         ; $4D54: $81

jr_02E_4D55:
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
    jr jr_02E_4DA1                                ; $4D63: $18 $3C

    ld c, l                                       ; $4D65: $4D
    nop                                           ; $4D66: $00
    add c                                         ; $4D67: $81

jr_02E_4D68:
    adc b                                         ; $4D68: $88
    dec e                                         ; $4D69: $1D
    ld b, e                                       ; $4D6A: $43
    ld c, l                                       ; $4D6B: $4D

jr_02E_4D6C:
    nop                                           ; $4D6C: $00
    add c                                         ; $4D6D: $81
    db $E3                                        ; $4D6E: $E3
    inc b                                         ; $4D6F: $04
    add b                                         ; $4D70: $80
    inc de                                        ; $4D71: $13
    adc b                                         ; $4D72: $88
    ld c, l                                       ; $4D73: $4D
    inc c                                         ; $4D74: $0C
    add c                                         ; $4D75: $81
    add b                                         ; $4D76: $80
    jr jr_02E_4D6C                                ; $4D77: $18 $F3

    ld c, [hl]                                    ; $4D79: $4E
    inc c                                         ; $4D7A: $0C
    add c                                         ; $4D7B: $81
    add b                                         ; $4D7C: $80
    dec e                                         ; $4D7D: $1D
    ld h, c                                       ; $4D7E: $61
    ld d, b                                       ; $4D7F: $50
    inc c                                         ; $4D80: $0C
    add c                                         ; $4D81: $81
    add b                                         ; $4D82: $80
    ld [hl+], a                                   ; $4D83: $22
    call z, Call_000_0052                         ; $4D84: $CC $52 $00
    add c                                         ; $4D87: $81
    db $E4                                        ; $4D88: $E4

jr_02E_4D89:
    ld a, b                                       ; $4D89: $78
    jp hl                                         ; $4D8A: $E9


    ld de, $80EE                                  ; $4D8B: $11 $EE $80

jr_02E_4D8E:
    db $EC                                        ; $4D8E: $EC
    and b                                         ; $4D8F: $A0
    ld c, l                                       ; $4D90: $4D
    db $E4                                        ; $4D91: $E4
    ld d, [hl]                                    ; $4D92: $56
    sub e                                         ; $4D93: $93
    db $EC                                        ; $4D94: $EC
    and b                                         ; $4D95: $A0
    ld c, l                                       ; $4D96: $4D
    db $E4                                        ; $4D97: $E4
    ld d, [hl]                                    ; $4D98: $56
    sub e                                         ; $4D99: $93
    db $EC                                        ; $4D9A: $EC
    dec de                                        ; $4D9B: $1B
    ld c, [hl]                                    ; $4D9C: $4E
    push hl                                       ; $4D9D: $E5
    adc b                                         ; $4D9E: $88
    ld c, l                                       ; $4D9F: $4D
    db $E4                                        ; $4DA0: $E4

jr_02E_4DA1:
    ld a, b                                       ; $4DA1: $78
    sub e                                         ; $4DA2: $93
    inc d                                         ; $4DA3: $14
    sub l                                         ; $4DA4: $95
    sub c                                         ; $4DA5: $91
    adc h                                         ; $4DA6: $8C
    db $E4                                        ; $4DA7: $E4
    ld e, b                                       ; $4DA8: $58
    adc h                                         ; $4DA9: $8C
    db $E4                                        ; $4DAA: $E4
    ld a, b                                       ; $4DAB: $78
    sbc b                                         ; $4DAC: $98
    db $E4                                        ; $4DAD: $E4
    ld e, b                                       ; $4DAE: $58
    sbc b                                         ; $4DAF: $98
    db $E4                                        ; $4DB0: $E4
    ld a, b                                       ; $4DB1: $78
    sub [hl]                                      ; $4DB2: $96
    sub l                                         ; $4DB3: $95
    db $E4                                        ; $4DB4: $E4
    ld e, b                                       ; $4DB5: $58
    sub l                                         ; $4DB6: $95
    db $E4                                        ; $4DB7: $E4
    ld a, b                                       ; $4DB8: $78
    sub [hl]                                      ; $4DB9: $96
    adc [hl]                                      ; $4DBA: $8E
    db $E4                                        ; $4DBB: $E4
    ld e, b                                       ; $4DBC: $58
    adc [hl]                                      ; $4DBD: $8E
    db $E4                                        ; $4DBE: $E4
    ld a, b                                       ; $4DBF: $78
    sub b                                         ; $4DC0: $90
    db $E4                                        ; $4DC1: $E4
    ld e, b                                       ; $4DC2: $58
    sub b                                         ; $4DC3: $90
    db $E4                                        ; $4DC4: $E4
    ld a, b                                       ; $4DC5: $78
    sub c                                         ; $4DC6: $91
    sub e                                         ; $4DC7: $93
    inc d                                         ; $4DC8: $14
    sub l                                         ; $4DC9: $95
    sub c                                         ; $4DCA: $91
    adc h                                         ; $4DCB: $8C
    db $E4                                        ; $4DCC: $E4
    ld e, b                                       ; $4DCD: $58
    adc h                                         ; $4DCE: $8C
    db $E4                                        ; $4DCF: $E4
    ld a, b                                       ; $4DD0: $78
    sbc b                                         ; $4DD1: $98
    db $E4                                        ; $4DD2: $E4
    ld e, b                                       ; $4DD3: $58
    sbc b                                         ; $4DD4: $98
    db $E4                                        ; $4DD5: $E4
    ld a, b                                       ; $4DD6: $78
    sbc d                                         ; $4DD7: $9A
    sbc b                                         ; $4DD8: $98
    db $E4                                        ; $4DD9: $E4
    ld e, b                                       ; $4DDA: $58
    sbc b                                         ; $4DDB: $98
    db $E4                                        ; $4DDC: $E4
    ld a, b                                       ; $4DDD: $78
    sub [hl]                                      ; $4DDE: $96
    adc [hl]                                      ; $4DDF: $8E
    db $E4                                        ; $4DE0: $E4
    ld e, b                                       ; $4DE1: $58
    adc [hl]                                      ; $4DE2: $8E
    db $E4                                        ; $4DE3: $E4
    ld a, b                                       ; $4DE4: $78
    sub b                                         ; $4DE5: $90
    db $E4                                        ; $4DE6: $E4
    ld e, b                                       ; $4DE7: $58
    sub b                                         ; $4DE8: $90
    db $E4                                        ; $4DE9: $E4
    ld a, b                                       ; $4DEA: $78
    sub c                                         ; $4DEB: $91
    sub e                                         ; $4DEC: $93
    db $E4                                        ; $4DED: $E4
    ld e, b                                       ; $4DEE: $58
    sub e                                         ; $4DEF: $93

jr_02E_4DF0:
    db $E4                                        ; $4DF0: $E4
    jr c, @-$6B                                   ; $4DF1: $38 $93

    db $E4                                        ; $4DF3: $E4
    jr z, jr_02E_4D89                             ; $4DF4: $28 $93

    db $E4                                        ; $4DF6: $E4
    ld a, b                                       ; $4DF7: $78

jr_02E_4DF8:
    sub e                                         ; $4DF8: $93
    db $E4                                        ; $4DF9: $E4
    ld e, b                                       ; $4DFA: $58

jr_02E_4DFB:
    sub e                                         ; $4DFB: $93
    ld a, [bc]                                    ; $4DFC: $0A
    db $E4                                        ; $4DFD: $E4
    ld a, b                                       ; $4DFE: $78
    sub c                                         ; $4DFF: $91
    inc d                                         ; $4E00: $14
    db $E4                                        ; $4E01: $E4
    ld e, b                                       ; $4E02: $58
    sub c                                         ; $4E03: $91
    ld a, [bc]                                    ; $4E04: $0A
    db $E4                                        ; $4E05: $E4
    ld a, b                                       ; $4E06: $78
    sub e                                         ; $4E07: $93
    inc d                                         ; $4E08: $14
    sub b                                         ; $4E09: $90
    jr z, jr_02E_4DF0                             ; $4E0A: $28 $E4

    ld e, b                                       ; $4E0C: $58
    sub b                                         ; $4E0D: $90
    inc d                                         ; $4E0E: $14
    db $E4                                        ; $4E0F: $E4
    ld a, b                                       ; $4E10: $78
    sub c                                         ; $4E11: $91
    jr z, jr_02E_4DF8                             ; $4E12: $28 $E4

    ld e, b                                       ; $4E14: $58
    sub c                                         ; $4E15: $91
    inc d                                         ; $4E16: $14
    db $E4                                        ; $4E17: $E4
    ld a, b                                       ; $4E18: $78
    sub e                                         ; $4E19: $93
    db $ED                                        ; $4E1A: $ED
    db $E4                                        ; $4E1B: $E4
    ld a, b                                       ; $4E1C: $78
    sub e                                         ; $4E1D: $93
    inc d                                         ; $4E1E: $14
    sub h                                         ; $4E1F: $94
    adc a                                         ; $4E20: $8F
    adc h                                         ; $4E21: $8C
    db $E4                                        ; $4E22: $E4
    ld e, b                                       ; $4E23: $58
    adc h                                         ; $4E24: $8C
    db $E4                                        ; $4E25: $E4
    ld a, b                                       ; $4E26: $78
    sbc e                                         ; $4E27: $9B
    db $E4                                        ; $4E28: $E4
    ld e, b                                       ; $4E29: $58
    sbc e                                         ; $4E2A: $9B
    db $E4                                        ; $4E2B: $E4
    ld a, b                                       ; $4E2C: $78
    sbc c                                         ; $4E2D: $99
    sbc b                                         ; $4E2E: $98
    db $E4                                        ; $4E2F: $E4
    ld e, b                                       ; $4E30: $58
    sbc b                                         ; $4E31: $98
    db $E4                                        ; $4E32: $E4
    ld a, b                                       ; $4E33: $78
    sbc c                                         ; $4E34: $99
    sub h                                         ; $4E35: $94
    db $E4                                        ; $4E36: $E4
    ld e, b                                       ; $4E37: $58
    sub h                                         ; $4E38: $94
    db $E4                                        ; $4E39: $E4
    ld a, b                                       ; $4E3A: $78
    sub c                                         ; $4E3B: $91
    sub e                                         ; $4E3C: $93
    sub h                                         ; $4E3D: $94
    sub [hl]                                      ; $4E3E: $96
    sbc b                                         ; $4E3F: $98
    sub h                                         ; $4E40: $94
    adc a                                         ; $4E41: $8F
    db $E4                                        ; $4E42: $E4
    ld e, b                                       ; $4E43: $58
    adc a                                         ; $4E44: $8F

jr_02E_4E45:
    db $E4                                        ; $4E45: $E4
    ld a, b                                       ; $4E46: $78
    sbc e                                         ; $4E47: $9B
    db $E4                                        ; $4E48: $E4
    ld e, b                                       ; $4E49: $58
    sbc e                                         ; $4E4A: $9B
    db $E4                                        ; $4E4B: $E4
    ld a, b                                       ; $4E4C: $78
    sbc l                                         ; $4E4D: $9D
    sbc e                                         ; $4E4E: $9B
    db $E4                                        ; $4E4F: $E4
    ld e, b                                       ; $4E50: $58
    sbc e                                         ; $4E51: $9B
    db $E4                                        ; $4E52: $E4
    ld a, b                                       ; $4E53: $78
    sbc c                                         ; $4E54: $99
    sbc b                                         ; $4E55: $98
    db $E4                                        ; $4E56: $E4
    ld e, b                                       ; $4E57: $58
    sbc b                                         ; $4E58: $98
    db $E4                                        ; $4E59: $E4
    ld a, b                                       ; $4E5A: $78
    sub [hl]                                      ; $4E5B: $96
    sub h                                         ; $4E5C: $94
    sub [hl]                                      ; $4E5D: $96
    sub h                                         ; $4E5E: $94
    jr z, jr_02E_4E45                             ; $4E5F: $28 $E4

    ld e, b                                       ; $4E61: $58
    sub h                                         ; $4E62: $94
    inc d                                         ; $4E63: $14
    db $E4                                        ; $4E64: $E4
    jr c, jr_02E_4DFB                             ; $4E65: $38 $94

    db $E4                                        ; $4E67: $E4
    ld a, b                                       ; $4E68: $78
    sub h                                         ; $4E69: $94
    sub e                                         ; $4E6A: $93
    sub h                                         ; $4E6B: $94

jr_02E_4E6C:
    sub [hl]                                      ; $4E6C: $96
    sbc b                                         ; $4E6D: $98
    db $E4                                        ; $4E6E: $E4
    ld e, b                                       ; $4E6F: $58
    sbc b                                         ; $4E70: $98
    db $E4                                        ; $4E71: $E4
    ld a, b                                       ; $4E72: $78
    sub h                                         ; $4E73: $94
    db $E4                                        ; $4E74: $E4
    ld e, b                                       ; $4E75: $58
    sub h                                         ; $4E76: $94
    db $E4                                        ; $4E77: $E4

jr_02E_4E78:
    ld a, b                                       ; $4E78: $78
    sbc e                                         ; $4E79: $9B
    db $E4                                        ; $4E7A: $E4
    ld e, b                                       ; $4E7B: $58
    sbc e                                         ; $4E7C: $9B
    db $E4                                        ; $4E7D: $E4
    ld a, b                                       ; $4E7E: $78
    sbc b                                         ; $4E7F: $98
    db $E4                                        ; $4E80: $E4
    ld e, b                                       ; $4E81: $58
    sbc b                                         ; $4E82: $98
    db $E4                                        ; $4E83: $E4
    ld a, b                                       ; $4E84: $78
    sbc c                                         ; $4E85: $99
    jr z, jr_02E_4E6C                             ; $4E86: $28 $E4

    ld e, b                                       ; $4E88: $58
    sbc c                                         ; $4E89: $99
    inc d                                         ; $4E8A: $14
    sbc c                                         ; $4E8B: $99
    db $E4                                        ; $4E8C: $E4
    ld a, b                                       ; $4E8D: $78
    sbc c                                         ; $4E8E: $99
    sbc b                                         ; $4E8F: $98
    sbc c                                         ; $4E90: $99
    sbc c                                         ; $4E91: $99

jr_02E_4E92:
    jr z, jr_02E_4E78                             ; $4E92: $28 $E4

    ld e, b                                       ; $4E94: $58
    sbc c                                         ; $4E95: $99
    inc d                                         ; $4E96: $14
    db $E4                                        ; $4E97: $E4
    ld a, b                                       ; $4E98: $78
    sub [hl]                                      ; $4E99: $96
    db $E4                                        ; $4E9A: $E4
    ld e, b                                       ; $4E9B: $58
    sub [hl]                                      ; $4E9C: $96
    db $E4                                        ; $4E9D: $E4

jr_02E_4E9E:
    ld a, b                                       ; $4E9E: $78
    sbc e                                         ; $4E9F: $9B
    db $E4                                        ; $4EA0: $E4
    ld e, b                                       ; $4EA1: $58
    sbc e                                         ; $4EA2: $9B
    db $E4                                        ; $4EA3: $E4
    ld a, b                                       ; $4EA4: $78
    sbc c                                         ; $4EA5: $99
    db $E4                                        ; $4EA6: $E4
    ld e, b                                       ; $4EA7: $58
    sbc c                                         ; $4EA8: $99
    db $E4                                        ; $4EA9: $E4
    ld a, b                                       ; $4EAA: $78
    sbc b                                         ; $4EAB: $98
    jr z, jr_02E_4E92                             ; $4EAC: $28 $E4

    ld e, b                                       ; $4EAE: $58

jr_02E_4EAF:
    sbc b                                         ; $4EAF: $98
    inc d                                         ; $4EB0: $14
    sbc b                                         ; $4EB1: $98
    db $E4                                        ; $4EB2: $E4
    ld a, b                                       ; $4EB3: $78
    sbc b                                         ; $4EB4: $98
    sub [hl]                                      ; $4EB5: $96
    sbc b                                         ; $4EB6: $98
    sbc a                                         ; $4EB7: $9F

jr_02E_4EB8:
    jr z, jr_02E_4E9E                             ; $4EB8: $28 $E4

    ld e, b                                       ; $4EBA: $58
    sbc a                                         ; $4EBB: $9F
    inc d                                         ; $4EBC: $14
    db $E4                                        ; $4EBD: $E4
    ld a, b                                       ; $4EBE: $78
    and b                                         ; $4EBF: $A0

jr_02E_4EC0:
    db $E4                                        ; $4EC0: $E4

jr_02E_4EC1:
    ld e, b                                       ; $4EC1: $58
    and b                                         ; $4EC2: $A0
    db $E4                                        ; $4EC3: $E4
    ld a, b                                       ; $4EC4: $78

jr_02E_4EC5:
    sbc e                                         ; $4EC5: $9B
    db $E4                                        ; $4EC6: $E4
    ld e, b                                       ; $4EC7: $58
    sbc e                                         ; $4EC8: $9B
    db $E4                                        ; $4EC9: $E4
    ld a, b                                       ; $4ECA: $78
    sbc b                                         ; $4ECB: $98
    db $E4                                        ; $4ECC: $E4

jr_02E_4ECD:
    ld e, b                                       ; $4ECD: $58

jr_02E_4ECE:
    sbc b                                         ; $4ECE: $98
    db $E4                                        ; $4ECF: $E4
    ld a, b                                       ; $4ED0: $78
    sbc e                                         ; $4ED1: $9B
    jr z, jr_02E_4EB8                             ; $4ED2: $28 $E4

jr_02E_4ED4:
    ld e, b                                       ; $4ED4: $58
    sbc e                                         ; $4ED5: $9B
    inc d                                         ; $4ED6: $14
    db $E4                                        ; $4ED7: $E4
    ld a, b                                       ; $4ED8: $78
    sbc c                                         ; $4ED9: $99
    jr z, jr_02E_4EC0                             ; $4EDA: $28 $E4

    ld e, b                                       ; $4EDC: $58
    sbc c                                         ; $4EDD: $99
    inc d                                         ; $4EDE: $14
    db $E4                                        ; $4EDF: $E4
    ld a, b                                       ; $4EE0: $78
    sub h                                         ; $4EE1: $94
    db $E4                                        ; $4EE2: $E4
    ld e, b                                       ; $4EE3: $58
    sub h                                         ; $4EE4: $94
    db $E4                                        ; $4EE5: $E4

jr_02E_4EE6:
    ld a, b                                       ; $4EE6: $78
    sub h                                         ; $4EE7: $94
    jr z, jr_02E_4ECE                             ; $4EE8: $28 $E4

jr_02E_4EEA:
    ld e, b                                       ; $4EEA: $58
    sub h                                         ; $4EEB: $94
    db $E4                                        ; $4EEC: $E4

jr_02E_4EED:
    ld a, b                                       ; $4EED: $78
    sub [hl]                                      ; $4EEE: $96
    db $E4                                        ; $4EEF: $E4
    ld e, b                                       ; $4EF0: $58
    sub [hl]                                      ; $4EF1: $96

jr_02E_4EF2:
    db $ED                                        ; $4EF2: $ED
    db $E4                                        ; $4EF3: $E4
    ld e, b                                       ; $4EF4: $58
    jp hl                                         ; $4EF5: $E9


    ld [hl+], a                                   ; $4EF6: $22
    xor $80                                       ; $4EF7: $EE $80
    db $E4                                        ; $4EF9: $E4
    ld e, b                                       ; $4EFA: $58
    add b                                         ; $4EFB: $80

jr_02E_4EFC:
    ld a, [bc]                                    ; $4EFC: $0A
    db $EC                                        ; $4EFD: $EC
    add hl, de                                    ; $4EFE: $19

jr_02E_4EFF:
    ld c, a                                       ; $4EFF: $4F
    db $E4                                        ; $4F00: $E4
    ld [hl], $93                                  ; $4F01: $36 $93
    db $EC                                        ; $4F03: $EC
    add hl, de                                    ; $4F04: $19
    ld c, a                                       ; $4F05: $4F

jr_02E_4F06:
    db $E4                                        ; $4F06: $E4
    ld [hl], $93                                  ; $4F07: $36 $93
    ld a, [bc]                                    ; $4F09: $0A
    xor $C0                                       ; $4F0A: $EE $C0

jr_02E_4F0C:
    and $F4                                       ; $4F0C: $E6 $F4
    db $EC                                        ; $4F0E: $EC
    sub d                                         ; $4F0F: $92
    ld c, a                                       ; $4F10: $4F
    db $EC                                        ; $4F11: $EC
    pop bc                                        ; $4F12: $C1
    ld c, a                                       ; $4F13: $4F
    and $0C                                       ; $4F14: $E6 $0C
    push hl                                       ; $4F16: $E5
    di                                            ; $4F17: $F3
    ld c, [hl]                                    ; $4F18: $4E
    db $E4                                        ; $4F19: $E4
    ld e, b                                       ; $4F1A: $58
    sub e                                         ; $4F1B: $93
    inc d                                         ; $4F1C: $14
    sub l                                         ; $4F1D: $95

jr_02E_4F1E:
    sub c                                         ; $4F1E: $91
    adc h                                         ; $4F1F: $8C
    db $E4                                        ; $4F20: $E4
    jr c, jr_02E_4EAF                             ; $4F21: $38 $8C

    db $E4                                        ; $4F23: $E4
    ld e, b                                       ; $4F24: $58
    sbc b                                         ; $4F25: $98
    db $E4                                        ; $4F26: $E4
    jr c, jr_02E_4EC1                             ; $4F27: $38 $98

    db $E4                                        ; $4F29: $E4
    ld e, b                                       ; $4F2A: $58

jr_02E_4F2B:
    sub [hl]                                      ; $4F2B: $96
    sub l                                         ; $4F2C: $95
    db $E4                                        ; $4F2D: $E4
    jr c, jr_02E_4EC5                             ; $4F2E: $38 $95

    db $E4                                        ; $4F30: $E4
    ld e, b                                       ; $4F31: $58
    sub [hl]                                      ; $4F32: $96
    adc [hl]                                      ; $4F33: $8E
    db $E4                                        ; $4F34: $E4
    jr c, jr_02E_4EC5                             ; $4F35: $38 $8E

    db $E4                                        ; $4F37: $E4
    ld e, b                                       ; $4F38: $58
    sub b                                         ; $4F39: $90
    db $E4                                        ; $4F3A: $E4
    jr c, jr_02E_4ECD                             ; $4F3B: $38 $90

    db $E4                                        ; $4F3D: $E4
    ld e, b                                       ; $4F3E: $58

jr_02E_4F3F:
    sub c                                         ; $4F3F: $91
    sub e                                         ; $4F40: $93
    inc d                                         ; $4F41: $14
    sub l                                         ; $4F42: $95
    sub c                                         ; $4F43: $91
    adc h                                         ; $4F44: $8C
    db $E4                                        ; $4F45: $E4
    jr c, jr_02E_4ED4                             ; $4F46: $38 $8C

    db $E4                                        ; $4F48: $E4
    ld e, b                                       ; $4F49: $58
    sbc b                                         ; $4F4A: $98
    db $E4                                        ; $4F4B: $E4
    jr c, jr_02E_4EE6                             ; $4F4C: $38 $98

    db $E4                                        ; $4F4E: $E4
    ld e, b                                       ; $4F4F: $58
    sbc d                                         ; $4F50: $9A
    sbc b                                         ; $4F51: $98
    db $E4                                        ; $4F52: $E4
    jr c, jr_02E_4EED                             ; $4F53: $38 $98

    db $E4                                        ; $4F55: $E4
    ld e, b                                       ; $4F56: $58

jr_02E_4F57:
    sub [hl]                                      ; $4F57: $96
    adc [hl]                                      ; $4F58: $8E
    db $E4                                        ; $4F59: $E4
    jr c, jr_02E_4EEA                             ; $4F5A: $38 $8E

    db $E4                                        ; $4F5C: $E4
    ld e, b                                       ; $4F5D: $58
    sub b                                         ; $4F5E: $90
    db $E4                                        ; $4F5F: $E4
    jr c, jr_02E_4EF2                             ; $4F60: $38 $90

    db $E4                                        ; $4F62: $E4
    ld e, b                                       ; $4F63: $58
    sub c                                         ; $4F64: $91
    sub e                                         ; $4F65: $93
    db $E4                                        ; $4F66: $E4

jr_02E_4F67:
    jr c, jr_02E_4EFC                             ; $4F67: $38 $93

    db $E4                                        ; $4F69: $E4
    jr jr_02E_4EFF                                ; $4F6A: $18 $93

    sub e                                         ; $4F6C: $93
    db $E4                                        ; $4F6D: $E4
    ld e, b                                       ; $4F6E: $58

jr_02E_4F6F:
    sub e                                         ; $4F6F: $93
    db $E4                                        ; $4F70: $E4
    jr c, jr_02E_4F06                             ; $4F71: $38 $93

    ld a, [bc]                                    ; $4F73: $0A
    db $E4                                        ; $4F74: $E4
    ld e, b                                       ; $4F75: $58
    sub c                                         ; $4F76: $91
    inc d                                         ; $4F77: $14
    db $E4                                        ; $4F78: $E4
    jr c, jr_02E_4F0C                             ; $4F79: $38 $91

    ld a, [bc]                                    ; $4F7B: $0A
    db $E4                                        ; $4F7C: $E4
    ld e, b                                       ; $4F7D: $58
    sub e                                         ; $4F7E: $93
    inc d                                         ; $4F7F: $14
    sub b                                         ; $4F80: $90
    jr z, jr_02E_4F67                             ; $4F81: $28 $E4

    jr c, @-$6E                                   ; $4F83: $38 $90

    inc d                                         ; $4F85: $14

jr_02E_4F86:
    db $E4                                        ; $4F86: $E4
    ld e, b                                       ; $4F87: $58
    sub c                                         ; $4F88: $91
    jr z, jr_02E_4F6F                             ; $4F89: $28 $E4

    jr c, jr_02E_4F1E                             ; $4F8B: $38 $91

    inc d                                         ; $4F8D: $14
    db $E4                                        ; $4F8E: $E4
    ld e, b                                       ; $4F8F: $58
    sub e                                         ; $4F90: $93
    db $ED                                        ; $4F91: $ED
    sub h                                         ; $4F92: $94
    ld a, [bc]                                    ; $4F93: $0A
    db $E4                                        ; $4F94: $E4
    jr c, jr_02E_4F2B                             ; $4F95: $38 $94

    db $E4                                        ; $4F97: $E4
    ld e, b                                       ; $4F98: $58

jr_02E_4F99:
    sbc e                                         ; $4F99: $9B
    sbc b                                         ; $4F9A: $98
    sub h                                         ; $4F9B: $94
    sbc a                                         ; $4F9C: $9F
    sbc e                                         ; $4F9D: $9B
    sub h                                         ; $4F9E: $94
    and b                                         ; $4F9F: $A0
    sbc e                                         ; $4FA0: $9B
    sub h                                         ; $4FA1: $94
    sbc a                                         ; $4FA2: $9F
    sbc e                                         ; $4FA3: $9B
    sub h                                         ; $4FA4: $94
    sbc e                                         ; $4FA5: $9B
    sub h                                         ; $4FA6: $94
    sub h                                         ; $4FA7: $94
    db $E4                                        ; $4FA8: $E4
    jr c, jr_02E_4F3F                             ; $4FA9: $38 $94

    db $E4                                        ; $4FAB: $E4
    ld e, b                                       ; $4FAC: $58
    sbc l                                         ; $4FAD: $9D

jr_02E_4FAE:
    sbc c                                         ; $4FAE: $99
    sub h                                         ; $4FAF: $94
    and b                                         ; $4FB0: $A0
    sbc l                                         ; $4FB1: $9D
    sub h                                         ; $4FB2: $94
    and b                                         ; $4FB3: $A0
    sbc l                                         ; $4FB4: $9D
    sbc b                                         ; $4FB5: $98
    sbc l                                         ; $4FB6: $9D
    sbc b                                         ; $4FB7: $98
    sub h                                         ; $4FB8: $94
    sbc c                                         ; $4FB9: $99
    sub h                                         ; $4FBA: $94
    rst RST_20                                    ; $4FBB: $E7
    nop                                           ; $4FBC: $00
    ld [bc], a                                    ; $4FBD: $02
    sub d                                         ; $4FBE: $92
    ld c, a                                       ; $4FBF: $4F

jr_02E_4FC0:
    db $ED                                        ; $4FC0: $ED
    sub c                                         ; $4FC1: $91
    ld a, [bc]                                    ; $4FC2: $0A
    db $E4                                        ; $4FC3: $E4
    jr c, jr_02E_4F57                             ; $4FC4: $38 $91

    db $E4                                        ; $4FC6: $E4
    ld e, b                                       ; $4FC7: $58
    sbc b                                         ; $4FC8: $98
    sub h                                         ; $4FC9: $94
    sub c                                         ; $4FCA: $91
    sbc e                                         ; $4FCB: $9B
    sbc b                                         ; $4FCC: $98
    sub h                                         ; $4FCD: $94
    sbc a                                         ; $4FCE: $9F
    sbc e                                         ; $4FCF: $9B
    sub [hl]                                      ; $4FD0: $96

jr_02E_4FD1:
    sbc e                                         ; $4FD1: $9B
    sub [hl]                                      ; $4FD2: $96
    sbc a                                         ; $4FD3: $9F
    sbc e                                         ; $4FD4: $9B
    sub e                                         ; $4FD5: $93
    sub h                                         ; $4FD6: $94
    ld a, [bc]                                    ; $4FD7: $0A
    db $E4                                        ; $4FD8: $E4
    jr c, jr_02E_4F6F                             ; $4FD9: $38 $94

    db $E4                                        ; $4FDB: $E4
    ld e, b                                       ; $4FDC: $58
    sbc e                                         ; $4FDD: $9B
    sbc b                                         ; $4FDE: $98
    sub h                                         ; $4FDF: $94
    sbc a                                         ; $4FE0: $9F
    sbc e                                         ; $4FE1: $9B
    sub h                                         ; $4FE2: $94
    sbc [hl]                                      ; $4FE3: $9E
    sbc e                                         ; $4FE4: $9B
    sub l                                         ; $4FE5: $95
    sbc e                                         ; $4FE6: $9B
    sbc b                                         ; $4FE7: $98
    sub l                                         ; $4FE8: $95
    sbc e                                         ; $4FE9: $9B
    sub l                                         ; $4FEA: $95
    sub [hl]                                      ; $4FEB: $96
    ld a, [bc]                                    ; $4FEC: $0A
    db $E4                                        ; $4FED: $E4
    jr c, jr_02E_4F86                             ; $4FEE: $38 $96

    db $E4                                        ; $4FF0: $E4
    ld e, b                                       ; $4FF1: $58
    sbc l                                         ; $4FF2: $9D
    sbc c                                         ; $4FF3: $99

jr_02E_4FF4:
    sub [hl]                                      ; $4FF4: $96
    and d                                         ; $4FF5: $A2
    sbc l                                         ; $4FF6: $9D
    sbc c                                         ; $4FF7: $99
    and c                                         ; $4FF8: $A1
    sbc l                                         ; $4FF9: $9D
    sbc c                                         ; $4FFA: $99
    sbc l                                         ; $4FFB: $9D

jr_02E_4FFC:
    sbc c                                         ; $4FFC: $99
    sub l                                         ; $4FFD: $95
    sbc l                                         ; $4FFE: $9D
    sub l                                         ; $4FFF: $95
    sub h                                         ; $5000: $94
    ld a, [bc]                                    ; $5001: $0A
    db $E4                                        ; $5002: $E4
    jr c, jr_02E_4F99                             ; $5003: $38 $94

    db $E4                                        ; $5005: $E4
    ld e, b                                       ; $5006: $58
    sbc l                                         ; $5007: $9D
    sbc c                                         ; $5008: $99
    sub h                                         ; $5009: $94
    sbc l                                         ; $500A: $9D
    sbc c                                         ; $500B: $99
    sub h                                         ; $500C: $94
    sbc a                                         ; $500D: $9F
    sbc e                                         ; $500E: $9B
    sub e                                         ; $500F: $93
    sbc e                                         ; $5010: $9B
    sub [hl]                                      ; $5011: $96
    sub e                                         ; $5012: $93
    sbc e                                         ; $5013: $9B
    sub e                                         ; $5014: $93
    sub h                                         ; $5015: $94
    ld a, [bc]                                    ; $5016: $0A
    db $E4                                        ; $5017: $E4
    jr c, jr_02E_4FAE                             ; $5018: $38 $94

    db $E4                                        ; $501A: $E4
    ld e, b                                       ; $501B: $58
    sbc e                                         ; $501C: $9B
    sbc b                                         ; $501D: $98
    sub h                                         ; $501E: $94
    sbc a                                         ; $501F: $9F
    sbc e                                         ; $5020: $9B
    sub h                                         ; $5021: $94
    sbc a                                         ; $5022: $9F
    sbc e                                         ; $5023: $9B
    sub e                                         ; $5024: $93
    sbc a                                         ; $5025: $9F
    sbc b                                         ; $5026: $98
    sub e                                         ; $5027: $93
    sbc b                                         ; $5028: $98
    sub e                                         ; $5029: $93
    sub c                                         ; $502A: $91
    ld a, [bc]                                    ; $502B: $0A
    db $E4                                        ; $502C: $E4
    jr c, jr_02E_4FC0                             ; $502D: $38 $91

    db $E4                                        ; $502F: $E4
    ld e, b                                       ; $5030: $58
    sbc b                                         ; $5031: $98
    sub h                                         ; $5032: $94
    sub c                                         ; $5033: $91
    sbc e                                         ; $5034: $9B
    sbc b                                         ; $5035: $98
    sub h                                         ; $5036: $94
    sbc e                                         ; $5037: $9B
    sub [hl]                                      ; $5038: $96
    adc a                                         ; $5039: $8F
    sub [hl]                                      ; $503A: $96

jr_02E_503B:
    sub e                                         ; $503B: $93
    adc a                                         ; $503C: $8F
    sub e                                         ; $503D: $93
    adc a                                         ; $503E: $8F
    adc l                                         ; $503F: $8D
    ld a, [bc]                                    ; $5040: $0A
    db $E4                                        ; $5041: $E4

jr_02E_5042:
    jr c, jr_02E_4FD1                             ; $5042: $38 $8D

    db $E4                                        ; $5044: $E4
    ld e, b                                       ; $5045: $58
    sub h                                         ; $5046: $94
    sub c                                         ; $5047: $91
    adc l                                         ; $5048: $8D
    sbc b                                         ; $5049: $98
    sub h                                         ; $504A: $94
    sub c                                         ; $504B: $91
    sbc e                                         ; $504C: $9B
    sub h                                         ; $504D: $94
    adc l                                         ; $504E: $8D
    sbc b                                         ; $504F: $98
    sub h                                         ; $5050: $94
    adc l                                         ; $5051: $8D
    sub h                                         ; $5052: $94
    adc l                                         ; $5053: $8D
    sbc e                                         ; $5054: $9B
    jr z, jr_02E_503B                             ; $5055: $28 $E4

    jr c, jr_02E_4FF4                             ; $5057: $38 $9B

    db $E4                                        ; $5059: $E4
    ld e, b                                       ; $505A: $58
    sbc h                                         ; $505B: $9C
    jr z, jr_02E_5042                             ; $505C: $28 $E4

    jr c, jr_02E_4FFC                             ; $505E: $38 $9C

    db $ED                                        ; $5060: $ED
    db $E4                                        ; $5061: $E4
    ld b, b                                       ; $5062: $40
    jp hl                                         ; $5063: $E9


    ld b, h                                       ; $5064: $44
    di                                            ; $5065: $F3
    ld [bc], a                                    ; $5066: $02
    push af                                       ; $5067: $F5
    nop                                           ; $5068: $00
    db $EC                                        ; $5069: $EC
    ld [hl], l                                    ; $506A: $75
    ld d, b                                       ; $506B: $50
    db $EC                                        ; $506C: $EC
    ld [hl], l                                    ; $506D: $75
    ld d, b                                       ; $506E: $50
    db $EC                                        ; $506F: $EC
    inc [hl]                                      ; $5070: $34
    ld d, c                                       ; $5071: $51
    push hl                                       ; $5072: $E5
    ld h, c                                       ; $5073: $61
    ld d, b                                       ; $5074: $50
    add l                                         ; $5075: $85
    ld a, [bc]                                    ; $5076: $0A
    db $E4                                        ; $5077: $E4
    ld h, b                                       ; $5078: $60
    add l                                         ; $5079: $85
    db $E4                                        ; $507A: $E4
    ld b, b                                       ; $507B: $40
    adc h                                         ; $507C: $8C
    db $E4                                        ; $507D: $E4
    ld h, b                                       ; $507E: $60
    adc h                                         ; $507F: $8C
    db $E4                                        ; $5080: $E4
    ld b, b                                       ; $5081: $40
    sub l                                         ; $5082: $95
    db $E4                                        ; $5083: $E4
    ld h, b                                       ; $5084: $60
    sub l                                         ; $5085: $95
    db $E4                                        ; $5086: $E4
    ld b, b                                       ; $5087: $40
    sub c                                         ; $5088: $91
    db $E4                                        ; $5089: $E4
    ld h, b                                       ; $508A: $60
    sub c                                         ; $508B: $91
    db $E4                                        ; $508C: $E4
    ld b, b                                       ; $508D: $40
    sub [hl]                                      ; $508E: $96
    db $E4                                        ; $508F: $E4
    ld h, b                                       ; $5090: $60
    sub [hl]                                      ; $5091: $96
    db $E4                                        ; $5092: $E4
    ld b, b                                       ; $5093: $40
    sub c                                         ; $5094: $91
    db $E4                                        ; $5095: $E4
    ld h, b                                       ; $5096: $60
    sub c                                         ; $5097: $91
    db $E4                                        ; $5098: $E4
    ld b, b                                       ; $5099: $40
    sub l                                         ; $509A: $95
    db $E4                                        ; $509B: $E4
    ld h, b                                       ; $509C: $60
    sub l                                         ; $509D: $95
    db $E4                                        ; $509E: $E4
    ld b, b                                       ; $509F: $40
    sub c                                         ; $50A0: $91
    db $E4                                        ; $50A1: $E4
    ld h, b                                       ; $50A2: $60
    sub c                                         ; $50A3: $91
    adc d                                         ; $50A4: $8A
    db $E4                                        ; $50A5: $E4
    ld h, b                                       ; $50A6: $60
    adc d                                         ; $50A7: $8A
    db $E4                                        ; $50A8: $E4
    ld b, b                                       ; $50A9: $40
    sub c                                         ; $50AA: $91
    db $E4                                        ; $50AB: $E4
    ld h, b                                       ; $50AC: $60
    sub c                                         ; $50AD: $91
    db $E4                                        ; $50AE: $E4
    ld b, b                                       ; $50AF: $40
    sbc b                                         ; $50B0: $98
    db $E4                                        ; $50B1: $E4
    ld h, b                                       ; $50B2: $60
    sbc b                                         ; $50B3: $98
    db $E4                                        ; $50B4: $E4
    ld b, b                                       ; $50B5: $40
    sub c                                         ; $50B6: $91
    db $E4                                        ; $50B7: $E4
    ld h, b                                       ; $50B8: $60
    sub c                                         ; $50B9: $91
    db $E4                                        ; $50BA: $E4
    ld b, b                                       ; $50BB: $40
    sbc d                                         ; $50BC: $9A
    db $E4                                        ; $50BD: $E4
    ld h, b                                       ; $50BE: $60
    sbc d                                         ; $50BF: $9A
    db $E4                                        ; $50C0: $E4
    ld b, b                                       ; $50C1: $40
    sub c                                         ; $50C2: $91
    db $E4                                        ; $50C3: $E4
    ld h, b                                       ; $50C4: $60
    sub c                                         ; $50C5: $91
    db $E4                                        ; $50C6: $E4
    ld b, b                                       ; $50C7: $40
    sbc b                                         ; $50C8: $98
    db $E4                                        ; $50C9: $E4
    ld h, b                                       ; $50CA: $60
    sbc b                                         ; $50CB: $98
    db $E4                                        ; $50CC: $E4
    ld b, b                                       ; $50CD: $40
    sub [hl]                                      ; $50CE: $96
    db $E4                                        ; $50CF: $E4
    ld h, b                                       ; $50D0: $60
    sub [hl]                                      ; $50D1: $96
    rst RST_20                                    ; $50D2: $E7
    nop                                           ; $50D3: $00
    ld [bc], a                                    ; $50D4: $02
    ld [hl], l                                    ; $50D5: $75
    ld d, b                                       ; $50D6: $50
    add a                                         ; $50D7: $87
    db $E4                                        ; $50D8: $E4
    ld h, b                                       ; $50D9: $60
    add a                                         ; $50DA: $87
    db $E4                                        ; $50DB: $E4
    ld b, b                                       ; $50DC: $40
    adc [hl]                                      ; $50DD: $8E
    db $E4                                        ; $50DE: $E4
    ld h, b                                       ; $50DF: $60
    adc [hl]                                      ; $50E0: $8E
    db $E4                                        ; $50E1: $E4
    ld b, b                                       ; $50E2: $40
    sub [hl]                                      ; $50E3: $96
    db $E4                                        ; $50E4: $E4
    ld h, b                                       ; $50E5: $60
    sub [hl]                                      ; $50E6: $96
    db $E4                                        ; $50E7: $E4
    ld b, b                                       ; $50E8: $40
    sub e                                         ; $50E9: $93
    db $E4                                        ; $50EA: $E4
    ld h, b                                       ; $50EB: $60
    sub e                                         ; $50EC: $93
    db $E4                                        ; $50ED: $E4
    ld b, b                                       ; $50EE: $40
    sbc d                                         ; $50EF: $9A
    db $E4                                        ; $50F0: $E4
    ld h, b                                       ; $50F1: $60
    sbc d                                         ; $50F2: $9A
    db $E4                                        ; $50F3: $E4
    ld b, b                                       ; $50F4: $40
    adc [hl]                                      ; $50F5: $8E
    db $E4                                        ; $50F6: $E4
    ld h, b                                       ; $50F7: $60
    adc [hl]                                      ; $50F8: $8E
    db $E4                                        ; $50F9: $E4
    ld b, b                                       ; $50FA: $40
    sub [hl]                                      ; $50FB: $96
    db $E4                                        ; $50FC: $E4
    ld h, b                                       ; $50FD: $60
    sub [hl]                                      ; $50FE: $96
    db $E4                                        ; $50FF: $E4
    ld b, b                                       ; $5100: $40
    sub e                                         ; $5101: $93
    db $E4                                        ; $5102: $E4
    ld h, b                                       ; $5103: $60
    sub e                                         ; $5104: $93
    adc h                                         ; $5105: $8C
    db $E4                                        ; $5106: $E4
    ld h, b                                       ; $5107: $60
    adc h                                         ; $5108: $8C
    db $E4                                        ; $5109: $E4
    ld b, b                                       ; $510A: $40
    sub b                                         ; $510B: $90
    db $E4                                        ; $510C: $E4
    ld h, b                                       ; $510D: $60
    sub b                                         ; $510E: $90
    db $E4                                        ; $510F: $E4
    ld b, b                                       ; $5110: $40
    sub [hl]                                      ; $5111: $96
    db $E4                                        ; $5112: $E4
    ld h, b                                       ; $5113: $60
    sub [hl]                                      ; $5114: $96
    db $E4                                        ; $5115: $E4
    ld b, b                                       ; $5116: $40
    sub e                                         ; $5117: $93
    db $E4                                        ; $5118: $E4
    ld h, b                                       ; $5119: $60
    sub e                                         ; $511A: $93
    db $E4                                        ; $511B: $E4
    ld b, b                                       ; $511C: $40
    sbc b                                         ; $511D: $98
    db $E4                                        ; $511E: $E4
    ld h, b                                       ; $511F: $60
    sbc b                                         ; $5120: $98
    db $E4                                        ; $5121: $E4
    ld b, b                                       ; $5122: $40
    sub e                                         ; $5123: $93
    db $E4                                        ; $5124: $E4
    ld h, b                                       ; $5125: $60
    sub e                                         ; $5126: $93
    db $E4                                        ; $5127: $E4
    ld b, b                                       ; $5128: $40
    sub [hl]                                      ; $5129: $96
    db $E4                                        ; $512A: $E4
    ld h, b                                       ; $512B: $60
    sub [hl]                                      ; $512C: $96
    db $E4                                        ; $512D: $E4
    ld b, b                                       ; $512E: $40
    adc h                                         ; $512F: $8C
    db $E4                                        ; $5130: $E4
    ld h, b                                       ; $5131: $60
    adc h                                         ; $5132: $8C
    db $ED                                        ; $5133: $ED
    adc b                                         ; $5134: $88
    db $E4                                        ; $5135: $E4
    ld h, b                                       ; $5136: $60
    adc b                                         ; $5137: $88
    db $E4                                        ; $5138: $E4
    ld b, b                                       ; $5139: $40
    adc a                                         ; $513A: $8F
    db $E4                                        ; $513B: $E4
    ld h, b                                       ; $513C: $60
    adc a                                         ; $513D: $8F
    db $E4                                        ; $513E: $E4
    ld b, b                                       ; $513F: $40
    sub h                                         ; $5140: $94
    db $E4                                        ; $5141: $E4
    ld h, b                                       ; $5142: $60
    sub h                                         ; $5143: $94
    db $E4                                        ; $5144: $E4
    ld b, b                                       ; $5145: $40
    adc a                                         ; $5146: $8F
    db $E4                                        ; $5147: $E4
    ld h, b                                       ; $5148: $60
    adc a                                         ; $5149: $8F
    db $E4                                        ; $514A: $E4
    ld b, b                                       ; $514B: $40
    sub [hl]                                      ; $514C: $96
    db $E4                                        ; $514D: $E4
    ld h, b                                       ; $514E: $60
    sub [hl]                                      ; $514F: $96
    db $E4                                        ; $5150: $E4
    ld b, b                                       ; $5151: $40
    adc a                                         ; $5152: $8F
    db $E4                                        ; $5153: $E4
    ld h, b                                       ; $5154: $60
    adc a                                         ; $5155: $8F
    db $E4                                        ; $5156: $E4
    ld b, b                                       ; $5157: $40
    sub h                                         ; $5158: $94
    db $E4                                        ; $5159: $E4
    ld h, b                                       ; $515A: $60
    sub h                                         ; $515B: $94
    db $E4                                        ; $515C: $E4
    ld b, b                                       ; $515D: $40
    adc a                                         ; $515E: $8F
    db $E4                                        ; $515F: $E4
    ld h, b                                       ; $5160: $60
    adc a                                         ; $5161: $8F
    adc l                                         ; $5162: $8D
    db $E4                                        ; $5163: $E4
    ld h, b                                       ; $5164: $60
    adc l                                         ; $5165: $8D
    db $E4                                        ; $5166: $E4
    ld b, b                                       ; $5167: $40
    sub h                                         ; $5168: $94
    db $E4                                        ; $5169: $E4
    ld h, b                                       ; $516A: $60
    sub h                                         ; $516B: $94
    db $E4                                        ; $516C: $E4
    ld b, b                                       ; $516D: $40
    sbc c                                         ; $516E: $99
    db $E4                                        ; $516F: $E4
    ld h, b                                       ; $5170: $60
    sbc c                                         ; $5171: $99
    db $E4                                        ; $5172: $E4
    ld b, b                                       ; $5173: $40
    sub h                                         ; $5174: $94
    db $E4                                        ; $5175: $E4
    ld h, b                                       ; $5176: $60
    sub h                                         ; $5177: $94
    db $E4                                        ; $5178: $E4
    ld b, b                                       ; $5179: $40
    sbc e                                         ; $517A: $9B
    db $E4                                        ; $517B: $E4
    ld h, b                                       ; $517C: $60
    sbc e                                         ; $517D: $9B
    db $E4                                        ; $517E: $E4
    ld b, b                                       ; $517F: $40
    sub h                                         ; $5180: $94
    db $E4                                        ; $5181: $E4
    ld h, b                                       ; $5182: $60
    sub h                                         ; $5183: $94
    db $E4                                        ; $5184: $E4
    ld b, b                                       ; $5185: $40
    sbc c                                         ; $5186: $99
    db $E4                                        ; $5187: $E4
    ld h, b                                       ; $5188: $60
    sbc c                                         ; $5189: $99
    db $E4                                        ; $518A: $E4
    ld b, b                                       ; $518B: $40
    sub h                                         ; $518C: $94
    db $E4                                        ; $518D: $E4
    ld h, b                                       ; $518E: $60
    sub h                                         ; $518F: $94
    rst RST_20                                    ; $5190: $E7
    nop                                           ; $5191: $00
    ld [bc], a                                    ; $5192: $02
    inc [hl]                                      ; $5193: $34
    ld d, c                                       ; $5194: $51
    add l                                         ; $5195: $85
    db $E4                                        ; $5196: $E4
    ld h, b                                       ; $5197: $60
    add l                                         ; $5198: $85
    db $E4                                        ; $5199: $E4
    ld b, b                                       ; $519A: $40
    adc h                                         ; $519B: $8C
    db $E4                                        ; $519C: $E4
    ld h, b                                       ; $519D: $60
    adc h                                         ; $519E: $8C
    db $E4                                        ; $519F: $E4
    ld b, b                                       ; $51A0: $40
    sub c                                         ; $51A1: $91
    db $E4                                        ; $51A2: $E4
    ld h, b                                       ; $51A3: $60
    sub c                                         ; $51A4: $91
    db $E4                                        ; $51A5: $E4
    ld b, b                                       ; $51A6: $40
    adc h                                         ; $51A7: $8C
    db $E4                                        ; $51A8: $E4
    ld h, b                                       ; $51A9: $60
    adc h                                         ; $51AA: $8C
    db $E4                                        ; $51AB: $E4
    ld b, b                                       ; $51AC: $40
    add a                                         ; $51AD: $87
    db $E4                                        ; $51AE: $E4
    ld h, b                                       ; $51AF: $60
    add a                                         ; $51B0: $87
    db $E4                                        ; $51B1: $E4
    ld b, b                                       ; $51B2: $40
    adc a                                         ; $51B3: $8F
    db $E4                                        ; $51B4: $E4
    ld h, b                                       ; $51B5: $60
    adc a                                         ; $51B6: $8F
    db $E4                                        ; $51B7: $E4
    ld b, b                                       ; $51B8: $40
    sub e                                         ; $51B9: $93
    db $E4                                        ; $51BA: $E4
    ld h, b                                       ; $51BB: $60
    sub e                                         ; $51BC: $93
    db $E4                                        ; $51BD: $E4
    ld b, b                                       ; $51BE: $40
    adc a                                         ; $51BF: $8F
    db $E4                                        ; $51C0: $E4
    ld h, b                                       ; $51C1: $60
    adc a                                         ; $51C2: $8F
    adc b                                         ; $51C3: $88
    db $E4                                        ; $51C4: $E4
    ld h, b                                       ; $51C5: $60
    adc b                                         ; $51C6: $88
    db $E4                                        ; $51C7: $E4
    ld b, b                                       ; $51C8: $40
    adc a                                         ; $51C9: $8F
    db $E4                                        ; $51CA: $E4
    ld h, b                                       ; $51CB: $60
    adc a                                         ; $51CC: $8F
    db $E4                                        ; $51CD: $E4
    ld b, b                                       ; $51CE: $40
    sub h                                         ; $51CF: $94
    db $E4                                        ; $51D0: $E4
    ld h, b                                       ; $51D1: $60
    sub h                                         ; $51D2: $94
    db $E4                                        ; $51D3: $E4
    ld b, b                                       ; $51D4: $40
    adc a                                         ; $51D5: $8F
    db $E4                                        ; $51D6: $E4
    ld h, b                                       ; $51D7: $60
    adc a                                         ; $51D8: $8F
    db $E4                                        ; $51D9: $E4
    ld b, b                                       ; $51DA: $40
    adc c                                         ; $51DB: $89
    db $E4                                        ; $51DC: $E4
    ld h, b                                       ; $51DD: $60
    adc c                                         ; $51DE: $89
    db $E4                                        ; $51DF: $E4
    ld b, b                                       ; $51E0: $40
    adc a                                         ; $51E1: $8F
    db $E4                                        ; $51E2: $E4
    ld h, b                                       ; $51E3: $60
    adc a                                         ; $51E4: $8F
    db $E4                                        ; $51E5: $E4
    ld b, b                                       ; $51E6: $40
    sub d                                         ; $51E7: $92
    db $E4                                        ; $51E8: $E4
    ld h, b                                       ; $51E9: $60
    sub d                                         ; $51EA: $92
    db $E4                                        ; $51EB: $E4
    ld b, b                                       ; $51EC: $40
    adc a                                         ; $51ED: $8F
    db $E4                                        ; $51EE: $E4
    ld h, b                                       ; $51EF: $60
    adc a                                         ; $51F0: $8F
    adc d                                         ; $51F1: $8A
    db $E4                                        ; $51F2: $E4
    ld h, b                                       ; $51F3: $60
    adc d                                         ; $51F4: $8A
    db $E4                                        ; $51F5: $E4
    ld b, b                                       ; $51F6: $40
    sub c                                         ; $51F7: $91
    db $E4                                        ; $51F8: $E4
    ld h, b                                       ; $51F9: $60
    sub c                                         ; $51FA: $91
    db $E4                                        ; $51FB: $E4
    ld b, b                                       ; $51FC: $40
    sbc b                                         ; $51FD: $98
    db $E4                                        ; $51FE: $E4
    ld h, b                                       ; $51FF: $60
    sbc b                                         ; $5200: $98
    db $E4                                        ; $5201: $E4
    ld b, b                                       ; $5202: $40
    sub [hl]                                      ; $5203: $96
    db $E4                                        ; $5204: $E4
    ld h, b                                       ; $5205: $60
    sub [hl]                                      ; $5206: $96
    db $E4                                        ; $5207: $E4
    ld b, b                                       ; $5208: $40
    adc c                                         ; $5209: $89
    db $E4                                        ; $520A: $E4
    ld h, b                                       ; $520B: $60
    adc c                                         ; $520C: $89
    db $E4                                        ; $520D: $E4
    ld b, b                                       ; $520E: $40
    sub c                                         ; $520F: $91
    db $E4                                        ; $5210: $E4
    ld h, b                                       ; $5211: $60
    sub c                                         ; $5212: $91
    db $E4                                        ; $5213: $E4
    ld b, b                                       ; $5214: $40
    sbc b                                         ; $5215: $98
    db $E4                                        ; $5216: $E4
    ld h, b                                       ; $5217: $60
    sbc b                                         ; $5218: $98
    db $E4                                        ; $5219: $E4
    ld b, b                                       ; $521A: $40
    sub [hl]                                      ; $521B: $96
    db $E4                                        ; $521C: $E4
    ld h, b                                       ; $521D: $60
    sub [hl]                                      ; $521E: $96
    adc b                                         ; $521F: $88
    db $E4                                        ; $5220: $E4
    ld h, b                                       ; $5221: $60
    adc b                                         ; $5222: $88
    db $E4                                        ; $5223: $E4
    ld b, b                                       ; $5224: $40
    sub c                                         ; $5225: $91
    db $E4                                        ; $5226: $E4
    ld h, b                                       ; $5227: $60
    sub c                                         ; $5228: $91
    db $E4                                        ; $5229: $E4
    ld b, b                                       ; $522A: $40
    sbc b                                         ; $522B: $98
    db $E4                                        ; $522C: $E4
    ld h, b                                       ; $522D: $60
    sbc b                                         ; $522E: $98
    db $E4                                        ; $522F: $E4
    ld b, b                                       ; $5230: $40
    sub [hl]                                      ; $5231: $96
    db $E4                                        ; $5232: $E4
    ld h, b                                       ; $5233: $60
    sub [hl]                                      ; $5234: $96
    db $E4                                        ; $5235: $E4
    ld b, b                                       ; $5236: $40
    add a                                         ; $5237: $87
    db $E4                                        ; $5238: $E4
    ld h, b                                       ; $5239: $60
    add a                                         ; $523A: $87
    db $E4                                        ; $523B: $E4
    ld b, b                                       ; $523C: $40
    adc a                                         ; $523D: $8F
    db $E4                                        ; $523E: $E4
    ld h, b                                       ; $523F: $60
    adc a                                         ; $5240: $8F
    db $E4                                        ; $5241: $E4
    ld b, b                                       ; $5242: $40
    sbc b                                         ; $5243: $98
    db $E4                                        ; $5244: $E4
    ld h, b                                       ; $5245: $60
    sbc b                                         ; $5246: $98
    db $E4                                        ; $5247: $E4
    ld b, b                                       ; $5248: $40
    sub [hl]                                      ; $5249: $96
    db $E4                                        ; $524A: $E4
    ld h, b                                       ; $524B: $60
    sub [hl]                                      ; $524C: $96
    adc b                                         ; $524D: $88
    db $E4                                        ; $524E: $E4
    ld h, b                                       ; $524F: $60
    adc b                                         ; $5250: $88
    db $E4                                        ; $5251: $E4
    ld b, b                                       ; $5252: $40
    adc a                                         ; $5253: $8F
    db $E4                                        ; $5254: $E4
    ld h, b                                       ; $5255: $60
    adc a                                         ; $5256: $8F
    db $E4                                        ; $5257: $E4
    ld b, b                                       ; $5258: $40
    sub h                                         ; $5259: $94
    db $E4                                        ; $525A: $E4
    ld h, b                                       ; $525B: $60
    sub h                                         ; $525C: $94
    db $E4                                        ; $525D: $E4
    ld b, b                                       ; $525E: $40
    adc a                                         ; $525F: $8F
    db $E4                                        ; $5260: $E4
    ld h, b                                       ; $5261: $60
    adc a                                         ; $5262: $8F
    db $E4                                        ; $5263: $E4
    ld b, b                                       ; $5264: $40
    add a                                         ; $5265: $87
    db $E4                                        ; $5266: $E4
    ld h, b                                       ; $5267: $60
    add a                                         ; $5268: $87
    db $E4                                        ; $5269: $E4
    ld b, b                                       ; $526A: $40
    adc a                                         ; $526B: $8F
    db $E4                                        ; $526C: $E4
    ld h, b                                       ; $526D: $60
    adc a                                         ; $526E: $8F
    db $E4                                        ; $526F: $E4
    ld b, b                                       ; $5270: $40
    sub e                                         ; $5271: $93
    db $E4                                        ; $5272: $E4
    ld h, b                                       ; $5273: $60
    sub e                                         ; $5274: $93
    db $E4                                        ; $5275: $E4
    ld b, b                                       ; $5276: $40
    adc a                                         ; $5277: $8F
    db $E4                                        ; $5278: $E4
    ld h, b                                       ; $5279: $60
    adc a                                         ; $527A: $8F
    add l                                         ; $527B: $85
    db $E4                                        ; $527C: $E4
    ld h, b                                       ; $527D: $60
    add l                                         ; $527E: $85
    db $E4                                        ; $527F: $E4
    ld b, b                                       ; $5280: $40
    adc h                                         ; $5281: $8C
    db $E4                                        ; $5282: $E4
    ld h, b                                       ; $5283: $60
    adc h                                         ; $5284: $8C
    db $E4                                        ; $5285: $E4
    ld b, b                                       ; $5286: $40
    sub c                                         ; $5287: $91
    db $E4                                        ; $5288: $E4
    ld h, b                                       ; $5289: $60
    sub c                                         ; $528A: $91
    db $E4                                        ; $528B: $E4
    ld b, b                                       ; $528C: $40
    adc h                                         ; $528D: $8C
    db $E4                                        ; $528E: $E4
    ld h, b                                       ; $528F: $60

jr_02E_5290:
    adc h                                         ; $5290: $8C
    db $E4                                        ; $5291: $E4
    ld b, b                                       ; $5292: $40
    add e                                         ; $5293: $83
    db $E4                                        ; $5294: $E4
    ld h, b                                       ; $5295: $60
    add e                                         ; $5296: $83
    db $E4                                        ; $5297: $E4

jr_02E_5298:
    ld b, b                                       ; $5298: $40
    add a                                         ; $5299: $87
    db $E4                                        ; $529A: $E4
    ld h, b                                       ; $529B: $60
    add a                                         ; $529C: $87
    db $E4                                        ; $529D: $E4
    ld b, b                                       ; $529E: $40
    adc d                                         ; $529F: $8A
    db $E4                                        ; $52A0: $E4
    ld h, b                                       ; $52A1: $60
    adc d                                         ; $52A2: $8A
    db $E4                                        ; $52A3: $E4
    ld b, b                                       ; $52A4: $40
    adc a                                         ; $52A5: $8F

jr_02E_52A6:
    db $E4                                        ; $52A6: $E4
    ld h, b                                       ; $52A7: $60
    adc a                                         ; $52A8: $8F
    adc l                                         ; $52A9: $8D
    jr z, jr_02E_5290                             ; $52AA: $28 $E4

    ld h, b                                       ; $52AC: $60

jr_02E_52AD:
    adc l                                         ; $52AD: $8D
    inc d                                         ; $52AE: $14
    db $E4                                        ; $52AF: $E4
    ld b, b                                       ; $52B0: $40
    adc b                                         ; $52B1: $88
    jr z, jr_02E_5298                             ; $52B2: $28 $E4

    ld h, b                                       ; $52B4: $60
    adc b                                         ; $52B5: $88
    inc d                                         ; $52B6: $14
    db $E4                                        ; $52B7: $E4
    ld b, b                                       ; $52B8: $40
    adc l                                         ; $52B9: $8D
    db $E4                                        ; $52BA: $E4
    ld h, b                                       ; $52BB: $60
    adc l                                         ; $52BC: $8D
    db $E4                                        ; $52BD: $E4
    ld b, b                                       ; $52BE: $40
    adc a                                         ; $52BF: $8F
    jr z, jr_02E_52A6                             ; $52C0: $28 $E4

jr_02E_52C2:
    ld h, b                                       ; $52C2: $60
    adc a                                         ; $52C3: $8F
    db $E4                                        ; $52C4: $E4
    ld b, b                                       ; $52C5: $40
    adc h                                         ; $52C6: $8C
    jr z, jr_02E_52AD                             ; $52C7: $28 $E4

    ld h, b                                       ; $52C9: $60
    adc h                                         ; $52CA: $8C
    db $ED                                        ; $52CB: $ED
    jp hl                                         ; $52CC: $E9


    adc b                                         ; $52CD: $88
    db $EC                                        ; $52CE: $EC
    jp c, $EC52                                   ; $52CF: $DA $52 $EC

    ld [$EC52], a                                 ; $52D2: $EA $52 $EC
    ld [$E553], sp                                ; $52D5: $08 $53 $E5
    call z, $8052                                 ; $52D8: $CC $52 $80
    jr z, @-$1A                                   ; $52DB: $28 $E4

    ld b, c                                       ; $52DD: $41
    ld hl, $E414                                  ; $52DE: $21 $14 $E4
    ld b, c                                       ; $52E1: $41
    ld hl, $E714                                  ; $52E2: $21 $14 $E7
    nop                                           ; $52E5: $00
    jr jr_02E_52C2                                ; $52E6: $18 $DA

    ld d, d                                       ; $52E8: $52
    db $ED                                        ; $52E9: $ED
    db $E4                                        ; $52EA: $E4
    ld [hl], c                                    ; $52EB: $71
    ld [hl], $28                                  ; $52EC: $36 $28
    db $E4                                        ; $52EE: $E4
    ld b, c                                       ; $52EF: $41
    ld hl, $E414                                  ; $52F0: $21 $14 $E4
    ld b, c                                       ; $52F3: $41
    ld hl, $E414                                  ; $52F4: $21 $14 $E4
    ld h, d                                       ; $52F7: $62
    inc h                                         ; $52F8: $24
    jr z, @-$1A                                   ; $52F9: $28 $E4

    ld b, c                                       ; $52FB: $41
    ld hl, $E414                                  ; $52FC: $21 $14 $E4
    ld b, c                                       ; $52FF: $41
    ld hl, $E714                                  ; $5300: $21 $14 $E7
    nop                                           ; $5303: $00
    add hl, bc                                    ; $5304: $09
    ld [$ED52], a                                 ; $5305: $EA $52 $ED
    db $E4                                        ; $5308: $E4
    ld [hl], c                                    ; $5309: $71
    ld [hl], $28                                  ; $530A: $36 $28
    db $E4                                        ; $530C: $E4
    ld b, c                                       ; $530D: $41
    ld hl, $E414                                  ; $530E: $21 $14 $E4
    ld b, c                                       ; $5311: $41
    ld hl, $E414                                  ; $5312: $21 $14 $E4
    ld h, d                                       ; $5315: $62
    inc h                                         ; $5316: $24
    jr z, @-$1A                                   ; $5317: $28 $E4

    ld b, c                                       ; $5319: $41
    ld hl, $E414                                  ; $531A: $21 $14 $E4

jr_02E_531D:
    ld [hl], d                                    ; $531D: $72
    db $10                                        ; $531E: $10
    inc d                                         ; $531F: $14
    db $E4                                        ; $5320: $E4
    ld [hl], c                                    ; $5321: $71
    ld [hl], $28                                  ; $5322: $36 $28
    db $E4                                        ; $5324: $E4
    ld b, c                                       ; $5325: $41
    ld hl, $E414                                  ; $5326: $21 $14 $E4
    ld b, c                                       ; $5329: $41
    ld hl, $8014                                  ; $532A: $21 $14 $80
    jr z, @-$1A                                   ; $532D: $28 $E4

    ld b, c                                       ; $532F: $41
    ld hl, $E414                                  ; $5330: $21 $14 $E4
    ld b, c                                       ; $5333: $41
    ld hl, $8014                                  ; $5334: $21 $14 $80
    jr z, jr_02E_531D                             ; $5337: $28 $E4

    ld b, c                                       ; $5339: $41
    ld hl, $E414                                  ; $533A: $21 $14 $E4
    ld b, c                                       ; $533D: $41
    ld hl, $8014                                  ; $533E: $21 $14 $80
    jr z, @-$1A                                   ; $5341: $28 $E4

    ld b, c                                       ; $5343: $41
    ld hl, $E414                                  ; $5344: $21 $14 $E4
    ld b, c                                       ; $5347: $41
    ld hl, $ED14                                  ; $5348: $21 $14 $ED
    inc b                                         ; $534B: $04
    add b                                         ; $534C: $80
    inc de                                        ; $534D: $13
    ld h, h                                       ; $534E: $64
    ld d, e                                       ; $534F: $53
    rrca                                          ; $5350: $0F
    add c                                         ; $5351: $81

jr_02E_5352:
    add b                                         ; $5352: $80
    jr jr_02E_5352                                ; $5353: $18 $FD

    ld d, e                                       ; $5355: $53
    rrca                                          ; $5356: $0F
    add c                                         ; $5357: $81
    add b                                         ; $5358: $80
    dec e                                         ; $5359: $1D
    ld [hl], a                                    ; $535A: $77
    ld d, h                                       ; $535B: $54
    inc bc                                        ; $535C: $03
    add c                                         ; $535D: $81
    add b                                         ; $535E: $80
    ld [hl+], a                                   ; $535F: $22
    adc $54                                       ; $5360: $CE $54
    nop                                           ; $5362: $00
    add c                                         ; $5363: $81
    db $E4                                        ; $5364: $E4
    ld a, b                                       ; $5365: $78
    jp hl                                         ; $5366: $E9


    ld de, $C0EE                                  ; $5367: $11 $EE $C0
    db $EC                                        ; $536A: $EC
    ld l, l                                       ; $536B: $6D
    ld d, e                                       ; $536C: $53
    db $E4                                        ; $536D: $E4
    ld [hl], a                                    ; $536E: $77
    sbc c                                         ; $536F: $99
    inc c                                         ; $5370: $0C
    db $E4                                        ; $5371: $E4
    scf                                           ; $5372: $37
    sbc c                                         ; $5373: $99
    db $E4                                        ; $5374: $E4
    ld [hl], a                                    ; $5375: $77
    sub a                                         ; $5376: $97
    inc c                                         ; $5377: $0C
    db $E4                                        ; $5378: $E4
    scf                                           ; $5379: $37
    sub a                                         ; $537A: $97
    db $E4                                        ; $537B: $E4
    ld [hl], a                                    ; $537C: $77
    sub [hl]                                      ; $537D: $96
    inc c                                         ; $537E: $0C
    db $E4                                        ; $537F: $E4
    scf                                           ; $5380: $37
    sub [hl]                                      ; $5381: $96
    ld b, $E4                                     ; $5382: $06 $E4
    ld [hl], a                                    ; $5384: $77
    sub d                                         ; $5385: $92
    inc c                                         ; $5386: $0C
    db $E4                                        ; $5387: $E4
    scf                                           ; $5388: $37
    sub d                                         ; $5389: $92
    ld b, $E4                                     ; $538A: $06 $E4
    ld [hl], a                                    ; $538C: $77
    sub d                                         ; $538D: $92
    inc c                                         ; $538E: $0C

jr_02E_538F:
    sbc c                                         ; $538F: $99
    ld b, $E4                                     ; $5390: $06 $E4

jr_02E_5392:
    scf                                           ; $5392: $37
    sbc c                                         ; $5393: $99
    db $E4                                        ; $5394: $E4
    ld [hl], a                                    ; $5395: $77
    sbc c                                         ; $5396: $99
    db $E4                                        ; $5397: $E4
    scf                                           ; $5398: $37
    sbc c                                         ; $5399: $99
    db $E4                                        ; $539A: $E4
    ld [hl], a                                    ; $539B: $77
    sub a                                         ; $539C: $97
    db $E4                                        ; $539D: $E4
    scf                                           ; $539E: $37
    sub a                                         ; $539F: $97
    db $E4                                        ; $53A0: $E4
    ld [hl], a                                    ; $53A1: $77
    sub a                                         ; $53A2: $97
    db $E4                                        ; $53A3: $E4
    scf                                           ; $53A4: $37
    sub a                                         ; $53A5: $97
    db $E4                                        ; $53A6: $E4
    ld [hl], a                                    ; $53A7: $77
    sub [hl]                                      ; $53A8: $96
    inc c                                         ; $53A9: $0C
    db $E4                                        ; $53AA: $E4
    scf                                           ; $53AB: $37
    sub [hl]                                      ; $53AC: $96
    ld b, $E4                                     ; $53AD: $06 $E4
    ld [hl], a                                    ; $53AF: $77
    sbc e                                         ; $53B0: $9B
    inc c                                         ; $53B1: $0C

jr_02E_53B2:
    db $E4                                        ; $53B2: $E4
    scf                                           ; $53B3: $37
    sbc e                                         ; $53B4: $9B
    ld b, $E4                                     ; $53B5: $06 $E4
    ld [hl], a                                    ; $53B7: $77
    sbc l                                         ; $53B8: $9D
    inc c                                         ; $53B9: $0C
    db $E4                                        ; $53BA: $E4
    ld [hl], a                                    ; $53BB: $77
    and d                                         ; $53BC: $A2

jr_02E_53BD:
    inc c                                         ; $53BD: $0C
    db $E4                                        ; $53BE: $E4
    scf                                           ; $53BF: $37
    and d                                         ; $53C0: $A2
    db $E4                                        ; $53C1: $E4
    ld [hl], a                                    ; $53C2: $77
    and b                                         ; $53C3: $A0
    inc c                                         ; $53C4: $0C

jr_02E_53C5:
    db $E4                                        ; $53C5: $E4
    scf                                           ; $53C6: $37
    and b                                         ; $53C7: $A0
    db $E4                                        ; $53C8: $E4
    ld [hl], a                                    ; $53C9: $77

jr_02E_53CA:
    sbc [hl]                                      ; $53CA: $9E
    inc c                                         ; $53CB: $0C

jr_02E_53CC:
    db $E4                                        ; $53CC: $E4
    scf                                           ; $53CD: $37
    sbc [hl]                                      ; $53CE: $9E
    ld b, $E4                                     ; $53CF: $06 $E4
    ld [hl], a                                    ; $53D1: $77
    sbc e                                         ; $53D2: $9B
    inc c                                         ; $53D3: $0C
    db $E4                                        ; $53D4: $E4
    scf                                           ; $53D5: $37
    sbc e                                         ; $53D6: $9B
    ld b, $E4                                     ; $53D7: $06 $E4

jr_02E_53D9:
    ld [hl], a                                    ; $53D9: $77
    sbc [hl]                                      ; $53DA: $9E
    inc c                                         ; $53DB: $0C
    db $E4                                        ; $53DC: $E4
    ld [hl], a                                    ; $53DD: $77
    sbc e                                         ; $53DE: $9B
    jr jr_02E_53C5                                ; $53DF: $18 $E4

    ld d, a                                       ; $53E1: $57
    sbc e                                         ; $53E2: $9B
    db $E4                                        ; $53E3: $E4
    ld [hl], a                                    ; $53E4: $77
    sub h                                         ; $53E5: $94
    jr jr_02E_53CC                                ; $53E6: $18 $E4

    ld d, a                                       ; $53E8: $57
    sub h                                         ; $53E9: $94
    db $E4                                        ; $53EA: $E4
    ld a, b                                       ; $53EB: $78
    pop af                                        ; $53EC: $F1
    sub e                                         ; $53ED: $93
    ld h, b                                       ; $53EE: $60
    db $E4                                        ; $53EF: $E4
    ld a, b                                       ; $53F0: $78
    sub [hl]                                      ; $53F1: $96
    jr nc, @-$1A                                  ; $53F2: $30 $E4

    ld e, b                                       ; $53F4: $58
    sub [hl]                                      ; $53F5: $96
    db $E4                                        ; $53F6: $E4
    jr c, jr_02E_538F                             ; $53F7: $38 $96

    db $E4                                        ; $53F9: $E4
    jr jr_02E_5392                                ; $53FA: $18 $96

    db $E3                                        ; $53FC: $E3
    db $E4                                        ; $53FD: $E4
    ld e, b                                       ; $53FE: $58
    jp hl                                         ; $53FF: $E9


    ld [hl+], a                                   ; $5400: $22
    xor $80                                       ; $5401: $EE $80
    db $EC                                        ; $5403: $EC
    rrca                                          ; $5404: $0F
    ld d, h                                       ; $5405: $54

jr_02E_5406:
    db $EC                                        ; $5406: $EC
    add hl, hl                                    ; $5407: $29
    ld d, h                                       ; $5408: $54

jr_02E_5409:
    db $EC                                        ; $5409: $EC
    rrca                                          ; $540A: $0F
    ld d, h                                       ; $540B: $54
    db $EC                                        ; $540C: $EC
    ld b, e                                       ; $540D: $43
    ld d, h                                       ; $540E: $54
    adc e                                         ; $540F: $8B
    ld b, $92                                     ; $5410: $06 $92
    sub a                                         ; $5412: $97
    sbc e                                         ; $5413: $9B
    db $E4                                        ; $5414: $E4
    jr c, jr_02E_53B2                             ; $5415: $38 $9B

    db $E4                                        ; $5417: $E4
    ld e, b                                       ; $5418: $58
    adc e                                         ; $5419: $8B
    sbc e                                         ; $541A: $9B
    sub a                                         ; $541B: $97
    adc l                                         ; $541C: $8D
    sbc l                                         ; $541D: $9D
    sbc c                                         ; $541E: $99
    sub h                                         ; $541F: $94
    sbc c                                         ; $5420: $99
    db $E4                                        ; $5421: $E4
    jr c, jr_02E_53BD                             ; $5422: $38 $99

    db $E4                                        ; $5424: $E4
    ld e, b                                       ; $5425: $58
    adc l                                         ; $5426: $8D
    sub c                                         ; $5427: $91
    db $ED                                        ; $5428: $ED
    adc d                                         ; $5429: $8A
    ld b, $8D                                     ; $542A: $06 $8D
    sub c                                         ; $542C: $91
    sbc c                                         ; $542D: $99
    db $E4                                        ; $542E: $E4
    jr c, jr_02E_53CA                             ; $542F: $38 $99

    db $E4                                        ; $5431: $E4
    ld e, b                                       ; $5432: $58
    adc e                                         ; $5433: $8B
    sbc l                                         ; $5434: $9D
    sbc c                                         ; $5435: $99
    adc a                                         ; $5436: $8F
    sbc [hl]                                      ; $5437: $9E
    sbc e                                         ; $5438: $9B
    sub [hl]                                      ; $5439: $96
    sbc e                                         ; $543A: $9B
    db $E4                                        ; $543B: $E4
    jr c, jr_02E_53D9                             ; $543C: $38 $9B

    db $E4                                        ; $543E: $E4
    ld e, b                                       ; $543F: $58
    adc a                                         ; $5440: $8F
    sub d                                         ; $5441: $92
    db $ED                                        ; $5442: $ED
    db $E4                                        ; $5443: $E4
    ld e, b                                       ; $5444: $58
    adc a                                         ; $5445: $8F
    db $E4                                        ; $5446: $E4
    jr c, @-$6F                                   ; $5447: $38 $8F

    sub h                                         ; $5449: $94
    sub [hl]                                      ; $544A: $96
    db $E4                                        ; $544B: $E4
    ld e, b                                       ; $544C: $58
    adc a                                         ; $544D: $8F
    sbc e                                         ; $544E: $9B
    sub [hl]                                      ; $544F: $96
    adc a                                         ; $5450: $8F
    adc a                                         ; $5451: $8F

jr_02E_5452:
    sub h                                         ; $5452: $94
    sub [hl]                                      ; $5453: $96
    sbc e                                         ; $5454: $9B
    and d                                         ; $5455: $A2
    and b                                         ; $5456: $A0
    sbc e                                         ; $5457: $9B
    sub [hl]                                      ; $5458: $96
    sbc a                                         ; $5459: $9F
    adc a                                         ; $545A: $8F
    sub e                                         ; $545B: $93
    sub [hl]                                      ; $545C: $96
    and d                                         ; $545D: $A2
    sub e                                         ; $545E: $93
    sub [hl]                                      ; $545F: $96
    sbc e                                         ; $5460: $9B
    and a                                         ; $5461: $A7
    sub [hl]                                      ; $5462: $96
    sbc e                                         ; $5463: $9B
    sbc a                                         ; $5464: $9F
    and a                                         ; $5465: $A7
    and d                                         ; $5466: $A2
    and a                                         ; $5467: $A7
    xor e                                         ; $5468: $AB
    db $E4                                        ; $5469: $E4
    ld a, b                                       ; $546A: $78
    sub e                                         ; $546B: $93
    jr nc, jr_02E_5452                            ; $546C: $30 $E4

    ld e, b                                       ; $546E: $58
    sub e                                         ; $546F: $93
    db $E4                                        ; $5470: $E4
    jr c, jr_02E_5406                             ; $5471: $38 $93

    db $E4                                        ; $5473: $E4
    jr jr_02E_5409                                ; $5474: $18 $93

    db $E3                                        ; $5476: $E3
    db $E4                                        ; $5477: $E4
    ld b, b                                       ; $5478: $40
    jp hl                                         ; $5479: $E9


    ld b, h                                       ; $547A: $44
    di                                            ; $547B: $F3
    inc bc                                        ; $547C: $03
    push af                                       ; $547D: $F5
    ld [hl-], a                                   ; $547E: $32
    db $EC                                        ; $547F: $EC
    or d                                          ; $5480: $B2
    ld d, h                                       ; $5481: $54
    and $02                                       ; $5482: $E6 $02
    db $EC                                        ; $5484: $EC
    or d                                          ; $5485: $B2
    ld d, h                                       ; $5486: $54
    and $FD                                       ; $5487: $E6 $FD
    db $EC                                        ; $5489: $EC
    or d                                          ; $548A: $B2
    ld d, h                                       ; $548B: $54
    and $05                                       ; $548C: $E6 $05
    db $EC                                        ; $548E: $EC
    or d                                          ; $548F: $B2
    ld d, h                                       ; $5490: $54
    and $FC                                       ; $5491: $E6 $FC
    db $EC                                        ; $5493: $EC
    or d                                          ; $5494: $B2
    ld d, h                                       ; $5495: $54
    and $02                                       ; $5496: $E6 $02
    db $EC                                        ; $5498: $EC
    or d                                          ; $5499: $B2
    ld d, h                                       ; $549A: $54
    and $02                                       ; $549B: $E6 $02
    db $EC                                        ; $549D: $EC
    or d                                          ; $549E: $B2
    ld d, h                                       ; $549F: $54
    and $FC                                       ; $54A0: $E6 $FC
    db $EC                                        ; $54A2: $EC
    cp l                                          ; $54A3: $BD
    ld d, h                                       ; $54A4: $54
    and $04                                       ; $54A5: $E6 $04
    db $EC                                        ; $54A7: $EC
    or d                                          ; $54A8: $B2
    ld d, h                                       ; $54A9: $54
    db $EC                                        ; $54AA: $EC
    or d                                          ; $54AB: $B2
    ld d, h                                       ; $54AC: $54
    and $FC                                       ; $54AD: $E6 $FC
    db $EC                                        ; $54AF: $EC
    add $54                                       ; $54B0: $C6 $54
    adc e                                         ; $54B2: $8B
    ld b, $8B                                     ; $54B3: $06 $8B
    add b                                         ; $54B5: $80
    adc e                                         ; $54B6: $8B
    rst RST_20                                    ; $54B7: $E7
    nop                                           ; $54B8: $00
    ld [bc], a                                    ; $54B9: $02
    or d                                          ; $54BA: $B2
    ld d, h                                       ; $54BB: $54
    db $ED                                        ; $54BC: $ED
    adc a                                         ; $54BD: $8F
    adc a                                         ; $54BE: $8F
    add b                                         ; $54BF: $80
    adc a                                         ; $54C0: $8F
    adc a                                         ; $54C1: $8F
    adc a                                         ; $54C2: $8F
    sub h                                         ; $54C3: $94
    sub [hl]                                      ; $54C4: $96
    db $ED                                        ; $54C5: $ED
    push af                                       ; $54C6: $F5
    nop                                           ; $54C7: $00
    add e                                         ; $54C8: $83
    ld h, b                                       ; $54C9: $60
    db $E4                                        ; $54CA: $E4
    ld h, b                                       ; $54CB: $60
    add e                                         ; $54CC: $83
    db $E3                                        ; $54CD: $E3
    jp hl                                         ; $54CE: $E9


jr_02E_54CF:
    adc b                                         ; $54CF: $88
    db $EC                                        ; $54D0: $EC
    sub $54                                       ; $54D1: $D6 $54
    db $EC                                        ; $54D3: $EC
    ld [$E455], sp                                ; $54D4: $08 $55 $E4
    ld [hl], c                                    ; $54D7: $71
    ld [hl], $18                                  ; $54D8: $36 $18
    db $E4                                        ; $54DA: $E4
    ld h, d                                       ; $54DB: $62
    inc h                                         ; $54DC: $24
    ld [de], a                                    ; $54DD: $12
    db $E4                                        ; $54DE: $E4
    ld [hl], c                                    ; $54DF: $71
    ld [hl], $12                                  ; $54E0: $36 $12
    db $E4                                        ; $54E2: $E4
    ld [hl], c                                    ; $54E3: $71
    ld [hl], $0C                                  ; $54E4: $36 $0C
    db $E4                                        ; $54E6: $E4
    ld h, d                                       ; $54E7: $62
    inc h                                         ; $54E8: $24
    jr jr_02E_54CF                                ; $54E9: $18 $E4

    ld [hl], c                                    ; $54EB: $71
    ld [hl], $18                                  ; $54EC: $36 $18
    db $E4                                        ; $54EE: $E4
    ld h, d                                       ; $54EF: $62
    inc h                                         ; $54F0: $24
    ld [de], a                                    ; $54F1: $12
    db $E4                                        ; $54F2: $E4
    ld [hl], c                                    ; $54F3: $71
    ld [hl], $12                                  ; $54F4: $36 $12
    db $E4                                        ; $54F6: $E4
    ld [hl], c                                    ; $54F7: $71
    ld [hl], $0C                                  ; $54F8: $36 $0C
    db $E4                                        ; $54FA: $E4
    ld h, d                                       ; $54FB: $62
    inc h                                         ; $54FC: $24
    inc c                                         ; $54FD: $0C
    db $E4                                        ; $54FE: $E4
    ld d, e                                       ; $54FF: $53
    ld de, $E70C                                  ; $5500: $11 $0C $E7
    nop                                           ; $5503: $00
    ld [bc], a                                    ; $5504: $02
    sub $54                                       ; $5505: $D6 $54
    db $ED                                        ; $5507: $ED
    db $E4                                        ; $5508: $E4
    ld [hl], c                                    ; $5509: $71
    ld [hl], $0C                                  ; $550A: $36 $0C
    db $E4                                        ; $550C: $E4
    ld h, d                                       ; $550D: $62
    inc h                                         ; $550E: $24
    ld b, $E4                                     ; $550F: $06 $E4
    ld h, d                                       ; $5511: $62
    inc h                                         ; $5512: $24
    ld b, $E4                                     ; $5513: $06 $E4
    ld [hl], c                                    ; $5515: $71
    ld [hl], $06                                  ; $5516: $36 $06
    db $E4                                        ; $5518: $E4
    ld [hl], d                                    ; $5519: $72
    ld [hl-], a                                   ; $551A: $32
    inc c                                         ; $551B: $0C

jr_02E_551C:
    db $E4                                        ; $551C: $E4
    ld [hl], d                                    ; $551D: $72
    db $10                                        ; $551E: $10
    inc c                                         ; $551F: $0C
    db $E4                                        ; $5520: $E4
    ld [hl], d                                    ; $5521: $72
    db $10                                        ; $5522: $10
    inc c                                         ; $5523: $0C
    db $E4                                        ; $5524: $E4
    ld h, d                                       ; $5525: $62
    inc h                                         ; $5526: $24
    ld b, $E4                                     ; $5527: $06 $E4
    ld h, d                                       ; $5529: $62
    inc h                                         ; $552A: $24
    ld b, $E4                                     ; $552B: $06 $E4
    ld h, d                                       ; $552D: $62
    inc h                                         ; $552E: $24
    ld b, $E4                                     ; $552F: $06 $E4
    ld [hl], d                                    ; $5531: $72
    ld [hl-], a                                   ; $5532: $32
    ld b, $E4                                     ; $5533: $06 $E4
    ld [hl], d                                    ; $5535: $72
    db $10                                        ; $5536: $10
    ld b, $E4                                     ; $5537: $06 $E4
    ld d, e                                       ; $5539: $53

jr_02E_553A:
    ld de, $E360                                  ; $553A: $11 $60 $E3
    inc b                                         ; $553D: $04
    add b                                         ; $553E: $80
    inc de                                        ; $553F: $13
    ld d, [hl]                                    ; $5540: $56
    ld d, l                                       ; $5541: $55
    inc c                                         ; $5542: $0C
    add c                                         ; $5543: $81
    add b                                         ; $5544: $80
    jr jr_02E_551C                                ; $5545: $18 $D5

    ld d, l                                       ; $5547: $55
    inc c                                         ; $5548: $0C
    add c                                         ; $5549: $81
    add b                                         ; $554A: $80
    dec e                                         ; $554B: $1D
    ret c                                         ; $554C: $D8

    ld d, [hl]                                    ; $554D: $56
    nop                                           ; $554E: $00
    add c                                         ; $554F: $81
    add b                                         ; $5550: $80
    ld [hl+], a                                   ; $5551: $22
    rrca                                          ; $5552: $0F

jr_02E_5553:
    ld e, b                                       ; $5553: $58
    nop                                           ; $5554: $00
    add c                                         ; $5555: $81
    db $E4                                        ; $5556: $E4
    ld a, b                                       ; $5557: $78
    jp hl                                         ; $5558: $E9


    ld de, $C0EE                                  ; $5559: $11 $EE $C0
    db $E4                                        ; $555C: $E4
    ld a, b                                       ; $555D: $78
    adc c                                         ; $555E: $89
    rlca                                          ; $555F: $07
    add a                                         ; $5560: $87
    adc c                                         ; $5561: $89
    db $E4                                        ; $5562: $E4
    ld [hl], l                                    ; $5563: $75
    adc d                                         ; $5564: $8A
    db $E4                                        ; $5565: $E4
    ld a, b                                       ; $5566: $78
    adc d                                         ; $5567: $8A
    adc c                                         ; $5568: $89
    adc d                                         ; $5569: $8A
    db $E4                                        ; $556A: $E4
    ld [hl], l                                    ; $556B: $75
    adc h                                         ; $556C: $8C
    db $E4                                        ; $556D: $E4
    ld a, b                                       ; $556E: $78
    adc [hl]                                      ; $556F: $8E
    adc h                                         ; $5570: $8C
    adc [hl]                                      ; $5571: $8E
    db $E4                                        ; $5572: $E4
    ld [hl], l                                    ; $5573: $75
    adc a                                         ; $5574: $8F
    db $E4                                        ; $5575: $E4
    ld a, b                                       ; $5576: $78
    adc a                                         ; $5577: $8F
    adc [hl]                                      ; $5578: $8E
    adc a                                         ; $5579: $8F
    db $E4                                        ; $557A: $E4
    ld [hl], l                                    ; $557B: $75
    sub c                                         ; $557C: $91
    db $E4                                        ; $557D: $E4
    ld a, b                                       ; $557E: $78
    sub e                                         ; $557F: $93
    rlca                                          ; $5580: $07
    sub c                                         ; $5581: $91
    sub e                                         ; $5582: $93
    sub l                                         ; $5583: $95
    sub [hl]                                      ; $5584: $96
    sub l                                         ; $5585: $95
    sub [hl]                                      ; $5586: $96
    sbc b                                         ; $5587: $98
    sbc d                                         ; $5588: $9A
    sbc b                                         ; $5589: $98
    sbc d                                         ; $558A: $9A
    sbc e                                         ; $558B: $9B
    sbc l                                         ; $558C: $9D
    sbc e                                         ; $558D: $9B
    sbc l                                         ; $558E: $9D
    sbc a                                         ; $558F: $9F
    db $EC                                        ; $5590: $EC
    xor c                                         ; $5591: $A9
    ld d, l                                       ; $5592: $55
    pop af                                        ; $5593: $F1
    sbc b                                         ; $5594: $98
    ld d, h                                       ; $5595: $54
    sub c                                         ; $5596: $91
    ld c, $93                                     ; $5597: $0E $93
    and $FF                                       ; $5599: $E6 $FF
    db $EC                                        ; $559B: $EC
    xor c                                         ; $559C: $A9
    ld d, l                                       ; $559D: $55
    and $01                                       ; $559E: $E6 $01
    pop af                                        ; $55A0: $F1
    sub l                                         ; $55A1: $95
    jr c, jr_02E_553A                             ; $55A2: $38 $96

    inc e                                         ; $55A4: $1C
    sbc b                                         ; $55A5: $98
    push hl                                       ; $55A6: $E5
    sub b                                         ; $55A7: $90
    ld d, l                                       ; $55A8: $55
    pop af                                        ; $55A9: $F1
    sub [hl]                                      ; $55AA: $96
    ld d, h                                       ; $55AB: $54
    sub [hl]                                      ; $55AC: $96
    add hl, bc                                    ; $55AD: $09
    sub l                                         ; $55AE: $95
    sub [hl]                                      ; $55AF: $96
    ld a, [bc]                                    ; $55B0: $0A
    sbc l                                         ; $55B1: $9D
    inc e                                         ; $55B2: $1C
    sbc e                                         ; $55B3: $9B
    sbc d                                         ; $55B4: $9A
    sub [hl]                                      ; $55B5: $96
    sub [hl]                                      ; $55B6: $96
    ld d, h                                       ; $55B7: $54
    sub [hl]                                      ; $55B8: $96
    add hl, bc                                    ; $55B9: $09
    sbc d                                         ; $55BA: $9A
    sub [hl]                                      ; $55BB: $96
    ld a, [bc]                                    ; $55BC: $0A
    sbc b                                         ; $55BD: $98
    jr c, jr_02E_5553                             ; $55BE: $38 $93

    inc e                                         ; $55C0: $1C
    sub l                                         ; $55C1: $95
    sub [hl]                                      ; $55C2: $96
    ld d, h                                       ; $55C3: $54
    sub e                                         ; $55C4: $93
    ld c, $95                                     ; $55C5: $0E $95
    sub [hl]                                      ; $55C7: $96
    jr c, @-$6D                                   ; $55C8: $38 $91

    inc e                                         ; $55CA: $1C
    sbc d                                         ; $55CB: $9A
    sbc e                                         ; $55CC: $9B
    jr c, @-$04                                   ; $55CD: $38 $FA

    ld c, $9A                                     ; $55CF: $0E $9A
    ld c, $98                                     ; $55D1: $0E $98
    sub [hl]                                      ; $55D3: $96
    db $ED                                        ; $55D4: $ED
    db $E4                                        ; $55D5: $E4
    ld e, b                                       ; $55D6: $58
    jp hl                                         ; $55D7: $E9


    ld [hl+], a                                   ; $55D8: $22
    xor $80                                       ; $55D9: $EE $80
    db $E4                                        ; $55DB: $E4
    ld e, b                                       ; $55DC: $58
    sub c                                         ; $55DD: $91
    rlca                                          ; $55DE: $07
    adc a                                         ; $55DF: $8F
    sub c                                         ; $55E0: $91
    db $E4                                        ; $55E1: $E4
    ld d, l                                       ; $55E2: $55
    sub e                                         ; $55E3: $93
    db $E4                                        ; $55E4: $E4
    ld e, b                                       ; $55E5: $58
    sub e                                         ; $55E6: $93
    rlca                                          ; $55E7: $07
    sub c                                         ; $55E8: $91
    sub e                                         ; $55E9: $93
    db $E4                                        ; $55EA: $E4
    ld d, l                                       ; $55EB: $55
    sub l                                         ; $55EC: $95
    db $E4                                        ; $55ED: $E4
    ld e, b                                       ; $55EE: $58
    sub [hl]                                      ; $55EF: $96
    rlca                                          ; $55F0: $07
    sub l                                         ; $55F1: $95
    sub [hl]                                      ; $55F2: $96
    db $E4                                        ; $55F3: $E4
    ld d, l                                       ; $55F4: $55
    sbc b                                         ; $55F5: $98
    db $E4                                        ; $55F6: $E4
    ld e, b                                       ; $55F7: $58
    sbc b                                         ; $55F8: $98
    rlca                                          ; $55F9: $07
    sub [hl]                                      ; $55FA: $96
    sbc b                                         ; $55FB: $98
    db $E4                                        ; $55FC: $E4
    ld d, l                                       ; $55FD: $55
    sbc d                                         ; $55FE: $9A
    db $E4                                        ; $55FF: $E4
    ld e, b                                       ; $5600: $58
    sbc e                                         ; $5601: $9B
    rlca                                          ; $5602: $07
    sbc d                                         ; $5603: $9A
    sbc e                                         ; $5604: $9B
    sbc l                                         ; $5605: $9D
    sbc a                                         ; $5606: $9F
    sbc l                                         ; $5607: $9D
    sbc a                                         ; $5608: $9F
    and c                                         ; $5609: $A1
    and d                                         ; $560A: $A2
    and c                                         ; $560B: $A1
    and d                                         ; $560C: $A2
    and h                                         ; $560D: $A4
    and [hl]                                      ; $560E: $A6
    and h                                         ; $560F: $A4
    and [hl]                                      ; $5610: $A6
    and a                                         ; $5611: $A7
    db $E4                                        ; $5612: $E4
    ld d, h                                       ; $5613: $54
    db $EC                                        ; $5614: $EC
    ld a, [de]                                    ; $5615: $1A
    ld d, [hl]                                    ; $5616: $56
    push hl                                       ; $5617: $E5
    ld [de], a                                    ; $5618: $12
    ld d, [hl]                                    ; $5619: $56
    sbc d                                         ; $561A: $9A
    ld d, h                                       ; $561B: $54
    sbc d                                         ; $561C: $9A
    add hl, bc                                    ; $561D: $09
    sbc b                                         ; $561E: $98
    sbc d                                         ; $561F: $9A
    ld a, [bc]                                    ; $5620: $0A
    and c                                         ; $5621: $A1
    inc e                                         ; $5622: $1C
    sbc a                                         ; $5623: $9F
    sbc l                                         ; $5624: $9D
    sbc d                                         ; $5625: $9A
    sbc d                                         ; $5626: $9A
    ld d, h                                       ; $5627: $54
    sbc d                                         ; $5628: $9A
    add hl, bc                                    ; $5629: $09
    sbc l                                         ; $562A: $9D
    sbc d                                         ; $562B: $9A
    ld a, [bc]                                    ; $562C: $0A
    sbc h                                         ; $562D: $9C
    jr c, @-$68                                   ; $562E: $38 $96

    inc e                                         ; $5630: $1C
    sbc b                                         ; $5631: $98
    sbc e                                         ; $5632: $9B
    ld d, h                                       ; $5633: $54
    sub [hl]                                      ; $5634: $96
    ld c, $98                                     ; $5635: $0E $98
    sbc d                                         ; $5637: $9A
    jr c, @-$68                                   ; $5638: $38 $96

    inc e                                         ; $563A: $1C
    sbc l                                         ; $563B: $9D
    sbc a                                         ; $563C: $9F
    jr c, @-$04                                   ; $563D: $38 $FA

    ld c, $9D                                     ; $563F: $0E $9D
    ld c, $9B                                     ; $5641: $0E $9B
    sbc d                                         ; $5643: $9A
    sbc l                                         ; $5644: $9D
    ld d, h                                       ; $5645: $54
    xor c                                         ; $5646: $A9
    dec b                                         ; $5647: $05
    and [hl]                                      ; $5648: $A6
    and e                                         ; $5649: $A3
    inc b                                         ; $564A: $04
    sbc a                                         ; $564B: $9F
    dec b                                         ; $564C: $05
    sbc d                                         ; $564D: $9A
    sub a                                         ; $564E: $97
    inc b                                         ; $564F: $04
    sub l                                         ; $5650: $95
    rlca                                          ; $5651: $07
    sub a                                         ; $5652: $97
    sbc c                                         ; $5653: $99
    sbc h                                         ; $5654: $9C
    and c                                         ; $5655: $A1
    and e                                         ; $5656: $A3
    and l                                         ; $5657: $A5
    xor b                                         ; $5658: $A8
    xor l                                         ; $5659: $AD
    xor b                                         ; $565A: $A8
    xor a                                         ; $565B: $AF
    xor b                                         ; $565C: $A8
    or c                                          ; $565D: $B1
    xor b                                         ; $565E: $A8
    xor a                                         ; $565F: $AF
    xor b                                         ; $5660: $A8
    sub b                                         ; $5661: $90
    rlca                                          ; $5662: $07
    sub d                                         ; $5663: $92
    sub h                                         ; $5664: $94
    sub a                                         ; $5665: $97
    sbc h                                         ; $5666: $9C
    sbc [hl]                                      ; $5667: $9E
    and b                                         ; $5668: $A0
    and e                                         ; $5669: $A3
    xor b                                         ; $566A: $A8
    and e                                         ; $566B: $A3
    xor d                                         ; $566C: $AA
    and e                                         ; $566D: $A3
    xor h                                         ; $566E: $AC
    and e                                         ; $566F: $A3
    xor a                                         ; $5670: $AF
    and e                                         ; $5671: $A3
    sub d                                         ; $5672: $92
    rlca                                          ; $5673: $07
    sub h                                         ; $5674: $94
    sub l                                         ; $5675: $95
    sbc c                                         ; $5676: $99
    sbc [hl]                                      ; $5677: $9E
    and b                                         ; $5678: $A0
    and c                                         ; $5679: $A1
    and l                                         ; $567A: $A5
    xor d                                         ; $567B: $AA
    and l                                         ; $567C: $A5
    xor h                                         ; $567D: $AC
    and l                                         ; $567E: $A5
    xor l                                         ; $567F: $AD
    and l                                         ; $5680: $A5
    xor h                                         ; $5681: $AC
    and l                                         ; $5682: $A5
    sub a                                         ; $5683: $97
    rlca                                          ; $5684: $07
    sbc c                                         ; $5685: $99
    sbc e                                         ; $5686: $9B
    sbc [hl]                                      ; $5687: $9E
    and e                                         ; $5688: $A3
    and l                                         ; $5689: $A5
    and a                                         ; $568A: $A7
    xor d                                         ; $568B: $AA
    xor a                                         ; $568C: $AF
    xor d                                         ; $568D: $AA
    and a                                         ; $568E: $A7
    xor d                                         ; $568F: $AA
    and a                                         ; $5690: $A7
    xor a                                         ; $5691: $AF
    sbc [hl]                                      ; $5692: $9E
    sbc e                                         ; $5693: $9B
    adc [hl]                                      ; $5694: $8E
    rlca                                          ; $5695: $07
    sub b                                         ; $5696: $90
    sub d                                         ; $5697: $92
    sub l                                         ; $5698: $95
    sbc d                                         ; $5699: $9A
    sbc h                                         ; $569A: $9C
    sbc [hl]                                      ; $569B: $9E
    and c                                         ; $569C: $A1
    and [hl]                                      ; $569D: $A6
    and c                                         ; $569E: $A1
    xor b                                         ; $569F: $A8
    and c                                         ; $56A0: $A1
    xor d                                         ; $56A1: $AA
    and c                                         ; $56A2: $A1
    sbc d                                         ; $56A3: $9A
    and c                                         ; $56A4: $A1
    adc c                                         ; $56A5: $89
    rlca                                          ; $56A6: $07
    adc e                                         ; $56A7: $8B
    adc l                                         ; $56A8: $8D
    sub b                                         ; $56A9: $90
    sub l                                         ; $56AA: $95
    sub a                                         ; $56AB: $97
    sbc c                                         ; $56AC: $99
    sbc h                                         ; $56AD: $9C
    and c                                         ; $56AE: $A1
    sbc h                                         ; $56AF: $9C
    and e                                         ; $56B0: $A3
    and l                                         ; $56B1: $A5
    sbc h                                         ; $56B2: $9C
    xor b                                         ; $56B3: $A8
    and l                                         ; $56B4: $A5
    sbc h                                         ; $56B5: $9C
    adc e                                         ; $56B6: $8B
    adc l                                         ; $56B7: $8D
    adc [hl]                                      ; $56B8: $8E
    sub d                                         ; $56B9: $92
    sub a                                         ; $56BA: $97
    sbc c                                         ; $56BB: $99
    sbc d                                         ; $56BC: $9A
    sbc [hl]                                      ; $56BD: $9E
    and b                                         ; $56BE: $A0
    sbc h                                         ; $56BF: $9C
    and c                                         ; $56C0: $A1
    sbc h                                         ; $56C1: $9C
    and e                                         ; $56C2: $A3
    sbc h                                         ; $56C3: $9C
    xor b                                         ; $56C4: $A8
    sbc h                                         ; $56C5: $9C
    sub l                                         ; $56C6: $95
    rlca                                          ; $56C7: $07
    sub a                                         ; $56C8: $97
    sbc c                                         ; $56C9: $99
    sbc h                                         ; $56CA: $9C
    and c                                         ; $56CB: $A1

jr_02E_56CC:
    and e                                         ; $56CC: $A3
    and l                                         ; $56CD: $A5
    xor b                                         ; $56CE: $A8
    sub [hl]                                      ; $56CF: $96
    sbc b                                         ; $56D0: $98
    sbc d                                         ; $56D1: $9A
    sbc l                                         ; $56D2: $9D
    sbc a                                         ; $56D3: $9F
    and h                                         ; $56D4: $A4
    xor b                                         ; $56D5: $A8
    xor e                                         ; $56D6: $AB
    db $ED                                        ; $56D7: $ED
    db $E4                                        ; $56D8: $E4
    ld b, b                                       ; $56D9: $40
    jp hl                                         ; $56DA: $E9


    ld b, h                                       ; $56DB: $44
    di                                            ; $56DC: $F3
    ld [bc], a                                    ; $56DD: $02
    push af                                       ; $56DE: $F5
    ret z                                         ; $56DF: $C8

    add l                                         ; $56E0: $85
    ld a, [hl+]                                   ; $56E1: $2A
    adc d                                         ; $56E2: $8A
    rlca                                          ; $56E3: $07
    adc h                                         ; $56E4: $8C
    sub c                                         ; $56E5: $91
    jr c, jr_02E_56CC                             ; $56E6: $38 $E4

    ld b, b                                       ; $56E8: $40
    jp hl                                         ; $56E9: $E9


    ld b, h                                       ; $56EA: $44
    di                                            ; $56EB: $F3
    ld [bc], a                                    ; $56EC: $02
    push af                                       ; $56ED: $F5
    inc d                                         ; $56EE: $14
    adc d                                         ; $56EF: $8A
    rlca                                          ; $56F0: $07
    adc c                                         ; $56F1: $89
    adc d                                         ; $56F2: $8A
    adc h                                         ; $56F3: $8C
    adc [hl]                                      ; $56F4: $8E
    adc h                                         ; $56F5: $8C
    adc [hl]                                      ; $56F6: $8E
    adc a                                         ; $56F7: $8F
    sub c                                         ; $56F8: $91
    adc a                                         ; $56F9: $8F
    sub c                                         ; $56FA: $91
    sub e                                         ; $56FB: $93
    sub l                                         ; $56FC: $95
    sub e                                         ; $56FD: $93
    sub l                                         ; $56FE: $95
    sub [hl]                                      ; $56FF: $96
    db $EC                                        ; $5700: $EC
    ld b, $57                                     ; $5701: $06 $57
    push hl                                       ; $5703: $E5
    nop                                           ; $5704: $00
    ld d, a                                       ; $5705: $57
    adc d                                         ; $5706: $8A
    ld c, $8A                                     ; $5707: $0E $8A
    sub [hl]                                      ; $5709: $96
    rlca                                          ; $570A: $07
    sub c                                         ; $570B: $91
    and h                                         ; $570C: $A4
    and d                                         ; $570D: $A2
    adc d                                         ; $570E: $8A
    ld c, $8A                                     ; $570F: $0E $8A
    and a                                         ; $5711: $A7
    rlca                                          ; $5712: $07
    and [hl]                                      ; $5713: $A6
    and d                                         ; $5714: $A2
    sbc l                                         ; $5715: $9D
    add l                                         ; $5716: $85
    ld c, $85                                     ; $5717: $0E $85
    sub l                                         ; $5719: $95
    rlca                                          ; $571A: $07
    sub [hl]                                      ; $571B: $96
    sbc b                                         ; $571C: $98
    sbc l                                         ; $571D: $9D
    add l                                         ; $571E: $85
    ld c, $85                                     ; $571F: $0E $85
    and a                                         ; $5721: $A7
    rlca                                          ; $5722: $07
    and [hl]                                      ; $5723: $A6
    and h                                         ; $5724: $A4
    sbc l                                         ; $5725: $9D
    add a                                         ; $5726: $87
    ld c, $87                                     ; $5727: $0E $87
    sub [hl]                                      ; $5729: $96
    rlca                                          ; $572A: $07
    sbc b                                         ; $572B: $98
    sbc d                                         ; $572C: $9A
    sbc l                                         ; $572D: $9D
    add a                                         ; $572E: $87
    ld c, $87                                     ; $572F: $0E $87
    and a                                         ; $5731: $A7
    rlca                                          ; $5732: $07
    and [hl]                                      ; $5733: $A6
    and d                                         ; $5734: $A2
    sbc l                                         ; $5735: $9D
    adc h                                         ; $5736: $8C
    ld c, $8C                                     ; $5737: $0E $8C
    sub [hl]                                      ; $5739: $96
    rlca                                          ; $573A: $07
    sbc b                                         ; $573B: $98
    sbc h                                         ; $573C: $9C
    sbc a                                         ; $573D: $9F
    adc h                                         ; $573E: $8C
    ld c, $8C                                     ; $573F: $0E $8C
    xor e                                         ; $5741: $AB
    rlca                                          ; $5742: $07
    xor b                                         ; $5743: $A8
    and h                                         ; $5744: $A4
    sbc a                                         ; $5745: $9F
    add e                                         ; $5746: $83
    ld c, $83                                     ; $5747: $0E $83
    sub [hl]                                      ; $5749: $96
    rlca                                          ; $574A: $07
    sbc e                                         ; $574B: $9B
    sbc l                                         ; $574C: $9D
    sbc a                                         ; $574D: $9F
    add e                                         ; $574E: $83
    ld c, $83                                     ; $574F: $0E $83
    and a                                         ; $5751: $A7
    rlca                                          ; $5752: $07
    and d                                         ; $5753: $A2
    sbc a                                         ; $5754: $9F
    sbc e                                         ; $5755: $9B
    adc d                                         ; $5756: $8A
    ld c, $8A                                     ; $5757: $0E $8A
    sub [hl]                                      ; $5759: $96
    rlca                                          ; $575A: $07
    sbc b                                         ; $575B: $98
    sbc d                                         ; $575C: $9A
    sbc l                                         ; $575D: $9D
    adc d                                         ; $575E: $8A
    ld c, $8A                                     ; $575F: $0E $8A
    and a                                         ; $5761: $A7
    rlca                                          ; $5762: $07
    and [hl]                                      ; $5763: $A6
    and d                                         ; $5764: $A2
    sbc l                                         ; $5765: $9D
    add e                                         ; $5766: $83
    ld c, $83                                     ; $5767: $0E $83
    sub e                                         ; $5769: $93
    rlca                                          ; $576A: $07
    sub l                                         ; $576B: $95
    sub [hl]                                      ; $576C: $96
    sbc e                                         ; $576D: $9B
    adc h                                         ; $576E: $8C
    ld c, $8C                                     ; $576F: $0E $8C
    and a                                         ; $5771: $A7
    rlca                                          ; $5772: $07
    and h                                         ; $5773: $A4
    sbc a                                         ; $5774: $9F
    sbc e                                         ; $5775: $9B
    add l                                         ; $5776: $85
    ld c, $85                                     ; $5777: $0E $85
    sub l                                         ; $5779: $95
    rlca                                          ; $577A: $07
    sub [hl]                                      ; $577B: $96
    sbc b                                         ; $577C: $98
    sbc l                                         ; $577D: $9D
    add l                                         ; $577E: $85
    ld c, $85                                     ; $577F: $0E $85
    and c                                         ; $5781: $A1
    rlca                                          ; $5782: $07
    xor l                                         ; $5783: $AD
    xor d                                         ; $5784: $AA
    and l                                         ; $5785: $A5
    adc c                                         ; $5786: $89
    rlca                                          ; $5787: $07
    sub l                                         ; $5788: $95
    sbc c                                         ; $5789: $99
    sbc h                                         ; $578A: $9C
    adc c                                         ; $578B: $89
    sbc c                                         ; $578C: $99
    sbc h                                         ; $578D: $9C
    and c                                         ; $578E: $A1
    adc c                                         ; $578F: $89
    sbc h                                         ; $5790: $9C
    and c                                         ; $5791: $A1
    and l                                         ; $5792: $A5
    adc c                                         ; $5793: $89
    and c                                         ; $5794: $A1
    and l                                         ; $5795: $A5
    xor b                                         ; $5796: $A8
    add h                                         ; $5797: $84
    rlca                                          ; $5798: $07
    sub b                                         ; $5799: $90
    sub h                                         ; $579A: $94
    sub a                                         ; $579B: $97
    add h                                         ; $579C: $84
    sub h                                         ; $579D: $94
    sub a                                         ; $579E: $97
    sbc h                                         ; $579F: $9C
    add h                                         ; $57A0: $84
    sub a                                         ; $57A1: $97
    sbc h                                         ; $57A2: $9C
    and b                                         ; $57A3: $A0
    add h                                         ; $57A4: $84
    sbc h                                         ; $57A5: $9C
    and b                                         ; $57A6: $A0
    and e                                         ; $57A7: $A3
    add [hl]                                      ; $57A8: $86
    rlca                                          ; $57A9: $07
    sub d                                         ; $57AA: $92
    sub l                                         ; $57AB: $95
    sbc c                                         ; $57AC: $99
    add [hl]                                      ; $57AD: $86
    sub l                                         ; $57AE: $95
    sbc c                                         ; $57AF: $99
    sbc [hl]                                      ; $57B0: $9E
    add [hl]                                      ; $57B1: $86
    sbc c                                         ; $57B2: $99
    sbc [hl]                                      ; $57B3: $9E
    and c                                         ; $57B4: $A1
    add [hl]                                      ; $57B5: $86
    sbc [hl]                                      ; $57B6: $9E
    and c                                         ; $57B7: $A1
    and l                                         ; $57B8: $A5
    adc e                                         ; $57B9: $8B
    rlca                                          ; $57BA: $07
    sub a                                         ; $57BB: $97
    sbc e                                         ; $57BC: $9B
    sbc [hl]                                      ; $57BD: $9E
    adc e                                         ; $57BE: $8B
    sbc e                                         ; $57BF: $9B
    sbc [hl]                                      ; $57C0: $9E
    and e                                         ; $57C1: $A3
    adc e                                         ; $57C2: $8B
    and e                                         ; $57C3: $A3
    and a                                         ; $57C4: $A7
    xor d                                         ; $57C5: $AA
    adc e                                         ; $57C6: $8B
    and a                                         ; $57C7: $A7
    xor d                                         ; $57C8: $AA
    xor a                                         ; $57C9: $AF
    add d                                         ; $57CA: $82
    rlca                                          ; $57CB: $07
    adc [hl]                                      ; $57CC: $8E
    sub d                                         ; $57CD: $92
    sub l                                         ; $57CE: $95
    add d                                         ; $57CF: $82
    sub d                                         ; $57D0: $92
    sub l                                         ; $57D1: $95
    sbc d                                         ; $57D2: $9A
    add d                                         ; $57D3: $82
    sub l                                         ; $57D4: $95
    sbc d                                         ; $57D5: $9A
    sbc [hl]                                      ; $57D6: $9E
    add d                                         ; $57D7: $82
    sbc d                                         ; $57D8: $9A
    sbc [hl]                                      ; $57D9: $9E
    and c                                         ; $57DA: $A1
    adc c                                         ; $57DB: $89
    rlca                                          ; $57DC: $07
    sub l                                         ; $57DD: $95
    sbc c                                         ; $57DE: $99
    sbc h                                         ; $57DF: $9C
    adc c                                         ; $57E0: $89
    sbc c                                         ; $57E1: $99
    sbc h                                         ; $57E2: $9C
    and c                                         ; $57E3: $A1
    adc c                                         ; $57E4: $89
    sbc h                                         ; $57E5: $9C
    and c                                         ; $57E6: $A1
    and l                                         ; $57E7: $A5
    adc c                                         ; $57E8: $89
    and c                                         ; $57E9: $A1
    and l                                         ; $57EA: $A5
    xor b                                         ; $57EB: $A8
    adc e                                         ; $57EC: $8B
    rlca                                          ; $57ED: $07
    sub a                                         ; $57EE: $97
    adc [hl]                                      ; $57EF: $8E
    sbc [hl]                                      ; $57F0: $9E
    adc e                                         ; $57F1: $8B
    sbc [hl]                                      ; $57F2: $9E
    and e                                         ; $57F3: $A3
    and [hl]                                      ; $57F4: $A6
    add h                                         ; $57F5: $84
    sbc h                                         ; $57F6: $9C
    and b                                         ; $57F7: $A0
    and e                                         ; $57F8: $A3
    add h                                         ; $57F9: $84
    and e                                         ; $57FA: $A3
    xor b                                         ; $57FB: $A8
    xor h                                         ; $57FC: $AC
    adc c                                         ; $57FD: $89
    rlca                                          ; $57FE: $07
    sub l                                         ; $57FF: $95
    sbc c                                         ; $5800: $99
    sbc h                                         ; $5801: $9C
    adc c                                         ; $5802: $89
    sbc c                                         ; $5803: $99
    sbc h                                         ; $5804: $9C
    and c                                         ; $5805: $A1
    adc d                                         ; $5806: $8A
    sbc d                                         ; $5807: $9A
    sbc l                                         ; $5808: $9D
    and d                                         ; $5809: $A2
    adc h                                         ; $580A: $8C
    sbc a                                         ; $580B: $9F
    and h                                         ; $580C: $A4
    xor b                                         ; $580D: $A8
    db $ED                                        ; $580E: $ED
    jp hl                                         ; $580F: $E9


    adc b                                         ; $5810: $88
    db $EC                                        ; $5811: $EC
    xor b                                         ; $5812: $A8
    ld e, b                                       ; $5813: $58
    db $E4                                        ; $5814: $E4
    ld b, c                                       ; $5815: $41
    ld hl, $E407                                  ; $5816: $21 $07 $E4
    ld b, c                                       ; $5819: $41
    ld hl, $E407                                  ; $581A: $21 $07 $E4
    ld d, e                                       ; $581D: $53
    ld de, $E407                                  ; $581E: $11 $07 $E4
    ld h, d                                       ; $5821: $62
    inc h                                         ; $5822: $24
    rlca                                          ; $5823: $07
    db $EC                                        ; $5824: $EC
    xor b                                         ; $5825: $A8
    ld e, b                                       ; $5826: $58
    db $E4                                        ; $5827: $E4
    ld h, d                                       ; $5828: $62
    inc h                                         ; $5829: $24
    rlca                                          ; $582A: $07
    db $E4                                        ; $582B: $E4
    ld h, d                                       ; $582C: $62
    inc h                                         ; $582D: $24
    rlca                                          ; $582E: $07
    db $E4                                        ; $582F: $E4
    ld h, d                                       ; $5830: $62
    inc h                                         ; $5831: $24
    ld c, $EC                                     ; $5832: $0E $EC
    ret                                           ; $5834: $C9


    ld e, b                                       ; $5835: $58
    db $E4                                        ; $5836: $E4
    ld h, d                                       ; $5837: $62
    inc h                                         ; $5838: $24
    ld c, $E4                                     ; $5839: $0E $E4
    ld h, d                                       ; $583B: $62
    inc h                                         ; $583C: $24
    inc e                                         ; $583D: $1C
    db $E4                                        ; $583E: $E4
    ld h, d                                       ; $583F: $62
    inc h                                         ; $5840: $24
    ld c, $E4                                     ; $5841: $0E $E4
    ld h, d                                       ; $5843: $62
    inc h                                         ; $5844: $24
    ld c, $E4                                     ; $5845: $0E $E4
    ld h, d                                       ; $5847: $62
    inc h                                         ; $5848: $24
    ld c, $E4                                     ; $5849: $0E $E4
    ld h, d                                       ; $584B: $62
    inc h                                         ; $584C: $24
    ld c, $E4                                     ; $584D: $0E $E4
    ld h, d                                       ; $584F: $62
    inc h                                         ; $5850: $24
    dec b                                         ; $5851: $05
    db $E4                                        ; $5852: $E4
    ld h, d                                       ; $5853: $62
    inc h                                         ; $5854: $24
    dec b                                         ; $5855: $05
    db $E4                                        ; $5856: $E4
    ld h, d                                       ; $5857: $62
    inc h                                         ; $5858: $24
    inc b                                         ; $5859: $04
    db $EC                                        ; $585A: $EC
    db $EB                                        ; $585B: $EB
    ld e, b                                       ; $585C: $58
    db $E4                                        ; $585D: $E4
    ld h, d                                       ; $585E: $62
    inc h                                         ; $585F: $24
    ld c, $E4                                     ; $5860: $0E $E4
    ld h, d                                       ; $5862: $62
    inc h                                         ; $5863: $24
    rlca                                          ; $5864: $07
    db $E4                                        ; $5865: $E4
    ld h, d                                       ; $5866: $62
    inc h                                         ; $5867: $24
    rlca                                          ; $5868: $07
    db $E4                                        ; $5869: $E4
    ld h, d                                       ; $586A: $62
    inc h                                         ; $586B: $24
    ld c, $E4                                     ; $586C: $0E $E4
    ld h, d                                       ; $586E: $62
    inc h                                         ; $586F: $24
    rlca                                          ; $5870: $07
    db $E4                                        ; $5871: $E4
    ld h, d                                       ; $5872: $62
    inc h                                         ; $5873: $24
    rlca                                          ; $5874: $07
    db $E4                                        ; $5875: $E4
    ld h, d                                       ; $5876: $62
    inc h                                         ; $5877: $24
    dec b                                         ; $5878: $05
    db $E4                                        ; $5879: $E4
    ld h, d                                       ; $587A: $62
    inc h                                         ; $587B: $24
    dec b                                         ; $587C: $05
    db $E4                                        ; $587D: $E4
    ld h, d                                       ; $587E: $62
    inc h                                         ; $587F: $24
    inc b                                         ; $5880: $04
    db $E4                                        ; $5881: $E4
    ld h, d                                       ; $5882: $62
    inc h                                         ; $5883: $24
    dec b                                         ; $5884: $05
    db $E4                                        ; $5885: $E4
    ld h, d                                       ; $5886: $62
    inc h                                         ; $5887: $24
    dec b                                         ; $5888: $05
    db $E4                                        ; $5889: $E4
    ld h, d                                       ; $588A: $62
    inc h                                         ; $588B: $24
    inc b                                         ; $588C: $04
    db $E4                                        ; $588D: $E4
    ld h, d                                       ; $588E: $62
    inc h                                         ; $588F: $24
    dec b                                         ; $5890: $05
    db $E4                                        ; $5891: $E4
    ld h, d                                       ; $5892: $62
    inc h                                         ; $5893: $24
    dec b                                         ; $5894: $05
    db $E4                                        ; $5895: $E4
    ld h, d                                       ; $5896: $62
    inc h                                         ; $5897: $24
    inc b                                         ; $5898: $04
    db $E4                                        ; $5899: $E4
    ld h, d                                       ; $589A: $62
    inc h                                         ; $589B: $24
    dec b                                         ; $589C: $05
    db $E4                                        ; $589D: $E4
    ld h, d                                       ; $589E: $62
    inc h                                         ; $589F: $24
    dec b                                         ; $58A0: $05
    db $E4                                        ; $58A1: $E4
    ld h, d                                       ; $58A2: $62
    inc h                                         ; $58A3: $24
    inc b                                         ; $58A4: $04
    push hl                                       ; $58A5: $E5
    inc sp                                        ; $58A6: $33
    ld e, b                                       ; $58A7: $58
    db $E4                                        ; $58A8: $E4
    ld h, d                                       ; $58A9: $62
    inc h                                         ; $58AA: $24
    ld c, $E4                                     ; $58AB: $0E $E4
    ld h, d                                       ; $58AD: $62
    inc h                                         ; $58AE: $24
    ld c, $E4                                     ; $58AF: $0E $E4
    ld b, c                                       ; $58B1: $41
    ld hl, $E407                                  ; $58B2: $21 $07 $E4
    ld b, c                                       ; $58B5: $41
    ld hl, $E407                                  ; $58B6: $21 $07 $E4

jr_02E_58B9:
    ld d, e                                       ; $58B9: $53
    ld de, $E40E                                  ; $58BA: $11 $0E $E4
    ld b, c                                       ; $58BD: $41
    ld hl, $E407                                  ; $58BE: $21 $07 $E4
    ld b, c                                       ; $58C1: $41
    ld hl, $E407                                  ; $58C2: $21 $07 $E4
    ld d, e                                       ; $58C5: $53
    ld de, $ED0E                                  ; $58C6: $11 $0E $ED
    db $E4                                        ; $58C9: $E4
    ld h, d                                       ; $58CA: $62
    inc h                                         ; $58CB: $24
    ld c, $E4                                     ; $58CC: $0E $E4
    ld h, d                                       ; $58CE: $62
    inc h                                         ; $58CF: $24
    inc e                                         ; $58D0: $1C
    db $E4                                        ; $58D1: $E4
    ld h, d                                       ; $58D2: $62
    inc h                                         ; $58D3: $24
    ld c, $E4                                     ; $58D4: $0E $E4
    ld h, d                                       ; $58D6: $62
    inc h                                         ; $58D7: $24
    ld c, $E4                                     ; $58D8: $0E $E4
    ld h, d                                       ; $58DA: $62
    inc h                                         ; $58DB: $24
    inc e                                         ; $58DC: $1C
    db $E4                                        ; $58DD: $E4
    ld h, d                                       ; $58DE: $62
    inc h                                         ; $58DF: $24
    rlca                                          ; $58E0: $07
    db $E4                                        ; $58E1: $E4
    ld h, d                                       ; $58E2: $62
    inc h                                         ; $58E3: $24
    rlca                                          ; $58E4: $07
    rst RST_20                                    ; $58E5: $E7
    nop                                           ; $58E6: $00
    rlca                                          ; $58E7: $07
    ret                                           ; $58E8: $C9


    ld e, b                                       ; $58E9: $58
    db $ED                                        ; $58EA: $ED
    db $E4                                        ; $58EB: $E4
    ld h, d                                       ; $58EC: $62
    inc h                                         ; $58ED: $24
    ld c, $E4                                     ; $58EE: $0E $E4
    ld h, d                                       ; $58F0: $62
    inc h                                         ; $58F1: $24
    rlca                                          ; $58F2: $07
    db $E4                                        ; $58F3: $E4
    ld h, d                                       ; $58F4: $62
    inc h                                         ; $58F5: $24
    rlca                                          ; $58F6: $07
    db $E4                                        ; $58F7: $E4
    ld h, d                                       ; $58F8: $62
    inc h                                         ; $58F9: $24
    ld c, $E4                                     ; $58FA: $0E $E4
    ld h, d                                       ; $58FC: $62
    inc h                                         ; $58FD: $24
    rlca                                          ; $58FE: $07
    db $E4                                        ; $58FF: $E4
    ld h, d                                       ; $5900: $62
    inc h                                         ; $5901: $24
    rlca                                          ; $5902: $07
    db $E4                                        ; $5903: $E4
    ld h, d                                       ; $5904: $62
    inc h                                         ; $5905: $24
    ld c, $E4                                     ; $5906: $0E $E4
    ld h, d                                       ; $5908: $62
    inc h                                         ; $5909: $24
    rlca                                          ; $590A: $07
    db $E4                                        ; $590B: $E4
    ld h, d                                       ; $590C: $62
    inc h                                         ; $590D: $24
    rlca                                          ; $590E: $07
    db $E4                                        ; $590F: $E4
    ld h, d                                       ; $5910: $62
    inc h                                         ; $5911: $24
    rlca                                          ; $5912: $07
    db $E4                                        ; $5913: $E4
    ld h, d                                       ; $5914: $62
    inc h                                         ; $5915: $24
    rlca                                          ; $5916: $07
    db $E4                                        ; $5917: $E4
    ld h, d                                       ; $5918: $62
    inc h                                         ; $5919: $24
    rlca                                          ; $591A: $07
    db $E4                                        ; $591B: $E4
    ld h, d                                       ; $591C: $62
    inc h                                         ; $591D: $24
    rlca                                          ; $591E: $07
    rst RST_20                                    ; $591F: $E7
    nop                                           ; $5920: $00
    rlca                                          ; $5921: $07
    db $EB                                        ; $5922: $EB
    ld e, b                                       ; $5923: $58
    db $ED                                        ; $5924: $ED
    inc b                                         ; $5925: $04
    add b                                         ; $5926: $80
    inc de                                        ; $5927: $13
    ld a, $59                                     ; $5928: $3E $59
    nop                                           ; $592A: $00
    add c                                         ; $592B: $81
    add b                                         ; $592C: $80
    jr @-$60                                      ; $592D: $18 $9E

    ld e, d                                       ; $592F: $5A
    inc c                                         ; $5930: $0C
    add c                                         ; $5931: $81
    add b                                         ; $5932: $80
    dec e                                         ; $5933: $1D
    rst RST_20                                    ; $5934: $E7
    ld e, e                                       ; $5935: $5B
    jr jr_02E_58B9                                ; $5936: $18 $81

    add b                                         ; $5938: $80
    ld [hl+], a                                   ; $5939: $22
    ld [hl], a                                    ; $593A: $77
    ld e, l                                       ; $593B: $5D
    nop                                           ; $593C: $00
    add c                                         ; $593D: $81
    db $E4                                        ; $593E: $E4
    ld a, b                                       ; $593F: $78
    jp hl                                         ; $5940: $E9


    ld de, $C0EE                                  ; $5941: $11 $EE $C0
    adc l                                         ; $5944: $8D
    inc e                                         ; $5945: $1C
    db $E4                                        ; $5946: $E4
    ld e, b                                       ; $5947: $58
    adc l                                         ; $5948: $8D
    ld c, $E4                                     ; $5949: $0E $E4
    ld a, b                                       ; $594B: $78
    adc [hl]                                      ; $594C: $8E
    db $E4                                        ; $594D: $E4
    ld e, b                                       ; $594E: $58
    adc [hl]                                      ; $594F: $8E
    db $E4                                        ; $5950: $E4
    ld a, b                                       ; $5951: $78
    adc e                                         ; $5952: $8B
    sub b                                         ; $5953: $90
    inc e                                         ; $5954: $1C
    db $E4                                        ; $5955: $E4
    ld e, b                                       ; $5956: $58
    sub b                                         ; $5957: $90
    ld c, $E4                                     ; $5958: $0E $E4
    ld a, b                                       ; $595A: $78
    adc c                                         ; $595B: $89
    inc e                                         ; $595C: $1C
    db $E4                                        ; $595D: $E4
    ld e, b                                       ; $595E: $58
    adc c                                         ; $595F: $89
    ld c, $E4                                     ; $5960: $0E $E4
    ld a, b                                       ; $5962: $78
    adc e                                         ; $5963: $8B
    adc l                                         ; $5964: $8D
    rlca                                          ; $5965: $07
    db $E4                                        ; $5966: $E4
    ld e, b                                       ; $5967: $58
    adc l                                         ; $5968: $8D
    db $E4                                        ; $5969: $E4
    ld a, b                                       ; $596A: $78
    add a                                         ; $596B: $87
    inc e                                         ; $596C: $1C
    db $E4                                        ; $596D: $E4
    ld d, [hl]                                    ; $596E: $56
    add a                                         ; $596F: $87
    dec b                                         ; $5970: $05
    db $E4                                        ; $5971: $E4
    ld a, b                                       ; $5972: $78
    adc c                                         ; $5973: $89
    add a                                         ; $5974: $87
    inc b                                         ; $5975: $04
    adc c                                         ; $5976: $89
    dec b                                         ; $5977: $05
    add a                                         ; $5978: $87
    adc c                                         ; $5979: $89
    inc b                                         ; $597A: $04
    add a                                         ; $597B: $87
    dec b                                         ; $597C: $05
    adc c                                         ; $597D: $89
    add a                                         ; $597E: $87
    inc b                                         ; $597F: $04
    adc c                                         ; $5980: $89
    dec b                                         ; $5981: $05
    add a                                         ; $5982: $87
    adc c                                         ; $5983: $89
    inc b                                         ; $5984: $04
    add a                                         ; $5985: $87
    dec b                                         ; $5986: $05
    adc c                                         ; $5987: $89
    add a                                         ; $5988: $87
    inc b                                         ; $5989: $04
    adc c                                         ; $598A: $89
    dec b                                         ; $598B: $05
    add a                                         ; $598C: $87
    adc c                                         ; $598D: $89
    inc b                                         ; $598E: $04
    add a                                         ; $598F: $87
    rlca                                          ; $5990: $07
    add [hl]                                      ; $5991: $86
    adc l                                         ; $5992: $8D
    add h                                         ; $5993: $84
    db $E4                                        ; $5994: $E4
    ld [hl], l                                    ; $5995: $75
    db $EC                                        ; $5996: $EC
    and $59                                       ; $5997: $E6 $59
    db $EC                                        ; $5999: $EC
    and $59                                       ; $599A: $E6 $59
    db $EC                                        ; $599C: $EC
    db $FC                                        ; $599D: $FC
    ld e, c                                       ; $599E: $59
    db $EC                                        ; $599F: $EC
    and $59                                       ; $59A0: $E6 $59
    db $EC                                        ; $59A2: $EC
    db $FC                                        ; $59A3: $FC
    ld e, c                                       ; $59A4: $59
    db $EC                                        ; $59A5: $EC
    dec e                                         ; $59A6: $1D
    ld e, d                                       ; $59A7: $5A
    adc e                                         ; $59A8: $8B
    add b                                         ; $59A9: $80
    adc c                                         ; $59AA: $89
    add b                                         ; $59AB: $80
    db $EC                                        ; $59AC: $EC
    dec e                                         ; $59AD: $1D
    ld e, d                                       ; $59AE: $5A
    adc e                                         ; $59AF: $8B
    adc c                                         ; $59B0: $89
    add h                                         ; $59B1: $84
    add l                                         ; $59B2: $85
    and $FB                                       ; $59B3: $E6 $FB
    db $EC                                        ; $59B5: $EC
    dec e                                         ; $59B6: $1D
    ld e, d                                       ; $59B7: $5A
    and $05                                       ; $59B8: $E6 $05
    add [hl]                                      ; $59BA: $86
    add b                                         ; $59BB: $80
    add h                                         ; $59BC: $84
    add b                                         ; $59BD: $80
    and $FB                                       ; $59BE: $E6 $FB
    db $EC                                        ; $59C0: $EC
    dec e                                         ; $59C1: $1D
    ld e, d                                       ; $59C2: $5A
    and $05                                       ; $59C3: $E6 $05
    add h                                         ; $59C5: $84
    add [hl]                                      ; $59C6: $86
    adc c                                         ; $59C7: $89
    adc d                                         ; $59C8: $8A
    db $EC                                        ; $59C9: $EC
    dec e                                         ; $59CA: $1D
    ld e, d                                       ; $59CB: $5A
    adc e                                         ; $59CC: $8B
    add b                                         ; $59CD: $80
    adc c                                         ; $59CE: $89
    add b                                         ; $59CF: $80
    db $EC                                        ; $59D0: $EC
    dec e                                         ; $59D1: $1D
    ld e, d                                       ; $59D2: $5A
    adc e                                         ; $59D3: $8B
    adc c                                         ; $59D4: $89
    add h                                         ; $59D5: $84
    adc d                                         ; $59D6: $8A
    db $EC                                        ; $59D7: $EC
    ld a, [hl+]                                   ; $59D8: $2A
    ld e, d                                       ; $59D9: $5A
    db $EC                                        ; $59DA: $EC
    ld c, e                                       ; $59DB: $4B
    ld e, d                                       ; $59DC: $5A
    db $EC                                        ; $59DD: $EC
    ld c, e                                       ; $59DE: $4B
    ld e, d                                       ; $59DF: $5A
    db $EC                                        ; $59E0: $EC
    ld [hl], a                                    ; $59E1: $77
    ld e, d                                       ; $59E2: $5A
    push hl                                       ; $59E3: $E5
    sub h                                         ; $59E4: $94
    ld e, c                                       ; $59E5: $59
    add [hl]                                      ; $59E6: $86
    add [hl]                                      ; $59E7: $86
    add b                                         ; $59E8: $80
    add [hl]                                      ; $59E9: $86
    adc c                                         ; $59EA: $89
    add b                                         ; $59EB: $80
    add [hl]                                      ; $59EC: $86
    add [hl]                                      ; $59ED: $86
    add b                                         ; $59EE: $80
    add [hl]                                      ; $59EF: $86
    adc e                                         ; $59F0: $8B
    add b                                         ; $59F1: $80
    add h                                         ; $59F2: $84
    add b                                         ; $59F3: $80
    add b                                         ; $59F4: $80
    add b                                         ; $59F5: $80
    rst RST_20                                    ; $59F6: $E7
    nop                                           ; $59F7: $00
    ld [bc], a                                    ; $59F8: $02
    and $59                                       ; $59F9: $E6 $59
    db $ED                                        ; $59FB: $ED
    add d                                         ; $59FC: $82
    add d                                         ; $59FD: $82
    add b                                         ; $59FE: $80
    add d                                         ; $59FF: $82
    adc c                                         ; $5A00: $89
    add b                                         ; $5A01: $80
    add d                                         ; $5A02: $82
    add d                                         ; $5A03: $82
    add b                                         ; $5A04: $80
    add d                                         ; $5A05: $82
    adc b                                         ; $5A06: $88
    add b                                         ; $5A07: $80
    adc e                                         ; $5A08: $8B
    adc c                                         ; $5A09: $89
    add d                                         ; $5A0A: $82
    adc c                                         ; $5A0B: $89
    add h                                         ; $5A0C: $84
    add h                                         ; $5A0D: $84
    add b                                         ; $5A0E: $80
    add h                                         ; $5A0F: $84
    adc c                                         ; $5A10: $89
    add b                                         ; $5A11: $80
    add h                                         ; $5A12: $84
    add h                                         ; $5A13: $84
    add b                                         ; $5A14: $80
    add h                                         ; $5A15: $84
    adc b                                         ; $5A16: $88
    adc c                                         ; $5A17: $89
    adc b                                         ; $5A18: $88
    add [hl]                                      ; $5A19: $86
    add c                                         ; $5A1A: $81
    add h                                         ; $5A1B: $84
    db $ED                                        ; $5A1C: $ED
    adc e                                         ; $5A1D: $8B
    adc e                                         ; $5A1E: $8B
    add b                                         ; $5A1F: $80
    adc e                                         ; $5A20: $8B
    adc [hl]                                      ; $5A21: $8E
    add b                                         ; $5A22: $80
    adc e                                         ; $5A23: $8B
    adc e                                         ; $5A24: $8B
    add b                                         ; $5A25: $80
    adc e                                         ; $5A26: $8B
    sub b                                         ; $5A27: $90
    add b                                         ; $5A28: $80
    db $ED                                        ; $5A29: $ED
    adc c                                         ; $5A2A: $89
    adc c                                         ; $5A2B: $89
    add b                                         ; $5A2C: $80
    adc c                                         ; $5A2D: $89
    sub b                                         ; $5A2E: $90
    add b                                         ; $5A2F: $80
    adc c                                         ; $5A30: $89
    adc c                                         ; $5A31: $89
    add b                                         ; $5A32: $80
    adc c                                         ; $5A33: $89
    sub d                                         ; $5A34: $92
    add b                                         ; $5A35: $80
    sub b                                         ; $5A36: $90
    adc a                                         ; $5A37: $8F
    adc [hl]                                      ; $5A38: $8E
    adc l                                         ; $5A39: $8D
    adc b                                         ; $5A3A: $88
    adc b                                         ; $5A3B: $88
    add b                                         ; $5A3C: $80
    adc b                                         ; $5A3D: $88
    adc a                                         ; $5A3E: $8F
    add b                                         ; $5A3F: $80
    adc l                                         ; $5A40: $8D
    adc l                                         ; $5A41: $8D
    add b                                         ; $5A42: $80
    adc l                                         ; $5A43: $8D
    add b                                         ; $5A44: $80
    adc l                                         ; $5A45: $8D
    adc e                                         ; $5A46: $8B
    add h                                         ; $5A47: $84
    adc l                                         ; $5A48: $8D
    add b                                         ; $5A49: $80
    db $ED                                        ; $5A4A: $ED
    add [hl]                                      ; $5A4B: $86
    ld c, $80                                     ; $5A4C: $0E $80
    rlca                                          ; $5A4E: $07
    add c                                         ; $5A4F: $81
    ld c, $80                                     ; $5A50: $0E $80
    rlca                                          ; $5A52: $07
    add h                                         ; $5A53: $84
    ld c, $80                                     ; $5A54: $0E $80
    rlca                                          ; $5A56: $07
    add [hl]                                      ; $5A57: $86
    add b                                         ; $5A58: $80
    add [hl]                                      ; $5A59: $86
    add c                                         ; $5A5A: $81
    add b                                         ; $5A5B: $80
    add h                                         ; $5A5C: $84
    add b                                         ; $5A5D: $80
    rst RST_20                                    ; $5A5E: $E7
    nop                                           ; $5A5F: $00
    inc bc                                        ; $5A60: $03
    ld c, e                                       ; $5A61: $4B
    ld e, d                                       ; $5A62: $5A
    add [hl]                                      ; $5A63: $86
    ld c, $80                                     ; $5A64: $0E $80
    rlca                                          ; $5A66: $07
    add c                                         ; $5A67: $81
    ld c, $80                                     ; $5A68: $0E $80
    rlca                                          ; $5A6A: $07
    add h                                         ; $5A6B: $84
    ld c, $80                                     ; $5A6C: $0E $80
    rlca                                          ; $5A6E: $07
    add [hl]                                      ; $5A6F: $86
    add c                                         ; $5A70: $81
    add h                                         ; $5A71: $84
    adc c                                         ; $5A72: $89
    adc b                                         ; $5A73: $88
    add c                                         ; $5A74: $81
    add h                                         ; $5A75: $84
    db $ED                                        ; $5A76: $ED
    add [hl]                                      ; $5A77: $86
    ld c, $80                                     ; $5A78: $0E $80
    rlca                                          ; $5A7A: $07
    add c                                         ; $5A7B: $81
    ld c, $80                                     ; $5A7C: $0E $80
    rlca                                          ; $5A7E: $07
    add h                                         ; $5A7F: $84
    ld c, $80                                     ; $5A80: $0E $80
    rlca                                          ; $5A82: $07
    add [hl]                                      ; $5A83: $86
    add b                                         ; $5A84: $80
    add [hl]                                      ; $5A85: $86
    add c                                         ; $5A86: $81
    add b                                         ; $5A87: $80
    add l                                         ; $5A88: $85
    add b                                         ; $5A89: $80
    add [hl]                                      ; $5A8A: $86
    ld c, $80                                     ; $5A8B: $0E $80
    rlca                                          ; $5A8D: $07
    add c                                         ; $5A8E: $81
    ld c, $80                                     ; $5A8F: $0E $80
    rlca                                          ; $5A91: $07
    add h                                         ; $5A92: $84
    ld c, $80                                     ; $5A93: $0E $80
    rlca                                          ; $5A95: $07
    add [hl]                                      ; $5A96: $86
    add c                                         ; $5A97: $81
    add h                                         ; $5A98: $84
    adc c                                         ; $5A99: $89
    adc b                                         ; $5A9A: $88
    add c                                         ; $5A9B: $81
    add h                                         ; $5A9C: $84
    db $ED                                        ; $5A9D: $ED
    db $E4                                        ; $5A9E: $E4
    ld e, b                                       ; $5A9F: $58
    jp hl                                         ; $5AA0: $E9


    ld [hl+], a                                   ; $5AA1: $22
    xor $80                                       ; $5AA2: $EE $80
    db $EC                                        ; $5AA4: $EC
    push bc                                       ; $5AA5: $C5
    ld e, d                                       ; $5AA6: $5A
    db $EC                                        ; $5AA7: $EC
    db $F4                                        ; $5AA8: $F4
    ld e, d                                       ; $5AA9: $5A
    db $EC                                        ; $5AAA: $EC
    dec d                                         ; $5AAB: $15
    ld e, e                                       ; $5AAC: $5B
    db $EC                                        ; $5AAD: $EC
    dec d                                         ; $5AAE: $15
    ld e, e                                       ; $5AAF: $5B
    db $EC                                        ; $5AB0: $EC
    inc sp                                        ; $5AB1: $33
    ld e, e                                       ; $5AB2: $5B
    db $EC                                        ; $5AB3: $EC
    ld c, c                                       ; $5AB4: $49
    ld e, e                                       ; $5AB5: $5B
    db $EC                                        ; $5AB6: $EC
    inc sp                                        ; $5AB7: $33
    ld e, e                                       ; $5AB8: $5B
    db $EC                                        ; $5AB9: $EC
    ld e, a                                       ; $5ABA: $5F
    ld e, e                                       ; $5ABB: $5B
    db $EC                                        ; $5ABC: $EC
    add b                                         ; $5ABD: $80
    ld e, e                                       ; $5ABE: $5B
    db $EC                                        ; $5ABF: $EC
    add $5B                                       ; $5AC0: $C6 $5B
    push hl                                       ; $5AC2: $E5
    and a                                         ; $5AC3: $A7
    ld e, d                                       ; $5AC4: $5A
    sbc [hl]                                      ; $5AC5: $9E
    rlca                                          ; $5AC6: $07
    sbc c                                         ; $5AC7: $99
    sub a                                         ; $5AC8: $97
    sbc h                                         ; $5AC9: $9C
    sbc [hl]                                      ; $5ACA: $9E
    sbc c                                         ; $5ACB: $99
    and c                                         ; $5ACC: $A1
    and b                                         ; $5ACD: $A0
    rst RST_20                                    ; $5ACE: $E7
    nop                                           ; $5ACF: $00
    ld [bc], a                                    ; $5AD0: $02
    push bc                                       ; $5AD1: $C5
    ld e, d                                       ; $5AD2: $5A
    sbc [hl]                                      ; $5AD3: $9E
    sbc c                                         ; $5AD4: $99
    sub a                                         ; $5AD5: $97
    sbc h                                         ; $5AD6: $9C
    sbc [hl]                                      ; $5AD7: $9E
    sbc c                                         ; $5AD8: $99
    and e                                         ; $5AD9: $A3
    and c                                         ; $5ADA: $A1
    sbc [hl]                                      ; $5ADB: $9E
    sbc c                                         ; $5ADC: $99
    sub a                                         ; $5ADD: $97
    sbc h                                         ; $5ADE: $9C
    sbc [hl]                                      ; $5ADF: $9E
    sbc c                                         ; $5AE0: $99
    and l                                         ; $5AE1: $A5
    and e                                         ; $5AE2: $A3
    sbc [hl]                                      ; $5AE3: $9E
    sbc c                                         ; $5AE4: $99
    sub a                                         ; $5AE5: $97
    sbc h                                         ; $5AE6: $9C
    sbc c                                         ; $5AE7: $99
    sub l                                         ; $5AE8: $95
    sub b                                         ; $5AE9: $90
    sbc c                                         ; $5AEA: $99
    sub d                                         ; $5AEB: $92
    adc l                                         ; $5AEC: $8D
    adc e                                         ; $5AED: $8B
    sub b                                         ; $5AEE: $90
    adc l                                         ; $5AEF: $8D
    adc e                                         ; $5AF0: $8B
    add b                                         ; $5AF1: $80
    add b                                         ; $5AF2: $80
    db $ED                                        ; $5AF3: $ED
    add b                                         ; $5AF4: $80
    add b                                         ; $5AF5: $80
    add b                                         ; $5AF6: $80
    sub l                                         ; $5AF7: $95
    sub d                                         ; $5AF8: $92
    sub a                                         ; $5AF9: $97
    sub d                                         ; $5AFA: $92
    sbc c                                         ; $5AFB: $99
    sub d                                         ; $5AFC: $92
    add b                                         ; $5AFD: $80
    add b                                         ; $5AFE: $80
    sub l                                         ; $5AFF: $95
    sub d                                         ; $5B00: $92
    sub a                                         ; $5B01: $97
    sub d                                         ; $5B02: $92
    sbc c                                         ; $5B03: $99
    sub d                                         ; $5B04: $92
    sub d                                         ; $5B05: $92
    sub d                                         ; $5B06: $92
    sbc h                                         ; $5B07: $9C
    sub d                                         ; $5B08: $92
    sbc e                                         ; $5B09: $9B
    sub d                                         ; $5B0A: $92
    sub a                                         ; $5B0B: $97
    sub d                                         ; $5B0C: $92
    sbc c                                         ; $5B0D: $99
    sub d                                         ; $5B0E: $92
    sub l                                         ; $5B0F: $95
    sub d                                         ; $5B10: $92
    sub h                                         ; $5B11: $94
    sub b                                         ; $5B12: $90
    sub d                                         ; $5B13: $92
    db $ED                                        ; $5B14: $ED
    add b                                         ; $5B15: $80
    add b                                         ; $5B16: $80
    sub l                                         ; $5B17: $95
    sub d                                         ; $5B18: $92
    sub a                                         ; $5B19: $97
    sub d                                         ; $5B1A: $92
    sbc c                                         ; $5B1B: $99
    sub d                                         ; $5B1C: $92
    rst RST_20                                    ; $5B1D: $E7
    nop                                           ; $5B1E: $00
    ld b, $15                                     ; $5B1F: $06 $15
    ld e, e                                       ; $5B21: $5B
    add b                                         ; $5B22: $80
    add b                                         ; $5B23: $80
    sub h                                         ; $5B24: $94
    sub b                                         ; $5B25: $90
    sub l                                         ; $5B26: $95
    sub b                                         ; $5B27: $90
    sub a                                         ; $5B28: $97
    sub b                                         ; $5B29: $90
    add b                                         ; $5B2A: $80
    add b                                         ; $5B2B: $80
    sub h                                         ; $5B2C: $94
    sub b                                         ; $5B2D: $90
    sub l                                         ; $5B2E: $95
    sub b                                         ; $5B2F: $90
    sub a                                         ; $5B30: $97
    sub b                                         ; $5B31: $90
    db $ED                                        ; $5B32: $ED
    add b                                         ; $5B33: $80
    sub a                                         ; $5B34: $97
    sub d                                         ; $5B35: $92
    sub l                                         ; $5B36: $95
    add b                                         ; $5B37: $80
    sbc c                                         ; $5B38: $99
    sub l                                         ; $5B39: $95
    sbc h                                         ; $5B3A: $9C
    add b                                         ; $5B3B: $80
    sub a                                         ; $5B3C: $97
    sub l                                         ; $5B3D: $95
    sbc d                                         ; $5B3E: $9A
    add b                                         ; $5B3F: $80
    sbc c                                         ; $5B40: $99
    sub d                                         ; $5B41: $92
    sub l                                         ; $5B42: $95
    rst RST_20                                    ; $5B43: $E7
    nop                                           ; $5B44: $00
    ld [bc], a                                    ; $5B45: $02
    inc sp                                        ; $5B46: $33
    ld e, e                                       ; $5B47: $5B
    db $ED                                        ; $5B48: $ED
    add b                                         ; $5B49: $80
    sub d                                         ; $5B4A: $92
    adc l                                         ; $5B4B: $8D
    sub b                                         ; $5B4C: $90
    add b                                         ; $5B4D: $80
    sub h                                         ; $5B4E: $94
    sub b                                         ; $5B4F: $90
    sub a                                         ; $5B50: $97
    add b                                         ; $5B51: $80
    sub d                                         ; $5B52: $92
    sub b                                         ; $5B53: $90
    sub l                                         ; $5B54: $95
    add b                                         ; $5B55: $80
    sub h                                         ; $5B56: $94
    adc l                                         ; $5B57: $8D
    sub b                                         ; $5B58: $90
    rst RST_20                                    ; $5B59: $E7
    nop                                           ; $5B5A: $00
    ld [bc], a                                    ; $5B5B: $02
    ld c, c                                       ; $5B5C: $49
    ld e, e                                       ; $5B5D: $5B
    db $ED                                        ; $5B5E: $ED
    add b                                         ; $5B5F: $80
    sub h                                         ; $5B60: $94
    sub b                                         ; $5B61: $90
    sub a                                         ; $5B62: $97
    add b                                         ; $5B63: $80
    sbc c                                         ; $5B64: $99
    sub b                                         ; $5B65: $90
    sub a                                         ; $5B66: $97
    add b                                         ; $5B67: $80
    sub h                                         ; $5B68: $94
    sub d                                         ; $5B69: $92
    sbc c                                         ; $5B6A: $99
    add b                                         ; $5B6B: $80
    sub a                                         ; $5B6C: $97
    sub b                                         ; $5B6D: $90
    sub a                                         ; $5B6E: $97
    add b                                         ; $5B6F: $80
    sub d                                         ; $5B70: $92
    adc a                                         ; $5B71: $8F
    sub d                                         ; $5B72: $92
    add b                                         ; $5B73: $80
    sub a                                         ; $5B74: $97
    adc a                                         ; $5B75: $8F
    sub d                                         ; $5B76: $92
    sub b                                         ; $5B77: $90
    sub d                                         ; $5B78: $92
    sub e                                         ; $5B79: $93
    sub h                                         ; $5B7A: $94
    adc l                                         ; $5B7B: $8D
    add b                                         ; $5B7C: $80
    sub h                                         ; $5B7D: $94
    add b                                         ; $5B7E: $80
    db $ED                                        ; $5B7F: $ED
    sub l                                         ; $5B80: $95
    adc l                                         ; $5B81: $8D
    sub d                                         ; $5B82: $92
    adc l                                         ; $5B83: $8D
    sub h                                         ; $5B84: $94
    add b                                         ; $5B85: $80
    sub l                                         ; $5B86: $95
    adc l                                         ; $5B87: $8D
    sub d                                         ; $5B88: $92
    adc l                                         ; $5B89: $8D
    sub h                                         ; $5B8A: $94
    add b                                         ; $5B8B: $80
    sub l                                         ; $5B8C: $95
    adc l                                         ; $5B8D: $8D
    sub d                                         ; $5B8E: $92
    adc l                                         ; $5B8F: $8D
    sub h                                         ; $5B90: $94
    adc e                                         ; $5B91: $8B
    sub b                                         ; $5B92: $90
    adc e                                         ; $5B93: $8B
    sub d                                         ; $5B94: $92
    add b                                         ; $5B95: $80
    sub h                                         ; $5B96: $94
    adc e                                         ; $5B97: $8B
    sub b                                         ; $5B98: $90
    adc e                                         ; $5B99: $8B
    sub d                                         ; $5B9A: $92
    add b                                         ; $5B9B: $80
    sub h                                         ; $5B9C: $94
    adc e                                         ; $5B9D: $8B
    sub b                                         ; $5B9E: $90
    adc e                                         ; $5B9F: $8B
    sub d                                         ; $5BA0: $92
    adc c                                         ; $5BA1: $89
    adc [hl]                                      ; $5BA2: $8E
    adc c                                         ; $5BA3: $89
    sub b                                         ; $5BA4: $90
    add b                                         ; $5BA5: $80
    sub d                                         ; $5BA6: $92
    adc c                                         ; $5BA7: $89
    adc [hl]                                      ; $5BA8: $8E
    adc c                                         ; $5BA9: $89
    sub b                                         ; $5BAA: $90
    add b                                         ; $5BAB: $80
    sub d                                         ; $5BAC: $92
    adc c                                         ; $5BAD: $89
    adc [hl]                                      ; $5BAE: $8E
    adc c                                         ; $5BAF: $89
    sub h                                         ; $5BB0: $94
    adc e                                         ; $5BB1: $8B
    sub b                                         ; $5BB2: $90
    adc e                                         ; $5BB3: $8B
    sub d                                         ; $5BB4: $92
    add b                                         ; $5BB5: $80
    sub h                                         ; $5BB6: $94
    adc e                                         ; $5BB7: $8B
    sub b                                         ; $5BB8: $90
    adc e                                         ; $5BB9: $8B
    sub d                                         ; $5BBA: $92
    add b                                         ; $5BBB: $80
    sub h                                         ; $5BBC: $94
    adc e                                         ; $5BBD: $8B
    sub b                                         ; $5BBE: $90
    adc e                                         ; $5BBF: $8B
    rst RST_20                                    ; $5BC0: $E7
    nop                                           ; $5BC1: $00
    ld [bc], a                                    ; $5BC2: $02
    add b                                         ; $5BC3: $80
    ld e, e                                       ; $5BC4: $5B
    db $ED                                        ; $5BC5: $ED
    sbc c                                         ; $5BC6: $99
    adc l                                         ; $5BC7: $8D
    sub d                                         ; $5BC8: $92
    adc e                                         ; $5BC9: $8B
    adc l                                         ; $5BCA: $8D
    sub d                                         ; $5BCB: $92
    sbc c                                         ; $5BCC: $99
    adc l                                         ; $5BCD: $8D
    sub d                                         ; $5BCE: $92
    sbc e                                         ; $5BCF: $9B
    adc l                                         ; $5BD0: $8D
    sub d                                         ; $5BD1: $92
    sbc h                                         ; $5BD2: $9C
    sub d                                         ; $5BD3: $92
    sbc e                                         ; $5BD4: $9B
    sub d                                         ; $5BD5: $92
    sbc c                                         ; $5BD6: $99
    sub d                                         ; $5BD7: $92
    sbc c                                         ; $5BD8: $99
    sub a                                         ; $5BD9: $97
    sub b                                         ; $5BDA: $90
    sub a                                         ; $5BDB: $97
    sub h                                         ; $5BDC: $94
    sbc c                                         ; $5BDD: $99
    sub h                                         ; $5BDE: $94
    sub b                                         ; $5BDF: $90
    adc e                                         ; $5BE0: $8B
    sub b                                         ; $5BE1: $90
    sub d                                         ; $5BE2: $92
    adc l                                         ; $5BE3: $8D
    adc e                                         ; $5BE4: $8B
    adc l                                         ; $5BE5: $8D
    db $ED                                        ; $5BE6: $ED
    db $E4                                        ; $5BE7: $E4
    ld b, b                                       ; $5BE8: $40
    jp hl                                         ; $5BE9: $E9


    ld b, h                                       ; $5BEA: $44
    di                                            ; $5BEB: $F3
    dec b                                         ; $5BEC: $05
    push af                                       ; $5BED: $F5
    ld [hl-], a                                   ; $5BEE: $32
    db $EC                                        ; $5BEF: $EC
    and h                                         ; $5BF0: $A4
    ld e, h                                       ; $5BF1: $5C
    db $E4                                        ; $5BF2: $E4
    ld b, b                                       ; $5BF3: $40
    di                                            ; $5BF4: $F3
    dec b                                         ; $5BF5: $05
    push af                                       ; $5BF6: $F5
    ld [hl-], a                                   ; $5BF7: $32
    db $EC                                        ; $5BF8: $EC
    or e                                          ; $5BF9: $B3
    ld e, h                                       ; $5BFA: $5C
    db $E4                                        ; $5BFB: $E4
    ld b, b                                       ; $5BFC: $40
    di                                            ; $5BFD: $F3
    inc bc                                        ; $5BFE: $03
    push af                                       ; $5BFF: $F5
    nop                                           ; $5C00: $00
    db $EC                                        ; $5C01: $EC
    jp nc, $E45C                                  ; $5C02: $D2 $5C $E4

    ld b, b                                       ; $5C05: $40
    and e                                         ; $5C06: $A3
    db $E4                                        ; $5C07: $E4
    ld h, b                                       ; $5C08: $60
    and e                                         ; $5C09: $A3
    rlca                                          ; $5C0A: $07
    db $E4                                        ; $5C0B: $E4
    ld b, b                                       ; $5C0C: $40
    sbc h                                         ; $5C0D: $9C
    add b                                         ; $5C0E: $80
    ld c, $A3                                     ; $5C0F: $0E $A3
    ld c, $E4                                     ; $5C11: $0E $E4
    ld h, b                                       ; $5C13: $60
    and e                                         ; $5C14: $A3
    db $E4                                        ; $5C15: $E4
    ld b, b                                       ; $5C16: $40
    and c                                         ; $5C17: $A1
    rlca                                          ; $5C18: $07
    and b                                         ; $5C19: $A0
    add b                                         ; $5C1A: $80
    sbc h                                         ; $5C1B: $9C
    ld c, $80                                     ; $5C1C: $0E $80
    rlca                                          ; $5C1E: $07
    db $EC                                        ; $5C1F: $EC
    jp nc, $E45C                                  ; $5C20: $D2 $5C $E4

    ld b, b                                       ; $5C23: $40
    and e                                         ; $5C24: $A3
    db $E4                                        ; $5C25: $E4
    ld h, b                                       ; $5C26: $60
    and e                                         ; $5C27: $A3
    rlca                                          ; $5C28: $07
    db $E4                                        ; $5C29: $E4

jr_02E_5C2A:
    ld b, b                                       ; $5C2A: $40
    sbc h                                         ; $5C2B: $9C
    add b                                         ; $5C2C: $80
    ld c, $A8                                     ; $5C2D: $0E $A8
    inc e                                         ; $5C2F: $1C
    db $E4                                        ; $5C30: $E4
    ld h, b                                       ; $5C31: $60
    xor b                                         ; $5C32: $A8
    add b                                         ; $5C33: $80
    ld c, $EC                                     ; $5C34: $0E $EC
    ld [hl+], a                                   ; $5C36: $22
    ld e, l                                       ; $5C37: $5D
    db $E4                                        ; $5C38: $E4
    ld h, b                                       ; $5C39: $60
    and e                                         ; $5C3A: $A3
    ld c, $E4                                     ; $5C3B: $0E $E4
    ld b, b                                       ; $5C3D: $40
    and c                                         ; $5C3E: $A1
    rlca                                          ; $5C3F: $07
    and b                                         ; $5C40: $A0
    sbc [hl]                                      ; $5C41: $9E
    pop af                                        ; $5C42: $F1
    sbc h                                         ; $5C43: $9C
    jr c, jr_02E_5C2A                             ; $5C44: $38 $E4

    ld h, b                                       ; $5C46: $60
    sbc h                                         ; $5C47: $9C
    inc e                                         ; $5C48: $1C
    db $E4                                        ; $5C49: $E4
    ld b, b                                       ; $5C4A: $40
    add b                                         ; $5C4B: $80
    rlca                                          ; $5C4C: $07
    and h                                         ; $5C4D: $A4
    and l                                         ; $5C4E: $A5
    and [hl]                                      ; $5C4F: $A6
    xor b                                         ; $5C50: $A8
    add b                                         ; $5C51: $80
    xor d                                         ; $5C52: $AA
    xor b                                         ; $5C53: $A8
    add b                                         ; $5C54: $80
    and [hl]                                      ; $5C55: $A6
    add b                                         ; $5C56: $80
    add b                                         ; $5C57: $80
    db $EC                                        ; $5C58: $EC
    ld [hl+], a                                   ; $5C59: $22
    ld e, l                                       ; $5C5A: $5D
    sbc h                                         ; $5C5B: $9C
    ld c, $E4                                     ; $5C5C: $0E $E4
    ld h, b                                       ; $5C5E: $60
    sbc h                                         ; $5C5F: $9C
    rlca                                          ; $5C60: $07
    db $E4                                        ; $5C61: $E4
    ld b, b                                       ; $5C62: $40
    and e                                         ; $5C63: $A3
    inc e                                         ; $5C64: $1C
    db $E4                                        ; $5C65: $E4
    ld h, b                                       ; $5C66: $60
    and e                                         ; $5C67: $A3
    ld c, $E4                                     ; $5C68: $0E $E4
    ld b, b                                       ; $5C6A: $40
    add b                                         ; $5C6B: $80
    rlca                                          ; $5C6C: $07
    and b                                         ; $5C6D: $A0
    and c                                         ; $5C6E: $A1
    and d                                         ; $5C6F: $A2
    and l                                         ; $5C70: $A5
    and l                                         ; $5C71: $A5
    and e                                         ; $5C72: $A3
    and l                                         ; $5C73: $A5
    add b                                         ; $5C74: $80
    and e                                         ; $5C75: $A3
    add b                                         ; $5C76: $80
    xor b                                         ; $5C77: $A8
    add b                                         ; $5C78: $80
    and e                                         ; $5C79: $A3
    and h                                         ; $5C7A: $A4
    and l                                         ; $5C7B: $A5
    add b                                         ; $5C7C: $80
    inc e                                         ; $5C7D: $1C
    db $EC                                        ; $5C7E: $EC
    dec sp                                        ; $5C7F: $3B
    ld e, l                                       ; $5C80: $5D
    db $E4                                        ; $5C81: $E4
    ld h, b                                       ; $5C82: $60
    xor b                                         ; $5C83: $A8
    db $EC                                        ; $5C84: $EC
    dec sp                                        ; $5C85: $3B
    ld e, l                                       ; $5C86: $5D
    and l                                         ; $5C87: $A5
    pop af                                        ; $5C88: $F1
    xor d                                         ; $5C89: $AA
    db $E4                                        ; $5C8A: $E4
    ld h, b                                       ; $5C8B: $60
    xor d                                         ; $5C8C: $AA
    db $E4                                        ; $5C8D: $E4
    ld b, b                                       ; $5C8E: $40
    sbc [hl]                                      ; $5C8F: $9E
    rlca                                          ; $5C90: $07
    add b                                         ; $5C91: $80
    ld c, $9B                                     ; $5C92: $0E $9B
    rlca                                          ; $5C94: $07
    add b                                         ; $5C95: $80
    ld c, $97                                     ; $5C96: $0E $97
    rlca                                          ; $5C98: $07
    add b                                         ; $5C99: $80
    ld c, $94                                     ; $5C9A: $0E $94
    rlca                                          ; $5C9C: $07
    add b                                         ; $5C9D: $80
    ld c, $90                                     ; $5C9E: $0E $90
    add b                                         ; $5CA0: $80
    push hl                                       ; $5CA1: $E5
    ldh a, [c]                                    ; $5CA2: $F2
    ld e, e                                       ; $5CA3: $5B
    add b                                         ; $5CA4: $80
    rlca                                          ; $5CA5: $07
    add b                                         ; $5CA6: $80
    and c                                         ; $5CA7: $A1
    sbc [hl]                                      ; $5CA8: $9E
    and e                                         ; $5CA9: $A3
    sbc [hl]                                      ; $5CAA: $9E
    and l                                         ; $5CAB: $A5
    sbc [hl]                                      ; $5CAC: $9E
    rst RST_20                                    ; $5CAD: $E7
    nop                                           ; $5CAE: $00
    ld b, $A4                                     ; $5CAF: $06 $A4
    ld e, h                                       ; $5CB1: $5C
    db $ED                                        ; $5CB2: $ED
    add b                                         ; $5CB3: $80
    rlca                                          ; $5CB4: $07
    add b                                         ; $5CB5: $80
    sub l                                         ; $5CB6: $95
    sub d                                         ; $5CB7: $92
    sub a                                         ; $5CB8: $97
    sub d                                         ; $5CB9: $92
    sbc c                                         ; $5CBA: $99
    sub d                                         ; $5CBB: $92
    rst RST_20                                    ; $5CBC: $E7
    nop                                           ; $5CBD: $00
    ld [bc], a                                    ; $5CBE: $02
    or e                                          ; $5CBF: $B3
    ld e, h                                       ; $5CC0: $5C
    sub d                                         ; $5CC1: $92
    sub d                                         ; $5CC2: $92
    sbc h                                         ; $5CC3: $9C
    sub d                                         ; $5CC4: $92
    sbc e                                         ; $5CC5: $9B
    sub d                                         ; $5CC6: $92
    sub a                                         ; $5CC7: $97
    sub d                                         ; $5CC8: $92
    sbc c                                         ; $5CC9: $99
    sub d                                         ; $5CCA: $92
    sub l                                         ; $5CCB: $95
    sub d                                         ; $5CCC: $92
    sub h                                         ; $5CCD: $94
    sub b                                         ; $5CCE: $90
    sub d                                         ; $5CCF: $92
    sub a                                         ; $5CD0: $97
    db $ED                                        ; $5CD1: $ED
    db $E4                                        ; $5CD2: $E4
    ld b, b                                       ; $5CD3: $40
    sbc [hl]                                      ; $5CD4: $9E
    ld c, $E4                                     ; $5CD5: $0E $E4
    ld h, b                                       ; $5CD7: $60
    sbc [hl]                                      ; $5CD8: $9E
    rlca                                          ; $5CD9: $07
    db $E4                                        ; $5CDA: $E4
    ld b, b                                       ; $5CDB: $40
    sbc h                                         ; $5CDC: $9C
    add b                                         ; $5CDD: $80
    ld c, $E4                                     ; $5CDE: $0E $E4
    ld b, b                                       ; $5CE0: $40
    and c                                         ; $5CE1: $A1
    db $E4                                        ; $5CE2: $E4
    ld h, b                                       ; $5CE3: $60
    and c                                         ; $5CE4: $A1
    rlca                                          ; $5CE5: $07
    db $E4                                        ; $5CE6: $E4
    ld b, b                                       ; $5CE7: $40
    and b                                         ; $5CE8: $A0
    add b                                         ; $5CE9: $80
    ld c, $99                                     ; $5CEA: $0E $99
    rlca                                          ; $5CEC: $07
    db $E4                                        ; $5CED: $E4
    ld h, b                                       ; $5CEE: $60
    sbc c                                         ; $5CEF: $99
    db $E4                                        ; $5CF0: $E4
    ld b, b                                       ; $5CF1: $40
    sbc h                                         ; $5CF2: $9C
    db $E4                                        ; $5CF3: $E4
    ld h, b                                       ; $5CF4: $60
    sbc h                                         ; $5CF5: $9C
    db $E4                                        ; $5CF6: $E4
    ld b, b                                       ; $5CF7: $40
    sbc [hl]                                      ; $5CF8: $9E
    ld c, $E4                                     ; $5CF9: $0E $E4
    ld h, b                                       ; $5CFB: $60
    sbc [hl]                                      ; $5CFC: $9E
    rlca                                          ; $5CFD: $07
    db $E4                                        ; $5CFE: $E4
    ld b, b                                       ; $5CFF: $40
    and b                                         ; $5D00: $A0
    add b                                         ; $5D01: $80
    ld c, $9C                                     ; $5D02: $0E $9C
    inc e                                         ; $5D04: $1C
    db $E4                                        ; $5D05: $E4
    ld h, b                                       ; $5D06: $60
    sbc h                                         ; $5D07: $9C
    add b                                         ; $5D08: $80
    ld c, $E4                                     ; $5D09: $0E $E4
    ld b, b                                       ; $5D0B: $40
    and e                                         ; $5D0C: $A3
    inc bc                                        ; $5D0D: $03
    and h                                         ; $5D0E: $A4
    inc b                                         ; $5D0F: $04
    and l                                         ; $5D10: $A5
    rlca                                          ; $5D11: $07
    db $E4                                        ; $5D12: $E4
    ld h, b                                       ; $5D13: $60
    and l                                         ; $5D14: $A5
    db $E4                                        ; $5D15: $E4
    ld b, b                                       ; $5D16: $40
    sbc [hl]                                      ; $5D17: $9E
    add b                                         ; $5D18: $80
    ld c, $A5                                     ; $5D19: $0E $A5
    inc e                                         ; $5D1B: $1C
    db $E4                                        ; $5D1C: $E4
    ld h, b                                       ; $5D1D: $60
    and l                                         ; $5D1E: $A5
    add b                                         ; $5D1F: $80
    ld c, $ED                                     ; $5D20: $0E $ED
    db $E4                                        ; $5D22: $E4
    ld b, b                                       ; $5D23: $40
    and l                                         ; $5D24: $A5
    rlca                                          ; $5D25: $07
    and [hl]                                      ; $5D26: $A6
    add b                                         ; $5D27: $80
    and l                                         ; $5D28: $A5
    add b                                         ; $5D29: $80
    sbc [hl]                                      ; $5D2A: $9E
    add b                                         ; $5D2B: $80
    pop af                                        ; $5D2C: $F1
    and c                                         ; $5D2D: $A1
    ld [hl], b                                    ; $5D2E: $70
    add b                                         ; $5D2F: $80
    rlca                                          ; $5D30: $07
    and l                                         ; $5D31: $A5
    and [hl]                                      ; $5D32: $A6
    add b                                         ; $5D33: $80
    and l                                         ; $5D34: $A5
    add b                                         ; $5D35: $80
    sbc [hl]                                      ; $5D36: $9E
    add b                                         ; $5D37: $80
    and e                                         ; $5D38: $A3
    inc e                                         ; $5D39: $1C
    db $ED                                        ; $5D3A: $ED
    db $E4                                        ; $5D3B: $E4
    ld b, b                                       ; $5D3C: $40
    and l                                         ; $5D3D: $A5
    inc e                                         ; $5D3E: $1C
    db $E4                                        ; $5D3F: $E4
    ld h, b                                       ; $5D40: $60
    and l                                         ; $5D41: $A5
    db $E4                                        ; $5D42: $E4
    ld b, b                                       ; $5D43: $40
    add b                                         ; $5D44: $80
    ld c, $9E                                     ; $5D45: $0E $9E
    rlca                                          ; $5D47: $07
    add b                                         ; $5D48: $80
    and c                                         ; $5D49: $A1
    and l                                         ; $5D4A: $A5
    dec d                                         ; $5D4B: $15
    db $E4                                        ; $5D4C: $E4
    ld b, b                                       ; $5D4D: $40
    and e                                         ; $5D4E: $A3
    inc e                                         ; $5D4F: $1C
    db $E4                                        ; $5D50: $E4
    ld h, b                                       ; $5D51: $60
    and e                                         ; $5D52: $A3
    ld c, $E4                                     ; $5D53: $0E $E4
    ld b, b                                       ; $5D55: $40
    sbc [hl]                                      ; $5D56: $9E
    db $E4                                        ; $5D57: $E4
    ld h, b                                       ; $5D58: $60
    sbc [hl]                                      ; $5D59: $9E
    rlca                                          ; $5D5A: $07
    db $E4                                        ; $5D5B: $E4
    ld b, b                                       ; $5D5C: $40
    add b                                         ; $5D5D: $80
    and c                                         ; $5D5E: $A1
    add b                                         ; $5D5F: $80
    and b                                         ; $5D60: $A0
    sbc h                                         ; $5D61: $9C
    dec d                                         ; $5D62: $15
    db $E4                                        ; $5D63: $E4

jr_02E_5D64:
    ld b, b                                       ; $5D64: $40
    sbc [hl]                                      ; $5D65: $9E
    inc e                                         ; $5D66: $1C
    db $E4                                        ; $5D67: $E4
    ld h, b                                       ; $5D68: $60
    sbc [hl]                                      ; $5D69: $9E
    db $E4                                        ; $5D6A: $E4
    ld b, b                                       ; $5D6B: $40
    add b                                         ; $5D6C: $80
    ld c, $A1                                     ; $5D6D: $0E $A1
    dec d                                         ; $5D6F: $15
    and l                                         ; $5D70: $A5
    db $E4                                        ; $5D71: $E4
    ld b, b                                       ; $5D72: $40
    pop af                                        ; $5D73: $F1
    xor b                                         ; $5D74: $A8
    jr c, jr_02E_5D64                             ; $5D75: $38 $ED

    jp hl                                         ; $5D77: $E9


    adc b                                         ; $5D78: $88
    db $EC                                        ; $5D79: $EC
    sub h                                         ; $5D7A: $94
    ld e, l                                       ; $5D7B: $5D
    db $EC                                        ; $5D7C: $EC
    or [hl]                                       ; $5D7D: $B6
    ld e, l                                       ; $5D7E: $5D
    db $EC                                        ; $5D7F: $EC
    ld hl, sp+$5D                                 ; $5D80: $F8 $5D
    db $EC                                        ; $5D82: $EC
    ld hl, sp+$5D                                 ; $5D83: $F8 $5D
    db $EC                                        ; $5D85: $EC
    ld h, [hl]                                    ; $5D86: $66
    ld e, [hl]                                    ; $5D87: $5E
    db $EC                                        ; $5D88: $EC
    ld h, [hl]                                    ; $5D89: $66
    ld e, [hl]                                    ; $5D8A: $5E
    db $EC                                        ; $5D8B: $EC
    ret nc                                        ; $5D8C: $D0

    ld e, [hl]                                    ; $5D8D: $5E
    db $EC                                        ; $5D8E: $EC
    ld bc, $E55F                                  ; $5D8F: $01 $5F $E5
    ld a, h                                       ; $5D92: $7C
    ld e, l                                       ; $5D93: $5D
    db $E4                                        ; $5D94: $E4
    ld b, c                                       ; $5D95: $41
    ld hl, $E407                                  ; $5D96: $21 $07 $E4
    ld b, c                                       ; $5D99: $41
    ld hl, $E407                                  ; $5D9A: $21 $07 $E4
    ld d, e                                       ; $5D9D: $53
    ld de, $E70E                                  ; $5D9E: $11 $0E $E7
    nop                                           ; $5DA1: $00
    dec bc                                        ; $5DA2: $0B
    sub h                                         ; $5DA3: $94
    ld e, l                                       ; $5DA4: $5D
    db $E4                                        ; $5DA5: $E4
    inc [hl]                                      ; $5DA6: $34
    ld h, $07                                     ; $5DA7: $26 $07
    db $E4                                        ; $5DA9: $E4
    ld [hl], d                                    ; $5DAA: $72
    ld [hl-], a                                   ; $5DAB: $32
    rlca                                          ; $5DAC: $07
    db $E4                                        ; $5DAD: $E4
    ld [hl], d                                    ; $5DAE: $72
    ld [hl-], a                                   ; $5DAF: $32
    rlca                                          ; $5DB0: $07
    db $E4                                        ; $5DB1: $E4
    ld [hl], d                                    ; $5DB2: $72
    db $10                                        ; $5DB3: $10
    rlca                                          ; $5DB4: $07
    db $ED                                        ; $5DB5: $ED
    db $E4                                        ; $5DB6: $E4
    ld [hl], c                                    ; $5DB7: $71
    ld [hl], $0E                                  ; $5DB8: $36 $0E
    db $E4                                        ; $5DBA: $E4
    ld b, c                                       ; $5DBB: $41
    ld hl, $E407                                  ; $5DBC: $21 $07 $E4
    ld [hl], c                                    ; $5DBF: $71
    ld [hl], $07                                  ; $5DC0: $36 $07
    db $E4                                        ; $5DC2: $E4
    ld h, d                                       ; $5DC3: $62
    inc h                                         ; $5DC4: $24
    rlca                                          ; $5DC5: $07
    db $E4                                        ; $5DC6: $E4
    ld b, c                                       ; $5DC7: $41
    ld hl, $E407                                  ; $5DC8: $21 $07 $E4
    ld [hl], c                                    ; $5DCB: $71
    ld [hl], $07                                  ; $5DCC: $36 $07
    db $E4                                        ; $5DCE: $E4
    ld h, d                                       ; $5DCF: $62
    inc h                                         ; $5DD0: $24
    rlca                                          ; $5DD1: $07
    db $E4                                        ; $5DD2: $E4
    ld b, c                                       ; $5DD3: $41
    ld hl, $E407                                  ; $5DD4: $21 $07 $E4
    ld [hl], c                                    ; $5DD7: $71
    ld [hl], $07                                  ; $5DD8: $36 $07
    db $E4                                        ; $5DDA: $E4
    ld [hl], c                                    ; $5DDB: $71
    ld [hl], $07                                  ; $5DDC: $36 $07
    db $E4                                        ; $5DDE: $E4
    ld b, c                                       ; $5DDF: $41
    ld hl, $E407                                  ; $5DE0: $21 $07 $E4
    ld h, d                                       ; $5DE3: $62
    inc h                                         ; $5DE4: $24
    rlca                                          ; $5DE5: $07
    db $E4                                        ; $5DE6: $E4
    ld b, c                                       ; $5DE7: $41
    ld hl, $E407                                  ; $5DE8: $21 $07 $E4
    ld [hl], c                                    ; $5DEB: $71
    ld [hl], $07                                  ; $5DEC: $36 $07
    db $E4                                        ; $5DEE: $E4
    ld b, c                                       ; $5DEF: $41
    ld hl, $E707                                  ; $5DF0: $21 $07 $E7
    nop                                           ; $5DF3: $00
    ld [bc], a                                    ; $5DF4: $02
    or [hl]                                       ; $5DF5: $B6
    ld e, l                                       ; $5DF6: $5D
    db $ED                                        ; $5DF7: $ED
    db $E4                                        ; $5DF8: $E4
    ld [hl], c                                    ; $5DF9: $71
    ld [hl], $0E                                  ; $5DFA: $36 $0E
    db $E4                                        ; $5DFC: $E4
    ld b, c                                       ; $5DFD: $41
    ld hl, $E407                                  ; $5DFE: $21 $07 $E4
    ld [hl], c                                    ; $5E01: $71
    ld [hl], $07                                  ; $5E02: $36 $07
    db $E4                                        ; $5E04: $E4
    ld h, d                                       ; $5E05: $62
    inc h                                         ; $5E06: $24
    rlca                                          ; $5E07: $07
    db $E4                                        ; $5E08: $E4
    ld b, c                                       ; $5E09: $41
    ld hl, $E407                                  ; $5E0A: $21 $07 $E4
    ld [hl], c                                    ; $5E0D: $71
    ld [hl], $07                                  ; $5E0E: $36 $07
    db $E4                                        ; $5E10: $E4
    ld h, d                                       ; $5E11: $62
    inc h                                         ; $5E12: $24
    rlca                                          ; $5E13: $07
    db $E4                                        ; $5E14: $E4
    ld b, c                                       ; $5E15: $41
    ld hl, $E407                                  ; $5E16: $21 $07 $E4
    ld [hl], c                                    ; $5E19: $71
    ld [hl], $07                                  ; $5E1A: $36 $07
    db $E4                                        ; $5E1C: $E4
    ld [hl], c                                    ; $5E1D: $71
    ld [hl], $07                                  ; $5E1E: $36 $07
    db $E4                                        ; $5E20: $E4
    ld b, c                                       ; $5E21: $41
    ld hl, $E407                                  ; $5E22: $21 $07 $E4
    ld h, d                                       ; $5E25: $62
    inc h                                         ; $5E26: $24
    rlca                                          ; $5E27: $07
    db $E4                                        ; $5E28: $E4
    ld b, c                                       ; $5E29: $41
    ld hl, $E407                                  ; $5E2A: $21 $07 $E4
    ld [hl], c                                    ; $5E2D: $71
    ld [hl], $07                                  ; $5E2E: $36 $07
    db $E4                                        ; $5E30: $E4
    ld b, c                                       ; $5E31: $41
    ld hl, $E707                                  ; $5E32: $21 $07 $E7
    nop                                           ; $5E35: $00
    rlca                                          ; $5E36: $07
    ld hl, sp+$5D                                 ; $5E37: $F8 $5D
    db $E4                                        ; $5E39: $E4
    ld [hl], c                                    ; $5E3A: $71
    ld [hl], $0E                                  ; $5E3B: $36 $0E
    db $E4                                        ; $5E3D: $E4
    ld b, c                                       ; $5E3E: $41
    ld hl, $E407                                  ; $5E3F: $21 $07 $E4
    ld [hl], c                                    ; $5E42: $71
    ld [hl], $07                                  ; $5E43: $36 $07
    db $E4                                        ; $5E45: $E4
    ld h, d                                       ; $5E46: $62
    inc h                                         ; $5E47: $24
    ld c, $E4                                     ; $5E48: $0E $E4
    ld [hl], c                                    ; $5E4A: $71
    ld [hl], $0E                                  ; $5E4B: $36 $0E
    db $E4                                        ; $5E4D: $E4
    ld b, c                                       ; $5E4E: $41
    ld hl, $E40E                                  ; $5E4F: $21 $0E $E4
    ld [hl], c                                    ; $5E52: $71
    ld [hl], $0E                                  ; $5E53: $36 $0E
    db $E4                                        ; $5E55: $E4
    ld h, d                                       ; $5E56: $62
    inc h                                         ; $5E57: $24
    rlca                                          ; $5E58: $07
    db $E4                                        ; $5E59: $E4
    ld h, d                                       ; $5E5A: $62
    inc h                                         ; $5E5B: $24
    rlca                                          ; $5E5C: $07
    db $E4                                        ; $5E5D: $E4
    ld h, d                                       ; $5E5E: $62
    inc h                                         ; $5E5F: $24
    rlca                                          ; $5E60: $07
    db $E4                                        ; $5E61: $E4
    ld h, d                                       ; $5E62: $62
    inc h                                         ; $5E63: $24
    rlca                                          ; $5E64: $07
    db $ED                                        ; $5E65: $ED
    db $E4                                        ; $5E66: $E4
    ld [hl], c                                    ; $5E67: $71
    ld [hl], $0E                                  ; $5E68: $36 $0E
    db $E4                                        ; $5E6A: $E4
    ld d, e                                       ; $5E6B: $53
    ld de, $E40E                                  ; $5E6C: $11 $0E $E4
    ld h, d                                       ; $5E6F: $62
    inc h                                         ; $5E70: $24
    ld c, $E4                                     ; $5E71: $0E $E4
    ld d, e                                       ; $5E73: $53
    ld de, $E407                                  ; $5E74: $11 $07 $E4
    ld [hl], c                                    ; $5E77: $71
    ld [hl], $07                                  ; $5E78: $36 $07
    db $E4                                        ; $5E7A: $E4
    ld [hl], c                                    ; $5E7B: $71
    ld [hl], $07                                  ; $5E7C: $36 $07
    db $E4                                        ; $5E7E: $E4
    ld [hl], c                                    ; $5E7F: $71
    ld [hl], $07                                  ; $5E80: $36 $07
    db $E4                                        ; $5E82: $E4
    ld d, e                                       ; $5E83: $53
    ld de, $E407                                  ; $5E84: $11 $07 $E4
    ld [hl], c                                    ; $5E87: $71
    ld [hl], $07                                  ; $5E88: $36 $07
    db $E4                                        ; $5E8A: $E4
    ld h, d                                       ; $5E8B: $62
    inc h                                         ; $5E8C: $24
    ld c, $E4                                     ; $5E8D: $0E $E4
    ld d, e                                       ; $5E8F: $53
    ld de, $E407                                  ; $5E90: $11 $07 $E4
    ld h, d                                       ; $5E93: $62
    inc h                                         ; $5E94: $24
    rlca                                          ; $5E95: $07
    rst RST_20                                    ; $5E96: $E7
    nop                                           ; $5E97: $00
    inc bc                                        ; $5E98: $03
    ld h, [hl]                                    ; $5E99: $66
    ld e, [hl]                                    ; $5E9A: $5E
    db $E4                                        ; $5E9B: $E4
    ld [hl], c                                    ; $5E9C: $71
    ld [hl], $0E                                  ; $5E9D: $36 $0E
    db $E4                                        ; $5E9F: $E4
    ld d, e                                       ; $5EA0: $53
    ld de, $E40E                                  ; $5EA1: $11 $0E $E4
    ld h, d                                       ; $5EA4: $62
    inc h                                         ; $5EA5: $24
    ld c, $E4                                     ; $5EA6: $0E $E4
    ld d, e                                       ; $5EA8: $53
    ld de, $E407                                  ; $5EA9: $11 $07 $E4
    ld [hl], c                                    ; $5EAC: $71
    ld [hl], $07                                  ; $5EAD: $36 $07
    db $E4                                        ; $5EAF: $E4
    ld [hl], c                                    ; $5EB0: $71
    ld [hl], $07                                  ; $5EB1: $36 $07
    db $E4                                        ; $5EB3: $E4
    ld [hl], c                                    ; $5EB4: $71
    ld [hl], $07                                  ; $5EB5: $36 $07

jr_02E_5EB7:
    db $E4                                        ; $5EB7: $E4
    ld d, e                                       ; $5EB8: $53
    ld de, $E407                                  ; $5EB9: $11 $07 $E4
    ld [hl], c                                    ; $5EBC: $71
    ld [hl], $07                                  ; $5EBD: $36 $07
    db $E4                                        ; $5EBF: $E4
    ld h, d                                       ; $5EC0: $62
    inc h                                         ; $5EC1: $24
    rlca                                          ; $5EC2: $07
    db $E4                                        ; $5EC3: $E4
    ld h, d                                       ; $5EC4: $62
    inc h                                         ; $5EC5: $24
    rlca                                          ; $5EC6: $07
    db $E4                                        ; $5EC7: $E4
    ld h, d                                       ; $5EC8: $62
    inc h                                         ; $5EC9: $24
    rlca                                          ; $5ECA: $07
    db $E4                                        ; $5ECB: $E4
    ld h, d                                       ; $5ECC: $62
    inc h                                         ; $5ECD: $24
    rlca                                          ; $5ECE: $07
    db $ED                                        ; $5ECF: $ED
    db $E4                                        ; $5ED0: $E4
    ld [hl], c                                    ; $5ED1: $71
    ld [hl], $0E                                  ; $5ED2: $36 $0E
    db $E4                                        ; $5ED4: $E4
    ld d, e                                       ; $5ED5: $53
    ld de, $E40E                                  ; $5ED6: $11 $0E $E4
    ld h, d                                       ; $5ED9: $62
    inc h                                         ; $5EDA: $24
    ld c, $E4                                     ; $5EDB: $0E $E4
    ld d, e                                       ; $5EDD: $53
    ld de, $E407                                  ; $5EDE: $11 $07 $E4
    ld [hl], c                                    ; $5EE1: $71
    ld [hl], $07                                  ; $5EE2: $36 $07
    db $E4                                        ; $5EE4: $E4
    ld [hl], c                                    ; $5EE5: $71
    ld [hl], $07                                  ; $5EE6: $36 $07
    db $E4                                        ; $5EE8: $E4
    ld [hl], c                                    ; $5EE9: $71
    ld [hl], $07                                  ; $5EEA: $36 $07
    db $E4                                        ; $5EEC: $E4
    ld d, e                                       ; $5EED: $53
    ld de, $E407                                  ; $5EEE: $11 $07 $E4
    ld [hl], c                                    ; $5EF1: $71
    ld [hl], $07                                  ; $5EF2: $36 $07
    db $E4                                        ; $5EF4: $E4
    ld h, d                                       ; $5EF5: $62
    inc h                                         ; $5EF6: $24
    ld c, $E4                                     ; $5EF7: $0E $E4
    ld d, e                                       ; $5EF9: $53
    ld de, $E407                                  ; $5EFA: $11 $07 $E4
    ld h, d                                       ; $5EFD: $62
    inc h                                         ; $5EFE: $24
    rlca                                          ; $5EFF: $07
    db $ED                                        ; $5F00: $ED
    db $E4                                        ; $5F01: $E4
    ld [hl], c                                    ; $5F02: $71
    ld [hl], $07                                  ; $5F03: $36 $07
    db $E4                                        ; $5F05: $E4
    ld h, d                                       ; $5F06: $62
    inc h                                         ; $5F07: $24
    rlca                                          ; $5F08: $07
    db $E4                                        ; $5F09: $E4
    ld h, d                                       ; $5F0A: $62
    inc h                                         ; $5F0B: $24
    rlca                                          ; $5F0C: $07
    rst RST_20                                    ; $5F0D: $E7
    nop                                           ; $5F0E: $00
    inc b                                         ; $5F0F: $04
    ld bc, $E45F                                  ; $5F10: $01 $5F $E4
    ld h, d                                       ; $5F13: $62
    inc h                                         ; $5F14: $24
    rlca                                          ; $5F15: $07
    db $E4                                        ; $5F16: $E4
    ld [hl], c                                    ; $5F17: $71
    ld [hl], $07                                  ; $5F18: $36 $07
    db $E4                                        ; $5F1A: $E4
    ld h, d                                       ; $5F1B: $62
    inc h                                         ; $5F1C: $24
    rlca                                          ; $5F1D: $07
    db $E4                                        ; $5F1E: $E4
    ld [hl], c                                    ; $5F1F: $71
    ld [hl], $07                                  ; $5F20: $36 $07
    db $ED                                        ; $5F22: $ED
    inc b                                         ; $5F23: $04
    add b                                         ; $5F24: $80
    inc de                                        ; $5F25: $13
    inc a                                         ; $5F26: $3C
    ld e, a                                       ; $5F27: $5F
    nop                                           ; $5F28: $00
    add c                                         ; $5F29: $81
    add b                                         ; $5F2A: $80
    jr jr_02E_5F66                                ; $5F2B: $18 $39

    ld h, b                                       ; $5F2D: $60
    inc c                                         ; $5F2E: $0C
    add c                                         ; $5F2F: $81
    add b                                         ; $5F30: $80
    dec e                                         ; $5F31: $1D
    sub d                                         ; $5F32: $92
    ld h, c                                       ; $5F33: $61
    jr jr_02E_5EB7                                ; $5F34: $18 $81

    add b                                         ; $5F36: $80
    ld [hl+], a                                   ; $5F37: $22
    sbc e                                         ; $5F38: $9B
    ld h, e                                       ; $5F39: $63
    nop                                           ; $5F3A: $00
    add c                                         ; $5F3B: $81
    db $E4                                        ; $5F3C: $E4
    ld [hl], a                                    ; $5F3D: $77
    jp hl                                         ; $5F3E: $E9


    ld de, $C0EE                                  ; $5F3F: $11 $EE $C0
    db $EC                                        ; $5F42: $EC
    xor b                                         ; $5F43: $A8
    ld e, a                                       ; $5F44: $5F
    db $EC                                        ; $5F45: $EC
    cp a                                          ; $5F46: $BF
    ld e, a                                       ; $5F47: $5F
    db $EC                                        ; $5F48: $EC
    push hl                                       ; $5F49: $E5
    ld e, a                                       ; $5F4A: $5F
    adc l                                         ; $5F4B: $8D
    add b                                         ; $5F4C: $80
    adc l                                         ; $5F4D: $8D
    add b                                         ; $5F4E: $80
    db $EC                                        ; $5F4F: $EC
    push hl                                       ; $5F50: $E5
    ld e, a                                       ; $5F51: $5F
    add c                                         ; $5F52: $81
    add e                                         ; $5F53: $83
    adc b                                         ; $5F54: $88
    adc c                                         ; $5F55: $89
    and $FB                                       ; $5F56: $E6 $FB
    db $EC                                        ; $5F58: $EC
    push hl                                       ; $5F59: $E5
    ld e, a                                       ; $5F5A: $5F
    and $05                                       ; $5F5B: $E6 $05
    adc b                                         ; $5F5D: $88
    add b                                         ; $5F5E: $80
    adc b                                         ; $5F5F: $88
    add b                                         ; $5F60: $80
    and $FB                                       ; $5F61: $E6 $FB
    db $EC                                        ; $5F63: $EC
    push hl                                       ; $5F64: $E5
    ld e, a                                       ; $5F65: $5F

jr_02E_5F66:
    and $05                                       ; $5F66: $E6 $05
    adc b                                         ; $5F68: $88
    add e                                         ; $5F69: $83
    add l                                         ; $5F6A: $85
    adc b                                         ; $5F6B: $88
    db $EC                                        ; $5F6C: $EC
    ldh a, [c]                                    ; $5F6D: $F2
    ld e, a                                       ; $5F6E: $5F
    and $02                                       ; $5F6F: $E6 $02
    db $EC                                        ; $5F71: $EC
    ldh a, [c]                                    ; $5F72: $F2
    ld e, a                                       ; $5F73: $5F
    and $FE                                       ; $5F74: $E6 $FE
    db $EC                                        ; $5F76: $EC
    ldh a, [c]                                    ; $5F77: $F2
    ld e, a                                       ; $5F78: $5F
    and $02                                       ; $5F79: $E6 $02
    db $EC                                        ; $5F7B: $EC
    ldh a, [c]                                    ; $5F7C: $F2
    ld e, a                                       ; $5F7D: $5F
    and $FE                                       ; $5F7E: $E6 $FE
    and $F7                                       ; $5F80: $E6 $F7
    db $EC                                        ; $5F82: $EC
    ldh a, [c]                                    ; $5F83: $F2
    ld e, a                                       ; $5F84: $5F
    and $02                                       ; $5F85: $E6 $02
    db $EC                                        ; $5F87: $EC
    ldh a, [c]                                    ; $5F88: $F2
    ld e, a                                       ; $5F89: $5F
    and $FE                                       ; $5F8A: $E6 $FE
    db $EC                                        ; $5F8C: $EC
    ldh a, [c]                                    ; $5F8D: $F2
    ld e, a                                       ; $5F8E: $5F
    and $09                                       ; $5F8F: $E6 $09
    sub c                                         ; $5F91: $91
    add l                                         ; $5F92: $85
    sub l                                         ; $5F93: $95
    ld c, $85                                     ; $5F94: $0E $85
    rlca                                          ; $5F96: $07
    sub l                                         ; $5F97: $95
    add e                                         ; $5F98: $83
    add h                                         ; $5F99: $84
    add l                                         ; $5F9A: $85
    sbc c                                         ; $5F9B: $99
    sbc b                                         ; $5F9C: $98
    sub [hl]                                      ; $5F9D: $96
    sbc b                                         ; $5F9E: $98
    sub [hl]                                      ; $5F9F: $96
    sub c                                         ; $5FA0: $91
    adc a                                         ; $5FA1: $8F
    db $EC                                        ; $5FA2: $EC
    inc bc                                        ; $5FA3: $03
    ld h, b                                       ; $5FA4: $60
    push hl                                       ; $5FA5: $E5
    inc a                                         ; $5FA6: $3C
    ld e, a                                       ; $5FA7: $5F
    adc d                                         ; $5FA8: $8A
    rlca                                          ; $5FA9: $07
    sub [hl]                                      ; $5FAA: $96
    adc d                                         ; $5FAB: $8A
    add b                                         ; $5FAC: $80
    adc b                                         ; $5FAD: $88
    add b                                         ; $5FAE: $80
    adc b                                         ; $5FAF: $88
    add a                                         ; $5FB0: $87
    add b                                         ; $5FB1: $80
    add a                                         ; $5FB2: $87
    add b                                         ; $5FB3: $80
    add a                                         ; $5FB4: $87
    adc b                                         ; $5FB5: $88
    add b                                         ; $5FB6: $80
    adc b                                         ; $5FB7: $88
    add b                                         ; $5FB8: $80
    rst RST_20                                    ; $5FB9: $E7
    nop                                           ; $5FBA: $00
    inc b                                         ; $5FBB: $04
    xor b                                         ; $5FBC: $A8
    ld e, a                                       ; $5FBD: $5F
    db $ED                                        ; $5FBE: $ED
    adc d                                         ; $5FBF: $8A
    add b                                         ; $5FC0: $80
    adc d                                         ; $5FC1: $8A
    add b                                         ; $5FC2: $80
    adc b                                         ; $5FC3: $88
    add b                                         ; $5FC4: $80
    adc b                                         ; $5FC5: $88
    add a                                         ; $5FC6: $87
    add b                                         ; $5FC7: $80
    add a                                         ; $5FC8: $87
    add b                                         ; $5FC9: $80
    add a                                         ; $5FCA: $87
    adc b                                         ; $5FCB: $88
    add b                                         ; $5FCC: $80
    adc b                                         ; $5FCD: $88
    add b                                         ; $5FCE: $80
    rst RST_20                                    ; $5FCF: $E7
    nop                                           ; $5FD0: $00
    inc bc                                        ; $5FD1: $03
    cp a                                          ; $5FD2: $BF
    ld e, a                                       ; $5FD3: $5F
    adc d                                         ; $5FD4: $8A
    add b                                         ; $5FD5: $80
    adc d                                         ; $5FD6: $8A
    add b                                         ; $5FD7: $80
    adc b                                         ; $5FD8: $88
    add b                                         ; $5FD9: $80
    adc b                                         ; $5FDA: $88
    add a                                         ; $5FDB: $87
    add b                                         ; $5FDC: $80
    add a                                         ; $5FDD: $87
    add b                                         ; $5FDE: $80
    add a                                         ; $5FDF: $87
    adc b                                         ; $5FE0: $88
    adc d                                         ; $5FE1: $8A
    adc l                                         ; $5FE2: $8D
    adc d                                         ; $5FE3: $8A
    db $ED                                        ; $5FE4: $ED
    adc a                                         ; $5FE5: $8F
    add b                                         ; $5FE6: $80
    adc a                                         ; $5FE7: $8F
    add b                                         ; $5FE8: $80
    adc l                                         ; $5FE9: $8D
    add b                                         ; $5FEA: $80
    adc l                                         ; $5FEB: $8D
    adc h                                         ; $5FEC: $8C
    add b                                         ; $5FED: $80
    adc h                                         ; $5FEE: $8C
    add b                                         ; $5FEF: $80
    adc h                                         ; $5FF0: $8C
    db $ED                                        ; $5FF1: $ED
    adc l                                         ; $5FF2: $8D
    add b                                         ; $5FF3: $80
    adc l                                         ; $5FF4: $8D
    add b                                         ; $5FF5: $80
    adc e                                         ; $5FF6: $8B
    add b                                         ; $5FF7: $80
    adc e                                         ; $5FF8: $8B
    adc d                                         ; $5FF9: $8A
    add b                                         ; $5FFA: $80
    adc d                                         ; $5FFB: $8A
    add b                                         ; $5FFC: $80
    adc d                                         ; $5FFD: $8A
    adc e                                         ; $5FFE: $8B
    add b                                         ; $5FFF: $80
    adc l                                         ; $6000: $8D
    add b                                         ; $6001: $80
    db $ED                                        ; $6002: $ED
    adc d                                         ; $6003: $8A
    add b                                         ; $6004: $80
    adc d                                         ; $6005: $8A
    add b                                         ; $6006: $80
    adc h                                         ; $6007: $8C
    add b                                         ; $6008: $80
    adc h                                         ; $6009: $8C
    adc l                                         ; $600A: $8D
    add b                                         ; $600B: $80
    adc l                                         ; $600C: $8D
    add b                                         ; $600D: $80
    adc l                                         ; $600E: $8D
    adc [hl]                                      ; $600F: $8E
    add b                                         ; $6010: $80
    adc [hl]                                      ; $6011: $8E
    add b                                         ; $6012: $80
    adc a                                         ; $6013: $8F
    add b                                         ; $6014: $80
    add e                                         ; $6015: $83
    add b                                         ; $6016: $80
    add l                                         ; $6017: $85
    add b                                         ; $6018: $80
    add l                                         ; $6019: $85
    add [hl]                                      ; $601A: $86
    add b                                         ; $601B: $80
    add [hl]                                      ; $601C: $86
    add b                                         ; $601D: $80
    add [hl]                                      ; $601E: $86
    add a                                         ; $601F: $87
    add b                                         ; $6020: $80
    add a                                         ; $6021: $87
    add b                                         ; $6022: $80
    rst RST_20                                    ; $6023: $E7
    nop                                           ; $6024: $00
    inc b                                         ; $6025: $04
    inc bc                                        ; $6026: $03
    ld h, b                                       ; $6027: $60
    add e                                         ; $6028: $83
    adc l                                         ; $6029: $8D
    adc a                                         ; $602A: $8F
    add e                                         ; $602B: $83
    sub e                                         ; $602C: $93
    sub h                                         ; $602D: $94
    add l                                         ; $602E: $85
    adc a                                         ; $602F: $8F
    sub c                                         ; $6030: $91
    add l                                         ; $6031: $85
    adc a                                         ; $6032: $8F
    add e                                         ; $6033: $83
    add l                                         ; $6034: $85
    adc b                                         ; $6035: $88
    adc c                                         ; $6036: $89
    adc d                                         ; $6037: $8A
    db $ED                                        ; $6038: $ED
    db $E4                                        ; $6039: $E4
    ld d, a                                       ; $603A: $57
    jp hl                                         ; $603B: $E9


    ld [hl+], a                                   ; $603C: $22
    xor $00                                       ; $603D: $EE $00
    db $EC                                        ; $603F: $EC
    sbc b                                         ; $6040: $98
    ld h, b                                       ; $6041: $60
    db $EC                                        ; $6042: $EC
    xor c                                         ; $6043: $A9
    ld h, b                                       ; $6044: $60
    db $EC                                        ; $6045: $EC
    ret nc                                        ; $6046: $D0

    ld h, b                                       ; $6047: $60
    db $EC                                        ; $6048: $EC
    ld h, $61                                     ; $6049: $26 $61
    and $02                                       ; $604B: $E6 $02
    db $EC                                        ; $604D: $EC
    ld h, $61                                     ; $604E: $26 $61
    and $FE                                       ; $6050: $E6 $FE
    db $EC                                        ; $6052: $EC
    ld h, $61                                     ; $6053: $26 $61
    and $02                                       ; $6055: $E6 $02
    db $EC                                        ; $6057: $EC
    ld h, $61                                     ; $6058: $26 $61
    and $FE                                       ; $605A: $E6 $FE
    db $EC                                        ; $605C: $EC
    scf                                           ; $605D: $37
    ld h, c                                       ; $605E: $61
    and $02                                       ; $605F: $E6 $02
    db $EC                                        ; $6061: $EC
    scf                                           ; $6062: $37
    ld h, c                                       ; $6063: $61
    and $FE                                       ; $6064: $E6 $FE
    db $EC                                        ; $6066: $EC
    scf                                           ; $6067: $37
    ld h, c                                       ; $6068: $61
    add b                                         ; $6069: $80
    adc h                                         ; $606A: $8C
    sbc e                                         ; $606B: $9B
    ld c, $8C                                     ; $606C: $0E $8C
    rlca                                          ; $606E: $07
    sbc e                                         ; $606F: $9B
    adc h                                         ; $6070: $8C
    dec b                                         ; $6071: $05
    adc a                                         ; $6072: $8F
    sub c                                         ; $6073: $91
    inc b                                         ; $6074: $04
    add b                                         ; $6075: $80
    rlca                                          ; $6076: $07
    sbc l                                         ; $6077: $9D
    sbc l                                         ; $6078: $9D
    sbc e                                         ; $6079: $9B
    sbc c                                         ; $607A: $99
    sbc e                                         ; $607B: $9B
    sbc c                                         ; $607C: $99
    sub [hl]                                      ; $607D: $96
    db $EC                                        ; $607E: $EC
    ld c, b                                       ; $607F: $48
    ld h, c                                       ; $6080: $61
    db $EC                                        ; $6081: $EC
    ld l, l                                       ; $6082: $6D
    ld h, c                                       ; $6083: $61
    add b                                         ; $6084: $80
    ld c, $9D                                     ; $6085: $0E $9D
    rlca                                          ; $6087: $07
    sbc l                                         ; $6088: $9D
    sbc e                                         ; $6089: $9B
    sbc l                                         ; $608A: $9D
    sub [hl]                                      ; $608B: $96
    sbc e                                         ; $608C: $9B
    and b                                         ; $608D: $A0
    and b                                         ; $608E: $A0
    sbc l                                         ; $608F: $9D
    and b                                         ; $6090: $A0
    sbc b                                         ; $6091: $98
    sbc e                                         ; $6092: $9B
    sbc l                                         ; $6093: $9D
    and b                                         ; $6094: $A0
    push hl                                       ; $6095: $E5
    add hl, sp                                    ; $6096: $39
    ld h, b                                       ; $6097: $60
    and d                                         ; $6098: $A2
    add hl, bc                                    ; $6099: $09
    db $E4                                        ; $609A: $E4
    ld b, a                                       ; $609B: $47
    and d                                         ; $609C: $A2
    db $E4                                        ; $609D: $E4
    scf                                           ; $609E: $37
    and d                                         ; $609F: $A2
    ld a, [bc]                                    ; $60A0: $0A
    db $E4                                        ; $60A1: $E4
    ld d, a                                       ; $60A2: $57
    rst RST_20                                    ; $60A3: $E7
    nop                                           ; $60A4: $00
    db $10                                        ; $60A5: $10
    sbc b                                         ; $60A6: $98
    ld h, b                                       ; $60A7: $60
    db $ED                                        ; $60A8: $ED
    add b                                         ; $60A9: $80
    ld c, $96                                     ; $60AA: $0E $96
    rlca                                          ; $60AC: $07
    sub h                                         ; $60AD: $94
    sub [hl]                                      ; $60AE: $96
    sbc c                                         ; $60AF: $99
    sub c                                         ; $60B0: $91
    sub h                                         ; $60B1: $94
    adc l                                         ; $60B2: $8D
    adc a                                         ; $60B3: $8F
    sub [hl]                                      ; $60B4: $96
    sub h                                         ; $60B5: $94
    sub [hl]                                      ; $60B6: $96
    sbc e                                         ; $60B7: $9B
    adc a                                         ; $60B8: $8F
    sub e                                         ; $60B9: $93
    sub c                                         ; $60BA: $91
    sub h                                         ; $60BB: $94
    sub [hl]                                      ; $60BC: $96
    sub h                                         ; $60BD: $94
    sub [hl]                                      ; $60BE: $96
    sbc l                                         ; $60BF: $9D
    and b                                         ; $60C0: $A0
    sbc c                                         ; $60C1: $99
    sbc e                                         ; $60C2: $9B
    sbc a                                         ; $60C3: $9F
    sub [hl]                                      ; $60C4: $96
    sbc e                                         ; $60C5: $9B
    sbc l                                         ; $60C6: $9D
    sub h                                         ; $60C7: $94
    adc a                                         ; $60C8: $8F
    sub c                                         ; $60C9: $91
    rst RST_20                                    ; $60CA: $E7
    nop                                           ; $60CB: $00
    ld [bc], a                                    ; $60CC: $02
    xor c                                         ; $60CD: $A9
    ld h, b                                       ; $60CE: $60
    db $ED                                        ; $60CF: $ED
    add b                                         ; $60D0: $80
    ld c, $A0                                     ; $60D1: $0E $A0
    rlca                                          ; $60D3: $07
    sub [hl]                                      ; $60D4: $96
    and b                                         ; $60D5: $A0
    sbc a                                         ; $60D6: $9F
    sub [hl]                                      ; $60D7: $96
    sbc a                                         ; $60D8: $9F
    sub [hl]                                      ; $60D9: $96
    sbc l                                         ; $60DA: $9D
    sub h                                         ; $60DB: $94
    sub [hl]                                      ; $60DC: $96
    sbc c                                         ; $60DD: $99
    sub h                                         ; $60DE: $94
    sbc l                                         ; $60DF: $9D
    sub [hl]                                      ; $60E0: $96
    sbc l                                         ; $60E1: $9D
    db $E4                                        ; $60E2: $E4
    ld b, a                                       ; $60E3: $47
    sbc l                                         ; $60E4: $9D
    db $E4                                        ; $60E5: $E4
    ld d, a                                       ; $60E6: $57
    sbc l                                         ; $60E7: $9D
    sbc e                                         ; $60E8: $9B
    db $E4                                        ; $60E9: $E4
    ld b, a                                       ; $60EA: $47
    sbc e                                         ; $60EB: $9B
    db $E4                                        ; $60EC: $E4
    ld d, a                                       ; $60ED: $57
    sbc e                                         ; $60EE: $9B
    sbc c                                         ; $60EF: $99
    db $E4                                        ; $60F0: $E4
    ld b, a                                       ; $60F1: $47
    sbc c                                         ; $60F2: $99
    db $E4                                        ; $60F3: $E4
    ld d, a                                       ; $60F4: $57
    sbc c                                         ; $60F5: $99
    sub [hl]                                      ; $60F6: $96
    db $E4                                        ; $60F7: $E4
    ld b, a                                       ; $60F8: $47
    sub [hl]                                      ; $60F9: $96
    db $E4                                        ; $60FA: $E4
    ld d, a                                       ; $60FB: $57
    sub [hl]                                      ; $60FC: $96
    sub h                                         ; $60FD: $94
    sub e                                         ; $60FE: $93
    adc a                                         ; $60FF: $8F
    db $E4                                        ; $6100: $E4
    ld d, l                                       ; $6101: $55
    adc a                                         ; $6102: $8F
    sbc l                                         ; $6103: $9D
    ld c, $A0                                     ; $6104: $0E $A0
    rlca                                          ; $6106: $07
    sbc e                                         ; $6107: $9B
    ld c, $9F                                     ; $6108: $0E $9F
    rlca                                          ; $610A: $07
    sbc b                                         ; $610B: $98
    sbc e                                         ; $610C: $9B
    sub c                                         ; $610D: $91
    sbc c                                         ; $610E: $99
    adc a                                         ; $610F: $8F
    sub c                                         ; $6110: $91
    sub [hl]                                      ; $6111: $96
    add b                                         ; $6112: $80
    sub h                                         ; $6113: $94
    sub [hl]                                      ; $6114: $96
    sub [hl]                                      ; $6115: $96
    sub c                                         ; $6116: $91
    add b                                         ; $6117: $80
    sub h                                         ; $6118: $94
    adc a                                         ; $6119: $8F
    sub h                                         ; $611A: $94
    sub c                                         ; $611B: $91
    add b                                         ; $611C: $80
    add b                                         ; $611D: $80
    sub c                                         ; $611E: $91
    adc a                                         ; $611F: $8F
    sub c                                         ; $6120: $91
    adc l                                         ; $6121: $8D
    adc a                                         ; $6122: $8F
    sub [hl]                                      ; $6123: $96
    add b                                         ; $6124: $80
    db $ED                                        ; $6125: $ED
    add b                                         ; $6126: $80
    sbc c                                         ; $6127: $99
    add b                                         ; $6128: $80
    sub h                                         ; $6129: $94
    sub h                                         ; $612A: $94
    add b                                         ; $612B: $80
    adc l                                         ; $612C: $8D
    adc l                                         ; $612D: $8D
    add b                                         ; $612E: $80
    sub h                                         ; $612F: $94
    sub h                                         ; $6130: $94
    add b                                         ; $6131: $80
    sbc c                                         ; $6132: $99
    sub h                                         ; $6133: $94
    sbc c                                         ; $6134: $99
    add b                                         ; $6135: $80
    db $ED                                        ; $6136: $ED
    sub b                                         ; $6137: $90
    adc a                                         ; $6138: $8F
    sub b                                         ; $6139: $90
    sub [hl]                                      ; $613A: $96
    add b                                         ; $613B: $80
    add b                                         ; $613C: $80
    sub b                                         ; $613D: $90
    adc a                                         ; $613E: $8F
    sub b                                         ; $613F: $90
    sub a                                         ; $6140: $97
    add b                                         ; $6141: $80
    add b                                         ; $6142: $80
    sub b                                         ; $6143: $90
    adc a                                         ; $6144: $8F
    sub b                                         ; $6145: $90
    sbc c                                         ; $6146: $99
    db $ED                                        ; $6147: $ED
    add b                                         ; $6148: $80
    inc e                                         ; $6149: $1C
    sbc c                                         ; $614A: $99
    rlca                                          ; $614B: $07
    sub [hl]                                      ; $614C: $96
    add b                                         ; $614D: $80
    sbc l                                         ; $614E: $9D
    add b                                         ; $614F: $80
    sbc c                                         ; $6150: $99
    sub [hl]                                      ; $6151: $96
    sbc l                                         ; $6152: $9D
    add b                                         ; $6153: $80
    ld c, $9B                                     ; $6154: $0E $9B
    add b                                         ; $6156: $80
    rlca                                          ; $6157: $07
    sbc e                                         ; $6158: $9B
    sbc c                                         ; $6159: $99
    sbc b                                         ; $615A: $98
    sbc c                                         ; $615B: $99
    sbc b                                         ; $615C: $98
    sub [hl]                                      ; $615D: $96
    sbc e                                         ; $615E: $9B
    add b                                         ; $615F: $80
    adc [hl]                                      ; $6160: $8E
    adc a                                         ; $6161: $8F
    sub e                                         ; $6162: $93
    sbc c                                         ; $6163: $99
    sub h                                         ; $6164: $94
    sub [hl]                                      ; $6165: $96
    ld c, $E7                                     ; $6166: $0E $E7
    nop                                           ; $6168: $00
    ld [bc], a                                    ; $6169: $02
    ld c, b                                       ; $616A: $48
    ld h, c                                       ; $616B: $61
    db $ED                                        ; $616C: $ED
    add b                                         ; $616D: $80
    inc e                                         ; $616E: $1C
    sbc l                                         ; $616F: $9D
    rlca                                          ; $6170: $07
    sbc c                                         ; $6171: $99
    add b                                         ; $6172: $80
    and b                                         ; $6173: $A0
    add b                                         ; $6174: $80
    sbc l                                         ; $6175: $9D
    sbc c                                         ; $6176: $99
    and b                                         ; $6177: $A0
    add b                                         ; $6178: $80
    ld c, $9F                                     ; $6179: $0E $9F
    add b                                         ; $617B: $80
    rlca                                          ; $617C: $07
    sbc a                                         ; $617D: $9F
    sbc l                                         ; $617E: $9D
    sbc e                                         ; $617F: $9B
    sbc l                                         ; $6180: $9D
    sbc e                                         ; $6181: $9B
    sbc c                                         ; $6182: $99
    adc a                                         ; $6183: $8F
    add b                                         ; $6184: $80
    sub d                                         ; $6185: $92
    sub e                                         ; $6186: $93
    sub [hl]                                      ; $6187: $96
    sbc l                                         ; $6188: $9D
    sbc c                                         ; $6189: $99
    sbc e                                         ; $618A: $9B
    ld c, $E7                                     ; $618B: $0E $E7
    nop                                           ; $618D: $00
    ld [bc], a                                    ; $618E: $02
    ld l, l                                       ; $618F: $6D
    ld h, c                                       ; $6190: $61
    db $ED                                        ; $6191: $ED
    db $E4                                        ; $6192: $E4
    ld b, b                                       ; $6193: $40
    jp hl                                         ; $6194: $E9


    ld b, h                                       ; $6195: $44
    di                                            ; $6196: $F3
    inc bc                                        ; $6197: $03
    push af                                       ; $6198: $F5
    nop                                           ; $6199: $00
    db $EC                                        ; $619A: $EC
    pop af                                        ; $619B: $F1
    ld h, c                                       ; $619C: $61
    di                                            ; $619D: $F3
    ld [bc], a                                    ; $619E: $02
    db $EC                                        ; $619F: $EC
    dec d                                         ; $61A0: $15
    ld h, d                                       ; $61A1: $62
    sbc l                                         ; $61A2: $9D
    db $E4                                        ; $61A3: $E4
    ld h, b                                       ; $61A4: $60
    sbc l                                         ; $61A5: $9D
    db $E4                                        ; $61A6: $E4
    ld b, b                                       ; $61A7: $40
    and b                                         ; $61A8: $A0
    dec d                                         ; $61A9: $15
    sbc a                                         ; $61AA: $9F
    rlca                                          ; $61AB: $07
    db $E4                                        ; $61AC: $E4
    ld h, b                                       ; $61AD: $60
    sbc a                                         ; $61AE: $9F
    db $E4                                        ; $61AF: $E4
    ld b, b                                       ; $61B0: $40
    sbc e                                         ; $61B1: $9B
    sbc l                                         ; $61B2: $9D
    db $E4                                        ; $61B3: $E4
    ld h, b                                       ; $61B4: $60
    sbc l                                         ; $61B5: $9D
    db $E4                                        ; $61B6: $E4
    ld b, b                                       ; $61B7: $40
    add b                                         ; $61B8: $80
    dec d                                         ; $61B9: $15
    db $EC                                        ; $61BA: $EC
    dec d                                         ; $61BB: $15
    ld h, d                                       ; $61BC: $62
    sbc l                                         ; $61BD: $9D
    ld c, $99                                     ; $61BE: $0E $99
    db $E4                                        ; $61C0: $E4
    ld h, b                                       ; $61C1: $60
    sbc c                                         ; $61C2: $99
    rlca                                          ; $61C3: $07
    db $E4                                        ; $61C4: $E4
    ld b, b                                       ; $61C5: $40
    sbc e                                         ; $61C6: $9B
    db $E4                                        ; $61C7: $E4
    ld h, b                                       ; $61C8: $60
    sbc e                                         ; $61C9: $9B
    db $E4                                        ; $61CA: $E4
    ld b, b                                       ; $61CB: $40
    sbc c                                         ; $61CC: $99
    sub [hl]                                      ; $61CD: $96
    db $E4                                        ; $61CE: $E4
    ld h, b                                       ; $61CF: $60
    sub [hl]                                      ; $61D0: $96
    db $E4                                        ; $61D1: $E4
    ld b, b                                       ; $61D2: $40
    add b                                         ; $61D3: $80
    dec d                                         ; $61D4: $15
    db $EC                                        ; $61D5: $EC
    ld [hl-], a                                   ; $61D6: $32
    ld h, d                                       ; $61D7: $62
    db $EC                                        ; $61D8: $EC
    dec sp                                        ; $61D9: $3B
    ld h, e                                       ; $61DA: $63
    db $EC                                        ; $61DB: $EC
    ld l, e                                       ; $61DC: $6B
    ld h, e                                       ; $61DD: $63
    sbc l                                         ; $61DE: $9D
    sbc l                                         ; $61DF: $9D
    sbc e                                         ; $61E0: $9B
    sbc l                                         ; $61E1: $9D
    add b                                         ; $61E2: $80
    add b                                         ; $61E3: $80
    and b                                         ; $61E4: $A0
    and b                                         ; $61E5: $A0
    sbc l                                         ; $61E6: $9D
    and b                                         ; $61E7: $A0
    add b                                         ; $61E8: $80
    sbc e                                         ; $61E9: $9B
    sbc l                                         ; $61EA: $9D
    and b                                         ; $61EB: $A0
    and c                                         ; $61EC: $A1
    and d                                         ; $61ED: $A2
    push hl                                       ; $61EE: $E5
    sub d                                         ; $61EF: $92
    ld h, c                                       ; $61F0: $61
    add b                                         ; $61F1: $80
    inc e                                         ; $61F2: $1C
    adc l                                         ; $61F3: $8D
    rlca                                          ; $61F4: $07
    add b                                         ; $61F5: $80
    adc l                                         ; $61F6: $8D
    adc a                                         ; $61F7: $8F
    add b                                         ; $61F8: $80
    adc a                                         ; $61F9: $8F
    add b                                         ; $61FA: $80
    sub c                                         ; $61FB: $91
    adc l                                         ; $61FC: $8D
    adc a                                         ; $61FD: $8F
    adc d                                         ; $61FE: $8A
    add b                                         ; $61FF: $80
    add b                                         ; $6200: $80
    inc e                                         ; $6201: $1C
    adc l                                         ; $6202: $8D
    rlca                                          ; $6203: $07
    add b                                         ; $6204: $80
    adc l                                         ; $6205: $8D
    adc a                                         ; $6206: $8F
    add b                                         ; $6207: $80
    adc a                                         ; $6208: $8F
    add b                                         ; $6209: $80
    sub c                                         ; $620A: $91
    adc l                                         ; $620B: $8D
    adc a                                         ; $620C: $8F
    sub [hl]                                      ; $620D: $96
    add b                                         ; $620E: $80
    rst RST_20                                    ; $620F: $E7
    nop                                           ; $6210: $00
    ld [bc], a                                    ; $6211: $02
    pop af                                        ; $6212: $F1
    ld h, c                                       ; $6213: $61
    db $ED                                        ; $6214: $ED
    sub [hl]                                      ; $6215: $96
    rlca                                          ; $6216: $07
    sub h                                         ; $6217: $94
    sub [hl]                                      ; $6218: $96
    sbc c                                         ; $6219: $99
    db $E4                                        ; $621A: $E4
    ld h, b                                       ; $621B: $60
    sbc c                                         ; $621C: $99
    add b                                         ; $621D: $80
    dec d                                         ; $621E: $15
    db $E4                                        ; $621F: $E4
    ld b, b                                       ; $6220: $40
    sub [hl]                                      ; $6221: $96
    rlca                                          ; $6222: $07
    sub h                                         ; $6223: $94
    sub [hl]                                      ; $6224: $96
    sbc e                                         ; $6225: $9B
    db $E4                                        ; $6226: $E4
    ld h, b                                       ; $6227: $60
    sbc e                                         ; $6228: $9B
    add b                                         ; $6229: $80
    dec d                                         ; $622A: $15
    db $E4                                        ; $622B: $E4
    ld b, b                                       ; $622C: $40
    sub [hl]                                      ; $622D: $96
    rlca                                          ; $622E: $07
    sub h                                         ; $622F: $94
    sub [hl]                                      ; $6230: $96
    db $ED                                        ; $6231: $ED
    and b                                         ; $6232: $A0
    rlca                                          ; $6233: $07
    db $E4                                        ; $6234: $E4
    ld h, b                                       ; $6235: $60
    and b                                         ; $6236: $A0
    db $E4                                        ; $6237: $E4
    ld b, b                                       ; $6238: $40
    and b                                         ; $6239: $A0
    sbc a                                         ; $623A: $9F
    add b                                         ; $623B: $80
    sbc a                                         ; $623C: $9F
    add b                                         ; $623D: $80
    sbc l                                         ; $623E: $9D
    db $E4                                        ; $623F: $E4
    ld h, b                                       ; $6240: $60

jr_02E_6241:
    sbc l                                         ; $6241: $9D
    ld c, $E4                                     ; $6242: $0E $E4
    ld b, b                                       ; $6244: $40
    sbc c                                         ; $6245: $99
    rlca                                          ; $6246: $07
    add b                                         ; $6247: $80
    sbc l                                         ; $6248: $9D
    add b                                         ; $6249: $80
    sbc a                                         ; $624A: $9F
    add b                                         ; $624B: $80
    and b                                         ; $624C: $A0
    ld c, $E4                                     ; $624D: $0E $E4
    ld h, b                                       ; $624F: $60
    and b                                         ; $6250: $A0
    rlca                                          ; $6251: $07
    db $E4                                        ; $6252: $E4
    ld b, b                                       ; $6253: $40
    and d                                         ; $6254: $A2
    ld c, $E4                                     ; $6255: $0E $E4
    ld h, b                                       ; $6257: $60
    and d                                         ; $6258: $A2
    rlca                                          ; $6259: $07
    db $E4                                        ; $625A: $E4
    ld b, b                                       ; $625B: $40
    sbc a                                         ; $625C: $9F
    inc e                                         ; $625D: $1C
    db $E4                                        ; $625E: $E4
    ld h, b                                       ; $625F: $60
    sbc a                                         ; $6260: $9F
    add b                                         ; $6261: $80
    ld c, $E4                                     ; $6262: $0E $E4
    ld b, b                                       ; $6264: $40
    and b                                         ; $6265: $A0
    ld c, $E4                                     ; $6266: $0E $E4
    ld h, b                                       ; $6268: $60
    and b                                         ; $6269: $A0
    rlca                                          ; $626A: $07
    db $E4                                        ; $626B: $E4
    ld b, b                                       ; $626C: $40
    sbc a                                         ; $626D: $9F
    ld c, $E4                                     ; $626E: $0E $E4
    ld h, b                                       ; $6270: $60
    sbc a                                         ; $6271: $9F
    rlca                                          ; $6272: $07
    db $E4                                        ; $6273: $E4
    ld b, b                                       ; $6274: $40
    sbc e                                         ; $6275: $9B
    ld c, $E4                                     ; $6276: $0E $E4
    ld h, b                                       ; $6278: $60
    sbc e                                         ; $6279: $9B
    rlca                                          ; $627A: $07
    db $E4                                        ; $627B: $E4
    ld b, b                                       ; $627C: $40
    sbc l                                         ; $627D: $9D
    ld c, $96                                     ; $627E: $0E $96
    rlca                                          ; $6280: $07
    sub h                                         ; $6281: $94
    sub [hl]                                      ; $6282: $96
    sbc c                                         ; $6283: $99
    add b                                         ; $6284: $80
    sbc e                                         ; $6285: $9B
    ld c, $E4                                     ; $6286: $0E $E4
    ld h, b                                       ; $6288: $60
    sbc e                                         ; $6289: $9B
    rlca                                          ; $628A: $07
    db $E4                                        ; $628B: $E4
    ld b, b                                       ; $628C: $40
    sbc c                                         ; $628D: $99
    ld c, $E4                                     ; $628E: $0E $E4
    ld h, b                                       ; $6290: $60
    sbc c                                         ; $6291: $99
    rlca                                          ; $6292: $07
    db $E4                                        ; $6293: $E4
    ld b, b                                       ; $6294: $40
    sub [hl]                                      ; $6295: $96
    inc e                                         ; $6296: $1C
    db $E4                                        ; $6297: $E4
    ld h, b                                       ; $6298: $60
    sub [hl]                                      ; $6299: $96
    add b                                         ; $629A: $80
    ld c, $E4                                     ; $629B: $0E $E4
    ld b, b                                       ; $629D: $40
    sbc c                                         ; $629E: $99
    inc bc                                        ; $629F: $03
    sbc d                                         ; $62A0: $9A
    sbc e                                         ; $62A1: $9B
    inc b                                         ; $62A2: $04
    sbc h                                         ; $62A3: $9C
    pop af                                        ; $62A4: $F1
    sbc l                                         ; $62A5: $9D
    jr c, jr_02E_6241                             ; $62A6: $38 $99

    ld c, $9D                                     ; $62A8: $0E $9D
    sbc a                                         ; $62AA: $9F
    and b                                         ; $62AB: $A0
    ld c, $E4                                     ; $62AC: $0E $E4
    ld h, b                                       ; $62AE: $60
    and b                                         ; $62AF: $A0
    rlca                                          ; $62B0: $07
    db $E4                                        ; $62B1: $E4
    ld b, b                                       ; $62B2: $40
    sbc a                                         ; $62B3: $9F
    ld c, $E4                                     ; $62B4: $0E $E4
    ld h, b                                       ; $62B6: $60
    sbc a                                         ; $62B7: $9F
    rlca                                          ; $62B8: $07
    db $E4                                        ; $62B9: $E4
    ld b, b                                       ; $62BA: $40
    sbc e                                         ; $62BB: $9B
    ld c, $E4                                     ; $62BC: $0E $E4
    ld h, b                                       ; $62BE: $60
    sbc e                                         ; $62BF: $9B
    rlca                                          ; $62C0: $07
    db $E4                                        ; $62C1: $E4
    ld b, b                                       ; $62C2: $40
    sub [hl]                                      ; $62C3: $96
    ld c, $E4                                     ; $62C4: $0E $E4
    ld h, b                                       ; $62C6: $60
    sub [hl]                                      ; $62C7: $96
    rlca                                          ; $62C8: $07
    db $E4                                        ; $62C9: $E4
    ld b, b                                       ; $62CA: $40
    sbc a                                         ; $62CB: $9F
    ld c, $F1                                     ; $62CC: $0E $F1
    sbc l                                         ; $62CE: $9D
    ld d, h                                       ; $62CF: $54
    sbc c                                         ; $62D0: $99
    ld c, $9D                                     ; $62D1: $0E $9D
    sbc a                                         ; $62D3: $9F
    and b                                         ; $62D4: $A0
    ld c, $E4                                     ; $62D5: $0E $E4
    ld h, b                                       ; $62D7: $60
    and b                                         ; $62D8: $A0
    rlca                                          ; $62D9: $07
    db $E4                                        ; $62DA: $E4
    ld b, b                                       ; $62DB: $40
    and d                                         ; $62DC: $A2
    ld c, $E4                                     ; $62DD: $0E $E4
    ld h, b                                       ; $62DF: $60
    and d                                         ; $62E0: $A2
    rlca                                          ; $62E1: $07
    db $E4                                        ; $62E2: $E4
    ld b, b                                       ; $62E3: $40
    sbc a                                         ; $62E4: $9F
    ld c, $E4                                     ; $62E5: $0E $E4
    ld h, b                                       ; $62E7: $60
    sbc a                                         ; $62E8: $9F
    rlca                                          ; $62E9: $07
    db $E4                                        ; $62EA: $E4
    ld b, b                                       ; $62EB: $40
    sbc e                                         ; $62EC: $9B
    ld c, $E4                                     ; $62ED: $0E $E4
    ld h, b                                       ; $62EF: $60
    sbc e                                         ; $62F0: $9B
    dec d                                         ; $62F1: $15
    db $E4                                        ; $62F2: $E4
    ld b, b                                       ; $62F3: $40
    pop af                                        ; $62F4: $F1
    and d                                         ; $62F5: $A2
    ld d, h                                       ; $62F6: $54
    and d                                         ; $62F7: $A2
    ld c, $A5                                     ; $62F8: $0E $A5
    and a                                         ; $62FA: $A7
    and l                                         ; $62FB: $A5
    ld c, $E4                                     ; $62FC: $0E $E4
    ld h, b                                       ; $62FE: $60
    and l                                         ; $62FF: $A5
    rlca                                          ; $6300: $07
    db $E4                                        ; $6301: $E4
    ld b, b                                       ; $6302: $40
    and h                                         ; $6303: $A4
    ld c, $E4                                     ; $6304: $0E $E4
    ld h, b                                       ; $6306: $60
    and h                                         ; $6307: $A4
    rlca                                          ; $6308: $07
    db $E4                                        ; $6309: $E4
    ld b, b                                       ; $630A: $40
    and b                                         ; $630B: $A0
    ld c, $E4                                     ; $630C: $0E $E4
    ld h, b                                       ; $630E: $60
    and b                                         ; $630F: $A0
    rlca                                          ; $6310: $07
    db $E4                                        ; $6311: $E4
    ld b, b                                       ; $6312: $40
    sbc e                                         ; $6313: $9B
    ld c, $E4                                     ; $6314: $0E $E4
    ld h, b                                       ; $6316: $60
    sbc e                                         ; $6317: $9B
    rlca                                          ; $6318: $07
    db $E4                                        ; $6319: $E4
    ld b, b                                       ; $631A: $40
    and h                                         ; $631B: $A4
    ld c, $F1                                     ; $631C: $0E $F1
    and d                                         ; $631E: $A2
    ld d, h                                       ; $631F: $54
    and d                                         ; $6320: $A2
    ld c, $A5                                     ; $6321: $0E $A5
    and a                                         ; $6323: $A7
    xor c                                         ; $6324: $A9
    rlca                                          ; $6325: $07
    sbc l                                         ; $6326: $9D
    and b                                         ; $6327: $A0
    ld c, $9D                                     ; $6328: $0E $9D
    rlca                                          ; $632A: $07
    and b                                         ; $632B: $A0
    sbc l                                         ; $632C: $9D
    dec b                                         ; $632D: $05
    and b                                         ; $632E: $A0
    and d                                         ; $632F: $A2
    inc b                                         ; $6330: $04
    and b                                         ; $6331: $A0
    rlca                                          ; $6332: $07
    sbc l                                         ; $6333: $9D
    sbc e                                         ; $6334: $9B
    sbc c                                         ; $6335: $99
    sbc e                                         ; $6336: $9B
    sbc l                                         ; $6337: $9D
    and b                                         ; $6338: $A0
    and d                                         ; $6339: $A2
    db $ED                                        ; $633A: $ED
    db $E4                                        ; $633B: $E4
    ld b, b                                       ; $633C: $40
    sbc c                                         ; $633D: $99
    sub [hl]                                      ; $633E: $96
    add b                                         ; $633F: $80
    sbc l                                         ; $6340: $9D
    db $E4                                        ; $6341: $E4
    ld h, b                                       ; $6342: $60
    sbc l                                         ; $6343: $9D
    ld c, $80                                     ; $6344: $0E $80
    db $E4                                        ; $6346: $E4
    ld b, b                                       ; $6347: $40
    sbc c                                         ; $6348: $99
    rlca                                          ; $6349: $07
    sub [hl]                                      ; $634A: $96
    add b                                         ; $634B: $80
    and b                                         ; $634C: $A0
    db $E4                                        ; $634D: $E4
    ld h, b                                       ; $634E: $60
    and b                                         ; $634F: $A0
    ld c, $E4                                     ; $6350: $0E $E4
    ld b, b                                       ; $6352: $40
    sbc a                                         ; $6353: $9F
    db $E4                                        ; $6354: $E4
    ld h, b                                       ; $6355: $60
    sbc a                                         ; $6356: $9F
    add b                                         ; $6357: $80
    sbc l                                         ; $6358: $9D
    rlca                                          ; $6359: $07
    sbc e                                         ; $635A: $9B
    sbc c                                         ; $635B: $99
    sub [hl]                                      ; $635C: $96
    add b                                         ; $635D: $80
    sub d                                         ; $635E: $92
    sub e                                         ; $635F: $93
    sub [hl]                                      ; $6360: $96
    sbc l                                         ; $6361: $9D
    sbc c                                         ; $6362: $99
    sbc e                                         ; $6363: $9B
    adc a                                         ; $6364: $8F
    rst RST_20                                    ; $6365: $E7
    nop                                           ; $6366: $00
    ld [bc], a                                    ; $6367: $02
    dec sp                                        ; $6368: $3B
    ld h, e                                       ; $6369: $63
    db $ED                                        ; $636A: $ED
    db $E4                                        ; $636B: $E4
    ld b, b                                       ; $636C: $40
    sbc l                                         ; $636D: $9D
    sbc c                                         ; $636E: $99
    add b                                         ; $636F: $80
    and b                                         ; $6370: $A0
    db $E4                                        ; $6371: $E4
    ld h, b                                       ; $6372: $60
    and b                                         ; $6373: $A0
    ld c, $80                                     ; $6374: $0E $80
    db $E4                                        ; $6376: $E4
    ld b, b                                       ; $6377: $40
    sbc l                                         ; $6378: $9D
    rlca                                          ; $6379: $07
    sbc c                                         ; $637A: $99
    add b                                         ; $637B: $80
    and h                                         ; $637C: $A4
    db $E4                                        ; $637D: $E4
    ld h, b                                       ; $637E: $60
    and h                                         ; $637F: $A4
    ld c, $E4                                     ; $6380: $0E $E4
    ld b, b                                       ; $6382: $40
    and d                                         ; $6383: $A2
    db $E4                                        ; $6384: $E4
    ld h, b                                       ; $6385: $60
    and d                                         ; $6386: $A2
    add b                                         ; $6387: $80
    and b                                         ; $6388: $A0
    rlca                                          ; $6389: $07
    sbc a                                         ; $638A: $9F
    sbc l                                         ; $638B: $9D
    sbc c                                         ; $638C: $99
    add b                                         ; $638D: $80
    sub l                                         ; $638E: $95
    sub [hl]                                      ; $638F: $96
    sbc c                                         ; $6390: $99
    and b                                         ; $6391: $A0
    sbc l                                         ; $6392: $9D
    sbc a                                         ; $6393: $9F
    adc a                                         ; $6394: $8F
    rst RST_20                                    ; $6395: $E7
    nop                                           ; $6396: $00
    ld [bc], a                                    ; $6397: $02
    ld l, e                                       ; $6398: $6B
    ld h, e                                       ; $6399: $63
    db $ED                                        ; $639A: $ED
    jp hl                                         ; $639B: $E9


    adc b                                         ; $639C: $88
    db $EC                                        ; $639D: $EC
    rst RST_00                                    ; $639E: $C7
    ld h, e                                       ; $639F: $63
    db $EC                                        ; $63A0: $EC
    ld bc, $EC64                                  ; $63A1: $01 $64 $EC
    ld [hl], $64                                  ; $63A4: $36 $64
    db $EC                                        ; $63A6: $EC
    rst RST_00                                    ; $63A7: $C7
    ld h, e                                       ; $63A8: $63
    db $EC                                        ; $63A9: $EC
    ld bc, $EC64                                  ; $63AA: $01 $64 $EC
    ld [hl], $64                                  ; $63AD: $36 $64
    db $EC                                        ; $63AF: $EC
    rst RST_00                                    ; $63B0: $C7
    ld h, e                                       ; $63B1: $63
    db $EC                                        ; $63B2: $EC
    ld [hl], b                                    ; $63B3: $70
    ld h, h                                       ; $63B4: $64
    db $EC                                        ; $63B5: $EC
    rst RST_00                                    ; $63B6: $C7
    ld h, e                                       ; $63B7: $63
    db $EC                                        ; $63B8: $EC
    ld bc, $EC64                                  ; $63B9: $01 $64 $EC
    rst RST_00                                    ; $63BC: $C7
    ld h, e                                       ; $63BD: $63
    db $EC                                        ; $63BE: $EC
    ld bc, $EC64                                  ; $63BF: $01 $64 $EC
    or c                                          ; $63C2: $B1
    ld h, h                                       ; $63C3: $64
    push hl                                       ; $63C4: $E5
    sbc e                                         ; $63C5: $9B
    ld h, e                                       ; $63C6: $63
    db $E4                                        ; $63C7: $E4
    ld [hl], c                                    ; $63C8: $71
    ld [hl], $0E                                  ; $63C9: $36 $0E
    db $E4                                        ; $63CB: $E4
    ld [hl], c                                    ; $63CC: $71
    ld [hl], $0E                                  ; $63CD: $36 $0E
    db $E4                                        ; $63CF: $E4
    ld h, d                                       ; $63D0: $62
    inc h                                         ; $63D1: $24
    rlca                                          ; $63D2: $07
    db $E4                                        ; $63D3: $E4
    ld b, c                                       ; $63D4: $41
    ld hl, $E407                                  ; $63D5: $21 $07 $E4
    ld [hl], c                                    ; $63D8: $71
    ld [hl], $07                                  ; $63D9: $36 $07
    db $E4                                        ; $63DB: $E4
    ld h, d                                       ; $63DC: $62
    inc h                                         ; $63DD: $24
    rlca                                          ; $63DE: $07
    db $E4                                        ; $63DF: $E4
    ld d, e                                       ; $63E0: $53
    ld de, $E407                                  ; $63E1: $11 $07 $E4
    ld [hl], c                                    ; $63E4: $71
    ld [hl], $07                                  ; $63E5: $36 $07
    db $E4                                        ; $63E7: $E4
    ld [hl], c                                    ; $63E8: $71
    ld [hl], $0E                                  ; $63E9: $36 $0E
    db $E4                                        ; $63EB: $E4
    ld h, d                                       ; $63EC: $62
    inc h                                         ; $63ED: $24
    rlca                                          ; $63EE: $07
    db $E4                                        ; $63EF: $E4
    ld b, c                                       ; $63F0: $41
    ld hl, $E407                                  ; $63F1: $21 $07 $E4
    ld [hl], c                                    ; $63F4: $71
    ld [hl], $07                                  ; $63F5: $36 $07
    db $E4                                        ; $63F7: $E4
    ld b, c                                       ; $63F8: $41
    ld hl, $E707                                  ; $63F9: $21 $07 $E7
    nop                                           ; $63FC: $00
    inc bc                                        ; $63FD: $03
    rst RST_00                                    ; $63FE: $C7
    ld h, e                                       ; $63FF: $63
    db $ED                                        ; $6400: $ED
    db $E4                                        ; $6401: $E4
    ld [hl], c                                    ; $6402: $71
    ld [hl], $0E                                  ; $6403: $36 $0E
    db $E4                                        ; $6405: $E4
    ld [hl], c                                    ; $6406: $71
    ld [hl], $0E                                  ; $6407: $36 $0E
    db $E4                                        ; $6409: $E4
    ld h, d                                       ; $640A: $62
    inc h                                         ; $640B: $24
    rlca                                          ; $640C: $07
    db $E4                                        ; $640D: $E4
    ld b, c                                       ; $640E: $41
    ld hl, $E407                                  ; $640F: $21 $07 $E4
    ld [hl], c                                    ; $6412: $71
    ld [hl], $07                                  ; $6413: $36 $07
    db $E4                                        ; $6415: $E4
    ld h, d                                       ; $6416: $62
    inc h                                         ; $6417: $24
    rlca                                          ; $6418: $07
    db $E4                                        ; $6419: $E4
    ld d, e                                       ; $641A: $53
    ld de, $E407                                  ; $641B: $11 $07 $E4
    ld [hl], c                                    ; $641E: $71
    ld [hl], $07                                  ; $641F: $36 $07
    db $E4                                        ; $6421: $E4
    ld [hl], c                                    ; $6422: $71
    ld [hl], $0E                                  ; $6423: $36 $0E
    db $E4                                        ; $6425: $E4
    ld h, d                                       ; $6426: $62
    inc h                                         ; $6427: $24
    rlca                                          ; $6428: $07
    db $E4                                        ; $6429: $E4
    ld h, d                                       ; $642A: $62
    inc h                                         ; $642B: $24
    rlca                                          ; $642C: $07
    db $E4                                        ; $642D: $E4
    ld [hl], c                                    ; $642E: $71
    ld [hl], $07                                  ; $642F: $36 $07
    db $E4                                        ; $6431: $E4
    ld h, d                                       ; $6432: $62
    inc h                                         ; $6433: $24
    rlca                                          ; $6434: $07
    db $ED                                        ; $6435: $ED
    db $E4                                        ; $6436: $E4
    ld [hl], c                                    ; $6437: $71
    ld [hl], $0E                                  ; $6438: $36 $0E
    db $E4                                        ; $643A: $E4
    ld [hl], c                                    ; $643B: $71
    ld [hl], $0E                                  ; $643C: $36 $0E
    db $E4                                        ; $643E: $E4
    ld h, d                                       ; $643F: $62
    inc h                                         ; $6440: $24
    rlca                                          ; $6441: $07
    db $E4                                        ; $6442: $E4
    ld b, c                                       ; $6443: $41
    ld hl, $E407                                  ; $6444: $21 $07 $E4
    ld [hl], c                                    ; $6447: $71
    ld [hl], $07                                  ; $6448: $36 $07
    db $E4                                        ; $644A: $E4
    ld h, d                                       ; $644B: $62
    inc h                                         ; $644C: $24
    rlca                                          ; $644D: $07
    db $E4                                        ; $644E: $E4
    ld d, e                                       ; $644F: $53
    ld de, $E407                                  ; $6450: $11 $07 $E4
    ld [hl], c                                    ; $6453: $71
    ld [hl], $07                                  ; $6454: $36 $07
    db $E4                                        ; $6456: $E4
    ld [hl], c                                    ; $6457: $71
    ld [hl], $0E                                  ; $6458: $36 $0E
    db $E4                                        ; $645A: $E4
    ld h, d                                       ; $645B: $62
    inc h                                         ; $645C: $24
    rlca                                          ; $645D: $07
    db $E4                                        ; $645E: $E4
    ld b, c                                       ; $645F: $41
    ld hl, $E407                                  ; $6460: $21 $07 $E4
    ld [hl], c                                    ; $6463: $71
    ld [hl], $07                                  ; $6464: $36 $07
    db $E4                                        ; $6466: $E4
    ld b, c                                       ; $6467: $41
    ld hl, $E707                                  ; $6468: $21 $07 $E7
    nop                                           ; $646B: $00
    inc b                                         ; $646C: $04
    ld [hl], $64                                  ; $646D: $36 $64
    db $ED                                        ; $646F: $ED
    db $E4                                        ; $6470: $E4
    ld [hl], c                                    ; $6471: $71
    ld [hl], $07                                  ; $6472: $36 $07
    db $E4                                        ; $6474: $E4
    ld [hl], c                                    ; $6475: $71
    ld [hl], $07                                  ; $6476: $36 $07
    db $E4                                        ; $6478: $E4
    ld h, d                                       ; $6479: $62
    inc h                                         ; $647A: $24
    ld c, $E4                                     ; $647B: $0E $E4
    ld [hl], c                                    ; $647D: $71
    ld [hl], $07                                  ; $647E: $36 $07
    db $E4                                        ; $6480: $E4
    ld h, d                                       ; $6481: $62
    inc h                                         ; $6482: $24
    rlca                                          ; $6483: $07
    db $E4                                        ; $6484: $E4
    ld [hl], c                                    ; $6485: $71
    ld [hl], $05                                  ; $6486: $36 $05
    db $E4                                        ; $6488: $E4
    ld h, d                                       ; $6489: $62
    inc h                                         ; $648A: $24
    dec b                                         ; $648B: $05
    db $E4                                        ; $648C: $E4
    ld h, d                                       ; $648D: $62
    inc h                                         ; $648E: $24
    inc b                                         ; $648F: $04
    db $E4                                        ; $6490: $E4
    ld [hl], c                                    ; $6491: $71
    ld [hl], $07                                  ; $6492: $36 $07
    db $E4                                        ; $6494: $E4
    ld h, d                                       ; $6495: $62
    inc h                                         ; $6496: $24
    rlca                                          ; $6497: $07
    db $E4                                        ; $6498: $E4
    ld h, d                                       ; $6499: $62
    inc h                                         ; $649A: $24
    rlca                                          ; $649B: $07
    db $E4                                        ; $649C: $E4
    ld h, d                                       ; $649D: $62
    inc h                                         ; $649E: $24
    rlca                                          ; $649F: $07
    db $E4                                        ; $64A0: $E4
    ld h, d                                       ; $64A1: $62
    inc h                                         ; $64A2: $24
    rlca                                          ; $64A3: $07
    db $E4                                        ; $64A4: $E4
    ld h, d                                       ; $64A5: $62
    inc h                                         ; $64A6: $24
    rlca                                          ; $64A7: $07
    db $E4                                        ; $64A8: $E4
    ld h, d                                       ; $64A9: $62
    inc h                                         ; $64AA: $24
    rlca                                          ; $64AB: $07
    db $E4                                        ; $64AC: $E4
    ld h, d                                       ; $64AD: $62
    inc h                                         ; $64AE: $24
    rlca                                          ; $64AF: $07
    db $ED                                        ; $64B0: $ED
    db $E4                                        ; $64B1: $E4
    ld h, d                                       ; $64B2: $62
    inc h                                         ; $64B3: $24
    rlca                                          ; $64B4: $07
    db $E4                                        ; $64B5: $E4
    ld h, d                                       ; $64B6: $62
    inc h                                         ; $64B7: $24
    rlca                                          ; $64B8: $07
    db $E4                                        ; $64B9: $E4
    ld [hl], c                                    ; $64BA: $71
    ld [hl], $07                                  ; $64BB: $36 $07
    db $E4                                        ; $64BD: $E4
    ld h, d                                       ; $64BE: $62
    inc h                                         ; $64BF: $24
    dec d                                         ; $64C0: $15
    db $E4                                        ; $64C1: $E4
    ld h, d                                       ; $64C2: $62
    inc h                                         ; $64C3: $24
    rlca                                          ; $64C4: $07
    db $E4                                        ; $64C5: $E4
    ld h, d                                       ; $64C6: $62
    inc h                                         ; $64C7: $24
    rlca                                          ; $64C8: $07
    db $E4                                        ; $64C9: $E4
    ld [hl], c                                    ; $64CA: $71
    ld [hl], $07                                  ; $64CB: $36 $07
    db $E4                                        ; $64CD: $E4
    ld h, d                                       ; $64CE: $62
    inc h                                         ; $64CF: $24
    ld c, $E4                                     ; $64D0: $0E $E4
    ld [hl], c                                    ; $64D2: $71
    ld [hl], $07                                  ; $64D3: $36 $07
    db $E4                                        ; $64D5: $E4
    ld h, d                                       ; $64D6: $62
    inc h                                         ; $64D7: $24
    rlca                                          ; $64D8: $07
    db $E4                                        ; $64D9: $E4
    ld h, d                                       ; $64DA: $62
    inc h                                         ; $64DB: $24
    rlca                                          ; $64DC: $07
    db $E4                                        ; $64DD: $E4
    ld h, d                                       ; $64DE: $62
    inc h                                         ; $64DF: $24
    rlca                                          ; $64E0: $07
    db $E4                                        ; $64E1: $E4
    ld h, d                                       ; $64E2: $62
    inc h                                         ; $64E3: $24
    rlca                                          ; $64E4: $07
    db $ED                                        ; $64E5: $ED
    inc b                                         ; $64E6: $04
    add b                                         ; $64E7: $80
    inc de                                        ; $64E8: $13
    rst RST_38                                    ; $64E9: $FF
    ld h, h                                       ; $64EA: $64
    inc c                                         ; $64EB: $0C
    add c                                         ; $64EC: $81
    add b                                         ; $64ED: $80
    jr jr_02E_656E                                ; $64EE: $18 $7E

    ld h, a                                       ; $64F0: $67
    inc c                                         ; $64F1: $0C
    add c                                         ; $64F2: $81
    add b                                         ; $64F3: $80
    dec e                                         ; $64F4: $1D
    jp nz, Jump_000_0C69                          ; $64F5: $C2 $69 $0C

    add c                                         ; $64F8: $81
    add b                                         ; $64F9: $80
    ld [hl+], a                                   ; $64FA: $22
    add h                                         ; $64FB: $84
    ld l, e                                       ; $64FC: $6B
    nop                                           ; $64FD: $00
    add c                                         ; $64FE: $81
    db $E4                                        ; $64FF: $E4
    ld [hl], a                                    ; $6500: $77
    jp hl                                         ; $6501: $E9


    ld de, $C0EE                                  ; $6502: $11 $EE $C0
    and $F4                                       ; $6505: $E6 $F4
    db $EC                                        ; $6507: $EC
    ld h, a                                       ; $6508: $67
    ld h, l                                       ; $6509: $65
    and $0C                                       ; $650A: $E6 $0C
    xor $00                                       ; $650C: $EE $00
    db $EC                                        ; $650E: $EC
    cp c                                          ; $650F: $B9
    ld h, l                                       ; $6510: $65
    db $EC                                        ; $6511: $EC
    ld d, [hl]                                    ; $6512: $56
    ld h, [hl]                                    ; $6513: $66
    db $E4                                        ; $6514: $E4
    ld [hl], a                                    ; $6515: $77
    and c                                         ; $6516: $A1
    ld a, [bc]                                    ; $6517: $0A
    db $E4                                        ; $6518: $E4
    ld d, a                                       ; $6519: $57
    and c                                         ; $651A: $A1
    db $E4                                        ; $651B: $E4
    ld [hl], a                                    ; $651C: $77
    and d                                         ; $651D: $A2
    db $E4                                        ; $651E: $E4
    ld d, a                                       ; $651F: $57
    and d                                         ; $6520: $A2
    db $EC                                        ; $6521: $EC
    ld d, [hl]                                    ; $6522: $56
    ld h, [hl]                                    ; $6523: $66
    db $E4                                        ; $6524: $E4
    ld [hl], a                                    ; $6525: $77
    and c                                         ; $6526: $A1
    ld a, [bc]                                    ; $6527: $0A
    db $E4                                        ; $6528: $E4
    ld d, a                                       ; $6529: $57
    and c                                         ; $652A: $A1
    dec b                                         ; $652B: $05
    db $E4                                        ; $652C: $E4
    ld [hl], a                                    ; $652D: $77
    and d                                         ; $652E: $A2
    ld a, [bc]                                    ; $652F: $0A
    db $E4                                        ; $6530: $E4
    ld d, a                                       ; $6531: $57
    and d                                         ; $6532: $A2
    dec b                                         ; $6533: $05
    db $E4                                        ; $6534: $E4
    ld [hl], a                                    ; $6535: $77
    and h                                         ; $6536: $A4
    ld a, [bc]                                    ; $6537: $0A
    db $EC                                        ; $6538: $EC
    ld a, h                                       ; $6539: $7C
    ld h, [hl]                                    ; $653A: $66
    db $EC                                        ; $653B: $EC
    call nz, $E466                                ; $653C: $C4 $66 $E4
    scf                                           ; $653F: $37
    db $EC                                        ; $6540: $EC
    ld [hl], h                                    ; $6541: $74
    ld h, a                                       ; $6542: $67
    db $E4                                        ; $6543: $E4
    ld d, a                                       ; $6544: $57
    db $EC                                        ; $6545: $EC
    ld [hl], h                                    ; $6546: $74
    ld h, a                                       ; $6547: $67
    db $E4                                        ; $6548: $E4
    ld [hl], a                                    ; $6549: $77
    and c                                         ; $654A: $A1
    and b                                         ; $654B: $A0
    sbc h                                         ; $654C: $9C
    sbc d                                         ; $654D: $9A
    db $EC                                        ; $654E: $EC
    call nz, $E466                                ; $654F: $C4 $66 $E4
    ld d, a                                       ; $6552: $57
    add a                                         ; $6553: $87
    dec b                                         ; $6554: $05
    adc c                                         ; $6555: $89
    adc [hl]                                      ; $6556: $8E
    sub e                                         ; $6557: $93
    sub e                                         ; $6558: $93
    sub l                                         ; $6559: $95
    sbc d                                         ; $655A: $9A
    sbc a                                         ; $655B: $9F
    sbc h                                         ; $655C: $9C
    sbc c                                         ; $655D: $99
    sub l                                         ; $655E: $95
    sbc c                                         ; $655F: $99
    sub l                                         ; $6560: $95
    sub b                                         ; $6561: $90
    sub l                                         ; $6562: $95
    adc l                                         ; $6563: $8D
    push hl                                       ; $6564: $E5
    rst RST_38                                    ; $6565: $FF
    ld h, h                                       ; $6566: $64
    add b                                         ; $6567: $80
    ld a, [bc]                                    ; $6568: $0A
    sbc l                                         ; $6569: $9D
    add b                                         ; $656A: $80
    dec b                                         ; $656B: $05
    sbc l                                         ; $656C: $9D
    ld a, [bc]                                    ; $656D: $0A

jr_02E_656E:
    add b                                         ; $656E: $80
    dec b                                         ; $656F: $05
    sbc a                                         ; $6570: $9F
    ld a, [bc]                                    ; $6571: $0A
    add b                                         ; $6572: $80
    dec b                                         ; $6573: $05
    sbc a                                         ; $6574: $9F
    ld a, [bc]                                    ; $6575: $0A
    add b                                         ; $6576: $80
    dec b                                         ; $6577: $05
    sbc a                                         ; $6578: $9F
    ld a, [bc]                                    ; $6579: $0A
    add b                                         ; $657A: $80
    ld a, [bc]                                    ; $657B: $0A
    and c                                         ; $657C: $A1
    add b                                         ; $657D: $80
    dec b                                         ; $657E: $05
    and c                                         ; $657F: $A1
    ld a, [bc]                                    ; $6580: $0A
    add b                                         ; $6581: $80
    dec b                                         ; $6582: $05
    sbc a                                         ; $6583: $9F
    ld a, [bc]                                    ; $6584: $0A
    add b                                         ; $6585: $80
    dec b                                         ; $6586: $05
    sbc a                                         ; $6587: $9F
    ld a, [bc]                                    ; $6588: $0A
    add b                                         ; $6589: $80
    dec b                                         ; $658A: $05
    sbc a                                         ; $658B: $9F
    ld a, [bc]                                    ; $658C: $0A
    add b                                         ; $658D: $80
    ld a, [bc]                                    ; $658E: $0A
    and b                                         ; $658F: $A0
    add b                                         ; $6590: $80
    dec b                                         ; $6591: $05
    and b                                         ; $6592: $A0
    ld a, [bc]                                    ; $6593: $0A
    add b                                         ; $6594: $80
    dec b                                         ; $6595: $05
    and d                                         ; $6596: $A2
    ld a, [bc]                                    ; $6597: $0A
    add b                                         ; $6598: $80
    dec b                                         ; $6599: $05
    and d                                         ; $659A: $A2
    ld a, [bc]                                    ; $659B: $0A
    add b                                         ; $659C: $80
    dec b                                         ; $659D: $05
    and d                                         ; $659E: $A2
    ld a, [bc]                                    ; $659F: $0A

jr_02E_65A0:
    add b                                         ; $65A0: $80
    ld a, [bc]                                    ; $65A1: $0A
    and h                                         ; $65A2: $A4
    add b                                         ; $65A3: $80
    dec b                                         ; $65A4: $05
    and h                                         ; $65A5: $A4
    ld a, [bc]                                    ; $65A6: $0A
    add b                                         ; $65A7: $80
    dec b                                         ; $65A8: $05
    and d                                         ; $65A9: $A2
    ld a, [bc]                                    ; $65AA: $0A
    add b                                         ; $65AB: $80
    dec b                                         ; $65AC: $05
    and b                                         ; $65AD: $A0
    ld a, [bc]                                    ; $65AE: $0A
    add b                                         ; $65AF: $80
    dec b                                         ; $65B0: $05
    sbc a                                         ; $65B1: $9F
    ld a, [bc]                                    ; $65B2: $0A
    rst RST_20                                    ; $65B3: $E7
    nop                                           ; $65B4: $00
    ld [bc], a                                    ; $65B5: $02
    ld h, a                                       ; $65B6: $67
    ld h, l                                       ; $65B7: $65
    db $ED                                        ; $65B8: $ED
    sbc d                                         ; $65B9: $9A
    jr z, jr_02E_65A0                             ; $65BA: $28 $E4

    ld d, a                                       ; $65BC: $57
    sbc d                                         ; $65BD: $9A
    ld a, [bc]                                    ; $65BE: $0A
    db $E4                                        ; $65BF: $E4
    ld [hl], a                                    ; $65C0: $77
    sbc l                                         ; $65C1: $9D
    db $E4                                        ; $65C2: $E4
    ld d, a                                       ; $65C3: $57
    sbc l                                         ; $65C4: $9D
    db $E4                                        ; $65C5: $E4
    ld [hl], a                                    ; $65C6: $77
    sbc a                                         ; $65C7: $9F
    sbc h                                         ; $65C8: $9C
    dec b                                         ; $65C9: $05
    sbc d                                         ; $65CA: $9A
    pop af                                        ; $65CB: $F1
    sbc h                                         ; $65CC: $9C
    ld e, $E4                                     ; $65CD: $1E $E4
    ld d, a                                       ; $65CF: $57
    sbc h                                         ; $65D0: $9C
    ld a, [bc]                                    ; $65D1: $0A
    db $E4                                        ; $65D2: $E4
    ld [hl], a                                    ; $65D3: $77
    sbc d                                         ; $65D4: $9A
    inc d                                         ; $65D5: $14
    sbc b                                         ; $65D6: $98
    ld a, [bc]                                    ; $65D7: $0A
    sbc d                                         ; $65D8: $9A
    ld a, [bc]                                    ; $65D9: $0A
    db $E4                                        ; $65DA: $E4
    ld d, a                                       ; $65DB: $57
    sbc d                                         ; $65DC: $9A
    dec b                                         ; $65DD: $05
    db $E4                                        ; $65DE: $E4
    ld [hl], a                                    ; $65DF: $77
    sbc a                                         ; $65E0: $9F
    ld a, [bc]                                    ; $65E1: $0A
    db $E4                                        ; $65E2: $E4
    ld d, a                                       ; $65E3: $57
    sbc a                                         ; $65E4: $9F
    dec b                                         ; $65E5: $05
    db $E4                                        ; $65E6: $E4
    ld [hl], a                                    ; $65E7: $77
    and d                                         ; $65E8: $A2
    ld a, [bc]                                    ; $65E9: $0A
    and h                                         ; $65EA: $A4
    ld a, [bc]                                    ; $65EB: $0A
    db $E4                                        ; $65EC: $E4
    ld d, a                                       ; $65ED: $57
    and h                                         ; $65EE: $A4
    dec b                                         ; $65EF: $05

jr_02E_65F0:
    db $E4                                        ; $65F0: $E4
    ld [hl], a                                    ; $65F1: $77
    and d                                         ; $65F2: $A2
    ld a, [bc]                                    ; $65F3: $0A
    db $E4                                        ; $65F4: $E4
    ld d, a                                       ; $65F5: $57
    and d                                         ; $65F6: $A2
    dec b                                         ; $65F7: $05
    db $E4                                        ; $65F8: $E4
    ld [hl], a                                    ; $65F9: $77
    and c                                         ; $65FA: $A1
    ld a, [bc]                                    ; $65FB: $0A
    and d                                         ; $65FC: $A2
    and c                                         ; $65FD: $A1
    dec b                                         ; $65FE: $05
    pop af                                        ; $65FF: $F1
    sbc a                                         ; $6600: $9F
    ld e, $80                                     ; $6601: $1E $80
    dec b                                         ; $6603: $05
    sbc a                                         ; $6604: $9F
    inc d                                         ; $6605: $14
    and c                                         ; $6606: $A1
    ld a, [bc]                                    ; $6607: $0A
    pop af                                        ; $6608: $F1
    and d                                         ; $6609: $A2
    jr z, jr_02E_65F0                             ; $660A: $28 $E4

    ld b, a                                       ; $660C: $47
    and d                                         ; $660D: $A2
    ld a, [bc]                                    ; $660E: $0A
    db $E4                                        ; $660F: $E4
    ld [hl], a                                    ; $6610: $77
    and d                                         ; $6611: $A2
    and c                                         ; $6612: $A1
    and d                                         ; $6613: $A2
    and c                                         ; $6614: $A1
    inc d                                         ; $6615: $14
    sbc l                                         ; $6616: $9D
    ld a, [bc]                                    ; $6617: $0A
    sbc d                                         ; $6618: $9A
    inc d                                         ; $6619: $14
    sub [hl]                                      ; $661A: $96
    db $E4                                        ; $661B: $E4
    ld b, a                                       ; $661C: $47
    sub [hl]                                      ; $661D: $96
    ld a, [bc]                                    ; $661E: $0A
    db $E4                                        ; $661F: $E4
    ld [hl], a                                    ; $6620: $77
    sbc b                                         ; $6621: $98
    ld e, $E4                                     ; $6622: $1E $E4
    ld d, a                                       ; $6624: $57
    sbc b                                         ; $6625: $98
    ld a, [bc]                                    ; $6626: $0A
    db $E4                                        ; $6627: $E4
    ld [hl], a                                    ; $6628: $77
    sbc b                                         ; $6629: $98
    ld a, [bc]                                    ; $662A: $0A
    db $E4                                        ; $662B: $E4
    ld d, a                                       ; $662C: $57
    sbc b                                         ; $662D: $98
    dec b                                         ; $662E: $05
    db $E4                                        ; $662F: $E4
    ld [hl], a                                    ; $6630: $77
    sbc d                                         ; $6631: $9A
    ld a, [bc]                                    ; $6632: $0A
    db $E4                                        ; $6633: $E4
    ld d, a                                       ; $6634: $57
    sbc d                                         ; $6635: $9A
    dec b                                         ; $6636: $05
    db $E4                                        ; $6637: $E4
    ld [hl], a                                    ; $6638: $77
    sbc e                                         ; $6639: $9B
    ld a, [bc]                                    ; $663A: $0A
    sbc d                                         ; $663B: $9A
    ld e, $E4                                     ; $663C: $1E $E4
    ld d, a                                       ; $663E: $57
    sbc d                                         ; $663F: $9A
    ld a, [bc]                                    ; $6640: $0A
    db $E4                                        ; $6641: $E4
    ld [hl], a                                    ; $6642: $77
    sbc d                                         ; $6643: $9A
    ld a, [bc]                                    ; $6644: $0A
    db $E4                                        ; $6645: $E4
    ld d, a                                       ; $6646: $57
    sbc d                                         ; $6647: $9A
    dec b                                         ; $6648: $05
    db $E4                                        ; $6649: $E4
    ld [hl], a                                    ; $664A: $77
    sbc h                                         ; $664B: $9C
    ld a, [bc]                                    ; $664C: $0A
    db $E4                                        ; $664D: $E4
    ld d, a                                       ; $664E: $57
    sbc h                                         ; $664F: $9C
    dec b                                         ; $6650: $05
    db $E4                                        ; $6651: $E4
    ld [hl], a                                    ; $6652: $77
    sbc [hl]                                      ; $6653: $9E
    ld a, [bc]                                    ; $6654: $0A
    db $ED                                        ; $6655: $ED
    db $E4                                        ; $6656: $E4
    ld [hl], a                                    ; $6657: $77
    and c                                         ; $6658: $A1
    ld a, [bc]                                    ; $6659: $0A
    db $E4                                        ; $665A: $E4
    scf                                           ; $665B: $37
    and c                                         ; $665C: $A1
    db $E4                                        ; $665D: $E4
    ld [hl], a                                    ; $665E: $77
    sbc a                                         ; $665F: $9F
    db $E4                                        ; $6660: $E4
    scf                                           ; $6661: $37
    sbc a                                         ; $6662: $9F
    db $E4                                        ; $6663: $E4
    ld [hl], a                                    ; $6664: $77
    and c                                         ; $6665: $A1
    db $E4                                        ; $6666: $E4
    scf                                           ; $6667: $37
    and c                                         ; $6668: $A1
    db $E4                                        ; $6669: $E4
    ld [hl], a                                    ; $666A: $77
    sbc a                                         ; $666B: $9F
    db $E4                                        ; $666C: $E4
    ld [hl], a                                    ; $666D: $77
    and c                                         ; $666E: $A1
    db $E4                                        ; $666F: $E4
    ld b, a                                       ; $6670: $47
    and c                                         ; $6671: $A1
    db $E4                                        ; $6672: $E4
    daa                                           ; $6673: $27
    and c                                         ; $6674: $A1
    db $E4                                        ; $6675: $E4
    ld [hl], a                                    ; $6676: $77
    sbc a                                         ; $6677: $9F
    db $E4                                        ; $6678: $E4
    scf                                           ; $6679: $37
    sbc a                                         ; $667A: $9F
    db $ED                                        ; $667B: $ED
    db $E4                                        ; $667C: $E4
    ld [hl], a                                    ; $667D: $77
    and [hl]                                      ; $667E: $A6
    ld a, [bc]                                    ; $667F: $0A
    db $E4                                        ; $6680: $E4
    scf                                           ; $6681: $37
    and [hl]                                      ; $6682: $A6
    db $E4                                        ; $6683: $E4
    ld [hl], a                                    ; $6684: $77
    and h                                         ; $6685: $A4
    db $E4                                        ; $6686: $E4
    scf                                           ; $6687: $37
    and h                                         ; $6688: $A4
    db $E4                                        ; $6689: $E4
    ld [hl], a                                    ; $668A: $77
    and [hl]                                      ; $668B: $A6
    db $E4                                        ; $668C: $E4
    scf                                           ; $668D: $37
    and [hl]                                      ; $668E: $A6
    db $E4                                        ; $668F: $E4
    ld [hl], a                                    ; $6690: $77
    and h                                         ; $6691: $A4
    db $E4                                        ; $6692: $E4
    ld [hl], a                                    ; $6693: $77
    and [hl]                                      ; $6694: $A6
    db $E4                                        ; $6695: $E4
    ld b, a                                       ; $6696: $47
    and [hl]                                      ; $6697: $A6
    db $E4                                        ; $6698: $E4
    daa                                           ; $6699: $27
    and [hl]                                      ; $669A: $A6
    db $E4                                        ; $669B: $E4
    ld [hl], a                                    ; $669C: $77
    and h                                         ; $669D: $A4
    db $E4                                        ; $669E: $E4
    scf                                           ; $669F: $37
    and h                                         ; $66A0: $A4
    db $E4                                        ; $66A1: $E4
    ld [hl], a                                    ; $66A2: $77
    and [hl]                                      ; $66A3: $A6
    db $E4                                        ; $66A4: $E4
    scf                                           ; $66A5: $37
    and [hl]                                      ; $66A6: $A6
    db $E4                                        ; $66A7: $E4
    ld [hl], a                                    ; $66A8: $77
    and a                                         ; $66A9: $A7
    db $E4                                        ; $66AA: $E4
    scf                                           ; $66AB: $37
    and a                                         ; $66AC: $A7
    db $E4                                        ; $66AD: $E4
    ld [hl], a                                    ; $66AE: $77
    pop af                                        ; $66AF: $F1
    and [hl]                                      ; $66B0: $A6
    ld d, b                                       ; $66B1: $50
    sub a                                         ; $66B2: $97
    dec b                                         ; $66B3: $05
    sub h                                         ; $66B4: $94
    sub b                                         ; $66B5: $90
    sbc h                                         ; $66B6: $9C
    sub a                                         ; $66B7: $97
    sub h                                         ; $66B8: $94
    and b                                         ; $66B9: $A0
    sbc h                                         ; $66BA: $9C
    sub a                                         ; $66BB: $97
    and e                                         ; $66BC: $A3
    and b                                         ; $66BD: $A0
    sbc h                                         ; $66BE: $9C
    xor b                                         ; $66BF: $A8
    and e                                         ; $66C0: $A3
    and b                                         ; $66C1: $A0
    sbc h                                         ; $66C2: $9C
    db $ED                                        ; $66C3: $ED
    db $E4                                        ; $66C4: $E4
    ld [hl], a                                    ; $66C5: $77
    sbc a                                         ; $66C6: $9F
    ld a, [bc]                                    ; $66C7: $0A
    db $E4                                        ; $66C8: $E4
    ld d, a                                       ; $66C9: $57
    sbc a                                         ; $66CA: $9F
    db $E4                                        ; $66CB: $E4
    ld [hl], a                                    ; $66CC: $77
    sbc l                                         ; $66CD: $9D
    db $E4                                        ; $66CE: $E4
    ld d, a                                       ; $66CF: $57
    sbc l                                         ; $66D0: $9D
    db $E4                                        ; $66D1: $E4
    ld [hl], a                                    ; $66D2: $77
    sbc h                                         ; $66D3: $9C
    db $E4                                        ; $66D4: $E4
    ld d, a                                       ; $66D5: $57
    sbc h                                         ; $66D6: $9C
    db $E4                                        ; $66D7: $E4
    ld [hl], a                                    ; $66D8: $77
    sbc b                                         ; $66D9: $98
    sbc a                                         ; $66DA: $9F
    db $E4                                        ; $66DB: $E4
    ld d, a                                       ; $66DC: $57
    sbc a                                         ; $66DD: $9F
    db $E4                                        ; $66DE: $E4
    ld [hl], a                                    ; $66DF: $77
    sbc a                                         ; $66E0: $9F
    sbc l                                         ; $66E1: $9D
    db $E4                                        ; $66E2: $E4
    ld d, a                                       ; $66E3: $57
    sbc l                                         ; $66E4: $9D
    db $E4                                        ; $66E5: $E4
    ld [hl], a                                    ; $66E6: $77
    sbc h                                         ; $66E7: $9C
    db $E4                                        ; $66E8: $E4
    ld d, a                                       ; $66E9: $57
    sbc h                                         ; $66EA: $9C
    db $E4                                        ; $66EB: $E4
    ld [hl], a                                    ; $66EC: $77
    sbc b                                         ; $66ED: $98
    db $E4                                        ; $66EE: $E4
    ld d, a                                       ; $66EF: $57
    sbc b                                         ; $66F0: $98
    db $E4                                        ; $66F1: $E4
    ld [hl], a                                    ; $66F2: $77
    sbc d                                         ; $66F3: $9A
    ld a, [bc]                                    ; $66F4: $0A
    db $E4                                        ; $66F5: $E4
    ld d, a                                       ; $66F6: $57
    sbc d                                         ; $66F7: $9A
    dec b                                         ; $66F8: $05
    db $E4                                        ; $66F9: $E4
    ld [hl], a                                    ; $66FA: $77
    sbc h                                         ; $66FB: $9C
    ld a, [bc]                                    ; $66FC: $0A
    db $E4                                        ; $66FD: $E4
    ld d, a                                       ; $66FE: $57
    sbc h                                         ; $66FF: $9C
    dec b                                         ; $6700: $05
    db $E4                                        ; $6701: $E4
    ld [hl], a                                    ; $6702: $77
    sbc b                                         ; $6703: $98
    ld a, [bc]                                    ; $6704: $0A
    sbc d                                         ; $6705: $9A
    db $E4                                        ; $6706: $E4
    ld d, a                                       ; $6707: $57
    sbc d                                         ; $6708: $9A
    dec b                                         ; $6709: $05
    db $E4                                        ; $670A: $E4
    ld [hl], a                                    ; $670B: $77
    sbc h                                         ; $670C: $9C
    ld a, [bc]                                    ; $670D: $0A
    db $E4                                        ; $670E: $E4
    ld d, a                                       ; $670F: $57
    sbc h                                         ; $6710: $9C
    dec b                                         ; $6711: $05
    db $E4                                        ; $6712: $E4
    ld [hl], a                                    ; $6713: $77
    sbc b                                         ; $6714: $98
    ld a, [bc]                                    ; $6715: $0A
    sbc d                                         ; $6716: $9A
    db $E4                                        ; $6717: $E4
    ld d, a                                       ; $6718: $57
    sbc d                                         ; $6719: $9A
    dec b                                         ; $671A: $05
    db $E4                                        ; $671B: $E4
    ld [hl], a                                    ; $671C: $77
    sbc h                                         ; $671D: $9C
    ld a, [bc]                                    ; $671E: $0A
    db $E4                                        ; $671F: $E4
    ld d, a                                       ; $6720: $57
    sbc h                                         ; $6721: $9C
    dec b                                         ; $6722: $05
    db $E4                                        ; $6723: $E4
    ld [hl], a                                    ; $6724: $77
    sbc b                                         ; $6725: $98
    ld a, [bc]                                    ; $6726: $0A
    db $E4                                        ; $6727: $E4
    ld [hl], a                                    ; $6728: $77
    sbc d                                         ; $6729: $9A
    db $E4                                        ; $672A: $E4
    ld d, a                                       ; $672B: $57
    sbc d                                         ; $672C: $9A
    db $E4                                        ; $672D: $E4
    ld [hl], a                                    ; $672E: $77
    sbc b                                         ; $672F: $98
    db $E4                                        ; $6730: $E4
    ld d, a                                       ; $6731: $57
    sbc b                                         ; $6732: $98
    db $E4                                        ; $6733: $E4
    ld [hl], a                                    ; $6734: $77
    sbc a                                         ; $6735: $9F
    db $E4                                        ; $6736: $E4
    ld d, a                                       ; $6737: $57
    sbc a                                         ; $6738: $9F
    db $E4                                        ; $6739: $E4
    ld [hl], a                                    ; $673A: $77
    sbc l                                         ; $673B: $9D
    db $E4                                        ; $673C: $E4
    ld d, a                                       ; $673D: $57
    sbc l                                         ; $673E: $9D
    db $E4                                        ; $673F: $E4
    ld [hl], a                                    ; $6740: $77
    sbc h                                         ; $6741: $9C
    db $E4                                        ; $6742: $E4
    ld d, a                                       ; $6743: $57
    sbc h                                         ; $6744: $9C
    db $E4                                        ; $6745: $E4
    ld [hl], a                                    ; $6746: $77
    sbc b                                         ; $6747: $98
    db $E4                                        ; $6748: $E4
    ld [hl], a                                    ; $6749: $77
    sbc a                                         ; $674A: $9F
    db $E4                                        ; $674B: $E4
    ld d, a                                       ; $674C: $57
    sbc a                                         ; $674D: $9F
    db $E4                                        ; $674E: $E4
    ld [hl], a                                    ; $674F: $77
    sbc a                                         ; $6750: $9F
    db $E4                                        ; $6751: $E4
    ld [hl], a                                    ; $6752: $77
    and c                                         ; $6753: $A1

jr_02E_6754:
    db $E4                                        ; $6754: $E4
    ld d, a                                       ; $6755: $57
    and c                                         ; $6756: $A1
    db $E4                                        ; $6757: $E4
    ld [hl], a                                    ; $6758: $77
    and e                                         ; $6759: $A3
    db $E4                                        ; $675A: $E4
    ld d, a                                       ; $675B: $57
    and e                                         ; $675C: $A3
    db $E4                                        ; $675D: $E4
    ld [hl], a                                    ; $675E: $77
    and h                                         ; $675F: $A4
    db $E4                                        ; $6760: $E4
    ld d, a                                       ; $6761: $57
    and h                                         ; $6762: $A4
    db $E4                                        ; $6763: $E4
    ld [hl], a                                    ; $6764: $77
    and e                                         ; $6765: $A3
    inc d                                         ; $6766: $14
    db $E4                                        ; $6767: $E4
    ld d, a                                       ; $6768: $57
    and e                                         ; $6769: $A3
    ld a, [bc]                                    ; $676A: $0A
    db $E4                                        ; $676B: $E4
    ld [hl], a                                    ; $676C: $77
    and c                                         ; $676D: $A1
    jr z, jr_02E_6754                             ; $676E: $28 $E4

    ld d, a                                       ; $6770: $57
    and c                                         ; $6771: $A1
    ld a, [bc]                                    ; $6772: $0A
    db $ED                                        ; $6773: $ED
    and c                                         ; $6774: $A1
    dec b                                         ; $6775: $05
    and b                                         ; $6776: $A0
    sbc h                                         ; $6777: $9C
    rst RST_20                                    ; $6778: $E7
    nop                                           ; $6779: $00
    ld [bc], a                                    ; $677A: $02
    ld [hl], h                                    ; $677B: $74
    ld h, a                                       ; $677C: $67
    db $ED                                        ; $677D: $ED
    db $E4                                        ; $677E: $E4
    ld d, a                                       ; $677F: $57
    jp hl                                         ; $6780: $E9


    ld [hl+], a                                   ; $6781: $22
    xor $40                                       ; $6782: $EE $40
    and $F4                                       ; $6784: $E6 $F4
    db $EC                                        ; $6786: $EC
    dec bc                                        ; $6787: $0B
    ld l, b                                       ; $6788: $68
    and $0C                                       ; $6789: $E6 $0C
    db $EC                                        ; $678B: $EC
    ld e, l                                       ; $678C: $5D
    ld l, b                                       ; $678D: $68
    db $E4                                        ; $678E: $E4
    ld d, a                                       ; $678F: $57
    and $F4                                       ; $6790: $E6 $F4
    db $EC                                        ; $6792: $EC
    push af                                       ; $6793: $F5
    ld l, b                                       ; $6794: $68
    db $EC                                        ; $6795: $EC
    halt                                          ; $6796: $76
    ld l, c                                       ; $6797: $69
    db $EC                                        ; $6798: $EC
    sub a                                         ; $6799: $97
    ld l, c                                       ; $679A: $69
    db $EC                                        ; $679B: $EC
    halt                                          ; $679C: $76
    ld l, c                                       ; $679D: $69
    sub l                                         ; $679E: $95
    sbc d                                         ; $679F: $9A
    sbc h                                         ; $67A0: $9C
    sbc d                                         ; $67A1: $9A
    sbc h                                         ; $67A2: $9C
    and c                                         ; $67A3: $A1
    sbc h                                         ; $67A4: $9C
    and c                                         ; $67A5: $A1
    and [hl]                                      ; $67A6: $A6
    and l                                         ; $67A7: $A5
    and c                                         ; $67A8: $A1
    sbc h                                         ; $67A9: $9C
    and c                                         ; $67AA: $A1
    sbc h                                         ; $67AB: $9C
    sbc c                                         ; $67AC: $99
    sub l                                         ; $67AD: $95
    db $E4                                        ; $67AE: $E4
    scf                                           ; $67AF: $37
    db $EC                                        ; $67B0: $EC
    cp b                                          ; $67B1: $B8
    ld l, c                                       ; $67B2: $69
    db $E4                                        ; $67B3: $E4
    ld d, a                                       ; $67B4: $57
    db $EC                                        ; $67B5: $EC
    cp b                                          ; $67B6: $B8
    ld l, c                                       ; $67B7: $69
    db $E4                                        ; $67B8: $E4
    ld [hl], a                                    ; $67B9: $77
    sbc c                                         ; $67BA: $99
    sub a                                         ; $67BB: $97
    sub l                                         ; $67BC: $95
    sub e                                         ; $67BD: $93
    db $E4                                        ; $67BE: $E4
    ld d, a                                       ; $67BF: $57
    db $EC                                        ; $67C0: $EC
    halt                                          ; $67C1: $76
    ld l, c                                       ; $67C2: $69
    db $EC                                        ; $67C3: $EC
    sub a                                         ; $67C4: $97
    ld l, c                                       ; $67C5: $69
    sub c                                         ; $67C6: $91
    add b                                         ; $67C7: $80
    sbc b                                         ; $67C8: $98
    add b                                         ; $67C9: $80
    sub a                                         ; $67CA: $97
    add b                                         ; $67CB: $80
    sbc b                                         ; $67CC: $98
    sbc d                                         ; $67CD: $9A
    add b                                         ; $67CE: $80
    sbc d                                         ; $67CF: $9A
    sbc b                                         ; $67D0: $98
    add b                                         ; $67D1: $80
    sub a                                         ; $67D2: $97
    add b                                         ; $67D3: $80
    sbc b                                         ; $67D4: $98
    add b                                         ; $67D5: $80
    sub e                                         ; $67D6: $93
    add b                                         ; $67D7: $80
    sbc d                                         ; $67D8: $9A
    add b                                         ; $67D9: $80
    sub a                                         ; $67DA: $97
    add b                                         ; $67DB: $80
    sbc d                                         ; $67DC: $9A
    sbc h                                         ; $67DD: $9C
    add b                                         ; $67DE: $80
    sbc h                                         ; $67DF: $9C
    sbc d                                         ; $67E0: $9A
    add b                                         ; $67E1: $80
    sub a                                         ; $67E2: $97
    add b                                         ; $67E3: $80
    sbc d                                         ; $67E4: $9A
    add b                                         ; $67E5: $80
    sub l                                         ; $67E6: $95
    add b                                         ; $67E7: $80
    sbc h                                         ; $67E8: $9C
    add b                                         ; $67E9: $80
    sbc d                                         ; $67EA: $9A
    add b                                         ; $67EB: $80
    sbc h                                         ; $67EC: $9C
    sbc l                                         ; $67ED: $9D
    add b                                         ; $67EE: $80
    sbc l                                         ; $67EF: $9D
    sbc h                                         ; $67F0: $9C
    add b                                         ; $67F1: $80
    sbc d                                         ; $67F2: $9A
    add b                                         ; $67F3: $80
    sbc h                                         ; $67F4: $9C
    add b                                         ; $67F5: $80
    sub a                                         ; $67F6: $97
    add b                                         ; $67F7: $80
    sbc a                                         ; $67F8: $9F
    add b                                         ; $67F9: $80
    sbc d                                         ; $67FA: $9A
    add b                                         ; $67FB: $80
    sbc a                                         ; $67FC: $9F
    and c                                         ; $67FD: $A1
    and l                                         ; $67FE: $A5
    and c                                         ; $67FF: $A1
    sbc h                                         ; $6800: $9C
    and c                                         ; $6801: $A1
    sbc h                                         ; $6802: $9C
    sbc c                                         ; $6803: $99
    sbc h                                         ; $6804: $9C
    sub l                                         ; $6805: $95
    and $0C                                       ; $6806: $E6 $0C
    push hl                                       ; $6808: $E5
    ld a, [hl]                                    ; $6809: $7E
    ld h, a                                       ; $680A: $67
    sub e                                         ; $680B: $93
    ld a, [bc]                                    ; $680C: $0A
    sbc d                                         ; $680D: $9A
    sub e                                         ; $680E: $93
    dec b                                         ; $680F: $05
    sbc d                                         ; $6810: $9A
    ld a, [bc]                                    ; $6811: $0A
    sub e                                         ; $6812: $93
    dec b                                         ; $6813: $05
    sbc h                                         ; $6814: $9C
    ld a, [bc]                                    ; $6815: $0A
    sub e                                         ; $6816: $93
    dec b                                         ; $6817: $05
    sbc h                                         ; $6818: $9C
    ld a, [bc]                                    ; $6819: $0A
    sub e                                         ; $681A: $93
    dec b                                         ; $681B: $05
    sbc h                                         ; $681C: $9C
    ld a, [bc]                                    ; $681D: $0A
    sub e                                         ; $681E: $93
    ld a, [bc]                                    ; $681F: $0A
    sbc l                                         ; $6820: $9D
    sub e                                         ; $6821: $93
    dec b                                         ; $6822: $05
    sbc l                                         ; $6823: $9D
    ld a, [bc]                                    ; $6824: $0A
    sub e                                         ; $6825: $93
    dec b                                         ; $6826: $05
    sbc h                                         ; $6827: $9C
    ld a, [bc]                                    ; $6828: $0A
    sub e                                         ; $6829: $93
    dec b                                         ; $682A: $05
    sbc h                                         ; $682B: $9C
    ld a, [bc]                                    ; $682C: $0A
    sub e                                         ; $682D: $93
    dec b                                         ; $682E: $05
    sbc h                                         ; $682F: $9C
    ld a, [bc]                                    ; $6830: $0A
    sub [hl]                                      ; $6831: $96
    ld a, [bc]                                    ; $6832: $0A
    sbc l                                         ; $6833: $9D
    sub [hl]                                      ; $6834: $96
    dec b                                         ; $6835: $05
    sbc l                                         ; $6836: $9D
    ld a, [bc]                                    ; $6837: $0A
    sub [hl]                                      ; $6838: $96
    dec b                                         ; $6839: $05
    sbc a                                         ; $683A: $9F
    ld a, [bc]                                    ; $683B: $0A
    sub [hl]                                      ; $683C: $96
    dec b                                         ; $683D: $05
    sbc a                                         ; $683E: $9F
    ld a, [bc]                                    ; $683F: $0A
    sub [hl]                                      ; $6840: $96
    dec b                                         ; $6841: $05
    sbc a                                         ; $6842: $9F
    ld a, [bc]                                    ; $6843: $0A

jr_02E_6844:
    sub [hl]                                      ; $6844: $96
    ld a, [bc]                                    ; $6845: $0A
    and b                                         ; $6846: $A0
    sub [hl]                                      ; $6847: $96
    dec b                                         ; $6848: $05
    and b                                         ; $6849: $A0
    ld a, [bc]                                    ; $684A: $0A
    sub [hl]                                      ; $684B: $96
    dec b                                         ; $684C: $05
    sbc a                                         ; $684D: $9F
    ld a, [bc]                                    ; $684E: $0A
    sub [hl]                                      ; $684F: $96
    dec b                                         ; $6850: $05
    sbc l                                         ; $6851: $9D
    ld a, [bc]                                    ; $6852: $0A
    sub [hl]                                      ; $6853: $96
    dec b                                         ; $6854: $05
    sbc e                                         ; $6855: $9B
    ld a, [bc]                                    ; $6856: $0A
    rst RST_20                                    ; $6857: $E7
    nop                                           ; $6858: $00
    ld [bc], a                                    ; $6859: $02
    dec bc                                        ; $685A: $0B
    ld l, b                                       ; $685B: $68
    db $ED                                        ; $685C: $ED
    sub [hl]                                      ; $685D: $96
    jr z, jr_02E_6844                             ; $685E: $28 $E4

    scf                                           ; $6860: $37
    sub [hl]                                      ; $6861: $96
    ld a, [bc]                                    ; $6862: $0A
    db $E4                                        ; $6863: $E4
    ld [hl], a                                    ; $6864: $77
    sbc d                                         ; $6865: $9A
    db $E4                                        ; $6866: $E4
    scf                                           ; $6867: $37
    sbc d                                         ; $6868: $9A
    db $E4                                        ; $6869: $E4
    ld [hl], a                                    ; $686A: $77
    sbc h                                         ; $686B: $9C
    sbc b                                         ; $686C: $98
    dec b                                         ; $686D: $05
    sub [hl]                                      ; $686E: $96
    pop af                                        ; $686F: $F1
    sbc b                                         ; $6870: $98
    ld e, $E4                                     ; $6871: $1E $E4
    scf                                           ; $6873: $37
    sbc b                                         ; $6874: $98
    ld a, [bc]                                    ; $6875: $0A
    db $E4                                        ; $6876: $E4
    ld [hl], a                                    ; $6877: $77
    sub [hl]                                      ; $6878: $96
    inc d                                         ; $6879: $14
    sub l                                         ; $687A: $95
    ld a, [bc]                                    ; $687B: $0A
    sub [hl]                                      ; $687C: $96
    ld a, [bc]                                    ; $687D: $0A
    db $E4                                        ; $687E: $E4
    scf                                           ; $687F: $37
    sub [hl]                                      ; $6880: $96
    dec b                                         ; $6881: $05
    db $E4                                        ; $6882: $E4
    ld [hl], a                                    ; $6883: $77
    sbc d                                         ; $6884: $9A
    ld a, [bc]                                    ; $6885: $0A
    db $E4                                        ; $6886: $E4
    scf                                           ; $6887: $37
    sbc d                                         ; $6888: $9A
    dec b                                         ; $6889: $05
    db $E4                                        ; $688A: $E4
    ld [hl], a                                    ; $688B: $77
    sbc l                                         ; $688C: $9D
    ld a, [bc]                                    ; $688D: $0A
    sbc a                                         ; $688E: $9F
    ld a, [bc]                                    ; $688F: $0A
    db $E4                                        ; $6890: $E4
    scf                                           ; $6891: $37
    sbc a                                         ; $6892: $9F
    dec b                                         ; $6893: $05

jr_02E_6894:
    db $E4                                        ; $6894: $E4
    ld [hl], a                                    ; $6895: $77
    sbc l                                         ; $6896: $9D
    ld a, [bc]                                    ; $6897: $0A
    db $E4                                        ; $6898: $E4
    scf                                           ; $6899: $37
    sbc l                                         ; $689A: $9D
    dec b                                         ; $689B: $05
    db $E4                                        ; $689C: $E4
    ld [hl], a                                    ; $689D: $77
    sbc h                                         ; $689E: $9C
    ld a, [bc]                                    ; $689F: $0A
    sbc a                                         ; $68A0: $9F
    sbc l                                         ; $68A1: $9D
    dec b                                         ; $68A2: $05
    pop af                                        ; $68A3: $F1
    sbc h                                         ; $68A4: $9C
    ld e, $80                                     ; $68A5: $1E $80
    dec b                                         ; $68A7: $05
    sbc b                                         ; $68A8: $98
    inc d                                         ; $68A9: $14
    sbc d                                         ; $68AA: $9A
    ld a, [bc]                                    ; $68AB: $0A
    pop af                                        ; $68AC: $F1
    sbc e                                         ; $68AD: $9B
    jr z, jr_02E_6894                             ; $68AE: $28 $E4

    scf                                           ; $68B0: $37
    sbc e                                         ; $68B1: $9B
    ld a, [bc]                                    ; $68B2: $0A
    db $E4                                        ; $68B3: $E4
    ld [hl], a                                    ; $68B4: $77
    sbc e                                         ; $68B5: $9B
    sbc d                                         ; $68B6: $9A
    sbc e                                         ; $68B7: $9B
    sbc l                                         ; $68B8: $9D
    inc d                                         ; $68B9: $14
    sbc d                                         ; $68BA: $9A
    ld a, [bc]                                    ; $68BB: $0A
    sub [hl]                                      ; $68BC: $96
    inc d                                         ; $68BD: $14
    sub c                                         ; $68BE: $91
    db $E4                                        ; $68BF: $E4
    scf                                           ; $68C0: $37
    sub c                                         ; $68C1: $91
    ld a, [bc]                                    ; $68C2: $0A
    db $E4                                        ; $68C3: $E4
    ld [hl], a                                    ; $68C4: $77
    sub l                                         ; $68C5: $95
    ld e, $E4                                     ; $68C6: $1E $E4
    ld d, a                                       ; $68C8: $57
    sub l                                         ; $68C9: $95
    ld a, [bc]                                    ; $68CA: $0A
    db $E4                                        ; $68CB: $E4
    ld [hl], a                                    ; $68CC: $77
    sub l                                         ; $68CD: $95
    ld a, [bc]                                    ; $68CE: $0A
    db $E4                                        ; $68CF: $E4
    ld d, a                                       ; $68D0: $57
    sub l                                         ; $68D1: $95
    dec b                                         ; $68D2: $05
    db $E4                                        ; $68D3: $E4
    ld [hl], a                                    ; $68D4: $77
    sub [hl]                                      ; $68D5: $96
    ld a, [bc]                                    ; $68D6: $0A
    db $E4                                        ; $68D7: $E4
    ld d, a                                       ; $68D8: $57
    sub [hl]                                      ; $68D9: $96
    dec b                                         ; $68DA: $05
    db $E4                                        ; $68DB: $E4
    ld [hl], a                                    ; $68DC: $77
    sbc b                                         ; $68DD: $98
    db $E4                                        ; $68DE: $E4
    ld d, a                                       ; $68DF: $57
    sbc b                                         ; $68E0: $98
    db $E4                                        ; $68E1: $E4
    ld [hl], a                                    ; $68E2: $77
    sub l                                         ; $68E3: $95
    ld e, $E4                                     ; $68E4: $1E $E4
    ld d, a                                       ; $68E6: $57
    sub l                                         ; $68E7: $95
    ld a, [bc]                                    ; $68E8: $0A
    db $E4                                        ; $68E9: $E4
    ld [hl], a                                    ; $68EA: $77
    sub l                                         ; $68EB: $95
    dec b                                         ; $68EC: $05
    sub d                                         ; $68ED: $92
    sub l                                         ; $68EE: $95
    sbc b                                         ; $68EF: $98
    sub l                                         ; $68F0: $95
    sbc b                                         ; $68F1: $98
    sbc d                                         ; $68F2: $9A
    sub l                                         ; $68F3: $95
    db $ED                                        ; $68F4: $ED
    adc a                                         ; $68F5: $8F
    sub c                                         ; $68F6: $91
    sub e                                         ; $68F7: $93
    sub [hl]                                      ; $68F8: $96
    sbc e                                         ; $68F9: $9B
    sub [hl]                                      ; $68FA: $96
    sub e                                         ; $68FB: $93
    sbc a                                         ; $68FC: $9F
    sbc e                                         ; $68FD: $9B
    sub [hl]                                      ; $68FE: $96
    and d                                         ; $68FF: $A2
    sbc a                                         ; $6900: $9F
    sbc e                                         ; $6901: $9B
    and a                                         ; $6902: $A7
    and d                                         ; $6903: $A2
    sbc a                                         ; $6904: $9F
    and d                                         ; $6905: $A2
    sbc a                                         ; $6906: $9F
    sbc e                                         ; $6907: $9B
    sbc a                                         ; $6908: $9F
    sbc e                                         ; $6909: $9B
    sub [hl]                                      ; $690A: $96
    sbc e                                         ; $690B: $9B
    sub [hl]                                      ; $690C: $96
    sub e                                         ; $690D: $93
    sub [hl]                                      ; $690E: $96
    sub e                                         ; $690F: $93
    adc a                                         ; $6910: $8F
    sub e                                         ; $6911: $93
    adc a                                         ; $6912: $8F
    adc d                                         ; $6913: $8A
    adc a                                         ; $6914: $8F
    adc h                                         ; $6915: $8C
    adc [hl]                                      ; $6916: $8E
    adc a                                         ; $6917: $8F
    sub e                                         ; $6918: $93
    sbc b                                         ; $6919: $98
    sub e                                         ; $691A: $93
    adc a                                         ; $691B: $8F
    sbc e                                         ; $691C: $9B
    sbc b                                         ; $691D: $98
    sub e                                         ; $691E: $93
    sbc a                                         ; $691F: $9F
    sbc e                                         ; $6920: $9B
    sbc b                                         ; $6921: $98
    and h                                         ; $6922: $A4
    sbc a                                         ; $6923: $9F
    sbc e                                         ; $6924: $9B
    and h                                         ; $6925: $A4
    sbc a                                         ; $6926: $9F
    sbc e                                         ; $6927: $9B
    sbc a                                         ; $6928: $9F
    sbc e                                         ; $6929: $9B
    sbc b                                         ; $692A: $98
    sbc e                                         ; $692B: $9B
    sbc b                                         ; $692C: $98
    sub e                                         ; $692D: $93
    sbc b                                         ; $692E: $98
    sub e                                         ; $692F: $93
    adc a                                         ; $6930: $8F
    sub e                                         ; $6931: $93
    adc a                                         ; $6932: $8F
    adc h                                         ; $6933: $8C
    adc a                                         ; $6934: $8F
    adc b                                         ; $6935: $88
    adc d                                         ; $6936: $8A
    adc h                                         ; $6937: $8C
    adc a                                         ; $6938: $8F
    sub e                                         ; $6939: $93
    adc a                                         ; $693A: $8F
    adc h                                         ; $693B: $8C
    sbc b                                         ; $693C: $98
    sub h                                         ; $693D: $94
    adc a                                         ; $693E: $8F
    sbc e                                         ; $693F: $9B
    sbc b                                         ; $6940: $98
    sub h                                         ; $6941: $94
    sbc a                                         ; $6942: $9F
    sbc e                                         ; $6943: $9B
    sbc b                                         ; $6944: $98
    sbc e                                         ; $6945: $9B
    sbc b                                         ; $6946: $98
    sub h                                         ; $6947: $94
    sbc b                                         ; $6948: $98
    sub e                                         ; $6949: $93
    adc a                                         ; $694A: $8F
    sub h                                         ; $694B: $94
    adc a                                         ; $694C: $8F
    adc h                                         ; $694D: $8C
    sub e                                         ; $694E: $93
    adc a                                         ; $694F: $8F
    adc h                                         ; $6950: $8C
    adc b                                         ; $6951: $88
    adc d                                         ; $6952: $8A
    adc h                                         ; $6953: $8C
    adc a                                         ; $6954: $8F
    adc [hl]                                      ; $6955: $8E
    sub b                                         ; $6956: $90
    sub d                                         ; $6957: $92
    sub l                                         ; $6958: $95
    sbc d                                         ; $6959: $9A
    sub l                                         ; $695A: $95
    sub d                                         ; $695B: $92
    sbc [hl]                                      ; $695C: $9E
    sbc d                                         ; $695D: $9A
    sub l                                         ; $695E: $95
    and c                                         ; $695F: $A1
    sbc [hl]                                      ; $6960: $9E
    sbc d                                         ; $6961: $9A
    and [hl]                                      ; $6962: $A6
    and c                                         ; $6963: $A1
    sbc [hl]                                      ; $6964: $9E
    sub h                                         ; $6965: $94
    sub b                                         ; $6966: $90
    adc e                                         ; $6967: $8B
    sub a                                         ; $6968: $97
    sub h                                         ; $6969: $94
    sub b                                         ; $696A: $90
    sbc h                                         ; $696B: $9C
    sub a                                         ; $696C: $97
    sub h                                         ; $696D: $94
    and b                                         ; $696E: $A0
    sbc h                                         ; $696F: $9C
    sub a                                         ; $6970: $97
    and e                                         ; $6971: $A3
    and b                                         ; $6972: $A0
    sbc h                                         ; $6973: $9C
    sub a                                         ; $6974: $97
    db $ED                                        ; $6975: $ED
    sub l                                         ; $6976: $95
    add b                                         ; $6977: $80
    sbc h                                         ; $6978: $9C
    add b                                         ; $6979: $80
    sbc d                                         ; $697A: $9A
    add b                                         ; $697B: $80
    sbc h                                         ; $697C: $9C
    sbc l                                         ; $697D: $9D
    add b                                         ; $697E: $80
    sbc l                                         ; $697F: $9D
    sbc h                                         ; $6980: $9C
    add b                                         ; $6981: $80
    sbc d                                         ; $6982: $9A
    add b                                         ; $6983: $80
    sbc h                                         ; $6984: $9C
    add b                                         ; $6985: $80
    sub a                                         ; $6986: $97
    add b                                         ; $6987: $80
    sbc a                                         ; $6988: $9F
    add b                                         ; $6989: $80
    sbc d                                         ; $698A: $9A
    add b                                         ; $698B: $80
    sbc a                                         ; $698C: $9F
    and c                                         ; $698D: $A1
    add b                                         ; $698E: $80
    and c                                         ; $698F: $A1
    sbc a                                         ; $6990: $9F
    add b                                         ; $6991: $80
    sbc d                                         ; $6992: $9A
    add b                                         ; $6993: $80
    sbc a                                         ; $6994: $9F
    add b                                         ; $6995: $80
    db $ED                                        ; $6996: $ED
    sub l                                         ; $6997: $95
    sbc b                                         ; $6998: $98
    sbc h                                         ; $6999: $9C
    sbc b                                         ; $699A: $98
    and c                                         ; $699B: $A1
    sbc h                                         ; $699C: $9C
    sbc b                                         ; $699D: $98
    sub l                                         ; $699E: $95
    sub a                                         ; $699F: $97
    sbc d                                         ; $69A0: $9A
    sbc a                                         ; $69A1: $9F
    and e                                         ; $69A2: $A3
    and [hl]                                      ; $69A3: $A6
    and e                                         ; $69A4: $A3
    sbc a                                         ; $69A5: $9F
    sbc d                                         ; $69A6: $9A
    sbc b                                         ; $69A7: $98
    sbc h                                         ; $69A8: $9C
    sbc a                                         ; $69A9: $9F
    sbc h                                         ; $69AA: $9C
    and e                                         ; $69AB: $A3
    sbc h                                         ; $69AC: $9C
    sbc a                                         ; $69AD: $9F
    and e                                         ; $69AE: $A3
    sbc d                                         ; $69AF: $9A
    sbc [hl]                                      ; $69B0: $9E
    and c                                         ; $69B1: $A1
    and [hl]                                      ; $69B2: $A6
    xor d                                         ; $69B3: $AA
    and [hl]                                      ; $69B4: $A6
    and c                                         ; $69B5: $A1
    sbc [hl]                                      ; $69B6: $9E
    db $ED                                        ; $69B7: $ED
    sbc c                                         ; $69B8: $99
    dec b                                         ; $69B9: $05
    sub a                                         ; $69BA: $97
    sub h                                         ; $69BB: $94
    rst RST_20                                    ; $69BC: $E7
    nop                                           ; $69BD: $00
    ld [bc], a                                    ; $69BE: $02
    cp b                                          ; $69BF: $B8
    ld l, c                                       ; $69C0: $69
    db $ED                                        ; $69C1: $ED
    db $E4                                        ; $69C2: $E4
    ld b, b                                       ; $69C3: $40
    jp hl                                         ; $69C4: $E9


    ld b, h                                       ; $69C5: $44
    di                                            ; $69C6: $F3
    ld [bc], a                                    ; $69C7: $02
    push af                                       ; $69C8: $F5
    inc hl                                        ; $69C9: $23
    db $EC                                        ; $69CA: $EC
    pop af                                        ; $69CB: $F1
    ld l, d                                       ; $69CC: $6A
    db $EC                                        ; $69CD: $EC
    dec hl                                        ; $69CE: $2B
    ld l, e                                       ; $69CF: $6B
    add a                                         ; $69D0: $87
    add a                                         ; $69D1: $87
    sub c                                         ; $69D2: $91
    dec b                                         ; $69D3: $05
    sub b                                         ; $69D4: $90
    adc [hl]                                      ; $69D5: $8E
    sub b                                         ; $69D6: $90
    rrca                                          ; $69D7: $0F
    adc [hl]                                      ; $69D8: $8E
    ld a, [bc]                                    ; $69D9: $0A
    adc d                                         ; $69DA: $8A
    adc [hl]                                      ; $69DB: $8E
    db $EC                                        ; $69DC: $EC
    dec hl                                        ; $69DD: $2B
    ld l, e                                       ; $69DE: $6B
    adc h                                         ; $69DF: $8C
    adc h                                         ; $69E0: $8C
    sub e                                         ; $69E1: $93
    sub b                                         ; $69E2: $90
    dec b                                         ; $69E3: $05
    sub [hl]                                      ; $69E4: $96
    add b                                         ; $69E5: $80
    sub [hl]                                      ; $69E6: $96
    sub e                                         ; $69E7: $93
    ld a, [bc]                                    ; $69E8: $0A
    sub c                                         ; $69E9: $91
    dec b                                         ; $69EA: $05
    adc [hl]                                      ; $69EB: $8E
    rrca                                          ; $69EC: $0F
    adc a                                         ; $69ED: $8F
    ld a, [bc]                                    ; $69EE: $0A
    adc a                                         ; $69EF: $8F
    sub c                                         ; $69F0: $91
    adc a                                         ; $69F1: $8F
    dec b                                         ; $69F2: $05
    sub e                                         ; $69F3: $93
    add b                                         ; $69F4: $80
    sub e                                         ; $69F5: $93
    adc a                                         ; $69F6: $8F
    add b                                         ; $69F7: $80
    sub e                                         ; $69F8: $93
    ld a, [bc]                                    ; $69F9: $0A
    sub [hl]                                      ; $69FA: $96
    adc d                                         ; $69FB: $8A
    ld a, [bc]                                    ; $69FC: $0A
    adc d                                         ; $69FD: $8A
    adc h                                         ; $69FE: $8C
    adc d                                         ; $69FF: $8A
    dec b                                         ; $6A00: $05
    adc [hl]                                      ; $6A01: $8E
    add b                                         ; $6A02: $80
    adc [hl]                                      ; $6A03: $8E
    adc d                                         ; $6A04: $8A
    ld a, [bc]                                    ; $6A05: $0A
    adc a                                         ; $6A06: $8F
    sub c                                         ; $6A07: $91
    adc c                                         ; $6A08: $89
    ld a, [bc]                                    ; $6A09: $0A
    adc c                                         ; $6A0A: $89
    adc h                                         ; $6A0B: $8C
    adc c                                         ; $6A0C: $89
    dec b                                         ; $6A0D: $05
    adc a                                         ; $6A0E: $8F
    add b                                         ; $6A0F: $80
    adc a                                         ; $6A10: $8F
    adc h                                         ; $6A11: $8C
    add b                                         ; $6A12: $80
    adc a                                         ; $6A13: $8F
    ld a, [bc]                                    ; $6A14: $0A
    sub e                                         ; $6A15: $93
    adc [hl]                                      ; $6A16: $8E
    ld a, [bc]                                    ; $6A17: $0A
    adc [hl]                                      ; $6A18: $8E
    sub d                                         ; $6A19: $92
    adc [hl]                                      ; $6A1A: $8E
    dec b                                         ; $6A1B: $05
    sub l                                         ; $6A1C: $95
    add b                                         ; $6A1D: $80
    sub l                                         ; $6A1E: $95
    adc [hl]                                      ; $6A1F: $8E
    add b                                         ; $6A20: $80
    sbc b                                         ; $6A21: $98
    ld a, [bc]                                    ; $6A22: $0A
    sbc d                                         ; $6A23: $9A
    db $EC                                        ; $6A24: $EC
    add hl, sp                                    ; $6A25: $39
    ld l, e                                       ; $6A26: $6B
    add b                                         ; $6A27: $80
    adc a                                         ; $6A28: $8F
    adc [hl]                                      ; $6A29: $8E
    add b                                         ; $6A2A: $80
    adc a                                         ; $6A2B: $8F
    adc a                                         ; $6A2C: $8F
    add b                                         ; $6A2D: $80
    add b                                         ; $6A2E: $80
    db $EC                                        ; $6A2F: $EC
    add hl, sp                                    ; $6A30: $39
    ld l, e                                       ; $6A31: $6B
    add b                                         ; $6A32: $80
    adc a                                         ; $6A33: $8F
    sub c                                         ; $6A34: $91
    add b                                         ; $6A35: $80
    sub e                                         ; $6A36: $93
    ld a, [bc]                                    ; $6A37: $0A
    sub [hl]                                      ; $6A38: $96
    db $EC                                        ; $6A39: $EC
    ld b, c                                       ; $6A3A: $41
    ld l, e                                       ; $6A3B: $6B
    add b                                         ; $6A3C: $80
    adc h                                         ; $6A3D: $8C
    adc d                                         ; $6A3E: $8A
    add b                                         ; $6A3F: $80
    adc h                                         ; $6A40: $8C
    adc h                                         ; $6A41: $8C
    add b                                         ; $6A42: $80
    add b                                         ; $6A43: $80
    db $EC                                        ; $6A44: $EC
    ld b, c                                       ; $6A45: $41
    ld l, e                                       ; $6A46: $6B
    add b                                         ; $6A47: $80
    adc h                                         ; $6A48: $8C
    adc a                                         ; $6A49: $8F
    ld a, [bc]                                    ; $6A4A: $0A
    sub c                                         ; $6A4B: $91
    sub e                                         ; $6A4C: $93
    adc b                                         ; $6A4D: $88
    ld a, [bc]                                    ; $6A4E: $0A
    adc b                                         ; $6A4F: $88
    add a                                         ; $6A50: $87
    add b                                         ; $6A51: $80
    dec b                                         ; $6A52: $05
    adc b                                         ; $6A53: $88
    add b                                         ; $6A54: $80
    adc b                                         ; $6A55: $88
    add a                                         ; $6A56: $87
    add b                                         ; $6A57: $80
    adc b                                         ; $6A58: $88
    adc b                                         ; $6A59: $88
    add b                                         ; $6A5A: $80
    add b                                         ; $6A5B: $80
    adc b                                         ; $6A5C: $88
    ld a, [bc]                                    ; $6A5D: $0A
    adc b                                         ; $6A5E: $88
    adc d                                         ; $6A5F: $8A
    adc d                                         ; $6A60: $8A
    dec b                                         ; $6A61: $05
    adc h                                         ; $6A62: $8C
    add b                                         ; $6A63: $80
    adc h                                         ; $6A64: $8C
    add b                                         ; $6A65: $80
    adc h                                         ; $6A66: $8C
    adc [hl]                                      ; $6A67: $8E
    ld a, [bc]                                    ; $6A68: $0A
    adc a                                         ; $6A69: $8F
    adc [hl]                                      ; $6A6A: $8E
    adc [hl]                                      ; $6A6B: $8E
    adc h                                         ; $6A6C: $8C
    dec b                                         ; $6A6D: $05
    adc [hl]                                      ; $6A6E: $8E
    add b                                         ; $6A6F: $80
    sub d                                         ; $6A70: $92
    rrca                                          ; $6A71: $0F
    adc [hl]                                      ; $6A72: $8E
    dec b                                         ; $6A73: $05
    add b                                         ; $6A74: $80
    adc h                                         ; $6A75: $8C
    ld a, [bc]                                    ; $6A76: $0A
    adc [hl]                                      ; $6A77: $8E
    sub h                                         ; $6A78: $94
    dec b                                         ; $6A79: $05
    sub b                                         ; $6A7A: $90
    adc e                                         ; $6A7B: $8B
    sub a                                         ; $6A7C: $97
    sub h                                         ; $6A7D: $94
    sub b                                         ; $6A7E: $90
    sbc h                                         ; $6A7F: $9C
    sub a                                         ; $6A80: $97
    sub h                                         ; $6A81: $94
    and b                                         ; $6A82: $A0
    sbc h                                         ; $6A83: $9C
    sub a                                         ; $6A84: $97
    and e                                         ; $6A85: $A3
    and b                                         ; $6A86: $A0
    sbc h                                         ; $6A87: $9C
    sub a                                         ; $6A88: $97
    db $EC                                        ; $6A89: $EC
    ld c, c                                       ; $6A8A: $49
    ld l, e                                       ; $6A8B: $6B
    db $EC                                        ; $6A8C: $EC
    ld h, l                                       ; $6A8D: $65
    ld l, e                                       ; $6A8E: $6B
    db $EC                                        ; $6A8F: $EC
    ld c, c                                       ; $6A90: $49
    ld l, e                                       ; $6A91: $6B
    adc c                                         ; $6A92: $89
    ld a, [bc]                                    ; $6A93: $0A
    adc c                                         ; $6A94: $89
    adc [hl]                                      ; $6A95: $8E
    adc [hl]                                      ; $6A96: $8E
    dec b                                         ; $6A97: $05
    sub b                                         ; $6A98: $90
    add b                                         ; $6A99: $80
    sub b                                         ; $6A9A: $90
    add b                                         ; $6A9B: $80
    sub b                                         ; $6A9C: $90
    sub l                                         ; $6A9D: $95
    add b                                         ; $6A9E: $80
    sub l                                         ; $6A9F: $95
    add b                                         ; $6AA0: $80
    sbc c                                         ; $6AA1: $99
    ld a, [bc]                                    ; $6AA2: $0A
    sbc c                                         ; $6AA3: $99
    sub l                                         ; $6AA4: $95
    sub l                                         ; $6AA5: $95
    dec b                                         ; $6AA6: $05
    sub b                                         ; $6AA7: $90
    add b                                         ; $6AA8: $80
    sub b                                         ; $6AA9: $90
    adc [hl]                                      ; $6AAA: $8E
    add b                                         ; $6AAB: $80
    adc c                                         ; $6AAC: $89
    ld a, [bc]                                    ; $6AAD: $0A
    add a                                         ; $6AAE: $87
    db $EC                                        ; $6AAF: $EC
    ld c, c                                       ; $6AB0: $49
    ld l, e                                       ; $6AB1: $6B
    db $EC                                        ; $6AB2: $EC
    ld h, l                                       ; $6AB3: $65
    ld l, e                                       ; $6AB4: $6B
    adc [hl]                                      ; $6AB5: $8E
    ld a, [bc]                                    ; $6AB6: $0A
    adc [hl]                                      ; $6AB7: $8E
    adc h                                         ; $6AB8: $8C
    adc [hl]                                      ; $6AB9: $8E
    dec b                                         ; $6ABA: $05
    sub c                                         ; $6ABB: $91
    add b                                         ; $6ABC: $80
    sub c                                         ; $6ABD: $91
    sub l                                         ; $6ABE: $95
    ld a, [bc]                                    ; $6ABF: $0A
    sub c                                         ; $6AC0: $91
    adc [hl]                                      ; $6AC1: $8E
    sub b                                         ; $6AC2: $90
    ld a, [bc]                                    ; $6AC3: $0A
    sub b                                         ; $6AC4: $90
    sub e                                         ; $6AC5: $93
    dec b                                         ; $6AC6: $05
    sub b                                         ; $6AC7: $90
    adc [hl]                                      ; $6AC8: $8E
    sub b                                         ; $6AC9: $90
    rrca                                          ; $6ACA: $0F
    adc [hl]                                      ; $6ACB: $8E
    dec b                                         ; $6ACC: $05
    sub b                                         ; $6ACD: $90
    sub d                                         ; $6ACE: $92
    sub b                                         ; $6ACF: $90
    rrca                                          ; $6AD0: $0F
    sub c                                         ; $6AD1: $91
    ld a, [bc]                                    ; $6AD2: $0A
    sub c                                         ; $6AD3: $91
    sub b                                         ; $6AD4: $90
    sub c                                         ; $6AD5: $91
    dec b                                         ; $6AD6: $05
    sub e                                         ; $6AD7: $93
    add b                                         ; $6AD8: $80
    sub e                                         ; $6AD9: $93
    sbc b                                         ; $6ADA: $98
    ld a, [bc]                                    ; $6ADB: $0A
    sub e                                         ; $6ADC: $93
    sub c                                         ; $6ADD: $91
    sub e                                         ; $6ADE: $93
    ld a, [bc]                                    ; $6ADF: $0A
    sub e                                         ; $6AE0: $93
    sub a                                         ; $6AE1: $97
    dec b                                         ; $6AE2: $05
    sub e                                         ; $6AE3: $93
    sub c                                         ; $6AE4: $91
    adc [hl]                                      ; $6AE5: $8E
    sbc h                                         ; $6AE6: $9C
    sbc c                                         ; $6AE7: $99
    sub l                                         ; $6AE8: $95
    sbc c                                         ; $6AE9: $99
    sub l                                         ; $6AEA: $95
    sub b                                         ; $6AEB: $90
    sub l                                         ; $6AEC: $95
    adc l                                         ; $6AED: $8D
    push hl                                       ; $6AEE: $E5
    jp nz, $8769                                  ; $6AEF: $C2 $69 $87

    ld a, [bc]                                    ; $6AF2: $0A
    add a                                         ; $6AF3: $87
    sub c                                         ; $6AF4: $91
    adc [hl]                                      ; $6AF5: $8E
    dec b                                         ; $6AF6: $05
    sub c                                         ; $6AF7: $91
    add b                                         ; $6AF8: $80
    sub c                                         ; $6AF9: $91
    adc [hl]                                      ; $6AFA: $8E
    ld a, [bc]                                    ; $6AFB: $0A
    sub c                                         ; $6AFC: $91
    sub e                                         ; $6AFD: $93
    add a                                         ; $6AFE: $87
    add a                                         ; $6AFF: $87
    sub c                                         ; $6B00: $91
    dec b                                         ; $6B01: $05
    sub b                                         ; $6B02: $90
    adc [hl]                                      ; $6B03: $8E
    sub b                                         ; $6B04: $90
    rrca                                          ; $6B05: $0F
    adc [hl]                                      ; $6B06: $8E
    ld a, [bc]                                    ; $6B07: $0A
    adc d                                         ; $6B08: $8A
    adc [hl]                                      ; $6B09: $8E
    adc d                                         ; $6B0A: $8A
    ld a, [bc]                                    ; $6B0B: $0A
    adc d                                         ; $6B0C: $8A
    sub h                                         ; $6B0D: $94
    sub c                                         ; $6B0E: $91
    dec b                                         ; $6B0F: $05
    sub h                                         ; $6B10: $94
    add b                                         ; $6B11: $80
    sub h                                         ; $6B12: $94
    sub c                                         ; $6B13: $91
    ld a, [bc]                                    ; $6B14: $0A
    sub e                                         ; $6B15: $93
    sub h                                         ; $6B16: $94
    adc d                                         ; $6B17: $8A
    adc d                                         ; $6B18: $8A
    sub h                                         ; $6B19: $94
    dec b                                         ; $6B1A: $05
    sub e                                         ; $6B1B: $93
    sub c                                         ; $6B1C: $91
    sub e                                         ; $6B1D: $93
    rrca                                          ; $6B1E: $0F
    sub c                                         ; $6B1F: $91
    ld a, [bc]                                    ; $6B20: $0A
    adc d                                         ; $6B21: $8A
    dec b                                         ; $6B22: $05
    add l                                         ; $6B23: $85
    rrca                                          ; $6B24: $0F
    rst RST_20                                    ; $6B25: $E7
    nop                                           ; $6B26: $00
    ld [bc], a                                    ; $6B27: $02
    pop af                                        ; $6B28: $F1
    ld l, d                                       ; $6B29: $6A
    db $ED                                        ; $6B2A: $ED
    add a                                         ; $6B2B: $87
    ld a, [bc]                                    ; $6B2C: $0A
    add a                                         ; $6B2D: $87
    sub c                                         ; $6B2E: $91
    adc [hl]                                      ; $6B2F: $8E
    dec b                                         ; $6B30: $05
    sub c                                         ; $6B31: $91
    add b                                         ; $6B32: $80
    sub c                                         ; $6B33: $91
    adc [hl]                                      ; $6B34: $8E
    ld a, [bc]                                    ; $6B35: $0A
    sub c                                         ; $6B36: $91
    sub e                                         ; $6B37: $93
    db $ED                                        ; $6B38: $ED
    adc a                                         ; $6B39: $8F
    ld a, [bc]                                    ; $6B3A: $0A
    adc a                                         ; $6B3B: $8F
    adc [hl]                                      ; $6B3C: $8E
    adc d                                         ; $6B3D: $8A
    dec b                                         ; $6B3E: $05
    adc a                                         ; $6B3F: $8F
    db $ED                                        ; $6B40: $ED
    adc h                                         ; $6B41: $8C
    ld a, [bc]                                    ; $6B42: $0A
    adc h                                         ; $6B43: $8C
    adc d                                         ; $6B44: $8A
    add a                                         ; $6B45: $87
    dec b                                         ; $6B46: $05
    adc h                                         ; $6B47: $8C
    db $ED                                        ; $6B48: $ED
    add l                                         ; $6B49: $85
    ld a, [bc]                                    ; $6B4A: $0A
    add l                                         ; $6B4B: $85
    add h                                         ; $6B4C: $84
    add l                                         ; $6B4D: $85
    dec b                                         ; $6B4E: $05
    add a                                         ; $6B4F: $87
    add b                                         ; $6B50: $80
    add a                                         ; $6B51: $87
    adc h                                         ; $6B52: $8C
    ld a, [bc]                                    ; $6B53: $0A
    add a                                         ; $6B54: $87
    add l                                         ; $6B55: $85
    add a                                         ; $6B56: $87
    add a                                         ; $6B57: $87
    adc e                                         ; $6B58: $8B
    dec b                                         ; $6B59: $05
    add a                                         ; $6B5A: $87
    add l                                         ; $6B5B: $85
    add d                                         ; $6B5C: $82
    rrca                                          ; $6B5D: $0F
    sub c                                         ; $6B5E: $91
    dec b                                         ; $6B5F: $05
    adc [hl]                                      ; $6B60: $8E
    adc e                                         ; $6B61: $8B
    add a                                         ; $6B62: $87
    rrca                                          ; $6B63: $0F
    db $ED                                        ; $6B64: $ED
    adc c                                         ; $6B65: $89
    ld a, [bc]                                    ; $6B66: $0A
    adc c                                         ; $6B67: $89
    sub l                                         ; $6B68: $95
    dec b                                         ; $6B69: $05
    sub b                                         ; $6B6A: $90
    rrca                                          ; $6B6B: $0F
    adc e                                         ; $6B6C: $8B
    ld a, [bc]                                    ; $6B6D: $0A
    sub e                                         ; $6B6E: $93
    dec b                                         ; $6B6F: $05
    sub a                                         ; $6B70: $97
    sbc b                                         ; $6B71: $98
    sub a                                         ; $6B72: $97
    rrca                                          ; $6B73: $0F
    adc h                                         ; $6B74: $8C
    ld a, [bc]                                    ; $6B75: $0A
    adc h                                         ; $6B76: $8C
    sub e                                         ; $6B77: $93
    dec b                                         ; $6B78: $05
    adc h                                         ; $6B79: $8C
    rrca                                          ; $6B7A: $0F
    adc [hl]                                      ; $6B7B: $8E
    ld a, [bc]                                    ; $6B7C: $0A
    sub b                                         ; $6B7D: $90
    dec b                                         ; $6B7E: $05
    add b                                         ; $6B7F: $80
    sub d                                         ; $6B80: $92
    sub l                                         ; $6B81: $95
    rrca                                          ; $6B82: $0F
    db $ED                                        ; $6B83: $ED
    jp hl                                         ; $6B84: $E9


    adc b                                         ; $6B85: $88
    db $EC                                        ; $6B86: $EC
    xor l                                         ; $6B87: $AD
    ld l, e                                       ; $6B88: $6B
    db $EC                                        ; $6B89: $EC
    db $D3                                        ; $6B8A: $D3
    ld l, e                                       ; $6B8B: $6B
    db $EC                                        ; $6B8C: $EC
    ld hl, sp+$6B                                 ; $6B8D: $F8 $6B
    db $EC                                        ; $6B8F: $EC
    ld e, $6C                                     ; $6B90: $1E $6C
    db $EC                                        ; $6B92: $EC
    ld hl, sp+$6B                                 ; $6B93: $F8 $6B
    db $EC                                        ; $6B95: $EC
    ccf                                           ; $6B96: $3F
    ld l, h                                       ; $6B97: $6C
    db $EC                                        ; $6B98: $EC
    xor l                                         ; $6B99: $AD
    ld l, e                                       ; $6B9A: $6B
    db $EC                                        ; $6B9B: $EC
    ccf                                           ; $6B9C: $3F
    ld l, h                                       ; $6B9D: $6C
    db $EC                                        ; $6B9E: $EC
    ld [hl], h                                    ; $6B9F: $74
    ld l, h                                       ; $6BA0: $6C
    db $EC                                        ; $6BA1: $EC
    ld [hl], h                                    ; $6BA2: $74
    ld l, h                                       ; $6BA3: $6C
    db $EC                                        ; $6BA4: $EC
    ld [hl], h                                    ; $6BA5: $74
    ld l, h                                       ; $6BA6: $6C
    db $EC                                        ; $6BA7: $EC
    jp nc, $E56C                                  ; $6BA8: $D2 $6C $E5

    add h                                         ; $6BAB: $84
    ld l, e                                       ; $6BAC: $6B
    db $E4                                        ; $6BAD: $E4
    ld [hl], c                                    ; $6BAE: $71
    ld [hl], $0A                                  ; $6BAF: $36 $0A
    db $E4                                        ; $6BB1: $E4
    ld b, c                                       ; $6BB2: $41
    ld hl, $E40A                                  ; $6BB3: $21 $0A $E4
    ld h, d                                       ; $6BB6: $62
    inc h                                         ; $6BB7: $24
    ld a, [bc]                                    ; $6BB8: $0A
    db $E4                                        ; $6BB9: $E4
    ld b, c                                       ; $6BBA: $41
    ld hl, $E405                                  ; $6BBB: $21 $05 $E4
    ld h, d                                       ; $6BBE: $62
    inc h                                         ; $6BBF: $24
    rrca                                          ; $6BC0: $0F
    db $E4                                        ; $6BC1: $E4
    ld [hl], c                                    ; $6BC2: $71
    ld [hl], $0A                                  ; $6BC3: $36 $0A
    db $E4                                        ; $6BC5: $E4
    ld h, d                                       ; $6BC6: $62
    inc h                                         ; $6BC7: $24
    ld a, [bc]                                    ; $6BC8: $0A
    db $E4                                        ; $6BC9: $E4
    ld b, c                                       ; $6BCA: $41
    ld hl, $E70A                                  ; $6BCB: $21 $0A $E7
    nop                                           ; $6BCE: $00
    rlca                                          ; $6BCF: $07
    xor l                                         ; $6BD0: $AD
    ld l, e                                       ; $6BD1: $6B
    db $ED                                        ; $6BD2: $ED
    db $E4                                        ; $6BD3: $E4
    ld [hl], c                                    ; $6BD4: $71
    ld [hl], $0A                                  ; $6BD5: $36 $0A
    db $E4                                        ; $6BD7: $E4
    ld b, c                                       ; $6BD8: $41
    ld hl, $E40A                                  ; $6BD9: $21 $0A $E4
    ld h, d                                       ; $6BDC: $62
    inc h                                         ; $6BDD: $24
    ld a, [bc]                                    ; $6BDE: $0A
    db $E4                                        ; $6BDF: $E4
    ld b, c                                       ; $6BE0: $41
    ld hl, $E405                                  ; $6BE1: $21 $05 $E4
    ld h, d                                       ; $6BE4: $62
    inc h                                         ; $6BE5: $24
    rrca                                          ; $6BE6: $0F
    db $E4                                        ; $6BE7: $E4
    ld [hl], c                                    ; $6BE8: $71
    ld [hl], $0A                                  ; $6BE9: $36 $0A
    db $E4                                        ; $6BEB: $E4
    ld h, d                                       ; $6BEC: $62
    inc h                                         ; $6BED: $24
    dec b                                         ; $6BEE: $05
    db $E4                                        ; $6BEF: $E4
    ld h, d                                       ; $6BF0: $62
    inc h                                         ; $6BF1: $24
    dec b                                         ; $6BF2: $05
    db $E4                                        ; $6BF3: $E4
    ld d, e                                       ; $6BF4: $53
    ld de, $ED0A                                  ; $6BF5: $11 $0A $ED
    db $E4                                        ; $6BF8: $E4
    ld [hl], c                                    ; $6BF9: $71
    ld [hl], $0A                                  ; $6BFA: $36 $0A
    db $E4                                        ; $6BFC: $E4
    ld b, c                                       ; $6BFD: $41
    ld hl, $E40A                                  ; $6BFE: $21 $0A $E4
    ld h, d                                       ; $6C01: $62
    inc h                                         ; $6C02: $24
    ld a, [bc]                                    ; $6C03: $0A
    db $E4                                        ; $6C04: $E4
    ld b, c                                       ; $6C05: $41
    ld hl, $E405                                  ; $6C06: $21 $05 $E4
    ld h, d                                       ; $6C09: $62
    inc h                                         ; $6C0A: $24
    rrca                                          ; $6C0B: $0F
    db $E4                                        ; $6C0C: $E4
    ld [hl], c                                    ; $6C0D: $71
    ld [hl], $0A                                  ; $6C0E: $36 $0A
    db $E4                                        ; $6C10: $E4
    ld h, d                                       ; $6C11: $62
    inc h                                         ; $6C12: $24
    ld a, [bc]                                    ; $6C13: $0A
    db $E4                                        ; $6C14: $E4
    ld b, c                                       ; $6C15: $41
    ld hl, $E70A                                  ; $6C16: $21 $0A $E7
    nop                                           ; $6C19: $00
    inc bc                                        ; $6C1A: $03
    ld hl, sp+$6B                                 ; $6C1B: $F8 $6B
    db $ED                                        ; $6C1D: $ED
    db $E4                                        ; $6C1E: $E4
    ld [hl], c                                    ; $6C1F: $71
    ld [hl], $0A                                  ; $6C20: $36 $0A
    db $E4                                        ; $6C22: $E4
    ld b, c                                       ; $6C23: $41
    ld hl, $E40A                                  ; $6C24: $21 $0A $E4
    ld h, d                                       ; $6C27: $62
    inc h                                         ; $6C28: $24
    ld a, [bc]                                    ; $6C29: $0A
    db $E4                                        ; $6C2A: $E4
    ld b, c                                       ; $6C2B: $41
    ld hl, $E405                                  ; $6C2C: $21 $05 $E4
    ld h, d                                       ; $6C2F: $62
    inc h                                         ; $6C30: $24
    rrca                                          ; $6C31: $0F
    db $E4                                        ; $6C32: $E4
    ld [hl], c                                    ; $6C33: $71
    ld [hl], $0A                                  ; $6C34: $36 $0A
    db $E4                                        ; $6C36: $E4
    ld h, d                                       ; $6C37: $62
    inc h                                         ; $6C38: $24
    dec b                                         ; $6C39: $05
    db $E4                                        ; $6C3A: $E4
    ld d, e                                       ; $6C3B: $53
    ld de, $ED0F                                  ; $6C3C: $11 $0F $ED
    db $E4                                        ; $6C3F: $E4
    ld [hl], c                                    ; $6C40: $71
    ld [hl], $0A                                  ; $6C41: $36 $0A
    db $E4                                        ; $6C43: $E4
    ld b, c                                       ; $6C44: $41
    ld hl, $E40A                                  ; $6C45: $21 $0A $E4
    ld h, d                                       ; $6C48: $62
    inc h                                         ; $6C49: $24
    ld a, [bc]                                    ; $6C4A: $0A
    db $E4                                        ; $6C4B: $E4
    ld b, c                                       ; $6C4C: $41
    ld hl, $E405                                  ; $6C4D: $21 $05 $E4
    ld h, d                                       ; $6C50: $62
    inc h                                         ; $6C51: $24
    dec b                                         ; $6C52: $05
    db $E4                                        ; $6C53: $E4
    ld h, d                                       ; $6C54: $62
    inc h                                         ; $6C55: $24
    dec b                                         ; $6C56: $05
    db $E4                                        ; $6C57: $E4
    ld b, c                                       ; $6C58: $41
    ld hl, $E405                                  ; $6C59: $21 $05 $E4
    ld h, d                                       ; $6C5C: $62
    inc h                                         ; $6C5D: $24
    dec b                                         ; $6C5E: $05
    db $E4                                        ; $6C5F: $E4
    ld h, d                                       ; $6C60: $62
    inc h                                         ; $6C61: $24
    dec b                                         ; $6C62: $05
    db $E4                                        ; $6C63: $E4
    ld h, d                                       ; $6C64: $62
    inc h                                         ; $6C65: $24
    dec b                                         ; $6C66: $05
    db $E4                                        ; $6C67: $E4
    ld [hl], d                                    ; $6C68: $72
    ld [hl-], a                                   ; $6C69: $32
    dec b                                         ; $6C6A: $05
    db $E4                                        ; $6C6B: $E4
    ld [hl], d                                    ; $6C6C: $72
    ld [hl-], a                                   ; $6C6D: $32
    dec b                                         ; $6C6E: $05
    db $E4                                        ; $6C6F: $E4
    ld [hl], d                                    ; $6C70: $72
    db $10                                        ; $6C71: $10
    dec b                                         ; $6C72: $05
    db $ED                                        ; $6C73: $ED
    db $E4                                        ; $6C74: $E4
    ld h, d                                       ; $6C75: $62
    inc h                                         ; $6C76: $24
    ld a, [bc]                                    ; $6C77: $0A
    db $E4                                        ; $6C78: $E4
    ld b, c                                       ; $6C79: $41
    ld hl, $E405                                  ; $6C7A: $21 $05 $E4
    ld [hl], c                                    ; $6C7D: $71
    ld [hl], $05                                  ; $6C7E: $36 $05
    db $E4                                        ; $6C80: $E4
    ld h, d                                       ; $6C81: $62
    inc h                                         ; $6C82: $24
    ld a, [bc]                                    ; $6C83: $0A
    db $E4                                        ; $6C84: $E4
    ld b, c                                       ; $6C85: $41
    ld hl, $E40A                                  ; $6C86: $21 $0A $E4
    ld h, d                                       ; $6C89: $62
    inc h                                         ; $6C8A: $24
    dec b                                         ; $6C8B: $05
    db $E4                                        ; $6C8C: $E4
    ld [hl], c                                    ; $6C8D: $71
    ld [hl], $05                                  ; $6C8E: $36 $05
    db $E4                                        ; $6C90: $E4
    ld b, c                                       ; $6C91: $41
    ld hl, $E405                                  ; $6C92: $21 $05 $E4
    ld [hl], c                                    ; $6C95: $71
    ld [hl], $05                                  ; $6C96: $36 $05
    db $E4                                        ; $6C98: $E4
    ld h, d                                       ; $6C99: $62
    inc h                                         ; $6C9A: $24
    ld a, [bc]                                    ; $6C9B: $0A
    db $E4                                        ; $6C9C: $E4
    ld b, c                                       ; $6C9D: $41
    ld hl, $E70A                                  ; $6C9E: $21 $0A $E7
    nop                                           ; $6CA1: $00
    inc bc                                        ; $6CA2: $03
    ld [hl], h                                    ; $6CA3: $74
    ld l, h                                       ; $6CA4: $6C
    db $E4                                        ; $6CA5: $E4
    ld h, d                                       ; $6CA6: $62
    inc h                                         ; $6CA7: $24
    ld a, [bc]                                    ; $6CA8: $0A
    db $E4                                        ; $6CA9: $E4
    ld b, c                                       ; $6CAA: $41
    ld hl, $E405                                  ; $6CAB: $21 $05 $E4
    ld [hl], c                                    ; $6CAE: $71
    ld [hl], $05                                  ; $6CAF: $36 $05
    db $E4                                        ; $6CB1: $E4
    ld h, d                                       ; $6CB2: $62
    inc h                                         ; $6CB3: $24
    ld a, [bc]                                    ; $6CB4: $0A
    db $E4                                        ; $6CB5: $E4
    ld b, c                                       ; $6CB6: $41
    ld hl, $E40A                                  ; $6CB7: $21 $0A $E4
    ld h, d                                       ; $6CBA: $62
    inc h                                         ; $6CBB: $24
    dec b                                         ; $6CBC: $05
    db $E4                                        ; $6CBD: $E4
    ld [hl], c                                    ; $6CBE: $71
    ld [hl], $05                                  ; $6CBF: $36 $05
    db $E4                                        ; $6CC1: $E4
    ld [hl], c                                    ; $6CC2: $71
    ld [hl], $05                                  ; $6CC3: $36 $05
    db $E4                                        ; $6CC5: $E4
    ld [hl], c                                    ; $6CC6: $71
    ld [hl], $05                                  ; $6CC7: $36 $05
    db $E4                                        ; $6CC9: $E4
    ld h, d                                       ; $6CCA: $62
    inc h                                         ; $6CCB: $24

jr_02E_6CCC:
    ld a, [bc]                                    ; $6CCC: $0A
    db $E4                                        ; $6CCD: $E4
    ld h, d                                       ; $6CCE: $62
    inc h                                         ; $6CCF: $24
    ld a, [bc]                                    ; $6CD0: $0A
    db $ED                                        ; $6CD1: $ED
    db $E4                                        ; $6CD2: $E4
    ld h, d                                       ; $6CD3: $62
    inc h                                         ; $6CD4: $24
    ld a, [bc]                                    ; $6CD5: $0A
    db $E4                                        ; $6CD6: $E4
    ld b, c                                       ; $6CD7: $41
    ld hl, $E405                                  ; $6CD8: $21 $05 $E4
    ld [hl], c                                    ; $6CDB: $71
    ld [hl], $05                                  ; $6CDC: $36 $05
    db $E4                                        ; $6CDE: $E4
    ld h, d                                       ; $6CDF: $62
    inc h                                         ; $6CE0: $24
    ld a, [bc]                                    ; $6CE1: $0A
    db $E4                                        ; $6CE2: $E4
    ld b, c                                       ; $6CE3: $41
    ld hl, $E40A                                  ; $6CE4: $21 $0A $E4
    ld h, d                                       ; $6CE7: $62
    inc h                                         ; $6CE8: $24
    dec b                                         ; $6CE9: $05
    db $E4                                        ; $6CEA: $E4
    ld [hl], c                                    ; $6CEB: $71
    ld [hl], $05                                  ; $6CEC: $36 $05
    db $E4                                        ; $6CEE: $E4
    ld b, c                                       ; $6CEF: $41
    ld hl, $E405                                  ; $6CF0: $21 $05 $E4
    ld [hl], c                                    ; $6CF3: $71
    ld [hl], $05                                  ; $6CF4: $36 $05
    db $E4                                        ; $6CF6: $E4
    ld h, d                                       ; $6CF7: $62
    inc h                                         ; $6CF8: $24
    ld a, [bc]                                    ; $6CF9: $0A
    db $E4                                        ; $6CFA: $E4
    ld b, c                                       ; $6CFB: $41
    ld hl, $E70A                                  ; $6CFC: $21 $0A $E7
    nop                                           ; $6CFF: $00
    inc bc                                        ; $6D00: $03
    jp nc, $E46C                                  ; $6D01: $D2 $6C $E4

    ld h, d                                       ; $6D04: $62
    inc h                                         ; $6D05: $24
    ld a, [bc]                                    ; $6D06: $0A
    db $E4                                        ; $6D07: $E4
    ld b, c                                       ; $6D08: $41
    ld hl, $E405                                  ; $6D09: $21 $05 $E4
    ld [hl], c                                    ; $6D0C: $71
    ld [hl], $05                                  ; $6D0D: $36 $05
    db $E4                                        ; $6D0F: $E4
    ld h, d                                       ; $6D10: $62
    inc h                                         ; $6D11: $24
    ld a, [bc]                                    ; $6D12: $0A
    db $E4                                        ; $6D13: $E4
    ld [hl], c                                    ; $6D14: $71
    ld [hl], $0A                                  ; $6D15: $36 $0A
    db $E4                                        ; $6D17: $E4
    ld h, d                                       ; $6D18: $62
    inc h                                         ; $6D19: $24
    dec b                                         ; $6D1A: $05
    db $E4                                        ; $6D1B: $E4
    ld h, d                                       ; $6D1C: $62
    inc h                                         ; $6D1D: $24
    dec b                                         ; $6D1E: $05
    db $E4                                        ; $6D1F: $E4
    ld h, d                                       ; $6D20: $62
    inc h                                         ; $6D21: $24
    dec b                                         ; $6D22: $05
    db $E4                                        ; $6D23: $E4
    ld h, d                                       ; $6D24: $62
    inc h                                         ; $6D25: $24
    dec b                                         ; $6D26: $05
    db $E4                                        ; $6D27: $E4
    ld h, d                                       ; $6D28: $62
    inc h                                         ; $6D29: $24
    dec b                                         ; $6D2A: $05
    db $E4                                        ; $6D2B: $E4
    ld [hl], d                                    ; $6D2C: $72
    ld [hl-], a                                   ; $6D2D: $32
    dec b                                         ; $6D2E: $05
    db $E4                                        ; $6D2F: $E4
    ld [hl], d                                    ; $6D30: $72
    ld [hl-], a                                   ; $6D31: $32
    dec b                                         ; $6D32: $05
    db $E4                                        ; $6D33: $E4
    ld [hl], d                                    ; $6D34: $72
    db $10                                        ; $6D35: $10
    dec b                                         ; $6D36: $05
    db $ED                                        ; $6D37: $ED
    inc b                                         ; $6D38: $04
    add b                                         ; $6D39: $80
    inc de                                        ; $6D3A: $13
    ld d, c                                       ; $6D3B: $51
    ld l, l                                       ; $6D3C: $6D
    nop                                           ; $6D3D: $00
    add c                                         ; $6D3E: $81
    add b                                         ; $6D3F: $80
    jr jr_02E_6CCC                                ; $6D40: $18 $8A

    ld l, [hl]                                    ; $6D42: $6E
    inc c                                         ; $6D43: $0C
    add c                                         ; $6D44: $81
    add b                                         ; $6D45: $80
    dec e                                         ; $6D46: $1D
    xor $6F                                       ; $6D47: $EE $6F
    jr jr_02E_6CCC                                ; $6D49: $18 $81

    add b                                         ; $6D4B: $80
    ld [hl+], a                                   ; $6D4C: $22
    ld e, l                                       ; $6D4D: $5D
    ld [hl], c                                    ; $6D4E: $71
    nop                                           ; $6D4F: $00
    add c                                         ; $6D50: $81
    db $E4                                        ; $6D51: $E4
    ld [hl], a                                    ; $6D52: $77
    jp hl                                         ; $6D53: $E9


    ld de, $C0EE                                  ; $6D54: $11 $EE $C0
    sub [hl]                                      ; $6D57: $96
    ld b, $96                                     ; $6D58: $06 $96
    sub [hl]                                      ; $6D5A: $96
    db $E4                                        ; $6D5B: $E4
    scf                                           ; $6D5C: $37
    sub [hl]                                      ; $6D5D: $96
    db $E4                                        ; $6D5E: $E4
    ld [hl], a                                    ; $6D5F: $77
    add b                                         ; $6D60: $80
    inc c                                         ; $6D61: $0C
    sub h                                         ; $6D62: $94
    sub [hl]                                      ; $6D63: $96
    ld [de], a                                    ; $6D64: $12
    add b                                         ; $6D65: $80
    ld b, $94                                     ; $6D66: $06 $94
    add b                                         ; $6D68: $80
    sub [hl]                                      ; $6D69: $96
    add b                                         ; $6D6A: $80
    add b                                         ; $6D6B: $80
    inc c                                         ; $6D6C: $0C
    sbc c                                         ; $6D6D: $99
    pop af                                        ; $6D6E: $F1
    sbc b                                         ; $6D6F: $98
    jr @-$1A                                      ; $6D70: $18 $E4

    scf                                           ; $6D72: $37
    sbc b                                         ; $6D73: $98
    inc c                                         ; $6D74: $0C
    db $E4                                        ; $6D75: $E4
    ld [hl], a                                    ; $6D76: $77
    sub [hl]                                      ; $6D77: $96
    jr @-$6D                                      ; $6D78: $18 $91

    ld b, $8F                                     ; $6D7A: $06 $8F
    sub c                                         ; $6D7C: $91
    ld b, $91                                     ; $6D7D: $06 $91
    add b                                         ; $6D7F: $80
    sub c                                         ; $6D80: $91
    add b                                         ; $6D81: $80
    sub c                                         ; $6D82: $91
    adc a                                         ; $6D83: $8F
    inc bc                                        ; $6D84: $03
    sub c                                         ; $6D85: $91
    sub h                                         ; $6D86: $94
    sub [hl]                                      ; $6D87: $96
    sub h                                         ; $6D88: $94
    ld b, $90                                     ; $6D89: $06 $90
    adc a                                         ; $6D8B: $8F
    adc l                                         ; $6D8C: $8D
    adc a                                         ; $6D8D: $8F
    adc l                                         ; $6D8E: $8D
    adc d                                         ; $6D8F: $8A
    adc b                                         ; $6D90: $88
    db $EC                                        ; $6D91: $EC
    cpl                                           ; $6D92: $2F
    ld l, [hl]                                    ; $6D93: $6E
    db $EC                                        ; $6D94: $EC
    ld d, [hl]                                    ; $6D95: $56
    ld l, [hl]                                    ; $6D96: $6E
    add b                                         ; $6D97: $80
    add c                                         ; $6D98: $81
    add e                                         ; $6D99: $83
    add b                                         ; $6D9A: $80
    db $EC                                        ; $6D9B: $EC
    ld d, [hl]                                    ; $6D9C: $56
    ld l, [hl]                                    ; $6D9D: $6E
    sub d                                         ; $6D9E: $92
    adc l                                         ; $6D9F: $8D
    adc a                                         ; $6DA0: $8F
    add [hl]                                      ; $6DA1: $86
    add l                                         ; $6DA2: $85
    add l                                         ; $6DA3: $85
    add b                                         ; $6DA4: $80
    add l                                         ; $6DA5: $85
    sub c                                         ; $6DA6: $91
    add b                                         ; $6DA7: $80
    add l                                         ; $6DA8: $85
    add l                                         ; $6DA9: $85
    add b                                         ; $6DAA: $80
    add l                                         ; $6DAB: $85
    add b                                         ; $6DAC: $80
    add l                                         ; $6DAD: $85
    add e                                         ; $6DAE: $83
    add l                                         ; $6DAF: $85
    adc b                                         ; $6DB0: $88
    adc c                                         ; $6DB1: $89
    adc d                                         ; $6DB2: $8A
    adc d                                         ; $6DB3: $8A
    add b                                         ; $6DB4: $80
    adc d                                         ; $6DB5: $8A
    sub [hl]                                      ; $6DB6: $96
    add b                                         ; $6DB7: $80
    adc d                                         ; $6DB8: $8A
    adc d                                         ; $6DB9: $8A
    add b                                         ; $6DBA: $80
    adc d                                         ; $6DBB: $8A
    add b                                         ; $6DBC: $80
    adc d                                         ; $6DBD: $8A
    add b                                         ; $6DBE: $80
    add l                                         ; $6DBF: $85
    adc b                                         ; $6DC0: $88
    adc d                                         ; $6DC1: $8A
    db $EC                                        ; $6DC2: $EC
    ld h, e                                       ; $6DC3: $63
    ld l, [hl]                                    ; $6DC4: $6E
    and $02                                       ; $6DC5: $E6 $02
    db $EC                                        ; $6DC7: $EC
    ld h, e                                       ; $6DC8: $63
    ld l, [hl]                                    ; $6DC9: $6E
    and $FE                                       ; $6DCA: $E6 $FE
    add [hl]                                      ; $6DCC: $86
    add [hl]                                      ; $6DCD: $86
    add b                                         ; $6DCE: $80
    add [hl]                                      ; $6DCF: $86
    add c                                         ; $6DD0: $81
    add b                                         ; $6DD1: $80
    add [hl]                                      ; $6DD2: $86
    add b                                         ; $6DD3: $80
    add b                                         ; $6DD4: $80
    add [hl]                                      ; $6DD5: $86
    add b                                         ; $6DD6: $80
    add [hl]                                      ; $6DD7: $86
    adc l                                         ; $6DD8: $8D
    adc a                                         ; $6DD9: $8F
    sub d                                         ; $6DDA: $92
    add b                                         ; $6DDB: $80
    adc b                                         ; $6DDC: $88
    adc b                                         ; $6DDD: $88
    add b                                         ; $6DDE: $80
    adc b                                         ; $6DDF: $88
    add e                                         ; $6DE0: $83
    add b                                         ; $6DE1: $80
    adc b                                         ; $6DE2: $88
    add b                                         ; $6DE3: $80
    add b                                         ; $6DE4: $80
    adc b                                         ; $6DE5: $88
    add b                                         ; $6DE6: $80
    adc l                                         ; $6DE7: $8D
    inc bc                                        ; $6DE8: $03
    adc a                                         ; $6DE9: $8F
    adc l                                         ; $6DEA: $8D
    ld b, $8C                                     ; $6DEB: $06 $8C
    adc b                                         ; $6DED: $88
    add e                                         ; $6DEE: $83
    db $EC                                        ; $6DEF: $EC
    ld [hl], h                                    ; $6DF0: $74
    ld l, [hl]                                    ; $6DF1: $6E
    and $02                                       ; $6DF2: $E6 $02
    db $EC                                        ; $6DF4: $EC
    ld [hl], h                                    ; $6DF5: $74
    ld l, [hl]                                    ; $6DF6: $6E
    and $FE                                       ; $6DF7: $E6 $FE
    db $EC                                        ; $6DF9: $EC
    ld [hl], h                                    ; $6DFA: $74
    ld l, [hl]                                    ; $6DFB: $6E
    adc l                                         ; $6DFC: $8D
    adc l                                         ; $6DFD: $8D
    add b                                         ; $6DFE: $80
    adc l                                         ; $6DFF: $8D
    adc e                                         ; $6E00: $8B
    add b                                         ; $6E01: $80
    adc l                                         ; $6E02: $8D
    add b                                         ; $6E03: $80
    add b                                         ; $6E04: $80
    adc l                                         ; $6E05: $8D
    add b                                         ; $6E06: $80
    adc l                                         ; $6E07: $8D
    adc b                                         ; $6E08: $88
    add b                                         ; $6E09: $80
    adc e                                         ; $6E0A: $8B
    add b                                         ; $6E0B: $80
    add e                                         ; $6E0C: $83
    add e                                         ; $6E0D: $83
    add b                                         ; $6E0E: $80
    add e                                         ; $6E0F: $83
    add c                                         ; $6E10: $81
    add b                                         ; $6E11: $80
    add e                                         ; $6E12: $83
    add b                                         ; $6E13: $80
    add b                                         ; $6E14: $80
    add e                                         ; $6E15: $83
    add b                                         ; $6E16: $80
    adc d                                         ; $6E17: $8A
    adc l                                         ; $6E18: $8D
    adc a                                         ; $6E19: $8F
    adc b                                         ; $6E1A: $88
    adc c                                         ; $6E1B: $89
    sbc e                                         ; $6E1C: $9B
    sbc e                                         ; $6E1D: $9B
    sbc e                                         ; $6E1E: $9B
    add b                                         ; $6E1F: $80
    add b                                         ; $6E20: $80
    sub c                                         ; $6E21: $91
    add b                                         ; $6E22: $80
    sub c                                         ; $6E23: $91
    sbc e                                         ; $6E24: $9B
    add b                                         ; $6E25: $80
    sub c                                         ; $6E26: $91
    sbc e                                         ; $6E27: $9B
    add b                                         ; $6E28: $80
    sub c                                         ; $6E29: $91
    sbc e                                         ; $6E2A: $9B
    add b                                         ; $6E2B: $80
    push hl                                       ; $6E2C: $E5
    ld a, h                                       ; $6E2D: $7C
    ld l, l                                       ; $6E2E: $6D
    adc d                                         ; $6E2F: $8A
    ld b, $8A                                     ; $6E30: $06 $8A
    add b                                         ; $6E32: $80
    adc d                                         ; $6E33: $8A
    adc b                                         ; $6E34: $88
    add b                                         ; $6E35: $80
    adc d                                         ; $6E36: $8A
    add b                                         ; $6E37: $80

jr_02E_6E38:
    add b                                         ; $6E38: $80
    adc d                                         ; $6E39: $8A
    add b                                         ; $6E3A: $80
    adc d                                         ; $6E3B: $8A
    add l                                         ; $6E3C: $85
    add b                                         ; $6E3D: $80
    adc b                                         ; $6E3E: $88
    add b                                         ; $6E3F: $80
    rst RST_20                                    ; $6E40: $E7
    nop                                           ; $6E41: $00
    add hl, bc                                    ; $6E42: $09
    cpl                                           ; $6E43: $2F
    ld l, [hl]                                    ; $6E44: $6E
    adc d                                         ; $6E45: $8A
    adc d                                         ; $6E46: $8A
    add b                                         ; $6E47: $80
    adc d                                         ; $6E48: $8A
    adc b                                         ; $6E49: $88
    add b                                         ; $6E4A: $80
    adc d                                         ; $6E4B: $8A
    add b                                         ; $6E4C: $80
    add b                                         ; $6E4D: $80
    adc d                                         ; $6E4E: $8A
    add b                                         ; $6E4F: $80
    adc d                                         ; $6E50: $8A
    add e                                         ; $6E51: $83
    add l                                         ; $6E52: $85
    adc b                                         ; $6E53: $88
    adc d                                         ; $6E54: $8A
    db $ED                                        ; $6E55: $ED
    add [hl]                                      ; $6E56: $86
    add [hl]                                      ; $6E57: $86
    add b                                         ; $6E58: $80
    add [hl]                                      ; $6E59: $86
    sub d                                         ; $6E5A: $92
    add b                                         ; $6E5B: $80
    add [hl]                                      ; $6E5C: $86
    add [hl]                                      ; $6E5D: $86
    add b                                         ; $6E5E: $80
    add [hl]                                      ; $6E5F: $86
    add b                                         ; $6E60: $80
    add [hl]                                      ; $6E61: $86
    db $ED                                        ; $6E62: $ED
    add e                                         ; $6E63: $83
    add e                                         ; $6E64: $83
    add b                                         ; $6E65: $80
    add e                                         ; $6E66: $83
    add c                                         ; $6E67: $81
    add b                                         ; $6E68: $80
    add e                                         ; $6E69: $83
    add b                                         ; $6E6A: $80
    add b                                         ; $6E6B: $80
    add e                                         ; $6E6C: $83
    add b                                         ; $6E6D: $80
    add e                                         ; $6E6E: $83
    adc d                                         ; $6E6F: $8A
    add b                                         ; $6E70: $80
    adc l                                         ; $6E71: $8D
    add b                                         ; $6E72: $80
    db $ED                                        ; $6E73: $ED
    adc e                                         ; $6E74: $8B
    adc e                                         ; $6E75: $8B
    add b                                         ; $6E76: $80
    adc e                                         ; $6E77: $8B
    adc c                                         ; $6E78: $89
    add b                                         ; $6E79: $80
    adc e                                         ; $6E7A: $8B
    add b                                         ; $6E7B: $80
    add b                                         ; $6E7C: $80
    adc e                                         ; $6E7D: $8B
    add b                                         ; $6E7E: $80
    adc e                                         ; $6E7F: $8B
    add [hl]                                      ; $6E80: $86
    add b                                         ; $6E81: $80
    adc c                                         ; $6E82: $89
    add b                                         ; $6E83: $80
    rst RST_20                                    ; $6E84: $E7
    nop                                           ; $6E85: $00
    ld [bc], a                                    ; $6E86: $02
    ld [hl], h                                    ; $6E87: $74
    ld l, [hl]                                    ; $6E88: $6E
    db $ED                                        ; $6E89: $ED
    db $E4                                        ; $6E8A: $E4
    ld d, a                                       ; $6E8B: $57
    jp hl                                         ; $6E8C: $E9


    ld [hl+], a                                   ; $6E8D: $22

jr_02E_6E8E:
    xor $40                                       ; $6E8E: $EE $40
    sbc e                                         ; $6E90: $9B
    ld b, $9B                                     ; $6E91: $06 $9B
    sbc e                                         ; $6E93: $9B
    db $E4                                        ; $6E94: $E4
    scf                                           ; $6E95: $37
    sbc e                                         ; $6E96: $9B
    db $E4                                        ; $6E97: $E4
    ld [hl], a                                    ; $6E98: $77
    add b                                         ; $6E99: $80
    inc c                                         ; $6E9A: $0C
    sbc c                                         ; $6E9B: $99
    sbc e                                         ; $6E9C: $9B
    jr jr_02E_6E38                                ; $6E9D: $18 $99

    ld b, $80                                     ; $6E9F: $06 $80
    sbc e                                         ; $6EA1: $9B
    add b                                         ; $6EA2: $80
    add b                                         ; $6EA3: $80
    inc c                                         ; $6EA4: $0C
    sbc [hl]                                      ; $6EA5: $9E
    pop af                                        ; $6EA6: $F1
    sbc l                                         ; $6EA7: $9D
    jr jr_02E_6E8E                                ; $6EA8: $18 $E4

    scf                                           ; $6EAA: $37
    sbc l                                         ; $6EAB: $9D
    inc c                                         ; $6EAC: $0C
    db $E4                                        ; $6EAD: $E4
    ld a, b                                       ; $6EAE: $78
    pop af                                        ; $6EAF: $F1
    sbc e                                         ; $6EB0: $9B
    inc h                                         ; $6EB1: $24
    db $E4                                        ; $6EB2: $E4
    ld d, a                                       ; $6EB3: $57
    sbc e                                         ; $6EB4: $9B
    ld h, b                                       ; $6EB5: $60
    db $E4                                        ; $6EB6: $E4
    ld d, d                                       ; $6EB7: $52
    db $EC                                        ; $6EB8: $EC
    ld h, l                                       ; $6EB9: $65
    ld l, a                                       ; $6EBA: $6F
    db $EC                                        ; $6EBB: $EC
    ld a, h                                       ; $6EBC: $7C
    ld l, a                                       ; $6EBD: $6F
    db $EC                                        ; $6EBE: $EC
    sbc l                                         ; $6EBF: $9D
    ld l, a                                       ; $6EC0: $6F
    db $EC                                        ; $6EC1: $EC
    ld a, h                                       ; $6EC2: $7C
    ld l, a                                       ; $6EC3: $6F
    db $EC                                        ; $6EC4: $EC
    or e                                          ; $6EC5: $B3
    ld l, a                                       ; $6EC6: $6F
    add b                                         ; $6EC7: $80
    adc h                                         ; $6EC8: $8C
    adc a                                         ; $6EC9: $8F
    adc h                                         ; $6ECA: $8C
    adc l                                         ; $6ECB: $8D
    add b                                         ; $6ECC: $80
    add b                                         ; $6ECD: $80
    adc h                                         ; $6ECE: $8C
    adc a                                         ; $6ECF: $8F
    adc h                                         ; $6ED0: $8C
    adc l                                         ; $6ED1: $8D
    add b                                         ; $6ED2: $80
    add b                                         ; $6ED3: $80
    adc a                                         ; $6ED4: $8F
    adc h                                         ; $6ED5: $8C
    adc l                                         ; $6ED6: $8D
    db $EC                                        ; $6ED7: $EC
    or e                                          ; $6ED8: $B3
    ld l, a                                       ; $6ED9: $6F
    db $EC                                        ; $6EDA: $EC
    or e                                          ; $6EDB: $B3
    ld l, a                                       ; $6EDC: $6F
    add b                                         ; $6EDD: $80
    adc l                                         ; $6EDE: $8D
    sub d                                         ; $6EDF: $92
    adc l                                         ; $6EE0: $8D
    adc a                                         ; $6EE1: $8F
    add b                                         ; $6EE2: $80
    add b                                         ; $6EE3: $80
    adc l                                         ; $6EE4: $8D

jr_02E_6EE5:
    sub d                                         ; $6EE5: $92
    adc l                                         ; $6EE6: $8D
    adc a                                         ; $6EE7: $8F
    add b                                         ; $6EE8: $80
    add b                                         ; $6EE9: $80
    sub d                                         ; $6EEA: $92
    adc a                                         ; $6EEB: $8F
    sub h                                         ; $6EEC: $94
    db $E4                                        ; $6EED: $E4
    ld [hl], a                                    ; $6EEE: $77
    db $EC                                        ; $6EEF: $EC
    ret                                           ; $6EF0: $C9


    ld l, a                                       ; $6EF1: $6F
    sub a                                         ; $6EF2: $97
    sbc c                                         ; $6EF3: $99
    add b                                         ; $6EF4: $80
    sub a                                         ; $6EF5: $97
    add b                                         ; $6EF6: $80
    sub b                                         ; $6EF7: $90
    adc a                                         ; $6EF8: $8F
    sub b                                         ; $6EF9: $90
    sub h                                         ; $6EFA: $94
    add b                                         ; $6EFB: $80
    sbc e                                         ; $6EFC: $9B
    pop af                                        ; $6EFD: $F1
    sub a                                         ; $6EFE: $97
    jr jr_02E_6EE5                                ; $6EFF: $18 $E4

    scf                                           ; $6F01: $37
    sub a                                         ; $6F02: $97
    inc c                                         ; $6F03: $0C
    db $E4                                        ; $6F04: $E4
    ld d, a                                       ; $6F05: $57
    sub a                                         ; $6F06: $97
    ld b, $96                                     ; $6F07: $06 $96
    sub h                                         ; $6F09: $94
    sub d                                         ; $6F0A: $92
    sub b                                         ; $6F0B: $90
    sub d                                         ; $6F0C: $92
    sub h                                         ; $6F0D: $94
    sub d                                         ; $6F0E: $92
    sub h                                         ; $6F0F: $94
    sub a                                         ; $6F10: $97
    sub d                                         ; $6F11: $92
    sub h                                         ; $6F12: $94
    sub a                                         ; $6F13: $97
    sub d                                         ; $6F14: $92
    sub b                                         ; $6F15: $90
    db $EC                                        ; $6F16: $EC
    ret                                           ; $6F17: $C9


    ld l, a                                       ; $6F18: $6F
    sub a                                         ; $6F19: $97
    sbc c                                         ; $6F1A: $99
    sbc e                                         ; $6F1B: $9B
    sub h                                         ; $6F1C: $94
    add b                                         ; $6F1D: $80
    sub h                                         ; $6F1E: $94
    sbc c                                         ; $6F1F: $99
    sbc e                                         ; $6F20: $9B
    sbc h                                         ; $6F21: $9C
    sub h                                         ; $6F22: $94
    add b                                         ; $6F23: $80
    sub h                                         ; $6F24: $94
    sub a                                         ; $6F25: $97
    sbc c                                         ; $6F26: $99
    sub d                                         ; $6F27: $92
    sub h                                         ; $6F28: $94
    sbc c                                         ; $6F29: $99
    sbc e                                         ; $6F2A: $9B
    sbc l                                         ; $6F2B: $9D
    sub [hl]                                      ; $6F2C: $96
    add b                                         ; $6F2D: $80
    sub [hl]                                      ; $6F2E: $96
    sbc e                                         ; $6F2F: $9B
    sbc l                                         ; $6F30: $9D
    sbc a                                         ; $6F31: $9F
    sub [hl]                                      ; $6F32: $96
    add b                                         ; $6F33: $80
    sub [hl]                                      ; $6F34: $96
    sbc c                                         ; $6F35: $99
    sbc e                                         ; $6F36: $9B
    sub [hl]                                      ; $6F37: $96
    sbc e                                         ; $6F38: $9B
    sbc b                                         ; $6F39: $98
    sbc b                                         ; $6F3A: $98
    sbc b                                         ; $6F3B: $98
    sub [hl]                                      ; $6F3C: $96
    sbc e                                         ; $6F3D: $9B
    add b                                         ; $6F3E: $80
    sub [hl]                                      ; $6F3F: $96
    sbc e                                         ; $6F40: $9B
    sbc b                                         ; $6F41: $98
    sbc b                                         ; $6F42: $98
    sbc a                                         ; $6F43: $9F
    sbc e                                         ; $6F44: $9B
    sbc b                                         ; $6F45: $98
    sbc l                                         ; $6F46: $9D
    sbc b                                         ; $6F47: $98
    adc a                                         ; $6F48: $8F
    inc bc                                        ; $6F49: $03
    sub c                                         ; $6F4A: $91
    db $E4                                        ; $6F4B: $E4
    scf                                           ; $6F4C: $37
    add b                                         ; $6F4D: $80
    ld b, $91                                     ; $6F4E: $06 $91
    sub c                                         ; $6F50: $91
    add b                                         ; $6F51: $80
    sub c                                         ; $6F52: $91
    add b                                         ; $6F53: $80
    sub c                                         ; $6F54: $91
    adc a                                         ; $6F55: $8F
    inc bc                                        ; $6F56: $03
    sub c                                         ; $6F57: $91
    sub h                                         ; $6F58: $94
    sub [hl]                                      ; $6F59: $96
    sub h                                         ; $6F5A: $94
    ld b, $90                                     ; $6F5B: $06 $90
    adc a                                         ; $6F5D: $8F
    adc l                                         ; $6F5E: $8D
    adc a                                         ; $6F5F: $8F
    adc l                                         ; $6F60: $8D
    adc d                                         ; $6F61: $8A
    push hl                                       ; $6F62: $E5
    or [hl]                                       ; $6F63: $B6
    ld l, [hl]                                    ; $6F64: $6E
    add b                                         ; $6F65: $80
    ld b, $8D                                     ; $6F66: $06 $8D
    sub c                                         ; $6F68: $91
    adc a                                         ; $6F69: $8F
    add b                                         ; $6F6A: $80
    adc a                                         ; $6F6B: $8F
    sub e                                         ; $6F6C: $93
    sub c                                         ; $6F6D: $91
    add b                                         ; $6F6E: $80
    sub c                                         ; $6F6F: $91
    sub h                                         ; $6F70: $94
    sub e                                         ; $6F71: $93
    add b                                         ; $6F72: $80
    adc a                                         ; $6F73: $8F
    sub e                                         ; $6F74: $93
    sub c                                         ; $6F75: $91
    rst RST_20                                    ; $6F76: $E7
    nop                                           ; $6F77: $00
    inc b                                         ; $6F78: $04
    ld h, l                                       ; $6F79: $65
    ld l, a                                       ; $6F7A: $6F
    db $ED                                        ; $6F7B: $ED
    add b                                         ; $6F7C: $80
    adc h                                         ; $6F7D: $8C
    adc a                                         ; $6F7E: $8F
    adc h                                         ; $6F7F: $8C
    add b                                         ; $6F80: $80
    adc a                                         ; $6F81: $8F
    sub h                                         ; $6F82: $94
    adc a                                         ; $6F83: $8F
    add b                                         ; $6F84: $80
    sub h                                         ; $6F85: $94
    sbc c                                         ; $6F86: $99
    sbc b                                         ; $6F87: $98
    add b                                         ; $6F88: $80
    sub d                                         ; $6F89: $92
    adc a                                         ; $6F8A: $8F
    adc l                                         ; $6F8B: $8D
    add b                                         ; $6F8C: $80
    adc h                                         ; $6F8D: $8C
    adc a                                         ; $6F8E: $8F
    adc h                                         ; $6F8F: $8C
    add b                                         ; $6F90: $80
    adc a                                         ; $6F91: $8F
    sub h                                         ; $6F92: $94
    adc a                                         ; $6F93: $8F
    add b                                         ; $6F94: $80
    sub h                                         ; $6F95: $94
    sbc c                                         ; $6F96: $99
    sbc b                                         ; $6F97: $98
    sbc e                                         ; $6F98: $9B
    sbc b                                         ; $6F99: $98
    sub h                                         ; $6F9A: $94
    adc a                                         ; $6F9B: $8F
    db $ED                                        ; $6F9C: $ED
    add b                                         ; $6F9D: $80
    adc l                                         ; $6F9E: $8D
    sub c                                         ; $6F9F: $91
    adc a                                         ; $6FA0: $8F
    add b                                         ; $6FA1: $80
    adc a                                         ; $6FA2: $8F
    sub e                                         ; $6FA3: $93
    sub c                                         ; $6FA4: $91
    add b                                         ; $6FA5: $80
    sub c                                         ; $6FA6: $91
    sub h                                         ; $6FA7: $94
    sub e                                         ; $6FA8: $93
    add b                                         ; $6FA9: $80
    adc a                                         ; $6FAA: $8F
    sub e                                         ; $6FAB: $93
    sub c                                         ; $6FAC: $91
    rst RST_20                                    ; $6FAD: $E7
    nop                                           ; $6FAE: $00
    ld [bc], a                                    ; $6FAF: $02
    sbc l                                         ; $6FB0: $9D
    ld l, a                                       ; $6FB1: $6F
    db $ED                                        ; $6FB2: $ED
    add b                                         ; $6FB3: $80
    adc l                                         ; $6FB4: $8D
    sub c                                         ; $6FB5: $91
    adc l                                         ; $6FB6: $8D
    adc a                                         ; $6FB7: $8F
    add b                                         ; $6FB8: $80
    add b                                         ; $6FB9: $80
    adc l                                         ; $6FBA: $8D
    sub c                                         ; $6FBB: $91

jr_02E_6FBC:
    adc l                                         ; $6FBC: $8D
    adc a                                         ; $6FBD: $8F
    add b                                         ; $6FBE: $80
    add b                                         ; $6FBF: $80
    sub c                                         ; $6FC0: $91
    adc l                                         ; $6FC1: $8D
    adc a                                         ; $6FC2: $8F
    rst RST_20                                    ; $6FC3: $E7
    nop                                           ; $6FC4: $00
    ld [bc], a                                    ; $6FC5: $02
    or e                                          ; $6FC6: $B3
    ld l, a                                       ; $6FC7: $6F
    db $ED                                        ; $6FC8: $ED
    sub l                                         ; $6FC9: $95
    sub a                                         ; $6FCA: $97
    add b                                         ; $6FCB: $80
    sub l                                         ; $6FCC: $95
    add b                                         ; $6FCD: $80
    adc [hl]                                      ; $6FCE: $8E
    adc l                                         ; $6FCF: $8D
    adc [hl]                                      ; $6FD0: $8E
    sub d                                         ; $6FD1: $92
    add b                                         ; $6FD2: $80
    sbc c                                         ; $6FD3: $99
    pop af                                        ; $6FD4: $F1
    sub l                                         ; $6FD5: $95
    jr jr_02E_6FBC                                ; $6FD6: $18 $E4

    scf                                           ; $6FD8: $37
    sub l                                         ; $6FD9: $95
    inc c                                         ; $6FDA: $0C
    db $E4                                        ; $6FDB: $E4
    ld d, a                                       ; $6FDC: $57
    sub l                                         ; $6FDD: $95
    ld b, $94                                     ; $6FDE: $06 $94
    sub d                                         ; $6FE0: $92
    sub b                                         ; $6FE1: $90
    adc [hl]                                      ; $6FE2: $8E
    sub b                                         ; $6FE3: $90
    sub d                                         ; $6FE4: $92
    sub b                                         ; $6FE5: $90
    sub d                                         ; $6FE6: $92
    sub l                                         ; $6FE7: $95
    sub b                                         ; $6FE8: $90
    sub d                                         ; $6FE9: $92
    sub l                                         ; $6FEA: $95
    sub b                                         ; $6FEB: $90
    adc [hl]                                      ; $6FEC: $8E
    db $ED                                        ; $6FED: $ED
    db $E4                                        ; $6FEE: $E4
    ld b, b                                       ; $6FEF: $40
    jp hl                                         ; $6FF0: $E9


    ld b, h                                       ; $6FF1: $44
    di                                            ; $6FF2: $F3
    inc bc                                        ; $6FF3: $03
    push af                                       ; $6FF4: $F5
    nop                                           ; $6FF5: $00

jr_02E_6FF6:
    and b                                         ; $6FF6: $A0
    ld b, $A0                                     ; $6FF7: $06 $A0
    and b                                         ; $6FF9: $A0
    db $E4                                        ; $6FFA: $E4
    ld h, b                                       ; $6FFB: $60
    and b                                         ; $6FFC: $A0
    db $E4                                        ; $6FFD: $E4
    ld b, b                                       ; $6FFE: $40
    sub c                                         ; $6FFF: $91
    add b                                         ; $7000: $80
    sbc [hl]                                      ; $7001: $9E
    add b                                         ; $7002: $80
    and b                                         ; $7003: $A0
    ld [de], a                                    ; $7004: $12
    add b                                         ; $7005: $80
    ld b, $9E                                     ; $7006: $06 $9E
    add b                                         ; $7008: $80
    and b                                         ; $7009: $A0
    add b                                         ; $700A: $80
    add b                                         ; $700B: $80
    inc c                                         ; $700C: $0C
    and e                                         ; $700D: $A3
    pop af                                        ; $700E: $F1
    and d                                         ; $700F: $A2
    jr jr_02E_6FF6                                ; $7010: $18 $E4

    ld h, b                                       ; $7012: $60
    and d                                         ; $7013: $A2
    inc c                                         ; $7014: $0C
    db $E4                                        ; $7015: $E4
    ld b, b                                       ; $7016: $40
    pop af                                        ; $7017: $F1
    and b                                         ; $7018: $A0
    inc h                                         ; $7019: $24
    db $E4                                        ; $701A: $E4
    ld h, b                                       ; $701B: $60

jr_02E_701C:
    and b                                         ; $701C: $A0
    ld h, b                                       ; $701D: $60
    db $E4                                        ; $701E: $E4
    ld b, b                                       ; $701F: $40
    add b                                         ; $7020: $80

jr_02E_7021:
    ld h, b                                       ; $7021: $60
    db $EC                                        ; $7022: $EC
    push bc                                       ; $7023: $C5
    ld [hl], b                                    ; $7024: $70
    sbc b                                         ; $7025: $98
    sbc c                                         ; $7026: $99
    sbc b                                         ; $7027: $98
    db $E4                                        ; $7028: $E4
    ld h, b                                       ; $7029: $60
    sbc b                                         ; $702A: $98
    ld b, $E4                                     ; $702B: $06 $E4
    ld b, b                                       ; $702D: $40
    sub h                                         ; $702E: $94
    inc c                                         ; $702F: $0C
    db $E4                                        ; $7030: $E4

jr_02E_7031:
    ld h, b                                       ; $7031: $60
    sub h                                         ; $7032: $94
    ld b, $E4                                     ; $7033: $06 $E4
    ld b, b                                       ; $7035: $40
    sub c                                         ; $7036: $91
    inc h                                         ; $7037: $24
    db $E4                                        ; $7038: $E4
    ld h, b                                       ; $7039: $60
    sub c                                         ; $703A: $91
    jr jr_02E_7021                                ; $703B: $18 $E4

    ld b, b                                       ; $703D: $40
    db $EC                                        ; $703E: $EC
    push bc                                       ; $703F: $C5
    ld [hl], b                                    ; $7040: $70
    and b                                         ; $7041: $A0
    pop af                                        ; $7042: $F1
    sbc l                                         ; $7043: $9D
    ld [de], a                                    ; $7044: $12
    db $E4                                        ; $7045: $E4

jr_02E_7046:
    ld h, b                                       ; $7046: $60
    sbc l                                         ; $7047: $9D
    inc c                                         ; $7048: $0C
    db $E4                                        ; $7049: $E4
    ld b, b                                       ; $704A: $40
    sbc [hl]                                      ; $704B: $9E
    inc bc                                        ; $704C: $03
    sbc l                                         ; $704D: $9D
    sbc e                                         ; $704E: $9B
    ld b, $80                                     ; $704F: $06 $80
    sbc l                                         ; $7051: $9D
    inc h                                         ; $7052: $24

jr_02E_7053:
    db $E4                                        ; $7053: $E4
    ld h, b                                       ; $7054: $60
    sbc l                                         ; $7055: $9D
    ld h, b                                       ; $7056: $60
    add b                                         ; $7057: $80
    jr jr_02E_7046                                ; $7058: $18 $EC

    push hl                                       ; $705A: $E5
    ld [hl], b                                    ; $705B: $70
    db $EC                                        ; $705C: $EC
    ld b, l                                       ; $705D: $45
    ld [hl], c                                    ; $705E: $71
    sbc e                                         ; $705F: $9B
    ld b, $9C                                     ; $7060: $06 $9C
    add b                                         ; $7062: $80
    sbc e                                         ; $7063: $9B
    add b                                         ; $7064: $80
    sub h                                         ; $7065: $94

jr_02E_7066:
    add b                                         ; $7066: $80
    add b                                         ; $7067: $80
    sub a                                         ; $7068: $97
    add b                                         ; $7069: $80
    sbc [hl]                                      ; $706A: $9E
    pop af                                        ; $706B: $F1
    sbc e                                         ; $706C: $9B
    jr nc, jr_02E_7053                            ; $706D: $30 $E4

    ld h, b                                       ; $706F: $60
    sbc e                                         ; $7070: $9B
    ld c, b                                       ; $7071: $48
    db $E4                                        ; $7072: $E4
    ld b, b                                       ; $7073: $40
    add b                                         ; $7074: $80
    ld b, $EC                                     ; $7075: $06 $EC
    ld b, l                                       ; $7077: $45
    ld [hl], c                                    ; $7078: $71
    sbc e                                         ; $7079: $9B
    ld b, $9C                                     ; $707A: $06 $9C
    pop af                                        ; $707C: $F1
    sbc [hl]                                      ; $707D: $9E
    jr jr_02E_701C                                ; $707E: $18 $9C

    ld b, $9E                                     ; $7080: $06 $9E
    pop af                                        ; $7082: $F1
    and b                                         ; $7083: $A0
    inc h                                         ; $7084: $24
    db $E4                                        ; $7085: $E4
    ld h, b                                       ; $7086: $60
    and b                                         ; $7087: $A0
    inc c                                         ; $7088: $0C
    db $E4                                        ; $7089: $E4
    ld b, b                                       ; $708A: $40
    sbc l                                         ; $708B: $9D
    ld b, $9F                                     ; $708C: $06 $9F
    pop af                                        ; $708E: $F1
    and b                                         ; $708F: $A0
    jr jr_02E_7031                                ; $7090: $18 $9F

    ld b, $A0                                     ; $7092: $06 $A0
    pop af                                        ; $7094: $F1
    and d                                         ; $7095: $A2
    inc h                                         ; $7096: $24
    db $E4                                        ; $7097: $E4
    ld h, b                                       ; $7098: $60
    and d                                         ; $7099: $A2
    inc c                                         ; $709A: $0C
    db $E4                                        ; $709B: $E4
    ld b, b                                       ; $709C: $40
    and d                                         ; $709D: $A2
    ld b, $A2                                     ; $709E: $06 $A2
    and d                                         ; $70A0: $A2
    add b                                         ; $70A1: $80
    add b                                         ; $70A2: $80
    sbc b                                         ; $70A3: $98
    add b                                         ; $70A4: $80
    sbc b                                         ; $70A5: $98
    and d                                         ; $70A6: $A2
    add b                                         ; $70A7: $80
    sbc b                                         ; $70A8: $98
    and d                                         ; $70A9: $A2
    add b                                         ; $70AA: $80
    sbc b                                         ; $70AB: $98
    and d                                         ; $70AC: $A2
    add b                                         ; $70AD: $80
    sbc b                                         ; $70AE: $98
    sbc b                                         ; $70AF: $98
    add b                                         ; $70B0: $80
    sbc b                                         ; $70B1: $98
    add b                                         ; $70B2: $80
    sbc b                                         ; $70B3: $98
    sub [hl]                                      ; $70B4: $96
    inc bc                                        ; $70B5: $03

jr_02E_70B6:
    sbc b                                         ; $70B6: $98
    sbc e                                         ; $70B7: $9B
    sbc l                                         ; $70B8: $9D
    sbc e                                         ; $70B9: $9B
    ld b, $97                                     ; $70BA: $06 $97
    sub [hl]                                      ; $70BC: $96
    sub h                                         ; $70BD: $94
    sub [hl]                                      ; $70BE: $96
    sub h                                         ; $70BF: $94

jr_02E_70C0:
    sub c                                         ; $70C0: $91
    adc a                                         ; $70C1: $8F
    push hl                                       ; $70C2: $E5
    ld e, $70                                     ; $70C3: $1E $70
    add b                                         ; $70C5: $80
    ld c, b                                       ; $70C6: $48
    add b                                         ; $70C7: $80
    inc c                                         ; $70C8: $0C
    sub c                                         ; $70C9: $91
    pop af                                        ; $70CA: $F1
    sub [hl]                                      ; $70CB: $96
    jr jr_02E_7066                                ; $70CC: $18 $98

    inc c                                         ; $70CE: $0C
    sbc c                                         ; $70CF: $99
    jr jr_02E_70B6                                ; $70D0: $18 $E4

    ld h, b                                       ; $70D2: $60
    sbc c                                         ; $70D3: $99
    inc c                                         ; $70D4: $0C

jr_02E_70D5:
    db $E4                                        ; $70D5: $E4
    ld b, b                                       ; $70D6: $40
    sbc b                                         ; $70D7: $98
    pop af                                        ; $70D8: $F1
    sbc e                                         ; $70D9: $9B
    jr jr_02E_70C0                                ; $70DA: $18 $E4

    ld h, b                                       ; $70DC: $60
    sbc e                                         ; $70DD: $9B

jr_02E_70DE:
    db $E4                                        ; $70DE: $E4
    ld b, b                                       ; $70DF: $40
    sbc l                                         ; $70E0: $9D
    inc c                                         ; $70E1: $0C
    sbc e                                         ; $70E2: $9B
    sbc c                                         ; $70E3: $99
    db $ED                                        ; $70E4: $ED
    db $E4                                        ; $70E5: $E4
    ld b, b                                       ; $70E6: $40
    sbc l                                         ; $70E7: $9D
    inc c                                         ; $70E8: $0C
    db $E4                                        ; $70E9: $E4
    ld h, b                                       ; $70EA: $60
    sbc l                                         ; $70EB: $9D
    ld b, $E4                                     ; $70EC: $06 $E4
    ld b, b                                       ; $70EE: $40
    sub [hl]                                      ; $70EF: $96
    inc c                                         ; $70F0: $0C
    db $E4                                        ; $70F1: $E4
    ld h, b                                       ; $70F2: $60
    sub [hl]                                      ; $70F3: $96
    ld b, $E4                                     ; $70F4: $06 $E4
    ld b, b                                       ; $70F6: $40
    sbc l                                         ; $70F7: $9D
    jr nc, jr_02E_70DE                            ; $70F8: $30 $E4

    ld h, b                                       ; $70FA: $60
    sbc l                                         ; $70FB: $9D
    db $E4                                        ; $70FC: $E4

jr_02E_70FD:
    ld b, b                                       ; $70FD: $40
    sbc l                                         ; $70FE: $9D
    inc c                                         ; $70FF: $0C
    sbc e                                         ; $7100: $9B
    sbc c                                         ; $7101: $99
    sbc b                                         ; $7102: $98
    sbc c                                         ; $7103: $99
    db $E4                                        ; $7104: $E4
    ld b, b                                       ; $7105: $40
    sbc e                                         ; $7106: $9B
    inc c                                         ; $7107: $0C
    db $E4                                        ; $7108: $E4
    ld h, b                                       ; $7109: $60
    sbc e                                         ; $710A: $9B
    ld b, $E4                                     ; $710B: $06 $E4
    ld b, b                                       ; $710D: $40
    sub h                                         ; $710E: $94
    inc c                                         ; $710F: $0C
    db $E4                                        ; $7110: $E4

jr_02E_7111:
    ld h, b                                       ; $7111: $60
    sub h                                         ; $7112: $94
    ld b, $E4                                     ; $7113: $06 $E4
    ld b, b                                       ; $7115: $40
    sbc e                                         ; $7116: $9B
    jr nc, jr_02E_70FD                            ; $7117: $30 $E4

    ld h, b                                       ; $7119: $60
    sbc e                                         ; $711A: $9B
    db $E4                                        ; $711B: $E4
    ld b, b                                       ; $711C: $40
    sbc l                                         ; $711D: $9D
    inc c                                         ; $711E: $0C
    sbc e                                         ; $711F: $9B
    sbc c                                         ; $7120: $99
    sbc b                                         ; $7121: $98

jr_02E_7122:
    sub c                                         ; $7122: $91
    sub d                                         ; $7123: $92
    sub c                                         ; $7124: $91
    sub d                                         ; $7125: $92
    sbc c                                         ; $7126: $99

jr_02E_7127:
    jr @-$63                                      ; $7127: $18 $9B

    inc c                                         ; $7129: $0C
    sbc c                                         ; $712A: $99
    jr nc, jr_02E_7111                            ; $712B: $30 $E4

    ld h, b                                       ; $712D: $60
    sbc c                                         ; $712E: $99
    add b                                         ; $712F: $80
    inc c                                         ; $7130: $0C
    db $E4                                        ; $7131: $E4
    ld b, b                                       ; $7132: $40
    sub h                                         ; $7133: $94
    sub [hl]                                      ; $7134: $96
    sbc b                                         ; $7135: $98
    sbc c                                         ; $7136: $99
    sbc c                                         ; $7137: $99
    jr jr_02E_70D5                                ; $7138: $18 $9B

    inc c                                         ; $713A: $0C
    sbc c                                         ; $713B: $99
    jr nc, jr_02E_7122                            ; $713C: $30 $E4

    ld h, b                                       ; $713E: $60
    sbc c                                         ; $713F: $99
    add b                                         ; $7140: $80
    jr jr_02E_7127                                ; $7141: $18 $E4

    ld b, b                                       ; $7143: $40
    db $ED                                        ; $7144: $ED
    sbc c                                         ; $7145: $99
    ld b, $9A                                     ; $7146: $06 $9A
    add b                                         ; $7148: $80
    sbc c                                         ; $7149: $99
    add b                                         ; $714A: $80
    sub d                                         ; $714B: $92
    add b                                         ; $714C: $80
    add b                                         ; $714D: $80
    sub l                                         ; $714E: $95
    add b                                         ; $714F: $80
    sbc h                                         ; $7150: $9C
    pop af                                        ; $7151: $F1
    sbc c                                         ; $7152: $99
    jr nc, @-$1A                                  ; $7153: $30 $E4

    ld h, b                                       ; $7155: $60
    sbc c                                         ; $7156: $99
    ld c, b                                       ; $7157: $48
    db $E4                                        ; $7158: $E4
    ld b, b                                       ; $7159: $40
    add b                                         ; $715A: $80
    ld b, $ED                                     ; $715B: $06 $ED
    jp hl                                         ; $715D: $E9


    adc b                                         ; $715E: $88
    db $E4                                        ; $715F: $E4
    ld d, e                                       ; $7160: $53
    ld de, $E448                                  ; $7161: $11 $48 $E4
    ld d, e                                       ; $7164: $53
    ld de, $E40C                                  ; $7165: $11 $0C $E4
    ld d, e                                       ; $7168: $53
    ld de, $E418                                  ; $7169: $11 $18 $E4
    ld d, e                                       ; $716C: $53
    ld de, $E40C                                  ; $716D: $11 $0C $E4
    ld d, e                                       ; $7170: $53
    ld de, $E424                                  ; $7171: $11 $24 $E4
    ld d, e                                       ; $7174: $53
    ld de, $E424                                  ; $7175: $11 $24 $E4
    ld b, c                                       ; $7178: $41
    ld hl, $E424                                  ; $7179: $21 $24 $E4
    inc [hl]                                      ; $717C: $34
    ld h, $04                                     ; $717D: $26 $04
    db $E4                                        ; $717F: $E4
    inc [hl]                                      ; $7180: $34
    ld h, $04                                     ; $7181: $26 $04
    db $E4                                        ; $7183: $E4
    inc [hl]                                      ; $7184: $34
    ld h, $04                                     ; $7185: $26 $04
    db $E4                                        ; $7187: $E4
    inc [hl]                                      ; $7188: $34
    ld h, $06                                     ; $7189: $26 $06
    db $E4                                        ; $718B: $E4
    ld [hl], d                                    ; $718C: $72
    ld [hl-], a                                   ; $718D: $32
    ld b, $E4                                     ; $718E: $06 $E4
    ld [hl], d                                    ; $7190: $72
    ld [hl-], a                                   ; $7191: $32
    ld b, $E4                                     ; $7192: $06 $E4
    ld [hl], d                                    ; $7194: $72
    db $10                                        ; $7195: $10
    ld b, $E4                                     ; $7196: $06 $E4
    ld [hl], d                                    ; $7198: $72
    db $10                                        ; $7199: $10
    ld b, $E4                                     ; $719A: $06 $E4
    ld [hl], d                                    ; $719C: $72
    ld [hl-], a                                   ; $719D: $32
    ld b, $E4                                     ; $719E: $06 $E4
    ld [hl], d                                    ; $71A0: $72
    ld [hl-], a                                   ; $71A1: $32
    ld b, $E4                                     ; $71A2: $06 $E4
    ld [hl], d                                    ; $71A4: $72
    db $10                                        ; $71A5: $10
    ld b, $EC                                     ; $71A6: $06 $EC
    pop hl                                        ; $71A8: $E1
    ld [hl], c                                    ; $71A9: $71
    db $EC                                        ; $71AA: $EC
    rla                                           ; $71AB: $17
    ld [hl], d                                    ; $71AC: $72
    db $EC                                        ; $71AD: $EC
    ld d, b                                       ; $71AE: $50
    ld [hl], d                                    ; $71AF: $72
    db $EC                                        ; $71B0: $EC
    rla                                           ; $71B1: $17
    ld [hl], d                                    ; $71B2: $72
    db $E4                                        ; $71B3: $E4
    ld h, d                                       ; $71B4: $62
    inc h                                         ; $71B5: $24
    ld b, $E4                                     ; $71B6: $06 $E4
    ld h, d                                       ; $71B8: $62
    inc h                                         ; $71B9: $24
    ld b, $E4                                     ; $71BA: $06 $E4
    ld h, d                                       ; $71BC: $62
    inc h                                         ; $71BD: $24
    ld b, $E4                                     ; $71BE: $06 $E4
    ld b, c                                       ; $71C0: $41
    ld hl, $E406                                  ; $71C1: $21 $06 $E4
    ld b, c                                       ; $71C4: $41
    ld hl, $E406                                  ; $71C5: $21 $06 $E4
    ld h, d                                       ; $71C8: $62
    inc h                                         ; $71C9: $24
    ld b, $E4                                     ; $71CA: $06 $E4
    ld [hl], c                                    ; $71CC: $71
    ld [hl], $06                                  ; $71CD: $36 $06
    db $E4                                        ; $71CF: $E4
    ld h, d                                       ; $71D0: $62
    inc h                                         ; $71D1: $24
    ld b, $EC                                     ; $71D2: $06 $EC
    add [hl]                                      ; $71D4: $86
    ld [hl], d                                    ; $71D5: $72
    db $E4                                        ; $71D6: $E4
    ld h, d                                       ; $71D7: $62
    inc h                                         ; $71D8: $24
    ld b, $E4                                     ; $71D9: $06 $E4
    ld [hl], c                                    ; $71DB: $71
    ld [hl], $06                                  ; $71DC: $36 $06
    push hl                                       ; $71DE: $E5
    ld [hl], a                                    ; $71DF: $77
    ld [hl], c                                    ; $71E0: $71
    db $E4                                        ; $71E1: $E4
    ld [hl], c                                    ; $71E2: $71
    ld [hl], $06                                  ; $71E3: $36 $06
    db $E4                                        ; $71E5: $E4
    ld [hl], c                                    ; $71E6: $71
    ld [hl], $0C                                  ; $71E7: $36 $0C
    db $E4                                        ; $71E9: $E4
    ld [hl], c                                    ; $71EA: $71
    ld [hl], $06                                  ; $71EB: $36 $06
    db $E4                                        ; $71ED: $E4
    ld h, d                                       ; $71EE: $62
    inc h                                         ; $71EF: $24
    inc c                                         ; $71F0: $0C
    db $E4                                        ; $71F1: $E4
    ld [hl], c                                    ; $71F2: $71
    ld [hl], $06                                  ; $71F3: $36 $06
    db $E4                                        ; $71F5: $E4
    ld d, e                                       ; $71F6: $53
    ld de, $E406                                  ; $71F7: $11 $06 $E4
    ld b, c                                       ; $71FA: $41
    ld hl, $E406                                  ; $71FB: $21 $06 $E4
    ld [hl], c                                    ; $71FE: $71
    ld [hl], $0C                                  ; $71FF: $36 $0C
    db $E4                                        ; $7201: $E4
    ld [hl], c                                    ; $7202: $71
    ld [hl], $06                                  ; $7203: $36 $06
    db $E4                                        ; $7205: $E4
    ld h, d                                       ; $7206: $62
    inc h                                         ; $7207: $24
    inc c                                         ; $7208: $0C
    db $E4                                        ; $7209: $E4
    ld [hl], c                                    ; $720A: $71
    ld [hl], $06                                  ; $720B: $36 $06
    db $E4                                        ; $720D: $E4
    ld h, d                                       ; $720E: $62
    inc h                                         ; $720F: $24
    ld b, $E7                                     ; $7210: $06 $E7
    nop                                           ; $7212: $00
    ld de, $71E1                                  ; $7213: $11 $E1 $71
    db $ED                                        ; $7216: $ED
    db $E4                                        ; $7217: $E4
    ld [hl], c                                    ; $7218: $71
    ld [hl], $06                                  ; $7219: $36 $06
    db $E4                                        ; $721B: $E4
    ld [hl], c                                    ; $721C: $71
    ld [hl], $0C                                  ; $721D: $36 $0C
    db $E4                                        ; $721F: $E4
    ld [hl], c                                    ; $7220: $71
    ld [hl], $06                                  ; $7221: $36 $06
    db $E4                                        ; $7223: $E4
    ld h, d                                       ; $7224: $62
    inc h                                         ; $7225: $24
    inc c                                         ; $7226: $0C
    db $E4                                        ; $7227: $E4
    ld [hl], c                                    ; $7228: $71
    ld [hl], $06                                  ; $7229: $36 $06
    db $E4                                        ; $722B: $E4
    ld d, e                                       ; $722C: $53
    ld de, $E406                                  ; $722D: $11 $06 $E4
    ld b, c                                       ; $7230: $41
    ld hl, $E406                                  ; $7231: $21 $06 $E4
    ld [hl], c                                    ; $7234: $71
    ld [hl], $0C                                  ; $7235: $36 $0C
    db $E4                                        ; $7237: $E4
    ld h, d                                       ; $7238: $62
    inc h                                         ; $7239: $24
    inc bc                                        ; $723A: $03
    db $E4                                        ; $723B: $E4
    ld h, d                                       ; $723C: $62
    inc h                                         ; $723D: $24
    inc bc                                        ; $723E: $03
    db $E4                                        ; $723F: $E4
    ld h, d                                       ; $7240: $62
    inc h                                         ; $7241: $24
    ld b, $E4                                     ; $7242: $06 $E4
    ld h, d                                       ; $7244: $62
    inc h                                         ; $7245: $24
    ld b, $E4                                     ; $7246: $06 $E4
    ld h, d                                       ; $7248: $62
    inc h                                         ; $7249: $24
    ld b, $E4                                     ; $724A: $06 $E4
    ld h, d                                       ; $724C: $62
    inc h                                         ; $724D: $24
    ld b, $ED                                     ; $724E: $06 $ED
    db $E4                                        ; $7250: $E4
    ld [hl], c                                    ; $7251: $71
    ld [hl], $06                                  ; $7252: $36 $06
    db $E4                                        ; $7254: $E4
    ld [hl], c                                    ; $7255: $71
    ld [hl], $0C                                  ; $7256: $36 $0C
    db $E4                                        ; $7258: $E4
    ld [hl], c                                    ; $7259: $71
    ld [hl], $06                                  ; $725A: $36 $06
    db $E4                                        ; $725C: $E4
    ld h, d                                       ; $725D: $62
    inc h                                         ; $725E: $24
    inc c                                         ; $725F: $0C
    db $E4                                        ; $7260: $E4
    ld [hl], c                                    ; $7261: $71
    ld [hl], $06                                  ; $7262: $36 $06
    db $E4                                        ; $7264: $E4
    ld d, e                                       ; $7265: $53
    ld de, $E406                                  ; $7266: $11 $06 $E4
    ld b, c                                       ; $7269: $41
    ld hl, $E406                                  ; $726A: $21 $06 $E4

jr_02E_726D:
    ld [hl], c                                    ; $726D: $71
    ld [hl], $0C                                  ; $726E: $36 $0C
    db $E4                                        ; $7270: $E4
    ld [hl], c                                    ; $7271: $71
    ld [hl], $06                                  ; $7272: $36 $06
    db $E4                                        ; $7274: $E4
    ld h, d                                       ; $7275: $62
    inc h                                         ; $7276: $24
    inc c                                         ; $7277: $0C
    db $E4                                        ; $7278: $E4
    ld [hl], c                                    ; $7279: $71
    ld [hl], $06                                  ; $727A: $36 $06
    db $E4                                        ; $727C: $E4
    ld h, d                                       ; $727D: $62
    inc h                                         ; $727E: $24
    ld b, $E7                                     ; $727F: $06 $E7
    nop                                           ; $7281: $00
    rlca                                          ; $7282: $07
    ld d, b                                       ; $7283: $50
    ld [hl], d                                    ; $7284: $72
    db $ED                                        ; $7285: $ED
    db $E4                                        ; $7286: $E4
    ld h, d                                       ; $7287: $62
    inc h                                         ; $7288: $24
    ld b, $E4                                     ; $7289: $06 $E4
    ld [hl], c                                    ; $728B: $71
    ld [hl], $06                                  ; $728C: $36 $06
    db $E4                                        ; $728E: $E4
    ld [hl], c                                    ; $728F: $71
    ld [hl], $06                                  ; $7290: $36 $06
    rst RST_20                                    ; $7292: $E7
    nop                                           ; $7293: $00

jr_02E_7294:
    ld [bc], a                                    ; $7294: $02
    add [hl]                                      ; $7295: $86
    ld [hl], d                                    ; $7296: $72
    db $ED                                        ; $7297: $ED
    inc b                                         ; $7298: $04
    add b                                         ; $7299: $80
    inc de                                        ; $729A: $13
    or c                                          ; $729B: $B1
    ld [hl], d                                    ; $729C: $72
    inc c                                         ; $729D: $0C
    add c                                         ; $729E: $81
    add b                                         ; $729F: $80
    jr jr_02E_726D                                ; $72A0: $18 $CB

    ld [hl], e                                    ; $72A2: $73
    inc c                                         ; $72A3: $0C
    add c                                         ; $72A4: $81
    add b                                         ; $72A5: $80
    dec e                                         ; $72A6: $1D
    ld b, c                                       ; $72A7: $41
    ld [hl], l                                    ; $72A8: $75
    inc c                                         ; $72A9: $0C
    add c                                         ; $72AA: $81
    add b                                         ; $72AB: $80
    ld [hl+], a                                   ; $72AC: $22
    inc l                                         ; $72AD: $2C
    halt                                          ; $72AE: $76
    nop                                           ; $72AF: $00
    add c                                         ; $72B0: $81
    db $E4                                        ; $72B1: $E4
    ld a, b                                       ; $72B2: $78
    jp hl                                         ; $72B3: $E9


    ld de, $00EE                                  ; $72B4: $11 $EE $00
    db $EC                                        ; $72B7: $EC
    inc hl                                        ; $72B8: $23
    ld [hl], e                                    ; $72B9: $73
    db $EC                                        ; $72BA: $EC
    ld h, b                                       ; $72BB: $60
    ld [hl], e                                    ; $72BC: $73
    and $02                                       ; $72BD: $E6 $02
    db $EC                                        ; $72BF: $EC
    ld h, b                                       ; $72C0: $60
    ld [hl], e                                    ; $72C1: $73
    and $FE                                       ; $72C2: $E6 $FE
    db $EC                                        ; $72C4: $EC
    sbc e                                         ; $72C5: $9B
    ld [hl], e                                    ; $72C6: $73
    and $FD                                       ; $72C7: $E6 $FD
    db $EC                                        ; $72C9: $EC
    sbc e                                         ; $72CA: $9B
    ld [hl], e                                    ; $72CB: $73
    and $03                                       ; $72CC: $E6 $03
    adc l                                         ; $72CE: $8D
    sub d                                         ; $72CF: $92
    sbc c                                         ; $72D0: $99
    adc h                                         ; $72D1: $8C
    sub c                                         ; $72D2: $91
    sbc b                                         ; $72D3: $98
    adc e                                         ; $72D4: $8B
    sub b                                         ; $72D5: $90
    sub a                                         ; $72D6: $97
    adc d                                         ; $72D7: $8A
    adc a                                         ; $72D8: $8F
    sub [hl]                                      ; $72D9: $96
    adc c                                         ; $72DA: $89
    adc [hl]                                      ; $72DB: $8E
    sub l                                         ; $72DC: $95
    adc b                                         ; $72DD: $88
    db $EC                                        ; $72DE: $EC
    and [hl]                                      ; $72DF: $A6
    ld [hl], e                                    ; $72E0: $73
    db $EC                                        ; $72E1: $EC
    or l                                          ; $72E2: $B5
    ld [hl], e                                    ; $72E3: $73
    db $EC                                        ; $72E4: $EC
    and [hl]                                      ; $72E5: $A6
    ld [hl], e                                    ; $72E6: $73
    and $02                                       ; $72E7: $E6 $02
    db $EC                                        ; $72E9: $EC
    or l                                          ; $72EA: $B5
    ld [hl], e                                    ; $72EB: $73
    and $FE                                       ; $72EC: $E6 $FE
    db $EC                                        ; $72EE: $EC
    and [hl]                                      ; $72EF: $A6
    ld [hl], e                                    ; $72F0: $73
    db $EC                                        ; $72F1: $EC
    or l                                          ; $72F2: $B5
    ld [hl], e                                    ; $72F3: $73
    db $EC                                        ; $72F4: $EC
    cp [hl]                                       ; $72F5: $BE
    ld [hl], e                                    ; $72F6: $73
    db $E4                                        ; $72F7: $E4
    ld [hl], a                                    ; $72F8: $77
    sub d                                         ; $72F9: $92
    ld b, $E4                                     ; $72FA: $06 $E4
    ld b, a                                       ; $72FC: $47
    sub d                                         ; $72FD: $92
    db $E4                                        ; $72FE: $E4
    ld [hl], a                                    ; $72FF: $77
    add b                                         ; $7300: $80
    jr jr_02E_7294                                ; $7301: $18 $91

    inc c                                         ; $7303: $0C
    sub b                                         ; $7304: $90
    db $E4                                        ; $7305: $E4
    daa                                           ; $7306: $27
    sub b                                         ; $7307: $90
    db $E4                                        ; $7308: $E4
    ld [hl], a                                    ; $7309: $77
    add b                                         ; $730A: $80

jr_02E_730B:
    inc h                                         ; $730B: $24
    db $E4                                        ; $730C: $E4
    ld [hl], a                                    ; $730D: $77
    adc a                                         ; $730E: $8F
    inc c                                         ; $730F: $0C
    db $E4                                        ; $7310: $E4
    ld b, a                                       ; $7311: $47
    adc a                                         ; $7312: $8F

jr_02E_7313:
    ld b, $E4                                     ; $7313: $06 $E4
    ld [hl], a                                    ; $7315: $77
    adc [hl]                                      ; $7316: $8E
    inc c                                         ; $7317: $0C
    db $E4                                        ; $7318: $E4
    ld b, a                                       ; $7319: $47
    adc [hl]                                      ; $731A: $8E
    ld b, $E4                                     ; $731B: $06 $E4
    ld [hl], a                                    ; $731D: $77
    adc l                                         ; $731E: $8D
    inc c                                         ; $731F: $0C
    push hl                                       ; $7320: $E5
    or c                                          ; $7321: $B1
    ld [hl], d                                    ; $7322: $72
    pop af                                        ; $7323: $F1
    sub h                                         ; $7324: $94
    jr nc, jr_02E_730B                            ; $7325: $30 $E4

    ld e, b                                       ; $7327: $58
    sub h                                         ; $7328: $94
    db $E4                                        ; $7329: $E4
    ld a, b                                       ; $732A: $78
    pop af                                        ; $732B: $F1
    sub [hl]                                      ; $732C: $96
    jr jr_02E_7313                                ; $732D: $18 $E4

    ld e, b                                       ; $732F: $58

jr_02E_7330:
    pop af                                        ; $7330: $F1
    sub [hl]                                      ; $7331: $96
    db $E4                                        ; $7332: $E4
    ld a, b                                       ; $7333: $78
    pop af                                        ; $7334: $F1
    sub h                                         ; $7335: $94
    db $E4                                        ; $7336: $E4
    ld e, b                                       ; $7337: $58
    pop af                                        ; $7338: $F1

jr_02E_7339:
    sub h                                         ; $7339: $94
    db $E4                                        ; $733A: $E4
    ld a, b                                       ; $733B: $78
    pop af                                        ; $733C: $F1
    sub e                                         ; $733D: $93
    ld h, b                                       ; $733E: $60
    ld a, [$E760]                                 ; $733F: $FA $60 $E7
    nop                                           ; $7342: $00
    ld [bc], a                                    ; $7343: $02
    inc hl                                        ; $7344: $23
    ld [hl], e                                    ; $7345: $73
    db $E4                                        ; $7346: $E4
    ld a, b                                       ; $7347: $78
    pop af                                        ; $7348: $F1
    sub e                                         ; $7349: $93

jr_02E_734A:
    jr nc, jr_02E_7330                            ; $734A: $30 $E4

    ld e, b                                       ; $734C: $58
    pop af                                        ; $734D: $F1
    sub e                                         ; $734E: $93
    db $E4                                        ; $734F: $E4
    ld a, b                                       ; $7350: $78
    pop af                                        ; $7351: $F1
    sub c                                         ; $7352: $91

jr_02E_7353:
    jr nc, jr_02E_7339                            ; $7353: $30 $E4

    ld e, b                                       ; $7355: $58
    pop af                                        ; $7356: $F1
    sub c                                         ; $7357: $91
    db $E4                                        ; $7358: $E4
    ld a, b                                       ; $7359: $78
    pop af                                        ; $735A: $F1
    sub b                                         ; $735B: $90
    ld h, b                                       ; $735C: $60
    ld a, [$ED60]                                 ; $735D: $FA $60 $ED
    db $E4                                        ; $7360: $E4
    ld a, b                                       ; $7361: $78
    pop af                                        ; $7362: $F1
    adc h                                         ; $7363: $8C
    jr nc, jr_02E_734A                            ; $7364: $30 $E4

    ld e, b                                       ; $7366: $58
    pop af                                        ; $7367: $F1
    adc h                                         ; $7368: $8C
    db $E4                                        ; $7369: $E4
    ld a, b                                       ; $736A: $78
    pop af                                        ; $736B: $F1
    adc a                                         ; $736C: $8F
    jr nc, jr_02E_7353                            ; $736D: $30 $E4

    ld e, b                                       ; $736F: $58
    pop af                                        ; $7370: $F1
    adc a                                         ; $7371: $8F
    db $E4                                        ; $7372: $E4
    ld [hl], a                                    ; $7373: $77
    adc [hl]                                      ; $7374: $8E
    inc c                                         ; $7375: $0C
    adc l                                         ; $7376: $8D
    db $E4                                        ; $7377: $E4
    ld d, a                                       ; $7378: $57
    adc l                                         ; $7379: $8D
    add b                                         ; $737A: $80
    inc h                                         ; $737B: $24
    db $E4                                        ; $737C: $E4
    ld [hl], a                                    ; $737D: $77
    adc l                                         ; $737E: $8D
    inc c                                         ; $737F: $0C
    adc h                                         ; $7380: $8C
    db $E4                                        ; $7381: $E4
    ld [hl], a                                    ; $7382: $77
    sbc l                                         ; $7383: $9D
    ld b, $A2                                     ; $7384: $06 $A2
    and h                                         ; $7386: $A4
    xor c                                         ; $7387: $A9
    db $E4                                        ; $7388: $E4
    ld d, a                                       ; $7389: $57
    sbc l                                         ; $738A: $9D
    and d                                         ; $738B: $A2
    and h                                         ; $738C: $A4
    xor c                                         ; $738D: $A9
    db $E4                                        ; $738E: $E4
    scf                                           ; $738F: $37
    sbc l                                         ; $7390: $9D
    and d                                         ; $7391: $A2
    and h                                         ; $7392: $A4
    xor c                                         ; $7393: $A9
    db $E4                                        ; $7394: $E4
    daa                                           ; $7395: $27
    sbc l                                         ; $7396: $9D
    and d                                         ; $7397: $A2
    and h                                         ; $7398: $A4
    xor c                                         ; $7399: $A9
    db $ED                                        ; $739A: $ED
    db $E4                                        ; $739B: $E4
    ld [hl], a                                    ; $739C: $77
    sub e                                         ; $739D: $93

jr_02E_739E:
    sbc b                                         ; $739E: $98
    sub e                                         ; $739F: $93
    sub d                                         ; $73A0: $92
    sub a                                         ; $73A1: $97

jr_02E_73A2:
    sub d                                         ; $73A2: $92

jr_02E_73A3:
    sub c                                         ; $73A3: $91
    sub [hl]                                      ; $73A4: $96
    db $ED                                        ; $73A5: $ED
    db $E4                                        ; $73A6: $E4
    ld [hl], a                                    ; $73A7: $77
    sub e                                         ; $73A8: $93
    ld b, $E4                                     ; $73A9: $06 $E4
    ld b, a                                       ; $73AB: $47
    sub e                                         ; $73AC: $93
    rst RST_20                                    ; $73AD: $E7
    nop                                           ; $73AE: $00
    inc b                                         ; $73AF: $04
    and [hl]                                      ; $73B0: $A6
    ld [hl], e                                    ; $73B1: $73
    add b                                         ; $73B2: $80
    jr jr_02E_73A2                                ; $73B3: $18 $ED

    db $E4                                        ; $73B5: $E4
    ld a, b                                       ; $73B6: $78
    sub h                                         ; $73B7: $94
    jr jr_02E_739E                                ; $73B8: $18 $E4

    ld e, b                                       ; $73BA: $58
    sub h                                         ; $73BB: $94
    ld h, b                                       ; $73BC: $60
    db $ED                                        ; $73BD: $ED
    db $E4                                        ; $73BE: $E4
    ld [hl], a                                    ; $73BF: $77
    sub e                                         ; $73C0: $93
    ld b, $E4                                     ; $73C1: $06 $E4
    ld b, a                                       ; $73C3: $47
    sub e                                         ; $73C4: $93
    rst RST_20                                    ; $73C5: $E7
    nop                                           ; $73C6: $00
    inc bc                                        ; $73C7: $03
    cp [hl]                                       ; $73C8: $BE
    ld [hl], e                                    ; $73C9: $73
    db $ED                                        ; $73CA: $ED
    db $E4                                        ; $73CB: $E4
    ld [hl], a                                    ; $73CC: $77
    jp hl                                         ; $73CD: $E9


    ld [hl+], a                                   ; $73CE: $22
    xor $00                                       ; $73CF: $EE $00
    db $EC                                        ; $73D1: $EC
    add hl, sp                                    ; $73D2: $39
    ld [hl], h                                    ; $73D3: $74
    db $EC                                        ; $73D4: $EC
    sub h                                         ; $73D5: $94
    ld [hl], h                                    ; $73D6: $74
    db $EC                                        ; $73D7: $EC
    jp nc, $EC74                                  ; $73D8: $D2 $74 $EC

    ld de, $E675                                  ; $73DB: $11 $75 $E6
    db $FD                                        ; $73DE: $FD
    db $EC                                        ; $73DF: $EC
    ld de, $E675                                  ; $73E0: $11 $75 $E6
    inc bc                                        ; $73E3: $03
    sub d                                         ; $73E4: $92
    sbc c                                         ; $73E5: $99
    sbc [hl]                                      ; $73E6: $9E
    sub c                                         ; $73E7: $91
    sbc b                                         ; $73E8: $98
    sbc l                                         ; $73E9: $9D
    sub b                                         ; $73EA: $90
    sub a                                         ; $73EB: $97
    sbc h                                         ; $73EC: $9C
    adc a                                         ; $73ED: $8F
    sub [hl]                                      ; $73EE: $96
    sbc e                                         ; $73EF: $9B
    adc [hl]                                      ; $73F0: $8E
    sub l                                         ; $73F1: $95
    sbc d                                         ; $73F2: $9A
    adc l                                         ; $73F3: $8D
    db $EC                                        ; $73F4: $EC
    inc e                                         ; $73F5: $1C
    ld [hl], l                                    ; $73F6: $75
    db $EC                                        ; $73F7: $EC
    dec hl                                        ; $73F8: $2B
    ld [hl], l                                    ; $73F9: $75
    db $EC                                        ; $73FA: $EC
    inc e                                         ; $73FB: $1C
    ld [hl], l                                    ; $73FC: $75
    and $02                                       ; $73FD: $E6 $02
    db $EC                                        ; $73FF: $EC
    dec hl                                        ; $7400: $2B
    ld [hl], l                                    ; $7401: $75
    and $FE                                       ; $7402: $E6 $FE
    db $EC                                        ; $7404: $EC
    inc e                                         ; $7405: $1C
    ld [hl], l                                    ; $7406: $75
    db $EC                                        ; $7407: $EC
    dec hl                                        ; $7408: $2B
    ld [hl], l                                    ; $7409: $75
    db $EC                                        ; $740A: $EC
    inc [hl]                                      ; $740B: $34
    ld [hl], l                                    ; $740C: $75
    db $E4                                        ; $740D: $E4
    ld [hl], a                                    ; $740E: $77
    adc e                                         ; $740F: $8B
    ld b, $E4                                     ; $7410: $06 $E4
    ld b, a                                       ; $7412: $47
    adc e                                         ; $7413: $8B
    db $E4                                        ; $7414: $E4
    ld [hl], a                                    ; $7415: $77
    add b                                         ; $7416: $80
    jr jr_02E_73A3                                ; $7417: $18 $8A

    inc c                                         ; $7419: $0C
    adc c                                         ; $741A: $89
    db $E4                                        ; $741B: $E4
    daa                                           ; $741C: $27
    adc c                                         ; $741D: $89
    db $E4                                        ; $741E: $E4
    ld [hl], a                                    ; $741F: $77
    add b                                         ; $7420: $80
    inc h                                         ; $7421: $24
    db $E4                                        ; $7422: $E4

jr_02E_7423:
    ld [hl], a                                    ; $7423: $77
    adc b                                         ; $7424: $88
    inc c                                         ; $7425: $0C
    db $E4                                        ; $7426: $E4
    ld b, a                                       ; $7427: $47
    adc b                                         ; $7428: $88
    ld b, $E4                                     ; $7429: $06 $E4

jr_02E_742B:
    ld [hl], a                                    ; $742B: $77
    add a                                         ; $742C: $87
    inc c                                         ; $742D: $0C
    db $E4                                        ; $742E: $E4
    ld b, a                                       ; $742F: $47
    add a                                         ; $7430: $87
    ld b, $E4                                     ; $7431: $06 $E4
    ld [hl], a                                    ; $7433: $77
    add [hl]                                      ; $7434: $86
    inc c                                         ; $7435: $0C
    push hl                                       ; $7436: $E5
    bit 6, e                                      ; $7437: $CB $73
    db $E4                                        ; $7439: $E4
    ld a, b                                       ; $743A: $78
    pop af                                        ; $743B: $F1
    adc a                                         ; $743C: $8F
    jr nc, jr_02E_7423                            ; $743D: $30 $E4

    ld e, b                                       ; $743F: $58
    adc a                                         ; $7440: $8F
    db $E4                                        ; $7441: $E4
    ld a, b                                       ; $7442: $78
    pop af                                        ; $7443: $F1
    sub c                                         ; $7444: $91
    jr jr_02E_742B                                ; $7445: $18 $E4

    ld e, b                                       ; $7447: $58

jr_02E_7448:
    pop af                                        ; $7448: $F1
    sub c                                         ; $7449: $91
    db $E4                                        ; $744A: $E4
    ld a, b                                       ; $744B: $78
    pop af                                        ; $744C: $F1
    adc a                                         ; $744D: $8F
    db $E4                                        ; $744E: $E4
    ld e, b                                       ; $744F: $58
    pop af                                        ; $7450: $F1

jr_02E_7451:
    adc a                                         ; $7451: $8F
    db $E4                                        ; $7452: $E4
    ld a, b                                       ; $7453: $78
    pop af                                        ; $7454: $F1
    adc a                                         ; $7455: $8F
    ld h, b                                       ; $7456: $60
    ld a, [$E760]                                 ; $7457: $FA $60 $E7
    nop                                           ; $745A: $00
    ld [bc], a                                    ; $745B: $02
    add hl, sp                                    ; $745C: $39
    ld [hl], h                                    ; $745D: $74
    db $E4                                        ; $745E: $E4
    ld a, b                                       ; $745F: $78
    pop af                                        ; $7460: $F1
    adc a                                         ; $7461: $8F
    jr nc, jr_02E_7448                            ; $7462: $30 $E4

    ld e, b                                       ; $7464: $58
    pop af                                        ; $7465: $F1
    adc a                                         ; $7466: $8F
    db $E4                                        ; $7467: $E4
    ld a, b                                       ; $7468: $78
    pop af                                        ; $7469: $F1
    adc l                                         ; $746A: $8D
    jr nc, jr_02E_7451                            ; $746B: $30 $E4

    ld e, b                                       ; $746D: $58
    pop af                                        ; $746E: $F1
    adc l                                         ; $746F: $8D
    db $E4                                        ; $7470: $E4
    ld e, b                                       ; $7471: $58
    add b                                         ; $7472: $80
    ld b, $87                                     ; $7473: $06 $87
    add l                                         ; $7475: $85
    adc h                                         ; $7476: $8C
    adc d                                         ; $7477: $8A
    sub b                                         ; $7478: $90
    adc h                                         ; $7479: $8C
    sub e                                         ; $747A: $93
    sub c                                         ; $747B: $91
    sbc b                                         ; $747C: $98
    sub [hl]                                      ; $747D: $96

jr_02E_747E:
    sbc h                                         ; $747E: $9C
    sbc b                                         ; $747F: $98
    sbc a                                         ; $7480: $9F
    sbc l                                         ; $7481: $9D
    and h                                         ; $7482: $A4
    and d                                         ; $7483: $A2
    sbc a                                         ; $7484: $9F
    sbc l                                         ; $7485: $9D
    sbc h                                         ; $7486: $9C

jr_02E_7487:
    sbc b                                         ; $7487: $98
    sub [hl]                                      ; $7488: $96
    sub e                                         ; $7489: $93
    sub c                                         ; $748A: $91
    sub b                                         ; $748B: $90
    adc h                                         ; $748C: $8C
    adc d                                         ; $748D: $8A
    add a                                         ; $748E: $87
    add l                                         ; $748F: $85
    add h                                         ; $7490: $84
    add l                                         ; $7491: $85
    add h                                         ; $7492: $84
    db $ED                                        ; $7493: $ED
    db $E4                                        ; $7494: $E4
    ld a, b                                       ; $7495: $78
    pop af                                        ; $7496: $F1
    sub c                                         ; $7497: $91
    jr nc, jr_02E_747E                            ; $7498: $30 $E4

    ld e, b                                       ; $749A: $58
    pop af                                        ; $749B: $F1
    sub c                                         ; $749C: $91
    db $E4                                        ; $749D: $E4
    ld a, b                                       ; $749E: $78
    pop af                                        ; $749F: $F1
    sub h                                         ; $74A0: $94
    jr nc, jr_02E_7487                            ; $74A1: $30 $E4

    ld e, b                                       ; $74A3: $58
    pop af                                        ; $74A4: $F1
    sub h                                         ; $74A5: $94
    db $E4                                        ; $74A6: $E4
    ld d, a                                       ; $74A7: $57
    sub e                                         ; $74A8: $93
    inc c                                         ; $74A9: $0C
    sub d                                         ; $74AA: $92
    xor c                                         ; $74AB: $A9
    ld b, $A7                                     ; $74AC: $06 $A7
    and h                                         ; $74AE: $A4
    and e                                         ; $74AF: $A3
    and d                                         ; $74B0: $A2
    and b                                         ; $74B1: $A0
    db $E4                                        ; $74B2: $E4
    ld d, a                                       ; $74B3: $57
    sbc l                                         ; $74B4: $9D
    inc c                                         ; $74B5: $0C
    sub d                                         ; $74B6: $92
    sub c                                         ; $74B7: $91
    db $E4                                        ; $74B8: $E4
    ld d, a                                       ; $74B9: $57
    add b                                         ; $74BA: $80
    ld b, $9D                                     ; $74BB: $06 $9D
    and d                                         ; $74BD: $A2
    and h                                         ; $74BE: $A4
    xor c                                         ; $74BF: $A9
    db $E4                                        ; $74C0: $E4
    scf                                           ; $74C1: $37
    sbc l                                         ; $74C2: $9D
    and d                                         ; $74C3: $A2
    and h                                         ; $74C4: $A4

jr_02E_74C5:
    xor c                                         ; $74C5: $A9
    db $E4                                        ; $74C6: $E4
    daa                                           ; $74C7: $27
    sbc l                                         ; $74C8: $9D
    and d                                         ; $74C9: $A2
    and h                                         ; $74CA: $A4
    xor c                                         ; $74CB: $A9
    db $E4                                        ; $74CC: $E4
    rla                                           ; $74CD: $17
    sbc l                                         ; $74CE: $9D
    and d                                         ; $74CF: $A2
    and h                                         ; $74D0: $A4
    db $ED                                        ; $74D1: $ED
    db $E4                                        ; $74D2: $E4
    ld a, b                                       ; $74D3: $78
    pop af                                        ; $74D4: $F1
    sub e                                         ; $74D5: $93
    jr nc, @-$1A                                  ; $74D6: $30 $E4

    ld e, b                                       ; $74D8: $58
    pop af                                        ; $74D9: $F1
    sub e                                         ; $74DA: $93
    db $E4                                        ; $74DB: $E4
    ld a, b                                       ; $74DC: $78
    pop af                                        ; $74DD: $F1
    sub [hl]                                      ; $74DE: $96
    jr nc, jr_02E_74C5                            ; $74DF: $30 $E4

    ld e, b                                       ; $74E1: $58
    pop af                                        ; $74E2: $F1
    sub [hl]                                      ; $74E3: $96
    db $E4                                        ; $74E4: $E4
    ld [hl], a                                    ; $74E5: $77
    sub l                                         ; $74E6: $95
    inc c                                         ; $74E7: $0C
    sub h                                         ; $74E8: $94
    sbc a                                         ; $74E9: $9F
    ld b, $A6                                     ; $74EA: $06 $A6
    and h                                         ; $74EC: $A4
    and d                                         ; $74ED: $A2
    and h                                         ; $74EE: $A4
    sub e                                         ; $74EF: $93
    sub c                                         ; $74F0: $91
    adc [hl]                                      ; $74F1: $8E
    db $E4                                        ; $74F2: $E4
    ld [hl], a                                    ; $74F3: $77
    sub h                                         ; $74F4: $94
    inc c                                         ; $74F5: $0C
    sub e                                         ; $74F6: $93
    db $E4                                        ; $74F7: $E4
    ld d, a                                       ; $74F8: $57
    add b                                         ; $74F9: $80
    ld b, $9F                                     ; $74FA: $06 $9F
    and h                                         ; $74FC: $A4
    and [hl]                                      ; $74FD: $A6
    xor e                                         ; $74FE: $AB
    db $E4                                        ; $74FF: $E4
    scf                                           ; $7500: $37
    sbc a                                         ; $7501: $9F
    and h                                         ; $7502: $A4
    and [hl]                                      ; $7503: $A6
    xor e                                         ; $7504: $AB
    db $E4                                        ; $7505: $E4
    daa                                           ; $7506: $27
    sbc a                                         ; $7507: $9F
    and h                                         ; $7508: $A4
    and [hl]                                      ; $7509: $A6
    xor e                                         ; $750A: $AB
    db $E4                                        ; $750B: $E4
    rla                                           ; $750C: $17
    sbc a                                         ; $750D: $9F
    and h                                         ; $750E: $A4
    and [hl]                                      ; $750F: $A6
    db $ED                                        ; $7510: $ED
    db $E4                                        ; $7511: $E4
    ld [hl], a                                    ; $7512: $77
    sbc b                                         ; $7513: $98

jr_02E_7514:
    sbc a                                         ; $7514: $9F
    and h                                         ; $7515: $A4
    sub a                                         ; $7516: $97
    sbc [hl]                                      ; $7517: $9E

jr_02E_7518:
    and e                                         ; $7518: $A3
    sub [hl]                                      ; $7519: $96
    sbc l                                         ; $751A: $9D
    db $ED                                        ; $751B: $ED
    db $E4                                        ; $751C: $E4
    ld [hl], a                                    ; $751D: $77
    adc h                                         ; $751E: $8C
    ld b, $E4                                     ; $751F: $06 $E4
    ld b, a                                       ; $7521: $47
    adc h                                         ; $7522: $8C
    rst RST_20                                    ; $7523: $E7
    nop                                           ; $7524: $00
    inc b                                         ; $7525: $04
    inc e                                         ; $7526: $1C
    ld [hl], l                                    ; $7527: $75
    add b                                         ; $7528: $80
    jr jr_02E_7518                                ; $7529: $18 $ED

    db $E4                                        ; $752B: $E4
    ld a, b                                       ; $752C: $78
    adc l                                         ; $752D: $8D
    jr jr_02E_7514                                ; $752E: $18 $E4

    ld e, b                                       ; $7530: $58
    adc l                                         ; $7531: $8D
    ld h, b                                       ; $7532: $60
    db $ED                                        ; $7533: $ED
    db $E4                                        ; $7534: $E4
    ld [hl], a                                    ; $7535: $77
    adc h                                         ; $7536: $8C
    ld b, $E4                                     ; $7537: $06 $E4
    ld b, a                                       ; $7539: $47
    adc h                                         ; $753A: $8C
    rst RST_20                                    ; $753B: $E7
    nop                                           ; $753C: $00
    inc bc                                        ; $753D: $03
    inc [hl]                                      ; $753E: $34
    ld [hl], l                                    ; $753F: $75
    db $ED                                        ; $7540: $ED
    db $E4                                        ; $7541: $E4
    ld b, b                                       ; $7542: $40

jr_02E_7543:
    jp hl                                         ; $7543: $E9


    ld b, h                                       ; $7544: $44
    di                                            ; $7545: $F3
    ld [bc], a                                    ; $7546: $02
    push af                                       ; $7547: $F5
    ld [hl-], a                                   ; $7548: $32
    db $EC                                        ; $7549: $EC
    reti                                          ; $754A: $D9


    ld [hl], l                                    ; $754B: $75
    and $07                                       ; $754C: $E6 $07
    db $EC                                        ; $754E: $EC
    reti                                          ; $754F: $D9


    ld [hl], l                                    ; $7550: $75
    and $F9                                       ; $7551: $E6 $F9
    adc [hl]                                      ; $7553: $8E
    adc [hl]                                      ; $7554: $8E
    adc [hl]                                      ; $7555: $8E
    add b                                         ; $7556: $80
    adc h                                         ; $7557: $8C
    add b                                         ; $7558: $80
    adc h                                         ; $7559: $8C
    adc h                                         ; $755A: $8C
    adc e                                         ; $755B: $8B
    adc e                                         ; $755C: $8B
    adc e                                         ; $755D: $8B
    add b                                         ; $755E: $80
    adc h                                         ; $755F: $8C
    add b                                         ; $7560: $80
    adc h                                         ; $7561: $8C
    adc h                                         ; $7562: $8C
    db $EC                                        ; $7563: $EC
    reti                                          ; $7564: $D9


    ld [hl], l                                    ; $7565: $75
    and $02                                       ; $7566: $E6 $02
    db $EC                                        ; $7568: $EC
    reti                                          ; $7569: $D9


    ld [hl], l                                    ; $756A: $75
    and $FE                                       ; $756B: $E6 $FE
    adc h                                         ; $756D: $8C
    adc h                                         ; $756E: $8C
    adc h                                         ; $756F: $8C
    add b                                         ; $7570: $80
    adc e                                         ; $7571: $8B
    add b                                         ; $7572: $80
    adc e                                         ; $7573: $8B
    adc e                                         ; $7574: $8B
    adc d                                         ; $7575: $8A
    adc d                                         ; $7576: $8A
    adc d                                         ; $7577: $8A
    add b                                         ; $7578: $80
    adc c                                         ; $7579: $89
    add b                                         ; $757A: $80
    adc c                                         ; $757B: $89
    adc c                                         ; $757C: $89
    db $EC                                        ; $757D: $EC
    db $E3                                        ; $757E: $E3
    ld [hl], l                                    ; $757F: $75
    and $04                                       ; $7580: $E6 $04
    db $EC                                        ; $7582: $EC
    db $E3                                        ; $7583: $E3
    ld [hl], l                                    ; $7584: $75
    and $FC                                       ; $7585: $E6 $FC
    db $EC                                        ; $7587: $EC
    push af                                       ; $7588: $F5
    ld [hl], l                                    ; $7589: $75
    and $02                                       ; $758A: $E6 $02
    db $EC                                        ; $758C: $EC
    push af                                       ; $758D: $F5
    ld [hl], l                                    ; $758E: $75
    and $FE                                       ; $758F: $E6 $FE
    add b                                         ; $7591: $80
    ld h, b                                       ; $7592: $60
    add b                                         ; $7593: $80
    db $EC                                        ; $7594: $EC
    inc c                                         ; $7595: $0C
    halt                                          ; $7596: $76
    db $EC                                        ; $7597: $EC
    jr jr_02E_7610                                ; $7598: $18 $76

    and $02                                       ; $759A: $E6 $02
    db $EC                                        ; $759C: $EC
    inc c                                         ; $759D: $0C
    halt                                          ; $759E: $76
    db $EC                                        ; $759F: $EC
    jr jr_02E_7618                                ; $75A0: $18 $76

    and $FE                                       ; $75A2: $E6 $FE
    db $EC                                        ; $75A4: $EC
    inc c                                         ; $75A5: $0C
    halt                                          ; $75A6: $76
    db $EC                                        ; $75A7: $EC
    jr jr_02E_7620                                ; $75A8: $18 $76

    db $EC                                        ; $75AA: $EC
    inc hl                                        ; $75AB: $23
    halt                                          ; $75AC: $76
    db $E4                                        ; $75AD: $E4
    ld b, b                                       ; $75AE: $40
    adc e                                         ; $75AF: $8B
    ld b, $E4                                     ; $75B0: $06 $E4
    ld h, b                                       ; $75B2: $60
    adc e                                         ; $75B3: $8B
    db $E4                                        ; $75B4: $E4
    ld b, b                                       ; $75B5: $40
    add b                                         ; $75B6: $80
    jr jr_02E_7543                                ; $75B7: $18 $8A

    inc c                                         ; $75B9: $0C
    adc c                                         ; $75BA: $89
    db $E4                                        ; $75BB: $E4
    ld h, b                                       ; $75BC: $60
    adc c                                         ; $75BD: $89
    db $E4                                        ; $75BE: $E4
    ld b, b                                       ; $75BF: $40
    add b                                         ; $75C0: $80
    inc h                                         ; $75C1: $24
    db $E4                                        ; $75C2: $E4
    ld b, b                                       ; $75C3: $40
    adc b                                         ; $75C4: $88
    inc c                                         ; $75C5: $0C
    db $E4                                        ; $75C6: $E4
    ld h, b                                       ; $75C7: $60
    adc b                                         ; $75C8: $88
    ld b, $E4                                     ; $75C9: $06 $E4
    ld b, b                                       ; $75CB: $40
    add a                                         ; $75CC: $87
    inc c                                         ; $75CD: $0C
    db $E4                                        ; $75CE: $E4
    ld h, b                                       ; $75CF: $60
    add a                                         ; $75D0: $87
    ld b, $E4                                     ; $75D1: $06 $E4
    ld b, b                                       ; $75D3: $40
    add [hl]                                      ; $75D4: $86
    inc c                                         ; $75D5: $0C
    push hl                                       ; $75D6: $E5
    ld b, c                                       ; $75D7: $41
    ld [hl], l                                    ; $75D8: $75
    add l                                         ; $75D9: $85
    inc c                                         ; $75DA: $0C
    add l                                         ; $75DB: $85
    add l                                         ; $75DC: $85
    add b                                         ; $75DD: $80
    add l                                         ; $75DE: $85
    add b                                         ; $75DF: $80
    add l                                         ; $75E0: $85
    add l                                         ; $75E1: $85
    db $ED                                        ; $75E2: $ED
    adc b                                         ; $75E3: $88
    inc c                                         ; $75E4: $0C
    adc b                                         ; $75E5: $88
    adc b                                         ; $75E6: $88
    add b                                         ; $75E7: $80
    adc b                                         ; $75E8: $88
    add b                                         ; $75E9: $80
    adc b                                         ; $75EA: $88
    adc b                                         ; $75EB: $88
    adc b                                         ; $75EC: $88
    add b                                         ; $75ED: $80
    adc b                                         ; $75EE: $88
    add b                                         ; $75EF: $80
    adc b                                         ; $75F0: $88
    adc b                                         ; $75F1: $88
    adc b                                         ; $75F2: $88
    add b                                         ; $75F3: $80
    db $ED                                        ; $75F4: $ED
    add l                                         ; $75F5: $85
    inc c                                         ; $75F6: $0C
    add l                                         ; $75F7: $85
    add l                                         ; $75F8: $85
    add b                                         ; $75F9: $80
    add l                                         ; $75FA: $85
    add b                                         ; $75FB: $80
    add l                                         ; $75FC: $85
    add l                                         ; $75FD: $85
    add l                                         ; $75FE: $85
    add b                                         ; $75FF: $80
    add l                                         ; $7600: $85
    add b                                         ; $7601: $80
    add l                                         ; $7602: $85

jr_02E_7603:
    add l                                         ; $7603: $85
    add l                                         ; $7604: $85

jr_02E_7605:
    add b                                         ; $7605: $80
    rst RST_20                                    ; $7606: $E7
    nop                                           ; $7607: $00
    ld [bc], a                                    ; $7608: $02
    push af                                       ; $7609: $F5
    ld [hl], l                                    ; $760A: $75
    db $ED                                        ; $760B: $ED
    push af                                       ; $760C: $F5
    ld [hl-], a                                   ; $760D: $32
    db $E4                                        ; $760E: $E4
    ld b, b                                       ; $760F: $40

jr_02E_7610:
    add l                                         ; $7610: $85
    inc c                                         ; $7611: $0C
    add l                                         ; $7612: $85
    add l                                         ; $7613: $85
    add l                                         ; $7614: $85
    add b                                         ; $7615: $80
    jr jr_02E_7605                                ; $7616: $18 $ED

jr_02E_7618:
    push af                                       ; $7618: $F5
    nop                                           ; $7619: $00
    db $E4                                        ; $761A: $E4
    ld b, b                                       ; $761B: $40
    add [hl]                                      ; $761C: $86
    jr jr_02E_7603                                ; $761D: $18 $E4

    ld h, b                                       ; $761F: $60

jr_02E_7620:
    add [hl]                                      ; $7620: $86
    ld h, b                                       ; $7621: $60
    db $ED                                        ; $7622: $ED
    push af                                       ; $7623: $F5
    ld [hl-], a                                   ; $7624: $32
    db $E4                                        ; $7625: $E4
    ld b, b                                       ; $7626: $40
    adc h                                         ; $7627: $8C
    inc c                                         ; $7628: $0C
    adc h                                         ; $7629: $8C
    adc h                                         ; $762A: $8C
    db $ED                                        ; $762B: $ED
    jp hl                                         ; $762C: $E9


    adc b                                         ; $762D: $88
    db $EC                                        ; $762E: $EC
    ld l, e                                       ; $762F: $6B
    halt                                          ; $7630: $76
    db $EC                                        ; $7631: $EC
    or l                                          ; $7632: $B5
    halt                                          ; $7633: $76
    db $EC                                        ; $7634: $EC
    or l                                          ; $7635: $B5
    halt                                          ; $7636: $76
    db $EC                                        ; $7637: $EC
    dec bc                                        ; $7638: $0B
    ld [hl], a                                    ; $7639: $77
    db $EC                                        ; $763A: $EC
    ld sp, $EC77                                  ; $763B: $31 $77 $EC
    ld d, e                                       ; $763E: $53
    ld [hl], a                                    ; $763F: $77
    db $E4                                        ; $7640: $E4
    ld [hl], c                                    ; $7641: $71
    ld [hl], $0C                                  ; $7642: $36 $0C
    db $E4                                        ; $7644: $E4
    ld [hl], c                                    ; $7645: $71
    ld [hl], $0C                                  ; $7646: $36 $0C
    db $E4                                        ; $7648: $E4
    ld h, d                                       ; $7649: $62
    inc h                                         ; $764A: $24
    inc c                                         ; $764B: $0C
    db $E4                                        ; $764C: $E4
    ld [hl], c                                    ; $764D: $71
    ld [hl], $24                                  ; $764E: $36 $24
    db $E4                                        ; $7650: $E4
    ld h, d                                       ; $7651: $62
    inc h                                         ; $7652: $24
    inc c                                         ; $7653: $0C
    db $E4                                        ; $7654: $E4
    ld h, d                                       ; $7655: $62
    inc h                                         ; $7656: $24
    inc c                                         ; $7657: $0C
    db $E4                                        ; $7658: $E4
    ld b, c                                       ; $7659: $41
    ld hl, $E430                                  ; $765A: $21 $30 $E4
    ld h, d                                       ; $765D: $62
    inc h                                         ; $765E: $24
    ld [de], a                                    ; $765F: $12
    db $E4                                        ; $7660: $E4
    ld h, d                                       ; $7661: $62
    inc h                                         ; $7662: $24
    ld [de], a                                    ; $7663: $12
    db $E4                                        ; $7664: $E4
    ld h, d                                       ; $7665: $62
    inc h                                         ; $7666: $24
    inc c                                         ; $7667: $0C
    push hl                                       ; $7668: $E5
    inc l                                         ; $7669: $2C
    halt                                          ; $766A: $76
    db $E4                                        ; $766B: $E4
    ld h, d                                       ; $766C: $62
    inc h                                         ; $766D: $24
    inc c                                         ; $766E: $0C
    db $E4                                        ; $766F: $E4
    ld h, d                                       ; $7670: $62
    inc h                                         ; $7671: $24
    inc c                                         ; $7672: $0C
    db $E4                                        ; $7673: $E4
    ld h, d                                       ; $7674: $62
    inc h                                         ; $7675: $24
    inc c                                         ; $7676: $0C
    db $E4                                        ; $7677: $E4
    ld [hl], c                                    ; $7678: $71
    ld [hl], $0C                                  ; $7679: $36 $0C
    db $E4                                        ; $767B: $E4
    ld h, d                                       ; $767C: $62
    inc h                                         ; $767D: $24
    inc c                                         ; $767E: $0C
    db $E4                                        ; $767F: $E4
    ld b, c                                       ; $7680: $41
    ld hl, $E40C                                  ; $7681: $21 $0C $E4
    ld h, d                                       ; $7684: $62
    inc h                                         ; $7685: $24
    inc c                                         ; $7686: $0C
    db $E4                                        ; $7687: $E4
    ld h, d                                       ; $7688: $62
    inc h                                         ; $7689: $24
    inc c                                         ; $768A: $0C
    db $E4                                        ; $768B: $E4
    ld h, d                                       ; $768C: $62
    inc h                                         ; $768D: $24
    inc c                                         ; $768E: $0C
    db $E4                                        ; $768F: $E4
    ld [hl], c                                    ; $7690: $71
    ld [hl], $0C                                  ; $7691: $36 $0C
    db $E4                                        ; $7693: $E4
    ld h, d                                       ; $7694: $62
    inc h                                         ; $7695: $24
    inc c                                         ; $7696: $0C
    db $E4                                        ; $7697: $E4
    ld b, c                                       ; $7698: $41
    ld hl, $E40C                                  ; $7699: $21 $0C $E4
    ld h, d                                       ; $769C: $62
    inc h                                         ; $769D: $24
    inc c                                         ; $769E: $0C
    db $E4                                        ; $769F: $E4
    ld h, d                                       ; $76A0: $62
    inc h                                         ; $76A1: $24
    inc c                                         ; $76A2: $0C
    db $E4                                        ; $76A3: $E4
    ld h, d                                       ; $76A4: $62
    inc h                                         ; $76A5: $24
    ld [$62E4], sp                                ; $76A6: $08 $E4 $62
    inc h                                         ; $76A9: $24
    ld [$62E4], sp                                ; $76AA: $08 $E4 $62
    inc h                                         ; $76AD: $24
    ld [$00E7], sp                                ; $76AE: $08 $E7 $00
    ld b, $6B                                     ; $76B1: $06 $6B
    halt                                          ; $76B3: $76
    db $ED                                        ; $76B4: $ED
    db $E4                                        ; $76B5: $E4
    ld [hl], c                                    ; $76B6: $71
    ld [hl], $0C                                  ; $76B7: $36 $0C
    db $E4                                        ; $76B9: $E4
    ld [hl], c                                    ; $76BA: $71
    ld [hl], $0C                                  ; $76BB: $36 $0C
    db $E4                                        ; $76BD: $E4
    ld [hl], c                                    ; $76BE: $71
    ld [hl], $0C                                  ; $76BF: $36 $0C
    db $E4                                        ; $76C1: $E4
    ld [hl], c                                    ; $76C2: $71
    ld [hl], $0C                                  ; $76C3: $36 $0C
    db $E4                                        ; $76C5: $E4
    ld h, d                                       ; $76C6: $62
    inc h                                         ; $76C7: $24
    inc c                                         ; $76C8: $0C
    db $E4                                        ; $76C9: $E4
    ld b, c                                       ; $76CA: $41
    ld hl, $E40C                                  ; $76CB: $21 $0C $E4
    ld [hl], c                                    ; $76CE: $71
    ld [hl], $0C                                  ; $76CF: $36 $0C
    db $E4                                        ; $76D1: $E4
    ld b, c                                       ; $76D2: $41
    ld hl, $E70C                                  ; $76D3: $21 $0C $E7
    nop                                           ; $76D6: $00
    inc bc                                        ; $76D7: $03
    or l                                          ; $76D8: $B5
    halt                                          ; $76D9: $76
    db $E4                                        ; $76DA: $E4
    ld [hl], c                                    ; $76DB: $71
    ld [hl], $0C                                  ; $76DC: $36 $0C
    db $E4                                        ; $76DE: $E4
    ld [hl], c                                    ; $76DF: $71
    ld [hl], $0C                                  ; $76E0: $36 $0C
    db $E4                                        ; $76E2: $E4
    ld [hl], c                                    ; $76E3: $71
    ld [hl], $0C                                  ; $76E4: $36 $0C
    db $E4                                        ; $76E6: $E4
    ld [hl], c                                    ; $76E7: $71
    ld [hl], $0C                                  ; $76E8: $36 $0C
    db $E4                                        ; $76EA: $E4
    ld h, d                                       ; $76EB: $62
    inc h                                         ; $76EC: $24
    inc c                                         ; $76ED: $0C
    db $E4                                        ; $76EE: $E4
    ld b, c                                       ; $76EF: $41
    ld hl, $E40C                                  ; $76F0: $21 $0C $E4
    ld h, d                                       ; $76F3: $62
    inc h                                         ; $76F4: $24
    inc b                                         ; $76F5: $04
    db $E4                                        ; $76F6: $E4
    ld h, d                                       ; $76F7: $62
    inc h                                         ; $76F8: $24
    inc b                                         ; $76F9: $04
    db $E4                                        ; $76FA: $E4
    ld [hl], d                                    ; $76FB: $72
    ld [hl-], a                                   ; $76FC: $32
    inc b                                         ; $76FD: $04
    db $E4                                        ; $76FE: $E4
    ld [hl], d                                    ; $76FF: $72
    ld [hl-], a                                   ; $7700: $32
    inc b                                         ; $7701: $04
    db $E4                                        ; $7702: $E4
    ld [hl], d                                    ; $7703: $72
    db $10                                        ; $7704: $10
    inc b                                         ; $7705: $04
    db $E4                                        ; $7706: $E4
    ld [hl], d                                    ; $7707: $72
    db $10                                        ; $7708: $10
    inc b                                         ; $7709: $04
    db $ED                                        ; $770A: $ED
    db $E4                                        ; $770B: $E4
    ld h, d                                       ; $770C: $62
    inc h                                         ; $770D: $24
    ld b, $E4                                     ; $770E: $06 $E4
    ld [hl], c                                    ; $7710: $71
    ld [hl], $06                                  ; $7711: $36 $06
    db $E4                                        ; $7713: $E4
    ld [hl], c                                    ; $7714: $71
    ld [hl], $06                                  ; $7715: $36 $06
    db $E4                                        ; $7717: $E4
    ld h, d                                       ; $7718: $62
    inc h                                         ; $7719: $24
    ld b, $E4                                     ; $771A: $06 $E4
    ld [hl], c                                    ; $771C: $71
    ld [hl], $06                                  ; $771D: $36 $06
    db $E4                                        ; $771F: $E4
    ld [hl], c                                    ; $7720: $71
    ld [hl], $06                                  ; $7721: $36 $06
    db $E4                                        ; $7723: $E4
    ld h, d                                       ; $7724: $62
    inc h                                         ; $7725: $24
    ld b, $E4                                     ; $7726: $06 $E4
    ld [hl], c                                    ; $7728: $71
    ld [hl], $06                                  ; $7729: $36 $06
    rst RST_20                                    ; $772B: $E7
    nop                                           ; $772C: $00
    ld [bc], a                                    ; $772D: $02
    dec bc                                        ; $772E: $0B
    ld [hl], a                                    ; $772F: $77
    db $ED                                        ; $7730: $ED
    db $E4                                        ; $7731: $E4
    ld h, d                                       ; $7732: $62
    inc h                                         ; $7733: $24
    ld b, $E4                                     ; $7734: $06 $E4
    ld h, d                                       ; $7736: $62
    inc h                                         ; $7737: $24
    ld b, $E4                                     ; $7738: $06 $E4
    ld [hl], c                                    ; $773A: $71
    ld [hl], $06                                  ; $773B: $36 $06
    rst RST_20                                    ; $773D: $E7
    nop                                           ; $773E: $00
    inc b                                         ; $773F: $04
    ld sp, $E477                                  ; $7740: $31 $77 $E4
    ld h, d                                       ; $7743: $62
    inc h                                         ; $7744: $24
    ld b, $E4                                     ; $7745: $06 $E4
    ld [hl], d                                    ; $7747: $72
    ld [hl-], a                                   ; $7748: $32

jr_02E_7749:
    ld b, $E4                                     ; $7749: $06 $E4
    ld [hl], d                                    ; $774B: $72
    db $10                                        ; $774C: $10
    ld b, $E4                                     ; $774D: $06 $E4
    ld h, d                                       ; $774F: $62
    inc h                                         ; $7750: $24
    ld b, $ED                                     ; $7751: $06 $ED

jr_02E_7753:
    db $E4                                        ; $7753: $E4
    ld [hl], c                                    ; $7754: $71
    ld [hl], $0C                                  ; $7755: $36 $0C
    db $E4                                        ; $7757: $E4
    ld [hl], c                                    ; $7758: $71
    ld [hl], $0C                                  ; $7759: $36 $0C
    db $E4                                        ; $775B: $E4
    ld [hl], c                                    ; $775C: $71
    ld [hl], $0C                                  ; $775D: $36 $0C
    db $E4                                        ; $775F: $E4
    ld [hl], c                                    ; $7760: $71
    ld [hl], $0C                                  ; $7761: $36 $0C
    db $E4                                        ; $7763: $E4
    ld [hl], c                                    ; $7764: $71
    ld [hl], $0C                                  ; $7765: $36 $0C
    db $E4                                        ; $7767: $E4
    ld b, c                                       ; $7768: $41
    ld hl, $E40C                                  ; $7769: $21 $0C $E4
    ld h, d                                       ; $776C: $62
    inc h                                         ; $776D: $24
    inc c                                         ; $776E: $0C
    db $E4                                        ; $776F: $E4
    ld b, c                                       ; $7770: $41
    ld hl, $E40C                                  ; $7771: $21 $0C $E4
    ld h, d                                       ; $7774: $62
    inc h                                         ; $7775: $24
    inc c                                         ; $7776: $0C
    db $E4                                        ; $7777: $E4
    ld h, d                                       ; $7778: $62
    inc h                                         ; $7779: $24
    ld b, $E4                                     ; $777A: $06 $E4
    ld h, d                                       ; $777C: $62
    inc h                                         ; $777D: $24
    ld b, $E4                                     ; $777E: $06 $E4
    ld h, d                                       ; $7780: $62
    inc h                                         ; $7781: $24
    ld b, $E4                                     ; $7782: $06 $E4
    ld h, d                                       ; $7784: $62
    inc h                                         ; $7785: $24
    ld b, $E4                                     ; $7786: $06 $E4
    ld [hl], d                                    ; $7788: $72
    ld [hl-], a                                   ; $7789: $32
    ld b, $E4                                     ; $778A: $06 $E4
    ld [hl], d                                    ; $778C: $72
    db $10                                        ; $778D: $10
    ld b, $E4                                     ; $778E: $06 $E4
    ld h, d                                       ; $7790: $62
    inc h                                         ; $7791: $24
    ld b, $E4                                     ; $7792: $06 $E4
    ld [hl], d                                    ; $7794: $72
    ld [hl-], a                                   ; $7795: $32
    ld b, $E4                                     ; $7796: $06 $E4
    ld [hl], d                                    ; $7798: $72
    db $10                                        ; $7799: $10
    ld b, $E4                                     ; $779A: $06 $E4
    ld h, d                                       ; $779C: $62
    inc h                                         ; $779D: $24
    ld b, $E4                                     ; $779E: $06 $E4
    ld [hl], d                                    ; $77A0: $72
    ld [hl-], a                                   ; $77A1: $32
    ld b, $E4                                     ; $77A2: $06 $E4
    ld [hl], d                                    ; $77A4: $72
    db $10                                        ; $77A5: $10
    ld b, $E4                                     ; $77A6: $06 $E4
    ld h, d                                       ; $77A8: $62
    inc h                                         ; $77A9: $24
    ld b, $E4                                     ; $77AA: $06 $E4
    ld [hl], d                                    ; $77AC: $72
    ld [hl-], a                                   ; $77AD: $32
    ld b, $E7                                     ; $77AE: $06 $E7
    nop                                           ; $77B0: $00
    inc bc                                        ; $77B1: $03
    ld d, e                                       ; $77B2: $53
    ld [hl], a                                    ; $77B3: $77
    db $ED                                        ; $77B4: $ED
    inc b                                         ; $77B5: $04
    add b                                         ; $77B6: $80
    inc de                                        ; $77B7: $13
    adc $77                                       ; $77B8: $CE $77
    nop                                           ; $77BA: $00
    add c                                         ; $77BB: $81
    add b                                         ; $77BC: $80
    jr jr_02E_7753                                ; $77BD: $18 $94

    ld a, b                                       ; $77BF: $78
    inc c                                         ; $77C0: $0C
    add c                                         ; $77C1: $81
    add b                                         ; $77C2: $80
    dec e                                         ; $77C3: $1D
    ret c                                         ; $77C4: $D8

    ld a, c                                       ; $77C5: $79
    jr jr_02E_7749                                ; $77C6: $18 $81

    add b                                         ; $77C8: $80
    ld [hl+], a                                   ; $77C9: $22
    ld l, $7B                                     ; $77CA: $2E $7B
    nop                                           ; $77CC: $00
    add c                                         ; $77CD: $81
    db $E4                                        ; $77CE: $E4
    ld [hl], e                                    ; $77CF: $73
    jp hl                                         ; $77D0: $E9


    ld de, $00EE                                  ; $77D1: $11 $EE $00
    db $EC                                        ; $77D4: $EC
    nop                                           ; $77D5: $00
    ld a, b                                       ; $77D6: $78
    db $EC                                        ; $77D7: $EC
    nop                                           ; $77D8: $00
    ld a, b                                       ; $77D9: $78
    and $03                                       ; $77DA: $E6 $03
    db $EC                                        ; $77DC: $EC

jr_02E_77DD:
    nop                                           ; $77DD: $00
    ld a, b                                       ; $77DE: $78
    and $FD                                       ; $77DF: $E6 $FD
    db $EC                                        ; $77E1: $EC
    daa                                           ; $77E2: $27
    ld a, b                                       ; $77E3: $78
    adc h                                         ; $77E4: $8C
    ld [de], a                                    ; $77E5: $12
    adc l                                         ; $77E6: $8D
    adc [hl]                                      ; $77E7: $8E
    adc a                                         ; $77E8: $8F
    sub b                                         ; $77E9: $90
    inc c                                         ; $77EA: $0C
    sub c                                         ; $77EB: $91
    sub d                                         ; $77EC: $92
    ld [de], a                                    ; $77ED: $12
    sub e                                         ; $77EE: $93
    db $E4                                        ; $77EF: $E4
    ld [hl], e                                    ; $77F0: $73
    pop af                                        ; $77F1: $F1
    sub h                                         ; $77F2: $94
    inc h                                         ; $77F3: $24
    db $E4                                        ; $77F4: $E4
    ld d, e                                       ; $77F5: $53
    sub h                                         ; $77F6: $94
    jr jr_02E_77DD                                ; $77F7: $18 $E4

    ld [hl], e                                    ; $77F9: $73
    db $EC                                        ; $77FA: $EC
    ld l, l                                       ; $77FB: $6D
    ld a, b                                       ; $77FC: $78
    push hl                                       ; $77FD: $E5
    adc $77                                       ; $77FE: $CE $77
    sub c                                         ; $7800: $91
    ld b, $85                                     ; $7801: $06 $85
    add l                                         ; $7803: $85
    sub c                                         ; $7804: $91
    add b                                         ; $7805: $80
    add b                                         ; $7806: $80
    sub c                                         ; $7807: $91
    add l                                         ; $7808: $85
    add l                                         ; $7809: $85
    sub c                                         ; $780A: $91
    add b                                         ; $780B: $80
    add b                                         ; $780C: $80
    sub d                                         ; $780D: $92
    add [hl]                                      ; $780E: $86
    sub d                                         ; $780F: $92
    sub h                                         ; $7810: $94
    sub c                                         ; $7811: $91
    add l                                         ; $7812: $85
    add l                                         ; $7813: $85
    sub c                                         ; $7814: $91
    add b                                         ; $7815: $80
    add b                                         ; $7816: $80
    sub c                                         ; $7817: $91
    add l                                         ; $7818: $85
    add l                                         ; $7819: $85
    sub c                                         ; $781A: $91
    add b                                         ; $781B: $80
    add b                                         ; $781C: $80
    adc a                                         ; $781D: $8F
    add l                                         ; $781E: $85
    adc a                                         ; $781F: $8F
    adc e                                         ; $7820: $8B
    rst RST_20                                    ; $7821: $E7
    nop                                           ; $7822: $00
    inc b                                         ; $7823: $04
    nop                                           ; $7824: $00
    ld a, b                                       ; $7825: $78
    db $ED                                        ; $7826: $ED
    adc h                                         ; $7827: $8C
    adc h                                         ; $7828: $8C
    add b                                         ; $7829: $80
    sbc b                                         ; $782A: $98
    sbc b                                         ; $782B: $98
    add b                                         ; $782C: $80
    adc h                                         ; $782D: $8C
    adc h                                         ; $782E: $8C
    add b                                         ; $782F: $80
    sbc b                                         ; $7830: $98
    sbc b                                         ; $7831: $98
    add b                                         ; $7832: $80
    adc h                                         ; $7833: $8C
    adc h                                         ; $7834: $8C
    sbc b                                         ; $7835: $98
    sbc b                                         ; $7836: $98
    adc l                                         ; $7837: $8D
    adc l                                         ; $7838: $8D
    add b                                         ; $7839: $80
    sbc b                                         ; $783A: $98
    sbc b                                         ; $783B: $98
    add b                                         ; $783C: $80
    adc l                                         ; $783D: $8D
    adc l                                         ; $783E: $8D
    add b                                         ; $783F: $80
    sbc b                                         ; $7840: $98
    sbc b                                         ; $7841: $98
    add b                                         ; $7842: $80
    adc l                                         ; $7843: $8D
    adc l                                         ; $7844: $8D
    sbc b                                         ; $7845: $98
    sbc b                                         ; $7846: $98
    adc a                                         ; $7847: $8F
    adc a                                         ; $7848: $8F
    add b                                         ; $7849: $80
    sbc b                                         ; $784A: $98
    sbc b                                         ; $784B: $98
    add b                                         ; $784C: $80
    adc a                                         ; $784D: $8F
    adc a                                         ; $784E: $8F
    add b                                         ; $784F: $80
    sbc b                                         ; $7850: $98
    sbc b                                         ; $7851: $98
    add b                                         ; $7852: $80
    adc a                                         ; $7853: $8F
    adc a                                         ; $7854: $8F
    sbc b                                         ; $7855: $98
    sbc b                                         ; $7856: $98
    sub c                                         ; $7857: $91
    sub c                                         ; $7858: $91
    add b                                         ; $7859: $80
    sbc b                                         ; $785A: $98
    sbc b                                         ; $785B: $98
    add b                                         ; $785C: $80
    sub c                                         ; $785D: $91
    sub c                                         ; $785E: $91
    add b                                         ; $785F: $80
    sbc b                                         ; $7860: $98
    sbc b                                         ; $7861: $98
    add b                                         ; $7862: $80
    sub d                                         ; $7863: $92
    sub d                                         ; $7864: $92
    sub h                                         ; $7865: $94
    sub h                                         ; $7866: $94
    rst RST_20                                    ; $7867: $E7
    nop                                           ; $7868: $00
    ld [bc], a                                    ; $7869: $02
    daa                                           ; $786A: $27
    ld a, b                                       ; $786B: $78
    db $ED                                        ; $786C: $ED
    sub [hl]                                      ; $786D: $96
    ld b, $8A                                     ; $786E: $06 $8A
    adc d                                         ; $7870: $8A
    sub [hl]                                      ; $7871: $96
    add b                                         ; $7872: $80
    add b                                         ; $7873: $80
    sub [hl]                                      ; $7874: $96
    adc d                                         ; $7875: $8A
    adc d                                         ; $7876: $8A
    sub [hl]                                      ; $7877: $96
    add b                                         ; $7878: $80
    add b                                         ; $7879: $80
    sub a                                         ; $787A: $97
    adc e                                         ; $787B: $8B
    sub a                                         ; $787C: $97
    sbc c                                         ; $787D: $99
    sub [hl]                                      ; $787E: $96
    adc d                                         ; $787F: $8A
    adc d                                         ; $7880: $8A
    sub [hl]                                      ; $7881: $96
    add b                                         ; $7882: $80
    add b                                         ; $7883: $80
    sub [hl]                                      ; $7884: $96
    adc d                                         ; $7885: $8A
    adc d                                         ; $7886: $8A
    sub [hl]                                      ; $7887: $96
    add b                                         ; $7888: $80
    add b                                         ; $7889: $80
    sub h                                         ; $788A: $94
    adc d                                         ; $788B: $8A
    sub h                                         ; $788C: $94
    sub b                                         ; $788D: $90
    rst RST_20                                    ; $788E: $E7
    nop                                           ; $788F: $00
    ld [bc], a                                    ; $7890: $02
    ld l, l                                       ; $7891: $6D
    ld a, b                                       ; $7892: $78
    db $ED                                        ; $7893: $ED
    db $E4                                        ; $7894: $E4
    ld d, a                                       ; $7895: $57
    jp hl                                         ; $7896: $E9


    ld [hl+], a                                   ; $7897: $22
    xor $00                                       ; $7898: $EE $00
    add b                                         ; $789A: $80
    inc c                                         ; $789B: $0C
    db $EC                                        ; $789C: $EC
    ld c, [hl]                                    ; $789D: $4E
    ld a, c                                       ; $789E: $79
    sbc b                                         ; $789F: $98
    ld b, $8C                                     ; $78A0: $06 $8C
    adc h                                         ; $78A2: $8C
    sbc b                                         ; $78A3: $98
    add b                                         ; $78A4: $80
    add b                                         ; $78A5: $80
    sbc b                                         ; $78A6: $98
    adc h                                         ; $78A7: $8C
    adc h                                         ; $78A8: $8C
    sbc b                                         ; $78A9: $98
    add b                                         ; $78AA: $80
    add b                                         ; $78AB: $80
    sbc c                                         ; $78AC: $99
    adc l                                         ; $78AD: $8D
    sbc c                                         ; $78AE: $99
    sbc e                                         ; $78AF: $9B
    sbc b                                         ; $78B0: $98
    adc h                                         ; $78B1: $8C
    adc h                                         ; $78B2: $8C
    sbc b                                         ; $78B3: $98
    add b                                         ; $78B4: $80
    add b                                         ; $78B5: $80
    sbc b                                         ; $78B6: $98
    adc h                                         ; $78B7: $8C
    adc h                                         ; $78B8: $8C
    sbc b                                         ; $78B9: $98
    add b                                         ; $78BA: $80
    add b                                         ; $78BB: $80
    add b                                         ; $78BC: $80
    add b                                         ; $78BD: $80
    db $EC                                        ; $78BE: $EC
    ld [hl], l                                    ; $78BF: $75
    ld a, c                                       ; $78C0: $79
    and $03                                       ; $78C1: $E6 $03
    db $EC                                        ; $78C3: $EC
    ld [hl], l                                    ; $78C4: $75
    ld a, c                                       ; $78C5: $79
    and $FD                                       ; $78C6: $E6 $FD
    and $F4                                       ; $78C8: $E6 $F4
    add b                                         ; $78CA: $80
    adc h                                         ; $78CB: $8C
    adc h                                         ; $78CC: $8C
    add b                                         ; $78CD: $80
    sbc b                                         ; $78CE: $98
    sbc b                                         ; $78CF: $98
    add b                                         ; $78D0: $80
    adc h                                         ; $78D1: $8C
    adc h                                         ; $78D2: $8C
    add b                                         ; $78D3: $80
    sbc b                                         ; $78D4: $98
    sbc b                                         ; $78D5: $98
    add b                                         ; $78D6: $80
    adc h                                         ; $78D7: $8C
    adc h                                         ; $78D8: $8C
    sbc b                                         ; $78D9: $98
    sbc b                                         ; $78DA: $98
    adc l                                         ; $78DB: $8D
    adc l                                         ; $78DC: $8D
    add b                                         ; $78DD: $80
    sbc b                                         ; $78DE: $98
    sbc b                                         ; $78DF: $98
    add b                                         ; $78E0: $80
    adc l                                         ; $78E1: $8D
    adc l                                         ; $78E2: $8D
    add b                                         ; $78E3: $80
    sbc b                                         ; $78E4: $98
    sbc b                                         ; $78E5: $98
    add b                                         ; $78E6: $80
    adc l                                         ; $78E7: $8D
    adc l                                         ; $78E8: $8D
    sbc b                                         ; $78E9: $98
    sbc b                                         ; $78EA: $98
    adc a                                         ; $78EB: $8F
    adc a                                         ; $78EC: $8F
    add b                                         ; $78ED: $80
    sbc b                                         ; $78EE: $98
    sbc b                                         ; $78EF: $98
    add b                                         ; $78F0: $80
    adc a                                         ; $78F1: $8F
    adc a                                         ; $78F2: $8F
    add b                                         ; $78F3: $80
    sbc b                                         ; $78F4: $98
    sbc b                                         ; $78F5: $98
    add b                                         ; $78F6: $80
    adc a                                         ; $78F7: $8F
    adc a                                         ; $78F8: $8F
    sbc b                                         ; $78F9: $98
    sbc b                                         ; $78FA: $98
    sub c                                         ; $78FB: $91
    sub c                                         ; $78FC: $91
    add b                                         ; $78FD: $80
    sbc b                                         ; $78FE: $98
    sbc b                                         ; $78FF: $98
    add b                                         ; $7900: $80
    sub c                                         ; $7901: $91
    sub c                                         ; $7902: $91
    add b                                         ; $7903: $80
    sbc b                                         ; $7904: $98
    sbc b                                         ; $7905: $98
    add b                                         ; $7906: $80
    sub d                                         ; $7907: $92
    sub d                                         ; $7908: $92
    sub h                                         ; $7909: $94
    sub h                                         ; $790A: $94
    add b                                         ; $790B: $80
    and $0C                                       ; $790C: $E6 $0C
    db $EC                                        ; $790E: $EC
    sbc h                                         ; $790F: $9C
    ld a, c                                       ; $7910: $79
    sub h                                         ; $7911: $94
    sub d                                         ; $7912: $92
    sub [hl]                                      ; $7913: $96
    sub d                                         ; $7914: $92
    sub h                                         ; $7915: $94
    add b                                         ; $7916: $80
    sub h                                         ; $7917: $94
    sub d                                         ; $7918: $92
    sub [hl]                                      ; $7919: $96
    sub d                                         ; $791A: $92
    sub h                                         ; $791B: $94
    add b                                         ; $791C: $80
    sub h                                         ; $791D: $94
    sub d                                         ; $791E: $92
    sub [hl]                                      ; $791F: $96
    sub d                                         ; $7920: $92
    sub h                                         ; $7921: $94
    sub d                                         ; $7922: $92
    sbc b                                         ; $7923: $98
    sub d                                         ; $7924: $92
    sub h                                         ; $7925: $94
    add b                                         ; $7926: $80
    sub h                                         ; $7927: $94
    sub d                                         ; $7928: $92
    sbc b                                         ; $7929: $98
    sub d                                         ; $792A: $92
    sub h                                         ; $792B: $94
    add b                                         ; $792C: $80
    add b                                         ; $792D: $80
    add b                                         ; $792E: $80
    add b                                         ; $792F: $80
    add a                                         ; $7930: $87
    ld [de], a                                    ; $7931: $12
    adc b                                         ; $7932: $88
    adc c                                         ; $7933: $89
    adc d                                         ; $7934: $8A
    adc e                                         ; $7935: $8B
    inc c                                         ; $7936: $0C
    adc h                                         ; $7937: $8C
    adc l                                         ; $7938: $8D
    ld [de], a                                    ; $7939: $12
    adc [hl]                                      ; $793A: $8E
    adc a                                         ; $793B: $8F
    inc c                                         ; $793C: $0C
    sub c                                         ; $793D: $91
    ld b, $92                                     ; $793E: $06 $92
    sub c                                         ; $7940: $91
    sub d                                         ; $7941: $92
    inc b                                         ; $7942: $04
    sub h                                         ; $7943: $94
    sub d                                         ; $7944: $92
    sub c                                         ; $7945: $91
    ld b, $8F                                     ; $7946: $06 $8F
    db $EC                                        ; $7948: $EC
    or d                                          ; $7949: $B2
    ld a, c                                       ; $794A: $79
    push hl                                       ; $794B: $E5
    sub h                                         ; $794C: $94
    ld a, b                                       ; $794D: $78
    sbc b                                         ; $794E: $98
    ld b, $8C                                     ; $794F: $06 $8C
    adc h                                         ; $7951: $8C
    sbc b                                         ; $7952: $98
    add b                                         ; $7953: $80
    add b                                         ; $7954: $80
    sbc b                                         ; $7955: $98
    adc h                                         ; $7956: $8C
    adc h                                         ; $7957: $8C
    sbc b                                         ; $7958: $98
    add b                                         ; $7959: $80
    add b                                         ; $795A: $80
    sbc c                                         ; $795B: $99
    adc l                                         ; $795C: $8D
    sbc c                                         ; $795D: $99
    sbc e                                         ; $795E: $9B
    sbc b                                         ; $795F: $98
    adc h                                         ; $7960: $8C
    adc h                                         ; $7961: $8C
    sbc b                                         ; $7962: $98
    add b                                         ; $7963: $80
    add b                                         ; $7964: $80
    sbc b                                         ; $7965: $98
    adc h                                         ; $7966: $8C
    adc h                                         ; $7967: $8C
    sbc b                                         ; $7968: $98
    add b                                         ; $7969: $80
    add b                                         ; $796A: $80
    sub [hl]                                      ; $796B: $96
    adc h                                         ; $796C: $8C
    sub [hl]                                      ; $796D: $96
    add [hl]                                      ; $796E: $86
    rst RST_20                                    ; $796F: $E7
    nop                                           ; $7970: $00
    inc bc                                        ; $7971: $03
    ld c, [hl]                                    ; $7972: $4E
    ld a, c                                       ; $7973: $79
    db $ED                                        ; $7974: $ED
    sbc b                                         ; $7975: $98
    ld b, $8C                                     ; $7976: $06 $8C
    adc h                                         ; $7978: $8C
    sbc b                                         ; $7979: $98
    add b                                         ; $797A: $80
    add b                                         ; $797B: $80
    sbc b                                         ; $797C: $98
    adc h                                         ; $797D: $8C
    adc h                                         ; $797E: $8C
    sbc b                                         ; $797F: $98
    add b                                         ; $7980: $80
    add b                                         ; $7981: $80
    sbc c                                         ; $7982: $99
    adc l                                         ; $7983: $8D
    sbc c                                         ; $7984: $99
    sbc e                                         ; $7985: $9B
    sbc b                                         ; $7986: $98
    adc h                                         ; $7987: $8C
    adc h                                         ; $7988: $8C
    sbc b                                         ; $7989: $98
    add b                                         ; $798A: $80
    add b                                         ; $798B: $80
    sbc b                                         ; $798C: $98
    adc h                                         ; $798D: $8C
    adc h                                         ; $798E: $8C
    sbc b                                         ; $798F: $98
    add b                                         ; $7990: $80
    add b                                         ; $7991: $80
    sub [hl]                                      ; $7992: $96
    adc h                                         ; $7993: $8C
    sub [hl]                                      ; $7994: $96
    sub d                                         ; $7995: $92
    rst RST_20                                    ; $7996: $E7
    nop                                           ; $7997: $00
    inc b                                         ; $7998: $04
    ld [hl], l                                    ; $7999: $75
    ld a, c                                       ; $799A: $79
    db $ED                                        ; $799B: $ED
    sub h                                         ; $799C: $94
    sub d                                         ; $799D: $92
    sub l                                         ; $799E: $95
    sub d                                         ; $799F: $92
    sub h                                         ; $79A0: $94
    add b                                         ; $79A1: $80
    sub h                                         ; $79A2: $94
    sub d                                         ; $79A3: $92
    sub l                                         ; $79A4: $95
    sub d                                         ; $79A5: $92
    sub h                                         ; $79A6: $94
    add b                                         ; $79A7: $80
    sub h                                         ; $79A8: $94
    sub d                                         ; $79A9: $92
    sub l                                         ; $79AA: $95
    sub d                                         ; $79AB: $92
    rst RST_20                                    ; $79AC: $E7
    nop                                           ; $79AD: $00
    ld [bc], a                                    ; $79AE: $02
    sbc h                                         ; $79AF: $9C
    ld a, c                                       ; $79B0: $79
    db $ED                                        ; $79B1: $ED
    add b                                         ; $79B2: $80
    sub c                                         ; $79B3: $91
    sub c                                         ; $79B4: $91
    add b                                         ; $79B5: $80
    add b                                         ; $79B6: $80
    add b                                         ; $79B7: $80
    add b                                         ; $79B8: $80
    sub c                                         ; $79B9: $91
    sub c                                         ; $79BA: $91
    add b                                         ; $79BB: $80
    add b                                         ; $79BC: $80
    add b                                         ; $79BD: $80
    sbc [hl]                                      ; $79BE: $9E
    sub d                                         ; $79BF: $92
    sbc [hl]                                      ; $79C0: $9E
    and b                                         ; $79C1: $A0
    add b                                         ; $79C2: $80
    sub c                                         ; $79C3: $91
    sub c                                         ; $79C4: $91
    add b                                         ; $79C5: $80
    add b                                         ; $79C6: $80
    add b                                         ; $79C7: $80
    add b                                         ; $79C8: $80
    sub c                                         ; $79C9: $91
    sub c                                         ; $79CA: $91
    add b                                         ; $79CB: $80
    add b                                         ; $79CC: $80
    add b                                         ; $79CD: $80
    sbc e                                         ; $79CE: $9B
    sub c                                         ; $79CF: $91
    sbc e                                         ; $79D0: $9B
    sub a                                         ; $79D1: $97
    rst RST_20                                    ; $79D2: $E7
    nop                                           ; $79D3: $00
    ld [bc], a                                    ; $79D4: $02

jr_02E_79D5:
    or d                                          ; $79D5: $B2
    ld a, c                                       ; $79D6: $79
    db $ED                                        ; $79D7: $ED
    db $E4                                        ; $79D8: $E4
    ld b, b                                       ; $79D9: $40

jr_02E_79DA:
    jp hl                                         ; $79DA: $E9


    ld b, h                                       ; $79DB: $44
    di                                            ; $79DC: $F3
    inc b                                         ; $79DD: $04
    push af                                       ; $79DE: $F5
    ld [hl-], a                                   ; $79DF: $32
    db $EC                                        ; $79E0: $EC
    ld e, e                                       ; $79E1: $5B
    ld a, d                                       ; $79E2: $7A

jr_02E_79E3:
    push af                                       ; $79E3: $F5
    nop                                           ; $79E4: $00

jr_02E_79E5:
    db $EC                                        ; $79E5: $EC
    add d                                         ; $79E6: $82
    ld a, d                                       ; $79E7: $7A
    and $03                                       ; $79E8: $E6 $03
    db $EC                                        ; $79EA: $EC
    add d                                         ; $79EB: $82
    ld a, d                                       ; $79EC: $7A
    and $FD                                       ; $79ED: $E6 $FD
    push af                                       ; $79EF: $F5
    ld [hl-], a                                   ; $79F0: $32
    db $EC                                        ; $79F1: $EC
    push hl                                       ; $79F2: $E5
    ld a, d                                       ; $79F3: $7A
    push af                                       ; $79F4: $F5
    nop                                           ; $79F5: $00
    db $E4                                        ; $79F6: $E4
    ld b, b                                       ; $79F7: $40
    and h                                         ; $79F8: $A4
    inc c                                         ; $79F9: $0C
    db $E4                                        ; $79FA: $E4
    ld h, b                                       ; $79FB: $60
    and h                                         ; $79FC: $A4
    ld b, $E4                                     ; $79FD: $06 $E4
    ld b, b                                       ; $79FF: $40
    and e                                         ; $7A00: $A3
    inc c                                         ; $7A01: $0C
    db $E4                                        ; $7A02: $E4
    ld h, b                                       ; $7A03: $60
    and e                                         ; $7A04: $A3
    ld b, $E4                                     ; $7A05: $06 $E4
    ld b, b                                       ; $7A07: $40
    sbc l                                         ; $7A08: $9D
    inc c                                         ; $7A09: $0C
    db $E4                                        ; $7A0A: $E4
    ld h, b                                       ; $7A0B: $60
    sbc l                                         ; $7A0C: $9D
    ld b, $E4                                     ; $7A0D: $06 $E4
    ld b, b                                       ; $7A0F: $40
    and d                                         ; $7A10: $A2
    inc c                                         ; $7A11: $0C
    db $E4                                        ; $7A12: $E4
    ld h, b                                       ; $7A13: $60
    and d                                         ; $7A14: $A2

jr_02E_7A15:
    ld b, $E4                                     ; $7A15: $06 $E4
    ld b, b                                       ; $7A17: $40
    and c                                         ; $7A18: $A1
    inc c                                         ; $7A19: $0C
    sbc l                                         ; $7A1A: $9D
    db $E4                                        ; $7A1B: $E4
    ld b, b                                       ; $7A1C: $40
    and b                                         ; $7A1D: $A0
    inc c                                         ; $7A1E: $0C
    db $E4                                        ; $7A1F: $E4
    ld h, b                                       ; $7A20: $60
    and b                                         ; $7A21: $A0
    ld b, $E4                                     ; $7A22: $06 $E4
    ld b, b                                       ; $7A24: $40
    sbc a                                         ; $7A25: $9F
    inc c                                         ; $7A26: $0C
    db $E4                                        ; $7A27: $E4
    ld h, b                                       ; $7A28: $60
    sbc a                                         ; $7A29: $9F
    ld b, $E4                                     ; $7A2A: $06 $E4
    ld b, b                                       ; $7A2C: $40
    pop af                                        ; $7A2D: $F1
    sbc e                                         ; $7A2E: $9B
    jr jr_02E_7A15                                ; $7A2F: $18 $E4

    ld h, b                                       ; $7A31: $60
    sbc e                                         ; $7A32: $9B
    db $E4                                        ; $7A33: $E4
    ld b, b                                       ; $7A34: $40
    adc l                                         ; $7A35: $8D
    ld b, $9B                                     ; $7A36: $06 $9B
    pop af                                        ; $7A38: $F1
    sbc l                                         ; $7A39: $9D
    ld h, b                                       ; $7A3A: $60
    add b                                         ; $7A3B: $80
    add b                                         ; $7A3C: $80
    jr jr_02E_79D5                                ; $7A3D: $18 $96

    ld b, $8A                                     ; $7A3F: $06 $8A
    adc d                                         ; $7A41: $8A
    sub [hl]                                      ; $7A42: $96
    add b                                         ; $7A43: $80
    jr jr_02E_79DA                                ; $7A44: $18 $94

    ld b, $88                                     ; $7A46: $06 $88
    sub h                                         ; $7A48: $94
    sub [hl]                                      ; $7A49: $96
    add b                                         ; $7A4A: $80
    jr jr_02E_79E3                                ; $7A4B: $18 $96

    ld b, $8A                                     ; $7A4D: $06 $8A
    adc d                                         ; $7A4F: $8A
    sub [hl]                                      ; $7A50: $96
    add b                                         ; $7A51: $80
    jr jr_02E_79E5                                ; $7A52: $18 $91

    ld b, $85                                     ; $7A54: $06 $85
    sub c                                         ; $7A56: $91
    adc e                                         ; $7A57: $8B
    push hl                                       ; $7A58: $E5
    ret c                                         ; $7A59: $D8

    ld a, c                                       ; $7A5A: $79
    sbc b                                         ; $7A5B: $98
    ld b, $8C                                     ; $7A5C: $06 $8C
    adc h                                         ; $7A5E: $8C
    sbc b                                         ; $7A5F: $98
    add b                                         ; $7A60: $80
    add b                                         ; $7A61: $80
    sbc b                                         ; $7A62: $98
    adc h                                         ; $7A63: $8C
    adc h                                         ; $7A64: $8C
    sbc b                                         ; $7A65: $98
    add b                                         ; $7A66: $80
    add b                                         ; $7A67: $80
    sbc c                                         ; $7A68: $99

jr_02E_7A69:
    adc l                                         ; $7A69: $8D
    sbc c                                         ; $7A6A: $99
    sbc e                                         ; $7A6B: $9B
    sbc b                                         ; $7A6C: $98
    adc h                                         ; $7A6D: $8C
    adc h                                         ; $7A6E: $8C
    sbc b                                         ; $7A6F: $98
    add b                                         ; $7A70: $80
    add b                                         ; $7A71: $80
    sbc b                                         ; $7A72: $98
    adc h                                         ; $7A73: $8C
    adc h                                         ; $7A74: $8C
    sbc b                                         ; $7A75: $98

jr_02E_7A76:
    add b                                         ; $7A76: $80
    add b                                         ; $7A77: $80
    sub [hl]                                      ; $7A78: $96
    adc h                                         ; $7A79: $8C
    sub [hl]                                      ; $7A7A: $96
    sub d                                         ; $7A7B: $92
    rst RST_20                                    ; $7A7C: $E7
    nop                                           ; $7A7D: $00
    inc b                                         ; $7A7E: $04

jr_02E_7A7F:
    ld e, e                                       ; $7A7F: $5B
    ld a, d                                       ; $7A80: $7A
    db $ED                                        ; $7A81: $ED
    add b                                         ; $7A82: $80
    jr jr_02E_7A69                                ; $7A83: $18 $E4

    ld b, b                                       ; $7A85: $40
    pop af                                        ; $7A86: $F1
    sbc l                                         ; $7A87: $9D

jr_02E_7A88:
    db $E4                                        ; $7A88: $E4
    ld h, b                                       ; $7A89: $60
    sbc l                                         ; $7A8A: $9D
    inc c                                         ; $7A8B: $0C
    db $E4                                        ; $7A8C: $E4
    ld b, b                                       ; $7A8D: $40
    pop af                                        ; $7A8E: $F1
    and h                                         ; $7A8F: $A4
    jr jr_02E_7A76                                ; $7A90: $18 $E4

    ld h, b                                       ; $7A92: $60
    and h                                         ; $7A93: $A4
    inc c                                         ; $7A94: $0C
    db $E4                                        ; $7A95: $E4
    ld b, b                                       ; $7A96: $40
    pop af                                        ; $7A97: $F1
    and e                                         ; $7A98: $A3
    jr jr_02E_7A7F                                ; $7A99: $18 $E4

    ld h, b                                       ; $7A9B: $60
    and e                                         ; $7A9C: $A3
    inc c                                         ; $7A9D: $0C
    db $E4                                        ; $7A9E: $E4
    ld b, b                                       ; $7A9F: $40
    pop af                                        ; $7AA0: $F1
    sbc l                                         ; $7AA1: $9D
    jr jr_02E_7A88                                ; $7AA2: $18 $E4

    ld h, b                                       ; $7AA4: $60
    sbc l                                         ; $7AA5: $9D
    inc c                                         ; $7AA6: $0C

jr_02E_7AA7:
    db $E4                                        ; $7AA7: $E4
    ld b, b                                       ; $7AA8: $40
    and d                                         ; $7AA9: $A2
    pop af                                        ; $7AAA: $F1
    and c                                         ; $7AAB: $A1
    inc h                                         ; $7AAC: $24
    db $E4                                        ; $7AAD: $E4
    ld h, b                                       ; $7AAE: $60
    and c                                         ; $7AAF: $A1

jr_02E_7AB0:
    ld c, b                                       ; $7AB0: $48
    add b                                         ; $7AB1: $80
    ld h, b                                       ; $7AB2: $60
    add b                                         ; $7AB3: $80
    jr @-$1A                                      ; $7AB4: $18 $E4

    ld b, b                                       ; $7AB6: $40
    pop af                                        ; $7AB7: $F1
    sbc l                                         ; $7AB8: $9D

jr_02E_7AB9:
    db $E4                                        ; $7AB9: $E4
    ld h, b                                       ; $7ABA: $60
    sbc l                                         ; $7ABB: $9D
    inc c                                         ; $7ABC: $0C
    db $E4                                        ; $7ABD: $E4
    ld b, b                                       ; $7ABE: $40
    pop af                                        ; $7ABF: $F1
    and h                                         ; $7AC0: $A4
    jr jr_02E_7AA7                                ; $7AC1: $18 $E4

    ld h, b                                       ; $7AC3: $60
    and h                                         ; $7AC4: $A4
    inc c                                         ; $7AC5: $0C
    db $E4                                        ; $7AC6: $E4
    ld b, b                                       ; $7AC7: $40
    pop af                                        ; $7AC8: $F1
    and a                                         ; $7AC9: $A7
    jr jr_02E_7AB0                                ; $7ACA: $18 $E4

    ld h, b                                       ; $7ACC: $60
    and a                                         ; $7ACD: $A7
    inc c                                         ; $7ACE: $0C
    db $E4                                        ; $7ACF: $E4
    ld b, b                                       ; $7AD0: $40
    pop af                                        ; $7AD1: $F1
    and [hl]                                      ; $7AD2: $A6
    jr jr_02E_7AB9                                ; $7AD3: $18 $E4

    ld h, b                                       ; $7AD5: $60
    and [hl]                                      ; $7AD6: $A6
    inc c                                         ; $7AD7: $0C
    db $E4                                        ; $7AD8: $E4
    ld b, b                                       ; $7AD9: $40
    and d                                         ; $7ADA: $A2
    pop af                                        ; $7ADB: $F1
    and h                                         ; $7ADC: $A4
    inc h                                         ; $7ADD: $24
    db $E4                                        ; $7ADE: $E4
    ld h, b                                       ; $7ADF: $60
    and h                                         ; $7AE0: $A4
    ld c, b                                       ; $7AE1: $48
    add b                                         ; $7AE2: $80
    ld h, b                                       ; $7AE3: $60
    db $ED                                        ; $7AE4: $ED
    db $E4                                        ; $7AE5: $E4
    ld b, b                                       ; $7AE6: $40
    sbc b                                         ; $7AE7: $98
    ld b, $96                                     ; $7AE8: $06 $96
    sbc c                                         ; $7AEA: $99
    sub [hl]                                      ; $7AEB: $96
    sbc b                                         ; $7AEC: $98
    add b                                         ; $7AED: $80
    sbc b                                         ; $7AEE: $98
    sub [hl]                                      ; $7AEF: $96
    sbc c                                         ; $7AF0: $99
    sub [hl]                                      ; $7AF1: $96
    sbc b                                         ; $7AF2: $98
    add b                                         ; $7AF3: $80
    sbc b                                         ; $7AF4: $98
    sub [hl]                                      ; $7AF5: $96
    sbc c                                         ; $7AF6: $99
    sub [hl]                                      ; $7AF7: $96
    sbc b                                         ; $7AF8: $98
    sub [hl]                                      ; $7AF9: $96
    sbc c                                         ; $7AFA: $99
    sub [hl]                                      ; $7AFB: $96
    sbc b                                         ; $7AFC: $98
    add b                                         ; $7AFD: $80
    sbc b                                         ; $7AFE: $98
    sub [hl]                                      ; $7AFF: $96
    sbc c                                         ; $7B00: $99
    sub [hl]                                      ; $7B01: $96
    sbc b                                         ; $7B02: $98
    add b                                         ; $7B03: $80
    sbc b                                         ; $7B04: $98
    sub [hl]                                      ; $7B05: $96
    sbc c                                         ; $7B06: $99
    sub [hl]                                      ; $7B07: $96
    sbc b                                         ; $7B08: $98
    sub [hl]                                      ; $7B09: $96
    sbc e                                         ; $7B0A: $9B
    sub [hl]                                      ; $7B0B: $96
    sbc b                                         ; $7B0C: $98
    add b                                         ; $7B0D: $80
    sbc b                                         ; $7B0E: $98
    sub [hl]                                      ; $7B0F: $96
    sbc e                                         ; $7B10: $9B
    sub [hl]                                      ; $7B11: $96
    sbc b                                         ; $7B12: $98
    add b                                         ; $7B13: $80
    sbc b                                         ; $7B14: $98
    sub [hl]                                      ; $7B15: $96
    sbc e                                         ; $7B16: $9B
    sub [hl]                                      ; $7B17: $96
    sbc b                                         ; $7B18: $98
    sub [hl]                                      ; $7B19: $96
    sbc l                                         ; $7B1A: $9D
    sub [hl]                                      ; $7B1B: $96
    sbc b                                         ; $7B1C: $98
    add b                                         ; $7B1D: $80
    sbc b                                         ; $7B1E: $98
    sub [hl]                                      ; $7B1F: $96
    sbc l                                         ; $7B20: $9D
    sub [hl]                                      ; $7B21: $96
    sbc b                                         ; $7B22: $98
    add b                                         ; $7B23: $80
    sbc b                                         ; $7B24: $98
    sub [hl]                                      ; $7B25: $96
    sbc [hl]                                      ; $7B26: $9E
    and b                                         ; $7B27: $A0
    rst RST_20                                    ; $7B28: $E7
    nop                                           ; $7B29: $00
    ld [bc], a                                    ; $7B2A: $02
    push hl                                       ; $7B2B: $E5
    ld a, d                                       ; $7B2C: $7A
    db $ED                                        ; $7B2D: $ED
    jp hl                                         ; $7B2E: $E9


    adc b                                         ; $7B2F: $88
    db $EC                                        ; $7B30: $EC
    ld a, l                                       ; $7B31: $7D
    ld a, e                                       ; $7B32: $7B
    db $EC                                        ; $7B33: $EC
    add a                                         ; $7B34: $87
    ld a, e                                       ; $7B35: $7B
    db $E4                                        ; $7B36: $E4
    ld b, c                                       ; $7B37: $41
    ld hl, $E406                                  ; $7B38: $21 $06 $E4
    ld h, d                                       ; $7B3B: $62
    inc h                                         ; $7B3C: $24
    ld b, $E4                                     ; $7B3D: $06 $E4
    ld b, c                                       ; $7B3F: $41
    ld hl, $E406                                  ; $7B40: $21 $06 $E4
    ld h, d                                       ; $7B43: $62
    inc h                                         ; $7B44: $24
    ld b, $EC                                     ; $7B45: $06 $EC
    sub c                                         ; $7B47: $91
    ld a, e                                       ; $7B48: $7B
    db $E4                                        ; $7B49: $E4
    ld d, e                                       ; $7B4A: $53
    ld de, $E412                                  ; $7B4B: $11 $12 $E4
    ld d, e                                       ; $7B4E: $53
    ld de, $E412                                  ; $7B4F: $11 $12 $E4
    ld d, e                                       ; $7B52: $53
    ld de, $E412                                  ; $7B53: $11 $12 $E4
    ld d, e                                       ; $7B56: $53
    ld de, $E412                                  ; $7B57: $11 $12 $E4
    ld d, e                                       ; $7B5A: $53
    ld de, $E40C                                  ; $7B5B: $11 $0C $E4
    ld d, e                                       ; $7B5E: $53
    ld de, $E40C                                  ; $7B5F: $11 $0C $E4
    ld d, e                                       ; $7B62: $53
    ld de, $E412                                  ; $7B63: $11 $12 $E4
    ld d, e                                       ; $7B66: $53
    ld de, $E412                                  ; $7B67: $11 $12 $E4
    ld d, e                                       ; $7B6A: $53
    ld de, $EC18                                  ; $7B6B: $11 $18 $EC
    and e                                         ; $7B6E: $A3
    ld a, e                                       ; $7B6F: $7B
    db $EC                                        ; $7B70: $EC
    ret nz                                        ; $7B71: $C0

    ld a, e                                       ; $7B72: $7B
    db $E4                                        ; $7B73: $E4
    ld [hl], c                                    ; $7B74: $71
    ld [hl], $0C                                  ; $7B75: $36 $0C
    db $EC                                        ; $7B77: $EC
    and e                                         ; $7B78: $A3
    ld a, e                                       ; $7B79: $7B
    push hl                                       ; $7B7A: $E5
    ld l, $7B                                     ; $7B7B: $2E $7B
    db $E4                                        ; $7B7D: $E4
    nop                                           ; $7B7E: $00
    nop                                           ; $7B7F: $00
    ld h, b                                       ; $7B80: $60
    rst RST_20                                    ; $7B81: $E7
    nop                                           ; $7B82: $00
    inc b                                         ; $7B83: $04
    ld a, l                                       ; $7B84: $7D
    ld a, e                                       ; $7B85: $7B
    db $ED                                        ; $7B86: $ED
    db $E4                                        ; $7B87: $E4
    ld [hl], c                                    ; $7B88: $71
    ld [hl], $18                                  ; $7B89: $36 $18
    rst RST_20                                    ; $7B8B: $E7
    nop                                           ; $7B8C: $00
    rrca                                          ; $7B8D: $0F
    add a                                         ; $7B8E: $87
    ld a, e                                       ; $7B8F: $7B
    db $ED                                        ; $7B90: $ED
    db $E4                                        ; $7B91: $E4
    ld [hl], c                                    ; $7B92: $71
    ld [hl], $0C                                  ; $7B93: $36 $0C
    db $E4                                        ; $7B95: $E4
    ld b, c                                       ; $7B96: $41
    ld hl, $E406                                  ; $7B97: $21 $06 $E4
    ld b, c                                       ; $7B9A: $41
    ld hl, $E706                                  ; $7B9B: $21 $06 $E7
    nop                                           ; $7B9E: $00
    ld h, b                                       ; $7B9F: $60
    sub c                                         ; $7BA0: $91
    ld a, e                                       ; $7BA1: $7B
    db $ED                                        ; $7BA2: $ED
    db $E4                                        ; $7BA3: $E4
    ld h, d                                       ; $7BA4: $62
    inc h                                         ; $7BA5: $24
    inc b                                         ; $7BA6: $04
    db $E4                                        ; $7BA7: $E4
    ld h, d                                       ; $7BA8: $62
    inc h                                         ; $7BA9: $24
    inc b                                         ; $7BAA: $04
    db $E4                                        ; $7BAB: $E4
    ld h, d                                       ; $7BAC: $62
    inc h                                         ; $7BAD: $24
    inc b                                         ; $7BAE: $04
    db $E4                                        ; $7BAF: $E4
    ld h, d                                       ; $7BB0: $62
    inc h                                         ; $7BB1: $24
    ld b, $E4                                     ; $7BB2: $06 $E4
    ld h, d                                       ; $7BB4: $62
    inc h                                         ; $7BB5: $24
    ld b, $E4                                     ; $7BB6: $06 $E4
    ld h, d                                       ; $7BB8: $62
    inc h                                         ; $7BB9: $24
    ld b, $E4                                     ; $7BBA: $06 $E4
    ld h, d                                       ; $7BBC: $62
    inc h                                         ; $7BBD: $24
    ld b, $ED                                     ; $7BBE: $06 $ED
    db $E4                                        ; $7BC0: $E4
    ld [hl], c                                    ; $7BC1: $71
    ld [hl], $0C                                  ; $7BC2: $36 $0C
    db $E4                                        ; $7BC4: $E4
    ld b, c                                       ; $7BC5: $41
    ld hl, $E406                                  ; $7BC6: $21 $06 $E4
    ld b, c                                       ; $7BC9: $41
    ld hl, $E706                                  ; $7BCA: $21 $06 $E7
    nop                                           ; $7BCD: $00
    ld c, $C0                                     ; $7BCE: $0E $C0
    ld a, e                                       ; $7BD0: $7B
    db $ED                                        ; $7BD1: $ED
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
