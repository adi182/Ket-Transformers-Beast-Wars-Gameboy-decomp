; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $037", ROMX[$4000], BANK[$37]

    ldh a, [$FF98]                                ; $4000: $F0 $98
    ld e, a                                       ; $4002: $5F
    ldh a, [$FFAB]                                ; $4003: $F0 $AB
    or e                                          ; $4005: $B3
    ld e, a                                       ; $4006: $5F
    ld d, $02                                     ; $4007: $16 $02
    and $04                                       ; $4009: $E6 $04
    jr nz, jr_037_402E                            ; $400B: $20 $21

    ld d, $0E                                     ; $400D: $16 $0E
    ld a, e                                       ; $400F: $7B
    and $08                                       ; $4010: $E6 $08
    jr nz, jr_037_402E                            ; $4012: $20 $1A

    ld d, $08                                     ; $4014: $16 $08
    jr jr_037_402E                                ; $4016: $18 $16

    ldh a, [$FF98]                                ; $4018: $F0 $98
    ld e, a                                       ; $401A: $5F
    ldh a, [$FFAB]                                ; $401B: $F0 $AB
    or e                                          ; $401D: $B3
    ld e, a                                       ; $401E: $5F
    ld d, $02                                     ; $401F: $16 $02
    and $04                                       ; $4021: $E6 $04
    jr nz, jr_037_402E                            ; $4023: $20 $09

    ld d, $0A                                     ; $4025: $16 $0A
    ld a, e                                       ; $4027: $7B
    and $08                                       ; $4028: $E6 $08
    jr nz, jr_037_402E                            ; $402A: $20 $02

    ld d, $06                                     ; $402C: $16 $06

jr_037_402E:
    ld a, d                                       ; $402E: $7A
    ld [$C33C], a                                 ; $402F: $EA $3C $C3
    ld hl, $C33B                                  ; $4032: $21 $3B $C3
    dec [hl]                                      ; $4035: $35
    jp nz, Jump_037_4064                          ; $4036: $C2 $64 $40

    inc hl                                        ; $4039: $23
    ld a, [hl-]                                   ; $403A: $3A
    ld [hl], a                                    ; $403B: $77
    ld a, [$C32E]                                 ; $403C: $FA $2E $C3
    and $01                                       ; $403F: $E6 $01
    jr z, jr_037_4057                             ; $4041: $28 $14

    ld a, [$C33A]                                 ; $4043: $FA $3A $C3
    inc a                                         ; $4046: $3C
    ld [$C33A], a                                 ; $4047: $EA $3A $C3
    ld e, a                                       ; $404A: $5F
    and $0F                                       ; $404B: $E6 $0F
    jr nz, jr_037_4064                            ; $404D: $20 $15

    ld a, e                                       ; $404F: $7B
    add $F0                                       ; $4050: $C6 $F0
    ld [$C33A], a                                 ; $4052: $EA $3A $C3
    jr jr_037_409C                                ; $4055: $18 $45

jr_037_4057:
    ld a, [$C33A]                                 ; $4057: $FA $3A $C3
    inc a                                         ; $405A: $3C
    ld [$C33A], a                                 ; $405B: $EA $3A $C3
    ldh [$FFE2], a                                ; $405E: $E0 $E2
    and $0F                                       ; $4060: $E6 $0F
    jr z, jr_037_409C                             ; $4062: $28 $38

Jump_037_4064:
jr_037_4064:
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


jr_037_409C:
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

Jump_037_40BC:
jr_037_40BC:
    ld c, [hl]                                    ; $40BC: $4E
    inc hl                                        ; $40BD: $23
    ld a, [hl]                                    ; $40BE: $7E
    or c                                          ; $40BF: $B1
    jp z, Jump_037_4189                           ; $40C0: $CA $89 $41

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
    jr nz, jr_037_40BC                            ; $40CD: $20 $ED

Jump_037_40CF:
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

jr_037_4105:
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
    jr nz, jr_037_4105                            ; $4140: $20 $C3

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


Jump_037_4189:
    inc hl                                        ; $4189: $23
    ld a, [hl+]                                   ; $418A: $2A
    push hl                                       ; $418B: $E5
    ld hl, $419C                                  ; $418C: $21 $9C $41
    and $07                                       ; $418F: $E6 $07
    add a                                         ; $4191: $87
    add l                                         ; $4192: $85
    jr nc, jr_037_4196                            ; $4193: $30 $01

    inc h                                         ; $4195: $24

jr_037_4196:
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

jr_037_41AD:
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
    jr nz, jr_037_41AD                            ; $41B8: $20 $F3

    jp Jump_037_40CF                              ; $41BA: $C3 $CF $40


    pop hl                                        ; $41BD: $E1
    ld a, [hl+]                                   ; $41BE: $2A
    ld c, [hl]                                    ; $41BF: $4E
    ld l, a                                       ; $41C0: $6F
    ld h, c                                       ; $41C1: $61
    jp Jump_037_40BC                              ; $41C2: $C3 $BC $40


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
    jp Jump_037_40BC                              ; $420B: $C3 $BC $40


    pop hl                                        ; $420E: $E1
    ld a, [hl+]                                   ; $420F: $2A
    ld c, a                                       ; $4210: $4F
    ld a, [$C32E]                                 ; $4211: $FA $2E $C3
    or c                                          ; $4214: $B1
    ld [$C32E], a                                 ; $4215: $EA $2E $C3
    jp Jump_037_40BC                              ; $4218: $C3 $BC $40


    pop hl                                        ; $421B: $E1
    ld a, [hl+]                                   ; $421C: $2A
    ld c, a                                       ; $421D: $4F
    ld a, [$C32E]                                 ; $421E: $FA $2E $C3
    and c                                         ; $4221: $A1
    ld [$C32E], a                                 ; $4222: $EA $2E $C3
    jp Jump_037_40BC                              ; $4225: $C3 $BC $40


    nop                                           ; $4228: $00
    adc b                                         ; $4229: $88
    jr c, jr_037_426E                             ; $422A: $38 $42

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

jr_037_426E:
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
    scf                                           ; $4358: $37
    nop                                           ; $4359: $00
    daa                                           ; $435A: $27
    ld [hl], $00                                  ; $435B: $36 $00
    ld h, a                                       ; $435D: $67
    jr z, jr_037_4360                             ; $435E: $28 $00

jr_037_4360:
    ld l, [hl]                                    ; $4360: $6E
    ld e, l                                       ; $4361: $5D
    nop                                           ; $4362: $00
    ld h, c                                       ; $4363: $61
    ld l, c                                       ; $4364: $69
    nop                                           ; $4365: $00
    inc l                                         ; $4366: $2C
    ld [hl], b                                    ; $4367: $70
    nop                                           ; $4368: $00
    ccf                                           ; $4369: $3F
    ld bc, $0100                                  ; $436A: $01 $00 $01
    cp d                                          ; $436D: $BA
    nop                                           ; $436E: $00
    ld a, c                                       ; $436F: $79
    ld a, h                                       ; $4370: $7C
    nop                                           ; $4371: $00
    add c                                         ; $4372: $81
    pop bc                                        ; $4373: $C1
    nop                                           ; $4374: $00
    xor c                                         ; $4375: $A9
    ld a, c                                       ; $4376: $79
    nop                                           ; $4377: $00
    ld c, [hl]                                    ; $4378: $4E
    ld bc, $0100                                  ; $4379: $01 $00 $01
    scf                                           ; $437C: $37
    nop                                           ; $437D: $00
    daa                                           ; $437E: $27
    ld [hl], $00                                  ; $437F: $36 $00
    ld h, a                                       ; $4381: $67
    jr z, jr_037_4384                             ; $4382: $28 $00

jr_037_4384:
    ld l, [hl]                                    ; $4384: $6E
    sbc c                                         ; $4385: $99
    nop                                           ; $4386: $00
    adc c                                         ; $4387: $89
    sub l                                         ; $4388: $95
    nop                                           ; $4389: $00
    cp [hl]                                       ; $438A: $BE
    pop bc                                        ; $438B: $C1
    nop                                           ; $438C: $00
    ld c, l                                       ; $438D: $4D
    ld bc, $0100                                  ; $438E: $01 $00 $01
    ld b, d                                       ; $4391: $42
    nop                                           ; $4392: $00
    ld c, l                                       ; $4393: $4D
    ld b, e                                       ; $4394: $43
    nop                                           ; $4395: $00
    ld c, b                                       ; $4396: $48
    dec hl                                        ; $4397: $2B
    nop                                           ; $4398: $00
    ld c, c                                       ; $4399: $49
    daa                                           ; $439A: $27
    nop                                           ; $439B: $00
    ld bc, $0001                                  ; $439C: $01 $01 $00
    ld bc, $0040                                  ; $439F: $01 $40 $00
    dec hl                                        ; $43A2: $2B
    ld d, b                                       ; $43A3: $50
    nop                                           ; $43A4: $00
    dec hl                                        ; $43A5: $2B
    dec l                                         ; $43A6: $2D
    nop                                           ; $43A7: $00
    ld c, d                                       ; $43A8: $4A
    ret z                                         ; $43A9: $C8

    nop                                           ; $43AA: $00
    ld d, b                                       ; $43AB: $50
    jr z, jr_037_43AE                             ; $43AC: $28 $00

jr_037_43AE:
    daa                                           ; $43AE: $27
    ld l, a                                       ; $43AF: $6F
    nop                                           ; $43B0: $00
    ld bc, $0001                                  ; $43B1: $01 $01 $00
    ld bc, $0037                                  ; $43B4: $01 $37 $00
    ld l, d                                       ; $43B7: $6A
    ld c, l                                       ; $43B8: $4D
    nop                                           ; $43B9: $00
    ld b, h                                       ; $43BA: $44
    ld [hl], b                                    ; $43BB: $70
    nop                                           ; $43BC: $00
    ccf                                           ; $43BD: $3F
    ret                                           ; $43BE: $C9


    nop                                           ; $43BF: $00
    ld bc, $0001                                  ; $43C0: $01 $01 $00
    ld bc, $0000                                  ; $43C3: $01 $00 $00
    inc bc                                        ; $43C6: $03
    nop                                           ; $43C7: $00
    nop                                           ; $43C8: $00
    inc bc                                        ; $43C9: $03
    nop                                           ; $43CA: $00
    nop                                           ; $43CB: $00
    inc bc                                        ; $43CC: $03
    nop                                           ; $43CD: $00
    nop                                           ; $43CE: $00
    inc bc                                        ; $43CF: $03
    nop                                           ; $43D0: $00
    nop                                           ; $43D1: $00
    dec b                                         ; $43D2: $05
    add b                                         ; $43D3: $80
    nop                                           ; $43D4: $00
    nop                                           ; $43D5: $00
    ld [bc], a                                    ; $43D6: $02
    nop                                           ; $43D7: $00
    nop                                           ; $43D8: $00
    ld bc, $43D0                                  ; $43D9: $01 $D0 $43
    ld [bc], a                                    ; $43DC: $02
    ld de, $6E03                                  ; $43DD: $11 $03 $6E
    ld bc, $4D05                                  ; $43E0: $01 $05 $4D
    ld bc, $2B07                                  ; $43E3: $01 $07 $2B
    nop                                           ; $43E6: $00
    ld l, b                                       ; $43E7: $68
    ld [$6A10], sp                                ; $43E8: $08 $10 $6A
    add hl, bc                                    ; $43EB: $09
    db $10                                        ; $43EC: $10
    ld c, d                                       ; $43ED: $4A
    ld a, [bc]                                    ; $43EE: $0A
    ld de, $360B                                  ; $43EF: $11 $0B $36
    nop                                           ; $43F2: $00
    ccf                                           ; $43F3: $3F
    cp d                                          ; $43F4: $BA
    nop                                           ; $43F5: $00
    ld a, c                                       ; $43F6: $79
    ld a, h                                       ; $43F7: $7C
    nop                                           ; $43F8: $00
    add c                                         ; $43F9: $81
    pop bc                                        ; $43FA: $C1
    nop                                           ; $43FB: $00
    xor c                                         ; $43FC: $A9
    ld a, c                                       ; $43FD: $79
    nop                                           ; $43FE: $00
    ld c, [hl]                                    ; $43FF: $4E
    ld bc, $0201                                  ; $4400: $01 $01 $02
    inc bc                                        ; $4403: $03
    db $10                                        ; $4404: $10
    ld l, [hl]                                    ; $4405: $6E
    sbc c                                         ; $4406: $99
    nop                                           ; $4407: $00
    adc c                                         ; $4408: $89
    sub l                                         ; $4409: $95
    nop                                           ; $440A: $00
    cp [hl]                                       ; $440B: $BE
    pop bc                                        ; $440C: $C1
    nop                                           ; $440D: $00
    ld c, l                                       ; $440E: $4D
    ld bc, $0100                                  ; $440F: $01 $00 $01
    rlca                                          ; $4412: $07
    db $10                                        ; $4413: $10
    ld c, l                                       ; $4414: $4D
    ld b, e                                       ; $4415: $43
    nop                                           ; $4416: $00
    ld c, b                                       ; $4417: $48
    dec hl                                        ; $4418: $2B
    nop                                           ; $4419: $00
    ld c, c                                       ; $441A: $49
    daa                                           ; $441B: $27
    ld bc, $0D0C                                  ; $441C: $01 $0C $0D
    ld de, $2D0E                                  ; $441F: $11 $0E $2D
    nop                                           ; $4422: $00
    ld d, c                                       ; $4423: $51
    ld bc, $0F01                                  ; $4424: $01 $01 $0F
    db $10                                        ; $4427: $10
    db $10                                        ; $4428: $10
    scf                                           ; $4429: $37
    ld l, d                                       ; $442A: $6A
    nop                                           ; $442B: $00
    ld c, l                                       ; $442C: $4D
    ld b, h                                       ; $442D: $44
    nop                                           ; $442E: $00
    ld [hl], b                                    ; $442F: $70
    ccf                                           ; $4430: $3F
    nop                                           ; $4431: $00
    ret                                           ; $4432: $C9


    ld bc, $0100                                  ; $4433: $01 $00 $01
    nop                                           ; $4436: $00
    nop                                           ; $4437: $00
    inc bc                                        ; $4438: $03
    nop                                           ; $4439: $00
    nop                                           ; $443A: $00
    inc bc                                        ; $443B: $03
    nop                                           ; $443C: $00
    nop                                           ; $443D: $00
    inc bc                                        ; $443E: $03
    nop                                           ; $443F: $00
    nop                                           ; $4440: $00
    inc bc                                        ; $4441: $03
    nop                                           ; $4442: $00
    nop                                           ; $4443: $00
    dec b                                         ; $4444: $05
    add b                                         ; $4445: $80
    nop                                           ; $4446: $00
    nop                                           ; $4447: $00
    ld [bc], a                                    ; $4448: $02
    nop                                           ; $4449: $00
    nop                                           ; $444A: $00
    ld bc, $4442                                  ; $444B: $01 $42 $44
    ld bc, $0100                                  ; $444E: $01 $00 $01
    ld e, a                                       ; $4451: $5F
    nop                                           ; $4452: $00
    ld b, d                                       ; $4453: $42
    inc l                                         ; $4454: $2C
    nop                                           ; $4455: $00
    ld c, l                                       ; $4456: $4D
    ld b, b                                       ; $4457: $40
    nop                                           ; $4458: $00
    dec hl                                        ; $4459: $2B
    ld l, b                                       ; $445A: $68
    nop                                           ; $445B: $00
    ld l, [hl]                                    ; $445C: $6E
    ld bc, $0100                                  ; $445D: $01 $00 $01
    ld b, d                                       ; $4460: $42
    nop                                           ; $4461: $00
    ld c, d                                       ; $4462: $4A
    daa                                           ; $4463: $27
    nop                                           ; $4464: $00
    ld l, e                                       ; $4465: $6B
    ccf                                           ; $4466: $3F
    nop                                           ; $4467: $00
    add d                                         ; $4468: $82
    cp h                                          ; $4469: $BC
    nop                                           ; $446A: $00
    and l                                         ; $446B: $A5
    sub l                                         ; $446C: $95
    nop                                           ; $446D: $00
    cp [hl]                                       ; $446E: $BE
    pop bc                                        ; $446F: $C1
    nop                                           ; $4470: $00
    ret                                           ; $4471: $C9


    ld bc, $0100                                  ; $4472: $01 $00 $01
    ld bc, $3600                                  ; $4475: $01 $00 $36
    dec hl                                        ; $4478: $2B
    nop                                           ; $4479: $00
    ld [hl], $E0                                  ; $447A: $36 $E0
    nop                                           ; $447C: $00
    ldh [rSB], a                                  ; $447D: $E0 $01
    nop                                           ; $447F: $00
    ld bc, $0001                                  ; $4480: $01 $01 $00
    ld bc, $0000                                  ; $4483: $01 $00 $00
    nop                                           ; $4486: $00
    ld bc, $4000                                  ; $4487: $01 $00 $40
    dec hl                                        ; $448A: $2B
    nop                                           ; $448B: $00
    ld l, b                                       ; $448C: $68
    jr nc, jr_037_448F                            ; $448D: $30 $00

jr_037_448F:
    ld b, c                                       ; $448F: $41
    ld h, h                                       ; $4490: $64
    nop                                           ; $4491: $00
    scf                                           ; $4492: $37
    ld sp, $4200                                  ; $4493: $31 $00 $42
    ld bc, $0100                                  ; $4496: $01 $00 $01
    ld bc, $A900                                  ; $4499: $01 $00 $A9
    ld a, d                                       ; $449C: $7A
    nop                                           ; $449D: $00
    adc e                                         ; $449E: $8B
    ld a, d                                       ; $449F: $7A
    nop                                           ; $44A0: $00
    ld [hl], $42                                  ; $44A1: $36 $42
    nop                                           ; $44A3: $00
    ld [hl], $5D                                  ; $44A4: $36 $5D
    nop                                           ; $44A6: $00
    daa                                           ; $44A7: $27
    ret z                                         ; $44A8: $C8

    nop                                           ; $44A9: $00
    ld bc, $0001                                  ; $44AA: $01 $01 $00
    sbc c                                         ; $44AD: $99
    adc c                                         ; $44AE: $89
    nop                                           ; $44AF: $00
    sub l                                         ; $44B0: $95
    cp [hl]                                       ; $44B1: $BE
    nop                                           ; $44B2: $00
    pop bc                                        ; $44B3: $C1
    ld c, l                                       ; $44B4: $4D
    nop                                           ; $44B5: $00
    inc l                                         ; $44B6: $2C
    ld b, b                                       ; $44B7: $40
    nop                                           ; $44B8: $00
    ld l, [hl]                                    ; $44B9: $6E
    ld bc, $0100                                  ; $44BA: $01 $00 $01
    cpl                                           ; $44BD: $2F
    nop                                           ; $44BE: $00
    ld l, l                                       ; $44BF: $6D
    ld [hl], $00                                  ; $44C0: $36 $00
    ld b, d                                       ; $44C2: $42
    ld [hl], $00                                  ; $44C3: $36 $00
    ld e, l                                       ; $44C5: $5D
    jr z, jr_037_44C8                             ; $44C6: $28 $00

jr_037_44C8:
    ld c, l                                       ; $44C8: $4D
    ld b, h                                       ; $44C9: $44
    nop                                           ; $44CA: $00
    ld [hl], b                                    ; $44CB: $70
    ccf                                           ; $44CC: $3F
    nop                                           ; $44CD: $00
    ldh [rP1], a                                  ; $44CE: $E0 $00
    nop                                           ; $44D0: $00
    inc bc                                        ; $44D1: $03
    nop                                           ; $44D2: $00
    nop                                           ; $44D3: $00
    inc bc                                        ; $44D4: $03
    nop                                           ; $44D5: $00
    nop                                           ; $44D6: $00
    inc bc                                        ; $44D7: $03
    nop                                           ; $44D8: $00
    nop                                           ; $44D9: $00
    inc bc                                        ; $44DA: $03
    nop                                           ; $44DB: $00
    nop                                           ; $44DC: $00
    dec b                                         ; $44DD: $05
    add b                                         ; $44DE: $80
    nop                                           ; $44DF: $00
    nop                                           ; $44E0: $00
    ld [bc], a                                    ; $44E1: $02
    nop                                           ; $44E2: $00
    nop                                           ; $44E3: $00
    ld bc, $44DB                                  ; $44E4: $01 $DB $44
    ld bc, $2401                                  ; $44E7: $01 $01 $24
    dec h                                         ; $44EA: $25
    db $10                                        ; $44EB: $10
    ld c, l                                       ; $44EC: $4D
    inc b                                         ; $44ED: $04
    db $10                                        ; $44EE: $10
    ld l, [hl]                                    ; $44EF: $6E
    rlca                                          ; $44F0: $07
    db $10                                        ; $44F1: $10
    ld c, d                                       ; $44F2: $4A
    add hl, de                                    ; $44F3: $19
    db $10                                        ; $44F4: $10
    ld l, e                                       ; $44F5: $6B
    ccf                                           ; $44F6: $3F
    nop                                           ; $44F7: $00
    ld bc, $0001                                  ; $44F8: $01 $01 $00
    add d                                         ; $44FB: $82
    cp h                                          ; $44FC: $BC
    nop                                           ; $44FD: $00
    and l                                         ; $44FE: $A5
    sub l                                         ; $44FF: $95
    nop                                           ; $4500: $00
    cp [hl]                                       ; $4501: $BE
    pop bc                                        ; $4502: $C1
    nop                                           ; $4503: $00
    ld b, h                                       ; $4504: $44
    ld [hl], b                                    ; $4505: $70
    nop                                           ; $4506: $00
    ccf                                           ; $4507: $3F
    jr nc, jr_037_450A                            ; $4508: $30 $00

jr_037_450A:
    ret z                                         ; $450A: $C8

    ld bc, $0100                                  ; $450B: $01 $00 $01
    inc b                                         ; $450E: $04
    db $10                                        ; $450F: $10
    jr nc, jr_037_4538                            ; $4510: $30 $26

    db $10                                        ; $4512: $10
    scf                                           ; $4513: $37
    ld sp, $6A00                                  ; $4514: $31 $00 $6A
    ccf                                           ; $4517: $3F
    nop                                           ; $4518: $00
    ld h, b                                       ; $4519: $60
    ld c, d                                       ; $451A: $4A
    nop                                           ; $451B: $00
    ld bc, $0101                                  ; $451C: $01 $01 $01
    daa                                           ; $451F: $27
    jr z, jr_037_4532                             ; $4520: $28 $10

    sla a                                         ; $4522: $CB $27
    ld de, $CB28                                  ; $4524: $11 $28 $CB
    ld bc, $2701                                  ; $4527: $01 $01 $27
    ld de, $CB28                                  ; $452A: $11 $28 $CB
    nop                                           ; $452D: $00
    rlc b                                         ; $452E: $CB $00
    nop                                           ; $4530: $00
    nop                                           ; $4531: $00

jr_037_4532:
    ld bc, $0100                                  ; $4532: $01 $00 $01
    sbc c                                         ; $4535: $99
    nop                                           ; $4536: $00
    adc c                                         ; $4537: $89

jr_037_4538:
    sub l                                         ; $4538: $95
    nop                                           ; $4539: $00
    cp [hl]                                       ; $453A: $BE
    pop bc                                        ; $453B: $C1
    nop                                           ; $453C: $00
    ld c, l                                       ; $453D: $4D
    add hl, hl                                    ; $453E: $29
    ld de, $6E0C                                  ; $453F: $11 $0C $6E
    nop                                           ; $4542: $00
    ld bc, $112A                                  ; $4543: $01 $2A $11
    dec hl                                        ; $4546: $2B
    ld [hl], $00                                  ; $4547: $36 $00
    ld b, d                                       ; $4549: $42
    ld [hl], $00                                  ; $454A: $36 $00
    ld e, l                                       ; $454C: $5D
    jr z, jr_037_454F                             ; $454D: $28 $00

jr_037_454F:
    ld c, l                                       ; $454F: $4D
    ld b, h                                       ; $4550: $44
    nop                                           ; $4551: $00
    ld [hl], b                                    ; $4552: $70
    ccf                                           ; $4553: $3F
    nop                                           ; $4554: $00
    ldh [rP1], a                                  ; $4555: $E0 $00
    nop                                           ; $4557: $00
    inc bc                                        ; $4558: $03
    nop                                           ; $4559: $00
    nop                                           ; $455A: $00
    inc bc                                        ; $455B: $03
    nop                                           ; $455C: $00
    nop                                           ; $455D: $00
    inc bc                                        ; $455E: $03
    nop                                           ; $455F: $00
    nop                                           ; $4560: $00
    inc bc                                        ; $4561: $03
    nop                                           ; $4562: $00
    nop                                           ; $4563: $00
    dec b                                         ; $4564: $05
    add b                                         ; $4565: $80
    nop                                           ; $4566: $00
    nop                                           ; $4567: $00
    ld [bc], a                                    ; $4568: $02
    nop                                           ; $4569: $00
    nop                                           ; $456A: $00
    ld bc, $4562                                  ; $456B: $01 $62 $45
    cpl                                           ; $456E: $2F
    nop                                           ; $456F: $00
    jr z, jr_037_45A8                             ; $4570: $28 $36

    nop                                           ; $4572: $00
    ld b, d                                       ; $4573: $42
    ret z                                         ; $4574: $C8

    nop                                           ; $4575: $00
    scf                                           ; $4576: $37
    daa                                           ; $4577: $27
    nop                                           ; $4578: $00
    ld [hl], $67                                  ; $4579: $36 $67
    nop                                           ; $457B: $00
    jr z, jr_037_45CB                             ; $457C: $28 $4D

    nop                                           ; $457E: $00
    ld bc, $0001                                  ; $457F: $01 $01 $00
    ld b, b                                       ; $4582: $40
    dec hl                                        ; $4583: $2B
    nop                                           ; $4584: $00
    ld l, b                                       ; $4585: $68
    ld l, [hl]                                    ; $4586: $6E
    nop                                           ; $4587: $00
    ld b, d                                       ; $4588: $42
    ld c, d                                       ; $4589: $4A
    nop                                           ; $458A: $00
    daa                                           ; $458B: $27
    ld l, e                                       ; $458C: $6B
    nop                                           ; $458D: $00
    ccf                                           ; $458E: $3F
    ld bc, $0100                                  ; $458F: $01 $00 $01
    adc c                                         ; $4592: $89
    nop                                           ; $4593: $00
    ld a, a                                       ; $4594: $7F
    halt                                          ; $4595: $76
    nop                                           ; $4596: $00
    and l                                         ; $4597: $A5
    ld c, [hl]                                    ; $4598: $4E
    nop                                           ; $4599: $00
    sbc c                                         ; $459A: $99
    adc c                                         ; $459B: $89
    nop                                           ; $459C: $00
    sub l                                         ; $459D: $95
    cp [hl]                                       ; $459E: $BE
    nop                                           ; $459F: $00
    pop bc                                        ; $45A0: $C1
    ld c, d                                       ; $45A1: $4A
    nop                                           ; $45A2: $00
    ld bc, $0001                                  ; $45A3: $01 $01 $00
    cpl                                           ; $45A6: $2F
    ld l, l                                       ; $45A7: $6D

jr_037_45A8:
    nop                                           ; $45A8: $00
    dec [hl]                                      ; $45A9: $35
    ld l, e                                       ; $45AA: $6B
    nop                                           ; $45AB: $00
    ccf                                           ; $45AC: $3F
    ret z                                         ; $45AD: $C8

    nop                                           ; $45AE: $00
    ld [hl], $3D                                  ; $45AF: $36 $3D
    nop                                           ; $45B1: $00
    ld l, a                                       ; $45B2: $6F
    ld l, [hl]                                    ; $45B3: $6E
    nop                                           ; $45B4: $00
    ld bc, $0049                                  ; $45B5: $01 $49 $00
    ld a, [hl+]                                   ; $45B8: $2A
    scf                                           ; $45B9: $37
    nop                                           ; $45BA: $00
    ccf                                           ; $45BB: $3F
    ld h, b                                       ; $45BC: $60
    nop                                           ; $45BD: $00
    ld c, d                                       ; $45BE: $4A
    scf                                           ; $45BF: $37
    nop                                           ; $45C0: $00
    daa                                           ; $45C1: $27
    ld [hl], $00                                  ; $45C2: $36 $00
    ld h, a                                       ; $45C4: $67
    jr z, jr_037_45C7                             ; $45C5: $28 $00

jr_037_45C7:
    ld l, [hl]                                    ; $45C7: $6E
    ld bc, $4100                                  ; $45C8: $01 $00 $41

jr_037_45CB:
    dec hl                                        ; $45CB: $2B
    nop                                           ; $45CC: $00
    jr z, jr_037_461C                             ; $45CD: $28 $4D

    nop                                           ; $45CF: $00
    ld b, a                                       ; $45D0: $47
    ld h, $00                                     ; $45D1: $26 $00
    ld [hl], b                                    ; $45D3: $70
    ccf                                           ; $45D4: $3F
    nop                                           ; $45D5: $00
    ret                                           ; $45D6: $C9


    ld bc, $0100                                  ; $45D7: $01 $00 $01
    nop                                           ; $45DA: $00
    nop                                           ; $45DB: $00
    inc bc                                        ; $45DC: $03
    nop                                           ; $45DD: $00
    nop                                           ; $45DE: $00
    inc bc                                        ; $45DF: $03
    nop                                           ; $45E0: $00
    nop                                           ; $45E1: $00
    inc bc                                        ; $45E2: $03
    nop                                           ; $45E3: $00
    nop                                           ; $45E4: $00
    inc bc                                        ; $45E5: $03
    nop                                           ; $45E6: $00
    nop                                           ; $45E7: $00
    dec b                                         ; $45E8: $05
    add b                                         ; $45E9: $80
    nop                                           ; $45EA: $00
    nop                                           ; $45EB: $00
    ld [bc], a                                    ; $45EC: $02
    nop                                           ; $45ED: $00
    nop                                           ; $45EE: $00
    ld bc, $45E6                                  ; $45EF: $01 $E6 $45
    ld bc, $2F00                                  ; $45F2: $01 $00 $2F
    jr z, jr_037_45F7                             ; $45F5: $28 $00

jr_037_45F7:
    ld [hl], $42                                  ; $45F7: $36 $42
    nop                                           ; $45F9: $00
    ret z                                         ; $45FA: $C8

    ld [bc], a                                    ; $45FB: $02
    ld de, $4D03                                  ; $45FC: $11 $03 $4D
    ld bc, $6E04                                  ; $45FF: $01 $04 $6E
    nop                                           ; $4602: $00
    ld bc, $0101                                  ; $4603: $01 $01 $01
    rlca                                          ; $4606: $07
    ld c, d                                       ; $4607: $4A
    ld bc, $6B19                                  ; $4608: $01 $19 $6B
    nop                                           ; $460B: $00
    ccf                                           ; $460C: $3F
    adc c                                         ; $460D: $89
    nop                                           ; $460E: $00
    ld a, a                                       ; $460F: $7F
    halt                                          ; $4610: $76
    nop                                           ; $4611: $00
    and l                                         ; $4612: $A5
    ld c, [hl]                                    ; $4613: $4E
    nop                                           ; $4614: $00
    ld bc, $0001                                  ; $4615: $01 $01 $00
    sbc c                                         ; $4618: $99
    adc c                                         ; $4619: $89
    nop                                           ; $461A: $00
    sub l                                         ; $461B: $95

jr_037_461C:
    cp [hl]                                       ; $461C: $BE
    nop                                           ; $461D: $00
    pop bc                                        ; $461E: $C1
    ld c, d                                       ; $461F: $4A
    nop                                           ; $4620: $00
    ld h, h                                       ; $4621: $64
    ld [hl], b                                    ; $4622: $70
    nop                                           ; $4623: $00
    ld b, d                                       ; $4624: $42
    ld bc, $0100                                  ; $4625: $01 $00 $01
    ld bc, $0100                                  ; $4628: $01 $00 $01
    ld a, [hl+]                                   ; $462B: $2A
    ld de, $352B                                  ; $462C: $11 $2B $35
    nop                                           ; $462F: $00
    ld l, e                                       ; $4630: $6B
    ccf                                           ; $4631: $3F
    ld bc, $3332                                  ; $4632: $01 $32 $33
    db $10                                        ; $4635: $10
    ld l, [hl]                                    ; $4636: $6E
    ld bc, $0100                                  ; $4637: $01 $00 $01
    ld bc, $3401                                  ; $463A: $01 $01 $34
    dec [hl]                                      ; $463D: $35
    db $10                                        ; $463E: $10
    scf                                           ; $463F: $37
    ld l, d                                       ; $4640: $6A
    nop                                           ; $4641: $00
    ccf                                           ; $4642: $3F
    ld h, b                                       ; $4643: $60
    nop                                           ; $4644: $00
    ld c, d                                       ; $4645: $4A
    ld [bc], a                                    ; $4646: $02
    ld de, $6E03                                  ; $4647: $11 $03 $6E
    nop                                           ; $464A: $00
    ld bc, $0001                                  ; $464B: $01 $01 $00
    ld bc, $101A                                  ; $464E: $01 $1A $10
    jr z, jr_037_46A0                             ; $4651: $28 $4D

    nop                                           ; $4653: $00
    ld b, a                                       ; $4654: $47
    ld h, $00                                     ; $4655: $26 $00
    ld [hl], b                                    ; $4657: $70
    ccf                                           ; $4658: $3F
    nop                                           ; $4659: $00
    ret                                           ; $465A: $C9


    ld bc, $0100                                  ; $465B: $01 $00 $01
    nop                                           ; $465E: $00
    nop                                           ; $465F: $00
    inc bc                                        ; $4660: $03
    nop                                           ; $4661: $00
    nop                                           ; $4662: $00
    inc bc                                        ; $4663: $03
    nop                                           ; $4664: $00
    nop                                           ; $4665: $00
    inc bc                                        ; $4666: $03
    nop                                           ; $4667: $00
    nop                                           ; $4668: $00
    inc bc                                        ; $4669: $03
    nop                                           ; $466A: $00
    nop                                           ; $466B: $00
    dec b                                         ; $466C: $05
    add b                                         ; $466D: $80
    nop                                           ; $466E: $00
    nop                                           ; $466F: $00
    ld [bc], a                                    ; $4670: $02
    nop                                           ; $4671: $00
    nop                                           ; $4672: $00
    ld bc, $466A                                  ; $4673: $01 $6A $46
    ld bc, $8200                                  ; $4676: $01 $00 $82
    cp h                                          ; $4679: $BC
    nop                                           ; $467A: $00
    and l                                         ; $467B: $A5
    sub l                                         ; $467C: $95
    nop                                           ; $467D: $00
    cp [hl]                                       ; $467E: $BE
    pop bc                                        ; $467F: $C1
    nop                                           ; $4680: $00
    ld l, [hl]                                    ; $4681: $6E
    cpl                                           ; $4682: $2F
    nop                                           ; $4683: $00
    add hl, hl                                    ; $4684: $29
    ld l, d                                       ; $4685: $6A
    nop                                           ; $4686: $00
    ld bc, $0001                                  ; $4687: $01 $01 $00

jr_037_468A:
    ld b, b                                       ; $468A: $40
    dec hl                                        ; $468B: $2B
    nop                                           ; $468C: $00
    ld l, b                                       ; $468D: $68
    ld l, [hl]                                    ; $468E: $6E
    nop                                           ; $468F: $00
    ld b, d                                       ; $4690: $42
    ld c, d                                       ; $4691: $4A
    nop                                           ; $4692: $00
    daa                                           ; $4693: $27
    ld l, e                                       ; $4694: $6B
    nop                                           ; $4695: $00
    ccf                                           ; $4696: $3F
    ld bc, $0100                                  ; $4697: $01 $00 $01
    or d                                          ; $469A: $B2
    nop                                           ; $469B: $00
    add d                                         ; $469C: $82
    adc c                                         ; $469D: $89
    nop                                           ; $469E: $00
    sub l                                         ; $469F: $95

jr_037_46A0:
    halt                                          ; $46A0: $76
    nop                                           ; $46A1: $00
    or c                                          ; $46A2: $B1
    ld b, h                                       ; $46A3: $44
    nop                                           ; $46A4: $00
    ld [hl], b                                    ; $46A5: $70
    ccf                                           ; $46A6: $3F
    nop                                           ; $46A7: $00
    jr nc, jr_037_468A                            ; $46A8: $30 $E0

    nop                                           ; $46AA: $00
    ldh [rP1], a                                  ; $46AB: $E0 $00
    nop                                           ; $46AD: $00
    nop                                           ; $46AE: $00
    ld b, b                                       ; $46AF: $40
    nop                                           ; $46B0: $00
    dec hl                                        ; $46B1: $2B
    ld l, b                                       ; $46B2: $68
    nop                                           ; $46B3: $00
    ld l, [hl]                                    ; $46B4: $6E
    jr z, jr_037_46B7                             ; $46B5: $28 $00

jr_037_46B7:
    ld e, l                                       ; $46B7: $5D
    dec l                                         ; $46B8: $2D
    nop                                           ; $46B9: $00
    ld b, c                                       ; $46BA: $41
    dec hl                                        ; $46BB: $2B
    nop                                           ; $46BC: $00
    add hl, hl                                    ; $46BD: $29
    inc a                                         ; $46BE: $3C
    nop                                           ; $46BF: $00
    ld bc, $0001                                  ; $46C0: $01 $01 $00
    ld bc, $0082                                  ; $46C3: $01 $82 $00
    cp h                                          ; $46C6: $BC
    and l                                         ; $46C7: $A5
    nop                                           ; $46C8: $00
    sub l                                         ; $46C9: $95
    cp [hl]                                       ; $46CA: $BE
    nop                                           ; $46CB: $00
    pop bc                                        ; $46CC: $C1
    ld c, d                                       ; $46CD: $4A
    nop                                           ; $46CE: $00
    ld bc, $0001                                  ; $46CF: $01 $01 $00
    ld bc, $0001                                  ; $46D2: $01 $01 $00
    scf                                           ; $46D5: $37
    daa                                           ; $46D6: $27
    nop                                           ; $46D7: $00
    ld [hl], $67                                  ; $46D8: $36 $67
    nop                                           ; $46DA: $00
    jr z, jr_037_474B                             ; $46DB: $28 $6E

    nop                                           ; $46DD: $00
    ld b, e                                       ; $46DE: $43
    ld l, b                                       ; $46DF: $68
    nop                                           ; $46E0: $00
    ld l, e                                       ; $46E1: $6B
    ld b, d                                       ; $46E2: $42
    nop                                           ; $46E3: $00
    ld bc, $0001                                  ; $46E4: $01 $01 $00
    ld [hl], $5D                                  ; $46E7: $36 $5D
    nop                                           ; $46E9: $00
    jr z, jr_037_4739                             ; $46EA: $28 $4D

    nop                                           ; $46EC: $00
    ld b, a                                       ; $46ED: $47
    ld h, $00                                     ; $46EE: $26 $00
    ld [hl], b                                    ; $46F0: $70
    ccf                                           ; $46F1: $3F
    nop                                           ; $46F2: $00
    ldh [$FFE0], a                                ; $46F3: $E0 $E0
    nop                                           ; $46F5: $00
    ld bc, $0000                                  ; $46F6: $01 $00 $00
    inc bc                                        ; $46F9: $03
    nop                                           ; $46FA: $00
    nop                                           ; $46FB: $00
    inc bc                                        ; $46FC: $03
    nop                                           ; $46FD: $00
    nop                                           ; $46FE: $00
    inc bc                                        ; $46FF: $03
    nop                                           ; $4700: $00
    nop                                           ; $4701: $00
    inc bc                                        ; $4702: $03
    nop                                           ; $4703: $00
    nop                                           ; $4704: $00
    dec b                                         ; $4705: $05
    add b                                         ; $4706: $80
    nop                                           ; $4707: $00
    nop                                           ; $4708: $00
    ld [bc], a                                    ; $4709: $02
    nop                                           ; $470A: $00
    nop                                           ; $470B: $00
    ld bc, $4703                                  ; $470C: $01 $03 $47
    add d                                         ; $470F: $82
    nop                                           ; $4710: $00
    cp h                                          ; $4711: $BC
    and l                                         ; $4712: $A5
    nop                                           ; $4713: $00
    sub l                                         ; $4714: $95
    cp [hl]                                       ; $4715: $BE
    nop                                           ; $4716: $00
    pop bc                                        ; $4717: $C1
    ld l, [hl]                                    ; $4718: $6E
    ld bc, $2938                                  ; $4719: $01 $38 $29
    nop                                           ; $471C: $00
    ld l, d                                       ; $471D: $6A
    inc b                                         ; $471E: $04
    db $10                                        ; $471F: $10
    ld l, [hl]                                    ; $4720: $6E
    ld bc, $0201                                  ; $4721: $01 $01 $02
    inc bc                                        ; $4724: $03
    db $10                                        ; $4725: $10
    ld c, d                                       ; $4726: $4A
    ld h, h                                       ; $4727: $64
    nop                                           ; $4728: $00
    ld l, c                                       ; $4729: $69
    rlca                                          ; $472A: $07
    db $10                                        ; $472B: $10
    ld c, d                                       ; $472C: $4A
    add hl, de                                    ; $472D: $19
    db $10                                        ; $472E: $10
    ld l, e                                       ; $472F: $6B
    ccf                                           ; $4730: $3F
    nop                                           ; $4731: $00
    ld bc, $00B2                                  ; $4732: $01 $B2 $00
    add d                                         ; $4735: $82
    adc c                                         ; $4736: $89
    nop                                           ; $4737: $00
    sub l                                         ; $4738: $95

jr_037_4739:
    halt                                          ; $4739: $76
    nop                                           ; $473A: $00
    or c                                          ; $473B: $B1
    ld b, h                                       ; $473C: $44
    nop                                           ; $473D: $00
    ld [hl], b                                    ; $473E: $70
    ccf                                           ; $473F: $3F
    nop                                           ; $4740: $00
    jr nc, @-$1E                                  ; $4741: $30 $E0

    nop                                           ; $4743: $00
    ldh [rP1], a                                  ; $4744: $E0 $00
    nop                                           ; $4746: $00
    nop                                           ; $4747: $00
    ld bc, $0100                                  ; $4748: $01 $00 $01

jr_037_474B:
    inc b                                         ; $474B: $04
    db $10                                        ; $474C: $10
    ld l, [hl]                                    ; $474D: $6E
    jr z, jr_037_4750                             ; $474E: $28 $00

jr_037_4750:
    ld e, l                                       ; $4750: $5D
    dec l                                         ; $4751: $2D
    ld bc, $29A3                                  ; $4752: $01 $A3 $29
    nop                                           ; $4755: $00
    inc a                                         ; $4756: $3C
    ld bc, $0100                                  ; $4757: $01 $00 $01
    ld bc, $3C01                                  ; $475A: $01 $01 $3C
    dec a                                         ; $475D: $3D
    db $10                                        ; $475E: $10
    ret z                                         ; $475F: $C8

    add d                                         ; $4760: $82
    nop                                           ; $4761: $00
    cp h                                          ; $4762: $BC
    and l                                         ; $4763: $A5
    nop                                           ; $4764: $00
    sub l                                         ; $4765: $95
    cp [hl]                                       ; $4766: $BE
    nop                                           ; $4767: $00
    pop bc                                        ; $4768: $C1
    ld c, d                                       ; $4769: $4A
    nop                                           ; $476A: $00
    ld bc, $0101                                  ; $476B: $01 $01 $01
    ld [bc], a                                    ; $476E: $02
    inc bc                                        ; $476F: $03
    db $10                                        ; $4770: $10
    ld l, [hl]                                    ; $4771: $6E
    and h                                         ; $4772: $A4
    db $10                                        ; $4773: $10
    ld l, b                                       ; $4774: $68
    ld l, e                                       ; $4775: $6B
    nop                                           ; $4776: $00
    ld b, d                                       ; $4777: $42
    ld [hl], $00                                  ; $4778: $36 $00
    ld e, l                                       ; $477A: $5D
    jr z, jr_037_477D                             ; $477B: $28 $00

jr_037_477D:
    ld bc, $0001                                  ; $477D: $01 $01 $00
    ld bc, $004D                                  ; $4780: $01 $4D $00
    ld b, a                                       ; $4783: $47
    ld h, $00                                     ; $4784: $26 $00
    ld [hl], b                                    ; $4786: $70
    ccf                                           ; $4787: $3F
    nop                                           ; $4788: $00
    ldh [$FFE0], a                                ; $4789: $E0 $E0
    nop                                           ; $478B: $00
    ld bc, $0001                                  ; $478C: $01 $01 $00
    ld bc, $0000                                  ; $478F: $01 $00 $00
    inc bc                                        ; $4792: $03
    nop                                           ; $4793: $00
    nop                                           ; $4794: $00
    inc bc                                        ; $4795: $03
    nop                                           ; $4796: $00
    nop                                           ; $4797: $00
    inc bc                                        ; $4798: $03
    nop                                           ; $4799: $00
    nop                                           ; $479A: $00
    inc bc                                        ; $479B: $03
    nop                                           ; $479C: $00
    nop                                           ; $479D: $00
    dec b                                         ; $479E: $05
    add b                                         ; $479F: $80
    nop                                           ; $47A0: $00
    nop                                           ; $47A1: $00
    ld [bc], a                                    ; $47A2: $02
    nop                                           ; $47A3: $00
    nop                                           ; $47A4: $00
    ld bc, $479C                                  ; $47A5: $01 $9C $47
    ld bc, $3700                                  ; $47A8: $01 $00 $37
    daa                                           ; $47AB: $27
    nop                                           ; $47AC: $00
    ld [hl], $67                                  ; $47AD: $36 $67
    nop                                           ; $47AF: $00
    jr z, jr_037_47FF                             ; $47B0: $28 $4D

    nop                                           ; $47B2: $00
    ld b, b                                       ; $47B3: $40
    dec hl                                        ; $47B4: $2B
    nop                                           ; $47B5: $00
    ld l, b                                       ; $47B6: $68
    ld l, [hl]                                    ; $47B7: $6E
    nop                                           ; $47B8: $00
    ld bc, $002B                                  ; $47B9: $01 $2B $00
    ld l, c                                       ; $47BC: $69
    ld b, d                                       ; $47BD: $42
    nop                                           ; $47BE: $00
    ret z                                         ; $47BF: $C8

    add a                                         ; $47C0: $87
    nop                                           ; $47C1: $00
    ld a, c                                       ; $47C2: $79
    and l                                         ; $47C3: $A5
    nop                                           ; $47C4: $00
    sub l                                         ; $47C5: $95
    cp [hl]                                       ; $47C6: $BE
    nop                                           ; $47C7: $00
    pop bc                                        ; $47C8: $C1
    ld c, l                                       ; $47C9: $4D
    nop                                           ; $47CA: $00

jr_037_47CB:
    ld bc, $0001                                  ; $47CB: $01 $01 $00
    ld [hl], $6B                                  ; $47CE: $36 $6B
    nop                                           ; $47D0: $00
    daa                                           ; $47D1: $27
    dec hl                                        ; $47D2: $2B
    nop                                           ; $47D3: $00
    ld l, a                                       ; $47D4: $6F
    ld c, d                                       ; $47D5: $4A
    nop                                           ; $47D6: $00
    ld c, c                                       ; $47D7: $49
    ld [hl], b                                    ; $47D8: $70
    nop                                           ; $47D9: $00
    ccf                                           ; $47DA: $3F
    ld bc, $0100                                  ; $47DB: $01 $00 $01
    ld bc, $0100                                  ; $47DE: $01 $00 $01
    sub d                                         ; $47E1: $92
    nop                                           ; $47E2: $00
    halt                                          ; $47E3: $76
    sub c                                         ; $47E4: $91
    nop                                           ; $47E5: $00
    adc c                                         ; $47E6: $89
    ld b, h                                       ; $47E7: $44
    nop                                           ; $47E8: $00
    jr nc, jr_037_47CB                            ; $47E9: $30 $E0

    nop                                           ; $47EB: $00
    ldh [rSB], a                                  ; $47EC: $E0 $01
    nop                                           ; $47EE: $00
    ld bc, $0000                                  ; $47EF: $01 $00 $00
    nop                                           ; $47F2: $00
    ld bc, $0100                                  ; $47F3: $01 $00 $01
    ld bc, $0100                                  ; $47F6: $01 $00 $01
    ld h, $00                                     ; $47F9: $26 $00
    ld e, l                                       ; $47FB: $5D
    ld l, c                                       ; $47FC: $69
    nop                                           ; $47FD: $00
    ld c, d                                       ; $47FE: $4A

jr_037_47FF:
    ld bc, $0100                                  ; $47FF: $01 $00 $01
    ld bc, $0100                                  ; $4802: $01 $00 $01
    ld bc, $0100                                  ; $4805: $01 $00 $01
    daa                                           ; $4808: $27
    nop                                           ; $4809: $00
    add hl, sp                                    ; $480A: $39
    jr nc, jr_037_480D                            ; $480B: $30 $00

jr_037_480D:
    ld [hl], $27                                  ; $480D: $36 $27
    nop                                           ; $480F: $00
    ccf                                           ; $4810: $3F
    ld h, b                                       ; $4811: $60
    nop                                           ; $4812: $00
    ld bc, $0001                                  ; $4813: $01 $01 $00
    ld bc, $0001                                  ; $4816: $01 $01 $00
    ld bc, $0001                                  ; $4819: $01 $01 $00
    ld bc, $0005                                  ; $481C: $01 $05 $00
    ld c, d                                       ; $481F: $4A
    ld b, b                                       ; $4820: $40
    nop                                           ; $4821: $00
    ld b, a                                       ; $4822: $47
    ld bc, $0100                                  ; $4823: $01 $00 $01
    ld bc, $0100                                  ; $4826: $01 $00 $01
    ld bc, $4A00                                  ; $4829: $01 $00 $4A
    inc sp                                        ; $482C: $33
    nop                                           ; $482D: $00
    ld b, h                                       ; $482E: $44
    ld [hl], $00                                  ; $482F: $36 $00
    ccf                                           ; $4831: $3F
    ld c, l                                       ; $4832: $4D
    nop                                           ; $4833: $00
    ld b, a                                       ; $4834: $47
    ld h, $00                                     ; $4835: $26 $00
    ld [hl], b                                    ; $4837: $70
    ccf                                           ; $4838: $3F
    nop                                           ; $4839: $00
    ldh [rP1], a                                  ; $483A: $E0 $00
    nop                                           ; $483C: $00
    inc bc                                        ; $483D: $03
    nop                                           ; $483E: $00
    nop                                           ; $483F: $00
    inc bc                                        ; $4840: $03
    nop                                           ; $4841: $00
    nop                                           ; $4842: $00
    inc bc                                        ; $4843: $03
    nop                                           ; $4844: $00
    nop                                           ; $4845: $00
    inc bc                                        ; $4846: $03
    nop                                           ; $4847: $00
    nop                                           ; $4848: $00
    dec b                                         ; $4849: $05
    add b                                         ; $484A: $80
    nop                                           ; $484B: $00
    nop                                           ; $484C: $00
    ld [bc], a                                    ; $484D: $02
    nop                                           ; $484E: $00
    nop                                           ; $484F: $00
    ld bc, $4847                                  ; $4850: $01 $47 $48
    ld bc, $0100                                  ; $4853: $01 $00 $01
    ld [bc], a                                    ; $4856: $02
    ld de, $4D03                                  ; $4857: $11 $03 $4D
    ld bc, $6E04                                  ; $485A: $01 $04 $6E
    ld bc, $6914                                  ; $485D: $01 $14 $69
    nop                                           ; $4860: $00
    ld b, d                                       ; $4861: $42
    ld bc, $0100                                  ; $4862: $01 $00 $01
    add a                                         ; $4865: $87
    nop                                           ; $4866: $00

jr_037_4867:
    ld a, c                                       ; $4867: $79
    and l                                         ; $4868: $A5
    nop                                           ; $4869: $00
    sub l                                         ; $486A: $95
    cp [hl]                                       ; $486B: $BE
    nop                                           ; $486C: $00
    pop bc                                        ; $486D: $C1
    ld c, l                                       ; $486E: $4D
    ld bc, $1211                                  ; $486F: $01 $11 $12
    ld de, $4A13                                  ; $4872: $11 $13 $4A
    nop                                           ; $4875: $00
    ld bc, $0001                                  ; $4876: $01 $01 $00
    ld c, c                                       ; $4879: $49
    ld [hl], b                                    ; $487A: $70
    nop                                           ; $487B: $00
    ccf                                           ; $487C: $3F
    sub d                                         ; $487D: $92
    nop                                           ; $487E: $00
    halt                                          ; $487F: $76
    sub c                                         ; $4880: $91
    nop                                           ; $4881: $00
    adc c                                         ; $4882: $89
    ld b, h                                       ; $4883: $44
    nop                                           ; $4884: $00
    jr nc, jr_037_4867                            ; $4885: $30 $E0

    nop                                           ; $4887: $00
    ldh [rP1], a                                  ; $4888: $E0 $00
    nop                                           ; $488A: $00
    nop                                           ; $488B: $00
    ld bc, $2600                                  ; $488C: $01 $00 $26
    ld e, l                                       ; $488F: $5D
    nop                                           ; $4890: $00
    ld l, c                                       ; $4891: $69
    ld c, d                                       ; $4892: $4A
    nop                                           ; $4893: $00
    ld h, c                                       ; $4894: $61
    dec d                                         ; $4895: $15
    db $10                                        ; $4896: $10
    ld [hl], $27                                  ; $4897: $36 $27
    nop                                           ; $4899: $00
    ccf                                           ; $489A: $3F
    ld h, b                                       ; $489B: $60
    nop                                           ; $489C: $00
    ld bc, $0001                                  ; $489D: $01 $01 $00
    ld bc, $0105                                  ; $48A0: $01 $05 $01
    ld d, $47                                     ; $48A3: $16 $47
    ld bc, $3317                                  ; $48A5: $01 $17 $33
    ld bc, $3618                                  ; $48A8: $01 $18 $36
    nop                                           ; $48AB: $00
    ccf                                           ; $48AC: $3F
    ld bc, $0100                                  ; $48AD: $01 $00 $01
    ld bc, $0100                                  ; $48B0: $01 $00 $01
    ld bc, $4D00                                  ; $48B3: $01 $00 $4D
    ld b, a                                       ; $48B6: $47
    nop                                           ; $48B7: $00
    ld h, $70                                     ; $48B8: $26 $70
    nop                                           ; $48BA: $00
    ccf                                           ; $48BB: $3F
    ldh [rP1], a                                  ; $48BC: $E0 $00
    ldh [rSB], a                                  ; $48BE: $E0 $01
    nop                                           ; $48C0: $00
    ld bc, $0000                                  ; $48C1: $01 $00 $00
    inc bc                                        ; $48C4: $03
    nop                                           ; $48C5: $00
    nop                                           ; $48C6: $00
    inc bc                                        ; $48C7: $03
    nop                                           ; $48C8: $00
    nop                                           ; $48C9: $00
    inc bc                                        ; $48CA: $03
    nop                                           ; $48CB: $00
    nop                                           ; $48CC: $00
    inc bc                                        ; $48CD: $03
    nop                                           ; $48CE: $00
    nop                                           ; $48CF: $00
    dec b                                         ; $48D0: $05
    add b                                         ; $48D1: $80
    nop                                           ; $48D2: $00
    nop                                           ; $48D3: $00
    ld [bc], a                                    ; $48D4: $02
    nop                                           ; $48D5: $00
    nop                                           ; $48D6: $00
    ld bc, $48CE                                  ; $48D7: $01 $CE $48
    ld bc, $0100                                  ; $48DA: $01 $00 $01
    add d                                         ; $48DD: $82
    nop                                           ; $48DE: $00
    ld a, c                                       ; $48DF: $79
    cp h                                          ; $48E0: $BC
    nop                                           ; $48E1: $00
    sub [hl]                                      ; $48E2: $96
    halt                                          ; $48E3: $76
    nop                                           ; $48E4: $00
    sub l                                         ; $48E5: $95
    ld c, [hl]                                    ; $48E6: $4E
    nop                                           ; $48E7: $00
    ld bc, $0001                                  ; $48E8: $01 $01 $00
    ld bc, $0001                                  ; $48EB: $01 $01 $00
    scf                                           ; $48EE: $37
    daa                                           ; $48EF: $27
    nop                                           ; $48F0: $00
    ld [hl], $67                                  ; $48F1: $36 $67
    nop                                           ; $48F3: $00
    jr z, jr_037_4943                             ; $48F4: $28 $4D

    nop                                           ; $48F6: $00
    ld b, b                                       ; $48F7: $40
    dec hl                                        ; $48F8: $2B
    nop                                           ; $48F9: $00
    ld l, b                                       ; $48FA: $68
    ld l, [hl]                                    ; $48FB: $6E
    nop                                           ; $48FC: $00
    ld bc, $0001                                  ; $48FD: $01 $01 $00
    ld b, c                                       ; $4900: $41
    dec hl                                        ; $4901: $2B
    nop                                           ; $4902: $00
    ld l, l                                       ; $4903: $6D
    inc a                                         ; $4904: $3C
    nop                                           ; $4905: $00
    ret z                                         ; $4906: $C8

    add hl, sp                                    ; $4907: $39
    nop                                           ; $4908: $00
    ld c, l                                       ; $4909: $4D
    ld e, l                                       ; $490A: $5D
    nop                                           ; $490B: $00
    ld e, l                                       ; $490C: $5D
    ld bc, $0100                                  ; $490D: $01 $00 $01
    ld bc, $0100                                  ; $4910: $01 $00 $01
    ld bc, $6100                                  ; $4913: $01 $00 $61
    ld [hl], b                                    ; $4916: $70
    nop                                           ; $4917: $00
    ld b, d                                       ; $4918: $42
    daa                                           ; $4919: $27
    nop                                           ; $491A: $00
    ccf                                           ; $491B: $3F
    ret                                           ; $491C: $C9


jr_037_491D:
    nop                                           ; $491D: $00
    ld bc, $0001                                  ; $491E: $01 $01 $00
    ld bc, $0000                                  ; $4921: $01 $00 $00
    nop                                           ; $4924: $00
    ld bc, $0100                                  ; $4925: $01 $00 $01
    ld bc, $2700                                  ; $4928: $01 $00 $27
    ld e, l                                       ; $492B: $5D
    nop                                           ; $492C: $00
    ld c, [hl]                                    ; $492D: $4E
    ld bc, $5D00                                  ; $492E: $01 $00 $5D
    ld b, h                                       ; $4931: $44
    nop                                           ; $4932: $00
    ld bc, $0001                                  ; $4933: $01 $01 $00
    ld bc, $0001                                  ; $4936: $01 $01 $00
    ld bc, $0001                                  ; $4939: $01 $01 $00
    cpl                                           ; $493C: $2F
    ld c, l                                       ; $493D: $4D
    nop                                           ; $493E: $00
    ld b, b                                       ; $493F: $40
    dec hl                                        ; $4940: $2B
    nop                                           ; $4941: $00
    ld l, b                                       ; $4942: $68

jr_037_4943:
    ld l, [hl]                                    ; $4943: $6E
    nop                                           ; $4944: $00
    ld bc, $0001                                  ; $4945: $01 $01 $00
    ld bc, $0001                                  ; $4948: $01 $01 $00
    ld b, c                                       ; $494B: $41
    dec hl                                        ; $494C: $2B
    nop                                           ; $494D: $00
    jr z, jr_037_4993                             ; $494E: $28 $43

    nop                                           ; $4950: $00
    inc l                                         ; $4951: $2C
    ld b, a                                       ; $4952: $47
    nop                                           ; $4953: $00
    ld c, [hl]                                    ; $4954: $4E
    ld c, c                                       ; $4955: $49
    nop                                           ; $4956: $00
    daa                                           ; $4957: $27
    ld b, e                                       ; $4958: $43
    nop                                           ; $4959: $00
    ld bc, $0001                                  ; $495A: $01 $01 $00
    ld bc, $0001                                  ; $495D: $01 $01 $00
    dec hl                                        ; $4960: $2B
    ld l, a                                       ; $4961: $6F
    nop                                           ; $4962: $00
    jr nc, jr_037_498E                            ; $4963: $30 $29

    nop                                           ; $4965: $00
    ld b, d                                       ; $4966: $42
    daa                                           ; $4967: $27
    nop                                           ; $4968: $00
    ccf                                           ; $4969: $3F
    ret                                           ; $496A: $C9


    nop                                           ; $496B: $00
    ld bc, $0000                                  ; $496C: $01 $00 $00
    nop                                           ; $496F: $00
    ld bc, $0100                                  ; $4970: $01 $00 $01
    ld bc, $7E00                                  ; $4973: $01 $00 $7E
    cp e                                          ; $4976: $BB
    nop                                           ; $4977: $00
    and d                                         ; $4978: $A2
    sub [hl]                                      ; $4979: $96
    nop                                           ; $497A: $00
    ld c, [hl]                                    ; $497B: $4E
    ld bc, $0100                                  ; $497C: $01 $00 $01
    ld bc, $0100                                  ; $497F: $01 $00 $01
    dec [hl]                                      ; $4982: $35
    nop                                           ; $4983: $00
    daa                                           ; $4984: $27
    inc [hl]                                      ; $4985: $34
    nop                                           ; $4986: $00
    ld e, l                                       ; $4987: $5D
    ld b, a                                       ; $4988: $47
    nop                                           ; $4989: $00
    ld bc, $0043                                  ; $498A: $01 $43 $00
    ld [hl], b                                    ; $498D: $70

jr_037_498E:
    ld b, d                                       ; $498E: $42
    nop                                           ; $498F: $00
    ld a, [hl+]                                   ; $4990: $2A
    dec l                                         ; $4991: $2D
    nop                                           ; $4992: $00

jr_037_4993:
    ldh [rSB], a                                  ; $4993: $E0 $01
    nop                                           ; $4995: $00
    add hl, sp                                    ; $4996: $39
    ld l, e                                       ; $4997: $6B
    nop                                           ; $4998: $00
    jr nc, jr_037_491D                            ; $4999: $30 $82

    nop                                           ; $499B: $00
    ld a, c                                       ; $499C: $79
    cp h                                          ; $499D: $BC
    nop                                           ; $499E: $00
    sub [hl]                                      ; $499F: $96
    halt                                          ; $49A0: $76
    nop                                           ; $49A1: $00
    sub l                                         ; $49A2: $95
    ld c, l                                       ; $49A3: $4D
    nop                                           ; $49A4: $00
    ld bc, $0001                                  ; $49A5: $01 $01 $00
    ld bc, $0001                                  ; $49A8: $01 $01 $00
    ccf                                           ; $49AB: $3F
    ccf                                           ; $49AC: $3F
    nop                                           ; $49AD: $00
    dec hl                                        ; $49AE: $2B
    daa                                           ; $49AF: $27
    nop                                           ; $49B0: $00
    ld c, l                                       ; $49B1: $4D
    ld bc, $0100                                  ; $49B2: $01 $00 $01
    ld bc, $0100                                  ; $49B5: $01 $00 $01
    ld bc, $0100                                  ; $49B8: $01 $00 $01
    ld [hl], $00                                  ; $49BB: $36 $00
    ld l, a                                       ; $49BD: $6F
    ld c, h                                       ; $49BE: $4C
    nop                                           ; $49BF: $00
    ld l, a                                       ; $49C0: $6F
    ld c, c                                       ; $49C1: $49
    nop                                           ; $49C2: $00
    ld c, l                                       ; $49C3: $4D
    ld b, h                                       ; $49C4: $44
    nop                                           ; $49C5: $00
    ret                                           ; $49C6: $C9


    ld bc, $0100                                  ; $49C7: $01 $00 $01
    nop                                           ; $49CA: $00
    nop                                           ; $49CB: $00
    inc bc                                        ; $49CC: $03
    nop                                           ; $49CD: $00
    nop                                           ; $49CE: $00
    inc bc                                        ; $49CF: $03
    nop                                           ; $49D0: $00
    nop                                           ; $49D1: $00
    inc bc                                        ; $49D2: $03
    nop                                           ; $49D3: $00
    nop                                           ; $49D4: $00
    inc bc                                        ; $49D5: $03
    nop                                           ; $49D6: $00
    nop                                           ; $49D7: $00
    dec b                                         ; $49D8: $05
    add b                                         ; $49D9: $80
    nop                                           ; $49DA: $00
    nop                                           ; $49DB: $00
    ld [bc], a                                    ; $49DC: $02
    nop                                           ; $49DD: $00
    nop                                           ; $49DE: $00
    ld bc, $49D6                                  ; $49DF: $01 $D6 $49
    ld bc, $0100                                  ; $49E2: $01 $00 $01
    add d                                         ; $49E5: $82
    nop                                           ; $49E6: $00
    ld a, c                                       ; $49E7: $79
    cp h                                          ; $49E8: $BC
    nop                                           ; $49E9: $00
    sub [hl]                                      ; $49EA: $96
    halt                                          ; $49EB: $76
    nop                                           ; $49EC: $00
    sub l                                         ; $49ED: $95
    ld c, [hl]                                    ; $49EE: $4E
    nop                                           ; $49EF: $00
    ld bc, $0001                                  ; $49F0: $01 $01 $00
    ld bc, $0001                                  ; $49F3: $01 $01 $00
    ld bc, $1102                                  ; $49F6: $01 $02 $11
    inc bc                                        ; $49F9: $03
    ld c, l                                       ; $49FA: $4D
    ld bc, $6E04                                  ; $49FB: $01 $04 $6E
    ld bc, $6D1A                                  ; $49FE: $01 $1A $6D

jr_037_4A01:
    nop                                           ; $4A01: $00
    inc a                                         ; $4A02: $3C
    ld bc, $0100                                  ; $4A03: $01 $00 $01
    ld bc, $3900                                  ; $4A06: $01 $00 $39
    ld c, l                                       ; $4A09: $4D
    nop                                           ; $4A0A: $00
    ld e, l                                       ; $4A0B: $5D
    ld e, l                                       ; $4A0C: $5D
    ld bc, $706C                                  ; $4A0D: $01 $6C $70
    nop                                           ; $4A10: $00
    ld b, d                                       ; $4A11: $42
    daa                                           ; $4A12: $27
    nop                                           ; $4A13: $00
    ccf                                           ; $4A14: $3F
    ret                                           ; $4A15: $C9


    nop                                           ; $4A16: $00
    ld bc, $0000                                  ; $4A17: $01 $00 $00
    nop                                           ; $4A1A: $00
    ld bc, $7001                                  ; $4A1B: $01 $01 $70
    ld c, [hl]                                    ; $4A1E: $4E
    nop                                           ; $4A1F: $00
    ld e, l                                       ; $4A20: $5D
    ld b, h                                       ; $4A21: $44
    nop                                           ; $4A22: $00
    ret z                                         ; $4A23: $C8

    cpl                                           ; $4A24: $2F
    nop                                           ; $4A25: $00
    ld c, l                                       ; $4A26: $4D
    inc b                                         ; $4A27: $04
    db $10                                        ; $4A28: $10
    ld l, [hl]                                    ; $4A29: $6E
    ld bc, $0100                                  ; $4A2A: $01 $00 $01
    ld bc, $1A01                                  ; $4A2D: $01 $01 $1A
    jr z, jr_037_4A32                             ; $4A30: $28 $00

jr_037_4A32:
    ld b, e                                       ; $4A32: $43
    inc l                                         ; $4A33: $2C
    nop                                           ; $4A34: $00
    ld b, a                                       ; $4A35: $47
    ld c, [hl]                                    ; $4A36: $4E
    nop                                           ; $4A37: $00
    ld c, c                                       ; $4A38: $49
    daa                                           ; $4A39: $27
    nop                                           ; $4A3A: $00
    ld b, e                                       ; $4A3B: $43
    ld bc, $0100                                  ; $4A3C: $01 $00 $01
    ld bc, $0100                                  ; $4A3F: $01 $00 $01
    ld bc, $8302                                  ; $4A42: $01 $02 $83
    add hl, hl                                    ; $4A45: $29
    nop                                           ; $4A46: $00
    ld b, d                                       ; $4A47: $42
    daa                                           ; $4A48: $27
    nop                                           ; $4A49: $00
    ccf                                           ; $4A4A: $3F
    ret                                           ; $4A4B: $C9


    nop                                           ; $4A4C: $00
    ld bc, $0001                                  ; $4A4D: $01 $01 $00
    ld bc, $0000                                  ; $4A50: $01 $00 $00
    nop                                           ; $4A53: $00
    ld bc, $9401                                  ; $4A54: $01 $01 $94
    ld l, c                                       ; $4A57: $69
    ld [bc], a                                    ; $4A58: $02
    or b                                          ; $4A59: $B0
    ld c, [hl]                                    ; $4A5A: $4E
    nop                                           ; $4A5B: $00
    ld bc, $114A                                  ; $4A5C: $01 $4A $11
    ld c, e                                       ; $4A5F: $4B
    ld e, l                                       ; $4A60: $5D
    nop                                           ; $4A61: $00
    ld b, a                                       ; $4A62: $47
    ld bc, $0100                                  ; $4A63: $01 $00 $01
    ld bc, $0100                                  ; $4A66: $01 $00 $01
    ld bc, $4300                                  ; $4A69: $01 $00 $43
    ld [hl], b                                    ; $4A6C: $70
    nop                                           ; $4A6D: $00
    ld b, d                                       ; $4A6E: $42
    ld a, [hl+]                                   ; $4A6F: $2A
    nop                                           ; $4A70: $00
    dec l                                         ; $4A71: $2D
    ldh [rP1], a                                  ; $4A72: $E0 $00
    ld bc, $0001                                  ; $4A74: $01 $01 $00
    ld bc, $0001                                  ; $4A77: $01 $01 $00
    add hl, sp                                    ; $4A7A: $39
    ld l, e                                       ; $4A7B: $6B
    nop                                           ; $4A7C: $00
    jr nc, jr_037_4A01                            ; $4A7D: $30 $82

    nop                                           ; $4A7F: $00
    ld a, c                                       ; $4A80: $79
    cp h                                          ; $4A81: $BC
    nop                                           ; $4A82: $00
    sub [hl]                                      ; $4A83: $96
    halt                                          ; $4A84: $76
    nop                                           ; $4A85: $00
    sub l                                         ; $4A86: $95
    ld c, l                                       ; $4A87: $4D
    nop                                           ; $4A88: $00
    ld bc, $0001                                  ; $4A89: $01 $01 $00
    ld bc, $1062                                  ; $4A8C: $01 $62 $10
    daa                                           ; $4A8F: $27
    ld c, l                                       ; $4A90: $4D
    ld [bc], a                                    ; $4A91: $02
    xor e                                         ; $4A92: $AB
    jr z, jr_037_4AB5                             ; $4A93: $28 $20

    ld c, c                                       ; $4A95: $49
    ld c, l                                       ; $4A96: $4D
    nop                                           ; $4A97: $00
    ld b, h                                       ; $4A98: $44
    ret                                           ; $4A99: $C9


    nop                                           ; $4A9A: $00
    ld bc, $0000                                  ; $4A9B: $01 $00 $00
    inc bc                                        ; $4A9E: $03
    nop                                           ; $4A9F: $00
    nop                                           ; $4AA0: $00
    inc bc                                        ; $4AA1: $03
    nop                                           ; $4AA2: $00
    nop                                           ; $4AA3: $00
    inc bc                                        ; $4AA4: $03
    nop                                           ; $4AA5: $00
    nop                                           ; $4AA6: $00
    inc bc                                        ; $4AA7: $03
    nop                                           ; $4AA8: $00
    nop                                           ; $4AA9: $00
    dec b                                         ; $4AAA: $05
    add b                                         ; $4AAB: $80
    nop                                           ; $4AAC: $00
    nop                                           ; $4AAD: $00
    ld [bc], a                                    ; $4AAE: $02
    nop                                           ; $4AAF: $00
    nop                                           ; $4AB0: $00
    ld bc, $4AA8                                  ; $4AB1: $01 $A8 $4A
    ld a, e                                       ; $4AB4: $7B

jr_037_4AB5:
    nop                                           ; $4AB5: $00
    sbc [hl]                                      ; $4AB6: $9E
    cp h                                          ; $4AB7: $BC
    nop                                           ; $4AB8: $00
    add [hl]                                      ; $4AB9: $86
    pop bc                                        ; $4ABA: $C1
    nop                                           ; $4ABB: $00
    scf                                           ; $4ABC: $37
    daa                                           ; $4ABD: $27
    nop                                           ; $4ABE: $00
    ld [hl], $67                                  ; $4ABF: $36 $67
    nop                                           ; $4AC1: $00
    jr z, jr_037_4B32                             ; $4AC2: $28 $6E

    nop                                           ; $4AC4: $00
    ld bc, $0001                                  ; $4AC5: $01 $01 $00
    ld b, d                                       ; $4AC8: $42
    ld c, d                                       ; $4AC9: $4A
    nop                                           ; $4ACA: $00
    daa                                           ; $4ACB: $27
    ld l, e                                       ; $4ACC: $6B
    nop                                           ; $4ACD: $00
    ccf                                           ; $4ACE: $3F
    add c                                         ; $4ACF: $81
    nop                                           ; $4AD0: $00
    pop bc                                        ; $4AD1: $C1
    xor c                                         ; $4AD2: $A9
    nop                                           ; $4AD3: $00
    ld a, c                                       ; $4AD4: $79
    ld c, [hl]                                    ; $4AD5: $4E
    nop                                           ; $4AD6: $00
    ld bc, $0001                                  ; $4AD7: $01 $01 $00
    ld bc, $0001                                  ; $4ADA: $01 $01 $00
    scf                                           ; $4ADD: $37
    daa                                           ; $4ADE: $27
    nop                                           ; $4ADF: $00
    ld [hl], $67                                  ; $4AE0: $36 $67
    nop                                           ; $4AE2: $00
    jr z, jr_037_4B32                             ; $4AE3: $28 $4D

    nop                                           ; $4AE5: $00
    ld bc, $0001                                  ; $4AE6: $01 $01 $00
    ld bc, $0001                                  ; $4AE9: $01 $01 $00
    ld bc, $0040                                  ; $4AEC: $01 $40 $00
    dec hl                                        ; $4AEF: $2B
    ld l, b                                       ; $4AF0: $68
    nop                                           ; $4AF1: $00
    ld l, [hl]                                    ; $4AF2: $6E
    ld b, c                                       ; $4AF3: $41
    nop                                           ; $4AF4: $00
    dec hl                                        ; $4AF5: $2B
    daa                                           ; $4AF6: $27
    nop                                           ; $4AF7: $00
    ld bc, $0001                                  ; $4AF8: $01 $01 $00
    ld bc, $0028                                  ; $4AFB: $01 $28 $00
    ld b, b                                       ; $4AFE: $40
    ld h, [hl]                                    ; $4AFF: $66
    nop                                           ; $4B00: $00
    jr z, jr_037_4B50                             ; $4B01: $28 $4D

    nop                                           ; $4B03: $00
    ld d, c                                       ; $4B04: $51
    daa                                           ; $4B05: $27
    nop                                           ; $4B06: $00
    ld l, l                                       ; $4B07: $6D
    ld l, [hl]                                    ; $4B08: $6E
    nop                                           ; $4B09: $00
    ld e, [hl]                                    ; $4B0A: $5E
    ld b, h                                       ; $4B0B: $44
    nop                                           ; $4B0C: $00
    scf                                           ; $4B0D: $37
    ld bc, $9900                                  ; $4B0E: $01 $00 $99
    adc c                                         ; $4B11: $89
    nop                                           ; $4B12: $00
    sub l                                         ; $4B13: $95
    cp [hl]                                       ; $4B14: $BE
    nop                                           ; $4B15: $00
    pop bc                                        ; $4B16: $C1
    ld c, l                                       ; $4B17: $4D
    nop                                           ; $4B18: $00
    ld h, d                                       ; $4B19: $62
    ld d, a                                       ; $4B1A: $57
    nop                                           ; $4B1B: $00
    jr z, jr_037_4B8C                             ; $4B1C: $28 $6E

    nop                                           ; $4B1E: $00
    ld bc, $0001                                  ; $4B1F: $01 $01 $00
    jr z, jr_037_4B64                             ; $4B22: $28 $40

    nop                                           ; $4B24: $00
    dec l                                         ; $4B25: $2D
    ld b, h                                       ; $4B26: $44
    nop                                           ; $4B27: $00
    dec l                                         ; $4B28: $2D
    ld c, l                                       ; $4B29: $4D
    nop                                           ; $4B2A: $00
    ld b, a                                       ; $4B2B: $47
    ld h, $00                                     ; $4B2C: $26 $00
    ld [hl], b                                    ; $4B2E: $70
    ccf                                           ; $4B2F: $3F
    nop                                           ; $4B30: $00
    ret                                           ; $4B31: $C9


jr_037_4B32:
    nop                                           ; $4B32: $00
    nop                                           ; $4B33: $00
    inc bc                                        ; $4B34: $03
    nop                                           ; $4B35: $00
    nop                                           ; $4B36: $00
    inc bc                                        ; $4B37: $03
    nop                                           ; $4B38: $00
    nop                                           ; $4B39: $00
    inc bc                                        ; $4B3A: $03
    nop                                           ; $4B3B: $00
    nop                                           ; $4B3C: $00
    inc bc                                        ; $4B3D: $03
    nop                                           ; $4B3E: $00
    nop                                           ; $4B3F: $00
    dec b                                         ; $4B40: $05
    add b                                         ; $4B41: $80
    nop                                           ; $4B42: $00
    nop                                           ; $4B43: $00
    ld [bc], a                                    ; $4B44: $02
    nop                                           ; $4B45: $00
    nop                                           ; $4B46: $00
    ld bc, $4B3E                                  ; $4B47: $01 $3E $4B
    ld bc, $0100                                  ; $4B4A: $01 $00 $01
    ld a, e                                       ; $4B4D: $7B
    nop                                           ; $4B4E: $00
    sbc [hl]                                      ; $4B4F: $9E

jr_037_4B50:
    cp h                                          ; $4B50: $BC
    nop                                           ; $4B51: $00
    add [hl]                                      ; $4B52: $86
    pop bc                                        ; $4B53: $C1
    ld bc, $0302                                  ; $4B54: $01 $02 $03
    db $10                                        ; $4B57: $10
    ld l, [hl]                                    ; $4B58: $6E
    ld bc, $0100                                  ; $4B59: $01 $00 $01
    ld bc, $0701                                  ; $4B5C: $01 $01 $07
    ld c, d                                       ; $4B5F: $4A
    ld bc, $6B19                                  ; $4B60: $01 $19 $6B
    nop                                           ; $4B63: $00

jr_037_4B64:
    ccf                                           ; $4B64: $3F
    add c                                         ; $4B65: $81
    nop                                           ; $4B66: $00
    pop bc                                        ; $4B67: $C1
    xor c                                         ; $4B68: $A9
    nop                                           ; $4B69: $00
    ld a, c                                       ; $4B6A: $79
    ld c, [hl]                                    ; $4B6B: $4E
    nop                                           ; $4B6C: $00
    ld bc, $0001                                  ; $4B6D: $01 $01 $00
    ld bc, $1102                                  ; $4B70: $01 $02 $11
    inc bc                                        ; $4B73: $03
    ld c, l                                       ; $4B74: $4D
    ld bc, $6E04                                  ; $4B75: $01 $04 $6E
    ld bc, $271A                                  ; $4B78: $01 $1A $27
    nop                                           ; $4B7B: $00
    ld bc, $0001                                  ; $4B7C: $01 $01 $00
    ld bc, $0001                                  ; $4B7F: $01 $01 $00
    ld bc, $111B                                  ; $4B82: $01 $1B $11
    inc e                                         ; $4B85: $1C
    ld c, l                                       ; $4B86: $4D
    ld bc, $1E1D                                  ; $4B87: $01 $1D $1E
    db $10                                        ; $4B8A: $10
    ld l, [hl]                                    ; $4B8B: $6E

jr_037_4B8C:
    rra                                           ; $4B8C: $1F
    db $10                                        ; $4B8D: $10
    scf                                           ; $4B8E: $37
    ld bc, $0100                                  ; $4B8F: $01 $00 $01
    ld bc, $9900                                  ; $4B92: $01 $00 $99
    adc c                                         ; $4B95: $89
    nop                                           ; $4B96: $00
    sub l                                         ; $4B97: $95
    cp [hl]                                       ; $4B98: $BE
    nop                                           ; $4B99: $00
    pop bc                                        ; $4B9A: $C1
    ld c, l                                       ; $4B9B: $4D
    ld bc, $2120                                  ; $4B9C: $01 $20 $21
    db $10                                        ; $4B9F: $10
    ld l, [hl]                                    ; $4BA0: $6E
    ld bc, $0100                                  ; $4BA1: $01 $00 $01
    ld bc, $2201                                  ; $4BA4: $01 $01 $22
    ld b, b                                       ; $4BA7: $40
    ld bc, $2D23                                  ; $4BA8: $01 $23 $2D
    nop                                           ; $4BAB: $00
    ld c, l                                       ; $4BAC: $4D
    ld b, a                                       ; $4BAD: $47
    nop                                           ; $4BAE: $00
    ld h, $70                                     ; $4BAF: $26 $70
    nop                                           ; $4BB1: $00
    ccf                                           ; $4BB2: $3F
    ret                                           ; $4BB3: $C9


    nop                                           ; $4BB4: $00
    ld bc, $0000                                  ; $4BB5: $01 $00 $00
    inc bc                                        ; $4BB8: $03
    nop                                           ; $4BB9: $00
    nop                                           ; $4BBA: $00
    inc bc                                        ; $4BBB: $03
    nop                                           ; $4BBC: $00
    nop                                           ; $4BBD: $00
    inc bc                                        ; $4BBE: $03
    nop                                           ; $4BBF: $00
    nop                                           ; $4BC0: $00
    inc bc                                        ; $4BC1: $03
    nop                                           ; $4BC2: $00
    nop                                           ; $4BC3: $00
    dec b                                         ; $4BC4: $05
    add b                                         ; $4BC5: $80
    nop                                           ; $4BC6: $00
    nop                                           ; $4BC7: $00
    ld [bc], a                                    ; $4BC8: $02
    nop                                           ; $4BC9: $00
    nop                                           ; $4BCA: $00
    ld bc, $4BC2                                  ; $4BCB: $01 $C2 $4B
    scf                                           ; $4BCE: $37
    nop                                           ; $4BCF: $00
    daa                                           ; $4BD0: $27
    ld [hl], $00                                  ; $4BD1: $36 $00
    ld h, a                                       ; $4BD3: $67
    jr z, jr_037_4BD6                             ; $4BD4: $28 $00

jr_037_4BD6:
    ld l, [hl]                                    ; $4BD6: $6E
    ld b, d                                       ; $4BD7: $42
    nop                                           ; $4BD8: $00
    ld c, d                                       ; $4BD9: $4A
    daa                                           ; $4BDA: $27
    nop                                           ; $4BDB: $00
    ld l, e                                       ; $4BDC: $6B
    ccf                                           ; $4BDD: $3F
    nop                                           ; $4BDE: $00
    ld bc, $0001                                  ; $4BDF: $01 $01 $00
    ld bc, $0001                                  ; $4BE2: $01 $01 $00
    or d                                          ; $4BE5: $B2
    add d                                         ; $4BE6: $82
    nop                                           ; $4BE7: $00
    sub l                                         ; $4BE8: $95
    cp [hl]                                       ; $4BE9: $BE
    nop                                           ; $4BEA: $00
    pop bc                                        ; $4BEB: $C1
    ld c, [hl]                                    ; $4BEC: $4E
    nop                                           ; $4BED: $00
    ld bc, $0001                                  ; $4BEE: $01 $01 $00
    ld bc, $0081                                  ; $4BF1: $01 $81 $00
    pop bc                                        ; $4BF4: $C1
    xor c                                         ; $4BF5: $A9
    nop                                           ; $4BF6: $00
    ld a, c                                       ; $4BF7: $79
    ld b, e                                       ; $4BF8: $43
    nop                                           ; $4BF9: $00
    ld c, l                                       ; $4BFA: $4D
    ld l, $00                                     ; $4BFB: $2E $00
    ld [hl], b                                    ; $4BFD: $70
    ld b, b                                       ; $4BFE: $40
    nop                                           ; $4BFF: $00
    ld h, l                                       ; $4C00: $65
    dec l                                         ; $4C01: $2D
    nop                                           ; $4C02: $00
    ld l, [hl]                                    ; $4C03: $6E
    ld bc, $0100                                  ; $4C04: $01 $00 $01
    ld bc, $4100                                  ; $4C07: $01 $00 $41
    ld l, $00                                     ; $4C0A: $2E $00
    ld l, d                                       ; $4C0C: $6A
    ccf                                           ; $4C0D: $3F
    nop                                           ; $4C0E: $00
    ld h, b                                       ; $4C0F: $60
    ld c, d                                       ; $4C10: $4A
    nop                                           ; $4C11: $00
    ld bc, $0001                                  ; $4C12: $01 $01 $00
    ld bc, $0001                                  ; $4C15: $01 $01 $00
    ld bc, $005F                                  ; $4C18: $01 $5F $00
    inc sp                                        ; $4C1B: $33
    ld l, a                                       ; $4C1C: $6F
    nop                                           ; $4C1D: $00
    ld c, l                                       ; $4C1E: $4D
    ld b, b                                       ; $4C1F: $40
    nop                                           ; $4C20: $00
    dec hl                                        ; $4C21: $2B
    ld l, b                                       ; $4C22: $68
    nop                                           ; $4C23: $00
    ld l, [hl]                                    ; $4C24: $6E
    ld bc, $0100                                  ; $4C25: $01 $00 $01
    ld bc, $4200                                  ; $4C28: $01 $00 $42
    ld c, d                                       ; $4C2B: $4A
    nop                                           ; $4C2C: $00
    daa                                           ; $4C2D: $27
    ld l, e                                       ; $4C2E: $6B
    nop                                           ; $4C2F: $00
    ld l, d                                       ; $4C30: $6A
    ld c, l                                       ; $4C31: $4D
    nop                                           ; $4C32: $00
    ld b, h                                       ; $4C33: $44
    ld [hl], b                                    ; $4C34: $70
    nop                                           ; $4C35: $00
    ccf                                           ; $4C36: $3F
    ldh [rP1], a                                  ; $4C37: $E0 $00
    ld bc, $0000                                  ; $4C39: $01 $00 $00
    inc bc                                        ; $4C3C: $03
    nop                                           ; $4C3D: $00
    nop                                           ; $4C3E: $00
    inc bc                                        ; $4C3F: $03
    nop                                           ; $4C40: $00
    nop                                           ; $4C41: $00
    inc bc                                        ; $4C42: $03
    nop                                           ; $4C43: $00
    nop                                           ; $4C44: $00
    inc bc                                        ; $4C45: $03
    nop                                           ; $4C46: $00
    nop                                           ; $4C47: $00
    dec b                                         ; $4C48: $05
    add b                                         ; $4C49: $80
    nop                                           ; $4C4A: $00
    nop                                           ; $4C4B: $00
    ld [bc], a                                    ; $4C4C: $02
    nop                                           ; $4C4D: $00
    nop                                           ; $4C4E: $00
    ld bc, $4C46                                  ; $4C4F: $01 $46 $4C
    ld bc, $0100                                  ; $4C52: $01 $00 $01
    ld [bc], a                                    ; $4C55: $02
    ld de, $6E03                                  ; $4C56: $11 $03 $6E
    ld bc, $4A07                                  ; $4C59: $01 $07 $4A
    ld bc, $6B19                                  ; $4C5C: $01 $19 $6B
    nop                                           ; $4C5F: $00
    ccf                                           ; $4C60: $3F
    ld bc, $0100                                  ; $4C61: $01 $00 $01
    ld bc, $0100                                  ; $4C64: $01 $00 $01
    ld bc, $B200                                  ; $4C67: $01 $00 $B2
    add d                                         ; $4C6A: $82
    nop                                           ; $4C6B: $00
    sub l                                         ; $4C6C: $95
    cp [hl]                                       ; $4C6D: $BE
    nop                                           ; $4C6E: $00
    pop bc                                        ; $4C6F: $C1
    ld c, [hl]                                    ; $4C70: $4E
    nop                                           ; $4C71: $00
    ld bc, $0001                                  ; $4C72: $01 $01 $00
    ld bc, $0001                                  ; $4C75: $01 $01 $00
    add c                                         ; $4C78: $81
    pop bc                                        ; $4C79: $C1
    nop                                           ; $4C7A: $00
    xor c                                         ; $4C7B: $A9
    ld a, c                                       ; $4C7C: $79
    nop                                           ; $4C7D: $00
    ld b, e                                       ; $4C7E: $43
    ld c, l                                       ; $4C7F: $4D
    ld bc, $302F                                  ; $4C80: $01 $2F $30
    db $10                                        ; $4C83: $10
    ld l, [hl]                                    ; $4C84: $6E
    ld bc, $0100                                  ; $4C85: $01 $00 $01
    ld b, c                                       ; $4C88: $41
    nop                                           ; $4C89: $00
    ld l, $6A                                     ; $4C8A: $2E $6A
    nop                                           ; $4C8C: $00
    ccf                                           ; $4C8D: $3F
    ld h, b                                       ; $4C8E: $60
    nop                                           ; $4C8F: $00
    ld c, d                                       ; $4C90: $4A
    ret z                                         ; $4C91: $C8

    ld bc, $3124                                  ; $4C92: $01 $24 $31
    db $10                                        ; $4C95: $10
    ld c, l                                       ; $4C96: $4D
    inc b                                         ; $4C97: $04
    db $10                                        ; $4C98: $10
    ld l, [hl]                                    ; $4C99: $6E
    ld bc, $0701                                  ; $4C9A: $01 $01 $07
    ld c, d                                       ; $4C9D: $4A
    ld bc, $6B19                                  ; $4C9E: $01 $19 $6B
    nop                                           ; $4CA1: $00
    ld l, d                                       ; $4CA2: $6A
    ld c, l                                       ; $4CA3: $4D
    nop                                           ; $4CA4: $00
    ld b, h                                       ; $4CA5: $44
    ld [hl], b                                    ; $4CA6: $70
    nop                                           ; $4CA7: $00
    ccf                                           ; $4CA8: $3F
    ldh [rP1], a                                  ; $4CA9: $E0 $00
    ld bc, $0000                                  ; $4CAB: $01 $00 $00
    inc bc                                        ; $4CAE: $03
    nop                                           ; $4CAF: $00
    nop                                           ; $4CB0: $00
    inc bc                                        ; $4CB1: $03
    nop                                           ; $4CB2: $00
    nop                                           ; $4CB3: $00
    inc bc                                        ; $4CB4: $03
    nop                                           ; $4CB5: $00
    nop                                           ; $4CB6: $00
    inc bc                                        ; $4CB7: $03
    nop                                           ; $4CB8: $00
    nop                                           ; $4CB9: $00
    dec b                                         ; $4CBA: $05
    add b                                         ; $4CBB: $80
    nop                                           ; $4CBC: $00
    nop                                           ; $4CBD: $00
    ld [bc], a                                    ; $4CBE: $02
    nop                                           ; $4CBF: $00
    nop                                           ; $4CC0: $00
    ld bc, $4CB8                                  ; $4CC1: $01 $B8 $4C
    ld bc, $8900                                  ; $4CC4: $01 $00 $89
    sub c                                         ; $4CC7: $91
    nop                                           ; $4CC8: $00
    halt                                          ; $4CC9: $76
    ld a, b                                       ; $4CCA: $78
    nop                                           ; $4CCB: $00
    jp nz, Jump_000_00AA                          ; $4CCC: $C2 $AA $00

    halt                                          ; $4CCF: $76
    ld c, d                                       ; $4CD0: $4A
    nop                                           ; $4CD1: $00
    ld c, [hl]                                    ; $4CD2: $4E
    ld bc, $0100                                  ; $4CD3: $01 $00 $01
    ld bc, $0100                                  ; $4CD6: $01 $00 $01
    ld bc, $3700                                  ; $4CD9: $01 $00 $37
    daa                                           ; $4CDC: $27
    nop                                           ; $4CDD: $00
    ld [hl], $67                                  ; $4CDE: $36 $67
    nop                                           ; $4CE0: $00
    jr z, jr_037_4D31                             ; $4CE1: $28 $4E

    nop                                           ; $4CE3: $00
    ld bc, $0001                                  ; $4CE4: $01 $01 $00
    ld bc, $0001                                  ; $4CE7: $01 $01 $00
    ld bc, $004F                                  ; $4CEA: $01 $4F $00
    ld b, c                                       ; $4CED: $41
    ld h, h                                       ; $4CEE: $64
    nop                                           ; $4CEF: $00
    jr z, jr_037_4D3B                             ; $4CF0: $28 $49

    nop                                           ; $4CF2: $00
    dec hl                                        ; $4CF3: $2B
    ld [hl], b                                    ; $4CF4: $70
    nop                                           ; $4CF5: $00
    ccf                                           ; $4CF6: $3F
    ret                                           ; $4CF7: $C9


    nop                                           ; $4CF8: $00
    ld bc, $0000                                  ; $4CF9: $01 $00 $00
    nop                                           ; $4CFC: $00
    ld bc, $0100                                  ; $4CFD: $01 $00 $01
    ldh [rP1], a                                  ; $4D00: $E0 $00
    ldh [rKEY1], a                                ; $4D02: $E0 $4D
    nop                                           ; $4D04: $00
    ld b, a                                       ; $4D05: $47
    ld c, [hl]                                    ; $4D06: $4E
    nop                                           ; $4D07: $00
    ld c, c                                       ; $4D08: $49
    dec l                                         ; $4D09: $2D
    nop                                           ; $4D0A: $00
    ld bc, $0001                                  ; $4D0B: $01 $01 $00
    ld bc, $0001                                  ; $4D0E: $01 $01 $00
    scf                                           ; $4D11: $37
    daa                                           ; $4D12: $27
    nop                                           ; $4D13: $00
    ld [hl], $67                                  ; $4D14: $36 $67
    nop                                           ; $4D16: $00
    jr z, jr_037_4D66                             ; $4D17: $28 $4D

    nop                                           ; $4D19: $00
    cpl                                           ; $4D1A: $2F
    ld b, e                                       ; $4D1B: $43
    nop                                           ; $4D1C: $00
    ld l, [hl]                                    ; $4D1D: $6E
    ld bc, $0100                                  ; $4D1E: $01 $00 $01
    ld bc, $3D00                                  ; $4D21: $01 $00 $3D
    ld [hl], a                                    ; $4D24: $77
    nop                                           ; $4D25: $00
    ld l, a                                       ; $4D26: $6F
    dec a                                         ; $4D27: $3D
    nop                                           ; $4D28: $00
    ld l, a                                       ; $4D29: $6F
    ret z                                         ; $4D2A: $C8

    nop                                           ; $4D2B: $00
    ld l, l                                       ; $4D2C: $6D
    dec hl                                        ; $4D2D: $2B
    nop                                           ; $4D2E: $00
    ld [hl], b                                    ; $4D2F: $70
    ld b, d                                       ; $4D30: $42

jr_037_4D31:
    nop                                           ; $4D31: $00
    ld bc, $0001                                  ; $4D32: $01 $01 $00
    daa                                           ; $4D35: $27
    ld c, c                                       ; $4D36: $49
    nop                                           ; $4D37: $00
    dec hl                                        ; $4D38: $2B
    ld [hl], b                                    ; $4D39: $70
    nop                                           ; $4D3A: $00

jr_037_4D3B:
    ccf                                           ; $4D3B: $3F
    ld c, l                                       ; $4D3C: $4D
    nop                                           ; $4D3D: $00
    ld b, a                                       ; $4D3E: $47
    ld h, $00                                     ; $4D3F: $26 $00
    ld l, d                                       ; $4D41: $6A
    ret                                           ; $4D42: $C9


    nop                                           ; $4D43: $00
    ld bc, $0000                                  ; $4D44: $01 $00 $00
    nop                                           ; $4D47: $00
    ld bc, $0100                                  ; $4D48: $01 $00 $01
    ld h, c                                       ; $4D4B: $61
    nop                                           ; $4D4C: $00
    ld c, l                                       ; $4D4D: $4D
    inc [hl]                                      ; $4D4E: $34
    nop                                           ; $4D4F: $00
    ld b, e                                       ; $4D50: $43
    ld l, [hl]                                    ; $4D51: $6E
    nop                                           ; $4D52: $00
    ld d, b                                       ; $4D53: $50
    dec hl                                        ; $4D54: $2B
    nop                                           ; $4D55: $00
    dec l                                         ; $4D56: $2D
    ld bc, $0100                                  ; $4D57: $01 $00 $01
    ld bc, $0100                                  ; $4D5A: $01 $00 $01
    ld bc, $2B00                                  ; $4D5D: $01 $00 $2B
    ld l, a                                       ; $4D60: $6F
    nop                                           ; $4D61: $00
    jr nc, jr_037_4D8D                            ; $4D62: $30 $29

    nop                                           ; $4D64: $00
    ld c, c                                       ; $4D65: $49

jr_037_4D66:
    daa                                           ; $4D66: $27
    nop                                           ; $4D67: $00
    ld bc, $0001                                  ; $4D68: $01 $01 $00
    ld bc, $0001                                  ; $4D6B: $01 $01 $00
    ld bc, $0089                                  ; $4D6E: $01 $89 $00
    sub c                                         ; $4D71: $91
    halt                                          ; $4D72: $76
    nop                                           ; $4D73: $00
    ld a, b                                       ; $4D74: $78
    jp nz, $AA00                                  ; $4D75: $C2 $00 $AA

    halt                                          ; $4D78: $76
    nop                                           ; $4D79: $00
    ld c, [hl]                                    ; $4D7A: $4E
    ld bc, $0100                                  ; $4D7B: $01 $00 $01
    ld bc, $0100                                  ; $4D7E: $01 $00 $01
    ld bc, $0100                                  ; $4D81: $01 $00 $01
    inc l                                         ; $4D84: $2C
    nop                                           ; $4D85: $00
    ld h, a                                       ; $4D86: $67
    jr z, jr_037_4D89                             ; $4D87: $28 $00

jr_037_4D89:
    ld h, c                                       ; $4D89: $61
    ld bc, $0100                                  ; $4D8A: $01 $00 $01

jr_037_4D8D:
    ld bc, $0100                                  ; $4D8D: $01 $00 $01
    ld bc, $3600                                  ; $4D90: $01 $00 $36
    ld l, a                                       ; $4D93: $6F
    nop                                           ; $4D94: $00
    ld c, l                                       ; $4D95: $4D
    sub d                                         ; $4D96: $92
    nop                                           ; $4D97: $00
    or a                                          ; $4D98: $B7
    pop bc                                        ; $4D99: $C1
    nop                                           ; $4D9A: $00
    xor e                                         ; $4D9B: $AB
    ld a, h                                       ; $4D9C: $7C
    nop                                           ; $4D9D: $00
    pop bc                                        ; $4D9E: $C1
    ld l, [hl]                                    ; $4D9F: $6E
    nop                                           ; $4DA0: $00
    ld bc, $0001                                  ; $4DA1: $01 $01 $00
    ld h, b                                       ; $4DA4: $60
    ld a, [hl-]                                   ; $4DA5: $3A
    nop                                           ; $4DA6: $00
    ld [hl], $42                                  ; $4DA7: $36 $42
    nop                                           ; $4DA9: $00
    ld [hl], $66                                  ; $4DAA: $36 $66
    nop                                           ; $4DAC: $00
    ld sp, $0067                                  ; $4DAD: $31 $67 $00
    jr z, jr_037_4E20                             ; $4DB0: $28 $6E

    nop                                           ; $4DB2: $00
    ld bc, $0001                                  ; $4DB3: $01 $01 $00
    ld b, [hl]                                    ; $4DB6: $46
    ld b, c                                       ; $4DB7: $41
    nop                                           ; $4DB8: $00
    ld l, $6A                                     ; $4DB9: $2E $6A
    nop                                           ; $4DBB: $00
    ld c, l                                       ; $4DBC: $4D
    ld b, h                                       ; $4DBD: $44
    nop                                           ; $4DBE: $00
    ld [hl], b                                    ; $4DBF: $70
    ccf                                           ; $4DC0: $3F
    nop                                           ; $4DC1: $00
    ret                                           ; $4DC2: $C9


    ld bc, $0100                                  ; $4DC3: $01 $00 $01
    nop                                           ; $4DC6: $00
    nop                                           ; $4DC7: $00
    inc bc                                        ; $4DC8: $03
    nop                                           ; $4DC9: $00
    nop                                           ; $4DCA: $00
    inc bc                                        ; $4DCB: $03
    nop                                           ; $4DCC: $00
    nop                                           ; $4DCD: $00
    inc bc                                        ; $4DCE: $03
    nop                                           ; $4DCF: $00
    nop                                           ; $4DD0: $00
    inc bc                                        ; $4DD1: $03
    nop                                           ; $4DD2: $00
    nop                                           ; $4DD3: $00
    dec b                                         ; $4DD4: $05
    add b                                         ; $4DD5: $80
    nop                                           ; $4DD6: $00
    nop                                           ; $4DD7: $00
    ld [bc], a                                    ; $4DD8: $02
    nop                                           ; $4DD9: $00
    nop                                           ; $4DDA: $00
    ld bc, $4DD2                                  ; $4DDB: $01 $D2 $4D
    ld bc, $8900                                  ; $4DDE: $01 $00 $89
    sub c                                         ; $4DE1: $91
    nop                                           ; $4DE2: $00
    halt                                          ; $4DE3: $76
    ld a, b                                       ; $4DE4: $78
    nop                                           ; $4DE5: $00
    jp nz, Jump_000_00AA                          ; $4DE6: $C2 $AA $00

    halt                                          ; $4DE9: $76
    ld c, d                                       ; $4DEA: $4A
    nop                                           ; $4DEB: $00
    ld c, [hl]                                    ; $4DEC: $4E
    ld bc, $0100                                  ; $4DED: $01 $00 $01
    ld [bc], a                                    ; $4DF0: $02
    ld de, $4D03                                  ; $4DF1: $11 $03 $4D
    ld bc, $4E04                                  ; $4DF4: $01 $04 $4E
    ld bc, $A040                                  ; $4DF7: $01 $40 $A0
    db $10                                        ; $4DFA: $10
    ld c, c                                       ; $4DFB: $49
    dec hl                                        ; $4DFC: $2B
    nop                                           ; $4DFD: $00
    ld [hl], b                                    ; $4DFE: $70
    ccf                                           ; $4DFF: $3F
    nop                                           ; $4E00: $00
    ret                                           ; $4E01: $C9


    nop                                           ; $4E02: $00
    nop                                           ; $4E03: $00
    nop                                           ; $4E04: $00
    ld bc, $B801                                  ; $4E05: $01 $01 $B8
    ld c, [hl]                                    ; $4E08: $4E
    ld bc, $A232                                  ; $4E09: $01 $32 $A2
    db $10                                        ; $4E0C: $10
    ld c, l                                       ; $4E0D: $4D
    inc b                                         ; $4E0E: $04
    db $10                                        ; $4E0F: $10
    ld b, h                                       ; $4E10: $44
    ld l, $00                                     ; $4E11: $2E $00
    ld b, a                                       ; $4E13: $47
    ld bc, $0100                                  ; $4E14: $01 $00 $01
    ld bc, $2601                                  ; $4E17: $01 $01 $26
    dec l                                         ; $4E1A: $2D
    nop                                           ; $4E1B: $00
    ld c, c                                       ; $4E1C: $49
    ld l, c                                       ; $4E1D: $69
    nop                                           ; $4E1E: $00
    ccf                                           ; $4E1F: $3F

jr_037_4E20:
    dec hl                                        ; $4E20: $2B
    nop                                           ; $4E21: $00
    ld [hl], b                                    ; $4E22: $70
    ccf                                           ; $4E23: $3F
    nop                                           ; $4E24: $00
    ld c, l                                       ; $4E25: $4D
    ld b, h                                       ; $4E26: $44
    nop                                           ; $4E27: $00
    ret                                           ; $4E28: $C9


    nop                                           ; $4E29: $00
    nop                                           ; $4E2A: $00
    nop                                           ; $4E2B: $00
    ld h, e                                       ; $4E2C: $63
    nop                                           ; $4E2D: $00
    ld l, $CB                                     ; $4E2E: $2E $CB
    nop                                           ; $4E30: $00
    adc c                                         ; $4E31: $89
    sub c                                         ; $4E32: $91
    nop                                           ; $4E33: $00
    halt                                          ; $4E34: $76
    ld a, b                                       ; $4E35: $78
    nop                                           ; $4E36: $00
    jp nz, Jump_000_00AA                          ; $4E37: $C2 $AA $00

    halt                                          ; $4E3A: $76
    rlc b                                         ; $4E3B: $CB $00
    ld bc, $1062                                  ; $4E3D: $01 $62 $10
    add hl, hl                                    ; $4E40: $29
    rlc b                                         ; $4E41: $CB $00
    adc c                                         ; $4E43: $89
    sub c                                         ; $4E44: $91
    nop                                           ; $4E45: $00
    halt                                          ; $4E46: $76
    ld a, b                                       ; $4E47: $78
    nop                                           ; $4E48: $00
    jp nz, Jump_000_00AA                          ; $4E49: $C2 $AA $00

    halt                                          ; $4E4C: $76
    rlc b                                         ; $4E4D: $CB $00
    res 4, c                                      ; $4E4F: $CB $A1
    db $10                                        ; $4E51: $10
    jr nc, @-$75                                  ; $4E52: $30 $89

    db $10                                        ; $4E54: $10
    ld c, d                                       ; $4E55: $4A
    dec h                                         ; $4E56: $25
    db $10                                        ; $4E57: $10
    ld c, [hl]                                    ; $4E58: $4E
    inc h                                         ; $4E59: $24
    db $10                                        ; $4E5A: $10
    ld [hl], $CB                                  ; $4E5B: $36 $CB
    nop                                           ; $4E5D: $00
    set 1, e                                      ; $4E5E: $CB $CB
    nop                                           ; $4E60: $00
    ld bc, $0000                                  ; $4E61: $01 $00 $00
    inc bc                                        ; $4E64: $03
    nop                                           ; $4E65: $00
    nop                                           ; $4E66: $00
    inc bc                                        ; $4E67: $03
    nop                                           ; $4E68: $00
    nop                                           ; $4E69: $00
    inc bc                                        ; $4E6A: $03
    nop                                           ; $4E6B: $00
    nop                                           ; $4E6C: $00
    inc bc                                        ; $4E6D: $03
    nop                                           ; $4E6E: $00
    nop                                           ; $4E6F: $00
    dec b                                         ; $4E70: $05
    add b                                         ; $4E71: $80
    nop                                           ; $4E72: $00
    nop                                           ; $4E73: $00
    ld [bc], a                                    ; $4E74: $02
    nop                                           ; $4E75: $00
    nop                                           ; $4E76: $00
    ld bc, $4E6E                                  ; $4E77: $01 $6E $4E
    scf                                           ; $4E7A: $37
    nop                                           ; $4E7B: $00
    daa                                           ; $4E7C: $27
    ld [hl], $00                                  ; $4E7D: $36 $00
    ld h, a                                       ; $4E7F: $67
    jr z, jr_037_4E82                             ; $4E80: $28 $00

jr_037_4E82:
    ld l, [hl]                                    ; $4E82: $6E
    ld b, d                                       ; $4E83: $42
    nop                                           ; $4E84: $00
    ld c, d                                       ; $4E85: $4A
    daa                                           ; $4E86: $27
    nop                                           ; $4E87: $00
    ld l, e                                       ; $4E88: $6B
    ccf                                           ; $4E89: $3F
    nop                                           ; $4E8A: $00
    ld bc, $0001                                  ; $4E8B: $01 $01 $00
    ld bc, $0001                                  ; $4E8E: $01 $01 $00
    ld a, b                                       ; $4E91: $78
    cp h                                          ; $4E92: $BC
    nop                                           ; $4E93: $00
    sub h                                         ; $4E94: $94
    or b                                          ; $4E95: $B0
    nop                                           ; $4E96: $00
    adc c                                         ; $4E97: $89
    ld c, [hl]                                    ; $4E98: $4E
    nop                                           ; $4E99: $00
    ld bc, $0001                                  ; $4E9A: $01 $01 $00
    ld bc, $0061                                  ; $4E9D: $01 $61 $00
    ld [hl], b                                    ; $4EA0: $70
    ld b, d                                       ; $4EA1: $42
    nop                                           ; $4EA2: $00
    dec hl                                        ; $4EA3: $2B
    add hl, hl                                    ; $4EA4: $29
    nop                                           ; $4EA5: $00
    ld [hl], b                                    ; $4EA6: $70
    ld b, d                                       ; $4EA7: $42
    nop                                           ; $4EA8: $00
    ld bc, $002A                                  ; $4EA9: $01 $2A $00
    ld d, c                                       ; $4EAC: $51
    ld h, d                                       ; $4EAD: $62
    nop                                           ; $4EAE: $00
    ld c, d                                       ; $4EAF: $4A
    ld bc, $2B00                                  ; $4EB0: $01 $00 $2B
    ld a, [hl-]                                   ; $4EB3: $3A
    nop                                           ; $4EB4: $00
    ld [hl], b                                    ; $4EB5: $70
    ld b, d                                       ; $4EB6: $42
    nop                                           ; $4EB7: $00
    ld a, [hl+]                                   ; $4EB8: $2A
    inc l                                         ; $4EB9: $2C
    nop                                           ; $4EBA: $00
    ld e, l                                       ; $4EBB: $5D
    ld [hl], $00                                  ; $4EBC: $36 $00
    ccf                                           ; $4EBE: $3F
    ret                                           ; $4EBF: $C9


    nop                                           ; $4EC0: $00
    ld bc, $0000                                  ; $4EC1: $01 $00 $00
    inc bc                                        ; $4EC4: $03
    nop                                           ; $4EC5: $00
    nop                                           ; $4EC6: $00
    inc bc                                        ; $4EC7: $03
    ld bc, $0100                                  ; $4EC8: $01 $00 $01
    ld bc, $0100                                  ; $4ECB: $01 $00 $01
    ld bc, $0100                                  ; $4ECE: $01 $00 $01
    ld bc, $2A00                                  ; $4ED1: $01 $00 $2A
    ld [hl], $00                                  ; $4ED4: $36 $00
    ld e, l                                       ; $4ED6: $5D
    daa                                           ; $4ED7: $27
    nop                                           ; $4ED8: $00
    ld bc, $0000                                  ; $4ED9: $01 $00 $00
    inc bc                                        ; $4EDC: $03
    nop                                           ; $4EDD: $00
    nop                                           ; $4EDE: $00
    dec b                                         ; $4EDF: $05
    ld bc, $0000                                  ; $4EE0: $01 $00 $00
    ld [bc], a                                    ; $4EE3: $02
    nop                                           ; $4EE4: $00
    nop                                           ; $4EE5: $00
    ld [bc], a                                    ; $4EE6: $02
    nop                                           ; $4EE7: $00
    nop                                           ; $4EE8: $00
    ld [bc], a                                    ; $4EE9: $02
    nop                                           ; $4EEA: $00
    nop                                           ; $4EEB: $00
    dec b                                         ; $4EEC: $05
    add b                                         ; $4EED: $80
    nop                                           ; $4EEE: $00
    nop                                           ; $4EEF: $00
    ld [bc], a                                    ; $4EF0: $02
    nop                                           ; $4EF1: $00
    nop                                           ; $4EF2: $00
    ld bc, $4EEA                                  ; $4EF3: $01 $EA $4E
    ld bc, $0100                                  ; $4EF6: $01 $00 $01
    ld [bc], a                                    ; $4EF9: $02
    ld de, $6E03                                  ; $4EFA: $11 $03 $6E
    ld bc, $4A07                                  ; $4EFD: $01 $07 $4A
    ld bc, $6B19                                  ; $4F00: $01 $19 $6B
    nop                                           ; $4F03: $00
    ccf                                           ; $4F04: $3F
    ld bc, $0100                                  ; $4F05: $01 $00 $01
    ld a, b                                       ; $4F08: $78
    nop                                           ; $4F09: $00
    cp h                                          ; $4F0A: $BC
    sub h                                         ; $4F0B: $94
    nop                                           ; $4F0C: $00
    or b                                          ; $4F0D: $B0
    adc c                                         ; $4F0E: $89
    nop                                           ; $4F0F: $00
    ld c, [hl]                                    ; $4F10: $4E
    ld bc, $6C01                                  ; $4F11: $01 $01 $6C
    ld b, b                                       ; $4F14: $40
    ld bc, $70A5                                  ; $4F15: $01 $A5 $70
    nop                                           ; $4F18: $00
    ld b, d                                       ; $4F19: $42
    ld bc, $2A00                                  ; $4F1A: $01 $00 $2A
    and [hl]                                      ; $4F1D: $A6
    ld de, $4AA7                                  ; $4F1E: $11 $A7 $4A
    ld bc, $69A8                                  ; $4F21: $01 $A8 $69
    nop                                           ; $4F24: $00
    ld e, l                                       ; $4F25: $5D
    ld [hl], $00                                  ; $4F26: $36 $00
    ccf                                           ; $4F28: $3F
    ret                                           ; $4F29: $C9


    nop                                           ; $4F2A: $00
    ld bc, $0000                                  ; $4F2B: $01 $00 $00
    inc bc                                        ; $4F2E: $03
    nop                                           ; $4F2F: $00
    nop                                           ; $4F30: $00
    inc bc                                        ; $4F31: $03
    ld bc, $0100                                  ; $4F32: $01 $00 $01
    ld bc, $0100                                  ; $4F35: $01 $00 $01
    ld bc, $0100                                  ; $4F38: $01 $00 $01
    ld bc, $2A00                                  ; $4F3B: $01 $00 $2A
    ld [hl], $00                                  ; $4F3E: $36 $00
    ld e, l                                       ; $4F40: $5D
    daa                                           ; $4F41: $27
    nop                                           ; $4F42: $00
    ld bc, $0000                                  ; $4F43: $01 $00 $00
    inc bc                                        ; $4F46: $03
    nop                                           ; $4F47: $00
    nop                                           ; $4F48: $00
    dec b                                         ; $4F49: $05
    ld bc, $0000                                  ; $4F4A: $01 $00 $00
    ld [bc], a                                    ; $4F4D: $02
    nop                                           ; $4F4E: $00
    nop                                           ; $4F4F: $00
    ld [bc], a                                    ; $4F50: $02
    nop                                           ; $4F51: $00
    nop                                           ; $4F52: $00
    ld [bc], a                                    ; $4F53: $02
    nop                                           ; $4F54: $00
    nop                                           ; $4F55: $00
    dec b                                         ; $4F56: $05
    add b                                         ; $4F57: $80
    nop                                           ; $4F58: $00
    nop                                           ; $4F59: $00
    ld [bc], a                                    ; $4F5A: $02
    nop                                           ; $4F5B: $00
    nop                                           ; $4F5C: $00
    ld bc, $4F54                                  ; $4F5D: $01 $54 $4F
    ld bc, $7800                                  ; $4F60: $01 $00 $78
    cp h                                          ; $4F63: $BC
    nop                                           ; $4F64: $00
    sub h                                         ; $4F65: $94
    or b                                          ; $4F66: $B0
    nop                                           ; $4F67: $00
    adc c                                         ; $4F68: $89
    nop                                           ; $4F69: $00
    nop                                           ; $4F6A: $00
    nop                                           ; $4F6B: $00
    nop                                           ; $4F6C: $00
    nop                                           ; $4F6D: $00
    inc bc                                        ; $4F6E: $03
    ld b, c                                       ; $4F6F: $41
    nop                                           ; $4F70: $00
    inc l                                         ; $4F71: $2C
    ld b, a                                       ; $4F72: $47
    nop                                           ; $4F73: $00
    ld bc, $00B1                                  ; $4F74: $01 $B1 $00
    halt                                          ; $4F77: $76
    pop bc                                        ; $4F78: $C1
    nop                                           ; $4F79: $00
    ld b, e                                       ; $4F7A: $43
    daa                                           ; $4F7B: $27
    nop                                           ; $4F7C: $00
    ld [hl], b                                    ; $4F7D: $70
    ld [hl], $00                                  ; $4F7E: $36 $00
    ld h, a                                       ; $4F80: $67
    ld c, d                                       ; $4F81: $4A
    nop                                           ; $4F82: $00
    ld bc, $006D                                  ; $4F83: $01 $6D $00
    dec l                                         ; $4F86: $2D
    jr c, jr_037_4F89                             ; $4F87: $38 $00

jr_037_4F89:
    daa                                           ; $4F89: $27
    add d                                         ; $4F8A: $82
    nop                                           ; $4F8B: $00
    ld a, c                                       ; $4F8C: $79
    ld a, b                                       ; $4F8D: $78
    nop                                           ; $4F8E: $00
    ld c, l                                       ; $4F8F: $4D
    ld h, h                                       ; $4F90: $64
    nop                                           ; $4F91: $00
    jr z, @+$39                                   ; $4F92: $28 $37

    nop                                           ; $4F94: $00
    ld l, [hl]                                    ; $4F95: $6E
    ld bc, $5E00                                  ; $4F96: $01 $00 $5E
    ld b, d                                       ; $4F99: $42
    nop                                           ; $4F9A: $00
    daa                                           ; $4F9B: $27
    ld l, d                                       ; $4F9C: $6A
    nop                                           ; $4F9D: $00
    ret                                           ; $4F9E: $C9


    nop                                           ; $4F9F: $00
    nop                                           ; $4FA0: $00
    nop                                           ; $4FA1: $00
    nop                                           ; $4FA2: $00
    nop                                           ; $4FA3: $00
    inc bc                                        ; $4FA4: $03
    ld c, a                                       ; $4FA5: $4F
    nop                                           ; $4FA6: $00
    ld [hl], b                                    ; $4FA7: $70
    dec [hl]                                      ; $4FA8: $35
    nop                                           ; $4FA9: $00
    ld b, c                                       ; $4FAA: $41
    ld l, l                                       ; $4FAB: $6D
    nop                                           ; $4FAC: $00
    ld a, [hl-]                                   ; $4FAD: $3A
    nop                                           ; $4FAE: $00
    nop                                           ; $4FAF: $00
    nop                                           ; $4FB0: $00
    nop                                           ; $4FB1: $00
    nop                                           ; $4FB2: $00
    inc bc                                        ; $4FB3: $03
    ld bc, $7800                                  ; $4FB4: $01 $00 $78
    cp h                                          ; $4FB7: $BC
    nop                                           ; $4FB8: $00
    sub h                                         ; $4FB9: $94
    or b                                          ; $4FBA: $B0
    nop                                           ; $4FBB: $00
    adc c                                         ; $4FBC: $89
    and b                                         ; $4FBD: $A0
    nop                                           ; $4FBE: $00
    pop bc                                        ; $4FBF: $C1
    xor a                                         ; $4FC0: $AF
    nop                                           ; $4FC1: $00
    halt                                          ; $4FC2: $76
    nop                                           ; $4FC3: $00
    nop                                           ; $4FC4: $00
    nop                                           ; $4FC5: $00
    ld bc, $0100                                  ; $4FC6: $01 $00 $01
    call c, $DE00                                 ; $4FC9: $DC $00 $DE
    ld bc, $E300                                  ; $4FCC: $01 $00 $E3
    nop                                           ; $4FCF: $00
    nop                                           ; $4FD0: $00
    nop                                           ; $4FD1: $00
    nop                                           ; $4FD2: $00
    nop                                           ; $4FD3: $00
    inc bc                                        ; $4FD4: $03
    nop                                           ; $4FD5: $00
    nop                                           ; $4FD6: $00
    dec b                                         ; $4FD7: $05
    ld bc, $0000                                  ; $4FD8: $01 $00 $00
    ld [bc], a                                    ; $4FDB: $02
    nop                                           ; $4FDC: $00
    nop                                           ; $4FDD: $00
    ld b, $FE                                     ; $4FDE: $06 $FE
    xor e                                         ; $4FE0: $AB
    nop                                           ; $4FE1: $00
    add c                                         ; $4FE2: $81
    xor e                                         ; $4FE3: $AB
    nop                                           ; $4FE4: $00
    add c                                         ; $4FE5: $81
    and b                                         ; $4FE6: $A0
    nop                                           ; $4FE7: $00
    pop bc                                        ; $4FE8: $C1
    xor a                                         ; $4FE9: $AF
    nop                                           ; $4FEA: $00
    halt                                          ; $4FEB: $76
    ld b, a                                       ; $4FEC: $47
    nop                                           ; $4FED: $00
    ld bc, $002F                                  ; $4FEE: $01 $2F $00
    jr z, jr_037_5026                             ; $4FF1: $28 $33

    nop                                           ; $4FF3: $00
    inc l                                         ; $4FF4: $2C
    scf                                           ; $4FF5: $37
    nop                                           ; $4FF6: $00
    ld l, d                                       ; $4FF7: $6A
    ret                                           ; $4FF8: $C9


    nop                                           ; $4FF9: $00
    ld bc, $0000                                  ; $4FFA: $01 $00 $00
    nop                                           ; $4FFD: $00
    nop                                           ; $4FFE: $00
    nop                                           ; $4FFF: $00
    inc bc                                        ; $5000: $03
    nop                                           ; $5001: $00
    nop                                           ; $5002: $00
    inc bc                                        ; $5003: $03
    ld bc, $B100                                  ; $5004: $01 $00 $B1
    halt                                          ; $5007: $76
    nop                                           ; $5008: $00
    pop bc                                        ; $5009: $C1
    adc c                                         ; $500A: $89
    nop                                           ; $500B: $00
    cp d                                          ; $500C: $BA
    jp nz, $8800                                  ; $500D: $C2 $00 $88

    cp b                                          ; $5010: $B8
    nop                                           ; $5011: $00
    ld bc, $0000                                  ; $5012: $01 $00 $00
    nop                                           ; $5015: $00
    ld bc, $0100                                  ; $5016: $01 $00 $01
    jp c, $DC00                                   ; $5019: $DA $00 $DC

    jp c, Boot                                    ; $501C: $DA $00 $01

    db $E3                                        ; $501F: $E3
    nop                                           ; $5020: $00
    ld bc, $0000                                  ; $5021: $01 $00 $00
    nop                                           ; $5024: $00
    nop                                           ; $5025: $00

jr_037_5026:
    nop                                           ; $5026: $00
    inc bc                                        ; $5027: $03
    nop                                           ; $5028: $00
    nop                                           ; $5029: $00
    dec b                                         ; $502A: $05
    ld bc, $0000                                  ; $502B: $01 $00 $00
    ld [bc], a                                    ; $502E: $02
    nop                                           ; $502F: $00
    nop                                           ; $5030: $00
    ld b, $FE                                     ; $5031: $06 $FE
    ld h, c                                       ; $5033: $61
    nop                                           ; $5034: $00
    ld [hl], b                                    ; $5035: $70
    ld b, d                                       ; $5036: $42
    nop                                           ; $5037: $00
    daa                                           ; $5038: $27
    ld l, d                                       ; $5039: $6A
    nop                                           ; $503A: $00
    ld d, l                                       ; $503B: $55
    inc l                                         ; $503C: $2C
    nop                                           ; $503D: $00
    ld b, a                                       ; $503E: $47
    ld bc, $2600                                  ; $503F: $01 $00 $26
    daa                                           ; $5042: $27
    nop                                           ; $5043: $00
    ld b, d                                       ; $5044: $42
    ld l, [hl]                                    ; $5045: $6E
    nop                                           ; $5046: $00
    ld b, c                                       ; $5047: $41
    inc l                                         ; $5048: $2C
    nop                                           ; $5049: $00
    ld h, $33                                     ; $504A: $26 $33
    nop                                           ; $504C: $00
    ld l, d                                       ; $504D: $6A
    ret                                           ; $504E: $C9


    nop                                           ; $504F: $00
    ld bc, $0000                                  ; $5050: $01 $00 $00
    nop                                           ; $5053: $00
    nop                                           ; $5054: $00
    nop                                           ; $5055: $00
    inc bc                                        ; $5056: $03
    nop                                           ; $5057: $00
    nop                                           ; $5058: $00
    inc bc                                        ; $5059: $03
    ld bc, $B100                                  ; $505A: $01 $00 $B1
    halt                                          ; $505D: $76
    nop                                           ; $505E: $00
    pop bc                                        ; $505F: $C1
    ld a, b                                       ; $5060: $78
    nop                                           ; $5061: $00
    sub c                                         ; $5062: $91
    jp nz, Jump_037_7F00                          ; $5063: $C2 $00 $7F

    nop                                           ; $5066: $00
    nop                                           ; $5067: $00
    nop                                           ; $5068: $00
    ld bc, $0100                                  ; $5069: $01 $00 $01
    call c, $DA00                                 ; $506C: $DC $00 $DA
    ld bc, $E300                                  ; $506F: $01 $00 $E3
    nop                                           ; $5072: $00
    nop                                           ; $5073: $00
    nop                                           ; $5074: $00
    nop                                           ; $5075: $00
    nop                                           ; $5076: $00
    inc bc                                        ; $5077: $03
    nop                                           ; $5078: $00
    nop                                           ; $5079: $00
    dec b                                         ; $507A: $05
    ld bc, $0000                                  ; $507B: $01 $00 $00
    ld [bc], a                                    ; $507E: $02
    nop                                           ; $507F: $00
    nop                                           ; $5080: $00
    ld b, $FE                                     ; $5081: $06 $FE
    ld h, $00                                     ; $5083: $26 $00
    daa                                           ; $5085: $27
    ld b, d                                       ; $5086: $42
    nop                                           ; $5087: $00
    ld c, d                                       ; $5088: $4A
    ld bc, $B100                                  ; $5089: $01 $00 $B1
    halt                                          ; $508C: $76
    nop                                           ; $508D: $00
    pop bc                                        ; $508E: $C1
    ld l, [hl]                                    ; $508F: $6E
    nop                                           ; $5090: $00
    ld bc, $0049                                  ; $5091: $01 $49 $00
    inc sp                                        ; $5094: $33
    ld b, c                                       ; $5095: $41
    nop                                           ; $5096: $00
    ld l, $6A                                     ; $5097: $2E $6A
    nop                                           ; $5099: $00
    ret                                           ; $509A: $C9


    nop                                           ; $509B: $00
    nop                                           ; $509C: $00
    nop                                           ; $509D: $00
    nop                                           ; $509E: $00
    nop                                           ; $509F: $00
    inc bc                                        ; $50A0: $03
    nop                                           ; $50A1: $00
    nop                                           ; $50A2: $00
    inc bc                                        ; $50A3: $03
    ld bc, $7800                                  ; $50A4: $01 $00 $78
    cp h                                          ; $50A7: $BC
    nop                                           ; $50A8: $00
    sub h                                         ; $50A9: $94
    or b                                          ; $50AA: $B0
    nop                                           ; $50AB: $00
    adc c                                         ; $50AC: $89
    cp d                                          ; $50AD: $BA
    nop                                           ; $50AE: $00
    jp nz, $0088                                  ; $50AF: $C2 $88 $00

    cp b                                          ; $50B2: $B8
    nop                                           ; $50B3: $00
    nop                                           ; $50B4: $00
    nop                                           ; $50B5: $00
    ld bc, $0100                                  ; $50B6: $01 $00 $01
    sbc $00                                       ; $50B9: $DE $00
    call c, Call_000_00DA                         ; $50BB: $DC $DA $00
    ld bc, $00E2                                  ; $50BE: $01 $E2 $00
    ld bc, $0000                                  ; $50C1: $01 $00 $00
    nop                                           ; $50C4: $00
    nop                                           ; $50C5: $00
    nop                                           ; $50C6: $00
    inc bc                                        ; $50C7: $03
    nop                                           ; $50C8: $00
    nop                                           ; $50C9: $00
    dec b                                         ; $50CA: $05
    ld bc, $0000                                  ; $50CB: $01 $00 $00
    ld [bc], a                                    ; $50CE: $02
    nop                                           ; $50CF: $00
    nop                                           ; $50D0: $00
    ld b, $FE                                     ; $50D1: $06 $FE
    ld b, e                                       ; $50D3: $43
    nop                                           ; $50D4: $00
    ld [hl], b                                    ; $50D5: $70
    ld [hl], $00                                  ; $50D6: $36 $00
    ld l, a                                       ; $50D8: $6F
    ld [hl], $00                                  ; $50D9: $36 $00
    ld c, c                                       ; $50DB: $49
    jr nc, jr_037_50DE                            ; $50DC: $30 $00

jr_037_50DE:
    ld l, b                                       ; $50DE: $68
    ld bc, $6B00                                  ; $50DF: $01 $00 $6B
    ld l, a                                       ; $50E2: $6F
    nop                                           ; $50E3: $00
    ld a, $2D                                     ; $50E4: $3E $2D
    nop                                           ; $50E6: $00
    cpl                                           ; $50E7: $2F
    jr z, jr_037_50EA                             ; $50E8: $28 $00

jr_037_50EA:
    inc sp                                        ; $50EA: $33
    inc l                                         ; $50EB: $2C
    nop                                           ; $50EC: $00
    scf                                           ; $50ED: $37
    ld l, d                                       ; $50EE: $6A
    nop                                           ; $50EF: $00
    ret                                           ; $50F0: $C9


    nop                                           ; $50F1: $00
    nop                                           ; $50F2: $00
    nop                                           ; $50F3: $00
    nop                                           ; $50F4: $00
    nop                                           ; $50F5: $00
    inc bc                                        ; $50F6: $03
    nop                                           ; $50F7: $00
    nop                                           ; $50F8: $00
    inc bc                                        ; $50F9: $03
    add l                                         ; $50FA: $85
    nop                                           ; $50FB: $00
    ld a, [hl]                                    ; $50FC: $7E
    ld c, a                                       ; $50FD: $4F
    nop                                           ; $50FE: $00
    ld [hl], b                                    ; $50FF: $70
    dec [hl]                                      ; $5100: $35
    nop                                           ; $5101: $00
    ld b, c                                       ; $5102: $41
    ld l, l                                       ; $5103: $6D
    nop                                           ; $5104: $00
    ld a, [hl-]                                   ; $5105: $3A
    nop                                           ; $5106: $00
    nop                                           ; $5107: $00
    nop                                           ; $5108: $00
    nop                                           ; $5109: $00
    nop                                           ; $510A: $00
    inc bc                                        ; $510B: $03
    ld bc, $7800                                  ; $510C: $01 $00 $78
    cp h                                          ; $510F: $BC
    nop                                           ; $5110: $00
    sub h                                         ; $5111: $94
    or b                                          ; $5112: $B0
    nop                                           ; $5113: $00
    ld a, h                                       ; $5114: $7C
    pop bc                                        ; $5115: $C1
    nop                                           ; $5116: $00
    and b                                         ; $5117: $A0
    pop bc                                        ; $5118: $C1
    nop                                           ; $5119: $00
    xor a                                         ; $511A: $AF
    halt                                          ; $511B: $76
    nop                                           ; $511C: $00
    ld bc, $0001                                  ; $511D: $01 $01 $00
    ld bc, $00DC                                  ; $5120: $01 $DC $00
    jp c, Jump_000_00DC                           ; $5123: $DA $DC $00

    sbc $01                                       ; $5126: $DE $01
    nop                                           ; $5128: $00
    db $E3                                        ; $5129: $E3
    nop                                           ; $512A: $00
    nop                                           ; $512B: $00
    nop                                           ; $512C: $00
    nop                                           ; $512D: $00
    nop                                           ; $512E: $00
    inc bc                                        ; $512F: $03
    nop                                           ; $5130: $00
    nop                                           ; $5131: $00
    dec b                                         ; $5132: $05
    ld bc, $0000                                  ; $5133: $01 $00 $00
    ld [bc], a                                    ; $5136: $02
    nop                                           ; $5137: $00
    nop                                           ; $5138: $00
    ld b, $FE                                     ; $5139: $06 $FE
    ld b, e                                       ; $513B: $43
    nop                                           ; $513C: $00
    dec l                                         ; $513D: $2D
    ld b, h                                       ; $513E: $44
    nop                                           ; $513F: $00
    daa                                           ; $5140: $27
    and b                                         ; $5141: $A0
    nop                                           ; $5142: $00
    pop bc                                        ; $5143: $C1
    xor a                                         ; $5144: $AF
    nop                                           ; $5145: $00
    halt                                          ; $5146: $76
    ld b, a                                       ; $5147: $47
    nop                                           ; $5148: $00
    ld bc, $0026                                  ; $5149: $01 $26 $00
    daa                                           ; $514C: $27
    ld b, d                                       ; $514D: $42
    nop                                           ; $514E: $00
    ld l, [hl]                                    ; $514F: $6E
    ld bc, $3F00                                  ; $5150: $01 $00 $3F
    ccf                                           ; $5153: $3F
    nop                                           ; $5154: $00
    inc l                                         ; $5155: $2C
    ld b, c                                       ; $5156: $41
    nop                                           ; $5157: $00
    ld d, l                                       ; $5158: $55
    scf                                           ; $5159: $37
    nop                                           ; $515A: $00
    ret                                           ; $515B: $C9


    nop                                           ; $515C: $00
    nop                                           ; $515D: $00
    nop                                           ; $515E: $00
    nop                                           ; $515F: $00
    nop                                           ; $5160: $00
    inc bc                                        ; $5161: $03
    nop                                           ; $5162: $00
    nop                                           ; $5163: $00
    inc bc                                        ; $5164: $03
    ret nc                                        ; $5165: $D0

    nop                                           ; $5166: $00
    or c                                          ; $5167: $B1
    halt                                          ; $5168: $76
    nop                                           ; $5169: $00
    pop bc                                        ; $516A: $C1
    pop de                                        ; $516B: $D1
    nop                                           ; $516C: $00
    ld b, e                                       ; $516D: $43
    ld bc, $2F00                                  ; $516E: $01 $00 $2F
    jr z, jr_037_5173                             ; $5171: $28 $00

jr_037_5173:
    ccf                                           ; $5173: $3F
    daa                                           ; $5174: $27
    nop                                           ; $5175: $00
    scf                                           ; $5176: $37
    ld l, d                                       ; $5177: $6A
    nop                                           ; $5178: $00
    cpl                                           ; $5179: $2F
    ld b, e                                       ; $517A: $43
    nop                                           ; $517B: $00
    jr nc, jr_037_517F                            ; $517C: $30 $01

    nop                                           ; $517E: $00

jr_037_517F:
    ld b, a                                       ; $517F: $47
    inc l                                         ; $5180: $2C
    nop                                           ; $5181: $00
    ld l, d                                       ; $5182: $6A
    ret                                           ; $5183: $C9


    nop                                           ; $5184: $00
    ld bc, $0000                                  ; $5185: $01 $00 $00
    nop                                           ; $5188: $00
    nop                                           ; $5189: $00
    nop                                           ; $518A: $00
    inc bc                                        ; $518B: $03
    nop                                           ; $518C: $00
    nop                                           ; $518D: $00
    inc b                                         ; $518E: $04
    ld bc, $0000                                  ; $518F: $01 $00 $00
    dec b                                         ; $5192: $05
    ld bc, $0000                                  ; $5193: $01 $00 $00
    ld [bc], a                                    ; $5196: $02
    nop                                           ; $5197: $00
    nop                                           ; $5198: $00
    ld [bc], a                                    ; $5199: $02
    nop                                           ; $519A: $00
    nop                                           ; $519B: $00
    ld [bc], a                                    ; $519C: $02
    nop                                           ; $519D: $00
    nop                                           ; $519E: $00
    ld b, $FE                                     ; $519F: $06 $FE
    ld c, a                                       ; $51A1: $4F
    nop                                           ; $51A2: $00
    ld [hl], b                                    ; $51A3: $70
    dec [hl]                                      ; $51A4: $35
    nop                                           ; $51A5: $00
    ld b, c                                       ; $51A6: $41
    ld l, l                                       ; $51A7: $6D
    nop                                           ; $51A8: $00
    ld a, [hl-]                                   ; $51A9: $3A
    nop                                           ; $51AA: $00
    nop                                           ; $51AB: $00
    nop                                           ; $51AC: $00
    nop                                           ; $51AD: $00
    nop                                           ; $51AE: $00
    inc bc                                        ; $51AF: $03
    ld bc, $B100                                  ; $51B0: $01 $00 $B1
    halt                                          ; $51B3: $76
    nop                                           ; $51B4: $00
    pop bc                                        ; $51B5: $C1
    ld a, b                                       ; $51B6: $78
    nop                                           ; $51B7: $00
    sub c                                         ; $51B8: $91
    jp nz, Jump_037_7F00                          ; $51B9: $C2 $00 $7F

    dec hl                                        ; $51BC: $2B
    nop                                           ; $51BD: $00
    daa                                           ; $51BE: $27
    nop                                           ; $51BF: $00
    nop                                           ; $51C0: $00
    nop                                           ; $51C1: $00
    ld bc, $0100                                  ; $51C2: $01 $00 $01
    call c, $DA00                                 ; $51C5: $DC $00 $DA
    ld bc, $E300                                  ; $51C8: $01 $00 $E3
    nop                                           ; $51CB: $00
    nop                                           ; $51CC: $00
    nop                                           ; $51CD: $00
    nop                                           ; $51CE: $00
    nop                                           ; $51CF: $00
    inc bc                                        ; $51D0: $03
    nop                                           ; $51D1: $00
    nop                                           ; $51D2: $00
    dec b                                         ; $51D3: $05
    ld bc, $0000                                  ; $51D4: $01 $00 $00
    ld [bc], a                                    ; $51D7: $02
    nop                                           ; $51D8: $00
    nop                                           ; $51D9: $00
    ld b, $FE                                     ; $51DA: $06 $FE
    ld h, $00                                     ; $51DC: $26 $00
    daa                                           ; $51DE: $27
    ld b, d                                       ; $51DF: $42
    nop                                           ; $51E0: $00
    ld c, d                                       ; $51E1: $4A
    ld e, a                                       ; $51E2: $5F
    nop                                           ; $51E3: $00
    dec hl                                        ; $51E4: $2B
    ld [hl], b                                    ; $51E5: $70
    nop                                           ; $51E6: $00
    ld b, d                                       ; $51E7: $42
    ld bc, $4300                                  ; $51E8: $01 $00 $43
    ld [hl], b                                    ; $51EB: $70
    nop                                           ; $51EC: $00
    ld [hl], $6F                                  ; $51ED: $36 $6F
    nop                                           ; $51EF: $00
    scf                                           ; $51F0: $37
    ld l, d                                       ; $51F1: $6A
    nop                                           ; $51F2: $00
    ld bc, $002F                                  ; $51F3: $01 $2F $00
    jr z, jr_037_522B                             ; $51F6: $28 $33

    nop                                           ; $51F8: $00
    inc l                                         ; $51F9: $2C
    ret                                           ; $51FA: $C9


    nop                                           ; $51FB: $00
    ld bc, $0000                                  ; $51FC: $01 $00 $00
    nop                                           ; $51FF: $00
    nop                                           ; $5200: $00
    nop                                           ; $5201: $00
    inc bc                                        ; $5202: $03
    nop                                           ; $5203: $00
    nop                                           ; $5204: $00
    inc bc                                        ; $5205: $03
    ld bc, $B100                                  ; $5206: $01 $00 $B1
    halt                                          ; $5209: $76
    nop                                           ; $520A: $00
    pop bc                                        ; $520B: $C1
    and e                                         ; $520C: $A3
    nop                                           ; $520D: $00
    jp nz, $009A                                  ; $520E: $C2 $9A $00

    ld a, b                                       ; $5211: $78
    sub c                                         ; $5212: $91
    nop                                           ; $5213: $00
    jp nz, $007F                                  ; $5214: $C2 $7F $00

    ld bc, $0001                                  ; $5217: $01 $01 $00
    ld bc, $00DA                                  ; $521A: $01 $DA $00
    call c, Call_000_00DA                         ; $521D: $DC $DA $00
    ld bc, $00E3                                  ; $5220: $01 $E3 $00
    ld bc, $0000                                  ; $5223: $01 $00 $00
    nop                                           ; $5226: $00
    nop                                           ; $5227: $00
    nop                                           ; $5228: $00
    inc bc                                        ; $5229: $03
    nop                                           ; $522A: $00

jr_037_522B:
    nop                                           ; $522B: $00
    dec b                                         ; $522C: $05
    ld bc, $0000                                  ; $522D: $01 $00 $00
    ld [bc], a                                    ; $5230: $02
    nop                                           ; $5231: $00
    nop                                           ; $5232: $00
    ld b, $FE                                     ; $5233: $06 $FE
    ld c, c                                       ; $5235: $49
    nop                                           ; $5236: $00
    ld c, c                                       ; $5237: $49
    ld h, b                                       ; $5238: $60
    nop                                           ; $5239: $00
    jr z, jr_037_5265                             ; $523A: $28 $29

    nop                                           ; $523C: $00
    ld c, d                                       ; $523D: $4A
    ld b, e                                       ; $523E: $43
    nop                                           ; $523F: $00
    ld d, h                                       ; $5240: $54
    ld bc, $3F00                                  ; $5241: $01 $00 $3F
    daa                                           ; $5244: $27
    nop                                           ; $5245: $00
    ld h, $3F                                     ; $5246: $26 $3F
    nop                                           ; $5248: $00
    ld l, c                                       ; $5249: $69
    ld l, [hl]                                    ; $524A: $6E
    nop                                           ; $524B: $00
    scf                                           ; $524C: $37
    ld l, d                                       ; $524D: $6A
    nop                                           ; $524E: $00
    ret                                           ; $524F: $C9


    nop                                           ; $5250: $00
    nop                                           ; $5251: $00
    nop                                           ; $5252: $00
    nop                                           ; $5253: $00
    nop                                           ; $5254: $00
    inc bc                                        ; $5255: $03
    nop                                           ; $5256: $00
    nop                                           ; $5257: $00
    inc bc                                        ; $5258: $03
    ld bc, $8400                                  ; $5259: $01 $00 $84
    cp h                                          ; $525C: $BC
    nop                                           ; $525D: $00
    halt                                          ; $525E: $76
    or b                                          ; $525F: $B0
    nop                                           ; $5260: $00
    halt                                          ; $5261: $76
    or c                                          ; $5262: $B1
    nop                                           ; $5263: $00
    halt                                          ; $5264: $76

jr_037_5265:
    pop bc                                        ; $5265: $C1
    nop                                           ; $5266: $00
    xor d                                         ; $5267: $AA
    pop bc                                        ; $5268: $C1
    nop                                           ; $5269: $00
    sub d                                         ; $526A: $92
    ld bc, $0100                                  ; $526B: $01 $00 $01
    call c, $DE00                                 ; $526E: $DC $00 $DE
    ld bc, $E300                                  ; $5271: $01 $00 $E3
    nop                                           ; $5274: $00
    nop                                           ; $5275: $00
    nop                                           ; $5276: $00
    nop                                           ; $5277: $00
    nop                                           ; $5278: $00
    inc bc                                        ; $5279: $03
    nop                                           ; $527A: $00
    nop                                           ; $527B: $00
    dec b                                         ; $527C: $05
    ld bc, $0000                                  ; $527D: $01 $00 $00
    ld [bc], a                                    ; $5280: $02
    nop                                           ; $5281: $00
    nop                                           ; $5282: $00
    ld b, $FE                                     ; $5283: $06 $FE
    jr z, jr_037_5287                             ; $5285: $28 $00

jr_037_5287:
    ld b, a                                       ; $5287: $47
    ld l, [hl]                                    ; $5288: $6E
    nop                                           ; $5289: $00
    add h                                         ; $528A: $84
    cp h                                          ; $528B: $BC
    nop                                           ; $528C: $00
    add h                                         ; $528D: $84
    cp h                                          ; $528E: $BC
    nop                                           ; $528F: $00
    ld e, l                                       ; $5290: $5D
    ld l, l                                       ; $5291: $6D
    nop                                           ; $5292: $00
    ld [hl], $42                                  ; $5293: $36 $42
    nop                                           ; $5295: $00
    ld bc, $0043                                  ; $5296: $01 $43 $00
    ld [hl], b                                    ; $5299: $70
    ld [hl], $00                                  ; $529A: $36 $00
    ld l, a                                       ; $529C: $6F
    scf                                           ; $529D: $37
    nop                                           ; $529E: $00
    ld l, d                                       ; $529F: $6A
    cpl                                           ; $52A0: $2F
    nop                                           ; $52A1: $00
    jr z, jr_037_52D7                             ; $52A2: $28 $33

    nop                                           ; $52A4: $00
    inc l                                         ; $52A5: $2C
    ret                                           ; $52A6: $C9


    nop                                           ; $52A7: $00
    ld bc, $0000                                  ; $52A8: $01 $00 $00
    inc bc                                        ; $52AB: $03
    nop                                           ; $52AC: $00
    nop                                           ; $52AD: $00
    inc bc                                        ; $52AE: $03
    ld bc, $B100                                  ; $52AF: $01 $00 $B1
    halt                                          ; $52B2: $76
    nop                                           ; $52B3: $00
    pop bc                                        ; $52B4: $C1
    and c                                         ; $52B5: $A1
    nop                                           ; $52B6: $00
    halt                                          ; $52B7: $76
    cp h                                          ; $52B8: $BC
    nop                                           ; $52B9: $00
    ld bc, $0000                                  ; $52BA: $01 $00 $00
    nop                                           ; $52BD: $00
    ld bc, $0100                                  ; $52BE: $01 $00 $01
    sbc $00                                       ; $52C1: $DE $00
    call c, Call_000_00DA                         ; $52C3: $DC $DA $00
    ld bc, $00E2                                  ; $52C6: $01 $E2 $00
    ld bc, $0000                                  ; $52C9: $01 $00 $00
    nop                                           ; $52CC: $00
    nop                                           ; $52CD: $00
    nop                                           ; $52CE: $00
    inc bc                                        ; $52CF: $03
    nop                                           ; $52D0: $00
    nop                                           ; $52D1: $00
    dec b                                         ; $52D2: $05
    ld bc, $0000                                  ; $52D3: $01 $00 $00
    ld [bc], a                                    ; $52D6: $02

jr_037_52D7:
    nop                                           ; $52D7: $00
    nop                                           ; $52D8: $00
    ld b, $FE                                     ; $52D9: $06 $FE
    ccf                                           ; $52DB: $3F
    nop                                           ; $52DC: $00
    daa                                           ; $52DD: $27
    ld l, c                                       ; $52DE: $69
    nop                                           ; $52DF: $00
    ld h, a                                       ; $52E0: $67
    dec l                                         ; $52E1: $2D
    nop                                           ; $52E2: $00
    ld l, [hl]                                    ; $52E3: $6E
    ld bc, $3700                                  ; $52E4: $01 $00 $37
    cpl                                           ; $52E7: $2F
    nop                                           ; $52E8: $00
    ld [hl], $44                                  ; $52E9: $36 $44
    nop                                           ; $52EB: $00
    ld l, $2B                                     ; $52EC: $2E $2B
    nop                                           ; $52EE: $00
    daa                                           ; $52EF: $27
    ld d, b                                       ; $52F0: $50
    nop                                           ; $52F1: $00
    dec l                                         ; $52F2: $2D
    scf                                           ; $52F3: $37
    nop                                           ; $52F4: $00
    ld l, d                                       ; $52F5: $6A
    ret                                           ; $52F6: $C9


    nop                                           ; $52F7: $00
    ld bc, $0000                                  ; $52F8: $01 $00 $00
    nop                                           ; $52FB: $00
    nop                                           ; $52FC: $00
    nop                                           ; $52FD: $00
    inc bc                                        ; $52FE: $03
    nop                                           ; $52FF: $00
    nop                                           ; $5300: $00
    inc bc                                        ; $5301: $03
    add l                                         ; $5302: $85
    nop                                           ; $5303: $00
    ld a, [hl]                                    ; $5304: $7E
    ld c, a                                       ; $5305: $4F
    nop                                           ; $5306: $00
    ld [hl], b                                    ; $5307: $70
    dec [hl]                                      ; $5308: $35
    nop                                           ; $5309: $00
    ld b, c                                       ; $530A: $41
    ld l, l                                       ; $530B: $6D
    nop                                           ; $530C: $00
    ld a, [hl-]                                   ; $530D: $3A
    nop                                           ; $530E: $00
    nop                                           ; $530F: $00
    nop                                           ; $5310: $00
    nop                                           ; $5311: $00
    nop                                           ; $5312: $00
    inc bc                                        ; $5313: $03
    ld bc, $BA00                                  ; $5314: $01 $00 $BA
    xor e                                         ; $5317: $AB
    nop                                           ; $5318: $00
    jp nz, $009A                                  ; $5319: $C2 $9A $00

    cp d                                          ; $531C: $BA
    and [hl]                                      ; $531D: $A6
    nop                                           ; $531E: $00
    jp nz, Jump_000_0095                          ; $531F: $C2 $95 $00

    ld bc, $0000                                  ; $5322: $01 $00 $00
    nop                                           ; $5325: $00
    ld bc, $0100                                  ; $5326: $01 $00 $01
    call c, $DA00                                 ; $5329: $DC $00 $DA
    call c, $DE00                                 ; $532C: $DC $00 $DE
    ld bc, $E300                                  ; $532F: $01 $00 $E3
    nop                                           ; $5332: $00
    nop                                           ; $5333: $00
    nop                                           ; $5334: $00
    nop                                           ; $5335: $00
    nop                                           ; $5336: $00
    inc bc                                        ; $5337: $03
    nop                                           ; $5338: $00
    nop                                           ; $5339: $00
    dec b                                         ; $533A: $05
    ld bc, $0000                                  ; $533B: $01 $00 $00
    ld [bc], a                                    ; $533E: $02
    nop                                           ; $533F: $00
    nop                                           ; $5340: $00
    ld b, $FE                                     ; $5341: $06 $FE
    jr z, jr_037_5345                             ; $5343: $28 $00

jr_037_5345:
    dec [hl]                                      ; $5345: $35
    ld sp, $3000                                  ; $5346: $31 $00 $30
    ld bc, $3F00                                  ; $5349: $01 $00 $3F
    dec l                                         ; $534C: $2D
    nop                                           ; $534D: $00
    dec [hl]                                      ; $534E: $35
    ld l, a                                       ; $534F: $6F
    nop                                           ; $5350: $00
    ld bc, $0047                                  ; $5351: $01 $47 $00
    ld b, d                                       ; $5354: $42
    dec l                                         ; $5355: $2D
    nop                                           ; $5356: $00
    ld l, d                                       ; $5357: $6A
    ret                                           ; $5358: $C9


    nop                                           ; $5359: $00
    ld bc, $0000                                  ; $535A: $01 $00 $00
    nop                                           ; $535D: $00
    nop                                           ; $535E: $00
    nop                                           ; $535F: $00
    inc bc                                        ; $5360: $03
    nop                                           ; $5361: $00
    nop                                           ; $5362: $00
    inc bc                                        ; $5363: $03
    nop                                           ; $5364: $00
    nop                                           ; $5365: $00
    inc bc                                        ; $5366: $03
    ret nc                                        ; $5367: $D0

    nop                                           ; $5368: $00
    ld a, [hl+]                                   ; $5369: $2A
    ld h, c                                       ; $536A: $61
    nop                                           ; $536B: $00
    ld [hl], $6C                                  ; $536C: $36 $6C
    nop                                           ; $536E: $00
    add hl, sp                                    ; $536F: $39
    jr z, jr_037_5372                             ; $5370: $28 $00

jr_037_5372:
    ld b, h                                       ; $5372: $44
    dec hl                                        ; $5373: $2B
    nop                                           ; $5374: $00
    ld l, b                                       ; $5375: $68
    nop                                           ; $5376: $00
    nop                                           ; $5377: $00
    nop                                           ; $5378: $00
    ld bc, $5D00                                  ; $5379: $01 $00 $5D
    dec a                                         ; $537C: $3D
    nop                                           ; $537D: $00
    ld b, d                                       ; $537E: $42
    ld h, c                                       ; $537F: $61
    nop                                           ; $5380: $00
    ld l, b                                       ; $5381: $68
    jr z, jr_037_5384                             ; $5382: $28 $00

jr_037_5384:
    ld c, l                                       ; $5384: $4D
    rlc b                                         ; $5385: $CB $00
    pop de                                        ; $5387: $D1
    nop                                           ; $5388: $00
    nop                                           ; $5389: $00
    nop                                           ; $538A: $00
    nop                                           ; $538B: $00
    nop                                           ; $538C: $00
    inc bc                                        ; $538D: $03
    nop                                           ; $538E: $00
    nop                                           ; $538F: $00
    dec b                                         ; $5390: $05
    ld bc, $0000                                  ; $5391: $01 $00 $00
    ld [bc], a                                    ; $5394: $02
    nop                                           ; $5395: $00
    nop                                           ; $5396: $00
    ld [bc], a                                    ; $5397: $02
    nop                                           ; $5398: $00
    nop                                           ; $5399: $00
    ld [bc], a                                    ; $539A: $02
    nop                                           ; $539B: $00
    nop                                           ; $539C: $00
    dec b                                         ; $539D: $05
    add b                                         ; $539E: $80
    nop                                           ; $539F: $00
    nop                                           ; $53A0: $00
    ld [bc], a                                    ; $53A1: $02
    nop                                           ; $53A2: $00
    nop                                           ; $53A3: $00
    ld bc, $539B                                  ; $53A4: $01 $9B $53
    ld bc, $7800                                  ; $53A7: $01 $00 $78
    cp h                                          ; $53AA: $BC
    nop                                           ; $53AB: $00
    sub h                                         ; $53AC: $94
    or b                                          ; $53AD: $B0
    nop                                           ; $53AE: $00
    adc c                                         ; $53AF: $89
    nop                                           ; $53B0: $00
    nop                                           ; $53B1: $00
    nop                                           ; $53B2: $00
    nop                                           ; $53B3: $00
    nop                                           ; $53B4: $00
    inc bc                                        ; $53B5: $03
    adc h                                         ; $53B6: $8C
    jr nz, jr_037_5400                            ; $53B7: $20 $47

    ld bc, $B100                                  ; $53B9: $01 $00 $B1
    halt                                          ; $53BC: $76
    nop                                           ; $53BD: $00
    pop bc                                        ; $53BE: $C1
    ld b, e                                       ; $53BF: $43
    ld bc, $877A                                  ; $53C0: $01 $7A $87
    jr nz, jr_037_540F                            ; $53C3: $20 $4A

    ld bc, $5001                                  ; $53C5: $01 $01 $50
    ld d, c                                       ; $53C8: $51
    db $10                                        ; $53C9: $10
    add d                                         ; $53CA: $82
    ld a, c                                       ; $53CB: $79
    nop                                           ; $53CC: $00
    ld a, b                                       ; $53CD: $78
    ld c, l                                       ; $53CE: $4D
    nop                                           ; $53CF: $00
    ld h, h                                       ; $53D0: $64
    jr z, jr_037_53D3                             ; $53D1: $28 $00

jr_037_53D3:
    scf                                           ; $53D3: $37
    ld l, [hl]                                    ; $53D4: $6E
    nop                                           ; $53D5: $00
    ld bc, $1098                                  ; $53D6: $01 $98 $10
    ld b, d                                       ; $53D9: $42
    daa                                           ; $53DA: $27
    nop                                           ; $53DB: $00
    ld l, d                                       ; $53DC: $6A
    ret                                           ; $53DD: $C9


    nop                                           ; $53DE: $00
    ld bc, $0000                                  ; $53DF: $01 $00 $00
    nop                                           ; $53E2: $00
    nop                                           ; $53E3: $00
    nop                                           ; $53E4: $00
    inc bc                                        ; $53E5: $03
    ld b, b                                       ; $53E6: $40
    ld de, $4241                                  ; $53E7: $11 $41 $42
    db $10                                        ; $53EA: $10
    ld bc, $0000                                  ; $53EB: $01 $00 $00
    nop                                           ; $53EE: $00
    nop                                           ; $53EF: $00
    nop                                           ; $53F0: $00
    inc bc                                        ; $53F1: $03
    ld bc, $7800                                  ; $53F2: $01 $00 $78
    cp h                                          ; $53F5: $BC
    nop                                           ; $53F6: $00
    sub h                                         ; $53F7: $94
    or b                                          ; $53F8: $B0
    nop                                           ; $53F9: $00
    adc c                                         ; $53FA: $89
    and b                                         ; $53FB: $A0
    nop                                           ; $53FC: $00
    pop bc                                        ; $53FD: $C1
    xor a                                         ; $53FE: $AF
    nop                                           ; $53FF: $00

jr_037_5400:
    halt                                          ; $5400: $76
    nop                                           ; $5401: $00
    nop                                           ; $5402: $00
    nop                                           ; $5403: $00
    ld bc, $0100                                  ; $5404: $01 $00 $01
    call c, $DE00                                 ; $5407: $DC $00 $DE
    ld bc, $E300                                  ; $540A: $01 $00 $E3
    nop                                           ; $540D: $00
    nop                                           ; $540E: $00

jr_037_540F:
    nop                                           ; $540F: $00
    nop                                           ; $5410: $00
    nop                                           ; $5411: $00
    inc bc                                        ; $5412: $03
    nop                                           ; $5413: $00
    nop                                           ; $5414: $00
    dec b                                         ; $5415: $05
    ld bc, $0000                                  ; $5416: $01 $00 $00
    ld [bc], a                                    ; $5419: $02
    nop                                           ; $541A: $00
    nop                                           ; $541B: $00
    ld b, $FE                                     ; $541C: $06 $FE
    xor e                                         ; $541E: $AB
    nop                                           ; $541F: $00
    add c                                         ; $5420: $81
    xor e                                         ; $5421: $AB
    nop                                           ; $5422: $00
    add c                                         ; $5423: $81
    and b                                         ; $5424: $A0
    nop                                           ; $5425: $00
    pop bc                                        ; $5426: $C1
    xor a                                         ; $5427: $AF
    nop                                           ; $5428: $00
    halt                                          ; $5429: $76
    ld b, a                                       ; $542A: $47
    nop                                           ; $542B: $00
    ld bc, $118D                                  ; $542C: $01 $8D $11
    adc e                                         ; $542F: $8B
    scf                                           ; $5430: $37
    nop                                           ; $5431: $00
    ld l, d                                       ; $5432: $6A
    ret                                           ; $5433: $C9


    nop                                           ; $5434: $00
    ld bc, $0000                                  ; $5435: $01 $00 $00
    nop                                           ; $5438: $00
    nop                                           ; $5439: $00
    nop                                           ; $543A: $00
    inc bc                                        ; $543B: $03
    nop                                           ; $543C: $00
    nop                                           ; $543D: $00
    inc bc                                        ; $543E: $03
    ld bc, $B100                                  ; $543F: $01 $00 $B1
    halt                                          ; $5442: $76
    nop                                           ; $5443: $00
    pop bc                                        ; $5444: $C1
    adc c                                         ; $5445: $89
    nop                                           ; $5446: $00
    cp d                                          ; $5447: $BA
    jp nz, $8800                                  ; $5448: $C2 $00 $88

    cp b                                          ; $544B: $B8
    nop                                           ; $544C: $00
    ld bc, $0000                                  ; $544D: $01 $00 $00
    nop                                           ; $5450: $00
    ld bc, $0100                                  ; $5451: $01 $00 $01
    jp c, $DC00                                   ; $5454: $DA $00 $DC

    jp c, Boot                                    ; $5457: $DA $00 $01

    db $E3                                        ; $545A: $E3
    nop                                           ; $545B: $00
    ld bc, $0000                                  ; $545C: $01 $00 $00
    nop                                           ; $545F: $00
    nop                                           ; $5460: $00
    nop                                           ; $5461: $00
    inc bc                                        ; $5462: $03
    nop                                           ; $5463: $00
    nop                                           ; $5464: $00
    dec b                                         ; $5465: $05
    ld bc, $0000                                  ; $5466: $01 $00 $00
    ld [bc], a                                    ; $5469: $02
    nop                                           ; $546A: $00
    nop                                           ; $546B: $00
    ld b, $FE                                     ; $546C: $06 $FE
    ld l, h                                       ; $546E: $6C
    db $10                                        ; $546F: $10
    ld [hl], b                                    ; $5470: $70
    ld b, d                                       ; $5471: $42
    nop                                           ; $5472: $00
    daa                                           ; $5473: $27
    ld l, d                                       ; $5474: $6A
    ld [bc], a                                    ; $5475: $02
    adc b                                         ; $5476: $88
    adc c                                         ; $5477: $89
    jr nz, @+$49                                  ; $5478: $20 $47

    ld bc, $8E01                                  ; $547A: $01 $01 $8E
    rlca                                          ; $547D: $07
    db $10                                        ; $547E: $10
    ld l, [hl]                                    ; $547F: $6E
    cpl                                           ; $5480: $2F
    jr nz, jr_037_54AF                            ; $5481: $20 $2C

    adc d                                         ; $5483: $8A
    db $10                                        ; $5484: $10
    inc sp                                        ; $5485: $33
    ld l, d                                       ; $5486: $6A
    nop                                           ; $5487: $00
    ret                                           ; $5488: $C9


    nop                                           ; $5489: $00
    nop                                           ; $548A: $00
    nop                                           ; $548B: $00
    nop                                           ; $548C: $00
    nop                                           ; $548D: $00
    inc bc                                        ; $548E: $03
    nop                                           ; $548F: $00
    nop                                           ; $5490: $00
    inc bc                                        ; $5491: $03
    ld bc, $B100                                  ; $5492: $01 $00 $B1
    halt                                          ; $5495: $76
    nop                                           ; $5496: $00
    pop bc                                        ; $5497: $C1
    ld a, b                                       ; $5498: $78
    nop                                           ; $5499: $00
    sub c                                         ; $549A: $91
    jp nz, Jump_037_7F00                          ; $549B: $C2 $00 $7F

    nop                                           ; $549E: $00
    nop                                           ; $549F: $00
    nop                                           ; $54A0: $00
    ld bc, $0100                                  ; $54A1: $01 $00 $01
    call c, $DA00                                 ; $54A4: $DC $00 $DA
    ld bc, $E300                                  ; $54A7: $01 $00 $E3
    nop                                           ; $54AA: $00
    nop                                           ; $54AB: $00
    nop                                           ; $54AC: $00
    nop                                           ; $54AD: $00
    nop                                           ; $54AE: $00

jr_037_54AF:
    inc bc                                        ; $54AF: $03
    nop                                           ; $54B0: $00
    nop                                           ; $54B1: $00
    dec b                                         ; $54B2: $05
    ld bc, $0000                                  ; $54B3: $01 $00 $00
    ld [bc], a                                    ; $54B6: $02
    nop                                           ; $54B7: $00
    nop                                           ; $54B8: $00
    ld b, $FE                                     ; $54B9: $06 $FE
    adc [hl]                                      ; $54BB: $8E
    ld de, $4A07                                  ; $54BC: $11 $07 $4A
    nop                                           ; $54BF: $00
    ld bc, $00B1                                  ; $54C0: $01 $B1 $00
    halt                                          ; $54C3: $76
    pop bc                                        ; $54C4: $C1
    nop                                           ; $54C5: $00
    ld l, [hl]                                    ; $54C6: $6E
    ld bc, $1B02                                  ; $54C7: $01 $02 $1B
    inc sp                                        ; $54CA: $33
    nop                                           ; $54CB: $00
    ld b, c                                       ; $54CC: $41
    ld l, $00                                     ; $54CD: $2E $00
    ld l, d                                       ; $54CF: $6A
    ret                                           ; $54D0: $C9


    nop                                           ; $54D1: $00
    ld bc, $0000                                  ; $54D2: $01 $00 $00
    nop                                           ; $54D5: $00
    nop                                           ; $54D6: $00
    nop                                           ; $54D7: $00
    inc bc                                        ; $54D8: $03
    nop                                           ; $54D9: $00
    nop                                           ; $54DA: $00
    inc bc                                        ; $54DB: $03
    ld bc, $7800                                  ; $54DC: $01 $00 $78
    cp h                                          ; $54DF: $BC
    nop                                           ; $54E0: $00
    sub h                                         ; $54E1: $94
    or b                                          ; $54E2: $B0
    nop                                           ; $54E3: $00
    adc c                                         ; $54E4: $89
    cp d                                          ; $54E5: $BA
    nop                                           ; $54E6: $00
    jp nz, $0088                                  ; $54E7: $C2 $88 $00

    cp b                                          ; $54EA: $B8
    nop                                           ; $54EB: $00
    nop                                           ; $54EC: $00
    nop                                           ; $54ED: $00
    ld bc, $0100                                  ; $54EE: $01 $00 $01
    sbc $00                                       ; $54F1: $DE $00
    call c, Call_000_00DA                         ; $54F3: $DC $DA $00
    ld bc, $00E2                                  ; $54F6: $01 $E2 $00
    ld bc, $0000                                  ; $54F9: $01 $00 $00
    nop                                           ; $54FC: $00
    nop                                           ; $54FD: $00
    nop                                           ; $54FE: $00
    inc bc                                        ; $54FF: $03
    nop                                           ; $5500: $00
    nop                                           ; $5501: $00
    dec b                                         ; $5502: $05
    ld bc, $0000                                  ; $5503: $01 $00 $00
    ld [bc], a                                    ; $5506: $02
    nop                                           ; $5507: $00
    nop                                           ; $5508: $00
    ld b, $FE                                     ; $5509: $06 $FE
    cpl                                           ; $550B: $2F
    ld [hl+], a                                   ; $550C: $22
    rla                                           ; $550D: $17
    ld [hl], $00                                  ; $550E: $36 $00
    ld c, c                                       ; $5510: $49
    jr nc, jr_037_5513                            ; $5511: $30 $00

jr_037_5513:
    ld l, b                                       ; $5513: $68
    ld bc, $3402                                  ; $5514: $01 $02 $34
    add b                                         ; $5517: $80
    ld de, $8B8D                                  ; $5518: $11 $8D $8B
    db $10                                        ; $551B: $10
    scf                                           ; $551C: $37
    ld l, d                                       ; $551D: $6A
    nop                                           ; $551E: $00
    ret                                           ; $551F: $C9


    nop                                           ; $5520: $00
    nop                                           ; $5521: $00
    nop                                           ; $5522: $00
    nop                                           ; $5523: $00
    nop                                           ; $5524: $00
    inc bc                                        ; $5525: $03
    nop                                           ; $5526: $00
    nop                                           ; $5527: $00
    inc bc                                        ; $5528: $03
    sbc a                                         ; $5529: $9F
    ld hl, $4140                                  ; $552A: $21 $40 $41
    ld de, $0042                                  ; $552D: $11 $42 $00
    nop                                           ; $5530: $00
    nop                                           ; $5531: $00
    nop                                           ; $5532: $00
    nop                                           ; $5533: $00
    inc bc                                        ; $5534: $03
    ld bc, $7800                                  ; $5535: $01 $00 $78
    cp h                                          ; $5538: $BC
    nop                                           ; $5539: $00
    sub h                                         ; $553A: $94
    or b                                          ; $553B: $B0
    nop                                           ; $553C: $00
    ld a, h                                       ; $553D: $7C
    pop bc                                        ; $553E: $C1
    nop                                           ; $553F: $00
    and b                                         ; $5540: $A0
    pop bc                                        ; $5541: $C1
    nop                                           ; $5542: $00
    xor a                                         ; $5543: $AF
    halt                                          ; $5544: $76
    nop                                           ; $5545: $00
    ld bc, $0001                                  ; $5546: $01 $01 $00
    ld bc, $00DC                                  ; $5549: $01 $DC $00
    jp c, Jump_000_00DC                           ; $554C: $DA $DC $00

    sbc $01                                       ; $554F: $DE $01
    nop                                           ; $5551: $00
    db $E3                                        ; $5552: $E3
    nop                                           ; $5553: $00
    nop                                           ; $5554: $00
    nop                                           ; $5555: $00
    nop                                           ; $5556: $00
    nop                                           ; $5557: $00
    inc bc                                        ; $5558: $03
    nop                                           ; $5559: $00
    nop                                           ; $555A: $00
    dec b                                         ; $555B: $05
    ld bc, $0000                                  ; $555C: $01 $00 $00
    ld [bc], a                                    ; $555F: $02
    nop                                           ; $5560: $00
    nop                                           ; $5561: $00
    ld b, $FE                                     ; $5562: $06 $FE
    scf                                           ; $5564: $37
    ld hl, $A001                                  ; $5565: $21 $01 $A0
    nop                                           ; $5568: $00
    pop bc                                        ; $5569: $C1
    xor a                                         ; $556A: $AF
    nop                                           ; $556B: $00
    halt                                          ; $556C: $76
    ld b, a                                       ; $556D: $47
    nop                                           ; $556E: $00
    ld bc, $118E                                  ; $556F: $01 $8E $11
    rlca                                          ; $5572: $07
    ld l, [hl]                                    ; $5573: $6E
    ld bc, $2C43                                  ; $5574: $01 $43 $2C
    ld bc, $3744                                  ; $5577: $01 $44 $37
    nop                                           ; $557A: $00
    ret                                           ; $557B: $C9


    nop                                           ; $557C: $00
    nop                                           ; $557D: $00
    nop                                           ; $557E: $00
    nop                                           ; $557F: $00
    nop                                           ; $5580: $00
    inc bc                                        ; $5581: $03
    nop                                           ; $5582: $00
    nop                                           ; $5583: $00
    inc bc                                        ; $5584: $03
    ret nc                                        ; $5585: $D0

    nop                                           ; $5586: $00
    or c                                          ; $5587: $B1
    halt                                          ; $5588: $76
    nop                                           ; $5589: $00
    pop bc                                        ; $558A: $C1
    pop de                                        ; $558B: $D1
    nop                                           ; $558C: $00
    ld b, e                                       ; $558D: $43
    ld bc, $8A02                                  ; $558E: $01 $02 $8A
    adc e                                         ; $5591: $8B
    jr nz, @+$39                                  ; $5592: $20 $37

    ld l, d                                       ; $5594: $6A
    nop                                           ; $5595: $00
    cpl                                           ; $5596: $2F
    ld b, e                                       ; $5597: $43
    nop                                           ; $5598: $00
    jr nc, jr_037_559C                            ; $5599: $30 $01

    nop                                           ; $559B: $00

jr_037_559C:
    ld b, a                                       ; $559C: $47
    inc l                                         ; $559D: $2C
    nop                                           ; $559E: $00
    ld l, d                                       ; $559F: $6A
    ret                                           ; $55A0: $C9


    nop                                           ; $55A1: $00
    ld bc, $0000                                  ; $55A2: $01 $00 $00
    nop                                           ; $55A5: $00
    nop                                           ; $55A6: $00
    nop                                           ; $55A7: $00
    inc bc                                        ; $55A8: $03
    nop                                           ; $55A9: $00
    nop                                           ; $55AA: $00
    inc b                                         ; $55AB: $04
    ld bc, $0000                                  ; $55AC: $01 $00 $00
    dec b                                         ; $55AF: $05
    ld bc, $0000                                  ; $55B0: $01 $00 $00
    ld [bc], a                                    ; $55B3: $02
    nop                                           ; $55B4: $00
    nop                                           ; $55B5: $00
    ld [bc], a                                    ; $55B6: $02
    nop                                           ; $55B7: $00
    nop                                           ; $55B8: $00
    ld [bc], a                                    ; $55B9: $02
    nop                                           ; $55BA: $00
    nop                                           ; $55BB: $00
    ld b, $FE                                     ; $55BC: $06 $FE
    ld b, b                                       ; $55BE: $40
    ld de, $4241                                  ; $55BF: $11 $41 $42
    db $10                                        ; $55C2: $10
    ld bc, $0000                                  ; $55C3: $01 $00 $00
    nop                                           ; $55C6: $00
    nop                                           ; $55C7: $00
    nop                                           ; $55C8: $00
    inc bc                                        ; $55C9: $03
    ld bc, $B100                                  ; $55CA: $01 $00 $B1
    halt                                          ; $55CD: $76
    nop                                           ; $55CE: $00
    pop bc                                        ; $55CF: $C1
    ld a, b                                       ; $55D0: $78
    nop                                           ; $55D1: $00
    sub c                                         ; $55D2: $91
    jp nz, Jump_037_7F00                          ; $55D3: $C2 $00 $7F

    add l                                         ; $55D6: $85
    jr nz, jr_037_55DA                            ; $55D7: $20 $01

    nop                                           ; $55D9: $00

jr_037_55DA:
    nop                                           ; $55DA: $00
    nop                                           ; $55DB: $00
    ld bc, $0100                                  ; $55DC: $01 $00 $01
    call c, $DA00                                 ; $55DF: $DC $00 $DA
    ld bc, $E300                                  ; $55E2: $01 $00 $E3
    nop                                           ; $55E5: $00
    nop                                           ; $55E6: $00
    nop                                           ; $55E7: $00
    nop                                           ; $55E8: $00
    nop                                           ; $55E9: $00
    inc bc                                        ; $55EA: $03
    nop                                           ; $55EB: $00
    nop                                           ; $55EC: $00
    dec b                                         ; $55ED: $05
    ld bc, $0000                                  ; $55EE: $01 $00 $00
    ld [bc], a                                    ; $55F1: $02
    nop                                           ; $55F2: $00
    nop                                           ; $55F3: $00
    ld b, $FE                                     ; $55F4: $06 $FE
    adc [hl]                                      ; $55F6: $8E
    ld de, $4A07                                  ; $55F7: $11 $07 $4A
    ld bc, $2B93                                  ; $55FA: $01 $93 $2B
    nop                                           ; $55FD: $00
    ld [hl], b                                    ; $55FE: $70
    ld b, d                                       ; $55FF: $42
    nop                                           ; $5600: $00
    ld bc, $222F                                  ; $5601: $01 $2F $22
    rla                                           ; $5604: $17
    scf                                           ; $5605: $37
    nop                                           ; $5606: $00
    ld l, d                                       ; $5607: $6A
    adc l                                         ; $5608: $8D
    ld de, $C98B                                  ; $5609: $11 $8B $C9
    nop                                           ; $560C: $00
    ld bc, $0000                                  ; $560D: $01 $00 $00
    nop                                           ; $5610: $00
    nop                                           ; $5611: $00
    nop                                           ; $5612: $00
    inc bc                                        ; $5613: $03
    nop                                           ; $5614: $00
    nop                                           ; $5615: $00
    inc bc                                        ; $5616: $03
    ld bc, $B100                                  ; $5617: $01 $00 $B1
    halt                                          ; $561A: $76
    nop                                           ; $561B: $00
    pop bc                                        ; $561C: $C1
    and e                                         ; $561D: $A3
    nop                                           ; $561E: $00
    jp nz, $009A                                  ; $561F: $C2 $9A $00

    ld a, b                                       ; $5622: $78
    sub c                                         ; $5623: $91
    nop                                           ; $5624: $00
    jp nz, $007F                                  ; $5625: $C2 $7F $00

    ld bc, $0001                                  ; $5628: $01 $01 $00
    ld bc, $00DA                                  ; $562B: $01 $DA $00
    call c, Call_000_00DA                         ; $562E: $DC $DA $00
    ld bc, $00E3                                  ; $5631: $01 $E3 $00
    ld bc, $0000                                  ; $5634: $01 $00 $00
    nop                                           ; $5637: $00
    nop                                           ; $5638: $00
    nop                                           ; $5639: $00
    inc bc                                        ; $563A: $03
    nop                                           ; $563B: $00
    nop                                           ; $563C: $00
    dec b                                         ; $563D: $05
    ld bc, $0000                                  ; $563E: $01 $00 $00
    ld [bc], a                                    ; $5641: $02
    nop                                           ; $5642: $00
    nop                                           ; $5643: $00
    ld b, $FE                                     ; $5644: $06 $FE
    ld a, [de]                                    ; $5646: $1A
    jr nz, jr_037_56A9                            ; $5647: $20 $60

    adc d                                         ; $5649: $8A
    db $10                                        ; $564A: $10
    ld c, d                                       ; $564B: $4A
    jr nc, jr_037_566E                            ; $564C: $30 $20

    ld d, h                                       ; $564E: $54
    ld bc, $1602                                  ; $564F: $01 $02 $16
    sbc h                                         ; $5652: $9C
    db $10                                        ; $5653: $10
    ccf                                           ; $5654: $3F
    ld l, c                                       ; $5655: $69
    nop                                           ; $5656: $00
    ld l, [hl]                                    ; $5657: $6E
    scf                                           ; $5658: $37
    nop                                           ; $5659: $00
    ld l, d                                       ; $565A: $6A
    ret                                           ; $565B: $C9


    nop                                           ; $565C: $00
    ld bc, $0000                                  ; $565D: $01 $00 $00
    nop                                           ; $5660: $00
    nop                                           ; $5661: $00
    nop                                           ; $5662: $00
    inc bc                                        ; $5663: $03
    nop                                           ; $5664: $00
    nop                                           ; $5665: $00
    inc bc                                        ; $5666: $03
    ld bc, $8400                                  ; $5667: $01 $00 $84
    cp h                                          ; $566A: $BC
    nop                                           ; $566B: $00
    halt                                          ; $566C: $76
    or b                                          ; $566D: $B0

jr_037_566E:
    nop                                           ; $566E: $00
    halt                                          ; $566F: $76
    or c                                          ; $5670: $B1
    nop                                           ; $5671: $00
    halt                                          ; $5672: $76
    pop bc                                        ; $5673: $C1
    nop                                           ; $5674: $00
    xor d                                         ; $5675: $AA
    pop bc                                        ; $5676: $C1
    nop                                           ; $5677: $00
    sub d                                         ; $5678: $92
    ld bc, $0100                                  ; $5679: $01 $00 $01
    call c, $DE00                                 ; $567C: $DC $00 $DE
    ld bc, $E300                                  ; $567F: $01 $00 $E3
    nop                                           ; $5682: $00
    nop                                           ; $5683: $00
    nop                                           ; $5684: $00
    nop                                           ; $5685: $00
    nop                                           ; $5686: $00
    inc bc                                        ; $5687: $03
    nop                                           ; $5688: $00
    nop                                           ; $5689: $00
    dec b                                         ; $568A: $05
    ld bc, $0000                                  ; $568B: $01 $00 $00
    ld [bc], a                                    ; $568E: $02
    nop                                           ; $568F: $00
    nop                                           ; $5690: $00
    ld b, $FE                                     ; $5691: $06 $FE
    ccf                                           ; $5693: $3F
    jr nz, jr_037_5704                            ; $5694: $20 $6E

    add h                                         ; $5696: $84
    nop                                           ; $5697: $00
    cp h                                          ; $5698: $BC
    add h                                         ; $5699: $84
    nop                                           ; $569A: $00
    cp h                                          ; $569B: $BC
    inc [hl]                                      ; $569C: $34
    db $10                                        ; $569D: $10
    ld [hl], $42                                  ; $569E: $36 $42
    nop                                           ; $56A0: $00
    ld bc, $222F                                  ; $56A1: $01 $2F $22
    rla                                           ; $56A4: $17
    scf                                           ; $56A5: $37
    nop                                           ; $56A6: $00
    ld l, d                                       ; $56A7: $6A
    adc l                                         ; $56A8: $8D

jr_037_56A9:
    ld de, $C98B                                  ; $56A9: $11 $8B $C9
    nop                                           ; $56AC: $00
    ld bc, $0000                                  ; $56AD: $01 $00 $00
    nop                                           ; $56B0: $00
    nop                                           ; $56B1: $00
    nop                                           ; $56B2: $00
    inc bc                                        ; $56B3: $03
    nop                                           ; $56B4: $00
    nop                                           ; $56B5: $00
    inc bc                                        ; $56B6: $03
    ld bc, $B100                                  ; $56B7: $01 $00 $B1
    halt                                          ; $56BA: $76
    nop                                           ; $56BB: $00
    pop bc                                        ; $56BC: $C1
    and c                                         ; $56BD: $A1
    nop                                           ; $56BE: $00
    halt                                          ; $56BF: $76
    cp h                                          ; $56C0: $BC
    nop                                           ; $56C1: $00
    ld bc, $0000                                  ; $56C2: $01 $00 $00
    nop                                           ; $56C5: $00
    ld bc, $0100                                  ; $56C6: $01 $00 $01
    sbc $00                                       ; $56C9: $DE $00
    call c, Call_000_00DA                         ; $56CB: $DC $DA $00
    ld bc, $00E2                                  ; $56CE: $01 $E2 $00
    ld bc, $0000                                  ; $56D1: $01 $00 $00
    nop                                           ; $56D4: $00
    nop                                           ; $56D5: $00
    nop                                           ; $56D6: $00
    inc bc                                        ; $56D7: $03
    nop                                           ; $56D8: $00
    nop                                           ; $56D9: $00
    dec b                                         ; $56DA: $05
    ld bc, $0000                                  ; $56DB: $01 $00 $00
    ld [bc], a                                    ; $56DE: $02
    nop                                           ; $56DF: $00
    nop                                           ; $56E0: $00
    ld b, $FE                                     ; $56E1: $06 $FE
    ld d, $21                                     ; $56E3: $16 $21
    inc b                                         ; $56E5: $04
    ld l, [hl]                                    ; $56E6: $6E
    ld [bc], a                                    ; $56E7: $02
    dec h                                         ; $56E8: $25
    ld [hl], $00                                  ; $56E9: $36 $00
    ld b, h                                       ; $56EB: $44
    ld l, $01                                     ; $56EC: $2E $01
    inc [hl]                                      ; $56EE: $34
    dec [hl]                                      ; $56EF: $35
    db $10                                        ; $56F0: $10
    scf                                           ; $56F1: $37
    ld l, d                                       ; $56F2: $6A
    nop                                           ; $56F3: $00
    ret                                           ; $56F4: $C9


    nop                                           ; $56F5: $00
    nop                                           ; $56F6: $00
    inc bc                                        ; $56F7: $03
    nop                                           ; $56F8: $00
    nop                                           ; $56F9: $00
    inc bc                                        ; $56FA: $03
    sbc a                                         ; $56FB: $9F
    ld hl, $4140                                  ; $56FC: $21 $40 $41
    ld de, $0042                                  ; $56FF: $11 $42 $00
    nop                                           ; $5702: $00
    nop                                           ; $5703: $00

jr_037_5704:
    nop                                           ; $5704: $00
    nop                                           ; $5705: $00
    inc bc                                        ; $5706: $03
    ld bc, $BA00                                  ; $5707: $01 $00 $BA
    xor e                                         ; $570A: $AB
    nop                                           ; $570B: $00
    jp nz, $009A                                  ; $570C: $C2 $9A $00

    cp d                                          ; $570F: $BA
    and [hl]                                      ; $5710: $A6
    nop                                           ; $5711: $00
    jp nz, Jump_000_0095                          ; $5712: $C2 $95 $00

    ld bc, $0000                                  ; $5715: $01 $00 $00
    nop                                           ; $5718: $00
    ld bc, $0100                                  ; $5719: $01 $00 $01
    call c, $DA00                                 ; $571C: $DC $00 $DA
    call c, $DE00                                 ; $571F: $DC $00 $DE
    ld bc, $E300                                  ; $5722: $01 $00 $E3
    nop                                           ; $5725: $00
    nop                                           ; $5726: $00
    nop                                           ; $5727: $00
    nop                                           ; $5728: $00
    nop                                           ; $5729: $00
    inc bc                                        ; $572A: $03
    nop                                           ; $572B: $00
    nop                                           ; $572C: $00
    dec b                                         ; $572D: $05
    ld bc, $0000                                  ; $572E: $01 $00 $00
    ld [bc], a                                    ; $5731: $02
    nop                                           ; $5732: $00
    nop                                           ; $5733: $00
    ld b, $FE                                     ; $5734: $06 $FE
    jr z, jr_037_5738                             ; $5736: $28 $00

jr_037_5738:
    dec [hl]                                      ; $5738: $35
    ld sp, $3000                                  ; $5739: $31 $00 $30
    ld bc, $3F00                                  ; $573C: $01 $00 $3F
    dec l                                         ; $573F: $2D
    nop                                           ; $5740: $00
    dec [hl]                                      ; $5741: $35
    ld l, a                                       ; $5742: $6F
    nop                                           ; $5743: $00
    ld bc, $1018                                  ; $5744: $01 $18 $10
    ld b, d                                       ; $5747: $42
    dec l                                         ; $5748: $2D
    nop                                           ; $5749: $00
    ld l, d                                       ; $574A: $6A
    ret                                           ; $574B: $C9


    nop                                           ; $574C: $00
    ld bc, $0000                                  ; $574D: $01 $00 $00
    nop                                           ; $5750: $00
    nop                                           ; $5751: $00
    nop                                           ; $5752: $00
    inc bc                                        ; $5753: $03
    nop                                           ; $5754: $00
    nop                                           ; $5755: $00
    inc bc                                        ; $5756: $03
    nop                                           ; $5757: $00
    nop                                           ; $5758: $00
    inc bc                                        ; $5759: $03
    ret nc                                        ; $575A: $D0

    nop                                           ; $575B: $00
    ld a, [hl+]                                   ; $575C: $2A
    ld h, c                                       ; $575D: $61
    nop                                           ; $575E: $00
    ld [hl], $6C                                  ; $575F: $36 $6C
    nop                                           ; $5761: $00
    add hl, sp                                    ; $5762: $39
    jr z, jr_037_5765                             ; $5763: $28 $00

jr_037_5765:
    ld b, h                                       ; $5765: $44
    dec hl                                        ; $5766: $2B
    nop                                           ; $5767: $00
    ld l, b                                       ; $5768: $68
    nop                                           ; $5769: $00
    nop                                           ; $576A: $00
    nop                                           ; $576B: $00
    ld bc, $5D00                                  ; $576C: $01 $00 $5D
    dec a                                         ; $576F: $3D
    nop                                           ; $5770: $00
    ld b, d                                       ; $5771: $42
    ld h, c                                       ; $5772: $61
    nop                                           ; $5773: $00
    ld l, b                                       ; $5774: $68
    jr z, jr_037_5777                             ; $5775: $28 $00

jr_037_5777:
    ld c, l                                       ; $5777: $4D
    rlc b                                         ; $5778: $CB $00
    pop de                                        ; $577A: $D1
    nop                                           ; $577B: $00
    nop                                           ; $577C: $00
    nop                                           ; $577D: $00
    nop                                           ; $577E: $00
    nop                                           ; $577F: $00
    inc bc                                        ; $5780: $03
    nop                                           ; $5781: $00
    nop                                           ; $5782: $00
    dec b                                         ; $5783: $05
    ld bc, $0000                                  ; $5784: $01 $00 $00
    ld [bc], a                                    ; $5787: $02
    nop                                           ; $5788: $00
    nop                                           ; $5789: $00
    ld [bc], a                                    ; $578A: $02
    nop                                           ; $578B: $00
    nop                                           ; $578C: $00
    ld [bc], a                                    ; $578D: $02
    nop                                           ; $578E: $00
    nop                                           ; $578F: $00
    dec b                                         ; $5790: $05
    add b                                         ; $5791: $80
    nop                                           ; $5792: $00
    nop                                           ; $5793: $00
    ld [bc], a                                    ; $5794: $02
    nop                                           ; $5795: $00
    nop                                           ; $5796: $00
    ld bc, $578E                                  ; $5797: $01 $8E $57
    add hl, sp                                    ; $579A: $39
    nop                                           ; $579B: $00
    jr z, jr_037_57D4                             ; $579C: $28 $36

    nop                                           ; $579E: $00
    ld l, e                                       ; $579F: $6B
    daa                                           ; $57A0: $27
    nop                                           ; $57A1: $00
    dec hl                                        ; $57A2: $2B
    ld l, a                                       ; $57A3: $6F
    nop                                           ; $57A4: $00
    ld bc, $0000                                  ; $57A5: $01 $00 $00
    nop                                           ; $57A8: $00
    ld bc, $BA00                                  ; $57A9: $01 $00 $BA
    ld a, c                                       ; $57AC: $79
    nop                                           ; $57AD: $00
    ld a, h                                       ; $57AE: $7C
    add c                                         ; $57AF: $81
    nop                                           ; $57B0: $00
    pop bc                                        ; $57B1: $C1
    xor c                                         ; $57B2: $A9
    nop                                           ; $57B3: $00
    ld a, c                                       ; $57B4: $79
    nop                                           ; $57B5: $00
    nop                                           ; $57B6: $00
    nop                                           ; $57B7: $00
    nop                                           ; $57B8: $00
    nop                                           ; $57B9: $00
    inc bc                                        ; $57BA: $03
    ld l, l                                       ; $57BB: $6D
    nop                                           ; $57BC: $00
    dec l                                         ; $57BD: $2D
    jr c, jr_037_57C0                             ; $57BE: $38 $00

jr_037_57C0:
    daa                                           ; $57C0: $27
    add d                                         ; $57C1: $82
    nop                                           ; $57C2: $00
    ld a, c                                       ; $57C3: $79
    ld a, b                                       ; $57C4: $78
    nop                                           ; $57C5: $00
    ld c, l                                       ; $57C6: $4D
    ld d, c                                       ; $57C7: $51
    nop                                           ; $57C8: $00
    daa                                           ; $57C9: $27
    ld l, l                                       ; $57CA: $6D
    nop                                           ; $57CB: $00
    ld l, [hl]                                    ; $57CC: $6E
    ld e, l                                       ; $57CD: $5D
    nop                                           ; $57CE: $00
    ld h, c                                       ; $57CF: $61
    ld l, d                                       ; $57D0: $6A
    nop                                           ; $57D1: $00
    ccf                                           ; $57D2: $3F
    ld h, b                                       ; $57D3: $60

jr_037_57D4:
    nop                                           ; $57D4: $00
    ld c, d                                       ; $57D5: $4A
    ld bc, $3F00                                  ; $57D6: $01 $00 $3F
    ccf                                           ; $57D9: $3F
    nop                                           ; $57DA: $00
    dec hl                                        ; $57DB: $2B
    jr z, jr_037_57DE                             ; $57DC: $28 $00

jr_037_57DE:
    ld bc, $0087                                  ; $57DE: $01 $87 $00
    ld a, c                                       ; $57E1: $79
    and l                                         ; $57E2: $A5
    nop                                           ; $57E3: $00
    sub l                                         ; $57E4: $95
    cp [hl]                                       ; $57E5: $BE
    nop                                           ; $57E6: $00
    pop bc                                        ; $57E7: $C1
    ld [hl], $00                                  ; $57E8: $36 $00
    ld l, e                                       ; $57EA: $6B
    daa                                           ; $57EB: $27
    nop                                           ; $57EC: $00
    dec hl                                        ; $57ED: $2B
    ld l, a                                       ; $57EE: $6F
    nop                                           ; $57EF: $00
    ret                                           ; $57F0: $C9


    nop                                           ; $57F1: $00
    nop                                           ; $57F2: $00
    inc bc                                        ; $57F3: $03
    ld e, l                                       ; $57F4: $5D
    nop                                           ; $57F5: $00
    dec sp                                        ; $57F6: $3B
    ld h, b                                       ; $57F7: $60
    nop                                           ; $57F8: $00
    ld b, a                                       ; $57F9: $47
    ld bc, $2C00                                  ; $57FA: $01 $00 $2C
    ld d, h                                       ; $57FD: $54
    nop                                           ; $57FE: $00
    ld [hl], $27                                  ; $57FF: $36 $27
    nop                                           ; $5801: $00
    cp e                                          ; $5802: $BB
    halt                                          ; $5803: $76
    nop                                           ; $5804: $00
    sub [hl]                                      ; $5805: $96
    halt                                          ; $5806: $76
    nop                                           ; $5807: $00
    ld b, h                                       ; $5808: $44
    jr nc, jr_037_580B                            ; $5809: $30 $00

jr_037_580B:
    ld bc, $0052                                  ; $580B: $01 $52 $00
    ld l, a                                       ; $580E: $6F
    ld b, e                                       ; $580F: $43
    nop                                           ; $5810: $00
    jr z, jr_037_5861                             ; $5811: $28 $4E

    nop                                           ; $5813: $00
    ld bc, $0043                                  ; $5814: $01 $43 $00
    ld b, d                                       ; $5817: $42
    ld h, c                                       ; $5818: $61
    nop                                           ; $5819: $00
    ld h, d                                       ; $581A: $62
    dec [hl]                                      ; $581B: $35
    nop                                           ; $581C: $00
    ld [hl], $27                                  ; $581D: $36 $27
    nop                                           ; $581F: $00
    ret                                           ; $5820: $C9


    nop                                           ; $5821: $00
    nop                                           ; $5822: $00
    nop                                           ; $5823: $00
    nop                                           ; $5824: $00
    nop                                           ; $5825: $00
    inc bc                                        ; $5826: $03
    ld c, a                                       ; $5827: $4F
    nop                                           ; $5828: $00
    ld [hl], b                                    ; $5829: $70
    dec [hl]                                      ; $582A: $35
    nop                                           ; $582B: $00
    ld b, c                                       ; $582C: $41
    ld l, l                                       ; $582D: $6D
    nop                                           ; $582E: $00
    ld a, [hl-]                                   ; $582F: $3A
    nop                                           ; $5830: $00
    nop                                           ; $5831: $00
    nop                                           ; $5832: $00
    nop                                           ; $5833: $00
    nop                                           ; $5834: $00
    inc bc                                        ; $5835: $03
    ld bc, $BA00                                  ; $5836: $01 $00 $BA
    ld a, c                                       ; $5839: $79
    nop                                           ; $583A: $00
    ld a, h                                       ; $583B: $7C
    adc b                                         ; $583C: $88
    nop                                           ; $583D: $00
    cp c                                          ; $583E: $B9
    jp nz, $9500                                  ; $583F: $C2 $00 $95

    nop                                           ; $5842: $00
    nop                                           ; $5843: $00
    nop                                           ; $5844: $00
    ld bc, $0100                                  ; $5845: $01 $00 $01
    call c, $DA00                                 ; $5848: $DC $00 $DA
    ld bc, $E300                                  ; $584B: $01 $00 $E3
    nop                                           ; $584E: $00
    nop                                           ; $584F: $00
    nop                                           ; $5850: $00
    nop                                           ; $5851: $00
    nop                                           ; $5852: $00
    inc bc                                        ; $5853: $03
    nop                                           ; $5854: $00
    nop                                           ; $5855: $00
    dec b                                         ; $5856: $05
    ld bc, $0000                                  ; $5857: $01 $00 $00
    ld [bc], a                                    ; $585A: $02
    nop                                           ; $585B: $00
    nop                                           ; $585C: $00
    ld b, $FE                                     ; $585D: $06 $FE
    ld e, l                                       ; $585F: $5D
    nop                                           ; $5860: $00

jr_037_5861:
    add hl, hl                                    ; $5861: $29
    ld c, d                                       ; $5862: $4A
    nop                                           ; $5863: $00
    ld e, a                                       ; $5864: $5F
    ld l, $00                                     ; $5865: $2E $00
    ld b, d                                       ; $5867: $42
    ld bc, $8800                                  ; $5868: $01 $00 $88
    cp c                                          ; $586B: $B9
    nop                                           ; $586C: $00
    jp nz, Jump_000_0095                          ; $586D: $C2 $95 $00

    ld l, [hl]                                    ; $5870: $6E
    jr z, jr_037_5873                             ; $5871: $28 $00

jr_037_5873:
    ld b, c                                       ; $5873: $41
    ret                                           ; $5874: $C9


    nop                                           ; $5875: $00
    ld bc, $0000                                  ; $5876: $01 $00 $00
    nop                                           ; $5879: $00
    nop                                           ; $587A: $00
    nop                                           ; $587B: $00
    inc bc                                        ; $587C: $03
    nop                                           ; $587D: $00
    nop                                           ; $587E: $00
    inc bc                                        ; $587F: $03
    ld bc, $BA00                                  ; $5880: $01 $00 $BA
    ld a, c                                       ; $5883: $79
    nop                                           ; $5884: $00
    ld a, h                                       ; $5885: $7C
    sub l                                         ; $5886: $95
    nop                                           ; $5887: $00
    push bc                                       ; $5888: $C5
    halt                                          ; $5889: $76
    nop                                           ; $588A: $00
    adc c                                         ; $588B: $89
    nop                                           ; $588C: $00
    nop                                           ; $588D: $00
    nop                                           ; $588E: $00
    ld bc, $0100                                  ; $588F: $01 $00 $01
    call c, $DE00                                 ; $5892: $DC $00 $DE
    ld bc, $E300                                  ; $5895: $01 $00 $E3
    nop                                           ; $5898: $00
    nop                                           ; $5899: $00
    nop                                           ; $589A: $00
    nop                                           ; $589B: $00
    nop                                           ; $589C: $00
    inc bc                                        ; $589D: $03
    nop                                           ; $589E: $00
    nop                                           ; $589F: $00
    dec b                                         ; $58A0: $05
    ld bc, $0000                                  ; $58A1: $01 $00 $00
    ld [bc], a                                    ; $58A4: $02
    nop                                           ; $58A5: $00
    nop                                           ; $58A6: $00
    ld b, $FE                                     ; $58A7: $06 $FE
    cp d                                          ; $58A9: $BA
    nop                                           ; $58AA: $00
    ld a, c                                       ; $58AB: $79
    ld a, h                                       ; $58AC: $7C
    nop                                           ; $58AD: $00
    pop bc                                        ; $58AE: $C1
    ld a, a                                       ; $58AF: $7F
    nop                                           ; $58B0: $00
    cp [hl]                                       ; $58B1: $BE
    halt                                          ; $58B2: $76
    nop                                           ; $58B3: $00
    ld b, a                                       ; $58B4: $47
    ld bc, $4300                                  ; $58B5: $01 $00 $43
    ld [hl], b                                    ; $58B8: $70
    nop                                           ; $58B9: $00
    ld [hl], $6F                                  ; $58BA: $36 $6F
    nop                                           ; $58BC: $00
    scf                                           ; $58BD: $37
    ld l, d                                       ; $58BE: $6A
    nop                                           ; $58BF: $00
    ld bc, $002F                                  ; $58C0: $01 $2F $00
    jr z, jr_037_58F8                             ; $58C3: $28 $33

    nop                                           ; $58C5: $00
    inc l                                         ; $58C6: $2C
    ret                                           ; $58C7: $C9


    nop                                           ; $58C8: $00
    ld bc, $0000                                  ; $58C9: $01 $00 $00
    nop                                           ; $58CC: $00
    nop                                           ; $58CD: $00
    nop                                           ; $58CE: $00
    inc bc                                        ; $58CF: $03
    nop                                           ; $58D0: $00
    nop                                           ; $58D1: $00
    inc bc                                        ; $58D2: $03
    ld bc, $BA00                                  ; $58D3: $01 $00 $BA
    ld a, c                                       ; $58D6: $79
    nop                                           ; $58D7: $00
    ld a, h                                       ; $58D8: $7C
    sub h                                         ; $58D9: $94
    nop                                           ; $58DA: $00
    pop bc                                        ; $58DB: $C1
    xor l                                         ; $58DC: $AD
    nop                                           ; $58DD: $00
    adc c                                         ; $58DE: $89
    sub l                                         ; $58DF: $95
    nop                                           ; $58E0: $00
    ld bc, $0000                                  ; $58E1: $01 $00 $00
    nop                                           ; $58E4: $00
    ld bc, $0100                                  ; $58E5: $01 $00 $01
    jp c, $DC00                                   ; $58E8: $DA $00 $DC

    jp c, Boot                                    ; $58EB: $DA $00 $01

    db $E3                                        ; $58EE: $E3
    nop                                           ; $58EF: $00
    ld bc, $0000                                  ; $58F0: $01 $00 $00
    nop                                           ; $58F3: $00
    nop                                           ; $58F4: $00
    nop                                           ; $58F5: $00
    inc bc                                        ; $58F6: $03
    nop                                           ; $58F7: $00

jr_037_58F8:
    nop                                           ; $58F8: $00
    dec b                                         ; $58F9: $05
    ld bc, $0000                                  ; $58FA: $01 $00 $00
    ld [bc], a                                    ; $58FD: $02
    nop                                           ; $58FE: $00
    nop                                           ; $58FF: $00
    ld b, $FE                                     ; $5900: $06 $FE
    jr z, jr_037_5904                             ; $5902: $28 $00

jr_037_5904:
    add hl, hl                                    ; $5904: $29
    ld c, d                                       ; $5905: $4A
    nop                                           ; $5906: $00
    ld e, a                                       ; $5907: $5F
    dec hl                                        ; $5908: $2B
    nop                                           ; $5909: $00
    ld [hl], b                                    ; $590A: $70
    ld b, d                                       ; $590B: $42
    nop                                           ; $590C: $00
    ld bc, $00BA                                  ; $590D: $01 $BA $00
    ld a, c                                       ; $5910: $79
    ld a, h                                       ; $5911: $7C
    nop                                           ; $5912: $00
    pop bc                                        ; $5913: $C1
    ld a, a                                       ; $5914: $7F
    nop                                           ; $5915: $00
    cp [hl]                                       ; $5916: $BE
    halt                                          ; $5917: $76
    nop                                           ; $5918: $00
    ld b, a                                       ; $5919: $47
    ld bc, $2F00                                  ; $591A: $01 $00 $2F
    jr z, jr_037_591F                             ; $591D: $28 $00

jr_037_591F:
    inc sp                                        ; $591F: $33
    inc l                                         ; $5920: $2C
    nop                                           ; $5921: $00
    ret                                           ; $5922: $C9


    nop                                           ; $5923: $00
    nop                                           ; $5924: $00
    nop                                           ; $5925: $00
    nop                                           ; $5926: $00
    nop                                           ; $5927: $00
    inc bc                                        ; $5928: $03
    nop                                           ; $5929: $00
    nop                                           ; $592A: $00
    inc bc                                        ; $592B: $03
    ld bc, $BA00                                  ; $592C: $01 $00 $BA
    ld a, c                                       ; $592F: $79
    nop                                           ; $5930: $00
    ld a, h                                       ; $5931: $7C
    sub c                                         ; $5932: $91
    nop                                           ; $5933: $00
    ld a, c                                       ; $5934: $79
    and d                                         ; $5935: $A2
    nop                                           ; $5936: $00
    halt                                          ; $5937: $76
    pop bc                                        ; $5938: $C1
    nop                                           ; $5939: $00
    ld bc, $0000                                  ; $593A: $01 $00 $00
    nop                                           ; $593D: $00
    ld bc, $0100                                  ; $593E: $01 $00 $01
    sbc $00                                       ; $5941: $DE $00
    call c, Call_000_00DA                         ; $5943: $DC $DA $00
    ld bc, $00E3                                  ; $5946: $01 $E3 $00
    ld bc, $0000                                  ; $5949: $01 $00 $00
    nop                                           ; $594C: $00
    nop                                           ; $594D: $00
    nop                                           ; $594E: $00
    inc bc                                        ; $594F: $03
    nop                                           ; $5950: $00
    nop                                           ; $5951: $00
    dec b                                         ; $5952: $05
    ld bc, $0000                                  ; $5953: $01 $00 $00
    ld [bc], a                                    ; $5956: $02
    nop                                           ; $5957: $00
    nop                                           ; $5958: $00
    ld b, $FE                                     ; $5959: $06 $FE
    sub c                                         ; $595B: $91
    nop                                           ; $595C: $00
    sub h                                         ; $595D: $94
    add d                                         ; $595E: $82
    nop                                           ; $595F: $00
    or b                                          ; $5960: $B0
    ld l, [hl]                                    ; $5961: $6E
    nop                                           ; $5962: $00
    ld e, l                                       ; $5963: $5D
    ld l, l                                       ; $5964: $6D
    nop                                           ; $5965: $00
    ld [hl], $42                                  ; $5966: $36 $42
    nop                                           ; $5968: $00
    ld bc, $0043                                  ; $5969: $01 $43 $00
    ld d, h                                       ; $596C: $54
    ld c, b                                       ; $596D: $48
    nop                                           ; $596E: $00
    jr z, jr_037_59A3                             ; $596F: $28 $32

    nop                                           ; $5971: $00
    ld l, [hl]                                    ; $5972: $6E
    ld bc, $4E00                                  ; $5973: $01 $00 $4E
    ld c, h                                       ; $5976: $4C
    nop                                           ; $5977: $00
    dec hl                                        ; $5978: $2B
    add hl, hl                                    ; $5979: $29
    nop                                           ; $597A: $00
    scf                                           ; $597B: $37
    ret                                           ; $597C: $C9


    nop                                           ; $597D: $00
    ld bc, $0000                                  ; $597E: $01 $00 $00
    nop                                           ; $5981: $00
    nop                                           ; $5982: $00
    nop                                           ; $5983: $00
    inc bc                                        ; $5984: $03
    nop                                           ; $5985: $00
    nop                                           ; $5986: $00
    inc bc                                        ; $5987: $03
    add l                                         ; $5988: $85
    nop                                           ; $5989: $00
    ld a, [hl]                                    ; $598A: $7E
    ld c, a                                       ; $598B: $4F
    nop                                           ; $598C: $00
    ld [hl], b                                    ; $598D: $70
    dec [hl]                                      ; $598E: $35
    nop                                           ; $598F: $00
    ld b, c                                       ; $5990: $41
    ld l, l                                       ; $5991: $6D
    nop                                           ; $5992: $00
    ld a, [hl-]                                   ; $5993: $3A
    nop                                           ; $5994: $00
    nop                                           ; $5995: $00
    nop                                           ; $5996: $00
    nop                                           ; $5997: $00
    nop                                           ; $5998: $00
    inc bc                                        ; $5999: $03
    ld bc, $8B00                                  ; $599A: $01 $00 $8B
    ld a, d                                       ; $599D: $7A
    nop                                           ; $599E: $00
    cp h                                          ; $599F: $BC
    ld a, c                                       ; $59A0: $79
    nop                                           ; $59A1: $00
    pop bc                                        ; $59A2: $C1

jr_037_59A3:
    xor d                                         ; $59A3: $AA
    nop                                           ; $59A4: $00
    ld a, a                                       ; $59A5: $7F
    sub l                                         ; $59A6: $95
    nop                                           ; $59A7: $00
    ld bc, $0000                                  ; $59A8: $01 $00 $00
    nop                                           ; $59AB: $00
    ld bc, $0100                                  ; $59AC: $01 $00 $01
    call c, $DA00                                 ; $59AF: $DC $00 $DA
    call c, $DE00                                 ; $59B2: $DC $00 $DE
    ld bc, $E300                                  ; $59B5: $01 $00 $E3
    nop                                           ; $59B8: $00
    nop                                           ; $59B9: $00
    nop                                           ; $59BA: $00
    nop                                           ; $59BB: $00
    nop                                           ; $59BC: $00
    inc bc                                        ; $59BD: $03
    nop                                           ; $59BE: $00
    nop                                           ; $59BF: $00
    dec b                                         ; $59C0: $05
    ld bc, $0000                                  ; $59C1: $01 $00 $00
    ld [bc], a                                    ; $59C4: $02
    nop                                           ; $59C5: $00
    nop                                           ; $59C6: $00
    ld b, $FE                                     ; $59C7: $06 $FE
    ld b, e                                       ; $59C9: $43
    nop                                           ; $59CA: $00
    ld [hl], b                                    ; $59CB: $70
    ld [hl], $00                                  ; $59CC: $36 $00
    ld l, a                                       ; $59CE: $6F
    ld [hl], $00                                  ; $59CF: $36 $00
    ld b, d                                       ; $59D1: $42
    ld bc, $A100                                  ; $59D2: $01 $00 $A1
    jp nz, $9500                                  ; $59D5: $C2 $00 $95

    ld [hl], $00                                  ; $59D8: $36 $00
    ccf                                           ; $59DA: $3F
    ld l, b                                       ; $59DB: $68
    nop                                           ; $59DC: $00
    ld bc, $006B                                  ; $59DD: $01 $6B $00
    ld l, a                                       ; $59E0: $6F
    ld a, $00                                     ; $59E1: $3E $00
    dec l                                         ; $59E3: $2D
    cpl                                           ; $59E4: $2F
    nop                                           ; $59E5: $00
    jr z, jr_037_5A1B                             ; $59E6: $28 $33

    nop                                           ; $59E8: $00
    inc l                                         ; $59E9: $2C
    ld l, [hl]                                    ; $59EA: $6E
    nop                                           ; $59EB: $00
    scf                                           ; $59EC: $37
    ld l, d                                       ; $59ED: $6A
    nop                                           ; $59EE: $00
    ret                                           ; $59EF: $C9


    nop                                           ; $59F0: $00
    nop                                           ; $59F1: $00
    nop                                           ; $59F2: $00
    nop                                           ; $59F3: $00
    nop                                           ; $59F4: $00
    inc bc                                        ; $59F5: $03
    nop                                           ; $59F6: $00
    nop                                           ; $59F7: $00
    inc bc                                        ; $59F8: $03
    and [hl]                                      ; $59F9: $A6
    nop                                           ; $59FA: $00
    halt                                          ; $59FB: $76
    adc c                                         ; $59FC: $89
    nop                                           ; $59FD: $00
    sub l                                         ; $59FE: $95
    or e                                          ; $59FF: $B3
    nop                                           ; $5A00: $00
    halt                                          ; $5A01: $76
    sbc d                                         ; $5A02: $9A
    nop                                           ; $5A03: $00
    ld c, [hl]                                    ; $5A04: $4E
    nop                                           ; $5A05: $00
    nop                                           ; $5A06: $00
    nop                                           ; $5A07: $00
    nop                                           ; $5A08: $00
    nop                                           ; $5A09: $00
    inc bc                                        ; $5A0A: $03
    ret nc                                        ; $5A0B: $D0

    nop                                           ; $5A0C: $00
    cp d                                          ; $5A0D: $BA
    ld a, c                                       ; $5A0E: $79
    nop                                           ; $5A0F: $00
    ld a, h                                       ; $5A10: $7C
    pop bc                                        ; $5A11: $C1
    nop                                           ; $5A12: $00
    pop de                                        ; $5A13: $D1
    ld c, d                                       ; $5A14: $4A
    nop                                           ; $5A15: $00
    ld bc, $0000                                  ; $5A16: $01 $00 $00
    nop                                           ; $5A19: $00
    ld d, c                                       ; $5A1A: $51

jr_037_5A1B:
    nop                                           ; $5A1B: $00
    ld l, a                                       ; $5A1C: $6F
    ld [hl], $00                                  ; $5A1D: $36 $00
    ld l, a                                       ; $5A1F: $6F
    scf                                           ; $5A20: $37
    nop                                           ; $5A21: $00
    ld l, d                                       ; $5A22: $6A
    ret                                           ; $5A23: $C9


    nop                                           ; $5A24: $00
    ld bc, $0000                                  ; $5A25: $01 $00 $00
    nop                                           ; $5A28: $00
    nop                                           ; $5A29: $00
    nop                                           ; $5A2A: $00
    inc bc                                        ; $5A2B: $03
    nop                                           ; $5A2C: $00
    nop                                           ; $5A2D: $00
    inc b                                         ; $5A2E: $04
    ld bc, $0000                                  ; $5A2F: $01 $00 $00
    dec b                                         ; $5A32: $05
    ld bc, $0000                                  ; $5A33: $01 $00 $00
    ld [bc], a                                    ; $5A36: $02
    nop                                           ; $5A37: $00
    nop                                           ; $5A38: $00
    ld [bc], a                                    ; $5A39: $02
    nop                                           ; $5A3A: $00
    nop                                           ; $5A3B: $00
    ld [bc], a                                    ; $5A3C: $02
    nop                                           ; $5A3D: $00
    nop                                           ; $5A3E: $00
    ld b, $FE                                     ; $5A3F: $06 $FE
    ld c, a                                       ; $5A41: $4F
    nop                                           ; $5A42: $00
    ld [hl], b                                    ; $5A43: $70
    dec [hl]                                      ; $5A44: $35
    nop                                           ; $5A45: $00
    ld b, c                                       ; $5A46: $41
    ld l, l                                       ; $5A47: $6D
    nop                                           ; $5A48: $00
    ld a, [hl-]                                   ; $5A49: $3A
    nop                                           ; $5A4A: $00
    nop                                           ; $5A4B: $00
    nop                                           ; $5A4C: $00
    nop                                           ; $5A4D: $00
    nop                                           ; $5A4E: $00
    inc bc                                        ; $5A4F: $03
    ld bc, $BA00                                  ; $5A50: $01 $00 $BA
    ld a, c                                       ; $5A53: $79
    nop                                           ; $5A54: $00
    ld a, h                                       ; $5A55: $7C
    sub l                                         ; $5A56: $95
    nop                                           ; $5A57: $00
    cp h                                          ; $5A58: $BC
    sbc [hl]                                      ; $5A59: $9E
    nop                                           ; $5A5A: $00
    halt                                          ; $5A5B: $76
    sbc d                                         ; $5A5C: $9A
    nop                                           ; $5A5D: $00
    ld bc, $0000                                  ; $5A5E: $01 $00 $00
    nop                                           ; $5A61: $00
    ld bc, $0100                                  ; $5A62: $01 $00 $01
    call c, $DE00                                 ; $5A65: $DC $00 $DE
    ld bc, $E300                                  ; $5A68: $01 $00 $E3
    nop                                           ; $5A6B: $00
    nop                                           ; $5A6C: $00
    nop                                           ; $5A6D: $00
    nop                                           ; $5A6E: $00
    nop                                           ; $5A6F: $00
    inc bc                                        ; $5A70: $03
    nop                                           ; $5A71: $00
    nop                                           ; $5A72: $00
    dec b                                         ; $5A73: $05
    ld bc, $0000                                  ; $5A74: $01 $00 $00
    ld [bc], a                                    ; $5A77: $02
    nop                                           ; $5A78: $00
    nop                                           ; $5A79: $00
    ld b, $FE                                     ; $5A7A: $06 $FE
    ld e, l                                       ; $5A7C: $5D
    nop                                           ; $5A7D: $00
    add hl, hl                                    ; $5A7E: $29
    ld c, d                                       ; $5A7F: $4A
    nop                                           ; $5A80: $00
    ld b, e                                       ; $5A81: $43
    ld [hl], b                                    ; $5A82: $70
    nop                                           ; $5A83: $00
    ld [hl], $6F                                  ; $5A84: $36 $6F
    nop                                           ; $5A86: $00
    scf                                           ; $5A87: $37
    ld l, d                                       ; $5A88: $6A
    nop                                           ; $5A89: $00
    ld bc, $002F                                  ; $5A8A: $01 $2F $00
    jr z, @+$35                                   ; $5A8D: $28 $33

    nop                                           ; $5A8F: $00
    inc l                                         ; $5A90: $2C
    ret                                           ; $5A91: $C9


    nop                                           ; $5A92: $00
    ld bc, $0000                                  ; $5A93: $01 $00 $00
    nop                                           ; $5A96: $00
    nop                                           ; $5A97: $00
    nop                                           ; $5A98: $00
    inc bc                                        ; $5A99: $03
    nop                                           ; $5A9A: $00
    nop                                           ; $5A9B: $00
    inc bc                                        ; $5A9C: $03
    ld bc, $BA00                                  ; $5A9D: $01 $00 $BA
    ld a, c                                       ; $5AA0: $79
    nop                                           ; $5AA1: $00
    ld a, h                                       ; $5AA2: $7C
    ld a, l                                       ; $5AA3: $7D
    nop                                           ; $5AA4: $00
    sbc a                                         ; $5AA5: $9F
    pop bc                                        ; $5AA6: $C1
    nop                                           ; $5AA7: $00
    ld bc, $0000                                  ; $5AA8: $01 $00 $00
    nop                                           ; $5AAB: $00
    ld bc, $0100                                  ; $5AAC: $01 $00 $01
    jp c, $DC00                                   ; $5AAF: $DA $00 $DC

    jp c, Boot                                    ; $5AB2: $DA $00 $01

    db $E3                                        ; $5AB5: $E3
    nop                                           ; $5AB6: $00
    ld bc, $0000                                  ; $5AB7: $01 $00 $00
    nop                                           ; $5ABA: $00
    nop                                           ; $5ABB: $00
    nop                                           ; $5ABC: $00
    inc bc                                        ; $5ABD: $03
    nop                                           ; $5ABE: $00
    nop                                           ; $5ABF: $00
    dec b                                         ; $5AC0: $05
    ld bc, $0000                                  ; $5AC1: $01 $00 $00
    ld [bc], a                                    ; $5AC4: $02
    nop                                           ; $5AC5: $00
    nop                                           ; $5AC6: $00
    ld b, $FE                                     ; $5AC7: $06 $FE
    ld c, c                                       ; $5AC9: $49
    nop                                           ; $5ACA: $00
    ld c, c                                       ; $5ACB: $49
    ld h, b                                       ; $5ACC: $60
    nop                                           ; $5ACD: $00
    jr z, jr_037_5AF9                             ; $5ACE: $28 $29

    nop                                           ; $5AD0: $00
    ld c, d                                       ; $5AD1: $4A
    ld bc, $5F00                                  ; $5AD2: $01 $00 $5F
    dec hl                                        ; $5AD5: $2B
    nop                                           ; $5AD6: $00
    ld [hl], b                                    ; $5AD7: $70
    ld b, d                                       ; $5AD8: $42
    nop                                           ; $5AD9: $00
    ld bc, $0043                                  ; $5ADA: $01 $43 $00
    ld [hl], b                                    ; $5ADD: $70
    ld [hl], $00                                  ; $5ADE: $36 $00
    ld l, a                                       ; $5AE0: $6F
    scf                                           ; $5AE1: $37
    nop                                           ; $5AE2: $00
    ld l, d                                       ; $5AE3: $6A
    ld bc, $2F00                                  ; $5AE4: $01 $00 $2F
    jr z, jr_037_5AE9                             ; $5AE7: $28 $00

jr_037_5AE9:
    inc sp                                        ; $5AE9: $33
    inc l                                         ; $5AEA: $2C
    nop                                           ; $5AEB: $00
    ret                                           ; $5AEC: $C9


    nop                                           ; $5AED: $00
    nop                                           ; $5AEE: $00
    inc bc                                        ; $5AEF: $03
    nop                                           ; $5AF0: $00
    nop                                           ; $5AF1: $00
    inc bc                                        ; $5AF2: $03
    ld bc, $8900                                  ; $5AF3: $01 $00 $89
    ld a, l                                       ; $5AF6: $7D
    nop                                           ; $5AF7: $00
    ld a, c                                       ; $5AF8: $79

jr_037_5AF9:
    ld a, l                                       ; $5AF9: $7D
    nop                                           ; $5AFA: $00
    sbc a                                         ; $5AFB: $9F
    pop bc                                        ; $5AFC: $C1
    nop                                           ; $5AFD: $00
    ld bc, $0000                                  ; $5AFE: $01 $00 $00
    nop                                           ; $5B01: $00
    ld bc, $0100                                  ; $5B02: $01 $00 $01
    adc l                                         ; $5B05: $8D
    nop                                           ; $5B06: $00
    or a                                          ; $5B07: $B7
    pop bc                                        ; $5B08: $C1
    nop                                           ; $5B09: $00
    xor h                                         ; $5B0A: $AC
    ld bc, $DC00                                  ; $5B0B: $01 $00 $DC
    sbc $00                                       ; $5B0E: $DE $00
    ld bc, $00E3                                  ; $5B10: $01 $E3 $00
    ld bc, $0000                                  ; $5B13: $01 $00 $00
    inc bc                                        ; $5B16: $03
    nop                                           ; $5B17: $00
    nop                                           ; $5B18: $00
    dec b                                         ; $5B19: $05
    ld bc, $0000                                  ; $5B1A: $01 $00 $00
    ld [bc], a                                    ; $5B1D: $02
    nop                                           ; $5B1E: $00
    nop                                           ; $5B1F: $00
    ld b, $FE                                     ; $5B20: $06 $FE
    dec l                                         ; $5B22: $2D
    nop                                           ; $5B23: $00
    jr z, jr_037_5B66                             ; $5B24: $28 $40

    nop                                           ; $5B26: $00
    ld h, [hl]                                    ; $5B27: $66
    jr z, jr_037_5B2A                             ; $5B28: $28 $00

jr_037_5B2A:
    dec hl                                        ; $5B2A: $2B
    ld l, b                                       ; $5B2B: $68
    nop                                           ; $5B2C: $00
    ld bc, $0049                                  ; $5B2D: $01 $49 $00
    ld c, c                                       ; $5B30: $49
    ld h, b                                       ; $5B31: $60
    nop                                           ; $5B32: $00
    ld [hl], $3F                                  ; $5B33: $36 $3F
    nop                                           ; $5B35: $00
    ld c, d                                       ; $5B36: $4A
    ld bc, $4300                                  ; $5B37: $01 $00 $43
    ld [hl], b                                    ; $5B3A: $70
    nop                                           ; $5B3B: $00
    ld [hl], $6F                                  ; $5B3C: $36 $6F
    nop                                           ; $5B3E: $00
    scf                                           ; $5B3F: $37
    ld l, d                                       ; $5B40: $6A
    nop                                           ; $5B41: $00
    ret                                           ; $5B42: $C9


    nop                                           ; $5B43: $00
    nop                                           ; $5B44: $00
    nop                                           ; $5B45: $00
    nop                                           ; $5B46: $00
    nop                                           ; $5B47: $00
    inc bc                                        ; $5B48: $03
    nop                                           ; $5B49: $00
    nop                                           ; $5B4A: $00
    inc bc                                        ; $5B4B: $03
    ld bc, $BA00                                  ; $5B4C: $01 $00 $BA
    ld a, c                                       ; $5B4F: $79
    nop                                           ; $5B50: $00
    ld a, h                                       ; $5B51: $7C
    adc c                                         ; $5B52: $89
    nop                                           ; $5B53: $00
    cp h                                          ; $5B54: $BC
    halt                                          ; $5B55: $76
    nop                                           ; $5B56: $00
    ld bc, $0000                                  ; $5B57: $01 $00 $00
    nop                                           ; $5B5A: $00
    ld bc, $0100                                  ; $5B5B: $01 $00 $01
    sbc $00                                       ; $5B5E: $DE $00
    call c, Call_000_00DA                         ; $5B60: $DC $DA $00
    ld bc, $00E3                                  ; $5B63: $01 $E3 $00

jr_037_5B66:
    ld bc, $0000                                  ; $5B66: $01 $00 $00
    nop                                           ; $5B69: $00
    nop                                           ; $5B6A: $00
    nop                                           ; $5B6B: $00
    inc bc                                        ; $5B6C: $03
    nop                                           ; $5B6D: $00
    nop                                           ; $5B6E: $00
    dec b                                         ; $5B6F: $05
    ld bc, $0000                                  ; $5B70: $01 $00 $00
    ld [bc], a                                    ; $5B73: $02
    nop                                           ; $5B74: $00
    nop                                           ; $5B75: $00
    ld b, $FE                                     ; $5B76: $06 $FE
    ld b, e                                       ; $5B78: $43
    nop                                           ; $5B79: $00
    ld d, h                                       ; $5B7A: $54
    cpl                                           ; $5B7B: $2F
    nop                                           ; $5B7C: $00
    ld l, a                                       ; $5B7D: $6F
    ld b, a                                       ; $5B7E: $47
    nop                                           ; $5B7F: $00
    ld bc, $0026                                  ; $5B80: $01 $26 $00
    daa                                           ; $5B83: $27
    ld b, d                                       ; $5B84: $42
    nop                                           ; $5B85: $00
    ld c, d                                       ; $5B86: $4A
    dec hl                                        ; $5B87: $2B
    nop                                           ; $5B88: $00
    ld e, [hl]                                    ; $5B89: $5E
    ld b, c                                       ; $5B8A: $41
    nop                                           ; $5B8B: $00
    daa                                           ; $5B8C: $27
    ccf                                           ; $5B8D: $3F
    nop                                           ; $5B8E: $00
    ld l, b                                       ; $5B8F: $68
    ld bc, $4900                                  ; $5B90: $01 $00 $49
    inc sp                                        ; $5B93: $33
    nop                                           ; $5B94: $00
    ld l, d                                       ; $5B95: $6A
    ret                                           ; $5B96: $C9


    nop                                           ; $5B97: $00
    ld bc, $0000                                  ; $5B98: $01 $00 $00
    nop                                           ; $5B9B: $00
    nop                                           ; $5B9C: $00
    nop                                           ; $5B9D: $00
    inc bc                                        ; $5B9E: $03
    nop                                           ; $5B9F: $00
    nop                                           ; $5BA0: $00
    inc bc                                        ; $5BA1: $03
    add l                                         ; $5BA2: $85
    nop                                           ; $5BA3: $00
    ld a, [hl]                                    ; $5BA4: $7E
    ld c, a                                       ; $5BA5: $4F
    nop                                           ; $5BA6: $00
    ld [hl], b                                    ; $5BA7: $70
    dec [hl]                                      ; $5BA8: $35
    nop                                           ; $5BA9: $00
    ld b, c                                       ; $5BAA: $41
    ld l, l                                       ; $5BAB: $6D
    nop                                           ; $5BAC: $00
    ld a, [hl-]                                   ; $5BAD: $3A
    nop                                           ; $5BAE: $00
    nop                                           ; $5BAF: $00
    nop                                           ; $5BB0: $00
    nop                                           ; $5BB1: $00
    nop                                           ; $5BB2: $00
    inc bc                                        ; $5BB3: $03
    ld bc, $AC00                                  ; $5BB4: $01 $00 $AC
    cp d                                          ; $5BB7: $BA
    nop                                           ; $5BB8: $00
    sbc [hl]                                      ; $5BB9: $9E
    jp nz, $9500                                  ; $5BBA: $C2 $00 $95

    and l                                         ; $5BBD: $A5
    nop                                           ; $5BBE: $00
    halt                                          ; $5BBF: $76
    adc c                                         ; $5BC0: $89
    nop                                           ; $5BC1: $00
    sub l                                         ; $5BC2: $95
    nop                                           ; $5BC3: $00
    nop                                           ; $5BC4: $00
    nop                                           ; $5BC5: $00
    ld bc, $0100                                  ; $5BC6: $01 $00 $01
    call c, $DA00                                 ; $5BC9: $DC $00 $DA
    call c, $DE00                                 ; $5BCC: $DC $00 $DE
    ld bc, $E300                                  ; $5BCF: $01 $00 $E3
    nop                                           ; $5BD2: $00
    nop                                           ; $5BD3: $00
    nop                                           ; $5BD4: $00
    nop                                           ; $5BD5: $00
    nop                                           ; $5BD6: $00
    inc bc                                        ; $5BD7: $03
    nop                                           ; $5BD8: $00
    nop                                           ; $5BD9: $00
    dec b                                         ; $5BDA: $05
    ld bc, $0000                                  ; $5BDB: $01 $00 $00
    ld [bc], a                                    ; $5BDE: $02
    nop                                           ; $5BDF: $00
    nop                                           ; $5BE0: $00
    ld b, $FE                                     ; $5BE1: $06 $FE
    ld b, e                                       ; $5BE3: $43
    nop                                           ; $5BE4: $00
    ld [hl], b                                    ; $5BE5: $70
    ld [hl], $00                                  ; $5BE6: $36 $00
    ld l, a                                       ; $5BE8: $6F
    ld [hl], $00                                  ; $5BE9: $36 $00
    ld b, d                                       ; $5BEB: $42
    ld bc, $A100                                  ; $5BEC: $01 $00 $A1
    jp nz, $9500                                  ; $5BEF: $C2 $00 $95

    ld [hl], $00                                  ; $5BF2: $36 $00
    ccf                                           ; $5BF4: $3F
    ld l, b                                       ; $5BF5: $68
    nop                                           ; $5BF6: $00
    ld bc, $0043                                  ; $5BF7: $01 $43 $00
    dec l                                         ; $5BFA: $2D
    ld b, h                                       ; $5BFB: $44
    nop                                           ; $5BFC: $00
    daa                                           ; $5BFD: $27
    cp l                                          ; $5BFE: $BD
    nop                                           ; $5BFF: $00
    halt                                          ; $5C00: $76
    adc h                                         ; $5C01: $8C
    nop                                           ; $5C02: $00
    halt                                          ; $5C03: $76
    ld b, a                                       ; $5C04: $47
    nop                                           ; $5C05: $00
    ld bc, $002F                                  ; $5C06: $01 $2F $00
    jr z, jr_037_5C3E                             ; $5C09: $28 $33

    nop                                           ; $5C0B: $00
    inc l                                         ; $5C0C: $2C
    scf                                           ; $5C0D: $37
    nop                                           ; $5C0E: $00
    ld l, d                                       ; $5C0F: $6A
    ret                                           ; $5C10: $C9


    nop                                           ; $5C11: $00
    ld bc, $0000                                  ; $5C12: $01 $00 $00
    nop                                           ; $5C15: $00
    nop                                           ; $5C16: $00
    nop                                           ; $5C17: $00
    inc bc                                        ; $5C18: $03
    nop                                           ; $5C19: $00
    nop                                           ; $5C1A: $00
    inc bc                                        ; $5C1B: $03
    nop                                           ; $5C1C: $00
    nop                                           ; $5C1D: $00
    inc bc                                        ; $5C1E: $03
    scf                                           ; $5C1F: $37
    nop                                           ; $5C20: $00
    daa                                           ; $5C21: $27
    ld [hl], $00                                  ; $5C22: $36 $00
    ld h, a                                       ; $5C24: $67
    jr z, jr_037_5C27                             ; $5C25: $28 $00

jr_037_5C27:
    ld c, l                                       ; $5C27: $4D
    ld b, b                                       ; $5C28: $40
    nop                                           ; $5C29: $00
    dec hl                                        ; $5C2A: $2B
    ld l, b                                       ; $5C2B: $68
    nop                                           ; $5C2C: $00
    ld l, [hl]                                    ; $5C2D: $6E
    ld bc, $5D00                                  ; $5C2E: $01 $00 $5D
    ld h, c                                       ; $5C31: $61
    nop                                           ; $5C32: $00
    ld l, d                                       ; $5C33: $6A
    ccf                                           ; $5C34: $3F
    nop                                           ; $5C35: $00
    ld h, b                                       ; $5C36: $60
    ld c, d                                       ; $5C37: $4A
    nop                                           ; $5C38: $00
    ld bc, $003F                                  ; $5C39: $01 $3F $00
    ccf                                           ; $5C3C: $3F
    dec hl                                        ; $5C3D: $2B

jr_037_5C3E:
    nop                                           ; $5C3E: $00
    jr z, @-$35                                   ; $5C3F: $28 $C9

    nop                                           ; $5C41: $00
    ld bc, $0000                                  ; $5C42: $01 $00 $00
    inc bc                                        ; $5C45: $03
    nop                                           ; $5C46: $00
    nop                                           ; $5C47: $00
    dec b                                         ; $5C48: $05
    ld bc, $0000                                  ; $5C49: $01 $00 $00
    ld [bc], a                                    ; $5C4C: $02
    nop                                           ; $5C4D: $00
    nop                                           ; $5C4E: $00
    ld [bc], a                                    ; $5C4F: $02
    nop                                           ; $5C50: $00
    nop                                           ; $5C51: $00
    ld [bc], a                                    ; $5C52: $02
    nop                                           ; $5C53: $00
    nop                                           ; $5C54: $00
    dec b                                         ; $5C55: $05
    add b                                         ; $5C56: $80
    nop                                           ; $5C57: $00
    nop                                           ; $5C58: $00
    ld [bc], a                                    ; $5C59: $02
    nop                                           ; $5C5A: $00
    nop                                           ; $5C5B: $00
    ld bc, $5C53                                  ; $5C5C: $01 $53 $5C
    dec l                                         ; $5C5F: $2D
    ld hl, $1211                                  ; $5C60: $21 $11 $12
    ld de, $0013                                  ; $5C63: $11 $13 $00
    nop                                           ; $5C66: $00
    nop                                           ; $5C67: $00
    ld bc, $BA00                                  ; $5C68: $01 $00 $BA
    ld a, c                                       ; $5C6B: $79
    nop                                           ; $5C6C: $00
    ld a, h                                       ; $5C6D: $7C
    add c                                         ; $5C6E: $81
    nop                                           ; $5C6F: $00
    pop bc                                        ; $5C70: $C1
    xor c                                         ; $5C71: $A9
    nop                                           ; $5C72: $00
    ld a, c                                       ; $5C73: $79
    nop                                           ; $5C74: $00
    nop                                           ; $5C75: $00
    nop                                           ; $5C76: $00
    nop                                           ; $5C77: $00
    nop                                           ; $5C78: $00
    inc bc                                        ; $5C79: $03
    ld d, b                                       ; $5C7A: $50
    ld de, $8251                                  ; $5C7B: $11 $51 $82
    nop                                           ; $5C7E: $00
    ld a, c                                       ; $5C7F: $79
    ld a, b                                       ; $5C80: $78
    nop                                           ; $5C81: $00
    ld c, l                                       ; $5C82: $4D
    dec e                                         ; $5C83: $1D
    ld de, $6E1E                                  ; $5C84: $11 $1E $6E
    ld bc, $6A08                                  ; $5C87: $01 $08 $6A
    nop                                           ; $5C8A: $00
    ccf                                           ; $5C8B: $3F
    ld h, b                                       ; $5C8C: $60
    nop                                           ; $5C8D: $00
    ld c, d                                       ; $5C8E: $4A
    ccf                                           ; $5C8F: $3F
    db $10                                        ; $5C90: $10
    jr z, jr_037_5C94                             ; $5C91: $28 $01

    nop                                           ; $5C93: $00

jr_037_5C94:
    add a                                         ; $5C94: $87
    ld a, c                                       ; $5C95: $79
    nop                                           ; $5C96: $00
    and l                                         ; $5C97: $A5
    sub l                                         ; $5C98: $95
    nop                                           ; $5C99: $00
    cp [hl]                                       ; $5C9A: $BE
    pop bc                                        ; $5C9B: $C1
    ld bc, $1211                                  ; $5C9C: $01 $11 $12
    ld de, $C913                                  ; $5C9F: $11 $13 $C9
    nop                                           ; $5CA2: $00
    ld bc, $0000                                  ; $5CA3: $01 $00 $00
    nop                                           ; $5CA6: $00
    nop                                           ; $5CA7: $00
    nop                                           ; $5CA8: $00
    inc bc                                        ; $5CA9: $03
    ld c, h                                       ; $5CAA: $4C
    ld de, $2E9A                                  ; $5CAB: $11 $9A $2E
    jr nz, @+$49                                  ; $5CAE: $20 $47

    ld bc, $2C00                                  ; $5CB0: $01 $00 $2C
    ld d, h                                       ; $5CB3: $54
    nop                                           ; $5CB4: $00
    ld [hl], $27                                  ; $5CB5: $36 $27
    nop                                           ; $5CB7: $00
    cp e                                          ; $5CB8: $BB
    halt                                          ; $5CB9: $76
    nop                                           ; $5CBA: $00
    sub [hl]                                      ; $5CBB: $96
    halt                                          ; $5CBC: $76
    nop                                           ; $5CBD: $00
    ld b, h                                       ; $5CBE: $44
    jr nc, jr_037_5CC1                            ; $5CBF: $30 $00

jr_037_5CC1:
    ld bc, $2119                                  ; $5CC1: $01 $19 $21
    sbc h                                         ; $5CC4: $9C
    ld c, [hl]                                    ; $5CC5: $4E
    nop                                           ; $5CC6: $00
    ld bc, $0043                                  ; $5CC7: $01 $43 $00
    ld b, d                                       ; $5CCA: $42
    ld h, c                                       ; $5CCB: $61
    nop                                           ; $5CCC: $00
    ld h, d                                       ; $5CCD: $62
    dec [hl]                                      ; $5CCE: $35
    nop                                           ; $5CCF: $00
    ld [hl], $27                                  ; $5CD0: $36 $27
    nop                                           ; $5CD2: $00
    ret                                           ; $5CD3: $C9


    nop                                           ; $5CD4: $00
    nop                                           ; $5CD5: $00
    nop                                           ; $5CD6: $00
    nop                                           ; $5CD7: $00
    nop                                           ; $5CD8: $00
    inc bc                                        ; $5CD9: $03
    ld b, b                                       ; $5CDA: $40
    ld de, $4241                                  ; $5CDB: $11 $41 $42
    db $10                                        ; $5CDE: $10
    ld bc, $0000                                  ; $5CDF: $01 $00 $00
    nop                                           ; $5CE2: $00
    nop                                           ; $5CE3: $00
    nop                                           ; $5CE4: $00
    inc bc                                        ; $5CE5: $03
    ld bc, $BA00                                  ; $5CE6: $01 $00 $BA
    ld a, c                                       ; $5CE9: $79
    nop                                           ; $5CEA: $00
    ld a, h                                       ; $5CEB: $7C
    adc b                                         ; $5CEC: $88
    nop                                           ; $5CED: $00
    cp c                                          ; $5CEE: $B9
    jp nz, $9500                                  ; $5CEF: $C2 $00 $95

    nop                                           ; $5CF2: $00
    nop                                           ; $5CF3: $00
    nop                                           ; $5CF4: $00
    ld bc, $0100                                  ; $5CF5: $01 $00 $01
    call c, $DA00                                 ; $5CF8: $DC $00 $DA
    ld bc, $E300                                  ; $5CFB: $01 $00 $E3
    nop                                           ; $5CFE: $00
    nop                                           ; $5CFF: $00
    nop                                           ; $5D00: $00
    nop                                           ; $5D01: $00
    nop                                           ; $5D02: $00
    inc bc                                        ; $5D03: $03
    nop                                           ; $5D04: $00
    nop                                           ; $5D05: $00
    dec b                                         ; $5D06: $05
    ld bc, $0000                                  ; $5D07: $01 $00 $00
    ld [bc], a                                    ; $5D0A: $02
    nop                                           ; $5D0B: $00
    nop                                           ; $5D0C: $00
    ld b, $FE                                     ; $5D0D: $06 $FE
    adc c                                         ; $5D0F: $89
    db $10                                        ; $5D10: $10
    ld c, d                                       ; $5D11: $4A
    sub e                                         ; $5D12: $93
    db $10                                        ; $5D13: $10
    ld l, $42                                     ; $5D14: $2E $42
    nop                                           ; $5D16: $00
    ld bc, $0088                                  ; $5D17: $01 $88 $00
    cp c                                          ; $5D1A: $B9
    jp nz, $9500                                  ; $5D1B: $C2 $00 $95

    ld l, [hl]                                    ; $5D1E: $6E
    nop                                           ; $5D1F: $00
    jr z, jr_037_5D63                             ; $5D20: $28 $41

    nop                                           ; $5D22: $00
    ret                                           ; $5D23: $C9


    nop                                           ; $5D24: $00
    nop                                           ; $5D25: $00
    nop                                           ; $5D26: $00
    nop                                           ; $5D27: $00
    nop                                           ; $5D28: $00
    inc bc                                        ; $5D29: $03
    nop                                           ; $5D2A: $00
    nop                                           ; $5D2B: $00
    inc bc                                        ; $5D2C: $03
    ld bc, $BA00                                  ; $5D2D: $01 $00 $BA
    ld a, c                                       ; $5D30: $79
    nop                                           ; $5D31: $00
    ld a, h                                       ; $5D32: $7C
    sub l                                         ; $5D33: $95
    nop                                           ; $5D34: $00
    push bc                                       ; $5D35: $C5
    halt                                          ; $5D36: $76
    nop                                           ; $5D37: $00
    adc c                                         ; $5D38: $89
    nop                                           ; $5D39: $00
    nop                                           ; $5D3A: $00
    nop                                           ; $5D3B: $00
    ld bc, $0100                                  ; $5D3C: $01 $00 $01
    call c, $DE00                                 ; $5D3F: $DC $00 $DE
    ld bc, $E300                                  ; $5D42: $01 $00 $E3
    nop                                           ; $5D45: $00
    nop                                           ; $5D46: $00
    nop                                           ; $5D47: $00
    nop                                           ; $5D48: $00
    nop                                           ; $5D49: $00
    inc bc                                        ; $5D4A: $03
    nop                                           ; $5D4B: $00
    nop                                           ; $5D4C: $00
    dec b                                         ; $5D4D: $05
    ld bc, $0000                                  ; $5D4E: $01 $00 $00
    ld [bc], a                                    ; $5D51: $02
    nop                                           ; $5D52: $00
    nop                                           ; $5D53: $00
    ld b, $FE                                     ; $5D54: $06 $FE
    cp d                                          ; $5D56: $BA
    nop                                           ; $5D57: $00
    ld a, c                                       ; $5D58: $79
    ld a, h                                       ; $5D59: $7C
    nop                                           ; $5D5A: $00
    pop bc                                        ; $5D5B: $C1
    ld a, a                                       ; $5D5C: $7F
    nop                                           ; $5D5D: $00
    cp [hl]                                       ; $5D5E: $BE
    halt                                          ; $5D5F: $76
    nop                                           ; $5D60: $00
    ld b, a                                       ; $5D61: $47
    cpl                                           ; $5D62: $2F

jr_037_5D63:
    ld [hl+], a                                   ; $5D63: $22
    rla                                           ; $5D64: $17
    scf                                           ; $5D65: $37
    nop                                           ; $5D66: $00
    ld l, d                                       ; $5D67: $6A
    adc l                                         ; $5D68: $8D
    ld de, $C98B                                  ; $5D69: $11 $8B $C9
    nop                                           ; $5D6C: $00
    ld bc, $0000                                  ; $5D6D: $01 $00 $00
    nop                                           ; $5D70: $00
    nop                                           ; $5D71: $00
    nop                                           ; $5D72: $00
    inc bc                                        ; $5D73: $03
    nop                                           ; $5D74: $00
    nop                                           ; $5D75: $00
    inc bc                                        ; $5D76: $03
    ld bc, $BA00                                  ; $5D77: $01 $00 $BA
    ld a, c                                       ; $5D7A: $79
    nop                                           ; $5D7B: $00
    ld a, h                                       ; $5D7C: $7C
    sub h                                         ; $5D7D: $94
    nop                                           ; $5D7E: $00
    pop bc                                        ; $5D7F: $C1
    xor l                                         ; $5D80: $AD
    nop                                           ; $5D81: $00
    adc c                                         ; $5D82: $89
    sub l                                         ; $5D83: $95
    nop                                           ; $5D84: $00
    ld bc, $0000                                  ; $5D85: $01 $00 $00
    nop                                           ; $5D88: $00
    ld bc, $0100                                  ; $5D89: $01 $00 $01
    jp c, $DC00                                   ; $5D8C: $DA $00 $DC

    jp c, Boot                                    ; $5D8F: $DA $00 $01

    db $E3                                        ; $5D92: $E3
    nop                                           ; $5D93: $00
    ld bc, $0000                                  ; $5D94: $01 $00 $00
    nop                                           ; $5D97: $00
    nop                                           ; $5D98: $00
    nop                                           ; $5D99: $00
    inc bc                                        ; $5D9A: $03
    nop                                           ; $5D9B: $00
    nop                                           ; $5D9C: $00
    dec b                                         ; $5D9D: $05
    ld bc, $0000                                  ; $5D9E: $01 $00 $00
    ld [bc], a                                    ; $5DA1: $02
    nop                                           ; $5DA2: $00
    nop                                           ; $5DA3: $00
    ld b, $FE                                     ; $5DA4: $06 $FE
    adc d                                         ; $5DA6: $8A
    db $10                                        ; $5DA7: $10
    ld c, d                                       ; $5DA8: $4A
    sub e                                         ; $5DA9: $93
    db $10                                        ; $5DAA: $10
    dec hl                                        ; $5DAB: $2B
    ld [hl], b                                    ; $5DAC: $70
    nop                                           ; $5DAD: $00
    ld b, d                                       ; $5DAE: $42
    ld bc, $BA00                                  ; $5DAF: $01 $00 $BA
    ld a, c                                       ; $5DB2: $79
    nop                                           ; $5DB3: $00
    ld a, h                                       ; $5DB4: $7C
    pop bc                                        ; $5DB5: $C1
    nop                                           ; $5DB6: $00
    ld a, a                                       ; $5DB7: $7F
    cp [hl]                                       ; $5DB8: $BE
    nop                                           ; $5DB9: $00
    halt                                          ; $5DBA: $76
    ld b, a                                       ; $5DBB: $47
    ld bc, $8B8D                                  ; $5DBC: $01 $8D $8B
    db $10                                        ; $5DBF: $10
    scf                                           ; $5DC0: $37
    ld l, d                                       ; $5DC1: $6A
    nop                                           ; $5DC2: $00
    ret                                           ; $5DC3: $C9


    nop                                           ; $5DC4: $00
    nop                                           ; $5DC5: $00
    nop                                           ; $5DC6: $00
    nop                                           ; $5DC7: $00
    nop                                           ; $5DC8: $00
    inc bc                                        ; $5DC9: $03
    nop                                           ; $5DCA: $00
    nop                                           ; $5DCB: $00
    inc bc                                        ; $5DCC: $03
    ld bc, $BA00                                  ; $5DCD: $01 $00 $BA
    ld a, c                                       ; $5DD0: $79
    nop                                           ; $5DD1: $00
    ld a, h                                       ; $5DD2: $7C
    sub c                                         ; $5DD3: $91
    nop                                           ; $5DD4: $00
    ld a, c                                       ; $5DD5: $79
    and d                                         ; $5DD6: $A2
    nop                                           ; $5DD7: $00
    halt                                          ; $5DD8: $76
    pop bc                                        ; $5DD9: $C1
    nop                                           ; $5DDA: $00
    ld bc, $0000                                  ; $5DDB: $01 $00 $00
    nop                                           ; $5DDE: $00
    ld bc, $0100                                  ; $5DDF: $01 $00 $01
    sbc $00                                       ; $5DE2: $DE $00
    call c, Call_000_00DA                         ; $5DE4: $DC $DA $00
    ld bc, $00E3                                  ; $5DE7: $01 $E3 $00
    ld bc, $0000                                  ; $5DEA: $01 $00 $00
    nop                                           ; $5DED: $00
    nop                                           ; $5DEE: $00
    nop                                           ; $5DEF: $00
    inc bc                                        ; $5DF0: $03
    nop                                           ; $5DF1: $00
    nop                                           ; $5DF2: $00
    dec b                                         ; $5DF3: $05
    ld bc, $0000                                  ; $5DF4: $01 $00 $00
    ld [bc], a                                    ; $5DF7: $02
    nop                                           ; $5DF8: $00
    nop                                           ; $5DF9: $00
    ld b, $FE                                     ; $5DFA: $06 $FE
    sub c                                         ; $5DFC: $91
    nop                                           ; $5DFD: $00
    sub h                                         ; $5DFE: $94
    add d                                         ; $5DFF: $82
    nop                                           ; $5E00: $00
    or b                                          ; $5E01: $B0
    ld l, [hl]                                    ; $5E02: $6E
    ld bc, $3834                                  ; $5E03: $01 $34 $38
    jr nz, jr_037_5E3E                            ; $5E06: $20 $36

    ld b, d                                       ; $5E08: $42
    nop                                           ; $5E09: $00
    ld bc, $2030                                  ; $5E0A: $01 $30 $20
    ld d, h                                       ; $5E0D: $54
    ld a, b                                       ; $5E0E: $78
    ld [de], a                                    ; $5E0F: $12
    ld sp, $006E                                  ; $5E10: $31 $6E $00
    ld bc, $2032                                  ; $5E13: $01 $32 $20
    ld c, h                                       ; $5E16: $4C
    inc sp                                        ; $5E17: $33
    jr nz, jr_037_5E51                            ; $5E18: $20 $37

    ret                                           ; $5E1A: $C9


    nop                                           ; $5E1B: $00
    ld bc, $0000                                  ; $5E1C: $01 $00 $00
    nop                                           ; $5E1F: $00
    nop                                           ; $5E20: $00
    nop                                           ; $5E21: $00
    inc bc                                        ; $5E22: $03
    nop                                           ; $5E23: $00
    nop                                           ; $5E24: $00
    inc bc                                        ; $5E25: $03
    sbc a                                         ; $5E26: $9F
    ld hl, $4140                                  ; $5E27: $21 $40 $41
    ld de, $0042                                  ; $5E2A: $11 $42 $00
    nop                                           ; $5E2D: $00
    nop                                           ; $5E2E: $00
    nop                                           ; $5E2F: $00
    nop                                           ; $5E30: $00
    inc bc                                        ; $5E31: $03
    ld bc, $8B00                                  ; $5E32: $01 $00 $8B
    ld a, d                                       ; $5E35: $7A
    nop                                           ; $5E36: $00
    cp h                                          ; $5E37: $BC
    ld a, c                                       ; $5E38: $79
    nop                                           ; $5E39: $00
    pop bc                                        ; $5E3A: $C1
    xor d                                         ; $5E3B: $AA
    nop                                           ; $5E3C: $00
    ld a, a                                       ; $5E3D: $7F

jr_037_5E3E:
    sub l                                         ; $5E3E: $95
    nop                                           ; $5E3F: $00
    ld bc, $0000                                  ; $5E40: $01 $00 $00
    nop                                           ; $5E43: $00
    ld bc, $0100                                  ; $5E44: $01 $00 $01
    call c, $DA00                                 ; $5E47: $DC $00 $DA
    call c, $DE00                                 ; $5E4A: $DC $00 $DE
    ld bc, $E300                                  ; $5E4D: $01 $00 $E3
    nop                                           ; $5E50: $00

jr_037_5E51:
    nop                                           ; $5E51: $00
    nop                                           ; $5E52: $00
    nop                                           ; $5E53: $00
    nop                                           ; $5E54: $00
    inc bc                                        ; $5E55: $03
    nop                                           ; $5E56: $00
    nop                                           ; $5E57: $00
    dec b                                         ; $5E58: $05
    ld bc, $0000                                  ; $5E59: $01 $00 $00
    ld [bc], a                                    ; $5E5C: $02
    nop                                           ; $5E5D: $00
    nop                                           ; $5E5E: $00
    ld b, $FE                                     ; $5E5F: $06 $FE
    cpl                                           ; $5E61: $2F
    ld [hl+], a                                   ; $5E62: $22
    rla                                           ; $5E63: $17
    ld [hl], $00                                  ; $5E64: $36 $00
    ld b, d                                       ; $5E66: $42
    ld bc, $A100                                  ; $5E67: $01 $00 $A1
    jp nz, $9500                                  ; $5E6A: $C2 $00 $95

    ld [hl], $00                                  ; $5E6D: $36 $00
    ccf                                           ; $5E6F: $3F
    ld l, b                                       ; $5E70: $68
    nop                                           ; $5E71: $00
    ld bc, $2134                                  ; $5E72: $01 $34 $21
    add b                                         ; $5E75: $80
    adc l                                         ; $5E76: $8D
    ld de, $6E8B                                  ; $5E77: $11 $8B $6E
    nop                                           ; $5E7A: $00
    scf                                           ; $5E7B: $37
    ld l, d                                       ; $5E7C: $6A
    nop                                           ; $5E7D: $00
    ret                                           ; $5E7E: $C9


    nop                                           ; $5E7F: $00
    nop                                           ; $5E80: $00
    nop                                           ; $5E81: $00
    nop                                           ; $5E82: $00
    nop                                           ; $5E83: $00
    inc bc                                        ; $5E84: $03
    nop                                           ; $5E85: $00
    nop                                           ; $5E86: $00
    inc bc                                        ; $5E87: $03
    and [hl]                                      ; $5E88: $A6
    nop                                           ; $5E89: $00
    halt                                          ; $5E8A: $76
    adc c                                         ; $5E8B: $89
    nop                                           ; $5E8C: $00
    sub l                                         ; $5E8D: $95
    or e                                          ; $5E8E: $B3
    nop                                           ; $5E8F: $00
    halt                                          ; $5E90: $76
    sbc d                                         ; $5E91: $9A
    nop                                           ; $5E92: $00
    ld c, [hl]                                    ; $5E93: $4E
    nop                                           ; $5E94: $00
    nop                                           ; $5E95: $00
    nop                                           ; $5E96: $00
    nop                                           ; $5E97: $00
    nop                                           ; $5E98: $00
    inc bc                                        ; $5E99: $03
    ret nc                                        ; $5E9A: $D0

    nop                                           ; $5E9B: $00
    cp d                                          ; $5E9C: $BA
    ld a, c                                       ; $5E9D: $79
    nop                                           ; $5E9E: $00
    ld a, h                                       ; $5E9F: $7C
    pop bc                                        ; $5EA0: $C1
    nop                                           ; $5EA1: $00
    pop de                                        ; $5EA2: $D1
    ld c, d                                       ; $5EA3: $4A
    ld bc, $5352                                  ; $5EA4: $01 $52 $53
    db $10                                        ; $5EA7: $10
    scf                                           ; $5EA8: $37
    ld l, d                                       ; $5EA9: $6A
    nop                                           ; $5EAA: $00
    ret                                           ; $5EAB: $C9


    nop                                           ; $5EAC: $00
    nop                                           ; $5EAD: $00
    nop                                           ; $5EAE: $00
    nop                                           ; $5EAF: $00
    nop                                           ; $5EB0: $00
    inc bc                                        ; $5EB1: $03
    nop                                           ; $5EB2: $00
    nop                                           ; $5EB3: $00
    inc b                                         ; $5EB4: $04
    ld bc, $0000                                  ; $5EB5: $01 $00 $00
    dec b                                         ; $5EB8: $05
    ld bc, $0000                                  ; $5EB9: $01 $00 $00
    ld [bc], a                                    ; $5EBC: $02
    nop                                           ; $5EBD: $00
    nop                                           ; $5EBE: $00
    ld [bc], a                                    ; $5EBF: $02
    nop                                           ; $5EC0: $00
    nop                                           ; $5EC1: $00
    ld [bc], a                                    ; $5EC2: $02
    nop                                           ; $5EC3: $00
    nop                                           ; $5EC4: $00
    ld b, $FE                                     ; $5EC5: $06 $FE
    ld b, b                                       ; $5EC7: $40
    ld de, $4241                                  ; $5EC8: $11 $41 $42
    db $10                                        ; $5ECB: $10
    ld bc, $0000                                  ; $5ECC: $01 $00 $00
    nop                                           ; $5ECF: $00
    nop                                           ; $5ED0: $00
    nop                                           ; $5ED1: $00
    inc bc                                        ; $5ED2: $03
    ld bc, $BA00                                  ; $5ED3: $01 $00 $BA
    ld a, c                                       ; $5ED6: $79
    nop                                           ; $5ED7: $00
    ld a, h                                       ; $5ED8: $7C
    sub l                                         ; $5ED9: $95
    nop                                           ; $5EDA: $00
    cp h                                          ; $5EDB: $BC
    sbc [hl]                                      ; $5EDC: $9E
    nop                                           ; $5EDD: $00
    halt                                          ; $5EDE: $76
    sbc d                                         ; $5EDF: $9A
    nop                                           ; $5EE0: $00
    ld bc, $0000                                  ; $5EE1: $01 $00 $00
    nop                                           ; $5EE4: $00
    ld bc, $0100                                  ; $5EE5: $01 $00 $01
    call c, $DE00                                 ; $5EE8: $DC $00 $DE
    ld bc, $E300                                  ; $5EEB: $01 $00 $E3
    nop                                           ; $5EEE: $00
    nop                                           ; $5EEF: $00
    nop                                           ; $5EF0: $00
    nop                                           ; $5EF1: $00
    nop                                           ; $5EF2: $00
    inc bc                                        ; $5EF3: $03
    nop                                           ; $5EF4: $00
    nop                                           ; $5EF5: $00
    dec b                                         ; $5EF6: $05
    ld bc, $0000                                  ; $5EF7: $01 $00 $00
    ld [bc], a                                    ; $5EFA: $02
    nop                                           ; $5EFB: $00
    nop                                           ; $5EFC: $00
    ld b, $FE                                     ; $5EFD: $06 $FE
    adc c                                         ; $5EFF: $89
    db $10                                        ; $5F00: $10
    ld c, d                                       ; $5F01: $4A
    cpl                                           ; $5F02: $2F
    ld [hl+], a                                   ; $5F03: $22
    rla                                           ; $5F04: $17
    scf                                           ; $5F05: $37
    nop                                           ; $5F06: $00
    ld l, d                                       ; $5F07: $6A
    adc l                                         ; $5F08: $8D
    ld de, $C98B                                  ; $5F09: $11 $8B $C9
    nop                                           ; $5F0C: $00
    ld bc, $0000                                  ; $5F0D: $01 $00 $00
    nop                                           ; $5F10: $00
    nop                                           ; $5F11: $00
    nop                                           ; $5F12: $00
    inc bc                                        ; $5F13: $03
    nop                                           ; $5F14: $00
    nop                                           ; $5F15: $00
    inc bc                                        ; $5F16: $03
    ld bc, $BA00                                  ; $5F17: $01 $00 $BA
    ld a, c                                       ; $5F1A: $79
    nop                                           ; $5F1B: $00
    ld a, h                                       ; $5F1C: $7C
    ld a, l                                       ; $5F1D: $7D
    nop                                           ; $5F1E: $00
    sbc a                                         ; $5F1F: $9F
    pop bc                                        ; $5F20: $C1
    nop                                           ; $5F21: $00
    ld bc, $0000                                  ; $5F22: $01 $00 $00
    nop                                           ; $5F25: $00
    ld bc, $0100                                  ; $5F26: $01 $00 $01
    jp c, $DC00                                   ; $5F29: $DA $00 $DC

    jp c, Boot                                    ; $5F2C: $DA $00 $01

    db $E3                                        ; $5F2F: $E3
    nop                                           ; $5F30: $00
    ld bc, $0000                                  ; $5F31: $01 $00 $00
    nop                                           ; $5F34: $00
    nop                                           ; $5F35: $00
    nop                                           ; $5F36: $00
    inc bc                                        ; $5F37: $03
    nop                                           ; $5F38: $00
    nop                                           ; $5F39: $00
    dec b                                         ; $5F3A: $05
    ld bc, $0000                                  ; $5F3B: $01 $00 $00
    ld [bc], a                                    ; $5F3E: $02
    nop                                           ; $5F3F: $00
    nop                                           ; $5F40: $00
    ld b, $FE                                     ; $5F41: $06 $FE
    ld a, [de]                                    ; $5F43: $1A
    jr nz, jr_037_5FA6                            ; $5F44: $20 $60

    adc d                                         ; $5F46: $8A
    db $10                                        ; $5F47: $10
    ld c, d                                       ; $5F48: $4A
    sub e                                         ; $5F49: $93
    db $10                                        ; $5F4A: $10
    dec hl                                        ; $5F4B: $2B
    ld [hl], b                                    ; $5F4C: $70
    nop                                           ; $5F4D: $00
    ld b, d                                       ; $5F4E: $42
    cpl                                           ; $5F4F: $2F
    ld [hl+], a                                   ; $5F50: $22
    rla                                           ; $5F51: $17
    scf                                           ; $5F52: $37
    nop                                           ; $5F53: $00
    ld l, d                                       ; $5F54: $6A
    adc l                                         ; $5F55: $8D
    ld de, $C98B                                  ; $5F56: $11 $8B $C9
    nop                                           ; $5F59: $00
    ld bc, $0000                                  ; $5F5A: $01 $00 $00
    nop                                           ; $5F5D: $00
    nop                                           ; $5F5E: $00
    nop                                           ; $5F5F: $00
    inc bc                                        ; $5F60: $03
    nop                                           ; $5F61: $00
    nop                                           ; $5F62: $00
    inc bc                                        ; $5F63: $03
    ld bc, $8900                                  ; $5F64: $01 $00 $89
    ld a, l                                       ; $5F67: $7D
    nop                                           ; $5F68: $00
    ld a, c                                       ; $5F69: $79
    ld a, l                                       ; $5F6A: $7D
    nop                                           ; $5F6B: $00
    sbc a                                         ; $5F6C: $9F
    pop bc                                        ; $5F6D: $C1
    nop                                           ; $5F6E: $00
    ld bc, $0000                                  ; $5F6F: $01 $00 $00
    nop                                           ; $5F72: $00
    ld bc, $0100                                  ; $5F73: $01 $00 $01
    adc l                                         ; $5F76: $8D
    nop                                           ; $5F77: $00
    or a                                          ; $5F78: $B7
    pop bc                                        ; $5F79: $C1
    nop                                           ; $5F7A: $00
    xor h                                         ; $5F7B: $AC
    ld bc, $DC00                                  ; $5F7C: $01 $00 $DC
    sbc $00                                       ; $5F7F: $DE $00
    ld bc, $00E3                                  ; $5F81: $01 $E3 $00
    ld bc, $0000                                  ; $5F84: $01 $00 $00
    inc bc                                        ; $5F87: $03
    nop                                           ; $5F88: $00
    nop                                           ; $5F89: $00
    dec b                                         ; $5F8A: $05
    ld bc, $0000                                  ; $5F8B: $01 $00 $00
    ld [bc], a                                    ; $5F8E: $02
    nop                                           ; $5F8F: $00
    nop                                           ; $5F90: $00
    ld b, $FE                                     ; $5F91: $06 $FE
    dec [hl]                                      ; $5F93: $35
    ld hl, $2B58                                  ; $5F94: $21 $58 $2B
    nop                                           ; $5F97: $00
    ld l, b                                       ; $5F98: $68
    ld a, [de]                                    ; $5F99: $1A
    jr nz, jr_037_5FFC                            ; $5F9A: $20 $60

    dec c                                         ; $5F9C: $0D
    db $10                                        ; $5F9D: $10
    ld d, c                                       ; $5F9E: $51
    sub e                                         ; $5F9F: $93
    db $10                                        ; $5FA0: $10
    dec hl                                        ; $5FA1: $2B
    ld [hl], b                                    ; $5FA2: $70
    nop                                           ; $5FA3: $00
    ld b, d                                       ; $5FA4: $42
    cpl                                           ; $5FA5: $2F

jr_037_5FA6:
    ld [hl+], a                                   ; $5FA6: $22
    rla                                           ; $5FA7: $17
    scf                                           ; $5FA8: $37
    nop                                           ; $5FA9: $00
    ld l, d                                       ; $5FAA: $6A
    adc l                                         ; $5FAB: $8D
    ld de, $C98B                                  ; $5FAC: $11 $8B $C9
    nop                                           ; $5FAF: $00
    ld bc, $0000                                  ; $5FB0: $01 $00 $00
    nop                                           ; $5FB3: $00
    nop                                           ; $5FB4: $00
    nop                                           ; $5FB5: $00
    inc bc                                        ; $5FB6: $03
    nop                                           ; $5FB7: $00
    nop                                           ; $5FB8: $00
    inc bc                                        ; $5FB9: $03
    ld bc, $BA00                                  ; $5FBA: $01 $00 $BA
    ld a, c                                       ; $5FBD: $79
    nop                                           ; $5FBE: $00
    ld a, h                                       ; $5FBF: $7C
    adc c                                         ; $5FC0: $89
    nop                                           ; $5FC1: $00
    cp h                                          ; $5FC2: $BC
    halt                                          ; $5FC3: $76
    nop                                           ; $5FC4: $00
    ld bc, $0000                                  ; $5FC5: $01 $00 $00
    nop                                           ; $5FC8: $00
    ld bc, $0100                                  ; $5FC9: $01 $00 $01
    sbc $00                                       ; $5FCC: $DE $00
    call c, Call_000_00DA                         ; $5FCE: $DC $DA $00
    ld bc, $00E3                                  ; $5FD1: $01 $E3 $00
    ld bc, $0000                                  ; $5FD4: $01 $00 $00
    nop                                           ; $5FD7: $00
    nop                                           ; $5FD8: $00
    nop                                           ; $5FD9: $00
    inc bc                                        ; $5FDA: $03
    nop                                           ; $5FDB: $00
    nop                                           ; $5FDC: $00
    dec b                                         ; $5FDD: $05
    ld bc, $0000                                  ; $5FDE: $01 $00 $00
    ld [bc], a                                    ; $5FE1: $02
    nop                                           ; $5FE2: $00
    nop                                           ; $5FE3: $00
    ld b, $FE                                     ; $5FE4: $06 $FE
    jr nc, jr_037_6008                            ; $5FE6: $30 $20

    ld d, h                                       ; $5FE8: $54
    ld [hl], $20                                  ; $5FE9: $36 $20
    ld l, a                                       ; $5FEB: $6F
    ld b, a                                       ; $5FEC: $47
    nop                                           ; $5FED: $00
    ld bc, $118E                                  ; $5FEE: $01 $8E $11
    rlca                                          ; $5FF1: $07
    ld c, d                                       ; $5FF2: $4A
    nop                                           ; $5FF3: $00
    dec hl                                        ; $5FF4: $2B
    ld e, [hl]                                    ; $5FF5: $5E
    nop                                           ; $5FF6: $00
    ld b, c                                       ; $5FF7: $41
    daa                                           ; $5FF8: $27
    nop                                           ; $5FF9: $00
    ccf                                           ; $5FFA: $3F
    ld l, b                                       ; $5FFB: $68

jr_037_5FFC:
    nop                                           ; $5FFC: $00
    ld bc, $201B                                  ; $5FFD: $01 $1B $20
    inc sp                                        ; $6000: $33
    ld l, d                                       ; $6001: $6A
    nop                                           ; $6002: $00
    ret                                           ; $6003: $C9


    nop                                           ; $6004: $00
    nop                                           ; $6005: $00
    nop                                           ; $6006: $00
    nop                                           ; $6007: $00

jr_037_6008:
    nop                                           ; $6008: $00
    inc bc                                        ; $6009: $03
    nop                                           ; $600A: $00
    nop                                           ; $600B: $00
    inc bc                                        ; $600C: $03
    sbc a                                         ; $600D: $9F
    ld hl, $4140                                  ; $600E: $21 $40 $41
    ld de, $0042                                  ; $6011: $11 $42 $00
    nop                                           ; $6014: $00
    nop                                           ; $6015: $00
    nop                                           ; $6016: $00
    nop                                           ; $6017: $00
    inc bc                                        ; $6018: $03
    ld bc, $AC00                                  ; $6019: $01 $00 $AC
    cp d                                          ; $601C: $BA
    nop                                           ; $601D: $00
    sbc [hl]                                      ; $601E: $9E
    jp nz, $9500                                  ; $601F: $C2 $00 $95

    and l                                         ; $6022: $A5
    nop                                           ; $6023: $00
    halt                                          ; $6024: $76
    adc c                                         ; $6025: $89
    nop                                           ; $6026: $00
    sub l                                         ; $6027: $95
    nop                                           ; $6028: $00
    nop                                           ; $6029: $00
    nop                                           ; $602A: $00
    ld bc, $0100                                  ; $602B: $01 $00 $01
    call c, $DA00                                 ; $602E: $DC $00 $DA
    call c, $DE00                                 ; $6031: $DC $00 $DE
    ld bc, $E300                                  ; $6034: $01 $00 $E3
    nop                                           ; $6037: $00
    nop                                           ; $6038: $00
    nop                                           ; $6039: $00
    nop                                           ; $603A: $00
    nop                                           ; $603B: $00
    inc bc                                        ; $603C: $03
    nop                                           ; $603D: $00
    nop                                           ; $603E: $00
    dec b                                         ; $603F: $05
    ld bc, $0000                                  ; $6040: $01 $00 $00
    ld [bc], a                                    ; $6043: $02
    nop                                           ; $6044: $00
    nop                                           ; $6045: $00
    ld b, $FE                                     ; $6046: $06 $FE
    cpl                                           ; $6048: $2F
    ld [hl+], a                                   ; $6049: $22
    rla                                           ; $604A: $17
    ld [hl], $00                                  ; $604B: $36 $00
    ld b, d                                       ; $604D: $42
    ld bc, $A100                                  ; $604E: $01 $00 $A1
    jp nz, $9500                                  ; $6051: $C2 $00 $95

    ld [hl], $00                                  ; $6054: $36 $00
    ccf                                           ; $6056: $3F
    ld l, b                                       ; $6057: $68
    nop                                           ; $6058: $00
    ld bc, $2137                                  ; $6059: $01 $37 $21
    ld bc, $00BD                                  ; $605C: $01 $BD $00
    halt                                          ; $605F: $76
    adc h                                         ; $6060: $8C
    nop                                           ; $6061: $00
    halt                                          ; $6062: $76
    ld b, a                                       ; $6063: $47
    ld bc, $8B8D                                  ; $6064: $01 $8D $8B
    db $10                                        ; $6067: $10
    scf                                           ; $6068: $37
    ld l, d                                       ; $6069: $6A
    nop                                           ; $606A: $00
    ret                                           ; $606B: $C9


    nop                                           ; $606C: $00
    nop                                           ; $606D: $00
    inc bc                                        ; $606E: $03
    nop                                           ; $606F: $00
    nop                                           ; $6070: $00
    inc bc                                        ; $6071: $03
    nop                                           ; $6072: $00
    nop                                           ; $6073: $00
    inc bc                                        ; $6074: $03
    ld [bc], a                                    ; $6075: $02
    ld de, $4D03                                  ; $6076: $11 $03 $4D
    ld bc, $6E04                                  ; $6079: $01 $04 $6E
    ld bc, $6A08                                  ; $607C: $01 $08 $6A
    nop                                           ; $607F: $00
    ccf                                           ; $6080: $3F
    ld h, b                                       ; $6081: $60
    nop                                           ; $6082: $00
    ld c, d                                       ; $6083: $4A
    ld bc, $3F01                                  ; $6084: $01 $01 $3F
    jr z, jr_037_6089                             ; $6087: $28 $00

jr_037_6089:
    ret                                           ; $6089: $C9


    nop                                           ; $608A: $00
    nop                                           ; $608B: $00
    nop                                           ; $608C: $00
    nop                                           ; $608D: $00
    nop                                           ; $608E: $00
    inc bc                                        ; $608F: $03
    nop                                           ; $6090: $00
    nop                                           ; $6091: $00
    dec b                                         ; $6092: $05
    ld bc, $0000                                  ; $6093: $01 $00 $00
    ld [bc], a                                    ; $6096: $02
    nop                                           ; $6097: $00
    nop                                           ; $6098: $00
    ld [bc], a                                    ; $6099: $02
    nop                                           ; $609A: $00
    nop                                           ; $609B: $00
    ld [bc], a                                    ; $609C: $02
    nop                                           ; $609D: $00
    nop                                           ; $609E: $00
    dec b                                         ; $609F: $05
    add b                                         ; $60A0: $80
    nop                                           ; $60A1: $00
    nop                                           ; $60A2: $00
    ld [bc], a                                    ; $60A3: $02
    nop                                           ; $60A4: $00
    nop                                           ; $60A5: $00
    ld bc, $609D                                  ; $60A6: $01 $9D $60
    ld [hl], $00                                  ; $60A9: $36 $00
    ld l, a                                       ; $60AB: $6F
    and b                                         ; $60AC: $A0
    nop                                           ; $60AD: $00
    ld a, l                                       ; $60AE: $7D
    ld a, c                                       ; $60AF: $79
    nop                                           ; $60B0: $00
    ccf                                           ; $60B1: $3F
    daa                                           ; $60B2: $27
    nop                                           ; $60B3: $00
    ld b, d                                       ; $60B4: $42
    daa                                           ; $60B5: $27
    nop                                           ; $60B6: $00
    ld bc, $0000                                  ; $60B7: $01 $00 $00
    nop                                           ; $60BA: $00
    ld bc, $8200                                  ; $60BB: $01 $00 $82
    cp h                                          ; $60BE: $BC
    nop                                           ; $60BF: $00
    and l                                         ; $60C0: $A5
    sub l                                         ; $60C1: $95
    nop                                           ; $60C2: $00
    cp [hl]                                       ; $60C3: $BE
    pop bc                                        ; $60C4: $C1
    nop                                           ; $60C5: $00
    ld bc, $0000                                  ; $60C6: $01 $00 $00
    nop                                           ; $60C9: $00
    nop                                           ; $60CA: $00
    nop                                           ; $60CB: $00
    inc bc                                        ; $60CC: $03
    ld l, l                                       ; $60CD: $6D
    nop                                           ; $60CE: $00
    dec l                                         ; $60CF: $2D
    jr c, jr_037_60D2                             ; $60D0: $38 $00

jr_037_60D2:
    daa                                           ; $60D2: $27
    add d                                         ; $60D3: $82
    nop                                           ; $60D4: $00
    ld a, c                                       ; $60D5: $79
    ld a, b                                       ; $60D6: $78
    nop                                           ; $60D7: $00
    ld c, l                                       ; $60D8: $4D
    ld bc, $7800                                  ; $60D9: $01 $00 $78
    pop bc                                        ; $60DC: $C1
    nop                                           ; $60DD: $00
    add [hl]                                      ; $60DE: $86
    cp h                                          ; $60DF: $BC
    nop                                           ; $60E0: $00
    or e                                          ; $60E1: $B3
    ld a, b                                       ; $60E2: $78
    nop                                           ; $60E3: $00
    ld a, e                                       ; $60E4: $7B
    sbc [hl]                                      ; $60E5: $9E
    nop                                           ; $60E6: $00
    cp h                                          ; $60E7: $BC
    add e                                         ; $60E8: $83
    nop                                           ; $60E9: $00
    halt                                          ; $60EA: $76
    ld l, [hl]                                    ; $60EB: $6E
    nop                                           ; $60EC: $00
    ld bc, $004C                                  ; $60ED: $01 $4C $00
    ld l, b                                       ; $60F0: $68
    ld [hl], b                                    ; $60F1: $70
    nop                                           ; $60F2: $00
    ld b, d                                       ; $60F3: $42
    daa                                           ; $60F4: $27
    nop                                           ; $60F5: $00
    ld l, d                                       ; $60F6: $6A
    ld bc, $9900                                  ; $60F7: $01 $00 $99
    adc c                                         ; $60FA: $89
    nop                                           ; $60FB: $00
    sub l                                         ; $60FC: $95
    cp [hl]                                       ; $60FD: $BE
    nop                                           ; $60FE: $00
    pop bc                                        ; $60FF: $C1
    ld c, l                                       ; $6100: $4D
    nop                                           ; $6101: $00
    cp e                                          ; $6102: $BB
    halt                                          ; $6103: $76
    nop                                           ; $6104: $00
    sub [hl]                                      ; $6105: $96
    halt                                          ; $6106: $76
    nop                                           ; $6107: $00
    ret                                           ; $6108: $C9


    nop                                           ; $6109: $00
    nop                                           ; $610A: $00
    nop                                           ; $610B: $00
    nop                                           ; $610C: $00
    nop                                           ; $610D: $00
    inc bc                                        ; $610E: $03
    ld h, d                                       ; $610F: $62
    nop                                           ; $6110: $00
    ld [hl], $6F                                  ; $6111: $36 $6F
    nop                                           ; $6113: $00
    dec hl                                        ; $6114: $2B
    ld b, h                                       ; $6115: $44
    nop                                           ; $6116: $00
    jr nc, jr_037_611A                            ; $6117: $30 $01

    nop                                           ; $6119: $00

jr_037_611A:
    ld d, l                                       ; $611A: $55
    dec hl                                        ; $611B: $2B
    nop                                           ; $611C: $00
    ld c, d                                       ; $611D: $4A
    ld c, [hl]                                    ; $611E: $4E
    nop                                           ; $611F: $00
    ld bc, $0027                                  ; $6120: $01 $27 $00
    jr nc, jr_037_614C                            ; $6123: $30 $27

    nop                                           ; $6125: $00
    ld b, e                                       ; $6126: $43
    ld bc, $6200                                  ; $6127: $01 $00 $62
    dec [hl]                                      ; $612A: $35
    nop                                           ; $612B: $00
    ld [hl], $27                                  ; $612C: $36 $27
    nop                                           ; $612E: $00
    ret                                           ; $612F: $C9


    nop                                           ; $6130: $00
    nop                                           ; $6131: $00
    nop                                           ; $6132: $00
    nop                                           ; $6133: $00
    nop                                           ; $6134: $00
    inc bc                                        ; $6135: $03
    ld c, a                                       ; $6136: $4F
    nop                                           ; $6137: $00
    ld [hl], b                                    ; $6138: $70
    dec [hl]                                      ; $6139: $35
    nop                                           ; $613A: $00
    ld b, c                                       ; $613B: $41
    ld l, l                                       ; $613C: $6D
    nop                                           ; $613D: $00
    ld a, [hl-]                                   ; $613E: $3A
    nop                                           ; $613F: $00
    nop                                           ; $6140: $00
    nop                                           ; $6141: $00
    nop                                           ; $6142: $00
    nop                                           ; $6143: $00
    inc bc                                        ; $6144: $03
    ld bc, $9300                                  ; $6145: $01 $00 $93
    ld a, c                                       ; $6148: $79
    nop                                           ; $6149: $00
    adc c                                         ; $614A: $89
    sub c                                         ; $614B: $91

jr_037_614C:
    nop                                           ; $614C: $00
    halt                                          ; $614D: $76
    ld a, b                                       ; $614E: $78
    nop                                           ; $614F: $00
    jp nz, $007F                                  ; $6150: $C2 $7F $00

    adc c                                         ; $6153: $89
    nop                                           ; $6154: $00
    nop                                           ; $6155: $00
    nop                                           ; $6156: $00
    ld bc, $0100                                  ; $6157: $01 $00 $01
    call c, $DA00                                 ; $615A: $DC $00 $DA
    ld bc, $E300                                  ; $615D: $01 $00 $E3
    nop                                           ; $6160: $00
    nop                                           ; $6161: $00
    nop                                           ; $6162: $00
    nop                                           ; $6163: $00
    nop                                           ; $6164: $00
    inc bc                                        ; $6165: $03
    nop                                           ; $6166: $00
    nop                                           ; $6167: $00
    dec b                                         ; $6168: $05
    ld bc, $0000                                  ; $6169: $01 $00 $00
    ld [bc], a                                    ; $616C: $02
    nop                                           ; $616D: $00
    nop                                           ; $616E: $00
    ld b, $FE                                     ; $616F: $06 $FE
    add d                                         ; $6171: $82
    nop                                           ; $6172: $00
    cp h                                          ; $6173: $BC
    and l                                         ; $6174: $A5
    nop                                           ; $6175: $00
    ld a, b                                       ; $6176: $78
    jp nz, Jump_037_7F00                          ; $6177: $C2 $00 $7F

    adc c                                         ; $617A: $89
    nop                                           ; $617B: $00
    ld l, [hl]                                    ; $617C: $6E
    ld bc, $4900                                  ; $617D: $01 $00 $49
    inc sp                                        ; $6180: $33
    nop                                           ; $6181: $00
    ld b, d                                       ; $6182: $42
    cpl                                           ; $6183: $2F
    nop                                           ; $6184: $00
    jr z, jr_037_61BA                             ; $6185: $28 $33

    nop                                           ; $6187: $00
    inc l                                         ; $6188: $2C
    scf                                           ; $6189: $37
    nop                                           ; $618A: $00
    ld l, d                                       ; $618B: $6A
    ret                                           ; $618C: $C9


    nop                                           ; $618D: $00
    ld bc, $0000                                  ; $618E: $01 $00 $00
    nop                                           ; $6191: $00
    nop                                           ; $6192: $00
    nop                                           ; $6193: $00
    inc bc                                        ; $6194: $03
    nop                                           ; $6195: $00
    nop                                           ; $6196: $00
    inc bc                                        ; $6197: $03
    ld bc, $9900                                  ; $6198: $01 $00 $99
    adc c                                         ; $619B: $89
    nop                                           ; $619C: $00
    ld a, b                                       ; $619D: $78
    adc d                                         ; $619E: $8A
    nop                                           ; $619F: $00
    pop bc                                        ; $61A0: $C1
    adc b                                         ; $61A1: $88
    nop                                           ; $61A2: $00
    cp c                                          ; $61A3: $B9
    pop bc                                        ; $61A4: $C1
    nop                                           ; $61A5: $00
    ld bc, $0000                                  ; $61A6: $01 $00 $00
    nop                                           ; $61A9: $00
    ld bc, $0100                                  ; $61AA: $01 $00 $01
    jp c, $DC00                                   ; $61AD: $DA $00 $DC

    jp c, Boot                                    ; $61B0: $DA $00 $01

    db $E3                                        ; $61B3: $E3
    nop                                           ; $61B4: $00
    ld bc, $0000                                  ; $61B5: $01 $00 $00
    nop                                           ; $61B8: $00
    nop                                           ; $61B9: $00

jr_037_61BA:
    nop                                           ; $61BA: $00
    inc bc                                        ; $61BB: $03
    nop                                           ; $61BC: $00
    nop                                           ; $61BD: $00
    dec b                                         ; $61BE: $05
    ld bc, $0000                                  ; $61BF: $01 $00 $00
    ld [bc], a                                    ; $61C2: $02
    nop                                           ; $61C3: $00
    nop                                           ; $61C4: $00
    ld b, $FE                                     ; $61C5: $06 $FE
    add d                                         ; $61C7: $82
    nop                                           ; $61C8: $00
    cp h                                          ; $61C9: $BC
    and l                                         ; $61CA: $A5
    nop                                           ; $61CB: $00
    ld a, b                                       ; $61CC: $78
    jp nz, Jump_037_7F00                          ; $61CD: $C2 $00 $7F

    adc c                                         ; $61D0: $89
    nop                                           ; $61D1: $00
    ld b, a                                       ; $61D2: $47
    ld bc, $2800                                  ; $61D3: $01 $00 $28
    add hl, hl                                    ; $61D6: $29
    nop                                           ; $61D7: $00
    ld d, d                                       ; $61D8: $52
    jr z, jr_037_61DB                             ; $61D9: $28 $00

jr_037_61DB:
    cpl                                           ; $61DB: $2F
    jr z, jr_037_61DE                             ; $61DC: $28 $00

jr_037_61DE:
    ld c, d                                       ; $61DE: $4A
    ld bc, $2F00                                  ; $61DF: $01 $00 $2F
    jr z, jr_037_61E4                             ; $61E2: $28 $00

jr_037_61E4:
    inc sp                                        ; $61E4: $33
    inc l                                         ; $61E5: $2C
    nop                                           ; $61E6: $00
    scf                                           ; $61E7: $37
    ld l, d                                       ; $61E8: $6A
    nop                                           ; $61E9: $00
    ret                                           ; $61EA: $C9


    nop                                           ; $61EB: $00
    nop                                           ; $61EC: $00
    inc bc                                        ; $61ED: $03
    nop                                           ; $61EE: $00
    nop                                           ; $61EF: $00
    inc bc                                        ; $61F0: $03
    ld bc, $7F00                                  ; $61F1: $01 $00 $7F
    cp [hl]                                       ; $61F4: $BE
    nop                                           ; $61F5: $00
    adc c                                         ; $61F6: $89
    cp e                                          ; $61F7: $BB
    nop                                           ; $61F8: $00
    xor b                                         ; $61F9: $A8
    pop bc                                        ; $61FA: $C1
    nop                                           ; $61FB: $00
    adc l                                         ; $61FC: $8D
    add sp, $00                                   ; $61FD: $E8 $00
    ld bc, $0000                                  ; $61FF: $01 $00 $00
    nop                                           ; $6202: $00
    ld bc, $0100                                  ; $6203: $01 $00 $01
    call c, $DE00                                 ; $6206: $DC $00 $DE
    ld bc, $E200                                  ; $6209: $01 $00 $E2
    nop                                           ; $620C: $00
    nop                                           ; $620D: $00
    nop                                           ; $620E: $00
    nop                                           ; $620F: $00
    nop                                           ; $6210: $00
    inc bc                                        ; $6211: $03
    nop                                           ; $6212: $00
    nop                                           ; $6213: $00
    dec b                                         ; $6214: $05
    ld bc, $0000                                  ; $6215: $01 $00 $00
    ld [bc], a                                    ; $6218: $02
    nop                                           ; $6219: $00
    nop                                           ; $621A: $00
    ld b, $FE                                     ; $621B: $06 $FE
    jr z, jr_037_621F                             ; $621D: $28 $00

jr_037_621F:
    add hl, hl                                    ; $621F: $29
    cpl                                           ; $6220: $2F
    nop                                           ; $6221: $00
    jr z, @+$35                                   ; $6222: $28 $33

    nop                                           ; $6224: $00
    inc l                                         ; $6225: $2C
    ld l, [hl]                                    ; $6226: $6E
    nop                                           ; $6227: $00
    ld bc, $0028                                  ; $6228: $01 $28 $00
    ld l, $42                                     ; $622B: $2E $42
    nop                                           ; $622D: $00
    ld bc, $007D                                  ; $622E: $01 $7D $00
    ld a, d                                       ; $6231: $7A
    pop bc                                        ; $6232: $C1
    nop                                           ; $6233: $00
    sub c                                         ; $6234: $91
    halt                                          ; $6235: $76
    nop                                           ; $6236: $00
    cpl                                           ; $6237: $2F
    jr z, jr_037_623A                             ; $6238: $28 $00

jr_037_623A:
    inc sp                                        ; $623A: $33
    inc l                                         ; $623B: $2C
    nop                                           ; $623C: $00
    scf                                           ; $623D: $37
    ld l, d                                       ; $623E: $6A
    nop                                           ; $623F: $00
    ret                                           ; $6240: $C9


    nop                                           ; $6241: $00
    nop                                           ; $6242: $00
    inc bc                                        ; $6243: $03
    nop                                           ; $6244: $00
    nop                                           ; $6245: $00
    inc bc                                        ; $6246: $03
    ld bc, $7F00                                  ; $6247: $01 $00 $7F
    cp [hl]                                       ; $624A: $BE
    nop                                           ; $624B: $00
    adc c                                         ; $624C: $89
    cp e                                          ; $624D: $BB
    nop                                           ; $624E: $00
    xor b                                         ; $624F: $A8
    pop bc                                        ; $6250: $C1
    nop                                           ; $6251: $00
    adc l                                         ; $6252: $8D
    db $EC                                        ; $6253: $EC
    nop                                           ; $6254: $00
    ld bc, $0000                                  ; $6255: $01 $00 $00
    nop                                           ; $6258: $00
    ld bc, $0100                                  ; $6259: $01 $00 $01
    call c, $DE00                                 ; $625C: $DC $00 $DE
    ld bc, $E300                                  ; $625F: $01 $00 $E3
    nop                                           ; $6262: $00
    nop                                           ; $6263: $00
    nop                                           ; $6264: $00
    nop                                           ; $6265: $00
    nop                                           ; $6266: $00
    inc bc                                        ; $6267: $03
    nop                                           ; $6268: $00
    nop                                           ; $6269: $00
    dec b                                         ; $626A: $05
    ld bc, $0000                                  ; $626B: $01 $00 $00
    ld [bc], a                                    ; $626E: $02
    nop                                           ; $626F: $00
    nop                                           ; $6270: $00
    ld b, $FE                                     ; $6271: $06 $FE
    ld [hl], $00                                  ; $6273: $36 $00
    ccf                                           ; $6275: $3F
    cpl                                           ; $6276: $2F
    nop                                           ; $6277: $00
    jr z, @+$35                                   ; $6278: $28 $33

    nop                                           ; $627A: $00
    inc l                                         ; $627B: $2C
    ld l, [hl]                                    ; $627C: $6E
    nop                                           ; $627D: $00
    ld bc, $0028                                  ; $627E: $01 $28 $00
    ld l, $42                                     ; $6281: $2E $42
    nop                                           ; $6283: $00
    ld bc, $007D                                  ; $6284: $01 $7D $00
    ld a, d                                       ; $6287: $7A
    pop bc                                        ; $6288: $C1
    nop                                           ; $6289: $00
    sub c                                         ; $628A: $91
    halt                                          ; $628B: $76
    nop                                           ; $628C: $00
    cpl                                           ; $628D: $2F
    jr z, jr_037_6290                             ; $628E: $28 $00

jr_037_6290:
    inc sp                                        ; $6290: $33
    inc l                                         ; $6291: $2C
    nop                                           ; $6292: $00
    scf                                           ; $6293: $37
    ld l, d                                       ; $6294: $6A
    nop                                           ; $6295: $00
    ret                                           ; $6296: $C9


    nop                                           ; $6297: $00
    nop                                           ; $6298: $00
    inc bc                                        ; $6299: $03
    nop                                           ; $629A: $00
    nop                                           ; $629B: $00
    inc bc                                        ; $629C: $03
    ld bc, $8B00                                  ; $629D: $01 $00 $8B
    ld a, d                                       ; $62A0: $7A
    nop                                           ; $62A1: $00
    cp h                                          ; $62A2: $BC
    sbc d                                         ; $62A3: $9A
    nop                                           ; $62A4: $00
    cp l                                          ; $62A5: $BD
    ld a, c                                       ; $62A6: $79
    nop                                           ; $62A7: $00
    pop bc                                        ; $62A8: $C1
    nop                                           ; $62A9: $00
    nop                                           ; $62AA: $00
    nop                                           ; $62AB: $00
    ld bc, $4000                                  ; $62AC: $01 $00 $40
    dec hl                                        ; $62AF: $2B
    nop                                           ; $62B0: $00
    ld b, [hl]                                    ; $62B1: $46
    daa                                           ; $62B2: $27
    nop                                           ; $62B3: $00
    ld b, d                                       ; $62B4: $42
    ld bc, $DE00                                  ; $62B5: $01 $00 $DE
    call c, $DA00                                 ; $62B8: $DC $00 $DA
    ld bc, $E300                                  ; $62BB: $01 $00 $E3
    nop                                           ; $62BE: $00
    nop                                           ; $62BF: $00
    inc bc                                        ; $62C0: $03
    nop                                           ; $62C1: $00
    nop                                           ; $62C2: $00
    dec b                                         ; $62C3: $05
    ld bc, $0000                                  ; $62C4: $01 $00 $00
    ld [bc], a                                    ; $62C7: $02
    nop                                           ; $62C8: $00
    nop                                           ; $62C9: $00
    ld b, $FE                                     ; $62CA: $06 $FE
    ld h, $00                                     ; $62CC: $26 $00
    daa                                           ; $62CE: $27
    ld b, d                                       ; $62CF: $42
    nop                                           ; $62D0: $00
    ld c, l                                       ; $62D1: $4D
    ld a, e                                       ; $62D2: $7B
    nop                                           ; $62D3: $00
    sbc [hl]                                      ; $62D4: $9E
    cp h                                          ; $62D5: $BC
    nop                                           ; $62D6: $00
    add e                                         ; $62D7: $83
    halt                                          ; $62D8: $76
    nop                                           ; $62D9: $00
    ld l, [hl]                                    ; $62DA: $6E
    ld bc, $2800                                  ; $62DB: $01 $00 $28
    ld d, e                                       ; $62DE: $53
    nop                                           ; $62DF: $00
    jr z, jr_037_62E3                             ; $62E0: $28 $01

    nop                                           ; $62E2: $00

jr_037_62E3:
    ld c, c                                       ; $62E3: $49
    inc sp                                        ; $62E4: $33
    nop                                           ; $62E5: $00
    ld l, l                                       ; $62E6: $6D
    ld a, [hl-]                                   ; $62E7: $3A
    nop                                           ; $62E8: $00
    ret                                           ; $62E9: $C9


    nop                                           ; $62EA: $00
    nop                                           ; $62EB: $00
    nop                                           ; $62EC: $00
    nop                                           ; $62ED: $00
    nop                                           ; $62EE: $00
    inc bc                                        ; $62EF: $03
    nop                                           ; $62F0: $00
    nop                                           ; $62F1: $00
    inc bc                                        ; $62F2: $03
    add l                                         ; $62F3: $85
    nop                                           ; $62F4: $00
    ld a, [hl]                                    ; $62F5: $7E
    ld c, a                                       ; $62F6: $4F
    nop                                           ; $62F7: $00
    ld [hl], b                                    ; $62F8: $70
    dec [hl]                                      ; $62F9: $35
    nop                                           ; $62FA: $00
    ld b, c                                       ; $62FB: $41
    ld l, l                                       ; $62FC: $6D
    nop                                           ; $62FD: $00
    ld a, [hl-]                                   ; $62FE: $3A
    nop                                           ; $62FF: $00
    nop                                           ; $6300: $00
    nop                                           ; $6301: $00
    nop                                           ; $6302: $00
    nop                                           ; $6303: $00
    inc bc                                        ; $6304: $03
    ld bc, $7D00                                  ; $6305: $01 $00 $7D
    ld a, h                                       ; $6308: $7C
    nop                                           ; $6309: $00
    adc c                                         ; $630A: $89
    xor h                                         ; $630B: $AC
    nop                                           ; $630C: $00
    cp l                                          ; $630D: $BD
    adc l                                         ; $630E: $8D
    nop                                           ; $630F: $00
    or a                                          ; $6310: $B7
    halt                                          ; $6311: $76
    nop                                           ; $6312: $00
    ld bc, $0000                                  ; $6313: $01 $00 $00
    nop                                           ; $6316: $00
    ld bc, $0100                                  ; $6317: $01 $00 $01
    call c, $DA00                                 ; $631A: $DC $00 $DA
    call c, $DE00                                 ; $631D: $DC $00 $DE
    ld bc, $E300                                  ; $6320: $01 $00 $E3
    nop                                           ; $6323: $00
    nop                                           ; $6324: $00
    nop                                           ; $6325: $00
    nop                                           ; $6326: $00
    nop                                           ; $6327: $00
    inc bc                                        ; $6328: $03
    nop                                           ; $6329: $00
    nop                                           ; $632A: $00
    dec b                                         ; $632B: $05
    ld bc, $0000                                  ; $632C: $01 $00 $00
    ld [bc], a                                    ; $632F: $02
    nop                                           ; $6330: $00
    nop                                           ; $6331: $00
    ld b, $FE                                     ; $6332: $06 $FE
    ld b, e                                       ; $6334: $43
    nop                                           ; $6335: $00
    ld [hl], b                                    ; $6336: $70
    ld [hl], $00                                  ; $6337: $36 $00
    ld l, a                                       ; $6339: $6F
    ld [hl], $00                                  ; $633A: $36 $00
    ld b, d                                       ; $633C: $42
    ld bc, $A100                                  ; $633D: $01 $00 $A1
    jp nz, $9500                                  ; $6340: $C2 $00 $95

    ld [hl], $00                                  ; $6343: $36 $00
    ccf                                           ; $6345: $3F
    ld l, b                                       ; $6346: $68
    nop                                           ; $6347: $00
    ld bc, $0026                                  ; $6348: $01 $26 $00
    daa                                           ; $634B: $27
    ld b, d                                       ; $634C: $42
    nop                                           ; $634D: $00
    ld c, l                                       ; $634E: $4D
    xor d                                         ; $634F: $AA
    nop                                           ; $6350: $00
    halt                                          ; $6351: $76
    sub e                                         ; $6352: $93
    nop                                           ; $6353: $00
    ld l, [hl]                                    ; $6354: $6E
    ld b, e                                       ; $6355: $43
    nop                                           ; $6356: $00
    ld l, c                                       ; $6357: $69
    sub [hl]                                      ; $6358: $96
    nop                                           ; $6359: $00
    or d                                          ; $635A: $B2
    halt                                          ; $635B: $76
    nop                                           ; $635C: $00
    adc l                                         ; $635D: $8D
    ld l, [hl]                                    ; $635E: $6E
    nop                                           ; $635F: $00
    ld h, $3F                                     ; $6360: $26 $3F
    nop                                           ; $6362: $00
    add hl, hl                                    ; $6363: $29
    ld l, d                                       ; $6364: $6A
    nop                                           ; $6365: $00
    ret                                           ; $6366: $C9


    nop                                           ; $6367: $00
    nop                                           ; $6368: $00
    nop                                           ; $6369: $00
    nop                                           ; $636A: $00
    nop                                           ; $636B: $00
    inc bc                                        ; $636C: $03
    nop                                           ; $636D: $00
    nop                                           ; $636E: $00
    inc bc                                        ; $636F: $03
    xor a                                         ; $6370: $AF
    nop                                           ; $6371: $00
    adc b                                         ; $6372: $88
    pop bc                                        ; $6373: $C1
    nop                                           ; $6374: $00
    or e                                          ; $6375: $B3
    halt                                          ; $6376: $76
    nop                                           ; $6377: $00
    sbc d                                         ; $6378: $9A
    ld c, [hl]                                    ; $6379: $4E
    nop                                           ; $637A: $00
    ld bc, $0000                                  ; $637B: $01 $00 $00
    nop                                           ; $637E: $00
    nop                                           ; $637F: $00
    nop                                           ; $6380: $00
    inc bc                                        ; $6381: $03
    ret nc                                        ; $6382: $D0

    nop                                           ; $6383: $00
    sbc d                                         ; $6384: $9A
    cp e                                          ; $6385: $BB
    nop                                           ; $6386: $00
    cp h                                          ; $6387: $BC
    jr c, jr_037_638A                             ; $6388: $38 $00

jr_037_638A:
    ld l, a                                       ; $638A: $6F
    ld [hl], $00                                  ; $638B: $36 $00
    ld h, l                                       ; $638D: $65
    pop de                                        ; $638E: $D1
    nop                                           ; $638F: $00
    ld c, d                                       ; $6390: $4A
    nop                                           ; $6391: $00
    nop                                           ; $6392: $00
    nop                                           ; $6393: $00
    ld d, c                                       ; $6394: $51
    nop                                           ; $6395: $00
    ld l, a                                       ; $6396: $6F
    ld [hl], $00                                  ; $6397: $36 $00
    ld l, a                                       ; $6399: $6F
    scf                                           ; $639A: $37
    nop                                           ; $639B: $00
    ld l, d                                       ; $639C: $6A
    ret                                           ; $639D: $C9


    nop                                           ; $639E: $00
    ld bc, $0000                                  ; $639F: $01 $00 $00
    nop                                           ; $63A2: $00
    nop                                           ; $63A3: $00
    nop                                           ; $63A4: $00
    inc bc                                        ; $63A5: $03
    nop                                           ; $63A6: $00
    nop                                           ; $63A7: $00
    inc b                                         ; $63A8: $04
    ld bc, $0000                                  ; $63A9: $01 $00 $00
    dec b                                         ; $63AC: $05
    ld bc, $0000                                  ; $63AD: $01 $00 $00
    ld [bc], a                                    ; $63B0: $02
    nop                                           ; $63B1: $00
    nop                                           ; $63B2: $00
    ld [bc], a                                    ; $63B3: $02
    nop                                           ; $63B4: $00
    nop                                           ; $63B5: $00
    ld [bc], a                                    ; $63B6: $02
    nop                                           ; $63B7: $00
    nop                                           ; $63B8: $00
    ld b, $FE                                     ; $63B9: $06 $FE
    xor a                                         ; $63BB: $AF
    nop                                           ; $63BC: $00
    adc b                                         ; $63BD: $88
    pop bc                                        ; $63BE: $C1
    nop                                           ; $63BF: $00
    or e                                          ; $63C0: $B3
    halt                                          ; $63C1: $76
    nop                                           ; $63C2: $00
    sbc d                                         ; $63C3: $9A
    ld b, a                                       ; $63C4: $47
    nop                                           ; $63C5: $00
    ld c, [hl]                                    ; $63C6: $4E
    add d                                         ; $63C7: $82
    nop                                           ; $63C8: $00
    halt                                          ; $63C9: $76
    sbc d                                         ; $63CA: $9A
    nop                                           ; $63CB: $00
    ret z                                         ; $63CC: $C8

    adc l                                         ; $63CD: $8D
    nop                                           ; $63CE: $00
    or a                                          ; $63CF: $B7
    pop bc                                        ; $63D0: $C1
    nop                                           ; $63D1: $00
    xor h                                         ; $63D2: $AC
    jr nc, jr_037_63D5                            ; $63D3: $30 $00

jr_037_63D5:
    ld b, a                                       ; $63D5: $47
    inc l                                         ; $63D6: $2C
    nop                                           ; $63D7: $00
    ld c, c                                       ; $63D8: $49
    daa                                           ; $63D9: $27
    nop                                           ; $63DA: $00
    ret                                           ; $63DB: $C9


    nop                                           ; $63DC: $00
    nop                                           ; $63DD: $00
    nop                                           ; $63DE: $00
    nop                                           ; $63DF: $00
    nop                                           ; $63E0: $00
    inc bc                                        ; $63E1: $03
    nop                                           ; $63E2: $00
    nop                                           ; $63E3: $00
    dec b                                         ; $63E4: $05
    ld bc, $0000                                  ; $63E5: $01 $00 $00
    ld [bc], a                                    ; $63E8: $02
    nop                                           ; $63E9: $00
    nop                                           ; $63EA: $00
    ld b, $FE                                     ; $63EB: $06 $FE
    ld c, a                                       ; $63ED: $4F
    nop                                           ; $63EE: $00
    ld [hl], b                                    ; $63EF: $70
    dec [hl]                                      ; $63F0: $35
    nop                                           ; $63F1: $00
    ld b, c                                       ; $63F2: $41
    ld l, l                                       ; $63F3: $6D
    nop                                           ; $63F4: $00
    ld a, [hl-]                                   ; $63F5: $3A
    nop                                           ; $63F6: $00
    nop                                           ; $63F7: $00
    nop                                           ; $63F8: $00
    nop                                           ; $63F9: $00
    nop                                           ; $63FA: $00
    inc bc                                        ; $63FB: $03
    ld bc, $AF00                                  ; $63FC: $01 $00 $AF
    halt                                          ; $63FF: $76
    nop                                           ; $6400: $00
    sub [hl]                                      ; $6401: $96
    cp d                                          ; $6402: $BA
    nop                                           ; $6403: $00
    and l                                         ; $6404: $A5
    cp h                                          ; $6405: $BC
    nop                                           ; $6406: $00
    ld a, l                                       ; $6407: $7D
    pop bc                                        ; $6408: $C1
    nop                                           ; $6409: $00
    ld bc, $0000                                  ; $640A: $01 $00 $00
    nop                                           ; $640D: $00
    ld bc, $0100                                  ; $640E: $01 $00 $01
    call c, $DA00                                 ; $6411: $DC $00 $DA
    ld bc, $E300                                  ; $6414: $01 $00 $E3
    nop                                           ; $6417: $00
    nop                                           ; $6418: $00
    nop                                           ; $6419: $00
    nop                                           ; $641A: $00
    nop                                           ; $641B: $00
    inc bc                                        ; $641C: $03
    nop                                           ; $641D: $00
    nop                                           ; $641E: $00
    dec b                                         ; $641F: $05
    ld bc, $0000                                  ; $6420: $01 $00 $00
    ld [bc], a                                    ; $6423: $02
    nop                                           ; $6424: $00
    nop                                           ; $6425: $00
    ld b, $FE                                     ; $6426: $06 $FE
    add d                                         ; $6428: $82
    nop                                           ; $6429: $00
    cp h                                          ; $642A: $BC
    and l                                         ; $642B: $A5
    nop                                           ; $642C: $00
    add d                                         ; $642D: $82
    sub l                                         ; $642E: $95
    nop                                           ; $642F: $00
    cp e                                          ; $6430: $BB
    pop bc                                        ; $6431: $C1
    nop                                           ; $6432: $00
    add h                                         ; $6433: $84
    ld d, d                                       ; $6434: $52
    nop                                           ; $6435: $00
    jr z, jr_037_647F                             ; $6436: $28 $47

    nop                                           ; $6438: $00
    ld bc, $002F                                  ; $6439: $01 $2F $00
    jr z, jr_037_6471                             ; $643C: $28 $33

    nop                                           ; $643E: $00
    inc l                                         ; $643F: $2C
    scf                                           ; $6440: $37
    nop                                           ; $6441: $00
    ld l, d                                       ; $6442: $6A
    ret                                           ; $6443: $C9


    nop                                           ; $6444: $00
    ld bc, $0000                                  ; $6445: $01 $00 $00
    nop                                           ; $6448: $00
    nop                                           ; $6449: $00
    nop                                           ; $644A: $00
    inc bc                                        ; $644B: $03
    nop                                           ; $644C: $00
    nop                                           ; $644D: $00
    inc bc                                        ; $644E: $03
    ld bc, $8200                                  ; $644F: $01 $00 $82
    ld a, c                                       ; $6452: $79
    nop                                           ; $6453: $00
    ld a, b                                       ; $6454: $78
    sub l                                         ; $6455: $95
    nop                                           ; $6456: $00
    cp h                                          ; $6457: $BC
    sbc [hl]                                      ; $6458: $9E
    nop                                           ; $6459: $00
    halt                                          ; $645A: $76
    sbc d                                         ; $645B: $9A
    nop                                           ; $645C: $00
    ld bc, $0000                                  ; $645D: $01 $00 $00
    nop                                           ; $6460: $00
    ld bc, $0100                                  ; $6461: $01 $00 $01
    jp c, $DC00                                   ; $6464: $DA $00 $DC

    jp c, Boot                                    ; $6467: $DA $00 $01

    ldh [c], a                                    ; $646A: $E2
    nop                                           ; $646B: $00
    ld bc, $0000                                  ; $646C: $01 $00 $00
    nop                                           ; $646F: $00
    nop                                           ; $6470: $00

jr_037_6471:
    nop                                           ; $6471: $00
    inc bc                                        ; $6472: $03
    nop                                           ; $6473: $00
    nop                                           ; $6474: $00
    dec b                                         ; $6475: $05
    ld bc, $0000                                  ; $6476: $01 $00 $00
    ld [bc], a                                    ; $6479: $02
    nop                                           ; $647A: $00
    nop                                           ; $647B: $00
    ld b, $FE                                     ; $647C: $06 $FE
    dec sp                                        ; $647E: $3B

jr_037_647F:
    nop                                           ; $647F: $00
    ld h, b                                       ; $6480: $60
    ld l, a                                       ; $6481: $6F
    nop                                           ; $6482: $00
    ld c, d                                       ; $6483: $4A
    ld h, c                                       ; $6484: $61
    nop                                           ; $6485: $00
    ld [hl-], a                                   ; $6486: $32
    ld [hl], b                                    ; $6487: $70
    nop                                           ; $6488: $00
    ld b, d                                       ; $6489: $42
    ld bc, $2600                                  ; $648A: $01 $00 $26
    daa                                           ; $648D: $27
    nop                                           ; $648E: $00
    ld b, d                                       ; $648F: $42
    ld h, $00                                     ; $6490: $26 $00
    ld [hl], $61                                  ; $6492: $36 $61
    nop                                           ; $6494: $00
    ld b, e                                       ; $6495: $43
    dec hl                                        ; $6496: $2B
    nop                                           ; $6497: $00
    ld l, b                                       ; $6498: $68
    ld bc, $2F00                                  ; $6499: $01 $00 $2F
    jr z, jr_037_649E                             ; $649C: $28 $00

jr_037_649E:
    inc sp                                        ; $649E: $33
    inc l                                         ; $649F: $2C
    nop                                           ; $64A0: $00
    ret                                           ; $64A1: $C9


    nop                                           ; $64A2: $00
    nop                                           ; $64A3: $00
    inc bc                                        ; $64A4: $03
    nop                                           ; $64A5: $00
    nop                                           ; $64A6: $00
    inc bc                                        ; $64A7: $03
    ld bc, $7E00                                  ; $64A8: $01 $00 $7E
    cp h                                          ; $64AB: $BC
    nop                                           ; $64AC: $00
    sbc h                                         ; $64AD: $9C
    halt                                          ; $64AE: $76
    nop                                           ; $64AF: $00
    sbc d                                         ; $64B0: $9A
    cp h                                          ; $64B1: $BC
    nop                                           ; $64B2: $00
    ld bc, $0000                                  ; $64B3: $01 $00 $00
    nop                                           ; $64B6: $00
    ld bc, $0100                                  ; $64B7: $01 $00 $01
    call c, $DE00                                 ; $64BA: $DC $00 $DE
    ld bc, $E300                                  ; $64BD: $01 $00 $E3
    nop                                           ; $64C0: $00
    nop                                           ; $64C1: $00
    nop                                           ; $64C2: $00
    nop                                           ; $64C3: $00
    nop                                           ; $64C4: $00
    inc bc                                        ; $64C5: $03
    nop                                           ; $64C6: $00
    nop                                           ; $64C7: $00
    dec b                                         ; $64C8: $05
    ld bc, $0000                                  ; $64C9: $01 $00 $00
    ld [bc], a                                    ; $64CC: $02
    nop                                           ; $64CD: $00
    nop                                           ; $64CE: $00
    ld b, $FE                                     ; $64CF: $06 $FE
    adc b                                         ; $64D1: $88
    nop                                           ; $64D2: $00
    adc h                                         ; $64D3: $8C
    halt                                          ; $64D4: $76
    nop                                           ; $64D5: $00
    and b                                         ; $64D6: $A0
    pop bc                                        ; $64D7: $C1
    nop                                           ; $64D8: $00
    sbc d                                         ; $64D9: $9A
    ld b, a                                       ; $64DA: $47
    nop                                           ; $64DB: $00
    ld bc, $002F                                  ; $64DC: $01 $2F $00
    jr z, jr_037_6514                             ; $64DF: $28 $33

    nop                                           ; $64E1: $00
    inc l                                         ; $64E2: $2C
    ld l, [hl]                                    ; $64E3: $6E
    nop                                           ; $64E4: $00
    scf                                           ; $64E5: $37
    ld l, d                                       ; $64E6: $6A
    nop                                           ; $64E7: $00
    ret                                           ; $64E8: $C9


    nop                                           ; $64E9: $00
    nop                                           ; $64EA: $00
    nop                                           ; $64EB: $00
    nop                                           ; $64EC: $00
    nop                                           ; $64ED: $00
    inc bc                                        ; $64EE: $03
    nop                                           ; $64EF: $00
    nop                                           ; $64F0: $00
    inc bc                                        ; $64F1: $03
    ld bc, $7F00                                  ; $64F2: $01 $00 $7F
    cp d                                          ; $64F5: $BA
    nop                                           ; $64F6: $00
    jp nz, $0088                                  ; $64F7: $C2 $88 $00

    cp b                                          ; $64FA: $B8
    sbc d                                         ; $64FB: $9A
    nop                                           ; $64FC: $00
    cp e                                          ; $64FD: $BB
    cp h                                          ; $64FE: $BC
    nop                                           ; $64FF: $00
    ld bc, $0000                                  ; $6500: $01 $00 $00
    nop                                           ; $6503: $00
    ld bc, $0100                                  ; $6504: $01 $00 $01
    sbc $00                                       ; $6507: $DE $00
    call c, Call_000_00DA                         ; $6509: $DC $DA $00
    ld bc, $00E3                                  ; $650C: $01 $E3 $00
    ld bc, $0000                                  ; $650F: $01 $00 $00
    nop                                           ; $6512: $00
    nop                                           ; $6513: $00

jr_037_6514:
    nop                                           ; $6514: $00
    inc bc                                        ; $6515: $03
    nop                                           ; $6516: $00
    nop                                           ; $6517: $00
    dec b                                         ; $6518: $05
    ld bc, $0000                                  ; $6519: $01 $00 $00
    ld [bc], a                                    ; $651C: $02
    nop                                           ; $651D: $00
    nop                                           ; $651E: $00
    ld b, $FE                                     ; $651F: $06 $FE
    sbc d                                         ; $6521: $9A
    nop                                           ; $6522: $00
    cp e                                          ; $6523: $BB
    cp h                                          ; $6524: $BC
    nop                                           ; $6525: $00
    ld l, [hl]                                    ; $6526: $6E
    dec hl                                        ; $6527: $2B
    nop                                           ; $6528: $00
    daa                                           ; $6529: $27
    ld b, d                                       ; $652A: $42
    nop                                           ; $652B: $00
    ld l, a                                       ; $652C: $6F
    dec [hl]                                      ; $652D: $35
    nop                                           ; $652E: $00
    jr c, @+$44                                   ; $652F: $38 $42

    nop                                           ; $6531: $00
    ld bc, $0043                                  ; $6532: $01 $43 $00
    ld [hl], b                                    ; $6535: $70
    ld [hl], $00                                  ; $6536: $36 $00
    ld l, a                                       ; $6538: $6F
    scf                                           ; $6539: $37
    nop                                           ; $653A: $00
    ld l, d                                       ; $653B: $6A
    ld bc, $2F00                                  ; $653C: $01 $00 $2F
    jr z, jr_037_6541                             ; $653F: $28 $00

jr_037_6541:
    inc sp                                        ; $6541: $33
    inc l                                         ; $6542: $2C
    nop                                           ; $6543: $00
    ret                                           ; $6544: $C9


    nop                                           ; $6545: $00
    nop                                           ; $6546: $00
    inc bc                                        ; $6547: $03
    nop                                           ; $6548: $00
    nop                                           ; $6549: $00
    inc bc                                        ; $654A: $03
    add l                                         ; $654B: $85
    nop                                           ; $654C: $00
    ld a, [hl]                                    ; $654D: $7E
    ld c, a                                       ; $654E: $4F
    nop                                           ; $654F: $00
    ld [hl], b                                    ; $6550: $70
    dec [hl]                                      ; $6551: $35
    nop                                           ; $6552: $00
    ld b, c                                       ; $6553: $41
    ld l, l                                       ; $6554: $6D
    nop                                           ; $6555: $00
    ld a, [hl-]                                   ; $6556: $3A
    nop                                           ; $6557: $00
    nop                                           ; $6558: $00
    nop                                           ; $6559: $00
    nop                                           ; $655A: $00
    nop                                           ; $655B: $00
    inc bc                                        ; $655C: $03
    ld bc, $8200                                  ; $655D: $01 $00 $82
    ld a, c                                       ; $6560: $79
    nop                                           ; $6561: $00
    ld a, b                                       ; $6562: $78
    ld a, a                                       ; $6563: $7F
    nop                                           ; $6564: $00
    cp d                                          ; $6565: $BA
    jp nz, $8800                                  ; $6566: $C2 $00 $88

    cp b                                          ; $6569: $B8
    nop                                           ; $656A: $00
    ld bc, $0000                                  ; $656B: $01 $00 $00
    nop                                           ; $656E: $00
    ld bc, $0100                                  ; $656F: $01 $00 $01
    call c, $DA00                                 ; $6572: $DC $00 $DA
    call c, $DE00                                 ; $6575: $DC $00 $DE
    ld bc, $E300                                  ; $6578: $01 $00 $E3
    nop                                           ; $657B: $00
    nop                                           ; $657C: $00
    nop                                           ; $657D: $00
    nop                                           ; $657E: $00
    nop                                           ; $657F: $00
    inc bc                                        ; $6580: $03
    nop                                           ; $6581: $00
    nop                                           ; $6582: $00
    dec b                                         ; $6583: $05
    ld bc, $0000                                  ; $6584: $01 $00 $00
    ld [bc], a                                    ; $6587: $02
    nop                                           ; $6588: $00
    nop                                           ; $6589: $00
    ld b, $FE                                     ; $658A: $06 $FE
    ld h, $00                                     ; $658C: $26 $00
    daa                                           ; $658E: $27
    ld b, d                                       ; $658F: $42
    nop                                           ; $6590: $00
    ld l, [hl]                                    ; $6591: $6E
    ld bc, $3B00                                  ; $6592: $01 $00 $3B
    ld h, b                                       ; $6595: $60
    nop                                           ; $6596: $00
    ld l, a                                       ; $6597: $6F
    ld c, d                                       ; $6598: $4A
    nop                                           ; $6599: $00
    ld bc, $004F                                  ; $659A: $01 $4F $00
    inc l                                         ; $659D: $2C
    inc a                                         ; $659E: $3C
    nop                                           ; $659F: $00
    ld l, c                                       ; $65A0: $69
    cpl                                           ; $65A1: $2F
    nop                                           ; $65A2: $00
    ld l, a                                       ; $65A3: $6F
    ld b, a                                       ; $65A4: $47
    nop                                           ; $65A5: $00
    ld bc, $002A                                  ; $65A6: $01 $2A $00
    ld a, [hl+]                                   ; $65A9: $2A
    inc l                                         ; $65AA: $2C
    nop                                           ; $65AB: $00
    ld c, c                                       ; $65AC: $49
    sub [hl]                                      ; $65AD: $96
    nop                                           ; $65AE: $00
    or d                                          ; $65AF: $B2
    halt                                          ; $65B0: $76
    nop                                           ; $65B1: $00
    adc l                                         ; $65B2: $8D
    ld l, [hl]                                    ; $65B3: $6E
    nop                                           ; $65B4: $00
    ld bc, $0026                                  ; $65B5: $01 $26 $00
    ccf                                           ; $65B8: $3F
    add hl, hl                                    ; $65B9: $29
    nop                                           ; $65BA: $00
    ld l, d                                       ; $65BB: $6A
    ret                                           ; $65BC: $C9


    nop                                           ; $65BD: $00
    ld bc, $0000                                  ; $65BE: $01 $00 $00
    nop                                           ; $65C1: $00
    nop                                           ; $65C2: $00
    nop                                           ; $65C3: $00
    inc bc                                        ; $65C4: $03
    nop                                           ; $65C5: $00
    nop                                           ; $65C6: $00
    inc bc                                        ; $65C7: $03
    nop                                           ; $65C8: $00
    nop                                           ; $65C9: $00
    inc bc                                        ; $65CA: $03
    jr z, jr_037_65CD                             ; $65CB: $28 $00

jr_037_65CD:
    ld b, b                                       ; $65CD: $40
    ld h, [hl]                                    ; $65CE: $66
    nop                                           ; $65CF: $00
    jr z, @+$3A                                   ; $65D0: $28 $38

    nop                                           ; $65D2: $00
    daa                                           ; $65D3: $27
    ld d, b                                       ; $65D4: $50
    nop                                           ; $65D5: $00
    dec l                                         ; $65D6: $2D
    ld c, l                                       ; $65D7: $4D
    nop                                           ; $65D8: $00
    ld h, d                                       ; $65D9: $62
    ld d, a                                       ; $65DA: $57
    nop                                           ; $65DB: $00
    jr z, jr_037_662B                             ; $65DC: $28 $4D

    nop                                           ; $65DE: $00
    ccf                                           ; $65DF: $3F
    ld h, b                                       ; $65E0: $60
    nop                                           ; $65E1: $00
    ld c, d                                       ; $65E2: $4A
    ret z                                         ; $65E3: $C8

    nop                                           ; $65E4: $00
    ccf                                           ; $65E5: $3F
    ccf                                           ; $65E6: $3F
    nop                                           ; $65E7: $00
    dec hl                                        ; $65E8: $2B
    jr z, jr_037_65EB                             ; $65E9: $28 $00

jr_037_65EB:
    ret                                           ; $65EB: $C9


    nop                                           ; $65EC: $00
    nop                                           ; $65ED: $00
    nop                                           ; $65EE: $00
    nop                                           ; $65EF: $00
    nop                                           ; $65F0: $00
    inc bc                                        ; $65F1: $03
    nop                                           ; $65F2: $00
    nop                                           ; $65F3: $00
    dec b                                         ; $65F4: $05
    ld bc, $0000                                  ; $65F5: $01 $00 $00
    ld [bc], a                                    ; $65F8: $02
    nop                                           ; $65F9: $00
    nop                                           ; $65FA: $00
    ld [bc], a                                    ; $65FB: $02
    nop                                           ; $65FC: $00
    nop                                           ; $65FD: $00
    ld [bc], a                                    ; $65FE: $02
    nop                                           ; $65FF: $00
    nop                                           ; $6600: $00
    dec b                                         ; $6601: $05
    add b                                         ; $6602: $80
    nop                                           ; $6603: $00
    nop                                           ; $6604: $00
    ld [bc], a                                    ; $6605: $02
    nop                                           ; $6606: $00
    nop                                           ; $6607: $00
    ld bc, $65FF                                  ; $6608: $01 $FF $65
    sbc [hl]                                      ; $660B: $9E
    ld hl, $2B2A                                  ; $660C: $21 $2A $2B
    ld de, $5701                                  ; $660F: $11 $01 $57
    db $10                                        ; $6612: $10
    ld bc, $0082                                  ; $6613: $01 $82 $00
    cp h                                          ; $6616: $BC
    and l                                         ; $6617: $A5
    nop                                           ; $6618: $00
    sub l                                         ; $6619: $95
    cp [hl]                                       ; $661A: $BE
    nop                                           ; $661B: $00
    pop bc                                        ; $661C: $C1
    nop                                           ; $661D: $00
    nop                                           ; $661E: $00
    inc bc                                        ; $661F: $03
    ld d, b                                       ; $6620: $50
    ld de, $8251                                  ; $6621: $11 $51 $82
    nop                                           ; $6624: $00
    ld a, c                                       ; $6625: $79
    ld a, b                                       ; $6626: $78
    nop                                           ; $6627: $00
    ld c, l                                       ; $6628: $4D
    ld a, b                                       ; $6629: $78
    nop                                           ; $662A: $00

jr_037_662B:
    pop bc                                        ; $662B: $C1
    add [hl]                                      ; $662C: $86
    nop                                           ; $662D: $00
    cp h                                          ; $662E: $BC
    or e                                          ; $662F: $B3
    nop                                           ; $6630: $00
    ld a, b                                       ; $6631: $78
    ld a, e                                       ; $6632: $7B
    nop                                           ; $6633: $00
    sbc [hl]                                      ; $6634: $9E
    cp h                                          ; $6635: $BC
    nop                                           ; $6636: $00
    add e                                         ; $6637: $83
    halt                                          ; $6638: $76
    nop                                           ; $6639: $00
    ld l, [hl]                                    ; $663A: $6E
    ld h, a                                       ; $663B: $67
    db $10                                        ; $663C: $10
    ld [hl], b                                    ; $663D: $70
    ld b, d                                       ; $663E: $42
    nop                                           ; $663F: $00
    daa                                           ; $6640: $27
    ld l, d                                       ; $6641: $6A
    nop                                           ; $6642: $00
    ld bc, $0099                                  ; $6643: $01 $99 $00
    adc c                                         ; $6646: $89
    sub l                                         ; $6647: $95
    nop                                           ; $6648: $00
    cp [hl]                                       ; $6649: $BE
    pop bc                                        ; $664A: $C1
    nop                                           ; $664B: $00
    ld c, l                                       ; $664C: $4D
    cp e                                          ; $664D: $BB
    nop                                           ; $664E: $00
    halt                                          ; $664F: $76
    sub [hl]                                      ; $6650: $96
    nop                                           ; $6651: $00
    halt                                          ; $6652: $76
    ret                                           ; $6653: $C9


    nop                                           ; $6654: $00
    ld bc, $0000                                  ; $6655: $01 $00 $00
    inc bc                                        ; $6658: $03
    jr nz, jr_037_666D                            ; $6659: $20 $12

    dec a                                         ; $665B: $3D
    ld a, $20                                     ; $665C: $3E $20
    ld b, h                                       ; $665E: $44
    jr nc, jr_037_6661                            ; $665F: $30 $00

jr_037_6661:
    ld bc, $11A6                                  ; $6661: $01 $A6 $11
    dec c                                         ; $6664: $0D
    ld c, d                                       ; $6665: $4A
    nop                                           ; $6666: $00
    ld c, [hl]                                    ; $6667: $4E
    and d                                         ; $6668: $A2
    ld [hl+], a                                   ; $6669: $22
    inc a                                         ; $666A: $3C
    ld b, e                                       ; $666B: $43
    nop                                           ; $666C: $00

jr_037_666D:
    ld bc, $0062                                  ; $666D: $01 $62 $00
    dec [hl]                                      ; $6670: $35
    ld [hl], $00                                  ; $6671: $36 $00
    daa                                           ; $6673: $27
    ret                                           ; $6674: $C9


    nop                                           ; $6675: $00
    ld bc, $0000                                  ; $6676: $01 $00 $00
    nop                                           ; $6679: $00
    nop                                           ; $667A: $00
    nop                                           ; $667B: $00
    inc bc                                        ; $667C: $03
    ld b, b                                       ; $667D: $40
    ld de, $4241                                  ; $667E: $11 $41 $42
    db $10                                        ; $6681: $10
    ld bc, $0000                                  ; $6682: $01 $00 $00
    nop                                           ; $6685: $00
    nop                                           ; $6686: $00
    nop                                           ; $6687: $00
    inc bc                                        ; $6688: $03
    ld bc, $9300                                  ; $6689: $01 $00 $93
    ld a, c                                       ; $668C: $79
    nop                                           ; $668D: $00
    adc c                                         ; $668E: $89
    sub c                                         ; $668F: $91
    nop                                           ; $6690: $00
    halt                                          ; $6691: $76
    ld a, b                                       ; $6692: $78
    nop                                           ; $6693: $00
    jp nz, $007F                                  ; $6694: $C2 $7F $00

    adc c                                         ; $6697: $89
    nop                                           ; $6698: $00
    nop                                           ; $6699: $00
    nop                                           ; $669A: $00
    ld bc, $0100                                  ; $669B: $01 $00 $01
    call c, $DA00                                 ; $669E: $DC $00 $DA
    ld bc, $E300                                  ; $66A1: $01 $00 $E3
    nop                                           ; $66A4: $00
    nop                                           ; $66A5: $00
    nop                                           ; $66A6: $00
    nop                                           ; $66A7: $00
    nop                                           ; $66A8: $00
    inc bc                                        ; $66A9: $03
    nop                                           ; $66AA: $00
    nop                                           ; $66AB: $00
    dec b                                         ; $66AC: $05
    ld bc, $0000                                  ; $66AD: $01 $00 $00
    ld [bc], a                                    ; $66B0: $02
    nop                                           ; $66B1: $00
    nop                                           ; $66B2: $00
    ld b, $FE                                     ; $66B3: $06 $FE
    add d                                         ; $66B5: $82
    nop                                           ; $66B6: $00
    cp h                                          ; $66B7: $BC
    and l                                         ; $66B8: $A5
    nop                                           ; $66B9: $00
    ld a, b                                       ; $66BA: $78
    jp nz, Jump_037_7F00                          ; $66BB: $C2 $00 $7F

    adc c                                         ; $66BE: $89
    nop                                           ; $66BF: $00
    ld l, [hl]                                    ; $66C0: $6E
    dec de                                        ; $66C1: $1B
    jr nz, @+$35                                  ; $66C2: $20 $33

    ld b, d                                       ; $66C4: $42
    nop                                           ; $66C5: $00
    ld bc, $118D                                  ; $66C6: $01 $8D $11
    adc e                                         ; $66C9: $8B
    scf                                           ; $66CA: $37
    nop                                           ; $66CB: $00
    ld l, d                                       ; $66CC: $6A
    ret                                           ; $66CD: $C9


    nop                                           ; $66CE: $00
    ld bc, $0000                                  ; $66CF: $01 $00 $00
    nop                                           ; $66D2: $00
    nop                                           ; $66D3: $00
    nop                                           ; $66D4: $00
    inc bc                                        ; $66D5: $03
    nop                                           ; $66D6: $00
    nop                                           ; $66D7: $00
    inc bc                                        ; $66D8: $03
    ld bc, $9900                                  ; $66D9: $01 $00 $99
    adc c                                         ; $66DC: $89
    nop                                           ; $66DD: $00
    ld a, b                                       ; $66DE: $78
    adc d                                         ; $66DF: $8A
    nop                                           ; $66E0: $00
    pop bc                                        ; $66E1: $C1
    adc b                                         ; $66E2: $88
    nop                                           ; $66E3: $00
    cp c                                          ; $66E4: $B9
    pop bc                                        ; $66E5: $C1
    nop                                           ; $66E6: $00
    ld bc, $0000                                  ; $66E7: $01 $00 $00
    nop                                           ; $66EA: $00
    ld bc, $0100                                  ; $66EB: $01 $00 $01
    jp c, $DC00                                   ; $66EE: $DA $00 $DC

    jp c, Boot                                    ; $66F1: $DA $00 $01

    db $E3                                        ; $66F4: $E3
    nop                                           ; $66F5: $00
    ld bc, $0000                                  ; $66F6: $01 $00 $00
    nop                                           ; $66F9: $00
    nop                                           ; $66FA: $00
    nop                                           ; $66FB: $00
    inc bc                                        ; $66FC: $03
    nop                                           ; $66FD: $00
    nop                                           ; $66FE: $00
    dec b                                         ; $66FF: $05
    ld bc, $0000                                  ; $6700: $01 $00 $00
    ld [bc], a                                    ; $6703: $02
    nop                                           ; $6704: $00
    nop                                           ; $6705: $00
    ld b, $FE                                     ; $6706: $06 $FE
    add d                                         ; $6708: $82
    nop                                           ; $6709: $00
    cp h                                          ; $670A: $BC
    and l                                         ; $670B: $A5
    nop                                           ; $670C: $00
    ld a, b                                       ; $670D: $78
    jp nz, Jump_037_7F00                          ; $670E: $C2 $00 $7F

    adc c                                         ; $6711: $89
    nop                                           ; $6712: $00
    ld b, a                                       ; $6713: $47
    ld bc, $8A01                                  ; $6714: $01 $01 $8A
    add l                                         ; $6717: $85
    ld de, $4A93                                  ; $6718: $11 $93 $4A
    ld bc, $8B8D                                  ; $671B: $01 $8D $8B
    db $10                                        ; $671E: $10
    scf                                           ; $671F: $37
    ld l, d                                       ; $6720: $6A
    nop                                           ; $6721: $00
    ret                                           ; $6722: $C9


    nop                                           ; $6723: $00
    nop                                           ; $6724: $00
    nop                                           ; $6725: $00
    nop                                           ; $6726: $00
    nop                                           ; $6727: $00
    inc bc                                        ; $6728: $03
    nop                                           ; $6729: $00
    nop                                           ; $672A: $00
    inc bc                                        ; $672B: $03
    ld bc, $7F00                                  ; $672C: $01 $00 $7F
    cp [hl]                                       ; $672F: $BE
    nop                                           ; $6730: $00
    adc c                                         ; $6731: $89
    cp e                                          ; $6732: $BB
    nop                                           ; $6733: $00
    xor b                                         ; $6734: $A8
    pop bc                                        ; $6735: $C1
    nop                                           ; $6736: $00
    adc l                                         ; $6737: $8D
    add sp, $00                                   ; $6738: $E8 $00
    ld bc, $0000                                  ; $673A: $01 $00 $00
    nop                                           ; $673D: $00
    ld bc, $0100                                  ; $673E: $01 $00 $01
    call c, $DE00                                 ; $6741: $DC $00 $DE
    ld bc, $E200                                  ; $6744: $01 $00 $E2
    nop                                           ; $6747: $00
    nop                                           ; $6748: $00
    nop                                           ; $6749: $00
    nop                                           ; $674A: $00
    nop                                           ; $674B: $00
    inc bc                                        ; $674C: $03
    nop                                           ; $674D: $00
    nop                                           ; $674E: $00
    dec b                                         ; $674F: $05
    ld bc, $0000                                  ; $6750: $01 $00 $00
    ld [bc], a                                    ; $6753: $02
    nop                                           ; $6754: $00
    nop                                           ; $6755: $00
    ld b, $FE                                     ; $6756: $06 $FE
    adc d                                         ; $6758: $8A
    ld de, $8B8D                                  ; $6759: $11 $8D $8B
    db $10                                        ; $675C: $10
    ld l, [hl]                                    ; $675D: $6E
    ld b, a                                       ; $675E: $47
    jr nz, @+$30                                  ; $675F: $20 $2E

    ld b, d                                       ; $6761: $42
    nop                                           ; $6762: $00
    ld bc, $007D                                  ; $6763: $01 $7D $00
    ld a, d                                       ; $6766: $7A
    pop bc                                        ; $6767: $C1
    nop                                           ; $6768: $00
    sub c                                         ; $6769: $91
    halt                                          ; $676A: $76
    ld bc, $8B8D                                  ; $676B: $01 $8D $8B
    db $10                                        ; $676E: $10
    scf                                           ; $676F: $37
    ld l, d                                       ; $6770: $6A
    nop                                           ; $6771: $00
    ret                                           ; $6772: $C9


    nop                                           ; $6773: $00
    nop                                           ; $6774: $00
    nop                                           ; $6775: $00
    nop                                           ; $6776: $00
    nop                                           ; $6777: $00
    inc bc                                        ; $6778: $03
    nop                                           ; $6779: $00
    nop                                           ; $677A: $00
    inc bc                                        ; $677B: $03
    ld bc, $7F00                                  ; $677C: $01 $00 $7F
    cp [hl]                                       ; $677F: $BE
    nop                                           ; $6780: $00
    adc c                                         ; $6781: $89
    cp e                                          ; $6782: $BB
    nop                                           ; $6783: $00
    xor b                                         ; $6784: $A8
    pop bc                                        ; $6785: $C1
    nop                                           ; $6786: $00
    adc l                                         ; $6787: $8D
    db $EC                                        ; $6788: $EC
    nop                                           ; $6789: $00
    ld bc, $0000                                  ; $678A: $01 $00 $00
    nop                                           ; $678D: $00
    ld bc, $0100                                  ; $678E: $01 $00 $01
    call c, $DE00                                 ; $6791: $DC $00 $DE
    ld bc, $E300                                  ; $6794: $01 $00 $E3
    nop                                           ; $6797: $00
    nop                                           ; $6798: $00
    nop                                           ; $6799: $00
    nop                                           ; $679A: $00
    nop                                           ; $679B: $00
    inc bc                                        ; $679C: $03
    nop                                           ; $679D: $00
    nop                                           ; $679E: $00
    dec b                                         ; $679F: $05
    ld bc, $0000                                  ; $67A0: $01 $00 $00
    ld [bc], a                                    ; $67A3: $02
    nop                                           ; $67A4: $00
    nop                                           ; $67A5: $00
    ld b, $FE                                     ; $67A6: $06 $FE
    dec c                                         ; $67A8: $0D
    ld de, $8B8D                                  ; $67A9: $11 $8D $8B
    db $10                                        ; $67AC: $10
    ld l, [hl]                                    ; $67AD: $6E
    ld b, a                                       ; $67AE: $47
    jr nz, jr_037_67DF                            ; $67AF: $20 $2E

    ld b, d                                       ; $67B1: $42
    nop                                           ; $67B2: $00
    ld bc, $007D                                  ; $67B3: $01 $7D $00
    ld a, d                                       ; $67B6: $7A
    pop bc                                        ; $67B7: $C1
    nop                                           ; $67B8: $00
    sub c                                         ; $67B9: $91
    halt                                          ; $67BA: $76
    ld bc, $8B8D                                  ; $67BB: $01 $8D $8B
    db $10                                        ; $67BE: $10
    scf                                           ; $67BF: $37
    ld l, d                                       ; $67C0: $6A
    nop                                           ; $67C1: $00
    ret                                           ; $67C2: $C9


    nop                                           ; $67C3: $00
    nop                                           ; $67C4: $00
    nop                                           ; $67C5: $00
    nop                                           ; $67C6: $00
    nop                                           ; $67C7: $00
    inc bc                                        ; $67C8: $03
    nop                                           ; $67C9: $00
    nop                                           ; $67CA: $00
    inc bc                                        ; $67CB: $03
    ld bc, $8B00                                  ; $67CC: $01 $00 $8B
    ld a, d                                       ; $67CF: $7A
    nop                                           ; $67D0: $00
    cp h                                          ; $67D1: $BC
    sbc d                                         ; $67D2: $9A
    nop                                           ; $67D3: $00
    cp l                                          ; $67D4: $BD
    ld a, c                                       ; $67D5: $79
    nop                                           ; $67D6: $00
    pop bc                                        ; $67D7: $C1
    nop                                           ; $67D8: $00
    nop                                           ; $67D9: $00
    nop                                           ; $67DA: $00
    ld bc, $1D02                                  ; $67DB: $01 $02 $1D
    ld b, [hl]                                    ; $67DE: $46

jr_037_67DF:
    nop                                           ; $67DF: $00
    daa                                           ; $67E0: $27
    ld b, d                                       ; $67E1: $42
    nop                                           ; $67E2: $00
    ld bc, $00DE                                  ; $67E3: $01 $DE $00
    call c, Call_000_00DA                         ; $67E6: $DC $DA $00
    ld bc, $00E3                                  ; $67E9: $01 $E3 $00
    ld bc, $0000                                  ; $67EC: $01 $00 $00
    inc bc                                        ; $67EF: $03
    nop                                           ; $67F0: $00
    nop                                           ; $67F1: $00
    dec b                                         ; $67F2: $05
    ld bc, $0000                                  ; $67F3: $01 $00 $00
    ld [bc], a                                    ; $67F6: $02
    nop                                           ; $67F7: $00
    nop                                           ; $67F8: $00
    ld b, $FE                                     ; $67F9: $06 $FE
    adc [hl]                                      ; $67FB: $8E
    ld de, $4D07                                  ; $67FC: $11 $07 $4D
    nop                                           ; $67FF: $00
    ld a, e                                       ; $6800: $7B
    sbc [hl]                                      ; $6801: $9E
    nop                                           ; $6802: $00
    cp h                                          ; $6803: $BC
    add e                                         ; $6804: $83
    nop                                           ; $6805: $00
    halt                                          ; $6806: $76
    ld l, [hl]                                    ; $6807: $6E
    ld [bc], a                                    ; $6808: $02
    ld a, [hl-]                                   ; $6809: $3A
    jr z, jr_037_680C                             ; $680A: $28 $00

jr_037_680C:
    ld bc, $201B                                  ; $680C: $01 $1B $20
    inc sp                                        ; $680F: $33
    ld b, d                                       ; $6810: $42
    db $10                                        ; $6811: $10
    ret                                           ; $6812: $C9


    nop                                           ; $6813: $00
    nop                                           ; $6814: $00
    nop                                           ; $6815: $00
    nop                                           ; $6816: $00
    nop                                           ; $6817: $00
    inc bc                                        ; $6818: $03
    nop                                           ; $6819: $00
    nop                                           ; $681A: $00
    inc bc                                        ; $681B: $03
    sbc a                                         ; $681C: $9F
    ld hl, $4140                                  ; $681D: $21 $40 $41
    ld de, $0042                                  ; $6820: $11 $42 $00
    nop                                           ; $6823: $00
    nop                                           ; $6824: $00
    nop                                           ; $6825: $00
    nop                                           ; $6826: $00
    inc bc                                        ; $6827: $03
    ld bc, $7D00                                  ; $6828: $01 $00 $7D
    ld a, h                                       ; $682B: $7C
    nop                                           ; $682C: $00
    adc c                                         ; $682D: $89
    xor h                                         ; $682E: $AC
    nop                                           ; $682F: $00
    cp l                                          ; $6830: $BD
    adc l                                         ; $6831: $8D
    nop                                           ; $6832: $00
    or a                                          ; $6833: $B7
    halt                                          ; $6834: $76
    nop                                           ; $6835: $00
    ld bc, $0000                                  ; $6836: $01 $00 $00
    nop                                           ; $6839: $00
    ld bc, $0100                                  ; $683A: $01 $00 $01
    call c, $DA00                                 ; $683D: $DC $00 $DA
    call c, $DE00                                 ; $6840: $DC $00 $DE
    ld bc, $E300                                  ; $6843: $01 $00 $E3
    nop                                           ; $6846: $00
    nop                                           ; $6847: $00
    nop                                           ; $6848: $00
    nop                                           ; $6849: $00
    nop                                           ; $684A: $00
    inc bc                                        ; $684B: $03
    nop                                           ; $684C: $00
    nop                                           ; $684D: $00
    dec b                                         ; $684E: $05
    ld bc, $0000                                  ; $684F: $01 $00 $00
    ld [bc], a                                    ; $6852: $02
    nop                                           ; $6853: $00
    nop                                           ; $6854: $00
    ld b, $FE                                     ; $6855: $06 $FE
    cpl                                           ; $6857: $2F
    ld [hl+], a                                   ; $6858: $22
    rla                                           ; $6859: $17
    ld [hl], $00                                  ; $685A: $36 $00
    ld b, d                                       ; $685C: $42
    ld bc, $A100                                  ; $685D: $01 $00 $A1
    jp nz, $9500                                  ; $6860: $C2 $00 $95

    ld [hl], $00                                  ; $6863: $36 $00
    ccf                                           ; $6865: $3F
    ld l, b                                       ; $6866: $68
    nop                                           ; $6867: $00
    ld bc, $118E                                  ; $6868: $01 $8E $11
    rlca                                          ; $686B: $07
    ld c, l                                       ; $686C: $4D
    nop                                           ; $686D: $00
    xor d                                         ; $686E: $AA
    halt                                          ; $686F: $76
    nop                                           ; $6870: $00
    sub e                                         ; $6871: $93
    ld l, [hl]                                    ; $6872: $6E
    ld bc, $69A4                                  ; $6873: $01 $A4 $69
    nop                                           ; $6876: $00
    ld bc, $1001                                  ; $6877: $01 $01 $10
    sub [hl]                                      ; $687A: $96
    or d                                          ; $687B: $B2
    nop                                           ; $687C: $00
    halt                                          ; $687D: $76
    adc l                                         ; $687E: $8D
    nop                                           ; $687F: $00
    ld l, [hl]                                    ; $6880: $6E
    ld h, $20                                     ; $6881: $26 $20
    add hl, hl                                    ; $6883: $29
    ld l, d                                       ; $6884: $6A
    nop                                           ; $6885: $00
    ret                                           ; $6886: $C9


    nop                                           ; $6887: $00
    nop                                           ; $6888: $00
    nop                                           ; $6889: $00
    nop                                           ; $688A: $00
    nop                                           ; $688B: $00
    inc bc                                        ; $688C: $03
    nop                                           ; $688D: $00
    nop                                           ; $688E: $00
    inc bc                                        ; $688F: $03
    xor a                                         ; $6890: $AF
    nop                                           ; $6891: $00
    adc b                                         ; $6892: $88
    pop bc                                        ; $6893: $C1
    nop                                           ; $6894: $00
    or e                                          ; $6895: $B3
    halt                                          ; $6896: $76
    nop                                           ; $6897: $00
    sbc d                                         ; $6898: $9A
    ld c, [hl]                                    ; $6899: $4E
    nop                                           ; $689A: $00
    ld bc, $0000                                  ; $689B: $01 $00 $00
    nop                                           ; $689E: $00
    nop                                           ; $689F: $00
    nop                                           ; $68A0: $00
    inc bc                                        ; $68A1: $03
    ret nc                                        ; $68A2: $D0

    nop                                           ; $68A3: $00
    sbc d                                         ; $68A4: $9A
    cp e                                          ; $68A5: $BB
    nop                                           ; $68A6: $00
    cp h                                          ; $68A7: $BC
    ld h, d                                       ; $68A8: $62
    ld de, $D163                                  ; $68A9: $11 $63 $D1
    nop                                           ; $68AC: $00
    ld c, d                                       ; $68AD: $4A
    ld bc, $5201                                  ; $68AE: $01 $01 $52
    ld d, e                                       ; $68B1: $53
    db $10                                        ; $68B2: $10
    scf                                           ; $68B3: $37
    ld l, d                                       ; $68B4: $6A
    nop                                           ; $68B5: $00
    ret                                           ; $68B6: $C9


    nop                                           ; $68B7: $00
    nop                                           ; $68B8: $00
    nop                                           ; $68B9: $00
    nop                                           ; $68BA: $00
    nop                                           ; $68BB: $00
    inc bc                                        ; $68BC: $03
    nop                                           ; $68BD: $00
    nop                                           ; $68BE: $00
    inc b                                         ; $68BF: $04
    ld bc, $0000                                  ; $68C0: $01 $00 $00
    dec b                                         ; $68C3: $05
    ld bc, $0000                                  ; $68C4: $01 $00 $00
    ld [bc], a                                    ; $68C7: $02
    nop                                           ; $68C8: $00
    nop                                           ; $68C9: $00
    ld [bc], a                                    ; $68CA: $02
    nop                                           ; $68CB: $00
    nop                                           ; $68CC: $00
    ld [bc], a                                    ; $68CD: $02
    nop                                           ; $68CE: $00
    nop                                           ; $68CF: $00
    ld b, $FE                                     ; $68D0: $06 $FE
    xor a                                         ; $68D2: $AF
    nop                                           ; $68D3: $00
    adc b                                         ; $68D4: $88
    pop bc                                        ; $68D5: $C1
    nop                                           ; $68D6: $00
    or e                                          ; $68D7: $B3
    halt                                          ; $68D8: $76
    nop                                           ; $68D9: $00
    sbc d                                         ; $68DA: $9A
    ld b, a                                       ; $68DB: $47
    nop                                           ; $68DC: $00
    ld c, [hl]                                    ; $68DD: $4E
    add d                                         ; $68DE: $82
    nop                                           ; $68DF: $00
    halt                                          ; $68E0: $76
    sbc d                                         ; $68E1: $9A
    nop                                           ; $68E2: $00
    ret z                                         ; $68E3: $C8

    adc l                                         ; $68E4: $8D
    nop                                           ; $68E5: $00
    or a                                          ; $68E6: $B7
    pop bc                                        ; $68E7: $C1
    nop                                           ; $68E8: $00
    xor h                                         ; $68E9: $AC
    jr nc, jr_037_68EC                            ; $68EA: $30 $00

jr_037_68EC:
    ld b, a                                       ; $68EC: $47
    inc l                                         ; $68ED: $2C
    nop                                           ; $68EE: $00
    ld c, c                                       ; $68EF: $49
    daa                                           ; $68F0: $27
    nop                                           ; $68F1: $00
    ret                                           ; $68F2: $C9


    nop                                           ; $68F3: $00
    nop                                           ; $68F4: $00
    nop                                           ; $68F5: $00
    nop                                           ; $68F6: $00
    nop                                           ; $68F7: $00
    inc bc                                        ; $68F8: $03
    nop                                           ; $68F9: $00
    nop                                           ; $68FA: $00
    dec b                                         ; $68FB: $05
    ld bc, $0000                                  ; $68FC: $01 $00 $00
    ld [bc], a                                    ; $68FF: $02
    nop                                           ; $6900: $00
    nop                                           ; $6901: $00
    ld b, $FE                                     ; $6902: $06 $FE
    ld b, b                                       ; $6904: $40
    ld de, $4241                                  ; $6905: $11 $41 $42
    db $10                                        ; $6908: $10
    ld bc, $0000                                  ; $6909: $01 $00 $00
    nop                                           ; $690C: $00
    nop                                           ; $690D: $00
    nop                                           ; $690E: $00
    inc bc                                        ; $690F: $03
    ld bc, $AF00                                  ; $6910: $01 $00 $AF
    halt                                          ; $6913: $76
    nop                                           ; $6914: $00
    sub [hl]                                      ; $6915: $96
    cp d                                          ; $6916: $BA
    nop                                           ; $6917: $00
    and l                                         ; $6918: $A5
    cp h                                          ; $6919: $BC
    nop                                           ; $691A: $00
    ld a, l                                       ; $691B: $7D
    pop bc                                        ; $691C: $C1
    nop                                           ; $691D: $00
    ld bc, $0000                                  ; $691E: $01 $00 $00
    nop                                           ; $6921: $00
    ld bc, $0100                                  ; $6922: $01 $00 $01
    call c, $DA00                                 ; $6925: $DC $00 $DA
    ld bc, $E300                                  ; $6928: $01 $00 $E3
    nop                                           ; $692B: $00
    nop                                           ; $692C: $00
    nop                                           ; $692D: $00
    nop                                           ; $692E: $00
    nop                                           ; $692F: $00
    inc bc                                        ; $6930: $03
    nop                                           ; $6931: $00
    nop                                           ; $6932: $00
    dec b                                         ; $6933: $05
    ld bc, $0000                                  ; $6934: $01 $00 $00
    ld [bc], a                                    ; $6937: $02
    nop                                           ; $6938: $00
    nop                                           ; $6939: $00
    ld b, $FE                                     ; $693A: $06 $FE
    add d                                         ; $693C: $82
    nop                                           ; $693D: $00
    cp h                                          ; $693E: $BC
    and l                                         ; $693F: $A5
    nop                                           ; $6940: $00
    add d                                         ; $6941: $82
    sub l                                         ; $6942: $95
    nop                                           ; $6943: $00
    cp e                                          ; $6944: $BB
    pop bc                                        ; $6945: $C1
    nop                                           ; $6946: $00
    add h                                         ; $6947: $84
    ld c, b                                       ; $6948: $48
    jr nz, jr_037_6992                            ; $6949: $20 $47

    adc l                                         ; $694B: $8D
    ld de, $378B                                  ; $694C: $11 $8B $37
    nop                                           ; $694F: $00
    ld l, d                                       ; $6950: $6A
    ret                                           ; $6951: $C9


    nop                                           ; $6952: $00
    ld bc, $0000                                  ; $6953: $01 $00 $00
    nop                                           ; $6956: $00
    nop                                           ; $6957: $00
    nop                                           ; $6958: $00
    inc bc                                        ; $6959: $03
    nop                                           ; $695A: $00
    nop                                           ; $695B: $00
    inc bc                                        ; $695C: $03
    ld bc, $8200                                  ; $695D: $01 $00 $82
    ld a, c                                       ; $6960: $79
    nop                                           ; $6961: $00
    ld a, b                                       ; $6962: $78
    sub l                                         ; $6963: $95
    nop                                           ; $6964: $00
    cp h                                          ; $6965: $BC
    sbc [hl]                                      ; $6966: $9E
    nop                                           ; $6967: $00
    halt                                          ; $6968: $76
    sbc d                                         ; $6969: $9A
    nop                                           ; $696A: $00
    ld bc, $0000                                  ; $696B: $01 $00 $00
    nop                                           ; $696E: $00
    ld bc, $0100                                  ; $696F: $01 $00 $01
    jp c, $DC00                                   ; $6972: $DA $00 $DC

    jp c, Boot                                    ; $6975: $DA $00 $01

    ldh [c], a                                    ; $6978: $E2
    nop                                           ; $6979: $00
    ld bc, $0000                                  ; $697A: $01 $00 $00
    nop                                           ; $697D: $00
    nop                                           ; $697E: $00
    nop                                           ; $697F: $00
    inc bc                                        ; $6980: $03
    nop                                           ; $6981: $00
    nop                                           ; $6982: $00
    dec b                                         ; $6983: $05
    ld bc, $0000                                  ; $6984: $01 $00 $00
    ld [bc], a                                    ; $6987: $02
    nop                                           ; $6988: $00
    nop                                           ; $6989: $00
    ld b, $FE                                     ; $698A: $06 $FE
    inc c                                         ; $698C: $0C
    ld de, $4A9A                                  ; $698D: $11 $9A $4A
    ld [bc], a                                    ; $6990: $02
    ld c, c                                       ; $6991: $49

jr_037_6992:
    ld [hl], b                                    ; $6992: $70
    nop                                           ; $6993: $00
    ld b, d                                       ; $6994: $42
    ld bc, $8E01                                  ; $6995: $01 $01 $8E
    rlca                                          ; $6998: $07
    db $10                                        ; $6999: $10
    ld c, l                                       ; $699A: $4D
    ld c, d                                       ; $699B: $4A
    ld [hl+], a                                   ; $699C: $22
    ld c, e                                       ; $699D: $4B
    dec hl                                        ; $699E: $2B
    nop                                           ; $699F: $00
    ld l, b                                       ; $69A0: $68
    adc l                                         ; $69A1: $8D
    ld de, $378B                                  ; $69A2: $11 $8B $37
    nop                                           ; $69A5: $00
    ld l, d                                       ; $69A6: $6A
    ret                                           ; $69A7: $C9


    nop                                           ; $69A8: $00
    ld bc, $0000                                  ; $69A9: $01 $00 $00
    nop                                           ; $69AC: $00
    nop                                           ; $69AD: $00
    nop                                           ; $69AE: $00
    inc bc                                        ; $69AF: $03
    nop                                           ; $69B0: $00
    nop                                           ; $69B1: $00
    inc bc                                        ; $69B2: $03
    ld bc, $7E00                                  ; $69B3: $01 $00 $7E
    cp h                                          ; $69B6: $BC
    nop                                           ; $69B7: $00
    sbc h                                         ; $69B8: $9C
    halt                                          ; $69B9: $76
    nop                                           ; $69BA: $00
    sbc d                                         ; $69BB: $9A
    cp h                                          ; $69BC: $BC
    nop                                           ; $69BD: $00
    ld bc, $0000                                  ; $69BE: $01 $00 $00
    nop                                           ; $69C1: $00
    ld bc, $0100                                  ; $69C2: $01 $00 $01
    call c, $DE00                                 ; $69C5: $DC $00 $DE
    ld bc, $E300                                  ; $69C8: $01 $00 $E3
    nop                                           ; $69CB: $00
    nop                                           ; $69CC: $00
    nop                                           ; $69CD: $00
    nop                                           ; $69CE: $00
    nop                                           ; $69CF: $00
    inc bc                                        ; $69D0: $03
    nop                                           ; $69D1: $00
    nop                                           ; $69D2: $00
    dec b                                         ; $69D3: $05
    ld bc, $0000                                  ; $69D4: $01 $00 $00
    ld [bc], a                                    ; $69D7: $02
    nop                                           ; $69D8: $00
    nop                                           ; $69D9: $00
    ld b, $FE                                     ; $69DA: $06 $FE
    adc b                                         ; $69DC: $88
    nop                                           ; $69DD: $00
    adc h                                         ; $69DE: $8C
    halt                                          ; $69DF: $76
    nop                                           ; $69E0: $00
    and b                                         ; $69E1: $A0
    pop bc                                        ; $69E2: $C1
    nop                                           ; $69E3: $00
    sbc d                                         ; $69E4: $9A
    ld b, a                                       ; $69E5: $47
    ld bc, $8B8D                                  ; $69E6: $01 $8D $8B
    db $10                                        ; $69E9: $10
    scf                                           ; $69EA: $37
    ld l, d                                       ; $69EB: $6A
    nop                                           ; $69EC: $00
    ret                                           ; $69ED: $C9


    nop                                           ; $69EE: $00
    nop                                           ; $69EF: $00
    inc bc                                        ; $69F0: $03
    nop                                           ; $69F1: $00
    nop                                           ; $69F2: $00
    inc bc                                        ; $69F3: $03
    ld bc, $7F00                                  ; $69F4: $01 $00 $7F
    cp d                                          ; $69F7: $BA
    nop                                           ; $69F8: $00
    jp nz, $0088                                  ; $69F9: $C2 $88 $00

    cp b                                          ; $69FC: $B8
    sbc d                                         ; $69FD: $9A
    nop                                           ; $69FE: $00
    cp e                                          ; $69FF: $BB
    cp h                                          ; $6A00: $BC
    nop                                           ; $6A01: $00
    ld bc, $0000                                  ; $6A02: $01 $00 $00
    nop                                           ; $6A05: $00
    ld bc, $0100                                  ; $6A06: $01 $00 $01
    sbc $00                                       ; $6A09: $DE $00
    call c, Call_000_00DA                         ; $6A0B: $DC $DA $00
    ld bc, $00E3                                  ; $6A0E: $01 $E3 $00
    ld bc, $0000                                  ; $6A11: $01 $00 $00
    nop                                           ; $6A14: $00
    nop                                           ; $6A15: $00
    nop                                           ; $6A16: $00
    inc bc                                        ; $6A17: $03
    nop                                           ; $6A18: $00
    nop                                           ; $6A19: $00
    dec b                                         ; $6A1A: $05
    ld bc, $0000                                  ; $6A1B: $01 $00 $00
    ld [bc], a                                    ; $6A1E: $02
    nop                                           ; $6A1F: $00
    nop                                           ; $6A20: $00
    ld b, $FE                                     ; $6A21: $06 $FE
    sbc d                                         ; $6A23: $9A
    nop                                           ; $6A24: $00
    cp e                                          ; $6A25: $BB
    cp h                                          ; $6A26: $BC
    nop                                           ; $6A27: $00
    ld l, [hl]                                    ; $6A28: $6E
    inc [hl]                                      ; $6A29: $34
    ld [de], a                                    ; $6A2A: $12
    jr c, jr_037_6A62                             ; $6A2B: $38 $35

    nop                                           ; $6A2D: $00
    jr c, jr_037_6A72                             ; $6A2E: $38 $42

    ld [bc], a                                    ; $6A30: $02
    cpl                                           ; $6A31: $2F
    rla                                           ; $6A32: $17
    jr nz, @+$39                                  ; $6A33: $20 $37

    ld l, d                                       ; $6A35: $6A
    ld bc, $8B8D                                  ; $6A36: $01 $8D $8B
    db $10                                        ; $6A39: $10
    ret                                           ; $6A3A: $C9


    nop                                           ; $6A3B: $00
    nop                                           ; $6A3C: $00
    nop                                           ; $6A3D: $00
    nop                                           ; $6A3E: $00
    nop                                           ; $6A3F: $00
    inc bc                                        ; $6A40: $03
    nop                                           ; $6A41: $00
    nop                                           ; $6A42: $00
    inc bc                                        ; $6A43: $03
    sbc a                                         ; $6A44: $9F
    ld hl, $4140                                  ; $6A45: $21 $40 $41
    ld de, $0042                                  ; $6A48: $11 $42 $00
    nop                                           ; $6A4B: $00
    nop                                           ; $6A4C: $00
    nop                                           ; $6A4D: $00
    nop                                           ; $6A4E: $00
    inc bc                                        ; $6A4F: $03
    ld bc, $8200                                  ; $6A50: $01 $00 $82
    ld a, c                                       ; $6A53: $79
    nop                                           ; $6A54: $00
    ld a, b                                       ; $6A55: $78
    ld a, a                                       ; $6A56: $7F
    nop                                           ; $6A57: $00
    cp d                                          ; $6A58: $BA
    jp nz, $8800                                  ; $6A59: $C2 $00 $88

    cp b                                          ; $6A5C: $B8
    nop                                           ; $6A5D: $00
    ld bc, $0000                                  ; $6A5E: $01 $00 $00
    nop                                           ; $6A61: $00

jr_037_6A62:
    ld bc, $0100                                  ; $6A62: $01 $00 $01
    call c, $DA00                                 ; $6A65: $DC $00 $DA
    call c, $DE00                                 ; $6A68: $DC $00 $DE
    ld bc, $E300                                  ; $6A6B: $01 $00 $E3
    nop                                           ; $6A6E: $00
    nop                                           ; $6A6F: $00
    nop                                           ; $6A70: $00
    nop                                           ; $6A71: $00

jr_037_6A72:
    nop                                           ; $6A72: $00
    inc bc                                        ; $6A73: $03
    nop                                           ; $6A74: $00
    nop                                           ; $6A75: $00
    dec b                                         ; $6A76: $05
    ld bc, $0000                                  ; $6A77: $01 $00 $00
    ld [bc], a                                    ; $6A7A: $02
    nop                                           ; $6A7B: $00
    nop                                           ; $6A7C: $00
    ld b, $FE                                     ; $6A7D: $06 $FE
    adc [hl]                                      ; $6A7F: $8E
    ld de, $6E07                                  ; $6A80: $11 $07 $6E
    ld bc, $9A0C                                  ; $6A83: $01 $0C $9A
    db $10                                        ; $6A86: $10
    ld c, d                                       ; $6A87: $4A
    ld bc, $A302                                  ; $6A88: $01 $02 $A3
    inc l                                         ; $6A8B: $2C
    ld [bc], a                                    ; $6A8C: $02
    ld [hl], $6F                                  ; $6A8D: $36 $6F
    nop                                           ; $6A8F: $00
    ld b, a                                       ; $6A90: $47
    ld bc, $0101                                  ; $6A91: $01 $01 $01
    sub [hl]                                      ; $6A94: $96
    nop                                           ; $6A95: $00
    or d                                          ; $6A96: $B2
    halt                                          ; $6A97: $76
    nop                                           ; $6A98: $00
    adc l                                         ; $6A99: $8D
    ld l, [hl]                                    ; $6A9A: $6E
    ld [bc], a                                    ; $6A9B: $02
    ld h, $29                                     ; $6A9C: $26 $29
    nop                                           ; $6A9E: $00
    ld l, d                                       ; $6A9F: $6A
    ret                                           ; $6AA0: $C9


    nop                                           ; $6AA1: $00
    ld bc, $0000                                  ; $6AA2: $01 $00 $00
    nop                                           ; $6AA5: $00
    nop                                           ; $6AA6: $00
    nop                                           ; $6AA7: $00
    inc bc                                        ; $6AA8: $03
    nop                                           ; $6AA9: $00
    nop                                           ; $6AAA: $00
    inc bc                                        ; $6AAB: $03
    nop                                           ; $6AAC: $00
    nop                                           ; $6AAD: $00
    inc bc                                        ; $6AAE: $03
    dec de                                        ; $6AAF: $1B
    ld de, $5C1C                                  ; $6AB0: $11 $1C $5C
    ld de, $4D5D                                  ; $6AB3: $11 $5D $4D
    ld bc, $2120                                  ; $6AB6: $01 $20 $21
    db $10                                        ; $6AB9: $10
    ld c, l                                       ; $6ABA: $4D
    ccf                                           ; $6ABB: $3F
    nop                                           ; $6ABC: $00
    ld h, b                                       ; $6ABD: $60
    ld c, d                                       ; $6ABE: $4A
    nop                                           ; $6ABF: $00
    ld bc, $103F                                  ; $6AC0: $01 $3F $10
    jr z, @-$35                                   ; $6AC3: $28 $C9

    nop                                           ; $6AC5: $00
    ld bc, $0000                                  ; $6AC6: $01 $00 $00
    nop                                           ; $6AC9: $00
    nop                                           ; $6ACA: $00
    nop                                           ; $6ACB: $00
    inc bc                                        ; $6ACC: $03
    nop                                           ; $6ACD: $00
    nop                                           ; $6ACE: $00
    dec b                                         ; $6ACF: $05
    ld bc, $0000                                  ; $6AD0: $01 $00 $00
    ld [bc], a                                    ; $6AD3: $02
    nop                                           ; $6AD4: $00
    nop                                           ; $6AD5: $00
    ld [bc], a                                    ; $6AD6: $02
    nop                                           ; $6AD7: $00
    nop                                           ; $6AD8: $00
    ld [bc], a                                    ; $6AD9: $02
    nop                                           ; $6ADA: $00
    nop                                           ; $6ADB: $00
    dec b                                         ; $6ADC: $05
    add b                                         ; $6ADD: $80
    nop                                           ; $6ADE: $00
    nop                                           ; $6ADF: $00
    ld [bc], a                                    ; $6AE0: $02
    nop                                           ; $6AE1: $00
    nop                                           ; $6AE2: $00
    ld bc, $6ADA                                  ; $6AE3: $01 $DA $6A
    scf                                           ; $6AE6: $37
    nop                                           ; $6AE7: $00
    daa                                           ; $6AE8: $27
    ld b, b                                       ; $6AE9: $40
    nop                                           ; $6AEA: $00
    ld h, [hl]                                    ; $6AEB: $66
    jr z, jr_037_6AEE                             ; $6AEC: $28 $00

jr_037_6AEE:
    cpl                                           ; $6AEE: $2F
    jr z, jr_037_6AF1                             ; $6AEF: $28 $00

jr_037_6AF1:
    dec [hl]                                      ; $6AF1: $35
    dec l                                         ; $6AF2: $2D
    nop                                           ; $6AF3: $00
    daa                                           ; $6AF4: $27
    ld l, a                                       ; $6AF5: $6F
    nop                                           ; $6AF6: $00
    ld bc, $0001                                  ; $6AF7: $01 $01 $00
    adc c                                         ; $6AFA: $89
    ld a, a                                       ; $6AFB: $7F
    nop                                           ; $6AFC: $00
    halt                                          ; $6AFD: $76
    and l                                         ; $6AFE: $A5
    nop                                           ; $6AFF: $00
    ld bc, $0000                                  ; $6B00: $01 $00 $00
    nop                                           ; $6B03: $00
    nop                                           ; $6B04: $00
    nop                                           ; $6B05: $00
    inc bc                                        ; $6B06: $03
    ld l, l                                       ; $6B07: $6D
    nop                                           ; $6B08: $00
    dec l                                         ; $6B09: $2D
    jr c, jr_037_6B0C                             ; $6B0A: $38 $00

jr_037_6B0C:
    daa                                           ; $6B0C: $27
    add d                                         ; $6B0D: $82
    nop                                           ; $6B0E: $00
    ld a, c                                       ; $6B0F: $79
    ld a, b                                       ; $6B10: $78
    nop                                           ; $6B11: $00
    ld c, l                                       ; $6B12: $4D
    ld bc, $5100                                  ; $6B13: $01 $00 $51
    daa                                           ; $6B16: $27
    nop                                           ; $6B17: $00
    ld l, l                                       ; $6B18: $6D
    ld l, [hl]                                    ; $6B19: $6E
    nop                                           ; $6B1A: $00
    ld e, l                                       ; $6B1B: $5D
    ld h, c                                       ; $6B1C: $61
    nop                                           ; $6B1D: $00
    ld l, d                                       ; $6B1E: $6A
    ld bc, $8700                                  ; $6B1F: $01 $00 $87
    ld a, c                                       ; $6B22: $79
    nop                                           ; $6B23: $00
    and l                                         ; $6B24: $A5
    sub l                                         ; $6B25: $95
    nop                                           ; $6B26: $00
    cp [hl]                                       ; $6B27: $BE
    pop bc                                        ; $6B28: $C1
    nop                                           ; $6B29: $00
    jr c, jr_037_6B9B                             ; $6B2A: $38 $6F

    nop                                           ; $6B2C: $00
    ld [hl], $C9                                  ; $6B2D: $36 $C9
    nop                                           ; $6B2F: $00
    ld bc, $0000                                  ; $6B30: $01 $00 $00
    nop                                           ; $6B33: $00
    nop                                           ; $6B34: $00
    nop                                           ; $6B35: $00
    inc bc                                        ; $6B36: $03
    adc b                                         ; $6B37: $88
    nop                                           ; $6B38: $00
    or a                                          ; $6B39: $B7
    ld a, c                                       ; $6B3A: $79
    nop                                           ; $6B3B: $00
    ld b, a                                       ; $6B3C: $47
    ld bc, $2F00                                  ; $6B3D: $01 $00 $2F
    ld c, b                                       ; $6B40: $48
    nop                                           ; $6B41: $00
    dec l                                         ; $6B42: $2D
    jr nc, jr_037_6B45                            ; $6B43: $30 $00

jr_037_6B45:
    scf                                           ; $6B45: $37
    inc l                                         ; $6B46: $2C
    nop                                           ; $6B47: $00
    ld b, a                                       ; $6B48: $47
    ld h, $00                                     ; $6B49: $26 $00
    ld l, d                                       ; $6B4B: $6A
    ret                                           ; $6B4C: $C9


    nop                                           ; $6B4D: $00
    ld bc, $0000                                  ; $6B4E: $01 $00 $00
    nop                                           ; $6B51: $00
    nop                                           ; $6B52: $00
    nop                                           ; $6B53: $00
    inc bc                                        ; $6B54: $03
    ld c, a                                       ; $6B55: $4F
    nop                                           ; $6B56: $00
    ld [hl], b                                    ; $6B57: $70
    dec [hl]                                      ; $6B58: $35
    nop                                           ; $6B59: $00
    ld b, c                                       ; $6B5A: $41
    ld l, l                                       ; $6B5B: $6D
    nop                                           ; $6B5C: $00
    ld a, [hl-]                                   ; $6B5D: $3A
    nop                                           ; $6B5E: $00
    nop                                           ; $6B5F: $00
    nop                                           ; $6B60: $00
    nop                                           ; $6B61: $00
    nop                                           ; $6B62: $00
    inc bc                                        ; $6B63: $03
    ld bc, $8900                                  ; $6B64: $01 $00 $89
    ld a, a                                       ; $6B67: $7F
    nop                                           ; $6B68: $00
    halt                                          ; $6B69: $76
    and l                                         ; $6B6A: $A5
    nop                                           ; $6B6B: $00
    ld a, d                                       ; $6B6C: $7A
    call nz, $C200                                ; $6B6D: $C4 $00 $C2
    xor h                                         ; $6B70: $AC
    nop                                           ; $6B71: $00
    ld bc, $0000                                  ; $6B72: $01 $00 $00
    nop                                           ; $6B75: $00
    ld bc, $0100                                  ; $6B76: $01 $00 $01
    jp c, $DC00                                   ; $6B79: $DA $00 $DC

    jp c, Boot                                    ; $6B7C: $DA $00 $01

    db $E3                                        ; $6B7F: $E3
    nop                                           ; $6B80: $00
    ld bc, $0000                                  ; $6B81: $01 $00 $00
    nop                                           ; $6B84: $00
    nop                                           ; $6B85: $00
    nop                                           ; $6B86: $00
    inc bc                                        ; $6B87: $03
    nop                                           ; $6B88: $00
    nop                                           ; $6B89: $00
    dec b                                         ; $6B8A: $05
    ld bc, $0000                                  ; $6B8B: $01 $00 $00
    ld [bc], a                                    ; $6B8E: $02
    nop                                           ; $6B8F: $00
    nop                                           ; $6B90: $00
    ld b, $FE                                     ; $6B91: $06 $FE
    jr z, jr_037_6B95                             ; $6B93: $28 $00

jr_037_6B95:
    ld b, a                                       ; $6B95: $47
    ld l, [hl]                                    ; $6B96: $6E
    nop                                           ; $6B97: $00
    ld c, l                                       ; $6B98: $4D
    ld d, e                                       ; $6B99: $53
    nop                                           ; $6B9A: $00

jr_037_6B9B:
    ld [hl], $42                                  ; $6B9B: $36 $42
    nop                                           ; $6B9D: $00
    ld bc, $002F                                  ; $6B9E: $01 $2F $00
    jr z, jr_037_6BD6                             ; $6BA1: $28 $33

    nop                                           ; $6BA3: $00
    inc l                                         ; $6BA4: $2C
    scf                                           ; $6BA5: $37
    nop                                           ; $6BA6: $00
    ld l, d                                       ; $6BA7: $6A
    ret                                           ; $6BA8: $C9


    nop                                           ; $6BA9: $00
    ld bc, $0000                                  ; $6BAA: $01 $00 $00
    nop                                           ; $6BAD: $00
    nop                                           ; $6BAE: $00
    nop                                           ; $6BAF: $00
    inc bc                                        ; $6BB0: $03
    nop                                           ; $6BB1: $00
    nop                                           ; $6BB2: $00
    inc bc                                        ; $6BB3: $03
    ld bc, $BD00                                  ; $6BB4: $01 $00 $BD
    ld a, a                                       ; $6BB7: $7F
    nop                                           ; $6BB8: $00
    sub l                                         ; $6BB9: $95
    cp e                                          ; $6BBA: $BB
    nop                                           ; $6BBB: $00
    jp nz, $007F                                  ; $6BBC: $C2 $7F $00

    adc b                                         ; $6BBF: $88
    cp c                                          ; $6BC0: $B9
    nop                                           ; $6BC1: $00
    jp nz, $007F                                  ; $6BC2: $C2 $7F $00

    ld bc, $0001                                  ; $6BC5: $01 $01 $00
    ld bc, $00E3                                  ; $6BC8: $01 $E3 $00
    ld bc, $0041                                  ; $6BCB: $01 $41 $00
    ld b, [hl]                                    ; $6BCE: $46
    ld l, $00                                     ; $6BCF: $2E $00
    ld b, d                                       ; $6BD1: $42
    ccf                                           ; $6BD2: $3F
    nop                                           ; $6BD3: $00
    ccf                                           ; $6BD4: $3F
    dec l                                         ; $6BD5: $2D

jr_037_6BD6:
    nop                                           ; $6BD6: $00
    ld bc, $0000                                  ; $6BD7: $01 $00 $00
    inc bc                                        ; $6BDA: $03
    nop                                           ; $6BDB: $00
    nop                                           ; $6BDC: $00
    dec b                                         ; $6BDD: $05
    ld bc, $0000                                  ; $6BDE: $01 $00 $00
    ld [bc], a                                    ; $6BE1: $02
    nop                                           ; $6BE2: $00
    nop                                           ; $6BE3: $00
    ld b, $FE                                     ; $6BE4: $06 $FE
    ld b, a                                       ; $6BE6: $47
    nop                                           ; $6BE7: $00
    ld l, a                                       ; $6BE8: $6F
    inc l                                         ; $6BE9: $2C
    nop                                           ; $6BEA: $00
    ld b, a                                       ; $6BEB: $47
    ld bc, $2600                                  ; $6BEC: $01 $00 $26
    daa                                           ; $6BEF: $27
    nop                                           ; $6BF0: $00
    ld b, d                                       ; $6BF1: $42
    ld l, [hl]                                    ; $6BF2: $6E
    nop                                           ; $6BF3: $00
    ld [hl], $54                                  ; $6BF4: $36 $54
    nop                                           ; $6BF6: $00
    ld l, e                                       ; $6BF7: $6B
    dec [hl]                                      ; $6BF8: $35
    nop                                           ; $6BF9: $00
    jr c, jr_037_6C66                             ; $6BFA: $38 $6A

    nop                                           ; $6BFC: $00
    ret                                           ; $6BFD: $C9


    nop                                           ; $6BFE: $00
    nop                                           ; $6BFF: $00
    nop                                           ; $6C00: $00
    nop                                           ; $6C01: $00
    nop                                           ; $6C02: $00
    inc bc                                        ; $6C03: $03
    nop                                           ; $6C04: $00
    nop                                           ; $6C05: $00
    inc bc                                        ; $6C06: $03
    ld bc, $8900                                  ; $6C07: $01 $00 $89
    ld a, a                                       ; $6C0A: $7F
    nop                                           ; $6C0B: $00
    halt                                          ; $6C0C: $76
    and l                                         ; $6C0D: $A5
    nop                                           ; $6C0E: $00
    adc c                                         ; $6C0F: $89
    cp d                                          ; $6C10: $BA
    nop                                           ; $6C11: $00
    adc c                                         ; $6C12: $89
    sub l                                         ; $6C13: $95
    nop                                           ; $6C14: $00
    ld bc, $0000                                  ; $6C15: $01 $00 $00
    nop                                           ; $6C18: $00
    ld bc, $0100                                  ; $6C19: $01 $00 $01
    sbc $00                                       ; $6C1C: $DE $00
    call c, Call_000_00DA                         ; $6C1E: $DC $DA $00
    ld bc, $00E2                                  ; $6C21: $01 $E2 $00
    ld bc, $0000                                  ; $6C24: $01 $00 $00
    nop                                           ; $6C27: $00
    nop                                           ; $6C28: $00
    nop                                           ; $6C29: $00
    inc bc                                        ; $6C2A: $03
    nop                                           ; $6C2B: $00
    nop                                           ; $6C2C: $00
    dec b                                         ; $6C2D: $05
    ld bc, $0000                                  ; $6C2E: $01 $00 $00
    ld [bc], a                                    ; $6C31: $02
    nop                                           ; $6C32: $00
    nop                                           ; $6C33: $00
    ld b, $FE                                     ; $6C34: $06 $FE
    jr c, jr_037_6C38                             ; $6C36: $38 $00

jr_037_6C38:
    ld c, c                                       ; $6C38: $49
    dec hl                                        ; $6C39: $2B
    nop                                           ; $6C3A: $00
    ld c, l                                       ; $6C3B: $4D
    ld [$5C00], sp                                ; $6C3C: $08 $00 $5C
    ld l, a                                       ; $6C3F: $6F
    nop                                           ; $6C40: $00
    ld c, l                                       ; $6C41: $4D
    ld h, $00                                     ; $6C42: $26 $00
    ld [hl], $6E                                  ; $6C44: $36 $6E
    nop                                           ; $6C46: $00
    ld bc, $005D                                  ; $6C47: $01 $5D $00
    add hl, hl                                    ; $6C4A: $29
    ld c, d                                       ; $6C4B: $4A
    nop                                           ; $6C4C: $00
    ld b, h                                       ; $6C4D: $44
    ld [hl], $00                                  ; $6C4E: $36 $00
    ld b, d                                       ; $6C50: $42
    ld bc, $4300                                  ; $6C51: $01 $00 $43
    ld [hl], b                                    ; $6C54: $70
    nop                                           ; $6C55: $00
    ld [hl], $6F                                  ; $6C56: $36 $6F
    nop                                           ; $6C58: $00
    scf                                           ; $6C59: $37
    ld l, d                                       ; $6C5A: $6A
    nop                                           ; $6C5B: $00
    ret                                           ; $6C5C: $C9


    nop                                           ; $6C5D: $00
    nop                                           ; $6C5E: $00
    nop                                           ; $6C5F: $00
    nop                                           ; $6C60: $00
    nop                                           ; $6C61: $00
    inc bc                                        ; $6C62: $03
    nop                                           ; $6C63: $00
    nop                                           ; $6C64: $00
    inc bc                                        ; $6C65: $03

jr_037_6C66:
    ld bc, $8900                                  ; $6C66: $01 $00 $89
    cp h                                          ; $6C69: $BC
    nop                                           ; $6C6A: $00
    or d                                          ; $6C6B: $B2
    cp d                                          ; $6C6C: $BA
    nop                                           ; $6C6D: $00
    pop bc                                        ; $6C6E: $C1
    nop                                           ; $6C6F: $00
    nop                                           ; $6C70: $00
    nop                                           ; $6C71: $00
    ld bc, $0100                                  ; $6C72: $01 $00 $01
    call c, $DA00                                 ; $6C75: $DC $00 $DA
    ld bc, $E300                                  ; $6C78: $01 $00 $E3
    nop                                           ; $6C7B: $00
    nop                                           ; $6C7C: $00
    nop                                           ; $6C7D: $00
    nop                                           ; $6C7E: $00
    nop                                           ; $6C7F: $00
    inc bc                                        ; $6C80: $03
    nop                                           ; $6C81: $00
    nop                                           ; $6C82: $00
    dec b                                         ; $6C83: $05
    ld bc, $0000                                  ; $6C84: $01 $00 $00
    ld [bc], a                                    ; $6C87: $02
    nop                                           ; $6C88: $00
    nop                                           ; $6C89: $00
    ld b, $FE                                     ; $6C8A: $06 $FE
    and a                                         ; $6C8C: $A7
    nop                                           ; $6C8D: $00
    halt                                          ; $6C8E: $76
    or d                                          ; $6C8F: $B2
    nop                                           ; $6C90: $00
    cp d                                          ; $6C91: $BA
    pop bc                                        ; $6C92: $C1
    nop                                           ; $6C93: $00
    ld l, [hl]                                    ; $6C94: $6E
    ld c, c                                       ; $6C95: $49
    nop                                           ; $6C96: $00
    inc sp                                        ; $6C97: $33
    ld b, d                                       ; $6C98: $42
    nop                                           ; $6C99: $00
    ld bc, $002F                                  ; $6C9A: $01 $2F $00
    jr z, @+$35                                   ; $6C9D: $28 $33

    nop                                           ; $6C9F: $00
    inc l                                         ; $6CA0: $2C
    scf                                           ; $6CA1: $37
    nop                                           ; $6CA2: $00
    ld l, d                                       ; $6CA3: $6A
    ret                                           ; $6CA4: $C9


    nop                                           ; $6CA5: $00
    ld bc, $0000                                  ; $6CA6: $01 $00 $00
    nop                                           ; $6CA9: $00
    nop                                           ; $6CAA: $00
    nop                                           ; $6CAB: $00
    inc bc                                        ; $6CAC: $03
    nop                                           ; $6CAD: $00
    nop                                           ; $6CAE: $00
    inc bc                                        ; $6CAF: $03
    add l                                         ; $6CB0: $85
    nop                                           ; $6CB1: $00
    ld a, [hl]                                    ; $6CB2: $7E
    ld c, a                                       ; $6CB3: $4F
    nop                                           ; $6CB4: $00
    ld [hl], b                                    ; $6CB5: $70
    dec [hl]                                      ; $6CB6: $35
    nop                                           ; $6CB7: $00
    ld b, c                                       ; $6CB8: $41
    ld l, l                                       ; $6CB9: $6D
    nop                                           ; $6CBA: $00
    ld a, [hl-]                                   ; $6CBB: $3A
    nop                                           ; $6CBC: $00
    nop                                           ; $6CBD: $00
    nop                                           ; $6CBE: $00
    nop                                           ; $6CBF: $00
    nop                                           ; $6CC0: $00
    inc bc                                        ; $6CC1: $03
    ld bc, $A500                                  ; $6CC2: $01 $00 $A5
    cp h                                          ; $6CC5: $BC
    nop                                           ; $6CC6: $00
    ld a, l                                       ; $6CC7: $7D
    pop bc                                        ; $6CC8: $C1
    nop                                           ; $6CC9: $00
    cp d                                          ; $6CCA: $BA
    jp nz, $8800                                  ; $6CCB: $C2 $00 $88

    cp b                                          ; $6CCE: $B8
    nop                                           ; $6CCF: $00
    ld bc, $0000                                  ; $6CD0: $01 $00 $00
    nop                                           ; $6CD3: $00
    ld bc, $0100                                  ; $6CD4: $01 $00 $01
    call c, $DA00                                 ; $6CD7: $DC $00 $DA
    call c, $DE00                                 ; $6CDA: $DC $00 $DE
    ld bc, $E300                                  ; $6CDD: $01 $00 $E3
    nop                                           ; $6CE0: $00
    nop                                           ; $6CE1: $00
    nop                                           ; $6CE2: $00
    nop                                           ; $6CE3: $00
    nop                                           ; $6CE4: $00
    inc bc                                        ; $6CE5: $03
    nop                                           ; $6CE6: $00
    nop                                           ; $6CE7: $00
    dec b                                         ; $6CE8: $05
    ld bc, $0000                                  ; $6CE9: $01 $00 $00
    ld [bc], a                                    ; $6CEC: $02
    nop                                           ; $6CED: $00
    nop                                           ; $6CEE: $00
    ld b, $FE                                     ; $6CEF: $06 $FE
    ld b, e                                       ; $6CF1: $43
    nop                                           ; $6CF2: $00
    ld [hl], b                                    ; $6CF3: $70
    ld [hl], $00                                  ; $6CF4: $36 $00
    ld l, a                                       ; $6CF6: $6F
    ld [hl], $00                                  ; $6CF7: $36 $00
    ld b, d                                       ; $6CF9: $42
    ld bc, $A100                                  ; $6CFA: $01 $00 $A1
    jp nz, $9500                                  ; $6CFD: $C2 $00 $95

    ld [hl], $00                                  ; $6D00: $36 $00
    ccf                                           ; $6D02: $3F
    ld l, b                                       ; $6D03: $68
    nop                                           ; $6D04: $00
    ld bc, $0091                                  ; $6D05: $01 $91 $00
    add c                                         ; $6D08: $81
    sub c                                         ; $6D09: $91
    nop                                           ; $6D0A: $00
    pop bc                                        ; $6D0B: $C1
    ld a, a                                       ; $6D0C: $7F
    nop                                           ; $6D0D: $00
    ld b, a                                       ; $6D0E: $47
    cpl                                           ; $6D0F: $2F
    nop                                           ; $6D10: $00
    jr z, @+$35                                   ; $6D11: $28 $33

    nop                                           ; $6D13: $00
    inc l                                         ; $6D14: $2C
    scf                                           ; $6D15: $37
    nop                                           ; $6D16: $00
    ld l, d                                       ; $6D17: $6A
    ret                                           ; $6D18: $C9


    nop                                           ; $6D19: $00
    ld bc, $0000                                  ; $6D1A: $01 $00 $00
    nop                                           ; $6D1D: $00
    nop                                           ; $6D1E: $00
    nop                                           ; $6D1F: $00
    inc bc                                        ; $6D20: $03
    nop                                           ; $6D21: $00
    nop                                           ; $6D22: $00
    inc bc                                        ; $6D23: $03
    and [hl]                                      ; $6D24: $A6
    nop                                           ; $6D25: $00
    halt                                          ; $6D26: $76
    adc c                                         ; $6D27: $89
    nop                                           ; $6D28: $00
    sub l                                         ; $6D29: $95
    or e                                          ; $6D2A: $B3
    nop                                           ; $6D2B: $00
    halt                                          ; $6D2C: $76
    sbc d                                         ; $6D2D: $9A
    nop                                           ; $6D2E: $00
    ld c, [hl]                                    ; $6D2F: $4E
    nop                                           ; $6D30: $00
    nop                                           ; $6D31: $00
    nop                                           ; $6D32: $00
    nop                                           ; $6D33: $00
    nop                                           ; $6D34: $00
    inc bc                                        ; $6D35: $03
    ret nc                                        ; $6D36: $D0

    nop                                           ; $6D37: $00
    daa                                           ; $6D38: $27
    dec hl                                        ; $6D39: $2B
    nop                                           ; $6D3A: $00
    pop de                                        ; $6D3B: $D1
    ld c, d                                       ; $6D3C: $4A
    nop                                           ; $6D3D: $00
    ld bc, $0000                                  ; $6D3E: $01 $00 $00
    nop                                           ; $6D41: $00
    ld d, c                                       ; $6D42: $51
    nop                                           ; $6D43: $00
    ld l, a                                       ; $6D44: $6F
    ld [hl], $00                                  ; $6D45: $36 $00
    ld l, a                                       ; $6D47: $6F
    scf                                           ; $6D48: $37
    nop                                           ; $6D49: $00
    ld l, d                                       ; $6D4A: $6A
    ret                                           ; $6D4B: $C9


    nop                                           ; $6D4C: $00
    ld bc, $0000                                  ; $6D4D: $01 $00 $00
    nop                                           ; $6D50: $00
    nop                                           ; $6D51: $00
    nop                                           ; $6D52: $00
    inc bc                                        ; $6D53: $03
    nop                                           ; $6D54: $00
    nop                                           ; $6D55: $00
    inc b                                         ; $6D56: $04
    ld bc, $0000                                  ; $6D57: $01 $00 $00
    dec b                                         ; $6D5A: $05
    ld bc, $0000                                  ; $6D5B: $01 $00 $00
    ld [bc], a                                    ; $6D5E: $02
    nop                                           ; $6D5F: $00
    nop                                           ; $6D60: $00
    ld [bc], a                                    ; $6D61: $02
    nop                                           ; $6D62: $00
    nop                                           ; $6D63: $00
    ld [bc], a                                    ; $6D64: $02
    nop                                           ; $6D65: $00
    nop                                           ; $6D66: $00
    ld b, $FE                                     ; $6D67: $06 $FE
    ld c, a                                       ; $6D69: $4F
    nop                                           ; $6D6A: $00
    ld [hl], b                                    ; $6D6B: $70
    dec [hl]                                      ; $6D6C: $35
    nop                                           ; $6D6D: $00
    ld b, c                                       ; $6D6E: $41
    ld l, l                                       ; $6D6F: $6D
    nop                                           ; $6D70: $00
    ld a, [hl-]                                   ; $6D71: $3A
    nop                                           ; $6D72: $00
    nop                                           ; $6D73: $00
    nop                                           ; $6D74: $00
    nop                                           ; $6D75: $00
    nop                                           ; $6D76: $00
    inc bc                                        ; $6D77: $03
    ld bc, $8900                                  ; $6D78: $01 $00 $89
    ld a, a                                       ; $6D7B: $7F
    nop                                           ; $6D7C: $00
    halt                                          ; $6D7D: $76
    and l                                         ; $6D7E: $A5
    nop                                           ; $6D7F: $00
    adc c                                         ; $6D80: $89
    or e                                          ; $6D81: $B3
    nop                                           ; $6D82: $00
    jp nz, $0084                                  ; $6D83: $C2 $84 $00

    ld bc, $0000                                  ; $6D86: $01 $00 $00
    nop                                           ; $6D89: $00
    ld bc, $0100                                  ; $6D8A: $01 $00 $01
    call c, $DA00                                 ; $6D8D: $DC $00 $DA
    ld bc, $E300                                  ; $6D90: $01 $00 $E3
    nop                                           ; $6D93: $00
    nop                                           ; $6D94: $00
    nop                                           ; $6D95: $00
    nop                                           ; $6D96: $00
    nop                                           ; $6D97: $00
    inc bc                                        ; $6D98: $03
    nop                                           ; $6D99: $00
    nop                                           ; $6D9A: $00
    dec b                                         ; $6D9B: $05
    ld bc, $0000                                  ; $6D9C: $01 $00 $00
    ld [bc], a                                    ; $6D9F: $02
    nop                                           ; $6DA0: $00
    nop                                           ; $6DA1: $00
    ld b, $FE                                     ; $6DA2: $06 $FE
    adc c                                         ; $6DA4: $89
    nop                                           ; $6DA5: $00
    or b                                          ; $6DA6: $B0
    ld l, [hl]                                    ; $6DA7: $6E
    nop                                           ; $6DA8: $00
    ld d, b                                       ; $6DA9: $50
    daa                                           ; $6DAA: $27
    nop                                           ; $6DAB: $00
    ld b, d                                       ; $6DAC: $42
    ld bc, $2F00                                  ; $6DAD: $01 $00 $2F
    jr z, jr_037_6DB2                             ; $6DB0: $28 $00

jr_037_6DB2:
    inc sp                                        ; $6DB2: $33
    inc l                                         ; $6DB3: $2C
    nop                                           ; $6DB4: $00
    ret                                           ; $6DB5: $C9


    nop                                           ; $6DB6: $00
    nop                                           ; $6DB7: $00
    inc bc                                        ; $6DB8: $03
    nop                                           ; $6DB9: $00
    nop                                           ; $6DBA: $00
    inc bc                                        ; $6DBB: $03
    ld bc, $8900                                  ; $6DBC: $01 $00 $89
    ld a, a                                       ; $6DBF: $7F
    nop                                           ; $6DC0: $00
    halt                                          ; $6DC1: $76
    and l                                         ; $6DC2: $A5
    nop                                           ; $6DC3: $00
    sub [hl]                                      ; $6DC4: $96
    ld a, c                                       ; $6DC5: $79
    nop                                           ; $6DC6: $00
    and a                                         ; $6DC7: $A7
    nop                                           ; $6DC8: $00
    nop                                           ; $6DC9: $00
    nop                                           ; $6DCA: $00
    ld bc, $0100                                  ; $6DCB: $01 $00 $01
    jp c, $DC00                                   ; $6DCE: $DA $00 $DC

    jp c, Boot                                    ; $6DD1: $DA $00 $01

    db $E3                                        ; $6DD4: $E3
    nop                                           ; $6DD5: $00
    ld bc, $0000                                  ; $6DD6: $01 $00 $00
    nop                                           ; $6DD9: $00
    nop                                           ; $6DDA: $00
    nop                                           ; $6DDB: $00
    inc bc                                        ; $6DDC: $03
    nop                                           ; $6DDD: $00
    nop                                           ; $6DDE: $00
    dec b                                         ; $6DDF: $05
    ld bc, $0000                                  ; $6DE0: $01 $00 $00
    ld [bc], a                                    ; $6DE3: $02
    nop                                           ; $6DE4: $00
    nop                                           ; $6DE5: $00
    ld b, $FE                                     ; $6DE6: $06 $FE
    ccf                                           ; $6DE8: $3F
    nop                                           ; $6DE9: $00
    dec hl                                        ; $6DEA: $2B
    dec l                                         ; $6DEB: $2D
    nop                                           ; $6DEC: $00
    adc l                                         ; $6DED: $8D
    or a                                          ; $6DEE: $B7
    nop                                           ; $6DEF: $00
    pop bc                                        ; $6DF0: $C1
    xor h                                         ; $6DF1: $AC
    nop                                           ; $6DF2: $00
    ld [hl], $42                                  ; $6DF3: $36 $42
    nop                                           ; $6DF5: $00
    ld bc, $0026                                  ; $6DF6: $01 $26 $00
    daa                                           ; $6DF9: $27
    ld b, d                                       ; $6DFA: $42
    nop                                           ; $6DFB: $00
    ld h, b                                       ; $6DFC: $60
    jr nc, jr_037_6DFF                            ; $6DFD: $30 $00

jr_037_6DFF:
    ld l, $42                                     ; $6DFF: $2E $42
    nop                                           ; $6E01: $00
    ld bc, $002C                                  ; $6E02: $01 $2C $00
    ld h, [hl]                                    ; $6E05: $66
    jr z, jr_037_6E08                             ; $6E06: $28 $00

jr_037_6E08:
    cpl                                           ; $6E08: $2F
    jr z, jr_037_6E0B                             ; $6E09: $28 $00

jr_037_6E0B:
    dec hl                                        ; $6E0B: $2B
    scf                                           ; $6E0C: $37
    nop                                           ; $6E0D: $00
    ld l, d                                       ; $6E0E: $6A
    ret                                           ; $6E0F: $C9


    nop                                           ; $6E10: $00
    ld bc, $0000                                  ; $6E11: $01 $00 $00
    nop                                           ; $6E14: $00
    nop                                           ; $6E15: $00
    nop                                           ; $6E16: $00
    inc bc                                        ; $6E17: $03
    nop                                           ; $6E18: $00
    nop                                           ; $6E19: $00
    inc bc                                        ; $6E1A: $03
    ld bc, $9400                                  ; $6E1B: $01 $00 $94
    ld a, c                                       ; $6E1E: $79
    nop                                           ; $6E1F: $00
    cp h                                          ; $6E20: $BC
    ld a, d                                       ; $6E21: $7A
    nop                                           ; $6E22: $00
    call nz, Call_000_00C2                        ; $6E23: $C4 $C2 $00
    xor h                                         ; $6E26: $AC
    nop                                           ; $6E27: $00
    nop                                           ; $6E28: $00
    nop                                           ; $6E29: $00
    ld bc, $0100                                  ; $6E2A: $01 $00 $01
    call c, $DE00                                 ; $6E2D: $DC $00 $DE
    ld bc, $E300                                  ; $6E30: $01 $00 $E3
    nop                                           ; $6E33: $00
    nop                                           ; $6E34: $00
    nop                                           ; $6E35: $00
    nop                                           ; $6E36: $00
    nop                                           ; $6E37: $00
    inc bc                                        ; $6E38: $03
    nop                                           ; $6E39: $00
    nop                                           ; $6E3A: $00
    dec b                                         ; $6E3B: $05
    ld bc, $0000                                  ; $6E3C: $01 $00 $00
    ld [bc], a                                    ; $6E3F: $02
    nop                                           ; $6E40: $00
    nop                                           ; $6E41: $00
    ld b, $FE                                     ; $6E42: $06 $FE
    ld h, $00                                     ; $6E44: $26 $00
    ld [hl], $6E                                  ; $6E46: $36 $6E
    nop                                           ; $6E48: $00
    ld c, l                                       ; $6E49: $4D
    ld d, e                                       ; $6E4A: $53
    nop                                           ; $6E4B: $00
    ld [hl], $42                                  ; $6E4C: $36 $42
    nop                                           ; $6E4E: $00
    ld bc, $0026                                  ; $6E4F: $01 $26 $00
    daa                                           ; $6E52: $27
    ld b, d                                       ; $6E53: $42
    nop                                           ; $6E54: $00
    ld l, [hl]                                    ; $6E55: $6E
    ccf                                           ; $6E56: $3F
    nop                                           ; $6E57: $00
    ccf                                           ; $6E58: $3F
    dec l                                         ; $6E59: $2D
    nop                                           ; $6E5A: $00
    ret                                           ; $6E5B: $C9


    nop                                           ; $6E5C: $00
    nop                                           ; $6E5D: $00
    nop                                           ; $6E5E: $00
    nop                                           ; $6E5F: $00
    nop                                           ; $6E60: $00
    inc bc                                        ; $6E61: $03
    nop                                           ; $6E62: $00
    nop                                           ; $6E63: $00
    inc bc                                        ; $6E64: $03
    ld bc, $8900                                  ; $6E65: $01 $00 $89
    ld a, a                                       ; $6E68: $7F
    nop                                           ; $6E69: $00
    halt                                          ; $6E6A: $76
    and l                                         ; $6E6B: $A5
    nop                                           ; $6E6C: $00
    adc c                                         ; $6E6D: $89
    xor d                                         ; $6E6E: $AA
    nop                                           ; $6E6F: $00
    ld a, c                                       ; $6E70: $79
    cp d                                          ; $6E71: $BA
    nop                                           ; $6E72: $00
    cp h                                          ; $6E73: $BC
    nop                                           ; $6E74: $00
    nop                                           ; $6E75: $00
    nop                                           ; $6E76: $00
    ld bc, $0100                                  ; $6E77: $01 $00 $01
    sbc $00                                       ; $6E7A: $DE $00
    call c, Call_000_00DA                         ; $6E7C: $DC $DA $00
    ld bc, $00E2                                  ; $6E7F: $01 $E2 $00
    ld bc, $0000                                  ; $6E82: $01 $00 $00
    nop                                           ; $6E85: $00
    nop                                           ; $6E86: $00
    nop                                           ; $6E87: $00
    inc bc                                        ; $6E88: $03
    nop                                           ; $6E89: $00
    nop                                           ; $6E8A: $00
    dec b                                         ; $6E8B: $05
    ld bc, $0000                                  ; $6E8C: $01 $00 $00
    ld [bc], a                                    ; $6E8F: $02
    nop                                           ; $6E90: $00
    nop                                           ; $6E91: $00
    ld b, $FE                                     ; $6E92: $06 $FE
    dec sp                                        ; $6E94: $3B
    nop                                           ; $6E95: $00
    ld h, b                                       ; $6E96: $60
    ld l, a                                       ; $6E97: $6F
    nop                                           ; $6E98: $00
    dec hl                                        ; $6E99: $2B
    ld l, b                                       ; $6E9A: $68
    nop                                           ; $6E9B: $00
    ld bc, $005E                                  ; $6E9C: $01 $5E $00
    inc a                                         ; $6E9F: $3C
    ld l, [hl]                                    ; $6EA0: $6E
    nop                                           ; $6EA1: $00
    ld b, h                                       ; $6EA2: $44
    ld [hl], $00                                  ; $6EA3: $36 $00
    ld b, d                                       ; $6EA5: $42
    cpl                                           ; $6EA6: $2F
    nop                                           ; $6EA7: $00
    jr z, @+$35                                   ; $6EA8: $28 $33

    nop                                           ; $6EAA: $00
    inc l                                         ; $6EAB: $2C
    scf                                           ; $6EAC: $37
    nop                                           ; $6EAD: $00
    ld l, d                                       ; $6EAE: $6A
    ret                                           ; $6EAF: $C9


    nop                                           ; $6EB0: $00
    ld bc, $0000                                  ; $6EB1: $01 $00 $00
    nop                                           ; $6EB4: $00
    nop                                           ; $6EB5: $00
    nop                                           ; $6EB6: $00
    inc bc                                        ; $6EB7: $03
    nop                                           ; $6EB8: $00
    nop                                           ; $6EB9: $00
    inc bc                                        ; $6EBA: $03
    add l                                         ; $6EBB: $85
    nop                                           ; $6EBC: $00
    ld a, [hl]                                    ; $6EBD: $7E
    ld c, a                                       ; $6EBE: $4F
    nop                                           ; $6EBF: $00
    ld [hl], b                                    ; $6EC0: $70
    dec [hl]                                      ; $6EC1: $35
    nop                                           ; $6EC2: $00
    ld b, c                                       ; $6EC3: $41
    ld l, l                                       ; $6EC4: $6D
    nop                                           ; $6EC5: $00
    ld a, [hl-]                                   ; $6EC6: $3A
    nop                                           ; $6EC7: $00
    nop                                           ; $6EC8: $00
    nop                                           ; $6EC9: $00
    nop                                           ; $6ECA: $00
    nop                                           ; $6ECB: $00
    inc bc                                        ; $6ECC: $03
    ld bc, $7F00                                  ; $6ECD: $01 $00 $7F
    cp d                                          ; $6ED0: $BA
    nop                                           ; $6ED1: $00
    halt                                          ; $6ED2: $76
    add b                                         ; $6ED3: $80
    nop                                           ; $6ED4: $00
    pop bc                                        ; $6ED5: $C1
    sbc a                                         ; $6ED6: $9F
    nop                                           ; $6ED7: $00
    jp nz, $007F                                  ; $6ED8: $C2 $7F $00

    ld bc, $0000                                  ; $6EDB: $01 $00 $00
    nop                                           ; $6EDE: $00
    ld bc, $0100                                  ; $6EDF: $01 $00 $01
    call c, $DA00                                 ; $6EE2: $DC $00 $DA
    call c, $DE00                                 ; $6EE5: $DC $00 $DE
    ld bc, $E300                                  ; $6EE8: $01 $00 $E3
    nop                                           ; $6EEB: $00
    nop                                           ; $6EEC: $00
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
    ld h, $00                                     ; $6EFC: $26 $00
    ld [hl], $47                                  ; $6EFE: $36 $47
    nop                                           ; $6F00: $00
    cpl                                           ; $6F01: $2F
    jr z, jr_037_6F04                             ; $6F02: $28 $00

jr_037_6F04:
    inc sp                                        ; $6F04: $33
    inc l                                         ; $6F05: $2C
    nop                                           ; $6F06: $00
    ld [hl], $42                                  ; $6F07: $36 $42
    nop                                           ; $6F09: $00
    ld bc, $00A1                                  ; $6F0A: $01 $A1 $00
    jp nz, Jump_000_0095                          ; $6F0D: $C2 $95 $00

    ld [hl], $3F                                  ; $6F10: $36 $3F
    nop                                           ; $6F12: $00
    ld l, b                                       ; $6F13: $68
    ld bc, $3C00                                  ; $6F14: $01 $00 $3C
    ld b, c                                       ; $6F17: $41
    nop                                           ; $6F18: $00
    inc l                                         ; $6F19: $2C
    ld b, a                                       ; $6F1A: $47
    nop                                           ; $6F1B: $00
    ld bc, $0096                                  ; $6F1C: $01 $96 $00
    or d                                          ; $6F1F: $B2
    halt                                          ; $6F20: $76
    nop                                           ; $6F21: $00
    adc l                                         ; $6F22: $8D
    ld l, [hl]                                    ; $6F23: $6E
    nop                                           ; $6F24: $00
    ld h, $3F                                     ; $6F25: $26 $3F
    nop                                           ; $6F27: $00
    add hl, hl                                    ; $6F28: $29
    ld l, d                                       ; $6F29: $6A
    nop                                           ; $6F2A: $00
    ret                                           ; $6F2B: $C9


    nop                                           ; $6F2C: $00
    nop                                           ; $6F2D: $00
    nop                                           ; $6F2E: $00
    nop                                           ; $6F2F: $00
    nop                                           ; $6F30: $00
    inc bc                                        ; $6F31: $03
    nop                                           ; $6F32: $00
    nop                                           ; $6F33: $00
    inc bc                                        ; $6F34: $03
    nop                                           ; $6F35: $00
    nop                                           ; $6F36: $00
    inc bc                                        ; $6F37: $03
    ld [hl], $00                                  ; $6F38: $36 $00
    dec a                                         ; $6F3A: $3D
    ld l, a                                       ; $6F3B: $6F
    nop                                           ; $6F3C: $00
    ld l, [hl]                                    ; $6F3D: $6E
    ld e, l                                       ; $6F3E: $5D
    nop                                           ; $6F3F: $00
    ld h, c                                       ; $6F40: $61
    ld l, d                                       ; $6F41: $6A
    nop                                           ; $6F42: $00
    ccf                                           ; $6F43: $3F
    ld h, b                                       ; $6F44: $60
    nop                                           ; $6F45: $00
    ld c, d                                       ; $6F46: $4A
    ld bc, $3F00                                  ; $6F47: $01 $00 $3F
    ccf                                           ; $6F4A: $3F
    nop                                           ; $6F4B: $00
    dec hl                                        ; $6F4C: $2B
    jr z, jr_037_6F4F                             ; $6F4D: $28 $00

jr_037_6F4F:
    ret                                           ; $6F4F: $C9


    nop                                           ; $6F50: $00
    nop                                           ; $6F51: $00
    nop                                           ; $6F52: $00
    nop                                           ; $6F53: $00
    nop                                           ; $6F54: $00
    inc bc                                        ; $6F55: $03
    nop                                           ; $6F56: $00
    nop                                           ; $6F57: $00
    dec b                                         ; $6F58: $05
    ld bc, $0000                                  ; $6F59: $01 $00 $00
    ld [bc], a                                    ; $6F5C: $02
    nop                                           ; $6F5D: $00
    nop                                           ; $6F5E: $00
    ld [bc], a                                    ; $6F5F: $02
    nop                                           ; $6F60: $00
    nop                                           ; $6F61: $00
    ld [bc], a                                    ; $6F62: $02
    nop                                           ; $6F63: $00
    nop                                           ; $6F64: $00
    dec b                                         ; $6F65: $05
    add b                                         ; $6F66: $80
    nop                                           ; $6F67: $00
    nop                                           ; $6F68: $00
    ld [bc], a                                    ; $6F69: $02
    nop                                           ; $6F6A: $00
    nop                                           ; $6F6B: $00
    ld bc, $6F63                                  ; $6F6C: $01 $63 $6F
    ld [bc], a                                    ; $6F6F: $02
    ld de, $5958                                  ; $6F70: $11 $58 $59
    ld de, $5B5A                                  ; $6F73: $11 $5A $5B
    db $10                                        ; $6F76: $10
    ld bc, $0089                                  ; $6F77: $01 $89 $00
    ld a, a                                       ; $6F7A: $7F
    halt                                          ; $6F7B: $76
    nop                                           ; $6F7C: $00
    and l                                         ; $6F7D: $A5
    nop                                           ; $6F7E: $00
    nop                                           ; $6F7F: $00
    nop                                           ; $6F80: $00
    nop                                           ; $6F81: $00
    nop                                           ; $6F82: $00
    inc bc                                        ; $6F83: $03
    ld d, b                                       ; $6F84: $50
    ld de, $8251                                  ; $6F85: $11 $51 $82
    nop                                           ; $6F88: $00
    ld a, c                                       ; $6F89: $79
    ld a, b                                       ; $6F8A: $78
    nop                                           ; $6F8B: $00
    ld c, l                                       ; $6F8C: $4D
    dec e                                         ; $6F8D: $1D
    ld de, $6E1E                                  ; $6F8E: $11 $1E $6E
    ld bc, $6A08                                  ; $6F91: $01 $08 $6A
    nop                                           ; $6F94: $00
    ld bc, $0087                                  ; $6F95: $01 $87 $00
    ld a, c                                       ; $6F98: $79
    and l                                         ; $6F99: $A5
    nop                                           ; $6F9A: $00
    sub l                                         ; $6F9B: $95
    cp [hl]                                       ; $6F9C: $BE
    nop                                           ; $6F9D: $00
    pop bc                                        ; $6F9E: $C1
    ld h, d                                       ; $6F9F: $62
    ld de, $C964                                  ; $6FA0: $11 $64 $C9
    nop                                           ; $6FA3: $00
    ld bc, $0000                                  ; $6FA4: $01 $00 $00
    nop                                           ; $6FA7: $00
    nop                                           ; $6FA8: $00
    nop                                           ; $6FA9: $00
    inc bc                                        ; $6FAA: $03
    adc b                                         ; $6FAB: $88
    nop                                           ; $6FAC: $00
    or a                                          ; $6FAD: $B7
    ld a, c                                       ; $6FAE: $79
    nop                                           ; $6FAF: $00
    ld b, a                                       ; $6FB0: $47
    ld bc, $4402                                  ; $6FB1: $01 $02 $44
    ld b, l                                       ; $6FB4: $45
    jr nz, jr_037_6FE7                            ; $6FB5: $20 $30

    ld b, [hl]                                    ; $6FB7: $46
    jr nz, @+$2E                                  ; $6FB8: $20 $2C

    ld b, a                                       ; $6FBA: $47
    nop                                           ; $6FBB: $00
    ld h, $6A                                     ; $6FBC: $26 $6A
    nop                                           ; $6FBE: $00
    ret                                           ; $6FBF: $C9


    nop                                           ; $6FC0: $00
    nop                                           ; $6FC1: $00
    nop                                           ; $6FC2: $00
    nop                                           ; $6FC3: $00
    nop                                           ; $6FC4: $00
    inc bc                                        ; $6FC5: $03
    ld b, b                                       ; $6FC6: $40
    ld de, $4241                                  ; $6FC7: $11 $41 $42
    db $10                                        ; $6FCA: $10
    ld bc, $0000                                  ; $6FCB: $01 $00 $00
    nop                                           ; $6FCE: $00
    nop                                           ; $6FCF: $00
    nop                                           ; $6FD0: $00
    inc bc                                        ; $6FD1: $03
    ld bc, $8900                                  ; $6FD2: $01 $00 $89
    ld a, a                                       ; $6FD5: $7F
    nop                                           ; $6FD6: $00
    halt                                          ; $6FD7: $76
    and l                                         ; $6FD8: $A5
    nop                                           ; $6FD9: $00
    ld a, d                                       ; $6FDA: $7A
    call nz, $C200                                ; $6FDB: $C4 $00 $C2
    xor h                                         ; $6FDE: $AC
    nop                                           ; $6FDF: $00
    ld bc, $0000                                  ; $6FE0: $01 $00 $00
    nop                                           ; $6FE3: $00
    ld bc, $0100                                  ; $6FE4: $01 $00 $01

jr_037_6FE7:
    jp c, $DC00                                   ; $6FE7: $DA $00 $DC

    jp c, Boot                                    ; $6FEA: $DA $00 $01

    db $E3                                        ; $6FED: $E3
    nop                                           ; $6FEE: $00
    ld bc, $0000                                  ; $6FEF: $01 $00 $00
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
    ccf                                           ; $7001: $3F
    jr nz, @+$70                                  ; $7002: $20 $6E

    ld c, l                                       ; $7004: $4D
    nop                                           ; $7005: $00
    ld d, e                                       ; $7006: $53
    ld [hl], $00                                  ; $7007: $36 $00
    ld b, d                                       ; $7009: $42
    adc l                                         ; $700A: $8D
    ld de, $378B                                  ; $700B: $11 $8B $37
    nop                                           ; $700E: $00
    ld l, d                                       ; $700F: $6A
    ret                                           ; $7010: $C9


    nop                                           ; $7011: $00
    ld bc, $0000                                  ; $7012: $01 $00 $00
    inc bc                                        ; $7015: $03
    nop                                           ; $7016: $00
    nop                                           ; $7017: $00
    inc bc                                        ; $7018: $03
    ld bc, $BD00                                  ; $7019: $01 $00 $BD
    ld a, a                                       ; $701C: $7F
    nop                                           ; $701D: $00
    sub l                                         ; $701E: $95
    cp e                                          ; $701F: $BB
    nop                                           ; $7020: $00
    jp nz, $007F                                  ; $7021: $C2 $7F $00

    adc b                                         ; $7024: $88
    cp c                                          ; $7025: $B9
    nop                                           ; $7026: $00
    jp nz, $007F                                  ; $7027: $C2 $7F $00

    ld bc, $0001                                  ; $702A: $01 $01 $00
    ld bc, $00E3                                  ; $702D: $01 $E3 $00
    ld bc, $2134                                  ; $7030: $01 $34 $21
    ld [hl+], a                                   ; $7033: $22
    nop                                           ; $7034: $00
    nop                                           ; $7035: $00
    nop                                           ; $7036: $00
    nop                                           ; $7037: $00
    nop                                           ; $7038: $00
    inc bc                                        ; $7039: $03
    nop                                           ; $703A: $00
    nop                                           ; $703B: $00
    dec b                                         ; $703C: $05
    ld bc, $0000                                  ; $703D: $01 $00 $00
    ld [bc], a                                    ; $7040: $02
    nop                                           ; $7041: $00
    nop                                           ; $7042: $00
    ld b, $FE                                     ; $7043: $06 $FE
    ld d, b                                       ; $7045: $50
    ld [hl+], a                                   ; $7046: $22
    dec d                                         ; $7047: $15
    ld b, a                                       ; $7048: $47
    ld bc, $078E                                  ; $7049: $01 $8E $07
    db $10                                        ; $704C: $10
    ld l, [hl]                                    ; $704D: $6E
    ld bc, $3600                                  ; $704E: $01 $00 $36
    ld d, h                                       ; $7051: $54
    nop                                           ; $7052: $00
    ld l, e                                       ; $7053: $6B
    dec [hl]                                      ; $7054: $35
    nop                                           ; $7055: $00
    jr c, jr_037_70C2                             ; $7056: $38 $6A

    nop                                           ; $7058: $00
    ret                                           ; $7059: $C9


    nop                                           ; $705A: $00
    nop                                           ; $705B: $00
    nop                                           ; $705C: $00
    nop                                           ; $705D: $00
    nop                                           ; $705E: $00
    inc bc                                        ; $705F: $03
    nop                                           ; $7060: $00
    nop                                           ; $7061: $00
    inc bc                                        ; $7062: $03
    ld bc, $8900                                  ; $7063: $01 $00 $89
    ld a, a                                       ; $7066: $7F
    nop                                           ; $7067: $00
    halt                                          ; $7068: $76
    and l                                         ; $7069: $A5
    nop                                           ; $706A: $00
    adc c                                         ; $706B: $89
    cp d                                          ; $706C: $BA
    nop                                           ; $706D: $00
    adc c                                         ; $706E: $89
    sub l                                         ; $706F: $95
    nop                                           ; $7070: $00
    ld bc, $0000                                  ; $7071: $01 $00 $00
    nop                                           ; $7074: $00
    ld bc, $0100                                  ; $7075: $01 $00 $01
    sbc $00                                       ; $7078: $DE $00
    call c, Call_000_00DA                         ; $707A: $DC $DA $00
    ld bc, $00E2                                  ; $707D: $01 $E2 $00
    ld bc, $0000                                  ; $7080: $01 $00 $00
    nop                                           ; $7083: $00
    nop                                           ; $7084: $00
    nop                                           ; $7085: $00
    inc bc                                        ; $7086: $03
    nop                                           ; $7087: $00
    nop                                           ; $7088: $00
    dec b                                         ; $7089: $05
    ld bc, $0000                                  ; $708A: $01 $00 $00
    ld [bc], a                                    ; $708D: $02
    nop                                           ; $708E: $00
    nop                                           ; $708F: $00
    ld b, $FE                                     ; $7090: $06 $FE
    ld d, c                                       ; $7092: $51
    ld hl, $4D58                                  ; $7093: $21 $58 $4D
    nop                                           ; $7096: $00
    ld [$2019], sp                                ; $7097: $08 $19 $20
    ld c, l                                       ; $709A: $4D
    ld c, d                                       ; $709B: $4A
    jr nz, jr_037_710C                            ; $709C: $20 $6E

    ld bc, $8901                                  ; $709E: $01 $01 $89
    ld c, d                                       ; $70A1: $4A
    ld bc, $3618                                  ; $70A2: $01 $18 $36
    nop                                           ; $70A5: $00
    ld b, d                                       ; $70A6: $42
    ld bc, $2F02                                  ; $70A7: $01 $02 $2F
    rla                                           ; $70AA: $17
    jr nz, jr_037_70E4                            ; $70AB: $20 $37

    ld l, d                                       ; $70AD: $6A
    nop                                           ; $70AE: $00
    ret                                           ; $70AF: $C9


    nop                                           ; $70B0: $00
    nop                                           ; $70B1: $00
    nop                                           ; $70B2: $00
    nop                                           ; $70B3: $00
    nop                                           ; $70B4: $00
    inc bc                                        ; $70B5: $03
    nop                                           ; $70B6: $00
    nop                                           ; $70B7: $00
    inc bc                                        ; $70B8: $03
    ld bc, $8900                                  ; $70B9: $01 $00 $89
    cp h                                          ; $70BC: $BC
    nop                                           ; $70BD: $00
    or d                                          ; $70BE: $B2
    cp d                                          ; $70BF: $BA
    nop                                           ; $70C0: $00
    pop bc                                        ; $70C1: $C1

jr_037_70C2:
    nop                                           ; $70C2: $00
    nop                                           ; $70C3: $00
    nop                                           ; $70C4: $00
    ld bc, $0100                                  ; $70C5: $01 $00 $01
    call c, $DA00                                 ; $70C8: $DC $00 $DA
    ld bc, $E300                                  ; $70CB: $01 $00 $E3
    nop                                           ; $70CE: $00
    nop                                           ; $70CF: $00
    nop                                           ; $70D0: $00
    nop                                           ; $70D1: $00
    nop                                           ; $70D2: $00
    inc bc                                        ; $70D3: $03
    nop                                           ; $70D4: $00
    nop                                           ; $70D5: $00
    dec b                                         ; $70D6: $05
    ld bc, $0000                                  ; $70D7: $01 $00 $00
    ld [bc], a                                    ; $70DA: $02
    nop                                           ; $70DB: $00
    nop                                           ; $70DC: $00
    ld b, $FE                                     ; $70DD: $06 $FE
    and a                                         ; $70DF: $A7
    nop                                           ; $70E0: $00
    halt                                          ; $70E1: $76
    or d                                          ; $70E2: $B2
    nop                                           ; $70E3: $00

jr_037_70E4:
    cp d                                          ; $70E4: $BA
    pop bc                                        ; $70E5: $C1
    nop                                           ; $70E6: $00
    ld l, [hl]                                    ; $70E7: $6E
    dec de                                        ; $70E8: $1B
    jr nz, jr_037_711E                            ; $70E9: $20 $33

    ld b, d                                       ; $70EB: $42
    ld bc, $8B8D                                  ; $70EC: $01 $8D $8B
    db $10                                        ; $70EF: $10
    scf                                           ; $70F0: $37
    ld l, d                                       ; $70F1: $6A
    nop                                           ; $70F2: $00
    ret                                           ; $70F3: $C9


    nop                                           ; $70F4: $00
    nop                                           ; $70F5: $00
    nop                                           ; $70F6: $00
    nop                                           ; $70F7: $00
    nop                                           ; $70F8: $00
    inc bc                                        ; $70F9: $03
    nop                                           ; $70FA: $00
    nop                                           ; $70FB: $00
    inc bc                                        ; $70FC: $03
    sbc a                                         ; $70FD: $9F
    ld hl, $4140                                  ; $70FE: $21 $40 $41
    ld de, $0042                                  ; $7101: $11 $42 $00
    nop                                           ; $7104: $00
    nop                                           ; $7105: $00
    nop                                           ; $7106: $00
    nop                                           ; $7107: $00
    inc bc                                        ; $7108: $03
    ld bc, $A500                                  ; $7109: $01 $00 $A5

jr_037_710C:
    cp h                                          ; $710C: $BC
    nop                                           ; $710D: $00
    ld a, l                                       ; $710E: $7D
    pop bc                                        ; $710F: $C1
    nop                                           ; $7110: $00
    cp d                                          ; $7111: $BA
    jp nz, $8800                                  ; $7112: $C2 $00 $88

    cp b                                          ; $7115: $B8
    nop                                           ; $7116: $00
    ld bc, $0000                                  ; $7117: $01 $00 $00
    nop                                           ; $711A: $00
    ld bc, $0100                                  ; $711B: $01 $00 $01

jr_037_711E:
    call c, $DA00                                 ; $711E: $DC $00 $DA
    call c, $DE00                                 ; $7121: $DC $00 $DE
    ld bc, $E300                                  ; $7124: $01 $00 $E3
    nop                                           ; $7127: $00
    nop                                           ; $7128: $00
    nop                                           ; $7129: $00
    nop                                           ; $712A: $00
    nop                                           ; $712B: $00
    inc bc                                        ; $712C: $03
    nop                                           ; $712D: $00
    nop                                           ; $712E: $00
    dec b                                         ; $712F: $05
    ld bc, $0000                                  ; $7130: $01 $00 $00
    ld [bc], a                                    ; $7133: $02
    nop                                           ; $7134: $00
    nop                                           ; $7135: $00
    ld b, $FE                                     ; $7136: $06 $FE
    cpl                                           ; $7138: $2F
    ld [hl+], a                                   ; $7139: $22
    rla                                           ; $713A: $17
    ld [hl], $00                                  ; $713B: $36 $00
    ld b, d                                       ; $713D: $42
    ld bc, $A100                                  ; $713E: $01 $00 $A1
    jp nz, $9500                                  ; $7141: $C2 $00 $95

    ld [hl], $00                                  ; $7144: $36 $00
    ccf                                           ; $7146: $3F
    ld l, b                                       ; $7147: $68
    nop                                           ; $7148: $00
    ld bc, $0091                                  ; $7149: $01 $91 $00
    add c                                         ; $714C: $81
    sub c                                         ; $714D: $91
    nop                                           ; $714E: $00
    pop bc                                        ; $714F: $C1
    ld a, a                                       ; $7150: $7F
    nop                                           ; $7151: $00
    ld b, a                                       ; $7152: $47
    adc l                                         ; $7153: $8D
    ld de, $378B                                  ; $7154: $11 $8B $37
    nop                                           ; $7157: $00
    ld l, d                                       ; $7158: $6A
    ret                                           ; $7159: $C9


    nop                                           ; $715A: $00
    ld bc, $0000                                  ; $715B: $01 $00 $00
    inc bc                                        ; $715E: $03
    nop                                           ; $715F: $00
    nop                                           ; $7160: $00
    inc bc                                        ; $7161: $03
    and [hl]                                      ; $7162: $A6
    nop                                           ; $7163: $00
    halt                                          ; $7164: $76
    adc c                                         ; $7165: $89
    nop                                           ; $7166: $00
    sub l                                         ; $7167: $95
    or e                                          ; $7168: $B3
    nop                                           ; $7169: $00
    halt                                          ; $716A: $76
    sbc d                                         ; $716B: $9A
    nop                                           ; $716C: $00
    ld c, [hl]                                    ; $716D: $4E
    nop                                           ; $716E: $00
    nop                                           ; $716F: $00
    nop                                           ; $7170: $00
    nop                                           ; $7171: $00
    nop                                           ; $7172: $00
    inc bc                                        ; $7173: $03
    ret nc                                        ; $7174: $D0

    nop                                           ; $7175: $00
    daa                                           ; $7176: $27
    dec hl                                        ; $7177: $2B
    nop                                           ; $7178: $00
    pop de                                        ; $7179: $D1
    ld c, d                                       ; $717A: $4A
    ld bc, $5352                                  ; $717B: $01 $52 $53
    db $10                                        ; $717E: $10
    scf                                           ; $717F: $37
    ld l, d                                       ; $7180: $6A
    nop                                           ; $7181: $00
    ret                                           ; $7182: $C9


    nop                                           ; $7183: $00
    nop                                           ; $7184: $00
    nop                                           ; $7185: $00
    nop                                           ; $7186: $00
    nop                                           ; $7187: $00
    nop                                           ; $7188: $00
    nop                                           ; $7189: $00
    nop                                           ; $718A: $00
    inc bc                                        ; $718B: $03
    nop                                           ; $718C: $00
    nop                                           ; $718D: $00
    inc b                                         ; $718E: $04
    ld bc, $0000                                  ; $718F: $01 $00 $00
    dec b                                         ; $7192: $05
    ld bc, $0000                                  ; $7193: $01 $00 $00
    ld [bc], a                                    ; $7196: $02
    nop                                           ; $7197: $00
    nop                                           ; $7198: $00
    ld [bc], a                                    ; $7199: $02
    nop                                           ; $719A: $00
    nop                                           ; $719B: $00
    ld [bc], a                                    ; $719C: $02
    nop                                           ; $719D: $00
    nop                                           ; $719E: $00
    ld b, $FE                                     ; $719F: $06 $FE
    ld b, b                                       ; $71A1: $40
    ld de, $4241                                  ; $71A2: $11 $41 $42
    db $10                                        ; $71A5: $10
    ld bc, $0000                                  ; $71A6: $01 $00 $00
    nop                                           ; $71A9: $00
    nop                                           ; $71AA: $00
    nop                                           ; $71AB: $00
    inc bc                                        ; $71AC: $03
    ld bc, $8900                                  ; $71AD: $01 $00 $89
    ld a, a                                       ; $71B0: $7F
    nop                                           ; $71B1: $00
    halt                                          ; $71B2: $76
    and l                                         ; $71B3: $A5
    nop                                           ; $71B4: $00
    adc c                                         ; $71B5: $89
    or e                                          ; $71B6: $B3
    nop                                           ; $71B7: $00
    jp nz, $0084                                  ; $71B8: $C2 $84 $00

    ld bc, $0000                                  ; $71BB: $01 $00 $00
    nop                                           ; $71BE: $00
    ld bc, $0100                                  ; $71BF: $01 $00 $01
    call c, $DA00                                 ; $71C2: $DC $00 $DA
    ld bc, $E300                                  ; $71C5: $01 $00 $E3
    nop                                           ; $71C8: $00
    nop                                           ; $71C9: $00
    nop                                           ; $71CA: $00
    nop                                           ; $71CB: $00
    nop                                           ; $71CC: $00
    inc bc                                        ; $71CD: $03
    nop                                           ; $71CE: $00
    nop                                           ; $71CF: $00
    dec b                                         ; $71D0: $05
    ld bc, $0000                                  ; $71D1: $01 $00 $00
    ld [bc], a                                    ; $71D4: $02
    nop                                           ; $71D5: $00
    nop                                           ; $71D6: $00
    ld b, $FE                                     ; $71D7: $06 $FE
    adc c                                         ; $71D9: $89
    nop                                           ; $71DA: $00
    or b                                          ; $71DB: $B0
    ld l, [hl]                                    ; $71DC: $6E
    ld [bc], a                                    ; $71DD: $02
    ld c, a                                       ; $71DE: $4F
    daa                                           ; $71DF: $27
    nop                                           ; $71E0: $00
    ld b, d                                       ; $71E1: $42
    adc l                                         ; $71E2: $8D
    ld de, $378B                                  ; $71E3: $11 $8B $37
    nop                                           ; $71E6: $00
    ld l, d                                       ; $71E7: $6A
    ret                                           ; $71E8: $C9


    nop                                           ; $71E9: $00
    ld bc, $0000                                  ; $71EA: $01 $00 $00
    inc bc                                        ; $71ED: $03
    nop                                           ; $71EE: $00
    nop                                           ; $71EF: $00
    inc bc                                        ; $71F0: $03
    ld bc, $8900                                  ; $71F1: $01 $00 $89
    ld a, a                                       ; $71F4: $7F
    nop                                           ; $71F5: $00
    halt                                          ; $71F6: $76
    and l                                         ; $71F7: $A5
    nop                                           ; $71F8: $00
    sub [hl]                                      ; $71F9: $96
    ld a, c                                       ; $71FA: $79
    nop                                           ; $71FB: $00
    and a                                         ; $71FC: $A7
    nop                                           ; $71FD: $00
    nop                                           ; $71FE: $00
    nop                                           ; $71FF: $00
    ld bc, $0100                                  ; $7200: $01 $00 $01
    jp c, $DC00                                   ; $7203: $DA $00 $DC

    jp c, Boot                                    ; $7206: $DA $00 $01

    db $E3                                        ; $7209: $E3
    nop                                           ; $720A: $00
    ld bc, $0000                                  ; $720B: $01 $00 $00
    nop                                           ; $720E: $00
    nop                                           ; $720F: $00
    nop                                           ; $7210: $00
    inc bc                                        ; $7211: $03
    nop                                           ; $7212: $00
    nop                                           ; $7213: $00
    dec b                                         ; $7214: $05
    ld bc, $0000                                  ; $7215: $01 $00 $00
    ld [bc], a                                    ; $7218: $02
    nop                                           ; $7219: $00
    nop                                           ; $721A: $00
    ld b, $FE                                     ; $721B: $06 $FE
    inc b                                         ; $721D: $04
    jr nz, jr_037_724D                            ; $721E: $20 $2D

    adc l                                         ; $7220: $8D
    nop                                           ; $7221: $00
    or a                                          ; $7222: $B7
    pop bc                                        ; $7223: $C1
    nop                                           ; $7224: $00
    xor h                                         ; $7225: $AC
    ld [hl], $00                                  ; $7226: $36 $00
    ld b, d                                       ; $7228: $42
    ld bc, $8E01                                  ; $7229: $01 $01 $8E
    rlca                                          ; $722C: $07
    db $10                                        ; $722D: $10
    ld h, b                                       ; $722E: $60
    jr nc, jr_037_7231                            ; $722F: $30 $00

jr_037_7231:
    ld l, $42                                     ; $7231: $2E $42
    nop                                           ; $7233: $00
    ld bc, $2252                                  ; $7234: $01 $52 $22
    ld d, e                                       ; $7237: $53
    dec c                                         ; $7238: $0D
    db $10                                        ; $7239: $10
    scf                                           ; $723A: $37
    ld l, d                                       ; $723B: $6A
    nop                                           ; $723C: $00
    ret                                           ; $723D: $C9


    nop                                           ; $723E: $00
    nop                                           ; $723F: $00
    nop                                           ; $7240: $00
    nop                                           ; $7241: $00
    nop                                           ; $7242: $00
    inc bc                                        ; $7243: $03
    nop                                           ; $7244: $00
    nop                                           ; $7245: $00
    inc bc                                        ; $7246: $03
    ld bc, $9400                                  ; $7247: $01 $00 $94
    ld a, c                                       ; $724A: $79
    nop                                           ; $724B: $00
    cp h                                          ; $724C: $BC

jr_037_724D:
    ld a, d                                       ; $724D: $7A
    nop                                           ; $724E: $00
    call nz, Call_000_00C2                        ; $724F: $C4 $C2 $00
    xor h                                         ; $7252: $AC
    nop                                           ; $7253: $00
    nop                                           ; $7254: $00
    nop                                           ; $7255: $00
    ld bc, $0100                                  ; $7256: $01 $00 $01
    call c, $DE00                                 ; $7259: $DC $00 $DE
    ld bc, $E300                                  ; $725C: $01 $00 $E3
    nop                                           ; $725F: $00
    nop                                           ; $7260: $00
    nop                                           ; $7261: $00
    nop                                           ; $7262: $00
    nop                                           ; $7263: $00
    inc bc                                        ; $7264: $03
    nop                                           ; $7265: $00
    nop                                           ; $7266: $00
    dec b                                         ; $7267: $05
    ld bc, $0000                                  ; $7268: $01 $00 $00
    ld [bc], a                                    ; $726B: $02
    nop                                           ; $726C: $00
    nop                                           ; $726D: $00
    ld b, $FE                                     ; $726E: $06 $FE
    ld c, d                                       ; $7270: $4A
    jr nz, jr_037_72E1                            ; $7271: $20 $6E

    ld c, l                                       ; $7273: $4D
    nop                                           ; $7274: $00
    ld d, e                                       ; $7275: $53
    ld [hl], $00                                  ; $7276: $36 $00
    ld b, d                                       ; $7278: $42
    ld bc, $8E01                                  ; $7279: $01 $01 $8E
    rlca                                          ; $727C: $07
    db $10                                        ; $727D: $10
    ld l, [hl]                                    ; $727E: $6E
    ccf                                           ; $727F: $3F
    nop                                           ; $7280: $00
    ccf                                           ; $7281: $3F
    dec l                                         ; $7282: $2D
    nop                                           ; $7283: $00
    ret                                           ; $7284: $C9


    nop                                           ; $7285: $00
    nop                                           ; $7286: $00
    nop                                           ; $7287: $00
    nop                                           ; $7288: $00
    nop                                           ; $7289: $00
    inc bc                                        ; $728A: $03
    nop                                           ; $728B: $00
    nop                                           ; $728C: $00
    inc bc                                        ; $728D: $03
    ld bc, $8900                                  ; $728E: $01 $00 $89
    ld a, a                                       ; $7291: $7F
    nop                                           ; $7292: $00
    halt                                          ; $7293: $76
    and l                                         ; $7294: $A5
    nop                                           ; $7295: $00
    adc c                                         ; $7296: $89
    xor d                                         ; $7297: $AA
    nop                                           ; $7298: $00
    ld a, c                                       ; $7299: $79
    cp d                                          ; $729A: $BA
    nop                                           ; $729B: $00
    cp h                                          ; $729C: $BC
    nop                                           ; $729D: $00
    nop                                           ; $729E: $00
    nop                                           ; $729F: $00
    ld bc, $0100                                  ; $72A0: $01 $00 $01
    sbc $00                                       ; $72A3: $DE $00
    call c, Call_000_00DA                         ; $72A5: $DC $DA $00
    ld bc, $00E2                                  ; $72A8: $01 $E2 $00
    ld bc, $0000                                  ; $72AB: $01 $00 $00
    nop                                           ; $72AE: $00
    nop                                           ; $72AF: $00
    nop                                           ; $72B0: $00
    inc bc                                        ; $72B1: $03
    nop                                           ; $72B2: $00
    nop                                           ; $72B3: $00
    dec b                                         ; $72B4: $05
    ld bc, $0000                                  ; $72B5: $01 $00 $00
    ld [bc], a                                    ; $72B8: $02
    nop                                           ; $72B9: $00
    nop                                           ; $72BA: $00
    ld b, $FE                                     ; $72BB: $06 $FE
    inc c                                         ; $72BD: $0C
    ld de, $2B9A                                  ; $72BE: $11 $9A $2B
    nop                                           ; $72C1: $00
    ld l, b                                       ; $72C2: $68
    ld bc, $0201                                  ; $72C3: $01 $01 $02
    ld l, [hl]                                    ; $72C6: $6E
    ld [bc], a                                    ; $72C7: $02
    ld c, a                                       ; $72C8: $4F
    inc l                                         ; $72C9: $2C
    ld bc, $3618                                  ; $72CA: $01 $18 $36
    nop                                           ; $72CD: $00
    ld b, d                                       ; $72CE: $42
    adc l                                         ; $72CF: $8D
    ld de, $378B                                  ; $72D0: $11 $8B $37
    nop                                           ; $72D3: $00
    ld l, d                                       ; $72D4: $6A
    ret                                           ; $72D5: $C9


    nop                                           ; $72D6: $00
    ld bc, $0000                                  ; $72D7: $01 $00 $00
    nop                                           ; $72DA: $00
    nop                                           ; $72DB: $00
    nop                                           ; $72DC: $00
    inc bc                                        ; $72DD: $03
    nop                                           ; $72DE: $00
    nop                                           ; $72DF: $00
    inc bc                                        ; $72E0: $03

jr_037_72E1:
    sbc a                                         ; $72E1: $9F
    ld hl, $4140                                  ; $72E2: $21 $40 $41
    ld de, $0042                                  ; $72E5: $11 $42 $00
    nop                                           ; $72E8: $00
    nop                                           ; $72E9: $00
    nop                                           ; $72EA: $00
    nop                                           ; $72EB: $00
    inc bc                                        ; $72EC: $03
    ld bc, $7F00                                  ; $72ED: $01 $00 $7F
    cp d                                          ; $72F0: $BA
    nop                                           ; $72F1: $00
    halt                                          ; $72F2: $76
    add b                                         ; $72F3: $80
    nop                                           ; $72F4: $00
    pop bc                                        ; $72F5: $C1
    sbc a                                         ; $72F6: $9F
    nop                                           ; $72F7: $00
    jp nz, $007F                                  ; $72F8: $C2 $7F $00

    ld bc, $0000                                  ; $72FB: $01 $00 $00
    nop                                           ; $72FE: $00
    ld bc, $0100                                  ; $72FF: $01 $00 $01
    call c, $DA00                                 ; $7302: $DC $00 $DA
    call c, $DE00                                 ; $7305: $DC $00 $DE
    ld bc, $E300                                  ; $7308: $01 $00 $E3
    nop                                           ; $730B: $00
    nop                                           ; $730C: $00
    nop                                           ; $730D: $00
    nop                                           ; $730E: $00
    nop                                           ; $730F: $00
    inc bc                                        ; $7310: $03
    nop                                           ; $7311: $00
    nop                                           ; $7312: $00
    dec b                                         ; $7313: $05
    ld bc, $0000                                  ; $7314: $01 $00 $00
    ld [bc], a                                    ; $7317: $02
    nop                                           ; $7318: $00
    nop                                           ; $7319: $00
    ld b, $FE                                     ; $731A: $06 $FE
    ld c, d                                       ; $731C: $4A
    jr nz, jr_037_7366                            ; $731D: $20 $47

    adc l                                         ; $731F: $8D
    ld de, $368B                                  ; $7320: $11 $8B $36
    nop                                           ; $7323: $00
    ld b, d                                       ; $7324: $42
    ld bc, $A100                                  ; $7325: $01 $00 $A1
    jp nz, $9500                                  ; $7328: $C2 $00 $95

    ld [hl], $00                                  ; $732B: $36 $00
    ccf                                           ; $732D: $3F
    ld l, b                                       ; $732E: $68
    nop                                           ; $732F: $00
    ld bc, $2254                                  ; $7330: $01 $54 $22
    cpl                                           ; $7333: $2F
    inc l                                         ; $7334: $2C
    nop                                           ; $7335: $00
    ld b, a                                       ; $7336: $47
    ld bc, $9610                                  ; $7337: $01 $10 $96
    or d                                          ; $733A: $B2
    nop                                           ; $733B: $00
    halt                                          ; $733C: $76
    adc l                                         ; $733D: $8D
    nop                                           ; $733E: $00
    ld l, [hl]                                    ; $733F: $6E
    ld h, $20                                     ; $7340: $26 $20
    add hl, hl                                    ; $7342: $29
    ld l, d                                       ; $7343: $6A
    nop                                           ; $7344: $00
    ret                                           ; $7345: $C9


    nop                                           ; $7346: $00
    nop                                           ; $7347: $00
    nop                                           ; $7348: $00
    nop                                           ; $7349: $00
    nop                                           ; $734A: $00
    inc bc                                        ; $734B: $03
    nop                                           ; $734C: $00
    nop                                           ; $734D: $00
    inc bc                                        ; $734E: $03
    nop                                           ; $734F: $00
    nop                                           ; $7350: $00
    inc bc                                        ; $7351: $03
    ld [hl-], a                                   ; $7352: $32
    ld de, $6E33                                  ; $7353: $11 $33 $6E
    ld bc, $6A08                                  ; $7356: $01 $08 $6A
    nop                                           ; $7359: $00
    ccf                                           ; $735A: $3F
    ld h, b                                       ; $735B: $60
    nop                                           ; $735C: $00
    ld c, d                                       ; $735D: $4A
    ld bc, $3F01                                  ; $735E: $01 $01 $3F
    jr z, jr_037_7363                             ; $7361: $28 $00

jr_037_7363:
    ret                                           ; $7363: $C9


    nop                                           ; $7364: $00
    nop                                           ; $7365: $00

jr_037_7366:
    nop                                           ; $7366: $00
    nop                                           ; $7367: $00
    nop                                           ; $7368: $00
    inc bc                                        ; $7369: $03
    nop                                           ; $736A: $00
    nop                                           ; $736B: $00
    dec b                                         ; $736C: $05
    ld bc, $0000                                  ; $736D: $01 $00 $00
    ld [bc], a                                    ; $7370: $02
    nop                                           ; $7371: $00
    nop                                           ; $7372: $00
    ld [bc], a                                    ; $7373: $02
    nop                                           ; $7374: $00
    nop                                           ; $7375: $00
    ld [bc], a                                    ; $7376: $02
    nop                                           ; $7377: $00
    nop                                           ; $7378: $00
    dec b                                         ; $7379: $05
    add b                                         ; $737A: $80
    nop                                           ; $737B: $00
    nop                                           ; $737C: $00
    ld [bc], a                                    ; $737D: $02
    nop                                           ; $737E: $00
    nop                                           ; $737F: $00
    ld bc, $7377                                  ; $7380: $01 $77 $73
    ld sp, $DD00                                  ; $7383: $31 $00 $DD
    di                                            ; $7386: $F3
    rst RST_10                                    ; $7387: $D7
    ld hl, $C03A                                  ; $7388: $21 $3A $C0
    res 1, [hl]                                   ; $738B: $CB $8E
    set 2, [hl]                                   ; $738D: $CB $D6
    ld a, $FF                                     ; $738F: $3E $FF
    ldh [rBGP], a                                 ; $7391: $E0 $47
    ldh [rOBP0], a                                ; $7393: $E0 $48
    ldh [rOBP1], a                                ; $7395: $E0 $49
    ldh [$FFEA], a                                ; $7397: $E0 $EA
    ldh [$FFEB], a                                ; $7399: $E0 $EB
    ldh [$FFEC], a                                ; $739B: $E0 $EC
    call Call_000_13ED                            ; $739D: $CD $ED $13
    ld a, [$C311]                                 ; $73A0: $FA $11 $C3
    add a                                         ; $73A3: $87
    ld hl, $7651                                  ; $73A4: $21 $51 $76
    ld e, a                                       ; $73A7: $5F
    ld d, $00                                     ; $73A8: $16 $00
    add hl, de                                    ; $73AA: $19
    ld e, [hl]                                    ; $73AB: $5E
    inc hl                                        ; $73AC: $23
    ld d, [hl]                                    ; $73AD: $56
    call Call_000_14C0                            ; $73AE: $CD $C0 $14
    xor a                                         ; $73B1: $AF
    ldh [$FFE4], a                                ; $73B2: $E0 $E4
    ld [$C2AA], a                                 ; $73B4: $EA $AA $C2
    ld [$C2AC], a                                 ; $73B7: $EA $AC $C2
    ldh [$FFE2], a                                ; $73BA: $E0 $E2
    ld hl, $53D6                                  ; $73BC: $21 $D6 $53
    ld de, $C359                                  ; $73BF: $11 $59 $C3
    ld b, $32                                     ; $73C2: $06 $32
    rst RST_20                                    ; $73C4: $E7
    ld hl, $C359                                  ; $73C5: $21 $59 $C3
    ld de, $9100                                  ; $73C8: $11 $00 $91
    ld b, $70                                     ; $73CB: $06 $70
    call Call_000_1188                            ; $73CD: $CD $88 $11
    ld e, $00                                     ; $73D0: $1E $00
    ld d, $10                                     ; $73D2: $16 $10
    ld hl, $9800                                  ; $73D4: $21 $00 $98
    ld b, $14                                     ; $73D7: $06 $14
    ld c, $20                                     ; $73D9: $0E $20
    call Call_000_10EA                            ; $73DB: $CD $EA $10
    ld e, $00                                     ; $73DE: $1E $00
    ld d, $10                                     ; $73E0: $16 $10
    ld hl, $9C00                                  ; $73E2: $21 $00 $9C
    ld b, $14                                     ; $73E5: $06 $14
    ld c, $20                                     ; $73E7: $0E $20
    call Call_000_10EA                            ; $73E9: $CD $EA $10
    ld de, $7683                                  ; $73EC: $11 $83 $76
    ld hl, $9D8E                                  ; $73EF: $21 $8E $9D
    ld b, $06                                     ; $73F2: $06 $06
    ld c, $06                                     ; $73F4: $0E $06
    call Call_000_10C0                            ; $73F6: $CD $C0 $10
    call Call_000_0F9E                            ; $73F9: $CD $9E $0F
    ld hl, $D6C0                                  ; $73FC: $21 $C0 $D6
    ld de, $24EF                                  ; $73FF: $11 $EF $24
    call Call_000_0F8E                            ; $7402: $CD $8E $0F
    ld a, [$C311]                                 ; $7405: $FA $11 $C3
    ld c, a                                       ; $7408: $4F
    add a                                         ; $7409: $87
    add c                                         ; $740A: $81
    ld hl, $7665                                  ; $740B: $21 $65 $76
    ld e, a                                       ; $740E: $5F
    ld d, $00                                     ; $740F: $16 $00
    add hl, de                                    ; $7411: $19
    ld a, [hl+]                                   ; $7412: $2A
    ld e, [hl]                                    ; $7413: $5E
    inc hl                                        ; $7414: $23
    ld d, [hl]                                    ; $7415: $56
    ld hl, $D6D1                                  ; $7416: $21 $D1 $D6
    ld [hl+], a                                   ; $7419: $22
    ld [hl], e                                    ; $741A: $73
    inc hl                                        ; $741B: $23
    ld [hl], d                                    ; $741C: $72
    ld hl, $D6C2                                  ; $741D: $21 $C2 $D6
    ld [hl], $10                                  ; $7420: $36 $10
    ld hl, $D6C4                                  ; $7422: $21 $C4 $D6
    ld [hl], $88                                  ; $7425: $36 $88
    ld hl, $D6C6                                  ; $7427: $21 $C6 $D6
    ld [hl], $58                                  ; $742A: $36 $58
    ld hl, $D6E9                                  ; $742C: $21 $E9 $D6
    ld [hl], $FF                                  ; $742F: $36 $FF
    ld hl, $D6C0                                  ; $7431: $21 $C0 $D6
    call Call_000_0DB5                            ; $7434: $CD $B5 $0D
    ld a, $01                                     ; $7437: $3E $01
    ld [$C2B5], a                                 ; $7439: $EA $B5 $C2
    ld a, $5F                                     ; $743C: $3E $5F
    ld [$C2B6], a                                 ; $743E: $EA $B6 $C2
    ld a, $02                                     ; $7441: $3E $02
    ld [$C2B9], a                                 ; $7443: $EA $B9 $C2
    ld a, $5E                                     ; $7446: $3E $5E
    ld [$C2BA], a                                 ; $7448: $EA $BA $C2
    ld a, $87                                     ; $744B: $3E $87
    rst RST_18                                    ; $744D: $DF
    ldh a, [rSTAT]                                ; $744E: $F0 $41
    or $40                                        ; $7450: $F6 $40
    ldh [rSTAT], a                                ; $7452: $E0 $41
    ld a, $17                                     ; $7454: $3E $17
    ld a, $8F                                     ; $7456: $3E $8F
    ldh [rLYC], a                                 ; $7458: $E0 $45
    ldh a, [rIE]                                  ; $745A: $F0 $FF
    or $03                                        ; $745C: $F6 $03
    ldh [rIE], a                                  ; $745E: $E0 $FF
    ei                                            ; $7460: $FB
    ld de, $762D                                  ; $7461: $11 $2D $76
    ld hl, $C329                                  ; $7464: $21 $29 $C3
    ld c, $24                                     ; $7467: $0E $24

jr_037_7469:
    ld a, [de]                                    ; $7469: $1A
    inc de                                        ; $746A: $13
    ld [hl+], a                                   ; $746B: $22
    dec c                                         ; $746C: $0D
    jr nz, jr_037_7469                            ; $746D: $20 $FA

    ld a, [$C33A]                                 ; $746F: $FA $3A $C3
    ldh [$FFE2], a                                ; $7472: $E0 $E2
    ld bc, $6F11                                  ; $7474: $01 $11 $6F
    ld a, [$C006]                                 ; $7477: $FA $06 $C0
    or a                                          ; $747A: $B7
    jr z, jr_037_7480                             ; $747B: $28 $03

    ld bc, $72AF                                  ; $747D: $01 $AF $72

jr_037_7480:
    ld hl, $C32B                                  ; $7480: $21 $2B $C3
    ld [hl], c                                    ; $7483: $71
    inc hl                                        ; $7484: $23
    ld [hl], b                                    ; $7485: $70
    ld a, $92                                     ; $7486: $3E $92
    call Call_000_135D                            ; $7488: $CD $5D $13
    call Call_000_0430                            ; $748B: $CD $30 $04
    call Call_000_0430                            ; $748E: $CD $30 $04
    ld a, $1B                                     ; $7491: $3E $1B
    ldh [rBGP], a                                 ; $7493: $E0 $47
    ldh [$FFEA], a                                ; $7495: $E0 $EA
    ldh [$FFEB], a                                ; $7497: $E0 $EB
    ldh [$FFEC], a                                ; $7499: $E0 $EC
    ld a, $4F                                     ; $749B: $3E $4F
    ldh [rOBP0], a                                ; $749D: $E0 $48
    ldh [rOBP1], a                                ; $749F: $E0 $49
    call Call_000_147A                            ; $74A1: $CD $7A $14

Jump_037_74A4:
    ld hl, $D6C0                                  ; $74A4: $21 $C0 $D6
    call Call_000_0E28                            ; $74A7: $CD $28 $0E
    ld a, [$C32E]                                 ; $74AA: $FA $2E $C3
    bit 5, a                                      ; $74AD: $CB $6F
    jr z, jr_037_7529                             ; $74AF: $28 $78

    ld a, [$C349]                                 ; $74B1: $FA $49 $C3
    dec a                                         ; $74B4: $3D
    ld [$C349], a                                 ; $74B5: $EA $49 $C3
    jr nz, jr_037_7500                            ; $74B8: $20 $46

jr_037_74BA:
    ld a, $40                                     ; $74BA: $3E $40
    ld [$C349], a                                 ; $74BC: $EA $49 $C3
    ld a, [$C32E]                                 ; $74BF: $FA $2E $C3
    and $DF                                       ; $74C2: $E6 $DF
    ld [$C32E], a                                 ; $74C4: $EA $2E $C3
    ld e, $00                                     ; $74C7: $1E $00
    ld d, $10                                     ; $74C9: $16 $10
    ld hl, $9841                                  ; $74CB: $21 $41 $98
    ld b, $13                                     ; $74CE: $06 $13
    ld c, $0A                                     ; $74D0: $0E $0A
    call Call_000_10EA                            ; $74D2: $CD $EA $10
    ld a, $80                                     ; $74D5: $3E $80
    ld [$C343], a                                 ; $74D7: $EA $43 $C3
    ld de, $8800                                  ; $74DA: $11 $00 $88
    ld hl, $C337                                  ; $74DD: $21 $37 $C3
    ld [hl], e                                    ; $74E0: $73
    inc hl                                        ; $74E1: $23
    ld [hl], d                                    ; $74E2: $72
    ld hl, $0081                                  ; $74E3: $21 $81 $00
    ld a, l                                       ; $74E6: $7D
    ld [$C335], a                                 ; $74E7: $EA $35 $C3
    ld [$C341], a                                 ; $74EA: $EA $41 $C3
    ld a, h                                       ; $74ED: $7C
    ld [$C336], a                                 ; $74EE: $EA $36 $C3
    ld [$C342], a                                 ; $74F1: $EA $42 $C3
    xor a                                         ; $74F4: $AF
    ld [$C345], a                                 ; $74F5: $EA $45 $C3
    ld [$C33C], a                                 ; $74F8: $EA $3C $C3
    ld a, $FE                                     ; $74FB: $3E $FE
    ld [$C33A], a                                 ; $74FD: $EA $3A $C3

jr_037_7500:
    ld a, [$C33A]                                 ; $7500: $FA $3A $C3
    add $02                                       ; $7503: $C6 $02
    ld [$C33A], a                                 ; $7505: $EA $3A $C3
    ldh [$FFE2], a                                ; $7508: $E0 $E2
    ldh a, [$FF98]                                ; $750A: $F0 $98
    ld e, a                                       ; $750C: $5F
    ldh a, [$FFAB]                                ; $750D: $F0 $AB
    or e                                          ; $750F: $B3
    bit 4, a                                      ; $7510: $CB $67
    jr z, jr_037_7532                             ; $7512: $28 $1E

    ld a, [$C349]                                 ; $7514: $FA $49 $C3
    dec a                                         ; $7517: $3D
    ld [$C349], a                                 ; $7518: $EA $49 $C3
    jr z, jr_037_74BA                             ; $751B: $28 $9D

    ld a, [$C33A]                                 ; $751D: $FA $3A $C3
    add $02                                       ; $7520: $C6 $02
    ld [$C33A], a                                 ; $7522: $EA $3A $C3
    ldh [$FFE2], a                                ; $7525: $E0 $E2
    jr jr_037_7532                                ; $7527: $18 $09

jr_037_7529:
    ld b, $39                                     ; $7529: $06 $39
    ld hl, $4000                                  ; $752B: $21 $00 $40
    rst RST_08                                    ; $752E: $CF
    call Call_037_757B                            ; $752F: $CD $7B $75

jr_037_7532:
    ld a, [$C32E]                                 ; $7532: $FA $2E $C3
    bit 6, a                                      ; $7535: $CB $77
    jr z, jr_037_753E                             ; $7537: $28 $05

    ld a, $0F                                     ; $7539: $3E $0F
    call Call_000_13BC                            ; $753B: $CD $BC $13

jr_037_753E:
    ld hl, $C329                                  ; $753E: $21 $29 $C3
    ld e, [hl]                                    ; $7541: $5E
    inc hl                                        ; $7542: $23
    ld d, [hl]                                    ; $7543: $56
    inc de                                        ; $7544: $13
    ld [hl], d                                    ; $7545: $72
    dec hl                                        ; $7546: $2B
    ld [hl], e                                    ; $7547: $73
    call Call_000_0424                            ; $7548: $CD $24 $04
    ld a, [$C32E]                                 ; $754B: $FA $2E $C3
    add a                                         ; $754E: $87
    jr c, jr_037_755C                             ; $754F: $38 $0B

    ldh a, [$FF99]                                ; $7551: $F0 $99
    ld e, a                                       ; $7553: $5F
    ldh a, [$FFAC]                                ; $7554: $F0 $AC
    or e                                          ; $7556: $B3
    and $80                                       ; $7557: $E6 $80
    jp z, Jump_037_74A4                           ; $7559: $CA $A4 $74

jr_037_755C:
    ld hl, $C03A                                  ; $755C: $21 $3A $C0
    res 2, [hl]                                   ; $755F: $CB $96
    ld a, $00                                     ; $7561: $3E $00
    call Call_000_135D                            ; $7563: $CD $5D $13
    call Call_000_0424                            ; $7566: $CD $24 $04
    ld a, [$C31A]                                 ; $7569: $FA $1A $C3
    or a                                          ; $756C: $B7
    jr nz, jr_037_7575                            ; $756D: $20 $06

    ld b, $3F                                     ; $756F: $06 $3F
    ld hl, $4000                                  ; $7571: $21 $00 $40
    rst RST_00                                    ; $7574: $C7

jr_037_7575:
    ld b, $3B                                     ; $7575: $06 $3B
    ld hl, $7260                                  ; $7577: $21 $60 $72
    rst RST_00                                    ; $757A: $C7

Call_037_757B:
    ld a, [$C32D]                                 ; $757B: $FA $2D $C3
    or a                                          ; $757E: $B7
    ret z                                         ; $757F: $C8

    dec a                                         ; $7580: $3D
    and $0F                                       ; $7581: $E6 $0F
    add a                                         ; $7583: $87
    ld e, a                                       ; $7584: $5F
    xor a                                         ; $7585: $AF
    ld [$C32D], a                                 ; $7586: $EA $2D $C3
    ld d, $00                                     ; $7589: $16 $00
    ld hl, $7595                                  ; $758B: $21 $95 $75
    add hl, de                                    ; $758E: $19
    ld a, [hl+]                                   ; $758F: $2A
    ld e, a                                       ; $7590: $5F
    ld a, [hl]                                    ; $7591: $7E
    ld l, e                                       ; $7592: $6B
    ld h, a                                       ; $7593: $67
    jp hl                                         ; $7594: $E9


    or l                                          ; $7595: $B5
    ld [hl], l                                    ; $7596: $75
    db $D3                                        ; $7597: $D3
    ld [hl], l                                    ; $7598: $75
    rst RST_18                                    ; $7599: $DF
    ld [hl], l                                    ; $759A: $75
    push hl                                       ; $759B: $E5
    ld [hl], l                                    ; $759C: $75
    db $EB                                        ; $759D: $EB
    ld [hl], l                                    ; $759E: $75
    pop af                                        ; $759F: $F1
    ld [hl], l                                    ; $75A0: $75
    rst RST_30                                    ; $75A1: $F7
    ld [hl], l                                    ; $75A2: $75
    db $FD                                        ; $75A3: $FD
    ld [hl], l                                    ; $75A4: $75
    inc bc                                        ; $75A5: $03
    halt                                          ; $75A6: $76
    add hl, bc                                    ; $75A7: $09
    halt                                          ; $75A8: $76
    rrca                                          ; $75A9: $0F
    halt                                          ; $75AA: $76
    dec d                                         ; $75AB: $15
    halt                                          ; $75AC: $76
    dec de                                        ; $75AD: $1B
    halt                                          ; $75AE: $76
    ld hl, $2776                                  ; $75AF: $21 $76 $27
    halt                                          ; $75B2: $76
    or l                                          ; $75B3: $B5
    ld [hl], l                                    ; $75B4: $75
    ld hl, $76CB                                  ; $75B5: $21 $CB $76
    call Call_037_75C4                            ; $75B8: $CD $C4 $75
    ld hl, $76E6                                  ; $75BB: $21 $E6 $76
    call Call_037_75C4                            ; $75BE: $CD $C4 $75
    ld hl, $7709                                  ; $75C1: $21 $09 $77

Call_037_75C4:
Jump_037_75C4:
    ld b, [hl]                                    ; $75C4: $46
    inc hl                                        ; $75C5: $23
    ld e, [hl]                                    ; $75C6: $5E
    inc hl                                        ; $75C7: $23
    ld d, [hl]                                    ; $75C8: $56
    inc hl                                        ; $75C9: $23
    push hl                                       ; $75CA: $E5
    push de                                       ; $75CB: $D5
    pop hl                                        ; $75CC: $E1
    pop de                                        ; $75CD: $D1
    ld c, $02                                     ; $75CE: $0E $02
    jp Jump_000_10C0                              ; $75D0: $C3 $C0 $10


    ld hl, $771C                                  ; $75D3: $21 $1C $77
    call Call_037_75C4                            ; $75D6: $CD $C4 $75
    ld hl, $774B                                  ; $75D9: $21 $4B $77
    jp Jump_037_75C4                              ; $75DC: $C3 $C4 $75


    ld hl, $776A                                  ; $75DF: $21 $6A $77
    jp Jump_037_75C4                              ; $75E2: $C3 $C4 $75


    ld hl, $77A9                                  ; $75E5: $21 $A9 $77
    jp Jump_037_75C4                              ; $75E8: $C3 $C4 $75


    ld hl, $77C8                                  ; $75EB: $21 $C8 $77
    jp Jump_037_75C4                              ; $75EE: $C3 $C4 $75


    ld hl, $77E3                                  ; $75F1: $21 $E3 $77
    jp Jump_037_75C4                              ; $75F4: $C3 $C4 $75


    ld hl, $77FE                                  ; $75F7: $21 $FE $77
    jp Jump_037_75C4                              ; $75FA: $C3 $C4 $75


    ld hl, $7815                                  ; $75FD: $21 $15 $78
    jp Jump_037_75C4                              ; $7600: $C3 $C4 $75


    ld hl, $7828                                  ; $7603: $21 $28 $78
    jp Jump_037_75C4                              ; $7606: $C3 $C4 $75


    ld hl, $7857                                  ; $7609: $21 $57 $78
    jp Jump_037_75C4                              ; $760C: $C3 $C4 $75


    ld hl, $788A                                  ; $760F: $21 $8A $78
    jp Jump_037_75C4                              ; $7612: $C3 $C4 $75


    ld hl, $78B5                                  ; $7615: $21 $B5 $78
    jp Jump_037_75C4                              ; $7618: $C3 $C4 $75


    ld hl, $78E0                                  ; $761B: $21 $E0 $78
    jp Jump_037_75C4                              ; $761E: $C3 $C4 $75


    ld hl, $78F3                                  ; $7621: $21 $F3 $78
    jp Jump_037_75C4                              ; $7624: $C3 $C4 $75


    ld hl, $790A                                  ; $7627: $21 $0A $79
    jp Jump_037_75C4                              ; $762A: $C3 $C4 $75


    nop                                           ; $762D: $00
    nop                                           ; $762E: $00
    ld de, $006F                                  ; $762F: $11 $6F $00
    nop                                           ; $7632: $00
    ld e, c                                       ; $7633: $59
    jp $C379                                      ; $7634: $C3 $79 $C3


    ld a, c                                       ; $7637: $79
    push bc                                       ; $7638: $C5
    add c                                         ; $7639: $81
    nop                                           ; $763A: $00
    nop                                           ; $763B: $00
    adc b                                         ; $763C: $88
    nop                                           ; $763D: $00
    nop                                           ; $763E: $00
    nop                                           ; $763F: $00
    nop                                           ; $7640: $00
    nop                                           ; $7641: $00
    ld a, c                                       ; $7642: $79
    push bc                                       ; $7643: $C5
    nop                                           ; $7644: $00
    add c                                         ; $7645: $81
    nop                                           ; $7646: $00
    add b                                         ; $7647: $80
    nop                                           ; $7648: $00
    nop                                           ; $7649: $00
    nop                                           ; $764A: $00
    nop                                           ; $764B: $00
    nop                                           ; $764C: $00
    ld b, b                                       ; $764D: $40
    nop                                           ; $764E: $00
    nop                                           ; $764F: $00
    nop                                           ; $7650: $00
    ld [de], a                                    ; $7651: $12
    nop                                           ; $7652: $00
    inc de                                        ; $7653: $13
    nop                                           ; $7654: $00
    inc d                                         ; $7655: $14
    nop                                           ; $7656: $00
    dec d                                         ; $7657: $15
    nop                                           ; $7658: $00
    ld d, $00                                     ; $7659: $16 $00
    rla                                           ; $765B: $17
    nop                                           ; $765C: $00
    jr jr_037_765F                                ; $765D: $18 $00

jr_037_765F:
    add hl, de                                    ; $765F: $19
    nop                                           ; $7660: $00
    ld a, [de]                                    ; $7661: $1A
    nop                                           ; $7662: $00
    dec de                                        ; $7663: $1B
    nop                                           ; $7664: $00
    rlca                                          ; $7665: $07
    cp [hl]                                       ; $7666: $BE
    ld b, b                                       ; $7667: $40
    rlca                                          ; $7668: $07
    ld h, c                                       ; $7669: $61
    ld d, a                                       ; $766A: $57
    ld [$402A], sp                                ; $766B: $08 $2A $40
    ld [$5C8A], sp                                ; $766E: $08 $8A $5C
    add hl, bc                                    ; $7671: $09
    ld [hl+], a                                   ; $7672: $22
    ld b, b                                       ; $7673: $40
    add hl, bc                                    ; $7674: $09
    db $F4                                        ; $7675: $F4
    ld d, a                                       ; $7676: $57
    ld a, [bc]                                    ; $7677: $0A
    ld b, $40                                     ; $7678: $06 $40
    ld a, [bc]                                    ; $767A: $0A
    ld a, l                                       ; $767B: $7D
    ld e, d                                       ; $767C: $5A
    dec bc                                        ; $767D: $0B
    ld a, [hl+]                                   ; $767E: $2A
    ld b, b                                       ; $767F: $40
    dec bc                                        ; $7680: $0B
    db $E4                                        ; $7681: $E4
    ld e, e                                       ; $7682: $5B
    inc b                                         ; $7683: $04
    db $10                                        ; $7684: $10
    inc b                                         ; $7685: $04
    db $10                                        ; $7686: $10
    inc b                                         ; $7687: $04
    db $10                                        ; $7688: $10
    inc b                                         ; $7689: $04
    db $10                                        ; $768A: $10
    inc b                                         ; $768B: $04
    db $10                                        ; $768C: $10
    inc b                                         ; $768D: $04
    ld a, [hl]                                    ; $768E: $7E
    inc b                                         ; $768F: $04
    db $10                                        ; $7690: $10
    inc b                                         ; $7691: $04
    db $10                                        ; $7692: $10
    inc b                                         ; $7693: $04
    db $10                                        ; $7694: $10
    inc b                                         ; $7695: $04
    db $10                                        ; $7696: $10
    inc b                                         ; $7697: $04
    ld a, [hl]                                    ; $7698: $7E
    inc b                                         ; $7699: $04
    ld a, a                                       ; $769A: $7F
    inc b                                         ; $769B: $04
    db $10                                        ; $769C: $10
    inc b                                         ; $769D: $04
    db $10                                        ; $769E: $10
    inc b                                         ; $769F: $04
    db $10                                        ; $76A0: $10
    inc b                                         ; $76A1: $04
    ld a, [hl]                                    ; $76A2: $7E
    inc b                                         ; $76A3: $04
    ld a, a                                       ; $76A4: $7F
    inc b                                         ; $76A5: $04
    ld a, a                                       ; $76A6: $7F
    inc b                                         ; $76A7: $04
    db $10                                        ; $76A8: $10
    inc b                                         ; $76A9: $04
    db $10                                        ; $76AA: $10
    inc b                                         ; $76AB: $04
    ld a, [hl]                                    ; $76AC: $7E
    inc b                                         ; $76AD: $04
    ld a, a                                       ; $76AE: $7F
    inc b                                         ; $76AF: $04
    ld a, a                                       ; $76B0: $7F
    inc b                                         ; $76B1: $04
    ld a, a                                       ; $76B2: $7F
    inc b                                         ; $76B3: $04
    db $10                                        ; $76B4: $10
    inc b                                         ; $76B5: $04
    ld a, [hl]                                    ; $76B6: $7E
    inc b                                         ; $76B7: $04
    ld a, a                                       ; $76B8: $7F
    inc b                                         ; $76B9: $04
    ld a, a                                       ; $76BA: $7F
    inc b                                         ; $76BB: $04
    ld a, a                                       ; $76BC: $7F
    inc b                                         ; $76BD: $04
    ld a, a                                       ; $76BE: $7F
    inc b                                         ; $76BF: $04
    ld a, [hl]                                    ; $76C0: $7E
    inc b                                         ; $76C1: $04
    ld a, a                                       ; $76C2: $7F
    inc b                                         ; $76C3: $04
    ld a, a                                       ; $76C4: $7F
    inc b                                         ; $76C5: $04
    ld a, a                                       ; $76C6: $7F
    inc b                                         ; $76C7: $04
    ld a, a                                       ; $76C8: $7F
    inc b                                         ; $76C9: $04
    ld a, a                                       ; $76CA: $7F
    ld b, $47                                     ; $76CB: $06 $47
    sbc b                                         ; $76CD: $98
    ld bc, $0112                                  ; $76CE: $01 $12 $01
    inc d                                         ; $76D1: $14
    ld bc, $0116                                  ; $76D2: $01 $16 $01
    jr jr_037_76D8                                ; $76D5: $18 $01

    inc d                                         ; $76D7: $14

jr_037_76D8:
    ld bc, $011A                                  ; $76D8: $01 $1A $01
    inc de                                        ; $76DB: $13
    ld bc, $0115                                  ; $76DC: $01 $15 $01
    rla                                           ; $76DF: $17
    ld bc, $0119                                  ; $76E0: $01 $19 $01
    dec d                                         ; $76E3: $15
    ld bc, $081B                                  ; $76E4: $01 $1B $08
    add [hl]                                      ; $76E7: $86
    sbc b                                         ; $76E8: $98
    ld bc, $011C                                  ; $76E9: $01 $1C $01
    inc d                                         ; $76EC: $14
    ld bc, $011E                                  ; $76ED: $01 $1E $01
    jr nz, jr_037_76F3                            ; $76F0: $20 $01

    ld [hl+], a                                   ; $76F2: $22

jr_037_76F3:
    ld bc, $0124                                  ; $76F3: $01 $24 $01
    inc d                                         ; $76F6: $14
    ld bc, $0126                                  ; $76F7: $01 $26 $01
    dec e                                         ; $76FA: $1D
    ld bc, $0115                                  ; $76FB: $01 $15 $01
    rra                                           ; $76FE: $1F
    ld bc, $0121                                  ; $76FF: $01 $21 $01
    inc hl                                        ; $7702: $23
    ld bc, $0125                                  ; $7703: $01 $25 $01
    dec d                                         ; $7706: $15
    ld bc, $0427                                  ; $7707: $01 $27 $04
    ret z                                         ; $770A: $C8

    sbc b                                         ; $770B: $98
    ld bc, $011E                                  ; $770C: $01 $1E $01
    jr z, jr_037_7712                             ; $770F: $28 $01

    ld a, [hl+]                                   ; $7711: $2A

jr_037_7712:
    ld bc, $012C                                  ; $7712: $01 $2C $01
    rra                                           ; $7715: $1F
    ld bc, $0129                                  ; $7716: $01 $29 $01
    dec hl                                        ; $7719: $2B
    ld bc, $0B2D                                  ; $771A: $01 $2D $0B
    ld b, c                                       ; $771D: $41
    sbc b                                         ; $771E: $98
    ld bc, $0154                                  ; $771F: $01 $54 $01
    ld h, h                                       ; $7722: $64
    ld bc, $015A                                  ; $7723: $01 $5A $01
    db $10                                        ; $7726: $10
    ld bc, $012E                                  ; $7727: $01 $2E $01
    jr nc, jr_037_772D                            ; $772A: $30 $01

    ld [hl-], a                                   ; $772C: $32

jr_037_772D:
    ld bc, $0130                                  ; $772D: $01 $30 $01
    inc [hl]                                      ; $7730: $34
    ld bc, $0136                                  ; $7731: $01 $36 $01
    jr c, jr_037_7737                             ; $7734: $38 $01

    ld d, l                                       ; $7736: $55

jr_037_7737:
    ld bc, $0165                                  ; $7737: $01 $65 $01
    ld e, e                                       ; $773A: $5B
    ld bc, $0111                                  ; $773B: $01 $11 $01
    cpl                                           ; $773E: $2F
    ld bc, $0131                                  ; $773F: $01 $31 $01
    inc sp                                        ; $7742: $33
    ld bc, $0131                                  ; $7743: $01 $31 $01
    dec [hl]                                      ; $7746: $35
    ld bc, $0137                                  ; $7747: $01 $37 $01
    add hl, sp                                    ; $774A: $39
    rlca                                          ; $774B: $07
    add d                                         ; $774C: $82
    sbc b                                         ; $774D: $98
    ld bc, $013A                                  ; $774E: $01 $3A $01
    inc a                                         ; $7751: $3C
    ld bc, $013E                                  ; $7752: $01 $3E $01
    ld b, b                                       ; $7755: $40
    ld bc, $0114                                  ; $7756: $01 $14 $01
    ld b, d                                       ; $7759: $42
    ld bc, $0114                                  ; $775A: $01 $14 $01
    dec sp                                        ; $775D: $3B
    ld bc, $013D                                  ; $775E: $01 $3D $01
    ccf                                           ; $7761: $3F
    ld bc, $0141                                  ; $7762: $01 $41 $01
    dec d                                         ; $7765: $15
    ld bc, HeaderCGBFlag                          ; $7766: $01 $43 $01
    dec d                                         ; $7769: $15
    rrca                                          ; $776A: $0F
    ld b, c                                       ; $776B: $41
    sbc b                                         ; $776C: $98
    ld bc, $012E                                  ; $776D: $01 $2E $01
    jr nc, jr_037_7773                            ; $7770: $30 $01

    ld [hl-], a                                   ; $7772: $32

jr_037_7773:
    ld bc, $0130                                  ; $7773: $01 $30 $01
    inc [hl]                                      ; $7776: $34
    ld bc, $0136                                  ; $7777: $01 $36 $01
    jr c, jr_037_777D                             ; $777A: $38 $01

    db $10                                        ; $777C: $10

jr_037_777D:
    ld bc, $013A                                  ; $777D: $01 $3A $01
    inc a                                         ; $7780: $3C
    ld bc, $013E                                  ; $7781: $01 $3E $01
    ld b, b                                       ; $7784: $40
    ld bc, $0114                                  ; $7785: $01 $14 $01
    ld b, d                                       ; $7788: $42
    ld bc, $0114                                  ; $7789: $01 $14 $01
    cpl                                           ; $778C: $2F
    ld bc, $0131                                  ; $778D: $01 $31 $01
    inc sp                                        ; $7790: $33
    ld bc, $0131                                  ; $7791: $01 $31 $01
    dec [hl]                                      ; $7794: $35
    ld bc, $0137                                  ; $7795: $01 $37 $01
    add hl, sp                                    ; $7798: $39
    ld bc, $0111                                  ; $7799: $01 $11 $01
    dec sp                                        ; $779C: $3B
    ld bc, $013D                                  ; $779D: $01 $3D $01
    ccf                                           ; $77A0: $3F
    ld bc, $0141                                  ; $77A1: $01 $41 $01
    dec d                                         ; $77A4: $15
    ld bc, HeaderCGBFlag                          ; $77A5: $01 $43 $01
    dec d                                         ; $77A8: $15
    rlca                                          ; $77A9: $07
    ld b, c                                       ; $77AA: $41
    sbc b                                         ; $77AB: $98
    ld bc, $013A                                  ; $77AC: $01 $3A $01
    inc a                                         ; $77AF: $3C
    ld bc, $013E                                  ; $77B0: $01 $3E $01
    ld b, b                                       ; $77B3: $40
    ld bc, $0114                                  ; $77B4: $01 $14 $01
    ld b, d                                       ; $77B7: $42
    ld bc, $0114                                  ; $77B8: $01 $14 $01
    dec sp                                        ; $77BB: $3B
    ld bc, $013D                                  ; $77BC: $01 $3D $01
    ccf                                           ; $77BF: $3F
    ld bc, $0141                                  ; $77C0: $01 $41 $01
    dec d                                         ; $77C3: $15
    ld bc, HeaderCGBFlag                          ; $77C4: $01 $43 $01
    dec d                                         ; $77C7: $15
    ld b, $41                                     ; $77C8: $06 $41
    sbc b                                         ; $77CA: $98
    ld bc, $013E                                  ; $77CB: $01 $3E $01
    ld [hl], $01                                  ; $77CE: $36 $01
    ld b, h                                       ; $77D0: $44
    ld bc, $0130                                  ; $77D1: $01 $30 $01
    jr z, jr_037_77D7                             ; $77D4: $28 $01

    inc d                                         ; $77D6: $14

jr_037_77D7:
    ld bc, HeaderManufacturerCode                 ; $77D7: $01 $3F $01
    scf                                           ; $77DA: $37
    ld bc, $0145                                  ; $77DB: $01 $45 $01
    ld sp, $2901                                  ; $77DE: $31 $01 $29
    ld bc, $0615                                  ; $77E1: $01 $15 $06
    ld b, c                                       ; $77E4: $41
    sbc b                                         ; $77E5: $98
    ld bc, $013A                                  ; $77E6: $01 $3A $01
    inc a                                         ; $77E9: $3C
    ld bc, HeaderSGBFlag                          ; $77EA: $01 $46 $01
    ld c, b                                       ; $77ED: $48
    ld bc, HeaderDestinationCode                  ; $77EE: $01 $4A $01
    inc d                                         ; $77F1: $14
    ld bc, $013B                                  ; $77F2: $01 $3B $01
    dec a                                         ; $77F5: $3D
    ld bc, HeaderCartridgeType                    ; $77F6: $01 $47 $01
    ld c, c                                       ; $77F9: $49
    ld bc, HeaderOldLicenseeCode                  ; $77FA: $01 $4B $01
    dec d                                         ; $77FD: $15
    dec b                                         ; $77FE: $05
    ld b, c                                       ; $77FF: $41
    sbc b                                         ; $7800: $98
    ld bc, $013E                                  ; $7801: $01 $3E $01
    ld e, [hl]                                    ; $7804: $5E
    ld bc, $011A                                  ; $7805: $01 $1A $01
    ld h, d                                       ; $7808: $62
    ld bc, $0114                                  ; $7809: $01 $14 $01
    ccf                                           ; $780C: $3F
    ld bc, $015F                                  ; $780D: $01 $5F $01
    dec de                                        ; $7810: $1B
    ld bc, $0163                                  ; $7811: $01 $63 $01
    dec d                                         ; $7814: $15
    inc b                                         ; $7815: $04
    ld b, c                                       ; $7816: $41
    sbc b                                         ; $7817: $98
    ld bc, $0142                                  ; $7818: $01 $42 $01
    ld [hl+], a                                   ; $781B: $22
    ld bc, $0150                                  ; $781C: $01 $50 $01
    ld h, [hl]                                    ; $781F: $66
    ld bc, HeaderCGBFlag                          ; $7820: $01 $43 $01
    inc hl                                        ; $7823: $23
    ld bc, $0151                                  ; $7824: $01 $51 $01
    ld h, a                                       ; $7827: $67
    dec bc                                        ; $7828: $0B
    ld b, c                                       ; $7829: $41
    sbc b                                         ; $782A: $98
    ld bc, HeaderMaskROMVersion                   ; $782B: $01 $4C $01
    inc d                                         ; $782E: $14
    ld bc, $012C                                  ; $782F: $01 $2C $01
    db $10                                        ; $7832: $10
    ld bc, HeaderDestinationCode                  ; $7833: $01 $4A $01
    inc d                                         ; $7836: $14
    ld bc, HeaderGlobalChecksum                   ; $7837: $01 $4E $01
    inc [hl]                                      ; $783A: $34
    ld bc, $0136                                  ; $783B: $01 $36 $01
    ld d, b                                       ; $783E: $50
    ld bc, HeaderSGBFlag                          ; $783F: $01 $46 $01
    ld c, l                                       ; $7842: $4D
    ld bc, $0115                                  ; $7843: $01 $15 $01
    dec l                                         ; $7846: $2D
    ld bc, $0111                                  ; $7847: $01 $11 $01
    ld c, e                                       ; $784A: $4B
    ld bc, $0115                                  ; $784B: $01 $15 $01
    ld c, a                                       ; $784E: $4F
    ld bc, $0135                                  ; $784F: $01 $35 $01
    scf                                           ; $7852: $37
    ld bc, $0151                                  ; $7853: $01 $51 $01
    ld b, a                                       ; $7856: $47
    inc c                                         ; $7857: $0C
    ld b, c                                       ; $7858: $41
    sbc b                                         ; $7859: $98
    ld bc, HeaderDestinationCode                  ; $785A: $01 $4A $01
    inc d                                         ; $785D: $14
    ld bc, HeaderGlobalChecksum                   ; $785E: $01 $4E $01
    inc [hl]                                      ; $7861: $34
    ld bc, $0136                                  ; $7862: $01 $36 $01
    ld d, b                                       ; $7865: $50
    ld bc, HeaderSGBFlag                          ; $7866: $01 $46 $01
    db $10                                        ; $7869: $10
    ld bc, $011E                                  ; $786A: $01 $1E $01
    jr z, jr_037_7870                             ; $786D: $28 $01

    ld a, [hl+]                                   ; $786F: $2A

jr_037_7870:
    ld bc, $012C                                  ; $7870: $01 $2C $01
    ld c, e                                       ; $7873: $4B
    ld bc, $0115                                  ; $7874: $01 $15 $01
    ld c, a                                       ; $7877: $4F
    ld bc, $0135                                  ; $7878: $01 $35 $01
    scf                                           ; $787B: $37
    ld bc, $0151                                  ; $787C: $01 $51 $01
    ld b, a                                       ; $787F: $47
    ld bc, $0111                                  ; $7880: $01 $11 $01
    rra                                           ; $7883: $1F
    ld bc, $0129                                  ; $7884: $01 $29 $01
    dec hl                                        ; $7887: $2B
    ld bc, $0A2D                                  ; $7888: $01 $2D $0A
    ld b, c                                       ; $788B: $41
    sbc b                                         ; $788C: $98
    ld bc, $011E                                  ; $788D: $01 $1E $01
    ld d, d                                       ; $7890: $52
    ld bc, $0154                                  ; $7891: $01 $54 $01
    ld d, [hl]                                    ; $7894: $56
    ld bc, $0158                                  ; $7895: $01 $58 $01
    db $10                                        ; $7898: $10
    ld bc, $0142                                  ; $7899: $01 $42 $01
    ld d, b                                       ; $789C: $50
    ld bc, $0130                                  ; $789D: $01 $30 $01
    ld e, $01                                     ; $78A0: $1E $01
    rra                                           ; $78A2: $1F
    ld bc, $0153                                  ; $78A3: $01 $53 $01
    ld d, l                                       ; $78A6: $55
    ld bc, $0157                                  ; $78A7: $01 $57 $01
    ld e, c                                       ; $78AA: $59
    ld bc, $0111                                  ; $78AB: $01 $11 $01
    ld b, e                                       ; $78AE: $43
    ld bc, $0151                                  ; $78AF: $01 $51 $01
    ld sp, $1F01                                  ; $78B2: $31 $01 $1F
    ld a, [bc]                                    ; $78B5: $0A
    ld b, c                                       ; $78B6: $41
    sbc b                                         ; $78B7: $98
    ld bc, $015A                                  ; $78B8: $01 $5A $01
    inc d                                         ; $78BB: $14
    ld bc, $0120                                  ; $78BC: $01 $20 $01
    ld e, h                                       ; $78BF: $5C
    ld bc, $0114                                  ; $78C0: $01 $14 $01
    jr nc, @+$03                                  ; $78C3: $30 $01

    ld a, $01                                     ; $78C5: $3E $01
    ld e, [hl]                                    ; $78C7: $5E
    ld bc, $011A                                  ; $78C8: $01 $1A $01
    ld d, b                                       ; $78CB: $50
    ld bc, $015B                                  ; $78CC: $01 $5B $01
    dec d                                         ; $78CF: $15
    ld bc, $0121                                  ; $78D0: $01 $21 $01
    ld e, l                                       ; $78D3: $5D
    ld bc, $0115                                  ; $78D4: $01 $15 $01
    ld sp, $3F01                                  ; $78D7: $31 $01 $3F
    ld bc, $015F                                  ; $78DA: $01 $5F $01
    dec de                                        ; $78DD: $1B
    ld bc, $0451                                  ; $78DE: $01 $51 $04
    ld b, c                                       ; $78E1: $41
    sbc b                                         ; $78E2: $98
    ld bc, $013E                                  ; $78E3: $01 $3E $01
    ld h, b                                       ; $78E6: $60
    ld bc, $012A                                  ; $78E7: $01 $2A $01
    ld b, [hl]                                    ; $78EA: $46
    ld bc, HeaderManufacturerCode                 ; $78EB: $01 $3F $01
    ld h, c                                       ; $78EE: $61
    ld bc, $012B                                  ; $78EF: $01 $2B $01
    ld sp, $4105                                  ; $78F2: $31 $05 $41
    sbc b                                         ; $78F5: $98
    ld bc, $013A                                  ; $78F6: $01 $3A $01
    ld c, b                                       ; $78F9: $48
    ld bc, $0150                                  ; $78FA: $01 $50 $01
    ld h, d                                       ; $78FD: $62
    ld bc, $0114                                  ; $78FE: $01 $14 $01
    dec sp                                        ; $7901: $3B
    ld bc, HeaderRAMSize                          ; $7902: $01 $49 $01
    ld d, c                                       ; $7905: $51
    ld bc, $0163                                  ; $7906: $01 $63 $01
    dec d                                         ; $7909: $15
    ld a, [bc]                                    ; $790A: $0A
    ld b, c                                       ; $790B: $41
    sbc b                                         ; $790C: $98
    ld bc, $013E                                  ; $790D: $01 $3E $01
    ld [hl], $01                                  ; $7910: $36 $01
    inc l                                         ; $7912: $2C
    ld bc, $0124                                  ; $7913: $01 $24 $01
    ld e, b                                       ; $7916: $58
    ld bc, $0168                                  ; $7917: $01 $68 $01
    ld a, $01                                     ; $791A: $3E $01
    ld e, [hl]                                    ; $791C: $5E
    ld bc, $011A                                  ; $791D: $01 $1A $01
    ld d, b                                       ; $7920: $50
    ld bc, HeaderManufacturerCode                 ; $7921: $01 $3F $01
    scf                                           ; $7924: $37
    ld bc, $012D                                  ; $7925: $01 $2D $01
    dec h                                         ; $7928: $25
    ld bc, $0159                                  ; $7929: $01 $59 $01
    ld l, c                                       ; $792C: $69
    ld bc, HeaderManufacturerCode                 ; $792D: $01 $3F $01
    ld e, a                                       ; $7930: $5F
    ld bc, $011B                                  ; $7931: $01 $1B $01
    ld d, c                                       ; $7934: $51
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

Jump_037_7F00:
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
