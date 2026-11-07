; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $038", ROMX[$4000], BANK[$38]

    ldh a, [$FF98]                                ; $4000: $F0 $98
    ld e, a                                       ; $4002: $5F
    ldh a, [$FFAB]                                ; $4003: $F0 $AB
    or e                                          ; $4005: $B3
    ld e, a                                       ; $4006: $5F
    ld d, $02                                     ; $4007: $16 $02
    and $04                                       ; $4009: $E6 $04
    jr nz, jr_038_402E                            ; $400B: $20 $21

    ld d, $0E                                     ; $400D: $16 $0E
    ld a, e                                       ; $400F: $7B
    and $08                                       ; $4010: $E6 $08
    jr nz, jr_038_402E                            ; $4012: $20 $1A

    ld d, $08                                     ; $4014: $16 $08
    jr jr_038_402E                                ; $4016: $18 $16

    ldh a, [$FF98]                                ; $4018: $F0 $98
    ld e, a                                       ; $401A: $5F
    ldh a, [$FFAB]                                ; $401B: $F0 $AB
    or e                                          ; $401D: $B3
    ld e, a                                       ; $401E: $5F
    ld d, $02                                     ; $401F: $16 $02
    and $04                                       ; $4021: $E6 $04
    jr nz, jr_038_402E                            ; $4023: $20 $09

    ld d, $0A                                     ; $4025: $16 $0A
    ld a, e                                       ; $4027: $7B
    and $08                                       ; $4028: $E6 $08
    jr nz, jr_038_402E                            ; $402A: $20 $02

    ld d, $06                                     ; $402C: $16 $06

jr_038_402E:
    ld a, d                                       ; $402E: $7A
    ld [$C33C], a                                 ; $402F: $EA $3C $C3
    ld hl, $C33B                                  ; $4032: $21 $3B $C3
    dec [hl]                                      ; $4035: $35
    jp nz, Jump_038_4064                          ; $4036: $C2 $64 $40

    inc hl                                        ; $4039: $23
    ld a, [hl-]                                   ; $403A: $3A
    ld [hl], a                                    ; $403B: $77
    ld a, [$C32E]                                 ; $403C: $FA $2E $C3
    and $01                                       ; $403F: $E6 $01
    jr z, jr_038_4057                             ; $4041: $28 $14

    ld a, [$C33A]                                 ; $4043: $FA $3A $C3
    inc a                                         ; $4046: $3C
    ld [$C33A], a                                 ; $4047: $EA $3A $C3
    ld e, a                                       ; $404A: $5F
    and $0F                                       ; $404B: $E6 $0F
    jr nz, jr_038_4064                            ; $404D: $20 $15

    ld a, e                                       ; $404F: $7B
    add $F0                                       ; $4050: $C6 $F0
    ld [$C33A], a                                 ; $4052: $EA $3A $C3
    jr jr_038_409C                                ; $4055: $18 $45

jr_038_4057:
    ld a, [$C33A]                                 ; $4057: $FA $3A $C3
    inc a                                         ; $405A: $3C
    ld [$C33A], a                                 ; $405B: $EA $3A $C3
    ldh [$FFE2], a                                ; $405E: $E0 $E2
    and $0F                                       ; $4060: $E6 $0F
    jr z, jr_038_409C                             ; $4062: $28 $38

Jump_038_4064:
jr_038_4064:
    ld a, [$C33D]                                 ; $4064: $FA $3D $C3
    or a                                          ; $4067: $B7
    ret z                                         ; $4068: $C8

    dec a                                         ; $4069: $3D
    ld [$C33D], a                                 ; $406A: $EA $3D $C3
    ld a, [$C333]                                 ; $406D: $FA $33 $C3
    ld l, a                                       ; $4070: $6F
    ld a, [$C334]                                 ; $4071: $FA $34 $C3
    ld h, a                                       ; $4074: $67
    push hl                                       ; $4075: $E5
    ld de, $0020                                  ; $4076: $11 $20 $00
    add hl, de                                    ; $4079: $19
    ld a, l                                       ; $407A: $7D
    ld [$C333], a                                 ; $407B: $EA $33 $C3
    ld a, h                                       ; $407E: $7C
    ld [$C334], a                                 ; $407F: $EA $34 $C3
    ld a, [$C337]                                 ; $4082: $FA $37 $C3
    ld e, a                                       ; $4085: $5F
    ld a, [$C338]                                 ; $4086: $FA $38 $C3
    ld d, a                                       ; $4089: $57
    ld hl, $0020                                  ; $408A: $21 $20 $00
    add hl, de                                    ; $408D: $19
    ld a, l                                       ; $408E: $7D
    ld [$C337], a                                 ; $408F: $EA $37 $C3
    ld a, h                                       ; $4092: $7C
    ld [$C338], a                                 ; $4093: $EA $38 $C3
    pop hl                                        ; $4096: $E1
    ld b, $02                                     ; $4097: $06 $02
    jp Jump_000_11C2                              ; $4099: $C3 $C2 $11


jr_038_409C:
    ld a, [$C32F]                                 ; $409C: $FA $2F $C3
    ld e, a                                       ; $409F: $5F
    ld a, [$C330]                                 ; $40A0: $FA $30 $C3
    ld d, a                                       ; $40A3: $57
    ld a, [$C331]                                 ; $40A4: $FA $31 $C3
    ld [de], a                                    ; $40A7: $12
    inc de                                        ; $40A8: $13
    ld a, [$C332]                                 ; $40A9: $FA $32 $C3
    ld [de], a                                    ; $40AC: $12
    inc de                                        ; $40AD: $13
    ld a, $12                                     ; $40AE: $3E $12
    ld [de], a                                    ; $40B0: $12
    inc de                                        ; $40B1: $13
    ld a, [$C32B]                                 ; $40B2: $FA $2B $C3
    ld l, a                                       ; $40B5: $6F
    ld a, [$C32C]                                 ; $40B6: $FA $2C $C3
    ld h, a                                       ; $40B9: $67
    ld b, $06                                     ; $40BA: $06 $06

Jump_038_40BC:
jr_038_40BC:
    ld c, [hl]                                    ; $40BC: $4E
    inc hl                                        ; $40BD: $23
    ld a, [hl]                                    ; $40BE: $7E
    or c                                          ; $40BF: $B1
    jp z, Jump_038_4189                           ; $40C0: $CA $89 $41

    ld a, c                                       ; $40C3: $79
    ld [de], a                                    ; $40C4: $12
    inc de                                        ; $40C5: $13
    ld a, [hl+]                                   ; $40C6: $2A
    ld [de], a                                    ; $40C7: $12
    inc de                                        ; $40C8: $13
    ld a, [hl+]                                   ; $40C9: $2A
    ld [de], a                                    ; $40CA: $12
    inc de                                        ; $40CB: $13
    dec b                                         ; $40CC: $05
    jr nz, jr_038_40BC                            ; $40CD: $20 $ED

Jump_038_40CF:
    ld a, $12                                     ; $40CF: $3E $12
    ld [$C33D], a                                 ; $40D1: $EA $3D $C3
    ld a, l                                       ; $40D4: $7D
    ld [$C32B], a                                 ; $40D5: $EA $2B $C3
    ld a, h                                       ; $40D8: $7C
    ld [$C32C], a                                 ; $40D9: $EA $2C $C3
    ld hl, $C312                                  ; $40DC: $21 $12 $C3
    ld a, [$C32F]                                 ; $40DF: $FA $2F $C3
    ld [hl+], a                                   ; $40E2: $22
    ld a, [$C330]                                 ; $40E3: $FA $30 $C3
    ld [hl+], a                                   ; $40E6: $22
    ld b, $36                                     ; $40E7: $06 $36
    ld hl, $4000                                  ; $40E9: $21 $00 $40
    rst RST_08                                    ; $40EC: $CF
    ld a, [$C331]                                 ; $40ED: $FA $31 $C3
    ld e, a                                       ; $40F0: $5F
    ld a, [$C332]                                 ; $40F1: $FA $32 $C3
    ld d, a                                       ; $40F4: $57
    ld a, [$C33E]                                 ; $40F5: $FA $3E $C3
    ld [$C333], a                                 ; $40F8: $EA $33 $C3
    ld l, a                                       ; $40FB: $6F
    ld a, [$C33F]                                 ; $40FC: $FA $3F $C3
    ld [$C334], a                                 ; $40FF: $EA $34 $C3
    ld h, a                                       ; $4102: $67
    ld c, $12                                     ; $4103: $0E $12

jr_038_4105:
    xor a                                         ; $4105: $AF
    ld [hl+], a                                   ; $4106: $22
    ld [hl+], a                                   ; $4107: $22
    ld [hl+], a                                   ; $4108: $22
    ld [hl+], a                                   ; $4109: $22
    ld a, [de]                                    ; $410A: $1A
    inc de                                        ; $410B: $13
    ld [hl+], a                                   ; $410C: $22
    ld [hl+], a                                   ; $410D: $22
    ld a, [de]                                    ; $410E: $1A
    inc de                                        ; $410F: $13
    ld [hl+], a                                   ; $4110: $22
    ld [hl+], a                                   ; $4111: $22
    ld a, [de]                                    ; $4112: $1A
    inc de                                        ; $4113: $13
    ld [hl+], a                                   ; $4114: $22
    ld [hl+], a                                   ; $4115: $22
    ld a, [de]                                    ; $4116: $1A
    inc de                                        ; $4117: $13
    ld [hl+], a                                   ; $4118: $22
    ld [hl+], a                                   ; $4119: $22
    ld a, [de]                                    ; $411A: $1A
    inc de                                        ; $411B: $13
    ld [hl+], a                                   ; $411C: $22
    ld [hl+], a                                   ; $411D: $22
    ld a, [de]                                    ; $411E: $1A
    inc de                                        ; $411F: $13
    ld [hl+], a                                   ; $4120: $22
    ld [hl+], a                                   ; $4121: $22
    ld a, [de]                                    ; $4122: $1A
    inc de                                        ; $4123: $13
    ld [hl+], a                                   ; $4124: $22
    ld [hl+], a                                   ; $4125: $22
    ld a, [de]                                    ; $4126: $1A
    inc de                                        ; $4127: $13
    ld [hl+], a                                   ; $4128: $22
    ld [hl+], a                                   ; $4129: $22
    ld a, [de]                                    ; $412A: $1A
    inc de                                        ; $412B: $13
    ld [hl+], a                                   ; $412C: $22
    ld [hl+], a                                   ; $412D: $22
    ld a, [de]                                    ; $412E: $1A
    inc de                                        ; $412F: $13
    ld [hl+], a                                   ; $4130: $22
    ld [hl+], a                                   ; $4131: $22
    ld a, [de]                                    ; $4132: $1A
    inc de                                        ; $4133: $13
    ld [hl+], a                                   ; $4134: $22
    ld [hl+], a                                   ; $4135: $22
    ld a, [de]                                    ; $4136: $1A
    inc de                                        ; $4137: $13
    ld [hl+], a                                   ; $4138: $22
    ld [hl+], a                                   ; $4139: $22
    xor a                                         ; $413A: $AF
    ld [hl+], a                                   ; $413B: $22
    ld [hl+], a                                   ; $413C: $22
    ld [hl+], a                                   ; $413D: $22
    ld [hl+], a                                   ; $413E: $22
    dec c                                         ; $413F: $0D
    jr nz, jr_038_4105                            ; $4140: $20 $C3

    ld a, [$C339]                                 ; $4142: $FA $39 $C3
    inc a                                         ; $4145: $3C
    ld [$C339], a                                 ; $4146: $EA $39 $C3
    and $03                                       ; $4149: $E6 $03
    add a                                         ; $414B: $87
    add a                                         ; $414C: $87
    ld e, a                                       ; $414D: $5F
    ld d, $00                                     ; $414E: $16 $00
    ld hl, $4228                                  ; $4150: $21 $28 $42
    add hl, de                                    ; $4153: $19
    ld a, [hl+]                                   ; $4154: $2A
    ld [$C337], a                                 ; $4155: $EA $37 $C3
    ld a, [hl+]                                   ; $4158: $2A
    ld [$C338], a                                 ; $4159: $EA $38 $C3
    ld e, [hl]                                    ; $415C: $5E
    inc hl                                        ; $415D: $23
    ld d, [hl]                                    ; $415E: $56
    ld a, [$C335]                                 ; $415F: $FA $35 $C3
    ld c, a                                       ; $4162: $4F
    ld a, [$C336]                                 ; $4163: $FA $36 $C3
    ld b, a                                       ; $4166: $47
    ld hl, $9800                                  ; $4167: $21 $00 $98
    add hl, bc                                    ; $416A: $09
    ld b, $12                                     ; $416B: $06 $12
    ld c, $02                                     ; $416D: $0E $02
    call Call_000_10C0                            ; $416F: $CD $C0 $10
    ld a, [$C335]                                 ; $4172: $FA $35 $C3
    ld c, a                                       ; $4175: $4F
    ld a, [$C336]                                 ; $4176: $FA $36 $C3
    ld b, a                                       ; $4179: $47
    ld hl, $0040                                  ; $417A: $21 $40 $00
    add hl, bc                                    ; $417D: $09
    ld a, l                                       ; $417E: $7D
    ld [$C335], a                                 ; $417F: $EA $35 $C3
    ld a, h                                       ; $4182: $7C
    and $03                                       ; $4183: $E6 $03
    ld [$C336], a                                 ; $4185: $EA $36 $C3
    ret                                           ; $4188: $C9


Jump_038_4189:
    inc hl                                        ; $4189: $23
    ld a, [hl+]                                   ; $418A: $2A
    push hl                                       ; $418B: $E5
    ld hl, $419C                                  ; $418C: $21 $9C $41
    and $07                                       ; $418F: $E6 $07
    add a                                         ; $4191: $87
    add l                                         ; $4192: $85
    jr nc, jr_038_4196                            ; $4193: $30 $01

    inc h                                         ; $4195: $24

jr_038_4196:
    ld l, a                                       ; $4196: $6F
    ld a, [hl+]                                   ; $4197: $2A
    ld c, [hl]                                    ; $4198: $4E
    ld l, a                                       ; $4199: $6F
    ld h, c                                       ; $419A: $61
    jp hl                                         ; $419B: $E9


    xor h                                         ; $419C: $AC
    ld b, c                                       ; $419D: $41
    cp l                                          ; $419E: $BD
    ld b, c                                       ; $419F: $41
    push bc                                       ; $41A0: $C5
    ld b, c                                       ; $41A1: $41
    rst RST_08                                    ; $41A2: $CF
    ld b, c                                       ; $41A3: $41
    ld b, $42                                     ; $41A4: $06 $42
    ld c, $42                                     ; $41A6: $0E $42
    dec de                                        ; $41A8: $1B
    ld b, d                                       ; $41A9: $42
    xor h                                         ; $41AA: $AC
    ld b, c                                       ; $41AB: $41
    pop hl                                        ; $41AC: $E1

jr_038_41AD:
    ld a, $01                                     ; $41AD: $3E $01
    ld [de], a                                    ; $41AF: $12
    inc de                                        ; $41B0: $13
    dec a                                         ; $41B1: $3D
    ld [de], a                                    ; $41B2: $12
    inc de                                        ; $41B3: $13
    inc a                                         ; $41B4: $3C
    ld [de], a                                    ; $41B5: $12
    inc de                                        ; $41B6: $13
    dec b                                         ; $41B7: $05
    jr nz, jr_038_41AD                            ; $41B8: $20 $F3

    jp Jump_038_40CF                              ; $41BA: $C3 $CF $40


    pop hl                                        ; $41BD: $E1
    ld a, [hl+]                                   ; $41BE: $2A
    ld c, [hl]                                    ; $41BF: $4E
    ld l, a                                       ; $41C0: $6F
    ld h, c                                       ; $41C1: $61
    jp Jump_038_40BC                              ; $41C2: $C3 $BC $40


    pop hl                                        ; $41C5: $E1
    ld a, l                                       ; $41C6: $7D
    ld [$C32B], a                                 ; $41C7: $EA $2B $C3
    ld a, h                                       ; $41CA: $7C
    ld [$C32C], a                                 ; $41CB: $EA $2C $C3
    ret                                           ; $41CE: $C9


    pop hl                                        ; $41CF: $E1
    ld a, l                                       ; $41D0: $7D
    ld [$C32B], a                                 ; $41D1: $EA $2B $C3
    ld a, h                                       ; $41D4: $7C
    ld [$C32C], a                                 ; $41D5: $EA $2C $C3
    ld a, [$C335]                                 ; $41D8: $FA $35 $C3
    ld c, a                                       ; $41DB: $4F
    ld a, [$C336]                                 ; $41DC: $FA $36 $C3
    ld b, a                                       ; $41DF: $47
    ld hl, $9800                                  ; $41E0: $21 $00 $98
    add hl, bc                                    ; $41E3: $09
    ld e, $00                                     ; $41E4: $1E $00
    ld d, $10                                     ; $41E6: $16 $10
    ld b, $12                                     ; $41E8: $06 $12
    ld c, $02                                     ; $41EA: $0E $02
    call Call_000_10EA                            ; $41EC: $CD $EA $10
    ld a, [$C335]                                 ; $41EF: $FA $35 $C3
    ld c, a                                       ; $41F2: $4F
    ld a, [$C336]                                 ; $41F3: $FA $36 $C3
    ld b, a                                       ; $41F6: $47
    ld hl, $0040                                  ; $41F7: $21 $40 $00
    add hl, bc                                    ; $41FA: $09
    ld a, l                                       ; $41FB: $7D
    ld [$C335], a                                 ; $41FC: $EA $35 $C3
    ld a, h                                       ; $41FF: $7C
    and $03                                       ; $4200: $E6 $03
    ld [$C336], a                                 ; $4202: $EA $36 $C3
    ret                                           ; $4205: $C9


    pop hl                                        ; $4206: $E1
    ld a, [hl+]                                   ; $4207: $2A
    ld [$C32D], a                                 ; $4208: $EA $2D $C3
    jp Jump_038_40BC                              ; $420B: $C3 $BC $40


    pop hl                                        ; $420E: $E1
    ld a, [hl+]                                   ; $420F: $2A
    ld c, a                                       ; $4210: $4F
    ld a, [$C32E]                                 ; $4211: $FA $2E $C3
    or c                                          ; $4214: $B1
    ld [$C32E], a                                 ; $4215: $EA $2E $C3
    jp Jump_038_40BC                              ; $4218: $C3 $BC $40


    pop hl                                        ; $421B: $E1
    ld a, [hl+]                                   ; $421C: $2A
    ld c, a                                       ; $421D: $4F
    ld a, [$C32E]                                 ; $421E: $FA $2E $C3
    and c                                         ; $4221: $A1
    ld [$C32E], a                                 ; $4222: $EA $2E $C3
    jp Jump_038_40BC                              ; $4225: $C3 $BC $40


    nop                                           ; $4228: $00
    adc b                                         ; $4229: $88
    jr c, jr_038_426E                             ; $422A: $38 $42

    ld b, b                                       ; $422C: $40
    adc d                                         ; $422D: $8A
    add b                                         ; $422E: $80
    ld b, d                                       ; $422F: $42
    add b                                         ; $4230: $80
    adc h                                         ; $4231: $8C
    ret z                                         ; $4232: $C8

    ld b, d                                       ; $4233: $42
    ret nz                                        ; $4234: $C0

    adc [hl]                                      ; $4235: $8E
    db $10                                        ; $4236: $10
    ld b, e                                       ; $4237: $43
    nop                                           ; $4238: $00
    add b                                         ; $4239: $80
    nop                                           ; $423A: $00
    add d                                         ; $423B: $82
    nop                                           ; $423C: $00
    add h                                         ; $423D: $84
    nop                                           ; $423E: $00
    add [hl]                                      ; $423F: $86
    nop                                           ; $4240: $00
    adc b                                         ; $4241: $88
    nop                                           ; $4242: $00
    adc d                                         ; $4243: $8A
    nop                                           ; $4244: $00
    adc h                                         ; $4245: $8C
    nop                                           ; $4246: $00
    adc [hl]                                      ; $4247: $8E
    nop                                           ; $4248: $00
    sub b                                         ; $4249: $90
    nop                                           ; $424A: $00
    sub d                                         ; $424B: $92
    nop                                           ; $424C: $00
    sub h                                         ; $424D: $94
    nop                                           ; $424E: $00
    sub [hl]                                      ; $424F: $96
    nop                                           ; $4250: $00
    sbc b                                         ; $4251: $98
    nop                                           ; $4252: $00
    sbc d                                         ; $4253: $9A
    nop                                           ; $4254: $00
    sbc h                                         ; $4255: $9C
    nop                                           ; $4256: $00
    sbc [hl]                                      ; $4257: $9E
    nop                                           ; $4258: $00
    and b                                         ; $4259: $A0
    nop                                           ; $425A: $00
    and d                                         ; $425B: $A2
    nop                                           ; $425C: $00
    add c                                         ; $425D: $81
    nop                                           ; $425E: $00
    add e                                         ; $425F: $83
    nop                                           ; $4260: $00
    add l                                         ; $4261: $85
    nop                                           ; $4262: $00
    add a                                         ; $4263: $87
    nop                                           ; $4264: $00
    adc c                                         ; $4265: $89
    nop                                           ; $4266: $00
    adc e                                         ; $4267: $8B
    nop                                           ; $4268: $00
    adc l                                         ; $4269: $8D
    nop                                           ; $426A: $00
    adc a                                         ; $426B: $8F
    nop                                           ; $426C: $00
    sub c                                         ; $426D: $91

jr_038_426E:
    nop                                           ; $426E: $00
    sub e                                         ; $426F: $93
    nop                                           ; $4270: $00
    sub l                                         ; $4271: $95
    nop                                           ; $4272: $00
    sub a                                         ; $4273: $97
    nop                                           ; $4274: $00
    sbc c                                         ; $4275: $99
    nop                                           ; $4276: $00
    sbc e                                         ; $4277: $9B
    nop                                           ; $4278: $00
    sbc l                                         ; $4279: $9D
    nop                                           ; $427A: $00
    sbc a                                         ; $427B: $9F
    nop                                           ; $427C: $00
    and c                                         ; $427D: $A1
    nop                                           ; $427E: $00
    and e                                         ; $427F: $A3
    nop                                           ; $4280: $00
    and h                                         ; $4281: $A4
    nop                                           ; $4282: $00
    and [hl]                                      ; $4283: $A6
    nop                                           ; $4284: $00
    xor b                                         ; $4285: $A8
    nop                                           ; $4286: $00
    xor d                                         ; $4287: $AA
    nop                                           ; $4288: $00
    xor h                                         ; $4289: $AC
    nop                                           ; $428A: $00
    xor [hl]                                      ; $428B: $AE
    nop                                           ; $428C: $00
    or b                                          ; $428D: $B0
    nop                                           ; $428E: $00
    or d                                          ; $428F: $B2
    nop                                           ; $4290: $00
    or h                                          ; $4291: $B4
    nop                                           ; $4292: $00
    or [hl]                                       ; $4293: $B6
    nop                                           ; $4294: $00
    cp b                                          ; $4295: $B8
    nop                                           ; $4296: $00
    cp d                                          ; $4297: $BA
    nop                                           ; $4298: $00
    cp h                                          ; $4299: $BC
    nop                                           ; $429A: $00
    cp [hl]                                       ; $429B: $BE
    nop                                           ; $429C: $00
    ret nz                                        ; $429D: $C0

    nop                                           ; $429E: $00
    jp nz, $C400                                  ; $429F: $C2 $00 $C4

    nop                                           ; $42A2: $00
    add $00                                       ; $42A3: $C6 $00
    and l                                         ; $42A5: $A5
    nop                                           ; $42A6: $00
    and a                                         ; $42A7: $A7
    nop                                           ; $42A8: $00
    xor c                                         ; $42A9: $A9
    nop                                           ; $42AA: $00
    xor e                                         ; $42AB: $AB
    nop                                           ; $42AC: $00
    xor l                                         ; $42AD: $AD
    nop                                           ; $42AE: $00
    xor a                                         ; $42AF: $AF
    nop                                           ; $42B0: $00
    or c                                          ; $42B1: $B1
    nop                                           ; $42B2: $00
    or e                                          ; $42B3: $B3
    nop                                           ; $42B4: $00
    or l                                          ; $42B5: $B5
    nop                                           ; $42B6: $00
    or a                                          ; $42B7: $B7
    nop                                           ; $42B8: $00
    cp c                                          ; $42B9: $B9
    nop                                           ; $42BA: $00
    cp e                                          ; $42BB: $BB
    nop                                           ; $42BC: $00
    cp l                                          ; $42BD: $BD
    nop                                           ; $42BE: $00
    cp a                                          ; $42BF: $BF
    nop                                           ; $42C0: $00
    pop bc                                        ; $42C1: $C1
    nop                                           ; $42C2: $00
    jp $C500                                      ; $42C3: $C3 $00 $C5


    nop                                           ; $42C6: $00
    rst RST_00                                    ; $42C7: $C7
    nop                                           ; $42C8: $00
    ret z                                         ; $42C9: $C8

    nop                                           ; $42CA: $00
    jp z, $CC00                                   ; $42CB: $CA $00 $CC

    nop                                           ; $42CE: $00
    adc $00                                       ; $42CF: $CE $00
    ret nc                                        ; $42D1: $D0

    nop                                           ; $42D2: $00
    jp nc, $D400                                  ; $42D3: $D2 $00 $D4

    nop                                           ; $42D6: $00
    sub $00                                       ; $42D7: $D6 $00
    ret c                                         ; $42D9: $D8

    nop                                           ; $42DA: $00
    jp c, $DC00                                   ; $42DB: $DA $00 $DC

    nop                                           ; $42DE: $00
    sbc $00                                       ; $42DF: $DE $00
    ldh [rP1], a                                  ; $42E1: $E0 $00
    ldh [c], a                                    ; $42E3: $E2
    nop                                           ; $42E4: $00
    db $E4                                        ; $42E5: $E4
    nop                                           ; $42E6: $00
    and $00                                       ; $42E7: $E6 $00
    add sp, $00                                   ; $42E9: $E8 $00
    ld [$C900], a                                 ; $42EB: $EA $00 $C9
    nop                                           ; $42EE: $00
    rlc b                                         ; $42EF: $CB $00
    call $CF00                                    ; $42F1: $CD $00 $CF
    nop                                           ; $42F4: $00
    pop de                                        ; $42F5: $D1
    nop                                           ; $42F6: $00
    db $D3                                        ; $42F7: $D3
    nop                                           ; $42F8: $00
    push de                                       ; $42F9: $D5
    nop                                           ; $42FA: $00
    rst RST_10                                    ; $42FB: $D7
    nop                                           ; $42FC: $00
    reti                                          ; $42FD: $D9


    nop                                           ; $42FE: $00
    db $DB                                        ; $42FF: $DB
    nop                                           ; $4300: $00
    db $DD                                        ; $4301: $DD
    nop                                           ; $4302: $00
    rst RST_18                                    ; $4303: $DF
    nop                                           ; $4304: $00
    pop hl                                        ; $4305: $E1
    nop                                           ; $4306: $00
    db $E3                                        ; $4307: $E3
    nop                                           ; $4308: $00
    push hl                                       ; $4309: $E5
    nop                                           ; $430A: $00
    rst RST_20                                    ; $430B: $E7
    nop                                           ; $430C: $00
    jp hl                                         ; $430D: $E9


    nop                                           ; $430E: $00
    db $EB                                        ; $430F: $EB
    nop                                           ; $4310: $00
    db $EC                                        ; $4311: $EC
    nop                                           ; $4312: $00
    xor $00                                       ; $4313: $EE $00
    ldh a, [rP1]                                  ; $4315: $F0 $00
    ldh a, [c]                                    ; $4317: $F2
    nop                                           ; $4318: $00
    db $F4                                        ; $4319: $F4
    nop                                           ; $431A: $00
    or $00                                        ; $431B: $F6 $00
    ld hl, sp+$00                                 ; $431D: $F8 $00
    ld a, [$FC00]                                 ; $431F: $FA $00 $FC
    nop                                           ; $4322: $00
    cp $00                                        ; $4323: $FE $00
    nop                                           ; $4325: $00
    nop                                           ; $4326: $00
    ld [bc], a                                    ; $4327: $02
    nop                                           ; $4328: $00
    inc b                                         ; $4329: $04
    nop                                           ; $432A: $00
    ld b, $00                                     ; $432B: $06 $00
    ld [$0A00], sp                                ; $432D: $08 $00 $0A
    nop                                           ; $4330: $00
    inc c                                         ; $4331: $0C
    nop                                           ; $4332: $00
    ld c, $00                                     ; $4333: $0E $00
    db $ED                                        ; $4335: $ED
    nop                                           ; $4336: $00
    rst RST_28                                    ; $4337: $EF
    nop                                           ; $4338: $00
    pop af                                        ; $4339: $F1
    nop                                           ; $433A: $00
    di                                            ; $433B: $F3
    nop                                           ; $433C: $00
    push af                                       ; $433D: $F5
    nop                                           ; $433E: $00
    rst RST_30                                    ; $433F: $F7
    nop                                           ; $4340: $00
    ld sp, hl                                     ; $4341: $F9
    nop                                           ; $4342: $00
    ei                                            ; $4343: $FB
    nop                                           ; $4344: $00
    db $FD                                        ; $4345: $FD
    nop                                           ; $4346: $00
    rst RST_38                                    ; $4347: $FF
    nop                                           ; $4348: $00
    ld bc, $0300                                  ; $4349: $01 $00 $03
    nop                                           ; $434C: $00
    dec b                                         ; $434D: $05
    nop                                           ; $434E: $00
    rlca                                          ; $434F: $07
    nop                                           ; $4350: $00
    add hl, bc                                    ; $4351: $09
    nop                                           ; $4352: $00
    dec bc                                        ; $4353: $0B
    nop                                           ; $4354: $00
    dec c                                         ; $4355: $0D
    nop                                           ; $4356: $00
    rrca                                          ; $4357: $0F
    and b                                         ; $4358: $A0
    nop                                           ; $4359: $00
    ld a, l                                       ; $435A: $7D
    ld a, c                                       ; $435B: $79
    nop                                           ; $435C: $00
    cpl                                           ; $435D: $2F
    jr z, jr_038_4360                             ; $435E: $28 $00

jr_038_4360:
    ld [hl], $65                                  ; $4360: $36 $65
    nop                                           ; $4362: $00
    dec l                                         ; $4363: $2D
    nop                                           ; $4364: $00
    nop                                           ; $4365: $00
    nop                                           ; $4366: $00
    ld bc, $B200                                  ; $4367: $01 $00 $B2
    add d                                         ; $436A: $82
    nop                                           ; $436B: $00
    adc c                                         ; $436C: $89
    sub l                                         ; $436D: $95
    nop                                           ; $436E: $00
    halt                                          ; $436F: $76
    or c                                          ; $4370: $B1
    nop                                           ; $4371: $00
    ld bc, $0000                                  ; $4372: $01 $00 $00
    nop                                           ; $4375: $00
    nop                                           ; $4376: $00
    nop                                           ; $4377: $00
    inc bc                                        ; $4378: $03
    sbc c                                         ; $4379: $99
    nop                                           ; $437A: $00
    adc c                                         ; $437B: $89
    sub l                                         ; $437C: $95
    nop                                           ; $437D: $00
    cp [hl]                                       ; $437E: $BE
    pop bc                                        ; $437F: $C1
    nop                                           ; $4380: $00
    ld c, l                                       ; $4381: $4D
    cp e                                          ; $4382: $BB
    nop                                           ; $4383: $00
    halt                                          ; $4384: $76
    sub [hl]                                      ; $4385: $96
    nop                                           ; $4386: $00
    halt                                          ; $4387: $76
    ret z                                         ; $4388: $C8

    nop                                           ; $4389: $00
    ld bc, $0082                                  ; $438A: $01 $82 $00
    cp h                                          ; $438D: $BC
    and l                                         ; $438E: $A5
    nop                                           ; $438F: $00
    sub l                                         ; $4390: $95
    cp [hl]                                       ; $4391: $BE
    nop                                           ; $4392: $00
    pop bc                                        ; $4393: $C1
    ld c, l                                       ; $4394: $4D
    nop                                           ; $4395: $00
    ld a, [hl+]                                   ; $4396: $2A
    ld b, e                                       ; $4397: $43
    nop                                           ; $4398: $00
    jr z, jr_038_43DE                             ; $4399: $28 $43

    nop                                           ; $439B: $00
    ret                                           ; $439C: $C9


    nop                                           ; $439D: $00
    nop                                           ; $439E: $00
    inc bc                                        ; $439F: $03
    ld h, $00                                     ; $43A0: $26 $00
    ccf                                           ; $43A2: $3F
    ld e, l                                       ; $43A3: $5D
    nop                                           ; $43A4: $00
    ld l, [hl]                                    ; $43A5: $6E
    ld b, c                                       ; $43A6: $41
    nop                                           ; $43A7: $00
    dec hl                                        ; $43A8: $2B
    jr z, jr_038_43AB                             ; $43A9: $28 $00

jr_038_43AB:
    cpl                                           ; $43AB: $2F
    ld b, e                                       ; $43AC: $43
    nop                                           ; $43AD: $00
    ld c, [hl]                                    ; $43AE: $4E
    ld bc, $4A00                                  ; $43AF: $01 $00 $4A
    jr nc, jr_038_43B4                            ; $43B2: $30 $00

jr_038_43B4:
    ld b, d                                       ; $43B4: $42
    ld b, h                                       ; $43B5: $44
    nop                                           ; $43B6: $00
    jr nc, jr_038_43BA                            ; $43B7: $30 $01

    nop                                           ; $43B9: $00

jr_038_43BA:
    dec a                                         ; $43BA: $3D
    ld b, c                                       ; $43BB: $41
    nop                                           ; $43BC: $00
    ld b, h                                       ; $43BD: $44
    daa                                           ; $43BE: $27
    nop                                           ; $43BF: $00
    ld c, c                                       ; $43C0: $49
    xor d                                         ; $43C1: $AA
    nop                                           ; $43C2: $00
    cp a                                          ; $43C3: $BF
    halt                                          ; $43C4: $76
    nop                                           ; $43C5: $00
    ld b, a                                       ; $43C6: $47
    ld bc, $3F00                                  ; $43C7: $01 $00 $3F
    ccf                                           ; $43CA: $3F
    nop                                           ; $43CB: $00
    dec hl                                        ; $43CC: $2B
    jr z, jr_038_43CF                             ; $43CD: $28 $00

jr_038_43CF:
    ret                                           ; $43CF: $C9


    nop                                           ; $43D0: $00
    nop                                           ; $43D1: $00
    nop                                           ; $43D2: $00
    nop                                           ; $43D3: $00
    nop                                           ; $43D4: $00
    inc bc                                        ; $43D5: $03
    ld c, a                                       ; $43D6: $4F
    nop                                           ; $43D7: $00
    ld [hl], b                                    ; $43D8: $70
    dec [hl]                                      ; $43D9: $35
    nop                                           ; $43DA: $00
    ld b, c                                       ; $43DB: $41
    ld l, l                                       ; $43DC: $6D
    nop                                           ; $43DD: $00

jr_038_43DE:
    ld a, [hl-]                                   ; $43DE: $3A
    nop                                           ; $43DF: $00
    nop                                           ; $43E0: $00
    nop                                           ; $43E1: $00
    nop                                           ; $43E2: $00
    nop                                           ; $43E3: $00
    inc bc                                        ; $43E4: $03
    ld bc, $1100                                  ; $43E5: $01 $00 $11
    call $AF00                                    ; $43E8: $CD $00 $AF
    ld a, c                                       ; $43EB: $79
    nop                                           ; $43EC: $00
    pop bc                                        ; $43ED: $C1
    nop                                           ; $43EE: $00
    nop                                           ; $43EF: $00
    nop                                           ; $43F0: $00
    ld bc, $0100                                  ; $43F1: $01 $00 $01
    call c, $DA00                                 ; $43F4: $DC $00 $DA
    ld bc, $E300                                  ; $43F7: $01 $00 $E3
    nop                                           ; $43FA: $00
    nop                                           ; $43FB: $00
    nop                                           ; $43FC: $00
    nop                                           ; $43FD: $00
    nop                                           ; $43FE: $00
    inc bc                                        ; $43FF: $03
    nop                                           ; $4400: $00
    nop                                           ; $4401: $00
    dec b                                         ; $4402: $05
    ld bc, $0000                                  ; $4403: $01 $00 $00
    ld [bc], a                                    ; $4406: $02
    nop                                           ; $4407: $00
    nop                                           ; $4408: $00
    ld b, $FE                                     ; $4409: $06 $FE
    ld d, e                                       ; $440B: $53
    nop                                           ; $440C: $00
    dec l                                         ; $440D: $2D
    ld b, h                                       ; $440E: $44
    nop                                           ; $440F: $00
    ld l, a                                       ; $4410: $6F
    ld l, [hl]                                    ; $4411: $6E
    nop                                           ; $4412: $00
    ld bc, $0049                                  ; $4413: $01 $49 $00
    inc sp                                        ; $4416: $33
    ld l, d                                       ; $4417: $6A
    nop                                           ; $4418: $00
    ret                                           ; $4419: $C9


    nop                                           ; $441A: $00
    nop                                           ; $441B: $00
    nop                                           ; $441C: $00
    nop                                           ; $441D: $00
    nop                                           ; $441E: $00
    inc bc                                        ; $441F: $03
    nop                                           ; $4420: $00
    nop                                           ; $4421: $00
    inc bc                                        ; $4422: $03
    ld bc, $7F00                                  ; $4423: $01 $00 $7F
    cp e                                          ; $4426: $BB
    nop                                           ; $4427: $00
    sub h                                         ; $4428: $94
    call nz, Call_038_7D00                        ; $4429: $C4 $00 $7D
    cp h                                          ; $442C: $BC
    nop                                           ; $442D: $00
    and b                                         ; $442E: $A0
    pop bc                                        ; $442F: $C1
    nop                                           ; $4430: $00
    xor a                                         ; $4431: $AF
    halt                                          ; $4432: $76
    nop                                           ; $4433: $00
    ld bc, $0001                                  ; $4434: $01 $01 $00
    ld bc, $00DC                                  ; $4437: $01 $DC $00
    sbc $01                                       ; $443A: $DE $01
    nop                                           ; $443C: $00
    db $E3                                        ; $443D: $E3
    nop                                           ; $443E: $00
    nop                                           ; $443F: $00
    nop                                           ; $4440: $00
    nop                                           ; $4441: $00
    nop                                           ; $4442: $00
    inc bc                                        ; $4443: $03
    nop                                           ; $4444: $00
    nop                                           ; $4445: $00
    dec b                                         ; $4446: $05
    ld bc, $0000                                  ; $4447: $01 $00 $00
    ld [bc], a                                    ; $444A: $02
    nop                                           ; $444B: $00
    nop                                           ; $444C: $00
    ld b, $FE                                     ; $444D: $06 $FE
    ld b, e                                       ; $444F: $43
    nop                                           ; $4450: $00
    ld [hl], b                                    ; $4451: $70
    ld [hl], $00                                  ; $4452: $36 $00
    ld l, a                                       ; $4454: $6F
    ld [hl], $00                                  ; $4455: $36 $00
    ld b, d                                       ; $4457: $42
    ld bc, $4900                                  ; $4458: $01 $00 $49
    ld [hl-], a                                   ; $445B: $32
    nop                                           ; $445C: $00
    ld l, d                                       ; $445D: $6A
    ret                                           ; $445E: $C9


    nop                                           ; $445F: $00
    ld bc, $0000                                  ; $4460: $01 $00 $00
    nop                                           ; $4463: $00
    nop                                           ; $4464: $00
    nop                                           ; $4465: $00
    inc bc                                        ; $4466: $03
    nop                                           ; $4467: $00
    nop                                           ; $4468: $00
    inc bc                                        ; $4469: $03
    ld bc, $8900                                  ; $446A: $01 $00 $89
    xor d                                         ; $446D: $AA
    nop                                           ; $446E: $00
    halt                                          ; $446F: $76
    ld a, a                                       ; $4470: $7F
    nop                                           ; $4471: $00
    ld a, [hl]                                    ; $4472: $7E
    or a                                          ; $4473: $B7
    nop                                           ; $4474: $00
    sbc a                                         ; $4475: $9F
    pop bc                                        ; $4476: $C1
    nop                                           ; $4477: $00
    ld bc, $0000                                  ; $4478: $01 $00 $00
    nop                                           ; $447B: $00
    ld bc, $0100                                  ; $447C: $01 $00 $01
    sbc $00                                       ; $447F: $DE $00
    call c, Call_000_00DA                         ; $4481: $DC $DA $00
    ld bc, $00E3                                  ; $4484: $01 $E3 $00
    ld bc, $0000                                  ; $4487: $01 $00 $00
    nop                                           ; $448A: $00
    nop                                           ; $448B: $00
    nop                                           ; $448C: $00
    inc bc                                        ; $448D: $03
    nop                                           ; $448E: $00
    nop                                           ; $448F: $00
    dec b                                         ; $4490: $05
    ld bc, $0000                                  ; $4491: $01 $00 $00
    ld [bc], a                                    ; $4494: $02
    nop                                           ; $4495: $00
    nop                                           ; $4496: $00
    ld b, $FE                                     ; $4497: $06 $FE
    ld [hl], $00                                  ; $4499: $36 $00
    ld d, h                                       ; $449B: $54
    ld l, e                                       ; $449C: $6B
    nop                                           ; $449D: $00
    ld b, h                                       ; $449E: $44
    ld l, a                                       ; $449F: $6F
    nop                                           ; $44A0: $00
    ld l, [hl]                                    ; $44A1: $6E
    ld bc, $4E00                                  ; $44A2: $01 $00 $4E
    ld [hl], b                                    ; $44A5: $70
    nop                                           ; $44A6: $00
    ld [hl], $65                                  ; $44A7: $36 $65
    nop                                           ; $44A9: $00
    ld [hl], $42                                  ; $44AA: $36 $42
    nop                                           ; $44AC: $00
    ld bc, $0026                                  ; $44AD: $01 $26 $00
    ccf                                           ; $44B0: $3F
    ld [hl], b                                    ; $44B1: $70
    nop                                           ; $44B2: $00
    ccf                                           ; $44B3: $3F
    ld l, b                                       ; $44B4: $68
    nop                                           ; $44B5: $00
    ld bc, $0049                                  ; $44B6: $01 $49 $00
    ld [hl-], a                                   ; $44B9: $32
    ld l, c                                       ; $44BA: $69
    nop                                           ; $44BB: $00
    ld c, d                                       ; $44BC: $4A
    daa                                           ; $44BD: $27
    nop                                           ; $44BE: $00
    dec l                                         ; $44BF: $2D
    ret                                           ; $44C0: $C9


    nop                                           ; $44C1: $00
    ld bc, $0000                                  ; $44C2: $01 $00 $00
    nop                                           ; $44C5: $00
    nop                                           ; $44C6: $00
    nop                                           ; $44C7: $00
    inc bc                                        ; $44C8: $03
    nop                                           ; $44C9: $00
    nop                                           ; $44CA: $00
    inc bc                                        ; $44CB: $03
    ld bc, $9B00                                  ; $44CC: $01 $00 $9B
    jp nz, Jump_038_7F00                          ; $44CF: $C2 $00 $7F

    cp h                                          ; $44D2: $BC
    nop                                           ; $44D3: $00
    and l                                         ; $44D4: $A5
    adc [hl]                                      ; $44D5: $8E
    nop                                           ; $44D6: $00
    halt                                          ; $44D7: $76
    ld a, l                                       ; $44D8: $7D
    nop                                           ; $44D9: $00
    halt                                          ; $44DA: $76
    nop                                           ; $44DB: $00
    nop                                           ; $44DC: $00
    nop                                           ; $44DD: $00
    ld bc, $0100                                  ; $44DE: $01 $00 $01
    jp c, $DC00                                   ; $44E1: $DA $00 $DC

    jp c, Boot                                    ; $44E4: $DA $00 $01

    db $E3                                        ; $44E7: $E3
    nop                                           ; $44E8: $00
    ld bc, $0000                                  ; $44E9: $01 $00 $00
    nop                                           ; $44EC: $00
    nop                                           ; $44ED: $00
    nop                                           ; $44EE: $00
    inc bc                                        ; $44EF: $03
    nop                                           ; $44F0: $00
    nop                                           ; $44F1: $00
    dec b                                         ; $44F2: $05
    ld bc, $0000                                  ; $44F3: $01 $00 $00
    ld [bc], a                                    ; $44F6: $02
    nop                                           ; $44F7: $00
    nop                                           ; $44F8: $00
    ld b, $FE                                     ; $44F9: $06 $FE
    ld h, $00                                     ; $44FB: $26 $00
    daa                                           ; $44FD: $27
    ld b, d                                       ; $44FE: $42
    nop                                           ; $44FF: $00
    ld l, [hl]                                    ; $4500: $6E
    ld b, c                                       ; $4501: $41
    nop                                           ; $4502: $00
    dec hl                                        ; $4503: $2B
    ld l, a                                       ; $4504: $6F
    nop                                           ; $4505: $00
    ld b, a                                       ; $4506: $47
    ld bc, $2D00                                  ; $4507: $01 $00 $2D
    jr z, jr_038_450C                             ; $450A: $28 $00

jr_038_450C:
    ld b, b                                       ; $450C: $40
    ld h, [hl]                                    ; $450D: $66
    nop                                           ; $450E: $00
    jr z, jr_038_455B                             ; $450F: $28 $4A

    nop                                           ; $4511: $00
    ld c, c                                       ; $4512: $49
    inc sp                                        ; $4513: $33
    nop                                           ; $4514: $00
    ld b, d                                       ; $4515: $42
    ld bc, $A500                                  ; $4516: $01 $00 $A5
    adc [hl]                                      ; $4519: $8E
    nop                                           ; $451A: $00
    halt                                          ; $451B: $76
    ld a, l                                       ; $451C: $7D
    nop                                           ; $451D: $00
    halt                                          ; $451E: $76
    ld b, a                                       ; $451F: $47
    nop                                           ; $4520: $00
    ld bc, $002F                                  ; $4521: $01 $2F $00
    jr z, @+$35                                   ; $4524: $28 $33

    nop                                           ; $4526: $00
    inc l                                         ; $4527: $2C
    scf                                           ; $4528: $37
    nop                                           ; $4529: $00
    ld l, d                                       ; $452A: $6A
    ret                                           ; $452B: $C9


    nop                                           ; $452C: $00
    ld bc, $0000                                  ; $452D: $01 $00 $00
    nop                                           ; $4530: $00
    nop                                           ; $4531: $00
    nop                                           ; $4532: $00
    inc bc                                        ; $4533: $03
    nop                                           ; $4534: $00
    nop                                           ; $4535: $00
    inc bc                                        ; $4536: $03
    add l                                         ; $4537: $85
    nop                                           ; $4538: $00
    ld a, [hl]                                    ; $4539: $7E
    ld c, a                                       ; $453A: $4F
    nop                                           ; $453B: $00
    ld [hl], b                                    ; $453C: $70
    dec [hl]                                      ; $453D: $35
    nop                                           ; $453E: $00
    ld b, c                                       ; $453F: $41
    ld l, l                                       ; $4540: $6D
    nop                                           ; $4541: $00
    ld a, [hl-]                                   ; $4542: $3A
    nop                                           ; $4543: $00
    nop                                           ; $4544: $00
    nop                                           ; $4545: $00
    nop                                           ; $4546: $00
    nop                                           ; $4547: $00
    inc bc                                        ; $4548: $03
    ld bc, $B200                                  ; $4549: $01 $00 $B2
    add d                                         ; $454C: $82
    nop                                           ; $454D: $00
    sub l                                         ; $454E: $95
    pop bc                                        ; $454F: $C1
    nop                                           ; $4550: $00
    xor c                                         ; $4551: $A9
    or c                                          ; $4552: $B1
    nop                                           ; $4553: $00
    ld bc, $0000                                  ; $4554: $01 $00 $00
    nop                                           ; $4557: $00
    ld bc, $0100                                  ; $4558: $01 $00 $01

jr_038_455B:
    call c, $DA00                                 ; $455B: $DC $00 $DA
    call c, $DE00                                 ; $455E: $DC $00 $DE
    ld bc, $E300                                  ; $4561: $01 $00 $E3
    nop                                           ; $4564: $00
    nop                                           ; $4565: $00
    nop                                           ; $4566: $00
    nop                                           ; $4567: $00
    nop                                           ; $4568: $00
    inc bc                                        ; $4569: $03
    nop                                           ; $456A: $00
    nop                                           ; $456B: $00
    dec b                                         ; $456C: $05
    ld bc, $0000                                  ; $456D: $01 $00 $00
    ld [bc], a                                    ; $4570: $02
    nop                                           ; $4571: $00
    nop                                           ; $4572: $00
    ld b, $FE                                     ; $4573: $06 $FE
    ld b, e                                       ; $4575: $43
    nop                                           ; $4576: $00
    dec l                                         ; $4577: $2D
    ld b, h                                       ; $4578: $44
    nop                                           ; $4579: $00
    daa                                           ; $457A: $27
    ld c, l                                       ; $457B: $4D
    nop                                           ; $457C: $00
    ld d, e                                       ; $457D: $53
    dec l                                         ; $457E: $2D
    nop                                           ; $457F: $00
    ld b, h                                       ; $4580: $44
    ld l, a                                       ; $4581: $6F
    nop                                           ; $4582: $00
    ld l, [hl]                                    ; $4583: $6E
    ld bc, $4900                                  ; $4584: $01 $00 $49
    inc sp                                        ; $4587: $33
    nop                                           ; $4588: $00
    ld b, d                                       ; $4589: $42
    ld bc, $2F00                                  ; $458A: $01 $00 $2F
    jr z, jr_038_458F                             ; $458D: $28 $00

jr_038_458F:
    inc sp                                        ; $458F: $33
    inc l                                         ; $4590: $2C
    nop                                           ; $4591: $00
    scf                                           ; $4592: $37
    ld l, d                                       ; $4593: $6A
    nop                                           ; $4594: $00
    ret                                           ; $4595: $C9


    nop                                           ; $4596: $00
    nop                                           ; $4597: $00
    nop                                           ; $4598: $00
    nop                                           ; $4599: $00
    nop                                           ; $459A: $00
    inc bc                                        ; $459B: $03
    nop                                           ; $459C: $00
    nop                                           ; $459D: $00
    inc bc                                        ; $459E: $03
    xor a                                         ; $459F: $AF
    nop                                           ; $45A0: $00
    adc b                                         ; $45A1: $88
    pop bc                                        ; $45A2: $C1
    nop                                           ; $45A3: $00
    or e                                          ; $45A4: $B3
    halt                                          ; $45A5: $76
    nop                                           ; $45A6: $00
    sbc d                                         ; $45A7: $9A
    ld c, [hl]                                    ; $45A8: $4E
    nop                                           ; $45A9: $00
    ld bc, $0000                                  ; $45AA: $01 $00 $00
    nop                                           ; $45AD: $00
    nop                                           ; $45AE: $00
    nop                                           ; $45AF: $00
    inc bc                                        ; $45B0: $03
    ret nc                                        ; $45B1: $D0

    nop                                           ; $45B2: $00
    jr c, jr_038_4624                             ; $45B3: $38 $6F

    nop                                           ; $45B5: $00
    ld [hl], $65                                  ; $45B6: $36 $65
    nop                                           ; $45B8: $00
    pop de                                        ; $45B9: $D1
    ld c, d                                       ; $45BA: $4A
    nop                                           ; $45BB: $00
    ld bc, $0000                                  ; $45BC: $01 $00 $00
    nop                                           ; $45BF: $00
    ld d, c                                       ; $45C0: $51
    nop                                           ; $45C1: $00
    ld l, a                                       ; $45C2: $6F
    ld [hl], $00                                  ; $45C3: $36 $00
    ld l, a                                       ; $45C5: $6F
    scf                                           ; $45C6: $37
    nop                                           ; $45C7: $00
    ld l, d                                       ; $45C8: $6A
    ret                                           ; $45C9: $C9


    nop                                           ; $45CA: $00
    ld bc, $0000                                  ; $45CB: $01 $00 $00
    nop                                           ; $45CE: $00
    nop                                           ; $45CF: $00
    nop                                           ; $45D0: $00
    inc bc                                        ; $45D1: $03
    nop                                           ; $45D2: $00
    nop                                           ; $45D3: $00
    inc b                                         ; $45D4: $04
    ld bc, $0000                                  ; $45D5: $01 $00 $00
    dec b                                         ; $45D8: $05
    ld bc, $0000                                  ; $45D9: $01 $00 $00
    ld [bc], a                                    ; $45DC: $02
    nop                                           ; $45DD: $00
    nop                                           ; $45DE: $00
    ld [bc], a                                    ; $45DF: $02
    nop                                           ; $45E0: $00
    nop                                           ; $45E1: $00
    ld [bc], a                                    ; $45E2: $02
    nop                                           ; $45E3: $00
    nop                                           ; $45E4: $00
    ld b, $FE                                     ; $45E5: $06 $FE
    xor a                                         ; $45E7: $AF
    nop                                           ; $45E8: $00
    adc b                                         ; $45E9: $88
    pop bc                                        ; $45EA: $C1
    nop                                           ; $45EB: $00
    or e                                          ; $45EC: $B3
    halt                                          ; $45ED: $76
    nop                                           ; $45EE: $00
    sbc d                                         ; $45EF: $9A
    ld b, a                                       ; $45F0: $47
    nop                                           ; $45F1: $00
    ld c, [hl]                                    ; $45F2: $4E
    add d                                         ; $45F3: $82
    nop                                           ; $45F4: $00
    halt                                          ; $45F5: $76
    sbc d                                         ; $45F6: $9A
    nop                                           ; $45F7: $00
    ret z                                         ; $45F8: $C8

    adc l                                         ; $45F9: $8D
    nop                                           ; $45FA: $00
    or a                                          ; $45FB: $B7
    pop bc                                        ; $45FC: $C1
    nop                                           ; $45FD: $00
    xor h                                         ; $45FE: $AC
    jr nc, jr_038_4601                            ; $45FF: $30 $00

jr_038_4601:
    ld b, a                                       ; $4601: $47
    inc l                                         ; $4602: $2C
    nop                                           ; $4603: $00
    ld c, c                                       ; $4604: $49
    daa                                           ; $4605: $27
    nop                                           ; $4606: $00
    ret                                           ; $4607: $C9


    nop                                           ; $4608: $00
    nop                                           ; $4609: $00
    nop                                           ; $460A: $00
    nop                                           ; $460B: $00
    nop                                           ; $460C: $00
    inc bc                                        ; $460D: $03
    nop                                           ; $460E: $00
    nop                                           ; $460F: $00
    dec b                                         ; $4610: $05
    ld bc, $0000                                  ; $4611: $01 $00 $00
    ld [bc], a                                    ; $4614: $02
    nop                                           ; $4615: $00
    nop                                           ; $4616: $00
    ld b, $FE                                     ; $4617: $06 $FE
    ld c, a                                       ; $4619: $4F
    nop                                           ; $461A: $00
    ld [hl], b                                    ; $461B: $70
    dec [hl]                                      ; $461C: $35
    nop                                           ; $461D: $00
    ld b, c                                       ; $461E: $41
    ld l, l                                       ; $461F: $6D
    nop                                           ; $4620: $00
    ld a, [hl-]                                   ; $4621: $3A
    nop                                           ; $4622: $00
    nop                                           ; $4623: $00

jr_038_4624:
    nop                                           ; $4624: $00
    nop                                           ; $4625: $00
    nop                                           ; $4626: $00
    inc bc                                        ; $4627: $03
    ld bc, $AF00                                  ; $4628: $01 $00 $AF
    ld a, [hl]                                    ; $462B: $7E
    nop                                           ; $462C: $00
    adc b                                         ; $462D: $88
    xor a                                         ; $462E: $AF
    nop                                           ; $462F: $00
    or c                                          ; $4630: $B1
    adc b                                         ; $4631: $88
    nop                                           ; $4632: $00
    cp b                                          ; $4633: $B8
    halt                                          ; $4634: $76
    nop                                           ; $4635: $00
    sub l                                         ; $4636: $95
    nop                                           ; $4637: $00
    nop                                           ; $4638: $00
    nop                                           ; $4639: $00
    ld bc, $0100                                  ; $463A: $01 $00 $01
    call c, $DA00                                 ; $463D: $DC $00 $DA
    ld bc, $E300                                  ; $4640: $01 $00 $E3
    nop                                           ; $4643: $00
    nop                                           ; $4644: $00
    nop                                           ; $4645: $00
    nop                                           ; $4646: $00
    nop                                           ; $4647: $00
    inc bc                                        ; $4648: $03
    nop                                           ; $4649: $00
    nop                                           ; $464A: $00
    dec b                                         ; $464B: $05
    ld bc, $0000                                  ; $464C: $01 $00 $00
    ld [bc], a                                    ; $464F: $02
    nop                                           ; $4650: $00
    nop                                           ; $4651: $00
    ld b, $FE                                     ; $4652: $06 $FE
    or b                                          ; $4654: $B0
    nop                                           ; $4655: $00
    add a                                         ; $4656: $87
    ld a, c                                       ; $4657: $79
    nop                                           ; $4658: $00
    cp h                                          ; $4659: $BC
    ld l, [hl]                                    ; $465A: $6E
    nop                                           ; $465B: $00
    ld c, [hl]                                    ; $465C: $4E
    ld [hl], b                                    ; $465D: $70
    nop                                           ; $465E: $00
    ld [hl], $65                                  ; $465F: $36 $65
    nop                                           ; $4661: $00
    ld [hl], $42                                  ; $4662: $36 $42
    nop                                           ; $4664: $00
    ld bc, $002F                                  ; $4665: $01 $2F $00
    jr z, jr_038_469D                             ; $4668: $28 $33

    nop                                           ; $466A: $00
    inc l                                         ; $466B: $2C
    scf                                           ; $466C: $37
    nop                                           ; $466D: $00
    ld l, d                                       ; $466E: $6A
    ret                                           ; $466F: $C9


    nop                                           ; $4670: $00
    ld bc, $0000                                  ; $4671: $01 $00 $00
    nop                                           ; $4674: $00
    nop                                           ; $4675: $00
    nop                                           ; $4676: $00
    inc bc                                        ; $4677: $03
    nop                                           ; $4678: $00
    nop                                           ; $4679: $00
    inc bc                                        ; $467A: $03
    ld bc, $8900                                  ; $467B: $01 $00 $89
    sub h                                         ; $467E: $94
    nop                                           ; $467F: $00
    call nz, Call_000_00C1                        ; $4680: $C4 $C1 $00
    add h                                         ; $4683: $84
    xor a                                         ; $4684: $AF
    nop                                           ; $4685: $00
    ld a, c                                       ; $4686: $79
    pop bc                                        ; $4687: $C1
    nop                                           ; $4688: $00
    ld bc, $0000                                  ; $4689: $01 $00 $00
    nop                                           ; $468C: $00
    ld bc, $0100                                  ; $468D: $01 $00 $01
    call c, $DE00                                 ; $4690: $DC $00 $DE
    ld bc, $E200                                  ; $4693: $01 $00 $E2
    nop                                           ; $4696: $00
    nop                                           ; $4697: $00
    nop                                           ; $4698: $00
    nop                                           ; $4699: $00
    nop                                           ; $469A: $00
    inc bc                                        ; $469B: $03
    nop                                           ; $469C: $00

jr_038_469D:
    nop                                           ; $469D: $00
    dec b                                         ; $469E: $05
    ld bc, $0000                                  ; $469F: $01 $00 $00
    ld [bc], a                                    ; $46A2: $02
    nop                                           ; $46A3: $00
    nop                                           ; $46A4: $00
    ld b, $FE                                     ; $46A5: $06 $FE
    and l                                         ; $46A7: $A5
    nop                                           ; $46A8: $00
    jp nz, $007F                                  ; $46A9: $C2 $7F $00

    ld [hl], $49                                  ; $46AC: $36 $49
    nop                                           ; $46AE: $00
    jr nc, jr_038_4719                            ; $46AF: $30 $68

    nop                                           ; $46B1: $00
    ld bc, $0053                                  ; $46B2: $01 $53 $00
    dec l                                         ; $46B5: $2D
    ld b, h                                       ; $46B6: $44
    nop                                           ; $46B7: $00
    ld l, a                                       ; $46B8: $6F
    ld l, [hl]                                    ; $46B9: $6E
    nop                                           ; $46BA: $00
    ld bc, $002A                                  ; $46BB: $01 $2A $00
    daa                                           ; $46BE: $27
    ld b, d                                       ; $46BF: $42
    nop                                           ; $46C0: $00
    daa                                           ; $46C1: $27
    dec l                                         ; $46C2: $2D
    nop                                           ; $46C3: $00
    ret                                           ; $46C4: $C9


    nop                                           ; $46C5: $00
    nop                                           ; $46C6: $00
    nop                                           ; $46C7: $00
    nop                                           ; $46C8: $00
    nop                                           ; $46C9: $00
    inc bc                                        ; $46CA: $03
    nop                                           ; $46CB: $00
    nop                                           ; $46CC: $00
    inc bc                                        ; $46CD: $03
    ld bc, $8700                                  ; $46CE: $01 $00 $87
    ld a, c                                       ; $46D1: $79
    nop                                           ; $46D2: $00
    ld a, a                                       ; $46D3: $7F
    cp [hl]                                       ; $46D4: $BE
    nop                                           ; $46D5: $00
    pop bc                                        ; $46D6: $C1
    ld a, [hl]                                    ; $46D7: $7E
    nop                                           ; $46D8: $00
    or a                                          ; $46D9: $B7
    sbc a                                         ; $46DA: $9F
    nop                                           ; $46DB: $00
    pop bc                                        ; $46DC: $C1
    nop                                           ; $46DD: $00
    nop                                           ; $46DE: $00
    nop                                           ; $46DF: $00
    ld bc, $0100                                  ; $46E0: $01 $00 $01
    sbc $00                                       ; $46E3: $DE $00
    call c, Call_000_00DA                         ; $46E5: $DC $DA $00
    ld bc, $00E3                                  ; $46E8: $01 $E3 $00
    ld bc, $0000                                  ; $46EB: $01 $00 $00
    nop                                           ; $46EE: $00
    nop                                           ; $46EF: $00
    nop                                           ; $46F0: $00
    inc bc                                        ; $46F1: $03
    nop                                           ; $46F2: $00
    nop                                           ; $46F3: $00
    dec b                                         ; $46F4: $05
    ld bc, $0000                                  ; $46F5: $01 $00 $00
    ld [bc], a                                    ; $46F8: $02
    nop                                           ; $46F9: $00
    nop                                           ; $46FA: $00
    ld b, $FE                                     ; $46FB: $06 $FE
    ld d, d                                       ; $46FD: $52
    nop                                           ; $46FE: $00
    jr z, jr_038_4745                             ; $46FF: $28 $44

    nop                                           ; $4701: $00
    daa                                           ; $4702: $27
    ld l, [hl]                                    ; $4703: $6E
    nop                                           ; $4704: $00
    dec hl                                        ; $4705: $2B
    daa                                           ; $4706: $27
    nop                                           ; $4707: $00
    ld b, d                                       ; $4708: $42
    ld l, a                                       ; $4709: $6F
    nop                                           ; $470A: $00
    ld [hl], $42                                  ; $470B: $36 $42
    nop                                           ; $470D: $00
    ld bc, $002F                                  ; $470E: $01 $2F $00
    jr z, jr_038_4746                             ; $4711: $28 $33

    nop                                           ; $4713: $00
    inc l                                         ; $4714: $2C
    scf                                           ; $4715: $37
    nop                                           ; $4716: $00
    ld l, d                                       ; $4717: $6A
    ret                                           ; $4718: $C9


jr_038_4719:
    nop                                           ; $4719: $00
    ld bc, $0000                                  ; $471A: $01 $00 $00
    nop                                           ; $471D: $00
    nop                                           ; $471E: $00
    nop                                           ; $471F: $00
    inc bc                                        ; $4720: $03
    nop                                           ; $4721: $00
    nop                                           ; $4722: $00
    inc bc                                        ; $4723: $03
    ld bc, $8900                                  ; $4724: $01 $00 $89
    sub l                                         ; $4727: $95
    nop                                           ; $4728: $00
    halt                                          ; $4729: $76
    or c                                          ; $472A: $B1
    nop                                           ; $472B: $00
    xor d                                         ; $472C: $AA
    adc c                                         ; $472D: $89
    nop                                           ; $472E: $00
    ld bc, $0000                                  ; $472F: $01 $00 $00
    nop                                           ; $4732: $00
    ld bc, $0100                                  ; $4733: $01 $00 $01
    sbc $00                                       ; $4736: $DE $00
    call c, Call_000_00DA                         ; $4738: $DC $DA $00
    ld bc, $00E2                                  ; $473B: $01 $E2 $00
    ld bc, $0000                                  ; $473E: $01 $00 $00
    nop                                           ; $4741: $00
    nop                                           ; $4742: $00
    nop                                           ; $4743: $00
    inc bc                                        ; $4744: $03

jr_038_4745:
    nop                                           ; $4745: $00

jr_038_4746:
    nop                                           ; $4746: $00
    dec b                                         ; $4747: $05
    ld bc, $0000                                  ; $4748: $01 $00 $00
    ld [bc], a                                    ; $474B: $02
    nop                                           ; $474C: $00
    nop                                           ; $474D: $00
    ld b, $FE                                     ; $474E: $06 $FE
    ld b, e                                       ; $4750: $43
    nop                                           ; $4751: $00
    ld [hl], b                                    ; $4752: $70
    ld [hl], $00                                  ; $4753: $36 $00
    ld l, a                                       ; $4755: $6F
    ld [hl], $00                                  ; $4756: $36 $00
    ld b, d                                       ; $4758: $42
    ld bc, $A100                                  ; $4759: $01 $00 $A1
    jp nz, $9500                                  ; $475C: $C2 $00 $95

    ld [hl], $00                                  ; $475F: $36 $00
    ccf                                           ; $4761: $3F
    ld l, b                                       ; $4762: $68
    nop                                           ; $4763: $00
    ld bc, $007E                                  ; $4764: $01 $7E $00
    or a                                          ; $4767: $B7
    sub c                                         ; $4768: $91
    nop                                           ; $4769: $00
    xor e                                         ; $476A: $AB
    cp d                                          ; $476B: $BA
    nop                                           ; $476C: $00
    ld b, a                                       ; $476D: $47
    ld bc, $5000                                  ; $476E: $01 $00 $50
    ld e, [hl]                                    ; $4771: $5E
    nop                                           ; $4772: $00
    ccf                                           ; $4773: $3F
    ld a, [hl+]                                   ; $4774: $2A
    nop                                           ; $4775: $00
    scf                                           ; $4776: $37
    ret                                           ; $4777: $C9


    nop                                           ; $4778: $00
    ld bc, $0000                                  ; $4779: $01 $00 $00
    nop                                           ; $477C: $00
    nop                                           ; $477D: $00
    nop                                           ; $477E: $00
    inc bc                                        ; $477F: $03
    nop                                           ; $4780: $00
    nop                                           ; $4781: $00
    inc bc                                        ; $4782: $03
    add l                                         ; $4783: $85
    nop                                           ; $4784: $00
    ld a, [hl]                                    ; $4785: $7E
    ld c, a                                       ; $4786: $4F
    nop                                           ; $4787: $00
    ld [hl], b                                    ; $4788: $70
    dec [hl]                                      ; $4789: $35
    nop                                           ; $478A: $00
    ld b, c                                       ; $478B: $41
    ld l, l                                       ; $478C: $6D
    nop                                           ; $478D: $00
    ld a, [hl-]                                   ; $478E: $3A
    nop                                           ; $478F: $00
    nop                                           ; $4790: $00
    nop                                           ; $4791: $00
    nop                                           ; $4792: $00
    nop                                           ; $4793: $00
    inc bc                                        ; $4794: $03
    ld bc, $7800                                  ; $4795: $01 $00 $78
    add a                                         ; $4798: $87
    nop                                           ; $4799: $00
    cp h                                          ; $479A: $BC
    sub l                                         ; $479B: $95
    nop                                           ; $479C: $00
    cp l                                          ; $479D: $BD
    ld a, c                                       ; $479E: $79
    nop                                           ; $479F: $00
    ld bc, $0000                                  ; $47A0: $01 $00 $00
    nop                                           ; $47A3: $00
    ld bc, $0100                                  ; $47A4: $01 $00 $01
    call c, $DA00                                 ; $47A7: $DC $00 $DA
    call c, $DE00                                 ; $47AA: $DC $00 $DE
    ld bc, $E300                                  ; $47AD: $01 $00 $E3
    nop                                           ; $47B0: $00
    nop                                           ; $47B1: $00
    nop                                           ; $47B2: $00
    nop                                           ; $47B3: $00
    nop                                           ; $47B4: $00
    inc bc                                        ; $47B5: $03
    nop                                           ; $47B6: $00
    nop                                           ; $47B7: $00
    dec b                                         ; $47B8: $05
    ld bc, $0000                                  ; $47B9: $01 $00 $00
    ld [bc], a                                    ; $47BC: $02
    nop                                           ; $47BD: $00
    nop                                           ; $47BE: $00
    ld b, $FE                                     ; $47BF: $06 $FE
    jr z, jr_038_47C3                             ; $47C1: $28 $00

jr_038_47C3:
    add hl, hl                                    ; $47C3: $29
    dec hl                                        ; $47C4: $2B
    nop                                           ; $47C5: $00
    ld l, b                                       ; $47C6: $68
    ld bc, $4300                                  ; $47C7: $01 $00 $43
    dec l                                         ; $47CA: $2D
    nop                                           ; $47CB: $00
    ld b, h                                       ; $47CC: $44
    daa                                           ; $47CD: $27
    nop                                           ; $47CE: $00
    cp l                                          ; $47CF: $BD
    halt                                          ; $47D0: $76
    nop                                           ; $47D1: $00
    adc h                                         ; $47D2: $8C
    halt                                          ; $47D3: $76
    nop                                           ; $47D4: $00
    jr nc, jr_038_4816                            ; $47D5: $30 $3F

    nop                                           ; $47D7: $00
    dec l                                         ; $47D8: $2D
    dec [hl]                                      ; $47D9: $35
    nop                                           ; $47DA: $00
    ld l, a                                       ; $47DB: $6F
    ld d, b                                       ; $47DC: $50
    nop                                           ; $47DD: $00
    ld [hl], b                                    ; $47DE: $70
    ld b, d                                       ; $47DF: $42
    nop                                           ; $47E0: $00
    dec l                                         ; $47E1: $2D
    ld l, d                                       ; $47E2: $6A
    nop                                           ; $47E3: $00
    ret                                           ; $47E4: $C9


    nop                                           ; $47E5: $00
    nop                                           ; $47E6: $00
    inc bc                                        ; $47E7: $03
    nop                                           ; $47E8: $00
    nop                                           ; $47E9: $00
    inc bc                                        ; $47EA: $03
    nop                                           ; $47EB: $00
    nop                                           ; $47EC: $00
    inc bc                                        ; $47ED: $03
    add d                                         ; $47EE: $82
    nop                                           ; $47EF: $00
    cp h                                          ; $47F0: $BC
    and l                                         ; $47F1: $A5
    nop                                           ; $47F2: $00
    sub l                                         ; $47F3: $95
    cp [hl]                                       ; $47F4: $BE
    nop                                           ; $47F5: $00
    pop bc                                        ; $47F6: $C1
    ld h, h                                       ; $47F7: $64
    nop                                           ; $47F8: $00
    ld l, c                                       ; $47F9: $69
    ld h, c                                       ; $47FA: $61
    nop                                           ; $47FB: $00
    ld bc, $0041                                  ; $47FC: $01 $41 $00
    ld h, h                                       ; $47FF: $64
    dec l                                         ; $4800: $2D
    nop                                           ; $4801: $00
    ld c, c                                       ; $4802: $49
    ld l, c                                       ; $4803: $69
    nop                                           ; $4804: $00
    ccf                                           ; $4805: $3F
    dec l                                         ; $4806: $2D
    nop                                           ; $4807: $00
    ld b, d                                       ; $4808: $42
    ld bc, $3F00                                  ; $4809: $01 $00 $3F
    ccf                                           ; $480C: $3F
    nop                                           ; $480D: $00
    dec hl                                        ; $480E: $2B
    jr z, jr_038_4811                             ; $480F: $28 $00

jr_038_4811:
    ret                                           ; $4811: $C9


    nop                                           ; $4812: $00
    nop                                           ; $4813: $00
    inc bc                                        ; $4814: $03
    nop                                           ; $4815: $00

jr_038_4816:
    nop                                           ; $4816: $00
    dec b                                         ; $4817: $05
    ld bc, $0000                                  ; $4818: $01 $00 $00
    ld [bc], a                                    ; $481B: $02
    nop                                           ; $481C: $00
    nop                                           ; $481D: $00
    ld [bc], a                                    ; $481E: $02
    nop                                           ; $481F: $00
    nop                                           ; $4820: $00
    ld [bc], a                                    ; $4821: $02
    nop                                           ; $4822: $00
    nop                                           ; $4823: $00
    dec b                                         ; $4824: $05
    add b                                         ; $4825: $80
    nop                                           ; $4826: $00
    nop                                           ; $4827: $00
    ld [bc], a                                    ; $4828: $02
    nop                                           ; $4829: $00
    nop                                           ; $482A: $00
    ld bc, $4822                                  ; $482B: $01 $22 $48
    ld a, [hl+]                                   ; $482E: $2A
    ld de, $552B                                  ; $482F: $11 $2B $55
    ld de, $0156                                  ; $4832: $11 $56 $01
    nop                                           ; $4835: $00
    or d                                          ; $4836: $B2
    add d                                         ; $4837: $82
    nop                                           ; $4838: $00
    adc c                                         ; $4839: $89
    sub l                                         ; $483A: $95
    nop                                           ; $483B: $00
    halt                                          ; $483C: $76
    or c                                          ; $483D: $B1
    nop                                           ; $483E: $00
    ld bc, $0000                                  ; $483F: $01 $00 $00
    nop                                           ; $4842: $00
    nop                                           ; $4843: $00
    nop                                           ; $4844: $00
    inc bc                                        ; $4845: $03
    sbc c                                         ; $4846: $99
    nop                                           ; $4847: $00
    adc c                                         ; $4848: $89
    sub l                                         ; $4849: $95
    nop                                           ; $484A: $00
    cp [hl]                                       ; $484B: $BE
    pop bc                                        ; $484C: $C1
    nop                                           ; $484D: $00
    ld c, l                                       ; $484E: $4D
    cp e                                          ; $484F: $BB
    nop                                           ; $4850: $00
    halt                                          ; $4851: $76
    sub [hl]                                      ; $4852: $96
    nop                                           ; $4853: $00
    halt                                          ; $4854: $76
    ret z                                         ; $4855: $C8

    nop                                           ; $4856: $00
    ld bc, $0082                                  ; $4857: $01 $82 $00
    cp h                                          ; $485A: $BC
    and l                                         ; $485B: $A5
    nop                                           ; $485C: $00
    sub l                                         ; $485D: $95
    cp [hl]                                       ; $485E: $BE
    nop                                           ; $485F: $00
    pop bc                                        ; $4860: $C1
    ld c, l                                       ; $4861: $4D
    ld bc, $C96D                                  ; $4862: $01 $6D $C9
    nop                                           ; $4865: $00
    ld bc, $0000                                  ; $4866: $01 $00 $00
    nop                                           ; $4869: $00
    nop                                           ; $486A: $00
    nop                                           ; $486B: $00
    inc bc                                        ; $486C: $03
    ld d, h                                       ; $486D: $54
    jr nz, jr_038_48DE                            ; $486E: $20 $6E

    ld a, [de]                                    ; $4870: $1A
    db $10                                        ; $4871: $10
    jr z, jr_038_48A3                             ; $4872: $28 $2F

    nop                                           ; $4874: $00
    ld b, e                                       ; $4875: $43
    ld c, [hl]                                    ; $4876: $4E
    ld [bc], a                                    ; $4877: $02
    ld d, l                                       ; $4878: $55
    rlca                                          ; $4879: $07
    db $10                                        ; $487A: $10
    ld b, h                                       ; $487B: $44
    jr nc, jr_038_487E                            ; $487C: $30 $00

jr_038_487E:
    ld bc, $2193                                  ; $487E: $01 $93 $21
    ld bc, $0049                                  ; $4881: $01 $49 $00
    xor d                                         ; $4884: $AA
    cp a                                          ; $4885: $BF
    nop                                           ; $4886: $00
    halt                                          ; $4887: $76
    ld l, [hl]                                    ; $4888: $6E
    ld bc, $701A                                  ; $4889: $01 $1A $70
    nop                                           ; $488C: $00
    ld b, d                                       ; $488D: $42
    ld bc, $3F01                                  ; $488E: $01 $01 $3F
    jr z, jr_038_4893                             ; $4891: $28 $00

jr_038_4893:
    ret                                           ; $4893: $C9


    nop                                           ; $4894: $00
    nop                                           ; $4895: $00
    nop                                           ; $4896: $00
    nop                                           ; $4897: $00
    nop                                           ; $4898: $00
    inc bc                                        ; $4899: $03
    ld b, b                                       ; $489A: $40
    ld de, $4241                                  ; $489B: $11 $41 $42
    db $10                                        ; $489E: $10
    ld bc, $0000                                  ; $489F: $01 $00 $00
    nop                                           ; $48A2: $00

jr_038_48A3:
    nop                                           ; $48A3: $00
    nop                                           ; $48A4: $00
    inc bc                                        ; $48A5: $03
    ld bc, $1100                                  ; $48A6: $01 $00 $11
    call $AF00                                    ; $48A9: $CD $00 $AF
    ld a, c                                       ; $48AC: $79
    nop                                           ; $48AD: $00
    pop bc                                        ; $48AE: $C1
    nop                                           ; $48AF: $00
    nop                                           ; $48B0: $00
    nop                                           ; $48B1: $00
    ld bc, $0100                                  ; $48B2: $01 $00 $01
    call c, $DA00                                 ; $48B5: $DC $00 $DA
    ld bc, $E300                                  ; $48B8: $01 $00 $E3
    nop                                           ; $48BB: $00
    nop                                           ; $48BC: $00
    nop                                           ; $48BD: $00
    nop                                           ; $48BE: $00
    nop                                           ; $48BF: $00
    inc bc                                        ; $48C0: $03
    nop                                           ; $48C1: $00
    nop                                           ; $48C2: $00
    dec b                                         ; $48C3: $05
    ld bc, $0000                                  ; $48C4: $01 $00 $00
    ld [bc], a                                    ; $48C7: $02
    nop                                           ; $48C8: $00
    nop                                           ; $48C9: $00
    ld b, $FE                                     ; $48CA: $06 $FE
    ld d, [hl]                                    ; $48CC: $56
    ld [hl+], a                                   ; $48CD: $22
    ld d, a                                       ; $48CE: $57
    ld l, [hl]                                    ; $48CF: $6E
    ld [bc], a                                    ; $48D0: $02
    dec de                                        ; $48D1: $1B
    inc sp                                        ; $48D2: $33
    nop                                           ; $48D3: $00
    ld l, d                                       ; $48D4: $6A
    ret                                           ; $48D5: $C9


    nop                                           ; $48D6: $00
    ld bc, $0000                                  ; $48D7: $01 $00 $00
    nop                                           ; $48DA: $00
    nop                                           ; $48DB: $00
    nop                                           ; $48DC: $00
    inc bc                                        ; $48DD: $03

jr_038_48DE:
    nop                                           ; $48DE: $00
    nop                                           ; $48DF: $00
    inc bc                                        ; $48E0: $03
    ld bc, $7F00                                  ; $48E1: $01 $00 $7F
    cp e                                          ; $48E4: $BB
    nop                                           ; $48E5: $00
    sub h                                         ; $48E6: $94
    call nz, Call_038_7D00                        ; $48E7: $C4 $00 $7D
    cp h                                          ; $48EA: $BC
    nop                                           ; $48EB: $00
    and b                                         ; $48EC: $A0
    pop bc                                        ; $48ED: $C1
    nop                                           ; $48EE: $00
    xor a                                         ; $48EF: $AF
    halt                                          ; $48F0: $76
    nop                                           ; $48F1: $00
    ld bc, $0001                                  ; $48F2: $01 $01 $00
    ld bc, $00DC                                  ; $48F5: $01 $DC $00
    sbc $01                                       ; $48F8: $DE $01
    nop                                           ; $48FA: $00
    db $E3                                        ; $48FB: $E3
    nop                                           ; $48FC: $00
    nop                                           ; $48FD: $00
    nop                                           ; $48FE: $00
    nop                                           ; $48FF: $00
    nop                                           ; $4900: $00
    inc bc                                        ; $4901: $03
    nop                                           ; $4902: $00
    nop                                           ; $4903: $00
    dec b                                         ; $4904: $05
    ld bc, $0000                                  ; $4905: $01 $00 $00
    ld [bc], a                                    ; $4908: $02
    nop                                           ; $4909: $00
    nop                                           ; $490A: $00
    ld b, $FE                                     ; $490B: $06 $FE
    cpl                                           ; $490D: $2F
    ld [hl+], a                                   ; $490E: $22
    rla                                           ; $490F: $17
    ld [hl], $00                                  ; $4910: $36 $00
    ld b, d                                       ; $4912: $42
    ld e, b                                       ; $4913: $58
    jr nz, @+$6C                                  ; $4914: $20 $6A

    ret                                           ; $4916: $C9


    nop                                           ; $4917: $00
    ld bc, $0000                                  ; $4918: $01 $00 $00
    nop                                           ; $491B: $00
    nop                                           ; $491C: $00
    nop                                           ; $491D: $00
    inc bc                                        ; $491E: $03
    nop                                           ; $491F: $00
    nop                                           ; $4920: $00
    inc bc                                        ; $4921: $03
    ld bc, $8900                                  ; $4922: $01 $00 $89
    xor d                                         ; $4925: $AA
    nop                                           ; $4926: $00
    halt                                          ; $4927: $76
    ld a, a                                       ; $4928: $7F
    nop                                           ; $4929: $00
    ld a, [hl]                                    ; $492A: $7E
    or a                                          ; $492B: $B7
    nop                                           ; $492C: $00
    sbc a                                         ; $492D: $9F
    pop bc                                        ; $492E: $C1
    nop                                           ; $492F: $00
    ld bc, $0000                                  ; $4930: $01 $00 $00
    nop                                           ; $4933: $00
    ld bc, $0100                                  ; $4934: $01 $00 $01
    sbc $00                                       ; $4937: $DE $00
    call c, Call_000_00DA                         ; $4939: $DC $DA $00
    ld bc, $00E3                                  ; $493C: $01 $E3 $00
    ld bc, $0000                                  ; $493F: $01 $00 $00
    nop                                           ; $4942: $00
    nop                                           ; $4943: $00
    nop                                           ; $4944: $00
    inc bc                                        ; $4945: $03
    nop                                           ; $4946: $00
    nop                                           ; $4947: $00
    dec b                                         ; $4948: $05
    ld bc, $0000                                  ; $4949: $01 $00 $00
    ld [bc], a                                    ; $494C: $02
    nop                                           ; $494D: $00
    nop                                           ; $494E: $00
    ld b, $FE                                     ; $494F: $06 $FE
    ld [hl], $00                                  ; $4951: $36 $00
    ld d, h                                       ; $4953: $54
    ld l, e                                       ; $4954: $6B
    ld [bc], a                                    ; $4955: $02
    ld d, a                                       ; $4956: $57
    ld l, [hl]                                    ; $4957: $6E
    ld bc, $599D                                  ; $4958: $01 $9D $59
    jr nz, jr_038_4993                            ; $495B: $20 $36

    ld b, d                                       ; $495D: $42
    nop                                           ; $495E: $00
    ld bc, $109C                                  ; $495F: $01 $9C $10
    ccf                                           ; $4962: $3F
    ld [hl], b                                    ; $4963: $70
    nop                                           ; $4964: $00
    ccf                                           ; $4965: $3F
    ld l, b                                       ; $4966: $68
    nop                                           ; $4967: $00
    ld bc, $2058                                  ; $4968: $01 $58 $20
    ld l, c                                       ; $496B: $69
    ld c, d                                       ; $496C: $4A
    nop                                           ; $496D: $00
    daa                                           ; $496E: $27
    dec l                                         ; $496F: $2D
    nop                                           ; $4970: $00
    ret                                           ; $4971: $C9


    nop                                           ; $4972: $00
    nop                                           ; $4973: $00
    nop                                           ; $4974: $00
    nop                                           ; $4975: $00
    nop                                           ; $4976: $00
    inc bc                                        ; $4977: $03
    nop                                           ; $4978: $00
    nop                                           ; $4979: $00
    inc bc                                        ; $497A: $03
    ld bc, $9B00                                  ; $497B: $01 $00 $9B
    jp nz, Jump_038_7F00                          ; $497E: $C2 $00 $7F

    cp h                                          ; $4981: $BC
    nop                                           ; $4982: $00
    and l                                         ; $4983: $A5
    adc [hl]                                      ; $4984: $8E
    nop                                           ; $4985: $00
    halt                                          ; $4986: $76
    ld a, l                                       ; $4987: $7D
    nop                                           ; $4988: $00
    halt                                          ; $4989: $76
    nop                                           ; $498A: $00
    nop                                           ; $498B: $00
    nop                                           ; $498C: $00
    ld bc, $0100                                  ; $498D: $01 $00 $01
    jp c, $DC00                                   ; $4990: $DA $00 $DC

jr_038_4993:
    jp c, Boot                                    ; $4993: $DA $00 $01

    db $E3                                        ; $4996: $E3
    nop                                           ; $4997: $00
    ld bc, $0000                                  ; $4998: $01 $00 $00
    nop                                           ; $499B: $00
    nop                                           ; $499C: $00
    nop                                           ; $499D: $00
    inc bc                                        ; $499E: $03
    nop                                           ; $499F: $00
    nop                                           ; $49A0: $00
    dec b                                         ; $49A1: $05
    ld bc, $0000                                  ; $49A2: $01 $00 $00
    ld [bc], a                                    ; $49A5: $02
    nop                                           ; $49A6: $00
    nop                                           ; $49A7: $00
    ld b, $FE                                     ; $49A8: $06 $FE
    adc [hl]                                      ; $49AA: $8E
    ld de, $6E07                                  ; $49AB: $11 $07 $6E
    nop                                           ; $49AE: $00
    ld b, c                                       ; $49AF: $41
    dec hl                                        ; $49B0: $2B
    nop                                           ; $49B1: $00
    ld l, a                                       ; $49B2: $6F
    ld b, a                                       ; $49B3: $47
    nop                                           ; $49B4: $00
    ld bc, $2135                                  ; $49B5: $01 $35 $21
    ld e, b                                       ; $49B8: $58
    ld c, d                                       ; $49B9: $4A
    ld [bc], a                                    ; $49BA: $02
    dec de                                        ; $49BB: $1B
    inc sp                                        ; $49BC: $33
    nop                                           ; $49BD: $00
    ld b, d                                       ; $49BE: $42
    ld bc, $A500                                  ; $49BF: $01 $00 $A5
    adc [hl]                                      ; $49C2: $8E
    nop                                           ; $49C3: $00
    halt                                          ; $49C4: $76
    ld a, l                                       ; $49C5: $7D
    nop                                           ; $49C6: $00
    halt                                          ; $49C7: $76
    ld b, a                                       ; $49C8: $47
    ld bc, $8B8D                                  ; $49C9: $01 $8D $8B
    db $10                                        ; $49CC: $10
    ld l, [hl]                                    ; $49CD: $6E
    scf                                           ; $49CE: $37
    nop                                           ; $49CF: $00
    ld l, d                                       ; $49D0: $6A
    ret                                           ; $49D1: $C9


    nop                                           ; $49D2: $00
    ld bc, $0000                                  ; $49D3: $01 $00 $00
    nop                                           ; $49D6: $00
    nop                                           ; $49D7: $00
    nop                                           ; $49D8: $00
    inc bc                                        ; $49D9: $03
    nop                                           ; $49DA: $00
    nop                                           ; $49DB: $00
    inc bc                                        ; $49DC: $03
    sbc a                                         ; $49DD: $9F
    ld hl, $4140                                  ; $49DE: $21 $40 $41
    ld de, $0042                                  ; $49E1: $11 $42 $00
    nop                                           ; $49E4: $00
    nop                                           ; $49E5: $00
    nop                                           ; $49E6: $00
    nop                                           ; $49E7: $00
    inc bc                                        ; $49E8: $03
    ld bc, $B200                                  ; $49E9: $01 $00 $B2
    add d                                         ; $49EC: $82
    nop                                           ; $49ED: $00
    sub l                                         ; $49EE: $95
    pop bc                                        ; $49EF: $C1
    nop                                           ; $49F0: $00
    xor c                                         ; $49F1: $A9
    or c                                          ; $49F2: $B1
    nop                                           ; $49F3: $00
    ld bc, $0000                                  ; $49F4: $01 $00 $00
    nop                                           ; $49F7: $00
    ld bc, $0100                                  ; $49F8: $01 $00 $01
    call c, $DA00                                 ; $49FB: $DC $00 $DA
    call c, $DE00                                 ; $49FE: $DC $00 $DE
    ld bc, $E300                                  ; $4A01: $01 $00 $E3
    nop                                           ; $4A04: $00
    nop                                           ; $4A05: $00
    nop                                           ; $4A06: $00
    nop                                           ; $4A07: $00
    nop                                           ; $4A08: $00
    inc bc                                        ; $4A09: $03
    nop                                           ; $4A0A: $00
    nop                                           ; $4A0B: $00
    dec b                                         ; $4A0C: $05
    ld bc, $0000                                  ; $4A0D: $01 $00 $00
    ld [bc], a                                    ; $4A10: $02
    nop                                           ; $4A11: $00
    nop                                           ; $4A12: $00
    ld b, $FE                                     ; $4A13: $06 $FE
    scf                                           ; $4A15: $37
    ld hl, $4D01                                  ; $4A16: $21 $01 $4D
    ld [bc], a                                    ; $4A19: $02
    ld d, [hl]                                    ; $4A1A: $56
    ld d, a                                       ; $4A1B: $57
    jr nz, jr_038_4A8C                            ; $4A1C: $20 $6E

    dec de                                        ; $4A1E: $1B
    jr nz, jr_038_4A54                            ; $4A1F: $20 $33

    ld b, d                                       ; $4A21: $42
    nop                                           ; $4A22: $00
    ld bc, $118D                                  ; $4A23: $01 $8D $11
    adc e                                         ; $4A26: $8B
    scf                                           ; $4A27: $37
    nop                                           ; $4A28: $00
    ld l, d                                       ; $4A29: $6A
    ret                                           ; $4A2A: $C9


    nop                                           ; $4A2B: $00
    ld bc, $0000                                  ; $4A2C: $01 $00 $00
    nop                                           ; $4A2F: $00
    nop                                           ; $4A30: $00
    nop                                           ; $4A31: $00
    inc bc                                        ; $4A32: $03
    nop                                           ; $4A33: $00
    nop                                           ; $4A34: $00
    inc bc                                        ; $4A35: $03
    xor a                                         ; $4A36: $AF
    nop                                           ; $4A37: $00
    adc b                                         ; $4A38: $88
    pop bc                                        ; $4A39: $C1
    nop                                           ; $4A3A: $00
    or e                                          ; $4A3B: $B3
    halt                                          ; $4A3C: $76
    nop                                           ; $4A3D: $00
    sbc d                                         ; $4A3E: $9A
    ld c, [hl]                                    ; $4A3F: $4E
    nop                                           ; $4A40: $00
    ld bc, $0000                                  ; $4A41: $01 $00 $00
    nop                                           ; $4A44: $00
    nop                                           ; $4A45: $00
    nop                                           ; $4A46: $00
    inc bc                                        ; $4A47: $03
    ret nc                                        ; $4A48: $D0

    ld bc, $6362                                  ; $4A49: $01 $62 $63
    db $10                                        ; $4A4C: $10
    pop de                                        ; $4A4D: $D1
    ld c, d                                       ; $4A4E: $4A
    ld bc, $5352                                  ; $4A4F: $01 $52 $53
    db $10                                        ; $4A52: $10
    scf                                           ; $4A53: $37

jr_038_4A54:
    ld l, d                                       ; $4A54: $6A
    nop                                           ; $4A55: $00
    ret                                           ; $4A56: $C9


    nop                                           ; $4A57: $00
    nop                                           ; $4A58: $00
    nop                                           ; $4A59: $00
    nop                                           ; $4A5A: $00
    nop                                           ; $4A5B: $00
    nop                                           ; $4A5C: $00
    nop                                           ; $4A5D: $00
    nop                                           ; $4A5E: $00
    inc bc                                        ; $4A5F: $03
    nop                                           ; $4A60: $00
    nop                                           ; $4A61: $00
    inc b                                         ; $4A62: $04
    ld bc, $0000                                  ; $4A63: $01 $00 $00
    dec b                                         ; $4A66: $05
    ld bc, $0000                                  ; $4A67: $01 $00 $00
    ld [bc], a                                    ; $4A6A: $02
    nop                                           ; $4A6B: $00
    nop                                           ; $4A6C: $00
    ld [bc], a                                    ; $4A6D: $02
    nop                                           ; $4A6E: $00
    nop                                           ; $4A6F: $00
    ld [bc], a                                    ; $4A70: $02
    nop                                           ; $4A71: $00
    nop                                           ; $4A72: $00
    ld b, $FE                                     ; $4A73: $06 $FE
    xor a                                         ; $4A75: $AF
    nop                                           ; $4A76: $00
    adc b                                         ; $4A77: $88
    pop bc                                        ; $4A78: $C1
    nop                                           ; $4A79: $00
    or e                                          ; $4A7A: $B3
    halt                                          ; $4A7B: $76
    nop                                           ; $4A7C: $00
    sbc d                                         ; $4A7D: $9A
    ld b, a                                       ; $4A7E: $47
    nop                                           ; $4A7F: $00
    ld c, [hl]                                    ; $4A80: $4E
    add d                                         ; $4A81: $82
    nop                                           ; $4A82: $00
    halt                                          ; $4A83: $76
    sbc d                                         ; $4A84: $9A
    nop                                           ; $4A85: $00
    ret z                                         ; $4A86: $C8

    adc l                                         ; $4A87: $8D
    nop                                           ; $4A88: $00
    or a                                          ; $4A89: $B7
    pop bc                                        ; $4A8A: $C1
    nop                                           ; $4A8B: $00

jr_038_4A8C:
    xor h                                         ; $4A8C: $AC
    jr nc, jr_038_4A8F                            ; $4A8D: $30 $00

jr_038_4A8F:
    ld b, a                                       ; $4A8F: $47
    inc l                                         ; $4A90: $2C
    nop                                           ; $4A91: $00
    ld c, c                                       ; $4A92: $49
    daa                                           ; $4A93: $27
    nop                                           ; $4A94: $00
    ret                                           ; $4A95: $C9


    nop                                           ; $4A96: $00
    nop                                           ; $4A97: $00
    nop                                           ; $4A98: $00
    nop                                           ; $4A99: $00
    nop                                           ; $4A9A: $00
    inc bc                                        ; $4A9B: $03
    nop                                           ; $4A9C: $00
    nop                                           ; $4A9D: $00
    dec b                                         ; $4A9E: $05
    ld bc, $0000                                  ; $4A9F: $01 $00 $00
    ld [bc], a                                    ; $4AA2: $02
    nop                                           ; $4AA3: $00
    nop                                           ; $4AA4: $00
    ld b, $FE                                     ; $4AA5: $06 $FE
    ld b, b                                       ; $4AA7: $40
    ld de, $4241                                  ; $4AA8: $11 $41 $42
    db $10                                        ; $4AAB: $10
    ld bc, $0000                                  ; $4AAC: $01 $00 $00
    nop                                           ; $4AAF: $00
    nop                                           ; $4AB0: $00
    nop                                           ; $4AB1: $00
    inc bc                                        ; $4AB2: $03
    ld bc, $AF00                                  ; $4AB3: $01 $00 $AF
    ld a, [hl]                                    ; $4AB6: $7E
    nop                                           ; $4AB7: $00
    adc b                                         ; $4AB8: $88
    xor a                                         ; $4AB9: $AF
    nop                                           ; $4ABA: $00
    or c                                          ; $4ABB: $B1
    adc b                                         ; $4ABC: $88
    nop                                           ; $4ABD: $00
    cp b                                          ; $4ABE: $B8
    halt                                          ; $4ABF: $76
    nop                                           ; $4AC0: $00
    sub l                                         ; $4AC1: $95
    nop                                           ; $4AC2: $00
    nop                                           ; $4AC3: $00
    nop                                           ; $4AC4: $00
    ld bc, $0100                                  ; $4AC5: $01 $00 $01
    call c, $DA00                                 ; $4AC8: $DC $00 $DA
    ld bc, $E300                                  ; $4ACB: $01 $00 $E3
    nop                                           ; $4ACE: $00
    nop                                           ; $4ACF: $00
    nop                                           ; $4AD0: $00
    nop                                           ; $4AD1: $00
    nop                                           ; $4AD2: $00
    inc bc                                        ; $4AD3: $03
    nop                                           ; $4AD4: $00
    nop                                           ; $4AD5: $00
    dec b                                         ; $4AD6: $05
    ld bc, $0000                                  ; $4AD7: $01 $00 $00
    ld [bc], a                                    ; $4ADA: $02
    nop                                           ; $4ADB: $00
    nop                                           ; $4ADC: $00
    ld b, $FE                                     ; $4ADD: $06 $FE
    or b                                          ; $4ADF: $B0
    nop                                           ; $4AE0: $00
    add a                                         ; $4AE1: $87
    ld a, c                                       ; $4AE2: $79
    nop                                           ; $4AE3: $00
    cp h                                          ; $4AE4: $BC
    ld l, [hl]                                    ; $4AE5: $6E
    ld bc, $599D                                  ; $4AE6: $01 $9D $59
    jr nz, jr_038_4B21                            ; $4AE9: $20 $36

    ld b, d                                       ; $4AEB: $42
    nop                                           ; $4AEC: $00
    ld bc, $118D                                  ; $4AED: $01 $8D $11
    adc e                                         ; $4AF0: $8B
    scf                                           ; $4AF1: $37
    nop                                           ; $4AF2: $00
    ld l, d                                       ; $4AF3: $6A
    ret                                           ; $4AF4: $C9


    nop                                           ; $4AF5: $00
    ld bc, $0000                                  ; $4AF6: $01 $00 $00
    nop                                           ; $4AF9: $00
    nop                                           ; $4AFA: $00
    nop                                           ; $4AFB: $00
    inc bc                                        ; $4AFC: $03
    nop                                           ; $4AFD: $00
    nop                                           ; $4AFE: $00
    inc bc                                        ; $4AFF: $03
    ld bc, $8900                                  ; $4B00: $01 $00 $89
    sub h                                         ; $4B03: $94
    nop                                           ; $4B04: $00
    call nz, Call_000_00C1                        ; $4B05: $C4 $C1 $00
    add h                                         ; $4B08: $84
    xor a                                         ; $4B09: $AF
    nop                                           ; $4B0A: $00
    ld a, c                                       ; $4B0B: $79
    pop bc                                        ; $4B0C: $C1
    nop                                           ; $4B0D: $00
    ld bc, $0000                                  ; $4B0E: $01 $00 $00
    nop                                           ; $4B11: $00
    ld bc, $0100                                  ; $4B12: $01 $00 $01
    call c, $DE00                                 ; $4B15: $DC $00 $DE
    ld bc, $E200                                  ; $4B18: $01 $00 $E2
    nop                                           ; $4B1B: $00
    nop                                           ; $4B1C: $00
    nop                                           ; $4B1D: $00
    nop                                           ; $4B1E: $00
    nop                                           ; $4B1F: $00
    inc bc                                        ; $4B20: $03

jr_038_4B21:
    nop                                           ; $4B21: $00
    nop                                           ; $4B22: $00
    dec b                                         ; $4B23: $05
    ld bc, $0000                                  ; $4B24: $01 $00 $00
    ld [bc], a                                    ; $4B27: $02
    nop                                           ; $4B28: $00
    nop                                           ; $4B29: $00
    ld b, $FE                                     ; $4B2A: $06 $FE
    ld c, e                                       ; $4B2C: $4B
    ld [de], a                                    ; $4B2D: $12
    ld e, d                                       ; $4B2E: $5A
    ld [hl], $00                                  ; $4B2F: $36 $00
    ld c, c                                       ; $4B31: $49
    jr nc, jr_038_4B34                            ; $4B32: $30 $00

jr_038_4B34:
    ld l, b                                       ; $4B34: $68
    ld bc, $5602                                  ; $4B35: $01 $02 $56
    ld d, a                                       ; $4B38: $57
    jr nz, @+$70                                  ; $4B39: $20 $6E

    ld e, e                                       ; $4B3B: $5B
    jr nz, @+$29                                  ; $4B3C: $20 $27

    ld b, d                                       ; $4B3E: $42
    nop                                           ; $4B3F: $00
    daa                                           ; $4B40: $27
    dec l                                         ; $4B41: $2D
    nop                                           ; $4B42: $00
    ret                                           ; $4B43: $C9


    nop                                           ; $4B44: $00
    nop                                           ; $4B45: $00
    nop                                           ; $4B46: $00
    nop                                           ; $4B47: $00
    nop                                           ; $4B48: $00
    inc bc                                        ; $4B49: $03
    nop                                           ; $4B4A: $00
    nop                                           ; $4B4B: $00
    inc bc                                        ; $4B4C: $03
    ld bc, $8700                                  ; $4B4D: $01 $00 $87
    ld a, c                                       ; $4B50: $79
    nop                                           ; $4B51: $00
    ld a, a                                       ; $4B52: $7F
    cp [hl]                                       ; $4B53: $BE
    nop                                           ; $4B54: $00
    pop bc                                        ; $4B55: $C1
    ld a, [hl]                                    ; $4B56: $7E
    nop                                           ; $4B57: $00
    or a                                          ; $4B58: $B7
    sbc a                                         ; $4B59: $9F
    nop                                           ; $4B5A: $00
    pop bc                                        ; $4B5B: $C1
    nop                                           ; $4B5C: $00
    nop                                           ; $4B5D: $00
    nop                                           ; $4B5E: $00
    ld bc, $0100                                  ; $4B5F: $01 $00 $01
    sbc $00                                       ; $4B62: $DE $00
    call c, Call_000_00DA                         ; $4B64: $DC $DA $00
    ld bc, $00E3                                  ; $4B67: $01 $E3 $00
    ld bc, $0000                                  ; $4B6A: $01 $00 $00
    nop                                           ; $4B6D: $00
    nop                                           ; $4B6E: $00
    nop                                           ; $4B6F: $00
    inc bc                                        ; $4B70: $03
    nop                                           ; $4B71: $00
    nop                                           ; $4B72: $00
    dec b                                         ; $4B73: $05
    ld bc, $0000                                  ; $4B74: $01 $00 $00
    ld [bc], a                                    ; $4B77: $02
    nop                                           ; $4B78: $00
    nop                                           ; $4B79: $00
    ld b, $FE                                     ; $4B7A: $06 $FE
    ld c, b                                       ; $4B7C: $48
    ld [hl+], a                                   ; $4B7D: $22
    ld h, [hl]                                    ; $4B7E: $66
    ld l, [hl]                                    ; $4B7F: $6E
    ld bc, $3834                                  ; $4B80: $01 $34 $38
    jr nz, jr_038_4BBB                            ; $4B83: $20 $36

    ld b, d                                       ; $4B85: $42
    ld bc, $8B8D                                  ; $4B86: $01 $8D $8B
    db $10                                        ; $4B89: $10
    scf                                           ; $4B8A: $37
    ld l, d                                       ; $4B8B: $6A
    nop                                           ; $4B8C: $00
    ret                                           ; $4B8D: $C9


    nop                                           ; $4B8E: $00
    nop                                           ; $4B8F: $00
    inc bc                                        ; $4B90: $03
    nop                                           ; $4B91: $00
    nop                                           ; $4B92: $00
    inc bc                                        ; $4B93: $03
    ld bc, $8900                                  ; $4B94: $01 $00 $89
    sub l                                         ; $4B97: $95
    nop                                           ; $4B98: $00
    halt                                          ; $4B99: $76
    or c                                          ; $4B9A: $B1
    nop                                           ; $4B9B: $00
    xor d                                         ; $4B9C: $AA
    adc c                                         ; $4B9D: $89
    nop                                           ; $4B9E: $00
    ld bc, $0000                                  ; $4B9F: $01 $00 $00
    nop                                           ; $4BA2: $00
    ld bc, $0100                                  ; $4BA3: $01 $00 $01
    sbc $00                                       ; $4BA6: $DE $00
    call c, Call_000_00DA                         ; $4BA8: $DC $DA $00
    ld bc, $00E2                                  ; $4BAB: $01 $E2 $00
    ld bc, $0000                                  ; $4BAE: $01 $00 $00
    nop                                           ; $4BB1: $00
    nop                                           ; $4BB2: $00
    nop                                           ; $4BB3: $00
    inc bc                                        ; $4BB4: $03
    nop                                           ; $4BB5: $00
    nop                                           ; $4BB6: $00
    dec b                                         ; $4BB7: $05
    ld bc, $0000                                  ; $4BB8: $01 $00 $00

jr_038_4BBB:
    ld [bc], a                                    ; $4BBB: $02
    nop                                           ; $4BBC: $00
    nop                                           ; $4BBD: $00
    ld b, $FE                                     ; $4BBE: $06 $FE
    cpl                                           ; $4BC0: $2F
    ld [hl+], a                                   ; $4BC1: $22
    rla                                           ; $4BC2: $17
    ld [hl], $00                                  ; $4BC3: $36 $00
    ld b, d                                       ; $4BC5: $42
    ld bc, $A100                                  ; $4BC6: $01 $00 $A1
    jp nz, $9500                                  ; $4BC9: $C2 $00 $95

    ld [hl], $00                                  ; $4BCC: $36 $00
    ccf                                           ; $4BCE: $3F
    ld l, b                                       ; $4BCF: $68
    nop                                           ; $4BD0: $00
    ld bc, $007E                                  ; $4BD1: $01 $7E $00
    or a                                          ; $4BD4: $B7
    sub c                                         ; $4BD5: $91
    nop                                           ; $4BD6: $00
    xor e                                         ; $4BD7: $AB
    cp d                                          ; $4BD8: $BA
    nop                                           ; $4BD9: $00
    ld b, a                                       ; $4BDA: $47
    ld e, h                                       ; $4BDB: $5C
    jr nz, @+$60                                  ; $4BDC: $20 $5E

    or d                                          ; $4BDE: $B2
    db $10                                        ; $4BDF: $10
    scf                                           ; $4BE0: $37
    ret                                           ; $4BE1: $C9


    nop                                           ; $4BE2: $00
    ld bc, $0000                                  ; $4BE3: $01 $00 $00
    inc bc                                        ; $4BE6: $03
    nop                                           ; $4BE7: $00
    nop                                           ; $4BE8: $00
    inc bc                                        ; $4BE9: $03
    sbc a                                         ; $4BEA: $9F
    ld hl, $4140                                  ; $4BEB: $21 $40 $41
    ld de, $0042                                  ; $4BEE: $11 $42 $00
    nop                                           ; $4BF1: $00
    nop                                           ; $4BF2: $00
    nop                                           ; $4BF3: $00
    nop                                           ; $4BF4: $00
    inc bc                                        ; $4BF5: $03
    ld bc, $7800                                  ; $4BF6: $01 $00 $78
    add a                                         ; $4BF9: $87
    nop                                           ; $4BFA: $00
    cp h                                          ; $4BFB: $BC
    sub l                                         ; $4BFC: $95
    nop                                           ; $4BFD: $00
    cp l                                          ; $4BFE: $BD
    ld a, c                                       ; $4BFF: $79
    nop                                           ; $4C00: $00
    ld bc, $0000                                  ; $4C01: $01 $00 $00
    nop                                           ; $4C04: $00
    ld bc, $0100                                  ; $4C05: $01 $00 $01
    call c, $DA00                                 ; $4C08: $DC $00 $DA
    call c, $DE00                                 ; $4C0B: $DC $00 $DE
    ld bc, $E300                                  ; $4C0E: $01 $00 $E3
    nop                                           ; $4C11: $00
    nop                                           ; $4C12: $00
    nop                                           ; $4C13: $00
    nop                                           ; $4C14: $00
    nop                                           ; $4C15: $00
    inc bc                                        ; $4C16: $03
    nop                                           ; $4C17: $00
    nop                                           ; $4C18: $00
    dec b                                         ; $4C19: $05
    ld bc, $0000                                  ; $4C1A: $01 $00 $00
    ld [bc], a                                    ; $4C1D: $02
    nop                                           ; $4C1E: $00
    nop                                           ; $4C1F: $00
    ld b, $FE                                     ; $4C20: $06 $FE
    adc d                                         ; $4C22: $8A
    db $10                                        ; $4C23: $10
    dec hl                                        ; $4C24: $2B
    ld l, b                                       ; $4C25: $68
    nop                                           ; $4C26: $00
    ld bc, $2137                                  ; $4C27: $01 $37 $21
    ld bc, $00BD                                  ; $4C2A: $01 $BD $00
    halt                                          ; $4C2D: $76
    adc h                                         ; $4C2E: $8C
    nop                                           ; $4C2F: $00
    halt                                          ; $4C30: $76
    jr nc, jr_038_4C33                            ; $4C31: $30 $00

jr_038_4C33:
    ld bc, $003F                                  ; $4C33: $01 $3F $00
    dec l                                         ; $4C36: $2D

jr_038_4C37:
    dec [hl]                                      ; $4C37: $35
    nop                                           ; $4C38: $00
    ld l, a                                       ; $4C39: $6F
    ld d, e                                       ; $4C3A: $53
    jr nz, jr_038_4CAD                            ; $4C3B: $20 $70

    ld b, d                                       ; $4C3D: $42
    nop                                           ; $4C3E: $00
    dec l                                         ; $4C3F: $2D
    ld l, d                                       ; $4C40: $6A
    nop                                           ; $4C41: $00
    ret                                           ; $4C42: $C9


    nop                                           ; $4C43: $00
    nop                                           ; $4C44: $00
    nop                                           ; $4C45: $00
    nop                                           ; $4C46: $00
    nop                                           ; $4C47: $00
    inc bc                                        ; $4C48: $03
    nop                                           ; $4C49: $00
    nop                                           ; $4C4A: $00
    inc bc                                        ; $4C4B: $03
    nop                                           ; $4C4C: $00
    nop                                           ; $4C4D: $00
    inc bc                                        ; $4C4E: $03
    add d                                         ; $4C4F: $82
    nop                                           ; $4C50: $00
    cp h                                          ; $4C51: $BC
    and l                                         ; $4C52: $A5
    nop                                           ; $4C53: $00
    sub l                                         ; $4C54: $95
    cp [hl]                                       ; $4C55: $BE
    nop                                           ; $4C56: $00
    pop bc                                        ; $4C57: $C1
    ld h, h                                       ; $4C58: $64
    nop                                           ; $4C59: $00
    ld l, c                                       ; $4C5A: $69
    ld h, c                                       ; $4C5B: $61
    nop                                           ; $4C5C: $00
    ld bc, $1026                                  ; $4C5D: $01 $26 $10
    dec l                                         ; $4C60: $2D
    ld c, c                                       ; $4C61: $49
    nop                                           ; $4C62: $00
    ld l, c                                       ; $4C63: $69
    ccf                                           ; $4C64: $3F
    nop                                           ; $4C65: $00
    dec l                                         ; $4C66: $2D
    ld b, d                                       ; $4C67: $42
    nop                                           ; $4C68: $00
    ld bc, $103F                                  ; $4C69: $01 $3F $10
    jr z, jr_038_4C37                             ; $4C6C: $28 $C9

    nop                                           ; $4C6E: $00
    ld bc, $0000                                  ; $4C6F: $01 $00 $00
    nop                                           ; $4C72: $00
    nop                                           ; $4C73: $00
    nop                                           ; $4C74: $00
    inc bc                                        ; $4C75: $03
    nop                                           ; $4C76: $00
    nop                                           ; $4C77: $00
    dec b                                         ; $4C78: $05
    ld bc, $0000                                  ; $4C79: $01 $00 $00
    ld [bc], a                                    ; $4C7C: $02
    nop                                           ; $4C7D: $00
    nop                                           ; $4C7E: $00
    ld [bc], a                                    ; $4C7F: $02
    nop                                           ; $4C80: $00
    nop                                           ; $4C81: $00
    ld [bc], a                                    ; $4C82: $02
    nop                                           ; $4C83: $00
    nop                                           ; $4C84: $00
    dec b                                         ; $4C85: $05
    add b                                         ; $4C86: $80
    nop                                           ; $4C87: $00
    nop                                           ; $4C88: $00
    ld [bc], a                                    ; $4C89: $02
    nop                                           ; $4C8A: $00
    nop                                           ; $4C8B: $00
    ld bc, $4C83                                  ; $4C8C: $01 $83 $4C
    ld e, [hl]                                    ; $4C8F: $5E
    nop                                           ; $4C90: $00
    ld b, c                                       ; $4C91: $41
    ld l, c                                       ; $4C92: $69
    nop                                           ; $4C93: $00
    ld l, a                                       ; $4C94: $6F
    dec sp                                        ; $4C95: $3B
    nop                                           ; $4C96: $00
    ld h, [hl]                                    ; $4C97: $66
    ld l, a                                       ; $4C98: $6F
    nop                                           ; $4C99: $00
    dec [hl]                                      ; $4C9A: $35
    daa                                           ; $4C9B: $27
    nop                                           ; $4C9C: $00
    ld l, a                                       ; $4C9D: $6F
    nop                                           ; $4C9E: $00
    nop                                           ; $4C9F: $00
    nop                                           ; $4CA0: $00
    ld bc, $9200                                  ; $4CA1: $01 $00 $92
    halt                                          ; $4CA4: $76
    nop                                           ; $4CA5: $00
    sub c                                         ; $4CA6: $91
    adc c                                         ; $4CA7: $89
    nop                                           ; $4CA8: $00
    ld bc, $0000                                  ; $4CA9: $01 $00 $00
    nop                                           ; $4CAC: $00

jr_038_4CAD:
    nop                                           ; $4CAD: $00
    nop                                           ; $4CAE: $00
    inc bc                                        ; $4CAF: $03
    ld c, c                                       ; $4CB0: $49
    nop                                           ; $4CB1: $00
    ld a, $4D                                     ; $4CB2: $3E $4D
    nop                                           ; $4CB4: $00
    ld l, l                                       ; $4CB5: $6D
    dec l                                         ; $4CB6: $2D
    nop                                           ; $4CB7: $00
    jr c, jr_038_4CE1                             ; $4CB8: $38 $27

    nop                                           ; $4CBA: $00
    ld a, e                                       ; $4CBB: $7B
    sbc [hl]                                      ; $4CBC: $9E
    nop                                           ; $4CBD: $00
    cp h                                          ; $4CBE: $BC
    add [hl]                                      ; $4CBF: $86
    nop                                           ; $4CC0: $00
    ld a, b                                       ; $4CC1: $78
    ld b, a                                       ; $4CC2: $47
    nop                                           ; $4CC3: $00
    ccf                                           ; $4CC4: $3F
    ccf                                           ; $4CC5: $3F
    nop                                           ; $4CC6: $00
    dec hl                                        ; $4CC7: $2B
    jr z, jr_038_4CCA                             ; $4CC8: $28 $00

jr_038_4CCA:
    ret z                                         ; $4CCA: $C8

    add a                                         ; $4CCB: $87
    nop                                           ; $4CCC: $00
    ld a, c                                       ; $4CCD: $79
    and l                                         ; $4CCE: $A5
    nop                                           ; $4CCF: $00
    sub l                                         ; $4CD0: $95
    cp [hl]                                       ; $4CD1: $BE
    nop                                           ; $4CD2: $00
    pop bc                                        ; $4CD3: $C1
    ld c, l                                       ; $4CD4: $4D
    nop                                           ; $4CD5: $00
    jr c, jr_038_4D47                             ; $4CD6: $38 $6F

    nop                                           ; $4CD8: $00
    ld [hl], $C9                                  ; $4CD9: $36 $C9
    nop                                           ; $4CDB: $00
    ld bc, $0000                                  ; $4CDC: $01 $00 $00
    nop                                           ; $4CDF: $00
    nop                                           ; $4CE0: $00

jr_038_4CE1:
    nop                                           ; $4CE1: $00
    inc bc                                        ; $4CE2: $03
    adc c                                         ; $4CE3: $89
    nop                                           ; $4CE4: $00
    xor e                                         ; $4CE5: $AB
    halt                                          ; $4CE6: $76
    nop                                           ; $4CE7: $00
    sbc d                                         ; $4CE8: $9A
    ld c, c                                       ; $4CE9: $49
    nop                                           ; $4CEA: $00
    ld l, b                                       ; $4CEB: $68
    ret z                                         ; $4CEC: $C8

    nop                                           ; $4CED: $00
    ld b, h                                       ; $4CEE: $44
    ld l, e                                       ; $4CEF: $6B
    nop                                           ; $4CF0: $00
    ld c, d                                       ; $4CF1: $4A
    ld h, c                                       ; $4CF2: $61
    nop                                           ; $4CF3: $00
    ld bc, $005D                                  ; $4CF4: $01 $5D $00
    ld l, $49                                     ; $4CF7: $2E $49
    nop                                           ; $4CF9: $00
    daa                                           ; $4CFA: $27
    ret                                           ; $4CFB: $C9


    nop                                           ; $4CFC: $00
    ld bc, $0000                                  ; $4CFD: $01 $00 $00
    nop                                           ; $4D00: $00
    nop                                           ; $4D01: $00
    nop                                           ; $4D02: $00
    inc bc                                        ; $4D03: $03
    ld c, a                                       ; $4D04: $4F
    nop                                           ; $4D05: $00
    ld [hl], b                                    ; $4D06: $70
    dec [hl]                                      ; $4D07: $35
    nop                                           ; $4D08: $00
    ld b, c                                       ; $4D09: $41
    ld l, l                                       ; $4D0A: $6D
    nop                                           ; $4D0B: $00
    ld a, [hl-]                                   ; $4D0C: $3A
    nop                                           ; $4D0D: $00
    nop                                           ; $4D0E: $00
    nop                                           ; $4D0F: $00
    nop                                           ; $4D10: $00
    nop                                           ; $4D11: $00
    inc bc                                        ; $4D12: $03
    ld bc, $8900                                  ; $4D13: $01 $00 $89
    sbc e                                         ; $4D16: $9B
    nop                                           ; $4D17: $00
    ld a, c                                       ; $4D18: $79
    xor d                                         ; $4D19: $AA
    nop                                           ; $4D1A: $00
    halt                                          ; $4D1B: $76
    adc b                                         ; $4D1C: $88
    nop                                           ; $4D1D: $00
    cp c                                          ; $4D1E: $B9
    jp nz, $9500                                  ; $4D1F: $C2 $00 $95

    ld [$0100], a                                 ; $4D22: $EA $00 $01
    ld bc, $0100                                  ; $4D25: $01 $00 $01
    call c, $DA00                                 ; $4D28: $DC $00 $DA
    ld bc, $E300                                  ; $4D2B: $01 $00 $E3
    nop                                           ; $4D2E: $00
    nop                                           ; $4D2F: $00
    nop                                           ; $4D30: $00
    nop                                           ; $4D31: $00
    nop                                           ; $4D32: $00
    inc bc                                        ; $4D33: $03
    nop                                           ; $4D34: $00
    nop                                           ; $4D35: $00
    dec b                                         ; $4D36: $05
    ld bc, $0000                                  ; $4D37: $01 $00 $00
    ld [bc], a                                    ; $4D3A: $02
    nop                                           ; $4D3B: $00
    nop                                           ; $4D3C: $00
    ld b, $FE                                     ; $4D3D: $06 $FE
    ld e, l                                       ; $4D3F: $5D
    nop                                           ; $4D40: $00
    add hl, hl                                    ; $4D41: $29
    ld c, d                                       ; $4D42: $4A
    nop                                           ; $4D43: $00
    ld e, a                                       ; $4D44: $5F
    ld l, $00                                     ; $4D45: $2E $00

jr_038_4D47:
    ld b, d                                       ; $4D47: $42
    ld bc, $8800                                  ; $4D48: $01 $00 $88
    cp c                                          ; $4D4B: $B9
    nop                                           ; $4D4C: $00
    jp nz, Jump_000_0095                          ; $4D4D: $C2 $95 $00

    ld l, [hl]                                    ; $4D50: $6E
    jr z, jr_038_4D53                             ; $4D51: $28 $00

jr_038_4D53:
    ld b, c                                       ; $4D53: $41
    ret                                           ; $4D54: $C9


    nop                                           ; $4D55: $00
    ld bc, $0000                                  ; $4D56: $01 $00 $00
    nop                                           ; $4D59: $00
    nop                                           ; $4D5A: $00
    nop                                           ; $4D5B: $00
    inc bc                                        ; $4D5C: $03
    nop                                           ; $4D5D: $00
    nop                                           ; $4D5E: $00
    inc bc                                        ; $4D5F: $03
    ld bc, $8900                                  ; $4D60: $01 $00 $89
    sbc e                                         ; $4D63: $9B
    nop                                           ; $4D64: $00
    ld a, c                                       ; $4D65: $79
    xor d                                         ; $4D66: $AA
    nop                                           ; $4D67: $00
    halt                                          ; $4D68: $76
    adc b                                         ; $4D69: $88
    nop                                           ; $4D6A: $00
    cp c                                          ; $4D6B: $B9
    jp nz, $9500                                  ; $4D6C: $C2 $00 $95

    jp hl                                         ; $4D6F: $E9


    nop                                           ; $4D70: $00
    ld bc, $0001                                  ; $4D71: $01 $01 $00
    ld bc, $00DC                                  ; $4D74: $01 $DC $00
    sbc $01                                       ; $4D77: $DE $01
    nop                                           ; $4D79: $00
    db $E3                                        ; $4D7A: $E3
    nop                                           ; $4D7B: $00
    nop                                           ; $4D7C: $00
    nop                                           ; $4D7D: $00
    nop                                           ; $4D7E: $00
    nop                                           ; $4D7F: $00
    inc bc                                        ; $4D80: $03
    nop                                           ; $4D81: $00
    nop                                           ; $4D82: $00
    dec b                                         ; $4D83: $05
    ld bc, $0000                                  ; $4D84: $01 $00 $00
    ld [bc], a                                    ; $4D87: $02
    nop                                           ; $4D88: $00
    nop                                           ; $4D89: $00
    ld b, $FE                                     ; $4D8A: $06 $FE
    ld c, c                                       ; $4D8C: $49
    nop                                           ; $4D8D: $00
    ld c, c                                       ; $4D8E: $49
    ld h, b                                       ; $4D8F: $60
    nop                                           ; $4D90: $00
    jr z, jr_038_4DBC                             ; $4D91: $28 $29

    nop                                           ; $4D93: $00
    ld c, d                                       ; $4D94: $4A
    ld bc, $8800                                  ; $4D95: $01 $00 $88
    cp c                                          ; $4D98: $B9
    nop                                           ; $4D99: $00
    jp nz, Jump_000_0095                          ; $4D9A: $C2 $95 $00

    ld l, [hl]                                    ; $4D9D: $6E
    jr z, jr_038_4DA0                             ; $4D9E: $28 $00

jr_038_4DA0:
    ld b, c                                       ; $4DA0: $41
    ret                                           ; $4DA1: $C9


    nop                                           ; $4DA2: $00
    ld bc, $0000                                  ; $4DA3: $01 $00 $00
    nop                                           ; $4DA6: $00
    nop                                           ; $4DA7: $00
    nop                                           ; $4DA8: $00
    inc bc                                        ; $4DA9: $03
    nop                                           ; $4DAA: $00
    nop                                           ; $4DAB: $00
    inc bc                                        ; $4DAC: $03
    ld bc, $8900                                  ; $4DAD: $01 $00 $89
    sbc e                                         ; $4DB0: $9B
    nop                                           ; $4DB1: $00
    ld a, c                                       ; $4DB2: $79
    xor d                                         ; $4DB3: $AA
    nop                                           ; $4DB4: $00
    halt                                          ; $4DB5: $76
    adc b                                         ; $4DB6: $88
    nop                                           ; $4DB7: $00
    cp c                                          ; $4DB8: $B9
    jp nz, $9500                                  ; $4DB9: $C2 $00 $95

jr_038_4DBC:
    db $EB                                        ; $4DBC: $EB
    nop                                           ; $4DBD: $00
    ld bc, $0001                                  ; $4DBE: $01 $01 $00
    ld bc, $008D                                  ; $4DC1: $01 $8D $00
    or a                                          ; $4DC4: $B7
    pop bc                                        ; $4DC5: $C1
    nop                                           ; $4DC6: $00
    xor h                                         ; $4DC7: $AC
    ld bc, $DC00                                  ; $4DC8: $01 $00 $DC
    jp c, Boot                                    ; $4DCB: $DA $00 $01

    db $E3                                        ; $4DCE: $E3
    nop                                           ; $4DCF: $00
    ld bc, $0000                                  ; $4DD0: $01 $00 $00
    inc bc                                        ; $4DD3: $03
    nop                                           ; $4DD4: $00
    nop                                           ; $4DD5: $00
    dec b                                         ; $4DD6: $05
    ld bc, $0000                                  ; $4DD7: $01 $00 $00
    ld [bc], a                                    ; $4DDA: $02
    nop                                           ; $4DDB: $00
    nop                                           ; $4DDC: $00
    ld b, $FE                                     ; $4DDD: $06 $FE
    dec l                                         ; $4DDF: $2D
    nop                                           ; $4DE0: $00
    jr z, @+$42                                   ; $4DE1: $28 $40

    nop                                           ; $4DE3: $00
    ld h, [hl]                                    ; $4DE4: $66
    jr z, jr_038_4DE7                             ; $4DE5: $28 $00

jr_038_4DE7:
    ld b, a                                       ; $4DE7: $47
    ld bc, $4900                                  ; $4DE8: $01 $00 $49
    ld c, c                                       ; $4DEB: $49
    nop                                           ; $4DEC: $00
    ld h, b                                       ; $4DED: $60
    ld [hl], $00                                  ; $4DEE: $36 $00
    ccf                                           ; $4DF0: $3F
    ld c, d                                       ; $4DF1: $4A
    nop                                           ; $4DF2: $00
    ld bc, $0088                                  ; $4DF3: $01 $88 $00
    cp c                                          ; $4DF6: $B9
    jp nz, $9500                                  ; $4DF7: $C2 $00 $95

    ld l, [hl]                                    ; $4DFA: $6E
    nop                                           ; $4DFB: $00
    jr z, jr_038_4E3F                             ; $4DFC: $28 $41

    nop                                           ; $4DFE: $00
    ret                                           ; $4DFF: $C9


    nop                                           ; $4E00: $00
    nop                                           ; $4E01: $00
    nop                                           ; $4E02: $00
    nop                                           ; $4E03: $00
    nop                                           ; $4E04: $00
    inc bc                                        ; $4E05: $03
    nop                                           ; $4E06: $00
    nop                                           ; $4E07: $00
    inc bc                                        ; $4E08: $03
    ld bc, $BE00                                  ; $4E09: $01 $00 $BE
    halt                                          ; $4E0C: $76
    nop                                           ; $4E0D: $00
    cp e                                          ; $4E0E: $BB
    pop bc                                        ; $4E0F: $C1
    nop                                           ; $4E10: $00
    add h                                         ; $4E11: $84
    ld a, b                                       ; $4E12: $78
    nop                                           ; $4E13: $00
    add a                                         ; $4E14: $87
    cp h                                          ; $4E15: $BC
    nop                                           ; $4E16: $00
    sub l                                         ; $4E17: $95
    nop                                           ; $4E18: $00
    nop                                           ; $4E19: $00
    nop                                           ; $4E1A: $00
    ld bc, $0100                                  ; $4E1B: $01 $00 $01
    call c, $DE00                                 ; $4E1E: $DC $00 $DE
    ld bc, $E200                                  ; $4E21: $01 $00 $E2
    nop                                           ; $4E24: $00
    nop                                           ; $4E25: $00
    nop                                           ; $4E26: $00
    nop                                           ; $4E27: $00
    nop                                           ; $4E28: $00
    inc bc                                        ; $4E29: $03
    nop                                           ; $4E2A: $00
    nop                                           ; $4E2B: $00
    dec b                                         ; $4E2C: $05
    ld bc, $0000                                  ; $4E2D: $01 $00 $00
    ld [bc], a                                    ; $4E30: $02
    nop                                           ; $4E31: $00
    nop                                           ; $4E32: $00
    ld b, $FE                                     ; $4E33: $06 $FE
    ld a, l                                       ; $4E35: $7D
    nop                                           ; $4E36: $00
    ld a, l                                       ; $4E37: $7D
    sub l                                         ; $4E38: $95
    nop                                           ; $4E39: $00
    ld a, [hl+]                                   ; $4E3A: $2A
    ld b, e                                       ; $4E3B: $43
    nop                                           ; $4E3C: $00
    ld [hl], $47                                  ; $4E3D: $36 $47

jr_038_4E3F:
    nop                                           ; $4E3F: $00
    ld bc, $0043                                  ; $4E40: $01 $43 $00
    ld d, h                                       ; $4E43: $54
    cpl                                           ; $4E44: $2F
    nop                                           ; $4E45: $00
    ld e, a                                       ; $4E46: $5F
    cpl                                           ; $4E47: $2F
    nop                                           ; $4E48: $00
    jr z, @+$35                                   ; $4E49: $28 $33

    nop                                           ; $4E4B: $00
    inc l                                         ; $4E4C: $2C
    ret                                           ; $4E4D: $C9


    nop                                           ; $4E4E: $00
    ld bc, $0000                                  ; $4E4F: $01 $00 $00
    nop                                           ; $4E52: $00
    nop                                           ; $4E53: $00
    nop                                           ; $4E54: $00
    inc bc                                        ; $4E55: $03
    nop                                           ; $4E56: $00
    nop                                           ; $4E57: $00
    inc bc                                        ; $4E58: $03
    add l                                         ; $4E59: $85
    nop                                           ; $4E5A: $00
    ld a, [hl]                                    ; $4E5B: $7E
    ld c, a                                       ; $4E5C: $4F
    nop                                           ; $4E5D: $00
    ld [hl], b                                    ; $4E5E: $70
    dec [hl]                                      ; $4E5F: $35
    nop                                           ; $4E60: $00
    ld b, c                                       ; $4E61: $41
    ld l, l                                       ; $4E62: $6D
    nop                                           ; $4E63: $00
    ld a, [hl-]                                   ; $4E64: $3A
    nop                                           ; $4E65: $00
    nop                                           ; $4E66: $00
    nop                                           ; $4E67: $00
    nop                                           ; $4E68: $00
    nop                                           ; $4E69: $00
    inc bc                                        ; $4E6A: $03
    ld bc, $BA00                                  ; $4E6B: $01 $00 $BA
    adc c                                         ; $4E6E: $89
    nop                                           ; $4E6F: $00
    sub l                                         ; $4E70: $95
    cp e                                          ; $4E71: $BB
    nop                                           ; $4E72: $00
    sub b                                         ; $4E73: $90
    halt                                          ; $4E74: $76
    nop                                           ; $4E75: $00
    sub l                                         ; $4E76: $95
    nop                                           ; $4E77: $00
    nop                                           ; $4E78: $00
    nop                                           ; $4E79: $00
    ld bc, $0100                                  ; $4E7A: $01 $00 $01
    call c, $DA00                                 ; $4E7D: $DC $00 $DA
    call c, $DE00                                 ; $4E80: $DC $00 $DE
    ld bc, $E300                                  ; $4E83: $01 $00 $E3
    nop                                           ; $4E86: $00
    nop                                           ; $4E87: $00
    nop                                           ; $4E88: $00
    nop                                           ; $4E89: $00
    nop                                           ; $4E8A: $00
    inc bc                                        ; $4E8B: $03
    nop                                           ; $4E8C: $00
    nop                                           ; $4E8D: $00
    dec b                                         ; $4E8E: $05
    ld bc, $0000                                  ; $4E8F: $01 $00 $00
    ld [bc], a                                    ; $4E92: $02
    nop                                           ; $4E93: $00
    nop                                           ; $4E94: $00
    ld b, $FE                                     ; $4E95: $06 $FE
    adc b                                         ; $4E97: $88
    nop                                           ; $4E98: $00
    cp c                                          ; $4E99: $B9
    jp nz, $9500                                  ; $4E9A: $C2 $00 $95

    ld b, a                                       ; $4E9D: $47
    nop                                           ; $4E9E: $00
    cpl                                           ; $4E9F: $2F
    jr z, jr_038_4EA2                             ; $4EA0: $28 $00

jr_038_4EA2:
    inc sp                                        ; $4EA2: $33
    inc l                                         ; $4EA3: $2C
    nop                                           ; $4EA4: $00
    ld [hl], $42                                  ; $4EA5: $36 $42
    nop                                           ; $4EA7: $00
    ld bc, $00A1                                  ; $4EA8: $01 $A1 $00
    jp nz, Jump_000_0095                          ; $4EAB: $C2 $95 $00

    ld [hl], $3F                                  ; $4EAE: $36 $3F
    nop                                           ; $4EB0: $00
    ld l, b                                       ; $4EB1: $68
    ld bc, $2D00                                  ; $4EB2: $01 $00 $2D
    jr z, jr_038_4EB7                             ; $4EB5: $28 $00

jr_038_4EB7:
    ld b, b                                       ; $4EB7: $40
    ld h, [hl]                                    ; $4EB8: $66
    nop                                           ; $4EB9: $00
    jr z, jr_038_4EE7                             ; $4EBA: $28 $2B

    nop                                           ; $4EBC: $00
    ld l, b                                       ; $4EBD: $68
    ld bc, $5300                                  ; $4EBE: $01 $00 $53
    dec l                                         ; $4EC1: $2D
    nop                                           ; $4EC2: $00
    ld b, h                                       ; $4EC3: $44
    ld l, a                                       ; $4EC4: $6F
    nop                                           ; $4EC5: $00
    ld l, [hl]                                    ; $4EC6: $6E
    ld a, [hl+]                                   ; $4EC7: $2A
    nop                                           ; $4EC8: $00
    ld b, e                                       ; $4EC9: $43
    scf                                           ; $4ECA: $37
    nop                                           ; $4ECB: $00
    ret                                           ; $4ECC: $C9


    nop                                           ; $4ECD: $00
    nop                                           ; $4ECE: $00
    inc bc                                        ; $4ECF: $03
    nop                                           ; $4ED0: $00
    nop                                           ; $4ED1: $00
    inc bc                                        ; $4ED2: $03
    and [hl]                                      ; $4ED3: $A6
    nop                                           ; $4ED4: $00
    halt                                          ; $4ED5: $76
    adc c                                         ; $4ED6: $89
    nop                                           ; $4ED7: $00
    sub l                                         ; $4ED8: $95
    or e                                          ; $4ED9: $B3
    nop                                           ; $4EDA: $00
    halt                                          ; $4EDB: $76
    sbc d                                         ; $4EDC: $9A
    nop                                           ; $4EDD: $00
    ld c, [hl]                                    ; $4EDE: $4E
    nop                                           ; $4EDF: $00
    nop                                           ; $4EE0: $00
    nop                                           ; $4EE1: $00
    nop                                           ; $4EE2: $00
    nop                                           ; $4EE3: $00
    inc bc                                        ; $4EE4: $03
    ret nc                                        ; $4EE5: $D0

    nop                                           ; $4EE6: $00

jr_038_4EE7:
    sub d                                         ; $4EE7: $92
    halt                                          ; $4EE8: $76
    nop                                           ; $4EE9: $00
    sub c                                         ; $4EEA: $91
    halt                                          ; $4EEB: $76
    nop                                           ; $4EEC: $00
    pop de                                        ; $4EED: $D1
    ld c, d                                       ; $4EEE: $4A
    nop                                           ; $4EEF: $00
    ld bc, $0000                                  ; $4EF0: $01 $00 $00
    nop                                           ; $4EF3: $00
    ld d, c                                       ; $4EF4: $51
    nop                                           ; $4EF5: $00
    ld l, a                                       ; $4EF6: $6F
    ld [hl], $00                                  ; $4EF7: $36 $00
    ld l, a                                       ; $4EF9: $6F
    scf                                           ; $4EFA: $37
    nop                                           ; $4EFB: $00
    ld l, d                                       ; $4EFC: $6A
    ret                                           ; $4EFD: $C9


    nop                                           ; $4EFE: $00
    ld bc, $0000                                  ; $4EFF: $01 $00 $00
    nop                                           ; $4F02: $00
    nop                                           ; $4F03: $00
    nop                                           ; $4F04: $00
    inc bc                                        ; $4F05: $03
    nop                                           ; $4F06: $00
    nop                                           ; $4F07: $00
    inc b                                         ; $4F08: $04
    ld bc, $0000                                  ; $4F09: $01 $00 $00
    dec b                                         ; $4F0C: $05
    ld bc, $0000                                  ; $4F0D: $01 $00 $00
    ld [bc], a                                    ; $4F10: $02
    nop                                           ; $4F11: $00
    nop                                           ; $4F12: $00
    ld [bc], a                                    ; $4F13: $02
    nop                                           ; $4F14: $00
    nop                                           ; $4F15: $00
    ld [bc], a                                    ; $4F16: $02
    nop                                           ; $4F17: $00
    nop                                           ; $4F18: $00
    ld b, $FE                                     ; $4F19: $06 $FE
    ld c, a                                       ; $4F1B: $4F
    nop                                           ; $4F1C: $00
    ld [hl], b                                    ; $4F1D: $70
    dec [hl]                                      ; $4F1E: $35
    nop                                           ; $4F1F: $00
    ld b, c                                       ; $4F20: $41
    ld l, l                                       ; $4F21: $6D
    nop                                           ; $4F22: $00
    ld a, [hl-]                                   ; $4F23: $3A
    nop                                           ; $4F24: $00
    nop                                           ; $4F25: $00
    nop                                           ; $4F26: $00
    nop                                           ; $4F27: $00
    nop                                           ; $4F28: $00
    inc bc                                        ; $4F29: $03
    ld bc, $AA00                                  ; $4F2A: $01 $00 $AA
    jp nz, $8800                                  ; $4F2D: $C2 $00 $88

    pop bc                                        ; $4F30: $C1
    nop                                           ; $4F31: $00
    add h                                         ; $4F32: $84
    add a                                         ; $4F33: $87
    nop                                           ; $4F34: $00
    pop bc                                        ; $4F35: $C1
    sbc d                                         ; $4F36: $9A
    nop                                           ; $4F37: $00
    ld bc, $0000                                  ; $4F38: $01 $00 $00
    nop                                           ; $4F3B: $00
    ld bc, $0100                                  ; $4F3C: $01 $00 $01
    call c, $DA00                                 ; $4F3F: $DC $00 $DA
    ld bc, $E300                                  ; $4F42: $01 $00 $E3
    nop                                           ; $4F45: $00
    nop                                           ; $4F46: $00
    nop                                           ; $4F47: $00
    nop                                           ; $4F48: $00
    nop                                           ; $4F49: $00
    inc bc                                        ; $4F4A: $03
    nop                                           ; $4F4B: $00
    nop                                           ; $4F4C: $00
    dec b                                         ; $4F4D: $05
    ld bc, $0000                                  ; $4F4E: $01 $00 $00
    ld [bc], a                                    ; $4F51: $02
    nop                                           ; $4F52: $00
    nop                                           ; $4F53: $00
    ld b, $FE                                     ; $4F54: $06 $FE
    jr z, jr_038_4F58                             ; $4F56: $28 $00

jr_038_4F58:
    ld [hl], $6C                                  ; $4F58: $36 $6C
    nop                                           ; $4F5A: $00
    ld h, $36                                     ; $4F5B: $26 $36
    nop                                           ; $4F5D: $00
    ld b, a                                       ; $4F5E: $47
    ld bc, $3700                                  ; $4F5F: $01 $00 $37
    ld c, c                                       ; $4F62: $49
    nop                                           ; $4F63: $00
    ld l, [hl]                                    ; $4F64: $6E
    ld l, $00                                     ; $4F65: $2E $00
    ld [hl], b                                    ; $4F67: $70
    ld [hl], b                                    ; $4F68: $70
    nop                                           ; $4F69: $00
    ld b, d                                       ; $4F6A: $42
    ld bc, $2F00                                  ; $4F6B: $01 $00 $2F
    jr z, jr_038_4F70                             ; $4F6E: $28 $00

jr_038_4F70:
    inc sp                                        ; $4F70: $33
    inc l                                         ; $4F71: $2C
    nop                                           ; $4F72: $00
    ret                                           ; $4F73: $C9


    nop                                           ; $4F74: $00
    nop                                           ; $4F75: $00
    nop                                           ; $4F76: $00
    nop                                           ; $4F77: $00
    nop                                           ; $4F78: $00
    inc bc                                        ; $4F79: $03
    nop                                           ; $4F7A: $00
    nop                                           ; $4F7B: $00
    inc bc                                        ; $4F7C: $03
    ld bc, $A200                                  ; $4F7D: $01 $00 $A2
    jp $C100                                      ; $4F80: $C3 $00 $C1


    sub l                                         ; $4F83: $95
    nop                                           ; $4F84: $00
    or c                                          ; $4F85: $B1
    ld a, b                                       ; $4F86: $78
    nop                                           ; $4F87: $00
    cp [hl]                                       ; $4F88: $BE
    halt                                          ; $4F89: $76
    nop                                           ; $4F8A: $00
    ld bc, $0000                                  ; $4F8B: $01 $00 $00
    nop                                           ; $4F8E: $00
    ld bc, $0100                                  ; $4F8F: $01 $00 $01
    call c, $DE00                                 ; $4F92: $DC $00 $DE
    ld bc, $E300                                  ; $4F95: $01 $00 $E3
    nop                                           ; $4F98: $00
    nop                                           ; $4F99: $00
    nop                                           ; $4F9A: $00
    nop                                           ; $4F9B: $00
    nop                                           ; $4F9C: $00
    inc bc                                        ; $4F9D: $03
    nop                                           ; $4F9E: $00
    nop                                           ; $4F9F: $00
    dec b                                         ; $4FA0: $05
    ld bc, $0000                                  ; $4FA1: $01 $00 $00
    ld [bc], a                                    ; $4FA4: $02
    nop                                           ; $4FA5: $00
    nop                                           ; $4FA6: $00
    ld b, $FE                                     ; $4FA7: $06 $FE
    cpl                                           ; $4FA9: $2F
    nop                                           ; $4FAA: $00
    jr z, @+$3B                                   ; $4FAB: $28 $39

    nop                                           ; $4FAD: $00
    dec l                                         ; $4FAE: $2D
    ld b, a                                       ; $4FAF: $47
    nop                                           ; $4FB0: $00
    ld bc, $0026                                  ; $4FB1: $01 $26 $00
    daa                                           ; $4FB4: $27
    ld b, d                                       ; $4FB5: $42
    nop                                           ; $4FB6: $00
    ld c, d                                       ; $4FB7: $4A
    ld e, a                                       ; $4FB8: $5F
    nop                                           ; $4FB9: $00
    dec hl                                        ; $4FBA: $2B
    ld [hl], b                                    ; $4FBB: $70
    nop                                           ; $4FBC: $00
    ld b, d                                       ; $4FBD: $42
    ld bc, $4300                                  ; $4FBE: $01 $00 $43
    ld [hl], b                                    ; $4FC1: $70
    nop                                           ; $4FC2: $00
    ld [hl], $6F                                  ; $4FC3: $36 $6F
    nop                                           ; $4FC5: $00
    scf                                           ; $4FC6: $37
    ld l, d                                       ; $4FC7: $6A
    nop                                           ; $4FC8: $00
    ret                                           ; $4FC9: $C9


    nop                                           ; $4FCA: $00
    nop                                           ; $4FCB: $00
    nop                                           ; $4FCC: $00
    nop                                           ; $4FCD: $00
    nop                                           ; $4FCE: $00
    inc bc                                        ; $4FCF: $03
    nop                                           ; $4FD0: $00
    nop                                           ; $4FD1: $00
    inc bc                                        ; $4FD2: $03
    ld bc, $8700                                  ; $4FD3: $01 $00 $87
    xor h                                         ; $4FD6: $AC
    nop                                           ; $4FD7: $00
    cp d                                          ; $4FD8: $BA
    ld a, c                                       ; $4FD9: $79
    nop                                           ; $4FDA: $00
    adc [hl]                                      ; $4FDB: $8E
    adc c                                         ; $4FDC: $89
    nop                                           ; $4FDD: $00
    cp h                                          ; $4FDE: $BC
    halt                                          ; $4FDF: $76
    nop                                           ; $4FE0: $00
    ld bc, $0000                                  ; $4FE1: $01 $00 $00
    nop                                           ; $4FE4: $00
    ld bc, $DA00                                  ; $4FE5: $01 $00 $DA
    call c, $DA00                                 ; $4FE8: $DC $00 $DA
    ld bc, $E300                                  ; $4FEB: $01 $00 $E3
    nop                                           ; $4FEE: $00
    nop                                           ; $4FEF: $00
    nop                                           ; $4FF0: $00
    nop                                           ; $4FF1: $00
    nop                                           ; $4FF2: $00
    inc bc                                        ; $4FF3: $03
    nop                                           ; $4FF4: $00
    nop                                           ; $4FF5: $00
    dec b                                         ; $4FF6: $05
    ld bc, $0000                                  ; $4FF7: $01 $00 $00
    ld [bc], a                                    ; $4FFA: $02
    nop                                           ; $4FFB: $00
    nop                                           ; $4FFC: $00
    ld b, $FE                                     ; $4FFD: $06 $FE
    daa                                           ; $4FFF: $27
    nop                                           ; $5000: $00
    inc l                                         ; $5001: $2C
    ld c, c                                       ; $5002: $49
    nop                                           ; $5003: $00
    ld l, c                                       ; $5004: $69
    ld bc, $4300                                  ; $5005: $01 $00 $43
    ld d, h                                       ; $5008: $54
    nop                                           ; $5009: $00
    ld b, c                                       ; $500A: $41
    daa                                           ; $500B: $27
    nop                                           ; $500C: $00
    ld b, d                                       ; $500D: $42
    ld bc, $4900                                  ; $500E: $01 $00 $49
    inc sp                                        ; $5011: $33
    nop                                           ; $5012: $00
    ld b, e                                       ; $5013: $43
    ld d, e                                       ; $5014: $53
    nop                                           ; $5015: $00
    scf                                           ; $5016: $37
    ret                                           ; $5017: $C9


    nop                                           ; $5018: $00
    ld bc, $0000                                  ; $5019: $01 $00 $00
    nop                                           ; $501C: $00
    nop                                           ; $501D: $00
    nop                                           ; $501E: $00
    inc bc                                        ; $501F: $03
    nop                                           ; $5020: $00
    nop                                           ; $5021: $00
    inc bc                                        ; $5022: $03
    ld bc, $8700                                  ; $5023: $01 $00 $87
    xor h                                         ; $5026: $AC
    nop                                           ; $5027: $00
    cp d                                          ; $5028: $BA
    ld a, c                                       ; $5029: $79
    nop                                           ; $502A: $00
    adc [hl]                                      ; $502B: $8E
    ld a, b                                       ; $502C: $78
    nop                                           ; $502D: $00
    sub c                                         ; $502E: $91
    jp nz, Jump_038_7F00                          ; $502F: $C2 $00 $7F

    nop                                           ; $5032: $00
    nop                                           ; $5033: $00
    nop                                           ; $5034: $00
    ld bc, $DA00                                  ; $5035: $01 $00 $DA
    call c, $DA00                                 ; $5038: $DC $00 $DA
    ld bc, $E200                                  ; $503B: $01 $00 $E2
    nop                                           ; $503E: $00
    nop                                           ; $503F: $00
    nop                                           ; $5040: $00
    nop                                           ; $5041: $00
    nop                                           ; $5042: $00
    inc bc                                        ; $5043: $03
    nop                                           ; $5044: $00
    nop                                           ; $5045: $00
    dec b                                         ; $5046: $05
    ld bc, $0000                                  ; $5047: $01 $00 $00
    ld [bc], a                                    ; $504A: $02
    nop                                           ; $504B: $00
    nop                                           ; $504C: $00
    ld b, $FE                                     ; $504D: $06 $FE
    daa                                           ; $504F: $27
    nop                                           ; $5050: $00
    inc l                                         ; $5051: $2C
    ld c, c                                       ; $5052: $49
    nop                                           ; $5053: $00
    ld l, c                                       ; $5054: $69
    ld bc, $4300                                  ; $5055: $01 $00 $43
    ld d, h                                       ; $5058: $54
    nop                                           ; $5059: $00
    ld b, c                                       ; $505A: $41
    daa                                           ; $505B: $27
    nop                                           ; $505C: $00
    ld b, d                                       ; $505D: $42
    ld bc, $2F00                                  ; $505E: $01 $00 $2F
    jr z, jr_038_5063                             ; $5061: $28 $00

jr_038_5063:
    inc sp                                        ; $5063: $33
    inc l                                         ; $5064: $2C
    nop                                           ; $5065: $00
    scf                                           ; $5066: $37
    ld l, d                                       ; $5067: $6A
    nop                                           ; $5068: $00
    ret                                           ; $5069: $C9


    nop                                           ; $506A: $00
    nop                                           ; $506B: $00
    nop                                           ; $506C: $00
    nop                                           ; $506D: $00
    nop                                           ; $506E: $00
    inc bc                                        ; $506F: $03
    nop                                           ; $5070: $00
    nop                                           ; $5071: $00
    inc bc                                        ; $5072: $03
    add l                                         ; $5073: $85
    nop                                           ; $5074: $00
    ld a, [hl]                                    ; $5075: $7E
    ld c, a                                       ; $5076: $4F
    nop                                           ; $5077: $00
    ld [hl], b                                    ; $5078: $70
    dec [hl]                                      ; $5079: $35
    nop                                           ; $507A: $00
    ld b, c                                       ; $507B: $41
    ld l, l                                       ; $507C: $6D
    nop                                           ; $507D: $00
    ld a, [hl-]                                   ; $507E: $3A
    nop                                           ; $507F: $00
    nop                                           ; $5080: $00
    nop                                           ; $5081: $00
    nop                                           ; $5082: $00
    nop                                           ; $5083: $00
    inc bc                                        ; $5084: $03
    ld bc, $9900                                  ; $5085: $01 $00 $99
    cp h                                          ; $5088: $BC
    nop                                           ; $5089: $00
    sub c                                         ; $508A: $91
    ld a, e                                       ; $508B: $7B
    nop                                           ; $508C: $00
    pop bc                                        ; $508D: $C1
    sbc d                                         ; $508E: $9A
    nop                                           ; $508F: $00
    ld bc, $0000                                  ; $5090: $01 $00 $00
    nop                                           ; $5093: $00
    ld bc, $0100                                  ; $5094: $01 $00 $01
    call c, $DA00                                 ; $5097: $DC $00 $DA
    call c, $DE00                                 ; $509A: $DC $00 $DE
    ld bc, $E300                                  ; $509D: $01 $00 $E3
    nop                                           ; $50A0: $00
    nop                                           ; $50A1: $00
    nop                                           ; $50A2: $00
    nop                                           ; $50A3: $00
    nop                                           ; $50A4: $00
    inc bc                                        ; $50A5: $03
    nop                                           ; $50A6: $00
    nop                                           ; $50A7: $00
    dec b                                         ; $50A8: $05
    ld bc, $0000                                  ; $50A9: $01 $00 $00
    ld [bc], a                                    ; $50AC: $02
    nop                                           ; $50AD: $00
    nop                                           ; $50AE: $00
    ld b, $FE                                     ; $50AF: $06 $FE
    ld b, e                                       ; $50B1: $43
    nop                                           ; $50B2: $00
    ld [hl], b                                    ; $50B3: $70
    ld [hl], $00                                  ; $50B4: $36 $00
    ld l, a                                       ; $50B6: $6F
    ld [hl], $00                                  ; $50B7: $36 $00
    ld b, d                                       ; $50B9: $42
    ld bc, $A100                                  ; $50BA: $01 $00 $A1
    jp nz, $9500                                  ; $50BD: $C2 $00 $95

    ld [hl], $00                                  ; $50C0: $36 $00
    ccf                                           ; $50C2: $3F
    ld l, b                                       ; $50C3: $68
    nop                                           ; $50C4: $00
    ld bc, $0035                                  ; $50C5: $01 $35 $00
    ld l, a                                       ; $50C8: $6F
    dec hl                                        ; $50C9: $2B
    nop                                           ; $50CA: $00
    dec l                                         ; $50CB: $2D
    ld l, $00                                     ; $50CC: $2E $00
    daa                                           ; $50CE: $27
    ld l, [hl]                                    ; $50CF: $6E
    nop                                           ; $50D0: $00
    ld bc, $0029                                  ; $50D1: $01 $29 $00
    jr nc, jr_038_5103                            ; $50D4: $30 $2D

    nop                                           ; $50D6: $00
    ld h, h                                       ; $50D7: $64
    jr z, jr_038_50DA                             ; $50D8: $28 $00

jr_038_50DA:
    ld c, d                                       ; $50DA: $4A
    ld bc, $2F00                                  ; $50DB: $01 $00 $2F
    jr z, jr_038_50E0                             ; $50DE: $28 $00

jr_038_50E0:
    inc sp                                        ; $50E0: $33
    inc l                                         ; $50E1: $2C
    nop                                           ; $50E2: $00
    scf                                           ; $50E3: $37
    ld l, d                                       ; $50E4: $6A
    nop                                           ; $50E5: $00
    ret                                           ; $50E6: $C9


    nop                                           ; $50E7: $00
    nop                                           ; $50E8: $00
    inc bc                                        ; $50E9: $03
    nop                                           ; $50EA: $00
    nop                                           ; $50EB: $00
    inc bc                                        ; $50EC: $03
    nop                                           ; $50ED: $00
    nop                                           ; $50EE: $00
    inc bc                                        ; $50EF: $03
    add a                                         ; $50F0: $87
    nop                                           ; $50F1: $00
    ld a, c                                       ; $50F2: $79
    and l                                         ; $50F3: $A5
    nop                                           ; $50F4: $00
    sub l                                         ; $50F5: $95
    cp [hl]                                       ; $50F6: $BE
    nop                                           ; $50F7: $00
    pop bc                                        ; $50F8: $C1
    ld c, l                                       ; $50F9: $4D
    nop                                           ; $50FA: $00
    ld [hl], $6B                                  ; $50FB: $36 $6B
    nop                                           ; $50FD: $00
    daa                                           ; $50FE: $27
    dec hl                                        ; $50FF: $2B
    nop                                           ; $5100: $00
    ld l, a                                       ; $5101: $6F
    ld c, d                                       ; $5102: $4A

jr_038_5103:
    nop                                           ; $5103: $00
    ld c, c                                       ; $5104: $49
    ld l, c                                       ; $5105: $69
    nop                                           ; $5106: $00
    ccf                                           ; $5107: $3F
    dec l                                         ; $5108: $2D
    nop                                           ; $5109: $00
    ld b, d                                       ; $510A: $42
    ld bc, $3F00                                  ; $510B: $01 $00 $3F
    ccf                                           ; $510E: $3F
    nop                                           ; $510F: $00
    dec hl                                        ; $5110: $2B
    jr z, jr_038_5113                             ; $5111: $28 $00

jr_038_5113:
    ret                                           ; $5113: $C9


    nop                                           ; $5114: $00
    nop                                           ; $5115: $00
    inc bc                                        ; $5116: $03
    nop                                           ; $5117: $00
    nop                                           ; $5118: $00
    dec b                                         ; $5119: $05
    ld bc, $0000                                  ; $511A: $01 $00 $00
    ld [bc], a                                    ; $511D: $02
    nop                                           ; $511E: $00
    nop                                           ; $511F: $00
    ld [bc], a                                    ; $5120: $02
    nop                                           ; $5121: $00
    nop                                           ; $5122: $00
    ld [bc], a                                    ; $5123: $02
    nop                                           ; $5124: $00
    nop                                           ; $5125: $00
    dec b                                         ; $5126: $05
    add b                                         ; $5127: $80
    nop                                           ; $5128: $00
    nop                                           ; $5129: $00
    ld [bc], a                                    ; $512A: $02
    nop                                           ; $512B: $00
    nop                                           ; $512C: $00
    ld bc, $5124                                  ; $512D: $01 $24 $51
    ld e, l                                       ; $5130: $5D
    ld [hl+], a                                   ; $5131: $22
    ld e, [hl]                                    ; $5132: $5E
    ld e, a                                       ; $5133: $5F
    ld [hl+], a                                   ; $5134: $22
    ld h, b                                       ; $5135: $60
    ld e, e                                       ; $5136: $5B
    db $10                                        ; $5137: $10
    ld bc, $0092                                  ; $5138: $01 $92 $00
    halt                                          ; $513B: $76
    sub c                                         ; $513C: $91
    nop                                           ; $513D: $00
    adc c                                         ; $513E: $89
    nop                                           ; $513F: $00
    nop                                           ; $5140: $00
    nop                                           ; $5141: $00
    nop                                           ; $5142: $00
    nop                                           ; $5143: $00
    inc bc                                        ; $5144: $03
    ld l, e                                       ; $5145: $6B
    db $10                                        ; $5146: $10
    ld c, l                                       ; $5147: $4D
    ld d, b                                       ; $5148: $50
    ld de, $7B51                                  ; $5149: $11 $51 $7B
    nop                                           ; $514C: $00
    sbc [hl]                                      ; $514D: $9E
    cp h                                          ; $514E: $BC
    nop                                           ; $514F: $00
    add [hl]                                      ; $5150: $86
    ld a, b                                       ; $5151: $78
    nop                                           ; $5152: $00
    ld b, a                                       ; $5153: $47
    ld h, d                                       ; $5154: $62
    db $10                                        ; $5155: $10
    jr z, @-$77                                   ; $5156: $28 $87

    nop                                           ; $5158: $00
    ld a, c                                       ; $5159: $79
    and l                                         ; $515A: $A5
    nop                                           ; $515B: $00
    sub l                                         ; $515C: $95
    cp [hl]                                       ; $515D: $BE
    nop                                           ; $515E: $00
    pop bc                                        ; $515F: $C1
    ld c, l                                       ; $5160: $4D
    ld bc, $6462                                  ; $5161: $01 $62 $64
    db $10                                        ; $5164: $10
    ret                                           ; $5165: $C9


    nop                                           ; $5166: $00
    nop                                           ; $5167: $00
    nop                                           ; $5168: $00
    nop                                           ; $5169: $00
    nop                                           ; $516A: $00
    inc bc                                        ; $516B: $03
    adc c                                         ; $516C: $89
    nop                                           ; $516D: $00
    xor e                                         ; $516E: $AB
    halt                                          ; $516F: $76
    nop                                           ; $5170: $00
    sbc d                                         ; $5171: $9A
    ld c, c                                       ; $5172: $49
    nop                                           ; $5173: $00
    ld l, b                                       ; $5174: $68
    ret z                                         ; $5175: $C8

    nop                                           ; $5176: $00
    ld b, h                                       ; $5177: $44
    ld l, e                                       ; $5178: $6B
    nop                                           ; $5179: $00
    ld c, d                                       ; $517A: $4A
    ld h, c                                       ; $517B: $61
    nop                                           ; $517C: $00
    ld bc, $1046                                  ; $517D: $01 $46 $10
    ld l, $49                                     ; $5180: $2E $49
    nop                                           ; $5182: $00
    daa                                           ; $5183: $27
    ret                                           ; $5184: $C9


    nop                                           ; $5185: $00
    ld bc, $0000                                  ; $5186: $01 $00 $00
    nop                                           ; $5189: $00
    nop                                           ; $518A: $00
    nop                                           ; $518B: $00
    inc bc                                        ; $518C: $03
    ld b, b                                       ; $518D: $40
    ld de, $4241                                  ; $518E: $11 $41 $42
    db $10                                        ; $5191: $10
    ld bc, $0000                                  ; $5192: $01 $00 $00
    nop                                           ; $5195: $00
    nop                                           ; $5196: $00
    nop                                           ; $5197: $00
    inc bc                                        ; $5198: $03
    ld bc, $8900                                  ; $5199: $01 $00 $89
    sbc e                                         ; $519C: $9B
    nop                                           ; $519D: $00
    ld a, c                                       ; $519E: $79
    xor d                                         ; $519F: $AA
    nop                                           ; $51A0: $00
    halt                                          ; $51A1: $76
    adc b                                         ; $51A2: $88
    nop                                           ; $51A3: $00
    cp c                                          ; $51A4: $B9
    jp nz, $9500                                  ; $51A5: $C2 $00 $95

    ld [$0100], a                                 ; $51A8: $EA $00 $01
    ld bc, $0100                                  ; $51AB: $01 $00 $01
    call c, $DA00                                 ; $51AE: $DC $00 $DA
    ld bc, $E300                                  ; $51B1: $01 $00 $E3
    nop                                           ; $51B4: $00
    nop                                           ; $51B5: $00
    nop                                           ; $51B6: $00
    nop                                           ; $51B7: $00
    nop                                           ; $51B8: $00
    inc bc                                        ; $51B9: $03
    nop                                           ; $51BA: $00
    nop                                           ; $51BB: $00
    dec b                                         ; $51BC: $05
    ld bc, $0000                                  ; $51BD: $01 $00 $00
    ld [bc], a                                    ; $51C0: $02
    nop                                           ; $51C1: $00
    nop                                           ; $51C2: $00
    ld b, $FE                                     ; $51C3: $06 $FE
    adc c                                         ; $51C5: $89
    db $10                                        ; $51C6: $10
    ld c, d                                       ; $51C7: $4A
    sub e                                         ; $51C8: $93
    db $10                                        ; $51C9: $10
    ld l, $42                                     ; $51CA: $2E $42
    nop                                           ; $51CC: $00
    ld bc, $0088                                  ; $51CD: $01 $88 $00
    cp c                                          ; $51D0: $B9
    jp nz, $9500                                  ; $51D1: $C2 $00 $95

    ld l, [hl]                                    ; $51D4: $6E
    nop                                           ; $51D5: $00
    jr z, jr_038_5219                             ; $51D6: $28 $41

    nop                                           ; $51D8: $00
    ret                                           ; $51D9: $C9


    nop                                           ; $51DA: $00
    nop                                           ; $51DB: $00
    nop                                           ; $51DC: $00
    nop                                           ; $51DD: $00
    nop                                           ; $51DE: $00
    inc bc                                        ; $51DF: $03
    nop                                           ; $51E0: $00
    nop                                           ; $51E1: $00
    inc bc                                        ; $51E2: $03
    ld bc, $8900                                  ; $51E3: $01 $00 $89
    sbc e                                         ; $51E6: $9B
    nop                                           ; $51E7: $00
    ld a, c                                       ; $51E8: $79
    xor d                                         ; $51E9: $AA
    nop                                           ; $51EA: $00
    halt                                          ; $51EB: $76
    adc b                                         ; $51EC: $88
    nop                                           ; $51ED: $00
    cp c                                          ; $51EE: $B9
    jp nz, $9500                                  ; $51EF: $C2 $00 $95

    jp hl                                         ; $51F2: $E9


    nop                                           ; $51F3: $00
    ld bc, $0001                                  ; $51F4: $01 $01 $00
    ld bc, $00DC                                  ; $51F7: $01 $DC $00
    sbc $01                                       ; $51FA: $DE $01
    nop                                           ; $51FC: $00
    db $E3                                        ; $51FD: $E3
    nop                                           ; $51FE: $00
    nop                                           ; $51FF: $00
    nop                                           ; $5200: $00
    nop                                           ; $5201: $00
    nop                                           ; $5202: $00
    inc bc                                        ; $5203: $03
    nop                                           ; $5204: $00
    nop                                           ; $5205: $00
    dec b                                         ; $5206: $05
    ld bc, $0000                                  ; $5207: $01 $00 $00
    ld [bc], a                                    ; $520A: $02
    nop                                           ; $520B: $00
    nop                                           ; $520C: $00
    ld b, $FE                                     ; $520D: $06 $FE
    ld a, [de]                                    ; $520F: $1A
    jr nz, jr_038_5272                            ; $5210: $20 $60

    adc d                                         ; $5212: $8A
    db $10                                        ; $5213: $10
    ld c, d                                       ; $5214: $4A
    sub e                                         ; $5215: $93
    db $10                                        ; $5216: $10
    ld l, $42                                     ; $5217: $2E $42

jr_038_5219:
    nop                                           ; $5219: $00
    ld bc, $0088                                  ; $521A: $01 $88 $00
    cp c                                          ; $521D: $B9
    jp nz, $9500                                  ; $521E: $C2 $00 $95

    ld l, [hl]                                    ; $5221: $6E
    nop                                           ; $5222: $00
    jr z, jr_038_5266                             ; $5223: $28 $41

    nop                                           ; $5225: $00
    ret                                           ; $5226: $C9


    nop                                           ; $5227: $00
    nop                                           ; $5228: $00
    nop                                           ; $5229: $00
    nop                                           ; $522A: $00
    nop                                           ; $522B: $00
    inc bc                                        ; $522C: $03
    nop                                           ; $522D: $00
    nop                                           ; $522E: $00
    inc bc                                        ; $522F: $03
    ld bc, $8900                                  ; $5230: $01 $00 $89
    sbc e                                         ; $5233: $9B
    nop                                           ; $5234: $00
    ld a, c                                       ; $5235: $79
    xor d                                         ; $5236: $AA
    nop                                           ; $5237: $00
    halt                                          ; $5238: $76
    adc b                                         ; $5239: $88
    nop                                           ; $523A: $00
    cp c                                          ; $523B: $B9
    jp nz, $9500                                  ; $523C: $C2 $00 $95

    db $EB                                        ; $523F: $EB
    nop                                           ; $5240: $00
    ld bc, $0001                                  ; $5241: $01 $01 $00
    ld bc, $008D                                  ; $5244: $01 $8D $00
    or a                                          ; $5247: $B7
    pop bc                                        ; $5248: $C1
    nop                                           ; $5249: $00
    xor h                                         ; $524A: $AC
    ld bc, $DC00                                  ; $524B: $01 $00 $DC
    jp c, Boot                                    ; $524E: $DA $00 $01

    db $E3                                        ; $5251: $E3
    nop                                           ; $5252: $00
    ld bc, $0000                                  ; $5253: $01 $00 $00
    inc bc                                        ; $5256: $03
    nop                                           ; $5257: $00
    nop                                           ; $5258: $00
    dec b                                         ; $5259: $05
    ld bc, $0000                                  ; $525A: $01 $00 $00
    ld [bc], a                                    ; $525D: $02
    nop                                           ; $525E: $00
    nop                                           ; $525F: $00
    ld b, $FE                                     ; $5260: $06 $FE
    dec [hl]                                      ; $5262: $35
    ld hl, $4758                                  ; $5263: $21 $58 $47

jr_038_5266:
    nop                                           ; $5266: $00
    ld bc, $201A                                  ; $5267: $01 $1A $20
    ld h, b                                       ; $526A: $60
    dec c                                         ; $526B: $0D
    db $10                                        ; $526C: $10
    ld c, d                                       ; $526D: $4A
    sub e                                         ; $526E: $93
    db $10                                        ; $526F: $10
    ld l, $42                                     ; $5270: $2E $42

jr_038_5272:
    nop                                           ; $5272: $00
    ld bc, $0088                                  ; $5273: $01 $88 $00
    cp c                                          ; $5276: $B9
    jp nz, $9500                                  ; $5277: $C2 $00 $95

    ld l, [hl]                                    ; $527A: $6E
    nop                                           ; $527B: $00
    jr z, jr_038_52BF                             ; $527C: $28 $41

    nop                                           ; $527E: $00
    ret                                           ; $527F: $C9


    nop                                           ; $5280: $00
    nop                                           ; $5281: $00
    nop                                           ; $5282: $00
    nop                                           ; $5283: $00
    nop                                           ; $5284: $00
    inc bc                                        ; $5285: $03
    nop                                           ; $5286: $00
    nop                                           ; $5287: $00
    inc bc                                        ; $5288: $03
    ld bc, $BE00                                  ; $5289: $01 $00 $BE
    halt                                          ; $528C: $76
    nop                                           ; $528D: $00
    cp e                                          ; $528E: $BB
    pop bc                                        ; $528F: $C1
    nop                                           ; $5290: $00
    add h                                         ; $5291: $84
    ld a, b                                       ; $5292: $78
    nop                                           ; $5293: $00
    add a                                         ; $5294: $87
    cp h                                          ; $5295: $BC
    nop                                           ; $5296: $00
    sub l                                         ; $5297: $95
    nop                                           ; $5298: $00
    nop                                           ; $5299: $00
    nop                                           ; $529A: $00
    ld bc, $0100                                  ; $529B: $01 $00 $01
    call c, $DE00                                 ; $529E: $DC $00 $DE
    ld bc, $E200                                  ; $52A1: $01 $00 $E2
    nop                                           ; $52A4: $00
    nop                                           ; $52A5: $00
    nop                                           ; $52A6: $00
    nop                                           ; $52A7: $00
    nop                                           ; $52A8: $00
    inc bc                                        ; $52A9: $03
    nop                                           ; $52AA: $00
    nop                                           ; $52AB: $00
    dec b                                         ; $52AC: $05
    ld bc, $0000                                  ; $52AD: $01 $00 $00
    ld [bc], a                                    ; $52B0: $02
    nop                                           ; $52B1: $00
    nop                                           ; $52B2: $00
    ld b, $FE                                     ; $52B3: $06 $FE
    ld a, l                                       ; $52B5: $7D
    nop                                           ; $52B6: $00
    ld a, l                                       ; $52B7: $7D
    sub l                                         ; $52B8: $95
    ld bc, $43AB                                  ; $52B9: $01 $AB $43
    nop                                           ; $52BC: $00
    ld [hl], $47                                  ; $52BD: $36 $47

jr_038_52BF:
    nop                                           ; $52BF: $00
    ld bc, $2030                                  ; $52C0: $01 $30 $20
    ld d, h                                       ; $52C3: $54
    ld [hl], $20                                  ; $52C4: $36 $20
    ld e, a                                       ; $52C6: $5F
    adc l                                         ; $52C7: $8D
    ld de, $C98B                                  ; $52C8: $11 $8B $C9
    nop                                           ; $52CB: $00
    ld bc, $0000                                  ; $52CC: $01 $00 $00
    nop                                           ; $52CF: $00
    nop                                           ; $52D0: $00
    nop                                           ; $52D1: $00
    inc bc                                        ; $52D2: $03
    nop                                           ; $52D3: $00
    nop                                           ; $52D4: $00
    inc bc                                        ; $52D5: $03
    sbc a                                         ; $52D6: $9F
    ld hl, $4140                                  ; $52D7: $21 $40 $41
    ld de, $0042                                  ; $52DA: $11 $42 $00
    nop                                           ; $52DD: $00
    nop                                           ; $52DE: $00
    nop                                           ; $52DF: $00
    nop                                           ; $52E0: $00
    inc bc                                        ; $52E1: $03
    ld bc, $BA00                                  ; $52E2: $01 $00 $BA
    adc c                                         ; $52E5: $89
    nop                                           ; $52E6: $00
    sub l                                         ; $52E7: $95
    cp e                                          ; $52E8: $BB
    nop                                           ; $52E9: $00
    sub b                                         ; $52EA: $90
    halt                                          ; $52EB: $76
    nop                                           ; $52EC: $00
    sub l                                         ; $52ED: $95
    nop                                           ; $52EE: $00
    nop                                           ; $52EF: $00
    nop                                           ; $52F0: $00
    ld bc, $0100                                  ; $52F1: $01 $00 $01
    call c, $DA00                                 ; $52F4: $DC $00 $DA
    call c, $DE00                                 ; $52F7: $DC $00 $DE
    ld bc, $E300                                  ; $52FA: $01 $00 $E3
    nop                                           ; $52FD: $00
    nop                                           ; $52FE: $00
    nop                                           ; $52FF: $00
    nop                                           ; $5300: $00
    nop                                           ; $5301: $00
    inc bc                                        ; $5302: $03
    nop                                           ; $5303: $00
    nop                                           ; $5304: $00
    dec b                                         ; $5305: $05
    ld bc, $0000                                  ; $5306: $01 $00 $00
    ld [bc], a                                    ; $5309: $02
    nop                                           ; $530A: $00
    nop                                           ; $530B: $00
    ld b, $FE                                     ; $530C: $06 $FE
    adc b                                         ; $530E: $88
    nop                                           ; $530F: $00
    cp c                                          ; $5310: $B9
    jp nz, $9500                                  ; $5311: $C2 $00 $95

    ld b, a                                       ; $5314: $47
    ld bc, $8B8D                                  ; $5315: $01 $8D $8B
    db $10                                        ; $5318: $10
    ld [hl], $42                                  ; $5319: $36 $42
    nop                                           ; $531B: $00
    ld bc, $00A1                                  ; $531C: $01 $A1 $00
    jp nz, Jump_000_0095                          ; $531F: $C2 $95 $00

    ld [hl], $3F                                  ; $5322: $36 $3F
    nop                                           ; $5324: $00
    ld l, b                                       ; $5325: $68
    ld bc, $3502                                  ; $5326: $01 $02 $35
    ld e, b                                       ; $5329: $58
    db $10                                        ; $532A: $10
    dec hl                                        ; $532B: $2B
    ld l, b                                       ; $532C: $68
    ld [bc], a                                    ; $532D: $02
    ld d, [hl]                                    ; $532E: $56
    ld d, a                                       ; $532F: $57
    jr nz, @+$70                                  ; $5330: $20 $6E

    xor e                                         ; $5332: $AB
    db $10                                        ; $5333: $10
    ld b, e                                       ; $5334: $43
    scf                                           ; $5335: $37
    nop                                           ; $5336: $00
    ret                                           ; $5337: $C9


    nop                                           ; $5338: $00
    nop                                           ; $5339: $00
    nop                                           ; $533A: $00
    nop                                           ; $533B: $00
    nop                                           ; $533C: $00
    inc bc                                        ; $533D: $03
    nop                                           ; $533E: $00
    nop                                           ; $533F: $00
    inc bc                                        ; $5340: $03
    and [hl]                                      ; $5341: $A6
    nop                                           ; $5342: $00
    halt                                          ; $5343: $76
    adc c                                         ; $5344: $89
    nop                                           ; $5345: $00
    sub l                                         ; $5346: $95
    or e                                          ; $5347: $B3
    nop                                           ; $5348: $00
    halt                                          ; $5349: $76
    sbc d                                         ; $534A: $9A
    nop                                           ; $534B: $00
    ld c, [hl]                                    ; $534C: $4E
    nop                                           ; $534D: $00
    nop                                           ; $534E: $00
    nop                                           ; $534F: $00
    nop                                           ; $5350: $00
    nop                                           ; $5351: $00
    inc bc                                        ; $5352: $03
    ret nc                                        ; $5353: $D0

    nop                                           ; $5354: $00
    sub d                                         ; $5355: $92
    halt                                          ; $5356: $76
    nop                                           ; $5357: $00
    sub c                                         ; $5358: $91
    halt                                          ; $5359: $76
    nop                                           ; $535A: $00
    pop de                                        ; $535B: $D1
    ld c, d                                       ; $535C: $4A
    ld bc, $5352                                  ; $535D: $01 $52 $53
    db $10                                        ; $5360: $10
    scf                                           ; $5361: $37
    ld l, d                                       ; $5362: $6A
    nop                                           ; $5363: $00
    ret                                           ; $5364: $C9


    nop                                           ; $5365: $00
    nop                                           ; $5366: $00
    nop                                           ; $5367: $00
    nop                                           ; $5368: $00
    nop                                           ; $5369: $00
    inc bc                                        ; $536A: $03
    nop                                           ; $536B: $00
    nop                                           ; $536C: $00
    inc b                                         ; $536D: $04
    ld bc, $0000                                  ; $536E: $01 $00 $00
    dec b                                         ; $5371: $05
    ld bc, $0000                                  ; $5372: $01 $00 $00
    ld [bc], a                                    ; $5375: $02
    nop                                           ; $5376: $00
    nop                                           ; $5377: $00
    ld [bc], a                                    ; $5378: $02
    nop                                           ; $5379: $00
    nop                                           ; $537A: $00
    ld [bc], a                                    ; $537B: $02
    nop                                           ; $537C: $00
    nop                                           ; $537D: $00
    ld b, $FE                                     ; $537E: $06 $FE
    ld b, b                                       ; $5380: $40
    ld de, $4241                                  ; $5381: $11 $41 $42
    db $10                                        ; $5384: $10
    ld bc, $0000                                  ; $5385: $01 $00 $00
    nop                                           ; $5388: $00
    nop                                           ; $5389: $00
    nop                                           ; $538A: $00
    inc bc                                        ; $538B: $03
    ld bc, $AA00                                  ; $538C: $01 $00 $AA
    jp nz, $8800                                  ; $538F: $C2 $00 $88

    pop bc                                        ; $5392: $C1
    nop                                           ; $5393: $00
    add h                                         ; $5394: $84
    add a                                         ; $5395: $87
    nop                                           ; $5396: $00
    pop bc                                        ; $5397: $C1
    sbc d                                         ; $5398: $9A
    nop                                           ; $5399: $00
    ld bc, $0000                                  ; $539A: $01 $00 $00
    nop                                           ; $539D: $00
    ld bc, $0100                                  ; $539E: $01 $00 $01
    call c, $DA00                                 ; $53A1: $DC $00 $DA
    ld bc, $E300                                  ; $53A4: $01 $00 $E3
    nop                                           ; $53A7: $00
    nop                                           ; $53A8: $00
    nop                                           ; $53A9: $00
    nop                                           ; $53AA: $00
    nop                                           ; $53AB: $00
    inc bc                                        ; $53AC: $03
    nop                                           ; $53AD: $00
    nop                                           ; $53AE: $00
    dec b                                         ; $53AF: $05
    ld bc, $0000                                  ; $53B0: $01 $00 $00
    ld [bc], a                                    ; $53B3: $02
    nop                                           ; $53B4: $00
    nop                                           ; $53B5: $00
    ld b, $FE                                     ; $53B6: $06 $FE
    ld c, e                                       ; $53B8: $4B
    ld [de], a                                    ; $53B9: $12
    ld c, d                                       ; $53BA: $4A
    ld b, a                                       ; $53BB: $47
    ld [bc], a                                    ; $53BC: $02
    ld h, h                                       ; $53BD: $64
    ld l, [hl]                                    ; $53BE: $6E
    ld [bc], a                                    ; $53BF: $02
    ld h, l                                       ; $53C0: $65
    ld [hl], b                                    ; $53C1: $70
    nop                                           ; $53C2: $00
    ld b, d                                       ; $53C3: $42
    adc l                                         ; $53C4: $8D
    ld de, $C98B                                  ; $53C5: $11 $8B $C9
    nop                                           ; $53C8: $00
    ld bc, $0000                                  ; $53C9: $01 $00 $00
    inc bc                                        ; $53CC: $03
    nop                                           ; $53CD: $00
    nop                                           ; $53CE: $00
    inc bc                                        ; $53CF: $03
    ld bc, $A200                                  ; $53D0: $01 $00 $A2
    jp $C100                                      ; $53D3: $C3 $00 $C1


    sub l                                         ; $53D6: $95
    nop                                           ; $53D7: $00
    or c                                          ; $53D8: $B1
    ld a, b                                       ; $53D9: $78
    nop                                           ; $53DA: $00
    cp [hl]                                       ; $53DB: $BE
    halt                                          ; $53DC: $76
    nop                                           ; $53DD: $00
    ld bc, $0000                                  ; $53DE: $01 $00 $00
    nop                                           ; $53E1: $00
    ld bc, $0100                                  ; $53E2: $01 $00 $01
    call c, $DE00                                 ; $53E5: $DC $00 $DE
    ld bc, $E300                                  ; $53E8: $01 $00 $E3
    nop                                           ; $53EB: $00
    nop                                           ; $53EC: $00
    nop                                           ; $53ED: $00
    nop                                           ; $53EE: $00
    nop                                           ; $53EF: $00
    inc bc                                        ; $53F0: $03
    nop                                           ; $53F1: $00
    nop                                           ; $53F2: $00
    dec b                                         ; $53F3: $05
    ld bc, $0000                                  ; $53F4: $01 $00 $00
    ld [bc], a                                    ; $53F7: $02
    nop                                           ; $53F8: $00
    nop                                           ; $53F9: $00
    ld b, $FE                                     ; $53FA: $06 $FE
    inc b                                         ; $53FC: $04
    ld hl, $4754                                  ; $53FD: $21 $54 $47
    ld bc, $078E                                  ; $5400: $01 $8E $07
    db $10                                        ; $5403: $10
    ld c, d                                       ; $5404: $4A
    sub e                                         ; $5405: $93
    db $10                                        ; $5406: $10
    dec hl                                        ; $5407: $2B
    ld [hl], b                                    ; $5408: $70
    nop                                           ; $5409: $00
    ld b, d                                       ; $540A: $42
    ld bc, $2F02                                  ; $540B: $01 $02 $2F
    rla                                           ; $540E: $17
    jr nz, jr_038_5448                            ; $540F: $20 $37

    ld l, d                                       ; $5411: $6A
    nop                                           ; $5412: $00
    ret                                           ; $5413: $C9


    nop                                           ; $5414: $00
    nop                                           ; $5415: $00
    nop                                           ; $5416: $00
    nop                                           ; $5417: $00
    nop                                           ; $5418: $00
    inc bc                                        ; $5419: $03
    nop                                           ; $541A: $00
    nop                                           ; $541B: $00
    inc bc                                        ; $541C: $03
    ld bc, $8700                                  ; $541D: $01 $00 $87
    xor h                                         ; $5420: $AC
    nop                                           ; $5421: $00
    cp d                                          ; $5422: $BA
    ld a, c                                       ; $5423: $79
    nop                                           ; $5424: $00
    adc [hl]                                      ; $5425: $8E
    adc c                                         ; $5426: $89
    nop                                           ; $5427: $00
    cp h                                          ; $5428: $BC
    halt                                          ; $5429: $76
    nop                                           ; $542A: $00
    ld bc, $0000                                  ; $542B: $01 $00 $00
    nop                                           ; $542E: $00
    ld bc, $0100                                  ; $542F: $01 $00 $01
    jp c, $DC00                                   ; $5432: $DA $00 $DC

    jp c, Boot                                    ; $5435: $DA $00 $01

    db $E3                                        ; $5438: $E3
    nop                                           ; $5439: $00
    ld bc, $0000                                  ; $543A: $01 $00 $00
    nop                                           ; $543D: $00
    nop                                           ; $543E: $00
    nop                                           ; $543F: $00
    inc bc                                        ; $5440: $03
    nop                                           ; $5441: $00
    nop                                           ; $5442: $00
    dec b                                         ; $5443: $05
    ld bc, $0000                                  ; $5444: $01 $00 $00
    ld [bc], a                                    ; $5447: $02

jr_038_5448:
    nop                                           ; $5448: $00
    nop                                           ; $5449: $00
    ld b, $FE                                     ; $544A: $06 $FE
    daa                                           ; $544C: $27
    nop                                           ; $544D: $00
    inc l                                         ; $544E: $2C
    ld c, c                                       ; $544F: $49
    nop                                           ; $5450: $00
    ld l, c                                       ; $5451: $69
    jr nc, jr_038_5474                            ; $5452: $30 $20

    ld d, h                                       ; $5454: $54
    ld b, c                                       ; $5455: $41
    nop                                           ; $5456: $00
    daa                                           ; $5457: $27
    ld b, d                                       ; $5458: $42
    nop                                           ; $5459: $00
    ld bc, $201B                                  ; $545A: $01 $1B $20
    inc sp                                        ; $545D: $33
    ld b, e                                       ; $545E: $43
    nop                                           ; $545F: $00
    ld d, e                                       ; $5460: $53
    scf                                           ; $5461: $37
    nop                                           ; $5462: $00
    ret                                           ; $5463: $C9


    nop                                           ; $5464: $00
    nop                                           ; $5465: $00
    nop                                           ; $5466: $00
    nop                                           ; $5467: $00
    nop                                           ; $5468: $00
    inc bc                                        ; $5469: $03
    nop                                           ; $546A: $00
    nop                                           ; $546B: $00
    inc bc                                        ; $546C: $03
    ld bc, $8700                                  ; $546D: $01 $00 $87
    xor h                                         ; $5470: $AC
    nop                                           ; $5471: $00
    cp d                                          ; $5472: $BA
    ld a, c                                       ; $5473: $79

jr_038_5474:
    nop                                           ; $5474: $00
    adc [hl]                                      ; $5475: $8E
    ld a, b                                       ; $5476: $78
    nop                                           ; $5477: $00
    sub c                                         ; $5478: $91
    jp nz, Jump_038_7F00                          ; $5479: $C2 $00 $7F

    nop                                           ; $547C: $00
    nop                                           ; $547D: $00
    nop                                           ; $547E: $00
    ld bc, $0100                                  ; $547F: $01 $00 $01
    jp c, $DC00                                   ; $5482: $DA $00 $DC

    jp c, Boot                                    ; $5485: $DA $00 $01

    ldh [c], a                                    ; $5488: $E2
    nop                                           ; $5489: $00
    ld bc, $0000                                  ; $548A: $01 $00 $00
    nop                                           ; $548D: $00
    nop                                           ; $548E: $00
    nop                                           ; $548F: $00
    inc bc                                        ; $5490: $03
    nop                                           ; $5491: $00
    nop                                           ; $5492: $00
    dec b                                         ; $5493: $05
    ld bc, $0000                                  ; $5494: $01 $00 $00
    ld [bc], a                                    ; $5497: $02
    nop                                           ; $5498: $00
    nop                                           ; $5499: $00
    ld b, $FE                                     ; $549A: $06 $FE
    daa                                           ; $549C: $27
    nop                                           ; $549D: $00
    inc l                                         ; $549E: $2C
    ld c, c                                       ; $549F: $49
    nop                                           ; $54A0: $00
    ld l, c                                       ; $54A1: $69
    ld bc, $3002                                  ; $54A2: $01 $02 $30
    ld d, h                                       ; $54A5: $54
    nop                                           ; $54A6: $00
    ld b, c                                       ; $54A7: $41
    daa                                           ; $54A8: $27
    nop                                           ; $54A9: $00
    ld b, d                                       ; $54AA: $42
    ld bc, $8D01                                  ; $54AB: $01 $01 $8D
    adc e                                         ; $54AE: $8B
    db $10                                        ; $54AF: $10
    scf                                           ; $54B0: $37
    ld l, d                                       ; $54B1: $6A
    nop                                           ; $54B2: $00
    ret                                           ; $54B3: $C9


    nop                                           ; $54B4: $00
    nop                                           ; $54B5: $00
    nop                                           ; $54B6: $00
    nop                                           ; $54B7: $00
    nop                                           ; $54B8: $00
    inc bc                                        ; $54B9: $03
    nop                                           ; $54BA: $00
    nop                                           ; $54BB: $00
    inc bc                                        ; $54BC: $03
    sbc a                                         ; $54BD: $9F
    ld hl, $4140                                  ; $54BE: $21 $40 $41
    ld de, $0042                                  ; $54C1: $11 $42 $00
    nop                                           ; $54C4: $00
    nop                                           ; $54C5: $00
    nop                                           ; $54C6: $00
    nop                                           ; $54C7: $00
    inc bc                                        ; $54C8: $03
    ld bc, $9900                                  ; $54C9: $01 $00 $99
    cp h                                          ; $54CC: $BC
    nop                                           ; $54CD: $00
    sub c                                         ; $54CE: $91
    ld a, e                                       ; $54CF: $7B
    nop                                           ; $54D0: $00
    pop bc                                        ; $54D1: $C1
    sbc d                                         ; $54D2: $9A
    nop                                           ; $54D3: $00
    ld bc, $0000                                  ; $54D4: $01 $00 $00
    nop                                           ; $54D7: $00
    ld bc, $0100                                  ; $54D8: $01 $00 $01
    call c, $DA00                                 ; $54DB: $DC $00 $DA
    call c, $DE00                                 ; $54DE: $DC $00 $DE
    ld bc, $E300                                  ; $54E1: $01 $00 $E3
    nop                                           ; $54E4: $00
    nop                                           ; $54E5: $00
    nop                                           ; $54E6: $00
    nop                                           ; $54E7: $00
    nop                                           ; $54E8: $00
    inc bc                                        ; $54E9: $03
    nop                                           ; $54EA: $00
    nop                                           ; $54EB: $00
    dec b                                         ; $54EC: $05
    ld bc, $0000                                  ; $54ED: $01 $00 $00
    ld [bc], a                                    ; $54F0: $02
    nop                                           ; $54F1: $00
    nop                                           ; $54F2: $00
    ld b, $FE                                     ; $54F3: $06 $FE
    cpl                                           ; $54F5: $2F
    ld [hl+], a                                   ; $54F6: $22
    rla                                           ; $54F7: $17
    ld [hl], $00                                  ; $54F8: $36 $00
    ld b, d                                       ; $54FA: $42
    ld bc, $A100                                  ; $54FB: $01 $00 $A1
    jp nz, $9500                                  ; $54FE: $C2 $00 $95

    ld [hl], $00                                  ; $5501: $36 $00
    ccf                                           ; $5503: $3F
    ld l, b                                       ; $5504: $68
    nop                                           ; $5505: $00
    ld bc, $12D6                                  ; $5506: $01 $D6 $12
    ld h, c                                       ; $5509: $61
    ld h, d                                       ; $550A: $62
    jr nz, @+$70                                  ; $550B: $20 $6E

    ld h, e                                       ; $550D: $63
    jr nz, jr_038_553D                            ; $550E: $20 $2D

    ld h, h                                       ; $5510: $64
    nop                                           ; $5511: $00
    jr z, jr_038_555E                             ; $5512: $28 $4A

    nop                                           ; $5514: $00
    ld bc, $118D                                  ; $5515: $01 $8D $11
    adc e                                         ; $5518: $8B
    scf                                           ; $5519: $37
    nop                                           ; $551A: $00
    ld l, d                                       ; $551B: $6A
    ret                                           ; $551C: $C9


    nop                                           ; $551D: $00
    ld bc, $0000                                  ; $551E: $01 $00 $00
    nop                                           ; $5521: $00
    nop                                           ; $5522: $00
    nop                                           ; $5523: $00
    inc bc                                        ; $5524: $03
    nop                                           ; $5525: $00
    nop                                           ; $5526: $00
    inc bc                                        ; $5527: $03
    nop                                           ; $5528: $00
    nop                                           ; $5529: $00
    inc bc                                        ; $552A: $03
    add a                                         ; $552B: $87
    nop                                           ; $552C: $00
    ld a, c                                       ; $552D: $79
    and l                                         ; $552E: $A5
    nop                                           ; $552F: $00
    sub l                                         ; $5530: $95
    cp [hl]                                       ; $5531: $BE
    nop                                           ; $5532: $00
    pop bc                                        ; $5533: $C1
    ld c, l                                       ; $5534: $4D
    ld bc, $1211                                  ; $5535: $01 $11 $12
    ld de, $4A13                                  ; $5538: $11 $13 $4A
    nop                                           ; $553B: $00
    ld c, c                                       ; $553C: $49

jr_038_553D:
    ld l, c                                       ; $553D: $69
    nop                                           ; $553E: $00
    ccf                                           ; $553F: $3F
    dec l                                         ; $5540: $2D
    nop                                           ; $5541: $00
    ld b, d                                       ; $5542: $42
    ld bc, $3F01                                  ; $5543: $01 $01 $3F
    jr z, jr_038_5548                             ; $5546: $28 $00

jr_038_5548:
    ret                                           ; $5548: $C9


    nop                                           ; $5549: $00
    nop                                           ; $554A: $00
    nop                                           ; $554B: $00
    nop                                           ; $554C: $00
    nop                                           ; $554D: $00
    inc bc                                        ; $554E: $03
    nop                                           ; $554F: $00
    nop                                           ; $5550: $00
    dec b                                         ; $5551: $05
    ld bc, $0000                                  ; $5552: $01 $00 $00
    ld [bc], a                                    ; $5555: $02
    nop                                           ; $5556: $00
    nop                                           ; $5557: $00
    ld [bc], a                                    ; $5558: $02
    nop                                           ; $5559: $00
    nop                                           ; $555A: $00
    ld [bc], a                                    ; $555B: $02
    nop                                           ; $555C: $00
    nop                                           ; $555D: $00

jr_038_555E:
    dec b                                         ; $555E: $05
    add b                                         ; $555F: $80
    nop                                           ; $5560: $00
    nop                                           ; $5561: $00
    ld [bc], a                                    ; $5562: $02
    nop                                           ; $5563: $00
    nop                                           ; $5564: $00
    ld bc, $555C                                  ; $5565: $01 $5C $55
    inc l                                         ; $5568: $2C
    nop                                           ; $5569: $00
    ld h, a                                       ; $556A: $67
    jr z, jr_038_556D                             ; $556B: $28 $00

jr_038_556D:
    ld l, c                                       ; $556D: $69
    ld h, [hl]                                    ; $556E: $66
    nop                                           ; $556F: $00
    jr z, jr_038_55A7                             ; $5570: $28 $35

    nop                                           ; $5572: $00
    ld l, a                                       ; $5573: $6F
    ld d, a                                       ; $5574: $57
    nop                                           ; $5575: $00
    jr z, jr_038_5578                             ; $5576: $28 $00

jr_038_5578:
    nop                                           ; $5578: $00
    nop                                           ; $5579: $00
    ld bc, $8200                                  ; $557A: $01 $00 $82
    ld a, c                                       ; $557D: $79
    nop                                           ; $557E: $00
    cp h                                          ; $557F: $BC
    sub [hl]                                      ; $5580: $96
    nop                                           ; $5581: $00
    halt                                          ; $5582: $76
    sub l                                         ; $5583: $95
    nop                                           ; $5584: $00
    ld bc, $0000                                  ; $5585: $01 $00 $00
    nop                                           ; $5588: $00
    nop                                           ; $5589: $00
    nop                                           ; $558A: $00
    inc bc                                        ; $558B: $03
    xor a                                         ; $558C: $AF
    nop                                           ; $558D: $00
    add h                                         ; $558E: $84
    xor a                                         ; $558F: $AF
    nop                                           ; $5590: $00
    sub l                                         ; $5591: $95
    cp [hl]                                       ; $5592: $BE
    nop                                           ; $5593: $00
    pop bc                                        ; $5594: $C1
    ld c, l                                       ; $5595: $4D
    nop                                           ; $5596: $00
    ld e, [hl]                                    ; $5597: $5E
    ld sp, $2800                                  ; $5598: $31 $00 $28
    ld b, a                                       ; $559B: $47
    nop                                           ; $559C: $00
    ld b, d                                       ; $559D: $42
    inc l                                         ; $559E: $2C
    nop                                           ; $559F: $00
    ld c, c                                       ; $55A0: $49
    ld bc, $3900                                  ; $55A1: $01 $00 $39
    ld l, a                                       ; $55A4: $6F
    nop                                           ; $55A5: $00
    ld a, [hl-]                                   ; $55A6: $3A

jr_038_55A7:
    daa                                           ; $55A7: $27
    nop                                           ; $55A8: $00
    ret                                           ; $55A9: $C9


    nop                                           ; $55AA: $00
    nop                                           ; $55AB: $00
    nop                                           ; $55AC: $00
    nop                                           ; $55AD: $00
    nop                                           ; $55AE: $00
    inc bc                                        ; $55AF: $03
    ld l, c                                       ; $55B0: $69
    nop                                           ; $55B1: $00
    jr c, jr_038_55DB                             ; $55B2: $38 $27

    nop                                           ; $55B4: $00
    ld c, [hl]                                    ; $55B5: $4E
    ld b, a                                       ; $55B6: $47
    nop                                           ; $55B7: $00
    ld h, $69                                     ; $55B8: $26 $69
    nop                                           ; $55BA: $00
    ld bc, $0035                                  ; $55BB: $01 $35 $00
    dec l                                         ; $55BE: $2D
    ld [hl], $00                                  ; $55BF: $36 $00
    ld b, e                                       ; $55C1: $43
    ld [hl], $00                                  ; $55C2: $36 $00
    ld b, d                                       ; $55C4: $42
    ld h, c                                       ; $55C5: $61
    nop                                           ; $55C6: $00
    ld bc, $0035                                  ; $55C7: $01 $35 $00
    ld e, l                                       ; $55CA: $5D
    ld a, [hl-]                                   ; $55CB: $3A
    nop                                           ; $55CC: $00
    ld e, l                                       ; $55CD: $5D
    ld c, c                                       ; $55CE: $49
    nop                                           ; $55CF: $00
    dec [hl]                                      ; $55D0: $35
    dec l                                         ; $55D1: $2D
    nop                                           ; $55D2: $00
    jr c, jr_038_5644                             ; $55D3: $38 $6F

    nop                                           ; $55D5: $00
    ld l, [hl]                                    ; $55D6: $6E
    ld bc, $3F00                                  ; $55D7: $01 $00 $3F
    ld b, d                                       ; $55DA: $42

jr_038_55DB:
    nop                                           ; $55DB: $00
    ld l, d                                       ; $55DC: $6A
    ret                                           ; $55DD: $C9


    nop                                           ; $55DE: $00
    ld bc, $0000                                  ; $55DF: $01 $00 $00
    nop                                           ; $55E2: $00
    nop                                           ; $55E3: $00
    nop                                           ; $55E4: $00
    inc bc                                        ; $55E5: $03
    ld c, a                                       ; $55E6: $4F
    nop                                           ; $55E7: $00
    ld [hl], b                                    ; $55E8: $70
    dec [hl]                                      ; $55E9: $35
    nop                                           ; $55EA: $00
    ld b, c                                       ; $55EB: $41
    ld l, l                                       ; $55EC: $6D
    nop                                           ; $55ED: $00
    ld a, [hl-]                                   ; $55EE: $3A
    nop                                           ; $55EF: $00
    nop                                           ; $55F0: $00
    nop                                           ; $55F1: $00
    nop                                           ; $55F2: $00
    nop                                           ; $55F3: $00
    inc bc                                        ; $55F4: $03
    ld bc, $7B00                                  ; $55F5: $01 $00 $7B
    halt                                          ; $55F8: $76
    nop                                           ; $55F9: $00
    ld a, b                                       ; $55FA: $78
    adc c                                         ; $55FB: $89
    nop                                           ; $55FC: $00
    sub l                                         ; $55FD: $95
    sbc a                                         ; $55FE: $9F
    nop                                           ; $55FF: $00
    jp nz, $007F                                  ; $5600: $C2 $7F $00

    ld bc, $0000                                  ; $5603: $01 $00 $00
    nop                                           ; $5606: $00
    ld bc, $0100                                  ; $5607: $01 $00 $01
    sbc $00                                       ; $560A: $DE $00
    call c, Call_000_00DA                         ; $560C: $DC $DA $00
    ld bc, $00E3                                  ; $560F: $01 $E3 $00
    ld bc, $0000                                  ; $5612: $01 $00 $00
    nop                                           ; $5615: $00
    nop                                           ; $5616: $00
    nop                                           ; $5617: $00
    inc bc                                        ; $5618: $03
    nop                                           ; $5619: $00
    nop                                           ; $561A: $00
    dec b                                         ; $561B: $05
    ld bc, $0000                                  ; $561C: $01 $00 $00
    ld [bc], a                                    ; $561F: $02
    nop                                           ; $5620: $00
    nop                                           ; $5621: $00
    ld b, $FE                                     ; $5622: $06 $FE
    ld h, $00                                     ; $5624: $26 $00
    daa                                           ; $5626: $27
    ld b, d                                       ; $5627: $42
    nop                                           ; $5628: $00
    ld c, d                                       ; $5629: $4A
    ld bc, $4300                                  ; $562A: $01 $00 $43
    ld d, h                                       ; $562D: $54
    nop                                           ; $562E: $00
    ld b, c                                       ; $562F: $41
    inc l                                         ; $5630: $2C
    nop                                           ; $5631: $00
    ld bc, $0041                                  ; $5632: $01 $41 $00
    dec hl                                        ; $5635: $2B
    ld l, a                                       ; $5636: $6F
    nop                                           ; $5637: $00
    ld b, a                                       ; $5638: $47
    ld bc, $4900                                  ; $5639: $01 $00 $49
    inc sp                                        ; $563C: $33
    nop                                           ; $563D: $00
    ld l, d                                       ; $563E: $6A
    ret                                           ; $563F: $C9


    nop                                           ; $5640: $00
    ld bc, $0000                                  ; $5641: $01 $00 $00

jr_038_5644:
    nop                                           ; $5644: $00
    nop                                           ; $5645: $00
    nop                                           ; $5646: $00
    inc bc                                        ; $5647: $03
    nop                                           ; $5648: $00
    nop                                           ; $5649: $00
    inc bc                                        ; $564A: $03
    ld bc, $9300                                  ; $564B: $01 $00 $93
    inc d                                         ; $564E: $14
    jr nz, @-$3B                                  ; $564F: $20 $C3

    ld a, c                                       ; $5651: $79
    nop                                           ; $5652: $00
    sub l                                         ; $5653: $95
    xor h                                         ; $5654: $AC
    nop                                           ; $5655: $00
    cp l                                          ; $5656: $BD
    adc c                                         ; $5657: $89
    nop                                           ; $5658: $00
    ld bc, $0000                                  ; $5659: $01 $00 $00
    nop                                           ; $565C: $00
    ld bc, $0100                                  ; $565D: $01 $00 $01
    sbc $00                                       ; $5660: $DE $00
    call c, Call_000_00DA                         ; $5662: $DC $DA $00
    ld bc, $00E2                                  ; $5665: $01 $E2 $00
    ld bc, $0000                                  ; $5668: $01 $00 $00
    nop                                           ; $566B: $00
    nop                                           ; $566C: $00
    nop                                           ; $566D: $00
    inc bc                                        ; $566E: $03
    nop                                           ; $566F: $00
    nop                                           ; $5670: $00
    dec b                                         ; $5671: $05
    ld bc, $0000                                  ; $5672: $01 $00 $00
    ld [bc], a                                    ; $5675: $02
    nop                                           ; $5676: $00
    nop                                           ; $5677: $00
    ld b, $FE                                     ; $5678: $06 $FE
    adc c                                         ; $567A: $89
    nop                                           ; $567B: $00
    cp d                                          ; $567C: $BA
    ld a, c                                       ; $567D: $79
    nop                                           ; $567E: $00
    sbc c                                         ; $567F: $99
    call nz, $C100                                ; $5680: $C4 $00 $C1
    add h                                         ; $5683: $84
    nop                                           ; $5684: $00
    ld b, a                                       ; $5685: $47
    ld bc, $4300                                  ; $5686: $01 $00 $43
    ld [hl], b                                    ; $5689: $70
    nop                                           ; $568A: $00
    ld [hl], $6F                                  ; $568B: $36 $6F
    nop                                           ; $568D: $00
    ld [hl], $42                                  ; $568E: $36 $42
    nop                                           ; $5690: $00
    ld bc, $00A1                                  ; $5691: $01 $A1 $00
    jp nz, Jump_000_0095                          ; $5694: $C2 $95 $00

    ld [hl], $3F                                  ; $5697: $36 $3F
    nop                                           ; $5699: $00
    ld l, b                                       ; $569A: $68
    ld bc, $5000                                  ; $569B: $01 $00 $50
    ld e, [hl]                                    ; $569E: $5E
    nop                                           ; $569F: $00
    ld b, c                                       ; $56A0: $41
    ld d, l                                       ; $56A1: $55
    nop                                           ; $56A2: $00
    scf                                           ; $56A3: $37
    ret                                           ; $56A4: $C9


    nop                                           ; $56A5: $00
    ld bc, $0000                                  ; $56A6: $01 $00 $00
    nop                                           ; $56A9: $00
    nop                                           ; $56AA: $00
    nop                                           ; $56AB: $00
    inc bc                                        ; $56AC: $03
    nop                                           ; $56AD: $00
    nop                                           ; $56AE: $00
    inc bc                                        ; $56AF: $03
    ld bc, $9A00                                  ; $56B0: $01 $00 $9A
    cp e                                          ; $56B3: $BB
    nop                                           ; $56B4: $00
    jp nz, $009A                                  ; $56B5: $C2 $9A $00

    and a                                         ; $56B8: $A7
    cp [hl]                                       ; $56B9: $BE
    nop                                           ; $56BA: $00
    ld a, d                                       ; $56BB: $7A
    nop                                           ; $56BC: $00
    nop                                           ; $56BD: $00
    nop                                           ; $56BE: $00
    ld bc, $0100                                  ; $56BF: $01 $00 $01
    jp c, $DC00                                   ; $56C2: $DA $00 $DC

    jp c, Boot                                    ; $56C5: $DA $00 $01

    db $E3                                        ; $56C8: $E3
    nop                                           ; $56C9: $00
    ld bc, $0000                                  ; $56CA: $01 $00 $00
    nop                                           ; $56CD: $00
    nop                                           ; $56CE: $00
    nop                                           ; $56CF: $00
    inc bc                                        ; $56D0: $03
    nop                                           ; $56D1: $00
    nop                                           ; $56D2: $00
    dec b                                         ; $56D3: $05
    ld bc, $0000                                  ; $56D4: $01 $00 $00
    ld [bc], a                                    ; $56D7: $02
    nop                                           ; $56D8: $00
    nop                                           ; $56D9: $00
    ld b, $FE                                     ; $56DA: $06 $FE
    inc l                                         ; $56DC: $2C
    nop                                           ; $56DD: $00
    ld h, a                                       ; $56DE: $67
    jr z, jr_038_56E1                             ; $56DF: $28 $00

jr_038_56E1:
    ld l, c                                       ; $56E1: $69
    ld h, a                                       ; $56E2: $67
    nop                                           ; $56E3: $00
    dec l                                         ; $56E4: $2D
    ld c, c                                       ; $56E5: $49
    nop                                           ; $56E6: $00
    ld bc, $00AA                                  ; $56E7: $01 $AA $00
    pop bc                                        ; $56EA: $C1
    sub d                                         ; $56EB: $92
    nop                                           ; $56EC: $00
    ld b, a                                       ; $56ED: $47
    cpl                                           ; $56EE: $2F
    nop                                           ; $56EF: $00
    jr z, jr_038_5725                             ; $56F0: $28 $33

    nop                                           ; $56F2: $00
    inc l                                         ; $56F3: $2C
    scf                                           ; $56F4: $37
    nop                                           ; $56F5: $00
    ld l, d                                       ; $56F6: $6A
    ret                                           ; $56F7: $C9


    nop                                           ; $56F8: $00
    ld bc, $0000                                  ; $56F9: $01 $00 $00
    nop                                           ; $56FC: $00
    nop                                           ; $56FD: $00
    nop                                           ; $56FE: $00
    inc bc                                        ; $56FF: $03
    nop                                           ; $5700: $00
    nop                                           ; $5701: $00
    inc bc                                        ; $5702: $03
    ld bc, $A200                                  ; $5703: $01 $00 $A2
    call nz, $7800                                ; $5706: $C4 $00 $78
    halt                                          ; $5709: $76
    nop                                           ; $570A: $00
    sub l                                         ; $570B: $95
    cp e                                          ; $570C: $BB
    nop                                           ; $570D: $00
    and d                                         ; $570E: $A2
    cp l                                          ; $570F: $BD
    nop                                           ; $5710: $00
    ld a, a                                       ; $5711: $7F
    sub c                                         ; $5712: $91
    nop                                           ; $5713: $00
    halt                                          ; $5714: $76
    ld bc, $0100                                  ; $5715: $01 $00 $01
    call c, $DE00                                 ; $5718: $DC $00 $DE
    ld bc, $E300                                  ; $571B: $01 $00 $E3
    nop                                           ; $571E: $00
    nop                                           ; $571F: $00
    nop                                           ; $5720: $00
    nop                                           ; $5721: $00
    nop                                           ; $5722: $00
    inc bc                                        ; $5723: $03
    nop                                           ; $5724: $00

jr_038_5725:
    nop                                           ; $5725: $00
    dec b                                         ; $5726: $05
    ld bc, $0000                                  ; $5727: $01 $00 $00
    ld [bc], a                                    ; $572A: $02
    nop                                           ; $572B: $00
    nop                                           ; $572C: $00
    ld b, $FE                                     ; $572D: $06 $FE
    ld b, e                                       ; $572F: $43
    nop                                           ; $5730: $00
    ld d, h                                       ; $5731: $54
    ld c, b                                       ; $5732: $48
    nop                                           ; $5733: $00
    jr z, jr_038_5768                             ; $5734: $28 $32

    nop                                           ; $5736: $00
    ld l, [hl]                                    ; $5737: $6E
    ld bc, $AA00                                  ; $5738: $01 $00 $AA
    pop bc                                        ; $573B: $C1
    nop                                           ; $573C: $00
    sub d                                         ; $573D: $92
    ld b, a                                       ; $573E: $47
    nop                                           ; $573F: $00
    ld bc, $004E                                  ; $5740: $01 $4E $00
    ld c, h                                       ; $5743: $4C
    dec hl                                        ; $5744: $2B
    nop                                           ; $5745: $00
    add hl, hl                                    ; $5746: $29
    scf                                           ; $5747: $37
    nop                                           ; $5748: $00
    ret                                           ; $5749: $C9


    nop                                           ; $574A: $00
    nop                                           ; $574B: $00
    nop                                           ; $574C: $00
    nop                                           ; $574D: $00
    nop                                           ; $574E: $00
    inc bc                                        ; $574F: $03
    nop                                           ; $5750: $00
    nop                                           ; $5751: $00
    inc bc                                        ; $5752: $03
    add l                                         ; $5753: $85
    nop                                           ; $5754: $00
    ld a, [hl]                                    ; $5755: $7E
    ld c, a                                       ; $5756: $4F
    nop                                           ; $5757: $00
    ld [hl], b                                    ; $5758: $70
    dec [hl]                                      ; $5759: $35
    nop                                           ; $575A: $00
    ld b, c                                       ; $575B: $41
    ld l, l                                       ; $575C: $6D
    nop                                           ; $575D: $00
    ld a, [hl-]                                   ; $575E: $3A
    nop                                           ; $575F: $00
    nop                                           ; $5760: $00
    nop                                           ; $5761: $00
    nop                                           ; $5762: $00
    nop                                           ; $5763: $00
    inc bc                                        ; $5764: $03
    ld bc, $B200                                  ; $5765: $01 $00 $B2

jr_038_5768:
    add d                                         ; $5768: $82
    nop                                           ; $5769: $00
    sub h                                         ; $576A: $94
    call nz, $C200                                ; $576B: $C4 $00 $C2
    ld a, a                                       ; $576E: $7F
    nop                                           ; $576F: $00
    ld bc, $000D                                  ; $5770: $01 $0D $00
    call Call_000_0013                            ; $5773: $CD $13 $00
    call VBlankInterrupt                          ; $5776: $CD $40 $00
    dec hl                                        ; $5779: $2B
    ld b, [hl]                                    ; $577A: $46
    nop                                           ; $577B: $00
    daa                                           ; $577C: $27
    ld b, d                                       ; $577D: $42
    nop                                           ; $577E: $00
    ld bc, $00DC                                  ; $577F: $01 $DC $00
    jp c, Jump_000_00DC                           ; $5782: $DA $DC $00

    sbc $01                                       ; $5785: $DE $01
    nop                                           ; $5787: $00
    db $E3                                        ; $5788: $E3
    nop                                           ; $5789: $00
    nop                                           ; $578A: $00
    inc bc                                        ; $578B: $03
    nop                                           ; $578C: $00
    nop                                           ; $578D: $00
    dec b                                         ; $578E: $05
    ld bc, $0000                                  ; $578F: $01 $00 $00
    ld [bc], a                                    ; $5792: $02
    nop                                           ; $5793: $00
    nop                                           ; $5794: $00
    ld b, $FE                                     ; $5795: $06 $FE
    ld h, $00                                     ; $5797: $26 $00
    daa                                           ; $5799: $27
    ld b, d                                       ; $579A: $42
    nop                                           ; $579B: $00
    ld l, [hl]                                    ; $579C: $6E
    ld b, c                                       ; $579D: $41
    nop                                           ; $579E: $00
    dec hl                                        ; $579F: $2B
    ld l, a                                       ; $57A0: $6F
    nop                                           ; $57A1: $00
    ld b, a                                       ; $57A2: $47
    ld bc, $A700                                  ; $57A3: $01 $00 $A7
    cp d                                          ; $57A6: $BA
    nop                                           ; $57A7: $00
    jp nz, $007F                                  ; $57A8: $C2 $7F $00

    and h                                         ; $57AB: $A4
    halt                                          ; $57AC: $76
    nop                                           ; $57AD: $00
    cp h                                          ; $57AE: $BC
    ld b, a                                       ; $57AF: $47
    nop                                           ; $57B0: $00
    ld bc, $002F                                  ; $57B1: $01 $2F $00
    jr z, jr_038_57E9                             ; $57B4: $28 $33

    nop                                           ; $57B6: $00
    inc l                                         ; $57B7: $2C
    ld l, [hl]                                    ; $57B8: $6E
    nop                                           ; $57B9: $00
    scf                                           ; $57BA: $37
    ld l, d                                       ; $57BB: $6A
    nop                                           ; $57BC: $00
    ret                                           ; $57BD: $C9


    nop                                           ; $57BE: $00
    nop                                           ; $57BF: $00
    nop                                           ; $57C0: $00
    nop                                           ; $57C1: $00
    nop                                           ; $57C2: $00
    inc bc                                        ; $57C3: $03
    nop                                           ; $57C4: $00
    nop                                           ; $57C5: $00
    inc bc                                        ; $57C6: $03
    and [hl]                                      ; $57C7: $A6
    nop                                           ; $57C8: $00
    halt                                          ; $57C9: $76
    adc c                                         ; $57CA: $89
    nop                                           ; $57CB: $00
    sub l                                         ; $57CC: $95
    or e                                          ; $57CD: $B3
    nop                                           ; $57CE: $00
    halt                                          ; $57CF: $76
    sbc d                                         ; $57D0: $9A
    nop                                           ; $57D1: $00
    ld c, [hl]                                    ; $57D2: $4E
    nop                                           ; $57D3: $00
    nop                                           ; $57D4: $00
    nop                                           ; $57D5: $00
    nop                                           ; $57D6: $00
    nop                                           ; $57D7: $00
    inc bc                                        ; $57D8: $03
    ret nc                                        ; $57D9: $D0

    nop                                           ; $57DA: $00
    sub l                                         ; $57DB: $95
    cp e                                          ; $57DC: $BB
    nop                                           ; $57DD: $00
    add b                                         ; $57DE: $80
    cp d                                          ; $57DF: $BA
    nop                                           ; $57E0: $00
    sub l                                         ; $57E1: $95
    xor h                                         ; $57E2: $AC
    nop                                           ; $57E3: $00
    adc c                                         ; $57E4: $89
    pop de                                        ; $57E5: $D1
    nop                                           ; $57E6: $00
    ld c, d                                       ; $57E7: $4A
    nop                                           ; $57E8: $00

jr_038_57E9:
    nop                                           ; $57E9: $00
    nop                                           ; $57EA: $00
    ld d, c                                       ; $57EB: $51
    nop                                           ; $57EC: $00
    ld l, a                                       ; $57ED: $6F
    ld [hl], $00                                  ; $57EE: $36 $00
    ld l, a                                       ; $57F0: $6F
    scf                                           ; $57F1: $37
    nop                                           ; $57F2: $00
    ld l, d                                       ; $57F3: $6A
    ret                                           ; $57F4: $C9


    nop                                           ; $57F5: $00
    ld bc, $0000                                  ; $57F6: $01 $00 $00
    nop                                           ; $57F9: $00
    nop                                           ; $57FA: $00
    nop                                           ; $57FB: $00
    inc bc                                        ; $57FC: $03
    nop                                           ; $57FD: $00
    nop                                           ; $57FE: $00
    inc b                                         ; $57FF: $04
    ld bc, $0000                                  ; $5800: $01 $00 $00
    dec b                                         ; $5803: $05
    ld bc, $0000                                  ; $5804: $01 $00 $00
    ld [bc], a                                    ; $5807: $02
    nop                                           ; $5808: $00
    nop                                           ; $5809: $00
    ld [bc], a                                    ; $580A: $02
    nop                                           ; $580B: $00
    nop                                           ; $580C: $00
    ld [bc], a                                    ; $580D: $02
    nop                                           ; $580E: $00
    nop                                           ; $580F: $00
    ld b, $FE                                     ; $5810: $06 $FE
    ld c, a                                       ; $5812: $4F
    nop                                           ; $5813: $00
    ld [hl], b                                    ; $5814: $70
    dec [hl]                                      ; $5815: $35
    nop                                           ; $5816: $00
    ld b, c                                       ; $5817: $41
    ld l, l                                       ; $5818: $6D
    nop                                           ; $5819: $00
    ld a, [hl-]                                   ; $581A: $3A
    nop                                           ; $581B: $00
    nop                                           ; $581C: $00
    nop                                           ; $581D: $00
    nop                                           ; $581E: $00
    nop                                           ; $581F: $00
    inc bc                                        ; $5820: $03
    ld bc, $AC00                                  ; $5821: $01 $00 $AC
    cp [hl]                                       ; $5824: $BE
    nop                                           ; $5825: $00
    halt                                          ; $5826: $76
    sub l                                         ; $5827: $95
    nop                                           ; $5828: $00
    pop bc                                        ; $5829: $C1
    ld a, d                                       ; $582A: $7A
    nop                                           ; $582B: $00
    add $76                                       ; $582C: $C6 $76
    nop                                           ; $582E: $00
    and a                                         ; $582F: $A7
    nop                                           ; $5830: $00
    nop                                           ; $5831: $00
    nop                                           ; $5832: $00
    ld bc, $0100                                  ; $5833: $01 $00 $01
    call c, $DA00                                 ; $5836: $DC $00 $DA
    ld bc, $E300                                  ; $5839: $01 $00 $E3
    nop                                           ; $583C: $00
    nop                                           ; $583D: $00
    nop                                           ; $583E: $00
    nop                                           ; $583F: $00
    nop                                           ; $5840: $00
    inc bc                                        ; $5841: $03
    nop                                           ; $5842: $00
    nop                                           ; $5843: $00
    dec b                                         ; $5844: $05
    ld bc, $0000                                  ; $5845: $01 $00 $00
    ld [bc], a                                    ; $5848: $02
    nop                                           ; $5849: $00
    nop                                           ; $584A: $00
    ld b, $FE                                     ; $584B: $06 $FE
    dec l                                         ; $584D: $2D
    nop                                           ; $584E: $00
    ld b, b                                       ; $584F: $40
    dec hl                                        ; $5850: $2B
    nop                                           ; $5851: $00
    ld l, b                                       ; $5852: $68
    ld bc, $2A00                                  ; $5853: $01 $00 $2A
    ld l, a                                       ; $5856: $6F
    nop                                           ; $5857: $00
    ld e, b                                       ; $5858: $58
    ld l, [hl]                                    ; $5859: $6E
    nop                                           ; $585A: $00
    ld b, h                                       ; $585B: $44
    ld [hl], $00                                  ; $585C: $36 $00
    ld b, d                                       ; $585E: $42
    cpl                                           ; $585F: $2F
    nop                                           ; $5860: $00
    jr z, @+$35                                   ; $5861: $28 $33

    nop                                           ; $5863: $00
    inc l                                         ; $5864: $2C
    ret                                           ; $5865: $C9


    nop                                           ; $5866: $00
    ld bc, $0000                                  ; $5867: $01 $00 $00
    nop                                           ; $586A: $00
    nop                                           ; $586B: $00
    nop                                           ; $586C: $00
    inc bc                                        ; $586D: $03
    nop                                           ; $586E: $00
    nop                                           ; $586F: $00
    inc bc                                        ; $5870: $03
    ld bc, $9900                                  ; $5871: $01 $00 $99
    ld a, d                                       ; $5874: $7A
    nop                                           ; $5875: $00
    sub h                                         ; $5876: $94
    cp [hl]                                       ; $5877: $BE
    nop                                           ; $5878: $00
    pop bc                                        ; $5879: $C1
    sub c                                         ; $587A: $91
    nop                                           ; $587B: $00
    jp nz, $007F                                  ; $587C: $C2 $7F $00

    cp h                                          ; $587F: $BC
    nop                                           ; $5880: $00
    nop                                           ; $5881: $00
    nop                                           ; $5882: $00
    ld bc, $0100                                  ; $5883: $01 $00 $01
    call c, $DA00                                 ; $5886: $DC $00 $DA
    ld bc, $E200                                  ; $5889: $01 $00 $E2
    nop                                           ; $588C: $00
    nop                                           ; $588D: $00
    nop                                           ; $588E: $00
    nop                                           ; $588F: $00
    nop                                           ; $5890: $00
    inc bc                                        ; $5891: $03
    nop                                           ; $5892: $00
    nop                                           ; $5893: $00
    dec b                                         ; $5894: $05
    ld bc, $0000                                  ; $5895: $01 $00 $00
    ld [bc], a                                    ; $5898: $02
    nop                                           ; $5899: $00
    nop                                           ; $589A: $00
    ld b, $FE                                     ; $589B: $06 $FE
    ld b, c                                       ; $589D: $41
    nop                                           ; $589E: $00
    ld c, l                                       ; $589F: $4D
    ld l, [hl]                                    ; $58A0: $6E
    nop                                           ; $58A1: $00
    ld e, l                                       ; $58A2: $5D
    add hl, hl                                    ; $58A3: $29
    nop                                           ; $58A4: $00
    ld c, d                                       ; $58A5: $4A
    ld b, c                                       ; $58A6: $41
    nop                                           ; $58A7: $00
    inc l                                         ; $58A8: $2C
    ld b, h                                       ; $58A9: $44
    nop                                           ; $58AA: $00
    ld [hl], $42                                  ; $58AB: $36 $42
    nop                                           ; $58AD: $00
    ld bc, $0043                                  ; $58AE: $01 $43 $00
    ld [hl], b                                    ; $58B1: $70
    ld [hl], $00                                  ; $58B2: $36 $00
    ld l, a                                       ; $58B4: $6F
    scf                                           ; $58B5: $37
    nop                                           ; $58B6: $00
    ld l, d                                       ; $58B7: $6A
    ret                                           ; $58B8: $C9


    nop                                           ; $58B9: $00
    ld bc, $0000                                  ; $58BA: $01 $00 $00
    nop                                           ; $58BD: $00
    nop                                           ; $58BE: $00
    nop                                           ; $58BF: $00
    inc bc                                        ; $58C0: $03
    nop                                           ; $58C1: $00
    nop                                           ; $58C2: $00
    inc bc                                        ; $58C3: $03
    ld bc, $9500                                  ; $58C4: $01 $00 $95
    cp e                                          ; $58C7: $BB
    nop                                           ; $58C8: $00
    sub l                                         ; $58C9: $95
    pop bc                                        ; $58CA: $C1
    nop                                           ; $58CB: $00
    adc c                                         ; $58CC: $89
    cp h                                          ; $58CD: $BC
    nop                                           ; $58CE: $00
    halt                                          ; $58CF: $76
    nop                                           ; $58D0: $00
    nop                                           ; $58D1: $00
    nop                                           ; $58D2: $00
    ld bc, $0100                                  ; $58D3: $01 $00 $01
    jp c, $DC00                                   ; $58D6: $DA $00 $DC

    jp c, Boot                                    ; $58D9: $DA $00 $01

    db $E3                                        ; $58DC: $E3
    nop                                           ; $58DD: $00
    ld bc, $0000                                  ; $58DE: $01 $00 $00
    nop                                           ; $58E1: $00
    nop                                           ; $58E2: $00
    nop                                           ; $58E3: $00
    inc bc                                        ; $58E4: $03
    nop                                           ; $58E5: $00
    nop                                           ; $58E6: $00
    dec b                                         ; $58E7: $05
    ld bc, $0000                                  ; $58E8: $01 $00 $00
    ld [bc], a                                    ; $58EB: $02
    nop                                           ; $58EC: $00
    nop                                           ; $58ED: $00
    ld b, $FE                                     ; $58EE: $06 $FE
    ld h, $00                                     ; $58F0: $26 $00
    daa                                           ; $58F2: $27
    ld b, d                                       ; $58F3: $42
    nop                                           ; $58F4: $00
    ld c, d                                       ; $58F5: $4A
    ld b, e                                       ; $58F6: $43
    nop                                           ; $58F7: $00
    ld d, h                                       ; $58F8: $54
    ld b, c                                       ; $58F9: $41
    nop                                           ; $58FA: $00
    inc l                                         ; $58FB: $2C
    ld bc, $2B00                                  ; $58FC: $01 $00 $2B
    ld e, [hl]                                    ; $58FF: $5E
    nop                                           ; $5900: $00
    ld b, c                                       ; $5901: $41
    daa                                           ; $5902: $27
    nop                                           ; $5903: $00
    ld b, d                                       ; $5904: $42
    ld bc, $4900                                  ; $5905: $01 $00 $49
    inc sp                                        ; $5908: $33
    nop                                           ; $5909: $00
    ld l, d                                       ; $590A: $6A
    ret                                           ; $590B: $C9


    nop                                           ; $590C: $00
    ld bc, $0000                                  ; $590D: $01 $00 $00
    nop                                           ; $5910: $00
    nop                                           ; $5911: $00
    nop                                           ; $5912: $00
    inc bc                                        ; $5913: $03
    nop                                           ; $5914: $00
    nop                                           ; $5915: $00
    inc bc                                        ; $5916: $03
    ld bc, $9400                                  ; $5917: $01 $00 $94
    sub c                                         ; $591A: $91
    nop                                           ; $591B: $00
    cp h                                          ; $591C: $BC
    sub l                                         ; $591D: $95
    nop                                           ; $591E: $00
    pop bc                                        ; $591F: $C1
    xor h                                         ; $5920: $AC
    nop                                           ; $5921: $00
    cp l                                          ; $5922: $BD
    adc c                                         ; $5923: $89
    nop                                           ; $5924: $00
    ld bc, $0000                                  ; $5925: $01 $00 $00
    nop                                           ; $5928: $00
    ld bc, $0100                                  ; $5929: $01 $00 $01
    jp c, $DC00                                   ; $592C: $DA $00 $DC

    jp c, Boot                                    ; $592F: $DA $00 $01

    ldh [c], a                                    ; $5932: $E2
    nop                                           ; $5933: $00
    ld bc, $0000                                  ; $5934: $01 $00 $00
    nop                                           ; $5937: $00
    nop                                           ; $5938: $00
    nop                                           ; $5939: $00
    inc bc                                        ; $593A: $03
    nop                                           ; $593B: $00
    nop                                           ; $593C: $00
    dec b                                         ; $593D: $05
    ld bc, $0000                                  ; $593E: $01 $00 $00
    ld [bc], a                                    ; $5941: $02
    nop                                           ; $5942: $00
    nop                                           ; $5943: $00
    ld b, $FE                                     ; $5944: $06 $FE
    adc l                                         ; $5946: $8D
    nop                                           ; $5947: $00
    or a                                          ; $5948: $B7
    pop bc                                        ; $5949: $C1
    nop                                           ; $594A: $00
    xor h                                         ; $594B: $AC
    ld [hl], $00                                  ; $594C: $36 $00
    ld b, d                                       ; $594E: $42
    ld bc, $5D00                                  ; $594F: $01 $00 $5D
    ld [hl], $00                                  ; $5952: $36 $00
    ccf                                           ; $5954: $3F
    ld c, d                                       ; $5955: $4A
    nop                                           ; $5956: $00
    ld bc, $00A9                                  ; $5957: $01 $A9 $00
    sbc c                                         ; $595A: $99
    call nz, $AC00                                ; $595B: $C4 $00 $AC
    cp l                                          ; $595E: $BD
    nop                                           ; $595F: $00
    adc c                                         ; $5960: $89
    scf                                           ; $5961: $37
    nop                                           ; $5962: $00
    ld l, d                                       ; $5963: $6A
    ret                                           ; $5964: $C9


    nop                                           ; $5965: $00
    ld bc, $0000                                  ; $5966: $01 $00 $00
    nop                                           ; $5969: $00
    nop                                           ; $596A: $00
    nop                                           ; $596B: $00
    inc bc                                        ; $596C: $03
    nop                                           ; $596D: $00
    nop                                           ; $596E: $00
    inc bc                                        ; $596F: $03
    add l                                         ; $5970: $85
    nop                                           ; $5971: $00
    ld a, [hl]                                    ; $5972: $7E
    ld c, a                                       ; $5973: $4F
    nop                                           ; $5974: $00
    ld [hl], b                                    ; $5975: $70
    dec [hl]                                      ; $5976: $35
    nop                                           ; $5977: $00
    ld b, c                                       ; $5978: $41
    ld l, l                                       ; $5979: $6D
    nop                                           ; $597A: $00
    ld a, [hl-]                                   ; $597B: $3A
    nop                                           ; $597C: $00
    nop                                           ; $597D: $00
    nop                                           ; $597E: $00
    nop                                           ; $597F: $00
    nop                                           ; $5980: $00
    inc bc                                        ; $5981: $03
    ld bc, $0D00                                  ; $5982: $01 $00 $0D
    call $1300                                    ; $5985: $CD $00 $13
    call Call_038_7F00                            ; $5988: $CD $00 $7F
    cp d                                          ; $598B: $BA
    nop                                           ; $598C: $00
    adc c                                         ; $598D: $89
    sub c                                         ; $598E: $91
    nop                                           ; $598F: $00
    halt                                          ; $5990: $76
    nop                                           ; $5991: $00
    nop                                           ; $5992: $00
    nop                                           ; $5993: $00
    ld bc, $0100                                  ; $5994: $01 $00 $01
    call c, $DA00                                 ; $5997: $DC $00 $DA
    call c, $DE00                                 ; $599A: $DC $00 $DE
    ld bc, $E300                                  ; $599D: $01 $00 $E3
    nop                                           ; $59A0: $00
    nop                                           ; $59A1: $00
    nop                                           ; $59A2: $00
    nop                                           ; $59A3: $00
    nop                                           ; $59A4: $00
    inc bc                                        ; $59A5: $03
    nop                                           ; $59A6: $00
    nop                                           ; $59A7: $00
    dec b                                         ; $59A8: $05
    ld bc, $0000                                  ; $59A9: $01 $00 $00
    ld [bc], a                                    ; $59AC: $02
    nop                                           ; $59AD: $00
    nop                                           ; $59AE: $00
    ld b, $FE                                     ; $59AF: $06 $FE
    dec l                                         ; $59B1: $2D
    nop                                           ; $59B2: $00
    ld b, b                                       ; $59B3: $40
    dec hl                                        ; $59B4: $2B
    nop                                           ; $59B5: $00
    ld l, b                                       ; $59B6: $68
    ld bc, $A700                                  ; $59B7: $01 $00 $A7
    cp d                                          ; $59BA: $BA
    nop                                           ; $59BB: $00
    jp nz, $007F                                  ; $59BC: $C2 $7F $00

    and h                                         ; $59BF: $A4
    halt                                          ; $59C0: $76
    nop                                           ; $59C1: $00
    cp h                                          ; $59C2: $BC
    ld l, [hl]                                    ; $59C3: $6E
    nop                                           ; $59C4: $00
    ld bc, $004E                                  ; $59C5: $01 $4E $00
    ld [hl], b                                    ; $59C8: $70
    ld [hl], $00                                  ; $59C9: $36 $00
    ld h, l                                       ; $59CB: $65
    scf                                           ; $59CC: $37
    nop                                           ; $59CD: $00
    ld l, d                                       ; $59CE: $6A
    ret                                           ; $59CF: $C9


    nop                                           ; $59D0: $00
    ld bc, $0000                                  ; $59D1: $01 $00 $00
    nop                                           ; $59D4: $00
    nop                                           ; $59D5: $00
    nop                                           ; $59D6: $00
    inc bc                                        ; $59D7: $03
    nop                                           ; $59D8: $00
    nop                                           ; $59D9: $00
    inc bc                                        ; $59DA: $03
    nop                                           ; $59DB: $00
    nop                                           ; $59DC: $00
    inc bc                                        ; $59DD: $03
    ccf                                           ; $59DE: $3F
    nop                                           ; $59DF: $00
    ccf                                           ; $59E0: $3F
    dec hl                                        ; $59E1: $2B
    nop                                           ; $59E2: $00
    daa                                           ; $59E3: $27
    ld l, [hl]                                    ; $59E4: $6E
    nop                                           ; $59E5: $00
    ld bc, $003F                                  ; $59E6: $01 $3F $00
    ld c, l                                       ; $59E9: $4D
    ld [hl], $00                                  ; $59EA: $36 $00
    ld e, a                                       ; $59EC: $5F
    ccf                                           ; $59ED: $3F
    nop                                           ; $59EE: $00
    ld h, b                                       ; $59EF: $60
    ld b, h                                       ; $59F0: $44
    nop                                           ; $59F1: $00
    ld l, $4A                                     ; $59F2: $2E $4A
    nop                                           ; $59F4: $00
    ld bc, $003F                                  ; $59F5: $01 $3F $00
    ccf                                           ; $59F8: $3F
    dec hl                                        ; $59F9: $2B
    nop                                           ; $59FA: $00
    jr z, @-$35                                   ; $59FB: $28 $C9

    nop                                           ; $59FD: $00
    ld bc, $0000                                  ; $59FE: $01 $00 $00
    nop                                           ; $5A01: $00
    nop                                           ; $5A02: $00
    nop                                           ; $5A03: $00
    inc bc                                        ; $5A04: $03
    nop                                           ; $5A05: $00
    nop                                           ; $5A06: $00
    dec b                                         ; $5A07: $05
    ld bc, $0000                                  ; $5A08: $01 $00 $00
    ld [bc], a                                    ; $5A0B: $02
    nop                                           ; $5A0C: $00
    nop                                           ; $5A0D: $00
    ld [bc], a                                    ; $5A0E: $02
    nop                                           ; $5A0F: $00
    nop                                           ; $5A10: $00

jr_038_5A11:
    ld [bc], a                                    ; $5A11: $02
    nop                                           ; $5A12: $00
    nop                                           ; $5A13: $00
    dec b                                         ; $5A14: $05
    add b                                         ; $5A15: $80
    nop                                           ; $5A16: $00
    nop                                           ; $5A17: $00
    ld [bc], a                                    ; $5A18: $02
    nop                                           ; $5A19: $00
    nop                                           ; $5A1A: $00
    ld bc, $5A12                                  ; $5A1B: $01 $12 $5A
    ld l, d                                       ; $5A1E: $6A
    ld [hl+], a                                   ; $5A1F: $22
    ld l, e                                       ; $5A20: $6B
    ld l, h                                       ; $5A21: $6C
    ld [hl+], a                                   ; $5A22: $22
    ld l, l                                       ; $5A23: $6D
    ld bc, $8200                                  ; $5A24: $01 $00 $82
    ld a, c                                       ; $5A27: $79
    nop                                           ; $5A28: $00
    cp h                                          ; $5A29: $BC
    sub [hl]                                      ; $5A2A: $96
    nop                                           ; $5A2B: $00
    halt                                          ; $5A2C: $76
    sub l                                         ; $5A2D: $95
    nop                                           ; $5A2E: $00
    ld bc, $0000                                  ; $5A2F: $01 $00 $00
    inc bc                                        ; $5A32: $03
    xor a                                         ; $5A33: $AF
    nop                                           ; $5A34: $00
    add h                                         ; $5A35: $84
    xor a                                         ; $5A36: $AF
    nop                                           ; $5A37: $00
    sub l                                         ; $5A38: $95
    cp [hl]                                       ; $5A39: $BE
    nop                                           ; $5A3A: $00
    pop bc                                        ; $5A3B: $C1
    ld c, l                                       ; $5A3C: $4D
    ld bc, $3F97                                  ; $5A3D: $01 $97 $3F
    ld [hl+], a                                   ; $5A40: $22
    inc e                                         ; $5A41: $1C
    ld c, c                                       ; $5A42: $49
    ld [bc], a                                    ; $5A43: $02
    ld l, [hl]                                    ; $5A44: $6E
    ld l, a                                       ; $5A45: $6F
    jr nz, jr_038_5A11                            ; $5A46: $20 $C9

    nop                                           ; $5A48: $00
    nop                                           ; $5A49: $00
    nop                                           ; $5A4A: $00
    nop                                           ; $5A4B: $00
    nop                                           ; $5A4C: $00
    inc bc                                        ; $5A4D: $03
    ld b, c                                       ; $5A4E: $41
    ld [hl+], a                                   ; $5A4F: $22
    ld b, d                                       ; $5A50: $42
    ld b, e                                       ; $5A51: $43
    jr nz, @+$49                                  ; $5A52: $20 $47

    ld h, $00                                     ; $5A54: $26 $00
    ld l, c                                       ; $5A56: $69
    ld bc, $4002                                  ; $5A57: $01 $02 $40
    ld h, h                                       ; $5A5A: $64
    db $10                                        ; $5A5B: $10
    ld b, e                                       ; $5A5C: $43
    ld [hl], $00                                  ; $5A5D: $36 $00
    ld b, d                                       ; $5A5F: $42
    ld h, c                                       ; $5A60: $61
    nop                                           ; $5A61: $00
    ld bc, $0035                                  ; $5A62: $01 $35 $00
    ld e, l                                       ; $5A65: $5D
    ld a, [hl-]                                   ; $5A66: $3A
    nop                                           ; $5A67: $00
    ld e, l                                       ; $5A68: $5D
    ld c, c                                       ; $5A69: $49
    ld bc, $625A                                  ; $5A6A: $01 $5A $62
    db $10                                        ; $5A6D: $10
    ld l, [hl]                                    ; $5A6E: $6E
    ccf                                           ; $5A6F: $3F
    nop                                           ; $5A70: $00
    ld b, d                                       ; $5A71: $42
    ld l, d                                       ; $5A72: $6A
    nop                                           ; $5A73: $00
    ret                                           ; $5A74: $C9


    nop                                           ; $5A75: $00
    nop                                           ; $5A76: $00
    nop                                           ; $5A77: $00
    nop                                           ; $5A78: $00
    nop                                           ; $5A79: $00
    inc bc                                        ; $5A7A: $03
    ld b, b                                       ; $5A7B: $40
    ld de, $4241                                  ; $5A7C: $11 $41 $42
    db $10                                        ; $5A7F: $10
    ld bc, $0000                                  ; $5A80: $01 $00 $00
    nop                                           ; $5A83: $00
    nop                                           ; $5A84: $00
    nop                                           ; $5A85: $00
    inc bc                                        ; $5A86: $03
    ld bc, $7B00                                  ; $5A87: $01 $00 $7B
    halt                                          ; $5A8A: $76
    nop                                           ; $5A8B: $00
    ld a, b                                       ; $5A8C: $78
    adc c                                         ; $5A8D: $89
    nop                                           ; $5A8E: $00
    sub l                                         ; $5A8F: $95
    sbc a                                         ; $5A90: $9F
    nop                                           ; $5A91: $00
    jp nz, $007F                                  ; $5A92: $C2 $7F $00

    ld bc, $0000                                  ; $5A95: $01 $00 $00
    nop                                           ; $5A98: $00
    ld bc, $0100                                  ; $5A99: $01 $00 $01
    sbc $00                                       ; $5A9C: $DE $00
    call c, Call_000_00DA                         ; $5A9E: $DC $DA $00
    ld bc, $00E3                                  ; $5AA1: $01 $E3 $00
    ld bc, $0000                                  ; $5AA4: $01 $00 $00
    nop                                           ; $5AA7: $00
    nop                                           ; $5AA8: $00
    nop                                           ; $5AA9: $00
    inc bc                                        ; $5AAA: $03
    nop                                           ; $5AAB: $00
    nop                                           ; $5AAC: $00
    dec b                                         ; $5AAD: $05
    ld bc, $0000                                  ; $5AAE: $01 $00 $00
    ld [bc], a                                    ; $5AB1: $02
    nop                                           ; $5AB2: $00
    nop                                           ; $5AB3: $00
    ld b, $FE                                     ; $5AB4: $06 $FE
    adc [hl]                                      ; $5AB6: $8E
    ld de, $4A07                                  ; $5AB7: $11 $07 $4A
    nop                                           ; $5ABA: $00
    ld b, e                                       ; $5ABB: $43
    ld d, h                                       ; $5ABC: $54
    nop                                           ; $5ABD: $00
    ld b, c                                       ; $5ABE: $41
    inc l                                         ; $5ABF: $2C
    nop                                           ; $5AC0: $00
    ld bc, $0041                                  ; $5AC1: $01 $41 $00
    dec hl                                        ; $5AC4: $2B
    ld l, a                                       ; $5AC5: $6F
    nop                                           ; $5AC6: $00
    ld b, a                                       ; $5AC7: $47
    dec de                                        ; $5AC8: $1B
    jr nz, jr_038_5AFE                            ; $5AC9: $20 $33

    ld l, d                                       ; $5ACB: $6A
    nop                                           ; $5ACC: $00
    ret                                           ; $5ACD: $C9


    nop                                           ; $5ACE: $00
    nop                                           ; $5ACF: $00
    nop                                           ; $5AD0: $00
    nop                                           ; $5AD1: $00
    nop                                           ; $5AD2: $00
    inc bc                                        ; $5AD3: $03
    nop                                           ; $5AD4: $00
    nop                                           ; $5AD5: $00
    inc bc                                        ; $5AD6: $03
    ld bc, $9300                                  ; $5AD7: $01 $00 $93
    inc d                                         ; $5ADA: $14
    jr nz, @-$3B                                  ; $5ADB: $20 $C3

    ld a, c                                       ; $5ADD: $79
    nop                                           ; $5ADE: $00
    sub l                                         ; $5ADF: $95
    xor h                                         ; $5AE0: $AC
    nop                                           ; $5AE1: $00
    cp l                                          ; $5AE2: $BD
    adc c                                         ; $5AE3: $89
    nop                                           ; $5AE4: $00
    ld bc, $0000                                  ; $5AE5: $01 $00 $00
    nop                                           ; $5AE8: $00
    ld bc, $0100                                  ; $5AE9: $01 $00 $01
    sbc $00                                       ; $5AEC: $DE $00
    call c, Call_000_00DA                         ; $5AEE: $DC $DA $00
    ld bc, $00E2                                  ; $5AF1: $01 $E2 $00
    ld bc, $0000                                  ; $5AF4: $01 $00 $00
    nop                                           ; $5AF7: $00
    nop                                           ; $5AF8: $00
    nop                                           ; $5AF9: $00
    inc bc                                        ; $5AFA: $03
    nop                                           ; $5AFB: $00
    nop                                           ; $5AFC: $00
    dec b                                         ; $5AFD: $05

jr_038_5AFE:
    ld bc, $0000                                  ; $5AFE: $01 $00 $00
    ld [bc], a                                    ; $5B01: $02
    nop                                           ; $5B02: $00
    nop                                           ; $5B03: $00
    ld b, $FE                                     ; $5B04: $06 $FE
    adc c                                         ; $5B06: $89
    nop                                           ; $5B07: $00
    cp d                                          ; $5B08: $BA
    ld a, c                                       ; $5B09: $79
    nop                                           ; $5B0A: $00
    sbc c                                         ; $5B0B: $99
    call nz, $C100                                ; $5B0C: $C4 $00 $C1
    add h                                         ; $5B0F: $84
    nop                                           ; $5B10: $00
    ld b, a                                       ; $5B11: $47
    cpl                                           ; $5B12: $2F
    ld [hl+], a                                   ; $5B13: $22
    rla                                           ; $5B14: $17
    ld [hl], $00                                  ; $5B15: $36 $00
    ld b, d                                       ; $5B17: $42
    and c                                         ; $5B18: $A1
    nop                                           ; $5B19: $00
    jp nz, Jump_000_0095                          ; $5B1A: $C2 $95 $00

    ld [hl], $3F                                  ; $5B1D: $36 $3F
    nop                                           ; $5B1F: $00
    ld l, b                                       ; $5B20: $68
    ld e, h                                       ; $5B21: $5C
    jr nz, jr_038_5B82                            ; $5B22: $20 $5E

    ld b, h                                       ; $5B24: $44
    db $10                                        ; $5B25: $10
    scf                                           ; $5B26: $37
    ret                                           ; $5B27: $C9


    nop                                           ; $5B28: $00
    ld bc, $0000                                  ; $5B29: $01 $00 $00
    inc bc                                        ; $5B2C: $03
    nop                                           ; $5B2D: $00
    nop                                           ; $5B2E: $00
    inc bc                                        ; $5B2F: $03
    ld bc, $9A00                                  ; $5B30: $01 $00 $9A
    cp e                                          ; $5B33: $BB
    nop                                           ; $5B34: $00
    jp nz, $009A                                  ; $5B35: $C2 $9A $00

    and a                                         ; $5B38: $A7
    cp [hl]                                       ; $5B39: $BE
    nop                                           ; $5B3A: $00
    ld a, d                                       ; $5B3B: $7A
    nop                                           ; $5B3C: $00
    nop                                           ; $5B3D: $00
    nop                                           ; $5B3E: $00
    ld bc, $0100                                  ; $5B3F: $01 $00 $01
    jp c, $DC00                                   ; $5B42: $DA $00 $DC

    jp c, Boot                                    ; $5B45: $DA $00 $01

    db $E3                                        ; $5B48: $E3
    nop                                           ; $5B49: $00
    ld bc, $0000                                  ; $5B4A: $01 $00 $00
    nop                                           ; $5B4D: $00
    nop                                           ; $5B4E: $00
    nop                                           ; $5B4F: $00
    inc bc                                        ; $5B50: $03
    nop                                           ; $5B51: $00
    nop                                           ; $5B52: $00
    dec b                                         ; $5B53: $05
    ld bc, $0000                                  ; $5B54: $01 $00 $00
    ld [bc], a                                    ; $5B57: $02
    nop                                           ; $5B58: $00
    nop                                           ; $5B59: $00
    ld b, $FE                                     ; $5B5A: $06 $FE
    ld h, $11                                     ; $5B5C: $26 $11
    inc b                                         ; $5B5E: $04
    ld c, c                                       ; $5B5F: $49
    nop                                           ; $5B60: $00
    xor d                                         ; $5B61: $AA
    pop bc                                        ; $5B62: $C1
    nop                                           ; $5B63: $00
    sub d                                         ; $5B64: $92
    ld b, a                                       ; $5B65: $47
    ld bc, $8B8D                                  ; $5B66: $01 $8D $8B
    db $10                                        ; $5B69: $10
    scf                                           ; $5B6A: $37
    ld l, d                                       ; $5B6B: $6A
    nop                                           ; $5B6C: $00
    ret                                           ; $5B6D: $C9


    nop                                           ; $5B6E: $00
    nop                                           ; $5B6F: $00
    inc bc                                        ; $5B70: $03
    nop                                           ; $5B71: $00
    nop                                           ; $5B72: $00
    inc bc                                        ; $5B73: $03
    ld bc, $A200                                  ; $5B74: $01 $00 $A2
    call nz, $7800                                ; $5B77: $C4 $00 $78
    halt                                          ; $5B7A: $76
    nop                                           ; $5B7B: $00
    sub l                                         ; $5B7C: $95
    cp e                                          ; $5B7D: $BB
    nop                                           ; $5B7E: $00
    and d                                         ; $5B7F: $A2
    cp l                                          ; $5B80: $BD
    nop                                           ; $5B81: $00

jr_038_5B82:
    ld a, a                                       ; $5B82: $7F
    sub c                                         ; $5B83: $91
    nop                                           ; $5B84: $00
    halt                                          ; $5B85: $76
    ld bc, $0100                                  ; $5B86: $01 $00 $01
    call c, $DE00                                 ; $5B89: $DC $00 $DE
    ld bc, $E300                                  ; $5B8C: $01 $00 $E3
    nop                                           ; $5B8F: $00
    nop                                           ; $5B90: $00
    nop                                           ; $5B91: $00
    nop                                           ; $5B92: $00
    nop                                           ; $5B93: $00
    inc bc                                        ; $5B94: $03
    nop                                           ; $5B95: $00
    nop                                           ; $5B96: $00
    dec b                                         ; $5B97: $05
    ld bc, $0000                                  ; $5B98: $01 $00 $00
    ld [bc], a                                    ; $5B9B: $02
    nop                                           ; $5B9C: $00
    nop                                           ; $5B9D: $00
    ld b, $FE                                     ; $5B9E: $06 $FE
    jr nc, jr_038_5BC2                            ; $5BA0: $30 $20

    ld d, h                                       ; $5BA2: $54
    ld a, b                                       ; $5BA3: $78
    ld [de], a                                    ; $5BA4: $12
    ld sp, $006E                                  ; $5BA5: $31 $6E $00
    ld bc, $00AA                                  ; $5BA8: $01 $AA $00
    pop bc                                        ; $5BAB: $C1
    sub d                                         ; $5BAC: $92
    nop                                           ; $5BAD: $00
    ld b, a                                       ; $5BAE: $47
    ld [hl-], a                                   ; $5BAF: $32
    jr nz, @+$4E                                  ; $5BB0: $20 $4C

    inc sp                                        ; $5BB2: $33
    jr nz, @+$39                                  ; $5BB3: $20 $37

    ret                                           ; $5BB5: $C9


    nop                                           ; $5BB6: $00
    ld bc, $0000                                  ; $5BB7: $01 $00 $00
    nop                                           ; $5BBA: $00
    nop                                           ; $5BBB: $00
    nop                                           ; $5BBC: $00
    inc bc                                        ; $5BBD: $03
    nop                                           ; $5BBE: $00
    nop                                           ; $5BBF: $00
    inc bc                                        ; $5BC0: $03
    sbc a                                         ; $5BC1: $9F

jr_038_5BC2:
    ld hl, $4140                                  ; $5BC2: $21 $40 $41
    ld de, $0042                                  ; $5BC5: $11 $42 $00
    nop                                           ; $5BC8: $00
    nop                                           ; $5BC9: $00
    nop                                           ; $5BCA: $00
    nop                                           ; $5BCB: $00
    inc bc                                        ; $5BCC: $03
    ld bc, $B200                                  ; $5BCD: $01 $00 $B2
    add d                                         ; $5BD0: $82
    nop                                           ; $5BD1: $00
    sub h                                         ; $5BD2: $94
    call nz, $C200                                ; $5BD3: $C4 $00 $C2
    ld a, a                                       ; $5BD6: $7F
    nop                                           ; $5BD7: $00
    ld bc, $000D                                  ; $5BD8: $01 $0D $00
    call Call_000_0013                            ; $5BDB: $CD $13 $00
    call $0201                                    ; $5BDE: $CD $01 $02
    dec e                                         ; $5BE1: $1D
    ld b, [hl]                                    ; $5BE2: $46
    nop                                           ; $5BE3: $00
    daa                                           ; $5BE4: $27
    ld b, d                                       ; $5BE5: $42
    nop                                           ; $5BE6: $00
    ld bc, $00DC                                  ; $5BE7: $01 $DC $00
    jp c, Jump_000_00DC                           ; $5BEA: $DA $DC $00

    sbc $01                                       ; $5BED: $DE $01
    nop                                           ; $5BEF: $00
    db $E3                                        ; $5BF0: $E3
    nop                                           ; $5BF1: $00
    nop                                           ; $5BF2: $00
    inc bc                                        ; $5BF3: $03
    nop                                           ; $5BF4: $00
    nop                                           ; $5BF5: $00
    dec b                                         ; $5BF6: $05
    ld bc, $0000                                  ; $5BF7: $01 $00 $00
    ld [bc], a                                    ; $5BFA: $02
    nop                                           ; $5BFB: $00
    nop                                           ; $5BFC: $00
    ld b, $FE                                     ; $5BFD: $06 $FE
    adc [hl]                                      ; $5BFF: $8E
    ld de, $6E07                                  ; $5C00: $11 $07 $6E
    nop                                           ; $5C03: $00
    ld b, c                                       ; $5C04: $41
    dec hl                                        ; $5C05: $2B
    nop                                           ; $5C06: $00
    ld l, a                                       ; $5C07: $6F
    ld b, a                                       ; $5C08: $47
    nop                                           ; $5C09: $00
    ld bc, $00A7                                  ; $5C0A: $01 $A7 $00
    cp d                                          ; $5C0D: $BA
    jp nz, Jump_038_7F00                          ; $5C0E: $C2 $00 $7F

    and h                                         ; $5C11: $A4
    nop                                           ; $5C12: $00
    halt                                          ; $5C13: $76
    cp h                                          ; $5C14: $BC
    nop                                           ; $5C15: $00
    ld b, a                                       ; $5C16: $47
    adc l                                         ; $5C17: $8D
    ld de, $378B                                  ; $5C18: $11 $8B $37
    nop                                           ; $5C1B: $00
    ld l, d                                       ; $5C1C: $6A
    ret                                           ; $5C1D: $C9


    nop                                           ; $5C1E: $00
    ld bc, $0000                                  ; $5C1F: $01 $00 $00
    nop                                           ; $5C22: $00
    nop                                           ; $5C23: $00
    nop                                           ; $5C24: $00
    inc bc                                        ; $5C25: $03
    nop                                           ; $5C26: $00
    nop                                           ; $5C27: $00
    inc bc                                        ; $5C28: $03
    and [hl]                                      ; $5C29: $A6
    nop                                           ; $5C2A: $00
    halt                                          ; $5C2B: $76
    adc c                                         ; $5C2C: $89
    nop                                           ; $5C2D: $00
    sub l                                         ; $5C2E: $95
    or e                                          ; $5C2F: $B3
    nop                                           ; $5C30: $00
    halt                                          ; $5C31: $76
    sbc d                                         ; $5C32: $9A
    nop                                           ; $5C33: $00
    ld c, [hl]                                    ; $5C34: $4E
    nop                                           ; $5C35: $00
    nop                                           ; $5C36: $00
    nop                                           ; $5C37: $00
    nop                                           ; $5C38: $00
    nop                                           ; $5C39: $00
    inc bc                                        ; $5C3A: $03
    ret nc                                        ; $5C3B: $D0

    nop                                           ; $5C3C: $00
    sub l                                         ; $5C3D: $95
    cp e                                          ; $5C3E: $BB
    nop                                           ; $5C3F: $00
    add b                                         ; $5C40: $80
    cp d                                          ; $5C41: $BA
    nop                                           ; $5C42: $00
    sub l                                         ; $5C43: $95
    xor h                                         ; $5C44: $AC
    nop                                           ; $5C45: $00
    adc c                                         ; $5C46: $89
    pop de                                        ; $5C47: $D1
    nop                                           ; $5C48: $00
    ld c, d                                       ; $5C49: $4A
    nop                                           ; $5C4A: $00
    nop                                           ; $5C4B: $00
    nop                                           ; $5C4C: $00
    ld d, d                                       ; $5C4D: $52
    ld de, $3753                                  ; $5C4E: $11 $53 $37
    nop                                           ; $5C51: $00
    ld l, d                                       ; $5C52: $6A
    ret                                           ; $5C53: $C9


    nop                                           ; $5C54: $00
    ld bc, $0000                                  ; $5C55: $01 $00 $00
    nop                                           ; $5C58: $00
    nop                                           ; $5C59: $00
    nop                                           ; $5C5A: $00
    inc bc                                        ; $5C5B: $03
    nop                                           ; $5C5C: $00
    nop                                           ; $5C5D: $00
    inc b                                         ; $5C5E: $04
    ld bc, $0000                                  ; $5C5F: $01 $00 $00
    dec b                                         ; $5C62: $05
    ld bc, $0000                                  ; $5C63: $01 $00 $00
    ld [bc], a                                    ; $5C66: $02
    nop                                           ; $5C67: $00
    nop                                           ; $5C68: $00
    ld [bc], a                                    ; $5C69: $02
    nop                                           ; $5C6A: $00
    nop                                           ; $5C6B: $00
    ld [bc], a                                    ; $5C6C: $02
    nop                                           ; $5C6D: $00
    nop                                           ; $5C6E: $00
    ld b, $FE                                     ; $5C6F: $06 $FE
    ld b, b                                       ; $5C71: $40
    ld de, $4241                                  ; $5C72: $11 $41 $42
    db $10                                        ; $5C75: $10
    ld bc, $0000                                  ; $5C76: $01 $00 $00
    nop                                           ; $5C79: $00
    nop                                           ; $5C7A: $00
    nop                                           ; $5C7B: $00
    inc bc                                        ; $5C7C: $03
    ld bc, $AC00                                  ; $5C7D: $01 $00 $AC
    cp [hl]                                       ; $5C80: $BE
    nop                                           ; $5C81: $00
    halt                                          ; $5C82: $76
    sub l                                         ; $5C83: $95
    nop                                           ; $5C84: $00
    pop bc                                        ; $5C85: $C1
    ld a, d                                       ; $5C86: $7A
    nop                                           ; $5C87: $00
    add $76                                       ; $5C88: $C6 $76
    nop                                           ; $5C8A: $00
    and a                                         ; $5C8B: $A7
    nop                                           ; $5C8C: $00
    nop                                           ; $5C8D: $00
    nop                                           ; $5C8E: $00
    ld bc, $0100                                  ; $5C8F: $01 $00 $01
    call c, $DA00                                 ; $5C92: $DC $00 $DA
    ld bc, $E300                                  ; $5C95: $01 $00 $E3
    nop                                           ; $5C98: $00
    nop                                           ; $5C99: $00
    nop                                           ; $5C9A: $00
    nop                                           ; $5C9B: $00
    nop                                           ; $5C9C: $00
    inc bc                                        ; $5C9D: $03
    nop                                           ; $5C9E: $00
    nop                                           ; $5C9F: $00
    dec b                                         ; $5CA0: $05
    ld bc, $0000                                  ; $5CA1: $01 $00 $00
    ld [bc], a                                    ; $5CA4: $02
    nop                                           ; $5CA5: $00
    nop                                           ; $5CA6: $00
    ld b, $FE                                     ; $5CA7: $06 $FE
    inc de                                        ; $5CA9: $13
    jr nz, @+$2D                                  ; $5CAA: $20 $2B

    ld l, b                                       ; $5CAC: $68
    ld [bc], a                                    ; $5CAD: $02
    ld h, a                                       ; $5CAE: $67
    ld l, b                                       ; $5CAF: $68
    jr nz, jr_038_5D20                            ; $5CB0: $20 $6E

    jr jr_038_5CC4                                ; $5CB2: $18 $10

    ld [hl], $42                                  ; $5CB4: $36 $42
    nop                                           ; $5CB6: $00
    ld bc, $118D                                  ; $5CB7: $01 $8D $11
    adc e                                         ; $5CBA: $8B
    scf                                           ; $5CBB: $37
    nop                                           ; $5CBC: $00
    ld l, d                                       ; $5CBD: $6A
    ret                                           ; $5CBE: $C9


    nop                                           ; $5CBF: $00
    ld bc, $0000                                  ; $5CC0: $01 $00 $00
    nop                                           ; $5CC3: $00

jr_038_5CC4:
    nop                                           ; $5CC4: $00
    nop                                           ; $5CC5: $00
    inc bc                                        ; $5CC6: $03
    nop                                           ; $5CC7: $00
    nop                                           ; $5CC8: $00
    inc bc                                        ; $5CC9: $03
    ld bc, $9900                                  ; $5CCA: $01 $00 $99
    ld a, d                                       ; $5CCD: $7A
    nop                                           ; $5CCE: $00
    sub h                                         ; $5CCF: $94
    cp [hl]                                       ; $5CD0: $BE
    nop                                           ; $5CD1: $00
    pop bc                                        ; $5CD2: $C1
    sub c                                         ; $5CD3: $91
    nop                                           ; $5CD4: $00
    jp nz, $007F                                  ; $5CD5: $C2 $7F $00

    cp h                                          ; $5CD8: $BC
    nop                                           ; $5CD9: $00
    nop                                           ; $5CDA: $00
    nop                                           ; $5CDB: $00
    ld bc, $0100                                  ; $5CDC: $01 $00 $01
    call c, $DA00                                 ; $5CDF: $DC $00 $DA
    ld bc, $E200                                  ; $5CE2: $01 $00 $E2
    nop                                           ; $5CE5: $00
    nop                                           ; $5CE6: $00
    nop                                           ; $5CE7: $00
    nop                                           ; $5CE8: $00
    nop                                           ; $5CE9: $00
    inc bc                                        ; $5CEA: $03
    nop                                           ; $5CEB: $00
    nop                                           ; $5CEC: $00
    dec b                                         ; $5CED: $05
    ld bc, $0000                                  ; $5CEE: $01 $00 $00
    ld [bc], a                                    ; $5CF1: $02
    nop                                           ; $5CF2: $00
    nop                                           ; $5CF3: $00
    ld b, $FE                                     ; $5CF4: $06 $FE
    ld h, c                                       ; $5CF6: $61
    jr nz, jr_038_5D67                            ; $5CF7: $20 $6E

    ld bc, $8901                                  ; $5CF9: $01 $01 $89
    ld c, d                                       ; $5CFC: $4A
    ld [bc], a                                    ; $5CFD: $02
    cpl                                           ; $5CFE: $2F
    inc l                                         ; $5CFF: $2C
    ld bc, $3618                                  ; $5D00: $01 $18 $36
    nop                                           ; $5D03: $00
    ld b, d                                       ; $5D04: $42
    ld bc, $2F02                                  ; $5D05: $01 $02 $2F
    rla                                           ; $5D08: $17
    jr nz, @+$39                                  ; $5D09: $20 $37

    ld l, d                                       ; $5D0B: $6A
    nop                                           ; $5D0C: $00
    ret                                           ; $5D0D: $C9


    nop                                           ; $5D0E: $00
    nop                                           ; $5D0F: $00
    nop                                           ; $5D10: $00
    nop                                           ; $5D11: $00
    nop                                           ; $5D12: $00
    inc bc                                        ; $5D13: $03
    nop                                           ; $5D14: $00
    nop                                           ; $5D15: $00
    inc bc                                        ; $5D16: $03
    ld bc, $9500                                  ; $5D17: $01 $00 $95
    cp e                                          ; $5D1A: $BB
    nop                                           ; $5D1B: $00
    sub l                                         ; $5D1C: $95
    pop bc                                        ; $5D1D: $C1
    nop                                           ; $5D1E: $00
    adc c                                         ; $5D1F: $89

jr_038_5D20:
    cp h                                          ; $5D20: $BC
    nop                                           ; $5D21: $00
    halt                                          ; $5D22: $76
    nop                                           ; $5D23: $00
    nop                                           ; $5D24: $00
    nop                                           ; $5D25: $00
    ld bc, $0100                                  ; $5D26: $01 $00 $01
    jp c, $DC00                                   ; $5D29: $DA $00 $DC

    jp c, Boot                                    ; $5D2C: $DA $00 $01

    db $E3                                        ; $5D2F: $E3
    nop                                           ; $5D30: $00
    ld bc, $0000                                  ; $5D31: $01 $00 $00
    nop                                           ; $5D34: $00
    nop                                           ; $5D35: $00
    nop                                           ; $5D36: $00
    inc bc                                        ; $5D37: $03
    nop                                           ; $5D38: $00
    nop                                           ; $5D39: $00
    dec b                                         ; $5D3A: $05
    ld bc, $0000                                  ; $5D3B: $01 $00 $00
    ld [bc], a                                    ; $5D3E: $02
    nop                                           ; $5D3F: $00
    nop                                           ; $5D40: $00
    ld b, $FE                                     ; $5D41: $06 $FE
    adc [hl]                                      ; $5D43: $8E
    ld de, $4A07                                  ; $5D44: $11 $07 $4A
    ld [bc], a                                    ; $5D47: $02
    jr nc, jr_038_5D9E                            ; $5D48: $30 $54

    nop                                           ; $5D4A: $00
    ld b, c                                       ; $5D4B: $41
    inc l                                         ; $5D4C: $2C
    nop                                           ; $5D4D: $00
    ld bc, $002B                                  ; $5D4E: $01 $2B $00
    ld e, [hl]                                    ; $5D51: $5E
    ld b, c                                       ; $5D52: $41
    nop                                           ; $5D53: $00
    daa                                           ; $5D54: $27
    ld b, d                                       ; $5D55: $42
    nop                                           ; $5D56: $00
    ld bc, $201B                                  ; $5D57: $01 $1B $20
    inc sp                                        ; $5D5A: $33
    ld l, d                                       ; $5D5B: $6A
    nop                                           ; $5D5C: $00
    ret                                           ; $5D5D: $C9


    nop                                           ; $5D5E: $00
    nop                                           ; $5D5F: $00
    nop                                           ; $5D60: $00
    nop                                           ; $5D61: $00
    nop                                           ; $5D62: $00
    inc bc                                        ; $5D63: $03
    nop                                           ; $5D64: $00
    nop                                           ; $5D65: $00
    inc bc                                        ; $5D66: $03

jr_038_5D67:
    ld bc, $9400                                  ; $5D67: $01 $00 $94
    sub c                                         ; $5D6A: $91
    nop                                           ; $5D6B: $00
    cp h                                          ; $5D6C: $BC
    sub l                                         ; $5D6D: $95
    nop                                           ; $5D6E: $00
    pop bc                                        ; $5D6F: $C1
    xor h                                         ; $5D70: $AC
    nop                                           ; $5D71: $00
    cp l                                          ; $5D72: $BD
    adc c                                         ; $5D73: $89
    nop                                           ; $5D74: $00
    ld bc, $0000                                  ; $5D75: $01 $00 $00
    nop                                           ; $5D78: $00
    ld bc, $0100                                  ; $5D79: $01 $00 $01
    jp c, $DC00                                   ; $5D7C: $DA $00 $DC

    jp c, Boot                                    ; $5D7F: $DA $00 $01

    ldh [c], a                                    ; $5D82: $E2
    nop                                           ; $5D83: $00
    ld bc, $0000                                  ; $5D84: $01 $00 $00
    nop                                           ; $5D87: $00
    nop                                           ; $5D88: $00
    nop                                           ; $5D89: $00
    inc bc                                        ; $5D8A: $03
    nop                                           ; $5D8B: $00
    nop                                           ; $5D8C: $00
    dec b                                         ; $5D8D: $05
    ld bc, $0000                                  ; $5D8E: $01 $00 $00
    ld [bc], a                                    ; $5D91: $02
    nop                                           ; $5D92: $00
    nop                                           ; $5D93: $00
    ld b, $FE                                     ; $5D94: $06 $FE
    adc l                                         ; $5D96: $8D
    nop                                           ; $5D97: $00
    or a                                          ; $5D98: $B7
    pop bc                                        ; $5D99: $C1
    nop                                           ; $5D9A: $00
    xor h                                         ; $5D9B: $AC
    ld [hl], $00                                  ; $5D9C: $36 $00

jr_038_5D9E:
    ld b, d                                       ; $5D9E: $42
    ld bc, $4C01                                  ; $5D9F: $01 $01 $4C
    dec c                                         ; $5DA2: $0D
    db $10                                        ; $5DA3: $10
    ld c, d                                       ; $5DA4: $4A
    xor c                                         ; $5DA5: $A9
    nop                                           ; $5DA6: $00
    sbc c                                         ; $5DA7: $99
    call nz, $AC00                                ; $5DA8: $C4 $00 $AC
    cp l                                          ; $5DAB: $BD
    nop                                           ; $5DAC: $00
    adc c                                         ; $5DAD: $89
    scf                                           ; $5DAE: $37
    nop                                           ; $5DAF: $00
    ld l, d                                       ; $5DB0: $6A
    ret                                           ; $5DB1: $C9


    nop                                           ; $5DB2: $00
    ld bc, $0000                                  ; $5DB3: $01 $00 $00
    nop                                           ; $5DB6: $00
    nop                                           ; $5DB7: $00
    nop                                           ; $5DB8: $00
    inc bc                                        ; $5DB9: $03
    nop                                           ; $5DBA: $00
    nop                                           ; $5DBB: $00
    inc bc                                        ; $5DBC: $03
    sbc a                                         ; $5DBD: $9F
    ld hl, $4140                                  ; $5DBE: $21 $40 $41
    ld de, $0042                                  ; $5DC1: $11 $42 $00
    nop                                           ; $5DC4: $00
    nop                                           ; $5DC5: $00
    nop                                           ; $5DC6: $00
    nop                                           ; $5DC7: $00
    inc bc                                        ; $5DC8: $03
    ld bc, $0D00                                  ; $5DC9: $01 $00 $0D
    call $1300                                    ; $5DCC: $CD $00 $13
    call Call_038_7F00                            ; $5DCF: $CD $00 $7F
    cp d                                          ; $5DD2: $BA
    nop                                           ; $5DD3: $00
    adc c                                         ; $5DD4: $89
    sub c                                         ; $5DD5: $91
    nop                                           ; $5DD6: $00
    halt                                          ; $5DD7: $76
    nop                                           ; $5DD8: $00
    nop                                           ; $5DD9: $00
    nop                                           ; $5DDA: $00
    ld bc, $0100                                  ; $5DDB: $01 $00 $01
    call c, $DA00                                 ; $5DDE: $DC $00 $DA
    call c, $DE00                                 ; $5DE1: $DC $00 $DE
    ld bc, $E300                                  ; $5DE4: $01 $00 $E3
    nop                                           ; $5DE7: $00
    nop                                           ; $5DE8: $00
    nop                                           ; $5DE9: $00
    nop                                           ; $5DEA: $00
    nop                                           ; $5DEB: $00
    inc bc                                        ; $5DEC: $03
    nop                                           ; $5DED: $00
    nop                                           ; $5DEE: $00
    dec b                                         ; $5DEF: $05
    ld bc, $0000                                  ; $5DF0: $01 $00 $00
    ld [bc], a                                    ; $5DF3: $02
    nop                                           ; $5DF4: $00
    nop                                           ; $5DF5: $00
    ld b, $FE                                     ; $5DF6: $06 $FE
    inc de                                        ; $5DF8: $13
    jr nz, @+$2D                                  ; $5DF9: $20 $2B

    ld l, b                                       ; $5DFB: $68
    nop                                           ; $5DFC: $00
    ld bc, $00A7                                  ; $5DFD: $01 $A7 $00
    cp d                                          ; $5E00: $BA
    jp nz, Jump_038_7F00                          ; $5E01: $C2 $00 $7F

    and h                                         ; $5E04: $A4
    nop                                           ; $5E05: $00
    halt                                          ; $5E06: $76
    cp h                                          ; $5E07: $BC
    nop                                           ; $5E08: $00
    ld l, [hl]                                    ; $5E09: $6E
    sbc l                                         ; $5E0A: $9D
    ld [de], a                                    ; $5E0B: $12
    ld e, c                                       ; $5E0C: $59
    scf                                           ; $5E0D: $37
    nop                                           ; $5E0E: $00
    ld l, d                                       ; $5E0F: $6A
    ret                                           ; $5E10: $C9


    nop                                           ; $5E11: $00
    ld bc, $0000                                  ; $5E12: $01 $00 $00
    nop                                           ; $5E15: $00
    nop                                           ; $5E16: $00
    nop                                           ; $5E17: $00
    inc bc                                        ; $5E18: $03
    nop                                           ; $5E19: $00
    nop                                           ; $5E1A: $00
    inc bc                                        ; $5E1B: $03
    nop                                           ; $5E1C: $00
    nop                                           ; $5E1D: $00
    inc bc                                        ; $5E1E: $03
    ccf                                           ; $5E1F: $3F
    db $10                                        ; $5E20: $10
    daa                                           ; $5E21: $27
    ld l, [hl]                                    ; $5E22: $6E
    nop                                           ; $5E23: $00
    ld bc, $2069                                  ; $5E24: $01 $69 $20
    ld [hl], $5F                                  ; $5E27: $36 $5F
    nop                                           ; $5E29: $00
    ccf                                           ; $5E2A: $3F
    ld h, b                                       ; $5E2B: $60
    nop                                           ; $5E2C: $00
    ld b, h                                       ; $5E2D: $44
    ld l, $00                                     ; $5E2E: $2E $00
    ld c, d                                       ; $5E30: $4A
    ccf                                           ; $5E31: $3F
    db $10                                        ; $5E32: $10
    jr z, @-$35                                   ; $5E33: $28 $C9

    nop                                           ; $5E35: $00
    ld bc, $0000                                  ; $5E36: $01 $00 $00
    nop                                           ; $5E39: $00
    nop                                           ; $5E3A: $00
    nop                                           ; $5E3B: $00
    inc bc                                        ; $5E3C: $03
    nop                                           ; $5E3D: $00
    nop                                           ; $5E3E: $00
    dec b                                         ; $5E3F: $05
    ld bc, $0000                                  ; $5E40: $01 $00 $00
    ld [bc], a                                    ; $5E43: $02
    nop                                           ; $5E44: $00
    nop                                           ; $5E45: $00
    ld [bc], a                                    ; $5E46: $02
    nop                                           ; $5E47: $00
    nop                                           ; $5E48: $00
    ld [bc], a                                    ; $5E49: $02
    nop                                           ; $5E4A: $00
    nop                                           ; $5E4B: $00
    dec b                                         ; $5E4C: $05
    add b                                         ; $5E4D: $80
    nop                                           ; $5E4E: $00
    nop                                           ; $5E4F: $00
    ld [bc], a                                    ; $5E50: $02
    nop                                           ; $5E51: $00
    nop                                           ; $5E52: $00
    ld bc, $5E4A                                  ; $5E53: $01 $4A $5E
    jr nc, jr_038_5E58                            ; $5E56: $30 $00

jr_038_5E58:
    ld l, a                                       ; $5E58: $6F
    add hl, sp                                    ; $5E59: $39
    nop                                           ; $5E5A: $00
    add hl, sp                                    ; $5E5B: $39
    jr z, jr_038_5E5E                             ; $5E5C: $28 $00

jr_038_5E5E:
    ld [hl], $6B                                  ; $5E5E: $36 $6B
    nop                                           ; $5E60: $00
    daa                                           ; $5E61: $27
    dec hl                                        ; $5E62: $2B
    nop                                           ; $5E63: $00
    ld l, a                                       ; $5E64: $6F
    nop                                           ; $5E65: $00
    nop                                           ; $5E66: $00
    nop                                           ; $5E67: $00
    ld bc, $8100                                  ; $5E68: $01 $00 $81
    pop bc                                        ; $5E6B: $C1
    nop                                           ; $5E6C: $00
    xor c                                         ; $5E6D: $A9
    ld a, c                                       ; $5E6E: $79
    nop                                           ; $5E6F: $00
    ld bc, $0000                                  ; $5E70: $01 $00 $00
    nop                                           ; $5E73: $00
    nop                                           ; $5E74: $00
    nop                                           ; $5E75: $00
    inc bc                                        ; $5E76: $03
    ld c, c                                       ; $5E77: $49
    nop                                           ; $5E78: $00
    ld a, $4D                                     ; $5E79: $3E $4D
    nop                                           ; $5E7B: $00
    ld l, l                                       ; $5E7C: $6D
    dec l                                         ; $5E7D: $2D
    nop                                           ; $5E7E: $00
    jr c, @+$29                                   ; $5E7F: $38 $27

    nop                                           ; $5E81: $00
    ld a, e                                       ; $5E82: $7B
    sbc [hl]                                      ; $5E83: $9E
    nop                                           ; $5E84: $00
    cp h                                          ; $5E85: $BC
    add [hl]                                      ; $5E86: $86
    nop                                           ; $5E87: $00
    ld a, b                                       ; $5E88: $78
    ld b, a                                       ; $5E89: $47
    nop                                           ; $5E8A: $00
    ccf                                           ; $5E8B: $3F
    ccf                                           ; $5E8C: $3F
    nop                                           ; $5E8D: $00
    dec hl                                        ; $5E8E: $2B
    jr z, jr_038_5E91                             ; $5E8F: $28 $00

jr_038_5E91:
    ret z                                         ; $5E91: $C8

    add a                                         ; $5E92: $87
    nop                                           ; $5E93: $00
    ld a, c                                       ; $5E94: $79
    and l                                         ; $5E95: $A5
    nop                                           ; $5E96: $00
    sub l                                         ; $5E97: $95
    cp [hl]                                       ; $5E98: $BE
    nop                                           ; $5E99: $00
    pop bc                                        ; $5E9A: $C1
    ld c, l                                       ; $5E9B: $4D
    nop                                           ; $5E9C: $00
    ld [hl], $6B                                  ; $5E9D: $36 $6B
    nop                                           ; $5E9F: $00
    daa                                           ; $5EA0: $27
    dec hl                                        ; $5EA1: $2B
    nop                                           ; $5EA2: $00
    ld l, a                                       ; $5EA3: $6F
    ret                                           ; $5EA4: $C9


    nop                                           ; $5EA5: $00
    ld bc, $0000                                  ; $5EA6: $01 $00 $00
    nop                                           ; $5EA9: $00
    nop                                           ; $5EAA: $00
    nop                                           ; $5EAB: $00
    inc bc                                        ; $5EAC: $03
    ld l, e                                       ; $5EAD: $6B
    nop                                           ; $5EAE: $00
    daa                                           ; $5EAF: $27
    jr c, jr_038_5EB2                             ; $5EB0: $38 $00

jr_038_5EB2:
    daa                                           ; $5EB2: $27
    ld b, a                                       ; $5EB3: $47
    nop                                           ; $5EB4: $00
    ld bc, $0063                                  ; $5EB5: $01 $63 $00
    jr z, jr_038_5EE6                             ; $5EB8: $28 $2C

    nop                                           ; $5EBA: $00
    ld b, e                                       ; $5EBB: $43
    ld bc, $6200                                  ; $5EBC: $01 $00 $62
    dec [hl]                                      ; $5EBF: $35
    nop                                           ; $5EC0: $00
    ld [hl], $35                                  ; $5EC1: $36 $35
    nop                                           ; $5EC3: $00
    ld c, d                                       ; $5EC4: $4A
    ld h, $00                                     ; $5EC5: $26 $00
    ld d, b                                       ; $5EC7: $50
    ld l, e                                       ; $5EC8: $6B
    nop                                           ; $5EC9: $00
    ld l, d                                       ; $5ECA: $6A
    ld bc, $8700                                  ; $5ECB: $01 $00 $87
    ld a, c                                       ; $5ECE: $79
    nop                                           ; $5ECF: $00
    and l                                         ; $5ED0: $A5
    sub l                                         ; $5ED1: $95
    nop                                           ; $5ED2: $00
    cp [hl]                                       ; $5ED3: $BE
    pop bc                                        ; $5ED4: $C1
    nop                                           ; $5ED5: $00
    jr c, @+$71                                   ; $5ED6: $38 $6F

    nop                                           ; $5ED8: $00
    ld [hl], $C9                                  ; $5ED9: $36 $C9
    nop                                           ; $5EDB: $00
    ld bc, $0000                                  ; $5EDC: $01 $00 $00
    nop                                           ; $5EDF: $00
    nop                                           ; $5EE0: $00
    nop                                           ; $5EE1: $00
    inc bc                                        ; $5EE2: $03
    ld c, a                                       ; $5EE3: $4F
    nop                                           ; $5EE4: $00
    ld [hl], b                                    ; $5EE5: $70

jr_038_5EE6:
    dec [hl]                                      ; $5EE6: $35
    nop                                           ; $5EE7: $00
    ld b, c                                       ; $5EE8: $41
    ld l, l                                       ; $5EE9: $6D
    nop                                           ; $5EEA: $00
    ld a, [hl-]                                   ; $5EEB: $3A
    nop                                           ; $5EEC: $00
    nop                                           ; $5EED: $00
    nop                                           ; $5EEE: $00
    nop                                           ; $5EEF: $00
    nop                                           ; $5EF0: $00
    inc bc                                        ; $5EF1: $03
    ld bc, $8700                                  ; $5EF2: $01 $00 $87
    ld a, c                                       ; $5EF5: $79
    nop                                           ; $5EF6: $00
    and l                                         ; $5EF7: $A5
    halt                                          ; $5EF8: $76
    nop                                           ; $5EF9: $00
    and a                                         ; $5EFA: $A7
    cp l                                          ; $5EFB: $BD
    nop                                           ; $5EFC: $00
    halt                                          ; $5EFD: $76
    sbc d                                         ; $5EFE: $9A
    nop                                           ; $5EFF: $00
    ld bc, $0000                                  ; $5F00: $01 $00 $00
    nop                                           ; $5F03: $00
    ld bc, $0100                                  ; $5F04: $01 $00 $01
    jp c, $DC00                                   ; $5F07: $DA $00 $DC

    jp c, Boot                                    ; $5F0A: $DA $00 $01

    db $E3                                        ; $5F0D: $E3
    nop                                           ; $5F0E: $00
    ld bc, $0000                                  ; $5F0F: $01 $00 $00
    nop                                           ; $5F12: $00
    nop                                           ; $5F13: $00
    nop                                           ; $5F14: $00
    inc bc                                        ; $5F15: $03
    nop                                           ; $5F16: $00
    nop                                           ; $5F17: $00
    dec b                                         ; $5F18: $05
    ld bc, $0000                                  ; $5F19: $01 $00 $00
    ld [bc], a                                    ; $5F1C: $02
    nop                                           ; $5F1D: $00
    nop                                           ; $5F1E: $00
    ld b, $FE                                     ; $5F1F: $06 $FE
    ld l, $00                                     ; $5F21: $2E $00
    ld l, a                                       ; $5F23: $6F
    ld b, a                                       ; $5F24: $47
    nop                                           ; $5F25: $00
    ld bc, $003B                                  ; $5F26: $01 $3B $00
    ld h, [hl]                                    ; $5F29: $66
    jr z, jr_038_5F2C                             ; $5F2A: $28 $00

jr_038_5F2C:
    dec sp                                        ; $5F2C: $3B
    ld c, d                                       ; $5F2D: $4A
    nop                                           ; $5F2E: $00
    inc l                                         ; $5F2F: $2C
    ld l, d                                       ; $5F30: $6A
    nop                                           ; $5F31: $00
    ld bc, $002F                                  ; $5F32: $01 $2F $00
    jr z, @+$35                                   ; $5F35: $28 $33

    nop                                           ; $5F37: $00
    inc l                                         ; $5F38: $2C
    ret                                           ; $5F39: $C9


    nop                                           ; $5F3A: $00
    ld bc, $0000                                  ; $5F3B: $01 $00 $00
    nop                                           ; $5F3E: $00
    nop                                           ; $5F3F: $00
    nop                                           ; $5F40: $00
    inc bc                                        ; $5F41: $03
    nop                                           ; $5F42: $00
    nop                                           ; $5F43: $00
    inc bc                                        ; $5F44: $03
    ld bc, $AC00                                  ; $5F45: $01 $00 $AC
    cp d                                          ; $5F48: $BA
    nop                                           ; $5F49: $00
    adc [hl]                                      ; $5F4A: $8E
    xor a                                         ; $5F4B: $AF
    nop                                           ; $5F4C: $00
    ld a, [hl]                                    ; $5F4D: $7E
    or a                                          ; $5F4E: $B7
    nop                                           ; $5F4F: $00
    sbc a                                         ; $5F50: $9F
    pop bc                                        ; $5F51: $C1
    nop                                           ; $5F52: $00
    ld bc, $0000                                  ; $5F53: $01 $00 $00
    nop                                           ; $5F56: $00
    ld bc, $0100                                  ; $5F57: $01 $00 $01
    call c, $DA00                                 ; $5F5A: $DC $00 $DA
    ld bc, $E300                                  ; $5F5D: $01 $00 $E3
    nop                                           ; $5F60: $00
    nop                                           ; $5F61: $00
    nop                                           ; $5F62: $00
    nop                                           ; $5F63: $00
    nop                                           ; $5F64: $00
    inc bc                                        ; $5F65: $03
    nop                                           ; $5F66: $00
    nop                                           ; $5F67: $00
    dec b                                         ; $5F68: $05
    ld bc, $0000                                  ; $5F69: $01 $00 $00
    ld [bc], a                                    ; $5F6C: $02
    nop                                           ; $5F6D: $00
    nop                                           ; $5F6E: $00
    ld b, $FE                                     ; $5F6F: $06 $FE
    ld e, l                                       ; $5F71: $5D
    nop                                           ; $5F72: $00
    add hl, hl                                    ; $5F73: $29
    ld c, d                                       ; $5F74: $4A
    nop                                           ; $5F75: $00
    ld bc, $0088                                  ; $5F76: $01 $88 $00
    cp c                                          ; $5F79: $B9
    jp nz, $9500                                  ; $5F7A: $C2 $00 $95

    ld l, [hl]                                    ; $5F7D: $6E
    nop                                           ; $5F7E: $00
    ld b, e                                       ; $5F7F: $43
    ld d, e                                       ; $5F80: $53
    nop                                           ; $5F81: $00
    ld [hl], $42                                  ; $5F82: $36 $42
    nop                                           ; $5F84: $00
    ld bc, $002F                                  ; $5F85: $01 $2F $00
    jr z, @+$35                                   ; $5F88: $28 $33

    nop                                           ; $5F8A: $00
    inc l                                         ; $5F8B: $2C
    ret                                           ; $5F8C: $C9


    nop                                           ; $5F8D: $00
    ld bc, $0000                                  ; $5F8E: $01 $00 $00
    nop                                           ; $5F91: $00
    nop                                           ; $5F92: $00
    nop                                           ; $5F93: $00
    inc bc                                        ; $5F94: $03
    nop                                           ; $5F95: $00
    nop                                           ; $5F96: $00
    inc bc                                        ; $5F97: $03
    ld bc, $8300                                  ; $5F98: $01 $00 $83
    add d                                         ; $5F9B: $82
    nop                                           ; $5F9C: $00
    ld a, b                                       ; $5F9D: $78
    sub c                                         ; $5F9E: $91
    nop                                           ; $5F9F: $00
    jp nz, $007F                                  ; $5FA0: $C2 $7F $00

    ld bc, $0000                                  ; $5FA3: $01 $00 $00
    nop                                           ; $5FA6: $00
    ld bc, $0100                                  ; $5FA7: $01 $00 $01
    sbc $00                                       ; $5FAA: $DE $00
    call c, Call_000_00DA                         ; $5FAC: $DC $DA $00
    ld bc, $00E2                                  ; $5FAF: $01 $E2 $00
    ld bc, $0000                                  ; $5FB2: $01 $00 $00
    nop                                           ; $5FB5: $00
    nop                                           ; $5FB6: $00
    nop                                           ; $5FB7: $00
    inc bc                                        ; $5FB8: $03
    nop                                           ; $5FB9: $00
    nop                                           ; $5FBA: $00
    dec b                                         ; $5FBB: $05
    ld bc, $0000                                  ; $5FBC: $01 $00 $00
    ld [bc], a                                    ; $5FBF: $02
    nop                                           ; $5FC0: $00
    nop                                           ; $5FC1: $00
    ld b, $FE                                     ; $5FC2: $06 $FE
    ld b, e                                       ; $5FC4: $43
    nop                                           ; $5FC5: $00
    ld [hl], b                                    ; $5FC6: $70
    ld [hl], $00                                  ; $5FC7: $36 $00
    ld l, a                                       ; $5FC9: $6F
    ld [hl], $00                                  ; $5FCA: $36 $00
    ld b, d                                       ; $5FCC: $42
    ld bc, $9100                                  ; $5FCD: $01 $00 $91
    jp nz, Jump_038_7F00                          ; $5FD0: $C2 $00 $7F

    cp h                                          ; $5FD3: $BC
    nop                                           ; $5FD4: $00
    ld b, a                                       ; $5FD5: $47
    cpl                                           ; $5FD6: $2F
    nop                                           ; $5FD7: $00
    jr z, @+$35                                   ; $5FD8: $28 $33

    nop                                           ; $5FDA: $00
    inc l                                         ; $5FDB: $2C
    ld l, [hl]                                    ; $5FDC: $6E
    nop                                           ; $5FDD: $00
    scf                                           ; $5FDE: $37
    ld l, d                                       ; $5FDF: $6A
    nop                                           ; $5FE0: $00
    ret                                           ; $5FE1: $C9


    nop                                           ; $5FE2: $00
    nop                                           ; $5FE3: $00
    nop                                           ; $5FE4: $00
    nop                                           ; $5FE5: $00
    nop                                           ; $5FE6: $00
    inc bc                                        ; $5FE7: $03
    nop                                           ; $5FE8: $00
    nop                                           ; $5FE9: $00
    inc bc                                        ; $5FEA: $03
    ld bc, $8100                                  ; $5FEB: $01 $00 $81
    pop bc                                        ; $5FEE: $C1
    nop                                           ; $5FEF: $00
    xor c                                         ; $5FF0: $A9
    ld a, c                                       ; $5FF1: $79
    nop                                           ; $5FF2: $00
    sbc d                                         ; $5FF3: $9A
    cp d                                          ; $5FF4: $BA
    nop                                           ; $5FF5: $00
    ld a, c                                       ; $5FF6: $79
    and l                                         ; $5FF7: $A5
    nop                                           ; $5FF8: $00
    halt                                          ; $5FF9: $76
    nop                                           ; $5FFA: $00
    nop                                           ; $5FFB: $00
    nop                                           ; $5FFC: $00
    ld bc, $4000                                  ; $5FFD: $01 $00 $40
    dec hl                                        ; $6000: $2B
    nop                                           ; $6001: $00
    ld b, [hl]                                    ; $6002: $46
    daa                                           ; $6003: $27
    nop                                           ; $6004: $00
    ld b, d                                       ; $6005: $42
    ld bc, $DE00                                  ; $6006: $01 $00 $DE
    call c, $DA00                                 ; $6009: $DC $00 $DA
    ld bc, $E300                                  ; $600C: $01 $00 $E3
    nop                                           ; $600F: $00
    nop                                           ; $6010: $00
    inc bc                                        ; $6011: $03
    nop                                           ; $6012: $00
    nop                                           ; $6013: $00
    dec b                                         ; $6014: $05
    ld bc, $0000                                  ; $6015: $01 $00 $00
    ld [bc], a                                    ; $6018: $02
    nop                                           ; $6019: $00
    nop                                           ; $601A: $00
    ld b, $FE                                     ; $601B: $06 $FE
    ld h, $00                                     ; $601D: $26 $00
    daa                                           ; $601F: $27
    ld b, d                                       ; $6020: $42
    nop                                           ; $6021: $00
    ld l, [hl]                                    ; $6022: $6E
    ld c, c                                       ; $6023: $49
    nop                                           ; $6024: $00
    inc sp                                        ; $6025: $33
    ld b, d                                       ; $6026: $42
    nop                                           ; $6027: $00
    dec hl                                        ; $6028: $2B
    ld l, b                                       ; $6029: $68
    nop                                           ; $602A: $00
    ld bc, $0041                                  ; $602B: $01 $41 $00
    dec hl                                        ; $602E: $2B
    ld l, a                                       ; $602F: $6F
    nop                                           ; $6030: $00
    ld b, a                                       ; $6031: $47
    ld bc, $3B00                                  ; $6032: $01 $00 $3B
    ld h, b                                       ; $6035: $60
    nop                                           ; $6036: $00
    ld l, a                                       ; $6037: $6F
    ld c, d                                       ; $6038: $4A
    nop                                           ; $6039: $00
    ccf                                           ; $603A: $3F
    ccf                                           ; $603B: $3F
    nop                                           ; $603C: $00
    inc l                                         ; $603D: $2C
    ld b, c                                       ; $603E: $41
    nop                                           ; $603F: $00
    ld l, $6A                                     ; $6040: $2E $6A
    nop                                           ; $6042: $00
    ld bc, $0049                                  ; $6043: $01 $49 $00
    inc sp                                        ; $6046: $33
    ld l, l                                       ; $6047: $6D
    nop                                           ; $6048: $00
    ld a, [hl-]                                   ; $6049: $3A
    ret                                           ; $604A: $C9


    nop                                           ; $604B: $00
    ld bc, $0000                                  ; $604C: $01 $00 $00
    nop                                           ; $604F: $00
    nop                                           ; $6050: $00
    nop                                           ; $6051: $00
    inc bc                                        ; $6052: $03
    nop                                           ; $6053: $00
    nop                                           ; $6054: $00
    inc bc                                        ; $6055: $03
    add l                                         ; $6056: $85
    nop                                           ; $6057: $00
    ld a, [hl]                                    ; $6058: $7E
    ld c, a                                       ; $6059: $4F
    nop                                           ; $605A: $00
    ld [hl], b                                    ; $605B: $70
    dec [hl]                                      ; $605C: $35
    nop                                           ; $605D: $00
    ld b, c                                       ; $605E: $41
    ld l, l                                       ; $605F: $6D
    nop                                           ; $6060: $00
    ld a, [hl-]                                   ; $6061: $3A
    nop                                           ; $6062: $00
    nop                                           ; $6063: $00
    nop                                           ; $6064: $00
    nop                                           ; $6065: $00
    nop                                           ; $6066: $00
    inc bc                                        ; $6067: $03
    ld bc, $3D00                                  ; $6068: $01 $00 $3D
    ld b, c                                       ; $606B: $41
    nop                                           ; $606C: $00
    add c                                         ; $606D: $81
    pop bc                                        ; $606E: $C1
    nop                                           ; $606F: $00
    xor c                                         ; $6070: $A9
    ld a, c                                       ; $6071: $79
    nop                                           ; $6072: $00
    sbc d                                         ; $6073: $9A
    cp d                                          ; $6074: $BA
    nop                                           ; $6075: $00
    ld a, c                                       ; $6076: $79
    and l                                         ; $6077: $A5
    nop                                           ; $6078: $00
    halt                                          ; $6079: $76
    ld b, b                                       ; $607A: $40
    nop                                           ; $607B: $00
    dec hl                                        ; $607C: $2B
    ld b, [hl]                                    ; $607D: $46
    nop                                           ; $607E: $00
    daa                                           ; $607F: $27
    ld b, d                                       ; $6080: $42
    nop                                           ; $6081: $00
    ld bc, $00DC                                  ; $6082: $01 $DC $00
    jp c, Jump_000_00DC                           ; $6085: $DA $DC $00

    sbc $01                                       ; $6088: $DE $01
    nop                                           ; $608A: $00
    db $E3                                        ; $608B: $E3
    nop                                           ; $608C: $00
    nop                                           ; $608D: $00
    inc bc                                        ; $608E: $03
    nop                                           ; $608F: $00
    nop                                           ; $6090: $00
    dec b                                         ; $6091: $05
    ld bc, $0000                                  ; $6092: $01 $00 $00
    ld [bc], a                                    ; $6095: $02
    nop                                           ; $6096: $00
    nop                                           ; $6097: $00
    ld b, $FE                                     ; $6098: $06 $FE
    inc l                                         ; $609A: $2C
    nop                                           ; $609B: $00
    ld h, a                                       ; $609C: $67
    jr z, jr_038_609F                             ; $609D: $28 $00

jr_038_609F:
    ld l, c                                       ; $609F: $69
    ld h, a                                       ; $60A0: $67
    nop                                           ; $60A1: $00
    dec l                                         ; $60A2: $2D
    ld c, c                                       ; $60A3: $49
    nop                                           ; $60A4: $00
    ld bc, $0081                                  ; $60A5: $01 $81 $00
    pop bc                                        ; $60A8: $C1
    xor c                                         ; $60A9: $A9
    nop                                           ; $60AA: $00
    ld a, c                                       ; $60AB: $79
    sbc d                                         ; $60AC: $9A
    nop                                           ; $60AD: $00
    cp d                                          ; $60AE: $BA
    ld a, c                                       ; $60AF: $79
    nop                                           ; $60B0: $00
    and l                                         ; $60B1: $A5
    halt                                          ; $60B2: $76
    nop                                           ; $60B3: $00
    ret                                           ; $60B4: $C9


    nop                                           ; $60B5: $00
    nop                                           ; $60B6: $00
    nop                                           ; $60B7: $00
    nop                                           ; $60B8: $00
    nop                                           ; $60B9: $00
    inc bc                                        ; $60BA: $03
    nop                                           ; $60BB: $00
    nop                                           ; $60BC: $00
    inc bc                                        ; $60BD: $03
    and [hl]                                      ; $60BE: $A6
    nop                                           ; $60BF: $00
    halt                                          ; $60C0: $76
    adc c                                         ; $60C1: $89
    nop                                           ; $60C2: $00
    sub l                                         ; $60C3: $95
    or e                                          ; $60C4: $B3
    nop                                           ; $60C5: $00
    halt                                          ; $60C6: $76
    sbc d                                         ; $60C7: $9A
    nop                                           ; $60C8: $00
    ld c, [hl]                                    ; $60C9: $4E
    nop                                           ; $60CA: $00
    nop                                           ; $60CB: $00
    nop                                           ; $60CC: $00
    nop                                           ; $60CD: $00
    nop                                           ; $60CE: $00
    inc bc                                        ; $60CF: $03
    ret nc                                        ; $60D0: $D0

    nop                                           ; $60D1: $00
    add [hl]                                      ; $60D2: $86
    cp e                                          ; $60D3: $BB
    nop                                           ; $60D4: $00
    cp d                                          ; $60D5: $BA
    pop de                                        ; $60D6: $D1
    nop                                           ; $60D7: $00
    ld c, d                                       ; $60D8: $4A
    nop                                           ; $60D9: $00
    nop                                           ; $60DA: $00
    nop                                           ; $60DB: $00
    ld d, c                                       ; $60DC: $51
    nop                                           ; $60DD: $00
    ld l, a                                       ; $60DE: $6F
    ld [hl], $00                                  ; $60DF: $36 $00
    ld l, a                                       ; $60E1: $6F
    scf                                           ; $60E2: $37
    nop                                           ; $60E3: $00
    ld l, d                                       ; $60E4: $6A
    ret                                           ; $60E5: $C9


    nop                                           ; $60E6: $00
    ld bc, $0000                                  ; $60E7: $01 $00 $00
    nop                                           ; $60EA: $00
    nop                                           ; $60EB: $00
    nop                                           ; $60EC: $00
    inc bc                                        ; $60ED: $03
    nop                                           ; $60EE: $00
    nop                                           ; $60EF: $00
    inc b                                         ; $60F0: $04
    ld bc, $0000                                  ; $60F1: $01 $00 $00
    dec b                                         ; $60F4: $05
    ld bc, $0000                                  ; $60F5: $01 $00 $00
    ld [bc], a                                    ; $60F8: $02
    nop                                           ; $60F9: $00
    nop                                           ; $60FA: $00
    ld [bc], a                                    ; $60FB: $02
    nop                                           ; $60FC: $00
    nop                                           ; $60FD: $00
    ld [bc], a                                    ; $60FE: $02
    nop                                           ; $60FF: $00
    nop                                           ; $6100: $00
    ld b, $FE                                     ; $6101: $06 $FE
    ld c, a                                       ; $6103: $4F
    nop                                           ; $6104: $00
    ld [hl], b                                    ; $6105: $70
    dec [hl]                                      ; $6106: $35
    nop                                           ; $6107: $00
    ld b, c                                       ; $6108: $41
    ld l, l                                       ; $6109: $6D
    nop                                           ; $610A: $00
    ld a, [hl-]                                   ; $610B: $3A
    nop                                           ; $610C: $00
    nop                                           ; $610D: $00
    nop                                           ; $610E: $00
    nop                                           ; $610F: $00
    nop                                           ; $6110: $00
    inc bc                                        ; $6111: $03
    ld bc, $A000                                  ; $6112: $01 $00 $A0
    pop bc                                        ; $6115: $C1
    nop                                           ; $6116: $00
    xor a                                         ; $6117: $AF
    halt                                          ; $6118: $76
    nop                                           ; $6119: $00
    sbc e                                         ; $611A: $9B
    jp nz, Jump_038_7F00                          ; $611B: $C2 $00 $7F

    cp h                                          ; $611E: $BC
    nop                                           ; $611F: $00
    ld bc, $0000                                  ; $6120: $01 $00 $00
    nop                                           ; $6123: $00
    ld bc, $0100                                  ; $6124: $01 $00 $01
    call c, $DA00                                 ; $6127: $DC $00 $DA
    ld bc, $E300                                  ; $612A: $01 $00 $E3
    nop                                           ; $612D: $00
    nop                                           ; $612E: $00
    nop                                           ; $612F: $00
    nop                                           ; $6130: $00
    nop                                           ; $6131: $00
    inc bc                                        ; $6132: $03
    nop                                           ; $6133: $00
    nop                                           ; $6134: $00
    dec b                                         ; $6135: $05
    ld bc, $0000                                  ; $6136: $01 $00 $00
    ld [bc], a                                    ; $6139: $02
    nop                                           ; $613A: $00
    nop                                           ; $613B: $00
    ld b, $FE                                     ; $613C: $06 $FE
    jr z, jr_038_6140                             ; $613E: $28 $00

jr_038_6140:
    ld b, a                                       ; $6140: $47
    ld l, [hl]                                    ; $6141: $6E
    nop                                           ; $6142: $00
    ld d, b                                       ; $6143: $50
    ld l, c                                       ; $6144: $69
    nop                                           ; $6145: $00
    ld a, [hl+]                                   ; $6146: $2A
    ld l, h                                       ; $6147: $6C
    nop                                           ; $6148: $00
    ld [hl], $42                                  ; $6149: $36 $42
    nop                                           ; $614B: $00
    ld bc, $0043                                  ; $614C: $01 $43 $00
    ld [hl], b                                    ; $614F: $70
    ld [hl], $00                                  ; $6150: $36 $00
    ld l, a                                       ; $6152: $6F
    scf                                           ; $6153: $37
    nop                                           ; $6154: $00
    ld l, d                                       ; $6155: $6A
    ld bc, $2F00                                  ; $6156: $01 $00 $2F
    jr z, jr_038_615B                             ; $6159: $28 $00

jr_038_615B:
    inc sp                                        ; $615B: $33
    inc l                                         ; $615C: $2C
    nop                                           ; $615D: $00
    ret                                           ; $615E: $C9


    nop                                           ; $615F: $00
    nop                                           ; $6160: $00
    nop                                           ; $6161: $00
    nop                                           ; $6162: $00
    nop                                           ; $6163: $00
    inc bc                                        ; $6164: $03
    nop                                           ; $6165: $00
    nop                                           ; $6166: $00
    inc bc                                        ; $6167: $03
    ld bc, $7D00                                  ; $6168: $01 $00 $7D
    ld a, d                                       ; $616B: $7A
    nop                                           ; $616C: $00
    pop bc                                        ; $616D: $C1
    sub c                                         ; $616E: $91
    nop                                           ; $616F: $00
    halt                                          ; $6170: $76
    and b                                         ; $6171: $A0
    nop                                           ; $6172: $00
    pop bc                                        ; $6173: $C1
    xor a                                         ; $6174: $AF
    nop                                           ; $6175: $00
    halt                                          ; $6176: $76
    nop                                           ; $6177: $00
    nop                                           ; $6178: $00
    nop                                           ; $6179: $00
    ld bc, $0100                                  ; $617A: $01 $00 $01
    call c, $DE00                                 ; $617D: $DC $00 $DE
    ld bc, $E200                                  ; $6180: $01 $00 $E2
    nop                                           ; $6183: $00
    nop                                           ; $6184: $00
    nop                                           ; $6185: $00
    nop                                           ; $6186: $00
    nop                                           ; $6187: $00
    inc bc                                        ; $6188: $03
    nop                                           ; $6189: $00
    nop                                           ; $618A: $00
    dec b                                         ; $618B: $05
    ld bc, $0000                                  ; $618C: $01 $00 $00
    ld [bc], a                                    ; $618F: $02
    nop                                           ; $6190: $00
    nop                                           ; $6191: $00
    ld b, $FE                                     ; $6192: $06 $FE
    jr z, jr_038_6196                             ; $6194: $28 $00

jr_038_6196:
    add hl, hl                                    ; $6196: $29
    cpl                                           ; $6197: $2F
    nop                                           ; $6198: $00
    jr z, @+$35                                   ; $6199: $28 $33

    nop                                           ; $619B: $00
    inc l                                         ; $619C: $2C
    ld l, [hl]                                    ; $619D: $6E
    nop                                           ; $619E: $00
    ld bc, $0028                                  ; $619F: $01 $28 $00
    ld l, $43                                     ; $61A2: $2E $43
    nop                                           ; $61A4: $00
    ld h, b                                       ; $61A5: $60
    ld b, d                                       ; $61A6: $42
    nop                                           ; $61A7: $00
    ld bc, $004E                                  ; $61A8: $01 $4E $00
    ld l, a                                       ; $61AB: $6F
    inc sp                                        ; $61AC: $33
    nop                                           ; $61AD: $00
    inc l                                         ; $61AE: $2C
    scf                                           ; $61AF: $37
    nop                                           ; $61B0: $00
    ld l, d                                       ; $61B1: $6A
    ret                                           ; $61B2: $C9


    nop                                           ; $61B3: $00
    ld bc, $0000                                  ; $61B4: $01 $00 $00
    nop                                           ; $61B7: $00
    nop                                           ; $61B8: $00
    nop                                           ; $61B9: $00
    inc bc                                        ; $61BA: $03
    nop                                           ; $61BB: $00
    nop                                           ; $61BC: $00
    inc bc                                        ; $61BD: $03
    ld bc, $B200                                  ; $61BE: $01 $00 $B2
    add d                                         ; $61C1: $82
    nop                                           ; $61C2: $00
    sub l                                         ; $61C3: $95
    pop bc                                        ; $61C4: $C1
    nop                                           ; $61C5: $00
    and b                                         ; $61C6: $A0
    pop bc                                        ; $61C7: $C1
    nop                                           ; $61C8: $00
    xor a                                         ; $61C9: $AF
    halt                                          ; $61CA: $76
    nop                                           ; $61CB: $00
    ld bc, $0000                                  ; $61CC: $01 $00 $00
    nop                                           ; $61CF: $00
    ld bc, $0100                                  ; $61D0: $01 $00 $01
    jp c, $DC00                                   ; $61D3: $DA $00 $DC

    jp c, Boot                                    ; $61D6: $DA $00 $01

    db $E3                                        ; $61D9: $E3
    nop                                           ; $61DA: $00
    ld bc, $0000                                  ; $61DB: $01 $00 $00
    nop                                           ; $61DE: $00
    nop                                           ; $61DF: $00
    nop                                           ; $61E0: $00
    inc bc                                        ; $61E1: $03
    nop                                           ; $61E2: $00
    nop                                           ; $61E3: $00
    dec b                                         ; $61E4: $05
    ld bc, $0000                                  ; $61E5: $01 $00 $00
    ld [bc], a                                    ; $61E8: $02
    nop                                           ; $61E9: $00
    nop                                           ; $61EA: $00
    ld b, $FE                                     ; $61EB: $06 $FE
    adc l                                         ; $61ED: $8D
    nop                                           ; $61EE: $00
    or a                                          ; $61EF: $B7
    pop bc                                        ; $61F0: $C1
    nop                                           ; $61F1: $00
    xor h                                         ; $61F2: $AC
    ld [hl], $00                                  ; $61F3: $36 $00
    ld b, d                                       ; $61F5: $42
    ld bc, $6900                                  ; $61F6: $01 $00 $69
    ld h, a                                       ; $61F9: $67
    nop                                           ; $61FA: $00
    jr z, @+$44                                   ; $61FB: $28 $42

    nop                                           ; $61FD: $00
    ld b, a                                       ; $61FE: $47
    jr z, jr_038_6201                             ; $61FF: $28 $00

jr_038_6201:
    add hl, hl                                    ; $6201: $29
    dec hl                                        ; $6202: $2B
    nop                                           ; $6203: $00
    ld l, b                                       ; $6204: $68
    ld bc, $3F00                                  ; $6205: $01 $00 $3F
    ccf                                           ; $6208: $3F
    nop                                           ; $6209: $00
    inc l                                         ; $620A: $2C
    ld b, c                                       ; $620B: $41
    nop                                           ; $620C: $00
    ld l, $6A                                     ; $620D: $2E $6A
    nop                                           ; $620F: $00
    ret                                           ; $6210: $C9


    nop                                           ; $6211: $00
    nop                                           ; $6212: $00
    inc bc                                        ; $6213: $03
    nop                                           ; $6214: $00
    nop                                           ; $6215: $00
    inc bc                                        ; $6216: $03
    ld bc, $B200                                  ; $6217: $01 $00 $B2
    add d                                         ; $621A: $82
    nop                                           ; $621B: $00
    sub l                                         ; $621C: $95
    pop bc                                        ; $621D: $C1
    nop                                           ; $621E: $00
    adc c                                         ; $621F: $89
    cp d                                          ; $6220: $BA
    nop                                           ; $6221: $00
    or c                                          ; $6222: $B1
    nop                                           ; $6223: $00
    nop                                           ; $6224: $00
    nop                                           ; $6225: $00
    ld bc, $4000                                  ; $6226: $01 $00 $40
    dec hl                                        ; $6229: $2B
    nop                                           ; $622A: $00
    ld b, [hl]                                    ; $622B: $46
    daa                                           ; $622C: $27
    nop                                           ; $622D: $00
    ld b, d                                       ; $622E: $42
    ld bc, $DE00                                  ; $622F: $01 $00 $DE
    call c, $DA00                                 ; $6232: $DC $00 $DA
    ld bc, $E300                                  ; $6235: $01 $00 $E3
    nop                                           ; $6238: $00
    nop                                           ; $6239: $00
    inc bc                                        ; $623A: $03
    nop                                           ; $623B: $00
    nop                                           ; $623C: $00
    dec b                                         ; $623D: $05
    ld bc, $0000                                  ; $623E: $01 $00 $00
    ld [bc], a                                    ; $6241: $02
    nop                                           ; $6242: $00
    nop                                           ; $6243: $00
    ld b, $FE                                     ; $6244: $06 $FE
    ld h, $00                                     ; $6246: $26 $00
    daa                                           ; $6248: $27
    ld b, d                                       ; $6249: $42
    nop                                           ; $624A: $00
    ld c, l                                       ; $624B: $4D
    ld h, $00                                     ; $624C: $26 $00
    ld [hl], $6E                                  ; $624E: $36 $6E
    nop                                           ; $6250: $00
    ld bc, $0041                                  ; $6251: $01 $41 $00
    dec hl                                        ; $6254: $2B
    ld l, a                                       ; $6255: $6F
    nop                                           ; $6256: $00
    ld b, a                                       ; $6257: $47
    dec sp                                        ; $6258: $3B
    nop                                           ; $6259: $00
    ld h, b                                       ; $625A: $60
    ld l, a                                       ; $625B: $6F
    nop                                           ; $625C: $00
    ld c, d                                       ; $625D: $4A
    ld bc, $3F00                                  ; $625E: $01 $00 $3F
    ccf                                           ; $6261: $3F
    nop                                           ; $6262: $00
    inc l                                         ; $6263: $2C
    ld b, c                                       ; $6264: $41
    nop                                           ; $6265: $00
    ld l, $6A                                     ; $6266: $2E $6A
    nop                                           ; $6268: $00
    ld bc, $0049                                  ; $6269: $01 $49 $00
    inc sp                                        ; $626C: $33
    ld l, l                                       ; $626D: $6D
    nop                                           ; $626E: $00
    ld a, [hl-]                                   ; $626F: $3A
    ret                                           ; $6270: $C9


    nop                                           ; $6271: $00
    ld bc, $0000                                  ; $6272: $01 $00 $00
    nop                                           ; $6275: $00
    nop                                           ; $6276: $00
    nop                                           ; $6277: $00
    inc bc                                        ; $6278: $03
    nop                                           ; $6279: $00
    nop                                           ; $627A: $00
    inc bc                                        ; $627B: $03
    add l                                         ; $627C: $85
    nop                                           ; $627D: $00
    ld a, [hl]                                    ; $627E: $7E
    ld c, a                                       ; $627F: $4F
    nop                                           ; $6280: $00
    ld [hl], b                                    ; $6281: $70
    dec [hl]                                      ; $6282: $35
    nop                                           ; $6283: $00
    ld b, c                                       ; $6284: $41
    ld l, l                                       ; $6285: $6D
    nop                                           ; $6286: $00
    ld a, [hl-]                                   ; $6287: $3A
    nop                                           ; $6288: $00
    nop                                           ; $6289: $00
    nop                                           ; $628A: $00
    nop                                           ; $628B: $00
    nop                                           ; $628C: $00
    inc bc                                        ; $628D: $03
    ld bc, $8300                                  ; $628E: $01 $00 $83
    add d                                         ; $6291: $82
    nop                                           ; $6292: $00
    sub l                                         ; $6293: $95
    pop bc                                        ; $6294: $C1
    nop                                           ; $6295: $00
    xor c                                         ; $6296: $A9
    or c                                          ; $6297: $B1
    nop                                           ; $6298: $00
    ld bc, $0000                                  ; $6299: $01 $00 $00
    nop                                           ; $629C: $00
    ld b, b                                       ; $629D: $40
    nop                                           ; $629E: $00
    dec hl                                        ; $629F: $2B
    ld b, [hl]                                    ; $62A0: $46
    nop                                           ; $62A1: $00
    daa                                           ; $62A2: $27
    ld b, d                                       ; $62A3: $42
    nop                                           ; $62A4: $00
    ld bc, $00DC                                  ; $62A5: $01 $DC $00
    jp c, Jump_000_00DC                           ; $62A8: $DA $DC $00

    sbc $01                                       ; $62AB: $DE $01
    nop                                           ; $62AD: $00
    db $E3                                        ; $62AE: $E3
    nop                                           ; $62AF: $00
    nop                                           ; $62B0: $00
    inc bc                                        ; $62B1: $03
    nop                                           ; $62B2: $00
    nop                                           ; $62B3: $00
    dec b                                         ; $62B4: $05
    ld bc, $0000                                  ; $62B5: $01 $00 $00
    ld [bc], a                                    ; $62B8: $02
    nop                                           ; $62B9: $00
    nop                                           ; $62BA: $00
    ld b, $FE                                     ; $62BB: $06 $FE
    inc l                                         ; $62BD: $2C
    nop                                           ; $62BE: $00
    ld h, a                                       ; $62BF: $67
    jr z, jr_038_62C2                             ; $62C0: $28 $00

jr_038_62C2:
    ld l, c                                       ; $62C2: $69
    ld h, a                                       ; $62C3: $67
    nop                                           ; $62C4: $00
    dec l                                         ; $62C5: $2D
    ld c, d                                       ; $62C6: $4A
    nop                                           ; $62C7: $00
    ld c, c                                       ; $62C8: $49
    ld [hl], b                                    ; $62C9: $70
    nop                                           ; $62CA: $00
    ccf                                           ; $62CB: $3F
    ld bc, $B200                                  ; $62CC: $01 $00 $B2
    add d                                         ; $62CF: $82
    nop                                           ; $62D0: $00
    sub l                                         ; $62D1: $95

jr_038_62D2:
    pop bc                                        ; $62D2: $C1
    nop                                           ; $62D3: $00
    adc c                                         ; $62D4: $89
    cp d                                          ; $62D5: $BA

jr_038_62D6:
    nop                                           ; $62D6: $00
    or c                                          ; $62D7: $B1
    ret                                           ; $62D8: $C9


    nop                                           ; $62D9: $00
    ld bc, $0000                                  ; $62DA: $01 $00 $00
    nop                                           ; $62DD: $00
    nop                                           ; $62DE: $00
    nop                                           ; $62DF: $00
    inc bc                                        ; $62E0: $03
    nop                                           ; $62E1: $00
    nop                                           ; $62E2: $00
    inc bc                                        ; $62E3: $03
    nop                                           ; $62E4: $00
    nop                                           ; $62E5: $00
    inc bc                                        ; $62E6: $03
    sbc c                                         ; $62E7: $99
    nop                                           ; $62E8: $00
    adc c                                         ; $62E9: $89
    sub l                                         ; $62EA: $95
    nop                                           ; $62EB: $00
    cp [hl]                                       ; $62EC: $BE
    pop bc                                        ; $62ED: $C1
    nop                                           ; $62EE: $00
    ld c, l                                       ; $62EF: $4D
    ld h, d                                       ; $62F0: $62
    nop                                           ; $62F1: $00
    ld d, a                                       ; $62F2: $57
    jr z, jr_038_62F5                             ; $62F3: $28 $00

jr_038_62F5:
    ld l, [hl]                                    ; $62F5: $6E
    nop                                           ; $62F6: $00
    nop                                           ; $62F7: $00
    nop                                           ; $62F8: $00
    ld b, e                                       ; $62F9: $43
    nop                                           ; $62FA: $00
    ld h, b                                       ; $62FB: $60
    ld l, d                                       ; $62FC: $6A
    nop                                           ; $62FD: $00
    ccf                                           ; $62FE: $3F
    ld h, b                                       ; $62FF: $60
    nop                                           ; $6300: $00
    ld c, d                                       ; $6301: $4A
    ccf                                           ; $6302: $3F
    nop                                           ; $6303: $00
    ccf                                           ; $6304: $3F
    dec hl                                        ; $6305: $2B
    nop                                           ; $6306: $00
    jr z, jr_038_62D2                             ; $6307: $28 $C9

    nop                                           ; $6309: $00
    ld bc, $0000                                  ; $630A: $01 $00 $00
    inc bc                                        ; $630D: $03
    nop                                           ; $630E: $00
    nop                                           ; $630F: $00
    dec b                                         ; $6310: $05
    ld bc, $0000                                  ; $6311: $01 $00 $00
    ld [bc], a                                    ; $6314: $02
    nop                                           ; $6315: $00
    nop                                           ; $6316: $00
    ld [bc], a                                    ; $6317: $02
    nop                                           ; $6318: $00
    nop                                           ; $6319: $00
    ld [bc], a                                    ; $631A: $02
    nop                                           ; $631B: $00
    nop                                           ; $631C: $00
    dec b                                         ; $631D: $05
    add b                                         ; $631E: $80
    nop                                           ; $631F: $00
    nop                                           ; $6320: $00
    ld [bc], a                                    ; $6321: $02
    nop                                           ; $6322: $00
    nop                                           ; $6323: $00
    ld bc, $631B                                  ; $6324: $01 $1B $63
    ld c, e                                       ; $6327: $4B
    ld [hl+], a                                   ; $6328: $22
    and b                                         ; $6329: $A0
    dec l                                         ; $632A: $2D
    ld hl, $1211                                  ; $632B: $21 $11 $12
    ld de, $0113                                  ; $632E: $11 $13 $01
    nop                                           ; $6331: $00
    add c                                         ; $6332: $81
    pop bc                                        ; $6333: $C1
    nop                                           ; $6334: $00
    xor c                                         ; $6335: $A9
    ld a, c                                       ; $6336: $79
    nop                                           ; $6337: $00
    ld bc, $0000                                  ; $6338: $01 $00 $00
    inc bc                                        ; $633B: $03
    ld l, e                                       ; $633C: $6B
    db $10                                        ; $633D: $10
    ld c, l                                       ; $633E: $4D
    ld d, b                                       ; $633F: $50
    ld de, $7B51                                  ; $6340: $11 $51 $7B
    nop                                           ; $6343: $00
    sbc [hl]                                      ; $6344: $9E
    cp h                                          ; $6345: $BC
    nop                                           ; $6346: $00
    add [hl]                                      ; $6347: $86
    ld a, b                                       ; $6348: $78
    nop                                           ; $6349: $00
    ld b, a                                       ; $634A: $47
    ld h, d                                       ; $634B: $62
    db $10                                        ; $634C: $10
    jr z, jr_038_62D6                             ; $634D: $28 $87

    nop                                           ; $634F: $00
    ld a, c                                       ; $6350: $79
    and l                                         ; $6351: $A5
    nop                                           ; $6352: $00
    sub l                                         ; $6353: $95
    cp [hl]                                       ; $6354: $BE
    nop                                           ; $6355: $00
    pop bc                                        ; $6356: $C1
    ld c, l                                       ; $6357: $4D
    ld bc, $1211                                  ; $6358: $01 $11 $12
    ld de, $C913                                  ; $635B: $11 $13 $C9
    nop                                           ; $635E: $00
    ld bc, $0000                                  ; $635F: $01 $00 $00
    inc bc                                        ; $6362: $03
    ld [hl], b                                    ; $6363: $70
    ld [hl+], a                                   ; $6364: $22
    ld [hl], c                                    ; $6365: $71
    ld b, a                                       ; $6366: $47
    nop                                           ; $6367: $00
    ld bc, $2272                                  ; $6368: $01 $72 $22
    dec d                                         ; $636B: $15
    ld b, e                                       ; $636C: $43
    ld [bc], a                                    ; $636D: $02
    ld bc, $0036                                  ; $636E: $01 $36 $00
    dec [hl]                                      ; $6371: $35
    ld c, d                                       ; $6372: $4A
    nop                                           ; $6373: $00
    ld bc, $0026                                  ; $6374: $01 $26 $00
    ld d, b                                       ; $6377: $50
    ld l, e                                       ; $6378: $6B
    nop                                           ; $6379: $00
    ld l, d                                       ; $637A: $6A
    ld bc, $8700                                  ; $637B: $01 $00 $87
    ld a, c                                       ; $637E: $79
    nop                                           ; $637F: $00
    and l                                         ; $6380: $A5
    sub l                                         ; $6381: $95
    nop                                           ; $6382: $00
    cp [hl]                                       ; $6383: $BE
    pop bc                                        ; $6384: $C1
    ld bc, $6462                                  ; $6385: $01 $62 $64
    db $10                                        ; $6388: $10
    ret                                           ; $6389: $C9


    nop                                           ; $638A: $00
    nop                                           ; $638B: $00
    nop                                           ; $638C: $00
    nop                                           ; $638D: $00
    nop                                           ; $638E: $00
    inc bc                                        ; $638F: $03
    ld b, b                                       ; $6390: $40
    ld de, $4241                                  ; $6391: $11 $41 $42
    db $10                                        ; $6394: $10
    ld bc, $0000                                  ; $6395: $01 $00 $00
    nop                                           ; $6398: $00
    nop                                           ; $6399: $00
    nop                                           ; $639A: $00
    inc bc                                        ; $639B: $03
    ld bc, $8700                                  ; $639C: $01 $00 $87
    ld a, c                                       ; $639F: $79
    nop                                           ; $63A0: $00
    and l                                         ; $63A1: $A5
    halt                                          ; $63A2: $76
    nop                                           ; $63A3: $00
    and a                                         ; $63A4: $A7
    cp l                                          ; $63A5: $BD
    nop                                           ; $63A6: $00
    halt                                          ; $63A7: $76
    sbc d                                         ; $63A8: $9A
    nop                                           ; $63A9: $00
    ld bc, $0000                                  ; $63AA: $01 $00 $00
    nop                                           ; $63AD: $00
    ld bc, $0100                                  ; $63AE: $01 $00 $01
    jp c, $DC00                                   ; $63B1: $DA $00 $DC

    jp c, Boot                                    ; $63B4: $DA $00 $01

    db $E3                                        ; $63B7: $E3
    nop                                           ; $63B8: $00
    ld bc, $0000                                  ; $63B9: $01 $00 $00
    nop                                           ; $63BC: $00
    nop                                           ; $63BD: $00
    nop                                           ; $63BE: $00
    inc bc                                        ; $63BF: $03
    nop                                           ; $63C0: $00
    nop                                           ; $63C1: $00
    dec b                                         ; $63C2: $05
    ld bc, $0000                                  ; $63C3: $01 $00 $00
    ld [bc], a                                    ; $63C6: $02
    nop                                           ; $63C7: $00
    nop                                           ; $63C8: $00
    ld b, $FE                                     ; $63C9: $06 $FE
    ld [hl], h                                    ; $63CB: $74
    jr nz, jr_038_6415                            ; $63CC: $20 $47

    inc c                                         ; $63CE: $0C
    ld [hl+], a                                   ; $63CF: $22
    ld [hl], l                                    ; $63D0: $75
    ld c, d                                       ; $63D1: $4A
    ld [bc], a                                    ; $63D2: $02
    halt                                          ; $63D3: $76
    ld l, d                                       ; $63D4: $6A
    ld bc, $8B8D                                  ; $63D5: $01 $8D $8B
    db $10                                        ; $63D8: $10
    ret                                           ; $63D9: $C9


    nop                                           ; $63DA: $00
    nop                                           ; $63DB: $00
    nop                                           ; $63DC: $00
    nop                                           ; $63DD: $00
    nop                                           ; $63DE: $00
    inc bc                                        ; $63DF: $03
    nop                                           ; $63E0: $00
    nop                                           ; $63E1: $00
    inc bc                                        ; $63E2: $03
    ld bc, $AC00                                  ; $63E3: $01 $00 $AC
    cp d                                          ; $63E6: $BA
    nop                                           ; $63E7: $00
    adc [hl]                                      ; $63E8: $8E
    xor a                                         ; $63E9: $AF
    nop                                           ; $63EA: $00
    ld a, [hl]                                    ; $63EB: $7E
    or a                                          ; $63EC: $B7
    nop                                           ; $63ED: $00
    sbc a                                         ; $63EE: $9F
    pop bc                                        ; $63EF: $C1
    nop                                           ; $63F0: $00
    ld bc, $0000                                  ; $63F1: $01 $00 $00
    nop                                           ; $63F4: $00
    ld bc, $0100                                  ; $63F5: $01 $00 $01
    call c, $DA00                                 ; $63F8: $DC $00 $DA
    ld bc, $E300                                  ; $63FB: $01 $00 $E3
    nop                                           ; $63FE: $00
    nop                                           ; $63FF: $00
    nop                                           ; $6400: $00
    nop                                           ; $6401: $00
    nop                                           ; $6402: $00
    inc bc                                        ; $6403: $03
    nop                                           ; $6404: $00
    nop                                           ; $6405: $00
    dec b                                         ; $6406: $05
    ld bc, $0000                                  ; $6407: $01 $00 $00
    ld [bc], a                                    ; $640A: $02
    nop                                           ; $640B: $00
    nop                                           ; $640C: $00
    ld b, $FE                                     ; $640D: $06 $FE
    adc c                                         ; $640F: $89
    db $10                                        ; $6410: $10
    ld c, d                                       ; $6411: $4A
    adc b                                         ; $6412: $88
    nop                                           ; $6413: $00
    cp c                                          ; $6414: $B9

jr_038_6415:
    jp nz, $9500                                  ; $6415: $C2 $00 $95

    ld l, [hl]                                    ; $6418: $6E
    nop                                           ; $6419: $00
    jr z, @+$43                                   ; $641A: $28 $41

    ld bc, $8B8D                                  ; $641C: $01 $8D $8B
    db $10                                        ; $641F: $10
    ret                                           ; $6420: $C9


    nop                                           ; $6421: $00
    nop                                           ; $6422: $00
    inc bc                                        ; $6423: $03
    nop                                           ; $6424: $00
    nop                                           ; $6425: $00
    inc bc                                        ; $6426: $03
    ld bc, $8300                                  ; $6427: $01 $00 $83
    add d                                         ; $642A: $82
    nop                                           ; $642B: $00
    ld a, b                                       ; $642C: $78
    sub c                                         ; $642D: $91
    nop                                           ; $642E: $00
    jp nz, $007F                                  ; $642F: $C2 $7F $00

    ld bc, $0000                                  ; $6432: $01 $00 $00
    nop                                           ; $6435: $00
    ld bc, $0100                                  ; $6436: $01 $00 $01
    sbc $00                                       ; $6439: $DE $00
    call c, Call_000_00DA                         ; $643B: $DC $DA $00
    ld bc, $00E2                                  ; $643E: $01 $E2 $00
    ld bc, $0000                                  ; $6441: $01 $00 $00
    nop                                           ; $6444: $00
    nop                                           ; $6445: $00
    nop                                           ; $6446: $00
    inc bc                                        ; $6447: $03
    nop                                           ; $6448: $00
    nop                                           ; $6449: $00
    dec b                                         ; $644A: $05
    ld bc, $0000                                  ; $644B: $01 $00 $00
    ld [bc], a                                    ; $644E: $02
    nop                                           ; $644F: $00
    nop                                           ; $6450: $00
    ld b, $FE                                     ; $6451: $06 $FE
    cpl                                           ; $6453: $2F
    ld [hl+], a                                   ; $6454: $22
    rla                                           ; $6455: $17
    ld [hl], $00                                  ; $6456: $36 $00
    ld b, d                                       ; $6458: $42
    sub c                                         ; $6459: $91
    nop                                           ; $645A: $00
    jp nz, $007F                                  ; $645B: $C2 $7F $00

    cp h                                          ; $645E: $BC
    ld b, a                                       ; $645F: $47
    ld bc, $8B8D                                  ; $6460: $01 $8D $8B
    db $10                                        ; $6463: $10
    ld l, [hl]                                    ; $6464: $6E
    scf                                           ; $6465: $37
    nop                                           ; $6466: $00
    ld l, d                                       ; $6467: $6A
    ret                                           ; $6468: $C9


    nop                                           ; $6469: $00
    ld bc, $0000                                  ; $646A: $01 $00 $00
    nop                                           ; $646D: $00
    nop                                           ; $646E: $00
    nop                                           ; $646F: $00
    inc bc                                        ; $6470: $03
    nop                                           ; $6471: $00
    nop                                           ; $6472: $00
    inc bc                                        ; $6473: $03
    ld bc, $8100                                  ; $6474: $01 $00 $81
    pop bc                                        ; $6477: $C1
    nop                                           ; $6478: $00
    xor c                                         ; $6479: $A9
    ld a, c                                       ; $647A: $79
    nop                                           ; $647B: $00
    sbc d                                         ; $647C: $9A
    cp d                                          ; $647D: $BA
    nop                                           ; $647E: $00
    ld a, c                                       ; $647F: $79
    and l                                         ; $6480: $A5
    nop                                           ; $6481: $00
    halt                                          ; $6482: $76
    nop                                           ; $6483: $00
    nop                                           ; $6484: $00
    nop                                           ; $6485: $00
    ld bc, $1D02                                  ; $6486: $01 $02 $1D
    ld b, [hl]                                    ; $6489: $46
    nop                                           ; $648A: $00
    daa                                           ; $648B: $27
    ld b, d                                       ; $648C: $42
    nop                                           ; $648D: $00
    ld bc, $00DE                                  ; $648E: $01 $DE $00
    call c, Call_000_00DA                         ; $6491: $DC $DA $00
    ld bc, $00E3                                  ; $6494: $01 $E3 $00
    ld bc, $0000                                  ; $6497: $01 $00 $00
    inc bc                                        ; $649A: $03
    nop                                           ; $649B: $00
    nop                                           ; $649C: $00
    dec b                                         ; $649D: $05
    ld bc, $0000                                  ; $649E: $01 $00 $00
    ld [bc], a                                    ; $64A1: $02
    nop                                           ; $64A2: $00
    nop                                           ; $64A3: $00
    ld b, $FE                                     ; $64A4: $06 $FE
    adc [hl]                                      ; $64A6: $8E
    ld de, $6E07                                  ; $64A7: $11 $07 $6E
    ld [bc], a                                    ; $64AA: $02
    dec de                                        ; $64AB: $1B
    inc sp                                        ; $64AC: $33
    nop                                           ; $64AD: $00
    ld b, d                                       ; $64AE: $42
    dec hl                                        ; $64AF: $2B
    nop                                           ; $64B0: $00
    ld l, b                                       ; $64B1: $68
    ld bc, $4100                                  ; $64B2: $01 $00 $41
    dec hl                                        ; $64B5: $2B
    nop                                           ; $64B6: $00
    ld l, a                                       ; $64B7: $6F
    ld b, a                                       ; $64B8: $47
    nop                                           ; $64B9: $00
    ld bc, $110C                                  ; $64BA: $01 $0C $11
    sbc d                                         ; $64BD: $9A
    ld c, d                                       ; $64BE: $4A
    ld bc, $2C43                                  ; $64BF: $01 $43 $2C
    nop                                           ; $64C2: $00
    ld b, c                                       ; $64C3: $41
    ld l, $00                                     ; $64C4: $2E $00
    ld l, d                                       ; $64C6: $6A
    ld bc, $1B02                                  ; $64C7: $01 $02 $1B
    inc sp                                        ; $64CA: $33
    ld bc, $C942                                  ; $64CB: $01 $42 $C9
    nop                                           ; $64CE: $00
    ld bc, $0000                                  ; $64CF: $01 $00 $00
    nop                                           ; $64D2: $00
    nop                                           ; $64D3: $00
    nop                                           ; $64D4: $00
    inc bc                                        ; $64D5: $03
    nop                                           ; $64D6: $00
    nop                                           ; $64D7: $00
    inc bc                                        ; $64D8: $03
    sbc a                                         ; $64D9: $9F
    ld hl, $4140                                  ; $64DA: $21 $40 $41
    ld de, $0042                                  ; $64DD: $11 $42 $00
    nop                                           ; $64E0: $00
    nop                                           ; $64E1: $00
    nop                                           ; $64E2: $00
    nop                                           ; $64E3: $00
    inc bc                                        ; $64E4: $03
    ld bc, $9302                                  ; $64E5: $01 $02 $93
    add c                                         ; $64E8: $81
    nop                                           ; $64E9: $00
    pop bc                                        ; $64EA: $C1
    xor c                                         ; $64EB: $A9
    nop                                           ; $64EC: $00
    ld a, c                                       ; $64ED: $79
    sbc d                                         ; $64EE: $9A
    nop                                           ; $64EF: $00
    cp d                                          ; $64F0: $BA
    ld a, c                                       ; $64F1: $79
    nop                                           ; $64F2: $00
    and l                                         ; $64F3: $A5
    halt                                          ; $64F4: $76
    nop                                           ; $64F5: $00
    ld bc, $0201                                  ; $64F6: $01 $01 $02
    dec e                                         ; $64F9: $1D
    ld b, [hl]                                    ; $64FA: $46
    nop                                           ; $64FB: $00
    daa                                           ; $64FC: $27
    ld b, d                                       ; $64FD: $42
    nop                                           ; $64FE: $00
    ld bc, $00DC                                  ; $64FF: $01 $DC $00
    jp c, Jump_000_00DC                           ; $6502: $DA $DC $00

    sbc $01                                       ; $6505: $DE $01
    nop                                           ; $6507: $00
    db $E3                                        ; $6508: $E3
    nop                                           ; $6509: $00
    nop                                           ; $650A: $00
    inc bc                                        ; $650B: $03
    nop                                           ; $650C: $00
    nop                                           ; $650D: $00
    dec b                                         ; $650E: $05
    ld bc, $0000                                  ; $650F: $01 $00 $00
    ld [bc], a                                    ; $6512: $02
    nop                                           ; $6513: $00
    nop                                           ; $6514: $00
    ld b, $FE                                     ; $6515: $06 $FE
    ld h, h                                       ; $6517: $64
    nop                                           ; $6518: $00
    ld l, c                                       ; $6519: $69
    ld h, $11                                     ; $651A: $26 $11
    inc b                                         ; $651C: $04
    ld c, d                                       ; $651D: $4A
    nop                                           ; $651E: $00
    ld c, c                                       ; $651F: $49
    ld [hl], b                                    ; $6520: $70
    nop                                           ; $6521: $00
    ccf                                           ; $6522: $3F
    ld bc, $8100                                  ; $6523: $01 $00 $81
    pop bc                                        ; $6526: $C1
    nop                                           ; $6527: $00
    xor c                                         ; $6528: $A9
    ld a, c                                       ; $6529: $79
    nop                                           ; $652A: $00
    sbc d                                         ; $652B: $9A
    cp d                                          ; $652C: $BA
    nop                                           ; $652D: $00
    ld a, c                                       ; $652E: $79
    and l                                         ; $652F: $A5
    nop                                           ; $6530: $00
    halt                                          ; $6531: $76
    ret                                           ; $6532: $C9


    nop                                           ; $6533: $00
    ld bc, $0000                                  ; $6534: $01 $00 $00
    nop                                           ; $6537: $00
    nop                                           ; $6538: $00
    nop                                           ; $6539: $00
    inc bc                                        ; $653A: $03
    nop                                           ; $653B: $00
    nop                                           ; $653C: $00
    inc bc                                        ; $653D: $03
    and [hl]                                      ; $653E: $A6
    nop                                           ; $653F: $00
    halt                                          ; $6540: $76
    adc c                                         ; $6541: $89
    nop                                           ; $6542: $00
    sub l                                         ; $6543: $95
    or e                                          ; $6544: $B3
    nop                                           ; $6545: $00
    halt                                          ; $6546: $76
    sbc d                                         ; $6547: $9A
    nop                                           ; $6548: $00
    ld c, [hl]                                    ; $6549: $4E
    nop                                           ; $654A: $00
    nop                                           ; $654B: $00
    nop                                           ; $654C: $00
    nop                                           ; $654D: $00
    nop                                           ; $654E: $00
    inc bc                                        ; $654F: $03
    ret nc                                        ; $6550: $D0

    nop                                           ; $6551: $00
    add [hl]                                      ; $6552: $86
    cp e                                          ; $6553: $BB
    nop                                           ; $6554: $00
    cp d                                          ; $6555: $BA
    pop de                                        ; $6556: $D1
    nop                                           ; $6557: $00
    ld c, d                                       ; $6558: $4A
    ld d, d                                       ; $6559: $52
    ld de, $3753                                  ; $655A: $11 $53 $37
    nop                                           ; $655D: $00
    ld l, d                                       ; $655E: $6A
    ret                                           ; $655F: $C9


    nop                                           ; $6560: $00
    ld bc, $0000                                  ; $6561: $01 $00 $00
    nop                                           ; $6564: $00
    nop                                           ; $6565: $00
    nop                                           ; $6566: $00
    inc bc                                        ; $6567: $03
    nop                                           ; $6568: $00
    nop                                           ; $6569: $00
    inc b                                         ; $656A: $04
    ld bc, $0000                                  ; $656B: $01 $00 $00
    dec b                                         ; $656E: $05
    ld bc, $0000                                  ; $656F: $01 $00 $00
    ld [bc], a                                    ; $6572: $02
    nop                                           ; $6573: $00
    nop                                           ; $6574: $00
    ld [bc], a                                    ; $6575: $02
    nop                                           ; $6576: $00
    nop                                           ; $6577: $00
    ld [bc], a                                    ; $6578: $02
    nop                                           ; $6579: $00
    nop                                           ; $657A: $00
    ld b, $FE                                     ; $657B: $06 $FE
    ld b, b                                       ; $657D: $40
    ld de, $4241                                  ; $657E: $11 $41 $42
    db $10                                        ; $6581: $10
    ld bc, $0000                                  ; $6582: $01 $00 $00
    nop                                           ; $6585: $00
    nop                                           ; $6586: $00
    nop                                           ; $6587: $00
    inc bc                                        ; $6588: $03
    ld bc, $A000                                  ; $6589: $01 $00 $A0
    pop bc                                        ; $658C: $C1
    nop                                           ; $658D: $00
    xor a                                         ; $658E: $AF
    halt                                          ; $658F: $76
    nop                                           ; $6590: $00
    sbc e                                         ; $6591: $9B
    jp nz, Jump_038_7F00                          ; $6592: $C2 $00 $7F

    cp h                                          ; $6595: $BC
    nop                                           ; $6596: $00
    ld bc, $0000                                  ; $6597: $01 $00 $00
    nop                                           ; $659A: $00
    ld bc, $0100                                  ; $659B: $01 $00 $01
    call c, $DA00                                 ; $659E: $DC $00 $DA
    ld bc, $E300                                  ; $65A1: $01 $00 $E3
    nop                                           ; $65A4: $00
    nop                                           ; $65A5: $00
    nop                                           ; $65A6: $00
    nop                                           ; $65A7: $00
    nop                                           ; $65A8: $00
    inc bc                                        ; $65A9: $03
    nop                                           ; $65AA: $00
    nop                                           ; $65AB: $00
    dec b                                         ; $65AC: $05
    ld bc, $0000                                  ; $65AD: $01 $00 $00
    ld [bc], a                                    ; $65B0: $02
    nop                                           ; $65B1: $00
    nop                                           ; $65B2: $00
    ld b, $FE                                     ; $65B3: $06 $FE
    ccf                                           ; $65B5: $3F
    jr nz, jr_038_6626                            ; $65B6: $20 $6E

    ld [hl], a                                    ; $65B8: $77
    jr nz, @+$6B                                  ; $65B9: $20 $69

    dec c                                         ; $65BB: $0D
    db $10                                        ; $65BC: $10
    ld l, h                                       ; $65BD: $6C
    ld [hl], $00                                  ; $65BE: $36 $00
    ld b, d                                       ; $65C0: $42
    ld bc, $2F02                                  ; $65C1: $01 $02 $2F
    rla                                           ; $65C4: $17
    jr nz, jr_038_65FE                            ; $65C5: $20 $37

    ld l, d                                       ; $65C7: $6A
    ld bc, $8B8D                                  ; $65C8: $01 $8D $8B
    db $10                                        ; $65CB: $10
    ret                                           ; $65CC: $C9


    nop                                           ; $65CD: $00
    nop                                           ; $65CE: $00
    nop                                           ; $65CF: $00
    nop                                           ; $65D0: $00
    nop                                           ; $65D1: $00
    inc bc                                        ; $65D2: $03
    nop                                           ; $65D3: $00
    nop                                           ; $65D4: $00
    inc bc                                        ; $65D5: $03
    ld bc, $7D00                                  ; $65D6: $01 $00 $7D
    ld a, d                                       ; $65D9: $7A
    nop                                           ; $65DA: $00
    pop bc                                        ; $65DB: $C1
    sub c                                         ; $65DC: $91
    nop                                           ; $65DD: $00
    halt                                          ; $65DE: $76
    and b                                         ; $65DF: $A0
    nop                                           ; $65E0: $00
    pop bc                                        ; $65E1: $C1
    xor a                                         ; $65E2: $AF
    nop                                           ; $65E3: $00
    halt                                          ; $65E4: $76
    nop                                           ; $65E5: $00
    nop                                           ; $65E6: $00
    nop                                           ; $65E7: $00
    ld bc, $0100                                  ; $65E8: $01 $00 $01
    call c, $DE00                                 ; $65EB: $DC $00 $DE
    ld bc, $E200                                  ; $65EE: $01 $00 $E2
    nop                                           ; $65F1: $00
    nop                                           ; $65F2: $00
    nop                                           ; $65F3: $00
    nop                                           ; $65F4: $00
    nop                                           ; $65F5: $00
    inc bc                                        ; $65F6: $03
    nop                                           ; $65F7: $00
    nop                                           ; $65F8: $00
    dec b                                         ; $65F9: $05
    ld bc, $0000                                  ; $65FA: $01 $00 $00
    ld [bc], a                                    ; $65FD: $02

jr_038_65FE:
    nop                                           ; $65FE: $00
    nop                                           ; $65FF: $00
    ld b, $FE                                     ; $6600: $06 $FE
    adc d                                         ; $6602: $8A
    ld de, $8B8D                                  ; $6603: $11 $8D $8B
    db $10                                        ; $6606: $10
    ld l, [hl]                                    ; $6607: $6E
    ld bc, $4702                                  ; $6608: $01 $02 $47
    ld l, $02                                     ; $660B: $2E $02
    ld a, b                                       ; $660D: $78
    ld h, b                                       ; $660E: $60
    nop                                           ; $660F: $00
    ld b, d                                       ; $6610: $42
    ld a, c                                       ; $6611: $79
    ld hl, $378B                                  ; $6612: $21 $8B $37
    nop                                           ; $6615: $00
    ld l, d                                       ; $6616: $6A
    ret                                           ; $6617: $C9


    nop                                           ; $6618: $00
    ld bc, $0000                                  ; $6619: $01 $00 $00
    nop                                           ; $661C: $00
    nop                                           ; $661D: $00
    nop                                           ; $661E: $00
    inc bc                                        ; $661F: $03
    nop                                           ; $6620: $00
    nop                                           ; $6621: $00
    inc bc                                        ; $6622: $03
    ld bc, $B200                                  ; $6623: $01 $00 $B2

jr_038_6626:
    add d                                         ; $6626: $82
    nop                                           ; $6627: $00
    sub l                                         ; $6628: $95
    pop bc                                        ; $6629: $C1
    nop                                           ; $662A: $00
    and b                                         ; $662B: $A0
    pop bc                                        ; $662C: $C1
    nop                                           ; $662D: $00
    xor a                                         ; $662E: $AF
    halt                                          ; $662F: $76
    nop                                           ; $6630: $00
    ld bc, $0000                                  ; $6631: $01 $00 $00
    nop                                           ; $6634: $00
    ld bc, $0100                                  ; $6635: $01 $00 $01
    jp c, $DC00                                   ; $6638: $DA $00 $DC

    jp c, Boot                                    ; $663B: $DA $00 $01

    db $E3                                        ; $663E: $E3
    nop                                           ; $663F: $00
    ld bc, $0000                                  ; $6640: $01 $00 $00
    nop                                           ; $6643: $00
    nop                                           ; $6644: $00
    nop                                           ; $6645: $00
    inc bc                                        ; $6646: $03
    nop                                           ; $6647: $00
    nop                                           ; $6648: $00
    dec b                                         ; $6649: $05
    ld bc, $0000                                  ; $664A: $01 $00 $00
    ld [bc], a                                    ; $664D: $02
    nop                                           ; $664E: $00
    nop                                           ; $664F: $00
    ld b, $FE                                     ; $6650: $06 $FE
    adc l                                         ; $6652: $8D
    nop                                           ; $6653: $00
    or a                                          ; $6654: $B7
    pop bc                                        ; $6655: $C1
    nop                                           ; $6656: $00
    xor h                                         ; $6657: $AC
    ld [hl], $00                                  ; $6658: $36 $00
    ld b, d                                       ; $665A: $42
    ld bc, $7A02                                  ; $665B: $01 $02 $7A
    rlca                                          ; $665E: $07
    db $10                                        ; $665F: $10
    ld b, a                                       ; $6660: $47
    adc d                                         ; $6661: $8A
    db $10                                        ; $6662: $10
    dec hl                                        ; $6663: $2B
    ld l, b                                       ; $6664: $68
    nop                                           ; $6665: $00
    ld bc, $1043                                  ; $6666: $01 $43 $10
    inc l                                         ; $6669: $2C
    ld b, c                                       ; $666A: $41
    nop                                           ; $666B: $00
    ld l, $6A                                     ; $666C: $2E $6A
    nop                                           ; $666E: $00
    ret                                           ; $666F: $C9


    nop                                           ; $6670: $00
    nop                                           ; $6671: $00
    nop                                           ; $6672: $00
    nop                                           ; $6673: $00
    nop                                           ; $6674: $00
    inc bc                                        ; $6675: $03
    nop                                           ; $6676: $00
    nop                                           ; $6677: $00
    inc bc                                        ; $6678: $03
    ld bc, $B200                                  ; $6679: $01 $00 $B2
    add d                                         ; $667C: $82
    nop                                           ; $667D: $00
    sub l                                         ; $667E: $95
    pop bc                                        ; $667F: $C1
    nop                                           ; $6680: $00
    adc c                                         ; $6681: $89
    cp d                                          ; $6682: $BA
    nop                                           ; $6683: $00
    or c                                          ; $6684: $B1
    nop                                           ; $6685: $00
    nop                                           ; $6686: $00
    nop                                           ; $6687: $00
    ld bc, $1D02                                  ; $6688: $01 $02 $1D
    ld b, [hl]                                    ; $668B: $46
    nop                                           ; $668C: $00
    daa                                           ; $668D: $27
    ld b, d                                       ; $668E: $42
    nop                                           ; $668F: $00
    ld bc, $00DE                                  ; $6690: $01 $DE $00
    call c, Call_000_00DA                         ; $6693: $DC $DA $00
    ld bc, $00E3                                  ; $6696: $01 $E3 $00
    ld bc, $0000                                  ; $6699: $01 $00 $00
    inc bc                                        ; $669C: $03
    nop                                           ; $669D: $00
    nop                                           ; $669E: $00
    dec b                                         ; $669F: $05
    ld bc, $0000                                  ; $66A0: $01 $00 $00
    ld [bc], a                                    ; $66A3: $02
    nop                                           ; $66A4: $00
    nop                                           ; $66A5: $00
    ld b, $FE                                     ; $66A6: $06 $FE
    adc [hl]                                      ; $66A8: $8E
    ld de, $4D07                                  ; $66A9: $11 $07 $4D
    ld [bc], a                                    ; $66AC: $02
    ld c, d                                       ; $66AD: $4A
    ld l, [hl]                                    ; $66AE: $6E
    nop                                           ; $66AF: $00
    ld b, c                                       ; $66B0: $41
    dec hl                                        ; $66B1: $2B
    nop                                           ; $66B2: $00
    ld l, a                                       ; $66B3: $6F
    ld b, a                                       ; $66B4: $47
    nop                                           ; $66B5: $00
    ld bc, $110C                                  ; $66B6: $01 $0C $11
    sbc d                                         ; $66B9: $9A
    ld c, d                                       ; $66BA: $4A
    ld bc, $2C43                                  ; $66BB: $01 $43 $2C
    nop                                           ; $66BE: $00
    ld b, c                                       ; $66BF: $41
    ld l, $00                                     ; $66C0: $2E $00
    ld l, d                                       ; $66C2: $6A
    ld bc, $1B02                                  ; $66C3: $01 $02 $1B
    inc sp                                        ; $66C6: $33
    ld bc, $C942                                  ; $66C7: $01 $42 $C9
    nop                                           ; $66CA: $00
    ld bc, $0000                                  ; $66CB: $01 $00 $00
    inc bc                                        ; $66CE: $03
    nop                                           ; $66CF: $00
    nop                                           ; $66D0: $00
    inc bc                                        ; $66D1: $03
    sbc a                                         ; $66D2: $9F
    ld hl, $4140                                  ; $66D3: $21 $40 $41
    ld de, $0042                                  ; $66D6: $11 $42 $00
    nop                                           ; $66D9: $00
    nop                                           ; $66DA: $00
    nop                                           ; $66DB: $00
    nop                                           ; $66DC: $00
    inc bc                                        ; $66DD: $03
    ld bc, $8300                                  ; $66DE: $01 $00 $83
    add d                                         ; $66E1: $82
    nop                                           ; $66E2: $00
    sub l                                         ; $66E3: $95
    pop bc                                        ; $66E4: $C1
    nop                                           ; $66E5: $00
    xor c                                         ; $66E6: $A9
    or c                                          ; $66E7: $B1
    nop                                           ; $66E8: $00
    ld bc, $0000                                  ; $66E9: $01 $00 $00
    nop                                           ; $66EC: $00
    ld bc, $1D02                                  ; $66ED: $01 $02 $1D
    ld b, [hl]                                    ; $66F0: $46
    nop                                           ; $66F1: $00
    daa                                           ; $66F2: $27
    ld b, d                                       ; $66F3: $42
    nop                                           ; $66F4: $00
    ld bc, $00DC                                  ; $66F5: $01 $DC $00
    jp c, Jump_000_00DC                           ; $66F8: $DA $DC $00

    sbc $01                                       ; $66FB: $DE $01
    nop                                           ; $66FD: $00
    db $E3                                        ; $66FE: $E3
    nop                                           ; $66FF: $00
    nop                                           ; $6700: $00
    inc bc                                        ; $6701: $03
    nop                                           ; $6702: $00
    nop                                           ; $6703: $00
    dec b                                         ; $6704: $05
    ld bc, $0000                                  ; $6705: $01 $00 $00
    ld [bc], a                                    ; $6708: $02
    nop                                           ; $6709: $00
    nop                                           ; $670A: $00
    ld b, $FE                                     ; $670B: $06 $FE
    ld h, $11                                     ; $670D: $26 $11
    inc b                                         ; $670F: $04
    ld c, c                                       ; $6710: $49
    nop                                           ; $6711: $00
    ld bc, $00B2                                  ; $6712: $01 $B2 $00
    add d                                         ; $6715: $82
    sub l                                         ; $6716: $95
    nop                                           ; $6717: $00
    pop bc                                        ; $6718: $C1
    adc c                                         ; $6719: $89
    nop                                           ; $671A: $00
    cp d                                          ; $671B: $BA
    or c                                          ; $671C: $B1
    nop                                           ; $671D: $00
    ret                                           ; $671E: $C9


    nop                                           ; $671F: $00
    nop                                           ; $6720: $00
    inc bc                                        ; $6721: $03
    nop                                           ; $6722: $00
    nop                                           ; $6723: $00
    inc bc                                        ; $6724: $03
    nop                                           ; $6725: $00
    nop                                           ; $6726: $00
    inc bc                                        ; $6727: $03
    sbc c                                         ; $6728: $99
    nop                                           ; $6729: $00
    adc c                                         ; $672A: $89
    sub l                                         ; $672B: $95
    nop                                           ; $672C: $00
    cp [hl]                                       ; $672D: $BE
    pop bc                                        ; $672E: $C1
    nop                                           ; $672F: $00
    ld c, l                                       ; $6730: $4D
    jr nz, jr_038_6744                            ; $6731: $20 $11

    ld hl, $026E                                  ; $6733: $21 $6E $02
    ld a, b                                       ; $6736: $78
    ld h, b                                       ; $6737: $60
    nop                                           ; $6738: $00
    ld l, d                                       ; $6739: $6A
    nop                                           ; $673A: $00
    nop                                           ; $673B: $00
    nop                                           ; $673C: $00
    ccf                                           ; $673D: $3F
    nop                                           ; $673E: $00
    ld h, b                                       ; $673F: $60
    ld c, d                                       ; $6740: $4A
    ld bc, $283F                                  ; $6741: $01 $3F $28

jr_038_6744:
    nop                                           ; $6744: $00
    ret                                           ; $6745: $C9


    nop                                           ; $6746: $00
    nop                                           ; $6747: $00
    nop                                           ; $6748: $00
    nop                                           ; $6749: $00
    nop                                           ; $674A: $00
    inc bc                                        ; $674B: $03
    nop                                           ; $674C: $00
    nop                                           ; $674D: $00
    dec b                                         ; $674E: $05
    ld bc, $0000                                  ; $674F: $01 $00 $00
    ld [bc], a                                    ; $6752: $02
    nop                                           ; $6753: $00
    nop                                           ; $6754: $00
    ld [bc], a                                    ; $6755: $02
    nop                                           ; $6756: $00
    nop                                           ; $6757: $00
    ld [bc], a                                    ; $6758: $02
    nop                                           ; $6759: $00
    nop                                           ; $675A: $00
    dec b                                         ; $675B: $05
    add b                                         ; $675C: $80
    nop                                           ; $675D: $00
    nop                                           ; $675E: $00
    ld [bc], a                                    ; $675F: $02
    nop                                           ; $6760: $00
    nop                                           ; $6761: $00
    ld bc, $6759                                  ; $6762: $01 $59 $67
    jr nc, jr_038_6767                            ; $6765: $30 $00

jr_038_6767:
    ld l, a                                       ; $6767: $6F
    add hl, sp                                    ; $6768: $39
    nop                                           ; $6769: $00
    and b                                         ; $676A: $A0
    ld a, l                                       ; $676B: $7D
    nop                                           ; $676C: $00
    ld a, c                                       ; $676D: $79
    ccf                                           ; $676E: $3F
    nop                                           ; $676F: $00
    daa                                           ; $6770: $27
    ld b, d                                       ; $6771: $42
    nop                                           ; $6772: $00
    daa                                           ; $6773: $27
    nop                                           ; $6774: $00
    nop                                           ; $6775: $00
    nop                                           ; $6776: $00
    ld bc, $B200                                  ; $6777: $01 $00 $B2
    add d                                         ; $677A: $82
    nop                                           ; $677B: $00
    sub l                                         ; $677C: $95
    cp [hl]                                       ; $677D: $BE
    nop                                           ; $677E: $00
    pop bc                                        ; $677F: $C1
    nop                                           ; $6780: $00
    nop                                           ; $6781: $00
    nop                                           ; $6782: $00
    nop                                           ; $6783: $00
    nop                                           ; $6784: $00
    inc bc                                        ; $6785: $03
    ld c, c                                       ; $6786: $49
    nop                                           ; $6787: $00
    ld a, $4D                                     ; $6788: $3E $4D
    nop                                           ; $678A: $00
    ld l, l                                       ; $678B: $6D
    dec l                                         ; $678C: $2D
    nop                                           ; $678D: $00
    jr c, jr_038_67B7                             ; $678E: $38 $27

    nop                                           ; $6790: $00
    ld a, e                                       ; $6791: $7B
    sbc [hl]                                      ; $6792: $9E
    nop                                           ; $6793: $00
    cp h                                          ; $6794: $BC
    add [hl]                                      ; $6795: $86
    nop                                           ; $6796: $00
    ld a, b                                       ; $6797: $78
    ld c, l                                       ; $6798: $4D
    nop                                           ; $6799: $00
    ld a, e                                       ; $679A: $7B
    sbc [hl]                                      ; $679B: $9E
    nop                                           ; $679C: $00
    cp h                                          ; $679D: $BC
    add [hl]                                      ; $679E: $86
    nop                                           ; $679F: $00
    pop bc                                        ; $67A0: $C1
    ld l, [hl]                                    ; $67A1: $6E
    nop                                           ; $67A2: $00
    ld c, h                                       ; $67A3: $4C
    ld l, b                                       ; $67A4: $68
    nop                                           ; $67A5: $00
    jr z, jr_038_67A9                             ; $67A6: $28 $01

    nop                                           ; $67A8: $00

jr_038_67A9:
    sbc c                                         ; $67A9: $99
    adc c                                         ; $67AA: $89
    nop                                           ; $67AB: $00
    sub l                                         ; $67AC: $95
    cp [hl]                                       ; $67AD: $BE
    nop                                           ; $67AE: $00
    pop bc                                        ; $67AF: $C1
    ld c, l                                       ; $67B0: $4D
    nop                                           ; $67B1: $00
    xor c                                         ; $67B2: $A9
    adc c                                         ; $67B3: $89
    nop                                           ; $67B4: $00
    ret                                           ; $67B5: $C9


    nop                                           ; $67B6: $00

jr_038_67B7:
    nop                                           ; $67B7: $00
    nop                                           ; $67B8: $00
    nop                                           ; $67B9: $00
    nop                                           ; $67BA: $00
    inc bc                                        ; $67BB: $03
    dec l                                         ; $67BC: $2D
    nop                                           ; $67BD: $00
    jr c, jr_038_680D                             ; $67BE: $38 $4D

    nop                                           ; $67C0: $00
    ld h, $6A                                     ; $67C1: $26 $6A
    nop                                           ; $67C3: $00
    ld d, c                                       ; $67C4: $51
    daa                                           ; $67C5: $27
    nop                                           ; $67C6: $00
    ld [hl], $3F                                  ; $67C7: $36 $3F
    nop                                           ; $67C9: $00
    ld b, b                                       ; $67CA: $40
    ld l, [hl]                                    ; $67CB: $6E
    nop                                           ; $67CC: $00
    ld bc, $0040                                  ; $67CD: $01 $40 $00
    dec hl                                        ; $67D0: $2B
    ld l, b                                       ; $67D1: $68
    nop                                           ; $67D2: $00
    ld b, a                                       ; $67D3: $47
    ld bc, $2A00                                  ; $67D4: $01 $00 $2A
    dec [hl]                                      ; $67D7: $35
    nop                                           ; $67D8: $00
    add hl, hl                                    ; $67D9: $29
    cpl                                           ; $67DA: $2F
    nop                                           ; $67DB: $00
    ld l, a                                       ; $67DC: $6F
    ld b, a                                       ; $67DD: $47
    nop                                           ; $67DE: $00
    daa                                           ; $67DF: $27
    ld l, d                                       ; $67E0: $6A
    nop                                           ; $67E1: $00
    ret                                           ; $67E2: $C9


    nop                                           ; $67E3: $00
    nop                                           ; $67E4: $00
    nop                                           ; $67E5: $00
    nop                                           ; $67E6: $00
    nop                                           ; $67E7: $00
    inc bc                                        ; $67E8: $03
    ld c, a                                       ; $67E9: $4F
    nop                                           ; $67EA: $00
    ld [hl], b                                    ; $67EB: $70
    dec [hl]                                      ; $67EC: $35
    nop                                           ; $67ED: $00
    ld b, c                                       ; $67EE: $41
    ld l, l                                       ; $67EF: $6D
    nop                                           ; $67F0: $00
    ld a, [hl-]                                   ; $67F1: $3A
    nop                                           ; $67F2: $00
    nop                                           ; $67F3: $00
    nop                                           ; $67F4: $00
    nop                                           ; $67F5: $00
    nop                                           ; $67F6: $00
    inc bc                                        ; $67F7: $03
    ld bc, $A500                                  ; $67F8: $01 $00 $A5
    adc c                                         ; $67FB: $89
    nop                                           ; $67FC: $00
    sub c                                         ; $67FD: $91
    halt                                          ; $67FE: $76
    nop                                           ; $67FF: $00
    adc b                                         ; $6800: $88
    cp c                                          ; $6801: $B9
    nop                                           ; $6802: $00
    jp nz, Jump_000_0095                          ; $6803: $C2 $95 $00

    ld bc, $0000                                  ; $6806: $01 $00 $00
    nop                                           ; $6809: $00
    ld bc, $0100                                  ; $680A: $01 $00 $01

jr_038_680D:
    call c, $DA00                                 ; $680D: $DC $00 $DA
    ld bc, $E300                                  ; $6810: $01 $00 $E3
    nop                                           ; $6813: $00
    nop                                           ; $6814: $00
    nop                                           ; $6815: $00
    nop                                           ; $6816: $00
    nop                                           ; $6817: $00
    inc bc                                        ; $6818: $03
    nop                                           ; $6819: $00
    nop                                           ; $681A: $00
    dec b                                         ; $681B: $05
    ld bc, $0000                                  ; $681C: $01 $00 $00
    ld [bc], a                                    ; $681F: $02
    nop                                           ; $6820: $00
    nop                                           ; $6821: $00
    ld b, $FE                                     ; $6822: $06 $FE
    inc l                                         ; $6824: $2C
    nop                                           ; $6825: $00
    ld h, a                                       ; $6826: $67
    jr z, jr_038_6829                             ; $6827: $28 $00

jr_038_6829:
    ld l, c                                       ; $6829: $69
    ld h, [hl]                                    ; $682A: $66
    nop                                           ; $682B: $00
    jr z, jr_038_687B                             ; $682C: $28 $4D

    nop                                           ; $682E: $00
    dec l                                         ; $682F: $2D
    ld b, b                                       ; $6830: $40
    nop                                           ; $6831: $00
    dec hl                                        ; $6832: $2B
    ld l, b                                       ; $6833: $68
    nop                                           ; $6834: $00
    ld bc, $0088                                  ; $6835: $01 $88 $00
    cp c                                          ; $6838: $B9
    jp nz, $9500                                  ; $6839: $C2 $00 $95

    ld l, [hl]                                    ; $683C: $6E
    nop                                           ; $683D: $00
    ld bc, $0028                                  ; $683E: $01 $28 $00
    ld b, c                                       ; $6841: $41
    ret                                           ; $6842: $C9


    nop                                           ; $6843: $00
    ld bc, $0000                                  ; $6844: $01 $00 $00
    nop                                           ; $6847: $00
    nop                                           ; $6848: $00
    nop                                           ; $6849: $00
    inc bc                                        ; $684A: $03
    nop                                           ; $684B: $00
    nop                                           ; $684C: $00
    inc bc                                        ; $684D: $03
    ld bc, $9400                                  ; $684E: $01 $00 $94
    call nz, Call_038_7600                        ; $6851: $C4 $00 $76
    cp h                                          ; $6854: $BC
    nop                                           ; $6855: $00
    adc c                                         ; $6856: $89
    cp d                                          ; $6857: $BA
    nop                                           ; $6858: $00
    adc c                                         ; $6859: $89
    sub l                                         ; $685A: $95
    nop                                           ; $685B: $00
    ld bc, $0000                                  ; $685C: $01 $00 $00
    nop                                           ; $685F: $00
    ld bc, $0100                                  ; $6860: $01 $00 $01
    sbc $00                                       ; $6863: $DE $00
    call c, Call_000_00DA                         ; $6865: $DC $DA $00
    ld bc, $00E2                                  ; $6868: $01 $E2 $00
    ld bc, $0000                                  ; $686B: $01 $00 $00
    nop                                           ; $686E: $00
    nop                                           ; $686F: $00
    nop                                           ; $6870: $00
    inc bc                                        ; $6871: $03
    nop                                           ; $6872: $00
    nop                                           ; $6873: $00
    dec b                                         ; $6874: $05
    ld bc, $0000                                  ; $6875: $01 $00 $00
    ld [bc], a                                    ; $6878: $02
    nop                                           ; $6879: $00
    nop                                           ; $687A: $00

jr_038_687B:
    ld b, $FE                                     ; $687B: $06 $FE
    ld [hl], $00                                  ; $687D: $36 $00
    ld [hl], b                                    ; $687F: $70
    ld e, h                                       ; $6880: $5C
    nop                                           ; $6881: $00
    ld l, [hl]                                    ; $6882: $6E
    ld e, l                                       ; $6883: $5D
    nop                                           ; $6884: $00
    add hl, hl                                    ; $6885: $29
    ld c, d                                       ; $6886: $4A
    nop                                           ; $6887: $00
    ld b, h                                       ; $6888: $44
    ld [hl], $00                                  ; $6889: $36 $00
    ld b, d                                       ; $688B: $42
    ld bc, $4300                                  ; $688C: $01 $00 $43
    ld [hl], b                                    ; $688F: $70
    nop                                           ; $6890: $00
    ld [hl], $6F                                  ; $6891: $36 $6F
    nop                                           ; $6893: $00
    scf                                           ; $6894: $37
    ld l, d                                       ; $6895: $6A
    nop                                           ; $6896: $00
    ld bc, $002F                                  ; $6897: $01 $2F $00
    jr z, @+$35                                   ; $689A: $28 $33

    nop                                           ; $689C: $00
    inc l                                         ; $689D: $2C
    ret                                           ; $689E: $C9


    nop                                           ; $689F: $00
    ld bc, $0000                                  ; $68A0: $01 $00 $00
    inc bc                                        ; $68A3: $03
    nop                                           ; $68A4: $00
    nop                                           ; $68A5: $00
    inc bc                                        ; $68A6: $03
    ld bc, $7900                                  ; $68A7: $01 $00 $79
    and [hl]                                      ; $68AA: $A6
    nop                                           ; $68AB: $00
    cp h                                          ; $68AC: $BC
    ld a, c                                       ; $68AD: $79
    nop                                           ; $68AE: $00
    pop bc                                        ; $68AF: $C1
    xor d                                         ; $68B0: $AA
    nop                                           ; $68B1: $00
    ld a, a                                       ; $68B2: $7F
    sub l                                         ; $68B3: $95
    nop                                           ; $68B4: $00
    ld bc, $0000                                  ; $68B5: $01 $00 $00
    nop                                           ; $68B8: $00
    ld bc, $0100                                  ; $68B9: $01 $00 $01
    jp c, $DC00                                   ; $68BC: $DA $00 $DC

    sbc $00                                       ; $68BF: $DE $00
    ld bc, $00E2                                  ; $68C1: $01 $E2 $00
    ld bc, $0000                                  ; $68C4: $01 $00 $00
    nop                                           ; $68C7: $00
    nop                                           ; $68C8: $00
    nop                                           ; $68C9: $00
    inc bc                                        ; $68CA: $03
    nop                                           ; $68CB: $00
    nop                                           ; $68CC: $00
    dec b                                         ; $68CD: $05
    ld bc, $0000                                  ; $68CE: $01 $00 $00
    ld [bc], a                                    ; $68D1: $02
    nop                                           ; $68D2: $00
    nop                                           ; $68D3: $00
    ld b, $FE                                     ; $68D4: $06 $FE
    ld h, $00                                     ; $68D6: $26 $00
    daa                                           ; $68D8: $27
    ld b, d                                       ; $68D9: $42
    nop                                           ; $68DA: $00
    ld c, l                                       ; $68DB: $4D
    ld bc, $4300                                  ; $68DC: $01 $00 $43
    ld d, h                                       ; $68DF: $54
    nop                                           ; $68E0: $00
    ld c, b                                       ; $68E1: $48
    jr z, jr_038_68E4                             ; $68E2: $28 $00

jr_038_68E4:
    ld [hl-], a                                   ; $68E4: $32
    ld l, [hl]                                    ; $68E5: $6E
    nop                                           ; $68E6: $00
    ld bc, $0028                                  ; $68E7: $01 $28 $00
    ld b, b                                       ; $68EA: $40
    ld l, $00                                     ; $68EB: $2E $00
    scf                                           ; $68ED: $37
    ld bc, $2F00                                  ; $68EE: $01 $00 $2F
    jr z, jr_038_68F3                             ; $68F1: $28 $00

jr_038_68F3:
    inc sp                                        ; $68F3: $33
    inc l                                         ; $68F4: $2C
    nop                                           ; $68F5: $00
    ret                                           ; $68F6: $C9


    nop                                           ; $68F7: $00
    nop                                           ; $68F8: $00
    nop                                           ; $68F9: $00
    nop                                           ; $68FA: $00
    nop                                           ; $68FB: $00
    inc bc                                        ; $68FC: $03
    nop                                           ; $68FD: $00
    nop                                           ; $68FE: $00
    inc bc                                        ; $68FF: $03
    ld bc, $7900                                  ; $6900: $01 $00 $79
    and [hl]                                      ; $6903: $A6
    nop                                           ; $6904: $00
    cp h                                          ; $6905: $BC
    adc c                                         ; $6906: $89
    nop                                           ; $6907: $00
    cp d                                          ; $6908: $BA
    jp nz, $8800                                  ; $6909: $C2 $00 $88

    cp b                                          ; $690C: $B8
    nop                                           ; $690D: $00
    ld bc, $0000                                  ; $690E: $01 $00 $00
    nop                                           ; $6911: $00
    ld bc, $0100                                  ; $6912: $01 $00 $01
    jp c, $DC00                                   ; $6915: $DA $00 $DC

    jp c, Boot                                    ; $6918: $DA $00 $01

    db $E3                                        ; $691B: $E3
    nop                                           ; $691C: $00
    ld bc, $0000                                  ; $691D: $01 $00 $00
    nop                                           ; $6920: $00
    nop                                           ; $6921: $00
    nop                                           ; $6922: $00
    inc bc                                        ; $6923: $03
    nop                                           ; $6924: $00
    nop                                           ; $6925: $00
    dec b                                         ; $6926: $05
    ld bc, $0000                                  ; $6927: $01 $00 $00
    ld [bc], a                                    ; $692A: $02
    nop                                           ; $692B: $00
    nop                                           ; $692C: $00
    ld b, $FE                                     ; $692D: $06 $FE
    ld [hl], $00                                  ; $692F: $36 $00
    ld [hl], b                                    ; $6931: $70
    ld e, h                                       ; $6932: $5C
    nop                                           ; $6933: $00
    ld b, a                                       ; $6934: $47
    ld bc, $2800                                  ; $6935: $01 $00 $28
    add hl, hl                                    ; $6938: $29
    nop                                           ; $6939: $00
    ld c, d                                       ; $693A: $4A
    ld e, a                                       ; $693B: $5F
    nop                                           ; $693C: $00
    dec hl                                        ; $693D: $2B
    ld [hl], b                                    ; $693E: $70
    nop                                           ; $693F: $00
    ld b, d                                       ; $6940: $42
    cpl                                           ; $6941: $2F
    nop                                           ; $6942: $00
    jr z, @+$35                                   ; $6943: $28 $33

    nop                                           ; $6945: $00
    inc l                                         ; $6946: $2C
    ld l, [hl]                                    ; $6947: $6E
    nop                                           ; $6948: $00
    scf                                           ; $6949: $37
    ld l, d                                       ; $694A: $6A
    nop                                           ; $694B: $00
    ret                                           ; $694C: $C9


    nop                                           ; $694D: $00
    nop                                           ; $694E: $00
    nop                                           ; $694F: $00
    nop                                           ; $6950: $00
    nop                                           ; $6951: $00
    inc bc                                        ; $6952: $03
    nop                                           ; $6953: $00
    nop                                           ; $6954: $00
    inc bc                                        ; $6955: $03
    add l                                         ; $6956: $85
    nop                                           ; $6957: $00
    ld a, [hl]                                    ; $6958: $7E
    ld c, a                                       ; $6959: $4F
    nop                                           ; $695A: $00
    ld [hl], b                                    ; $695B: $70
    dec [hl]                                      ; $695C: $35
    nop                                           ; $695D: $00
    ld b, c                                       ; $695E: $41
    ld l, l                                       ; $695F: $6D
    nop                                           ; $6960: $00
    ld a, [hl-]                                   ; $6961: $3A
    nop                                           ; $6962: $00
    nop                                           ; $6963: $00
    nop                                           ; $6964: $00
    nop                                           ; $6965: $00
    nop                                           ; $6966: $00
    inc bc                                        ; $6967: $03
    ld bc, $BD00                                  ; $6968: $01 $00 $BD
    halt                                          ; $696B: $76
    nop                                           ; $696C: $00
    adc h                                         ; $696D: $8C
    halt                                          ; $696E: $76
    nop                                           ; $696F: $00
    and l                                         ; $6970: $A5
    adc c                                         ; $6971: $89
    nop                                           ; $6972: $00
    sub c                                         ; $6973: $91
    halt                                          ; $6974: $76
    nop                                           ; $6975: $00
    ld bc, $0000                                  ; $6976: $01 $00 $00
    nop                                           ; $6979: $00
    ld bc, $0100                                  ; $697A: $01 $00 $01
    call c, $DA00                                 ; $697D: $DC $00 $DA
    call c, $DE00                                 ; $6980: $DC $00 $DE
    ld bc, $E300                                  ; $6983: $01 $00 $E3
    nop                                           ; $6986: $00
    nop                                           ; $6987: $00
    nop                                           ; $6988: $00
    nop                                           ; $6989: $00
    nop                                           ; $698A: $00
    inc bc                                        ; $698B: $03
    nop                                           ; $698C: $00
    nop                                           ; $698D: $00
    dec b                                         ; $698E: $05
    ld bc, $0000                                  ; $698F: $01 $00 $00
    ld [bc], a                                    ; $6992: $02
    nop                                           ; $6993: $00
    nop                                           ; $6994: $00
    ld b, $FE                                     ; $6995: $06 $FE
    adc b                                         ; $6997: $88
    nop                                           ; $6998: $00
    cp c                                          ; $6999: $B9
    jp nz, $9500                                  ; $699A: $C2 $00 $95

    ld l, [hl]                                    ; $699D: $6E
    nop                                           ; $699E: $00
    ld bc, $006B                                  ; $699F: $01 $6B $00
    ld l, a                                       ; $69A2: $6F
    ld a, $00                                     ; $69A3: $3E $00
    dec l                                         ; $69A5: $2D
    ld [hl], $00                                  ; $69A6: $36 $00
    ld b, d                                       ; $69A8: $42
    ld c, [hl]                                    ; $69A9: $4E
    nop                                           ; $69AA: $00
    ld [hl], b                                    ; $69AB: $70
    ld [hl], $00                                  ; $69AC: $36 $00
    ld h, l                                       ; $69AE: $65
    scf                                           ; $69AF: $37
    nop                                           ; $69B0: $00
    ld l, d                                       ; $69B1: $6A
    ret                                           ; $69B2: $C9


    nop                                           ; $69B3: $00
    ld bc, $0000                                  ; $69B4: $01 $00 $00
    nop                                           ; $69B7: $00
    nop                                           ; $69B8: $00
    nop                                           ; $69B9: $00
    inc bc                                        ; $69BA: $03
    nop                                           ; $69BB: $00
    nop                                           ; $69BC: $00
    inc bc                                        ; $69BD: $03
    and [hl]                                      ; $69BE: $A6
    nop                                           ; $69BF: $00
    halt                                          ; $69C0: $76
    adc c                                         ; $69C1: $89
    nop                                           ; $69C2: $00
    sub l                                         ; $69C3: $95
    or e                                          ; $69C4: $B3
    nop                                           ; $69C5: $00
    halt                                          ; $69C6: $76
    sbc d                                         ; $69C7: $9A
    nop                                           ; $69C8: $00
    ld c, [hl]                                    ; $69C9: $4E
    nop                                           ; $69CA: $00
    nop                                           ; $69CB: $00
    nop                                           ; $69CC: $00
    nop                                           ; $69CD: $00
    nop                                           ; $69CE: $00
    inc bc                                        ; $69CF: $03
    ret nc                                        ; $69D0: $D0

    nop                                           ; $69D1: $00
    sub h                                         ; $69D2: $94
    call nz, $BA00                                ; $69D3: $C4 $00 $BA
    sbc a                                         ; $69D6: $9F
    nop                                           ; $69D7: $00
    adc h                                         ; $69D8: $8C
    ld a, d                                       ; $69D9: $7A
    nop                                           ; $69DA: $00
    cp h                                          ; $69DB: $BC
    adc c                                         ; $69DC: $89
    nop                                           ; $69DD: $00
    pop de                                        ; $69DE: $D1
    ld c, d                                       ; $69DF: $4A
    nop                                           ; $69E0: $00
    ld bc, $0051                                  ; $69E1: $01 $51 $00
    ld l, a                                       ; $69E4: $6F
    ld [hl], $00                                  ; $69E5: $36 $00
    ld l, a                                       ; $69E7: $6F
    scf                                           ; $69E8: $37
    nop                                           ; $69E9: $00
    ld l, d                                       ; $69EA: $6A
    ret                                           ; $69EB: $C9


    nop                                           ; $69EC: $00
    ld bc, $0000                                  ; $69ED: $01 $00 $00
    nop                                           ; $69F0: $00
    nop                                           ; $69F1: $00
    nop                                           ; $69F2: $00
    inc bc                                        ; $69F3: $03
    nop                                           ; $69F4: $00
    nop                                           ; $69F5: $00
    inc b                                         ; $69F6: $04
    ld bc, $0000                                  ; $69F7: $01 $00 $00
    dec b                                         ; $69FA: $05
    ld bc, $0000                                  ; $69FB: $01 $00 $00
    ld [bc], a                                    ; $69FE: $02
    nop                                           ; $69FF: $00
    nop                                           ; $6A00: $00
    ld [bc], a                                    ; $6A01: $02
    nop                                           ; $6A02: $00
    nop                                           ; $6A03: $00
    ld [bc], a                                    ; $6A04: $02
    nop                                           ; $6A05: $00
    nop                                           ; $6A06: $00
    ld b, $FE                                     ; $6A07: $06 $FE
    ld c, a                                       ; $6A09: $4F
    nop                                           ; $6A0A: $00
    ld [hl], b                                    ; $6A0B: $70
    dec [hl]                                      ; $6A0C: $35
    nop                                           ; $6A0D: $00
    ld b, c                                       ; $6A0E: $41
    ld l, l                                       ; $6A0F: $6D
    nop                                           ; $6A10: $00
    ld a, [hl-]                                   ; $6A11: $3A
    nop                                           ; $6A12: $00
    nop                                           ; $6A13: $00
    nop                                           ; $6A14: $00
    nop                                           ; $6A15: $00
    nop                                           ; $6A16: $00
    inc bc                                        ; $6A17: $03
    ld bc, $9400                                  ; $6A18: $01 $00 $94
    call nz, $BA00                                ; $6A1B: $C4 $00 $BA
    sbc a                                         ; $6A1E: $9F
    nop                                           ; $6A1F: $00
    and a                                         ; $6A20: $A7
    cp l                                          ; $6A21: $BD
    nop                                           ; $6A22: $00
    adc c                                         ; $6A23: $89
    nop                                           ; $6A24: $00
    nop                                           ; $6A25: $00
    nop                                           ; $6A26: $00
    ld bc, $0100                                  ; $6A27: $01 $00 $01
    call c, $DA00                                 ; $6A2A: $DC $00 $DA
    ld bc, $E300                                  ; $6A2D: $01 $00 $E3
    nop                                           ; $6A30: $00
    nop                                           ; $6A31: $00
    nop                                           ; $6A32: $00
    nop                                           ; $6A33: $00
    nop                                           ; $6A34: $00
    inc bc                                        ; $6A35: $03
    nop                                           ; $6A36: $00
    nop                                           ; $6A37: $00
    dec b                                         ; $6A38: $05
    ld bc, $0000                                  ; $6A39: $01 $00 $00
    ld [bc], a                                    ; $6A3C: $02
    nop                                           ; $6A3D: $00
    nop                                           ; $6A3E: $00
    ld b, $FE                                     ; $6A3F: $06 $FE
    dec l                                         ; $6A41: $2D
    nop                                           ; $6A42: $00
    ld b, b                                       ; $6A43: $40
    dec hl                                        ; $6A44: $2B
    nop                                           ; $6A45: $00
    ld l, b                                       ; $6A46: $68
    adc b                                         ; $6A47: $88
    nop                                           ; $6A48: $00
    cp c                                          ; $6A49: $B9
    jp nz, $9500                                  ; $6A4A: $C2 $00 $95

    ld l, [hl]                                    ; $6A4D: $6E
    nop                                           ; $6A4E: $00
    jr z, @+$43                                   ; $6A4F: $28 $41

    nop                                           ; $6A51: $00
    ret                                           ; $6A52: $C9


    nop                                           ; $6A53: $00
    nop                                           ; $6A54: $00
    inc bc                                        ; $6A55: $03
    nop                                           ; $6A56: $00
    nop                                           ; $6A57: $00
    inc bc                                        ; $6A58: $03
    ld bc, $B200                                  ; $6A59: $01 $00 $B2
    add d                                         ; $6A5C: $82
    nop                                           ; $6A5D: $00
    sub l                                         ; $6A5E: $95
    pop bc                                        ; $6A5F: $C1
    nop                                           ; $6A60: $00
    xor h                                         ; $6A61: $AC
    cp l                                          ; $6A62: $BD
    nop                                           ; $6A63: $00
    adc c                                         ; $6A64: $89
    nop                                           ; $6A65: $00
    nop                                           ; $6A66: $00
    nop                                           ; $6A67: $00
    ld bc, $0100                                  ; $6A68: $01 $00 $01
    jp c, $DC00                                   ; $6A6B: $DA $00 $DC

    jp c, Boot                                    ; $6A6E: $DA $00 $01

    db $E3                                        ; $6A71: $E3
    nop                                           ; $6A72: $00
    ld bc, $0000                                  ; $6A73: $01 $00 $00
    nop                                           ; $6A76: $00
    nop                                           ; $6A77: $00
    nop                                           ; $6A78: $00
    inc bc                                        ; $6A79: $03
    nop                                           ; $6A7A: $00
    nop                                           ; $6A7B: $00
    dec b                                         ; $6A7C: $05
    ld bc, $0000                                  ; $6A7D: $01 $00 $00
    ld [bc], a                                    ; $6A80: $02
    nop                                           ; $6A81: $00
    nop                                           ; $6A82: $00
    ld b, $FE                                     ; $6A83: $06 $FE
    dec hl                                        ; $6A85: $2B
    nop                                           ; $6A86: $00
    daa                                           ; $6A87: $27
    ld b, d                                       ; $6A88: $42
    nop                                           ; $6A89: $00
    ld l, a                                       ; $6A8A: $6F
    ld [hl], $00                                  ; $6A8B: $36 $00
    ld b, d                                       ; $6A8D: $42
    ld bc, $2D00                                  ; $6A8E: $01 $00 $2D
    jr z, jr_038_6A93                             ; $6A91: $28 $00

jr_038_6A93:
    ld b, b                                       ; $6A93: $40
    ld h, [hl]                                    ; $6A94: $66
    nop                                           ; $6A95: $00
    jr z, jr_038_6AE9                             ; $6A96: $28 $51

    nop                                           ; $6A98: $00
    ld b, e                                       ; $6A99: $43
    ld d, h                                       ; $6A9A: $54
    nop                                           ; $6A9B: $00
    ld bc, $005D                                  ; $6A9C: $01 $5D $00
    ld [hl], $3F                                  ; $6A9F: $36 $3F
    nop                                           ; $6AA1: $00
    ld d, c                                       ; $6AA2: $51
    ld bc, $A900                                  ; $6AA3: $01 $00 $A9
    sbc c                                         ; $6AA6: $99
    nop                                           ; $6AA7: $00
    call nz, Call_000_00AC                        ; $6AA8: $C4 $AC $00
    cp l                                          ; $6AAB: $BD
    adc c                                         ; $6AAC: $89
    nop                                           ; $6AAD: $00
    scf                                           ; $6AAE: $37
    ld l, d                                       ; $6AAF: $6A
    nop                                           ; $6AB0: $00
    ret                                           ; $6AB1: $C9


    nop                                           ; $6AB2: $00
    nop                                           ; $6AB3: $00
    nop                                           ; $6AB4: $00
    nop                                           ; $6AB5: $00
    nop                                           ; $6AB6: $00
    inc bc                                        ; $6AB7: $03
    nop                                           ; $6AB8: $00
    nop                                           ; $6AB9: $00
    inc bc                                        ; $6ABA: $03
    ld bc, $9400                                  ; $6ABB: $01 $00 $94
    call nz, $BA00                                ; $6ABE: $C4 $00 $BA
    sbc a                                         ; $6AC1: $9F
    nop                                           ; $6AC2: $00
    cp e                                          ; $6AC3: $BB
    xor b                                         ; $6AC4: $A8
    nop                                           ; $6AC5: $00
    pop bc                                        ; $6AC6: $C1
    adc l                                         ; $6AC7: $8D
    nop                                           ; $6AC8: $00
    ld bc, $0000                                  ; $6AC9: $01 $00 $00
    nop                                           ; $6ACC: $00
    ld bc, $0100                                  ; $6ACD: $01 $00 $01
    call c, $DE00                                 ; $6AD0: $DC $00 $DE
    ld bc, $E200                                  ; $6AD3: $01 $00 $E2
    nop                                           ; $6AD6: $00
    nop                                           ; $6AD7: $00
    nop                                           ; $6AD8: $00
    nop                                           ; $6AD9: $00
    nop                                           ; $6ADA: $00
    inc bc                                        ; $6ADB: $03
    nop                                           ; $6ADC: $00
    nop                                           ; $6ADD: $00
    dec b                                         ; $6ADE: $05
    ld bc, $0000                                  ; $6ADF: $01 $00 $00
    ld [bc], a                                    ; $6AE2: $02
    nop                                           ; $6AE3: $00
    nop                                           ; $6AE4: $00
    ld b, $FE                                     ; $6AE5: $06 $FE
    jr z, jr_038_6AE9                             ; $6AE7: $28 $00

jr_038_6AE9:
    add hl, hl                                    ; $6AE9: $29
    cpl                                           ; $6AEA: $2F
    nop                                           ; $6AEB: $00
    jr z, @+$35                                   ; $6AEC: $28 $33

    nop                                           ; $6AEE: $00
    inc l                                         ; $6AEF: $2C
    ld l, [hl]                                    ; $6AF0: $6E
    nop                                           ; $6AF1: $00
    ld bc, $0028                                  ; $6AF2: $01 $28 $00
    ld l, $43                                     ; $6AF5: $2E $43
    nop                                           ; $6AF7: $00
    ld h, b                                       ; $6AF8: $60
    ld b, d                                       ; $6AF9: $42
    nop                                           ; $6AFA: $00
    ld bc, $004E                                  ; $6AFB: $01 $4E $00
    ld l, a                                       ; $6AFE: $6F
    inc sp                                        ; $6AFF: $33
    nop                                           ; $6B00: $00
    inc l                                         ; $6B01: $2C
    scf                                           ; $6B02: $37
    nop                                           ; $6B03: $00
    ld l, d                                       ; $6B04: $6A
    ret                                           ; $6B05: $C9


    nop                                           ; $6B06: $00
    ld bc, $0000                                  ; $6B07: $01 $00 $00
    nop                                           ; $6B0A: $00
    nop                                           ; $6B0B: $00
    nop                                           ; $6B0C: $00
    inc bc                                        ; $6B0D: $03
    nop                                           ; $6B0E: $00
    nop                                           ; $6B0F: $00
    inc bc                                        ; $6B10: $03
    ld bc, $9400                                  ; $6B11: $01 $00 $94
    call nz, $BA00                                ; $6B14: $C4 $00 $BA
    sbc a                                         ; $6B17: $9F
    nop                                           ; $6B18: $00
    adc c                                         ; $6B19: $89
    sub c                                         ; $6B1A: $91
    nop                                           ; $6B1B: $00
    pop bc                                        ; $6B1C: $C1
    xor h                                         ; $6B1D: $AC
    nop                                           ; $6B1E: $00
    ld bc, $0000                                  ; $6B1F: $01 $00 $00
    nop                                           ; $6B22: $00
    ld bc, $DA00                                  ; $6B23: $01 $00 $DA
    call c, $DA00                                 ; $6B26: $DC $00 $DA
    ld bc, $E200                                  ; $6B29: $01 $00 $E2
    nop                                           ; $6B2C: $00
    nop                                           ; $6B2D: $00
    nop                                           ; $6B2E: $00
    nop                                           ; $6B2F: $00
    nop                                           ; $6B30: $00
    inc bc                                        ; $6B31: $03
    nop                                           ; $6B32: $00
    nop                                           ; $6B33: $00
    dec b                                         ; $6B34: $05
    ld bc, $0000                                  ; $6B35: $01 $00 $00
    ld [bc], a                                    ; $6B38: $02
    nop                                           ; $6B39: $00
    nop                                           ; $6B3A: $00
    ld b, $FE                                     ; $6B3B: $06 $FE
    adc c                                         ; $6B3D: $89
    nop                                           ; $6B3E: $00
    cp d                                          ; $6B3F: $BA
    ld a, c                                       ; $6B40: $79
    nop                                           ; $6B41: $00
    sbc c                                         ; $6B42: $99
    call nz, $C100                                ; $6B43: $C4 $00 $C1
    add h                                         ; $6B46: $84
    nop                                           ; $6B47: $00
    ld b, a                                       ; $6B48: $47
    ld bc, $2600                                  ; $6B49: $01 $00 $26
    daa                                           ; $6B4C: $27
    nop                                           ; $6B4D: $00
    ld b, d                                       ; $6B4E: $42
    ld l, [hl]                                    ; $6B4F: $6E
    nop                                           ; $6B50: $00
    cpl                                           ; $6B51: $2F
    ld l, h                                       ; $6B52: $6C
    nop                                           ; $6B53: $00
    ld d, e                                       ; $6B54: $53
    ld [hl], $00                                  ; $6B55: $36 $00
    ld bc, $0028                                  ; $6B57: $01 $28 $00
    add hl, hl                                    ; $6B5A: $29
    dec hl                                        ; $6B5B: $2B
    nop                                           ; $6B5C: $00
    ld l, b                                       ; $6B5D: $68
    ld d, b                                       ; $6B5E: $50
    nop                                           ; $6B5F: $00
    ld e, [hl]                                    ; $6B60: $5E
    ld b, c                                       ; $6B61: $41
    nop                                           ; $6B62: $00
    ld l, $6A                                     ; $6B63: $2E $6A
    nop                                           ; $6B65: $00
    ret                                           ; $6B66: $C9


    nop                                           ; $6B67: $00
    nop                                           ; $6B68: $00
    nop                                           ; $6B69: $00
    nop                                           ; $6B6A: $00
    nop                                           ; $6B6B: $00
    inc bc                                        ; $6B6C: $03
    nop                                           ; $6B6D: $00
    nop                                           ; $6B6E: $00
    inc bc                                        ; $6B6F: $03
    add l                                         ; $6B70: $85
    nop                                           ; $6B71: $00
    ld a, [hl]                                    ; $6B72: $7E
    ld c, a                                       ; $6B73: $4F
    nop                                           ; $6B74: $00
    ld [hl], b                                    ; $6B75: $70
    dec [hl]                                      ; $6B76: $35
    nop                                           ; $6B77: $00
    ld b, c                                       ; $6B78: $41
    ld l, l                                       ; $6B79: $6D
    nop                                           ; $6B7A: $00
    ld a, [hl-]                                   ; $6B7B: $3A
    nop                                           ; $6B7C: $00
    nop                                           ; $6B7D: $00
    nop                                           ; $6B7E: $00
    nop                                           ; $6B7F: $00
    nop                                           ; $6B80: $00
    inc bc                                        ; $6B81: $03
    ld bc, $9B00                                  ; $6B82: $01 $00 $9B
    ld a, c                                       ; $6B85: $79
    nop                                           ; $6B86: $00
    sub l                                         ; $6B87: $95
    cp l                                          ; $6B88: $BD
    nop                                           ; $6B89: $00
    ld a, c                                       ; $6B8A: $79
    sbc d                                         ; $6B8B: $9A
    nop                                           ; $6B8C: $00
    ld bc, $0000                                  ; $6B8D: $01 $00 $00
    nop                                           ; $6B90: $00
    ld bc, $0100                                  ; $6B91: $01 $00 $01
    call c, $DA00                                 ; $6B94: $DC $00 $DA
    call c, $DE00                                 ; $6B97: $DC $00 $DE
    ld bc, $E300                                  ; $6B9A: $01 $00 $E3
    nop                                           ; $6B9D: $00
    nop                                           ; $6B9E: $00
    nop                                           ; $6B9F: $00
    nop                                           ; $6BA0: $00
    nop                                           ; $6BA1: $00
    inc bc                                        ; $6BA2: $03
    nop                                           ; $6BA3: $00
    nop                                           ; $6BA4: $00
    dec b                                         ; $6BA5: $05
    ld bc, $0000                                  ; $6BA6: $01 $00 $00
    ld [bc], a                                    ; $6BA9: $02
    nop                                           ; $6BAA: $00
    nop                                           ; $6BAB: $00
    ld b, $FE                                     ; $6BAC: $06 $FE
    ld b, e                                       ; $6BAE: $43
    nop                                           ; $6BAF: $00
    ld [hl], b                                    ; $6BB0: $70
    ld [hl], $00                                  ; $6BB1: $36 $00
    ld l, a                                       ; $6BB3: $6F
    ld [hl], $00                                  ; $6BB4: $36 $00
    ld b, d                                       ; $6BB6: $42
    ld bc, $A100                                  ; $6BB7: $01 $00 $A1
    jp nz, $9500                                  ; $6BBA: $C2 $00 $95

    scf                                           ; $6BBD: $37
    nop                                           ; $6BBE: $00
    ld l, d                                       ; $6BBF: $6A
    ld b, e                                       ; $6BC0: $43
    nop                                           ; $6BC1: $00
    ld bc, $0055                                  ; $6BC2: $01 $55 $00
    dec hl                                        ; $6BC5: $2B
    jr nc, jr_038_6BC8                            ; $6BC6: $30 $00

jr_038_6BC8:
    ld bc, $0041                                  ; $6BC8: $01 $41 $00
    ld sp, $0041                                  ; $6BCB: $31 $41 $00
    ld sp, $0043                                  ; $6BCE: $31 $43 $00
    ld bc, $002F                                  ; $6BD1: $01 $2F $00
    jr z, @+$35                                   ; $6BD4: $28 $33

    nop                                           ; $6BD6: $00
    inc l                                         ; $6BD7: $2C
    ld l, [hl]                                    ; $6BD8: $6E
    nop                                           ; $6BD9: $00
    scf                                           ; $6BDA: $37
    ld l, d                                       ; $6BDB: $6A
    nop                                           ; $6BDC: $00
    ret                                           ; $6BDD: $C9


    nop                                           ; $6BDE: $00
    nop                                           ; $6BDF: $00
    nop                                           ; $6BE0: $00
    nop                                           ; $6BE1: $00
    nop                                           ; $6BE2: $00
    inc bc                                        ; $6BE3: $03
    nop                                           ; $6BE4: $00
    nop                                           ; $6BE5: $00
    inc bc                                        ; $6BE6: $03
    nop                                           ; $6BE7: $00
    nop                                           ; $6BE8: $00
    inc bc                                        ; $6BE9: $03
    jr z, jr_038_6BEC                             ; $6BEA: $28 $00

jr_038_6BEC:
    ld b, b                                       ; $6BEC: $40
    ld h, [hl]                                    ; $6BED: $66
    nop                                           ; $6BEE: $00
    jr z, @+$3A                                   ; $6BEF: $28 $38

    nop                                           ; $6BF1: $00
    daa                                           ; $6BF2: $27
    ld d, b                                       ; $6BF3: $50
    nop                                           ; $6BF4: $00
    dec l                                         ; $6BF5: $2D
    ld c, l                                       ; $6BF6: $4D
    nop                                           ; $6BF7: $00
    ld h, d                                       ; $6BF8: $62
    ld d, a                                       ; $6BF9: $57
    nop                                           ; $6BFA: $00
    jr z, jr_038_6C4A                             ; $6BFB: $28 $4D

    nop                                           ; $6BFD: $00
    ccf                                           ; $6BFE: $3F
    ld h, b                                       ; $6BFF: $60
    nop                                           ; $6C00: $00
    ld c, d                                       ; $6C01: $4A
    ld bc, $3F00                                  ; $6C02: $01 $00 $3F
    ccf                                           ; $6C05: $3F
    nop                                           ; $6C06: $00
    dec hl                                        ; $6C07: $2B
    jr z, jr_038_6C0A                             ; $6C08: $28 $00

jr_038_6C0A:
    ret                                           ; $6C0A: $C9


    nop                                           ; $6C0B: $00
    nop                                           ; $6C0C: $00
    nop                                           ; $6C0D: $00
    nop                                           ; $6C0E: $00
    nop                                           ; $6C0F: $00
    inc bc                                        ; $6C10: $03
    nop                                           ; $6C11: $00
    nop                                           ; $6C12: $00
    dec b                                         ; $6C13: $05
    ld bc, $0000                                  ; $6C14: $01 $00 $00
    ld [bc], a                                    ; $6C17: $02
    nop                                           ; $6C18: $00
    nop                                           ; $6C19: $00
    ld [bc], a                                    ; $6C1A: $02
    nop                                           ; $6C1B: $00
    nop                                           ; $6C1C: $00
    ld [bc], a                                    ; $6C1D: $02
    nop                                           ; $6C1E: $00
    nop                                           ; $6C1F: $00
    dec b                                         ; $6C20: $05
    add b                                         ; $6C21: $80
    nop                                           ; $6C22: $00
    nop                                           ; $6C23: $00
    ld [bc], a                                    ; $6C24: $02
    nop                                           ; $6C25: $00
    nop                                           ; $6C26: $00
    ld bc, $6C1E                                  ; $6C27: $01 $1E $6C
    ld c, e                                       ; $6C2A: $4B
    ld [hl+], a                                   ; $6C2B: $22
    and b                                         ; $6C2C: $A0
    ld a, [hl+]                                   ; $6C2D: $2A
    ld de, $012B                                  ; $6C2E: $11 $2B $01
    ld de, $0157                                  ; $6C31: $11 $57 $01
    nop                                           ; $6C34: $00
    or d                                          ; $6C35: $B2
    add d                                         ; $6C36: $82
    nop                                           ; $6C37: $00
    sub l                                         ; $6C38: $95
    cp [hl]                                       ; $6C39: $BE
    nop                                           ; $6C3A: $00
    pop bc                                        ; $6C3B: $C1
    nop                                           ; $6C3C: $00
    nop                                           ; $6C3D: $00
    inc bc                                        ; $6C3E: $03
    ld l, e                                       ; $6C3F: $6B
    db $10                                        ; $6C40: $10
    ld c, l                                       ; $6C41: $4D
    ld d, b                                       ; $6C42: $50
    ld de, $7B51                                  ; $6C43: $11 $51 $7B
    nop                                           ; $6C46: $00
    sbc [hl]                                      ; $6C47: $9E
    cp h                                          ; $6C48: $BC
    nop                                           ; $6C49: $00

jr_038_6C4A:
    add [hl]                                      ; $6C4A: $86
    ld a, b                                       ; $6C4B: $78
    nop                                           ; $6C4C: $00
    ld c, l                                       ; $6C4D: $4D
    ld a, e                                       ; $6C4E: $7B
    nop                                           ; $6C4F: $00
    sbc [hl]                                      ; $6C50: $9E
    cp h                                          ; $6C51: $BC
    nop                                           ; $6C52: $00
    add [hl]                                      ; $6C53: $86
    pop bc                                        ; $6C54: $C1
    nop                                           ; $6C55: $00
    ld l, [hl]                                    ; $6C56: $6E
    ld h, a                                       ; $6C57: $67
    db $10                                        ; $6C58: $10
    jr z, jr_038_6C5C                             ; $6C59: $28 $01

    nop                                           ; $6C5B: $00

jr_038_6C5C:
    sbc c                                         ; $6C5C: $99
    adc c                                         ; $6C5D: $89
    nop                                           ; $6C5E: $00
    sub l                                         ; $6C5F: $95
    cp [hl]                                       ; $6C60: $BE
    nop                                           ; $6C61: $00
    pop bc                                        ; $6C62: $C1
    ld c, l                                       ; $6C63: $4D
    nop                                           ; $6C64: $00
    xor c                                         ; $6C65: $A9
    adc c                                         ; $6C66: $89
    nop                                           ; $6C67: $00
    ret                                           ; $6C68: $C9


    nop                                           ; $6C69: $00
    nop                                           ; $6C6A: $00
    nop                                           ; $6C6B: $00
    nop                                           ; $6C6C: $00
    nop                                           ; $6C6D: $00
    inc bc                                        ; $6C6E: $03
    ld a, a                                       ; $6C6F: $7F
    nop                                           ; $6C70: $00
    adc d                                         ; $6C71: $8A
    ld c, l                                       ; $6C72: $4D
    nop                                           ; $6C73: $00
    ld h, $6A                                     ; $6C74: $26 $6A
    nop                                           ; $6C76: $00
    ld bc, $217B                                  ; $6C77: $01 $7B $21
    ld h, h                                       ; $6C7A: $64
    ccf                                           ; $6C7B: $3F
    nop                                           ; $6C7C: $00
    ld b, b                                       ; $6C7D: $40
    ld l, [hl]                                    ; $6C7E: $6E
    nop                                           ; $6C7F: $00
    ld bc, $1004                                  ; $6C80: $01 $04 $10
    ld b, a                                       ; $6C83: $47
    add a                                         ; $6C84: $87
    db $10                                        ; $6C85: $10
    dec [hl]                                      ; $6C86: $35
    add hl, hl                                    ; $6C87: $29
    ld [bc], a                                    ; $6C88: $02
    ld [hl], $6F                                  ; $6C89: $36 $6F
    nop                                           ; $6C8B: $00
    ld b, a                                       ; $6C8C: $47
    daa                                           ; $6C8D: $27
    nop                                           ; $6C8E: $00
    ld l, d                                       ; $6C8F: $6A
    ret                                           ; $6C90: $C9


    nop                                           ; $6C91: $00
    ld bc, $0000                                  ; $6C92: $01 $00 $00
    inc bc                                        ; $6C95: $03
    ld b, b                                       ; $6C96: $40
    ld de, $4241                                  ; $6C97: $11 $41 $42
    db $10                                        ; $6C9A: $10
    ld bc, $0000                                  ; $6C9B: $01 $00 $00
    nop                                           ; $6C9E: $00
    nop                                           ; $6C9F: $00
    nop                                           ; $6CA0: $00
    inc bc                                        ; $6CA1: $03
    ld bc, $A500                                  ; $6CA2: $01 $00 $A5
    adc c                                         ; $6CA5: $89
    nop                                           ; $6CA6: $00
    sub c                                         ; $6CA7: $91
    halt                                          ; $6CA8: $76
    nop                                           ; $6CA9: $00
    adc b                                         ; $6CAA: $88
    cp c                                          ; $6CAB: $B9
    nop                                           ; $6CAC: $00
    jp nz, Jump_000_0095                          ; $6CAD: $C2 $95 $00

    ld bc, $0000                                  ; $6CB0: $01 $00 $00
    nop                                           ; $6CB3: $00
    ld bc, $0100                                  ; $6CB4: $01 $00 $01
    call c, $DA00                                 ; $6CB7: $DC $00 $DA
    ld bc, $E300                                  ; $6CBA: $01 $00 $E3
    nop                                           ; $6CBD: $00
    nop                                           ; $6CBE: $00
    nop                                           ; $6CBF: $00
    nop                                           ; $6CC0: $00
    nop                                           ; $6CC1: $00
    inc bc                                        ; $6CC2: $03
    nop                                           ; $6CC3: $00
    nop                                           ; $6CC4: $00
    dec b                                         ; $6CC5: $05
    ld bc, $0000                                  ; $6CC6: $01 $00 $00
    ld [bc], a                                    ; $6CC9: $02
    nop                                           ; $6CCA: $00
    nop                                           ; $6CCB: $00
    ld b, $FE                                     ; $6CCC: $06 $FE
    ld l, d                                       ; $6CCE: $6A
    ld [hl+], a                                   ; $6CCF: $22
    ld l, e                                       ; $6CD0: $6B
    ld c, l                                       ; $6CD1: $4D
    ld [bc], a                                    ; $6CD2: $02
    inc de                                        ; $6CD3: $13
    dec hl                                        ; $6CD4: $2B
    nop                                           ; $6CD5: $00
    ld l, b                                       ; $6CD6: $68
    ld bc, $8800                                  ; $6CD7: $01 $00 $88
    cp c                                          ; $6CDA: $B9
    nop                                           ; $6CDB: $00
    jp nz, Jump_000_0095                          ; $6CDC: $C2 $95 $00

    ld l, [hl]                                    ; $6CDF: $6E
    jr z, jr_038_6CE2                             ; $6CE0: $28 $00

jr_038_6CE2:
    ld b, c                                       ; $6CE2: $41
    ret                                           ; $6CE3: $C9


    nop                                           ; $6CE4: $00
    ld bc, $0000                                  ; $6CE5: $01 $00 $00
    nop                                           ; $6CE8: $00
    nop                                           ; $6CE9: $00
    nop                                           ; $6CEA: $00
    inc bc                                        ; $6CEB: $03
    nop                                           ; $6CEC: $00
    nop                                           ; $6CED: $00
    inc bc                                        ; $6CEE: $03
    ld bc, $9400                                  ; $6CEF: $01 $00 $94
    call nz, Call_038_7600                        ; $6CF2: $C4 $00 $76
    cp h                                          ; $6CF5: $BC
    nop                                           ; $6CF6: $00
    adc c                                         ; $6CF7: $89
    cp d                                          ; $6CF8: $BA
    nop                                           ; $6CF9: $00
    adc c                                         ; $6CFA: $89
    sub l                                         ; $6CFB: $95
    nop                                           ; $6CFC: $00
    ld bc, $0000                                  ; $6CFD: $01 $00 $00
    nop                                           ; $6D00: $00
    ld bc, $0100                                  ; $6D01: $01 $00 $01
    sbc $00                                       ; $6D04: $DE $00
    call c, Call_000_00DA                         ; $6D06: $DC $DA $00
    ld bc, $00E2                                  ; $6D09: $01 $E2 $00
    ld bc, $0000                                  ; $6D0C: $01 $00 $00
    nop                                           ; $6D0F: $00
    nop                                           ; $6D10: $00
    nop                                           ; $6D11: $00
    inc bc                                        ; $6D12: $03
    nop                                           ; $6D13: $00
    nop                                           ; $6D14: $00
    dec b                                         ; $6D15: $05
    ld bc, $0000                                  ; $6D16: $01 $00 $00
    ld [bc], a                                    ; $6D19: $02
    nop                                           ; $6D1A: $00
    nop                                           ; $6D1B: $00
    ld b, $FE                                     ; $6D1C: $06 $FE
    ld a, h                                       ; $6D1E: $7C
    ld [hl+], a                                   ; $6D1F: $22
    ld a, l                                       ; $6D20: $7D
    ld l, [hl]                                    ; $6D21: $6E
    ld bc, $4A89                                  ; $6D22: $01 $89 $4A
    ld bc, $3618                                  ; $6D25: $01 $18 $36
    nop                                           ; $6D28: $00
    ld b, d                                       ; $6D29: $42
    ld bc, $2F02                                  ; $6D2A: $01 $02 $2F
    rla                                           ; $6D2D: $17
    jr nz, @+$39                                  ; $6D2E: $20 $37

    ld l, d                                       ; $6D30: $6A
    ld bc, $8B8D                                  ; $6D31: $01 $8D $8B
    db $10                                        ; $6D34: $10
    ret                                           ; $6D35: $C9


    nop                                           ; $6D36: $00
    nop                                           ; $6D37: $00
    nop                                           ; $6D38: $00
    nop                                           ; $6D39: $00
    nop                                           ; $6D3A: $00
    inc bc                                        ; $6D3B: $03
    nop                                           ; $6D3C: $00
    nop                                           ; $6D3D: $00
    inc bc                                        ; $6D3E: $03
    ld bc, $7900                                  ; $6D3F: $01 $00 $79
    and [hl]                                      ; $6D42: $A6
    nop                                           ; $6D43: $00
    cp h                                          ; $6D44: $BC
    ld a, c                                       ; $6D45: $79
    nop                                           ; $6D46: $00
    pop bc                                        ; $6D47: $C1
    xor d                                         ; $6D48: $AA
    nop                                           ; $6D49: $00
    ld a, a                                       ; $6D4A: $7F
    sub l                                         ; $6D4B: $95
    nop                                           ; $6D4C: $00
    ld bc, $0000                                  ; $6D4D: $01 $00 $00
    nop                                           ; $6D50: $00
    ld bc, $0100                                  ; $6D51: $01 $00 $01
    jp c, $DC00                                   ; $6D54: $DA $00 $DC

    sbc $00                                       ; $6D57: $DE $00
    ld bc, $00E2                                  ; $6D59: $01 $E2 $00
    ld bc, $0000                                  ; $6D5C: $01 $00 $00
    nop                                           ; $6D5F: $00
    nop                                           ; $6D60: $00
    nop                                           ; $6D61: $00
    inc bc                                        ; $6D62: $03
    nop                                           ; $6D63: $00
    nop                                           ; $6D64: $00
    dec b                                         ; $6D65: $05
    ld bc, $0000                                  ; $6D66: $01 $00 $00
    ld [bc], a                                    ; $6D69: $02
    nop                                           ; $6D6A: $00
    nop                                           ; $6D6B: $00
    ld b, $FE                                     ; $6D6C: $06 $FE
    adc [hl]                                      ; $6D6E: $8E
    ld de, $4D07                                  ; $6D6F: $11 $07 $4D
    ld [bc], a                                    ; $6D72: $02
    jr nc, jr_038_6DC9                            ; $6D73: $30 $54

    ld bc, $3178                                  ; $6D75: $01 $78 $31
    jr nz, jr_038_6DE8                            ; $6D78: $20 $6E

    ld bc, $2201                                  ; $6D7A: $01 $01 $22
    ld b, b                                       ; $6D7D: $40
    ld [bc], a                                    ; $6D7E: $02
    ld a, [hl]                                    ; $6D7F: $7E
    scf                                           ; $6D80: $37
    ld bc, $8B8D                                  ; $6D81: $01 $8D $8B
    db $10                                        ; $6D84: $10
    ret                                           ; $6D85: $C9


    nop                                           ; $6D86: $00
    nop                                           ; $6D87: $00
    nop                                           ; $6D88: $00
    nop                                           ; $6D89: $00
    nop                                           ; $6D8A: $00
    inc bc                                        ; $6D8B: $03
    nop                                           ; $6D8C: $00
    nop                                           ; $6D8D: $00
    inc bc                                        ; $6D8E: $03
    ld bc, $7900                                  ; $6D8F: $01 $00 $79
    and [hl]                                      ; $6D92: $A6
    nop                                           ; $6D93: $00
    cp h                                          ; $6D94: $BC
    adc c                                         ; $6D95: $89
    nop                                           ; $6D96: $00
    cp d                                          ; $6D97: $BA
    jp nz, $8800                                  ; $6D98: $C2 $00 $88

    cp b                                          ; $6D9B: $B8
    nop                                           ; $6D9C: $00
    ld bc, $0000                                  ; $6D9D: $01 $00 $00
    nop                                           ; $6DA0: $00
    ld bc, $0100                                  ; $6DA1: $01 $00 $01
    jp c, $DC00                                   ; $6DA4: $DA $00 $DC

    jp c, Boot                                    ; $6DA7: $DA $00 $01

    db $E3                                        ; $6DAA: $E3
    nop                                           ; $6DAB: $00
    ld bc, $0000                                  ; $6DAC: $01 $00 $00
    nop                                           ; $6DAF: $00
    nop                                           ; $6DB0: $00
    nop                                           ; $6DB1: $00
    inc bc                                        ; $6DB2: $03
    nop                                           ; $6DB3: $00
    nop                                           ; $6DB4: $00
    dec b                                         ; $6DB5: $05
    ld bc, $0000                                  ; $6DB6: $01 $00 $00
    ld [bc], a                                    ; $6DB9: $02
    nop                                           ; $6DBA: $00
    nop                                           ; $6DBB: $00
    ld b, $FE                                     ; $6DBC: $06 $FE
    ld a, h                                       ; $6DBE: $7C
    ld [hl+], a                                   ; $6DBF: $22
    ld a, l                                       ; $6DC0: $7D
    ld b, a                                       ; $6DC1: $47
    ld bc, $4A8A                                  ; $6DC2: $01 $8A $4A
    ld bc, $2B93                                  ; $6DC5: $01 $93 $2B
    nop                                           ; $6DC8: $00

jr_038_6DC9:
    ld [hl], b                                    ; $6DC9: $70
    ld b, d                                       ; $6DCA: $42
    nop                                           ; $6DCB: $00
    ld bc, $118D                                  ; $6DCC: $01 $8D $11
    adc e                                         ; $6DCF: $8B
    ld l, [hl]                                    ; $6DD0: $6E
    nop                                           ; $6DD1: $00
    scf                                           ; $6DD2: $37
    ld l, d                                       ; $6DD3: $6A
    nop                                           ; $6DD4: $00
    ret                                           ; $6DD5: $C9


    nop                                           ; $6DD6: $00
    nop                                           ; $6DD7: $00
    nop                                           ; $6DD8: $00
    nop                                           ; $6DD9: $00
    nop                                           ; $6DDA: $00
    inc bc                                        ; $6DDB: $03
    nop                                           ; $6DDC: $00
    nop                                           ; $6DDD: $00
    inc bc                                        ; $6DDE: $03
    sbc a                                         ; $6DDF: $9F
    ld hl, $4140                                  ; $6DE0: $21 $40 $41
    ld de, $0042                                  ; $6DE3: $11 $42 $00
    nop                                           ; $6DE6: $00
    nop                                           ; $6DE7: $00

jr_038_6DE8:
    nop                                           ; $6DE8: $00
    nop                                           ; $6DE9: $00
    inc bc                                        ; $6DEA: $03
    ld bc, $BD00                                  ; $6DEB: $01 $00 $BD
    halt                                          ; $6DEE: $76
    nop                                           ; $6DEF: $00
    adc h                                         ; $6DF0: $8C
    halt                                          ; $6DF1: $76
    nop                                           ; $6DF2: $00
    and l                                         ; $6DF3: $A5
    adc c                                         ; $6DF4: $89
    nop                                           ; $6DF5: $00
    sub c                                         ; $6DF6: $91
    halt                                          ; $6DF7: $76
    nop                                           ; $6DF8: $00
    ld bc, $0000                                  ; $6DF9: $01 $00 $00
    nop                                           ; $6DFC: $00
    ld bc, $0100                                  ; $6DFD: $01 $00 $01
    call c, $DA00                                 ; $6E00: $DC $00 $DA
    call c, $DE00                                 ; $6E03: $DC $00 $DE
    ld bc, $E300                                  ; $6E06: $01 $00 $E3
    nop                                           ; $6E09: $00
    nop                                           ; $6E0A: $00
    nop                                           ; $6E0B: $00
    nop                                           ; $6E0C: $00
    nop                                           ; $6E0D: $00
    inc bc                                        ; $6E0E: $03
    nop                                           ; $6E0F: $00
    nop                                           ; $6E10: $00
    dec b                                         ; $6E11: $05
    ld bc, $0000                                  ; $6E12: $01 $00 $00
    ld [bc], a                                    ; $6E15: $02
    nop                                           ; $6E16: $00
    nop                                           ; $6E17: $00
    ld b, $FE                                     ; $6E18: $06 $FE
    adc b                                         ; $6E1A: $88
    nop                                           ; $6E1B: $00
    cp c                                          ; $6E1C: $B9
    jp nz, $9500                                  ; $6E1D: $C2 $00 $95

    ld l, [hl]                                    ; $6E20: $6E
    nop                                           ; $6E21: $00
    ld bc, $2134                                  ; $6E22: $01 $34 $21
    add b                                         ; $6E25: $80
    ld [hl], $00                                  ; $6E26: $36 $00
    ld b, d                                       ; $6E28: $42
    sbc l                                         ; $6E29: $9D
    ld [de], a                                    ; $6E2A: $12
    ld e, c                                       ; $6E2B: $59
    scf                                           ; $6E2C: $37
    nop                                           ; $6E2D: $00
    ld l, d                                       ; $6E2E: $6A
    ret                                           ; $6E2F: $C9


    nop                                           ; $6E30: $00
    ld bc, $0000                                  ; $6E31: $01 $00 $00
    nop                                           ; $6E34: $00
    nop                                           ; $6E35: $00
    nop                                           ; $6E36: $00
    inc bc                                        ; $6E37: $03
    nop                                           ; $6E38: $00
    nop                                           ; $6E39: $00
    inc bc                                        ; $6E3A: $03
    and [hl]                                      ; $6E3B: $A6
    nop                                           ; $6E3C: $00
    halt                                          ; $6E3D: $76
    adc c                                         ; $6E3E: $89
    nop                                           ; $6E3F: $00
    sub l                                         ; $6E40: $95
    or e                                          ; $6E41: $B3
    nop                                           ; $6E42: $00
    halt                                          ; $6E43: $76
    sbc d                                         ; $6E44: $9A
    nop                                           ; $6E45: $00
    ld c, [hl]                                    ; $6E46: $4E
    nop                                           ; $6E47: $00
    nop                                           ; $6E48: $00
    nop                                           ; $6E49: $00
    nop                                           ; $6E4A: $00
    nop                                           ; $6E4B: $00
    inc bc                                        ; $6E4C: $03
    ret nc                                        ; $6E4D: $D0

    nop                                           ; $6E4E: $00
    sub h                                         ; $6E4F: $94
    call nz, $BA00                                ; $6E50: $C4 $00 $BA
    sbc a                                         ; $6E53: $9F
    nop                                           ; $6E54: $00
    adc h                                         ; $6E55: $8C
    ld a, d                                       ; $6E56: $7A
    nop                                           ; $6E57: $00
    cp h                                          ; $6E58: $BC
    adc c                                         ; $6E59: $89
    nop                                           ; $6E5A: $00
    pop de                                        ; $6E5B: $D1
    ld c, d                                       ; $6E5C: $4A
    nop                                           ; $6E5D: $00
    ld bc, $1152                                  ; $6E5E: $01 $52 $11
    ld d, e                                       ; $6E61: $53
    scf                                           ; $6E62: $37
    nop                                           ; $6E63: $00
    ld l, d                                       ; $6E64: $6A
    ret                                           ; $6E65: $C9


    nop                                           ; $6E66: $00
    ld bc, $0000                                  ; $6E67: $01 $00 $00
    nop                                           ; $6E6A: $00
    nop                                           ; $6E6B: $00
    nop                                           ; $6E6C: $00
    inc bc                                        ; $6E6D: $03
    nop                                           ; $6E6E: $00
    nop                                           ; $6E6F: $00
    inc b                                         ; $6E70: $04
    ld bc, $0000                                  ; $6E71: $01 $00 $00
    dec b                                         ; $6E74: $05
    ld bc, $0000                                  ; $6E75: $01 $00 $00
    ld [bc], a                                    ; $6E78: $02
    nop                                           ; $6E79: $00
    nop                                           ; $6E7A: $00
    ld [bc], a                                    ; $6E7B: $02
    nop                                           ; $6E7C: $00
    nop                                           ; $6E7D: $00
    ld [bc], a                                    ; $6E7E: $02
    nop                                           ; $6E7F: $00
    nop                                           ; $6E80: $00
    ld b, $FE                                     ; $6E81: $06 $FE
    ld b, b                                       ; $6E83: $40
    ld de, $4241                                  ; $6E84: $11 $41 $42
    db $10                                        ; $6E87: $10
    ld bc, $0000                                  ; $6E88: $01 $00 $00
    nop                                           ; $6E8B: $00
    nop                                           ; $6E8C: $00
    nop                                           ; $6E8D: $00
    inc bc                                        ; $6E8E: $03
    ld bc, $9400                                  ; $6E8F: $01 $00 $94
    call nz, $BA00                                ; $6E92: $C4 $00 $BA
    sbc a                                         ; $6E95: $9F
    nop                                           ; $6E96: $00
    and a                                         ; $6E97: $A7
    cp l                                          ; $6E98: $BD
    nop                                           ; $6E99: $00
    adc c                                         ; $6E9A: $89
    nop                                           ; $6E9B: $00
    nop                                           ; $6E9C: $00
    nop                                           ; $6E9D: $00
    ld bc, $0100                                  ; $6E9E: $01 $00 $01
    call c, $DA00                                 ; $6EA1: $DC $00 $DA
    ld bc, $E300                                  ; $6EA4: $01 $00 $E3
    nop                                           ; $6EA7: $00
    nop                                           ; $6EA8: $00
    nop                                           ; $6EA9: $00
    nop                                           ; $6EAA: $00
    nop                                           ; $6EAB: $00
    inc bc                                        ; $6EAC: $03
    nop                                           ; $6EAD: $00
    nop                                           ; $6EAE: $00
    dec b                                         ; $6EAF: $05
    ld bc, $0000                                  ; $6EB0: $01 $00 $00
    ld [bc], a                                    ; $6EB3: $02
    nop                                           ; $6EB4: $00
    nop                                           ; $6EB5: $00
    ld b, $FE                                     ; $6EB6: $06 $FE
    inc de                                        ; $6EB8: $13
    jr nz, @+$2D                                  ; $6EB9: $20 $2B

    ld l, b                                       ; $6EBB: $68
    nop                                           ; $6EBC: $00
    adc b                                         ; $6EBD: $88
    cp c                                          ; $6EBE: $B9
    nop                                           ; $6EBF: $00
    jp nz, Jump_000_0095                          ; $6EC0: $C2 $95 $00

    ld l, [hl]                                    ; $6EC3: $6E
    jr z, jr_038_6EC6                             ; $6EC4: $28 $00

jr_038_6EC6:
    ld b, c                                       ; $6EC6: $41
    ret                                           ; $6EC7: $C9


    nop                                           ; $6EC8: $00
    ld bc, $0000                                  ; $6EC9: $01 $00 $00
    inc bc                                        ; $6ECC: $03
    nop                                           ; $6ECD: $00
    nop                                           ; $6ECE: $00
    inc bc                                        ; $6ECF: $03
    ld bc, $B200                                  ; $6ED0: $01 $00 $B2
    add d                                         ; $6ED3: $82
    nop                                           ; $6ED4: $00
    sub l                                         ; $6ED5: $95
    pop bc                                        ; $6ED6: $C1
    nop                                           ; $6ED7: $00
    xor h                                         ; $6ED8: $AC
    cp l                                          ; $6ED9: $BD
    nop                                           ; $6EDA: $00
    adc c                                         ; $6EDB: $89
    nop                                           ; $6EDC: $00
    nop                                           ; $6EDD: $00
    nop                                           ; $6EDE: $00
    ld bc, $0100                                  ; $6EDF: $01 $00 $01
    jp c, $DC00                                   ; $6EE2: $DA $00 $DC

    jp c, Boot                                    ; $6EE5: $DA $00 $01

    db $E3                                        ; $6EE8: $E3
    nop                                           ; $6EE9: $00
    ld bc, $0000                                  ; $6EEA: $01 $00 $00
    nop                                           ; $6EED: $00
    nop                                           ; $6EEE: $00
    nop                                           ; $6EEF: $00
    inc bc                                        ; $6EF0: $03
    nop                                           ; $6EF1: $00
    nop                                           ; $6EF2: $00
    dec b                                         ; $6EF3: $05
    ld bc, $0000                                  ; $6EF4: $01 $00 $00
    ld [bc], a                                    ; $6EF7: $02
    nop                                           ; $6EF8: $00
    nop                                           ; $6EF9: $00
    ld b, $FE                                     ; $6EFA: $06 $FE
    inc [hl]                                      ; $6EFC: $34
    ld [de], a                                    ; $6EFD: $12
    jr c, @+$38                                   ; $6EFE: $38 $36

    nop                                           ; $6F00: $00
    ld b, d                                       ; $6F01: $42
    dec [hl]                                      ; $6F02: $35
    ld hl, $5158                                  ; $6F03: $21 $58 $51
    ld [bc], a                                    ; $6F06: $02
    jr nc, @+$56                                  ; $6F07: $30 $54

    nop                                           ; $6F09: $00
    ld bc, $114C                                  ; $6F0A: $01 $4C $11
    dec c                                         ; $6F0D: $0D
    ld d, c                                       ; $6F0E: $51
    nop                                           ; $6F0F: $00
    ld bc, $00A9                                  ; $6F10: $01 $A9 $00
    sbc c                                         ; $6F13: $99
    call nz, $AC00                                ; $6F14: $C4 $00 $AC
    cp l                                          ; $6F17: $BD
    nop                                           ; $6F18: $00
    adc c                                         ; $6F19: $89
    scf                                           ; $6F1A: $37
    nop                                           ; $6F1B: $00
    ld l, d                                       ; $6F1C: $6A
    ret                                           ; $6F1D: $C9


    nop                                           ; $6F1E: $00
    ld bc, $0000                                  ; $6F1F: $01 $00 $00
    inc bc                                        ; $6F22: $03
    nop                                           ; $6F23: $00
    nop                                           ; $6F24: $00
    inc bc                                        ; $6F25: $03
    ld bc, $9400                                  ; $6F26: $01 $00 $94
    call nz, $BA00                                ; $6F29: $C4 $00 $BA
    sbc a                                         ; $6F2C: $9F
    nop                                           ; $6F2D: $00
    cp e                                          ; $6F2E: $BB
    xor b                                         ; $6F2F: $A8
    nop                                           ; $6F30: $00
    pop bc                                        ; $6F31: $C1
    adc l                                         ; $6F32: $8D
    nop                                           ; $6F33: $00
    ld bc, $0000                                  ; $6F34: $01 $00 $00
    nop                                           ; $6F37: $00
    ld bc, $0100                                  ; $6F38: $01 $00 $01
    call c, $DE00                                 ; $6F3B: $DC $00 $DE
    ld bc, $E200                                  ; $6F3E: $01 $00 $E2
    nop                                           ; $6F41: $00
    nop                                           ; $6F42: $00
    nop                                           ; $6F43: $00
    nop                                           ; $6F44: $00
    nop                                           ; $6F45: $00
    inc bc                                        ; $6F46: $03
    nop                                           ; $6F47: $00
    nop                                           ; $6F48: $00
    dec b                                         ; $6F49: $05
    ld bc, $0000                                  ; $6F4A: $01 $00 $00
    ld [bc], a                                    ; $6F4D: $02
    nop                                           ; $6F4E: $00
    nop                                           ; $6F4F: $00
    ld b, $FE                                     ; $6F50: $06 $FE
    adc d                                         ; $6F52: $8A
    ld de, $8B8D                                  ; $6F53: $11 $8D $8B
    db $10                                        ; $6F56: $10
    ld l, [hl]                                    ; $6F57: $6E
    ld b, a                                       ; $6F58: $47
    jr nz, @+$30                                  ; $6F59: $20 $2E

    ld a, b                                       ; $6F5B: $78
    jr nz, jr_038_6FBE                            ; $6F5C: $20 $60

    ld bc, $7902                                  ; $6F5E: $01 $02 $79
    adc e                                         ; $6F61: $8B
    db $10                                        ; $6F62: $10
    ld l, [hl]                                    ; $6F63: $6E
    scf                                           ; $6F64: $37
    nop                                           ; $6F65: $00
    ld l, d                                       ; $6F66: $6A
    ret                                           ; $6F67: $C9


    nop                                           ; $6F68: $00
    ld bc, $0000                                  ; $6F69: $01 $00 $00
    nop                                           ; $6F6C: $00
    nop                                           ; $6F6D: $00
    nop                                           ; $6F6E: $00
    inc bc                                        ; $6F6F: $03
    nop                                           ; $6F70: $00
    nop                                           ; $6F71: $00
    inc bc                                        ; $6F72: $03
    ld bc, $9400                                  ; $6F73: $01 $00 $94
    call nz, $BA00                                ; $6F76: $C4 $00 $BA
    sbc a                                         ; $6F79: $9F
    nop                                           ; $6F7A: $00
    adc c                                         ; $6F7B: $89
    sub c                                         ; $6F7C: $91
    nop                                           ; $6F7D: $00
    pop bc                                        ; $6F7E: $C1
    xor h                                         ; $6F7F: $AC
    nop                                           ; $6F80: $00
    ld bc, $0000                                  ; $6F81: $01 $00 $00
    nop                                           ; $6F84: $00
    ld bc, $DA00                                  ; $6F85: $01 $00 $DA
    call c, $DA00                                 ; $6F88: $DC $00 $DA
    ld bc, $E200                                  ; $6F8B: $01 $00 $E2
    nop                                           ; $6F8E: $00
    nop                                           ; $6F8F: $00
    nop                                           ; $6F90: $00
    nop                                           ; $6F91: $00
    nop                                           ; $6F92: $00
    inc bc                                        ; $6F93: $03
    nop                                           ; $6F94: $00
    nop                                           ; $6F95: $00
    dec b                                         ; $6F96: $05
    ld bc, $0000                                  ; $6F97: $01 $00 $00
    ld [bc], a                                    ; $6F9A: $02
    nop                                           ; $6F9B: $00
    nop                                           ; $6F9C: $00
    ld b, $FE                                     ; $6F9D: $06 $FE
    adc c                                         ; $6F9F: $89
    nop                                           ; $6FA0: $00
    cp d                                          ; $6FA1: $BA
    ld a, c                                       ; $6FA2: $79
    nop                                           ; $6FA3: $00
    sbc c                                         ; $6FA4: $99
    call nz, $C100                                ; $6FA5: $C4 $00 $C1
    add h                                         ; $6FA8: $84
    nop                                           ; $6FA9: $00
    ld b, a                                       ; $6FAA: $47
    ld bc, $8E01                                  ; $6FAB: $01 $01 $8E
    rlca                                          ; $6FAE: $07
    db $10                                        ; $6FAF: $10
    ld l, [hl]                                    ; $6FB0: $6E
    jr c, jr_038_6FD3                             ; $6FB1: $38 $20

    ld d, e                                       ; $6FB3: $53
    ld [hl], $00                                  ; $6FB4: $36 $00
    ld bc, $205C                                  ; $6FB6: $01 $5C $20
    ld e, [hl]                                    ; $6FB9: $5E
    ld b, c                                       ; $6FBA: $41
    nop                                           ; $6FBB: $00
    ld l, $6A                                     ; $6FBC: $2E $6A

jr_038_6FBE:
    nop                                           ; $6FBE: $00
    ret                                           ; $6FBF: $C9


    nop                                           ; $6FC0: $00
    nop                                           ; $6FC1: $00
    nop                                           ; $6FC2: $00
    nop                                           ; $6FC3: $00
    nop                                           ; $6FC4: $00
    inc bc                                        ; $6FC5: $03
    nop                                           ; $6FC6: $00
    nop                                           ; $6FC7: $00
    inc bc                                        ; $6FC8: $03
    sbc a                                         ; $6FC9: $9F
    ld hl, $4140                                  ; $6FCA: $21 $40 $41
    ld de, $0042                                  ; $6FCD: $11 $42 $00
    nop                                           ; $6FD0: $00
    nop                                           ; $6FD1: $00
    nop                                           ; $6FD2: $00

jr_038_6FD3:
    nop                                           ; $6FD3: $00
    inc bc                                        ; $6FD4: $03
    ld bc, $9B00                                  ; $6FD5: $01 $00 $9B
    ld a, c                                       ; $6FD8: $79
    nop                                           ; $6FD9: $00
    sub l                                         ; $6FDA: $95
    cp l                                          ; $6FDB: $BD
    nop                                           ; $6FDC: $00
    ld a, c                                       ; $6FDD: $79
    sbc d                                         ; $6FDE: $9A
    nop                                           ; $6FDF: $00
    ld bc, $0000                                  ; $6FE0: $01 $00 $00
    nop                                           ; $6FE3: $00
    ld bc, $0100                                  ; $6FE4: $01 $00 $01
    call c, $DA00                                 ; $6FE7: $DC $00 $DA
    call c, $DE00                                 ; $6FEA: $DC $00 $DE
    ld bc, $E300                                  ; $6FED: $01 $00 $E3
    nop                                           ; $6FF0: $00
    nop                                           ; $6FF1: $00
    nop                                           ; $6FF2: $00
    nop                                           ; $6FF3: $00
    nop                                           ; $6FF4: $00
    inc bc                                        ; $6FF5: $03
    nop                                           ; $6FF6: $00
    nop                                           ; $6FF7: $00
    dec b                                         ; $6FF8: $05
    ld bc, $0000                                  ; $6FF9: $01 $00 $00
    ld [bc], a                                    ; $6FFC: $02
    nop                                           ; $6FFD: $00
    nop                                           ; $6FFE: $00
    ld b, $FE                                     ; $6FFF: $06 $FE
    cpl                                           ; $7001: $2F
    ld [hl+], a                                   ; $7002: $22
    rla                                           ; $7003: $17
    ld [hl], $00                                  ; $7004: $36 $00
    ld b, d                                       ; $7006: $42
    ld bc, $A100                                  ; $7007: $01 $00 $A1
    jp nz, $9500                                  ; $700A: $C2 $00 $95

jr_038_700D:
    scf                                           ; $700D: $37
    nop                                           ; $700E: $00
    ld l, d                                       ; $700F: $6A
    ld b, e                                       ; $7010: $43
    nop                                           ; $7011: $00
    ld bc, $11A6                                  ; $7012: $01 $A6 $11
    dec c                                         ; $7015: $0D
    jr nc, jr_038_7018                            ; $7016: $30 $00

jr_038_7018:
    ld bc, $1291                                  ; $7018: $01 $91 $12
    ld a, a                                       ; $701B: $7F
    ld b, e                                       ; $701C: $43
    ld bc, $8B8D                                  ; $701D: $01 $8D $8B
    db $10                                        ; $7020: $10
    scf                                           ; $7021: $37
    ld l, d                                       ; $7022: $6A
    nop                                           ; $7023: $00
    ret                                           ; $7024: $C9


    nop                                           ; $7025: $00
    nop                                           ; $7026: $00
    inc bc                                        ; $7027: $03
    nop                                           ; $7028: $00
    nop                                           ; $7029: $00
    inc bc                                        ; $702A: $03
    nop                                           ; $702B: $00
    nop                                           ; $702C: $00
    inc bc                                        ; $702D: $03
    dec de                                        ; $702E: $1B
    ld de, $5C1C                                  ; $702F: $11 $1C $5C
    ld de, $4D5D                                  ; $7032: $11 $5D $4D
    ld bc, $2120                                  ; $7035: $01 $20 $21
    db $10                                        ; $7038: $10
    ld c, l                                       ; $7039: $4D
    ccf                                           ; $703A: $3F
    nop                                           ; $703B: $00
    ld h, b                                       ; $703C: $60
    ld c, d                                       ; $703D: $4A
    nop                                           ; $703E: $00
    ld bc, $103F                                  ; $703F: $01 $3F $10
    jr z, jr_038_700D                             ; $7042: $28 $C9

    nop                                           ; $7044: $00
    ld bc, $0000                                  ; $7045: $01 $00 $00
    nop                                           ; $7048: $00
    nop                                           ; $7049: $00
    nop                                           ; $704A: $00
    inc bc                                        ; $704B: $03
    nop                                           ; $704C: $00
    nop                                           ; $704D: $00
    dec b                                         ; $704E: $05
    ld bc, $0000                                  ; $704F: $01 $00 $00
    ld [bc], a                                    ; $7052: $02
    nop                                           ; $7053: $00
    nop                                           ; $7054: $00
    ld [bc], a                                    ; $7055: $02
    nop                                           ; $7056: $00
    nop                                           ; $7057: $00
    ld [bc], a                                    ; $7058: $02
    nop                                           ; $7059: $00
    nop                                           ; $705A: $00
    dec b                                         ; $705B: $05
    add b                                         ; $705C: $80
    nop                                           ; $705D: $00
    nop                                           ; $705E: $00
    ld [bc], a                                    ; $705F: $02
    nop                                           ; $7060: $00
    nop                                           ; $7061: $00
    ld bc, $7059                                  ; $7062: $01 $59 $70
    and b                                         ; $7065: $A0
    nop                                           ; $7066: $00
    ld a, c                                       ; $7067: $79
    xor d                                         ; $7068: $AA
    nop                                           ; $7069: $00
    halt                                          ; $706A: $76
    xor c                                         ; $706B: $A9
    nop                                           ; $706C: $00
    ld a, a                                       ; $706D: $7F
    add a                                         ; $706E: $87
    nop                                           ; $706F: $00
    halt                                          ; $7070: $76
    nop                                           ; $7071: $00
    nop                                           ; $7072: $00
    nop                                           ; $7073: $00
    ld bc, $8900                                  ; $7074: $01 $00 $89
    sub c                                         ; $7077: $91
    nop                                           ; $7078: $00
    halt                                          ; $7079: $76
    ld a, b                                       ; $707A: $78
    nop                                           ; $707B: $00
    jp nz, Jump_000_00AA                          ; $707C: $C2 $AA $00

    halt                                          ; $707F: $76
    nop                                           ; $7080: $00
    nop                                           ; $7081: $00
    nop                                           ; $7082: $00
    nop                                           ; $7083: $00
    nop                                           ; $7084: $00
    inc bc                                        ; $7085: $03
    dec [hl]                                      ; $7086: $35
    nop                                           ; $7087: $00
    daa                                           ; $7088: $27
    inc l                                         ; $7089: $2C
    nop                                           ; $708A: $00
    ld h, a                                       ; $708B: $67
    jr z, jr_038_708E                             ; $708C: $28 $00

jr_038_708E:
    ld l, [hl]                                    ; $708E: $6E
    ld h, b                                       ; $708F: $60
    nop                                           ; $7090: $00
    ld a, [hl-]                                   ; $7091: $3A
    scf                                           ; $7092: $37
    nop                                           ; $7093: $00
    ccf                                           ; $7094: $3F
    ld h, b                                       ; $7095: $60
    nop                                           ; $7096: $00
    ld bc, $004A                                  ; $7097: $01 $4A $00
    ld b, b                                       ; $709A: $40
    ld h, d                                       ; $709B: $62
    nop                                           ; $709C: $00
    ld bc, $003F                                  ; $709D: $01 $3F $00
    ccf                                           ; $70A0: $3F
    dec hl                                        ; $70A1: $2B
    nop                                           ; $70A2: $00
    daa                                           ; $70A3: $27
    ld b, c                                       ; $70A4: $41
    nop                                           ; $70A5: $00
    ld b, [hl]                                    ; $70A6: $46
    ld l, $00                                     ; $70A7: $2E $00
    ld l, d                                       ; $70A9: $6A
    ld a, [hl+]                                   ; $70AA: $2A
    nop                                           ; $70AB: $00
    ld b, e                                       ; $70AC: $43
    cpl                                           ; $70AD: $2F
    nop                                           ; $70AE: $00
    ret                                           ; $70AF: $C9


    nop                                           ; $70B0: $00
    nop                                           ; $70B1: $00
    nop                                           ; $70B2: $00
    nop                                           ; $70B3: $00
    nop                                           ; $70B4: $00
    inc bc                                        ; $70B5: $03
    ld h, c                                       ; $70B6: $61
    nop                                           ; $70B7: $00
    ld c, l                                       ; $70B8: $4D
    inc [hl]                                      ; $70B9: $34
    nop                                           ; $70BA: $00
    ld b, e                                       ; $70BB: $43
    ld l, [hl]                                    ; $70BC: $6E
    nop                                           ; $70BD: $00
    ld d, b                                       ; $70BE: $50
    dec hl                                        ; $70BF: $2B
    nop                                           ; $70C0: $00
    dec l                                         ; $70C1: $2D
    ld bc, $2B00                                  ; $70C2: $01 $00 $2B
    ld l, a                                       ; $70C5: $6F
    nop                                           ; $70C6: $00
    jr nc, jr_038_70F2                            ; $70C7: $30 $29

    nop                                           ; $70C9: $00
    ld c, c                                       ; $70CA: $49
    daa                                           ; $70CB: $27
    nop                                           ; $70CC: $00
    ld bc, $0068                                  ; $70CD: $01 $68 $00
    dec l                                         ; $70D0: $2D
    ld b, d                                       ; $70D1: $42
    nop                                           ; $70D2: $00
    ld l, a                                       ; $70D3: $6F
    dec hl                                        ; $70D4: $2B
    nop                                           ; $70D5: $00
    ret                                           ; $70D6: $C9


    nop                                           ; $70D7: $00
    nop                                           ; $70D8: $00
    nop                                           ; $70D9: $00
    nop                                           ; $70DA: $00
    nop                                           ; $70DB: $00
    inc bc                                        ; $70DC: $03
    ld c, a                                       ; $70DD: $4F
    nop                                           ; $70DE: $00
    ld [hl], b                                    ; $70DF: $70
    dec [hl]                                      ; $70E0: $35
    nop                                           ; $70E1: $00
    ld b, c                                       ; $70E2: $41
    ld l, l                                       ; $70E3: $6D
    nop                                           ; $70E4: $00
    ld a, [hl-]                                   ; $70E5: $3A
    nop                                           ; $70E6: $00
    nop                                           ; $70E7: $00
    nop                                           ; $70E8: $00
    nop                                           ; $70E9: $00
    nop                                           ; $70EA: $00
    inc bc                                        ; $70EB: $03
    ld bc, $AF00                                  ; $70EC: $01 $00 $AF
    add h                                         ; $70EF: $84
    nop                                           ; $70F0: $00
    sbc e                                         ; $70F1: $9B

jr_038_70F2:
    or c                                          ; $70F2: $B1
    nop                                           ; $70F3: $00
    and a                                         ; $70F4: $A7
    cp [hl]                                       ; $70F5: $BE
    nop                                           ; $70F6: $00
    halt                                          ; $70F7: $76
    nop                                           ; $70F8: $00
    nop                                           ; $70F9: $00
    nop                                           ; $70FA: $00
    ld bc, $0100                                  ; $70FB: $01 $00 $01
    call c, $DA00                                 ; $70FE: $DC $00 $DA
    ld bc, $E300                                  ; $7101: $01 $00 $E3
    nop                                           ; $7104: $00
    nop                                           ; $7105: $00
    nop                                           ; $7106: $00
    nop                                           ; $7107: $00
    nop                                           ; $7108: $00
    inc bc                                        ; $7109: $03
    nop                                           ; $710A: $00
    nop                                           ; $710B: $00
    dec b                                         ; $710C: $05
    ld bc, $0000                                  ; $710D: $01 $00 $00
    ld [bc], a                                    ; $7110: $02
    nop                                           ; $7111: $00
    nop                                           ; $7112: $00
    ld b, $FE                                     ; $7113: $06 $FE
    ld a, e                                       ; $7115: $7B
    nop                                           ; $7116: $00
    sbc [hl]                                      ; $7117: $9E
    cp h                                          ; $7118: $BC
    nop                                           ; $7119: $00
    add e                                         ; $711A: $83
    halt                                          ; $711B: $76
    nop                                           ; $711C: $00
    ld b, h                                       ; $711D: $44
    ld l, a                                       ; $711E: $6F
    nop                                           ; $711F: $00
    ld l, [hl]                                    ; $7120: $6E
    ld bc, $4300                                  ; $7121: $01 $00 $43
    ld d, e                                       ; $7124: $53
    nop                                           ; $7125: $00
    scf                                           ; $7126: $37
    cpl                                           ; $7127: $2F
    nop                                           ; $7128: $00
    jr z, @+$35                                   ; $7129: $28 $33

    nop                                           ; $712B: $00
    inc l                                         ; $712C: $2C
    ret                                           ; $712D: $C9


    nop                                           ; $712E: $00
    ld bc, $0000                                  ; $712F: $01 $00 $00
    nop                                           ; $7132: $00
    nop                                           ; $7133: $00
    nop                                           ; $7134: $00
    inc bc                                        ; $7135: $03
    nop                                           ; $7136: $00
    nop                                           ; $7137: $00
    inc bc                                        ; $7138: $03
    ld bc, $7F00                                  ; $7139: $01 $00 $7F
    cp l                                          ; $713C: $BD
    nop                                           ; $713D: $00
    ld a, c                                       ; $713E: $79
    adc l                                         ; $713F: $8D
    nop                                           ; $7140: $00
    halt                                          ; $7141: $76
    sbc e                                         ; $7142: $9B
    nop                                           ; $7143: $00
    jp nz, $007F                                  ; $7144: $C2 $7F $00

    cp h                                          ; $7147: $BC
    nop                                           ; $7148: $00
    nop                                           ; $7149: $00
    nop                                           ; $714A: $00
    ld bc, $0100                                  ; $714B: $01 $00 $01
    db $E3                                        ; $714E: $E3
    nop                                           ; $714F: $00
    ld bc, $0041                                  ; $7150: $01 $41 $00
    ld b, [hl]                                    ; $7153: $46
    ld l, $00                                     ; $7154: $2E $00
    ld b, d                                       ; $7156: $42
    ccf                                           ; $7157: $3F
    nop                                           ; $7158: $00
    ccf                                           ; $7159: $3F
    dec l                                         ; $715A: $2D
    nop                                           ; $715B: $00
    ld bc, $0000                                  ; $715C: $01 $00 $00
    inc bc                                        ; $715F: $03
    nop                                           ; $7160: $00
    nop                                           ; $7161: $00
    dec b                                         ; $7162: $05
    ld bc, $0000                                  ; $7163: $01 $00 $00
    ld [bc], a                                    ; $7166: $02
    nop                                           ; $7167: $00
    nop                                           ; $7168: $00
    ld b, $FE                                     ; $7169: $06 $FE
    ld l, e                                       ; $716B: $6B
    nop                                           ; $716C: $00
    ld l, a                                       ; $716D: $6F
    ld a, $00                                     ; $716E: $3E $00
    dec l                                         ; $7170: $2D
    ld b, a                                       ; $7171: $47
    nop                                           ; $7172: $00
    ld bc, $00AA                                  ; $7173: $01 $AA $00
    pop bc                                        ; $7176: $C1
    sub d                                         ; $7177: $92
    nop                                           ; $7178: $00
    ld l, [hl]                                    ; $7179: $6E
    ccf                                           ; $717A: $3F
    nop                                           ; $717B: $00
    ccf                                           ; $717C: $3F
    inc l                                         ; $717D: $2C
    nop                                           ; $717E: $00
    cpl                                           ; $717F: $2F
    ld e, a                                       ; $7180: $5F
    nop                                           ; $7181: $00
    ld bc, $002F                                  ; $7182: $01 $2F $00
    jr z, @+$35                                   ; $7185: $28 $33

    nop                                           ; $7187: $00
    inc l                                         ; $7188: $2C
    ret                                           ; $7189: $C9


    nop                                           ; $718A: $00
    ld bc, $0000                                  ; $718B: $01 $00 $00
    nop                                           ; $718E: $00
    nop                                           ; $718F: $00
    nop                                           ; $7190: $00
    inc bc                                        ; $7191: $03
    nop                                           ; $7192: $00
    nop                                           ; $7193: $00
    inc bc                                        ; $7194: $03
    ld bc, $8900                                  ; $7195: $01 $00 $89
    sub h                                         ; $7198: $94
    nop                                           ; $7199: $00
    cp h                                          ; $719A: $BC
    adc c                                         ; $719B: $89
    nop                                           ; $719C: $00
    and a                                         ; $719D: $A7
    cp [hl]                                       ; $719E: $BE
    nop                                           ; $719F: $00
    halt                                          ; $71A0: $76
    nop                                           ; $71A1: $00
    nop                                           ; $71A2: $00
    nop                                           ; $71A3: $00
    ld bc, $0100                                  ; $71A4: $01 $00 $01
    jp c, $DC00                                   ; $71A7: $DA $00 $DC

    jp c, Boot                                    ; $71AA: $DA $00 $01

    ldh [c], a                                    ; $71AD: $E2
    nop                                           ; $71AE: $00
    ld bc, $0000                                  ; $71AF: $01 $00 $00
    nop                                           ; $71B2: $00
    nop                                           ; $71B3: $00
    nop                                           ; $71B4: $00
    inc bc                                        ; $71B5: $03
    nop                                           ; $71B6: $00
    nop                                           ; $71B7: $00
    dec b                                         ; $71B8: $05
    ld bc, $0000                                  ; $71B9: $01 $00 $00
    ld [bc], a                                    ; $71BC: $02
    nop                                           ; $71BD: $00
    nop                                           ; $71BE: $00
    ld b, $FE                                     ; $71BF: $06 $FE
    ld e, [hl]                                    ; $71C1: $5E
    nop                                           ; $71C2: $00
    add hl, hl                                    ; $71C3: $29
    ld c, c                                       ; $71C4: $49
    nop                                           ; $71C5: $00
    daa                                           ; $71C6: $27
    ld d, d                                       ; $71C7: $52
    nop                                           ; $71C8: $00
    ld c, b                                       ; $71C9: $48
    ld bc, $4E00                                  ; $71CA: $01 $00 $4E
    ld h, d                                       ; $71CD: $62
    nop                                           ; $71CE: $00
    daa                                           ; $71CF: $27
    xor d                                         ; $71D0: $AA
    nop                                           ; $71D1: $00
    pop bc                                        ; $71D2: $C1
    sub d                                         ; $71D3: $92
    nop                                           ; $71D4: $00
    ld b, a                                       ; $71D5: $47
    ld bc, $2F00                                  ; $71D6: $01 $00 $2F
    jr z, jr_038_71DB                             ; $71D9: $28 $00

jr_038_71DB:
    inc sp                                        ; $71DB: $33
    inc l                                         ; $71DC: $2C
    nop                                           ; $71DD: $00
    scf                                           ; $71DE: $37
    ld l, d                                       ; $71DF: $6A
    nop                                           ; $71E0: $00
    ret                                           ; $71E1: $C9


    nop                                           ; $71E2: $00
    nop                                           ; $71E3: $00
    nop                                           ; $71E4: $00
    nop                                           ; $71E5: $00
    nop                                           ; $71E6: $00
    inc bc                                        ; $71E7: $03
    nop                                           ; $71E8: $00
    nop                                           ; $71E9: $00
    inc bc                                        ; $71EA: $03
    ld bc, $8900                                  ; $71EB: $01 $00 $89
    sub c                                         ; $71EE: $91
    nop                                           ; $71EF: $00
    halt                                          ; $71F0: $76
    ld a, b                                       ; $71F1: $78
    nop                                           ; $71F2: $00
    jp nz, Jump_000_00AA                          ; $71F3: $C2 $AA $00

    halt                                          ; $71F6: $76
    nop                                           ; $71F7: $00
    nop                                           ; $71F8: $00
    nop                                           ; $71F9: $00
    ld bc, $0100                                  ; $71FA: $01 $00 $01
    jp c, $DC00                                   ; $71FD: $DA $00 $DC

    jp c, Boot                                    ; $7200: $DA $00 $01

    db $E3                                        ; $7203: $E3
    nop                                           ; $7204: $00
    ld bc, $0000                                  ; $7205: $01 $00 $00
    nop                                           ; $7208: $00
    nop                                           ; $7209: $00
    nop                                           ; $720A: $00
    inc bc                                        ; $720B: $03
    nop                                           ; $720C: $00
    nop                                           ; $720D: $00
    dec b                                         ; $720E: $05
    ld bc, $0000                                  ; $720F: $01 $00 $00
    ld [bc], a                                    ; $7212: $02
    nop                                           ; $7213: $00
    nop                                           ; $7214: $00
    ld b, $FE                                     ; $7215: $06 $FE
    inc l                                         ; $7217: $2C
    nop                                           ; $7218: $00
    ld h, a                                       ; $7219: $67
    jr z, jr_038_721C                             ; $721A: $28 $00

jr_038_721C:
    ld l, c                                       ; $721C: $69
    ld h, a                                       ; $721D: $67
    nop                                           ; $721E: $00
    dec l                                         ; $721F: $2D
    ld c, c                                       ; $7220: $49
    nop                                           ; $7221: $00
    ld bc, $0078                                  ; $7222: $01 $78 $00
    jp nz, Jump_000_00AA                          ; $7225: $C2 $AA $00

    halt                                          ; $7228: $76
    ld b, a                                       ; $7229: $47
    nop                                           ; $722A: $00
    ld bc, $0026                                  ; $722B: $01 $26 $00
    daa                                           ; $722E: $27
    ld b, d                                       ; $722F: $42
    nop                                           ; $7230: $00
    ld l, [hl]                                    ; $7231: $6E
    ld b, c                                       ; $7232: $41
    nop                                           ; $7233: $00
    inc l                                         ; $7234: $2C
    ld h, $00                                     ; $7235: $26 $00
    inc sp                                        ; $7237: $33
    ld l, d                                       ; $7238: $6A
    nop                                           ; $7239: $00
    ret                                           ; $723A: $C9


    nop                                           ; $723B: $00
    nop                                           ; $723C: $00
    inc bc                                        ; $723D: $03
    nop                                           ; $723E: $00
    nop                                           ; $723F: $00
    inc bc                                        ; $7240: $03
    add l                                         ; $7241: $85
    nop                                           ; $7242: $00
    ld a, [hl]                                    ; $7243: $7E
    ld c, a                                       ; $7244: $4F
    nop                                           ; $7245: $00
    ld [hl], b                                    ; $7246: $70
    dec [hl]                                      ; $7247: $35
    nop                                           ; $7248: $00
    ld b, c                                       ; $7249: $41
    ld l, l                                       ; $724A: $6D
    nop                                           ; $724B: $00
    ld a, [hl-]                                   ; $724C: $3A
    nop                                           ; $724D: $00
    nop                                           ; $724E: $00
    nop                                           ; $724F: $00
    nop                                           ; $7250: $00
    nop                                           ; $7251: $00
    inc bc                                        ; $7252: $03
    ld bc, $8900                                  ; $7253: $01 $00 $89
    sub c                                         ; $7256: $91
    nop                                           ; $7257: $00
    halt                                          ; $7258: $76
    ld a, b                                       ; $7259: $78
    nop                                           ; $725A: $00
    jp nz, Jump_000_00AA                          ; $725B: $C2 $AA $00

    halt                                          ; $725E: $76
    dec hl                                        ; $725F: $2B
    nop                                           ; $7260: $00
    daa                                           ; $7261: $27
    nop                                           ; $7262: $00
    nop                                           ; $7263: $00
    nop                                           ; $7264: $00
    ld bc, $0100                                  ; $7265: $01 $00 $01
    call c, $DA00                                 ; $7268: $DC $00 $DA
    call c, $DE00                                 ; $726B: $DC $00 $DE
    ld bc, $E300                                  ; $726E: $01 $00 $E3
    nop                                           ; $7271: $00
    nop                                           ; $7272: $00
    nop                                           ; $7273: $00
    nop                                           ; $7274: $00
    nop                                           ; $7275: $00
    inc bc                                        ; $7276: $03
    nop                                           ; $7277: $00
    nop                                           ; $7278: $00
    dec b                                         ; $7279: $05
    ld bc, $0000                                  ; $727A: $01 $00 $00
    ld [bc], a                                    ; $727D: $02
    nop                                           ; $727E: $00
    nop                                           ; $727F: $00
    ld b, $FE                                     ; $7280: $06 $FE
    ld h, h                                       ; $7282: $64
    nop                                           ; $7283: $00
    ld l, c                                       ; $7284: $69
    inc l                                         ; $7285: $2C
    nop                                           ; $7286: $00
    ld h, a                                       ; $7287: $67
    jr z, jr_038_728A                             ; $7288: $28 $00

jr_038_728A:
    ld l, c                                       ; $728A: $69
    ld h, a                                       ; $728B: $67
    nop                                           ; $728C: $00
    dec l                                         ; $728D: $2D
    ld c, d                                       ; $728E: $4A
    nop                                           ; $728F: $00
    ld c, c                                       ; $7290: $49
    ld [hl], b                                    ; $7291: $70
    nop                                           ; $7292: $00
    ccf                                           ; $7293: $3F
    adc c                                         ; $7294: $89
    nop                                           ; $7295: $00
    sub c                                         ; $7296: $91
    halt                                          ; $7297: $76
    nop                                           ; $7298: $00
    ld a, b                                       ; $7299: $78
    jp nz, $AA00                                  ; $729A: $C2 $00 $AA

    halt                                          ; $729D: $76
    nop                                           ; $729E: $00
    ld l, [hl]                                    ; $729F: $6E
    ld c, [hl]                                    ; $72A0: $4E
    nop                                           ; $72A1: $00
    ld c, c                                       ; $72A2: $49
    ld b, c                                       ; $72A3: $41
    nop                                           ; $72A4: $00
    ret                                           ; $72A5: $C9


    nop                                           ; $72A6: $00
    nop                                           ; $72A7: $00
    inc bc                                        ; $72A8: $03
    nop                                           ; $72A9: $00
    nop                                           ; $72AA: $00
    inc bc                                        ; $72AB: $03
    and [hl]                                      ; $72AC: $A6
    nop                                           ; $72AD: $00
    halt                                          ; $72AE: $76
    adc c                                         ; $72AF: $89
    nop                                           ; $72B0: $00
    sub l                                         ; $72B1: $95
    or e                                          ; $72B2: $B3
    nop                                           ; $72B3: $00
    halt                                          ; $72B4: $76
    sbc d                                         ; $72B5: $9A
    nop                                           ; $72B6: $00
    ld c, [hl]                                    ; $72B7: $4E
    nop                                           ; $72B8: $00
    nop                                           ; $72B9: $00
    nop                                           ; $72BA: $00
    nop                                           ; $72BB: $00
    nop                                           ; $72BC: $00
    inc bc                                        ; $72BD: $03
    ret nc                                        ; $72BE: $D0

    nop                                           ; $72BF: $00
    ld a, l                                       ; $72C0: $7D
    pop bc                                        ; $72C1: $C1
    nop                                           ; $72C2: $00
    add d                                         ; $72C3: $82
    cp h                                          ; $72C4: $BC
    nop                                           ; $72C5: $00
    halt                                          ; $72C6: $76
    pop de                                        ; $72C7: $D1
    nop                                           ; $72C8: $00
    ld c, d                                       ; $72C9: $4A
    nop                                           ; $72CA: $00
    nop                                           ; $72CB: $00
    nop                                           ; $72CC: $00
    ld d, c                                       ; $72CD: $51
    nop                                           ; $72CE: $00
    ld l, a                                       ; $72CF: $6F
    ld [hl], $00                                  ; $72D0: $36 $00
    ld l, a                                       ; $72D2: $6F
    scf                                           ; $72D3: $37
    nop                                           ; $72D4: $00
    ld l, d                                       ; $72D5: $6A
    ret                                           ; $72D6: $C9


    nop                                           ; $72D7: $00
    ld bc, $0000                                  ; $72D8: $01 $00 $00
    nop                                           ; $72DB: $00
    nop                                           ; $72DC: $00
    nop                                           ; $72DD: $00
    inc bc                                        ; $72DE: $03
    nop                                           ; $72DF: $00
    nop                                           ; $72E0: $00
    inc b                                         ; $72E1: $04
    ld bc, $0000                                  ; $72E2: $01 $00 $00
    dec b                                         ; $72E5: $05
    ld bc, $0000                                  ; $72E6: $01 $00 $00
    ld [bc], a                                    ; $72E9: $02
    nop                                           ; $72EA: $00
    nop                                           ; $72EB: $00
    ld [bc], a                                    ; $72EC: $02
    nop                                           ; $72ED: $00
    nop                                           ; $72EE: $00
    ld [bc], a                                    ; $72EF: $02
    nop                                           ; $72F0: $00
    nop                                           ; $72F1: $00
    ld b, $FE                                     ; $72F2: $06 $FE
    ld c, a                                       ; $72F4: $4F
    nop                                           ; $72F5: $00
    ld [hl], b                                    ; $72F6: $70
    dec [hl]                                      ; $72F7: $35
    nop                                           ; $72F8: $00
    ld b, c                                       ; $72F9: $41
    ld l, l                                       ; $72FA: $6D
    nop                                           ; $72FB: $00
    ld a, [hl-]                                   ; $72FC: $3A
    nop                                           ; $72FD: $00
    nop                                           ; $72FE: $00
    nop                                           ; $72FF: $00
    nop                                           ; $7300: $00
    nop                                           ; $7301: $00
    inc bc                                        ; $7302: $03
    ld bc, $BE00                                  ; $7303: $01 $00 $BE
    add b                                         ; $7306: $80
    nop                                           ; $7307: $00
    jp nz, Jump_000_0095                          ; $7308: $C2 $95 $00

    xor d                                         ; $730B: $AA
    pop bc                                        ; $730C: $C1
    nop                                           ; $730D: $00
    sub d                                         ; $730E: $92
    nop                                           ; $730F: $00
    nop                                           ; $7310: $00
    nop                                           ; $7311: $00
    ld bc, $0100                                  ; $7312: $01 $00 $01
    call c, $DA00                                 ; $7315: $DC $00 $DA
    ld bc, $E300                                  ; $7318: $01 $00 $E3
    nop                                           ; $731B: $00
    nop                                           ; $731C: $00
    nop                                           ; $731D: $00
    nop                                           ; $731E: $00
    nop                                           ; $731F: $00
    inc bc                                        ; $7320: $03
    nop                                           ; $7321: $00
    nop                                           ; $7322: $00
    dec b                                         ; $7323: $05
    ld bc, $0000                                  ; $7324: $01 $00 $00
    ld [bc], a                                    ; $7327: $02
    nop                                           ; $7328: $00
    nop                                           ; $7329: $00
    ld b, $FE                                     ; $732A: $06 $FE
    xor d                                         ; $732C: $AA
    nop                                           ; $732D: $00
    pop bc                                        ; $732E: $C1
    sub d                                         ; $732F: $92
    nop                                           ; $7330: $00
    ld l, [hl]                                    ; $7331: $6E
    ld [hl], $00                                  ; $7332: $36 $00
    ld c, c                                       ; $7334: $49
    jr nc, jr_038_7337                            ; $7335: $30 $00

jr_038_7337:
    ld l, b                                       ; $7337: $68
    ld bc, $2600                                  ; $7338: $01 $00 $26
    daa                                           ; $733B: $27
    nop                                           ; $733C: $00
    ld b, d                                       ; $733D: $42
    ld c, d                                       ; $733E: $4A
    nop                                           ; $733F: $00
    ld e, a                                       ; $7340: $5F
    dec hl                                        ; $7341: $2B
    nop                                           ; $7342: $00
    ld [hl], b                                    ; $7343: $70
    ld b, d                                       ; $7344: $42
    nop                                           ; $7345: $00
    ld bc, $0043                                  ; $7346: $01 $43 $00
    ld [hl], b                                    ; $7349: $70
    ld [hl], $00                                  ; $734A: $36 $00
    ld l, a                                       ; $734C: $6F
    scf                                           ; $734D: $37
    nop                                           ; $734E: $00
    ld l, d                                       ; $734F: $6A
    cpl                                           ; $7350: $2F
    nop                                           ; $7351: $00
    jr z, @+$35                                   ; $7352: $28 $33

    nop                                           ; $7354: $00
    inc l                                         ; $7355: $2C
    ret                                           ; $7356: $C9


    nop                                           ; $7357: $00
    ld bc, $0000                                  ; $7358: $01 $00 $00
    nop                                           ; $735B: $00
    nop                                           ; $735C: $00
    nop                                           ; $735D: $00
    inc bc                                        ; $735E: $03
    nop                                           ; $735F: $00
    nop                                           ; $7360: $00
    inc bc                                        ; $7361: $03
    ld bc, $9A00                                  ; $7362: $01 $00 $9A
    cp [hl]                                       ; $7365: $BE
    nop                                           ; $7366: $00
    jp nz, Jump_000_00AC                          ; $7367: $C2 $AC $00

    ld a, [hl]                                    ; $736A: $7E
    jp nz, Jump_038_7F00                          ; $736B: $C2 $00 $7F

    nop                                           ; $736E: $00
    nop                                           ; $736F: $00
    nop                                           ; $7370: $00
    ld bc, $0100                                  ; $7371: $01 $00 $01
    jp c, $DC00                                   ; $7374: $DA $00 $DC

    jp c, Boot                                    ; $7377: $DA $00 $01

    ldh [c], a                                    ; $737A: $E2
    nop                                           ; $737B: $00
    ld bc, $0000                                  ; $737C: $01 $00 $00
    nop                                           ; $737F: $00
    nop                                           ; $7380: $00
    nop                                           ; $7381: $00
    inc bc                                        ; $7382: $03
    nop                                           ; $7383: $00
    nop                                           ; $7384: $00
    dec b                                         ; $7385: $05
    ld bc, $0000                                  ; $7386: $01 $00 $00
    ld [bc], a                                    ; $7389: $02
    nop                                           ; $738A: $00
    nop                                           ; $738B: $00
    ld b, $FE                                     ; $738C: $06 $FE
    ld h, $00                                     ; $738E: $26 $00
    daa                                           ; $7390: $27
    ld b, d                                       ; $7391: $42
    nop                                           ; $7392: $00
    ld c, d                                       ; $7393: $4A
    ld e, a                                       ; $7394: $5F
    nop                                           ; $7395: $00
    dec hl                                        ; $7396: $2B
    ld [hl], b                                    ; $7397: $70
    nop                                           ; $7398: $00
    ld b, d                                       ; $7399: $42
    ld bc, $6900                                  ; $739A: $01 $00 $69
    ld h, a                                       ; $739D: $67
    nop                                           ; $739E: $00
    jr z, jr_038_73C7                             ; $739F: $28 $26

    nop                                           ; $73A1: $00
    ld [hl], $47                                  ; $73A2: $36 $47
    nop                                           ; $73A4: $00
    ld b, e                                       ; $73A5: $43
    ld l, a                                       ; $73A6: $6F
    nop                                           ; $73A7: $00
    ld b, a                                       ; $73A8: $47
    daa                                           ; $73A9: $27
    nop                                           ; $73AA: $00
    dec l                                         ; $73AB: $2D
    ld a, [hl]                                    ; $73AC: $7E
    nop                                           ; $73AD: $00
    jp nz, $007F                                  ; $73AE: $C2 $7F $00

    ret                                           ; $73B1: $C9


    nop                                           ; $73B2: $00
    nop                                           ; $73B3: $00
    inc bc                                        ; $73B4: $03
    nop                                           ; $73B5: $00
    nop                                           ; $73B6: $00
    inc bc                                        ; $73B7: $03
    ld bc, $8900                                  ; $73B8: $01 $00 $89
    sub c                                         ; $73BB: $91
    nop                                           ; $73BC: $00
    halt                                          ; $73BD: $76
    cp e                                          ; $73BE: $BB
    nop                                           ; $73BF: $00
    xor b                                         ; $73C0: $A8
    pop bc                                        ; $73C1: $C1
    nop                                           ; $73C2: $00
    adc l                                         ; $73C3: $8D
    nop                                           ; $73C4: $00
    nop                                           ; $73C5: $00
    nop                                           ; $73C6: $00

jr_038_73C7:
    ld bc, $0100                                  ; $73C7: $01 $00 $01
    call c, $DE00                                 ; $73CA: $DC $00 $DE
    ld bc, $E200                                  ; $73CD: $01 $00 $E2
    nop                                           ; $73D0: $00
    nop                                           ; $73D1: $00
    nop                                           ; $73D2: $00
    nop                                           ; $73D3: $00
    nop                                           ; $73D4: $00
    inc bc                                        ; $73D5: $03
    nop                                           ; $73D6: $00
    nop                                           ; $73D7: $00
    dec b                                         ; $73D8: $05
    ld bc, $0000                                  ; $73D9: $01 $00 $00
    ld [bc], a                                    ; $73DC: $02
    nop                                           ; $73DD: $00
    nop                                           ; $73DE: $00
    ld b, $FE                                     ; $73DF: $06 $FE
    ld h, $00                                     ; $73E1: $26 $00
    daa                                           ; $73E3: $27
    ld b, d                                       ; $73E4: $42
    nop                                           ; $73E5: $00
    ld c, l                                       ; $73E6: $4D
    cpl                                           ; $73E7: $2F
    nop                                           ; $73E8: $00
    jr z, @+$35                                   ; $73E9: $28 $33

    nop                                           ; $73EB: $00
    inc l                                         ; $73EC: $2C
    ld l, [hl]                                    ; $73ED: $6E
    nop                                           ; $73EE: $00
    ld bc, $0028                                  ; $73EF: $01 $28 $00
    ld l, $42                                     ; $73F2: $2E $42
    nop                                           ; $73F4: $00
    ld bc, $007D                                  ; $73F5: $01 $7D $00
    ld a, d                                       ; $73F8: $7A
    pop bc                                        ; $73F9: $C1
    nop                                           ; $73FA: $00
    sub c                                         ; $73FB: $91
    halt                                          ; $73FC: $76
    nop                                           ; $73FD: $00
    cpl                                           ; $73FE: $2F
    jr z, jr_038_7401                             ; $73FF: $28 $00

jr_038_7401:
    inc sp                                        ; $7401: $33
    inc l                                         ; $7402: $2C
    nop                                           ; $7403: $00
    ld l, [hl]                                    ; $7404: $6E
    inc l                                         ; $7405: $2C
    nop                                           ; $7406: $00
    ld h, b                                       ; $7407: $60
    ld l, d                                       ; $7408: $6A
    nop                                           ; $7409: $00
    ret                                           ; $740A: $C9


    nop                                           ; $740B: $00
    nop                                           ; $740C: $00
    nop                                           ; $740D: $00
    nop                                           ; $740E: $00
    nop                                           ; $740F: $00
    inc bc                                        ; $7410: $03
    nop                                           ; $7411: $00
    nop                                           ; $7412: $00
    inc bc                                        ; $7413: $03
    ld bc, $8900                                  ; $7414: $01 $00 $89
    sub c                                         ; $7417: $91
    nop                                           ; $7418: $00
    halt                                          ; $7419: $76
    ld a, b                                       ; $741A: $78
    nop                                           ; $741B: $00
    jp nz, Jump_000_00AA                          ; $741C: $C2 $AA $00

    halt                                          ; $741F: $76
    nop                                           ; $7420: $00
    nop                                           ; $7421: $00
    nop                                           ; $7422: $00
    ld bc, $0100                                  ; $7423: $01 $00 $01
    jp c, $DC00                                   ; $7426: $DA $00 $DC

    jp c, Boot                                    ; $7429: $DA $00 $01

    db $E3                                        ; $742C: $E3
    nop                                           ; $742D: $00
    ld bc, $0000                                  ; $742E: $01 $00 $00
    nop                                           ; $7431: $00
    nop                                           ; $7432: $00
    nop                                           ; $7433: $00
    inc bc                                        ; $7434: $03
    nop                                           ; $7435: $00
    nop                                           ; $7436: $00
    dec b                                         ; $7437: $05
    ld bc, $0000                                  ; $7438: $01 $00 $00
    ld [bc], a                                    ; $743B: $02
    nop                                           ; $743C: $00
    nop                                           ; $743D: $00
    ld b, $FE                                     ; $743E: $06 $FE
    inc l                                         ; $7440: $2C
    nop                                           ; $7441: $00
    ld h, a                                       ; $7442: $67
    jr z, jr_038_7445                             ; $7443: $28 $00

jr_038_7445:
    ld l, c                                       ; $7445: $69
    ld h, a                                       ; $7446: $67
    nop                                           ; $7447: $00
    dec l                                         ; $7448: $2D
    ld c, c                                       ; $7449: $49
    nop                                           ; $744A: $00
    ld bc, $0078                                  ; $744B: $01 $78 $00
    jp nz, Jump_000_00AA                          ; $744E: $C2 $AA $00

    halt                                          ; $7451: $76
    ld b, a                                       ; $7452: $47
    nop                                           ; $7453: $00
    ld bc, $0026                                  ; $7454: $01 $26 $00
    daa                                           ; $7457: $27
    ld b, d                                       ; $7458: $42
    nop                                           ; $7459: $00
    ld l, [hl]                                    ; $745A: $6E
    ld b, c                                       ; $745B: $41
    nop                                           ; $745C: $00
    inc l                                         ; $745D: $2C
    ld h, $00                                     ; $745E: $26 $00
    inc sp                                        ; $7460: $33
    ld l, d                                       ; $7461: $6A
    nop                                           ; $7462: $00
    ret                                           ; $7463: $C9


    nop                                           ; $7464: $00
    nop                                           ; $7465: $00
    inc bc                                        ; $7466: $03
    nop                                           ; $7467: $00
    nop                                           ; $7468: $00
    inc bc                                        ; $7469: $03
    add l                                         ; $746A: $85
    nop                                           ; $746B: $00
    ld a, [hl]                                    ; $746C: $7E
    ld c, a                                       ; $746D: $4F
    nop                                           ; $746E: $00
    ld [hl], b                                    ; $746F: $70
    dec [hl]                                      ; $7470: $35
    nop                                           ; $7471: $00
    ld b, c                                       ; $7472: $41
    ld l, l                                       ; $7473: $6D
    nop                                           ; $7474: $00
    ld a, [hl-]                                   ; $7475: $3A
    nop                                           ; $7476: $00
    nop                                           ; $7477: $00
    nop                                           ; $7478: $00
    nop                                           ; $7479: $00
    nop                                           ; $747A: $00
    inc bc                                        ; $747B: $03
    ld bc, $8900                                  ; $747C: $01 $00 $89
    sub c                                         ; $747F: $91
    nop                                           ; $7480: $00
    halt                                          ; $7481: $76
    ld a, b                                       ; $7482: $78
    nop                                           ; $7483: $00
    jp nz, Jump_000_00AA                          ; $7484: $C2 $AA $00

    halt                                          ; $7487: $76
    dec hl                                        ; $7488: $2B
    nop                                           ; $7489: $00
    daa                                           ; $748A: $27
    nop                                           ; $748B: $00
    nop                                           ; $748C: $00
    nop                                           ; $748D: $00
    ld bc, $0100                                  ; $748E: $01 $00 $01
    call c, $DA00                                 ; $7491: $DC $00 $DA
    call c, $DE00                                 ; $7494: $DC $00 $DE
    ld bc, $E300                                  ; $7497: $01 $00 $E3
    nop                                           ; $749A: $00
    nop                                           ; $749B: $00
    nop                                           ; $749C: $00
    nop                                           ; $749D: $00
    nop                                           ; $749E: $00
    inc bc                                        ; $749F: $03
    nop                                           ; $74A0: $00
    nop                                           ; $74A1: $00
    dec b                                         ; $74A2: $05
    ld bc, $0000                                  ; $74A3: $01 $00 $00
    ld [bc], a                                    ; $74A6: $02
    nop                                           ; $74A7: $00
    nop                                           ; $74A8: $00
    ld b, $FE                                     ; $74A9: $06 $FE
    ld h, h                                       ; $74AB: $64
    nop                                           ; $74AC: $00
    ld l, c                                       ; $74AD: $69
    inc l                                         ; $74AE: $2C
    nop                                           ; $74AF: $00
    ld h, a                                       ; $74B0: $67
    jr z, jr_038_74B3                             ; $74B1: $28 $00

jr_038_74B3:
    ld l, c                                       ; $74B3: $69
    ld h, a                                       ; $74B4: $67
    nop                                           ; $74B5: $00
    dec l                                         ; $74B6: $2D
    ld c, d                                       ; $74B7: $4A
    nop                                           ; $74B8: $00
    ld c, c                                       ; $74B9: $49
    ld [hl], b                                    ; $74BA: $70
    nop                                           ; $74BB: $00
    ccf                                           ; $74BC: $3F
    adc c                                         ; $74BD: $89
    nop                                           ; $74BE: $00
    sub c                                         ; $74BF: $91
    halt                                          ; $74C0: $76
    nop                                           ; $74C1: $00
    ld a, b                                       ; $74C2: $78
    jp nz, $AA00                                  ; $74C3: $C2 $00 $AA

    halt                                          ; $74C6: $76
    nop                                           ; $74C7: $00
    ld l, [hl]                                    ; $74C8: $6E
    ld c, [hl]                                    ; $74C9: $4E
    nop                                           ; $74CA: $00
    ld c, c                                       ; $74CB: $49
    ld b, c                                       ; $74CC: $41
    nop                                           ; $74CD: $00
    ret                                           ; $74CE: $C9


    nop                                           ; $74CF: $00
    nop                                           ; $74D0: $00
    inc bc                                        ; $74D1: $03
    nop                                           ; $74D2: $00
    nop                                           ; $74D3: $00
    inc bc                                        ; $74D4: $03
    nop                                           ; $74D5: $00
    nop                                           ; $74D6: $00
    inc bc                                        ; $74D7: $03
    ld [hl], $00                                  ; $74D8: $36 $00
    ld h, [hl]                                    ; $74DA: $66
    ld sp, $6700                                  ; $74DB: $31 $00 $67
    jr z, jr_038_74E0                             ; $74DE: $28 $00

jr_038_74E0:
    ld c, l                                       ; $74E0: $4D
    ccf                                           ; $74E1: $3F
    nop                                           ; $74E2: $00
    ld h, b                                       ; $74E3: $60
    ld bc, $3F00                                  ; $74E4: $01 $00 $3F
    ccf                                           ; $74E7: $3F
    nop                                           ; $74E8: $00
    dec hl                                        ; $74E9: $2B
    jr z, jr_038_74EC                             ; $74EA: $28 $00

jr_038_74EC:
    ret                                           ; $74EC: $C9


    nop                                           ; $74ED: $00
    nop                                           ; $74EE: $00
    nop                                           ; $74EF: $00
    nop                                           ; $74F0: $00
    nop                                           ; $74F1: $00
    inc bc                                        ; $74F2: $03
    nop                                           ; $74F3: $00
    nop                                           ; $74F4: $00
    dec b                                         ; $74F5: $05
    ld bc, $0000                                  ; $74F6: $01 $00 $00
    ld [bc], a                                    ; $74F9: $02
    nop                                           ; $74FA: $00
    nop                                           ; $74FB: $00
    ld [bc], a                                    ; $74FC: $02
    nop                                           ; $74FD: $00
    nop                                           ; $74FE: $00
    ld [bc], a                                    ; $74FF: $02
    nop                                           ; $7500: $00
    nop                                           ; $7501: $00
    dec b                                         ; $7502: $05
    add b                                         ; $7503: $80
    nop                                           ; $7504: $00
    nop                                           ; $7505: $00
    ld [bc], a                                    ; $7506: $02
    nop                                           ; $7507: $00
    nop                                           ; $7508: $00
    ld bc, $7500                                  ; $7509: $01 $00 $75
    jr c, jr_038_751E                             ; $750C: $38 $10

    add c                                         ; $750E: $81
    pop bc                                        ; $750F: $C1
    nop                                           ; $7510: $00
    xor c                                         ; $7511: $A9
    ld a, c                                       ; $7512: $79
    nop                                           ; $7513: $00
    ld bc, $00A7                                  ; $7514: $01 $A7 $00
    cp e                                          ; $7517: $BB
    cp e                                          ; $7518: $BB
    nop                                           ; $7519: $00
    ld a, b                                       ; $751A: $78
    pop bc                                        ; $751B: $C1
    nop                                           ; $751C: $00
    sub l                                         ; $751D: $95

jr_038_751E:
    ld bc, $8900                                  ; $751E: $01 $00 $89
    xor l                                         ; $7521: $AD
    nop                                           ; $7522: $00
    adc b                                         ; $7523: $88
    or a                                          ; $7524: $B7
    nop                                           ; $7525: $00
    cp h                                          ; $7526: $BC
    db $E4                                        ; $7527: $E4
    nop                                           ; $7528: $00
    push hl                                       ; $7529: $E5
    ldh a, [c]                                    ; $752A: $F2
    nop                                           ; $752B: $00
    jr z, jr_038_7567                             ; $752C: $28 $39

    nop                                           ; $752E: $00
    di                                            ; $752F: $F3
    ld bc, $8900                                  ; $7530: $01 $00 $89
    sub c                                         ; $7533: $91
    nop                                           ; $7534: $00
    halt                                          ; $7535: $76
    ld a, b                                       ; $7536: $78
    nop                                           ; $7537: $00
    jp nz, Jump_000_00AA                          ; $7538: $C2 $AA $00

    halt                                          ; $753B: $76
    nop                                           ; $753C: $00
    nop                                           ; $753D: $00
    nop                                           ; $753E: $00
    nop                                           ; $753F: $00
    nop                                           ; $7540: $00
    inc bc                                        ; $7541: $03
    ld c, d                                       ; $7542: $4A
    ld de, $6E26                                  ; $7543: $11 $26 $6E
    ld [bc], a                                    ; $7546: $02
    ld l, $8D                                     ; $7547: $2E $8D
    jr nz, jr_038_7582                            ; $7549: $20 $37

    ccf                                           ; $754B: $3F
    nop                                           ; $754C: $00
    ld h, b                                       ; $754D: $60
    ld bc, $1601                                  ; $754E: $01 $01 $16
    add b                                         ; $7551: $80
    jr nz, jr_038_7555                            ; $7552: $20 $01

    ccf                                           ; $7554: $3F

jr_038_7555:
    db $10                                        ; $7555: $10
    daa                                           ; $7556: $27
    add b                                         ; $7557: $80
    db $10                                        ; $7558: $10
    ld l, $6A                                     ; $7559: $2E $6A
    ld bc, $C9BB                                  ; $755B: $01 $BB $C9
    nop                                           ; $755E: $00
    ld bc, $0000                                  ; $755F: $01 $00 $00
    nop                                           ; $7562: $00
    nop                                           ; $7563: $00
    nop                                           ; $7564: $00
    inc bc                                        ; $7565: $03
    add d                                         ; $7566: $82

jr_038_7567:
    ld hl, $6E09                                  ; $7567: $21 $09 $6E
    ld bc, $2D0E                                  ; $756A: $01 $0E $2D
    ld [bc], a                                    ; $756D: $02
    add e                                         ; $756E: $83
    add hl, hl                                    ; $756F: $29
    nop                                           ; $7570: $00
    ld c, c                                       ; $7571: $49
    daa                                           ; $7572: $27
    nop                                           ; $7573: $00
    ld bc, $2269                                  ; $7574: $01 $69 $22
    add h                                         ; $7577: $84
    ld a, $20                                     ; $7578: $3E $20
    ret                                           ; $757A: $C9


    nop                                           ; $757B: $00
    nop                                           ; $757C: $00
    nop                                           ; $757D: $00
    nop                                           ; $757E: $00
    nop                                           ; $757F: $00
    inc bc                                        ; $7580: $03
    ld b, b                                       ; $7581: $40

jr_038_7582:
    ld de, $4241                                  ; $7582: $11 $41 $42
    db $10                                        ; $7585: $10
    ld bc, $0000                                  ; $7586: $01 $00 $00
    nop                                           ; $7589: $00
    nop                                           ; $758A: $00
    nop                                           ; $758B: $00
    inc bc                                        ; $758C: $03
    ld bc, $AF00                                  ; $758D: $01 $00 $AF
    add h                                         ; $7590: $84
    nop                                           ; $7591: $00
    sbc e                                         ; $7592: $9B
    or c                                          ; $7593: $B1
    nop                                           ; $7594: $00
    and a                                         ; $7595: $A7
    cp [hl]                                       ; $7596: $BE
    nop                                           ; $7597: $00
    halt                                          ; $7598: $76
    nop                                           ; $7599: $00
    nop                                           ; $759A: $00
    nop                                           ; $759B: $00
    ld bc, $0100                                  ; $759C: $01 $00 $01
    call c, $DA00                                 ; $759F: $DC $00 $DA
    ld bc, $E300                                  ; $75A2: $01 $00 $E3
    nop                                           ; $75A5: $00
    nop                                           ; $75A6: $00
    nop                                           ; $75A7: $00
    nop                                           ; $75A8: $00
    nop                                           ; $75A9: $00
    inc bc                                        ; $75AA: $03
    nop                                           ; $75AB: $00
    nop                                           ; $75AC: $00
    dec b                                         ; $75AD: $05
    ld bc, $0000                                  ; $75AE: $01 $00 $00
    ld [bc], a                                    ; $75B1: $02
    nop                                           ; $75B2: $00
    nop                                           ; $75B3: $00
    ld b, $FE                                     ; $75B4: $06 $FE
    ld a, e                                       ; $75B6: $7B
    nop                                           ; $75B7: $00
    sbc [hl]                                      ; $75B8: $9E
    cp h                                          ; $75B9: $BC
    nop                                           ; $75BA: $00
    add e                                         ; $75BB: $83
    halt                                          ; $75BC: $76
    ld [bc], a                                    ; $75BD: $02
    ld d, a                                       ; $75BE: $57
    ld l, [hl]                                    ; $75BF: $6E
    ld [bc], a                                    ; $75C0: $02
    jr nc, jr_038_7616                            ; $75C1: $30 $53

    nop                                           ; $75C3: $00
    scf                                           ; $75C4: $37
    ld bc, $8D01                                  ; $75C5: $01 $01 $8D
    adc e                                         ; $75C8: $8B
    db $10                                        ; $75C9: $10
    ret                                           ; $75CA: $C9


    nop                                           ; $75CB: $00
    nop                                           ; $75CC: $00
    nop                                           ; $75CD: $00
    nop                                           ; $75CE: $00
    nop                                           ; $75CF: $00
    inc bc                                        ; $75D0: $03
    nop                                           ; $75D1: $00
    nop                                           ; $75D2: $00
    inc bc                                        ; $75D3: $03
    ld bc, $7F00                                  ; $75D4: $01 $00 $7F
    cp l                                          ; $75D7: $BD
    nop                                           ; $75D8: $00
    ld a, c                                       ; $75D9: $79
    adc l                                         ; $75DA: $8D
    nop                                           ; $75DB: $00
    halt                                          ; $75DC: $76
    sbc e                                         ; $75DD: $9B
    nop                                           ; $75DE: $00
    jp nz, $007F                                  ; $75DF: $C2 $7F $00

    cp h                                          ; $75E2: $BC
    nop                                           ; $75E3: $00
    nop                                           ; $75E4: $00
    nop                                           ; $75E5: $00
    ld bc, $0100                                  ; $75E6: $01 $00 $01
    db $E3                                        ; $75E9: $E3
    nop                                           ; $75EA: $00
    ld bc, $2134                                  ; $75EB: $01 $34 $21
    ld [hl+], a                                   ; $75EE: $22
    nop                                           ; $75EF: $00
    nop                                           ; $75F0: $00
    nop                                           ; $75F1: $00
    nop                                           ; $75F2: $00
    nop                                           ; $75F3: $00
    inc bc                                        ; $75F4: $03
    nop                                           ; $75F5: $00
    nop                                           ; $75F6: $00
    dec b                                         ; $75F7: $05
    ld bc, $0000                                  ; $75F8: $01 $00 $00
    ld [bc], a                                    ; $75FB: $02
    nop                                           ; $75FC: $00
    nop                                           ; $75FD: $00
    ld b, $FE                                     ; $75FE: $06 $FE

Call_038_7600:
    inc [hl]                                      ; $7600: $34
    ld hl, $4780                                  ; $7601: $21 $80 $47
    nop                                           ; $7604: $00
    ld bc, $00AA                                  ; $7605: $01 $AA $00
    pop bc                                        ; $7608: $C1
    sub d                                         ; $7609: $92
    nop                                           ; $760A: $00
    ld l, [hl]                                    ; $760B: $6E
    ld b, e                                       ; $760C: $43
    db $10                                        ; $760D: $10
    inc l                                         ; $760E: $2C
    ld [hl], $20                                  ; $760F: $36 $20
    ld e, a                                       ; $7611: $5F
    adc l                                         ; $7612: $8D
    ld de, $C98B                                  ; $7613: $11 $8B $C9

jr_038_7616:
    nop                                           ; $7616: $00
    ld bc, $0000                                  ; $7617: $01 $00 $00
    nop                                           ; $761A: $00
    nop                                           ; $761B: $00
    nop                                           ; $761C: $00
    inc bc                                        ; $761D: $03
    nop                                           ; $761E: $00
    nop                                           ; $761F: $00
    inc bc                                        ; $7620: $03
    ld bc, $8900                                  ; $7621: $01 $00 $89
    sub h                                         ; $7624: $94
    nop                                           ; $7625: $00
    cp h                                          ; $7626: $BC
    adc c                                         ; $7627: $89
    nop                                           ; $7628: $00
    and a                                         ; $7629: $A7
    cp [hl]                                       ; $762A: $BE
    nop                                           ; $762B: $00
    halt                                          ; $762C: $76
    nop                                           ; $762D: $00
    nop                                           ; $762E: $00
    nop                                           ; $762F: $00
    ld bc, $0100                                  ; $7630: $01 $00 $01
    jp c, $DC00                                   ; $7633: $DA $00 $DC

    jp c, Boot                                    ; $7636: $DA $00 $01

    ldh [c], a                                    ; $7639: $E2
    nop                                           ; $763A: $00
    ld bc, $0000                                  ; $763B: $01 $00 $00
    nop                                           ; $763E: $00
    nop                                           ; $763F: $00
    nop                                           ; $7640: $00
    inc bc                                        ; $7641: $03
    nop                                           ; $7642: $00
    nop                                           ; $7643: $00
    dec b                                         ; $7644: $05
    ld bc, $0000                                  ; $7645: $01 $00 $00
    ld [bc], a                                    ; $7648: $02
    nop                                           ; $7649: $00
    nop                                           ; $764A: $00
    ld b, $FE                                     ; $764B: $06 $FE
    sbc b                                         ; $764D: $98
    db $10                                        ; $764E: $10
    add hl, hl                                    ; $764F: $29
    ld c, c                                       ; $7650: $49
    nop                                           ; $7651: $00
    daa                                           ; $7652: $27
    ld d, d                                       ; $7653: $52
    nop                                           ; $7654: $00
    ld c, b                                       ; $7655: $48
    ld bc, $5401                                  ; $7656: $01 $01 $54
    daa                                           ; $7659: $27
    nop                                           ; $765A: $00
    xor d                                         ; $765B: $AA
    pop bc                                        ; $765C: $C1
    nop                                           ; $765D: $00
    sub d                                         ; $765E: $92
    ld b, a                                       ; $765F: $47
    ld bc, $8B8D                                  ; $7660: $01 $8D $8B
    db $10                                        ; $7663: $10
    scf                                           ; $7664: $37
    ld l, d                                       ; $7665: $6A
    nop                                           ; $7666: $00
    ret                                           ; $7667: $C9


    nop                                           ; $7668: $00
    nop                                           ; $7669: $00
    nop                                           ; $766A: $00
    nop                                           ; $766B: $00
    nop                                           ; $766C: $00
    inc bc                                        ; $766D: $03
    nop                                           ; $766E: $00
    nop                                           ; $766F: $00
    inc bc                                        ; $7670: $03
    ld bc, $8900                                  ; $7671: $01 $00 $89
    sub c                                         ; $7674: $91
    nop                                           ; $7675: $00
    halt                                          ; $7676: $76
    ld a, b                                       ; $7677: $78
    nop                                           ; $7678: $00
    jp nz, Jump_000_00AA                          ; $7679: $C2 $AA $00

    halt                                          ; $767C: $76
    nop                                           ; $767D: $00
    nop                                           ; $767E: $00
    nop                                           ; $767F: $00
    ld bc, $0100                                  ; $7680: $01 $00 $01
    jp c, $DC00                                   ; $7683: $DA $00 $DC

    jp c, Boot                                    ; $7686: $DA $00 $01

    db $E3                                        ; $7689: $E3
    nop                                           ; $768A: $00
    ld bc, $0000                                  ; $768B: $01 $00 $00
    nop                                           ; $768E: $00
    nop                                           ; $768F: $00
    nop                                           ; $7690: $00
    inc bc                                        ; $7691: $03
    nop                                           ; $7692: $00
    nop                                           ; $7693: $00
    dec b                                         ; $7694: $05
    ld bc, $0000                                  ; $7695: $01 $00 $00
    ld [bc], a                                    ; $7698: $02
    nop                                           ; $7699: $00
    nop                                           ; $769A: $00
    ld b, $FE                                     ; $769B: $06 $FE
    ld h, $11                                     ; $769D: $26 $11
    inc b                                         ; $769F: $04
    ld c, c                                       ; $76A0: $49
    nop                                           ; $76A1: $00
    ld a, b                                       ; $76A2: $78
    jp nz, $AA00                                  ; $76A3: $C2 $00 $AA

    halt                                          ; $76A6: $76
    nop                                           ; $76A7: $00
    ld b, a                                       ; $76A8: $47
    ld bc, $8E01                                  ; $76A9: $01 $01 $8E
    rlca                                          ; $76AC: $07
    db $10                                        ; $76AD: $10
    ld l, [hl]                                    ; $76AE: $6E
    cpl                                           ; $76AF: $2F
    jr nz, jr_038_76DE                            ; $76B0: $20 $2C

    adc d                                         ; $76B2: $8A
    db $10                                        ; $76B3: $10
    inc sp                                        ; $76B4: $33
    ld l, d                                       ; $76B5: $6A
    nop                                           ; $76B6: $00
    ret                                           ; $76B7: $C9


    nop                                           ; $76B8: $00
    nop                                           ; $76B9: $00
    nop                                           ; $76BA: $00
    nop                                           ; $76BB: $00
    nop                                           ; $76BC: $00
    inc bc                                        ; $76BD: $03
    nop                                           ; $76BE: $00
    nop                                           ; $76BF: $00
    inc bc                                        ; $76C0: $03
    sbc a                                         ; $76C1: $9F
    ld hl, $4140                                  ; $76C2: $21 $40 $41
    ld de, $0042                                  ; $76C5: $11 $42 $00
    nop                                           ; $76C8: $00
    nop                                           ; $76C9: $00
    nop                                           ; $76CA: $00
    nop                                           ; $76CB: $00
    inc bc                                        ; $76CC: $03
    ld bc, $8900                                  ; $76CD: $01 $00 $89
    sub c                                         ; $76D0: $91
    nop                                           ; $76D1: $00
    halt                                          ; $76D2: $76
    ld a, b                                       ; $76D3: $78
    nop                                           ; $76D4: $00
    jp nz, Jump_000_00AA                          ; $76D5: $C2 $AA $00

    halt                                          ; $76D8: $76
    add l                                         ; $76D9: $85
    jr nz, jr_038_76DD                            ; $76DA: $20 $01

    nop                                           ; $76DC: $00

jr_038_76DD:
    nop                                           ; $76DD: $00

jr_038_76DE:
    nop                                           ; $76DE: $00
    ld bc, $0100                                  ; $76DF: $01 $00 $01
    call c, $DA00                                 ; $76E2: $DC $00 $DA
    call c, $DE00                                 ; $76E5: $DC $00 $DE
    ld bc, $E300                                  ; $76E8: $01 $00 $E3
    nop                                           ; $76EB: $00
    nop                                           ; $76EC: $00
    nop                                           ; $76ED: $00
    nop                                           ; $76EE: $00
    nop                                           ; $76EF: $00
    inc bc                                        ; $76F0: $03
    nop                                           ; $76F1: $00
    nop                                           ; $76F2: $00
    dec b                                         ; $76F3: $05
    ld bc, $0000                                  ; $76F4: $01 $00 $00
    ld [bc], a                                    ; $76F7: $02
    nop                                           ; $76F8: $00
    nop                                           ; $76F9: $00
    ld b, $FE                                     ; $76FA: $06 $FE
    ld h, h                                       ; $76FC: $64
    nop                                           ; $76FD: $00
    ld l, c                                       ; $76FE: $69
    ld h, $11                                     ; $76FF: $26 $11
    inc b                                         ; $7701: $04
    ld c, d                                       ; $7702: $4A
    nop                                           ; $7703: $00
    ld c, c                                       ; $7704: $49
    ld [hl], b                                    ; $7705: $70
    nop                                           ; $7706: $00
    ccf                                           ; $7707: $3F
    ld bc, $8900                                  ; $7708: $01 $00 $89
    sub c                                         ; $770B: $91
    nop                                           ; $770C: $00
    halt                                          ; $770D: $76
    ld a, b                                       ; $770E: $78
    nop                                           ; $770F: $00
    jp nz, Jump_000_00AA                          ; $7710: $C2 $AA $00

    halt                                          ; $7713: $76
    ld l, [hl]                                    ; $7714: $6E
    ld [bc], a                                    ; $7715: $02
    add [hl]                                      ; $7716: $86
    ld b, c                                       ; $7717: $41
    nop                                           ; $7718: $00
    ret                                           ; $7719: $C9


    nop                                           ; $771A: $00
    nop                                           ; $771B: $00
    nop                                           ; $771C: $00
    nop                                           ; $771D: $00
    nop                                           ; $771E: $00
    inc bc                                        ; $771F: $03
    nop                                           ; $7720: $00
    nop                                           ; $7721: $00
    inc bc                                        ; $7722: $03
    and [hl]                                      ; $7723: $A6
    nop                                           ; $7724: $00
    halt                                          ; $7725: $76
    adc c                                         ; $7726: $89
    nop                                           ; $7727: $00
    sub l                                         ; $7728: $95
    or e                                          ; $7729: $B3
    nop                                           ; $772A: $00
    halt                                          ; $772B: $76
    sbc d                                         ; $772C: $9A
    nop                                           ; $772D: $00
    ld c, [hl]                                    ; $772E: $4E
    nop                                           ; $772F: $00
    nop                                           ; $7730: $00
    nop                                           ; $7731: $00
    nop                                           ; $7732: $00
    nop                                           ; $7733: $00
    inc bc                                        ; $7734: $03
    ret nc                                        ; $7735: $D0

    nop                                           ; $7736: $00
    ld a, l                                       ; $7737: $7D
    pop bc                                        ; $7738: $C1
    nop                                           ; $7739: $00
    add d                                         ; $773A: $82
    cp h                                          ; $773B: $BC
    nop                                           ; $773C: $00
    halt                                          ; $773D: $76
    pop de                                        ; $773E: $D1
    nop                                           ; $773F: $00
    ld c, d                                       ; $7740: $4A
    nop                                           ; $7741: $00
    nop                                           ; $7742: $00
    nop                                           ; $7743: $00
    ld d, d                                       ; $7744: $52
    ld de, $3753                                  ; $7745: $11 $53 $37
    nop                                           ; $7748: $00
    ld l, d                                       ; $7749: $6A
    ret                                           ; $774A: $C9


    nop                                           ; $774B: $00
    ld bc, $0000                                  ; $774C: $01 $00 $00
    nop                                           ; $774F: $00
    nop                                           ; $7750: $00
    nop                                           ; $7751: $00
    inc bc                                        ; $7752: $03
    nop                                           ; $7753: $00
    nop                                           ; $7754: $00
    inc b                                         ; $7755: $04
    ld bc, $0000                                  ; $7756: $01 $00 $00
    dec b                                         ; $7759: $05
    ld bc, $0000                                  ; $775A: $01 $00 $00
    ld [bc], a                                    ; $775D: $02
    nop                                           ; $775E: $00
    nop                                           ; $775F: $00
    ld [bc], a                                    ; $7760: $02
    nop                                           ; $7761: $00
    nop                                           ; $7762: $00
    ld [bc], a                                    ; $7763: $02
    nop                                           ; $7764: $00
    nop                                           ; $7765: $00
    ld b, $FE                                     ; $7766: $06 $FE
    ld b, b                                       ; $7768: $40
    ld de, $4241                                  ; $7769: $11 $41 $42
    db $10                                        ; $776C: $10
    ld bc, $0000                                  ; $776D: $01 $00 $00
    nop                                           ; $7770: $00
    nop                                           ; $7771: $00
    nop                                           ; $7772: $00
    inc bc                                        ; $7773: $03
    ld bc, $BE00                                  ; $7774: $01 $00 $BE
    add b                                         ; $7777: $80
    nop                                           ; $7778: $00
    jp nz, Jump_000_0095                          ; $7779: $C2 $95 $00

    xor d                                         ; $777C: $AA
    pop bc                                        ; $777D: $C1
    nop                                           ; $777E: $00
    sub d                                         ; $777F: $92
    nop                                           ; $7780: $00
    nop                                           ; $7781: $00
    nop                                           ; $7782: $00
    ld bc, $0100                                  ; $7783: $01 $00 $01
    call c, $DA00                                 ; $7786: $DC $00 $DA
    ld bc, $E300                                  ; $7789: $01 $00 $E3
    nop                                           ; $778C: $00
    nop                                           ; $778D: $00
    nop                                           ; $778E: $00
    nop                                           ; $778F: $00
    nop                                           ; $7790: $00
    inc bc                                        ; $7791: $03
    nop                                           ; $7792: $00
    nop                                           ; $7793: $00
    dec b                                         ; $7794: $05
    ld bc, $0000                                  ; $7795: $01 $00 $00
    ld [bc], a                                    ; $7798: $02
    nop                                           ; $7799: $00
    nop                                           ; $779A: $00
    ld b, $FE                                     ; $779B: $06 $FE
    xor d                                         ; $779D: $AA
    nop                                           ; $779E: $00
    pop bc                                        ; $779F: $C1
    sub d                                         ; $77A0: $92
    nop                                           ; $77A1: $00
    ld l, [hl]                                    ; $77A2: $6E
    ld [hl], $00                                  ; $77A3: $36 $00
    ld c, c                                       ; $77A5: $49
    jr nc, jr_038_77A8                            ; $77A6: $30 $00

jr_038_77A8:
    ld l, b                                       ; $77A8: $68
    ld bc, $8E01                                  ; $77A9: $01 $01 $8E
    rlca                                          ; $77AC: $07
    db $10                                        ; $77AD: $10
    ld c, d                                       ; $77AE: $4A
    sub e                                         ; $77AF: $93
    db $10                                        ; $77B0: $10
    dec hl                                        ; $77B1: $2B
    ld [hl], b                                    ; $77B2: $70
    nop                                           ; $77B3: $00
    ld b, d                                       ; $77B4: $42
    ld bc, $2F02                                  ; $77B5: $01 $02 $2F
    rla                                           ; $77B8: $17
    jr nz, @+$39                                  ; $77B9: $20 $37

    ld l, d                                       ; $77BB: $6A
    ld bc, $8B8D                                  ; $77BC: $01 $8D $8B
    db $10                                        ; $77BF: $10
    ret                                           ; $77C0: $C9


    nop                                           ; $77C1: $00
    nop                                           ; $77C2: $00
    inc bc                                        ; $77C3: $03
    nop                                           ; $77C4: $00
    nop                                           ; $77C5: $00
    inc bc                                        ; $77C6: $03
    ld bc, $9A00                                  ; $77C7: $01 $00 $9A
    cp [hl]                                       ; $77CA: $BE
    nop                                           ; $77CB: $00
    jp nz, Jump_000_00AC                          ; $77CC: $C2 $AC $00

    ld a, [hl]                                    ; $77CF: $7E
    jp nz, Jump_038_7F00                          ; $77D0: $C2 $00 $7F

    nop                                           ; $77D3: $00
    nop                                           ; $77D4: $00
    nop                                           ; $77D5: $00
    ld bc, $0100                                  ; $77D6: $01 $00 $01
    jp c, $DC00                                   ; $77D9: $DA $00 $DC

    jp c, Boot                                    ; $77DC: $DA $00 $01

    ldh [c], a                                    ; $77DF: $E2
    nop                                           ; $77E0: $00
    ld bc, $0000                                  ; $77E1: $01 $00 $00
    nop                                           ; $77E4: $00
    nop                                           ; $77E5: $00
    nop                                           ; $77E6: $00
    inc bc                                        ; $77E7: $03
    nop                                           ; $77E8: $00
    nop                                           ; $77E9: $00
    dec b                                         ; $77EA: $05
    ld bc, $0000                                  ; $77EB: $01 $00 $00
    ld [bc], a                                    ; $77EE: $02
    nop                                           ; $77EF: $00
    nop                                           ; $77F0: $00
    ld b, $FE                                     ; $77F1: $06 $FE
    adc [hl]                                      ; $77F3: $8E
    ld de, $4A07                                  ; $77F4: $11 $07 $4A
    ld bc, $2B93                                  ; $77F7: $01 $93 $2B
    nop                                           ; $77FA: $00
    ld [hl], b                                    ; $77FB: $70
    ld b, d                                       ; $77FC: $42
    nop                                           ; $77FD: $00
    ld bc, $227A                                  ; $77FE: $01 $7A $22
    ld c, d                                       ; $7801: $4A
    ld b, a                                       ; $7802: $47
    ld [bc], a                                    ; $7803: $02
    jr nc, jr_038_7875                            ; $7804: $30 $6F

    nop                                           ; $7806: $00
    ld b, a                                       ; $7807: $47
    daa                                           ; $7808: $27
    nop                                           ; $7809: $00
    dec l                                         ; $780A: $2D
    adc l                                         ; $780B: $8D
    ld de, $C98B                                  ; $780C: $11 $8B $C9
    nop                                           ; $780F: $00
    ld bc, $0000                                  ; $7810: $01 $00 $00
    nop                                           ; $7813: $00
    nop                                           ; $7814: $00
    nop                                           ; $7815: $00
    inc bc                                        ; $7816: $03
    nop                                           ; $7817: $00
    nop                                           ; $7818: $00
    inc bc                                        ; $7819: $03
    ld bc, $8900                                  ; $781A: $01 $00 $89
    sub c                                         ; $781D: $91
    nop                                           ; $781E: $00
    halt                                          ; $781F: $76
    cp e                                          ; $7820: $BB
    nop                                           ; $7821: $00
    xor b                                         ; $7822: $A8
    pop bc                                        ; $7823: $C1
    nop                                           ; $7824: $00
    adc l                                         ; $7825: $8D
    nop                                           ; $7826: $00
    nop                                           ; $7827: $00
    nop                                           ; $7828: $00
    ld bc, $0100                                  ; $7829: $01 $00 $01
    call c, $DE00                                 ; $782C: $DC $00 $DE
    ld bc, $E200                                  ; $782F: $01 $00 $E2
    nop                                           ; $7832: $00
    nop                                           ; $7833: $00
    nop                                           ; $7834: $00
    nop                                           ; $7835: $00
    nop                                           ; $7836: $00
    inc bc                                        ; $7837: $03
    nop                                           ; $7838: $00
    nop                                           ; $7839: $00
    dec b                                         ; $783A: $05
    ld bc, $0000                                  ; $783B: $01 $00 $00
    ld [bc], a                                    ; $783E: $02
    nop                                           ; $783F: $00
    nop                                           ; $7840: $00
    ld b, $FE                                     ; $7841: $06 $FE
    adc [hl]                                      ; $7843: $8E
    ld de, $4D07                                  ; $7844: $11 $07 $4D
    ld bc, $8D8A                                  ; $7847: $01 $8A $8D
    ld de, $6E8B                                  ; $784A: $11 $8B $6E
    ld [bc], a                                    ; $784D: $02
    ld b, a                                       ; $784E: $47
    ld l, $00                                     ; $784F: $2E $00
    ld b, d                                       ; $7851: $42
    ld bc, $7D00                                  ; $7852: $01 $00 $7D
    ld a, d                                       ; $7855: $7A
    nop                                           ; $7856: $00
    pop bc                                        ; $7857: $C1
    sub c                                         ; $7858: $91
    nop                                           ; $7859: $00
    halt                                          ; $785A: $76
    adc l                                         ; $785B: $8D
    ld de, $6E8B                                  ; $785C: $11 $8B $6E
    ld bc, $602F                                  ; $785F: $01 $2F $60
    nop                                           ; $7862: $00
    ld l, d                                       ; $7863: $6A
    ret                                           ; $7864: $C9


    nop                                           ; $7865: $00
    ld bc, $0000                                  ; $7866: $01 $00 $00
    inc bc                                        ; $7869: $03
    nop                                           ; $786A: $00
    nop                                           ; $786B: $00
    inc bc                                        ; $786C: $03
    ld bc, $8900                                  ; $786D: $01 $00 $89
    sub c                                         ; $7870: $91
    nop                                           ; $7871: $00
    halt                                          ; $7872: $76
    ld a, b                                       ; $7873: $78
    nop                                           ; $7874: $00

jr_038_7875:
    jp nz, Jump_000_00AA                          ; $7875: $C2 $AA $00

    halt                                          ; $7878: $76
    nop                                           ; $7879: $00
    nop                                           ; $787A: $00
    nop                                           ; $787B: $00
    ld bc, $0100                                  ; $787C: $01 $00 $01
    jp c, $DC00                                   ; $787F: $DA $00 $DC

    jp c, Boot                                    ; $7882: $DA $00 $01

    db $E3                                        ; $7885: $E3
    nop                                           ; $7886: $00
    ld bc, $0000                                  ; $7887: $01 $00 $00
    nop                                           ; $788A: $00
    nop                                           ; $788B: $00
    nop                                           ; $788C: $00
    inc bc                                        ; $788D: $03
    nop                                           ; $788E: $00
    nop                                           ; $788F: $00
    dec b                                         ; $7890: $05
    ld bc, $0000                                  ; $7891: $01 $00 $00
    ld [bc], a                                    ; $7894: $02
    nop                                           ; $7895: $00
    nop                                           ; $7896: $00
    ld b, $FE                                     ; $7897: $06 $FE
    ld h, $11                                     ; $7899: $26 $11
    inc b                                         ; $789B: $04
    ld c, c                                       ; $789C: $49
    nop                                           ; $789D: $00
    ld a, b                                       ; $789E: $78
    jp nz, $AA00                                  ; $789F: $C2 $00 $AA

    halt                                          ; $78A2: $76
    nop                                           ; $78A3: $00
    ld b, a                                       ; $78A4: $47
    ld bc, $8E01                                  ; $78A5: $01 $01 $8E
    rlca                                          ; $78A8: $07
    db $10                                        ; $78A9: $10
    ld l, [hl]                                    ; $78AA: $6E
    cpl                                           ; $78AB: $2F
    jr nz, jr_038_78DA                            ; $78AC: $20 $2C

    adc d                                         ; $78AE: $8A
    db $10                                        ; $78AF: $10
    inc sp                                        ; $78B0: $33
    ld l, d                                       ; $78B1: $6A
    nop                                           ; $78B2: $00
    ret                                           ; $78B3: $C9


    nop                                           ; $78B4: $00
    nop                                           ; $78B5: $00
    nop                                           ; $78B6: $00
    nop                                           ; $78B7: $00
    nop                                           ; $78B8: $00
    inc bc                                        ; $78B9: $03
    nop                                           ; $78BA: $00
    nop                                           ; $78BB: $00
    inc bc                                        ; $78BC: $03
    sbc a                                         ; $78BD: $9F
    ld hl, $4140                                  ; $78BE: $21 $40 $41
    ld de, $0042                                  ; $78C1: $11 $42 $00
    nop                                           ; $78C4: $00
    nop                                           ; $78C5: $00
    nop                                           ; $78C6: $00
    nop                                           ; $78C7: $00
    inc bc                                        ; $78C8: $03
    ld bc, $8900                                  ; $78C9: $01 $00 $89
    sub c                                         ; $78CC: $91
    nop                                           ; $78CD: $00
    halt                                          ; $78CE: $76
    ld a, b                                       ; $78CF: $78
    nop                                           ; $78D0: $00
    jp nz, Jump_000_00AA                          ; $78D1: $C2 $AA $00

    halt                                          ; $78D4: $76
    add l                                         ; $78D5: $85
    jr nz, jr_038_78D9                            ; $78D6: $20 $01

    nop                                           ; $78D8: $00

jr_038_78D9:
    nop                                           ; $78D9: $00

jr_038_78DA:
    nop                                           ; $78DA: $00
    ld bc, $0100                                  ; $78DB: $01 $00 $01
    call c, $DA00                                 ; $78DE: $DC $00 $DA
    call c, $DE00                                 ; $78E1: $DC $00 $DE
    ld bc, $E300                                  ; $78E4: $01 $00 $E3
    nop                                           ; $78E7: $00
    nop                                           ; $78E8: $00
    nop                                           ; $78E9: $00
    nop                                           ; $78EA: $00
    nop                                           ; $78EB: $00
    inc bc                                        ; $78EC: $03
    nop                                           ; $78ED: $00
    nop                                           ; $78EE: $00
    dec b                                         ; $78EF: $05
    ld bc, $0000                                  ; $78F0: $01 $00 $00
    ld [bc], a                                    ; $78F3: $02
    nop                                           ; $78F4: $00
    nop                                           ; $78F5: $00
    ld b, $FE                                     ; $78F6: $06 $FE
    ld h, h                                       ; $78F8: $64
    nop                                           ; $78F9: $00
    ld l, c                                       ; $78FA: $69
    ld h, $11                                     ; $78FB: $26 $11
    inc b                                         ; $78FD: $04
    ld c, d                                       ; $78FE: $4A
    nop                                           ; $78FF: $00
    ld c, c                                       ; $7900: $49
    ld [hl], b                                    ; $7901: $70
    nop                                           ; $7902: $00
    ccf                                           ; $7903: $3F
    ld bc, $8900                                  ; $7904: $01 $00 $89
    sub c                                         ; $7907: $91
    nop                                           ; $7908: $00
    halt                                          ; $7909: $76
    ld a, b                                       ; $790A: $78
    nop                                           ; $790B: $00
    jp nz, Jump_000_00AA                          ; $790C: $C2 $AA $00

    halt                                          ; $790F: $76
    ld l, [hl]                                    ; $7910: $6E
    ld [bc], a                                    ; $7911: $02
    add [hl]                                      ; $7912: $86
    ld b, c                                       ; $7913: $41
    nop                                           ; $7914: $00
    ret                                           ; $7915: $C9


    nop                                           ; $7916: $00
    nop                                           ; $7917: $00
    nop                                           ; $7918: $00
    nop                                           ; $7919: $00
    nop                                           ; $791A: $00
    inc bc                                        ; $791B: $03
    nop                                           ; $791C: $00
    nop                                           ; $791D: $00
    inc bc                                        ; $791E: $03
    nop                                           ; $791F: $00
    nop                                           ; $7920: $00
    inc bc                                        ; $7921: $03
    add c                                         ; $7922: $81
    ld hl, $4DDE                                  ; $7923: $21 $DE $4D
    nop                                           ; $7926: $00
    ccf                                           ; $7927: $3F
    ld h, b                                       ; $7928: $60
    nop                                           ; $7929: $00
    ld c, d                                       ; $792A: $4A
    ld bc, $3F01                                  ; $792B: $01 $01 $3F
    jr z, jr_038_7930                             ; $792E: $28 $00

jr_038_7930:
    ret                                           ; $7930: $C9


    nop                                           ; $7931: $00
    nop                                           ; $7932: $00
    nop                                           ; $7933: $00
    nop                                           ; $7934: $00
    nop                                           ; $7935: $00
    nop                                           ; $7936: $00
    nop                                           ; $7937: $00
    nop                                           ; $7938: $00
    inc bc                                        ; $7939: $03
    nop                                           ; $793A: $00
    nop                                           ; $793B: $00
    dec b                                         ; $793C: $05
    ld bc, $0000                                  ; $793D: $01 $00 $00
    ld [bc], a                                    ; $7940: $02
    nop                                           ; $7941: $00
    nop                                           ; $7942: $00
    ld [bc], a                                    ; $7943: $02
    nop                                           ; $7944: $00
    nop                                           ; $7945: $00
    ld [bc], a                                    ; $7946: $02
    nop                                           ; $7947: $00
    nop                                           ; $7948: $00
    dec b                                         ; $7949: $05
    add b                                         ; $794A: $80
    nop                                           ; $794B: $00
    nop                                           ; $794C: $00
    ld [bc], a                                    ; $794D: $02
    nop                                           ; $794E: $00
    nop                                           ; $794F: $00
    ld bc, $7947                                  ; $7950: $01 $47 $79
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

Call_038_7D00:
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

Call_038_7F00:
Jump_038_7F00:
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
