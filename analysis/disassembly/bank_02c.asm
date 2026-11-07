; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02c", ROMX[$4000], BANK[$2c]

    ld a, [$C005]                                 ; $4000: $FA $05 $C0
    ld [$C2DD], a                                 ; $4003: $EA $DD $C2
    ld a, [$C2C6]                                 ; $4006: $FA $C6 $C2
    and $F0                                       ; $4009: $E6 $F0
    cp $20                                        ; $400B: $FE $20
    jr nz, jr_02C_4014                            ; $400D: $20 $05

    ld a, $FF                                     ; $400F: $3E $FF
    ld [$C2DD], a                                 ; $4011: $EA $DD $C2

jr_02C_4014:
    ld a, [$C2D2]                                 ; $4014: $FA $D2 $C2
    or a                                          ; $4017: $B7
    jp nz, Jump_02C_4052                          ; $4018: $C2 $52 $40

    ld hl, $42CA                                  ; $401B: $21 $CA $42
    ld de, $C329                                  ; $401E: $11 $29 $C3
    call Call_000_124C                            ; $4021: $CD $4C $12
    ld hl, $C329                                  ; $4024: $21 $29 $C3
    ld de, $8DA0                                  ; $4027: $11 $A0 $8D
    ld b, $26                                     ; $402A: $06 $26
    call Call_000_1188                            ; $402C: $CD $88 $11
    ld de, $97B0                                  ; $402F: $11 $B0 $97
    ld b, $05                                     ; $4032: $06 $05
    call Call_000_1188                            ; $4034: $CD $88 $11
    ld a, [$C2C6]                                 ; $4037: $FA $C6 $C2
    bit 4, a                                      ; $403A: $CB $67
    jr z, jr_02C_4049                             ; $403C: $28 $0B

    ld hl, $4428                                  ; $403E: $21 $28 $44
    ld de, $97E0                                  ; $4041: $11 $E0 $97
    ld b, $02                                     ; $4044: $06 $02
    call Call_000_1188                            ; $4046: $CD $88 $11

jr_02C_4049:
    call Call_02C_407A                            ; $4049: $CD $7A $40
    call Call_02C_4086                            ; $404C: $CD $86 $40
    call Call_02C_40CB                            ; $404F: $CD $CB $40

Jump_02C_4052:
    call Call_02C_41F0                            ; $4052: $CD $F0 $41
    xor a                                         ; $4055: $AF
    ld [$C2D4], a                                 ; $4056: $EA $D4 $C2
    ld a, [$C2DD]                                 ; $4059: $FA $DD $C2
    cp $FF                                        ; $405C: $FE $FF
    jp nz, Jump_02C_4071                          ; $405E: $C2 $71 $40

    ld a, $99                                     ; $4061: $3E $99
    ld [$C2DD], a                                 ; $4063: $EA $DD $C2
    call Call_000_24BB                            ; $4066: $CD $BB $24
    ld a, $FF                                     ; $4069: $3E $FF
    ld [$C2DD], a                                 ; $406B: $EA $DD $C2
    jp Jump_02C_4079                              ; $406E: $C3 $79 $40


Jump_02C_4071:
    ld a, $3C                                     ; $4071: $3E $3C
    ld [$C2DE], a                                 ; $4073: $EA $DE $C2
    call Call_000_24BB                            ; $4076: $CD $BB $24

Jump_02C_4079:
    ret                                           ; $4079: $C9


Call_02C_407A:
    ld hl, $4AD2                                  ; $407A: $21 $D2 $4A
    ld de, $8CC0                                  ; $407D: $11 $C0 $8C
    ld a, [hl+]                                   ; $4080: $2A
    ld b, a                                       ; $4081: $47
    call Call_000_1188                            ; $4082: $CD $88 $11
    ret                                           ; $4085: $C9


Call_02C_4086:
    ld hl, $4448                                  ; $4086: $21 $48 $44
    ld de, $C329                                  ; $4089: $11 $29 $C3
    call Call_000_124C                            ; $408C: $CD $4C $12
    ld hl, $C329                                  ; $408F: $21 $29 $C3
    ld de, $9400                                  ; $4092: $11 $00 $94
    ld b, $2F                                     ; $4095: $06 $2F
    call Call_000_1188                            ; $4097: $CD $88 $11
    ld hl, $4674                                  ; $409A: $21 $74 $46
    ld de, $C329                                  ; $409D: $11 $29 $C3
    call Call_000_124C                            ; $40A0: $CD $4C $12
    ld de, $C329                                  ; $40A3: $11 $29 $C3
    ld hl, $9A40                                  ; $40A6: $21 $40 $9A
    ld b, $09                                     ; $40A9: $06 $09
    ld c, $0C                                     ; $40AB: $0E $0C
    ld a, $40                                     ; $40AD: $3E $40
    call Call_000_0FF7                            ; $40AF: $CD $F7 $0F
    ld hl, $46B8                                  ; $40B2: $21 $B8 $46
    ld de, $C329                                  ; $40B5: $11 $29 $C3
    call Call_000_124C                            ; $40B8: $CD $4C $12
    ld de, $C329                                  ; $40BB: $11 $29 $C3
    ld hl, $9A50                                  ; $40BE: $21 $50 $9A
    ld b, $09                                     ; $40C1: $06 $09
    ld c, $0C                                     ; $40C3: $0E $0C
    ld a, $40                                     ; $40C5: $3E $40
    call Call_000_0FF7                            ; $40C7: $CD $F7 $0F
    ret                                           ; $40CA: $C9


Call_02C_40CB:
    ld hl, $9E40                                  ; $40CB: $21 $40 $9E
    ld b, $20                                     ; $40CE: $06 $20
    ld c, $0E                                     ; $40D0: $0E $0E
    ld de, $4100                                  ; $40D2: $11 $00 $41
    call Call_000_10EA                            ; $40D5: $CD $EA $10
    ld hl, $9C14                                  ; $40D8: $21 $14 $9C
    ld b, $0C                                     ; $40DB: $06 $0C
    ld c, $12                                     ; $40DD: $0E $12
    ld de, $4100                                  ; $40DF: $11 $00 $41
    call Call_000_10EA                            ; $40E2: $CD $EA $10
    ld hl, $4706                                  ; $40E5: $21 $06 $47
    ld de, $C329                                  ; $40E8: $11 $29 $C3
    call Call_000_124C                            ; $40EB: $CD $4C $12
    ld de, $C329                                  ; $40EE: $11 $29 $C3
    ld hl, $9F20                                  ; $40F1: $21 $20 $9F
    ld b, $16                                     ; $40F4: $06 $16
    ld c, $07                                     ; $40F6: $0E $07
    ld a, $40                                     ; $40F8: $3E $40
    call Call_000_0FF7                            ; $40FA: $CD $F7 $0F
    ret                                           ; $40FD: $C9


    ld a, [$C2D2]                                 ; $40FE: $FA $D2 $C2
    or a                                          ; $4101: $B7
    jp nz, Jump_02C_41EF                          ; $4102: $C2 $EF $41

    ld hl, $9C00                                  ; $4105: $21 $00 $9C
    ld b, $14                                     ; $4108: $06 $14
    ld c, $02                                     ; $410A: $0E $02
    ld de, $4100                                  ; $410C: $11 $00 $41
    call Call_000_10EA                            ; $410F: $CD $EA $10
    call Call_000_0417                            ; $4112: $CD $17 $04
    ld hl, $9C40                                  ; $4115: $21 $40 $9C
    ld b, $14                                     ; $4118: $06 $14
    ld c, $02                                     ; $411A: $0E $02
    ld de, $4100                                  ; $411C: $11 $00 $41
    call Call_000_10EA                            ; $411F: $CD $EA $10
    call Call_000_0417                            ; $4122: $CD $17 $04
    ld hl, $9C80                                  ; $4125: $21 $80 $9C
    ld b, $14                                     ; $4128: $06 $14
    ld c, $02                                     ; $412A: $0E $02
    ld de, $4100                                  ; $412C: $11 $00 $41
    call Call_000_10EA                            ; $412F: $CD $EA $10
    call Call_000_0417                            ; $4132: $CD $17 $04
    ld hl, $9CC0                                  ; $4135: $21 $C0 $9C
    ld b, $14                                     ; $4138: $06 $14
    ld c, $02                                     ; $413A: $0E $02
    ld de, $4100                                  ; $413C: $11 $00 $41
    call Call_000_10EA                            ; $413F: $CD $EA $10
    call Call_000_0417                            ; $4142: $CD $17 $04
    ld hl, $9D00                                  ; $4145: $21 $00 $9D
    ld b, $14                                     ; $4148: $06 $14
    ld c, $02                                     ; $414A: $0E $02
    ld de, $4100                                  ; $414C: $11 $00 $41
    call Call_000_10EA                            ; $414F: $CD $EA $10
    call Call_000_0417                            ; $4152: $CD $17 $04
    ld hl, $9D40                                  ; $4155: $21 $40 $9D
    ld b, $14                                     ; $4158: $06 $14
    ld c, $02                                     ; $415A: $0E $02
    ld de, $4100                                  ; $415C: $11 $00 $41
    call Call_000_10EA                            ; $415F: $CD $EA $10
    call Call_000_0417                            ; $4162: $CD $17 $04
    ld hl, $9D80                                  ; $4165: $21 $80 $9D
    ld b, $14                                     ; $4168: $06 $14
    ld c, $02                                     ; $416A: $0E $02
    ld de, $4100                                  ; $416C: $11 $00 $41
    call Call_000_10EA                            ; $416F: $CD $EA $10
    call Call_000_0417                            ; $4172: $CD $17 $04
    ld hl, $9DC0                                  ; $4175: $21 $C0 $9D
    ld b, $14                                     ; $4178: $06 $14
    ld c, $02                                     ; $417A: $0E $02
    ld de, $4100                                  ; $417C: $11 $00 $41
    call Call_000_10EA                            ; $417F: $CD $EA $10
    call Call_000_0417                            ; $4182: $CD $17 $04
    ld hl, $9E00                                  ; $4185: $21 $00 $9E
    ld b, $14                                     ; $4188: $06 $14
    ld c, $02                                     ; $418A: $0E $02
    ld de, $4100                                  ; $418C: $11 $00 $41
    call Call_000_10EA                            ; $418F: $CD $EA $10
    call Call_000_0417                            ; $4192: $CD $17 $04
    ld de, $4768                                  ; $4195: $11 $68 $47
    ld hl, $9DC0                                  ; $4198: $21 $C0 $9D
    ld b, $16                                     ; $419B: $06 $16
    ld c, $01                                     ; $419D: $0E $01
    ld a, $40                                     ; $419F: $3E $40
    call Call_000_0FF7                            ; $41A1: $CD $F7 $0F
    call Call_000_0417                            ; $41A4: $CD $17 $04
    ld de, $4794                                  ; $41A7: $11 $94 $47
    ld hl, $9DE0                                  ; $41AA: $21 $E0 $9D
    ld b, $16                                     ; $41AD: $06 $16
    ld c, $01                                     ; $41AF: $0E $01
    ld a, $40                                     ; $41B1: $3E $40
    call Call_000_0FF7                            ; $41B3: $CD $F7 $0F
    call Call_000_0417                            ; $41B6: $CD $17 $04
    ld de, $47C0                                  ; $41B9: $11 $C0 $47
    ld hl, $9E00                                  ; $41BC: $21 $00 $9E
    ld b, $16                                     ; $41BF: $06 $16
    ld c, $01                                     ; $41C1: $0E $01
    ld a, $40                                     ; $41C3: $3E $40
    call Call_000_0FF7                            ; $41C5: $CD $F7 $0F
    call Call_000_0417                            ; $41C8: $CD $17 $04
    ld de, $47EC                                  ; $41CB: $11 $EC $47
    ld hl, $9E20                                  ; $41CE: $21 $20 $9E
    ld b, $16                                     ; $41D1: $06 $16
    ld c, $01                                     ; $41D3: $0E $01
    ld a, $40                                     ; $41D5: $3E $40
    call Call_000_0FF7                            ; $41D7: $CD $F7 $0F
    call Call_000_0417                            ; $41DA: $CD $17 $04
    ld de, $4818                                  ; $41DD: $11 $18 $48
    ld hl, $9E40                                  ; $41E0: $21 $40 $9E
    ld b, $16                                     ; $41E3: $06 $16
    ld c, $01                                     ; $41E5: $0E $01
    ld a, $40                                     ; $41E7: $3E $40
    call Call_000_0FF7                            ; $41E9: $CD $F7 $0F
    call Call_000_0417                            ; $41EC: $CD $17 $04

Jump_02C_41EF:
    ret                                           ; $41EF: $C9


Call_02C_41F0:
    ld hl, $0000                                  ; $41F0: $21 $00 $00
    ld b, $06                                     ; $41F3: $06 $06
    ld de, $96F0                                  ; $41F5: $11 $F0 $96
    call Call_000_1163                            ; $41F8: $CD $63 $11
    ld hl, $0000                                  ; $41FB: $21 $00 $00
    ld b, $06                                     ; $41FE: $06 $06
    ld de, $9750                                  ; $4200: $11 $50 $97
    call Call_000_1163                            ; $4203: $CD $63 $11
    ld hl, $4844                                  ; $4206: $21 $44 $48
    ld de, $C329                                  ; $4209: $11 $29 $C3
    call Call_000_124C                            ; $420C: $CD $4C $12
    ld a, [$D92E]                                 ; $420F: $FA $2E $D9
    call Call_02C_421C                            ; $4212: $CD $1C $42
    ld a, [$DA2E]                                 ; $4215: $FA $2E $DA
    call Call_02C_4253                            ; $4218: $CD $53 $42
    ret                                           ; $421B: $C9


Call_02C_421C:
    ld b, $00                                     ; $421C: $06 $00
    ld c, a                                       ; $421E: $4F
    ld hl, $42B6                                  ; $421F: $21 $B6 $42
    add hl, bc                                    ; $4222: $09
    ld e, [hl]                                    ; $4223: $5E
    inc hl                                        ; $4224: $23
    ld d, [hl]                                    ; $4225: $56
    push de                                       ; $4226: $D5
    pop hl                                        ; $4227: $E1
    ld b, [hl]                                    ; $4228: $46
    srl b                                         ; $4229: $CB $38
    inc hl                                        ; $422B: $23
    ld a, $06                                     ; $422C: $3E $06
    sub b                                         ; $422E: $90
    ld de, $96F0                                  ; $422F: $11 $F0 $96
    push hl                                       ; $4232: $E5
    sla a                                         ; $4233: $CB $27
    sla a                                         ; $4235: $CB $27
    sla a                                         ; $4237: $CB $27
    sla a                                         ; $4239: $CB $27
    ld h, $00                                     ; $423B: $26 $00
    ld l, a                                       ; $423D: $6F
    add hl, de                                    ; $423E: $19
    push hl                                       ; $423F: $E5
    pop de                                        ; $4240: $D1
    pop hl                                        ; $4241: $E1
    call Call_02C_4277                            ; $4242: $CD $77 $42
    ld de, $429E                                  ; $4245: $11 $9E $42
    ld hl, $9803                                  ; $4248: $21 $03 $98
    ld b, $06                                     ; $424B: $06 $06
    ld c, $01                                     ; $424D: $0E $01
    call Call_000_10C0                            ; $424F: $CD $C0 $10
    ret                                           ; $4252: $C9


Call_02C_4253:
    ld b, $00                                     ; $4253: $06 $00
    ld c, a                                       ; $4255: $4F
    ld hl, $42B6                                  ; $4256: $21 $B6 $42
    add hl, bc                                    ; $4259: $09
    ld e, [hl]                                    ; $425A: $5E
    inc hl                                        ; $425B: $23
    ld d, [hl]                                    ; $425C: $56
    push de                                       ; $425D: $D5
    pop hl                                        ; $425E: $E1
    ld a, [hl+]                                   ; $425F: $2A
    ld b, a                                       ; $4260: $47
    srl b                                         ; $4261: $CB $38
    ld de, $9750                                  ; $4263: $11 $50 $97
    call Call_02C_4277                            ; $4266: $CD $77 $42
    ld de, $42AA                                  ; $4269: $11 $AA $42
    ld hl, $980B                                  ; $426C: $21 $0B $98
    ld b, $06                                     ; $426F: $06 $06
    ld c, $01                                     ; $4271: $0E $01
    call Call_000_10C0                            ; $4273: $CD $C0 $10
    ret                                           ; $4276: $C9


Call_02C_4277:
Jump_02C_4277:
    push bc                                       ; $4277: $C5
    inc hl                                        ; $4278: $23
    ld a, [hl+]                                   ; $4279: $2A
    ld b, $00                                     ; $427A: $06 $00
    ld c, a                                       ; $427C: $4F
    sla c                                         ; $427D: $CB $21
    rl b                                          ; $427F: $CB $10
    sla c                                         ; $4281: $CB $21
    rl b                                          ; $4283: $CB $10
    sla c                                         ; $4285: $CB $21
    rl b                                          ; $4287: $CB $10
    sla c                                         ; $4289: $CB $21
    rl b                                          ; $428B: $CB $10
    push hl                                       ; $428D: $E5
    ld hl, $C329                                  ; $428E: $21 $29 $C3
    add hl, bc                                    ; $4291: $09
    ld b, $01                                     ; $4292: $06 $01
    call Call_000_1188                            ; $4294: $CD $88 $11
    pop hl                                        ; $4297: $E1
    pop bc                                        ; $4298: $C1
    dec b                                         ; $4299: $05
    jp nz, Jump_02C_4277                          ; $429A: $C2 $77 $42

    ret                                           ; $429D: $C9


    nop                                           ; $429E: $00
    ld l, a                                       ; $429F: $6F
    nop                                           ; $42A0: $00
    ld [hl], b                                    ; $42A1: $70
    nop                                           ; $42A2: $00
    ld [hl], c                                    ; $42A3: $71
    nop                                           ; $42A4: $00
    ld [hl], d                                    ; $42A5: $72
    nop                                           ; $42A6: $00
    ld [hl], e                                    ; $42A7: $73
    nop                                           ; $42A8: $00
    ld [hl], h                                    ; $42A9: $74
    nop                                           ; $42AA: $00
    ld [hl], l                                    ; $42AB: $75
    nop                                           ; $42AC: $00
    halt                                          ; $42AD: $76
    nop                                           ; $42AE: $00
    ld [hl], a                                    ; $42AF: $77
    nop                                           ; $42B0: $00
    ld a, b                                       ; $42B1: $78
    nop                                           ; $42B2: $00
    ld a, c                                       ; $42B3: $79
    nop                                           ; $42B4: $00
    ld a, d                                       ; $42B5: $7A
    ld e, [hl]                                    ; $42B6: $5E
    ld c, d                                       ; $42B7: $4A
    adc b                                         ; $42B8: $88
    ld c, d                                       ; $42B9: $4A
    ld l, e                                       ; $42BA: $6B
    ld c, d                                       ; $42BB: $4A
    sub l                                         ; $42BC: $95
    ld c, d                                       ; $42BD: $4A
    halt                                          ; $42BE: $76
    ld c, d                                       ; $42BF: $4A
    and d                                         ; $42C0: $A2
    ld c, d                                       ; $42C1: $4A
    ld a, a                                       ; $42C2: $7F
    ld c, d                                       ; $42C3: $4A
    xor a                                         ; $42C4: $AF
    ld c, d                                       ; $42C5: $4A
    cp d                                          ; $42C6: $BA
    ld c, d                                       ; $42C7: $4A

jr_02C_42C8:
    rst RST_00                                    ; $42C8: $C7
    ld c, d                                       ; $42C9: $4A
    ld h, $40                                     ; $42CA: $26 $40
    ld b, d                                       ; $42CC: $42
    nop                                           ; $42CD: $00
    nop                                           ; $42CE: $00
    jr @+$32                                      ; $42CF: $18 $30

    inc h                                         ; $42D1: $24
    ld a, b                                       ; $42D2: $78
    dec bc                                        ; $42D3: $0B
    jr c, jr_02C_42C8                             ; $42D4: $38 $F2

    ld c, b                                       ; $42D6: $48
    add hl, de                                    ; $42D7: $19
    ld l, c                                       ; $42D8: $69
    ld bc, $496D                                  ; $42D9: $01 $6D $49
    add hl, bc                                    ; $42DC: $09
    ld a, l                                       ; $42DD: $7D
    ld a, l                                       ; $42DE: $7D
    ld a, c                                       ; $42DF: $79
    ld [$082A], sp                                ; $42E0: $08 $2A $08
    ld [hl], e                                    ; $42E3: $73
    nop                                           ; $42E4: $00
    cp h                                          ; $42E5: $BC
    ret nz                                        ; $42E6: $C0

    sbc l                                         ; $42E7: $9D
    ld [$9810], sp                                ; $42E8: $08 $10 $98
    dec c                                         ; $42EB: $0D
    ld a, h                                       ; $42EC: $7C
    nop                                           ; $42ED: $00
    ld e, $08                                     ; $42EE: $1E $08
    ld [hl], l                                    ; $42F0: $75
    dec de                                        ; $42F1: $1B
    inc e                                         ; $42F2: $1C
    dec hl                                        ; $42F3: $2B
    inc bc                                        ; $42F4: $03
    ld a, b                                       ; $42F5: $78
    ld [$1A6C], sp                                ; $42F6: $08 $6C $1A
    ld l, [hl]                                    ; $42F9: $6E
    ld h, b                                       ; $42FA: $60
    inc c                                         ; $42FB: $0C
    ld b, $07                                     ; $42FC: $06 $07
    inc c                                         ; $42FE: $0C
    rlca                                          ; $42FF: $07
    ld bc, $EF77                                  ; $4300: $01 $77 $EF
    inc c                                         ; $4303: $0C
    rlca                                          ; $4304: $07
    pop de                                        ; $4305: $D1
    ld [hl], b                                    ; $4306: $70
    inc c                                         ; $4307: $0C
    add hl, sp                                    ; $4308: $39
    rst RST_30                                    ; $4309: $F7
    rrca                                          ; $430A: $0F
    rst RST_38                                    ; $430B: $FF
    db $E4                                        ; $430C: $E4
    ld bc, $0F38                                  ; $430D: $01 $38 $0F
    ld d, c                                       ; $4310: $51
    ldh [c], a                                    ; $4311: $E2
    rlca                                          ; $4312: $07
    inc b                                         ; $4313: $04
    db $DD                                        ; $4314: $DD
    ld a, c                                       ; $4315: $79
    inc bc                                        ; $4316: $03
    ld [hl], b                                    ; $4317: $70
    inc c                                         ; $4318: $0C
    rlca                                          ; $4319: $07
    ld d, c                                       ; $431A: $51
    rlca                                          ; $431B: $07
    inc c                                         ; $431C: $0C
    xor $95                                       ; $431D: $EE $95
    jr nz, jr_02C_4322                            ; $431F: $20 $01

    ld [hl], a                                    ; $4321: $77

jr_02C_4322:
    rrca                                          ; $4322: $0F
    ld d, c                                       ; $4323: $51
    ld a, c                                       ; $4324: $79
    ld de, $08AF                                  ; $4325: $11 $AF $08
    ld h, [hl]                                    ; $4328: $66
    ld [$0ACC], sp                                ; $4329: $08 $CC $0A
    add hl, hl                                    ; $432C: $29
    ld c, c                                       ; $432D: $49
    inc bc                                        ; $432E: $03
    xor e                                         ; $432F: $AB
    jr z, jr_02C_4333                             ; $4330: $28 $01

    ld c, b                                       ; $4332: $48

jr_02C_4333:
    ld b, $68                                     ; $4333: $06 $68
    inc c                                         ; $4335: $0C
    add hl, bc                                    ; $4336: $09
    add hl, hl                                    ; $4337: $29
    rst RST_38                                    ; $4338: $FF
    ld c, c                                       ; $4339: $49
    ld a, h                                       ; $433A: $7C
    nop                                           ; $433B: $00
    ld c, b                                       ; $433C: $48
    nop                                           ; $433D: $00
    ld l, b                                       ; $433E: $68
    ld [bc], a                                    ; $433F: $02
    add hl, hl                                    ; $4340: $29
    db $DD                                        ; $4341: $DD
    ld c, c                                       ; $4342: $49
    ld a, e                                       ; $4343: $7B
    adc b                                         ; $4344: $88
    ld [$0840], sp                                ; $4345: $08 $40 $08
    inc sp                                        ; $4348: $33
    ld a, [bc]                                    ; $4349: $0A
    ld [$4929], a                                 ; $434A: $EA $29 $49
    ld a, h                                       ; $434D: $7C
    add b                                         ; $434E: $80
    ld c, b                                       ; $434F: $48
    ld h, b                                       ; $4350: $60
    ld l, b                                       ; $4351: $68
    jr nc, @+$01                                  ; $4352: $30 $FF

    add hl, bc                                    ; $4354: $09
    add hl, hl                                    ; $4355: $29
    ld c, c                                       ; $4356: $49
    ld a, h                                       ; $4357: $7C
    nop                                           ; $4358: $00
    ld c, b                                       ; $4359: $48
    nop                                           ; $435A: $00
    ld l, b                                       ; $435B: $68
    db $F4                                        ; $435C: $F4
    ld [bc], a                                    ; $435D: $02
    add hl, hl                                    ; $435E: $29
    ld c, c                                       ; $435F: $49
    ld a, e                                       ; $4360: $7B
    inc a                                         ; $4361: $3C
    nop                                           ; $4362: $00
    ld e, [hl]                                    ; $4363: $5E
    ld b, [hl]                                    ; $4364: $46
    ld d, l                                       ; $4365: $55
    ld h, a                                       ; $4366: $67
    inc c                                         ; $4367: $0C
    ccf                                           ; $4368: $3F

Jump_02C_4369:
    ld c, b                                       ; $4369: $48
    ld e, $7A                                     ; $436A: $1E $7A
    jr jr_02C_436E                                ; $436C: $18 $00

jr_02C_436E:
    ld l, l                                       ; $436E: $6D
    inc e                                         ; $436F: $1C
    rrca                                          ; $4370: $0F
    ld [$FC0C], sp                                ; $4371: $08 $0C $FC
    xor b                                         ; $4374: $A8
    ld b, $C9                                     ; $4375: $06 $C9
    ld a, $7E                                     ; $4377: $3E $7E
    ld h, b                                       ; $4379: $60
    ld bc, $0018                                  ; $437A: $01 $18 $00
    jr c, jr_02C_43FD                             ; $437D: $38 $7E

    rrca                                          ; $437F: $0F
    add sp, -$40                                  ; $4380: $E8 $C0
    stop                                          ; $4382: $10 $00
    rlca                                          ; $4384: $07
    ld [$7C7F], sp                                ; $4385: $08 $7F $7C
    ld a, $BE                                     ; $4388: $3E $BE
    ld a, d                                       ; $438A: $7A
    ld l, h                                       ; $438B: $6C
    nop                                           ; $438C: $00
    or b                                          ; $438D: $B0
    add hl, bc                                    ; $438E: $09
    ret                                           ; $438F: $C9


    adc b                                         ; $4390: $88
    ld c, $F5                                     ; $4391: $0E $F5
    ld a, [bc]                                    ; $4393: $0A
    sub b                                         ; $4394: $90
    db $FC                                        ; $4395: $FC
    ld h, b                                       ; $4396: $60
    ld h, b                                       ; $4397: $60
    add hl, de                                    ; $4398: $19
    ld e, $FF                                     ; $4399: $1E $FF
    ldh a, [c]                                    ; $439B: $F2
    ld a, h                                       ; $439C: $7C
    ld b, b                                       ; $439D: $40
    nop                                           ; $439E: $00
    jr jr_02C_4407                                ; $439F: $18 $66

    ld [hl], a                                    ; $43A1: $77
    ld [$F93F], sp                                ; $43A2: $08 $3F $F9
    xor c                                         ; $43A5: $A9
    ld a, d                                       ; $43A6: $7A
    ld e, c                                       ; $43A7: $59
    xor b                                         ; $43A8: $A8
    ret z                                         ; $43A9: $C8

    rrca                                          ; $43AA: $0F
    inc c                                         ; $43AB: $0C
    ld c, b                                       ; $43AC: $48
    ccf                                           ; $43AD: $3F
    jr @+$1E                                      ; $43AE: $18 $1C

jr_02C_43B0:
    ld a, [bc]                                    ; $43B0: $0A
    jr nc, jr_02C_43B0                            ; $43B1: $30 $FD

    jp z, Jump_02C_7EFF                           ; $43B3: $CA $FF $7E

    add hl, bc                                    ; $43B6: $09
    ld a, $1F                                     ; $43B7: $3E $1F
    ld b, $07                                     ; $43B9: $06 $07
    ld [$7C7F], sp                                ; $43BB: $08 $7F $7C
    jr nc, @-$51                                  ; $43BE: $30 $AD

    ld a, d                                       ; $43C0: $7A
    cp $00                                        ; $43C1: $FE $00
    ret nz                                        ; $43C3: $C0

    ld [bc], a                                    ; $43C4: $02
    jr nc, @-$06                                  ; $43C5: $30 $F8

    ld [$22EF], sp                                ; $43C7: $08 $EF $22
    add hl, bc                                    ; $43CA: $09
    ld bc, $04C6                                  ; $43CB: $01 $C6 $04
    ld sp, $D942                                  ; $43CE: $31 $42 $D9
    rst RST_38                                    ; $43D1: $FF
    ld a, d                                       ; $43D2: $7A
    db $EB                                        ; $43D3: $EB
    call nc, Call_02C_7B22                        ; $43D4: $D4 $22 $7B
    cp $51                                        ; $43D7: $FE $51
    ld [hl+], a                                   ; $43D9: $22
    sub $09                                       ; $43DA: $D6 $09
    ld bc, $0266                                  ; $43DC: $01 $66 $02
    ld a, [hl]                                    ; $43DF: $7E
    nop                                           ; $43E0: $00
    jr nc, @+$1A                                  ; $43E1: $30 $18

    db $FD                                        ; $43E3: $FD
    add hl, bc                                    ; $43E4: $09
    ld [de], a                                    ; $43E5: $12
    ld a, d                                       ; $43E6: $7A
    ret nz                                        ; $43E7: $C0

    nop                                           ; $43E8: $00
    cp $C0                                        ; $43E9: $FE $C0
    nop                                           ; $43EB: $00
    rst RST_30                                    ; $43EC: $F7
    ld de, $417C                                  ; $43ED: $11 $7C $41
    ld d, d                                       ; $43F0: $52
    db $FC                                        ; $43F1: $FC
    ld a, e                                       ; $43F2: $7B
    and c                                         ; $43F3: $A1
    rst RST_38                                    ; $43F4: $FF
    push af                                       ; $43F5: $F5
    ld a, d                                       ; $43F6: $7A
    ld [hl+], a                                   ; $43F7: $22
    add hl, bc                                    ; $43F8: $09
    ld bc, $00E3                                  ; $43F9: $01 $E3 $00
    sub h                                         ; $43FC: $94

jr_02C_43FD:
    ld [bc], a                                    ; $43FD: $02
    ld e, d                                       ; $43FE: $5A
    rst RST_20                                    ; $43FF: $E7
    nop                                           ; $4400: $00
    add h                                         ; $4401: $84
    inc b                                         ; $4402: $04
    ld a, c                                       ; $4403: $79
    inc h                                         ; $4404: $24
    nop                                           ; $4405: $00
    and l                                         ; $4406: $A5

jr_02C_4407:
    xor l                                         ; $4407: $AD
    ld [bc], a                                    ; $4408: $02
    and h                                         ; $4409: $A4
    inc b                                         ; $440A: $04
    sbc c                                         ; $440B: $99
    nop                                           ; $440C: $00
    ld a, c                                       ; $440D: $79
    rst RST_28                                    ; $440E: $EF
    nop                                           ; $440F: $00
    ld d, l                                       ; $4410: $55
    ld [$CE02], sp                                ; $4411: $08 $02 $CE
    nop                                           ; $4414: $00
    jr z, jr_02C_4419                             ; $4415: $28 $02

    rst RST_08                                    ; $4417: $CF
    nop                                           ; $4418: $00

jr_02C_4419:
    rrca                                          ; $4419: $0F
    rst RST_38                                    ; $441A: $FF
    cp $81                                        ; $441B: $FE $81
    add b                                         ; $441D: $80
    rrca                                          ; $441E: $0F
    add hl, bc                                    ; $441F: $09
    ld l, b                                       ; $4420: $68
    add hl, bc                                    ; $4421: $09
    ldh a, [$FF79]                                ; $4422: $F0 $79
    rrca                                          ; $4424: $0F
    ld a, [bc]                                    ; $4425: $0A
    ld a, c                                       ; $4426: $79
    nop                                           ; $4427: $00
    nop                                           ; $4428: $00
    nop                                           ; $4429: $00
    ld b, d                                       ; $442A: $42
    ld h, e                                       ; $442B: $63
    inc h                                         ; $442C: $24
    ld [hl], $18                                  ; $442D: $36 $18
    inc e                                         ; $442F: $1C
    jr jr_02C_444E                                ; $4430: $18 $1C

    inc h                                         ; $4432: $24
    ld [hl], $42                                  ; $4433: $36 $42
    ld h, e                                       ; $4435: $63
    nop                                           ; $4436: $00
    nop                                           ; $4437: $00
    nop                                           ; $4438: $00
    nop                                           ; $4439: $00
    nop                                           ; $443A: $00
    inc e                                         ; $443B: $1C
    nop                                           ; $443C: $00
    ld e, l                                       ; $443D: $5D
    nop                                           ; $443E: $00
    ld a, a                                       ; $443F: $7F
    nop                                           ; $4440: $00
    ld [$3E00], sp                                ; $4441: $08 $00 $3E
    nop                                           ; $4444: $00
    ld h, e                                       ; $4445: $63
    nop                                           ; $4446: $00
    nop                                           ; $4447: $00
    dec a                                         ; $4448: $3D
    add b                                         ; $4449: $80
    ld a, e                                       ; $444A: $7B
    nop                                           ; $444B: $00
    inc bc                                        ; $444C: $03
    inc bc                                        ; $444D: $03

jr_02C_444E:
    inc bc                                        ; $444E: $03
    ld [bc], a                                    ; $444F: $02
    rst RST_38                                    ; $4450: $FF
    inc bc                                        ; $4451: $03
    inc bc                                        ; $4452: $03
    ld [$0303], a                                 ; $4453: $EA $03 $03
    nop                                           ; $4456: $00
    cp $00                                        ; $4457: $FE $00
    db $FC                                        ; $4459: $FC
    nop                                           ; $445A: $00
    ld hl, sp-$80                                 ; $445B: $F8 $80
    nop                                           ; $445D: $00
    pop af                                        ; $445E: $F1
    ldh a, [$FFE2]                                ; $445F: $F0 $E2
    ldh [$FFC4], a                                ; $4461: $E0 $C4
    ret nz                                        ; $4463: $C0

    adc c                                         ; $4464: $89
    ld a, l                                       ; $4465: $7D
    add b                                         ; $4466: $80
    adc a                                         ; $4467: $8F
    sub [hl]                                      ; $4468: $96
    inc de                                        ; $4469: $13
    rla                                           ; $446A: $17
    nop                                           ; $446B: $00
    ld [de], a                                    ; $446C: $12
    inc b                                         ; $446D: $04
    ld d, h                                       ; $446E: $54
    dec h                                         ; $446F: $25
    inc b                                         ; $4470: $04
    ld c, e                                       ; $4471: $4B
    inc b                                         ; $4472: $04
    sub a                                         ; $4473: $97
    inc b                                         ; $4474: $04
    inc l                                         ; $4475: $2C
    inc bc                                        ; $4476: $03
    inc bc                                        ; $4477: $03
    ld e, e                                       ; $4478: $5B
    inc b                                         ; $4479: $04
    or a                                          ; $447A: $B7
    ld [$136C], sp                                ; $447B: $08 $6C $13
    ld c, l                                       ; $447E: $4D
    rlca                                          ; $447F: $07
    push af                                       ; $4480: $F5
    add hl, bc                                    ; $4481: $09
    rla                                           ; $4482: $17
    dec hl                                        ; $4483: $2B
    ld bc, $007F                                  ; $4484: $01 $7F $00
    ccf                                           ; $4487: $3F
    nop                                           ; $4488: $00
    ld b, c                                       ; $4489: $41
    rra                                           ; $448A: $1F
    nop                                           ; $448B: $00
    adc a                                         ; $448C: $8F
    rrca                                          ; $448D: $0F
    ld b, a                                       ; $448E: $47
    rlca                                          ; $448F: $07
    inc hl                                        ; $4490: $23
    adc h                                         ; $4491: $8C
    dec d                                         ; $4492: $15
    sub c                                         ; $4493: $91
    ld bc, $4848                                  ; $4494: $01 $48 $48
    and h                                         ; $4497: $A4
    inc b                                         ; $4498: $04
    jp nc, $4004                                  ; $4499: $D2 $04 $40

    jp hl                                         ; $449C: $E9


    inc b                                         ; $449D: $04
    inc [hl]                                      ; $449E: $34
    ret nz                                        ; $449F: $C0

    jp c, $ED20                                   ; $44A0: $DA $20 $ED

    db $10                                        ; $44A3: $10
    ld [hl], $36                                  ; $44A4: $36 $36
    ret z                                         ; $44A6: $C8

    rst RST_38                                    ; $44A7: $FF
    db $FD                                        ; $44A8: $FD
    sub [hl]                                      ; $44A9: $96
    ld e, h                                       ; $44AA: $5C
    db $FD                                        ; $44AB: $FD
    ld e, c                                       ; $44AC: $59
    xor c                                         ; $44AD: $A9
    ld a, h                                       ; $44AE: $7C
    or e                                          ; $44AF: $B3
    adc h                                         ; $44B0: $8C
    ld h, a                                       ; $44B1: $67
    sbc h                                         ; $44B2: $9C
    sub d                                         ; $44B3: $92
    add b                                         ; $44B4: $80
    ld b, a                                       ; $44B5: $47
    push af                                       ; $44B6: $F5
    rlca                                          ; $44B7: $07
    dec b                                         ; $44B8: $05
    dec h                                         ; $44B9: $25
    dec [hl]                                      ; $44BA: $35
    rst RST_08                                    ; $44BB: $CF
    db $EC                                        ; $44BC: $EC
    sbc a                                         ; $44BD: $9F
    db $FC                                        ; $44BE: $FC
    call c, Call_000_1005                         ; $44BF: $DC $05 $10
    rst RST_38                                    ; $44C2: $FF
    dec b                                         ; $44C3: $05
    rra                                           ; $44C4: $1F
    dec [hl]                                      ; $44C5: $35
    ret c                                         ; $44C6: $D8

    daa                                           ; $44C7: $27
    ld c, $A3                                     ; $44C8: $0E $A3
    ld e, a                                       ; $44CA: $5F
    ld c, a                                       ; $44CB: $4F
    cp a                                          ; $44CC: $BF
    dec [hl]                                      ; $44CD: $35
    inc bc                                        ; $44CE: $03
    inc bc                                        ; $44CF: $03
    dec de                                        ; $44D0: $1B
    inc bc                                        ; $44D1: $03
    db $E4                                        ; $44D2: $E4
    push bc                                       ; $44D3: $C5
    ld a, [$FDF2]                                 ; $44D4: $FA $F2 $FD
    db $FC                                        ; $44D7: $FC
    dec hl                                        ; $44D8: $2B
    inc bc                                        ; $44D9: $03
    xor d                                         ; $44DA: $AA
    nop                                           ; $44DB: $00
    ld c, b                                       ; $44DC: $48
    call z, Call_000_04A4                         ; $44DD: $CC $A4 $04
    jp nc, Jump_02C_6904                          ; $44E0: $D2 $04 $69

    add b                                         ; $44E3: $80
    call c, $C034                                 ; $44E4: $DC $34 $C0
    sbc d                                         ; $44E7: $9A
    ldh [$FFCD], a                                ; $44E8: $E0 $CD
    ldh a, [$FFE6]                                ; $44EA: $F0 $E6
    daa                                           ; $44EC: $27
    ld hl, sp-$0D                                 ; $44ED: $F8 $F3
    ld l, b                                       ; $44EF: $68
    ld sp, hl                                     ; $44F0: $F9
    cp $05                                        ; $44F1: $FE $05
    ld a, l                                       ; $44F3: $7D
    dec b                                         ; $44F4: $05
    rst RST_08                                    ; $44F5: $CF
    rra                                           ; $44F6: $1F
    dec [hl]                                      ; $44F7: $35
    ld c, c                                       ; $44F8: $49
    ld bc, $0787                                  ; $44F9: $01 $87 $07
    dec b                                         ; $44FC: $05
    dec h                                         ; $44FD: $25
    xor d                                         ; $44FE: $AA
    dec [hl]                                      ; $44FF: $35
    adc c                                         ; $4500: $89
    and h                                         ; $4501: $A4
    call nz, $E2A4                                ; $4502: $C4 $A4 $E2
    and h                                         ; $4505: $A4
    pop af                                        ; $4506: $F1
    rst RST_38                                    ; $4507: $FF
    and h                                         ; $4508: $A4
    and b                                         ; $4509: $A0
    nop                                           ; $450A: $00
    ld l, b                                       ; $450B: $68
    nop                                           ; $450C: $00
    ld a, b                                       ; $450D: $78
    nop                                           ; $450E: $00
    db $FD                                        ; $450F: $FD
    nop                                           ; $4510: $00
    ld h, a                                       ; $4511: $67
    rra                                           ; $4512: $1F
    or e                                          ; $4513: $B3
    rrca                                          ; $4514: $0F
    ld e, c                                       ; $4515: $59
    rlca                                          ; $4516: $07
    inc l                                         ; $4517: $2C
    inc bc                                        ; $4518: $03
    ld d, l                                       ; $4519: $55
    sub [hl]                                      ; $451A: $96
    ld h, h                                       ; $451B: $64
    ld c, e                                       ; $451C: $4B
    ld [hl], h                                    ; $451D: $74
    dec h                                         ; $451E: $25
    inc b                                         ; $451F: $04
    ld [de], a                                    ; $4520: $12
    inc b                                         ; $4521: $04
    add sp, $45                                   ; $4522: $E8 $45
    inc bc                                        ; $4524: $03
    ld bc, $043F                                  ; $4525: $01 $3F $04
    ld c, a                                       ; $4528: $4F
    cp a                                          ; $4529: $BF
    and e                                         ; $452A: $A3
    nop                                           ; $452B: $00
    ld e, a                                       ; $452C: $5F
    ret c                                         ; $452D: $D8

    daa                                           ; $452E: $27
    ld l, h                                       ; $452F: $6C
    inc de                                        ; $4530: $13
    or a                                          ; $4531: $B7
    ld [$5F5B], sp                                ; $4532: $08 $5B $5F
    inc b                                         ; $4535: $04
    ld a, l                                       ; $4536: $7D
    sub a                                         ; $4537: $97
    ld h, h                                       ; $4538: $64
    ld a, a                                       ; $4539: $7F
    ld a, l                                       ; $453A: $7D
    add c                                         ; $453B: $81
    adc d                                         ; $453C: $8A
    ld a, [$1712]                                 ; $453D: $FA $12 $17
    rlca                                          ; $4540: $07
    xor a                                         ; $4541: $AF
    inc bc                                        ; $4542: $03
    db $FC                                        ; $4543: $FC
    inc b                                         ; $4544: $04
    ldh a, [c]                                    ; $4545: $F2
    nop                                           ; $4546: $00
    db $FD                                        ; $4547: $FD
    push bc                                       ; $4548: $C5
    ld a, [$E41B]                                 ; $4549: $FA $1B $E4
    ld [hl], $C8                                  ; $454C: $36 $C8
    db $ED                                        ; $454E: $ED
    ld [bc], a                                    ; $454F: $02
    db $10                                        ; $4550: $10
    jp c, Jump_000_3420                           ; $4551: $DA $20 $34

    ret nz                                        ; $4554: $C0

    jp hl                                         ; $4555: $E9


    ld h, h                                       ; $4556: $64
    jp nc, $04A8                                  ; $4557: $D2 $A8 $04

    and h                                         ; $455A: $A4
    inc b                                         ; $455B: $04
    ld c, b                                       ; $455C: $48
    inc b                                         ; $455D: $04
    and $F8                                       ; $455E: $E6 $F8
    call $F013                                    ; $4560: $CD $13 $F0
    sbc d                                         ; $4563: $9A
    ldh [$FF3D], a                                ; $4564: $E0 $3D
    ld l, c                                       ; $4566: $69
    add b                                         ; $4567: $80
    ccf                                           ; $4568: $3F
    dec a                                         ; $4569: $3D
    nop                                           ; $456A: $00
    sub c                                         ; $456B: $91
    ld bc, $0323                                  ; $456C: $01 $23 $03
    ld b, a                                       ; $456F: $47
    rlca                                          ; $4570: $07
    adc a                                         ; $4571: $8F
    rrca                                          ; $4572: $0F
    ld d, a                                       ; $4573: $57
    rra                                           ; $4574: $1F
    nop                                           ; $4575: $00
    ccf                                           ; $4576: $3F
    nop                                           ; $4577: $00
    ld a, a                                       ; $4578: $7F
    nop                                           ; $4579: $00
    db $DD                                        ; $457A: $DD
    ld b, b                                       ; $457B: $40
    rst RST_38                                    ; $457C: $FF
    nop                                           ; $457D: $00
    ld a, [bc]                                    ; $457E: $0A
    ld [bc], a                                    ; $457F: $02
    rla                                           ; $4580: $17
    inc bc                                        ; $4581: $03
    ld b, l                                       ; $4582: $45
    ld d, c                                       ; $4583: $51
    ld h, b                                       ; $4584: $60
    rst RST_38                                    ; $4585: $FF
    inc b                                         ; $4586: $04
    ld [hl], b                                    ; $4587: $70
    inc b                                         ; $4588: $04
    add b                                         ; $4589: $80
    inc b                                         ; $458A: $04
    sub b                                         ; $458B: $90
    inc b                                         ; $458C: $04
    and b                                         ; $458D: $A0
    rst RST_38                                    ; $458E: $FF
    inc b                                         ; $458F: $04
    or b                                          ; $4590: $B0
    ld e, c                                       ; $4591: $59
    rlca                                          ; $4592: $07
    rlca                                          ; $4593: $07
    rlca                                          ; $4594: $07
    ld b, $01                                     ; $4595: $06 $01
    ld d, l                                       ; $4597: $55
    cp $04                                        ; $4598: $FE $04
    db $FC                                        ; $459A: $FC
    inc b                                         ; $459B: $04
    ld hl, sp+$04                                 ; $459C: $F8 $04
    ldh a, [rDIV]                                 ; $459E: $F0 $04
    ld d, l                                       ; $45A0: $55
    ldh [rDIV], a                                 ; $45A1: $E0 $04
    ret nz                                        ; $45A3: $C0

    inc b                                         ; $45A4: $04
    add b                                         ; $45A5: $80
    ld b, $40                                     ; $45A6: $06 $40
    inc b                                         ; $45A8: $04
    ld d, l                                       ; $45A9: $55
    jr nz, @+$06                                  ; $45AA: $20 $04

    db $10                                        ; $45AC: $10
    inc b                                         ; $45AD: $04
    ld [$0404], sp                                ; $45AE: $08 $04 $04
    inc b                                         ; $45B1: $04
    ld d, l                                       ; $45B2: $55
    ld [bc], a                                    ; $45B3: $02
    cp [hl]                                       ; $45B4: $BE
    add c                                         ; $45B5: $81
    inc b                                         ; $45B6: $04
    pop bc                                        ; $45B7: $C1
    inc b                                         ; $45B8: $04
    pop hl                                        ; $45B9: $E1
    inc b                                         ; $45BA: $04
    ld d, a                                       ; $45BB: $57
    pop af                                        ; $45BC: $F1
    inc b                                         ; $45BD: $04
    ld sp, hl                                     ; $45BE: $F9
    inc b                                         ; $45BF: $04
    db $FD                                        ; $45C0: $FD
    xor [hl]                                      ; $45C1: $AE
    ld bc, $FF3D                                  ; $45C2: $01 $3D $FF
    rlca                                          ; $45C5: $07
    rlca                                          ; $45C6: $07
    rlca                                          ; $45C7: $07
    dec b                                         ; $45C8: $05
    add l                                         ; $45C9: $85
    sub l                                         ; $45CA: $95
    and l                                         ; $45CB: $A5
    or l                                          ; $45CC: $B5
    ld a, [$D5C5]                                 ; $45CD: $FA $C5 $D5
    push hl                                       ; $45D0: $E5
    push af                                       ; $45D1: $F5
    ld b, l                                       ; $45D2: $45
    add e                                         ; $45D3: $83
    inc b                                         ; $45D4: $04
    add a                                         ; $45D5: $87
    xor e                                         ; $45D6: $AB
    inc b                                         ; $45D7: $04
    adc a                                         ; $45D8: $8F
    inc b                                         ; $45D9: $04
    sbc a                                         ; $45DA: $9F
    inc b                                         ; $45DB: $04
    cp a                                          ; $45DC: $BF
    cp e                                          ; $45DD: $BB
    ld b, [hl]                                    ; $45DE: $46
    ld d, l                                       ; $45DF: $55
    ret nz                                        ; $45E0: $C0

    inc b                                         ; $45E1: $04
    ldh [rDIV], a                                 ; $45E2: $E0 $04
    ldh a, [rDIV]                                 ; $45E4: $F0 $04
    ld hl, sp+$04                                 ; $45E6: $F8 $04
    ld e, d                                       ; $45E8: $5A
    db $FC                                        ; $45E9: $FC
    inc b                                         ; $45EA: $04
    cp $3E                                        ; $45EB: $FE $3E
    cp l                                          ; $45ED: $BD
    inc bc                                        ; $45EE: $03
    inc b                                         ; $45EF: $04
    rlca                                          ; $45F0: $07
    xor d                                         ; $45F1: $AA
    inc b                                         ; $45F2: $04
    rrca                                          ; $45F3: $0F
    inc b                                         ; $45F4: $04
    rra                                           ; $45F5: $1F
    inc b                                         ; $45F6: $04
    ccf                                           ; $45F7: $3F
    inc b                                         ; $45F8: $04
    ld a, a                                       ; $45F9: $7F
    cp a                                          ; $45FA: $BF
    add e                                         ; $45FB: $83
    nop                                           ; $45FC: $00
    rlca                                          ; $45FD: $07
    rlca                                          ; $45FE: $07
    rlca                                          ; $45FF: $07
    ld b, $01                                     ; $4600: $06 $01
    ld e, c                                       ; $4602: $59
    db $FD                                        ; $4603: $FD
    ld l, c                                       ; $4604: $69
    ld a, c                                       ; $4605: $79
    adc c                                         ; $4606: $89
    sbc c                                         ; $4607: $99
    xor c                                         ; $4608: $A9
    cp c                                          ; $4609: $B9
    add b                                         ; $460A: $80
    inc b                                         ; $460B: $04
    ld d, l                                       ; $460C: $55
    ret nz                                        ; $460D: $C0

    inc b                                         ; $460E: $04
    ldh [rDIV], a                                 ; $460F: $E0 $04
    ldh a, [rDIV]                                 ; $4611: $F0 $04
    ld hl, sp+$04                                 ; $4613: $F8 $04
    ld e, a                                       ; $4615: $5F
    db $FC                                        ; $4616: $FC
    inc b                                         ; $4617: $04
    cp $C3                                        ; $4618: $FE $C3
    ld d, $25                                     ; $461A: $16 $25
    dec [hl]                                      ; $461C: $35
    ld b, l                                       ; $461D: $45
    rst RST_38                                    ; $461E: $FF
    ld d, l                                       ; $461F: $55
    ld h, l                                       ; $4620: $65
    ld [hl], l                                    ; $4621: $75
    add l                                         ; $4622: $85
    sub l                                         ; $4623: $95
    and l                                         ; $4624: $A5
    or l                                          ; $4625: $B5
    push bc                                       ; $4626: $C5
    push af                                       ; $4627: $F5
    push de                                       ; $4628: $D5
    push hl                                       ; $4629: $E5
    ld bc, $4045                                  ; $462A: $01 $45 $40
    inc b                                         ; $462D: $04
    jr nz, @+$06                                  ; $462E: $20 $04

    ld d, l                                       ; $4630: $55
    db $10                                        ; $4631: $10
    inc b                                         ; $4632: $04
    ld [$0404], sp                                ; $4633: $08 $04 $04
    inc b                                         ; $4636: $04
    ld [bc], a                                    ; $4637: $02
    halt                                          ; $4638: $76
    ld e, a                                       ; $4639: $5F
    nop                                           ; $463A: $00
    inc b                                         ; $463B: $04
    ld a, [hl]                                    ; $463C: $7E
    ld b, $15                                     ; $463D: $06 $15
    rra                                           ; $463F: $1F
    rra                                           ; $4640: $1F
    ld b, l                                       ; $4641: $45
    cp $55                                        ; $4642: $FE $55
    ld h, l                                       ; $4644: $65
    ld [hl], l                                    ; $4645: $75
    add l                                         ; $4646: $85
    sub l                                         ; $4647: $95
    and l                                         ; $4648: $A5
    or l                                          ; $4649: $B5
    add c                                         ; $464A: $81
    db $FD                                        ; $464B: $FD
    rlca                                          ; $464C: $07
    rlca                                          ; $464D: $07
    rlca                                          ; $464E: $07
    ld b, $85                                     ; $464F: $06 $85
    ld c, l                                       ; $4651: $4D
    ret nz                                        ; $4652: $C0

    inc b                                         ; $4653: $04
    ld d, l                                       ; $4654: $55
    ldh [rDIV], a                                 ; $4655: $E0 $04
    ldh a, [rDIV]                                 ; $4657: $F0 $04
    ld hl, sp+$04                                 ; $4659: $F8 $04
    db $FC                                        ; $465B: $FC
    inc b                                         ; $465C: $04
    ld l, d                                       ; $465D: $6A
    cp $C7                                        ; $465E: $FE $C7
    inc b                                         ; $4660: $04
    inc bc                                        ; $4661: $03
    inc b                                         ; $4662: $04
    rlca                                          ; $4663: $07
    inc b                                         ; $4664: $04
    rrca                                          ; $4665: $0F
    xor e                                         ; $4666: $AB
    inc b                                         ; $4667: $04
    rra                                           ; $4668: $1F
    inc b                                         ; $4669: $04
    ccf                                           ; $466A: $3F
    inc b                                         ; $466B: $04
    ld a, a                                       ; $466C: $7F
    jr c, jr_02C_4672                             ; $466D: $38 $03

    ldh [$FF03], a                                ; $466F: $E0 $03
    inc bc                                        ; $4671: $03

jr_02C_4672:
    ld [bc], a                                    ; $4672: $02
    nop                                           ; $4673: $00
    rlca                                          ; $4674: $07
    ld b, b                                       ; $4675: $40
    dec l                                         ; $4676: $2D
    inc bc                                        ; $4677: $03
    ld a, [de]                                    ; $4678: $1A
    ld [$0F01], sp                                ; $4679: $08 $01 $0F
    inc c                                         ; $467C: $0C
    inc e                                         ; $467D: $1C
    ld [$1B7F], sp                                ; $467E: $08 $7F $1B
    sbc a                                         ; $4681: $9F
    ld a, a                                       ; $4682: $7F
    inc c                                         ; $4683: $0C
    ld a, a                                       ; $4684: $7F
    add hl, bc                                    ; $4685: $09
    ld a, l                                       ; $4686: $7D
    add hl, bc                                    ; $4687: $09
    cp a                                          ; $4688: $BF
    rst RST_08                                    ; $4689: $CF
    ld a, [de]                                    ; $468A: $1A
    adc a                                         ; $468B: $8F
    rrca                                          ; $468C: $0F
    rrca                                          ; $468D: $0F
    rrca                                          ; $468E: $0F
    rrca                                          ; $468F: $0F
    ld [$1D55], sp                                ; $4690: $08 $55 $1D
    ld a, [de]                                    ; $4693: $1A
    ld a, [de]                                    ; $4694: $1A
    ld [$0801], sp                                ; $4695: $08 $01 $08
    rra                                           ; $4698: $1F
    ld a, [de]                                    ; $4699: $1A
    ld d, a                                       ; $469A: $57
    inc e                                         ; $469B: $1C
    ld e, d                                       ; $469C: $5A
    jr nz, jr_02C_46A7                            ; $469D: $20 $08

    ld e, $9E                                     ; $469F: $1E $9E
    adc c                                         ; $46A1: $89
    ld a, l                                       ; $46A2: $7D
    ld a, a                                       ; $46A3: $7F
    ld hl, $99CA                                  ; $46A4: $21 $CA $99

jr_02C_46A7:
    ld c, c                                       ; $46A7: $49
    rrca                                          ; $46A8: $0F
    ld a, e                                       ; $46A9: $7B
    dec bc                                        ; $46AA: $0B
    ld e, e                                       ; $46AB: $5B
    rst RST_10                                    ; $46AC: $D7
    cpl                                           ; $46AD: $2F
    dec c                                         ; $46AE: $0D
    ld [hl+], a                                   ; $46AF: $22
    adc [hl]                                      ; $46B0: $8E
    inc hl                                        ; $46B1: $23
    adc a                                         ; $46B2: $8F
    sbc h                                         ; $46B3: $9C
    add hl, de                                    ; $46B4: $19
    add b                                         ; $46B5: $80
    ld a, [hl]                                    ; $46B6: $7E
    nop                                           ; $46B7: $00
    ld [$2B40], sp                                ; $46B8: $08 $40 $2B
    inc bc                                        ; $46BB: $03

jr_02C_46BC:
    inc h                                         ; $46BC: $24
    ld [$0825], sp                                ; $46BD: $08 $25 $08
    ld bc, $080F                                  ; $46C0: $01 $0F $08
    ld l, [hl]                                    ; $46C3: $6E
    daa                                           ; $46C4: $27
    ld a, d                                       ; $46C5: $7A
    add hl, hl                                    ; $46C6: $29
    ld h, $3C                                     ; $46C7: $26 $3C
    dec bc                                        ; $46C9: $0B
    reti                                          ; $46CA: $D9


    jr z, jr_02C_46BC                             ; $46CB: $28 $EF

    cp h                                          ; $46CD: $BC
    add hl, sp                                    ; $46CE: $39
    ld l, e                                       ; $46CF: $6B
    ld a, [hl+]                                   ; $46D0: $2A
    inc l                                         ; $46D1: $2C
    reti                                          ; $46D2: $D9


    ld a, c                                       ; $46D3: $79
    ei                                            ; $46D4: $FB
    ld e, a                                       ; $46D5: $5F
    add hl, hl                                    ; $46D6: $29
    adc [hl]                                      ; $46D7: $8E
    dec hl                                        ; $46D8: $2B
    ld a, [de]                                    ; $46D9: $1A
    db $FD                                        ; $46DA: $FD
    sbc l                                         ; $46DB: $9D
    ld a, e                                       ; $46DC: $7B
    rrca                                          ; $46DD: $0F
    cp l                                          ; $46DE: $BD
    dec bc                                        ; $46DF: $0B
    inc l                                         ; $46E0: $2C
    ld c, a                                       ; $46E1: $4F
    rrca                                          ; $46E2: $0F
    adc a                                         ; $46E3: $8F
    ld a, [bc]                                    ; $46E4: $0A
    ld h, $2C                                     ; $46E5: $26 $2C
    ld d, l                                       ; $46E7: $55
    dec hl                                        ; $46E8: $2B
    ld a, [de]                                    ; $46E9: $1A
    add hl, hl                                    ; $46EA: $29
    ld c, h                                       ; $46EB: $4C
    jr z, jr_02C_46F6                             ; $46EC: $28 $08

    ld bc, $FD9A                                  ; $46EE: $01 $9A $FD
    ld a, e                                       ; $46F1: $7B
    dec bc                                        ; $46F2: $0B
    sbc c                                         ; $46F3: $99
    ld a, e                                       ; $46F4: $7B
    dec bc                                        ; $46F5: $0B

jr_02C_46F6:
    ld e, c                                       ; $46F6: $59
    dec l                                         ; $46F7: $2D
    ld a, [de]                                    ; $46F8: $1A
    ld l, a                                       ; $46F9: $6F
    ld l, $1A                                     ; $46FA: $2E $1A
    ld a, l                                       ; $46FC: $7D
    ld h, $CC                                     ; $46FD: $26 $CC
    ld l, e                                       ; $46FF: $6B
    ld c, l                                       ; $4700: $4D
    rrca                                          ; $4701: $0F
    ret nz                                        ; $4702: $C0

    rrca                                          ; $4703: $0F
    ld [$0A00], sp                                ; $4704: $08 $00 $0A
    nop                                           ; $4707: $00
    dec hl                                        ; $4708: $2B
    nop                                           ; $4709: $00
    ld bc, $0212                                  ; $470A: $01 $12 $02
    db $10                                        ; $470D: $10
    inc bc                                        ; $470E: $03
    rra                                           ; $470F: $1F
    ld e, $55                                     ; $4710: $1E $55
    ld b, $10                                     ; $4712: $06 $10
    ld bc, $0214                                  ; $4714: $01 $14 $02
    db $10                                        ; $4717: $10
    inc b                                         ; $4718: $04
    db $10                                        ; $4719: $10
    ld l, d                                       ; $471A: $6A
    dec b                                         ; $471B: $05
    rra                                           ; $471C: $1F
    ld e, $07                                     ; $471D: $1E $07
    db $10                                        ; $471F: $10
    ld b, $10                                     ; $4720: $06 $10
    ld bc, $10AB                                  ; $4722: $01 $AB $10
    ld [bc], a                                    ; $4725: $02
    db $10                                        ; $4726: $10
    ld [$0B10], sp                                ; $4727: $08 $10 $0B
    ld [hl], d                                    ; $472A: $72
    rra                                           ; $472B: $1F
    xor d                                         ; $472C: $AA
    dec e                                         ; $472D: $1D
    inc c                                         ; $472E: $0C
    db $10                                        ; $472F: $10
    dec c                                         ; $4730: $0D
    db $10                                        ; $4731: $10
    ld b, $10                                     ; $4732: $06 $10
    add hl, bc                                    ; $4734: $09
    cp d                                          ; $4735: $BA
    db $10                                        ; $4736: $10
    ld a, [bc]                                    ; $4737: $0A
    or $1F                                        ; $4738: $F6 $1F
    dec e                                         ; $473A: $1D
    ld c, $10                                     ; $473B: $0E $10
    rrca                                          ; $473D: $0F
    xor e                                         ; $473E: $AB
    db $10                                        ; $473F: $10
    db $10                                        ; $4740: $10
    db $10                                        ; $4741: $10
    ld de, $1210                                  ; $4742: $11 $10 $12
    or $1F                                        ; $4745: $F6 $1F
    xor d                                         ; $4747: $AA
    add hl, de                                    ; $4748: $19
    dec d                                         ; $4749: $15
    db $10                                        ; $474A: $10
    rla                                           ; $474B: $17
    db $10                                        ; $474C: $10
    jr jr_02C_47C1                                ; $474D: $18 $72

    db $10                                        ; $474F: $10
    xor l                                         ; $4750: $AD
    db $10                                        ; $4751: $10
    inc de                                        ; $4752: $13
    db $10                                        ; $4753: $10
    inc d                                         ; $4754: $14
    rra                                           ; $4755: $1F
    ld e, $16                                     ; $4756: $1E $16
    db $10                                        ; $4758: $10
    ld d, l                                       ; $4759: $55
    jr jr_02C_476C                                ; $475A: $18 $10

    ld bc, $1014                                  ; $475C: $01 $14 $10
    db $10                                        ; $475F: $10
    add hl, de                                    ; $4760: $19
    rra                                           ; $4761: $1F
    xor b                                         ; $4762: $A8
    ld e, $18                                     ; $4763: $1E $18
    db $10                                        ; $4765: $10
    ld bc, $0011                                  ; $4766: $01 $11 $00
    ld bc, $0200                                  ; $4769: $01 $00 $02

jr_02C_476C:
    nop                                           ; $476C: $00
    inc bc                                        ; $476D: $03
    nop                                           ; $476E: $00
    inc bc                                        ; $476F: $03
    nop                                           ; $4770: $00
    inc bc                                        ; $4771: $03
    nop                                           ; $4772: $00
    inc bc                                        ; $4773: $03
    nop                                           ; $4774: $00
    inc bc                                        ; $4775: $03
    nop                                           ; $4776: $00
    inc bc                                        ; $4777: $03
    nop                                           ; $4778: $00
    inc bc                                        ; $4779: $03
    nop                                           ; $477A: $00
    inc bc                                        ; $477B: $03
    nop                                           ; $477C: $00
    inc bc                                        ; $477D: $03
    nop                                           ; $477E: $00
    inc bc                                        ; $477F: $03
    nop                                           ; $4780: $00
    inc bc                                        ; $4781: $03
    nop                                           ; $4782: $00
    inc bc                                        ; $4783: $03
    nop                                           ; $4784: $00
    inc bc                                        ; $4785: $03
    nop                                           ; $4786: $00
    inc bc                                        ; $4787: $03
    nop                                           ; $4788: $00
    inc bc                                        ; $4789: $03
    nop                                           ; $478A: $00
    inc bc                                        ; $478B: $03
    nop                                           ; $478C: $00
    inc bc                                        ; $478D: $03
    nop                                           ; $478E: $00
    inc bc                                        ; $478F: $03
    nop                                           ; $4790: $00
    ld b, $00                                     ; $4791: $06 $00
    ld bc, $0200                                  ; $4793: $01 $00 $02
    nop                                           ; $4796: $00
    inc b                                         ; $4797: $04
    nop                                           ; $4798: $00
    dec b                                         ; $4799: $05
    nop                                           ; $479A: $00
    dec b                                         ; $479B: $05
    nop                                           ; $479C: $00
    dec b                                         ; $479D: $05
    nop                                           ; $479E: $00
    dec b                                         ; $479F: $05
    nop                                           ; $47A0: $00
    dec b                                         ; $47A1: $05
    nop                                           ; $47A2: $00
    dec b                                         ; $47A3: $05
    nop                                           ; $47A4: $00
    dec b                                         ; $47A5: $05
    nop                                           ; $47A6: $00
    dec b                                         ; $47A7: $05
    nop                                           ; $47A8: $00
    dec b                                         ; $47A9: $05
    nop                                           ; $47AA: $00
    dec b                                         ; $47AB: $05
    nop                                           ; $47AC: $00
    dec b                                         ; $47AD: $05
    nop                                           ; $47AE: $00
    dec b                                         ; $47AF: $05
    nop                                           ; $47B0: $00
    dec b                                         ; $47B1: $05
    nop                                           ; $47B2: $00
    dec b                                         ; $47B3: $05
    nop                                           ; $47B4: $00
    dec b                                         ; $47B5: $05
    nop                                           ; $47B6: $00
    dec b                                         ; $47B7: $05
    nop                                           ; $47B8: $00
    dec b                                         ; $47B9: $05
    nop                                           ; $47BA: $00
    dec b                                         ; $47BB: $05
    nop                                           ; $47BC: $00
    rlca                                          ; $47BD: $07
    nop                                           ; $47BE: $00
    ld b, $00                                     ; $47BF: $06 $00

jr_02C_47C1:
    add hl, bc                                    ; $47C1: $09
    nop                                           ; $47C2: $00
    ld a, [bc]                                    ; $47C3: $0A
    nop                                           ; $47C4: $00
    ld bc, $0100                                  ; $47C5: $01 $00 $01
    nop                                           ; $47C8: $00
    ld bc, $0100                                  ; $47C9: $01 $00 $01
    nop                                           ; $47CC: $00
    ld bc, $0100                                  ; $47CD: $01 $00 $01
    nop                                           ; $47D0: $00
    ld bc, $0100                                  ; $47D1: $01 $00 $01
    nop                                           ; $47D4: $00
    ld bc, $0100                                  ; $47D5: $01 $00 $01
    nop                                           ; $47D8: $00
    ld bc, $0100                                  ; $47D9: $01 $00 $01
    nop                                           ; $47DC: $00
    ld bc, $0100                                  ; $47DD: $01 $00 $01
    nop                                           ; $47E0: $00
    ld bc, $0100                                  ; $47E1: $01 $00 $01
    nop                                           ; $47E4: $00
    ld bc, $0100                                  ; $47E5: $01 $00 $01
    nop                                           ; $47E8: $00
    ld c, $00                                     ; $47E9: $0E $00
    rrca                                          ; $47EB: $0F
    nop                                           ; $47EC: $00
    stop                                          ; $47ED: $10 $00
    inc de                                        ; $47EF: $13
    nop                                           ; $47F0: $00
    inc d                                         ; $47F1: $14
    nop                                           ; $47F2: $00
    inc d                                         ; $47F3: $14
    nop                                           ; $47F4: $00
    inc d                                         ; $47F5: $14
    nop                                           ; $47F6: $00
    inc d                                         ; $47F7: $14
    nop                                           ; $47F8: $00
    inc d                                         ; $47F9: $14
    nop                                           ; $47FA: $00
    inc d                                         ; $47FB: $14
    nop                                           ; $47FC: $00
    inc d                                         ; $47FD: $14
    nop                                           ; $47FE: $00
    inc d                                         ; $47FF: $14
    nop                                           ; $4800: $00
    inc d                                         ; $4801: $14
    nop                                           ; $4802: $00
    inc d                                         ; $4803: $14
    nop                                           ; $4804: $00
    inc d                                         ; $4805: $14
    nop                                           ; $4806: $00
    inc d                                         ; $4807: $14
    nop                                           ; $4808: $00
    inc d                                         ; $4809: $14
    nop                                           ; $480A: $00
    inc d                                         ; $480B: $14
    nop                                           ; $480C: $00
    inc d                                         ; $480D: $14

jr_02C_480E:
    nop                                           ; $480E: $00
    inc d                                         ; $480F: $14
    nop                                           ; $4810: $00
    inc d                                         ; $4811: $14
    nop                                           ; $4812: $00
    inc d                                         ; $4813: $14
    nop                                           ; $4814: $00
    ld d, $00                                     ; $4815: $16 $00
    jr jr_02C_4819                                ; $4817: $18 $00

jr_02C_4819:
    ld bc, $1000                                  ; $4819: $01 $00 $10
    nop                                           ; $481C: $00
    add hl, de                                    ; $481D: $19
    nop                                           ; $481E: $00
    add hl, de                                    ; $481F: $19
    nop                                           ; $4820: $00
    add hl, de                                    ; $4821: $19
    nop                                           ; $4822: $00
    add hl, de                                    ; $4823: $19
    nop                                           ; $4824: $00
    add hl, de                                    ; $4825: $19
    nop                                           ; $4826: $00
    add hl, de                                    ; $4827: $19
    nop                                           ; $4828: $00
    add hl, de                                    ; $4829: $19
    nop                                           ; $482A: $00
    add hl, de                                    ; $482B: $19
    nop                                           ; $482C: $00
    add hl, de                                    ; $482D: $19
    nop                                           ; $482E: $00
    add hl, de                                    ; $482F: $19
    nop                                           ; $4830: $00
    add hl, de                                    ; $4831: $19
    nop                                           ; $4832: $00
    add hl, de                                    ; $4833: $19
    nop                                           ; $4834: $00
    add hl, de                                    ; $4835: $19
    nop                                           ; $4836: $00
    add hl, de                                    ; $4837: $19
    nop                                           ; $4838: $00
    add hl, de                                    ; $4839: $19
    nop                                           ; $483A: $00
    add hl, de                                    ; $483B: $19
    nop                                           ; $483C: $00
    add hl, de                                    ; $483D: $19
    nop                                           ; $483E: $00
    add hl, de                                    ; $483F: $19
    nop                                           ; $4840: $00

jr_02C_4841:
    jr jr_02C_4843                                ; $4841: $18 $00

jr_02C_4843:
    ld bc, $403B                                  ; $4843: $01 $3B $40
    halt                                          ; $4846: $76
    nop                                           ; $4847: $00
    rlca                                          ; $4848: $07
    rlca                                          ; $4849: $07
    nop                                           ; $484A: $00
    db $FC                                        ; $484B: $FC
    nop                                           ; $484C: $00
    ld [hl+], a                                   ; $484D: $22
    db $FD                                        ; $484E: $FD
    xor d                                         ; $484F: $AA
    ld [$090C], sp                                ; $4850: $08 $0C $09
    inc e                                         ; $4853: $1C
    db $10                                        ; $4854: $10
    ld hl, sp+$52                                 ; $4855: $F8 $52
    jr jr_02C_480E                                ; $4857: $18 $B5

    nop                                           ; $4859: $00
    ld [hl], e                                    ; $485A: $73
    nop                                           ; $485B: $00
    jr nz, jr_02C_4841                            ; $485C: $20 $E3

    ld [$0860], sp                                ; $485E: $08 $60 $08
    ld a, [hl+]                                   ; $4861: $2A
    ld h, c                                       ; $4862: $61
    ld h, e                                       ; $4863: $63
    db $10                                        ; $4864: $10
    ld h, [hl]                                    ; $4865: $66
    ld a, d                                       ; $4866: $7A
    ld h, a                                       ; $4867: $67
    nop                                           ; $4868: $00
    ldh a, [$FFEF]                                ; $4869: $F0 $EF
    nop                                           ; $486B: $00
    jr nz, jr_02C_4877                            ; $486C: $20 $09

    ldh [$FF09], a                                ; $486E: $E0 $09
    sub c                                         ; $4870: $91
    ld d, b                                       ; $4871: $50
    ld a, d                                       ; $4872: $7A
    ld e, l                                       ; $4873: $5D
    db $DD                                        ; $4874: $DD
    nop                                           ; $4875: $00
    pop bc                                        ; $4876: $C1

jr_02C_4877:
    nop                                           ; $4877: $00
    jr nz, @+$0E                                  ; $4878: $20 $0C

    jp Jump_02C_5710                              ; $487A: $C3 $10 $57


    rst RST_18                                    ; $487D: $DF
    ld a, d                                       ; $487E: $7A
    add [hl]                                      ; $487F: $86
    nop                                           ; $4880: $00
    sbc a                                         ; $4881: $9F
    nop                                           ; $4882: $00
    jr nz, jr_02C_488E                            ; $4883: $20 $09

    jp z, $0828                                   ; $4885: $CA $28 $08

    sub [hl]                                      ; $4888: $96
    or [hl]                                       ; $4889: $B6
    db $10                                        ; $488A: $10
    ld h, $08                                     ; $488B: $26 $08
    and b                                         ; $488D: $A0

jr_02C_488E:
    xor l                                         ; $488E: $AD
    nop                                           ; $488F: $00
    and e                                         ; $4890: $A3
    nop                                           ; $4891: $00
    adc [hl]                                      ; $4892: $8E
    nop                                           ; $4893: $00
    jr nc, @-$42                                  ; $4894: $30 $BC

    ld [$0C4A], sp                                ; $4896: $08 $4A $0C
    ld [$CC8C], sp                                ; $4899: $08 $8C $CC
    db $10                                        ; $489C: $10
    ld c, h                                       ; $489D: $4C
    ld a, [$D735]                                 ; $489E: $FA $35 $D7
    ld [bc], a                                    ; $48A1: $02

jr_02C_48A2:
    jr nz, jr_02C_48A2                            ; $48A2: $20 $FE

    ld [$0936], sp                                ; $48A4: $08 $36 $09
    ld [de], a                                    ; $48A7: $12
    ld a, d                                       ; $48A8: $7A
    ld [hl], l                                    ; $48A9: $75
    ld l, h                                       ; $48AA: $6C
    ld [bc], a                                    ; $48AB: $02
    ld hl, $CF0B                                  ; $48AC: $21 $0B $CF
    db $10                                        ; $48AF: $10
    adc $7A                                       ; $48B0: $CE $7A
    rst RST_10                                    ; $48B2: $D7
    or c                                          ; $48B3: $B1
    call nz, Call_000_0933                        ; $48B4: $C4 $33 $09
    ld h, c                                       ; $48B7: $61
    db $10                                        ; $48B8: $10
    add hl, bc                                    ; $48B9: $09
    ld bc, $AC6A                                  ; $48BA: $01 $6A $AC
    ld [bc], a                                    ; $48BD: $02
    jr nz, @+$10                                  ; $48BE: $20 $0E

jr_02C_48C0:
    ld [$080F], sp                                ; $48C0: $08 $0F $08
    dec c                                         ; $48C3: $0D
    ld [hl], a                                    ; $48C4: $77
    adc h                                         ; $48C5: $8C
    db $10                                        ; $48C6: $10
    add hl, bc                                    ; $48C7: $09
    ld bc, $003F                                  ; $48C8: $01 $3F $00
    ret nz                                        ; $48CB: $C0

    jp c, Jump_000_08BD                           ; $48CC: $DA $BD $08

    or e                                          ; $48CF: $B3
    add hl, bc                                    ; $48D0: $09
    ld hl, $7A50                                  ; $48D1: $21 $50 $7A
    ld b, $00                                     ; $48D4: $06 $00
    ld [hl], l                                    ; $48D6: $75
    halt                                          ; $48D7: $76
    nop                                           ; $48D8: $00
    ld hl, $0E0B                                  ; $48D9: $21 $0B $0E
    db $10                                        ; $48DC: $10
    ld a, h                                       ; $48DD: $7C
    ld a, d                                       ; $48DE: $7A
    ld e, d                                       ; $48DF: $5A
    db $FC                                        ; $48E0: $FC
    nop                                           ; $48E1: $00
    inc c                                         ; $48E2: $0C
    nop                                           ; $48E3: $00
    jr nz, @+$1A                                  ; $48E4: $20 $18

    ld a, [bc]                                    ; $48E6: $0A
    jr c, jr_02C_493E                             ; $48E7: $38 $55

    ld l, h                                       ; $48E9: $6C
    db $10                                        ; $48EA: $10
    add $7A                                       ; $48EB: $C6 $7A
    ld a, $00                                     ; $48ED: $3E $00
    ld h, [hl]                                    ; $48EF: $66
    nop                                           ; $48F0: $00
    or l                                          ; $48F1: $B5
    jr nz, jr_02C_48C0                            ; $48F2: $20 $CC

    ld [$309A], sp                                ; $48F4: $08 $9A $30
    db $10                                        ; $48F7: $10
    ldh [$FF7A], a                                ; $48F8: $E0 $7A
    xor l                                         ; $48FA: $AD
    ld b, $FC                                     ; $48FB: $06 $FC
    ld de, $0A01                                  ; $48FD: $11 $01 $0A

Call_02C_4900:
    ld bc, $0002                                  ; $4900: $01 $02 $00
    ld l, d                                       ; $4903: $6A
    jp c, $2000                                   ; $4904: $DA $00 $20

    ret c                                         ; $4907: $D8

    ld [$09CC], sp                                ; $4908: $08 $CC $09
    add [hl]                                      ; $490B: $86
    rst RST_28                                    ; $490C: $EF
    db $10                                        ; $490D: $10
    add hl, bc                                    ; $490E: $09
    ld bc, $0280                                  ; $490F: $01 $80 $02
    ld [hl-], a                                   ; $4912: $32
    rlca                                          ; $4913: $07
    nop                                           ; $4914: $00
    ld [hl], l                                    ; $4915: $75
    inc c                                         ; $4916: $0C
    nop                                           ; $4917: $00
    ret nz                                        ; $4918: $C0

    reti                                          ; $4919: $D9


    ld a, c                                       ; $491A: $79
    ld [$0938], sp                                ; $491B: $08 $38 $09
    ld d, [hl]                                    ; $491E: $56
    ld l, h                                       ; $491F: $6C
    db $10                                        ; $4920: $10
    add $7A                                       ; $4921: $C6 $7A

jr_02C_4923:
    ld l, d                                       ; $4923: $6A
    ld [bc], a                                    ; $4924: $02
    jr nz, jr_02C_4923                            ; $4925: $20 $FC

    ei                                            ; $4927: $FB
    ld [$0861], sp                                ; $4928: $08 $61 $08
    ld [de], a                                    ; $492B: $12
    ld a, d                                       ; $492C: $7A
    ret nz                                        ; $492D: $C0

    ld [bc], a                                    ; $492E: $02
    jr nz, jr_02C_4988                            ; $492F: $20 $57

    ldh [$FF08], a                                ; $4931: $E0 $08
    ei                                            ; $4933: $FB
    ld [$31D8], sp                                ; $4934: $08 $D8 $31
    add hl, bc                                    ; $4937: $09
    ld bc, $016A                                  ; $4938: $01 $6A $01
    ld [bc], a                                    ; $493B: $02
    jr nz, jr_02C_4941                            ; $493C: $20 $03

jr_02C_493E:
    ld [$08F3], sp                                ; $493E: $08 $F3 $08

jr_02C_4941:
    ld b, $D6                                     ; $4941: $06 $D6
    nop                                           ; $4943: $00
    db $10                                        ; $4944: $10
    rrca                                          ; $4945: $0F
    ld a, d                                       ; $4946: $7A
    add b                                         ; $4947: $80
    ld [bc], a                                    ; $4948: $02
    ld [hl-], a                                   ; $4949: $32
    jr nc, @-$54                                  ; $494A: $30 $AA

    add hl, bc                                    ; $494C: $09
    ld a, b                                       ; $494D: $78
    db $10                                        ; $494E: $10
    sbc b                                         ; $494F: $98
    ld b, d                                       ; $4950: $42
    ld c, $00                                     ; $4951: $0E $00
    inc a                                         ; $4953: $3C
    rst RST_10                                    ; $4954: $D7
    nop                                           ; $4955: $00
    jr nz, jr_02C_4964                            ; $4956: $20 $0C

    ld [$19FF], sp                                ; $4958: $08 $FF $19
    ld hl, $D589                                  ; $495B: $21 $89 $D5
    rlca                                          ; $495E: $07
    nop                                           ; $495F: $00

jr_02C_4960:
    ld a, [hl]                                    ; $4960: $7E
    ld b, a                                       ; $4961: $47
    rra                                           ; $4962: $1F
    nop                                           ; $4963: $00

jr_02C_4964:
    inc sp                                        ; $4964: $33
    nop                                           ; $4965: $00
    xor d                                         ; $4966: $AA
    jr nz, jr_02C_49DF                            ; $4967: $20 $76

    ld [$F91E], sp                                ; $4969: $08 $1E $F9
    jr jr_02C_497E                                ; $496C: $18 $10

    ld [hl], b                                    ; $496E: $70
    call c, Call_000_00C3                         ; $496F: $DC $C3 $00
    ld b, $00                                     ; $4972: $06 $00
    ld e, c                                       ; $4974: $59
    ld a, [bc]                                    ; $4975: $0A
    inc e                                         ; $4976: $1C
    ld [hl], $AB                                  ; $4977: $36 $AB
    db $10                                        ; $4979: $10
    ld h, e                                       ; $497A: $63
    ld a, d                                       ; $497B: $7A
    inc bc                                        ; $497C: $03
    nop                                           ; $497D: $00

jr_02C_497E:
    ld c, $00                                     ; $497E: $0E $00
    jr nz, jr_02C_49F9                            ; $4980: $20 $77

    ld a, h                                       ; $4982: $7C
    adc e                                         ; $4983: $8B
    and e                                         ; $4984: $A3
    ld bc, $003E                                  ; $4985: $01 $3E $00

jr_02C_4988:
    cp b                                          ; $4988: $B8
    pop bc                                        ; $4989: $C1
    ld e, d                                       ; $498A: $5A
    ld h, [hl]                                    ; $498B: $66
    ld [$617E], sp                                ; $498C: $08 $7E $61
    and c                                         ; $498F: $A1
    ld a, b                                       ; $4990: $78
    ld a, d                                       ; $4991: $7A
    and c                                         ; $4992: $A1
    sub $02                                       ; $4993: $D6 $02
    jr nz, jr_02C_4998                            ; $4995: $20 $01

    ld a, [bc]                                    ; $4997: $0A

jr_02C_4998:
    db $FD                                        ; $4998: $FD
    inc hl                                        ; $4999: $23
    ld bc, $D580                                  ; $499A: $01 $80 $D5
    ld [bc], a                                    ; $499D: $02
    jr nz, jr_02C_4960                            ; $499E: $20 $C0

    ld [$08F0], sp                                ; $49A0: $08 $F0 $08
    or b                                          ; $49A3: $B0
    ld sp, $09D7                                  ; $49A4: $31 $D7 $09
    ld bc, $00FC                                  ; $49A7: $01 $FC $00
    inc c                                         ; $49AA: $0C
    nop                                           ; $49AB: $00
    jr nz, @+$0E                                  ; $49AC: $20 $0C

    db $ED                                        ; $49AE: $ED
    ld de, $7A50                                  ; $49AF: $11 $50 $7A
    db $EC                                        ; $49B2: $EC
    nop                                           ; $49B3: $00
    ld a, a                                       ; $49B4: $7F
    dec e                                         ; $49B5: $1D
    db $10                                        ; $49B6: $10
    ld d, a                                       ; $49B7: $57
    ld sp, hl                                     ; $49B8: $F9
    ld [$0005], sp                                ; $49B9: $08 $05 $00
    dec [hl]                                      ; $49BC: $35
    nop                                           ; $49BD: $00
    xor b                                         ; $49BE: $A8
    or c                                          ; $49BF: $B1
    ld c, d                                       ; $49C0: $4A
    jr nc, jr_02C_49CD                            ; $49C1: $30 $0A

    or h                                          ; $49C3: $B4
    or [hl]                                       ; $49C4: $B6
    db $10                                        ; $49C5: $10
    ld [hl-], a                                   ; $49C6: $32

jr_02C_49C7:
    ld a, [$B506]                                 ; $49C7: $FA $06 $B5
    nop                                           ; $49CA: $00
    ld e, $00                                     ; $49CB: $1E $00

jr_02C_49CD:
    jr nz, jr_02C_49C7                            ; $49CD: $20 $F8

    ld a, [bc]                                    ; $49CF: $0A
    jr jr_02C_49D2                                ; $49D0: $18 $00

jr_02C_49D2:
    jp c, Jump_02C_7A11                           ; $49D2: $DA $11 $7A

    jp $2002                                      ; $49D5: $C3 $02 $20


    db $E3                                        ; $49D8: $E3
    ld [$BAFB], sp                                ; $49D9: $08 $FB $BA
    ld [$31DB], sp                                ; $49DC: $08 $DB $31

jr_02C_49DF:
    add hl, bc                                    ; $49DF: $09
    ld bc, $00F0                                  ; $49E0: $01 $F0 $00
    scf                                           ; $49E3: $37
    jp c, $2000                                   ; $49E4: $DA $00 $20

    jr nc, jr_02C_49F4                            ; $49E7: $30 $0B

    ld de, $7AF7                                  ; $49E9: $11 $F7 $7A
    ld h, b                                       ; $49EC: $60
    ld [$2102], a                                 ; $49ED: $EA $02 $21
    dec bc                                        ; $49F0: $0B
    ldh [rNR10], a                                ; $49F1: $E0 $10
    ret nz                                        ; $49F3: $C0

jr_02C_49F4:
    ld a, d                                       ; $49F4: $7A
    rra                                           ; $49F5: $1F
    db $DD                                        ; $49F6: $DD
    nop                                           ; $49F7: $00

jr_02C_49F8:
    ld [hl+], a                                   ; $49F8: $22

jr_02C_49F9:
    ld b, $D2                                     ; $49F9: $06 $D2
    jr @+$23                                      ; $49FB: $18 $21

    inc c                                         ; $49FD: $0C
    ld d, d                                       ; $49FE: $52
    db $DD                                        ; $49FF: $DD
    sbc b                                         ; $4A00: $98
    nop                                           ; $4A01: $00
    push de                                       ; $4A02: $D5
    nop                                           ; $4A03: $00
    jr nz, jr_02C_4A0F                            ; $4A04: $20 $09

    sub l                                         ; $4A06: $95
    ld [$0136], sp                                ; $4A07: $08 $36 $01
    inc bc                                        ; $4A0A: $03
    reti                                          ; $4A0B: $D9


    ld a, d                                       ; $4A0C: $7A
    cp $00                                        ; $4A0D: $FE $00

jr_02C_4A0F:
    jp nz, $A536                                  ; $4A0F: $C2 $36 $A5

    ld [$083C], sp                                ; $4A12: $08 $3C $08

jr_02C_4A15:
    jr nc, jr_02C_4A48                            ; $4A15: $30 $31

    db $10                                        ; $4A17: $10
    ld h, c                                       ; $4A18: $61
    ld a, d                                       ; $4A19: $7A
    ld l, l                                       ; $4A1A: $6D
    ret c                                         ; $4A1B: $D8

    ld [bc], a                                    ; $4A1C: $02
    jr nz, jr_02C_49F8                            ; $4A1D: $20 $D9

    ld sp, $9E09                                  ; $4A1F: $31 $09 $9E
    db $10                                        ; $4A22: $10
    ld e, e                                       ; $4A23: $5B
    sbc h                                         ; $4A24: $9C
    ld a, d                                       ; $4A25: $7A
    ld sp, hl                                     ; $4A26: $F9
    nop                                           ; $4A27: $00
    ld [hl+], a                                   ; $4A28: $22
    db $FD                                        ; $4A29: $FD
    jp hl                                         ; $4A2A: $E9


    ei                                            ; $4A2B: $FB
    ld d, [hl]                                    ; $4A2C: $56
    ld h, b                                       ; $4A2D: $60
    ld d, d                                       ; $4A2E: $52
    db $E3                                        ; $4A2F: $E3
    nop                                           ; $4A30: $00
    jr jr_02C_4A33                                ; $4A31: $18 $00

jr_02C_4A33:
    jr nz, jr_02C_4A15                            ; $4A33: $20 $E0

    ld [$1908], a                                 ; $4A35: $EA $08 $19
    nop                                           ; $4A38: $00
    pop hl                                        ; $4A39: $E1
    ld [$7A1B], sp                                ; $4A3A: $08 $1B $7A
    ldh a, [$FFFD]                                ; $4A3D: $F0 $FD
    nop                                           ; $4A3F: $00
    ret nz                                        ; $4A40: $C0

    reti                                          ; $4A41: $D9


    pop bc                                        ; $4A42: $C1
    add hl, bc                                    ; $4A43: $09
    sbc b                                         ; $4A44: $98
    or b                                          ; $4A45: $B0
    and e                                         ; $4A46: $A3
    db $DD                                        ; $4A47: $DD

jr_02C_4A48:
    sbc c                                         ; $4A48: $99
    nop                                           ; $4A49: $00
    sbc e                                         ; $4A4A: $9B
    nop                                           ; $4A4B: $00
    jr nz, @+$0E                                  ; $4A4C: $20 $0C

    or c                                          ; $4A4E: $B1
    db $10                                        ; $4A4F: $10
    ld a, d                                       ; $4A50: $7A
    ld sp, $C07A                                  ; $4A51: $31 $7A $C0
    ld [bc], a                                    ; $4A54: $02
    ld [hl-], a                                   ; $4A55: $32
    ld a, $11                                     ; $4A56: $3E $11
    add b                                         ; $4A58: $80
    ldh [$FF0A], a                                ; $4A59: $E0 $0A
    rlca                                          ; $4A5B: $07
    rlca                                          ; $4A5C: $07
    nop                                           ; $4A5D: $00
    inc c                                         ; $4A5E: $0C
    nop                                           ; $4A5F: $00
    ld bc, $0200                                  ; $4A60: $01 $00 $02
    nop                                           ; $4A63: $00
    inc bc                                        ; $4A64: $03
    nop                                           ; $4A65: $00
    inc b                                         ; $4A66: $04
    nop                                           ; $4A67: $00
    dec b                                         ; $4A68: $05
    nop                                           ; $4A69: $00
    ld b, $0A                                     ; $4A6A: $06 $0A
    nop                                           ; $4A6C: $00
    dec c                                         ; $4A6D: $0D
    nop                                           ; $4A6E: $00
    ld c, $00                                     ; $4A6F: $0E $00
    rrca                                          ; $4A71: $0F
    nop                                           ; $4A72: $00
    stop                                          ; $4A73: $10 $00
    ld de, $0008                                  ; $4A75: $11 $08 $00
    rla                                           ; $4A78: $17
    nop                                           ; $4A79: $00
    jr jr_02C_4A7C                                ; $4A7A: $18 $00

jr_02C_4A7C:
    add hl, de                                    ; $4A7C: $19
    nop                                           ; $4A7D: $00
    ld a, [de]                                    ; $4A7E: $1A
    ld [$1F00], sp                                ; $4A7F: $08 $00 $1F
    nop                                           ; $4A82: $00
    jr nz, jr_02C_4A85                            ; $4A83: $20 $00

jr_02C_4A85:
    ld hl, $2200                                  ; $4A85: $21 $00 $22
    inc c                                         ; $4A88: $0C
    nop                                           ; $4A89: $00
    rlca                                          ; $4A8A: $07
    nop                                           ; $4A8B: $00
    ld [$0900], sp                                ; $4A8C: $08 $00 $09
    nop                                           ; $4A8F: $00
    ld a, [bc]                                    ; $4A90: $0A
    nop                                           ; $4A91: $00
    dec bc                                        ; $4A92: $0B
    nop                                           ; $4A93: $00
    inc c                                         ; $4A94: $0C
    inc c                                         ; $4A95: $0C
    nop                                           ; $4A96: $00
    ld [de], a                                    ; $4A97: $12
    nop                                           ; $4A98: $00
    inc de                                        ; $4A99: $13
    nop                                           ; $4A9A: $00
    dec c                                         ; $4A9B: $0D
    nop                                           ; $4A9C: $00
    inc d                                         ; $4A9D: $14
    nop                                           ; $4A9E: $00
    dec d                                         ; $4A9F: $15
    nop                                           ; $4AA0: $00
    ld d, $0C                                     ; $4AA1: $16 $0C
    nop                                           ; $4AA3: $00
    rlca                                          ; $4AA4: $07
    nop                                           ; $4AA5: $00
    dec de                                        ; $4AA6: $1B
    nop                                           ; $4AA7: $00
    ld [$1C00], sp                                ; $4AA8: $08 $00 $1C
    nop                                           ; $4AAB: $00
    dec e                                         ; $4AAC: $1D
    nop                                           ; $4AAD: $00
    ld e, $0A                                     ; $4AAE: $1E $0A
    nop                                           ; $4AB0: $00
    ld [de], a                                    ; $4AB1: $12
    nop                                           ; $4AB2: $00
    inc de                                        ; $4AB3: $13
    nop                                           ; $4AB4: $00
    inc hl                                        ; $4AB5: $23
    nop                                           ; $4AB6: $00
    inc h                                         ; $4AB7: $24
    nop                                           ; $4AB8: $00
    dec h                                         ; $4AB9: $25
    inc c                                         ; $4ABA: $0C
    nop                                           ; $4ABB: $00
    ld a, [de]                                    ; $4ABC: $1A
    nop                                           ; $4ABD: $00
    add hl, de                                    ; $4ABE: $19
    nop                                           ; $4ABF: $00
    ld h, $00                                     ; $4AC0: $26 $00
    daa                                           ; $4AC2: $27
    nop                                           ; $4AC3: $00
    dec l                                         ; $4AC4: $2D
    nop                                           ; $4AC5: $00
    ld l, $0A                                     ; $4AC6: $2E $0A
    nop                                           ; $4AC8: $00
    jr z, jr_02C_4ACB                             ; $4AC9: $28 $00

jr_02C_4ACB:
    add hl, hl                                    ; $4ACB: $29
    nop                                           ; $4ACC: $00
    ld a, [hl+]                                   ; $4ACD: $2A
    nop                                           ; $4ACE: $00
    dec hl                                        ; $4ACF: $2B
    nop                                           ; $4AD0: $00
    inc l                                         ; $4AD1: $2C
    inc c                                         ; $4AD2: $0C
    add b                                         ; $4AD3: $80
    ret nz                                        ; $4AD4: $C0

    add b                                         ; $4AD5: $80
    ret nz                                        ; $4AD6: $C0

    ld b, b                                       ; $4AD7: $40
    ld h, b                                       ; $4AD8: $60
    ld b, b                                       ; $4AD9: $40
    ld h, b                                       ; $4ADA: $60
    jr nz, jr_02C_4B0D                            ; $4ADB: $20 $30

    jr nz, jr_02C_4B0F                            ; $4ADD: $20 $30

    db $10                                        ; $4ADF: $10
    jr jr_02C_4AF2                                ; $4AE0: $18 $10

    jr jr_02C_4AEC                                ; $4AE2: $18 $08

    inc c                                         ; $4AE4: $0C
    ld [$040C], sp                                ; $4AE5: $08 $0C $04
    ld b, $04                                     ; $4AE8: $06 $04
    ld b, $02                                     ; $4AEA: $06 $02

jr_02C_4AEC:
    inc bc                                        ; $4AEC: $03
    ld [bc], a                                    ; $4AED: $02
    inc bc                                        ; $4AEE: $03
    ld bc, $0101                                  ; $4AEF: $01 $01 $01

jr_02C_4AF2:
    ld bc, $0000                                  ; $4AF2: $01 $00 $00
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
    nop                                           ; $4B00: $00

jr_02C_4B01:
    nop                                           ; $4B01: $00
    nop                                           ; $4B02: $00
    nop                                           ; $4B03: $00
    nop                                           ; $4B04: $00
    nop                                           ; $4B05: $00
    nop                                           ; $4B06: $00
    nop                                           ; $4B07: $00
    nop                                           ; $4B08: $00
    nop                                           ; $4B09: $00
    inc bc                                        ; $4B0A: $03
    inc bc                                        ; $4B0B: $03
    rrca                                          ; $4B0C: $0F

jr_02C_4B0D:
    inc c                                         ; $4B0D: $0C
    inc a                                         ; $4B0E: $3C

jr_02C_4B0F:
    jr nc, jr_02C_4B01                            ; $4B0F: $30 $F0

    ret nz                                        ; $4B11: $C0

    ret nz                                        ; $4B12: $C0

    db $10                                        ; $4B13: $10
    jr jr_02C_4B26                                ; $4B14: $18 $10

    jr jr_02C_4B28                                ; $4B16: $18 $10

    jr jr_02C_4B2A                                ; $4B18: $18 $10

    jr jr_02C_4B2C                                ; $4B1A: $18 $10

    jr jr_02C_4B2E                                ; $4B1C: $18 $10

    jr jr_02C_4B30                                ; $4B1E: $18 $10

    jr jr_02C_4B32                                ; $4B20: $18 $10

    jr jr_02C_4B34                                ; $4B22: $18 $10

    jr jr_02C_4B36                                ; $4B24: $18 $10

jr_02C_4B26:
    jr jr_02C_4B38                                ; $4B26: $18 $10

jr_02C_4B28:
    jr jr_02C_4B3A                                ; $4B28: $18 $10

jr_02C_4B2A:
    jr jr_02C_4B3C                                ; $4B2A: $18 $10

jr_02C_4B2C:
    jr jr_02C_4B3E                                ; $4B2C: $18 $10

jr_02C_4B2E:
    jr jr_02C_4B40                                ; $4B2E: $18 $10

jr_02C_4B30:
    jr @+$12                                      ; $4B30: $18 $10

jr_02C_4B32:
    jr jr_02C_4B34                                ; $4B32: $18 $00

jr_02C_4B34:
    nop                                           ; $4B34: $00
    nop                                           ; $4B35: $00

jr_02C_4B36:
    nop                                           ; $4B36: $00
    nop                                           ; $4B37: $00

jr_02C_4B38:
    nop                                           ; $4B38: $00
    nop                                           ; $4B39: $00

jr_02C_4B3A:
    nop                                           ; $4B3A: $00
    inc a                                         ; $4B3B: $3C

jr_02C_4B3C:
    nop                                           ; $4B3C: $00
    ld a, [hl]                                    ; $4B3D: $7E

jr_02C_4B3E:
    inc a                                         ; $4B3E: $3C
    rst RST_20                                    ; $4B3F: $E7

jr_02C_4B40:
    ld a, [hl]                                    ; $4B40: $7E
    jp $C37E                                      ; $4B41: $C3 $7E $C3


    ld a, [hl]                                    ; $4B44: $7E
    rst RST_20                                    ; $4B45: $E7
    ld a, [hl]                                    ; $4B46: $7E
    ld a, [hl]                                    ; $4B47: $7E
    inc a                                         ; $4B48: $3C
    inc a                                         ; $4B49: $3C
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
    ld bc, $0700                                  ; $4B57: $01 $00 $07
    ld bc, $070E                                  ; $4B5A: $01 $0E $07
    jr @+$11                                      ; $4B5D: $18 $0F

    jr jr_02C_4B70                                ; $4B5F: $18 $0F

    jr nc, jr_02C_4B82                            ; $4B61: $30 $1F

    jr nc, jr_02C_4B84                            ; $4B63: $30 $1F

    jr jr_02C_4B76                                ; $4B65: $18 $0F

    jr jr_02C_4B78                                ; $4B67: $18 $0F

    ld c, $07                                     ; $4B69: $0E $07
    rlca                                          ; $4B6B: $07
    ld bc, $0001                                  ; $4B6C: $01 $01 $00
    nop                                           ; $4B6F: $00

jr_02C_4B70:
    nop                                           ; $4B70: $00
    nop                                           ; $4B71: $00
    nop                                           ; $4B72: $00
    nop                                           ; $4B73: $00
    nop                                           ; $4B74: $00
    nop                                           ; $4B75: $00

jr_02C_4B76:
    nop                                           ; $4B76: $00
    add b                                         ; $4B77: $80

jr_02C_4B78:
    nop                                           ; $4B78: $00
    ldh [$FF80], a                                ; $4B79: $E0 $80
    ld [hl], b                                    ; $4B7B: $70
    ldh [rNR23], a                                ; $4B7C: $E0 $18
    ldh a, [rNR23]                                ; $4B7E: $F0 $18
    ldh a, [$FF0C]                                ; $4B80: $F0 $0C

jr_02C_4B82:
    ld hl, sp+$0C                                 ; $4B82: $F8 $0C

jr_02C_4B84:
    ld hl, sp+$18                                 ; $4B84: $F8 $18
    ldh a, [rNR23]                                ; $4B86: $F0 $18
    ldh a, [rSVBK]                                ; $4B88: $F0 $70
    ldh [$FFE0], a                                ; $4B8A: $E0 $E0
    add b                                         ; $4B8C: $80
    add b                                         ; $4B8D: $80
    nop                                           ; $4B8E: $00
    nop                                           ; $4B8F: $00
    nop                                           ; $4B90: $00
    nop                                           ; $4B91: $00
    nop                                           ; $4B92: $00
    nop                                           ; $4B93: $00
    sub b                                         ; $4B94: $90
    ld c, [hl]                                    ; $4B95: $4E
    nop                                           ; $4B96: $00
    inc bc                                        ; $4B97: $03
    nop                                           ; $4B98: $00
    nop                                           ; $4B99: $00
    nop                                           ; $4B9A: $00
    nop                                           ; $4B9B: $00
    nop                                           ; $4B9C: $00
    nop                                           ; $4B9D: $00
    nop                                           ; $4B9E: $00
    nop                                           ; $4B9F: $00
    rst RST_38                                    ; $4BA0: $FF
    rst RST_38                                    ; $4BA1: $FF
    rst RST_38                                    ; $4BA2: $FF
    rst RST_38                                    ; $4BA3: $FF
    rst RST_38                                    ; $4BA4: $FF
    rst RST_38                                    ; $4BA5: $FF
    rst RST_38                                    ; $4BA6: $FF
    rst RST_38                                    ; $4BA7: $FF
    jr c, jr_02C_4BEE                             ; $4BA8: $38 $44

    add d                                         ; $4BAA: $82
    add d                                         ; $4BAB: $82
    cp $82                                        ; $4BAC: $FE $82
    add d                                         ; $4BAE: $82
    nop                                           ; $4BAF: $00
    db $FC                                        ; $4BB0: $FC
    add d                                         ; $4BB1: $82
    add d                                         ; $4BB2: $82
    db $FC                                        ; $4BB3: $FC
    add d                                         ; $4BB4: $82
    add d                                         ; $4BB5: $82
    db $FC                                        ; $4BB6: $FC
    nop                                           ; $4BB7: $00
    ld a, [hl]                                    ; $4BB8: $7E
    add b                                         ; $4BB9: $80
    add b                                         ; $4BBA: $80
    add b                                         ; $4BBB: $80
    add b                                         ; $4BBC: $80
    add b                                         ; $4BBD: $80
    ld a, [hl]                                    ; $4BBE: $7E
    nop                                           ; $4BBF: $00
    db $FC                                        ; $4BC0: $FC
    add d                                         ; $4BC1: $82
    add d                                         ; $4BC2: $82
    add d                                         ; $4BC3: $82
    add d                                         ; $4BC4: $82
    add d                                         ; $4BC5: $82
    db $FC                                        ; $4BC6: $FC
    nop                                           ; $4BC7: $00
    cp $80                                        ; $4BC8: $FE $80
    add b                                         ; $4BCA: $80
    db $FC                                        ; $4BCB: $FC
    add b                                         ; $4BCC: $80
    add b                                         ; $4BCD: $80
    cp $00                                        ; $4BCE: $FE $00
    cp $80                                        ; $4BD0: $FE $80
    add b                                         ; $4BD2: $80
    db $FC                                        ; $4BD3: $FC
    add b                                         ; $4BD4: $80
    add b                                         ; $4BD5: $80
    add b                                         ; $4BD6: $80
    nop                                           ; $4BD7: $00
    ld a, [hl]                                    ; $4BD8: $7E
    add b                                         ; $4BD9: $80
    add b                                         ; $4BDA: $80
    adc [hl]                                      ; $4BDB: $8E
    add d                                         ; $4BDC: $82
    add d                                         ; $4BDD: $82
    ld a, [hl]                                    ; $4BDE: $7E
    nop                                           ; $4BDF: $00
    add d                                         ; $4BE0: $82
    add d                                         ; $4BE1: $82
    add d                                         ; $4BE2: $82
    cp $82                                        ; $4BE3: $FE $82
    add d                                         ; $4BE5: $82
    add d                                         ; $4BE6: $82
    nop                                           ; $4BE7: $00
    db $10                                        ; $4BE8: $10
    db $10                                        ; $4BE9: $10
    db $10                                        ; $4BEA: $10
    db $10                                        ; $4BEB: $10
    db $10                                        ; $4BEC: $10
    db $10                                        ; $4BED: $10

jr_02C_4BEE:
    stop                                          ; $4BEE: $10 $00
    ld [bc], a                                    ; $4BF0: $02
    ld [bc], a                                    ; $4BF1: $02
    ld [bc], a                                    ; $4BF2: $02
    ld [bc], a                                    ; $4BF3: $02
    ld [bc], a                                    ; $4BF4: $02
    ld [bc], a                                    ; $4BF5: $02
    db $FC                                        ; $4BF6: $FC
    nop                                           ; $4BF7: $00
    add d                                         ; $4BF8: $82
    add h                                         ; $4BF9: $84
    adc b                                         ; $4BFA: $88
    ldh a, [$FF88]                                ; $4BFB: $F0 $88
    add h                                         ; $4BFD: $84
    add d                                         ; $4BFE: $82
    nop                                           ; $4BFF: $00
    add b                                         ; $4C00: $80
    add b                                         ; $4C01: $80
    add b                                         ; $4C02: $80
    add b                                         ; $4C03: $80
    add b                                         ; $4C04: $80
    add b                                         ; $4C05: $80
    cp $00                                        ; $4C06: $FE $00
    add d                                         ; $4C08: $82
    add $AA                                       ; $4C09: $C6 $AA
    sub d                                         ; $4C0B: $92
    add d                                         ; $4C0C: $82
    add d                                         ; $4C0D: $82
    add d                                         ; $4C0E: $82
    nop                                           ; $4C0F: $00
    add d                                         ; $4C10: $82
    jp nz, $92A2                                  ; $4C11: $C2 $A2 $92

    adc d                                         ; $4C14: $8A
    add [hl]                                      ; $4C15: $86
    add d                                         ; $4C16: $82
    nop                                           ; $4C17: $00
    ld a, h                                       ; $4C18: $7C
    add d                                         ; $4C19: $82
    add d                                         ; $4C1A: $82
    add d                                         ; $4C1B: $82
    add d                                         ; $4C1C: $82
    add d                                         ; $4C1D: $82
    ld a, h                                       ; $4C1E: $7C
    nop                                           ; $4C1F: $00
    db $FC                                        ; $4C20: $FC
    add d                                         ; $4C21: $82
    add d                                         ; $4C22: $82
    db $FC                                        ; $4C23: $FC
    add b                                         ; $4C24: $80
    add b                                         ; $4C25: $80
    add b                                         ; $4C26: $80
    nop                                           ; $4C27: $00
    ld a, h                                       ; $4C28: $7C
    add d                                         ; $4C29: $82
    add d                                         ; $4C2A: $82
    add d                                         ; $4C2B: $82
    add d                                         ; $4C2C: $82
    adc d                                         ; $4C2D: $8A
    ld a, h                                       ; $4C2E: $7C
    ld [bc], a                                    ; $4C2F: $02
    db $FC                                        ; $4C30: $FC
    add d                                         ; $4C31: $82
    add d                                         ; $4C32: $82
    db $FC                                        ; $4C33: $FC
    add h                                         ; $4C34: $84
    add d                                         ; $4C35: $82
    add d                                         ; $4C36: $82
    nop                                           ; $4C37: $00
    ld a, [hl]                                    ; $4C38: $7E
    add b                                         ; $4C39: $80
    add b                                         ; $4C3A: $80
    ld a, h                                       ; $4C3B: $7C
    ld [bc], a                                    ; $4C3C: $02
    ld [bc], a                                    ; $4C3D: $02
    db $FC                                        ; $4C3E: $FC
    nop                                           ; $4C3F: $00
    cp $10                                        ; $4C40: $FE $10
    db $10                                        ; $4C42: $10
    db $10                                        ; $4C43: $10
    db $10                                        ; $4C44: $10
    db $10                                        ; $4C45: $10
    stop                                          ; $4C46: $10 $00
    add d                                         ; $4C48: $82
    add d                                         ; $4C49: $82
    add d                                         ; $4C4A: $82
    add d                                         ; $4C4B: $82
    add d                                         ; $4C4C: $82
    add d                                         ; $4C4D: $82
    ld a, h                                       ; $4C4E: $7C
    nop                                           ; $4C4F: $00
    add d                                         ; $4C50: $82
    add d                                         ; $4C51: $82
    add d                                         ; $4C52: $82
    add d                                         ; $4C53: $82
    ld b, h                                       ; $4C54: $44
    jr z, jr_02C_4C67                             ; $4C55: $28 $10

    nop                                           ; $4C57: $00
    add d                                         ; $4C58: $82
    add d                                         ; $4C59: $82
    add d                                         ; $4C5A: $82
    add d                                         ; $4C5B: $82
    sub d                                         ; $4C5C: $92
    xor d                                         ; $4C5D: $AA
    ld b, h                                       ; $4C5E: $44
    nop                                           ; $4C5F: $00
    add d                                         ; $4C60: $82
    ld b, h                                       ; $4C61: $44
    jr z, @+$12                                   ; $4C62: $28 $10

    jr z, jr_02C_4CAA                             ; $4C64: $28 $44

    add d                                         ; $4C66: $82

jr_02C_4C67:
    nop                                           ; $4C67: $00
    add d                                         ; $4C68: $82
    ld b, h                                       ; $4C69: $44
    jr z, jr_02C_4C7C                             ; $4C6A: $28 $10

    db $10                                        ; $4C6C: $10
    db $10                                        ; $4C6D: $10
    stop                                          ; $4C6E: $10 $00
    cp $04                                        ; $4C70: $FE $04
    ld [$2010], sp                                ; $4C72: $08 $10 $20
    ld b, b                                       ; $4C75: $40
    cp $00                                        ; $4C76: $FE $00
    nop                                           ; $4C78: $00
    nop                                           ; $4C79: $00
    ld e, h                                       ; $4C7A: $5C
    ld h, d                                       ; $4C7B: $62

jr_02C_4C7C:
    ld h, b                                       ; $4C7C: $60
    ld h, b                                       ; $4C7D: $60
    ld h, e                                       ; $4C7E: $63
    inc bc                                        ; $4C7F: $03
    nop                                           ; $4C80: $00
    nop                                           ; $4C81: $00
    nop                                           ; $4C82: $00
    nop                                           ; $4C83: $00
    nop                                           ; $4C84: $00
    ld h, b                                       ; $4C85: $60
    ld h, b                                       ; $4C86: $60
    nop                                           ; $4C87: $00
    jr nc, jr_02C_4CBA                            ; $4C88: $30 $30

    db $10                                        ; $4C8A: $10
    jr nz, jr_02C_4C8D                            ; $4C8B: $20 $00

jr_02C_4C8D:
    nop                                           ; $4C8D: $00
    nop                                           ; $4C8E: $00
    nop                                           ; $4C8F: $00
    inc a                                         ; $4C90: $3C
    ld b, d                                       ; $4C91: $42
    ld b, d                                       ; $4C92: $42
    nop                                           ; $4C93: $00
    ld b, d                                       ; $4C94: $42
    ld b, d                                       ; $4C95: $42
    inc a                                         ; $4C96: $3C
    nop                                           ; $4C97: $00
    ld [bc], a                                    ; $4C98: $02
    ld [bc], a                                    ; $4C99: $02
    ld [bc], a                                    ; $4C9A: $02
    nop                                           ; $4C9B: $00
    ld [bc], a                                    ; $4C9C: $02
    ld [bc], a                                    ; $4C9D: $02
    ld [bc], a                                    ; $4C9E: $02
    nop                                           ; $4C9F: $00
    inc a                                         ; $4CA0: $3C
    ld [bc], a                                    ; $4CA1: $02
    ld [bc], a                                    ; $4CA2: $02
    inc a                                         ; $4CA3: $3C
    ld b, b                                       ; $4CA4: $40
    ld b, b                                       ; $4CA5: $40
    inc a                                         ; $4CA6: $3C
    nop                                           ; $4CA7: $00
    inc a                                         ; $4CA8: $3C
    ld [bc], a                                    ; $4CA9: $02

jr_02C_4CAA:
    ld [bc], a                                    ; $4CAA: $02
    inc a                                         ; $4CAB: $3C
    ld [bc], a                                    ; $4CAC: $02
    ld [bc], a                                    ; $4CAD: $02
    inc a                                         ; $4CAE: $3C
    nop                                           ; $4CAF: $00
    ld [bc], a                                    ; $4CB0: $02
    ld b, d                                       ; $4CB1: $42
    ld b, d                                       ; $4CB2: $42
    inc a                                         ; $4CB3: $3C
    ld [bc], a                                    ; $4CB4: $02
    ld [bc], a                                    ; $4CB5: $02
    ld [bc], a                                    ; $4CB6: $02
    nop                                           ; $4CB7: $00
    inc a                                         ; $4CB8: $3C
    ld b, b                                       ; $4CB9: $40

jr_02C_4CBA:
    ld b, b                                       ; $4CBA: $40
    inc a                                         ; $4CBB: $3C
    ld [bc], a                                    ; $4CBC: $02
    ld [bc], a                                    ; $4CBD: $02
    inc a                                         ; $4CBE: $3C
    nop                                           ; $4CBF: $00
    inc a                                         ; $4CC0: $3C
    ld b, b                                       ; $4CC1: $40
    ld b, b                                       ; $4CC2: $40
    inc a                                         ; $4CC3: $3C
    ld b, d                                       ; $4CC4: $42
    ld b, d                                       ; $4CC5: $42
    inc a                                         ; $4CC6: $3C
    nop                                           ; $4CC7: $00
    inc a                                         ; $4CC8: $3C
    ld [bc], a                                    ; $4CC9: $02
    ld [bc], a                                    ; $4CCA: $02
    nop                                           ; $4CCB: $00
    ld [bc], a                                    ; $4CCC: $02
    ld [bc], a                                    ; $4CCD: $02
    ld [bc], a                                    ; $4CCE: $02
    nop                                           ; $4CCF: $00
    inc a                                         ; $4CD0: $3C
    ld b, d                                       ; $4CD1: $42
    ld b, d                                       ; $4CD2: $42
    inc a                                         ; $4CD3: $3C
    ld b, d                                       ; $4CD4: $42
    ld b, d                                       ; $4CD5: $42
    inc a                                         ; $4CD6: $3C
    nop                                           ; $4CD7: $00
    inc a                                         ; $4CD8: $3C
    ld b, d                                       ; $4CD9: $42
    ld b, d                                       ; $4CDA: $42
    inc a                                         ; $4CDB: $3C
    ld [bc], a                                    ; $4CDC: $02
    ld [bc], a                                    ; $4CDD: $02
    inc a                                         ; $4CDE: $3C
    nop                                           ; $4CDF: $00
    nop                                           ; $4CE0: $00
    nop                                           ; $4CE1: $00
    nop                                           ; $4CE2: $00
    ld a, [hl]                                    ; $4CE3: $7E
    nop                                           ; $4CE4: $00
    nop                                           ; $4CE5: $00
    nop                                           ; $4CE6: $00
    nop                                           ; $4CE7: $00
    nop                                           ; $4CE8: $00
    jr jr_02C_4D03                                ; $4CE9: $18 $18

    nop                                           ; $4CEB: $00
    nop                                           ; $4CEC: $00
    jr jr_02C_4D07                                ; $4CED: $18 $18

    nop                                           ; $4CEF: $00
    jr jr_02C_4D0A                                ; $4CF0: $18 $18

    jr jr_02C_4D0C                                ; $4CF2: $18 $18

    ld [$1800], sp                                ; $4CF4: $08 $00 $18
    nop                                           ; $4CF7: $00
    ld a, $63                                     ; $4CF8: $3E $63
    inc bc                                        ; $4CFA: $03
    ld b, $08                                     ; $4CFB: $06 $08
    nop                                           ; $4CFD: $00
    ld [$0000], sp                                ; $4CFE: $08 $00 $00
    nop                                           ; $4D01: $00
    nop                                           ; $4D02: $00

jr_02C_4D03:
    nop                                           ; $4D03: $00
    nop                                           ; $4D04: $00
    ld h, b                                       ; $4D05: $60
    ld h, b                                       ; $4D06: $60

jr_02C_4D07:
    add b                                         ; $4D07: $80
    ld l, h                                       ; $4D08: $6C
    ld l, h                                       ; $4D09: $6C

jr_02C_4D0A:
    inc h                                         ; $4D0A: $24
    ld c, b                                       ; $4D0B: $48

jr_02C_4D0C:
    nop                                           ; $4D0C: $00
    nop                                           ; $4D0D: $00
    nop                                           ; $4D0E: $00
    nop                                           ; $4D0F: $00
    nop                                           ; $4D10: $00
    ld [$3E08], sp                                ; $4D11: $08 $08 $3E
    ld [$0008], sp                                ; $4D14: $08 $08 $00
    nop                                           ; $4D17: $00
    ld [$2A1C], sp                                ; $4D18: $08 $1C $2A
    ld [$0808], sp                                ; $4D1B: $08 $08 $08
    ld [$0000], sp                                ; $4D1E: $08 $00 $00
    inc b                                         ; $4D21: $04
    ld [bc], a                                    ; $4D22: $02
    ld a, a                                       ; $4D23: $7F
    ld [bc], a                                    ; $4D24: $02
    inc b                                         ; $4D25: $04
    nop                                           ; $4D26: $00
    nop                                           ; $4D27: $00
    ld [$0808], sp                                ; $4D28: $08 $08 $08
    ld [$1C2A], sp                                ; $4D2B: $08 $2A $1C
    ld [$0000], sp                                ; $4D2E: $08 $00 $00
    db $10                                        ; $4D31: $10
    jr nz, jr_02C_4DB3                            ; $4D32: $20 $7F

    jr nz, jr_02C_4D46                            ; $4D34: $20 $10

    nop                                           ; $4D36: $00
    nop                                           ; $4D37: $00
    nop                                           ; $4D38: $00
    nop                                           ; $4D39: $00
    inc a                                         ; $4D3A: $3C
    ld [bc], a                                    ; $4D3B: $02
    ld a, $42                                     ; $4D3C: $3E $42
    dec a                                         ; $4D3E: $3D
    nop                                           ; $4D3F: $00
    ld b, b                                       ; $4D40: $40
    ld b, b                                       ; $4D41: $40
    ld a, h                                       ; $4D42: $7C
    ld b, d                                       ; $4D43: $42
    ld b, d                                       ; $4D44: $42
    ld b, d                                       ; $4D45: $42

jr_02C_4D46:
    ld a, h                                       ; $4D46: $7C
    nop                                           ; $4D47: $00
    nop                                           ; $4D48: $00
    nop                                           ; $4D49: $00
    ld a, $40                                     ; $4D4A: $3E $40
    ld b, b                                       ; $4D4C: $40
    ld b, b                                       ; $4D4D: $40
    ld a, $00                                     ; $4D4E: $3E $00
    ld [bc], a                                    ; $4D50: $02
    ld [bc], a                                    ; $4D51: $02
    ld a, $42                                     ; $4D52: $3E $42
    ld b, d                                       ; $4D54: $42
    ld b, d                                       ; $4D55: $42
    ld a, $00                                     ; $4D56: $3E $00
    nop                                           ; $4D58: $00
    nop                                           ; $4D59: $00
    inc a                                         ; $4D5A: $3C
    ld b, d                                       ; $4D5B: $42
    ld a, [hl]                                    ; $4D5C: $7E
    ld b, b                                       ; $4D5D: $40
    ld a, $00                                     ; $4D5E: $3E $00
    inc e                                         ; $4D60: $1C
    jr nz, jr_02C_4DDF                            ; $4D61: $20 $7C

    jr nz, jr_02C_4D85                            ; $4D63: $20 $20

    jr nz, jr_02C_4D87                            ; $4D65: $20 $20

    nop                                           ; $4D67: $00
    nop                                           ; $4D68: $00
    nop                                           ; $4D69: $00
    ld a, $42                                     ; $4D6A: $3E $42
    ld b, d                                       ; $4D6C: $42
    ld a, $02                                     ; $4D6D: $3E $02
    inc a                                         ; $4D6F: $3C
    ld b, b                                       ; $4D70: $40
    ld b, b                                       ; $4D71: $40
    ld b, b                                       ; $4D72: $40
    ld a, h                                       ; $4D73: $7C
    ld b, d                                       ; $4D74: $42
    ld b, d                                       ; $4D75: $42
    ld b, d                                       ; $4D76: $42
    nop                                           ; $4D77: $00
    nop                                           ; $4D78: $00
    ld [$0800], sp                                ; $4D79: $08 $00 $08
    ld [$0808], sp                                ; $4D7C: $08 $08 $08
    nop                                           ; $4D7F: $00
    nop                                           ; $4D80: $00
    ld [bc], a                                    ; $4D81: $02
    nop                                           ; $4D82: $00
    ld [bc], a                                    ; $4D83: $02
    ld [bc], a                                    ; $4D84: $02

jr_02C_4D85:
    ld [bc], a                                    ; $4D85: $02
    ld b, d                                       ; $4D86: $42

jr_02C_4D87:
    inc a                                         ; $4D87: $3C
    ld b, b                                       ; $4D88: $40
    ld b, b                                       ; $4D89: $40
    ld b, d                                       ; $4D8A: $42
    ld b, h                                       ; $4D8B: $44
    ld a, b                                       ; $4D8C: $78
    ld b, h                                       ; $4D8D: $44
    ld b, d                                       ; $4D8E: $42
    nop                                           ; $4D8F: $00
    jr jr_02C_4D9A                                ; $4D90: $18 $08

    ld [$0808], sp                                ; $4D92: $08 $08 $08
    ld [$0008], sp                                ; $4D95: $08 $08 $00
    nop                                           ; $4D98: $00
    nop                                           ; $4D99: $00

jr_02C_4D9A:
    ld d, h                                       ; $4D9A: $54
    ld l, d                                       ; $4D9B: $6A
    ld l, d                                       ; $4D9C: $6A
    ld l, d                                       ; $4D9D: $6A
    ld l, d                                       ; $4D9E: $6A
    nop                                           ; $4D9F: $00
    nop                                           ; $4DA0: $00
    nop                                           ; $4DA1: $00
    ld e, h                                       ; $4DA2: $5C
    ld h, d                                       ; $4DA3: $62
    ld h, d                                       ; $4DA4: $62
    ld h, d                                       ; $4DA5: $62
    ld h, d                                       ; $4DA6: $62
    nop                                           ; $4DA7: $00
    nop                                           ; $4DA8: $00
    nop                                           ; $4DA9: $00
    inc a                                         ; $4DAA: $3C
    ld b, d                                       ; $4DAB: $42
    ld b, d                                       ; $4DAC: $42
    ld b, d                                       ; $4DAD: $42
    inc a                                         ; $4DAE: $3C
    nop                                           ; $4DAF: $00
    nop                                           ; $4DB0: $00
    nop                                           ; $4DB1: $00
    ld a, h                                       ; $4DB2: $7C

jr_02C_4DB3:
    ld b, d                                       ; $4DB3: $42
    ld b, d                                       ; $4DB4: $42
    ld a, h                                       ; $4DB5: $7C
    ld b, b                                       ; $4DB6: $40
    ld b, b                                       ; $4DB7: $40
    nop                                           ; $4DB8: $00
    nop                                           ; $4DB9: $00
    ld a, $42                                     ; $4DBA: $3E $42
    ld b, d                                       ; $4DBC: $42
    ld a, $02                                     ; $4DBD: $3E $02
    ld [bc], a                                    ; $4DBF: $02
    nop                                           ; $4DC0: $00
    nop                                           ; $4DC1: $00
    ld e, [hl]                                    ; $4DC2: $5E
    ld h, b                                       ; $4DC3: $60
    ld b, b                                       ; $4DC4: $40
    ld b, b                                       ; $4DC5: $40
    ld b, b                                       ; $4DC6: $40
    nop                                           ; $4DC7: $00
    nop                                           ; $4DC8: $00
    nop                                           ; $4DC9: $00
    ld a, $40                                     ; $4DCA: $3E $40
    inc a                                         ; $4DCC: $3C
    ld [bc], a                                    ; $4DCD: $02
    ld a, h                                       ; $4DCE: $7C
    nop                                           ; $4DCF: $00
    jr nz, jr_02C_4DF2                            ; $4DD0: $20 $20

    ld a, h                                       ; $4DD2: $7C
    jr nz, @+$22                                  ; $4DD3: $20 $20

    ld [hl+], a                                   ; $4DD5: $22
    inc e                                         ; $4DD6: $1C
    nop                                           ; $4DD7: $00
    nop                                           ; $4DD8: $00
    nop                                           ; $4DD9: $00
    ld h, d                                       ; $4DDA: $62
    ld h, d                                       ; $4DDB: $62
    ld h, d                                       ; $4DDC: $62
    ld h, d                                       ; $4DDD: $62
    inc a                                         ; $4DDE: $3C

jr_02C_4DDF:
    nop                                           ; $4DDF: $00
    nop                                           ; $4DE0: $00
    nop                                           ; $4DE1: $00
    ld h, d                                       ; $4DE2: $62
    ld h, d                                       ; $4DE3: $62
    ld h, d                                       ; $4DE4: $62
    inc [hl]                                      ; $4DE5: $34
    ld [$0000], sp                                ; $4DE6: $08 $00 $00
    nop                                           ; $4DE9: $00
    ld h, d                                       ; $4DEA: $62
    ld l, d                                       ; $4DEB: $6A
    ld l, d                                       ; $4DEC: $6A
    halt                                          ; $4DED: $76
    inc h                                         ; $4DEE: $24
    nop                                           ; $4DEF: $00
    nop                                           ; $4DF0: $00
    nop                                           ; $4DF1: $00

jr_02C_4DF2:
    ld h, d                                       ; $4DF2: $62
    inc [hl]                                      ; $4DF3: $34
    jr jr_02C_4E12                                ; $4DF4: $18 $1C

    ld h, [hl]                                    ; $4DF6: $66
    nop                                           ; $4DF7: $00
    nop                                           ; $4DF8: $00
    nop                                           ; $4DF9: $00
    ld h, d                                       ; $4DFA: $62
    inc [hl]                                      ; $4DFB: $34
    jr @+$12                                      ; $4DFC: $18 $10

    jr nz, @+$42                                  ; $4DFE: $20 $40

    nop                                           ; $4E00: $00
    nop                                           ; $4E01: $00
    ld a, [hl]                                    ; $4E02: $7E
    inc c                                         ; $4E03: $0C
    jr jr_02C_4E36                                ; $4E04: $18 $30

    ld a, [hl]                                    ; $4E06: $7E
    nop                                           ; $4E07: $00
    ld sp, $DD00                                  ; $4E08: $31 $00 $DD
    di                                            ; $4E0B: $F3
    rst RST_10                                    ; $4E0C: $D7
    ld hl, $C03A                                  ; $4E0D: $21 $3A $C0
    res 1, [hl]                                   ; $4E10: $CB $8E

jr_02C_4E12:
    xor a                                         ; $4E12: $AF
    ldh [rBGP], a                                 ; $4E13: $E0 $47
    ldh [rOBP0], a                                ; $4E15: $E0 $48
    ldh [rOBP1], a                                ; $4E17: $E0 $49
    call Call_000_0FBD                            ; $4E19: $CD $BD $0F
    call Call_000_0FC6                            ; $4E1C: $CD $C6 $0F
    xor a                                         ; $4E1F: $AF
    ldh [$FFE4], a                                ; $4E20: $E0 $E4
    ldh [$FFE2], a                                ; $4E22: $E0 $E2
    ld [$C2AA], a                                 ; $4E24: $EA $AA $C2
    ld [$C2AC], a                                 ; $4E27: $EA $AC $C2
    call Call_000_18EB                            ; $4E2A: $CD $EB $18
    call Call_000_0F9E                            ; $4E2D: $CD $9E $0F
    call Call_000_1A39                            ; $4E30: $CD $39 $1A
    ld a, [$C2C4]                                 ; $4E33: $FA $C4 $C2

jr_02C_4E36:
    or a                                          ; $4E36: $B7
    jp nz, Jump_02C_4E80                          ; $4E37: $C2 $80 $4E

    ld a, [$C2C5]                                 ; $4E3A: $FA $C5 $C2
    bit 0, a                                      ; $4E3D: $CB $47
    jp z, Jump_02C_4E5D                           ; $4E3F: $CA $5D $4E

    ld hl, $C2CA                                  ; $4E42: $21 $CA $C2
    inc [hl]                                      ; $4E45: $34
    ld a, [$C2C6]                                 ; $4E46: $FA $C6 $C2
    bit 1, a                                      ; $4E49: $CB $4F
    jp nz, Jump_02C_4E93                          ; $4E4B: $C2 $93 $4E

    bit 4, a                                      ; $4E4E: $CB $67
    jp nz, Jump_02C_4E93                          ; $4E50: $C2 $93 $4E

    ld a, [$C2D0]                                 ; $4E53: $FA $D0 $C2
    or a                                          ; $4E56: $B7
    jp nz, Jump_02C_4E9C                          ; $4E57: $C2 $9C $4E

    jp Jump_02C_4E99                              ; $4E5A: $C3 $99 $4E


Jump_02C_4E5D:
    ld a, [$C2C5]                                 ; $4E5D: $FA $C5 $C2
    bit 1, a                                      ; $4E60: $CB $4F
    jp z, Jump_02C_4E80                           ; $4E62: $CA $80 $4E

    ld hl, $C2CD                                  ; $4E65: $21 $CD $C2
    inc [hl]                                      ; $4E68: $34
    ld a, [$C2C6]                                 ; $4E69: $FA $C6 $C2
    bit 1, a                                      ; $4E6C: $CB $4F
    jp nz, Jump_02C_4E96                          ; $4E6E: $C2 $96 $4E

    bit 4, a                                      ; $4E71: $CB $67
    jp nz, Jump_02C_4E96                          ; $4E73: $C2 $96 $4E

    ld a, [$C2D0]                                 ; $4E76: $FA $D0 $C2
    or a                                          ; $4E79: $B7
    jp z, Jump_02C_4E9C                           ; $4E7A: $CA $9C $4E

    jp Jump_02C_4E99                              ; $4E7D: $C3 $99 $4E


Jump_02C_4E80:
    ld a, [$C2C6]                                 ; $4E80: $FA $C6 $C2
    bit 1, a                                      ; $4E83: $CB $4F
    jp nz, Jump_02C_4E90                          ; $4E85: $C2 $90 $4E

    bit 4, a                                      ; $4E88: $CB $67
    jp nz, Jump_02C_4F86                          ; $4E8A: $C2 $86 $4F

    jp Jump_02C_4F83                              ; $4E8D: $C3 $83 $4F


Jump_02C_4E90:
    jp Jump_02C_4F86                              ; $4E90: $C3 $86 $4F


Jump_02C_4E93:
    jp Jump_02C_4E9F                              ; $4E93: $C3 $9F $4E


Jump_02C_4E96:
    jp Jump_02C_4E9F                              ; $4E96: $C3 $9F $4E


Jump_02C_4E99:
    jp Jump_02C_4EA5                              ; $4E99: $C3 $A5 $4E


Jump_02C_4E9C:
    jp Jump_02C_4F7D                              ; $4E9C: $C3 $7D $4F


Jump_02C_4E9F:
    call Call_02C_50C2                            ; $4E9F: $CD $C2 $50
    jp Jump_02C_50BC                              ; $4EA2: $C3 $BC $50


Jump_02C_4EA5:
    call Call_02C_50C2                            ; $4EA5: $CD $C2 $50
    call Call_02C_4F45                            ; $4EA8: $CD $45 $4F
    ld b, $3F                                     ; $4EAB: $06 $3F
    ld hl, $50D4                                  ; $4EAD: $21 $D4 $50
    rst RST_08                                    ; $4EB0: $CF
    ld a, [$C2F3]                                 ; $4EB1: $FA $F3 $C2
    cp $07                                        ; $4EB4: $FE $07
    jp z, Jump_02C_4ECB                           ; $4EB6: $CA $CB $4E

    cp $08                                        ; $4EB9: $FE $08
    jp z, Jump_02C_4EDE                           ; $4EBB: $CA $DE $4E

    cp $09                                        ; $4EBE: $FE $09
    jp z, Jump_02C_4EF9                           ; $4EC0: $CA $F9 $4E

    cp $0A                                        ; $4EC3: $FE $0A
    jp z, Jump_02C_4F14                           ; $4EC5: $CA $14 $4F

    jp Jump_02C_4F3C                              ; $4EC8: $C3 $3C $4F


Jump_02C_4ECB:
    ld a, [$C2C6]                                 ; $4ECB: $FA $C6 $C2
    and $F0                                       ; $4ECE: $E6 $F0
    cp $20                                        ; $4ED0: $FE $20
    jp z, Jump_02C_4F3C                           ; $4ED2: $CA $3C $4F

    ld b, $3F                                     ; $4ED5: $06 $3F
    ld hl, $44E5                                  ; $4ED7: $21 $E5 $44
    rst RST_08                                    ; $4EDA: $CF
    jp Jump_02C_4F3C                              ; $4EDB: $C3 $3C $4F


Jump_02C_4EDE:
    ld a, [$C004]                                 ; $4EDE: $FA $04 $C0
    cp $00                                        ; $4EE1: $FE $00
    jp z, Jump_02C_4F14                           ; $4EE3: $CA $14 $4F

    ld a, [$C2C6]                                 ; $4EE6: $FA $C6 $C2
    and $F0                                       ; $4EE9: $E6 $F0
    cp $20                                        ; $4EEB: $FE $20
    jp z, Jump_02C_4F3C                           ; $4EED: $CA $3C $4F

    ld b, $3F                                     ; $4EF0: $06 $3F
    ld hl, $477F                                  ; $4EF2: $21 $7F $47
    rst RST_08                                    ; $4EF5: $CF
    jp Jump_02C_4F3C                              ; $4EF6: $C3 $3C $4F


Jump_02C_4EF9:
    ld a, [$C004]                                 ; $4EF9: $FA $04 $C0
    cp $01                                        ; $4EFC: $FE $01
    jp z, Jump_02C_4F14                           ; $4EFE: $CA $14 $4F

    ld a, [$C2C6]                                 ; $4F01: $FA $C6 $C2
    and $F0                                       ; $4F04: $E6 $F0
    cp $20                                        ; $4F06: $FE $20
    jp z, Jump_02C_4F3C                           ; $4F08: $CA $3C $4F

    ld b, $3F                                     ; $4F0B: $06 $3F
    ld hl, $49D3                                  ; $4F0D: $21 $D3 $49
    rst RST_08                                    ; $4F10: $CF
    jp Jump_02C_4F3C                              ; $4F11: $C3 $3C $4F


Jump_02C_4F14:
    ld a, [$C2D0]                                 ; $4F14: $FA $D0 $C2
    or a                                          ; $4F17: $B7
    jr nz, jr_02C_4F1F                            ; $4F18: $20 $05

    ld a, [$D92E]                                 ; $4F1A: $FA $2E $D9
    jr jr_02C_4F22                                ; $4F1D: $18 $03

jr_02C_4F1F:
    ld a, [$DA2E]                                 ; $4F1F: $FA $2E $DA

jr_02C_4F22:
    srl a                                         ; $4F22: $CB $3F
    ld [$C311], a                                 ; $4F24: $EA $11 $C3
    ld a, [$C2C6]                                 ; $4F27: $FA $C6 $C2
    and $F0                                       ; $4F2A: $E6 $F0
    cp $20                                        ; $4F2C: $FE $20
    jr z, jr_02C_4F36                             ; $4F2E: $28 $06

    ld b, $3B                                     ; $4F30: $06 $3B
    ld hl, $4EFF                                  ; $4F32: $21 $FF $4E
    rst RST_00                                    ; $4F35: $C7

jr_02C_4F36:
    ld b, $3B                                     ; $4F36: $06 $3B
    ld hl, $79F0                                  ; $4F38: $21 $F0 $79
    rst RST_00                                    ; $4F3B: $C7

Jump_02C_4F3C:
    call Call_000_1CD6                            ; $4F3C: $CD $D6 $1C
    ld b, $2A                                     ; $4F3F: $06 $2A
    ld hl, $4000                                  ; $4F41: $21 $00 $40
    rst RST_00                                    ; $4F44: $C7

Call_02C_4F45:
    ld hl, $C2F3                                  ; $4F45: $21 $F3 $C2
    inc [hl]                                      ; $4F48: $34
    ld a, [hl]                                    ; $4F49: $7E
    cp $0A                                        ; $4F4A: $FE $0A
    jp z, Jump_02C_4F7C                           ; $4F4C: $CA $7C $4F

    ld hl, $C2F4                                  ; $4F4F: $21 $F4 $C2
    ld d, $00                                     ; $4F52: $16 $00
    ld e, a                                       ; $4F54: $5F
    add hl, de                                    ; $4F55: $19
    ld a, [hl]                                    ; $4F56: $7E
    sla a                                         ; $4F57: $CB $27
    push af                                       ; $4F59: $F5
    ld a, [$C2D0]                                 ; $4F5A: $FA $D0 $C2
    or a                                          ; $4F5D: $B7
    jp nz, Jump_02C_4F6D                          ; $4F5E: $C2 $6D $4F

    ld hl, $DA2E                                  ; $4F61: $21 $2E $DA
    ld bc, $C309                                  ; $4F64: $01 $09 $C3
    ld de, $C30D                                  ; $4F67: $11 $0D $C3
    jp Jump_02C_4F76                              ; $4F6A: $C3 $76 $4F


Jump_02C_4F6D:
    ld hl, $D92E                                  ; $4F6D: $21 $2E $D9
    ld bc, $C308                                  ; $4F70: $01 $08 $C3
    ld de, $C30A                                  ; $4F73: $11 $0A $C3

Jump_02C_4F76:
    pop af                                        ; $4F76: $F1
    ld [hl], a                                    ; $4F77: $77
    srl a                                         ; $4F78: $CB $3F
    ld [bc], a                                    ; $4F7A: $02
    ld [de], a                                    ; $4F7B: $12

Jump_02C_4F7C:
    ret                                           ; $4F7C: $C9


Jump_02C_4F7D:
    call Call_02C_50C2                            ; $4F7D: $CD $C2 $50
    jp Jump_02C_4FB1                              ; $4F80: $C3 $B1 $4F


Jump_02C_4F83:
    jp Jump_02C_4FB1                              ; $4F83: $C3 $B1 $4F


Jump_02C_4F86:
    ld a, $00                                     ; $4F86: $3E $00
    call Call_000_135D                            ; $4F88: $CD $5D $13
    rst RST_10                                    ; $4F8B: $D7
    ld a, $FF                                     ; $4F8C: $3E $FF
    ldh [rBGP], a                                 ; $4F8E: $E0 $47
    ld a, $80                                     ; $4F90: $3E $80
    ldh [$FFE2], a                                ; $4F92: $E0 $E2
    ld a, $00                                     ; $4F94: $3E $00
    ldh [$FFE4], a                                ; $4F96: $E0 $E4
    call Call_000_0FBD                            ; $4F98: $CD $BD $0F
    call Call_000_0F9E                            ; $4F9B: $CD $9E $0F
    ld de, $0034                                  ; $4F9E: $11 $34 $00
    call Call_000_14C0                            ; $4FA1: $CD $C0 $14
    ld a, $C7                                     ; $4FA4: $3E $C7
    rst RST_18                                    ; $4FA6: $DF
    call Call_000_0424                            ; $4FA7: $CD $24 $04
    ld a, $1B                                     ; $4FAA: $3E $1B
    ldh [rBGP], a                                 ; $4FAC: $E0 $47
    jp Jump_02C_50BC                              ; $4FAE: $C3 $BC $50


Jump_02C_4FB1:
    rst RST_10                                    ; $4FB1: $D7
    call Call_000_13ED                            ; $4FB2: $CD $ED $13
    ld a, $FF                                     ; $4FB5: $3E $FF
    ldh [rBGP], a                                 ; $4FB7: $E0 $47
    ld a, $80                                     ; $4FB9: $3E $80
    ldh [$FFE2], a                                ; $4FBB: $E0 $E2
    ld a, $00                                     ; $4FBD: $3E $00
    ldh [$FFE4], a                                ; $4FBF: $E0 $E4
    ld b, $3F                                     ; $4FC1: $06 $3F
    ld hl, $5100                                  ; $4FC3: $21 $00 $51
    rst RST_08                                    ; $4FC6: $CF
    ld c, $03                                     ; $4FC7: $0E $03
    ld b, $2D                                     ; $4FC9: $06 $2D
    ld hl, $42C2                                  ; $4FCB: $21 $C2 $42
    rst RST_08                                    ; $4FCE: $CF
    ld c, $03                                     ; $4FCF: $0E $03
    ld b, $2D                                     ; $4FD1: $06 $2D
    ld hl, $42DC                                  ; $4FD3: $21 $DC $42
    rst RST_08                                    ; $4FD6: $CF
    ld de, $6A00                                  ; $4FD7: $11 $00 $6A
    call Call_000_0FCF                            ; $4FDA: $CD $CF $0F
    call Call_000_0F9E                            ; $4FDD: $CD $9E $0F
    ld de, $0034                                  ; $4FE0: $11 $34 $00
    call Call_000_14C0                            ; $4FE3: $CD $C0 $14
    ld hl, $5156                                  ; $4FE6: $21 $56 $51
    ld c, $00                                     ; $4FE9: $0E $00
    call Call_000_19B0                            ; $4FEB: $CD $B0 $19
    ld a, $09                                     ; $4FEE: $3E $09
    ld [$C312], a                                 ; $4FF0: $EA $12 $C3
    ld a, $3C                                     ; $4FF3: $3E $3C
    ld [$C313], a                                 ; $4FF5: $EA $13 $C3
    ld a, $1B                                     ; $4FF8: $3E $1B
    ldh [rBGP], a                                 ; $4FFA: $E0 $47
    ld a, $C7                                     ; $4FFC: $3E $C7
    rst RST_18                                    ; $4FFE: $DF
    ld a, $00                                     ; $4FFF: $3E $00
    call Call_000_135D                            ; $5001: $CD $5D $13
    call Call_000_0424                            ; $5004: $CD $24 $04
    call Call_000_147A                            ; $5007: $CD $7A $14
    call Call_000_0438                            ; $500A: $CD $38 $04
    ld hl, $5163                                  ; $500D: $21 $63 $51
    ld c, $00                                     ; $5010: $0E $00
    call Call_000_19B0                            ; $5012: $CD $B0 $19
    call Call_000_0430                            ; $5015: $CD $30 $04
    call Call_000_0430                            ; $5018: $CD $30 $04
    ld hl, $516B                                  ; $501B: $21 $6B $51
    ld c, $00                                     ; $501E: $0E $00
    call Call_000_19B0                            ; $5020: $CD $B0 $19
    call Call_000_0424                            ; $5023: $CD $24 $04
    ld hl, $517D                                  ; $5026: $21 $7D $51
    ld c, $00                                     ; $5029: $0E $00
    call Call_000_19B0                            ; $502B: $CD $B0 $19
    call Call_000_0424                            ; $502E: $CD $24 $04
    ld a, [$C2F2]                                 ; $5031: $FA $F2 $C2
    cp $03                                        ; $5034: $FE $03
    jr c, jr_02C_5055                             ; $5036: $38 $1D

    ld hl, $518A                                  ; $5038: $21 $8A $51
    ld c, $00                                     ; $503B: $0E $00
    call Call_000_19B0                            ; $503D: $CD $B0 $19
    call Call_000_0424                            ; $5040: $CD $24 $04
    ld a, [$C2F2]                                 ; $5043: $FA $F2 $C2
    cp $0A                                        ; $5046: $FE $0A
    jr c, jr_02C_5055                             ; $5048: $38 $0B

    ld hl, $519B                                  ; $504A: $21 $9B $51
    ld c, $00                                     ; $504D: $0E $00
    call Call_000_19B0                            ; $504F: $CD $B0 $19
    call Call_000_0424                            ; $5052: $CD $24 $04

jr_02C_5055:
    call Call_02C_50FE                            ; $5055: $CD $FE $50
    jp c, Jump_02C_5060                           ; $5058: $DA $60 $50

    call Call_000_0424                            ; $505B: $CD $24 $04
    jr jr_02C_5055                                ; $505E: $18 $F5

Jump_02C_5060:
    cp $03                                        ; $5060: $FE $03
    jr z, jr_02C_509C                             ; $5062: $28 $38

    cp $04                                        ; $5064: $FE $04
    jr z, jr_02C_5070                             ; $5066: $28 $08

    cp $01                                        ; $5068: $FE $01
    jr z, jr_02C_5090                             ; $506A: $28 $24

    cp $02                                        ; $506C: $FE $02
    jr z, jr_02C_5080                             ; $506E: $28 $10

jr_02C_5070:
    ld a, $C2                                     ; $5070: $3E $C2
    call Call_000_1360                            ; $5072: $CD $60 $13
    ld hl, $51AA                                  ; $5075: $21 $AA $51
    ld c, $00                                     ; $5078: $0E $00
    call Call_000_19B0                            ; $507A: $CD $B0 $19
    jp Jump_02C_50A8                              ; $507D: $C3 $A8 $50


jr_02C_5080:
    ld a, $C2                                     ; $5080: $3E $C2
    call Call_000_1360                            ; $5082: $CD $60 $13
    ld hl, $51B6                                  ; $5085: $21 $B6 $51
    ld c, $00                                     ; $5088: $0E $00
    call Call_000_19B0                            ; $508A: $CD $B0 $19
    jp Jump_02C_50A8                              ; $508D: $C3 $A8 $50


jr_02C_5090:
    ld hl, $C2F2                                  ; $5090: $21 $F2 $C2
    ld a, [hl]                                    ; $5093: $7E
    cp $FF                                        ; $5094: $FE $FF
    jr z, jr_02C_5099                             ; $5096: $28 $01

    inc [hl]                                      ; $5098: $34

jr_02C_5099:
    jp Jump_02C_50BC                              ; $5099: $C3 $BC $50


jr_02C_509C:
    ld hl, $C2F2                                  ; $509C: $21 $F2 $C2
    ld a, [hl]                                    ; $509F: $7E
    cp $FF                                        ; $50A0: $FE $FF
    jr z, jr_02C_50A5                             ; $50A2: $28 $01

    inc [hl]                                      ; $50A4: $34

jr_02C_50A5:
    jp Jump_02C_4F3C                              ; $50A5: $C3 $3C $4F


Jump_02C_50A8:
    ld b, $00                                     ; $50A8: $06 $00

Jump_02C_50AA:
    call Call_02C_50E2                            ; $50AA: $CD $E2 $50
    jp c, Jump_02C_50B6                           ; $50AD: $DA $B6 $50

    call Call_000_0424                            ; $50B0: $CD $24 $04
    jp Jump_02C_50AA                              ; $50B3: $C3 $AA $50


Jump_02C_50B6:
    ld b, $2B                                     ; $50B6: $06 $2B
    ld hl, $4000                                  ; $50B8: $21 $00 $40
    rst RST_00                                    ; $50BB: $C7

Jump_02C_50BC:
    ld b, $29                                     ; $50BC: $06 $29
    ld hl, $4000                                  ; $50BE: $21 $00 $40
    rst RST_00                                    ; $50C1: $C7

Call_02C_50C2:
    ld b, $2A                                     ; $50C2: $06 $2A
    ld hl, $45DB                                  ; $50C4: $21 $DB $45
    rst RST_08                                    ; $50C7: $CF
    ret                                           ; $50C8: $C9


    ld b, $F0                                     ; $50C9: $06 $F0

Jump_02C_50CB:
    ldh a, [$FF99]                                ; $50CB: $F0 $99
    bit 7, a                                      ; $50CD: $CB $7F
    jp nz, Jump_02C_50E0                          ; $50CF: $C2 $E0 $50

    ldh a, [$FFAC]                                ; $50D2: $F0 $AC
    bit 7, a                                      ; $50D4: $CB $7F
    jp nz, Jump_02C_50E0                          ; $50D6: $C2 $E0 $50

    call Call_000_0424                            ; $50D9: $CD $24 $04
    dec b                                         ; $50DC: $05
    jp nz, Jump_02C_50CB                          ; $50DD: $C2 $CB $50

Jump_02C_50E0:
    scf                                           ; $50E0: $37
    ret                                           ; $50E1: $C9


Call_02C_50E2:
    ld bc, $01E0                                  ; $50E2: $01 $E0 $01

Jump_02C_50E5:
    ldh a, [$FF99]                                ; $50E5: $F0 $99
    bit 7, a                                      ; $50E7: $CB $7F
    jp nz, Jump_02C_50FC                          ; $50E9: $C2 $FC $50

    ldh a, [$FFAC]                                ; $50EC: $F0 $AC
    bit 7, a                                      ; $50EE: $CB $7F
    jp nz, Jump_02C_50FC                          ; $50F0: $C2 $FC $50

    call Call_000_0424                            ; $50F3: $CD $24 $04
    dec bc                                        ; $50F6: $0B
    ld a, b                                       ; $50F7: $78
    or c                                          ; $50F8: $B1
    jp nz, Jump_02C_50E5                          ; $50F9: $C2 $E5 $50

Jump_02C_50FC:
    scf                                           ; $50FC: $37
    ret                                           ; $50FD: $C9


Call_02C_50FE:
    ldh a, [$FF99]                                ; $50FE: $F0 $99
    bit 7, a                                      ; $5100: $CB $7F
    jp nz, Jump_02C_5138                          ; $5102: $C2 $38 $51

    ldh a, [$FFAC]                                ; $5105: $F0 $AC
    bit 7, a                                      ; $5107: $CB $7F
    jp nz, Jump_02C_5138                          ; $5109: $C2 $38 $51

    ldh a, [$FF99]                                ; $510C: $F0 $99
    bit 6, a                                      ; $510E: $CB $77
    jp nz, Jump_02C_5143                          ; $5110: $C2 $43 $51

    ldh a, [$FFAC]                                ; $5113: $F0 $AC
    bit 6, a                                      ; $5115: $CB $77
    jp nz, Jump_02C_5143                          ; $5117: $C2 $43 $51

    ldh a, [$FF99]                                ; $511A: $F0 $99
    bit 4, a                                      ; $511C: $CB $67
    jp nz, Jump_02C_514E                          ; $511E: $C2 $4E $51

    ldh a, [$FFAC]                                ; $5121: $F0 $AC
    bit 4, a                                      ; $5123: $CB $67
    jp nz, Jump_02C_514E                          ; $5125: $C2 $4E $51

    ldh a, [$FF99]                                ; $5128: $F0 $99
    bit 5, a                                      ; $512A: $CB $6F
    jp nz, Jump_02C_5152                          ; $512C: $C2 $52 $51

    ldh a, [$FFAC]                                ; $512F: $F0 $AC
    bit 5, a                                      ; $5131: $CB $6F
    jp nz, Jump_02C_5152                          ; $5133: $C2 $52 $51

jr_02C_5136:
    xor a                                         ; $5136: $AF
    ret                                           ; $5137: $C9


Jump_02C_5138:
    ld a, [$C2F2]                                 ; $5138: $FA $F2 $C2
    cp $03                                        ; $513B: $FE $03
    jr c, jr_02C_5136                             ; $513D: $38 $F7

    ld a, $01                                     ; $513F: $3E $01
    scf                                           ; $5141: $37
    ret                                           ; $5142: $C9


Jump_02C_5143:
    ld a, [$C2F2]                                 ; $5143: $FA $F2 $C2
    cp $0A                                        ; $5146: $FE $0A
    jr c, jr_02C_5136                             ; $5148: $38 $EC

    ld a, $02                                     ; $514A: $3E $02
    scf                                           ; $514C: $37
    ret                                           ; $514D: $C9


Jump_02C_514E:
    ld a, $03                                     ; $514E: $3E $03
    scf                                           ; $5150: $37
    ret                                           ; $5151: $C9


Jump_02C_5152:
    ld a, $04                                     ; $5152: $3E $04
    scf                                           ; $5154: $37
    ret                                           ; $5155: $C9


    and l                                         ; $5156: $A5
    sbc d                                         ; $5157: $9A
    ld a, [bc]                                    ; $5158: $0A
    or b                                          ; $5159: $B0
    inc de                                        ; $515A: $13
    ld d, e                                       ; $515B: $53
    ld sp, $E3B0                                  ; $515C: $31 $B0 $E3
    ld d, b                                       ; $515F: $50
    cp b                                          ; $5160: $B8
    cp b                                          ; $5161: $B8
    cp b                                          ; $5162: $B8
    rlca                                          ; $5163: $07
    sbc e                                         ; $5164: $9B
    dec b                                         ; $5165: $05
    ld h, h                                       ; $5166: $64
    ld [bc], a                                    ; $5167: $02
    ld [hl-], a                                   ; $5168: $32
    jp nc, Jump_02C_4369                          ; $5169: $D2 $69 $43

    sbc e                                         ; $516C: $9B
    rrca                                          ; $516D: $0F
    dec h                                         ; $516E: $25
    sbc a                                         ; $516F: $9F
    ld e, e                                       ; $5170: $5B
    db $ED                                        ; $5171: $ED
    cp b                                          ; $5172: $B8
    cp b                                          ; $5173: $B8
    cp b                                          ; $5174: $B8
    inc d                                         ; $5175: $14
    ld [hl], h                                    ; $5176: $74
    or b                                          ; $5177: $B0
    or b                                          ; $5178: $B0
    ld d, d                                       ; $5179: $52
    ld h, d                                       ; $517A: $62
    inc de                                        ; $517B: $13
    jp nc, $9B63                                  ; $517C: $D2 $63 $9B

    ld a, [bc]                                    ; $517F: $0A
    ld h, $9F                                     ; $5180: $26 $9F
    ld e, e                                       ; $5182: $5B
    db $ED                                        ; $5183: $ED
    cp b                                          ; $5184: $B8
    cp b                                          ; $5185: $B8
    cp b                                          ; $5186: $B8
    ret nz                                        ; $5187: $C0

    or e                                          ; $5188: $B3
    jp nc, $9B83                                  ; $5189: $D2 $83 $9B

    ld c, $3D                                     ; $518C: $0E $3D
    ld e, e                                       ; $518E: $5B
    or a                                          ; $518F: $B7
    ld e, a                                       ; $5190: $5F
    cp b                                          ; $5191: $B8
    cp b                                          ; $5192: $B8
    cp b                                          ; $5193: $B8
    inc e                                         ; $5194: $1C
    adc $DB                                       ; $5195: $CE $DB
    pop hl                                        ; $5197: $E1
    db $10                                        ; $5198: $10
    inc bc                                        ; $5199: $03
    jp nc, $9BA3                                  ; $519A: $D2 $A3 $9B

    inc c                                         ; $519D: $0C
    ld a, $DE                                     ; $519E: $3E $DE
    dec e                                         ; $51A0: $1D
    ld e, a                                       ; $51A1: $5F
    cp b                                          ; $51A2: $B8
    cp b                                          ; $51A3: $B8
    cp b                                          ; $51A4: $B8
    or h                                          ; $51A5: $B4
    ld [bc], a                                    ; $51A6: $02
    ld sp, hl                                     ; $51A7: $F9
    ld [hl], e                                    ; $51A8: $73
    jp nc, $9BE5                                  ; $51A9: $D2 $E5 $9B

    add hl, bc                                    ; $51AC: $09
    ld d, c                                       ; $51AD: $51
    db $10                                        ; $51AE: $10
    ret nc                                        ; $51AF: $D0

    ld d, d                                       ; $51B0: $52
    ld de, $B850                                  ; $51B1: $11 $50 $B8
    cp b                                          ; $51B4: $B8
    cp b                                          ; $51B5: $B8
    push hl                                       ; $51B6: $E5
    sbc e                                         ; $51B7: $9B
    ld a, [bc]                                    ; $51B8: $0A
    inc b                                         ; $51B9: $04
    ret nz                                        ; $51BA: $C0

    ld [hl-], a                                   ; $51BB: $32
    or c                                          ; $51BC: $B1
    ld [hl], b                                    ; $51BD: $70
    jr nc, jr_02C_51C1                            ; $51BE: $30 $01

    cp b                                          ; $51C0: $B8

jr_02C_51C1:
    cp b                                          ; $51C1: $B8
    cp b                                          ; $51C2: $B8
    di                                            ; $51C3: $F3
    rst RST_10                                    ; $51C4: $D7
    ld hl, $C03A                                  ; $51C5: $21 $3A $C0
    res 1, [hl]                                   ; $51C8: $CB $8E
    xor a                                         ; $51CA: $AF
    ldh [rBGP], a                                 ; $51CB: $E0 $47
    ldh [rOBP0], a                                ; $51CD: $E0 $48
    ldh [rOBP1], a                                ; $51CF: $E0 $49
    ld de, $0000                                  ; $51D1: $11 $00 $00
    call Call_000_14C0                            ; $51D4: $CD $C0 $14
    call Call_000_0FBD                            ; $51D7: $CD $BD $0F
    call Call_000_0FC6                            ; $51DA: $CD $C6 $0F
    xor a                                         ; $51DD: $AF
    ldh [$FFE4], a                                ; $51DE: $E0 $E4
    ldh [$FFE2], a                                ; $51E0: $E0 $E2
    ld [$C2AA], a                                 ; $51E2: $EA $AA $C2
    ld [$C2AC], a                                 ; $51E5: $EA $AC $C2
    call Call_000_18EB                            ; $51E8: $CD $EB $18
    call Call_000_0F9E                            ; $51EB: $CD $9E $0F
    ld a, $C7                                     ; $51EE: $3E $C7
    rst RST_18                                    ; $51F0: $DF
    ei                                            ; $51F1: $FB
    call Call_000_0424                            ; $51F2: $CD $24 $04
    ld a, $3F                                     ; $51F5: $3E $3F
    ldh [rOBP0], a                                ; $51F7: $E0 $48
    ld a, $00                                     ; $51F9: $3E $00
    ldh [rOBP1], a                                ; $51FB: $E0 $49
    ld a, $1B                                     ; $51FD: $3E $1B
    ldh [rBGP], a                                 ; $51FF: $E0 $47
    ld a, $91                                     ; $5201: $3E $91
    call Call_000_135D                            ; $5203: $CD $5D $13
    ld hl, $5519                                  ; $5206: $21 $19 $55
    call Call_000_19C8                            ; $5209: $CD $C8 $19
    call Call_000_0438                            ; $520C: $CD $38 $04
    call Call_000_0438                            ; $520F: $CD $38 $04
    call Call_000_0FBD                            ; $5212: $CD $BD $0F
    ld hl, $5523                                  ; $5215: $21 $23 $55
    call Call_000_19C8                            ; $5218: $CD $C8 $19
    call Call_000_0424                            ; $521B: $CD $24 $04
    ld hl, $5537                                  ; $521E: $21 $37 $55
    call Call_000_19C8                            ; $5221: $CD $C8 $19
    call Call_000_0424                            ; $5224: $CD $24 $04
    ld hl, $5543                                  ; $5227: $21 $43 $55
    call Call_000_19C8                            ; $522A: $CD $C8 $19
    call Call_02C_54F2                            ; $522D: $CD $F2 $54
    ld hl, $5554                                  ; $5230: $21 $54 $55
    call Call_000_19C8                            ; $5233: $CD $C8 $19
    call Call_000_0424                            ; $5236: $CD $24 $04
    ld hl, $556B                                  ; $5239: $21 $6B $55
    call Call_000_19C8                            ; $523C: $CD $C8 $19
    call Call_000_0424                            ; $523F: $CD $24 $04
    call Call_02C_54F2                            ; $5242: $CD $F2 $54
    ld hl, $557F                                  ; $5245: $21 $7F $55
    call Call_000_19C8                            ; $5248: $CD $C8 $19
    call Call_000_0424                            ; $524B: $CD $24 $04
    ld hl, $558C                                  ; $524E: $21 $8C $55
    call Call_000_19C8                            ; $5251: $CD $C8 $19
    call Call_000_0424                            ; $5254: $CD $24 $04
    ld hl, $559E                                  ; $5257: $21 $9E $55
    call Call_000_19C8                            ; $525A: $CD $C8 $19
    call Call_02C_54F2                            ; $525D: $CD $F2 $54
    ld hl, $55AA                                  ; $5260: $21 $AA $55
    call Call_000_19C8                            ; $5263: $CD $C8 $19
    call Call_000_0424                            ; $5266: $CD $24 $04
    ld hl, $55B7                                  ; $5269: $21 $B7 $55
    call Call_000_19C8                            ; $526C: $CD $C8 $19
    call Call_02C_54F2                            ; $526F: $CD $F2 $54
    ld hl, $55C8                                  ; $5272: $21 $C8 $55
    call Call_000_19C8                            ; $5275: $CD $C8 $19
    call Call_000_0424                            ; $5278: $CD $24 $04
    ld hl, $55D8                                  ; $527B: $21 $D8 $55
    call Call_000_19C8                            ; $527E: $CD $C8 $19
    call Call_000_0424                            ; $5281: $CD $24 $04
    ld hl, $55E3                                  ; $5284: $21 $E3 $55
    call Call_000_19C8                            ; $5287: $CD $C8 $19
    call Call_02C_54F2                            ; $528A: $CD $F2 $54
    ld hl, $55ED                                  ; $528D: $21 $ED $55
    call Call_000_19C8                            ; $5290: $CD $C8 $19
    call Call_000_0424                            ; $5293: $CD $24 $04
    ld hl, $55FC                                  ; $5296: $21 $FC $55
    call Call_000_19C8                            ; $5299: $CD $C8 $19
    call Call_000_0424                            ; $529C: $CD $24 $04
    ld hl, $5606                                  ; $529F: $21 $06 $56
    call Call_000_19C8                            ; $52A2: $CD $C8 $19
    call Call_02C_54F2                            ; $52A5: $CD $F2 $54
    ld hl, $5612                                  ; $52A8: $21 $12 $56
    call Call_000_19C8                            ; $52AB: $CD $C8 $19
    call Call_000_0424                            ; $52AE: $CD $24 $04
    ld hl, $561F                                  ; $52B1: $21 $1F $56
    call Call_000_19C8                            ; $52B4: $CD $C8 $19
    call Call_000_0424                            ; $52B7: $CD $24 $04
    ld hl, $562A                                  ; $52BA: $21 $2A $56
    call Call_000_19C8                            ; $52BD: $CD $C8 $19
    call Call_000_0424                            ; $52C0: $CD $24 $04
    ld hl, $5635                                  ; $52C3: $21 $35 $56
    call Call_000_19C8                            ; $52C6: $CD $C8 $19
    call Call_000_0424                            ; $52C9: $CD $24 $04
    ld hl, $563F                                  ; $52CC: $21 $3F $56
    call Call_000_19C8                            ; $52CF: $CD $C8 $19
    call Call_02C_54F2                            ; $52D2: $CD $F2 $54
    ld hl, $564B                                  ; $52D5: $21 $4B $56
    call Call_000_19C8                            ; $52D8: $CD $C8 $19
    call Call_000_0424                            ; $52DB: $CD $24 $04
    ld hl, $5656                                  ; $52DE: $21 $56 $56
    call Call_000_19C8                            ; $52E1: $CD $C8 $19
    call Call_02C_54F2                            ; $52E4: $CD $F2 $54
    ld hl, $566A                                  ; $52E7: $21 $6A $56
    call Call_000_19C8                            ; $52EA: $CD $C8 $19
    call Call_000_0424                            ; $52ED: $CD $24 $04
    ld hl, $5676                                  ; $52F0: $21 $76 $56
    call Call_000_19C8                            ; $52F3: $CD $C8 $19
    call Call_000_0424                            ; $52F6: $CD $24 $04
    ld hl, $5687                                  ; $52F9: $21 $87 $56
    call Call_000_19C8                            ; $52FC: $CD $C8 $19
    call Call_000_0424                            ; $52FF: $CD $24 $04
    ld hl, $5693                                  ; $5302: $21 $93 $56
    call Call_000_19C8                            ; $5305: $CD $C8 $19
    call Call_02C_54F2                            ; $5308: $CD $F2 $54
    ld hl, $56A7                                  ; $530B: $21 $A7 $56
    call Call_000_19C8                            ; $530E: $CD $C8 $19
    call Call_000_0424                            ; $5311: $CD $24 $04
    ld hl, $56BB                                  ; $5314: $21 $BB $56
    call Call_000_19C8                            ; $5317: $CD $C8 $19
    call Call_000_0424                            ; $531A: $CD $24 $04
    ld hl, $56CF                                  ; $531D: $21 $CF $56
    call Call_000_19C8                            ; $5320: $CD $C8 $19
    call Call_000_0424                            ; $5323: $CD $24 $04
    ld hl, $56E1                                  ; $5326: $21 $E1 $56
    call Call_000_19C8                            ; $5329: $CD $C8 $19
    call Call_02C_54F2                            ; $532C: $CD $F2 $54
    ld hl, $56F4                                  ; $532F: $21 $F4 $56
    call Call_000_19C8                            ; $5332: $CD $C8 $19
    call Call_000_0424                            ; $5335: $CD $24 $04
    ld hl, $5707                                  ; $5338: $21 $07 $57
    call Call_000_19C8                            ; $533B: $CD $C8 $19
    call Call_000_0424                            ; $533E: $CD $24 $04
    ld hl, $5718                                  ; $5341: $21 $18 $57
    call Call_000_19C8                            ; $5344: $CD $C8 $19
    call Call_000_0424                            ; $5347: $CD $24 $04
    ld hl, $572B                                  ; $534A: $21 $2B $57
    call Call_000_19C8                            ; $534D: $CD $C8 $19
    call Call_000_0424                            ; $5350: $CD $24 $04
    ld hl, $573B                                  ; $5353: $21 $3B $57
    call Call_000_19C8                            ; $5356: $CD $C8 $19
    call Call_000_0424                            ; $5359: $CD $24 $04
    ld hl, $574A                                  ; $535C: $21 $4A $57
    call Call_000_19C8                            ; $535F: $CD $C8 $19
    call Call_000_0424                            ; $5362: $CD $24 $04
    ld hl, $575D                                  ; $5365: $21 $5D $57
    call Call_000_19C8                            ; $5368: $CD $C8 $19
    call Call_000_0424                            ; $536B: $CD $24 $04
    ld hl, $576B                                  ; $536E: $21 $6B $57
    call Call_000_19C8                            ; $5371: $CD $C8 $19
    call Call_000_0424                            ; $5374: $CD $24 $04
    ld hl, $5779                                  ; $5377: $21 $79 $57
    call Call_000_19C8                            ; $537A: $CD $C8 $19
    call Call_000_0424                            ; $537D: $CD $24 $04
    ld hl, $5789                                  ; $5380: $21 $89 $57
    call Call_000_19C8                            ; $5383: $CD $C8 $19
    call Call_000_0424                            ; $5386: $CD $24 $04
    ld hl, $579B                                  ; $5389: $21 $9B $57
    call Call_000_19C8                            ; $538C: $CD $C8 $19
    call Call_000_0424                            ; $538F: $CD $24 $04
    ld hl, $57AD                                  ; $5392: $21 $AD $57
    call Call_000_19C8                            ; $5395: $CD $C8 $19
    call Call_000_0424                            ; $5398: $CD $24 $04
    ld hl, $57BE                                  ; $539B: $21 $BE $57
    call Call_000_19C8                            ; $539E: $CD $C8 $19
    call Call_000_0424                            ; $53A1: $CD $24 $04
    ld hl, $57D2                                  ; $53A4: $21 $D2 $57
    call Call_000_19C8                            ; $53A7: $CD $C8 $19
    call Call_02C_54F2                            ; $53AA: $CD $F2 $54
    ld hl, $57E6                                  ; $53AD: $21 $E6 $57
    call Call_000_19C8                            ; $53B0: $CD $C8 $19
    call Call_000_0424                            ; $53B3: $CD $24 $04
    ld hl, $57F9                                  ; $53B6: $21 $F9 $57
    call Call_000_19C8                            ; $53B9: $CD $C8 $19
    call Call_000_0424                            ; $53BC: $CD $24 $04
    ld hl, $5809                                  ; $53BF: $21 $09 $58
    call Call_000_19C8                            ; $53C2: $CD $C8 $19
    call Call_02C_54F2                            ; $53C5: $CD $F2 $54
    ld hl, $581A                                  ; $53C8: $21 $1A $58
    call Call_000_19C8                            ; $53CB: $CD $C8 $19
    call Call_000_0424                            ; $53CE: $CD $24 $04
    ld hl, $5828                                  ; $53D1: $21 $28 $58
    call Call_000_19C8                            ; $53D4: $CD $C8 $19
    call Call_02C_54F2                            ; $53D7: $CD $F2 $54
    ld hl, $5836                                  ; $53DA: $21 $36 $58
    call Call_000_19C8                            ; $53DD: $CD $C8 $19
    call Call_000_0424                            ; $53E0: $CD $24 $04
    ld hl, $5847                                  ; $53E3: $21 $47 $58
    call Call_000_19C8                            ; $53E6: $CD $C8 $19
    call Call_02C_54F2                            ; $53E9: $CD $F2 $54
    ld hl, $5857                                  ; $53EC: $21 $57 $58
    call Call_000_19C8                            ; $53EF: $CD $C8 $19
    call Call_000_0424                            ; $53F2: $CD $24 $04
    ld hl, $5863                                  ; $53F5: $21 $63 $58
    call Call_000_19C8                            ; $53F8: $CD $C8 $19
    call Call_000_0424                            ; $53FB: $CD $24 $04
    ld hl, $5868                                  ; $53FE: $21 $68 $58
    call Call_000_19C8                            ; $5401: $CD $C8 $19
    call Call_02C_54F2                            ; $5404: $CD $F2 $54
    ret                                           ; $5407: $C9


    di                                            ; $5408: $F3
    rst RST_10                                    ; $5409: $D7
    ld hl, $C03A                                  ; $540A: $21 $3A $C0
    res 1, [hl]                                   ; $540D: $CB $8E
    xor a                                         ; $540F: $AF
    ldh [rBGP], a                                 ; $5410: $E0 $47
    ldh [rOBP0], a                                ; $5412: $E0 $48
    ldh [rOBP1], a                                ; $5414: $E0 $49
    call Call_000_0FBD                            ; $5416: $CD $BD $0F
    call Call_000_0FC6                            ; $5419: $CD $C6 $0F
    xor a                                         ; $541C: $AF
    ldh [$FFE4], a                                ; $541D: $E0 $E4
    ldh [$FFE2], a                                ; $541F: $E0 $E2
    ld [$C2AA], a                                 ; $5421: $EA $AA $C2
    ld [$C2AC], a                                 ; $5424: $EA $AC $C2
    call Call_000_18EB                            ; $5427: $CD $EB $18
    call Call_000_0F9E                            ; $542A: $CD $9E $0F
    ld a, $C7                                     ; $542D: $3E $C7
    rst RST_18                                    ; $542F: $DF
    ei                                            ; $5430: $FB
    call Call_000_0424                            ; $5431: $CD $24 $04
    ld a, $3F                                     ; $5434: $3E $3F
    ldh [rOBP0], a                                ; $5436: $E0 $48
    ld a, $00                                     ; $5438: $3E $00
    ldh [rOBP1], a                                ; $543A: $E0 $49
    ld a, $1B                                     ; $543C: $3E $1B
    ldh [rBGP], a                                 ; $543E: $E0 $47
    ld hl, $5871                                  ; $5440: $21 $71 $58
    call Call_000_19C8                            ; $5443: $CD $C8 $19
    ld a, $00                                     ; $5446: $3E $00
    call Call_000_135D                            ; $5448: $CD $5D $13
    ld b, $0A                                     ; $544B: $06 $0A

Jump_02C_544D:
    call Call_000_0438                            ; $544D: $CD $38 $04
    dec b                                         ; $5450: $05
    jp nz, Jump_02C_544D                          ; $5451: $C2 $4D $54

    call Call_000_0FBD                            ; $5454: $CD $BD $0F
    ld a, [$C004]                                 ; $5457: $FA $04 $C0
    cp $01                                        ; $545A: $FE $01
    jr z, jr_02C_5465                             ; $545C: $28 $07

    cp $02                                        ; $545E: $FE $02
    jr z, jr_02C_549E                             ; $5460: $28 $3C

    jp Jump_02C_54F1                              ; $5462: $C3 $F1 $54


jr_02C_5465:
    ld hl, $587C                                  ; $5465: $21 $7C $58
    call Call_000_19C8                            ; $5468: $CD $C8 $19
    call Call_000_0430                            ; $546B: $CD $30 $04
    ld hl, $5893                                  ; $546E: $21 $93 $58
    call Call_000_19C8                            ; $5471: $CD $C8 $19
    call Call_000_0438                            ; $5474: $CD $38 $04
    ld hl, $5925                                  ; $5477: $21 $25 $59
    call Call_000_19C8                            ; $547A: $CD $C8 $19
    call Call_000_0430                            ; $547D: $CD $30 $04
    ld hl, $5938                                  ; $5480: $21 $38 $59
    call Call_000_19C8                            ; $5483: $CD $C8 $19
    call Call_000_0438                            ; $5486: $CD $38 $04
    ld hl, $594E                                  ; $5489: $21 $4E $59
    call Call_000_19C8                            ; $548C: $CD $C8 $19
    call Call_000_0430                            ; $548F: $CD $30 $04
    ld hl, $595F                                  ; $5492: $21 $5F $59
    call Call_000_19C8                            ; $5495: $CD $C8 $19
    call Call_000_0438                            ; $5498: $CD $38 $04
    jp Jump_02C_54E9                              ; $549B: $C3 $E9 $54


jr_02C_549E:
    ld hl, $587C                                  ; $549E: $21 $7C $58
    call Call_000_19C8                            ; $54A1: $CD $C8 $19
    call Call_000_0430                            ; $54A4: $CD $30 $04
    ld hl, $5893                                  ; $54A7: $21 $93 $58
    call Call_000_19C8                            ; $54AA: $CD $C8 $19
    call Call_000_0438                            ; $54AD: $CD $38 $04
    ld hl, $58AA                                  ; $54B0: $21 $AA $58
    call Call_000_19C8                            ; $54B3: $CD $C8 $19
    call Call_000_0438                            ; $54B6: $CD $38 $04
    ld hl, $58BE                                  ; $54B9: $21 $BE $58
    call Call_000_19C8                            ; $54BC: $CD $C8 $19
    call Call_000_0438                            ; $54BF: $CD $38 $04
    ld hl, $58D5                                  ; $54C2: $21 $D5 $58
    call Call_000_19C8                            ; $54C5: $CD $C8 $19
    call Call_000_0430                            ; $54C8: $CD $30 $04
    ld hl, $58E8                                  ; $54CB: $21 $E8 $58
    call Call_000_19C8                            ; $54CE: $CD $C8 $19
    call Call_000_0438                            ; $54D1: $CD $38 $04
    ld hl, $58FE                                  ; $54D4: $21 $FE $58
    call Call_000_19C8                            ; $54D7: $CD $C8 $19
    call Call_000_0430                            ; $54DA: $CD $30 $04
    ld hl, $590F                                  ; $54DD: $21 $0F $59
    call Call_000_19C8                            ; $54E0: $CD $C8 $19
    call Call_000_0438                            ; $54E3: $CD $38 $04
    call Call_000_0424                            ; $54E6: $CD $24 $04

Jump_02C_54E9:
jr_02C_54E9:
    call Call_000_0424                            ; $54E9: $CD $24 $04
    call Call_02C_5507                            ; $54EC: $CD $07 $55
    jr nc, jr_02C_54E9                            ; $54EF: $30 $F8

Jump_02C_54F1:
    ret                                           ; $54F1: $C9


Call_02C_54F2:
    ld bc, $01E0                                  ; $54F2: $01 $E0 $01

Jump_02C_54F5:
    call Call_02C_5507                            ; $54F5: $CD $07 $55
    jr c, jr_02C_5503                             ; $54F8: $38 $09

    call Call_000_0424                            ; $54FA: $CD $24 $04
    dec bc                                        ; $54FD: $0B
    ld a, b                                       ; $54FE: $78
    or c                                          ; $54FF: $B1
    jp nz, Jump_02C_54F5                          ; $5500: $C2 $F5 $54

jr_02C_5503:
    call Call_000_0FBD                            ; $5503: $CD $BD $0F
    ret                                           ; $5506: $C9


Call_02C_5507:
    ldh a, [$FF99]                                ; $5507: $F0 $99
    bit 7, a                                      ; $5509: $CB $7F
    jp nz, Jump_02C_5517                          ; $550B: $C2 $17 $55

    ldh a, [$FFAC]                                ; $550E: $F0 $AC
    bit 7, a                                      ; $5510: $CB $7F
    jp nz, Jump_02C_5517                          ; $5512: $C2 $17 $55

    xor a                                         ; $5515: $AF
    ret                                           ; $5516: $C9


Jump_02C_5517:
    scf                                           ; $5517: $37
    ret                                           ; $5518: $C9


    ld b, $99                                     ; $5519: $06 $99
    rlca                                          ; $551B: $07
    dec l                                         ; $551C: $2D
    ld d, e                                       ; $551D: $53
    ld d, h                                       ; $551E: $54
    ld b, c                                       ; $551F: $41
    ld b, [hl]                                    ; $5520: $46
    ld b, [hl]                                    ; $5521: $46
    dec l                                         ; $5522: $2D
    add c                                         ; $5523: $81
    sbc b                                         ; $5524: $98
    ld de, $532D                                  ; $5525: $11 $2D $53
    ld b, l                                       ; $5528: $45
    ld c, [hl]                                    ; $5529: $4E
    ld c, c                                       ; $552A: $49
    ld c, a                                       ; $552B: $4F
    ld d, d                                       ; $552C: $52
    jr nz, jr_02C_5574                            ; $552D: $20 $45

    ld e, b                                       ; $552F: $58
    ld b, l                                       ; $5530: $45
    ld b, e                                       ; $5531: $43
    ld d, l                                       ; $5532: $55
    ld d, h                                       ; $5533: $54
    ld c, c                                       ; $5534: $49
    ld d, [hl]                                    ; $5535: $56
    ld b, l                                       ; $5536: $45
    jp z, Jump_000_0998                           ; $5537: $CA $98 $09

    ld d, b                                       ; $553A: $50
    ld d, d                                       ; $553B: $52
    ld c, a                                       ; $553C: $4F
    ld b, h                                       ; $553D: $44
    ld d, l                                       ; $553E: $55
    ld b, e                                       ; $553F: $43
    ld b, l                                       ; $5540: $45
    ld d, d                                       ; $5541: $52
    dec l                                         ; $5542: $2D
    ld b, e                                       ; $5543: $43
    sbc c                                         ; $5544: $99
    ld c, $48                                     ; $5545: $0E $48
    ld c, c                                       ; $5547: $49
    ld d, d                                       ; $5548: $52
    ld c, a                                       ; $5549: $4F
    ld c, b                                       ; $554A: $48
    ld c, c                                       ; $554B: $49
    ld d, e                                       ; $554C: $53
    ld b, c                                       ; $554D: $41
    jr nz, @+$55                                  ; $554E: $20 $53

    ld b, c                                       ; $5550: $41
    ld d, h                                       ; $5551: $54
    ld c, a                                       ; $5552: $4F
    ld c, b                                       ; $5553: $48
    and b                                         ; $5554: $A0
    sbc b                                         ; $5555: $98
    inc d                                         ; $5556: $14
    dec l                                         ; $5557: $2D
    ld b, l                                       ; $5558: $45
    ld e, b                                       ; $5559: $58
    ld b, l                                       ; $555A: $45
    ld b, e                                       ; $555B: $43
    ld d, l                                       ; $555C: $55
    ld d, h                                       ; $555D: $54
    ld c, c                                       ; $555E: $49
    ld d, [hl]                                    ; $555F: $56
    ld b, l                                       ; $5560: $45
    jr nz, jr_02C_55B3                            ; $5561: $20 $50

    ld d, d                                       ; $5563: $52
    ld c, a                                       ; $5564: $4F
    ld b, h                                       ; $5565: $44
    ld d, l                                       ; $5566: $55
    ld b, e                                       ; $5567: $43
    ld b, l                                       ; $5568: $45
    ld d, d                                       ; $5569: $52
    dec l                                         ; $556A: $2D
    ld bc, $1199                                  ; $556B: $01 $99 $11
    ld c, l                                       ; $556E: $4D
    ld b, c                                       ; $556F: $41
    ld d, e                                       ; $5570: $53
    ld b, c                                       ; $5571: $41
    ld c, b                                       ; $5572: $48
    ld c, c                                       ; $5573: $49

jr_02C_5574:
    ld d, d                                       ; $5574: $52
    ld c, a                                       ; $5575: $4F
    jr nz, jr_02C_55C5                            ; $5576: $20 $4D

    ld c, a                                       ; $5578: $4F
    ld d, d                                       ; $5579: $52
    ld c, c                                       ; $557A: $49
    ld c, e                                       ; $557B: $4B
    ld b, c                                       ; $557C: $41
    ld d, a                                       ; $557D: $57
    ld b, c                                       ; $557E: $41
    add l                                         ; $557F: $85
    sbc b                                         ; $5580: $98
    ld a, [bc]                                    ; $5581: $0A
    dec l                                         ; $5582: $2D
    ld d, b                                       ; $5583: $50
    ld d, d                                       ; $5584: $52
    ld c, a                                       ; $5585: $4F
    ld b, h                                       ; $5586: $44
    ld d, l                                       ; $5587: $55
    ld b, e                                       ; $5588: $43
    ld b, l                                       ; $5589: $45
    ld d, d                                       ; $558A: $52
    dec l                                         ; $558B: $2D
    ld [bc], a                                    ; $558C: $02
    sbc c                                         ; $558D: $99
    rrca                                          ; $558E: $0F
    ld d, h                                       ; $558F: $54
    ld b, c                                       ; $5590: $41
    ld c, e                                       ; $5591: $4B
    ld b, c                                       ; $5592: $41
    ld e, c                                       ; $5593: $59
    ld d, l                                       ; $5594: $55
    ld c, e                                       ; $5595: $4B
    ld c, c                                       ; $5596: $49
    jr nz, jr_02C_55E7                            ; $5597: $20 $4E

    ld b, c                                       ; $5599: $41
    ld c, e                                       ; $559A: $4B
    ld b, c                                       ; $559B: $41
    ld c, [hl]                                    ; $559C: $4E
    ld c, a                                       ; $559D: $4F
    add l                                         ; $559E: $85
    sbc c                                         ; $559F: $99
    add hl, bc                                    ; $55A0: $09
    ld d, h                                       ; $55A1: $54
    ld l, $49                                     ; $55A2: $2E $49
    ld d, e                                       ; $55A4: $53
    ld c, b                                       ; $55A5: $48
    ld c, c                                       ; $55A6: $49
    ld b, a                                       ; $55A7: $47
    ld b, c                                       ; $55A8: $41
    ld c, c                                       ; $55A9: $49
    and l                                         ; $55AA: $A5
    sbc b                                         ; $55AB: $98
    ld a, [bc]                                    ; $55AC: $0A
    dec l                                         ; $55AD: $2D
    ld b, h                                       ; $55AE: $44
    ld c, c                                       ; $55AF: $49
    ld d, d                                       ; $55B0: $52
    ld b, l                                       ; $55B1: $45
    ld b, e                                       ; $55B2: $43

jr_02C_55B3:
    ld d, h                                       ; $55B3: $54
    ld c, a                                       ; $55B4: $4F
    ld d, d                                       ; $55B5: $52
    dec l                                         ; $55B6: $2D
    inc hl                                        ; $55B7: $23
    sbc c                                         ; $55B8: $99
    ld c, $46                                     ; $55B9: $0E $46
    ld d, l                                       ; $55BB: $55
    ld c, l                                       ; $55BC: $4D
    ld c, c                                       ; $55BD: $49
    ld c, b                                       ; $55BE: $48
    ld c, c                                       ; $55BF: $49
    ld c, e                                       ; $55C0: $4B
    ld c, a                                       ; $55C1: $4F
    jr nz, jr_02C_5613                            ; $55C2: $20 $4F

    ld e, d                                       ; $55C4: $5A

jr_02C_55C5:
    ld b, c                                       ; $55C5: $41
    ld d, a                                       ; $55C6: $57
    ld b, c                                       ; $55C7: $41
    jp Jump_000_0D98                              ; $55C8: $C3 $98 $0D


    dec l                                         ; $55CB: $2D
    ld b, c                                       ; $55CC: $41
    ld d, d                                       ; $55CD: $52
    ld d, d                                       ; $55CE: $52
    ld b, c                                       ; $55CF: $41
    ld c, [hl]                                    ; $55D0: $4E
    ld b, a                                       ; $55D1: $47
    ld b, l                                       ; $55D2: $45
    ld c, l                                       ; $55D3: $4D
    ld b, l                                       ; $55D4: $45
    ld c, [hl]                                    ; $55D5: $4E
    ld d, h                                       ; $55D6: $54
    dec l                                         ; $55D7: $2D
    dec h                                         ; $55D8: $25
    sbc c                                         ; $55D9: $99
    ld [$2E54], sp                                ; $55DA: $08 $54 $2E
    ld d, e                                       ; $55DD: $53
    ld b, c                                       ; $55DE: $41
    ld c, c                                       ; $55DF: $49
    ld d, h                                       ; $55E0: $54
    ld c, a                                       ; $55E1: $4F
    ld c, b                                       ; $55E2: $48
    ld h, l                                       ; $55E3: $65
    sbc c                                         ; $55E4: $99
    rlca                                          ; $55E5: $07
    ld c, b                                       ; $55E6: $48

jr_02C_55E7:
    ld l, $4B                                     ; $55E7: $2E $4B
    ld c, a                                       ; $55E9: $4F
    ld c, c                                       ; $55EA: $49
    ld d, e                                       ; $55EB: $53
    ld c, a                                       ; $55EC: $4F
    call nz, $0C98                                ; $55ED: $C4 $98 $0C
    dec l                                         ; $55F0: $2D
    ld d, b                                       ; $55F1: $50
    ld d, d                                       ; $55F2: $52
    ld c, a                                       ; $55F3: $4F
    ld b, a                                       ; $55F4: $47
    ld d, d                                       ; $55F5: $52
    ld b, c                                       ; $55F6: $41
    ld c, l                                       ; $55F7: $4D
    ld c, l                                       ; $55F8: $4D
    ld b, l                                       ; $55F9: $45
    ld d, d                                       ; $55FA: $52
    dec l                                         ; $55FB: $2D
    ld h, $99                                     ; $55FC: $26 $99
    rlca                                          ; $55FE: $07
    ld c, b                                       ; $55FF: $48
    ld l, $4B                                     ; $5600: $2E $4B
    ld c, a                                       ; $5602: $4F
    ld c, c                                       ; $5603: $49
    ld d, e                                       ; $5604: $53
    ld c, a                                       ; $5605: $4F
    ld h, l                                       ; $5606: $65
    sbc c                                         ; $5607: $99
    add hl, bc                                    ; $5608: $09
    ld d, h                                       ; $5609: $54
    ld l, $49                                     ; $560A: $2E $49
    ld d, e                                       ; $560C: $53
    ld c, b                                       ; $560D: $48
    ld c, c                                       ; $560E: $49
    ld b, a                                       ; $560F: $47
    ld b, c                                       ; $5610: $41
    ld c, c                                       ; $5611: $49
    and l                                         ; $5612: $A5

jr_02C_5613:
    sbc b                                         ; $5613: $98
    ld a, [bc]                                    ; $5614: $0A
    dec l                                         ; $5615: $2D
    ld b, h                                       ; $5616: $44
    ld b, l                                       ; $5617: $45
    ld d, e                                       ; $5618: $53
    ld c, c                                       ; $5619: $49
    ld b, a                                       ; $561A: $47
    ld c, [hl]                                    ; $561B: $4E
    ld b, l                                       ; $561C: $45
    ld d, d                                       ; $561D: $52
    dec l                                         ; $561E: $2D
    ld b, $99                                     ; $561F: $06 $99
    ld [$2E54], sp                                ; $5621: $08 $54 $2E
    ld d, e                                       ; $5624: $53
    ld b, c                                       ; $5625: $41
    ld c, c                                       ; $5626: $49
    ld d, h                                       ; $5627: $54
    ld c, a                                       ; $5628: $4F
    ld d, l                                       ; $5629: $55
    ld b, [hl]                                    ; $562A: $46
    sbc c                                         ; $562B: $99
    ld [$2E41], sp                                ; $562C: $08 $41 $2E
    ld d, h                                       ; $562F: $54
    ld d, l                                       ; $5630: $55
    ld e, c                                       ; $5631: $59
    ld d, l                                       ; $5632: $55
    ld c, e                                       ; $5633: $4B
    ld c, c                                       ; $5634: $49
    add [hl]                                      ; $5635: $86
    sbc c                                         ; $5636: $99
    rlca                                          ; $5637: $07
    ld b, c                                       ; $5638: $41
    ld l, $48                                     ; $5639: $2E $48
    ld b, c                                       ; $563B: $41
    ld c, [hl]                                    ; $563C: $4E
    ld b, h                                       ; $563D: $44
    ld b, c                                       ; $563E: $41
    add $99                                       ; $563F: $C6 $99
    add hl, bc                                    ; $5641: $09
    ld c, b                                       ; $5642: $48
    ld l, $4D                                     ; $5643: $2E $4D
    ld b, c                                       ; $5645: $41
    ld d, h                                       ; $5646: $54
    ld d, l                                       ; $5647: $55
    ld c, [hl]                                    ; $5648: $4E
    ld c, a                                       ; $5649: $4F
    ld c, a                                       ; $564A: $4F
    push bc                                       ; $564B: $C5
    sbc b                                         ; $564C: $98
    ld [$554D], sp                                ; $564D: $08 $4D $55
    ld d, e                                       ; $5650: $53
    ld c, c                                       ; $5651: $49
    ld b, e                                       ; $5652: $43
    jr nz, @+$44                                  ; $5653: $20 $42

    ld e, c                                       ; $5655: $59
    ld hl, $1199                                  ; $5656: $21 $99 $11
    ld d, e                                       ; $5659: $53
    ld d, h                                       ; $565A: $54
    ld d, l                                       ; $565B: $55
    ld b, h                                       ; $565C: $44
    ld c, c                                       ; $565D: $49
    ld c, a                                       ; $565E: $4F
    jr nz, @+$52                                  ; $565F: $20 $50

    ld c, d                                       ; $5661: $4A
    jr nz, jr_02C_56A7                            ; $5662: $20 $43

    ld c, a                                       ; $5664: $4F
    ld l, $2C                                     ; $5665: $2E $2C
    ld c, h                                       ; $5667: $4C
    ld d, h                                       ; $5668: $54
    ld b, h                                       ; $5669: $44
    ld h, c                                       ; $566A: $61
    sbc b                                         ; $566B: $98
    add hl, bc                                    ; $566C: $09
    dec l                                         ; $566D: $2D
    ld b, h                                       ; $566E: $44
    ld b, l                                       ; $566F: $45
    ld b, c                                       ; $5670: $41
    ld b, h                                       ; $5671: $44
    ld c, b                                       ; $5672: $48
    ld b, l                                       ; $5673: $45
    ld b, c                                       ; $5674: $41
    ld d, h                                       ; $5675: $54
    and h                                         ; $5676: $A4
    sbc b                                         ; $5677: $98
    ld c, $46                                     ; $5678: $0E $46
    ld c, c                                       ; $567A: $49
    ld b, a                                       ; $567B: $47
    ld c, b                                       ; $567C: $48
    ld d, h                                       ; $567D: $54
    ld b, l                                       ; $567E: $45
    ld d, d                                       ; $567F: $52
    ld d, e                                       ; $5680: $53
    jr nz, jr_02C_56D7                            ; $5681: $20 $54

    ld b, l                                       ; $5683: $45
    ld b, c                                       ; $5684: $41
    ld c, l                                       ; $5685: $4D
    dec l                                         ; $5686: $2D
    ld b, d                                       ; $5687: $42
    sbc c                                         ; $5688: $99
    add hl, bc                                    ; $5689: $09
    ld d, e                                       ; $568A: $53
    ld b, c                                       ; $568B: $41
    ld d, h                                       ; $568C: $54
    ld c, a                                       ; $568D: $4F
    ld d, e                                       ; $568E: $53
    ld c, b                                       ; $568F: $48
    ld c, c                                       ; $5690: $49
    jr nz, jr_02C_56DB                            ; $5691: $20 $48

    add d                                         ; $5693: $82
    sbc c                                         ; $5694: $99
    ld de, $4948                                  ; $5695: $11 $48 $49
    ld d, d                                       ; $5698: $52
    ld c, a                                       ; $5699: $4F
    ld b, [hl]                                    ; $569A: $46
    ld d, l                                       ; $569B: $55
    ld c, l                                       ; $569C: $4D
    ld c, c                                       ; $569D: $49
    jr nz, jr_02C_56EB                            ; $569E: $20 $4B

    ld b, c                                       ; $56A0: $41
    ld d, e                                       ; $56A1: $53
    ld b, c                                       ; $56A2: $41
    ld c, e                                       ; $56A3: $4B
    ld b, c                                       ; $56A4: $41
    ld d, a                                       ; $56A5: $57
    ld b, c                                       ; $56A6: $41

jr_02C_56A7:
    and c                                         ; $56A7: $A1
    sbc b                                         ; $56A8: $98
    ld de, $532D                                  ; $56A9: $11 $2D $53
    ld d, l                                       ; $56AC: $55
    ld d, b                                       ; $56AD: $50
    ld b, l                                       ; $56AE: $45
    ld d, d                                       ; $56AF: $52
    jr nz, jr_02C_56FF                            ; $56B0: $20 $4D

    ld b, c                                       ; $56B2: $41
    ld d, d                                       ; $56B3: $52
    ld c, e                                       ; $56B4: $4B
    ld b, l                                       ; $56B5: $45
    ld d, h                                       ; $56B6: $54
    ld d, h                                       ; $56B7: $54
    ld b, l                                       ; $56B8: $45
    ld d, d                                       ; $56B9: $52
    dec l                                         ; $56BA: $2D
    ld [bc], a                                    ; $56BB: $02
    sbc c                                         ; $56BC: $99
    ld de, $4F54                                  ; $56BD: $11 $54 $4F
    ld d, e                                       ; $56C0: $53
    ld c, b                                       ; $56C1: $48
    ld c, c                                       ; $56C2: $49
    ld c, b                                       ; $56C3: $48
    ld c, c                                       ; $56C4: $49
    ld d, d                                       ; $56C5: $52
    ld c, a                                       ; $56C6: $4F
    jr nz, jr_02C_5716                            ; $56C7: $20 $4D

    ld c, a                                       ; $56C9: $4F
    ld d, d                                       ; $56CA: $52
    ld c, c                                       ; $56CB: $49
    ld c, a                                       ; $56CC: $4F
    ld c, e                                       ; $56CD: $4B
    ld b, c                                       ; $56CE: $41
    ld b, d                                       ; $56CF: $42
    sbc c                                         ; $56D0: $99
    rrca                                          ; $56D1: $0F
    ld c, e                                       ; $56D2: $4B
    ld b, c                                       ; $56D3: $41
    ld d, h                                       ; $56D4: $54
    ld d, l                                       ; $56D5: $55
    ld e, c                                       ; $56D6: $59

jr_02C_56D7:
    ld b, c                                       ; $56D7: $41
    jr nz, jr_02C_572E                            ; $56D8: $20 $54

    ld c, a                                       ; $56DA: $4F

jr_02C_56DB:
    ld d, d                                       ; $56DB: $52
    ld c, c                                       ; $56DC: $49
    ld c, b                                       ; $56DD: $48
    ld b, c                                       ; $56DE: $41
    ld c, l                                       ; $56DF: $4D
    ld b, c                                       ; $56E0: $41
    add d                                         ; $56E1: $82
    sbc c                                         ; $56E2: $99
    db $10                                        ; $56E3: $10
    ld c, l                                       ; $56E4: $4D
    ld b, c                                       ; $56E5: $41
    ld d, e                                       ; $56E6: $53
    ld b, c                                       ; $56E7: $41
    ld c, b                                       ; $56E8: $48
    ld c, c                                       ; $56E9: $49
    ld d, d                                       ; $56EA: $52

jr_02C_56EB:
    ld c, a                                       ; $56EB: $4F
    jr nz, jr_02C_5737                            ; $56EC: $20 $49

    ld d, a                                       ; $56EE: $57
    ld b, c                                       ; $56EF: $41
    ld d, e                                       ; $56F0: $53
    ld b, c                                       ; $56F1: $41
    ld c, e                                       ; $56F2: $4B
    ld c, c                                       ; $56F3: $49
    ld hl, $1098                                  ; $56F4: $21 $98 $10
    dec l                                         ; $56F7: $2D
    ld d, e                                       ; $56F8: $53
    ld d, b                                       ; $56F9: $50
    ld b, l                                       ; $56FA: $45
    ld b, e                                       ; $56FB: $43
    ld c, c                                       ; $56FC: $49
    ld b, c                                       ; $56FD: $41
    ld c, h                                       ; $56FE: $4C

jr_02C_56FF:
    jr nz, @+$56                                  ; $56FF: $20 $54

    ld c, b                                       ; $5701: $48
    ld b, c                                       ; $5702: $41
    ld c, [hl]                                    ; $5703: $4E
    ld c, e                                       ; $5704: $4B
    ld d, e                                       ; $5705: $53
    dec l                                         ; $5706: $2D
    ld h, d                                       ; $5707: $62
    sbc b                                         ; $5708: $98
    ld c, $53                                     ; $5709: $0E $53
    ld b, c                                       ; $570B: $41
    ld d, h                                       ; $570C: $54
    ld c, a                                       ; $570D: $4F
    ld d, e                                       ; $570E: $53
    ld c, b                                       ; $570F: $48

Jump_02C_5710:
    ld c, c                                       ; $5710: $49
    jr nz, jr_02C_575E                            ; $5711: $20 $4B

    ld d, l                                       ; $5713: $55
    ld c, l                                       ; $5714: $4D
    ld b, c                                       ; $5715: $41

jr_02C_5716:
    ld d, h                                       ; $5716: $54
    ld b, c                                       ; $5717: $41
    add d                                         ; $5718: $82
    sbc b                                         ; $5719: $98
    db $10                                        ; $571A: $10
    ld c, b                                       ; $571B: $48
    ld c, c                                       ; $571C: $49
    ld d, d                                       ; $571D: $52
    ld c, a                                       ; $571E: $4F
    ld d, e                                       ; $571F: $53
    ld c, b                                       ; $5720: $48
    ld c, c                                       ; $5721: $49
    jr nz, jr_02C_577D                            ; $5722: $20 $59

    ld b, c                                       ; $5724: $41
    ld c, l                                       ; $5725: $4D
    ld b, c                                       ; $5726: $41
    ld e, d                                       ; $5727: $5A
    ld b, c                                       ; $5728: $41
    ld c, e                                       ; $5729: $4B
    ld c, c                                       ; $572A: $49
    and d                                         ; $572B: $A2
    sbc b                                         ; $572C: $98
    dec c                                         ; $572D: $0D

jr_02C_572E:
    ld d, h                                       ; $572E: $54
    ld b, c                                       ; $572F: $41
    ld d, h                                       ; $5730: $54
    ld d, e                                       ; $5731: $53
    ld d, l                                       ; $5732: $55
    ld e, c                                       ; $5733: $59
    ld b, c                                       ; $5734: $41
    jr nz, jr_02C_578B                            ; $5735: $20 $54

jr_02C_5737:
    ld b, c                                       ; $5737: $41
    ld d, l                                       ; $5738: $55
    ld d, d                                       ; $5739: $52
    ld b, c                                       ; $573A: $41
    jp nz, $0C98                                  ; $573B: $C2 $98 $0C

    ld d, h                                       ; $573E: $54
    ld b, l                                       ; $573F: $45
    ld d, h                                       ; $5740: $54
    ld d, e                                       ; $5741: $53
    ld d, l                                       ; $5742: $55
    ld e, c                                       ; $5743: $59
    ld b, c                                       ; $5744: $41
    jr nz, jr_02C_5790                            ; $5745: $20 $49

    ld c, c                                       ; $5747: $49
    ld b, h                                       ; $5748: $44
    ld b, c                                       ; $5749: $41
    ldh [c], a                                    ; $574A: $E2
    sbc b                                         ; $574B: $98
    db $10                                        ; $574C: $10
    ld c, l                                       ; $574D: $4D
    ld d, l                                       ; $574E: $55
    ld d, h                                       ; $574F: $54
    ld d, e                                       ; $5750: $53
    ld d, l                                       ; $5751: $55
    ld c, l                                       ; $5752: $4D
    ld c, c                                       ; $5753: $49
    jr nz, jr_02C_57A4                            ; $5754: $20 $4E

    ld b, c                                       ; $5756: $41
    ld c, e                                       ; $5757: $4B
    ld b, c                                       ; $5758: $41
    ld c, l                                       ; $5759: $4D
    ld d, l                                       ; $575A: $55
    ld d, d                                       ; $575B: $52
    ld b, c                                       ; $575C: $41
    ld [bc], a                                    ; $575D: $02

jr_02C_575E:
    sbc c                                         ; $575E: $99
    dec bc                                        ; $575F: $0B
    ld d, h                                       ; $5760: $54
    ld b, c                                       ; $5761: $41
    ld c, e                                       ; $5762: $4B
    ld b, c                                       ; $5763: $41
    ld c, a                                       ; $5764: $4F
    jr nz, jr_02C_57BA                            ; $5765: $20 $53

    ld b, c                                       ; $5767: $41
    ld d, h                                       ; $5768: $54
    ld c, a                                       ; $5769: $4F
    ld d, l                                       ; $576A: $55
    ld [hl+], a                                   ; $576B: $22
    sbc c                                         ; $576C: $99
    dec bc                                        ; $576D: $0B
    ld c, l                                       ; $576E: $4D
    ld b, c                                       ; $576F: $41
    ld d, e                                       ; $5770: $53
    ld b, c                                       ; $5771: $41
    ld d, d                                       ; $5772: $52
    ld d, l                                       ; $5773: $55
    jr nz, jr_02C_57B7                            ; $5774: $20 $41

    ld c, a                                       ; $5776: $4F
    ld c, e                                       ; $5777: $4B
    ld c, c                                       ; $5778: $49
    ld b, d                                       ; $5779: $42
    sbc c                                         ; $577A: $99
    dec c                                         ; $577B: $0D
    ld d, h                                       ; $577C: $54

jr_02C_577D:
    ld b, c                                       ; $577D: $41
    ld d, h                                       ; $577E: $54
    ld d, e                                       ; $577F: $53
    ld d, l                                       ; $5780: $55
    ld e, c                                       ; $5781: $59
    ld b, c                                       ; $5782: $41
    jr nz, jr_02C_57CD                            ; $5783: $20 $48

    ld c, a                                       ; $5785: $4F
    ld b, e                                       ; $5786: $43
    ld c, b                                       ; $5787: $48
    ld c, a                                       ; $5788: $4F
    ld h, d                                       ; $5789: $62
    sbc c                                         ; $578A: $99

jr_02C_578B:
    rrca                                          ; $578B: $0F
    ld d, e                                       ; $578C: $53
    ld c, b                                       ; $578D: $48
    ld d, l                                       ; $578E: $55
    ld c, [hl]                                    ; $578F: $4E

jr_02C_5790:
    ld c, c                                       ; $5790: $49
    ld b, e                                       ; $5791: $43
    ld c, b                                       ; $5792: $48
    ld c, c                                       ; $5793: $49
    jr nz, jr_02C_57E5                            ; $5794: $20 $4F

    ld c, b                                       ; $5796: $48
    ld c, e                                       ; $5797: $4B
    ld d, l                                       ; $5798: $55
    ld d, e                                       ; $5799: $53
    ld b, c                                       ; $579A: $41
    add d                                         ; $579B: $82
    sbc c                                         ; $579C: $99
    rrca                                          ; $579D: $0F
    ld d, h                                       ; $579E: $54
    ld b, c                                       ; $579F: $41
    ld c, e                                       ; $57A0: $4B
    ld b, l                                       ; $57A1: $45
    ld d, e                                       ; $57A2: $53
    ld c, b                                       ; $57A3: $48

jr_02C_57A4:
    ld c, c                                       ; $57A4: $49
    jr nz, jr_02C_57F0                            ; $57A5: $20 $49

    ld c, e                                       ; $57A7: $4B
    ld b, l                                       ; $57A8: $45
    ld c, [hl]                                    ; $57A9: $4E
    ld c, a                                       ; $57AA: $4F
    ld d, l                                       ; $57AB: $55
    ld b, l                                       ; $57AC: $45
    and d                                         ; $57AD: $A2
    sbc c                                         ; $57AE: $99
    ld c, $4E                                     ; $57AF: $0E $4E
    ld b, c                                       ; $57B1: $41
    ld c, a                                       ; $57B2: $4F
    ld e, c                                       ; $57B3: $59
    ld d, l                                       ; $57B4: $55
    ld c, e                                       ; $57B5: $4B
    ld c, c                                       ; $57B6: $49

jr_02C_57B7:
    jr nz, jr_02C_580D                            ; $57B7: $20 $54

    ld b, c                                       ; $57B9: $41

jr_02C_57BA:
    ld c, e                                       ; $57BA: $4B
    ld b, c                                       ; $57BB: $41
    ld b, h                                       ; $57BC: $44
    ld b, c                                       ; $57BD: $41
    jp nz, Jump_000_1199                          ; $57BE: $C2 $99 $11

    ld c, [hl]                                    ; $57C1: $4E
    ld c, a                                       ; $57C2: $4F
    ld d, d                                       ; $57C3: $52
    ld c, c                                       ; $57C4: $49
    ld c, b                                       ; $57C5: $48
    ld c, c                                       ; $57C6: $49
    ld d, d                                       ; $57C7: $52
    ld c, a                                       ; $57C8: $4F
    jr nz, jr_02C_5813                            ; $57C9: $20 $48

    ld b, c                                       ; $57CB: $41
    ld e, c                                       ; $57CC: $59

jr_02C_57CD:
    ld b, c                                       ; $57CD: $41
    ld d, e                                       ; $57CE: $53
    ld b, c                                       ; $57CF: $41
    ld c, e                                       ; $57D0: $4B
    ld b, c                                       ; $57D1: $41
    ldh [c], a                                    ; $57D2: $E2
    sbc c                                         ; $57D3: $99
    ld de, $4749                                  ; $57D4: $11 $49 $47
    ld b, c                                       ; $57D7: $41
    ld d, d                                       ; $57D8: $52
    ld b, c                                       ; $57D9: $41
    ld d, e                                       ; $57DA: $53
    ld c, b                                       ; $57DB: $48
    ld c, c                                       ; $57DC: $49
    jr nz, @+$56                                  ; $57DD: $20 $54

    ld d, e                                       ; $57DF: $53
    ld d, l                                       ; $57E0: $55
    ld e, c                                       ; $57E1: $59
    ld c, a                                       ; $57E2: $4F
    ld d, e                                       ; $57E3: $53
    ld c, b                                       ; $57E4: $48

jr_02C_57E5:
    ld c, c                                       ; $57E5: $49
    jp nz, Jump_000_1098                          ; $57E6: $C2 $98 $10

    dec l                                         ; $57E9: $2D
    ld b, c                                       ; $57EA: $41
    ld d, d                                       ; $57EB: $52
    ld d, h                                       ; $57EC: $54
    ld d, a                                       ; $57ED: $57
    ld c, a                                       ; $57EE: $4F
    ld d, d                                       ; $57EF: $52

jr_02C_57F0:
    ld c, e                                       ; $57F0: $4B
    jr nz, jr_02C_5837                            ; $57F1: $20 $44

    ld b, l                                       ; $57F3: $45
    ld d, e                                       ; $57F4: $53
    ld c, c                                       ; $57F5: $49
    ld b, a                                       ; $57F6: $47
    ld c, [hl]                                    ; $57F7: $4E
    dec l                                         ; $57F8: $2D
    inc hl                                        ; $57F9: $23
    sbc c                                         ; $57FA: $99
    dec c                                         ; $57FB: $0D
    ld b, h                                       ; $57FC: $44
    ld b, l                                       ; $57FD: $45
    ld d, e                                       ; $57FE: $53
    ld c, c                                       ; $57FF: $49
    ld b, a                                       ; $5800: $47
    ld c, [hl]                                    ; $5801: $4E
    jr nz, jr_02C_5853                            ; $5802: $20 $4F

    ld b, [hl]                                    ; $5804: $46
    ld b, [hl]                                    ; $5805: $46
    ld c, c                                       ; $5806: $49
    ld b, e                                       ; $5807: $43
    ld b, l                                       ; $5808: $45
    ld h, e                                       ; $5809: $63
    sbc c                                         ; $580A: $99
    ld c, $53                                     ; $580B: $0E $53

jr_02C_580D:
    ld d, b                                       ; $580D: $50
    ld b, c                                       ; $580E: $41
    ld b, e                                       ; $580F: $43
    ld b, l                                       ; $5810: $45
    jr nz, jr_02C_585F                            ; $5811: $20 $4C

jr_02C_5813:
    ld b, c                                       ; $5813: $41
    ld d, b                                       ; $5814: $50
    jr nz, jr_02C_5860                            ; $5815: $20 $49

    ld c, [hl]                                    ; $5817: $4E
    ld b, e                                       ; $5818: $43
    ld l, $A5                                     ; $5819: $2E $A5
    sbc b                                         ; $581B: $98
    dec bc                                        ; $581C: $0B
    dec l                                         ; $581D: $2D
    ld d, h                                       ; $581E: $54
    ld b, l                                       ; $581F: $45
    ld d, e                                       ; $5820: $53
    ld d, h                                       ; $5821: $54
    jr nz, @+$52                                  ; $5822: $20 $50

    ld c, h                                       ; $5824: $4C
    ld b, c                                       ; $5825: $41
    ld e, c                                       ; $5826: $59
    dec l                                         ; $5827: $2D
    dec h                                         ; $5828: $25
    sbc c                                         ; $5829: $99
    dec bc                                        ; $582A: $0B
    ld d, b                                       ; $582B: $50
    ld c, a                                       ; $582C: $4F
    ld c, h                                       ; $582D: $4C
    ld b, l                                       ; $582E: $45
    jr nz, jr_02C_5885                            ; $582F: $20 $54

    ld c, a                                       ; $5831: $4F
    jr nz, jr_02C_588B                            ; $5832: $20 $57

    ld c, c                                       ; $5834: $49
    ld c, [hl]                                    ; $5835: $4E
    and e                                         ; $5836: $A3

jr_02C_5837:
    sbc b                                         ; $5837: $98
    ld c, $53                                     ; $5838: $0E $53
    ld d, b                                       ; $583A: $50
    ld b, l                                       ; $583B: $45
    ld b, e                                       ; $583C: $43
    ld c, c                                       ; $583D: $49
    ld b, c                                       ; $583E: $41
    ld c, h                                       ; $583F: $4C
    jr nz, jr_02C_5896                            ; $5840: $20 $54

    ld c, b                                       ; $5842: $48
    ld b, c                                       ; $5843: $41
    ld c, [hl]                                    ; $5844: $4E
    ld c, e                                       ; $5845: $4B
    ld d, e                                       ; $5846: $53
    inc hl                                        ; $5847: $23
    sbc c                                         ; $5848: $99
    dec c                                         ; $5849: $0D
    ld d, e                                       ; $584A: $53
    ld c, [hl]                                    ; $584B: $4E
    ld c, e                                       ; $584C: $4B
    jr nz, jr_02C_5890                            ; $584D: $20 $41

    ld c, h                                       ; $584F: $4C
    ld c, h                                       ; $5850: $4C
    jr nz, @+$55                                  ; $5851: $20 $53

jr_02C_5853:
    ld d, h                                       ; $5853: $54
    ld b, c                                       ; $5854: $41
    ld b, [hl]                                    ; $5855: $46
    ld b, [hl]                                    ; $5856: $46
    and $98                                       ; $5857: $E6 $98
    add hl, bc                                    ; $5859: $09
    ld d, b                                       ; $585A: $50
    ld d, d                                       ; $585B: $52
    ld b, l                                       ; $585C: $45
    ld d, e                                       ; $585D: $53
    ld b, l                                       ; $585E: $45

jr_02C_585F:
    ld c, [hl]                                    ; $585F: $4E

jr_02C_5860:
    ld d, h                                       ; $5860: $54
    ld b, l                                       ; $5861: $45
    ld b, h                                       ; $5862: $44
    ld c, c                                       ; $5863: $49
    sbc c                                         ; $5864: $99
    ld [bc], a                                    ; $5865: $02
    ld b, d                                       ; $5866: $42
    ld e, c                                       ; $5867: $59
    add a                                         ; $5868: $87
    sbc c                                         ; $5869: $99
    ld b, $54                                     ; $586A: $06 $54
    ld b, c                                       ; $586C: $41
    ld c, e                                       ; $586D: $4B
    ld b, c                                       ; $586E: $41
    ld d, d                                       ; $586F: $52
    ld b, c                                       ; $5870: $41
    ld b, $99                                     ; $5871: $06 $99
    ld [$4854], sp                                ; $5873: $08 $54 $48
    ld b, l                                       ; $5876: $45
    jr nz, @+$22                                  ; $5877: $20 $20

    ld b, l                                       ; $5879: $45
    ld c, [hl]                                    ; $587A: $4E
    ld b, h                                       ; $587B: $44
    jr nz, @-$66                                  ; $587C: $20 $98

    inc d                                         ; $587E: $14
    jr nz, @+$22                                  ; $587F: $20 $20

    jr nz, jr_02C_58CA                            ; $5881: $20 $47

    ld b, l                                       ; $5883: $45
    ld b, l                                       ; $5884: $45

jr_02C_5885:
    ld d, e                                       ; $5885: $53
    ld b, l                                       ; $5886: $45
    jr nz, jr_02C_58CA                            ; $5887: $20 $41

    ld c, [hl]                                    ; $5889: $4E
    ld b, h                                       ; $588A: $44

jr_02C_588B:
    jr nz, jr_02C_58D4                            ; $588B: $20 $47

    ld d, l                                       ; $588D: $55
    ld b, l                                       ; $588E: $45
    ld d, e                                       ; $588F: $53

jr_02C_5890:
    ld d, h                                       ; $5890: $54
    jr nz, jr_02C_58B3                            ; $5891: $20 $20

    ld h, b                                       ; $5893: $60
    sbc b                                         ; $5894: $98
    inc d                                         ; $5895: $14

jr_02C_5896:
    jr nz, jr_02C_58B8                            ; $5896: $20 $20

    jr nz, jr_02C_58BA                            ; $5898: $20 $20

    jr nz, jr_02C_58BC                            ; $589A: $20 $20

    jr nz, jr_02C_58F3                            ; $589C: $20 $55

    ld d, e                                       ; $589E: $53
    ld b, l                                       ; $589F: $45
    jr nz, jr_02C_58EA                            ; $58A0: $20 $48

    ld c, c                                       ; $58A2: $49
    ld c, [hl]                                    ; $58A3: $4E
    ld d, h                                       ; $58A4: $54
    jr nz, jr_02C_58C7                            ; $58A5: $20 $20

    jr nz, @+$22                                  ; $58A7: $20 $20

    jr nz, @-$3E                                  ; $58A9: $20 $C0

    sbc b                                         ; $58AB: $98
    ld de, $3120                                  ; $58AC: $11 $20 $31
    ld l, $53                                     ; $58AF: $2E $53
    ld c, a                                       ; $58B1: $4F
    ld d, l                                       ; $58B2: $55

jr_02C_58B3:
    ld c, [hl]                                    ; $58B3: $4E
    ld b, h                                       ; $58B4: $44
    jr nz, jr_02C_590B                            ; $58B5: $20 $54

    ld b, l                                       ; $58B7: $45

jr_02C_58B8:
    ld d, e                                       ; $58B8: $53
    ld d, h                                       ; $58B9: $54

jr_02C_58BA:
    jr nz, jr_02C_58BF                            ; $58BA: $20 $03

jr_02C_58BC:
    dec hl                                        ; $58BC: $2B
    ld b, c                                       ; $58BD: $41
    nop                                           ; $58BE: $00

jr_02C_58BF:
    sbc c                                         ; $58BF: $99
    inc d                                         ; $58C0: $14
    jr nz, jr_02C_58F5                            ; $58C1: $20 $32

    ld l, $53                                     ; $58C3: $2E $53
    ld c, a                                       ; $58C5: $4F
    ld b, [hl]                                    ; $58C6: $46

jr_02C_58C7:
    ld d, h                                       ; $58C7: $54
    jr nz, jr_02C_590E                            ; $58C8: $20 $44

jr_02C_58CA:
    ld c, c                                       ; $58CA: $49
    ld d, b                                       ; $58CB: $50
    dec a                                         ; $58CC: $3D
    ld sp, $3030                                  ; $58CD: $31 $30 $30
    jr nc, jr_02C_5902                            ; $58D0: $30 $30

    jr nc, @+$32                                  ; $58D2: $30 $30

jr_02C_58D4:
    jr nc, jr_02C_5916                            ; $58D4: $30 $40

    sbc c                                         ; $58D6: $99
    db $10                                        ; $58D7: $10
    jr nz, jr_02C_590D                            ; $58D8: $20 $33

    ld l, $50                                     ; $58DA: $2E $50
    ld c, h                                       ; $58DC: $4C
    ld b, c                                       ; $58DD: $41
    ld e, c                                       ; $58DE: $59
    ld b, l                                       ; $58DF: $45
    ld d, d                                       ; $58E0: $52
    jr nz, jr_02C_5936                            ; $58E1: $20 $53

    ld b, l                                       ; $58E3: $45
    ld c, h                                       ; $58E4: $4C
    ld b, l                                       ; $58E5: $45
    ld b, e                                       ; $58E6: $43
    ld d, h                                       ; $58E7: $54
    ld h, b                                       ; $58E8: $60

jr_02C_58E9:
    sbc c                                         ; $58E9: $99

jr_02C_58EA:
    inc de                                        ; $58EA: $13
    jr nz, jr_02C_590D                            ; $58EB: $20 $20

    jr nz, jr_02C_590F                            ; $58ED: $20 $20

    jr nz, jr_02C_5911                            ; $58EF: $20 $20

    jr nz, @+$22                                  ; $58F1: $20 $20

jr_02C_58F3:
    jr nz, @+$22                                  ; $58F3: $20 $20

jr_02C_58F5:
    jr nz, @+$22                                  ; $58F5: $20 $20

    jr nz, jr_02C_594C                            ; $58F7: $20 $53

    ld b, e                                       ; $58F9: $43
    ld d, d                                       ; $58FA: $52
    ld b, l                                       ; $58FB: $45
    ld b, l                                       ; $58FC: $45
    ld c, [hl]                                    ; $58FD: $4E
    and b                                         ; $58FE: $A0
    sbc c                                         ; $58FF: $99
    ld c, $20                                     ; $5900: $0E $20

jr_02C_5902:
    inc [hl]                                      ; $5902: $34
    ld l, $50                                     ; $5903: $2E $50
    ld d, d                                       ; $5905: $52
    ld b, l                                       ; $5906: $45
    ld d, e                                       ; $5907: $53
    ld d, e                                       ; $5908: $53
    jr nz, jr_02C_595E                            ; $5909: $20 $53

jr_02C_590B:
    ld d, h                                       ; $590B: $54
    ld b, c                                       ; $590C: $41

jr_02C_590D:
    ld d, d                                       ; $590D: $52

jr_02C_590E:
    ld d, h                                       ; $590E: $54

jr_02C_590F:
    ret nz                                        ; $590F: $C0

    sbc c                                         ; $5910: $99

jr_02C_5911:
    inc de                                        ; $5911: $13
    jr nz, jr_02C_5934                            ; $5912: $20 $20

    jr nz, jr_02C_5936                            ; $5914: $20 $20

jr_02C_5916:
    jr nz, jr_02C_5938                            ; $5916: $20 $20

    jr nz, jr_02C_596A                            ; $5918: $20 $50

    ld b, c                                       ; $591A: $41
    ld c, [hl]                                    ; $591B: $4E
    ld b, l                                       ; $591C: $45
    ld c, h                                       ; $591D: $4C
    jr nz, @+$45                                  ; $591E: $20 $43

    ld c, b                                       ; $5920: $48
    ld b, c                                       ; $5921: $41
    ld c, [hl]                                    ; $5922: $4E
    ld b, a                                       ; $5923: $47
    ld b, l                                       ; $5924: $45
    ret nz                                        ; $5925: $C0

    sbc b                                         ; $5926: $98
    db $10                                        ; $5927: $10
    jr nz, jr_02C_595B                            ; $5928: $20 $31

    ld l, $50                                     ; $592A: $2E $50
    ld c, h                                       ; $592C: $4C
    ld b, c                                       ; $592D: $41
    ld e, c                                       ; $592E: $59
    ld b, l                                       ; $592F: $45
    ld d, d                                       ; $5930: $52
    jr nz, jr_02C_5986                            ; $5931: $20 $53

    ld b, l                                       ; $5933: $45

jr_02C_5934:
    ld c, h                                       ; $5934: $4C
    ld b, l                                       ; $5935: $45

jr_02C_5936:
    ld b, e                                       ; $5936: $43
    ld d, h                                       ; $5937: $54

jr_02C_5938:
    ldh [$FF98], a                                ; $5938: $E0 $98
    inc de                                        ; $593A: $13
    jr nz, jr_02C_595D                            ; $593B: $20 $20

    jr nz, jr_02C_595F                            ; $593D: $20 $20

    jr nz, jr_02C_5961                            ; $593F: $20 $20

    jr nz, @+$22                                  ; $5941: $20 $20

    jr nz, @+$22                                  ; $5943: $20 $20

    jr nz, @+$22                                  ; $5945: $20 $20

    jr nz, jr_02C_599C                            ; $5947: $20 $53

    ld b, e                                       ; $5949: $43
    ld d, d                                       ; $594A: $52
    ld b, l                                       ; $594B: $45

jr_02C_594C:
    ld b, l                                       ; $594C: $45
    ld c, [hl]                                    ; $594D: $4E
    jr nz, jr_02C_58E9                            ; $594E: $20 $99

    ld c, $20                                     ; $5950: $0E $20
    ld [hl-], a                                   ; $5952: $32
    ld l, $50                                     ; $5953: $2E $50
    ld d, d                                       ; $5955: $52
    ld b, l                                       ; $5956: $45
    ld d, e                                       ; $5957: $53
    ld d, e                                       ; $5958: $53
    jr nz, jr_02C_59AE                            ; $5959: $20 $53

jr_02C_595B:
    ld d, h                                       ; $595B: $54
    ld b, c                                       ; $595C: $41

jr_02C_595D:
    ld d, d                                       ; $595D: $52

jr_02C_595E:
    ld d, h                                       ; $595E: $54

jr_02C_595F:
    ld b, b                                       ; $595F: $40
    sbc c                                         ; $5960: $99

jr_02C_5961:
    inc de                                        ; $5961: $13
    jr nz, jr_02C_5984                            ; $5962: $20 $20

    jr nz, jr_02C_5986                            ; $5964: $20 $20

    jr nz, jr_02C_5988                            ; $5966: $20 $20

    jr nz, jr_02C_59BA                            ; $5968: $20 $50

jr_02C_596A:
    ld b, c                                       ; $596A: $41
    ld c, [hl]                                    ; $596B: $4E
    ld b, l                                       ; $596C: $45
    ld c, h                                       ; $596D: $4C
    jr nz, jr_02C_59B3                            ; $596E: $20 $43

    ld c, b                                       ; $5970: $48
    ld b, c                                       ; $5971: $41
    ld c, [hl]                                    ; $5972: $4E
    ld b, a                                       ; $5973: $47
    ld b, l                                       ; $5974: $45
    cp c                                          ; $5975: $B9
    ld bc, $0000                                  ; $5976: $01 $00 $00
    nop                                           ; $5979: $00
    nop                                           ; $597A: $00
    nop                                           ; $597B: $00
    nop                                           ; $597C: $00
    nop                                           ; $597D: $00
    nop                                           ; $597E: $00
    nop                                           ; $597F: $00
    nop                                           ; $5980: $00
    nop                                           ; $5981: $00
    nop                                           ; $5982: $00
    nop                                           ; $5983: $00

jr_02C_5984:
    nop                                           ; $5984: $00
    cp c                                          ; $5985: $B9

jr_02C_5986:
    nop                                           ; $5986: $00
    nop                                           ; $5987: $00

jr_02C_5988:
    nop                                           ; $5988: $00
    nop                                           ; $5989: $00
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
    adc c                                         ; $5995: $89
    nop                                           ; $5996: $00
    nop                                           ; $5997: $00
    nop                                           ; $5998: $00
    nop                                           ; $5999: $00
    nop                                           ; $599A: $00
    nop                                           ; $599B: $00

jr_02C_599C:
    nop                                           ; $599C: $00
    nop                                           ; $599D: $00
    nop                                           ; $599E: $00
    nop                                           ; $599F: $00
    nop                                           ; $59A0: $00
    nop                                           ; $59A1: $00
    nop                                           ; $59A2: $00
    nop                                           ; $59A3: $00
    nop                                           ; $59A4: $00
    adc c                                         ; $59A5: $89
    ld bc, $0000                                  ; $59A6: $01 $00 $00
    nop                                           ; $59A9: $00
    nop                                           ; $59AA: $00
    nop                                           ; $59AB: $00
    nop                                           ; $59AC: $00
    nop                                           ; $59AD: $00

jr_02C_59AE:
    nop                                           ; $59AE: $00
    nop                                           ; $59AF: $00
    nop                                           ; $59B0: $00
    nop                                           ; $59B1: $00
    nop                                           ; $59B2: $00

jr_02C_59B3:
    nop                                           ; $59B3: $00
    nop                                           ; $59B4: $00
    adc c                                         ; $59B5: $89
    inc bc                                        ; $59B6: $03
    nop                                           ; $59B7: $00
    nop                                           ; $59B8: $00
    nop                                           ; $59B9: $00

jr_02C_59BA:
    nop                                           ; $59BA: $00
    nop                                           ; $59BB: $00
    nop                                           ; $59BC: $00
    nop                                           ; $59BD: $00
    nop                                           ; $59BE: $00
    nop                                           ; $59BF: $00
    nop                                           ; $59C0: $00
    nop                                           ; $59C1: $00
    nop                                           ; $59C2: $00
    nop                                           ; $59C3: $00
    nop                                           ; $59C4: $00
    ld a, c                                       ; $59C5: $79
    ld e, l                                       ; $59C6: $5D
    ld [$0B00], sp                                ; $59C7: $08 $00 $0B
    adc h                                         ; $59CA: $8C
    ret nc                                        ; $59CB: $D0

    db $F4                                        ; $59CC: $F4
    ld h, b                                       ; $59CD: $60
    nop                                           ; $59CE: $00
    nop                                           ; $59CF: $00
    nop                                           ; $59D0: $00
    nop                                           ; $59D1: $00
    nop                                           ; $59D2: $00
    nop                                           ; $59D3: $00
    nop                                           ; $59D4: $00
    ld a, c                                       ; $59D5: $79
    ld d, d                                       ; $59D6: $52
    ld [$0B00], sp                                ; $59D7: $08 $00 $0B
    xor c                                         ; $59DA: $A9
    rst RST_20                                    ; $59DB: $E7
    sbc a                                         ; $59DC: $9F
    ld bc, $7EC0                                  ; $59DD: $01 $C0 $7E
    add sp, -$18                                  ; $59E0: $E8 $E8
    add sp, -$18                                  ; $59E2: $E8 $E8
    ldh [$FF79], a                                ; $59E4: $E0 $79
    ld b, a                                       ; $59E6: $47
    ld [$0B00], sp                                ; $59E7: $08 $00 $0B
    call nz, Call_000_16D0                        ; $59EA: $C4 $D0 $16
    and l                                         ; $59ED: $A5
    set 1, c                                      ; $59EE: $CB $C9
    dec b                                         ; $59F0: $05
    ret nc                                        ; $59F1: $D0

    db $10                                        ; $59F2: $10
    and d                                         ; $59F3: $A2
    jr z, jr_02C_5A6F                             ; $59F4: $28 $79

    inc a                                         ; $59F6: $3C
    ld [$0B00], sp                                ; $59F7: $08 $00 $0B
    ldh a, [rNR12]                                ; $59FA: $F0 $12
    and l                                         ; $59FC: $A5
    ret                                           ; $59FD: $C9


    ret                                           ; $59FE: $C9


    ret z                                         ; $59FF: $C8

    ret nc                                        ; $5A00: $D0

    inc e                                         ; $5A01: $1C
    and l                                         ; $5A02: $A5
    jp z, Jump_02C_79C9                           ; $5A03: $CA $C9 $79

    ld sp, $0008                                  ; $5A06: $31 $08 $00
    dec bc                                        ; $5A09: $0B
    inc c                                         ; $5A0A: $0C
    and l                                         ; $5A0B: $A5
    jp z, Jump_02C_7EC9                           ; $5A0C: $CA $C9 $7E

    ret nc                                        ; $5A0F: $D0

    ld b, $A5                                     ; $5A10: $06 $A5
    set 1, c                                      ; $5A12: $CB $C9
    ld a, [hl]                                    ; $5A14: $7E
    ld a, c                                       ; $5A15: $79
    ld h, $08                                     ; $5A16: $26 $08
    nop                                           ; $5A18: $00
    dec bc                                        ; $5A19: $0B
    add hl, sp                                    ; $5A1A: $39
    call Call_000_0C48                            ; $5A1B: $CD $48 $0C
    ret nc                                        ; $5A1E: $D0

    inc [hl]                                      ; $5A1F: $34
    and l                                         ; $5A20: $A5
    ret                                           ; $5A21: $C9


    ret                                           ; $5A22: $C9


    add b                                         ; $5A23: $80
    ret nc                                        ; $5A24: $D0

    ld a, c                                       ; $5A25: $79
    dec de                                        ; $5A26: $1B
    ld [$0B00], sp                                ; $5A27: $08 $00 $0B
    ld [$EAEA], a                                 ; $5A2A: $EA $EA $EA
    ld [$A9EA], a                                 ; $5A2D: $EA $EA $A9
    ld bc, $4FCD                                  ; $5A30: $01 $CD $4F
    inc c                                         ; $5A33: $0C
    ret nc                                        ; $5A34: $D0

    ld a, c                                       ; $5A35: $79
    db $10                                        ; $5A36: $10
    ld [$0B00], sp                                ; $5A37: $08 $00 $0B
    ld c, h                                       ; $5A3A: $4C
    jr nz, @+$0A                                  ; $5A3B: $20 $08

    ld [$EAEA], a                                 ; $5A3D: $EA $EA $EA
    ld [$60EA], a                                 ; $5A40: $EA $EA $60
    ld [$F0EA], a                                 ; $5A43: $EA $EA $F0
    rst RST_38                                    ; $5A46: $FF
    push af                                       ; $5A47: $F5
    xor a                                         ; $5A48: $AF
    ldh [rIE], a                                  ; $5A49: $E0 $FF
    push de                                       ; $5A4B: $D5
    ld a, e                                       ; $5A4C: $7B
    cp $05                                        ; $5A4D: $FE $05
    jr z, jr_02C_5A6E                             ; $5A4F: $28 $1D

    cp $34                                        ; $5A51: $FE $34
    jr nc, jr_02C_5A59                            ; $5A53: $30 $04

    ld a, $FF                                     ; $5A55: $3E $FF
    jr jr_02C_5A5B                                ; $5A57: $18 $02

jr_02C_5A59:
    ld a, $00                                     ; $5A59: $3E $00

jr_02C_5A5B:
    ldh [rBGP], a                                 ; $5A5B: $E0 $47
    ldh [rOBP0], a                                ; $5A5D: $E0 $48
    ldh [rOBP1], a                                ; $5A5F: $E0 $49
    ldh a, [rLCDC]                                ; $5A61: $F0 $40
    or $80                                        ; $5A63: $F6 $80
    ldh [rLCDC], a                                ; $5A65: $E0 $40
    ld bc, $0004                                  ; $5A67: $01 $04 $00
    call Call_000_035D                            ; $5A6A: $CD $5D $03
    rst RST_10                                    ; $5A6D: $D7

jr_02C_5A6E:
    pop de                                        ; $5A6E: $D1

jr_02C_5A6F:
    ld hl, $5AD9                                  ; $5A6F: $21 $D9 $5A
    sla e                                         ; $5A72: $CB $23
    rl d                                          ; $5A74: $CB $12
    sla e                                         ; $5A76: $CB $23
    rl d                                          ; $5A78: $CB $12
    sla e                                         ; $5A7A: $CB $23
    rl d                                          ; $5A7C: $CB $12
    add hl, de                                    ; $5A7E: $19
    ld e, [hl]                                    ; $5A7F: $5E
    inc hl                                        ; $5A80: $23
    ld d, [hl]                                    ; $5A81: $56
    inc hl                                        ; $5A82: $23
    push hl                                       ; $5A83: $E5
    push de                                       ; $5A84: $D5
    pop hl                                        ; $5A85: $E1
    push de                                       ; $5A86: $D5
    push hl                                       ; $5A87: $E5
    ld de, $C04F                                  ; $5A88: $11 $4F $C0
    ld b, $10                                     ; $5A8B: $06 $10

jr_02C_5A8D:
    ld a, [hl+]                                   ; $5A8D: $2A
    ld [de], a                                    ; $5A8E: $12
    inc de                                        ; $5A8F: $13
    dec b                                         ; $5A90: $05
    jr nz, jr_02C_5A8D                            ; $5A91: $20 $FA

    pop hl                                        ; $5A93: $E1
    pop de                                        ; $5A94: $D1
    call Call_000_02C6                            ; $5A95: $CD $C6 $02
    ld bc, $0004                                  ; $5A98: $01 $04 $00
    call Call_000_035D                            ; $5A9B: $CD $5D $03
    pop hl                                        ; $5A9E: $E1
    ld e, [hl]                                    ; $5A9F: $5E
    inc hl                                        ; $5AA0: $23
    ld d, [hl]                                    ; $5AA1: $56
    inc hl                                        ; $5AA2: $23
    ld a, d                                       ; $5AA3: $7A
    or e                                          ; $5AA4: $B3
    jp z, Jump_02C_5AC4                           ; $5AA5: $CA $C4 $5A

    push hl                                       ; $5AA8: $E5
    push de                                       ; $5AA9: $D5
    pop hl                                        ; $5AAA: $E1
    push de                                       ; $5AAB: $D5
    push hl                                       ; $5AAC: $E5
    ld de, $C05F                                  ; $5AAD: $11 $5F $C0
    ld b, $10                                     ; $5AB0: $06 $10

jr_02C_5AB2:
    ld a, [hl+]                                   ; $5AB2: $2A
    ld [de], a                                    ; $5AB3: $12
    inc de                                        ; $5AB4: $13
    dec b                                         ; $5AB5: $05
    jr nz, jr_02C_5AB2                            ; $5AB6: $20 $FA

    pop hl                                        ; $5AB8: $E1
    pop de                                        ; $5AB9: $D1
    call Call_000_02C6                            ; $5ABA: $CD $C6 $02
    ld bc, $0004                                  ; $5ABD: $01 $04 $00
    call Call_000_035D                            ; $5AC0: $CD $5D $03
    pop hl                                        ; $5AC3: $E1

Jump_02C_5AC4:
    ld e, [hl]                                    ; $5AC4: $5E
    inc hl                                        ; $5AC5: $23
    ld d, [hl]                                    ; $5AC6: $56
    inc hl                                        ; $5AC7: $23
    push hl                                       ; $5AC8: $E5
    push de                                       ; $5AC9: $D5
    pop hl                                        ; $5ACA: $E1
    call Call_000_02C6                            ; $5ACB: $CD $C6 $02
    ld bc, $0004                                  ; $5ACE: $01 $04 $00
    call Call_000_035D                            ; $5AD1: $CD $5D $03
    pop hl                                        ; $5AD4: $E1
    pop af                                        ; $5AD5: $F1
    ldh [rIE], a                                  ; $5AD6: $E0 $FF
    ret                                           ; $5AD8: $C9


    pop de                                        ; $5AD9: $D1
    ld e, h                                       ; $5ADA: $5C
    nop                                           ; $5ADB: $00
    nop                                           ; $5ADC: $00
    pop hl                                        ; $5ADD: $E1
    ld e, l                                       ; $5ADE: $5D
    nop                                           ; $5ADF: $00
    nop                                           ; $5AE0: $00
    pop af                                        ; $5AE1: $F1
    ld e, h                                       ; $5AE2: $5C
    nop                                           ; $5AE3: $00
    nop                                           ; $5AE4: $00
    pop hl                                        ; $5AE5: $E1
    ld e, l                                       ; $5AE6: $5D
    nop                                           ; $5AE7: $00
    nop                                           ; $5AE8: $00
    pop hl                                        ; $5AE9: $E1
    ld e, h                                       ; $5AEA: $5C
    nop                                           ; $5AEB: $00
    nop                                           ; $5AEC: $00
    pop hl                                        ; $5AED: $E1
    ld e, l                                       ; $5AEE: $5D
    nop                                           ; $5AEF: $00
    nop                                           ; $5AF0: $00
    pop af                                        ; $5AF1: $F1
    ld e, h                                       ; $5AF2: $5C
    nop                                           ; $5AF3: $00
    nop                                           ; $5AF4: $00
    pop af                                        ; $5AF5: $F1
    ld e, l                                       ; $5AF6: $5D
    nop                                           ; $5AF7: $00
    nop                                           ; $5AF8: $00
    ld bc, $005D                                  ; $5AF9: $01 $5D $00
    nop                                           ; $5AFC: $00
    rlca                                          ; $5AFD: $07
    ld e, [hl]                                    ; $5AFE: $5E
    nop                                           ; $5AFF: $00
    nop                                           ; $5B00: $00
    ld bc, $005D                                  ; $5B01: $01 $5D $00
    nop                                           ; $5B04: $00
    dec [hl]                                      ; $5B05: $35
    ld e, [hl]                                    ; $5B06: $5E
    nop                                           ; $5B07: $00
    nop                                           ; $5B08: $00
    ld sp, hl                                     ; $5B09: $F9
    ld e, a                                       ; $5B0A: $5F
    nop                                           ; $5B0B: $00
    nop                                           ; $5B0C: $00
    pop hl                                        ; $5B0D: $E1
    ld e, l                                       ; $5B0E: $5D
    nop                                           ; $5B0F: $00
    nop                                           ; $5B10: $00
    jp hl                                         ; $5B11: $E9


    ld e, a                                       ; $5B12: $5F
    nop                                           ; $5B13: $00
    nop                                           ; $5B14: $00
    sub c                                         ; $5B15: $91
    ld h, c                                       ; $5B16: $61
    nop                                           ; $5B17: $00
    nop                                           ; $5B18: $00
    xor c                                         ; $5B19: $A9
    ld h, b                                       ; $5B1A: $60
    cp c                                          ; $5B1B: $B9
    ld h, b                                       ; $5B1C: $60
    ld l, c                                       ; $5B1D: $69
    ld h, c                                       ; $5B1E: $61
    nop                                           ; $5B1F: $00
    nop                                           ; $5B20: $00
    ret                                           ; $5B21: $C9


    ld h, b                                       ; $5B22: $60
    reti                                          ; $5B23: $D9


    ld h, b                                       ; $5B24: $60
    ld l, c                                       ; $5B25: $69
    ld h, c                                       ; $5B26: $61
    nop                                           ; $5B27: $00
    nop                                           ; $5B28: $00
    jp hl                                         ; $5B29: $E9


    ld h, b                                       ; $5B2A: $60
    cp c                                          ; $5B2B: $B9
    ld h, b                                       ; $5B2C: $60
    ld l, c                                       ; $5B2D: $69
    ld h, c                                       ; $5B2E: $61
    nop                                           ; $5B2F: $00
    nop                                           ; $5B30: $00
    ld sp, hl                                     ; $5B31: $F9
    ld h, b                                       ; $5B32: $60
    reti                                          ; $5B33: $D9


    ld h, b                                       ; $5B34: $60
    ld l, c                                       ; $5B35: $69
    ld h, c                                       ; $5B36: $61
    nop                                           ; $5B37: $00
    nop                                           ; $5B38: $00
    add hl, bc                                    ; $5B39: $09
    ld h, c                                       ; $5B3A: $61
    cp c                                          ; $5B3B: $B9
    ld h, b                                       ; $5B3C: $60
    ld l, c                                       ; $5B3D: $69
    ld h, c                                       ; $5B3E: $61
    nop                                           ; $5B3F: $00
    nop                                           ; $5B40: $00
    add hl, de                                    ; $5B41: $19
    ld h, c                                       ; $5B42: $61
    reti                                          ; $5B43: $D9


    ld h, b                                       ; $5B44: $60
    ld l, c                                       ; $5B45: $69
    ld h, c                                       ; $5B46: $61
    nop                                           ; $5B47: $00
    nop                                           ; $5B48: $00
    add hl, hl                                    ; $5B49: $29
    ld h, c                                       ; $5B4A: $61
    cp c                                          ; $5B4B: $B9
    ld h, b                                       ; $5B4C: $60
    ld l, c                                       ; $5B4D: $69
    ld h, c                                       ; $5B4E: $61
    nop                                           ; $5B4F: $00
    nop                                           ; $5B50: $00
    add hl, sp                                    ; $5B51: $39
    ld h, c                                       ; $5B52: $61
    reti                                          ; $5B53: $D9


    ld h, b                                       ; $5B54: $60
    ld l, c                                       ; $5B55: $69
    ld h, c                                       ; $5B56: $61
    nop                                           ; $5B57: $00
    nop                                           ; $5B58: $00
    ld c, c                                       ; $5B59: $49
    ld h, c                                       ; $5B5A: $61
    cp c                                          ; $5B5B: $B9
    ld h, b                                       ; $5B5C: $60
    ld l, c                                       ; $5B5D: $69
    ld h, c                                       ; $5B5E: $61
    nop                                           ; $5B5F: $00
    nop                                           ; $5B60: $00
    ld e, c                                       ; $5B61: $59
    ld h, c                                       ; $5B62: $61
    reti                                          ; $5B63: $D9


    ld h, b                                       ; $5B64: $60
    ld l, c                                       ; $5B65: $69
    ld h, c                                       ; $5B66: $61
    nop                                           ; $5B67: $00
    nop                                           ; $5B68: $00
    xor c                                         ; $5B69: $A9
    ld h, b                                       ; $5B6A: $60
    nop                                           ; $5B6B: $00
    nop                                           ; $5B6C: $00
    pop hl                                        ; $5B6D: $E1
    ld e, l                                       ; $5B6E: $5D
    nop                                           ; $5B6F: $00
    nop                                           ; $5B70: $00
    ret                                           ; $5B71: $C9


    ld h, b                                       ; $5B72: $60
    nop                                           ; $5B73: $00
    nop                                           ; $5B74: $00
    pop hl                                        ; $5B75: $E1
    ld e, l                                       ; $5B76: $5D
    nop                                           ; $5B77: $00
    nop                                           ; $5B78: $00
    jp hl                                         ; $5B79: $E9


    ld h, b                                       ; $5B7A: $60
    nop                                           ; $5B7B: $00
    nop                                           ; $5B7C: $00
    pop hl                                        ; $5B7D: $E1
    ld e, l                                       ; $5B7E: $5D
    nop                                           ; $5B7F: $00
    nop                                           ; $5B80: $00
    ld sp, hl                                     ; $5B81: $F9
    ld h, b                                       ; $5B82: $60
    nop                                           ; $5B83: $00
    nop                                           ; $5B84: $00
    pop hl                                        ; $5B85: $E1
    ld e, l                                       ; $5B86: $5D
    nop                                           ; $5B87: $00
    nop                                           ; $5B88: $00
    add hl, bc                                    ; $5B89: $09
    ld h, c                                       ; $5B8A: $61
    nop                                           ; $5B8B: $00
    nop                                           ; $5B8C: $00
    pop hl                                        ; $5B8D: $E1
    ld e, l                                       ; $5B8E: $5D
    nop                                           ; $5B8F: $00
    nop                                           ; $5B90: $00
    add hl, de                                    ; $5B91: $19
    ld h, c                                       ; $5B92: $61
    nop                                           ; $5B93: $00
    nop                                           ; $5B94: $00
    pop hl                                        ; $5B95: $E1
    ld e, l                                       ; $5B96: $5D
    nop                                           ; $5B97: $00
    nop                                           ; $5B98: $00
    add hl, hl                                    ; $5B99: $29
    ld h, c                                       ; $5B9A: $61
    nop                                           ; $5B9B: $00
    nop                                           ; $5B9C: $00
    pop hl                                        ; $5B9D: $E1
    ld e, l                                       ; $5B9E: $5D
    nop                                           ; $5B9F: $00
    nop                                           ; $5BA0: $00
    add hl, sp                                    ; $5BA1: $39
    ld h, c                                       ; $5BA2: $61
    nop                                           ; $5BA3: $00
    nop                                           ; $5BA4: $00
    pop hl                                        ; $5BA5: $E1
    ld e, l                                       ; $5BA6: $5D
    nop                                           ; $5BA7: $00
    nop                                           ; $5BA8: $00
    ld c, c                                       ; $5BA9: $49
    ld h, c                                       ; $5BAA: $61
    nop                                           ; $5BAB: $00
    nop                                           ; $5BAC: $00
    pop hl                                        ; $5BAD: $E1
    ld e, l                                       ; $5BAE: $5D
    nop                                           ; $5BAF: $00
    nop                                           ; $5BB0: $00
    ld e, c                                       ; $5BB1: $59
    ld h, c                                       ; $5BB2: $61
    nop                                           ; $5BB3: $00
    nop                                           ; $5BB4: $00
    pop hl                                        ; $5BB5: $E1
    ld e, l                                       ; $5BB6: $5D
    nop                                           ; $5BB7: $00
    nop                                           ; $5BB8: $00
    ld a, c                                       ; $5BB9: $79
    ld e, a                                       ; $5BBA: $5F
    nop                                           ; $5BBB: $00
    nop                                           ; $5BBC: $00
    pop hl                                        ; $5BBD: $E1
    ld e, l                                       ; $5BBE: $5D
    nop                                           ; $5BBF: $00
    nop                                           ; $5BC0: $00
    cp c                                          ; $5BC1: $B9
    ld e, a                                       ; $5BC2: $5F
    nop                                           ; $5BC3: $00
    nop                                           ; $5BC4: $00
    pop hl                                        ; $5BC5: $E1
    ld e, l                                       ; $5BC6: $5D
    nop                                           ; $5BC7: $00
    nop                                           ; $5BC8: $00
    ret                                           ; $5BC9: $C9


    ld e, a                                       ; $5BCA: $5F
    nop                                           ; $5BCB: $00
    nop                                           ; $5BCC: $00
    ret                                           ; $5BCD: $C9


    ld h, c                                       ; $5BCE: $61
    nop                                           ; $5BCF: $00
    nop                                           ; $5BD0: $00
    adc c                                         ; $5BD1: $89
    ld e, a                                       ; $5BD2: $5F
    nop                                           ; $5BD3: $00
    nop                                           ; $5BD4: $00
    pop hl                                        ; $5BD5: $E1
    ld e, l                                       ; $5BD6: $5D
    nop                                           ; $5BD7: $00
    nop                                           ; $5BD8: $00
    sbc c                                         ; $5BD9: $99
    ld e, a                                       ; $5BDA: $5F
    nop                                           ; $5BDB: $00
    nop                                           ; $5BDC: $00
    pop hl                                        ; $5BDD: $E1
    ld e, l                                       ; $5BDE: $5D
    nop                                           ; $5BDF: $00
    nop                                           ; $5BE0: $00
    xor c                                         ; $5BE1: $A9
    ld e, a                                       ; $5BE2: $5F
    nop                                           ; $5BE3: $00
    nop                                           ; $5BE4: $00
    xor l                                         ; $5BE5: $AD
    ld h, c                                       ; $5BE6: $61
    nop                                           ; $5BE7: $00
    nop                                           ; $5BE8: $00
    reti                                          ; $5BE9: $D9


    ld e, a                                       ; $5BEA: $5F
    nop                                           ; $5BEB: $00
    nop                                           ; $5BEC: $00
    ret                                           ; $5BED: $C9


    ld h, c                                       ; $5BEE: $61
    nop                                           ; $5BEF: $00
    nop                                           ; $5BF0: $00
    add hl, de                                    ; $5BF1: $19
    ld e, a                                       ; $5BF2: $5F
    nop                                           ; $5BF3: $00
    nop                                           ; $5BF4: $00
    pop hl                                        ; $5BF5: $E1
    ld e, l                                       ; $5BF6: $5D
    nop                                           ; $5BF7: $00
    nop                                           ; $5BF8: $00
    add hl, bc                                    ; $5BF9: $09
    ld e, a                                       ; $5BFA: $5F
    nop                                           ; $5BFB: $00
    nop                                           ; $5BFC: $00
    pop hl                                        ; $5BFD: $E1
    ld e, l                                       ; $5BFE: $5D
    nop                                           ; $5BFF: $00
    nop                                           ; $5C00: $00
    add hl, bc                                    ; $5C01: $09
    ld h, b                                       ; $5C02: $60
    nop                                           ; $5C03: $00
    nop                                           ; $5C04: $00
    pop hl                                        ; $5C05: $E1
    ld e, l                                       ; $5C06: $5D
    nop                                           ; $5C07: $00
    nop                                           ; $5C08: $00
    add hl, de                                    ; $5C09: $19
    ld h, b                                       ; $5C0A: $60
    nop                                           ; $5C0B: $00
    nop                                           ; $5C0C: $00
    pop hl                                        ; $5C0D: $E1
    ld e, l                                       ; $5C0E: $5D
    nop                                           ; $5C0F: $00
    nop                                           ; $5C10: $00
    add hl, hl                                    ; $5C11: $29
    ld h, b                                       ; $5C12: $60
    nop                                           ; $5C13: $00
    nop                                           ; $5C14: $00
    pop hl                                        ; $5C15: $E1
    ld e, l                                       ; $5C16: $5D
    nop                                           ; $5C17: $00
    nop                                           ; $5C18: $00
    add hl, sp                                    ; $5C19: $39
    ld h, b                                       ; $5C1A: $60
    nop                                           ; $5C1B: $00
    nop                                           ; $5C1C: $00
    pop hl                                        ; $5C1D: $E1
    ld e, l                                       ; $5C1E: $5D
    nop                                           ; $5C1F: $00
    nop                                           ; $5C20: $00
    ld c, c                                       ; $5C21: $49
    ld h, b                                       ; $5C22: $60
    nop                                           ; $5C23: $00
    nop                                           ; $5C24: $00
    pop hl                                        ; $5C25: $E1
    ld e, l                                       ; $5C26: $5D
    nop                                           ; $5C27: $00
    nop                                           ; $5C28: $00
    ld e, c                                       ; $5C29: $59
    ld h, b                                       ; $5C2A: $60
    nop                                           ; $5C2B: $00
    nop                                           ; $5C2C: $00
    pop hl                                        ; $5C2D: $E1
    ld e, l                                       ; $5C2E: $5D
    nop                                           ; $5C2F: $00
    nop                                           ; $5C30: $00
    ld l, c                                       ; $5C31: $69
    ld h, b                                       ; $5C32: $60
    nop                                           ; $5C33: $00
    nop                                           ; $5C34: $00
    pop hl                                        ; $5C35: $E1
    ld e, l                                       ; $5C36: $5D
    nop                                           ; $5C37: $00
    nop                                           ; $5C38: $00
    ld a, c                                       ; $5C39: $79
    ld h, b                                       ; $5C3A: $60
    nop                                           ; $5C3B: $00
    nop                                           ; $5C3C: $00
    pop hl                                        ; $5C3D: $E1
    ld e, l                                       ; $5C3E: $5D
    nop                                           ; $5C3F: $00
    nop                                           ; $5C40: $00
    adc c                                         ; $5C41: $89
    ld h, b                                       ; $5C42: $60
    nop                                           ; $5C43: $00
    nop                                           ; $5C44: $00
    pop hl                                        ; $5C45: $E1
    ld e, l                                       ; $5C46: $5D
    nop                                           ; $5C47: $00
    nop                                           ; $5C48: $00
    sbc c                                         ; $5C49: $99
    ld h, b                                       ; $5C4A: $60
    nop                                           ; $5C4B: $00
    nop                                           ; $5C4C: $00
    pop hl                                        ; $5C4D: $E1
    ld e, l                                       ; $5C4E: $5D
    nop                                           ; $5C4F: $00
    nop                                           ; $5C50: $00
    add hl, hl                                    ; $5C51: $29
    ld e, a                                       ; $5C52: $5F
    nop                                           ; $5C53: $00
    nop                                           ; $5C54: $00
    pop hl                                        ; $5C55: $E1
    ld e, l                                       ; $5C56: $5D
    nop                                           ; $5C57: $00
    nop                                           ; $5C58: $00
    add hl, sp                                    ; $5C59: $39
    ld e, a                                       ; $5C5A: $5F
    nop                                           ; $5C5B: $00
    nop                                           ; $5C5C: $00
    pop hl                                        ; $5C5D: $E1
    ld e, l                                       ; $5C5E: $5D
    nop                                           ; $5C5F: $00
    nop                                           ; $5C60: $00
    ld c, c                                       ; $5C61: $49
    ld e, a                                       ; $5C62: $5F
    nop                                           ; $5C63: $00
    nop                                           ; $5C64: $00
    pop hl                                        ; $5C65: $E1
    ld e, l                                       ; $5C66: $5D
    nop                                           ; $5C67: $00
    nop                                           ; $5C68: $00
    ld e, c                                       ; $5C69: $59
    ld e, a                                       ; $5C6A: $5F
    nop                                           ; $5C6B: $00
    nop                                           ; $5C6C: $00
    pop hl                                        ; $5C6D: $E1
    ld e, l                                       ; $5C6E: $5D
    nop                                           ; $5C6F: $00
    nop                                           ; $5C70: $00
    ld l, c                                       ; $5C71: $69
    ld e, a                                       ; $5C72: $5F
    nop                                           ; $5C73: $00
    nop                                           ; $5C74: $00
    pop hl                                        ; $5C75: $E1
    ld e, l                                       ; $5C76: $5D
    nop                                           ; $5C77: $00
    nop                                           ; $5C78: $00
    ld de, $215D                                  ; $5C79: $11 $5D $21
    ld e, l                                       ; $5C7C: $5D
    ld h, e                                       ; $5C7D: $63
    ld e, [hl]                                    ; $5C7E: $5E
    nop                                           ; $5C7F: $00
    nop                                           ; $5C80: $00
    ld sp, $415D                                  ; $5C81: $31 $5D $41
    ld e, l                                       ; $5C84: $5D
    db $DD                                        ; $5C85: $DD
    ld e, [hl]                                    ; $5C86: $5E
    nop                                           ; $5C87: $00
    nop                                           ; $5C88: $00
    ld sp, $515D                                  ; $5C89: $31 $5D $51
    ld e, l                                       ; $5C8C: $5D
    db $DD                                        ; $5C8D: $DD
    ld e, [hl]                                    ; $5C8E: $5E
    nop                                           ; $5C8F: $00
    nop                                           ; $5C90: $00
    ld sp, $615D                                  ; $5C91: $31 $5D $61
    ld e, l                                       ; $5C94: $5D
    db $DD                                        ; $5C95: $DD
    ld e, [hl]                                    ; $5C96: $5E
    nop                                           ; $5C97: $00
    nop                                           ; $5C98: $00
    ld sp, $715D                                  ; $5C99: $31 $5D $71
    ld e, l                                       ; $5C9C: $5D
    db $DD                                        ; $5C9D: $DD
    ld e, [hl]                                    ; $5C9E: $5E
    nop                                           ; $5C9F: $00
    nop                                           ; $5CA0: $00
    ld sp, $815D                                  ; $5CA1: $31 $5D $81
    ld e, l                                       ; $5CA4: $5D
    db $DD                                        ; $5CA5: $DD
    ld e, [hl]                                    ; $5CA6: $5E
    nop                                           ; $5CA7: $00
    nop                                           ; $5CA8: $00
    ld sp, $915D                                  ; $5CA9: $31 $5D $91
    ld e, l                                       ; $5CAC: $5D
    db $DD                                        ; $5CAD: $DD
    ld e, [hl]                                    ; $5CAE: $5E
    nop                                           ; $5CAF: $00
    nop                                           ; $5CB0: $00
    ld sp, $A15D                                  ; $5CB1: $31 $5D $A1
    ld e, l                                       ; $5CB4: $5D
    db $DD                                        ; $5CB5: $DD
    ld e, [hl]                                    ; $5CB6: $5E
    nop                                           ; $5CB7: $00
    nop                                           ; $5CB8: $00
    ld sp, $B15D                                  ; $5CB9: $31 $5D $B1
    ld e, l                                       ; $5CBC: $5D
    db $DD                                        ; $5CBD: $DD
    ld e, [hl]                                    ; $5CBE: $5E
    nop                                           ; $5CBF: $00
    nop                                           ; $5CC0: $00
    ld sp, $C15D                                  ; $5CC1: $31 $5D $C1
    ld e, l                                       ; $5CC4: $5D
    db $DD                                        ; $5CC5: $DD
    ld e, [hl]                                    ; $5CC6: $5E
    nop                                           ; $5CC7: $00
    nop                                           ; $5CC8: $00
    ld sp, $D15D                                  ; $5CC9: $31 $5D $D1
    ld e, l                                       ; $5CCC: $5D
    db $DD                                        ; $5CCD: $DD
    ld e, [hl]                                    ; $5CCE: $5E
    nop                                           ; $5CCF: $00
    nop                                           ; $5CD0: $00
    ld bc, $7FFF                                  ; $5CD1: $01 $FF $7F
    inc e                                         ; $5CD4: $1C
    ld [bc], a                                    ; $5CD5: $02
    sbc h                                         ; $5CD6: $9C
    stop                                          ; $5CD7: $10 $00
    nop                                           ; $5CD9: $00
    nop                                           ; $5CDA: $00
    nop                                           ; $5CDB: $00
    nop                                           ; $5CDC: $00
    nop                                           ; $5CDD: $00
    nop                                           ; $5CDE: $00
    nop                                           ; $5CDF: $00
    nop                                           ; $5CE0: $00
    ld bc, $009C                                  ; $5CE1: $01 $9C $00
    inc d                                         ; $5CE4: $14
    nop                                           ; $5CE5: $00
    inc c                                         ; $5CE6: $0C
    nop                                           ; $5CE7: $00
    nop                                           ; $5CE8: $00
    nop                                           ; $5CE9: $00
    nop                                           ; $5CEA: $00
    nop                                           ; $5CEB: $00
    nop                                           ; $5CEC: $00
    nop                                           ; $5CED: $00
    nop                                           ; $5CEE: $00
    nop                                           ; $5CEF: $00
    nop                                           ; $5CF0: $00
    ld bc, $7FFF                                  ; $5CF1: $01 $FF $7F
    cp a                                          ; $5CF4: $BF
    ld [bc], a                                    ; $5CF5: $02
    or a                                          ; $5CF6: $B7
    dec b                                         ; $5CF7: $05
    nop                                           ; $5CF8: $00
    nop                                           ; $5CF9: $00
    or l                                          ; $5CFA: $B5
    ld d, [hl]                                    ; $5CFB: $56
    rra                                           ; $5CFC: $1F
    nop                                           ; $5CFD: $00
    nop                                           ; $5CFE: $00
    nop                                           ; $5CFF: $00
    nop                                           ; $5D00: $00
    ld bc, $739C                                  ; $5D01: $01 $9C $73
    jr jr_02C_5D69                                ; $5D04: $18 $63

    adc $39                                       ; $5D06: $CE $39
    nop                                           ; $5D08: $00
    nop                                           ; $5D09: $00
    jr jr_02C_5D6F                                ; $5D0A: $18 $63

    adc $39                                       ; $5D0C: $CE $39
    nop                                           ; $5D0E: $00
    nop                                           ; $5D0F: $00
    nop                                           ; $5D10: $00
    ld bc, $739C                                  ; $5D11: $01 $9C $73
    rst RST_28                                    ; $5D14: $EF
    dec a                                         ; $5D15: $3D
    rst RST_20                                    ; $5D16: $E7
    inc e                                         ; $5D17: $1C
    nop                                           ; $5D18: $00
    nop                                           ; $5D19: $00
    rst RST_28                                    ; $5D1A: $EF
    dec a                                         ; $5D1B: $3D
    rst RST_20                                    ; $5D1C: $E7
    inc e                                         ; $5D1D: $1C
    nop                                           ; $5D1E: $00
    nop                                           ; $5D1F: $00
    nop                                           ; $5D20: $00
    add hl, bc                                    ; $5D21: $09
    sbc h                                         ; $5D22: $9C
    ld [hl], e                                    ; $5D23: $73
    rst RST_38                                    ; $5D24: $FF
    ld [bc], a                                    ; $5D25: $02
    sbc h                                         ; $5D26: $9C
    stop                                          ; $5D27: $10 $00
    nop                                           ; $5D29: $00
    jr jr_02C_5D8F                                ; $5D2A: $18 $63

    adc $39                                       ; $5D2C: $CE $39
    nop                                           ; $5D2E: $00
    nop                                           ; $5D2F: $00
    nop                                           ; $5D30: $00
    ld bc, $0000                                  ; $5D31: $01 $00 $00
    rst RST_38                                    ; $5D34: $FF
    inc bc                                        ; $5D35: $03
    rra                                           ; $5D36: $1F
    nop                                           ; $5D37: $00
    ldh [$FF03], a                                ; $5D38: $E0 $03
    rra                                           ; $5D3A: $1F
    ld [bc], a                                    ; $5D3B: $02
    ld [hl], d                                    ; $5D3C: $72
    ld bc, $67BF                                  ; $5D3D: $01 $BF $67
    nop                                           ; $5D40: $00
    add hl, bc                                    ; $5D41: $09
    nop                                           ; $5D42: $00
    nop                                           ; $5D43: $00
    rst RST_38                                    ; $5D44: $FF
    ld [bc], a                                    ; $5D45: $02
    sbc h                                         ; $5D46: $9C
    db $10                                        ; $5D47: $10
    sbc [hl]                                      ; $5D48: $9E
    ld l, e                                       ; $5D49: $6B
    cp h                                          ; $5D4A: $BC
    ld hl, $1118                                  ; $5D4B: $21 $18 $11
    cp a                                          ; $5D4E: $BF
    ld [hl], $00                                  ; $5D4F: $36 $00
    add hl, bc                                    ; $5D51: $09
    nop                                           ; $5D52: $00
    nop                                           ; $5D53: $00
    rst RST_38                                    ; $5D54: $FF
    ld [bc], a                                    ; $5D55: $02
    sbc h                                         ; $5D56: $9C
    db $10                                        ; $5D57: $10
    sbc [hl]                                      ; $5D58: $9E
    ld l, e                                       ; $5D59: $6B
    or c                                          ; $5D5A: $B1
    ld a, [hl]                                    ; $5D5B: $7E
    dec h                                         ; $5D5C: $25
    ld l, l                                       ; $5D5D: $6D
    ld e, d                                       ; $5D5E: $5A
    ld a, e                                       ; $5D5F: $7B
    nop                                           ; $5D60: $00
    add hl, bc                                    ; $5D61: $09
    nop                                           ; $5D62: $00
    nop                                           ; $5D63: $00
    rst RST_38                                    ; $5D64: $FF
    ld [bc], a                                    ; $5D65: $02
    sbc h                                         ; $5D66: $9C
    db $10                                        ; $5D67: $10
    sbc [hl]                                      ; $5D68: $9E

jr_02C_5D69:
    ld l, e                                       ; $5D69: $6B
    sub h                                         ; $5D6A: $94
    ld hl, $1110                                  ; $5D6B: $21 $10 $11
    sbc d                                         ; $5D6E: $9A

jr_02C_5D6F:
    ld b, d                                       ; $5D6F: $42
    nop                                           ; $5D70: $00
    add hl, bc                                    ; $5D71: $09
    nop                                           ; $5D72: $00
    nop                                           ; $5D73: $00
    rst RST_38                                    ; $5D74: $FF
    ld [bc], a                                    ; $5D75: $02
    sbc h                                         ; $5D76: $9C
    db $10                                        ; $5D77: $10
    sbc [hl]                                      ; $5D78: $9E
    ld l, e                                       ; $5D79: $6B
    db $10                                        ; $5D7A: $10
    ld [hl+], a                                   ; $5D7B: $22
    adc h                                         ; $5D7C: $8C
    ld de, $3294                                  ; $5D7D: $11 $94 $32
    nop                                           ; $5D80: $00
    add hl, bc                                    ; $5D81: $09
    nop                                           ; $5D82: $00
    nop                                           ; $5D83: $00
    rst RST_38                                    ; $5D84: $FF
    ld [bc], a                                    ; $5D85: $02
    sbc h                                         ; $5D86: $9C
    db $10                                        ; $5D87: $10
    sbc [hl]                                      ; $5D88: $9E
    ld l, e                                       ; $5D89: $6B
    sub b                                         ; $5D8A: $90
    jr nz, jr_02C_5DBA                            ; $5D8B: $20 $2D

    jr nz, jr_02C_5DC4                            ; $5D8D: $20 $35

jr_02C_5D8F:
    ld sp, $0900                                  ; $5D8F: $31 $00 $09
    nop                                           ; $5D92: $00
    nop                                           ; $5D93: $00
    rst RST_38                                    ; $5D94: $FF
    ld [bc], a                                    ; $5D95: $02
    sbc h                                         ; $5D96: $9C
    db $10                                        ; $5D97: $10
    sbc [hl]                                      ; $5D98: $9E
    ld l, e                                       ; $5D99: $6B
    inc l                                         ; $5D9A: $2C
    ld d, l                                       ; $5D9B: $55
    xor b                                         ; $5D9C: $A8
    inc a                                         ; $5D9D: $3C
    or b                                          ; $5D9E: $B0
    ld l, l                                       ; $5D9F: $6D
    nop                                           ; $5DA0: $00
    add hl, bc                                    ; $5DA1: $09
    nop                                           ; $5DA2: $00
    nop                                           ; $5DA3: $00
    rst RST_38                                    ; $5DA4: $FF
    ld [bc], a                                    ; $5DA5: $02
    sbc h                                         ; $5DA6: $9C
    db $10                                        ; $5DA7: $10
    sbc [hl]                                      ; $5DA8: $9E
    ld l, e                                       ; $5DA9: $6B
    sbc [hl]                                      ; $5DAA: $9E
    ld sp, $3084                                  ; $5DAB: $31 $84 $30
    sbc [hl]                                      ; $5DAE: $9E
    ld [hl-], a                                   ; $5DAF: $32
    nop                                           ; $5DB0: $00
    add hl, bc                                    ; $5DB1: $09
    nop                                           ; $5DB2: $00
    nop                                           ; $5DB3: $00
    rst RST_38                                    ; $5DB4: $FF
    ld [bc], a                                    ; $5DB5: $02
    sbc h                                         ; $5DB6: $9C
    db $10                                        ; $5DB7: $10
    sbc [hl]                                      ; $5DB8: $9E
    ld l, e                                       ; $5DB9: $6B

jr_02C_5DBA:
    rst RST_28                                    ; $5DBA: $EF
    ld e, l                                       ; $5DBB: $5D
    rst RST_20                                    ; $5DBC: $E7
    inc a                                         ; $5DBD: $3C
    rst RST_30                                    ; $5DBE: $F7
    ld e, [hl]                                    ; $5DBF: $5E
    nop                                           ; $5DC0: $00
    add hl, bc                                    ; $5DC1: $09
    nop                                           ; $5DC2: $00
    nop                                           ; $5DC3: $00

jr_02C_5DC4:
    rst RST_38                                    ; $5DC4: $FF
    ld [bc], a                                    ; $5DC5: $02
    sbc h                                         ; $5DC6: $9C
    db $10                                        ; $5DC7: $10
    sbc [hl]                                      ; $5DC8: $9E
    ld l, e                                       ; $5DC9: $6B
    sub h                                         ; $5DCA: $94
    ld e, d                                       ; $5DCB: $5A
    ld c, h                                       ; $5DCC: $4C
    ld a, [hl-]                                   ; $5DCD: $3A
    jr @+$81                                      ; $5DCE: $18 $7F

    nop                                           ; $5DD0: $00
    add hl, bc                                    ; $5DD1: $09
    nop                                           ; $5DD2: $00
    nop                                           ; $5DD3: $00
    rst RST_38                                    ; $5DD4: $FF
    ld [bc], a                                    ; $5DD5: $02
    sbc h                                         ; $5DD6: $9C
    db $10                                        ; $5DD7: $10
    sbc [hl]                                      ; $5DD8: $9E
    ld l, e                                       ; $5DD9: $6B
    ld [hl], l                                    ; $5DDA: $75
    dec a                                         ; $5DDB: $3D
    adc h                                         ; $5DDC: $8C
    jr c, jr_02C_5DF8                             ; $5DDD: $38 $19

    ld c, [hl]                                    ; $5DDF: $4E
    nop                                           ; $5DE0: $00
    ld hl, $0301                                  ; $5DE1: $21 $01 $03
    nop                                           ; $5DE4: $00
    nop                                           ; $5DE5: $00
    nop                                           ; $5DE6: $00
    inc de                                        ; $5DE7: $13
    ld de, $0000                                  ; $5DE8: $11 $00 $00
    nop                                           ; $5DEB: $00
    nop                                           ; $5DEC: $00
    nop                                           ; $5DED: $00
    nop                                           ; $5DEE: $00
    nop                                           ; $5DEF: $00
    nop                                           ; $5DF0: $00
    ld [hl+], a                                   ; $5DF1: $22
    ld [bc], a                                    ; $5DF2: $02
    inc bc                                        ; $5DF3: $03
    nop                                           ; $5DF4: $00
    nop                                           ; $5DF5: $00
    nop                                           ; $5DF6: $00
    inc de                                        ; $5DF7: $13

jr_02C_5DF8:
    ld de, $1503                                  ; $5DF8: $11 $03 $15
    inc bc                                        ; $5DFB: $03
    ld [$1110], sp                                ; $5DFC: $08 $10 $11
    nop                                           ; $5DFF: $00
    nop                                           ; $5E00: $00
    nop                                           ; $5E01: $00
    nop                                           ; $5E02: $00
    nop                                           ; $5E03: $00
    nop                                           ; $5E04: $00
    nop                                           ; $5E05: $00
    nop                                           ; $5E06: $00
    ld [hl+], a                                   ; $5E07: $22
    dec b                                         ; $5E08: $05
    inc bc                                        ; $5E09: $03
    dec d                                         ; $5E0A: $15
    nop                                           ; $5E0B: $00
    nop                                           ; $5E0C: $00
    inc de                                        ; $5E0D: $13
    ld de, $0003                                  ; $5E0E: $11 $03 $00
    rlca                                          ; $5E11: $07
    ld [bc], a                                    ; $5E12: $02
    add hl, bc                                    ; $5E13: $09
    db $10                                        ; $5E14: $10
    inc bc                                        ; $5E15: $03
    nop                                           ; $5E16: $00
    ld a, [bc]                                    ; $5E17: $0A
    ld bc, $0F0C                                  ; $5E18: $01 $0C $0F
    inc bc                                        ; $5E1B: $03
    nop                                           ; $5E1C: $00
    nop                                           ; $5E1D: $00
    nop                                           ; $5E1E: $00
    dec b                                         ; $5E1F: $05
    ld [$0003], sp                                ; $5E20: $08 $03 $00
    ld c, $09                                     ; $5E23: $0E $09
    inc de                                        ; $5E25: $13
    ld de, $0000                                  ; $5E26: $11 $00 $00
    nop                                           ; $5E29: $00
    nop                                           ; $5E2A: $00
    nop                                           ; $5E2B: $00
    nop                                           ; $5E2C: $00
    nop                                           ; $5E2D: $00
    nop                                           ; $5E2E: $00
    nop                                           ; $5E2F: $00
    nop                                           ; $5E30: $00
    nop                                           ; $5E31: $00
    nop                                           ; $5E32: $00
    nop                                           ; $5E33: $00
    nop                                           ; $5E34: $00
    ld [hl+], a                                   ; $5E35: $22
    dec b                                         ; $5E36: $05
    inc bc                                        ; $5E37: $03
    dec d                                         ; $5E38: $15
    nop                                           ; $5E39: $00
    nop                                           ; $5E3A: $00
    inc de                                        ; $5E3B: $13
    ld de, $0003                                  ; $5E3C: $11 $03 $00
    dec b                                         ; $5E3F: $05
    inc bc                                        ; $5E40: $03
    inc de                                        ; $5E41: $13
    ld b, $03                                     ; $5E42: $06 $03
    nop                                           ; $5E44: $00
    nop                                           ; $5E45: $00
    dec bc                                        ; $5E46: $0B
    ld c, $0E                                     ; $5E47: $0E $0E
    inc bc                                        ; $5E49: $03
    nop                                           ; $5E4A: $00
    nop                                           ; $5E4B: $00
    nop                                           ; $5E4C: $00
    rlca                                          ; $5E4D: $07
    ld b, $03                                     ; $5E4E: $06 $03
    nop                                           ; $5E50: $00
    inc c                                         ; $5E51: $0C
    dec bc                                        ; $5E52: $0B
    inc de                                        ; $5E53: $13
    ld de, $0000                                  ; $5E54: $11 $00 $00
    nop                                           ; $5E57: $00
    nop                                           ; $5E58: $00
    nop                                           ; $5E59: $00
    nop                                           ; $5E5A: $00
    nop                                           ; $5E5B: $00
    nop                                           ; $5E5C: $00
    nop                                           ; $5E5D: $00
    nop                                           ; $5E5E: $00
    nop                                           ; $5E5F: $00
    nop                                           ; $5E60: $00
    nop                                           ; $5E61: $00
    nop                                           ; $5E62: $00
    ld [hl+], a                                   ; $5E63: $22
    inc b                                         ; $5E64: $04
    inc bc                                        ; $5E65: $03
    nop                                           ; $5E66: $00
    nop                                           ; $5E67: $00
    nop                                           ; $5E68: $00
    inc de                                        ; $5E69: $13
    ld de, $1503                                  ; $5E6A: $11 $03 $15
    dec bc                                        ; $5E6D: $0B
    ld [bc], a                                    ; $5E6E: $02
    ld de, $0308                                  ; $5E6F: $11 $08 $03
    ld a, [hl+]                                   ; $5E72: $2A
    nop                                           ; $5E73: $00
    db $10                                        ; $5E74: $10
    add hl, bc                                    ; $5E75: $09
    db $10                                        ; $5E76: $10
    inc bc                                        ; $5E77: $03
    ccf                                           ; $5E78: $3F
    nop                                           ; $5E79: $00
    dec b                                         ; $5E7A: $05
    add hl, bc                                    ; $5E7B: $09
    rrca                                          ; $5E7C: $0F
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
    dec h                                         ; $5E8B: $25
    dec bc                                        ; $5E8C: $0B
    inc bc                                        ; $5E8D: $03
    ccf                                           ; $5E8E: $3F
    nop                                           ; $5E8F: $00
    nop                                           ; $5E90: $00
    inc de                                        ; $5E91: $13
    ld de, $0003                                  ; $5E92: $11 $03 $00
    ld [bc], a                                    ; $5E95: $02
    inc bc                                        ; $5E96: $03
    ld [de], a                                    ; $5E97: $12
    rlca                                          ; $5E98: $07
    ld [bc], a                                    ; $5E99: $02
    dec d                                         ; $5E9A: $15
    dec b                                         ; $5E9B: $05
    rlca                                          ; $5E9C: $07
    ld c, $07                                     ; $5E9D: $0E $07
    ld [bc], a                                    ; $5E9F: $02
    ld a, [hl+]                                   ; $5EA0: $2A
    ld a, [bc]                                    ; $5EA1: $0A
    nop                                           ; $5EA2: $00
    ld a, [bc]                                    ; $5EA3: $0A
    nop                                           ; $5EA4: $00
    ld [bc], a                                    ; $5EA5: $02
    ld a, [hl+]                                   ; $5EA6: $2A
    nop                                           ; $5EA7: $00
    ld bc, $0205                                  ; $5EA8: $01 $05 $02
    ld [bc], a                                    ; $5EAB: $02
    ld a, [hl+]                                   ; $5EAC: $2A
    rrca                                          ; $5EAD: $0F
    ld bc, $0213                                  ; $5EAE: $01 $13 $02
    ld [bc], a                                    ; $5EB1: $02
    ld a, [hl+]                                   ; $5EB2: $2A
    ld b, $02                                     ; $5EB3: $06 $02
    ld [$0203], sp                                ; $5EB5: $08 $03 $02
    ld a, [hl+]                                   ; $5EB8: $2A
    nop                                           ; $5EB9: $00
    inc bc                                        ; $5EBA: $03
    ld [bc], a                                    ; $5EBB: $02
    inc bc                                        ; $5EBC: $03
    ld [bc], a                                    ; $5EBD: $02
    ld a, [hl+]                                   ; $5EBE: $2A
    ld b, $03                                     ; $5EBF: $06 $03
    ld [$0203], sp                                ; $5EC1: $08 $03 $02
    ld a, [hl+]                                   ; $5EC4: $2A
    ld c, $03                                     ; $5EC5: $0E $03
    db $10                                        ; $5EC7: $10
    inc bc                                        ; $5EC8: $03
    ld [bc], a                                    ; $5EC9: $02
    ld a, [hl+]                                   ; $5ECA: $2A
    ld [de], a                                    ; $5ECB: $12
    inc bc                                        ; $5ECC: $03
    inc de                                        ; $5ECD: $13
    inc bc                                        ; $5ECE: $03
    nop                                           ; $5ECF: $00
    nop                                           ; $5ED0: $00
    nop                                           ; $5ED1: $00
    nop                                           ; $5ED2: $00
    nop                                           ; $5ED3: $00
    nop                                           ; $5ED4: $00
    nop                                           ; $5ED5: $00
    nop                                           ; $5ED6: $00
    nop                                           ; $5ED7: $00
    nop                                           ; $5ED8: $00
    nop                                           ; $5ED9: $00
    nop                                           ; $5EDA: $00
    nop                                           ; $5EDB: $00
    nop                                           ; $5EDC: $00
    ld [hl+], a                                   ; $5EDD: $22
    dec b                                         ; $5EDE: $05
    inc bc                                        ; $5EDF: $03
    ld a, [hl+]                                   ; $5EE0: $2A
    nop                                           ; $5EE1: $00
    nop                                           ; $5EE2: $00
    inc de                                        ; $5EE3: $13
    ld de, $3F03                                  ; $5EE4: $11 $03 $3F
    nop                                           ; $5EE7: $00
    inc b                                         ; $5EE8: $04
    inc de                                        ; $5EE9: $13
    rrca                                          ; $5EEA: $0F
    ld [bc], a                                    ; $5EEB: $02
    nop                                           ; $5EEC: $00
    nop                                           ; $5EED: $00
    ld bc, $0108                                  ; $5EEE: $01 $08 $01
    ld [bc], a                                    ; $5EF1: $02
    nop                                           ; $5EF2: $00
    dec bc                                        ; $5EF3: $0B
    ld bc, $0113                                  ; $5EF4: $01 $13 $01
    ld [bc], a                                    ; $5EF7: $02
    dec d                                         ; $5EF8: $15
    nop                                           ; $5EF9: $00
    db $10                                        ; $5EFA: $10
    inc de                                        ; $5EFB: $13
    ld de, $0000                                  ; $5EFC: $11 $00 $00
    nop                                           ; $5EFF: $00
    nop                                           ; $5F00: $00
    nop                                           ; $5F01: $00
    nop                                           ; $5F02: $00
    nop                                           ; $5F03: $00
    nop                                           ; $5F04: $00
    nop                                           ; $5F05: $00
    nop                                           ; $5F06: $00
    nop                                           ; $5F07: $00
    nop                                           ; $5F08: $00
    ld bc, $7FFF                                  ; $5F09: $01 $FF $7F
    or l                                          ; $5F0C: $B5
    ld d, [hl]                                    ; $5F0D: $56
    ld l, e                                       ; $5F0E: $6B
    dec l                                         ; $5F0F: $2D
    nop                                           ; $5F10: $00
    nop                                           ; $5F11: $00
    nop                                           ; $5F12: $00
    nop                                           ; $5F13: $00
    nop                                           ; $5F14: $00
    nop                                           ; $5F15: $00
    nop                                           ; $5F16: $00
    nop                                           ; $5F17: $00
    nop                                           ; $5F18: $00
    ld bc, $7FFF                                  ; $5F19: $01 $FF $7F
    or l                                          ; $5F1C: $B5
    ld d, [hl]                                    ; $5F1D: $56
    ld l, e                                       ; $5F1E: $6B
    dec l                                         ; $5F1F: $2D
    nop                                           ; $5F20: $00
    nop                                           ; $5F21: $00
    nop                                           ; $5F22: $00
    nop                                           ; $5F23: $00
    nop                                           ; $5F24: $00
    nop                                           ; $5F25: $00
    nop                                           ; $5F26: $00
    nop                                           ; $5F27: $00
    nop                                           ; $5F28: $00
    ld bc, $7FFF                                  ; $5F29: $01 $FF $7F
    rra                                           ; $5F2C: $1F
    ld [bc], a                                    ; $5F2D: $02
    rra                                           ; $5F2E: $1F
    nop                                           ; $5F2F: $00
    nop                                           ; $5F30: $00
    nop                                           ; $5F31: $00
    nop                                           ; $5F32: $00
    nop                                           ; $5F33: $00
    nop                                           ; $5F34: $00
    nop                                           ; $5F35: $00
    nop                                           ; $5F36: $00
    nop                                           ; $5F37: $00
    nop                                           ; $5F38: $00
    ld bc, $7FFF                                  ; $5F39: $01 $FF $7F
    sbc $7A                                       ; $5F3C: $DE $7A
    add b                                         ; $5F3E: $80
    ld a, c                                       ; $5F3F: $79
    nop                                           ; $5F40: $00
    nop                                           ; $5F41: $00
    nop                                           ; $5F42: $00
    nop                                           ; $5F43: $00
    nop                                           ; $5F44: $00
    nop                                           ; $5F45: $00
    nop                                           ; $5F46: $00
    nop                                           ; $5F47: $00
    nop                                           ; $5F48: $00
    ld bc, $7FFF                                  ; $5F49: $01 $FF $7F
    ld [$807B], sp                                ; $5F4C: $08 $7B $80
    ld a, c                                       ; $5F4F: $79
    nop                                           ; $5F50: $00
    nop                                           ; $5F51: $00
    nop                                           ; $5F52: $00
    nop                                           ; $5F53: $00
    nop                                           ; $5F54: $00
    nop                                           ; $5F55: $00
    nop                                           ; $5F56: $00
    nop                                           ; $5F57: $00
    nop                                           ; $5F58: $00
    ld bc, $7FFF                                  ; $5F59: $01 $FF $7F
    sbc [hl]                                      ; $5F5C: $9E
    ld a, d                                       ; $5F5D: $7A
    db $10                                        ; $5F5E: $10
    ld h, b                                       ; $5F5F: $60
    nop                                           ; $5F60: $00
    nop                                           ; $5F61: $00
    nop                                           ; $5F62: $00
    nop                                           ; $5F63: $00
    nop                                           ; $5F64: $00
    nop                                           ; $5F65: $00
    nop                                           ; $5F66: $00
    nop                                           ; $5F67: $00
    nop                                           ; $5F68: $00
    ld bc, $7FFF                                  ; $5F69: $01 $FF $7F
    sbc h                                         ; $5F6C: $9C
    ld [bc], a                                    ; $5F6D: $02
    ld [$0031], sp                                ; $5F6E: $08 $31 $00
    nop                                           ; $5F71: $00
    nop                                           ; $5F72: $00
    nop                                           ; $5F73: $00
    nop                                           ; $5F74: $00
    nop                                           ; $5F75: $00
    nop                                           ; $5F76: $00
    nop                                           ; $5F77: $00
    nop                                           ; $5F78: $00
    ld bc, $7FFF                                  ; $5F79: $01 $FF $7F
    db $E3                                        ; $5F7C: $E3
    rrca                                          ; $5F7D: $0F
    and e                                         ; $5F7E: $A3
    dec c                                         ; $5F7F: $0D
    nop                                           ; $5F80: $00
    nop                                           ; $5F81: $00
    nop                                           ; $5F82: $00
    nop                                           ; $5F83: $00
    nop                                           ; $5F84: $00
    nop                                           ; $5F85: $00
    nop                                           ; $5F86: $00
    nop                                           ; $5F87: $00
    nop                                           ; $5F88: $00
    ld bc, $7FFF                                  ; $5F89: $01 $FF $7F
    ldh [$FF7E], a                                ; $5F8C: $E0 $7E
    ld h, b                                       ; $5F8E: $60
    ld a, l                                       ; $5F8F: $7D
    nop                                           ; $5F90: $00
    nop                                           ; $5F91: $00
    nop                                           ; $5F92: $00
    nop                                           ; $5F93: $00
    nop                                           ; $5F94: $00
    nop                                           ; $5F95: $00
    nop                                           ; $5F96: $00
    nop                                           ; $5F97: $00
    nop                                           ; $5F98: $00
    ld bc, $7FFF                                  ; $5F99: $01 $FF $7F
    db $E3                                        ; $5F9C: $E3
    rrca                                          ; $5F9D: $0F
    and e                                         ; $5F9E: $A3
    dec c                                         ; $5F9F: $0D
    nop                                           ; $5FA0: $00
    nop                                           ; $5FA1: $00
    nop                                           ; $5FA2: $00
    nop                                           ; $5FA3: $00
    nop                                           ; $5FA4: $00
    nop                                           ; $5FA5: $00
    nop                                           ; $5FA6: $00
    nop                                           ; $5FA7: $00
    nop                                           ; $5FA8: $00
    ld bc, $7FFF                                  ; $5FA9: $01 $FF $7F
    push af                                       ; $5FAC: $F5
    ld d, a                                       ; $5FAD: $57
    db $EB                                        ; $5FAE: $EB
    cpl                                           ; $5FAF: $2F
    nop                                           ; $5FB0: $00
    nop                                           ; $5FB1: $00
    or l                                          ; $5FB2: $B5
    ld d, [hl]                                    ; $5FB3: $56
    ld l, e                                       ; $5FB4: $6B
    dec l                                         ; $5FB5: $2D
    nop                                           ; $5FB6: $00
    nop                                           ; $5FB7: $00
    nop                                           ; $5FB8: $00
    ld bc, $7FFF                                  ; $5FB9: $01 $FF $7F
    or a                                          ; $5FBC: $B7
    dec e                                         ; $5FBD: $1D
    cpl                                           ; $5FBE: $2F
    dec d                                         ; $5FBF: $15
    nop                                           ; $5FC0: $00
    nop                                           ; $5FC1: $00
    nop                                           ; $5FC2: $00
    nop                                           ; $5FC3: $00
    nop                                           ; $5FC4: $00
    nop                                           ; $5FC5: $00
    nop                                           ; $5FC6: $00
    nop                                           ; $5FC7: $00
    nop                                           ; $5FC8: $00
    ld bc, $7FFF                                  ; $5FC9: $01 $FF $7F
    or a                                          ; $5FCC: $B7
    dec e                                         ; $5FCD: $1D
    cpl                                           ; $5FCE: $2F
    dec d                                         ; $5FCF: $15
    nop                                           ; $5FD0: $00
    nop                                           ; $5FD1: $00
    rst RST_38                                    ; $5FD2: $FF
    ld e, $FF                                     ; $5FD3: $1E $FF
    inc e                                         ; $5FD5: $1C
    nop                                           ; $5FD6: $00
    nop                                           ; $5FD7: $00
    nop                                           ; $5FD8: $00
    ld bc, $7FFF                                  ; $5FD9: $01 $FF $7F
    ei                                            ; $5FDC: $FB
    rra                                           ; $5FDD: $1F
    ld h, a                                       ; $5FDE: $67
    rra                                           ; $5FDF: $1F
    nop                                           ; $5FE0: $00
    nop                                           ; $5FE1: $00
    rst RST_38                                    ; $5FE2: $FF
    ld e, $FF                                     ; $5FE3: $1E $FF
    inc e                                         ; $5FE5: $1C
    nop                                           ; $5FE6: $00
    nop                                           ; $5FE7: $00
    nop                                           ; $5FE8: $00
    ld bc, $7FFF                                  ; $5FE9: $01 $FF $7F
    ldh [$FF7E], a                                ; $5FEC: $E0 $7E
    ld h, b                                       ; $5FEE: $60
    ld a, l                                       ; $5FEF: $7D
    nop                                           ; $5FF0: $00
    nop                                           ; $5FF1: $00
    rst RST_30                                    ; $5FF2: $F7
    ld e, [hl]                                    ; $5FF3: $5E
    and l                                         ; $5FF4: $A5
    inc d                                         ; $5FF5: $14
    nop                                           ; $5FF6: $00
    nop                                           ; $5FF7: $00
    nop                                           ; $5FF8: $00
    ld bc, $7FFF                                  ; $5FF9: $01 $FF $7F
    rst RST_30                                    ; $5FFC: $F7
    ld a, a                                       ; $5FFD: $7F
    rst RST_28                                    ; $5FFE: $EF
    ld l, a                                       ; $5FFF: $6F
    nop                                           ; $6000: $00
    nop                                           ; $6001: $00
    nop                                           ; $6002: $00
    nop                                           ; $6003: $00
    nop                                           ; $6004: $00
    nop                                           ; $6005: $00
    nop                                           ; $6006: $00
    nop                                           ; $6007: $00
    nop                                           ; $6008: $00
    ld bc, $36BF                                  ; $6009: $01 $BF $36
    cp h                                          ; $600C: $BC
    ld hl, $1118                                  ; $600D: $21 $18 $11
    nop                                           ; $6010: $00
    nop                                           ; $6011: $00
    nop                                           ; $6012: $00
    nop                                           ; $6013: $00
    nop                                           ; $6014: $00
    nop                                           ; $6015: $00
    nop                                           ; $6016: $00
    nop                                           ; $6017: $00
    nop                                           ; $6018: $00
    ld bc, $3135                                  ; $6019: $01 $35 $31
    sub b                                         ; $601C: $90
    jr nz, jr_02C_604C                            ; $601D: $20 $2D

    jr nz, jr_02C_6021                            ; $601F: $20 $00

jr_02C_6021:
    nop                                           ; $6021: $00
    nop                                           ; $6022: $00
    nop                                           ; $6023: $00
    nop                                           ; $6024: $00
    nop                                           ; $6025: $00
    nop                                           ; $6026: $00
    nop                                           ; $6027: $00
    nop                                           ; $6028: $00
    ld bc, $7B5A                                  ; $6029: $01 $5A $7B
    or c                                          ; $602C: $B1
    ld a, [hl]                                    ; $602D: $7E
    dec h                                         ; $602E: $25
    ld l, l                                       ; $602F: $6D
    nop                                           ; $6030: $00
    nop                                           ; $6031: $00
    nop                                           ; $6032: $00
    nop                                           ; $6033: $00
    nop                                           ; $6034: $00
    nop                                           ; $6035: $00
    nop                                           ; $6036: $00
    nop                                           ; $6037: $00
    nop                                           ; $6038: $00
    ld bc, $6DB0                                  ; $6039: $01 $B0 $6D
    inc l                                         ; $603C: $2C
    ld d, l                                       ; $603D: $55
    xor b                                         ; $603E: $A8
    inc a                                         ; $603F: $3C
    nop                                           ; $6040: $00
    nop                                           ; $6041: $00
    nop                                           ; $6042: $00
    nop                                           ; $6043: $00
    nop                                           ; $6044: $00
    nop                                           ; $6045: $00
    nop                                           ; $6046: $00
    nop                                           ; $6047: $00
    nop                                           ; $6048: $00
    ld bc, $429A                                  ; $6049: $01 $9A $42

jr_02C_604C:
    sub h                                         ; $604C: $94
    ld hl, $1110                                  ; $604D: $21 $10 $11
    nop                                           ; $6050: $00
    nop                                           ; $6051: $00
    nop                                           ; $6052: $00
    nop                                           ; $6053: $00
    nop                                           ; $6054: $00
    nop                                           ; $6055: $00
    nop                                           ; $6056: $00
    nop                                           ; $6057: $00
    nop                                           ; $6058: $00
    ld bc, $329E                                  ; $6059: $01 $9E $32
    sbc [hl]                                      ; $605C: $9E
    ld sp, $3084                                  ; $605D: $31 $84 $30
    nop                                           ; $6060: $00
    nop                                           ; $6061: $00
    nop                                           ; $6062: $00
    nop                                           ; $6063: $00
    nop                                           ; $6064: $00
    nop                                           ; $6065: $00
    nop                                           ; $6066: $00
    nop                                           ; $6067: $00
    nop                                           ; $6068: $00
    ld bc, $3294                                  ; $6069: $01 $94 $32
    db $10                                        ; $606C: $10
    ld [hl+], a                                   ; $606D: $22
    adc h                                         ; $606E: $8C
    ld de, $0000                                  ; $606F: $11 $00 $00
    nop                                           ; $6072: $00
    nop                                           ; $6073: $00
    nop                                           ; $6074: $00
    nop                                           ; $6075: $00
    nop                                           ; $6076: $00
    nop                                           ; $6077: $00
    nop                                           ; $6078: $00
    ld bc, $5EF7                                  ; $6079: $01 $F7 $5E
    rst RST_28                                    ; $607C: $EF
    ld e, l                                       ; $607D: $5D
    rst RST_20                                    ; $607E: $E7
    inc a                                         ; $607F: $3C
    nop                                           ; $6080: $00
    nop                                           ; $6081: $00
    nop                                           ; $6082: $00
    nop                                           ; $6083: $00
    nop                                           ; $6084: $00
    nop                                           ; $6085: $00
    nop                                           ; $6086: $00
    nop                                           ; $6087: $00
    nop                                           ; $6088: $00
    ld bc, $7F18                                  ; $6089: $01 $18 $7F
    sub h                                         ; $608C: $94
    ld e, d                                       ; $608D: $5A
    ld c, h                                       ; $608E: $4C
    ld a, [hl-]                                   ; $608F: $3A
    nop                                           ; $6090: $00
    nop                                           ; $6091: $00
    nop                                           ; $6092: $00
    nop                                           ; $6093: $00
    nop                                           ; $6094: $00
    nop                                           ; $6095: $00
    nop                                           ; $6096: $00
    nop                                           ; $6097: $00
    nop                                           ; $6098: $00
    ld bc, $4E19                                  ; $6099: $01 $19 $4E
    ld [hl], l                                    ; $609C: $75
    dec a                                         ; $609D: $3D
    adc h                                         ; $609E: $8C
    jr c, jr_02C_60A1                             ; $609F: $38 $00

jr_02C_60A1:
    nop                                           ; $60A1: $00
    nop                                           ; $60A2: $00
    nop                                           ; $60A3: $00
    nop                                           ; $60A4: $00
    nop                                           ; $60A5: $00
    nop                                           ; $60A6: $00
    nop                                           ; $60A7: $00
    nop                                           ; $60A8: $00
    ld bc, $7FFF                                  ; $60A9: $01 $FF $7F
    ccf                                           ; $60AC: $3F
    rla                                           ; $60AD: $17
    cp l                                          ; $60AE: $BD
    inc c                                         ; $60AF: $0C
    nop                                           ; $60B0: $00
    nop                                           ; $60B1: $00
    rst RST_38                                    ; $60B2: $FF
    inc c                                         ; $60B3: $0C
    sub b                                         ; $60B4: $90
    ld [$0000], sp                                ; $60B5: $08 $00 $00
    nop                                           ; $60B8: $00
    add hl, bc                                    ; $60B9: $09
    rst RST_38                                    ; $60BA: $FF
    ld a, a                                       ; $60BB: $7F
    push af                                       ; $60BC: $F5
    ld e, [hl]                                    ; $60BD: $5E
    ld l, c                                       ; $60BE: $69
    dec l                                         ; $60BF: $2D
    nop                                           ; $60C0: $00
    nop                                           ; $60C1: $00
    ccf                                           ; $60C2: $3F
    ld a, a                                       ; $60C3: $7F
    nop                                           ; $60C4: $00
    ld a, h                                       ; $60C5: $7C
    nop                                           ; $60C6: $00
    nop                                           ; $60C7: $00
    nop                                           ; $60C8: $00
    ld bc, $7FFF                                  ; $60C9: $01 $FF $7F
    ld a, a                                       ; $60CC: $7F
    ld h, l                                       ; $60CD: $65
    ld a, e                                       ; $60CE: $7B
    inc d                                         ; $60CF: $14
    nop                                           ; $60D0: $00
    nop                                           ; $60D1: $00
    rst RST_38                                    ; $60D2: $FF
    ld l, h                                       ; $60D3: $6C
    sub b                                         ; $60D4: $90
    jr c, jr_02C_60D7                             ; $60D5: $38 $00

jr_02C_60D7:
    nop                                           ; $60D7: $00
    nop                                           ; $60D8: $00
    add hl, bc                                    ; $60D9: $09
    rst RST_38                                    ; $60DA: $FF
    ld a, a                                       ; $60DB: $7F
    push af                                       ; $60DC: $F5
    ld e, [hl]                                    ; $60DD: $5E
    ld l, c                                       ; $60DE: $69
    dec l                                         ; $60DF: $2D
    nop                                           ; $60E0: $00
    nop                                           ; $60E1: $00
    rst RST_28                                    ; $60E2: $EF
    ld a, a                                       ; $60E3: $7F
    dec de                                        ; $60E4: $1B
    nop                                           ; $60E5: $00
    nop                                           ; $60E6: $00
    nop                                           ; $60E7: $00
    nop                                           ; $60E8: $00
    ld bc, $7FFF                                  ; $60E9: $01 $FF $7F
    ld a, a                                       ; $60EC: $7F
    ld h, $FF                                     ; $60ED: $26 $FF
    nop                                           ; $60EF: $00
    nop                                           ; $60F0: $00
    nop                                           ; $60F1: $00
    rst RST_38                                    ; $60F2: $FF
    ld l, $3F                                     ; $60F3: $2E $3F
    dec d                                         ; $60F5: $15
    nop                                           ; $60F6: $00
    nop                                           ; $60F7: $00
    nop                                           ; $60F8: $00
    ld bc, $7FFF                                  ; $60F9: $01 $FF $7F
    cpl                                           ; $60FC: $2F
    ccf                                           ; $60FD: $3F
    db $E3                                        ; $60FE: $E3
    dec c                                         ; $60FF: $0D
    nop                                           ; $6100: $00
    nop                                           ; $6101: $00
    jr nz, @+$05                                  ; $6102: $20 $03

    and b                                         ; $6104: $A0
    ld bc, $0000                                  ; $6105: $01 $00 $00
    nop                                           ; $6108: $00
    ld bc, $7FFF                                  ; $6109: $01 $FF $7F
    ld a, e                                       ; $610C: $7B
    rla                                           ; $610D: $17
    ld a, e                                       ; $610E: $7B
    dec d                                         ; $610F: $15
    nop                                           ; $6110: $00
    nop                                           ; $6111: $00
    ld a, e                                       ; $6112: $7B
    inc bc                                        ; $6113: $03
    adc $01                                       ; $6114: $CE $01
    nop                                           ; $6116: $00
    nop                                           ; $6117: $00
    nop                                           ; $6118: $00
    ld bc, $7FFF                                  ; $6119: $01 $FF $7F
    ld a, a                                       ; $611C: $7F
    rra                                           ; $611D: $1F
    or a                                          ; $611E: $B7
    dec c                                         ; $611F: $0D
    nop                                           ; $6120: $00
    nop                                           ; $6121: $00
    ccf                                           ; $6122: $3F
    cpl                                           ; $6123: $2F
    or e                                          ; $6124: $B3
    dec e                                         ; $6125: $1D
    nop                                           ; $6126: $00
    nop                                           ; $6127: $00
    nop                                           ; $6128: $00
    ld bc, $7FFF                                  ; $6129: $01 $FF $7F
    di                                            ; $612C: $F3
    ld l, [hl]                                    ; $612D: $6E
    xor e                                         ; $612E: $AB
    ld h, l                                       ; $612F: $65
    nop                                           ; $6130: $00
    nop                                           ; $6131: $00
    cp c                                          ; $6132: $B9
    ld d, [hl]                                    ; $6133: $56
    ld l, a                                       ; $6134: $6F
    dec l                                         ; $6135: $2D
    nop                                           ; $6136: $00
    nop                                           ; $6137: $00
    nop                                           ; $6138: $00
    ld bc, $7FFF                                  ; $6139: $01 $FF $7F
    ld a, a                                       ; $613C: $7F
    ld a, [hl]                                    ; $613D: $7E
    ld l, a                                       ; $613E: $6F
    ld l, l                                       ; $613F: $6D
    nop                                           ; $6140: $00
    nop                                           ; $6141: $00
    dec sp                                        ; $6142: $3B
    ld a, [hl]                                    ; $6143: $7E
    ld sp, $004D                                  ; $6144: $31 $4D $00
    nop                                           ; $6147: $00
    nop                                           ; $6148: $00
    ld bc, $7FFF                                  ; $6149: $01 $FF $7F
    rst RST_38                                    ; $614C: $FF
    ld a, $3F                                     ; $614D: $3E $3F
    dec d                                         ; $614F: $15
    nop                                           ; $6150: $00
    nop                                           ; $6151: $00
    ld a, a                                       ; $6152: $7F
    cpl                                           ; $6153: $2F
    ld a, a                                       ; $6154: $7F
    dec e                                         ; $6155: $1D
    nop                                           ; $6156: $00
    nop                                           ; $6157: $00
    nop                                           ; $6158: $00
    ld bc, $7FFF                                  ; $6159: $01 $FF $7F
    push af                                       ; $615C: $F5
    rra                                           ; $615D: $1F
    ld l, c                                       ; $615E: $69
    ld c, $00                                     ; $615F: $0E $00
    nop                                           ; $6161: $00
    jp hl                                         ; $6162: $E9


    ld b, a                                       ; $6163: $47
    and e                                         ; $6164: $A3
    ld e, $00                                     ; $6165: $1E $00
    nop                                           ; $6167: $00
    nop                                           ; $6168: $00
    ld [hl+], a                                   ; $6169: $22
    inc b                                         ; $616A: $04
    inc bc                                        ; $616B: $03
    ld a, [hl+]                                   ; $616C: $2A
    nop                                           ; $616D: $00
    nop                                           ; $616E: $00
    inc de                                        ; $616F: $13
    ld de, $3F03                                  ; $6170: $11 $03 $3F
    add hl, bc                                    ; $6173: $09
    nop                                           ; $6174: $00
    inc de                                        ; $6175: $13
    ld [bc], a                                    ; $6176: $02
    inc bc                                        ; $6177: $03
    nop                                           ; $6178: $00
    nop                                           ; $6179: $00
    nop                                           ; $617A: $00
    rlca                                          ; $617B: $07
    rlca                                          ; $617C: $07
    inc bc                                        ; $617D: $03
    dec d                                         ; $617E: $15
    inc c                                         ; $617F: $0C
    inc b                                         ; $6180: $04
    inc de                                        ; $6181: $13
    ld a, [bc]                                    ; $6182: $0A
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
    ld [hl+], a                                   ; $6191: $22
    inc b                                         ; $6192: $04
    inc bc                                        ; $6193: $03
    nop                                           ; $6194: $00
    nop                                           ; $6195: $00
    nop                                           ; $6196: $00
    inc de                                        ; $6197: $13
    ld de, $1503                                  ; $6198: $11 $03 $15
    nop                                           ; $619B: $00
    inc b                                         ; $619C: $04
    rlca                                          ; $619D: $07
    add hl, bc                                    ; $619E: $09
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
    ld [hl+], a                                   ; $61AD: $22
    inc b                                         ; $61AE: $04
    inc bc                                        ; $61AF: $03
    nop                                           ; $61B0: $00
    nop                                           ; $61B1: $00
    nop                                           ; $61B2: $00
    inc de                                        ; $61B3: $13
    ld de, $1503                                  ; $61B4: $11 $03 $15
    nop                                           ; $61B7: $00
    nop                                           ; $61B8: $00
    inc de                                        ; $61B9: $13
    inc bc                                        ; $61BA: $03
    nop                                           ; $61BB: $00
    nop                                           ; $61BC: $00
    nop                                           ; $61BD: $00
    nop                                           ; $61BE: $00
    nop                                           ; $61BF: $00
    nop                                           ; $61C0: $00
    nop                                           ; $61C1: $00
    nop                                           ; $61C2: $00
    nop                                           ; $61C3: $00
    nop                                           ; $61C4: $00
    nop                                           ; $61C5: $00
    nop                                           ; $61C6: $00
    nop                                           ; $61C7: $00
    nop                                           ; $61C8: $00
    ld [hl+], a                                   ; $61C9: $22
    inc b                                         ; $61CA: $04
    inc bc                                        ; $61CB: $03
    nop                                           ; $61CC: $00
    nop                                           ; $61CD: $00
    nop                                           ; $61CE: $00
    inc de                                        ; $61CF: $13
    ld de, $1503                                  ; $61D0: $11 $03 $15
    nop                                           ; $61D3: $00
    ld a, [bc]                                    ; $61D4: $0A
    inc de                                        ; $61D5: $13
    ld de, $0000                                  ; $61D6: $11 $00 $00
    nop                                           ; $61D9: $00
    nop                                           ; $61DA: $00
    nop                                           ; $61DB: $00
    nop                                           ; $61DC: $00
    nop                                           ; $61DD: $00
    nop                                           ; $61DE: $00
    nop                                           ; $61DF: $00
    nop                                           ; $61E0: $00
    nop                                           ; $61E1: $00
    nop                                           ; $61E2: $00
    nop                                           ; $61E3: $00
    nop                                           ; $61E4: $00
    ld hl, $6246                                  ; $61E5: $21 $46 $62
    sla e                                         ; $61E8: $CB $23
    rl d                                          ; $61EA: $CB $12
    add hl, de                                    ; $61EC: $19
    ld e, [hl]                                    ; $61ED: $5E
    inc hl                                        ; $61EE: $23
    ld d, [hl]                                    ; $61EF: $56
    push de                                       ; $61F0: $D5
    pop hl                                        ; $61F1: $E1
    ld a, h                                       ; $61F2: $7C
    or l                                          ; $61F3: $B5
    jp z, Jump_02C_6245                           ; $61F4: $CA $45 $62

    ld bc, $D380                                  ; $61F7: $01 $80 $D3

Jump_02C_61FA:
    ld e, [hl]                                    ; $61FA: $5E
    inc hl                                        ; $61FB: $23
    ld d, [hl]                                    ; $61FC: $56
    inc hl                                        ; $61FD: $23
    ld a, d                                       ; $61FE: $7A
    cp e                                          ; $61FF: $BB
    jr nz, jr_02C_6216                            ; $6200: $20 $14

    cp $FF                                        ; $6202: $FE $FF
    jp z, Jump_02C_6237                           ; $6204: $CA $37 $62

    cp $00                                        ; $6207: $FE $00
    jr nz, jr_02C_6216                            ; $6209: $20 $0B

    push hl                                       ; $620B: $E5
    ld hl, $0008                                  ; $620C: $21 $08 $00
    add hl, bc                                    ; $620F: $09
    push hl                                       ; $6210: $E5
    pop bc                                        ; $6211: $C1
    pop hl                                        ; $6212: $E1
    jp Jump_02C_61FA                              ; $6213: $C3 $FA $61


jr_02C_6216:
    push hl                                       ; $6216: $E5
    push bc                                       ; $6217: $C5
    pop hl                                        ; $6218: $E1
    ld a, [de]                                    ; $6219: $1A
    ld [hl+], a                                   ; $621A: $22
    inc de                                        ; $621B: $13
    ld a, [de]                                    ; $621C: $1A
    ld [hl+], a                                   ; $621D: $22
    inc de                                        ; $621E: $13
    ld a, [de]                                    ; $621F: $1A
    ld [hl+], a                                   ; $6220: $22
    inc de                                        ; $6221: $13
    ld a, [de]                                    ; $6222: $1A
    ld [hl+], a                                   ; $6223: $22
    inc de                                        ; $6224: $13
    ld a, [de]                                    ; $6225: $1A
    ld [hl+], a                                   ; $6226: $22
    inc de                                        ; $6227: $13
    ld a, [de]                                    ; $6228: $1A
    ld [hl+], a                                   ; $6229: $22
    inc de                                        ; $622A: $13
    ld a, [de]                                    ; $622B: $1A
    ld [hl+], a                                   ; $622C: $22
    inc de                                        ; $622D: $13
    ld a, [de]                                    ; $622E: $1A
    ld [hl+], a                                   ; $622F: $22
    inc de                                        ; $6230: $13
    push hl                                       ; $6231: $E5
    pop bc                                        ; $6232: $C1
    pop hl                                        ; $6233: $E1
    jp Jump_02C_61FA                              ; $6234: $C3 $FA $61


Jump_02C_6237:
    ld hl, $D380                                  ; $6237: $21 $80 $D3
    ld de, $D400                                  ; $623A: $11 $00 $D4
    ld b, $80                                     ; $623D: $06 $80

jr_02C_623F:
    ld a, [hl+]                                   ; $623F: $2A
    ld [de], a                                    ; $6240: $12
    inc de                                        ; $6241: $13
    dec b                                         ; $6242: $05
    jr nz, jr_02C_623F                            ; $6243: $20 $FA

Jump_02C_6245:
    ret                                           ; $6245: $C9


    call nz, $D862                                ; $6246: $C4 $62 $D8
    ld h, d                                       ; $6249: $62
    call c, $E062                                 ; $624A: $DC $62 $E0
    ld h, d                                       ; $624D: $62
    ld hl, sp+$62                                 ; $624E: $F8 $62
    nop                                           ; $6250: $00
    nop                                           ; $6251: $00
    ld l, b                                       ; $6252: $68
    ld h, a                                       ; $6253: $67
    ld a, [hl]                                    ; $6254: $7E
    ld h, a                                       ; $6255: $67
    ld e, b                                       ; $6256: $58
    ld l, b                                       ; $6257: $68
    ld [hl], b                                    ; $6258: $70
    ld l, b                                       ; $6259: $68
    adc b                                         ; $625A: $88
    ld l, b                                       ; $625B: $68
    and b                                         ; $625C: $A0
    ld l, b                                       ; $625D: $68
    cp b                                          ; $625E: $B8
    ld l, b                                       ; $625F: $68
    ret nc                                        ; $6260: $D0

    ld l, b                                       ; $6261: $68
    add sp, $68                                   ; $6262: $E8 $68
    nop                                           ; $6264: $00
    ld l, c                                       ; $6265: $69
    jr jr_02C_62D1                                ; $6266: $18 $69

    jr nc, jr_02C_62D3                            ; $6268: $30 $69

    ld c, b                                       ; $626A: $48
    ld l, c                                       ; $626B: $69
    ld h, b                                       ; $626C: $60
    ld l, c                                       ; $626D: $69
    ld a, b                                       ; $626E: $78
    ld l, c                                       ; $626F: $69
    sub b                                         ; $6270: $90
    ld l, c                                       ; $6271: $69
    xor b                                         ; $6272: $A8
    ld l, c                                       ; $6273: $69
    ret nz                                        ; $6274: $C0

    ld l, c                                       ; $6275: $69
    ret c                                         ; $6276: $D8

    ld l, c                                       ; $6277: $69
    ldh a, [rBCPD]                                ; $6278: $F0 $69
    ld a, [bc]                                    ; $627A: $0A
    ld l, d                                       ; $627B: $6A
    inc h                                         ; $627C: $24
    ld l, d                                       ; $627D: $6A
    db $EC                                        ; $627E: $EC
    ld h, a                                       ; $627F: $67
    ld a, [bc]                                    ; $6280: $0A
    ld l, b                                       ; $6281: $68
    ld h, $68                                     ; $6282: $26 $68
    sub [hl]                                      ; $6284: $96
    ld h, a                                       ; $6285: $67
    xor h                                         ; $6286: $AC
    ld h, a                                       ; $6287: $67
    jp z, $4067                                   ; $6288: $CA $67 $40

    ld l, b                                       ; $628B: $68
    ldh [c], a                                    ; $628C: $E2
    ld h, [hl]                                    ; $628D: $66
    call z, $3866                                 ; $628E: $CC $66 $38
    ld h, e                                       ; $6291: $63
    ret nz                                        ; $6292: $C0

    ld h, e                                       ; $6293: $63
    ld e, d                                       ; $6294: $5A
    ld h, e                                       ; $6295: $63
    ldh [c], a                                    ; $6296: $E2
    ld h, e                                       ; $6297: $63
    ld a, h                                       ; $6298: $7C
    ld h, e                                       ; $6299: $63
    inc b                                         ; $629A: $04
    ld h, h                                       ; $629B: $64
    sbc [hl]                                      ; $629C: $9E
    ld h, e                                       ; $629D: $63
    ld h, $64                                     ; $629E: $26 $64
    ld c, b                                       ; $62A0: $48
    ld h, h                                       ; $62A1: $64
    ld l, d                                       ; $62A2: $6A
    ld h, h                                       ; $62A3: $64
    ld a, [$1066]                                 ; $62A4: $FA $66 $10
    ld h, a                                       ; $62A7: $67
    ld h, $67                                     ; $62A8: $26 $67
    inc a                                         ; $62AA: $3C
    ld h, a                                       ; $62AB: $67
    ld d, d                                       ; $62AC: $52
    ld h, a                                       ; $62AD: $67
    ld a, [de]                                    ; $62AE: $1A
    ld h, e                                       ; $62AF: $63
    jr c, jr_02C_6315                             ; $62B0: $38 $63

    ld e, d                                       ; $62B2: $5A
    ld h, e                                       ; $62B3: $63
    ld a, h                                       ; $62B4: $7C
    ld h, e                                       ; $62B5: $63
    sbc [hl]                                      ; $62B6: $9E
    ld h, e                                       ; $62B7: $63
    ret nz                                        ; $62B8: $C0

    ld h, e                                       ; $62B9: $63
    ldh [c], a                                    ; $62BA: $E2
    ld h, e                                       ; $62BB: $63
    inc b                                         ; $62BC: $04
    ld h, h                                       ; $62BD: $64
    ld h, $64                                     ; $62BE: $26 $64
    ld c, b                                       ; $62C0: $48
    ld h, h                                       ; $62C1: $64
    ld l, d                                       ; $62C2: $6A
    ld h, h                                       ; $62C3: $64
    inc l                                         ; $62C4: $2C
    ld h, l                                       ; $62C5: $65
    nop                                           ; $62C6: $00
    nop                                           ; $62C7: $00
    nop                                           ; $62C8: $00
    nop                                           ; $62C9: $00
    nop                                           ; $62CA: $00
    nop                                           ; $62CB: $00
    nop                                           ; $62CC: $00
    nop                                           ; $62CD: $00
    nop                                           ; $62CE: $00
    nop                                           ; $62CF: $00
    nop                                           ; $62D0: $00

jr_02C_62D1:
    nop                                           ; $62D1: $00
    nop                                           ; $62D2: $00

jr_02C_62D3:
    nop                                           ; $62D3: $00
    inc l                                         ; $62D4: $2C
    ld h, l                                       ; $62D5: $65
    rst RST_38                                    ; $62D6: $FF
    rst RST_38                                    ; $62D7: $FF
    ld h, h                                       ; $62D8: $64
    ld h, l                                       ; $62D9: $65
    rst RST_38                                    ; $62DA: $FF
    rst RST_38                                    ; $62DB: $FF
    ld e, h                                       ; $62DC: $5C
    ld h, l                                       ; $62DD: $65
    rst RST_38                                    ; $62DE: $FF
    rst RST_38                                    ; $62DF: $FF
    inc [hl]                                      ; $62E0: $34
    ld h, l                                       ; $62E1: $65
    inc a                                         ; $62E2: $3C
    ld h, l                                       ; $62E3: $65
    ld b, h                                       ; $62E4: $44
    ld h, l                                       ; $62E5: $65
    ld c, h                                       ; $62E6: $4C
    ld h, l                                       ; $62E7: $65
    nop                                           ; $62E8: $00

jr_02C_62E9:
    nop                                           ; $62E9: $00
    nop                                           ; $62EA: $00
    nop                                           ; $62EB: $00
    nop                                           ; $62EC: $00

jr_02C_62ED:
    nop                                           ; $62ED: $00
    nop                                           ; $62EE: $00
    nop                                           ; $62EF: $00
    inc l                                         ; $62F0: $2C
    ld h, l                                       ; $62F1: $65
    inc l                                         ; $62F2: $2C
    ld h, l                                       ; $62F3: $65
    ld d, h                                       ; $62F4: $54
    ld h, l                                       ; $62F5: $65
    rst RST_38                                    ; $62F6: $FF
    rst RST_38                                    ; $62F7: $FF
    db $EC                                        ; $62F8: $EC
    ld h, h                                       ; $62F9: $64
    adc b                                         ; $62FA: $88
    ld l, h                                       ; $62FB: $6C
    sub b                                         ; $62FC: $90
    ld l, h                                       ; $62FD: $6C
    sbc b                                         ; $62FE: $98
    ld l, h                                       ; $62FF: $6C
    and b                                         ; $6300: $A0
    ld l, h                                       ; $6301: $6C
    xor b                                         ; $6302: $A8
    ld l, h                                       ; $6303: $6C
    db $FC                                        ; $6304: $FC
    ld h, h                                       ; $6305: $64
    inc b                                         ; $6306: $04
    ld h, l                                       ; $6307: $65
    adc h                                         ; $6308: $8C
    ld h, h                                       ; $6309: $64
    sub h                                         ; $630A: $94

jr_02C_630B:
    ld h, h                                       ; $630B: $64
    call z, $D464                                 ; $630C: $CC $64 $D4
    ld h, h                                       ; $630F: $64
    call c, $E464                                 ; $6310: $DC $64 $E4
    ld h, h                                       ; $6313: $64
    db $EC                                        ; $6314: $EC

jr_02C_6315:
    ld h, h                                       ; $6315: $64
    db $F4                                        ; $6316: $F4
    ld h, h                                       ; $6317: $64
    rst RST_38                                    ; $6318: $FF
    rst RST_38                                    ; $6319: $FF
    inc l                                         ; $631A: $2C
    ld h, l                                       ; $631B: $65
    nop                                           ; $631C: $00
    nop                                           ; $631D: $00
    nop                                           ; $631E: $00
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
    adc h                                         ; $632A: $8C
    ld h, h                                       ; $632B: $64
    inc l                                         ; $632C: $2C

jr_02C_632D:
    ld h, l                                       ; $632D: $65
    inc c                                         ; $632E: $0C

jr_02C_632F:
    ld h, l                                       ; $632F: $65
    inc d                                         ; $6330: $14
    ld h, l                                       ; $6331: $65
    inc e                                         ; $6332: $1C
    ld h, l                                       ; $6333: $65
    inc h                                         ; $6334: $24
    ld h, l                                       ; $6335: $65
    rst RST_38                                    ; $6336: $FF
    rst RST_38                                    ; $6337: $FF
    ld l, h                                       ; $6338: $6C
    ld h, l                                       ; $6339: $65
    ld [hl], h                                    ; $633A: $74
    ld h, l                                       ; $633B: $65
    ld a, h                                       ; $633C: $7C
    ld h, l                                       ; $633D: $65
    add h                                         ; $633E: $84
    ld h, l                                       ; $633F: $65
    adc h                                         ; $6340: $8C
    ld h, l                                       ; $6341: $65
    sub h                                         ; $6342: $94
    ld h, l                                       ; $6343: $65
    sbc h                                         ; $6344: $9C
    ld h, l                                       ; $6345: $65
    and h                                         ; $6346: $A4
    ld h, l                                       ; $6347: $65
    and d                                         ; $6348: $A2
    jr nz, jr_02C_62ED                            ; $6349: $20 $A2

    jr nz, jr_02C_62E9                            ; $634B: $20 $9C

    ld h, h                                       ; $634D: $64
    and h                                         ; $634E: $A4
    ld h, h                                       ; $634F: $64
    xor h                                         ; $6350: $AC
    ld h, h                                       ; $6351: $64
    or h                                          ; $6352: $B4
    ld h, h                                       ; $6353: $64
    cp h                                          ; $6354: $BC
    ld h, h                                       ; $6355: $64
    call nz, $FF64                                ; $6356: $C4 $64 $FF
    rst RST_38                                    ; $6359: $FF
    ld l, h                                       ; $635A: $6C
    ld h, l                                       ; $635B: $65
    ld [hl], h                                    ; $635C: $74
    ld h, l                                       ; $635D: $65
    ld a, h                                       ; $635E: $7C
    ld h, l                                       ; $635F: $65
    add h                                         ; $6360: $84
    ld h, l                                       ; $6361: $65
    xor h                                         ; $6362: $AC
    ld h, l                                       ; $6363: $65
    or h                                          ; $6364: $B4
    ld h, l                                       ; $6365: $65
    cp h                                          ; $6366: $BC
    ld h, l                                       ; $6367: $65
    call nz, $C265                                ; $6368: $C4 $65 $C2
    jr nz, jr_02C_632F                            ; $636B: $20 $C2

    jr nz, jr_02C_630B                            ; $636D: $20 $9C

    ld h, h                                       ; $636F: $64
    and h                                         ; $6370: $A4

jr_02C_6371:
    ld h, h                                       ; $6371: $64
    xor h                                         ; $6372: $AC
    ld h, h                                       ; $6373: $64
    or h                                          ; $6374: $B4
    ld h, h                                       ; $6375: $64
    cp h                                          ; $6376: $BC
    ld h, h                                       ; $6377: $64
    call nz, $FF64                                ; $6378: $C4 $64 $FF
    rst RST_38                                    ; $637B: $FF
    ld l, h                                       ; $637C: $6C
    ld h, l                                       ; $637D: $65
    ld [hl], h                                    ; $637E: $74
    ld h, l                                       ; $637F: $65
    ld a, h                                       ; $6380: $7C
    ld h, l                                       ; $6381: $65
    add h                                         ; $6382: $84
    ld h, l                                       ; $6383: $65
    call z, $D465                                 ; $6384: $CC $65 $D4
    ld h, l                                       ; $6387: $65
    call c, $E465                                 ; $6388: $DC $65 $E4
    ld h, l                                       ; $638B: $65
    ldh [c], a                                    ; $638C: $E2
    jr nz, jr_02C_6371                            ; $638D: $20 $E2

    jr nz, jr_02C_632D                            ; $638F: $20 $9C

    ld h, h                                       ; $6391: $64
    and h                                         ; $6392: $A4

jr_02C_6393:
    ld h, h                                       ; $6393: $64
    xor h                                         ; $6394: $AC
    ld h, h                                       ; $6395: $64
    or h                                          ; $6396: $B4
    ld h, h                                       ; $6397: $64
    cp h                                          ; $6398: $BC
    ld h, h                                       ; $6399: $64
    call nz, $FF64                                ; $639A: $C4 $64 $FF
    rst RST_38                                    ; $639D: $FF
    ld l, h                                       ; $639E: $6C
    ld h, l                                       ; $639F: $65
    ld [hl], h                                    ; $63A0: $74
    ld h, l                                       ; $63A1: $65
    ld a, h                                       ; $63A2: $7C
    ld h, l                                       ; $63A3: $65
    add h                                         ; $63A4: $84
    ld h, l                                       ; $63A5: $65
    db $EC                                        ; $63A6: $EC
    ld h, l                                       ; $63A7: $65
    db $F4                                        ; $63A8: $F4
    ld h, l                                       ; $63A9: $65
    db $FC                                        ; $63AA: $FC
    ld h, l                                       ; $63AB: $65
    inc b                                         ; $63AC: $04
    ld h, [hl]                                    ; $63AD: $66
    ld [bc], a                                    ; $63AE: $02
    ld hl, $2102                                  ; $63AF: $21 $02 $21
    sbc h                                         ; $63B2: $9C
    ld h, h                                       ; $63B3: $64
    and h                                         ; $63B4: $A4

jr_02C_63B5:
    ld h, h                                       ; $63B5: $64
    xor h                                         ; $63B6: $AC
    ld h, h                                       ; $63B7: $64
    or h                                          ; $63B8: $B4
    ld h, h                                       ; $63B9: $64
    cp h                                          ; $63BA: $BC
    ld h, h                                       ; $63BB: $64
    call nz, $FF64                                ; $63BC: $C4 $64 $FF
    rst RST_38                                    ; $63BF: $FF
    ld l, h                                       ; $63C0: $6C
    ld h, l                                       ; $63C1: $65
    ld [hl], h                                    ; $63C2: $74
    ld h, l                                       ; $63C3: $65
    ld a, h                                       ; $63C4: $7C
    ld h, l                                       ; $63C5: $65
    add h                                         ; $63C6: $84
    ld h, l                                       ; $63C7: $65
    inc c                                         ; $63C8: $0C
    ld h, [hl]                                    ; $63C9: $66
    inc d                                         ; $63CA: $14
    ld h, [hl]                                    ; $63CB: $66
    inc e                                         ; $63CC: $1C
    ld h, [hl]                                    ; $63CD: $66
    inc h                                         ; $63CE: $24
    ld h, [hl]                                    ; $63CF: $66
    or d                                          ; $63D0: $B2
    jr nz, @-$4C                                  ; $63D1: $20 $B2

    jr nz, jr_02C_6371                            ; $63D3: $20 $9C

    ld h, h                                       ; $63D5: $64
    and h                                         ; $63D6: $A4
    ld h, h                                       ; $63D7: $64
    xor h                                         ; $63D8: $AC
    ld h, h                                       ; $63D9: $64
    or h                                          ; $63DA: $B4
    ld h, h                                       ; $63DB: $64
    cp h                                          ; $63DC: $BC
    ld h, h                                       ; $63DD: $64
    call nz, $FF64                                ; $63DE: $C4 $64 $FF
    rst RST_38                                    ; $63E1: $FF
    ld l, h                                       ; $63E2: $6C
    ld h, l                                       ; $63E3: $65
    ld [hl], h                                    ; $63E4: $74
    ld h, l                                       ; $63E5: $65
    ld a, h                                       ; $63E6: $7C
    ld h, l                                       ; $63E7: $65
    add h                                         ; $63E8: $84
    ld h, l                                       ; $63E9: $65
    inc l                                         ; $63EA: $2C
    ld h, [hl]                                    ; $63EB: $66
    inc [hl]                                      ; $63EC: $34
    ld h, [hl]                                    ; $63ED: $66
    inc a                                         ; $63EE: $3C
    ld h, [hl]                                    ; $63EF: $66
    ld b, h                                       ; $63F0: $44
    ld h, [hl]                                    ; $63F1: $66
    jp nc, $D220                                  ; $63F2: $D2 $20 $D2

    jr nz, jr_02C_6393                            ; $63F5: $20 $9C

    ld h, h                                       ; $63F7: $64
    and h                                         ; $63F8: $A4
    ld h, h                                       ; $63F9: $64
    xor h                                         ; $63FA: $AC
    ld h, h                                       ; $63FB: $64
    or h                                          ; $63FC: $B4
    ld h, h                                       ; $63FD: $64
    cp h                                          ; $63FE: $BC
    ld h, h                                       ; $63FF: $64
    call nz, $FF64                                ; $6400: $C4 $64 $FF
    rst RST_38                                    ; $6403: $FF
    ld l, h                                       ; $6404: $6C
    ld h, l                                       ; $6405: $65
    ld [hl], h                                    ; $6406: $74
    ld h, l                                       ; $6407: $65
    ld a, h                                       ; $6408: $7C

jr_02C_6409:
    ld h, l                                       ; $6409: $65
    add h                                         ; $640A: $84
    ld h, l                                       ; $640B: $65
    ld c, h                                       ; $640C: $4C
    ld h, [hl]                                    ; $640D: $66
    ld d, h                                       ; $640E: $54
    ld h, [hl]                                    ; $640F: $66
    ld e, h                                       ; $6410: $5C
    ld h, [hl]                                    ; $6411: $66
    ld h, h                                       ; $6412: $64
    ld h, [hl]                                    ; $6413: $66
    ldh a, [c]                                    ; $6414: $F2
    jr nz, jr_02C_6409                            ; $6415: $20 $F2

    jr nz, jr_02C_63B5                            ; $6417: $20 $9C

    ld h, h                                       ; $6419: $64
    and h                                         ; $641A: $A4
    ld h, h                                       ; $641B: $64
    xor h                                         ; $641C: $AC
    ld h, h                                       ; $641D: $64
    or h                                          ; $641E: $B4
    ld h, h                                       ; $641F: $64
    cp h                                          ; $6420: $BC
    ld h, h                                       ; $6421: $64
    call nz, $FF64                                ; $6422: $C4 $64 $FF
    rst RST_38                                    ; $6425: $FF
    ld l, h                                       ; $6426: $6C
    ld h, l                                       ; $6427: $65
    ld [hl], h                                    ; $6428: $74
    ld h, l                                       ; $6429: $65
    ld a, h                                       ; $642A: $7C
    ld h, l                                       ; $642B: $65
    add h                                         ; $642C: $84
    ld h, l                                       ; $642D: $65
    ld l, h                                       ; $642E: $6C
    ld h, [hl]                                    ; $642F: $66
    ld [hl], h                                    ; $6430: $74
    ld h, [hl]                                    ; $6431: $66
    ld a, h                                       ; $6432: $7C
    ld h, [hl]                                    ; $6433: $66
    add h                                         ; $6434: $84
    ld h, [hl]                                    ; $6435: $66
    ld [de], a                                    ; $6436: $12
    ld hl, $2112                                  ; $6437: $21 $12 $21
    sbc h                                         ; $643A: $9C
    ld h, h                                       ; $643B: $64
    and h                                         ; $643C: $A4
    ld h, h                                       ; $643D: $64
    xor h                                         ; $643E: $AC
    ld h, h                                       ; $643F: $64
    or h                                          ; $6440: $B4
    ld h, h                                       ; $6441: $64
    cp h                                          ; $6442: $BC
    ld h, h                                       ; $6443: $64
    call nz, $FF64                                ; $6444: $C4 $64 $FF
    rst RST_38                                    ; $6447: $FF
    ld l, h                                       ; $6448: $6C
    ld h, l                                       ; $6449: $65
    ld [hl], h                                    ; $644A: $74
    ld h, l                                       ; $644B: $65
    ld a, h                                       ; $644C: $7C
    ld h, l                                       ; $644D: $65
    add h                                         ; $644E: $84
    ld h, l                                       ; $644F: $65
    adc h                                         ; $6450: $8C
    ld h, [hl]                                    ; $6451: $66
    sub h                                         ; $6452: $94
    ld h, [hl]                                    ; $6453: $66
    sbc h                                         ; $6454: $9C
    ld h, [hl]                                    ; $6455: $66
    and h                                         ; $6456: $A4
    ld h, [hl]                                    ; $6457: $66
    ld [hl+], a                                   ; $6458: $22
    ld hl, $2122                                  ; $6459: $21 $22 $21
    sbc h                                         ; $645C: $9C
    ld h, h                                       ; $645D: $64
    and h                                         ; $645E: $A4
    ld h, h                                       ; $645F: $64
    xor h                                         ; $6460: $AC
    ld h, h                                       ; $6461: $64
    or h                                          ; $6462: $B4
    ld h, h                                       ; $6463: $64
    cp h                                          ; $6464: $BC
    ld h, h                                       ; $6465: $64
    call nz, $FF64                                ; $6466: $C4 $64 $FF
    rst RST_38                                    ; $6469: $FF
    ld l, h                                       ; $646A: $6C
    ld h, l                                       ; $646B: $65
    ld [hl], h                                    ; $646C: $74
    ld h, l                                       ; $646D: $65
    ld a, h                                       ; $646E: $7C
    ld h, l                                       ; $646F: $65
    add h                                         ; $6470: $84
    ld h, l                                       ; $6471: $65
    xor h                                         ; $6472: $AC
    ld h, [hl]                                    ; $6473: $66
    or h                                          ; $6474: $B4
    ld h, [hl]                                    ; $6475: $66
    cp h                                          ; $6476: $BC
    ld h, [hl]                                    ; $6477: $66
    call nz, Call_000_3266                        ; $6478: $C4 $66 $32
    ld hl, $2132                                  ; $647B: $21 $32 $21
    sbc h                                         ; $647E: $9C
    ld h, h                                       ; $647F: $64
    and h                                         ; $6480: $A4
    ld h, h                                       ; $6481: $64
    xor h                                         ; $6482: $AC
    ld h, h                                       ; $6483: $64
    or h                                          ; $6484: $B4
    ld h, h                                       ; $6485: $64
    cp h                                          ; $6486: $BC
    ld h, h                                       ; $6487: $64
    call nz, $FF64                                ; $6488: $C4 $64 $FF
    rst RST_38                                    ; $648B: $FF
    nop                                           ; $648C: $00
    nop                                           ; $648D: $00
    nop                                           ; $648E: $00
    nop                                           ; $648F: $00
    rst RST_38                                    ; $6490: $FF
    ld a, a                                       ; $6491: $7F
    rra                                           ; $6492: $1F
    nop                                           ; $6493: $00
    nop                                           ; $6494: $00
    nop                                           ; $6495: $00
    nop                                           ; $6496: $00
    nop                                           ; $6497: $00
    rst RST_38                                    ; $6498: $FF
    ld a, a                                       ; $6499: $7F
    nop                                           ; $649A: $00
    ld a, h                                       ; $649B: $7C
    nop                                           ; $649C: $00
    nop                                           ; $649D: $00
    nop                                           ; $649E: $00
    nop                                           ; $649F: $00
    rst RST_38                                    ; $64A0: $FF
    ld a, a                                       ; $64A1: $7F
    nop                                           ; $64A2: $00
    nop                                           ; $64A3: $00
    nop                                           ; $64A4: $00
    nop                                           ; $64A5: $00
    rst RST_38                                    ; $64A6: $FF
    ld a, a                                       ; $64A7: $7F
    rst RST_38                                    ; $64A8: $FF
    ld a, a                                       ; $64A9: $7F
    rst RST_38                                    ; $64AA: $FF
    inc bc                                        ; $64AB: $03
    nop                                           ; $64AC: $00
    nop                                           ; $64AD: $00
    rst RST_38                                    ; $64AE: $FF
    ld a, a                                       ; $64AF: $7F
    rra                                           ; $64B0: $1F
    nop                                           ; $64B1: $00
    rst RST_38                                    ; $64B2: $FF
    ld a, a                                       ; $64B3: $7F
    nop                                           ; $64B4: $00
    nop                                           ; $64B5: $00
    rra                                           ; $64B6: $1F
    nop                                           ; $64B7: $00
    nop                                           ; $64B8: $00
    nop                                           ; $64B9: $00
    nop                                           ; $64BA: $00
    nop                                           ; $64BB: $00
    nop                                           ; $64BC: $00
    nop                                           ; $64BD: $00
    nop                                           ; $64BE: $00
    nop                                           ; $64BF: $00
    rra                                           ; $64C0: $1F
    nop                                           ; $64C1: $00
    rra                                           ; $64C2: $1F
    nop                                           ; $64C3: $00
    nop                                           ; $64C4: $00
    nop                                           ; $64C5: $00
    nop                                           ; $64C6: $00
    nop                                           ; $64C7: $00
    rst RST_38                                    ; $64C8: $FF
    ld a, a                                       ; $64C9: $7F
    ldh [$FF03], a                                ; $64CA: $E0 $03
    nop                                           ; $64CC: $00
    nop                                           ; $64CD: $00
    nop                                           ; $64CE: $00
    nop                                           ; $64CF: $00
    nop                                           ; $64D0: $00
    nop                                           ; $64D1: $00
    rst RST_38                                    ; $64D2: $FF
    ld a, a                                       ; $64D3: $7F
    nop                                           ; $64D4: $00
    nop                                           ; $64D5: $00
    rst RST_38                                    ; $64D6: $FF
    inc bc                                        ; $64D7: $03
    nop                                           ; $64D8: $00
    nop                                           ; $64D9: $00
    rst RST_38                                    ; $64DA: $FF
    ld a, a                                       ; $64DB: $7F
    nop                                           ; $64DC: $00
    nop                                           ; $64DD: $00
    rst RST_38                                    ; $64DE: $FF
    ld a, a                                       ; $64DF: $7F
    rst RST_38                                    ; $64E0: $FF
    inc bc                                        ; $64E1: $03
    nop                                           ; $64E2: $00
    nop                                           ; $64E3: $00
    nop                                           ; $64E4: $00
    nop                                           ; $64E5: $00
    rst RST_38                                    ; $64E6: $FF
    inc bc                                        ; $64E7: $03
    rst RST_38                                    ; $64E8: $FF
    inc bc                                        ; $64E9: $03
    nop                                           ; $64EA: $00
    nop                                           ; $64EB: $00
    nop                                           ; $64EC: $00
    nop                                           ; $64ED: $00
    adc $39                                       ; $64EE: $CE $39
    jr jr_02C_6555                                ; $64F0: $18 $63

    rst RST_38                                    ; $64F2: $FF
    ld a, a                                       ; $64F3: $7F
    nop                                           ; $64F4: $00
    nop                                           ; $64F5: $00
    nop                                           ; $64F6: $00
    nop                                           ; $64F7: $00
    nop                                           ; $64F8: $00
    nop                                           ; $64F9: $00
    rra                                           ; $64FA: $1F
    nop                                           ; $64FB: $00
    nop                                           ; $64FC: $00
    nop                                           ; $64FD: $00
    rra                                           ; $64FE: $1F
    nop                                           ; $64FF: $00
    inc e                                         ; $6500: $1C
    ld [bc], a                                    ; $6501: $02
    rst RST_38                                    ; $6502: $FF
    ld a, a                                       ; $6503: $7F
    nop                                           ; $6504: $00
    nop                                           ; $6505: $00
    ld c, d                                       ; $6506: $4A
    ld a, l                                       ; $6507: $7D
    rst RST_20                                    ; $6508: $E7
    ld a, [hl]                                    ; $6509: $7E
    rst RST_38                                    ; $650A: $FF
    ld a, a                                       ; $650B: $7F
    nop                                           ; $650C: $00
    nop                                           ; $650D: $00
    sbc h                                         ; $650E: $9C
    db $10                                        ; $650F: $10
    inc e                                         ; $6510: $1C
    ld [bc], a                                    ; $6511: $02
    rst RST_38                                    ; $6512: $FF
    ld a, a                                       ; $6513: $7F
    sbc h                                         ; $6514: $9C
    db $10                                        ; $6515: $10
    inc e                                         ; $6516: $1C
    ld [bc], a                                    ; $6517: $02
    rst RST_38                                    ; $6518: $FF
    ld a, a                                       ; $6519: $7F
    nop                                           ; $651A: $00
    nop                                           ; $651B: $00
    inc e                                         ; $651C: $1C
    ld [bc], a                                    ; $651D: $02
    rst RST_38                                    ; $651E: $FF
    ld a, a                                       ; $651F: $7F
    nop                                           ; $6520: $00
    nop                                           ; $6521: $00
    sbc h                                         ; $6522: $9C
    db $10                                        ; $6523: $10
    rst RST_38                                    ; $6524: $FF
    ld a, a                                       ; $6525: $7F
    nop                                           ; $6526: $00
    nop                                           ; $6527: $00
    sbc h                                         ; $6528: $9C
    db $10                                        ; $6529: $10
    inc e                                         ; $652A: $1C
    ld [bc], a                                    ; $652B: $02
    nop                                           ; $652C: $00
    nop                                           ; $652D: $00
    sbc h                                         ; $652E: $9C
    db $10                                        ; $652F: $10
    inc e                                         ; $6530: $1C
    ld [bc], a                                    ; $6531: $02
    rst RST_38                                    ; $6532: $FF
    ld a, a                                       ; $6533: $7F
    nop                                           ; $6534: $00
    nop                                           ; $6535: $00
    or a                                          ; $6536: $B7
    dec b                                         ; $6537: $05
    cp a                                          ; $6538: $BF
    ld [bc], a                                    ; $6539: $02
    rst RST_38                                    ; $653A: $FF
    ld a, a                                       ; $653B: $7F
    nop                                           ; $653C: $00
    nop                                           ; $653D: $00
    or a                                          ; $653E: $B7
    dec b                                         ; $653F: $05
    cp a                                          ; $6540: $BF
    ld [bc], a                                    ; $6541: $02
    rst RST_38                                    ; $6542: $FF
    inc bc                                        ; $6543: $03
    nop                                           ; $6544: $00
    nop                                           ; $6545: $00
    rra                                           ; $6546: $1F
    nop                                           ; $6547: $00
    or l                                          ; $6548: $B5
    ld d, [hl]                                    ; $6549: $56
    rst RST_38                                    ; $654A: $FF
    ld a, a                                       ; $654B: $7F
    nop                                           ; $654C: $00
    nop                                           ; $654D: $00
    nop                                           ; $654E: $00
    nop                                           ; $654F: $00
    nop                                           ; $6550: $00
    nop                                           ; $6551: $00
    rst RST_38                                    ; $6552: $FF
    ld a, a                                       ; $6553: $7F
    nop                                           ; $6554: $00

jr_02C_6555:
    nop                                           ; $6555: $00
    nop                                           ; $6556: $00
    nop                                           ; $6557: $00
    rst RST_38                                    ; $6558: $FF
    ld a, a                                       ; $6559: $7F
    cp a                                          ; $655A: $BF
    ld [bc], a                                    ; $655B: $02
    nop                                           ; $655C: $00
    nop                                           ; $655D: $00
    sbc h                                         ; $655E: $9C
    nop                                           ; $655F: $00
    inc d                                         ; $6560: $14
    nop                                           ; $6561: $00
    inc c                                         ; $6562: $0C
    nop                                           ; $6563: $00
    sbc h                                         ; $6564: $9C
    ld [hl], e                                    ; $6565: $73
    inc e                                         ; $6566: $1C
    ld bc, $7380                                  ; $6567: $01 $80 $73
    nop                                           ; $656A: $00
    nop                                           ; $656B: $00
    nop                                           ; $656C: $00
    nop                                           ; $656D: $00
    sbc h                                         ; $656E: $9C
    db $10                                        ; $656F: $10
    rst RST_38                                    ; $6570: $FF
    ld [bc], a                                    ; $6571: $02
    sbc [hl]                                      ; $6572: $9E
    ld l, e                                       ; $6573: $6B
    nop                                           ; $6574: $00
    nop                                           ; $6575: $00
    rra                                           ; $6576: $1F
    nop                                           ; $6577: $00
    rst RST_38                                    ; $6578: $FF
    inc bc                                        ; $6579: $03
    ldh [$FF03], a                                ; $657A: $E0 $03
    nop                                           ; $657C: $00
    nop                                           ; $657D: $00
    adc $39                                       ; $657E: $CE $39
    rra                                           ; $6580: $1F
    nop                                           ; $6581: $00
    rst RST_38                                    ; $6582: $FF
    ld a, a                                       ; $6583: $7F
    nop                                           ; $6584: $00
    nop                                           ; $6585: $00
    nop                                           ; $6586: $00
    ld a, h                                       ; $6587: $7C
    rra                                           ; $6588: $1F
    nop                                           ; $6589: $00
    nop                                           ; $658A: $00
    nop                                           ; $658B: $00
    nop                                           ; $658C: $00
    nop                                           ; $658D: $00
    ld a, [hl+]                                   ; $658E: $2A
    ld c, h                                       ; $658F: $4C
    ld d, d                                       ; $6590: $52
    ld c, d                                       ; $6591: $4A
    sbc h                                         ; $6592: $9C
    ld [hl], e                                    ; $6593: $73
    nop                                           ; $6594: $00
    nop                                           ; $6595: $00
    ld c, d                                       ; $6596: $4A
    add hl, hl                                    ; $6597: $29
    ld d, d                                       ; $6598: $52
    ld c, d                                       ; $6599: $4A
    sbc h                                         ; $659A: $9C
    ld [hl], e                                    ; $659B: $73
    nop                                           ; $659C: $00
    nop                                           ; $659D: $00
    sub h                                         ; $659E: $94
    add hl, de                                    ; $659F: $19
    jr jr_02C_65CC                                ; $65A0: $18 $2A

    sbc h                                         ; $65A2: $9C
    ld a, [hl-]                                   ; $65A3: $3A
    nop                                           ; $65A4: $00
    nop                                           ; $65A5: $00
    ld a, [hl+]                                   ; $65A6: $2A
    ld c, h                                       ; $65A7: $4C
    adc [hl]                                      ; $65A8: $8E
    ld e, b                                       ; $65A9: $58
    sbc h                                         ; $65AA: $9C
    ld [hl], e                                    ; $65AB: $73
    nop                                           ; $65AC: $00
    nop                                           ; $65AD: $00
    ld hl, $355C                                  ; $65AE: $21 $5C $35
    ld a, a                                       ; $65B1: $7F
    sbc h                                         ; $65B2: $9C
    ld [hl], e                                    ; $65B3: $73
    nop                                           ; $65B4: $00
    nop                                           ; $65B5: $00
    rst RST_00                                    ; $65B6: $C7
    ld l, l                                       ; $65B7: $6D
    or c                                          ; $65B8: $B1
    ld a, d                                       ; $65B9: $7A
    ld d, [hl]                                    ; $65BA: $56
    ld a, e                                       ; $65BB: $7B
    nop                                           ; $65BC: $00
    nop                                           ; $65BD: $00
    ld a, b                                       ; $65BE: $78
    ld a, e                                       ; $65BF: $7B
    jr jr_02C_65EC                                ; $65C0: $18 $2A

    sbc h                                         ; $65C2: $9C
    ld a, [hl-]                                   ; $65C3: $3A
    nop                                           ; $65C4: $00
    nop                                           ; $65C5: $00
    ld hl, $6B5C                                  ; $65C6: $21 $5C $6B
    ld l, l                                       ; $65C9: $6D
    sbc h                                         ; $65CA: $9C
    ld a, a                                       ; $65CB: $7F

jr_02C_65CC:
    nop                                           ; $65CC: $00
    nop                                           ; $65CD: $00
    ld [de], a                                    ; $65CE: $12
    ld l, a                                       ; $65CF: $6F
    ld l, [hl]                                    ; $65D0: $6E
    ld l, [hl]                                    ; $65D1: $6E
    ld a, e                                       ; $65D2: $7B
    ld l, a                                       ; $65D3: $6F
    nop                                           ; $65D4: $00
    nop                                           ; $65D5: $00
    inc bc                                        ; $65D6: $03
    ld a, [de]                                    ; $65D7: $1A
    ld l, [hl]                                    ; $65D8: $6E
    ld l, [hl]                                    ; $65D9: $6E
    call z, Call_000_002E                         ; $65DA: $CC $2E $00
    nop                                           ; $65DD: $00
    sub $21                                       ; $65DE: $D6 $21
    add hl, sp                                    ; $65E0: $39
    ld l, $9C                                     ; $65E1: $2E $9C
    ld a, [hl-]                                   ; $65E3: $3A
    nop                                           ; $65E4: $00
    nop                                           ; $65E5: $00
    jp z, $3900                                   ; $65E6: $CA $00 $39

    ld l, $9C                                     ; $65E9: $2E $9C
    ld a, [hl-]                                   ; $65EB: $3A

jr_02C_65EC:
    nop                                           ; $65EC: $00
    nop                                           ; $65ED: $00
    add hl, hl                                    ; $65EE: $29
    add hl, bc                                    ; $65EF: $09
    sub c                                         ; $65F0: $91
    dec d                                         ; $65F1: $15
    dec a                                         ; $65F2: $3D
    ld b, d                                       ; $65F3: $42
    nop                                           ; $65F4: $00
    nop                                           ; $65F5: $00
    add hl, hl                                    ; $65F6: $29
    add hl, bc                                    ; $65F7: $09
    inc d                                         ; $65F8: $14
    ld h, $3D                                     ; $65F9: $26 $3D
    ld b, d                                       ; $65FB: $42

jr_02C_65FC:
    nop                                           ; $65FC: $00
    nop                                           ; $65FD: $00
    cpl                                           ; $65FE: $2F
    ld bc, $11D6                                  ; $65FF: $01 $D6 $11
    ld e, d                                       ; $6602: $5A
    ld [hl+], a                                   ; $6603: $22
    nop                                           ; $6604: $00
    nop                                           ; $6605: $00
    ld d, [hl]                                    ; $6606: $56
    ld bc, $11DB                                  ; $6607: $01 $DB $11
    dec a                                         ; $660A: $3D
    ld b, d                                       ; $660B: $42
    nop                                           ; $660C: $00
    nop                                           ; $660D: $00

jr_02C_660E:
    add h                                         ; $660E: $84
    inc h                                         ; $660F: $24
    ld l, $18                                     ; $6610: $2E $18
    ld c, h                                       ; $6612: $4C
    ld b, l                                       ; $6613: $45
    nop                                           ; $6614: $00
    nop                                           ; $6615: $00
    ld c, d                                       ; $6616: $4A
    jr nz, jr_02C_6647                            ; $6617: $20 $2E

    jr jr_02C_664C                                ; $6619: $18 $31

    dec a                                         ; $661B: $3D
    nop                                           ; $661C: $00
    nop                                           ; $661D: $00
    jp hl                                         ; $661E: $E9


    jr c, jr_02C_664F                             ; $661F: $38 $2E

    jr @+$4E                                      ; $6621: $18 $4C

    ld b, l                                       ; $6623: $45
    nop                                           ; $6624: $00
    nop                                           ; $6625: $00
    add h                                         ; $6626: $84
    inc h                                         ; $6627: $24
    ld l, $18                                     ; $6628: $2E $18
    cp l                                          ; $662A: $BD
    ld [hl], a                                    ; $662B: $77
    nop                                           ; $662C: $00
    nop                                           ; $662D: $00
    nop                                           ; $662E: $00
    nop                                           ; $662F: $00
    adc b                                         ; $6630: $88
    jr c, jr_02C_65EC                             ; $6631: $38 $B9

    ld sp, $0000                                  ; $6633: $31 $00 $00
    ld l, $51                                     ; $6636: $2E $51
    adc b                                         ; $6638: $88
    jr c, jr_02C_660E                             ; $6639: $38 $D3

    ld h, l                                       ; $663B: $65
    nop                                           ; $663C: $00
    nop                                           ; $663D: $00
    inc [hl]                                      ; $663E: $34
    dec e                                         ; $663F: $1D
    adc b                                         ; $6640: $88
    jr c, jr_02C_65FC                             ; $6641: $38 $B9

    ld sp, $0000                                  ; $6643: $31 $00 $00
    nop                                           ; $6646: $00

jr_02C_6647:
    nop                                           ; $6647: $00
    adc b                                         ; $6648: $88
    jr c, @-$49                                   ; $6649: $38 $B5

    ld d, [hl]                                    ; $664B: $56

jr_02C_664C:
    nop                                           ; $664C: $00
    nop                                           ; $664D: $00
    nop                                           ; $664E: $00

jr_02C_664F:
    inc h                                         ; $664F: $24
    dec [hl]                                      ; $6650: $35
    ld [de], a                                    ; $6651: $12
    rst RST_38                                    ; $6652: $FF
    ld h, e                                       ; $6653: $63
    nop                                           ; $6654: $00
    nop                                           ; $6655: $00
    nop                                           ; $6656: $00
    inc h                                         ; $6657: $24
    adc h                                         ; $6658: $8C
    ld e, b                                       ; $6659: $58
    jr jr_02C_66DA                                ; $665A: $18 $7E

    nop                                           ; $665C: $00
    nop                                           ; $665D: $00
    nop                                           ; $665E: $00
    inc h                                         ; $665F: $24
    ld l, c                                       ; $6660: $69
    ld c, b                                       ; $6661: $48
    ld de, $0069                                  ; $6662: $11 $69 $00
    nop                                           ; $6665: $00
    or c                                          ; $6666: $B1
    ld bc, $09F3                                  ; $6667: $01 $F3 $09
    dec [hl]                                      ; $666A: $35
    ld [de], a                                    ; $666B: $12
    nop                                           ; $666C: $00
    nop                                           ; $666D: $00
    ld sp, $F766                                  ; $666E: $31 $66 $F7
    ld a, [hl]                                    ; $6671: $7E
    rst RST_38                                    ; $6672: $FF
    ld a, a                                       ; $6673: $7F
    nop                                           ; $6674: $00
    nop                                           ; $6675: $00
    ld b, $00                                     ; $6676: $06 $00
    ld sp, $1C65                                  ; $6678: $31 $65 $1C
    ld [hl], a                                    ; $667B: $77
    nop                                           ; $667C: $00
    nop                                           ; $667D: $00
    ld b, $00                                     ; $667E: $06 $00
    sub h                                         ; $6680: $94
    dec e                                         ; $6681: $1D
    add hl, sp                                    ; $6682: $39
    ld [hl-], a                                   ; $6683: $32
    nop                                           ; $6684: $00
    nop                                           ; $6685: $00
    ld b, $00                                     ; $6686: $06 $00
    adc h                                         ; $6688: $8C
    nop                                           ; $6689: $00
    ld sp, $0011                                  ; $668A: $31 $11 $00
    nop                                           ; $668D: $00
    call nc, $BF0D                                ; $668E: $D4 $0D $BF
    ld h, $FF                                     ; $6691: $26 $FF
    ld a, a                                       ; $6693: $7F
    nop                                           ; $6694: $00
    nop                                           ; $6695: $00
    ld [$5221], sp                                ; $6696: $08 $21 $52
    ld c, d                                       ; $6699: $4A
    rst RST_38                                    ; $669A: $FF
    ld a, a                                       ; $669B: $7F
    nop                                           ; $669C: $00
    nop                                           ; $669D: $00
    adc h                                         ; $669E: $8C
    ld e, c                                       ; $669F: $59
    or l                                          ; $66A0: $B5
    ld a, [hl]                                    ; $66A1: $7E
    jr jr_02C_6723                                ; $66A2: $18 $7F

    nop                                           ; $66A4: $00
    nop                                           ; $66A5: $00
    ld d, l                                       ; $66A6: $55
    ld [$001E], sp                                ; $66A7: $08 $1E $00
    rst RST_38                                    ; $66AA: $FF
    ld a, a                                       ; $66AB: $7F
    nop                                           ; $66AC: $00
    nop                                           ; $66AD: $00
    nop                                           ; $66AE: $00
    inc e                                         ; $66AF: $1C
    dec [hl]                                      ; $66B0: $35
    dec [hl]                                      ; $66B1: $35
    dec a                                         ; $66B2: $3D
    ld b, [hl]                                    ; $66B3: $46
    nop                                           ; $66B4: $00
    nop                                           ; $66B5: $00
    nop                                           ; $66B6: $00
    inc e                                         ; $66B7: $1C
    sub c                                         ; $66B8: $91
    ld c, c                                       ; $66B9: $49
    ld d, a                                       ; $66BA: $57
    ld h, d                                       ; $66BB: $62
    nop                                           ; $66BC: $00
    nop                                           ; $66BD: $00
    nop                                           ; $66BE: $00
    nop                                           ; $66BF: $00
    nop                                           ; $66C0: $00
    nop                                           ; $66C1: $00
    nop                                           ; $66C2: $00
    nop                                           ; $66C3: $00
    nop                                           ; $66C4: $00
    nop                                           ; $66C5: $00
    nop                                           ; $66C6: $00
    nop                                           ; $66C7: $00
    nop                                           ; $66C8: $00
    nop                                           ; $66C9: $00
    nop                                           ; $66CA: $00
    nop                                           ; $66CB: $00
    ldh a, [rOCPS]                                ; $66CC: $F0 $6A
    ld hl, sp+$6A                                 ; $66CE: $F8 $6A
    ld [hl], b                                    ; $66D0: $70
    ld l, d                                       ; $66D1: $6A
    ld [hl], b                                    ; $66D2: $70
    ld l, d                                       ; $66D3: $6A
    ld [hl], b                                    ; $66D4: $70
    ld l, d                                       ; $66D5: $6A
    ld [hl], b                                    ; $66D6: $70
    ld l, d                                       ; $66D7: $6A
    ld [hl], b                                    ; $66D8: $70
    ld l, d                                       ; $66D9: $6A

jr_02C_66DA:
    ld [hl], b                                    ; $66DA: $70
    ld l, d                                       ; $66DB: $6A
    ld [hl], b                                    ; $66DC: $70
    ld l, d                                       ; $66DD: $6A
    sub b                                         ; $66DE: $90
    ld l, e                                       ; $66DF: $6B
    rst RST_38                                    ; $66E0: $FF
    rst RST_38                                    ; $66E1: $FF
    ld [hl], b                                    ; $66E2: $70
    ld l, d                                       ; $66E3: $6A
    ld [hl], b                                    ; $66E4: $70
    ld l, d                                       ; $66E5: $6A
    ld [hl], b                                    ; $66E6: $70
    ld l, d                                       ; $66E7: $6A
    ld [hl], b                                    ; $66E8: $70
    ld l, d                                       ; $66E9: $6A
    ld [hl], b                                    ; $66EA: $70
    ld l, d                                       ; $66EB: $6A
    ld [hl], b                                    ; $66EC: $70
    ld l, d                                       ; $66ED: $6A
    ld [hl], b                                    ; $66EE: $70
    ld l, d                                       ; $66EF: $6A
    ld [hl], b                                    ; $66F0: $70
    ld l, d                                       ; $66F1: $6A
    sub b                                         ; $66F2: $90
    ld l, e                                       ; $66F3: $6B
    ld l, b                                       ; $66F4: $68
    ld l, e                                       ; $66F5: $6B
    sub b                                         ; $66F6: $90
    ld l, e                                       ; $66F7: $6B
    rst RST_38                                    ; $66F8: $FF
    rst RST_38                                    ; $66F9: $FF
    ld b, b                                       ; $66FA: $40
    ld l, d                                       ; $66FB: $6A
    ld b, b                                       ; $66FC: $40
    ld l, d                                       ; $66FD: $6A
    ld b, b                                       ; $66FE: $40
    ld l, d                                       ; $66FF: $6A
    ld b, b                                       ; $6700: $40
    ld l, d                                       ; $6701: $6A
    ld b, b                                       ; $6702: $40
    ld l, d                                       ; $6703: $6A
    ld b, b                                       ; $6704: $40
    ld l, d                                       ; $6705: $6A
    ld b, b                                       ; $6706: $40
    ld l, d                                       ; $6707: $6A
    ld b, b                                       ; $6708: $40
    ld l, d                                       ; $6709: $6A
    ld l, b                                       ; $670A: $68
    ld l, d                                       ; $670B: $6A
    ld l, b                                       ; $670C: $68
    ld l, e                                       ; $670D: $6B
    rst RST_38                                    ; $670E: $FF
    rst RST_38                                    ; $670F: $FF
    ld c, b                                       ; $6710: $48
    ld l, d                                       ; $6711: $6A
    ld c, b                                       ; $6712: $48
    ld l, d                                       ; $6713: $6A
    ld c, b                                       ; $6714: $48
    ld l, d                                       ; $6715: $6A
    ld c, b                                       ; $6716: $48
    ld l, d                                       ; $6717: $6A
    ld c, b                                       ; $6718: $48
    ld l, d                                       ; $6719: $6A
    ld c, b                                       ; $671A: $48
    ld l, d                                       ; $671B: $6A
    ld c, b                                       ; $671C: $48
    ld l, d                                       ; $671D: $6A
    ld c, b                                       ; $671E: $48
    ld l, d                                       ; $671F: $6A
    ld l, b                                       ; $6720: $68
    ld l, d                                       ; $6721: $6A
    ld l, b                                       ; $6722: $68

jr_02C_6723:
    ld l, e                                       ; $6723: $6B
    rst RST_38                                    ; $6724: $FF
    rst RST_38                                    ; $6725: $FF
    ld d, b                                       ; $6726: $50
    ld l, d                                       ; $6727: $6A
    ld d, b                                       ; $6728: $50
    ld l, d                                       ; $6729: $6A
    ld d, b                                       ; $672A: $50
    ld l, d                                       ; $672B: $6A
    ld d, b                                       ; $672C: $50
    ld l, d                                       ; $672D: $6A
    ld d, b                                       ; $672E: $50
    ld l, d                                       ; $672F: $6A
    ld d, b                                       ; $6730: $50
    ld l, d                                       ; $6731: $6A
    ld d, b                                       ; $6732: $50
    ld l, d                                       ; $6733: $6A
    ld d, b                                       ; $6734: $50
    ld l, d                                       ; $6735: $6A
    ld l, b                                       ; $6736: $68
    ld l, d                                       ; $6737: $6A
    ld l, b                                       ; $6738: $68
    ld l, e                                       ; $6739: $6B
    rst RST_38                                    ; $673A: $FF
    rst RST_38                                    ; $673B: $FF
    ld e, b                                       ; $673C: $58
    ld l, d                                       ; $673D: $6A
    ld e, b                                       ; $673E: $58
    ld l, d                                       ; $673F: $6A
    ld e, b                                       ; $6740: $58
    ld l, d                                       ; $6741: $6A
    ld e, b                                       ; $6742: $58
    ld l, d                                       ; $6743: $6A
    ld e, b                                       ; $6744: $58
    ld l, d                                       ; $6745: $6A
    ld e, b                                       ; $6746: $58
    ld l, d                                       ; $6747: $6A
    ld e, b                                       ; $6748: $58
    ld l, d                                       ; $6749: $6A
    ld e, b                                       ; $674A: $58
    ld l, d                                       ; $674B: $6A
    ld l, b                                       ; $674C: $68
    ld l, d                                       ; $674D: $6A
    ld l, b                                       ; $674E: $68
    ld l, e                                       ; $674F: $6B
    rst RST_38                                    ; $6750: $FF
    rst RST_38                                    ; $6751: $FF
    ld h, b                                       ; $6752: $60
    ld l, d                                       ; $6753: $6A
    ld h, b                                       ; $6754: $60
    ld l, d                                       ; $6755: $6A
    ld h, b                                       ; $6756: $60
    ld l, d                                       ; $6757: $6A
    ld h, b                                       ; $6758: $60
    ld l, d                                       ; $6759: $6A
    ld h, b                                       ; $675A: $60
    ld l, d                                       ; $675B: $6A
    ld h, b                                       ; $675C: $60
    ld l, d                                       ; $675D: $6A
    ld h, b                                       ; $675E: $60
    ld l, d                                       ; $675F: $6A
    ld h, b                                       ; $6760: $60
    ld l, d                                       ; $6761: $6A
    ld l, b                                       ; $6762: $68
    ld l, d                                       ; $6763: $6A
    ld l, b                                       ; $6764: $68
    ld l, e                                       ; $6765: $6B
    rst RST_38                                    ; $6766: $FF
    rst RST_38                                    ; $6767: $FF
    ld h, b                                       ; $6768: $60
    ld l, e                                       ; $6769: $6B
    nop                                           ; $676A: $00
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
    ld d, b                                       ; $6778: $50
    ld l, e                                       ; $6779: $6B
    ld b, b                                       ; $677A: $40
    ld l, e                                       ; $677B: $6B
    rst RST_38                                    ; $677C: $FF
    rst RST_38                                    ; $677D: $FF
    ld [hl], b                                    ; $677E: $70
    ld l, d                                       ; $677F: $6A
    nop                                           ; $6780: $00
    nop                                           ; $6781: $00
    nop                                           ; $6782: $00
    nop                                           ; $6783: $00
    ld b, b                                       ; $6784: $40
    ld l, e                                       ; $6785: $6B
    nop                                           ; $6786: $00
    nop                                           ; $6787: $00
    nop                                           ; $6788: $00
    nop                                           ; $6789: $00
    nop                                           ; $678A: $00
    nop                                           ; $678B: $00
    nop                                           ; $678C: $00
    nop                                           ; $678D: $00
    ld a, b                                       ; $678E: $78
    ld l, d                                       ; $678F: $6A
    ld e, b                                       ; $6790: $58
    ld l, e                                       ; $6791: $6B
    ld c, b                                       ; $6792: $48
    ld l, e                                       ; $6793: $6B
    rst RST_38                                    ; $6794: $FF
    rst RST_38                                    ; $6795: $FF
    ld [hl], b                                    ; $6796: $70
    ld l, e                                       ; $6797: $6B
    ld a, b                                       ; $6798: $78
    ld l, e                                       ; $6799: $6B
    nop                                           ; $679A: $00
    nop                                           ; $679B: $00
    nop                                           ; $679C: $00
    nop                                           ; $679D: $00
    nop                                           ; $679E: $00
    nop                                           ; $679F: $00
    nop                                           ; $67A0: $00
    nop                                           ; $67A1: $00
    nop                                           ; $67A2: $00
    nop                                           ; $67A3: $00
    nop                                           ; $67A4: $00
    nop                                           ; $67A5: $00
    add b                                         ; $67A6: $80
    ld l, e                                       ; $67A7: $6B
    adc b                                         ; $67A8: $88
    ld l, e                                       ; $67A9: $6B
    rst RST_38                                    ; $67AA: $FF
    rst RST_38                                    ; $67AB: $FF
    add b                                         ; $67AC: $80
    ld l, d                                       ; $67AD: $6A
    adc b                                         ; $67AE: $88
    ld l, d                                       ; $67AF: $6A
    sub b                                         ; $67B0: $90
    ld l, d                                       ; $67B1: $6A
    sbc b                                         ; $67B2: $98

jr_02C_67B3:
    ld l, d                                       ; $67B3: $6A
    and b                                         ; $67B4: $A0
    ld l, d                                       ; $67B5: $6A
    xor b                                         ; $67B6: $A8
    ld l, d                                       ; $67B7: $6A
    or b                                          ; $67B8: $B0
    ld l, d                                       ; $67B9: $6A
    cp b                                          ; $67BA: $B8
    ld l, d                                       ; $67BB: $6A
    ret nz                                        ; $67BC: $C0

    ld l, d                                       ; $67BD: $6A
    ret z                                         ; $67BE: $C8

    ld l, d                                       ; $67BF: $6A
    ret nc                                        ; $67C0: $D0

    ld l, d                                       ; $67C1: $6A
    ret c                                         ; $67C2: $D8

    ld l, d                                       ; $67C3: $6A
    ldh [rOCPS], a                                ; $67C4: $E0 $6A
    add sp, $6A                                   ; $67C6: $E8 $6A
    rst RST_38                                    ; $67C8: $FF
    rst RST_38                                    ; $67C9: $FF
    nop                                           ; $67CA: $00
    ld l, e                                       ; $67CB: $6B
    nop                                           ; $67CC: $00
    nop                                           ; $67CD: $00
    nop                                           ; $67CE: $00
    nop                                           ; $67CF: $00
    nop                                           ; $67D0: $00
    nop                                           ; $67D1: $00
    nop                                           ; $67D2: $00
    nop                                           ; $67D3: $00
    nop                                           ; $67D4: $00

jr_02C_67D5:
    nop                                           ; $67D5: $00
    nop                                           ; $67D6: $00
    nop                                           ; $67D7: $00
    nop                                           ; $67D8: $00
    nop                                           ; $67D9: $00
    nop                                           ; $67DA: $00
    ld l, e                                       ; $67DB: $6B
    ld [$106B], sp                                ; $67DC: $08 $6B $10
    ld l, e                                       ; $67DF: $6B
    jr @+$6D                                      ; $67E0: $18 $6B

    jr nz, @+$6D                                  ; $67E2: $20 $6B

    jr z, jr_02C_6851                             ; $67E4: $28 $6B

    jr nc, jr_02C_6853                            ; $67E6: $30 $6B

    jr c, jr_02C_6855                             ; $67E8: $38 $6B

    rst RST_38                                    ; $67EA: $FF
    rst RST_38                                    ; $67EB: $FF
    ret z                                         ; $67EC: $C8

    ld l, e                                       ; $67ED: $6B
    adc b                                         ; $67EE: $88
    ld l, h                                       ; $67EF: $6C
    sub b                                         ; $67F0: $90
    ld l, h                                       ; $67F1: $6C
    sbc b                                         ; $67F2: $98
    ld l, h                                       ; $67F3: $6C
    and b                                         ; $67F4: $A0
    ld l, h                                       ; $67F5: $6C
    xor b                                         ; $67F6: $A8
    ld l, h                                       ; $67F7: $6C
    nop                                           ; $67F8: $00
    nop                                           ; $67F9: $00
    nop                                           ; $67FA: $00
    nop                                           ; $67FB: $00
    and d                                         ; $67FC: $A2
    jr nz, @-$1C                                  ; $67FD: $20 $E2

    jr nz, jr_02C_67B3                            ; $67FF: $20 $B2

    jr nz, jr_02C_67D5                            ; $6801: $20 $D2

    jr nz, jr_02C_67D5                            ; $6803: $20 $D0

    ld l, e                                       ; $6805: $6B
    ret c                                         ; $6806: $D8

    ld l, e                                       ; $6807: $6B
    rst RST_38                                    ; $6808: $FF
    rst RST_38                                    ; $6809: $FF
    ldh [rOCPD], a                                ; $680A: $E0 $6B
    add sp, $6B                                   ; $680C: $E8 $6B
    ldh a, [rOCPD]                                ; $680E: $F0 $6B
    ld hl, sp+$6B                                 ; $6810: $F8 $6B
    nop                                           ; $6812: $00
    ld l, h                                       ; $6813: $6C
    ld [$106C], sp                                ; $6814: $08 $6C $10
    ld l, h                                       ; $6817: $6C
    nop                                           ; $6818: $00
    nop                                           ; $6819: $00
    jr jr_02C_6888                                ; $681A: $18 $6C

    jr nz, jr_02C_688A                            ; $681C: $20 $6C

    jr z, jr_02C_688C                             ; $681E: $28 $6C

Jump_02C_6820:
    jr nc, jr_02C_688E                            ; $6820: $30 $6C

    jr c, jr_02C_6890                             ; $6822: $38 $6C

    rst RST_38                                    ; $6824: $FF
    rst RST_38                                    ; $6825: $FF
    ld [hl], b                                    ; $6826: $70
    ld l, h                                       ; $6827: $6C
    ld a, b                                       ; $6828: $78
    ld l, h                                       ; $6829: $6C
    add b                                         ; $682A: $80
    ld l, h                                       ; $682B: $6C
    adc b                                         ; $682C: $88
    ld l, h                                       ; $682D: $6C
    sub b                                         ; $682E: $90
    ld l, h                                       ; $682F: $6C
    sbc b                                         ; $6830: $98
    ld l, h                                       ; $6831: $6C
    and b                                         ; $6832: $A0
    ld l, h                                       ; $6833: $6C
    xor b                                         ; $6834: $A8
    ld l, h                                       ; $6835: $6C
    ld b, b                                       ; $6836: $40
    ld l, h                                       ; $6837: $6C
    ld b, b                                       ; $6838: $40
    ld l, h                                       ; $6839: $6C
    ld c, b                                       ; $683A: $48
    ld l, h                                       ; $683B: $6C
    ld d, b                                       ; $683C: $50
    ld l, h                                       ; $683D: $6C
    rst RST_38                                    ; $683E: $FF
    rst RST_38                                    ; $683F: $FF
    or b                                          ; $6840: $B0
    ld l, h                                       ; $6841: $6C
    cp b                                          ; $6842: $B8
    ld l, h                                       ; $6843: $6C
    ret nz                                        ; $6844: $C0

    ld l, h                                       ; $6845: $6C
    ret z                                         ; $6846: $C8

    ld l, h                                       ; $6847: $6C
    ret nc                                        ; $6848: $D0

    ld l, h                                       ; $6849: $6C
    ret c                                         ; $684A: $D8

    ld l, h                                       ; $684B: $6C
    ldh [$FF6C], a                                ; $684C: $E0 $6C
    add sp, $6C                                   ; $684E: $E8 $6C
    ld e, b                                       ; $6850: $58

jr_02C_6851:
    ld l, h                                       ; $6851: $6C
    ld h, b                                       ; $6852: $60

jr_02C_6853:
    ld l, h                                       ; $6853: $6C
    ld l, b                                       ; $6854: $68

jr_02C_6855:
    ld l, h                                       ; $6855: $6C
    rst RST_38                                    ; $6856: $FF
    rst RST_38                                    ; $6857: $FF
    or b                                          ; $6858: $B0
    ld l, e                                       ; $6859: $6B
    sbc b                                         ; $685A: $98
    ld l, e                                       ; $685B: $6B
    and b                                         ; $685C: $A0
    ld l, e                                       ; $685D: $6B
    ld b, b                                       ; $685E: $40
    ld l, e                                       ; $685F: $6B
    ldh a, [$FF6C]                                ; $6860: $F0 $6C
    ld hl, sp+$6C                                 ; $6862: $F8 $6C
    nop                                           ; $6864: $00
    ld l, l                                       ; $6865: $6D
    ld [$A26D], sp                                ; $6866: $08 $6D $A2
    jr nz, jr_02C_68D3                            ; $6869: $20 $68

    ld l, e                                       ; $686B: $6B
    ld c, b                                       ; $686C: $48
    ld l, e                                       ; $686D: $6B
    rst RST_38                                    ; $686E: $FF
    rst RST_38                                    ; $686F: $FF
    cp b                                          ; $6870: $B8
    ld l, e                                       ; $6871: $6B
    sbc b                                         ; $6872: $98
    ld l, e                                       ; $6873: $6B
    xor b                                         ; $6874: $A8
    ld l, e                                       ; $6875: $6B
    ld b, b                                       ; $6876: $40
    ld l, e                                       ; $6877: $6B
    jr nc, jr_02C_68E7                            ; $6878: $30 $6D

    jr c, jr_02C_68E9                             ; $687A: $38 $6D

    ld b, b                                       ; $687C: $40
    ld l, l                                       ; $687D: $6D
    ld c, b                                       ; $687E: $48
    ld l, l                                       ; $687F: $6D
    or d                                          ; $6880: $B2
    jr nz, jr_02C_68EB                            ; $6881: $20 $68

    ld l, e                                       ; $6883: $6B
    ld c, b                                       ; $6884: $48
    ld l, e                                       ; $6885: $6B
    rst RST_38                                    ; $6886: $FF
    rst RST_38                                    ; $6887: $FF

jr_02C_6888:
    or b                                          ; $6888: $B0
    ld l, e                                       ; $6889: $6B

jr_02C_688A:
    sbc b                                         ; $688A: $98
    ld l, e                                       ; $688B: $6B

jr_02C_688C:
    and b                                         ; $688C: $A0
    ld l, e                                       ; $688D: $6B

jr_02C_688E:
    ld b, b                                       ; $688E: $40
    ld l, e                                       ; $688F: $6B

jr_02C_6890:
    ld [hl], b                                    ; $6890: $70
    ld l, l                                       ; $6891: $6D
    ld a, b                                       ; $6892: $78
    ld l, l                                       ; $6893: $6D
    add b                                         ; $6894: $80
    ld l, l                                       ; $6895: $6D
    adc b                                         ; $6896: $88
    ld l, l                                       ; $6897: $6D
    jp nz, Jump_02C_6820                          ; $6898: $C2 $20 $68

    ld l, e                                       ; $689B: $6B
    ld c, b                                       ; $689C: $48
    ld l, e                                       ; $689D: $6B
    rst RST_38                                    ; $689E: $FF
    rst RST_38                                    ; $689F: $FF
    cp b                                          ; $68A0: $B8
    ld l, e                                       ; $68A1: $6B
    sbc b                                         ; $68A2: $98
    ld l, e                                       ; $68A3: $6B
    xor b                                         ; $68A4: $A8
    ld l, e                                       ; $68A5: $6B
    ld b, b                                       ; $68A6: $40
    ld l, e                                       ; $68A7: $6B
    or b                                          ; $68A8: $B0
    ld l, l                                       ; $68A9: $6D
    cp b                                          ; $68AA: $B8
    ld l, l                                       ; $68AB: $6D
    ret nz                                        ; $68AC: $C0

    ld l, l                                       ; $68AD: $6D
    ret z                                         ; $68AE: $C8

    ld l, l                                       ; $68AF: $6D
    jp nc, Jump_02C_6820                          ; $68B0: $D2 $20 $68

    ld l, e                                       ; $68B3: $6B
    ld c, b                                       ; $68B4: $48
    ld l, e                                       ; $68B5: $6B
    rst RST_38                                    ; $68B6: $FF
    rst RST_38                                    ; $68B7: $FF
    or b                                          ; $68B8: $B0
    ld l, e                                       ; $68B9: $6B
    sbc b                                         ; $68BA: $98
    ld l, e                                       ; $68BB: $6B
    and b                                         ; $68BC: $A0
    ld l, e                                       ; $68BD: $6B
    ld b, b                                       ; $68BE: $40
    ld l, e                                       ; $68BF: $6B
    ldh a, [$FF6D]                                ; $68C0: $F0 $6D
    ld hl, sp+$6D                                 ; $68C2: $F8 $6D
    nop                                           ; $68C4: $00
    ld l, [hl]                                    ; $68C5: $6E
    ld [$E26E], sp                                ; $68C6: $08 $6E $E2
    jr nz, jr_02C_6933                            ; $68C9: $20 $68

    ld l, e                                       ; $68CB: $6B
    ld c, b                                       ; $68CC: $48
    ld l, e                                       ; $68CD: $6B
    rst RST_38                                    ; $68CE: $FF
    rst RST_38                                    ; $68CF: $FF
    cp b                                          ; $68D0: $B8
    ld l, e                                       ; $68D1: $6B
    sbc b                                         ; $68D2: $98

jr_02C_68D3:
    ld l, e                                       ; $68D3: $6B
    xor b                                         ; $68D4: $A8
    ld l, e                                       ; $68D5: $6B
    ld b, b                                       ; $68D6: $40
    ld l, e                                       ; $68D7: $6B
    jr nc, jr_02C_6948                            ; $68D8: $30 $6E

    jr c, jr_02C_694A                             ; $68DA: $38 $6E

    ld b, b                                       ; $68DC: $40
    ld l, [hl]                                    ; $68DD: $6E
    ld c, b                                       ; $68DE: $48
    ld l, [hl]                                    ; $68DF: $6E
    ldh a, [c]                                    ; $68E0: $F2
    jr nz, @+$6A                                  ; $68E1: $20 $68

    ld l, e                                       ; $68E3: $6B
    ld c, b                                       ; $68E4: $48
    ld l, e                                       ; $68E5: $6B
    rst RST_38                                    ; $68E6: $FF

jr_02C_68E7:
    rst RST_38                                    ; $68E7: $FF
    or b                                          ; $68E8: $B0

jr_02C_68E9:
    ld l, e                                       ; $68E9: $6B
    sbc b                                         ; $68EA: $98

jr_02C_68EB:
    ld l, e                                       ; $68EB: $6B
    and b                                         ; $68EC: $A0
    ld l, e                                       ; $68ED: $6B
    ld b, b                                       ; $68EE: $40
    ld l, e                                       ; $68EF: $6B
    ld [hl], b                                    ; $68F0: $70
    ld l, [hl]                                    ; $68F1: $6E
    ld a, b                                       ; $68F2: $78
    ld l, [hl]                                    ; $68F3: $6E
    add b                                         ; $68F4: $80
    ld l, [hl]                                    ; $68F5: $6E
    adc b                                         ; $68F6: $88
    ld l, [hl]                                    ; $68F7: $6E
    ld [bc], a                                    ; $68F8: $02
    ld hl, $6B68                                  ; $68F9: $21 $68 $6B
    ld c, b                                       ; $68FC: $48
    ld l, e                                       ; $68FD: $6B
    rst RST_38                                    ; $68FE: $FF
    rst RST_38                                    ; $68FF: $FF
    cp b                                          ; $6900: $B8
    ld l, e                                       ; $6901: $6B
    sbc b                                         ; $6902: $98
    ld l, e                                       ; $6903: $6B

Jump_02C_6904:
    xor b                                         ; $6904: $A8
    ld l, e                                       ; $6905: $6B
    ld b, b                                       ; $6906: $40
    ld l, e                                       ; $6907: $6B
    or b                                          ; $6908: $B0
    ld l, [hl]                                    ; $6909: $6E
    cp b                                          ; $690A: $B8
    ld l, [hl]                                    ; $690B: $6E
    ret nz                                        ; $690C: $C0

    ld l, [hl]                                    ; $690D: $6E
    ret z                                         ; $690E: $C8

    ld l, [hl]                                    ; $690F: $6E
    ld [de], a                                    ; $6910: $12
    ld hl, $6B68                                  ; $6911: $21 $68 $6B
    ld c, b                                       ; $6914: $48
    ld l, e                                       ; $6915: $6B
    rst RST_38                                    ; $6916: $FF
    rst RST_38                                    ; $6917: $FF
    ret nz                                        ; $6918: $C0

    ld l, e                                       ; $6919: $6B
    sbc b                                         ; $691A: $98
    ld l, e                                       ; $691B: $6B
    and b                                         ; $691C: $A0
    ld l, e                                       ; $691D: $6B
    ld b, b                                       ; $691E: $40
    ld l, e                                       ; $691F: $6B
    ldh a, [$FF6E]                                ; $6920: $F0 $6E
    ld hl, sp+$6E                                 ; $6922: $F8 $6E
    nop                                           ; $6924: $00
    ld l, a                                       ; $6925: $6F
    ld [$226F], sp                                ; $6926: $08 $6F $22
    ld hl, $6B68                                  ; $6929: $21 $68 $6B
    ld c, b                                       ; $692C: $48
    ld l, e                                       ; $692D: $6B
    rst RST_38                                    ; $692E: $FF
    rst RST_38                                    ; $692F: $FF
    ret nz                                        ; $6930: $C0

    ld l, e                                       ; $6931: $6B
    sbc b                                         ; $6932: $98

jr_02C_6933:
    ld l, e                                       ; $6933: $6B
    xor b                                         ; $6934: $A8
    ld l, e                                       ; $6935: $6B
    ld b, b                                       ; $6936: $40
    ld l, e                                       ; $6937: $6B
    jr nc, jr_02C_69A9                            ; $6938: $30 $6F

    jr c, @+$71                                   ; $693A: $38 $6F

    ld b, b                                       ; $693C: $40
    ld l, a                                       ; $693D: $6F
    ld c, b                                       ; $693E: $48
    ld l, a                                       ; $693F: $6F
    ld [hl-], a                                   ; $6940: $32
    ld hl, $6B68                                  ; $6941: $21 $68 $6B
    ld c, b                                       ; $6944: $48
    ld l, e                                       ; $6945: $6B
    rst RST_38                                    ; $6946: $FF
    rst RST_38                                    ; $6947: $FF

jr_02C_6948:
    db $10                                        ; $6948: $10
    ld l, l                                       ; $6949: $6D

jr_02C_694A:
    jr jr_02C_69B9                                ; $694A: $18 $6D

    jr nz, jr_02C_69BB                            ; $694C: $20 $6D

    jr z, jr_02C_69BD                             ; $694E: $28 $6D

    ldh a, [$FF6C]                                ; $6950: $F0 $6C
    ld hl, sp+$6C                                 ; $6952: $F8 $6C
    nop                                           ; $6954: $00
    ld l, l                                       ; $6955: $6D
    ld [$A26D], sp                                ; $6956: $08 $6D $A2
    jr nz, jr_02C_69C3                            ; $6959: $20 $68

    ld l, e                                       ; $695B: $6B
    ld c, b                                       ; $695C: $48
    ld l, e                                       ; $695D: $6B
    rst RST_38                                    ; $695E: $FF
    rst RST_38                                    ; $695F: $FF
    ld d, b                                       ; $6960: $50
    ld l, l                                       ; $6961: $6D
    ld e, b                                       ; $6962: $58
    ld l, l                                       ; $6963: $6D
    ld h, b                                       ; $6964: $60
    ld l, l                                       ; $6965: $6D
    ld l, b                                       ; $6966: $68
    ld l, l                                       ; $6967: $6D
    jr nc, jr_02C_69D7                            ; $6968: $30 $6D

    jr c, jr_02C_69D9                             ; $696A: $38 $6D

    ld b, b                                       ; $696C: $40
    ld l, l                                       ; $696D: $6D
    ld c, b                                       ; $696E: $48
    ld l, l                                       ; $696F: $6D
    or d                                          ; $6970: $B2
    jr nz, jr_02C_69DB                            ; $6971: $20 $68

    ld l, e                                       ; $6973: $6B
    ld c, b                                       ; $6974: $48
    ld l, e                                       ; $6975: $6B
    rst RST_38                                    ; $6976: $FF
    rst RST_38                                    ; $6977: $FF
    sub b                                         ; $6978: $90
    ld l, l                                       ; $6979: $6D
    sbc b                                         ; $697A: $98
    ld l, l                                       ; $697B: $6D
    and b                                         ; $697C: $A0
    ld l, l                                       ; $697D: $6D
    xor b                                         ; $697E: $A8
    ld l, l                                       ; $697F: $6D
    ld [hl], b                                    ; $6980: $70
    ld l, l                                       ; $6981: $6D
    ld a, b                                       ; $6982: $78
    ld l, l                                       ; $6983: $6D
    add b                                         ; $6984: $80
    ld l, l                                       ; $6985: $6D
    adc b                                         ; $6986: $88
    ld l, l                                       ; $6987: $6D
    jp nz, Jump_02C_6820                          ; $6988: $C2 $20 $68

    ld l, e                                       ; $698B: $6B
    ld c, b                                       ; $698C: $48
    ld l, e                                       ; $698D: $6B
    rst RST_38                                    ; $698E: $FF
    rst RST_38                                    ; $698F: $FF
    ret nc                                        ; $6990: $D0

    ld l, l                                       ; $6991: $6D
    ret c                                         ; $6992: $D8

    ld l, l                                       ; $6993: $6D
    ldh [$FF6D], a                                ; $6994: $E0 $6D
    add sp, $6D                                   ; $6996: $E8 $6D
    or b                                          ; $6998: $B0
    ld l, l                                       ; $6999: $6D
    cp b                                          ; $699A: $B8
    ld l, l                                       ; $699B: $6D
    ret nz                                        ; $699C: $C0

    ld l, l                                       ; $699D: $6D
    ret z                                         ; $699E: $C8

    ld l, l                                       ; $699F: $6D
    jp nc, Jump_02C_6820                          ; $69A0: $D2 $20 $68

    ld l, e                                       ; $69A3: $6B
    ld c, b                                       ; $69A4: $48
    ld l, e                                       ; $69A5: $6B
    rst RST_38                                    ; $69A6: $FF
    rst RST_38                                    ; $69A7: $FF
    db $10                                        ; $69A8: $10

jr_02C_69A9:
    ld l, [hl]                                    ; $69A9: $6E
    jr @+$70                                      ; $69AA: $18 $6E

    jr nz, @+$70                                  ; $69AC: $20 $6E

    jr z, jr_02C_6A1E                             ; $69AE: $28 $6E

    ldh a, [$FF6D]                                ; $69B0: $F0 $6D
    ld hl, sp+$6D                                 ; $69B2: $F8 $6D
    nop                                           ; $69B4: $00
    ld l, [hl]                                    ; $69B5: $6E
    ld [$E26E], sp                                ; $69B6: $08 $6E $E2

jr_02C_69B9:
    jr nz, jr_02C_6A23                            ; $69B9: $20 $68

jr_02C_69BB:
    ld l, e                                       ; $69BB: $6B
    ld c, b                                       ; $69BC: $48

jr_02C_69BD:
    ld l, e                                       ; $69BD: $6B
    rst RST_38                                    ; $69BE: $FF
    rst RST_38                                    ; $69BF: $FF
    ld d, b                                       ; $69C0: $50
    ld l, [hl]                                    ; $69C1: $6E
    ld e, b                                       ; $69C2: $58

jr_02C_69C3:
    ld l, [hl]                                    ; $69C3: $6E
    ld h, b                                       ; $69C4: $60
    ld l, [hl]                                    ; $69C5: $6E
    ld l, b                                       ; $69C6: $68
    ld l, [hl]                                    ; $69C7: $6E
    jr nc, jr_02C_6A38                            ; $69C8: $30 $6E

    jr c, jr_02C_6A3A                             ; $69CA: $38 $6E

    ld b, b                                       ; $69CC: $40
    ld l, [hl]                                    ; $69CD: $6E
    ld c, b                                       ; $69CE: $48
    ld l, [hl]                                    ; $69CF: $6E
    ldh a, [c]                                    ; $69D0: $F2
    jr nz, jr_02C_6A3B                            ; $69D1: $20 $68

    ld l, e                                       ; $69D3: $6B
    ld c, b                                       ; $69D4: $48
    ld l, e                                       ; $69D5: $6B
    rst RST_38                                    ; $69D6: $FF

jr_02C_69D7:
    rst RST_38                                    ; $69D7: $FF
    sub b                                         ; $69D8: $90

jr_02C_69D9:
    ld l, [hl]                                    ; $69D9: $6E
    sbc b                                         ; $69DA: $98

jr_02C_69DB:
    ld l, [hl]                                    ; $69DB: $6E
    and b                                         ; $69DC: $A0
    ld l, [hl]                                    ; $69DD: $6E
    xor b                                         ; $69DE: $A8
    ld l, [hl]                                    ; $69DF: $6E
    ld [hl], b                                    ; $69E0: $70
    ld l, [hl]                                    ; $69E1: $6E
    ld a, b                                       ; $69E2: $78
    ld l, [hl]                                    ; $69E3: $6E
    add b                                         ; $69E4: $80
    ld l, [hl]                                    ; $69E5: $6E
    adc b                                         ; $69E6: $88
    ld l, [hl]                                    ; $69E7: $6E
    ld [bc], a                                    ; $69E8: $02
    ld hl, $6B68                                  ; $69E9: $21 $68 $6B
    ld c, b                                       ; $69EC: $48
    ld l, e                                       ; $69ED: $6B
    rst RST_38                                    ; $69EE: $FF
    rst RST_38                                    ; $69EF: $FF
    ret nc                                        ; $69F0: $D0

    ld l, [hl]                                    ; $69F1: $6E
    ret c                                         ; $69F2: $D8

    ld l, [hl]                                    ; $69F3: $6E
    ldh [$FF6E], a                                ; $69F4: $E0 $6E
    add sp, $6E                                   ; $69F6: $E8 $6E
    or b                                          ; $69F8: $B0
    ld l, [hl]                                    ; $69F9: $6E
    cp b                                          ; $69FA: $B8
    ld l, [hl]                                    ; $69FB: $6E
    ret nz                                        ; $69FC: $C0

    ld l, [hl]                                    ; $69FD: $6E
    ret z                                         ; $69FE: $C8

    ld l, [hl]                                    ; $69FF: $6E
    ld [de], a                                    ; $6A00: $12
    ld hl, $6B68                                  ; $6A01: $21 $68 $6B
    ld c, b                                       ; $6A04: $48
    ld l, e                                       ; $6A05: $6B
    cp b                                          ; $6A06: $B8
    ld l, [hl]                                    ; $6A07: $6E
    rst RST_38                                    ; $6A08: $FF
    rst RST_38                                    ; $6A09: $FF
    db $10                                        ; $6A0A: $10
    ld l, a                                       ; $6A0B: $6F
    jr jr_02C_6A7D                                ; $6A0C: $18 $6F

    jr nz, jr_02C_6A7F                            ; $6A0E: $20 $6F

    jr z, jr_02C_6A81                             ; $6A10: $28 $6F

    ldh a, [$FF6E]                                ; $6A12: $F0 $6E
    ld hl, sp+$6E                                 ; $6A14: $F8 $6E
    nop                                           ; $6A16: $00
    ld l, a                                       ; $6A17: $6F
    ld [$226F], sp                                ; $6A18: $08 $6F $22
    ld hl, $6B68                                  ; $6A1B: $21 $68 $6B

jr_02C_6A1E:
    ld c, b                                       ; $6A1E: $48
    ld l, e                                       ; $6A1F: $6B
    nop                                           ; $6A20: $00
    ld l, a                                       ; $6A21: $6F
    rst RST_38                                    ; $6A22: $FF

jr_02C_6A23:
    rst RST_38                                    ; $6A23: $FF
    ld d, b                                       ; $6A24: $50
    ld l, a                                       ; $6A25: $6F
    ld e, b                                       ; $6A26: $58
    ld l, a                                       ; $6A27: $6F
    ld h, b                                       ; $6A28: $60
    ld l, a                                       ; $6A29: $6F
    ld l, b                                       ; $6A2A: $68
    ld l, a                                       ; $6A2B: $6F
    jr nc, jr_02C_6A9D                            ; $6A2C: $30 $6F

    jr c, jr_02C_6A9F                             ; $6A2E: $38 $6F

    ld b, b                                       ; $6A30: $40
    ld l, a                                       ; $6A31: $6F
    ld c, b                                       ; $6A32: $48
    ld l, a                                       ; $6A33: $6F
    ld [hl-], a                                   ; $6A34: $32
    ld hl, $6B68                                  ; $6A35: $21 $68 $6B

jr_02C_6A38:
    ld c, b                                       ; $6A38: $48
    ld l, e                                       ; $6A39: $6B

jr_02C_6A3A:
    ld b, b                                       ; $6A3A: $40

jr_02C_6A3B:
    ld l, a                                       ; $6A3B: $6F
    jr nc, jr_02C_6AAD                            ; $6A3C: $30 $6F

    rst RST_38                                    ; $6A3E: $FF
    rst RST_38                                    ; $6A3F: $FF
    nop                                           ; $6A40: $00
    nop                                           ; $6A41: $00
    rra                                           ; $6A42: $1F
    nop                                           ; $6A43: $00
    rra                                           ; $6A44: $1F
    ld [bc], a                                    ; $6A45: $02
    rst RST_38                                    ; $6A46: $FF
    ld a, a                                       ; $6A47: $7F
    nop                                           ; $6A48: $00
    nop                                           ; $6A49: $00
    add b                                         ; $6A4A: $80
    ld a, c                                       ; $6A4B: $79
    sbc $7A                                       ; $6A4C: $DE $7A
    rst RST_38                                    ; $6A4E: $FF
    ld a, a                                       ; $6A4F: $7F
    nop                                           ; $6A50: $00
    nop                                           ; $6A51: $00
    add b                                         ; $6A52: $80
    ld a, c                                       ; $6A53: $79
    ld [$FF7B], sp                                ; $6A54: $08 $7B $FF
    ld a, a                                       ; $6A57: $7F
    nop                                           ; $6A58: $00
    nop                                           ; $6A59: $00
    db $10                                        ; $6A5A: $10
    ld h, b                                       ; $6A5B: $60
    sbc [hl]                                      ; $6A5C: $9E
    ld a, d                                       ; $6A5D: $7A
    rst RST_38                                    ; $6A5E: $FF
    ld a, a                                       ; $6A5F: $7F
    nop                                           ; $6A60: $00
    nop                                           ; $6A61: $00
    ld [$9C31], sp                                ; $6A62: $08 $31 $9C
    ld [bc], a                                    ; $6A65: $02
    rst RST_38                                    ; $6A66: $FF
    ld a, a                                       ; $6A67: $7F
    nop                                           ; $6A68: $00
    nop                                           ; $6A69: $00
    nop                                           ; $6A6A: $00
    inc bc                                        ; $6A6B: $03
    rst RST_28                                    ; $6A6C: $EF
    rlca                                          ; $6A6D: $07
    rst RST_38                                    ; $6A6E: $FF
    ld a, a                                       ; $6A6F: $7F
    nop                                           ; $6A70: $00
    nop                                           ; $6A71: $00
    ld l, e                                       ; $6A72: $6B
    dec l                                         ; $6A73: $2D
    or l                                          ; $6A74: $B5
    ld d, [hl]                                    ; $6A75: $56
    rst RST_38                                    ; $6A76: $FF
    ld a, a                                       ; $6A77: $7F
    nop                                           ; $6A78: $00
    nop                                           ; $6A79: $00
    and l                                         ; $6A7A: $A5
    inc d                                         ; $6A7B: $14
    rst RST_38                                    ; $6A7C: $FF

jr_02C_6A7D:
    ld a, a                                       ; $6A7D: $7F
    rst RST_30                                    ; $6A7E: $F7

jr_02C_6A7F:
    ld e, [hl]                                    ; $6A7F: $5E
    nop                                           ; $6A80: $00

jr_02C_6A81:
    nop                                           ; $6A81: $00
    rst RST_20                                    ; $6A82: $E7
    inc e                                         ; $6A83: $1C
    ld l, e                                       ; $6A84: $6B
    dec l                                         ; $6A85: $2D
    rst RST_38                                    ; $6A86: $FF
    ld a, a                                       ; $6A87: $7F
    ld [hl], e                                    ; $6A88: $73
    ld c, [hl]                                    ; $6A89: $4E
    rst RST_30                                    ; $6A8A: $F7
    ld e, [hl]                                    ; $6A8B: $5E
    ld a, e                                       ; $6A8C: $7B
    ld l, a                                       ; $6A8D: $6F
    rst RST_28                                    ; $6A8E: $EF
    dec a                                         ; $6A8F: $3D
    inc bc                                        ; $6A90: $03
    nop                                           ; $6A91: $00
    rlca                                          ; $6A92: $07
    nop                                           ; $6A93: $00
    dec bc                                        ; $6A94: $0B
    nop                                           ; $6A95: $00
    rrca                                          ; $6A96: $0F
    nop                                           ; $6A97: $00
    inc de                                        ; $6A98: $13
    nop                                           ; $6A99: $00
    rla                                           ; $6A9A: $17
    nop                                           ; $6A9B: $00
    dec de                                        ; $6A9C: $1B

jr_02C_6A9D:
    nop                                           ; $6A9D: $00
    rra                                           ; $6A9E: $1F

jr_02C_6A9F:
    nop                                           ; $6A9F: $00
    ld h, b                                       ; $6AA0: $60
    nop                                           ; $6AA1: $00
    ldh [rP1], a                                  ; $6AA2: $E0 $00
    ld h, b                                       ; $6AA4: $60
    ld bc, $01E0                                  ; $6AA5: $01 $E0 $01
    ld h, b                                       ; $6AA8: $60
    ld [bc], a                                    ; $6AA9: $02
    ldh [rSC], a                                  ; $6AAA: $E0 $02
    ld h, b                                       ; $6AAC: $60

jr_02C_6AAD:
    inc bc                                        ; $6AAD: $03
    ldh [$FF03], a                                ; $6AAE: $E0 $03
    nop                                           ; $6AB0: $00
    inc c                                         ; $6AB1: $0C
    nop                                           ; $6AB2: $00
    inc e                                         ; $6AB3: $1C
    nop                                           ; $6AB4: $00
    inc l                                         ; $6AB5: $2C
    nop                                           ; $6AB6: $00
    inc a                                         ; $6AB7: $3C
    nop                                           ; $6AB8: $00
    ld c, h                                       ; $6AB9: $4C
    nop                                           ; $6ABA: $00
    ld e, h                                       ; $6ABB: $5C
    nop                                           ; $6ABC: $00
    ld l, h                                       ; $6ABD: $6C
    nop                                           ; $6ABE: $00
    ld a, h                                       ; $6ABF: $7C
    nop                                           ; $6AC0: $00
    nop                                           ; $6AC1: $00
    ccf                                           ; $6AC2: $3F
    dec c                                         ; $6AC3: $0D
    cp a                                          ; $6AC4: $BF
    rra                                           ; $6AC5: $1F
    rst RST_38                                    ; $6AC6: $FF
    ld a, a                                       ; $6AC7: $7F
    nop                                           ; $6AC8: $00
    nop                                           ; $6AC9: $00
    rst RST_20                                    ; $6ACA: $E7
    inc a                                         ; $6ACB: $3C
    pop af                                        ; $6ACC: $F1
    ld a, [hl]                                    ; $6ACD: $7E
    rst RST_38                                    ; $6ACE: $FF
    ld a, a                                       ; $6ACF: $7F
    nop                                           ; $6AD0: $00
    nop                                           ; $6AD1: $00
    rrca                                          ; $6AD2: $0F
    dec h                                         ; $6AD3: $25
    ld a, c                                       ; $6AD4: $79
    ld c, [hl]                                    ; $6AD5: $4E
    rst RST_38                                    ; $6AD6: $FF
    ld a, a                                       ; $6AD7: $7F
    nop                                           ; $6AD8: $00
    nop                                           ; $6AD9: $00
    rst RST_20                                    ; $6ADA: $E7
    ld a, h                                       ; $6ADB: $7C
    rst RST_20                                    ; $6ADC: $E7
    ld a, [hl]                                    ; $6ADD: $7E
    rst RST_38                                    ; $6ADE: $FF
    ld a, a                                       ; $6ADF: $7F
    nop                                           ; $6AE0: $00
    nop                                           ; $6AE1: $00
    rst RST_28                                    ; $6AE2: $EF
    inc e                                         ; $6AE3: $1C
    rst RST_38                                    ; $6AE4: $FF
    dec c                                         ; $6AE5: $0D
    rst RST_38                                    ; $6AE6: $FF
    ld a, a                                       ; $6AE7: $7F
    nop                                           ; $6AE8: $00
    nop                                           ; $6AE9: $00
    rst RST_20                                    ; $6AEA: $E7
    dec e                                         ; $6AEB: $1D
    ld h, e                                       ; $6AEC: $63
    rrca                                          ; $6AED: $0F
    rst RST_38                                    ; $6AEE: $FF
    ld a, a                                       ; $6AEF: $7F
    nop                                           ; $6AF0: $00
    nop                                           ; $6AF1: $00
    ld h, e                                       ; $6AF2: $63
    ld l, h                                       ; $6AF3: $6C
    ldh [$FF73], a                                ; $6AF4: $E0 $73
    rst RST_38                                    ; $6AF6: $FF
    ld a, a                                       ; $6AF7: $7F
    nop                                           ; $6AF8: $00
    nop                                           ; $6AF9: $00
    and e                                         ; $6AFA: $A3
    ld c, $FF                                     ; $6AFB: $0E $FF
    daa                                           ; $6AFD: $27
    rst RST_38                                    ; $6AFE: $FF
    ld a, a                                       ; $6AFF: $7F
    nop                                           ; $6B00: $00
    nop                                           ; $6B01: $00
    rst RST_20                                    ; $6B02: $E7
    inc l                                         ; $6B03: $2C
    rst RST_28                                    ; $6B04: $EF
    ld c, l                                       ; $6B05: $4D
    rst RST_38                                    ; $6B06: $FF
    ld a, a                                       ; $6B07: $7F
    nop                                           ; $6B08: $00
    nop                                           ; $6B09: $00
    ld a, a                                       ; $6B0A: $7F
    dec l                                         ; $6B0B: $2D
    rst RST_38                                    ; $6B0C: $FF
    dec a                                         ; $6B0D: $3D
    ld a, a                                       ; $6B0E: $7F
    ld c, [hl]                                    ; $6B0F: $4E
    nop                                           ; $6B10: $00
    nop                                           ; $6B11: $00
    ccf                                           ; $6B12: $3F
    ld h, $BF                                     ; $6B13: $26 $BF
    ld [hl], $3F                                  ; $6B15: $36 $3F
    ld b, a                                       ; $6B17: $47
    nop                                           ; $6B18: $00
    nop                                           ; $6B19: $00
    ld a, e                                       ; $6B1A: $7B
    rrca                                          ; $6B1B: $0F
    rst RST_38                                    ; $6B1C: $FF
    rrca                                          ; $6B1D: $0F
    rst RST_38                                    ; $6B1E: $FF
    ccf                                           ; $6B1F: $3F
    nop                                           ; $6B20: $00
    nop                                           ; $6B21: $00
    xor c                                         ; $6B22: $A9
    daa                                           ; $6B23: $27
    db $ED                                        ; $6B24: $ED
    scf                                           ; $6B25: $37
    di                                            ; $6B26: $F3
    ld c, a                                       ; $6B27: $4F
    nop                                           ; $6B28: $00
    nop                                           ; $6B29: $00
    ld l, c                                       ; $6B2A: $69
    ld a, a                                       ; $6B2B: $7F
    db $ED                                        ; $6B2C: $ED
    ld a, a                                       ; $6B2D: $7F
    di                                            ; $6B2E: $F3
    ld a, a                                       ; $6B2F: $7F
    nop                                           ; $6B30: $00
    nop                                           ; $6B31: $00
    ld l, e                                       ; $6B32: $6B
    ld a, l                                       ; $6B33: $7D
    rst RST_28                                    ; $6B34: $EF
    ld a, l                                       ; $6B35: $7D
    ld [hl], e                                    ; $6B36: $73
    ld a, [hl]                                    ; $6B37: $7E
    nop                                           ; $6B38: $00
    nop                                           ; $6B39: $00
    add hl, sp                                    ; $6B3A: $39
    ld a, l                                       ; $6B3B: $7D
    cp l                                          ; $6B3C: $BD
    ld a, l                                       ; $6B3D: $7D
    ld a, l                                       ; $6B3E: $7D
    ld a, [hl]                                    ; $6B3F: $7E
    nop                                           ; $6B40: $00
    nop                                           ; $6B41: $00
    inc hl                                        ; $6B42: $23
    ld h, l                                       ; $6B43: $65
    rst RST_20                                    ; $6B44: $E7
    ld a, [hl]                                    ; $6B45: $7E
    rst RST_38                                    ; $6B46: $FF
    ld a, a                                       ; $6B47: $7F
    nop                                           ; $6B48: $00
    nop                                           ; $6B49: $00
    rst RST_30                                    ; $6B4A: $F7
    dec c                                         ; $6B4B: $0D
    ld a, l                                       ; $6B4C: $7D
    rrca                                          ; $6B4D: $0F
    rst RST_38                                    ; $6B4E: $FF
    ld a, a                                       ; $6B4F: $7F
    nop                                           ; $6B50: $00
    nop                                           ; $6B51: $00
    ld l, l                                       ; $6B52: $6D
    ld a, a                                       ; $6B53: $7F
    push af                                       ; $6B54: $F5
    ld a, a                                       ; $6B55: $7F
    rst RST_38                                    ; $6B56: $FF
    ld a, a                                       ; $6B57: $7F
    nop                                           ; $6B58: $00
    nop                                           ; $6B59: $00
    ld [$105C], sp                                ; $6B5A: $08 $5C $10
    ld a, l                                       ; $6B5D: $7D
    rst RST_38                                    ; $6B5E: $FF
    ld a, a                                       ; $6B5F: $7F
    nop                                           ; $6B60: $00
    nop                                           ; $6B61: $00
    nop                                           ; $6B62: $00
    nop                                           ; $6B63: $00
    rst RST_30                                    ; $6B64: $F7
    ld a, a                                       ; $6B65: $7F
    rst RST_38                                    ; $6B66: $FF
    ld a, a                                       ; $6B67: $7F
    nop                                           ; $6B68: $00
    nop                                           ; $6B69: $00
    nop                                           ; $6B6A: $00
    ld b, b                                       ; $6B6B: $40
    db $10                                        ; $6B6C: $10
    ld a, [hl]                                    ; $6B6D: $7E
    rst RST_38                                    ; $6B6E: $FF
    ld a, a                                       ; $6B6F: $7F
    nop                                           ; $6B70: $00
    nop                                           ; $6B71: $00
    ld h, b                                       ; $6B72: $60
    ld a, l                                       ; $6B73: $7D
    ldh [$FF7E], a                                ; $6B74: $E0 $7E
    rst RST_38                                    ; $6B76: $FF
    ld a, a                                       ; $6B77: $7F
    nop                                           ; $6B78: $00
    nop                                           ; $6B79: $00
    ld h, b                                       ; $6B7A: $60
    ld a, l                                       ; $6B7B: $7D
    ldh [$FF7E], a                                ; $6B7C: $E0 $7E
    ldh [$FF7E], a                                ; $6B7E: $E0 $7E
    nop                                           ; $6B80: $00
    nop                                           ; $6B81: $00
    ld h, b                                       ; $6B82: $60
    ld a, l                                       ; $6B83: $7D
    ldh [$FF7E], a                                ; $6B84: $E0 $7E
    nop                                           ; $6B86: $00
    nop                                           ; $6B87: $00
    nop                                           ; $6B88: $00
    nop                                           ; $6B89: $00
    ccf                                           ; $6B8A: $3F
    dec h                                         ; $6B8B: $25
    rst RST_38                                    ; $6B8C: $FF
    rrca                                          ; $6B8D: $0F
    nop                                           ; $6B8E: $00
    nop                                           ; $6B8F: $00
    nop                                           ; $6B90: $00
    nop                                           ; $6B91: $00
    nop                                           ; $6B92: $00
    nop                                           ; $6B93: $00
    rst RST_28                                    ; $6B94: $EF
    dec a                                         ; $6B95: $3D
    rst RST_38                                    ; $6B96: $FF
    ld a, a                                       ; $6B97: $7F
    nop                                           ; $6B98: $00
    nop                                           ; $6B99: $00
    ld h, a                                       ; $6B9A: $67
    dec l                                         ; $6B9B: $2D
    di                                            ; $6B9C: $F3
    ld e, [hl]                                    ; $6B9D: $5E
    rst RST_38                                    ; $6B9E: $FF
    ld a, a                                       ; $6B9F: $7F
    nop                                           ; $6BA0: $00
    nop                                           ; $6BA1: $00
    ld h, c                                       ; $6BA2: $61
    ld a, h                                       ; $6BA3: $7C
    ld l, e                                       ; $6BA4: $6B
    ld a, a                                       ; $6BA5: $7F
    rst RST_38                                    ; $6BA6: $FF
    ld a, a                                       ; $6BA7: $7F
    nop                                           ; $6BA8: $00
    nop                                           ; $6BA9: $00
    ld a, e                                       ; $6BAA: $7B
    inc c                                         ; $6BAB: $0C
    ccf                                           ; $6BAC: $3F
    ld l, [hl]                                    ; $6BAD: $6E
    rst RST_38                                    ; $6BAE: $FF
    ld a, a                                       ; $6BAF: $7F
    nop                                           ; $6BB0: $00
    nop                                           ; $6BB1: $00
    and e                                         ; $6BB2: $A3
    ld a, l                                       ; $6BB3: $7D
    ld h, a                                       ; $6BB4: $67
    ld a, a                                       ; $6BB5: $7F
    rst RST_38                                    ; $6BB6: $FF
    ld a, a                                       ; $6BB7: $7F
    nop                                           ; $6BB8: $00
    nop                                           ; $6BB9: $00
    rst RST_18                                    ; $6BBA: $DF
    inc [hl]                                      ; $6BBB: $34
    rst RST_38                                    ; $6BBC: $FF
    ld l, l                                       ; $6BBD: $6D
    rst RST_38                                    ; $6BBE: $FF
    ld a, a                                       ; $6BBF: $7F
    nop                                           ; $6BC0: $00
    nop                                           ; $6BC1: $00
    ld h, e                                       ; $6BC2: $63
    rra                                           ; $6BC3: $1F
    rst RST_30                                    ; $6BC4: $F7
    cpl                                           ; $6BC5: $2F
    rst RST_38                                    ; $6BC6: $FF
    ld a, a                                       ; $6BC7: $7F
    nop                                           ; $6BC8: $00
    nop                                           ; $6BC9: $00
    and e                                         ; $6BCA: $A3
    dec c                                         ; $6BCB: $0D
    db $E3                                        ; $6BCC: $E3
    rrca                                          ; $6BCD: $0F
    rst RST_38                                    ; $6BCE: $FF
    ld a, a                                       ; $6BCF: $7F
    nop                                           ; $6BD0: $00
    nop                                           ; $6BD1: $00
    ld h, l                                       ; $6BD2: $65
    inc a                                         ; $6BD3: $3C
    xor e                                         ; $6BD4: $AB
    ld a, h                                       ; $6BD5: $7C
    rst RST_38                                    ; $6BD6: $FF
    ld a, a                                       ; $6BD7: $7F
    nop                                           ; $6BD8: $00
    nop                                           ; $6BD9: $00
    and e                                         ; $6BDA: $A3
    ld c, $6B                                     ; $6BDB: $0E $6B
    cpl                                           ; $6BDD: $2F
    rst RST_38                                    ; $6BDE: $FF
    ld a, a                                       ; $6BDF: $7F
    nop                                           ; $6BE0: $00
    nop                                           ; $6BE1: $00
    xor l                                         ; $6BE2: $AD
    dec [hl]                                      ; $6BE3: $35
    rst RST_30                                    ; $6BE4: $F7
    ld e, [hl]                                    ; $6BE5: $5E
    rst RST_38                                    ; $6BE6: $FF
    ld a, a                                       ; $6BE7: $7F
    nop                                           ; $6BE8: $00
    nop                                           ; $6BE9: $00
    xor e                                         ; $6BEA: $AB
    inc c                                         ; $6BEB: $0C
    ld sp, $3F1D                                  ; $6BEC: $31 $1D $3F
    scf                                           ; $6BEF: $37
    nop                                           ; $6BF0: $00
    nop                                           ; $6BF1: $00
    ld h, e                                       ; $6BF2: $63
    ld d, $31                                     ; $6BF3: $16 $31
    dec e                                         ; $6BF5: $1D
    ccf                                           ; $6BF6: $3F
    scf                                           ; $6BF7: $37
    nop                                           ; $6BF8: $00
    nop                                           ; $6BF9: $00
    inc hl                                        ; $6BFA: $23
    ld l, l                                       ; $6BFB: $6D
    rst RST_28                                    ; $6BFC: $EF
    ld a, [hl]                                    ; $6BFD: $7E
    rst RST_38                                    ; $6BFE: $FF
    ld a, a                                       ; $6BFF: $7F
    nop                                           ; $6C00: $00
    nop                                           ; $6C01: $00
    and a                                         ; $6C02: $A7
    inc e                                         ; $6C03: $1C
    dec l                                         ; $6C04: $2D
    dec l                                         ; $6C05: $2D
    ccf                                           ; $6C06: $3F
    scf                                           ; $6C07: $37
    nop                                           ; $6C08: $00
    nop                                           ; $6C09: $00
    ld a, a                                       ; $6C0A: $7F
    inc c                                         ; $6C0B: $0C
    ld h, l                                       ; $6C0C: $65
    rla                                           ; $6C0D: $17
    ccf                                           ; $6C0E: $3F
    scf                                           ; $6C0F: $37
    ret nz                                        ; $6C10: $C0

    ld d, c                                       ; $6C11: $51
    ld [hl], e                                    ; $6C12: $73
    dec c                                         ; $6C13: $0D
    rst RST_30                                    ; $6C14: $F7
    dec e                                         ; $6C15: $1D
    ccf                                           ; $6C16: $3F
    scf                                           ; $6C17: $37
    ldh [$FF3C], a                                ; $6C18: $E0 $3C
    nop                                           ; $6C1A: $00
    nop                                           ; $6C1B: $00
    ccf                                           ; $6C1C: $3F
    ld d, l                                       ; $6C1D: $55
    rst RST_38                                    ; $6C1E: $FF
    ld a, a                                       ; $6C1F: $7F
    ldh [$FF3C], a                                ; $6C20: $E0 $3C
    nop                                           ; $6C22: $00
    nop                                           ; $6C23: $00
    ldh [rNR34], a                                ; $6C24: $E0 $1E
    rst RST_38                                    ; $6C26: $FF
    ld a, a                                       ; $6C27: $7F
    sub l                                         ; $6C28: $95
    dec e                                         ; $6C29: $1D
    nop                                           ; $6C2A: $00
    nop                                           ; $6C2B: $00
    scf                                           ; $6C2C: $37
    ld a, l                                       ; $6C2D: $7D
    rst RST_38                                    ; $6C2E: $FF
    ld a, a                                       ; $6C2F: $7F
    sub l                                         ; $6C30: $95
    dec e                                         ; $6C31: $1D
    nop                                           ; $6C32: $00
    nop                                           ; $6C33: $00
    ccf                                           ; $6C34: $3F
    inc b                                         ; $6C35: $04
    rst RST_38                                    ; $6C36: $FF
    rlca                                          ; $6C37: $07
    sub l                                         ; $6C38: $95
    dec e                                         ; $6C39: $1D
    nop                                           ; $6C3A: $00
    nop                                           ; $6C3B: $00
    ld a, a                                       ; $6C3C: $7F
    inc h                                         ; $6C3D: $24
    cp a                                          ; $6C3E: $BF
    ld a, [hl]                                    ; $6C3F: $7E
    nop                                           ; $6C40: $00
    nop                                           ; $6C41: $00
    nop                                           ; $6C42: $00
    nop                                           ; $6C43: $00
    ccf                                           ; $6C44: $3F
    ld d, l                                       ; $6C45: $55
    rst RST_38                                    ; $6C46: $FF
    ld a, a                                       ; $6C47: $7F
    nop                                           ; $6C48: $00
    nop                                           ; $6C49: $00
    rst RST_20                                    ; $6C4A: $E7
    inc e                                         ; $6C4B: $1C
    cp a                                          ; $6C4C: $BF
    inc d                                         ; $6C4D: $14
    rst RST_38                                    ; $6C4E: $FF
    rrca                                          ; $6C4F: $0F
    nop                                           ; $6C50: $00
    nop                                           ; $6C51: $00
    ld sp, $3946                                  ; $6C52: $31 $46 $39
    ld h, a                                       ; $6C55: $67
    rst RST_38                                    ; $6C56: $FF
    ld a, a                                       ; $6C57: $7F
    nop                                           ; $6C58: $00
    nop                                           ; $6C59: $00
    nop                                           ; $6C5A: $00
    nop                                           ; $6C5B: $00
    rst RST_38                                    ; $6C5C: $FF
    ld a, a                                       ; $6C5D: $7F
    ld [hl], e                                    ; $6C5E: $73
    ld c, [hl]                                    ; $6C5F: $4E
    nop                                           ; $6C60: $00
    nop                                           ; $6C61: $00
    rst RST_20                                    ; $6C62: $E7
    inc e                                         ; $6C63: $1C
    cp a                                          ; $6C64: $BF
    inc d                                         ; $6C65: $14
    rst RST_38                                    ; $6C66: $FF
    rrca                                          ; $6C67: $0F
    nop                                           ; $6C68: $00
    nop                                           ; $6C69: $00
    ld sp, $3946                                  ; $6C6A: $31 $46 $39
    ld h, a                                       ; $6C6D: $67
    rst RST_38                                    ; $6C6E: $FF
    ld a, a                                       ; $6C6F: $7F
    nop                                           ; $6C70: $00
    nop                                           ; $6C71: $00
    ld sp, $3946                                  ; $6C72: $31 $46 $39
    ld h, a                                       ; $6C75: $67
    rst RST_38                                    ; $6C76: $FF
    ld a, a                                       ; $6C77: $7F
    nop                                           ; $6C78: $00
    nop                                           ; $6C79: $00
    ld h, b                                       ; $6C7A: $60
    ld [bc], a                                    ; $6C7B: $02
    cp c                                          ; $6C7C: $B9
    dec e                                         ; $6C7D: $1D
    ld a, a                                       ; $6C7E: $7F
    ld b, a                                       ; $6C7F: $47
    nop                                           ; $6C80: $00
    nop                                           ; $6C81: $00
    ld sp, $3946                                  ; $6C82: $31 $46 $39
    ld h, a                                       ; $6C85: $67
    rst RST_38                                    ; $6C86: $FF
    ld a, a                                       ; $6C87: $7F
    nop                                           ; $6C88: $00
    nop                                           ; $6C89: $00
    ld a, h                                       ; $6C8A: $7C
    ld d, $FF                                     ; $6C8B: $16 $FF
    rla                                           ; $6C8D: $17
    rst RST_38                                    ; $6C8E: $FF
    ld a, a                                       ; $6C8F: $7F
    nop                                           ; $6C90: $00
    nop                                           ; $6C91: $00
    ld l, a                                       ; $6C92: $6F
    ld e, c                                       ; $6C93: $59
    ld a, h                                       ; $6C94: $7C
    ld l, [hl]                                    ; $6C95: $6E
    rst RST_38                                    ; $6C96: $FF
    ld a, a                                       ; $6C97: $7F
    nop                                           ; $6C98: $00
    nop                                           ; $6C99: $00
    xor c                                         ; $6C9A: $A9
    ld d, $E9                                     ; $6C9B: $16 $E9
    rla                                           ; $6C9D: $17
    rst RST_38                                    ; $6C9E: $FF
    ld a, a                                       ; $6C9F: $7F
    nop                                           ; $6CA0: $00
    nop                                           ; $6CA1: $00
    cp a                                          ; $6CA2: $BF
    inc l                                         ; $6CA3: $2C
    rst RST_38                                    ; $6CA4: $FF
    ld a, $FF                                     ; $6CA5: $3E $FF
    ld a, a                                       ; $6CA7: $7F
    nop                                           ; $6CA8: $00
    nop                                           ; $6CA9: $00
    or c                                          ; $6CAA: $B1
    dec [hl]                                      ; $6CAB: $35
    ei                                            ; $6CAC: $FB
    ld e, [hl]                                    ; $6CAD: $5E
    rst RST_38                                    ; $6CAE: $FF
    ld a, a                                       ; $6CAF: $7F
    nop                                           ; $6CB0: $00
    nop                                           ; $6CB1: $00
    db $E3                                        ; $6CB2: $E3
    ld a, h                                       ; $6CB3: $7C
    dec l                                         ; $6CB4: $2D
    ld a, a                                       ; $6CB5: $7F
    rst RST_38                                    ; $6CB6: $FF
    ld a, a                                       ; $6CB7: $7F
    nop                                           ; $6CB8: $00
    nop                                           ; $6CB9: $00
    ld a, a                                       ; $6CBA: $7F
    inc l                                         ; $6CBB: $2C
    dec a                                         ; $6CBC: $3D
    ld a, [hl]                                    ; $6CBD: $7E
    rst RST_38                                    ; $6CBE: $FF
    ld a, a                                       ; $6CBF: $7F
    nop                                           ; $6CC0: $00
    nop                                           ; $6CC1: $00
    ld e, a                                       ; $6CC2: $5F
    dec c                                         ; $6CC3: $0D
    ccf                                           ; $6CC4: $3F
    ccf                                           ; $6CC5: $3F
    rst RST_38                                    ; $6CC6: $FF
    ld a, a                                       ; $6CC7: $7F
    nop                                           ; $6CC8: $00
    nop                                           ; $6CC9: $00
    push hl                                       ; $6CCA: $E5
    dec d                                         ; $6CCB: $15
    ld l, l                                       ; $6CCC: $6D
    scf                                           ; $6CCD: $37
    rst RST_38                                    ; $6CCE: $FF
    ld a, a                                       ; $6CCF: $7F
    nop                                           ; $6CD0: $00
    nop                                           ; $6CD1: $00
    cp a                                          ; $6CD2: $BF
    dec e                                         ; $6CD3: $1D
    cp l                                          ; $6CD4: $BD
    rrca                                          ; $6CD5: $0F
    rst RST_38                                    ; $6CD6: $FF
    ld a, a                                       ; $6CD7: $7F
    nop                                           ; $6CD8: $00
    nop                                           ; $6CD9: $00
    ld l, e                                       ; $6CDA: $6B
    dec l                                         ; $6CDB: $2D
    or l                                          ; $6CDC: $B5
    ld d, [hl]                                    ; $6CDD: $56
    rst RST_38                                    ; $6CDE: $FF
    ld a, a                                       ; $6CDF: $7F
    nop                                           ; $6CE0: $00
    nop                                           ; $6CE1: $00
    ld l, e                                       ; $6CE2: $6B
    dec l                                         ; $6CE3: $2D
    or l                                          ; $6CE4: $B5
    ld d, [hl]                                    ; $6CE5: $56
    rst RST_38                                    ; $6CE6: $FF
    ld a, a                                       ; $6CE7: $7F
    nop                                           ; $6CE8: $00
    nop                                           ; $6CE9: $00
    ld l, e                                       ; $6CEA: $6B
    dec l                                         ; $6CEB: $2D
    or l                                          ; $6CEC: $B5
    ld d, [hl]                                    ; $6CED: $56
    rst RST_38                                    ; $6CEE: $FF
    ld a, a                                       ; $6CEF: $7F
    nop                                           ; $6CF0: $00
    nop                                           ; $6CF1: $00
    cp a                                          ; $6CF2: $BF
    inc d                                         ; $6CF3: $14
    ld a, a                                       ; $6CF4: $7F
    dec a                                         ; $6CF5: $3D
    rst RST_38                                    ; $6CF6: $FF
    ld a, a                                       ; $6CF7: $7F
    nop                                           ; $6CF8: $00
    nop                                           ; $6CF9: $00
    and a                                         ; $6CFA: $A7
    ld a, l                                       ; $6CFB: $7D
    cpl                                           ; $6CFC: $2F
    ld a, a                                       ; $6CFD: $7F
    rst RST_38                                    ; $6CFE: $FF
    ld a, a                                       ; $6CFF: $7F
    nop                                           ; $6D00: $00
    nop                                           ; $6D01: $00
    and a                                         ; $6D02: $A7
    ld a, l                                       ; $6D03: $7D
    rst RST_38                                    ; $6D04: $FF
    ld e, $FF                                     ; $6D05: $1E $FF
    ld a, a                                       ; $6D07: $7F
    nop                                           ; $6D08: $00
    nop                                           ; $6D09: $00
    cp a                                          ; $6D0A: $BF
    inc d                                         ; $6D0B: $14
    cpl                                           ; $6D0C: $2F
    ld a, a                                       ; $6D0D: $7F
    rst RST_38                                    ; $6D0E: $FF
    ld a, a                                       ; $6D0F: $7F
    nop                                           ; $6D10: $00
    nop                                           ; $6D11: $00
    cp c                                          ; $6D12: $B9
    dec e                                         ; $6D13: $1D
    ld a, a                                       ; $6D14: $7F
    rra                                           ; $6D15: $1F
    rst RST_38                                    ; $6D16: $FF
    ld a, a                                       ; $6D17: $7F
    nop                                           ; $6D18: $00
    nop                                           ; $6D19: $00
    cp c                                          ; $6D1A: $B9
    dec e                                         ; $6D1B: $1D
    inc sp                                        ; $6D1C: $33
    ld a, a                                       ; $6D1D: $7F
    rst RST_38                                    ; $6D1E: $FF
    ld a, a                                       ; $6D1F: $7F
    nop                                           ; $6D20: $00
    nop                                           ; $6D21: $00
    ld sp, $3315                                  ; $6D22: $31 $15 $33
    ld a, a                                       ; $6D25: $7F
    rst RST_38                                    ; $6D26: $FF
    ld a, a                                       ; $6D27: $7F
    nop                                           ; $6D28: $00
    nop                                           ; $6D29: $00
    cp a                                          ; $6D2A: $BF
    inc d                                         ; $6D2B: $14
    inc sp                                        ; $6D2C: $33
    ld a, a                                       ; $6D2D: $7F
    rst RST_38                                    ; $6D2E: $FF
    ld a, a                                       ; $6D2F: $7F
    nop                                           ; $6D30: $00
    nop                                           ; $6D31: $00
    ld a, a                                       ; $6D32: $7F
    inc e                                         ; $6D33: $1C
    ccf                                           ; $6D34: $3F
    ld l, [hl]                                    ; $6D35: $6E
    rst RST_38                                    ; $6D36: $FF
    ld a, a                                       ; $6D37: $7F
    nop                                           ; $6D38: $00
    nop                                           ; $6D39: $00
    or l                                          ; $6D3A: $B5
    ld a, l                                       ; $6D3B: $7D
    jp z, $FF2B                                   ; $6D3C: $CA $2B $FF

    ld a, a                                       ; $6D3F: $7F
    nop                                           ; $6D40: $00
    nop                                           ; $6D41: $00
    or l                                          ; $6D42: $B5
    ld a, l                                       ; $6D43: $7D
    ccf                                           ; $6D44: $3F
    ld l, [hl]                                    ; $6D45: $6E
    rst RST_38                                    ; $6D46: $FF
    ld a, e                                       ; $6D47: $7B
    nop                                           ; $6D48: $00
    nop                                           ; $6D49: $00
    ld a, a                                       ; $6D4A: $7F
    inc e                                         ; $6D4B: $1C
    ld sp, hl                                     ; $6D4C: $F9
    ld d, h                                       ; $6D4D: $54
    rst RST_38                                    ; $6D4E: $FF
    ld a, a                                       ; $6D4F: $7F
    nop                                           ; $6D50: $00
    nop                                           ; $6D51: $00
    cp l                                          ; $6D52: $BD
    ld a, h                                       ; $6D53: $7C
    ld a, [hl]                                    ; $6D54: $7E
    ld a, [hl]                                    ; $6D55: $7E
    rst RST_38                                    ; $6D56: $FF
    ld a, a                                       ; $6D57: $7F
    nop                                           ; $6D58: $00
    nop                                           ; $6D59: $00
    ld [hl], a                                    ; $6D5A: $77
    ld e, $7F                                     ; $6D5B: $1E $7F
    rlca                                          ; $6D5D: $07
    rst RST_38                                    ; $6D5E: $FF
    ld a, a                                       ; $6D5F: $7F
    nop                                           ; $6D60: $00
    nop                                           ; $6D61: $00
    ld l, e                                       ; $6D62: $6B
    dec l                                         ; $6D63: $2D

jr_02C_6D64:
    ld [hl], e                                    ; $6D64: $73
    ld c, [hl]                                    ; $6D65: $4E
    rst RST_38                                    ; $6D66: $FF
    ld a, a                                       ; $6D67: $7F
    nop                                           ; $6D68: $00
    nop                                           ; $6D69: $00
    daa                                           ; $6D6A: $27
    ld h, [hl]                                    ; $6D6B: $66
    cpl                                           ; $6D6C: $2F
    ld a, a                                       ; $6D6D: $7F
    rst RST_38                                    ; $6D6E: $FF
    ld a, a                                       ; $6D6F: $7F
    nop                                           ; $6D70: $00
    nop                                           ; $6D71: $00
    rst RST_38                                    ; $6D72: $FF
    nop                                           ; $6D73: $00
    ld a, a                                       ; $6D74: $7F
    ld h, $FF                                     ; $6D75: $26 $FF
    ld a, a                                       ; $6D77: $7F
    nop                                           ; $6D78: $00
    nop                                           ; $6D79: $00
    rst RST_38                                    ; $6D7A: $FF
    nop                                           ; $6D7B: $00
    ld a, a                                       ; $6D7C: $7F
    ld h, $FF                                     ; $6D7D: $26 $FF
    inc bc                                        ; $6D7F: $03
    nop                                           ; $6D80: $00
    nop                                           ; $6D81: $00
    rst RST_38                                    ; $6D82: $FF
    nop                                           ; $6D83: $00
    rst RST_30                                    ; $6D84: $F7
    ld l, l                                       ; $6D85: $6D
    rst RST_38                                    ; $6D86: $FF
    inc bc                                        ; $6D87: $03
    nop                                           ; $6D88: $00
    nop                                           ; $6D89: $00
    rst RST_38                                    ; $6D8A: $FF
    nop                                           ; $6D8B: $00
    rst RST_30                                    ; $6D8C: $F7
    ld l, l                                       ; $6D8D: $6D
    rst RST_38                                    ; $6D8E: $FF
    ld a, a                                       ; $6D8F: $7F
    nop                                           ; $6D90: $00
    nop                                           ; $6D91: $00
    rst RST_38                                    ; $6D92: $FF
    jr @+$01                                      ; $6D93: $18 $FF

    dec e                                         ; $6D95: $1D
    rst RST_38                                    ; $6D96: $FF
    ld a, a                                       ; $6D97: $7F
    nop                                           ; $6D98: $00
    nop                                           ; $6D99: $00
    rst RST_38                                    ; $6D9A: $FF
    jr @-$3F                                      ; $6D9B: $18 $BF

    ld l, $FF                                     ; $6D9D: $2E $FF
    ld a, a                                       ; $6D9F: $7F
    nop                                           ; $6DA0: $00
    nop                                           ; $6DA1: $00
    rst RST_38                                    ; $6DA2: $FF
    jr jr_02C_6D64                                ; $6DA3: $18 $BF

    ld l, $FF                                     ; $6DA5: $2E $FF
    inc bc                                        ; $6DA7: $03
    nop                                           ; $6DA8: $00
    nop                                           ; $6DA9: $00
    rra                                           ; $6DAA: $1F
    ld a, h                                       ; $6DAB: $7C
    rra                                           ; $6DAC: $1F
    ld a, h                                       ; $6DAD: $7C
    rst RST_38                                    ; $6DAE: $FF
    ld a, a                                       ; $6DAF: $7F
    nop                                           ; $6DB0: $00
    nop                                           ; $6DB1: $00
    and a                                         ; $6DB2: $A7
    ld c, $B5                                     ; $6DB3: $0E $B5
    ld d, [hl]                                    ; $6DB5: $56
    rst RST_38                                    ; $6DB6: $FF
    ld a, a                                       ; $6DB7: $7F
    nop                                           ; $6DB8: $00
    nop                                           ; $6DB9: $00
    and a                                         ; $6DBA: $A7
    ld c, $B5                                     ; $6DBB: $0E $B5
    ld d, [hl]                                    ; $6DBD: $56
    jp hl                                         ; $6DBE: $E9


    ld a, l                                       ; $6DBF: $7D
    nop                                           ; $6DC0: $00
    nop                                           ; $6DC1: $00
    ld [hl], e                                    ; $6DC2: $73
    ld l, l                                       ; $6DC3: $6D
    ei                                            ; $6DC4: $FB
    ld a, l                                       ; $6DC5: $7D
    rst RST_38                                    ; $6DC6: $FF
    ld a, a                                       ; $6DC7: $7F
    nop                                           ; $6DC8: $00
    nop                                           ; $6DC9: $00
    cp a                                          ; $6DCA: $BF
    ld de, $27BF                                  ; $6DCB: $11 $BF $27
    rst RST_38                                    ; $6DCE: $FF
    ld a, a                                       ; $6DCF: $7F
    nop                                           ; $6DD0: $00
    nop                                           ; $6DD1: $00
    and a                                         ; $6DD2: $A7
    ld c, $4F                                     ; $6DD3: $0E $4F
    ccf                                           ; $6DD5: $3F
    rst RST_38                                    ; $6DD6: $FF
    ld a, a                                       ; $6DD7: $7F
    nop                                           ; $6DD8: $00
    nop                                           ; $6DD9: $00
    ld [hl], l                                    ; $6DDA: $75
    ld a, l                                       ; $6DDB: $7D
    ei                                            ; $6DDC: $FB
    ld a, l                                       ; $6DDD: $7D
    rst RST_38                                    ; $6DDE: $FF
    ld a, a                                       ; $6DDF: $7F
    nop                                           ; $6DE0: $00
    nop                                           ; $6DE1: $00
    and a                                         ; $6DE2: $A7
    ld c, $FB                                     ; $6DE3: $0E $FB
    ld a, l                                       ; $6DE5: $7D
    rst RST_38                                    ; $6DE6: $FF
    ld a, a                                       ; $6DE7: $7F
    nop                                           ; $6DE8: $00
    nop                                           ; $6DE9: $00
    and a                                         ; $6DEA: $A7
    ld c, $4F                                     ; $6DEB: $0E $4F
    ccf                                           ; $6DED: $3F
    ld a, a                                       ; $6DEE: $7F
    inc c                                         ; $6DEF: $0C
    nop                                           ; $6DF0: $00
    nop                                           ; $6DF1: $00
    ei                                            ; $6DF2: $FB
    dec c                                         ; $6DF3: $0D
    ld a, e                                       ; $6DF4: $7B
    inc bc                                        ; $6DF5: $03
    rst RST_38                                    ; $6DF6: $FF
    ld a, a                                       ; $6DF7: $7F
    nop                                           ; $6DF8: $00
    nop                                           ; $6DF9: $00
    dec hl                                        ; $6DFA: $2B
    ld l, [hl]                                    ; $6DFB: $6E
    dec hl                                        ; $6DFC: $2B
    ld a, a                                       ; $6DFD: $7F
    rst RST_38                                    ; $6DFE: $FF
    ld a, a                                       ; $6DFF: $7F
    nop                                           ; $6E00: $00
    nop                                           ; $6E01: $00
    dec hl                                        ; $6E02: $2B
    ld l, [hl]                                    ; $6E03: $6E
    ld a, e                                       ; $6E04: $7B
    inc bc                                        ; $6E05: $03
    rst RST_38                                    ; $6E06: $FF
    ld a, a                                       ; $6E07: $7F
    nop                                           ; $6E08: $00
    nop                                           ; $6E09: $00
    rst RST_38                                    ; $6E0A: $FF
    inc e                                         ; $6E0B: $1C
    ld a, e                                       ; $6E0C: $7B
    inc bc                                        ; $6E0D: $03
    rst RST_38                                    ; $6E0E: $FF
    ld a, a                                       ; $6E0F: $7F
    nop                                           ; $6E10: $00
    nop                                           ; $6E11: $00
    rst RST_38                                    ; $6E12: $FF
    dec h                                         ; $6E13: $25
    rst RST_38                                    ; $6E14: $FF
    rla                                           ; $6E15: $17
    rst RST_38                                    ; $6E16: $FF
    ld a, a                                       ; $6E17: $7F
    nop                                           ; $6E18: $00
    nop                                           ; $6E19: $00
    ld a, a                                       ; $6E1A: $7F
    inc c                                         ; $6E1B: $0C
    rst RST_38                                    ; $6E1C: $FF
    rla                                           ; $6E1D: $17
    rst RST_38                                    ; $6E1E: $FF
    ld a, a                                       ; $6E1F: $7F
    nop                                           ; $6E20: $00
    nop                                           ; $6E21: $00
    rra                                           ; $6E22: $1F
    ld a, h                                       ; $6E23: $7C
    rra                                           ; $6E24: $1F
    ld a, h                                       ; $6E25: $7C
    rst RST_38                                    ; $6E26: $FF
    ld a, a                                       ; $6E27: $7F
    ld b, d                                       ; $6E28: $42
    ld [$7C1F], sp                                ; $6E29: $08 $1F $7C
    rra                                           ; $6E2C: $1F
    ld a, h                                       ; $6E2D: $7C
    rst RST_38                                    ; $6E2E: $FF
    ld a, a                                       ; $6E2F: $7F
    nop                                           ; $6E30: $00
    nop                                           ; $6E31: $00
    cp a                                          ; $6E32: $BF
    dec e                                         ; $6E33: $1D
    ccf                                           ; $6E34: $3F
    rrca                                          ; $6E35: $0F
    rst RST_38                                    ; $6E36: $FF
    ld a, a                                       ; $6E37: $7F
    nop                                           ; $6E38: $00
    nop                                           ; $6E39: $00
    ld a, a                                       ; $6E3A: $7F
    inc c                                         ; $6E3B: $0C
    ccf                                           ; $6E3C: $3F
    rrca                                          ; $6E3D: $0F
    rst RST_38                                    ; $6E3E: $FF
    ld a, a                                       ; $6E3F: $7F
    nop                                           ; $6E40: $00
    nop                                           ; $6E41: $00
    ld [hl], a                                    ; $6E42: $77
    dec c                                         ; $6E43: $0D
    ccf                                           ; $6E44: $3F
    rrca                                          ; $6E45: $0F
    rst RST_38                                    ; $6E46: $FF
    ld a, a                                       ; $6E47: $7F
    nop                                           ; $6E48: $00
    nop                                           ; $6E49: $00
    nop                                           ; $6E4A: $00
    ld a, h                                       ; $6E4B: $7C
    nop                                           ; $6E4C: $00
    ld a, h                                       ; $6E4D: $7C
    rst RST_38                                    ; $6E4E: $FF
    ld a, a                                       ; $6E4F: $7F
    nop                                           ; $6E50: $00
    nop                                           ; $6E51: $00
    cp a                                          ; $6E52: $BF
    dec e                                         ; $6E53: $1D
    ccf                                           ; $6E54: $3F
    rrca                                          ; $6E55: $0F
    rst RST_38                                    ; $6E56: $FF
    ld a, a                                       ; $6E57: $7F
    nop                                           ; $6E58: $00
    nop                                           ; $6E59: $00
    rst RST_38                                    ; $6E5A: $FF
    inc c                                         ; $6E5B: $0C
    ccf                                           ; $6E5C: $3F
    rrca                                          ; $6E5D: $0F
    rst RST_38                                    ; $6E5E: $FF
    ld a, a                                       ; $6E5F: $7F
    nop                                           ; $6E60: $00
    nop                                           ; $6E61: $00
    ld [hl], a                                    ; $6E62: $77
    dec c                                         ; $6E63: $0D
    ccf                                           ; $6E64: $3F
    rrca                                          ; $6E65: $0F
    rst RST_38                                    ; $6E66: $FF
    ld a, a                                       ; $6E67: $7F
    nop                                           ; $6E68: $00
    nop                                           ; $6E69: $00
    ld a, e                                       ; $6E6A: $7B
    ld b, l                                       ; $6E6B: $45
    ccf                                           ; $6E6C: $3F
    rrca                                          ; $6E6D: $0F
    rst RST_38                                    ; $6E6E: $FF
    ld a, a                                       ; $6E6F: $7F
    nop                                           ; $6E70: $00
    nop                                           ; $6E71: $00
    cpl                                           ; $6E72: $2F
    dec h                                         ; $6E73: $25
    dec [hl]                                      ; $6E74: $35
    ld b, [hl]                                    ; $6E75: $46
    rst RST_38                                    ; $6E76: $FF
    ld a, a                                       ; $6E77: $7F
    nop                                           ; $6E78: $00
    nop                                           ; $6E79: $00
    ld l, $6D                                     ; $6E7A: $2E $6D
    pop af                                        ; $6E7C: $F1
    ld a, [hl]                                    ; $6E7D: $7E
    rst RST_38                                    ; $6E7E: $FF
    ld a, a                                       ; $6E7F: $7F
    nop                                           ; $6E80: $00
    nop                                           ; $6E81: $00
    cpl                                           ; $6E82: $2F
    dec h                                         ; $6E83: $25
    ld a, a                                       ; $6E84: $7F
    inc d                                         ; $6E85: $14
    rst RST_38                                    ; $6E86: $FF
    ld a, a                                       ; $6E87: $7F
    nop                                           ; $6E88: $00
    nop                                           ; $6E89: $00
    ccf                                           ; $6E8A: $3F
    ld a, l                                       ; $6E8B: $7D
    cp a                                          ; $6E8C: $BF
    ld a, [hl]                                    ; $6E8D: $7E
    rst RST_38                                    ; $6E8E: $FF
    ld a, a                                       ; $6E8F: $7F
    nop                                           ; $6E90: $00
    nop                                           ; $6E91: $00
    cpl                                           ; $6E92: $2F
    dec h                                         ; $6E93: $25
    ld sp, $3956                                  ; $6E94: $31 $56 $39
    ld l, a                                       ; $6E97: $6F
    nop                                           ; $6E98: $00
    nop                                           ; $6E99: $00
    cpl                                           ; $6E9A: $2F
    dec h                                         ; $6E9B: $25
    ld sp, $FF56                                  ; $6E9C: $31 $56 $FF
    ld a, a                                       ; $6E9F: $7F
    nop                                           ; $6EA0: $00
    nop                                           ; $6EA1: $00
    rra                                           ; $6EA2: $1F
    ld a, h                                       ; $6EA3: $7C
    rra                                           ; $6EA4: $1F
    ld a, h                                       ; $6EA5: $7C
    rst RST_38                                    ; $6EA6: $FF
    ld a, a                                       ; $6EA7: $7F
    nop                                           ; $6EA8: $00
    nop                                           ; $6EA9: $00
    rra                                           ; $6EAA: $1F
    ld a, h                                       ; $6EAB: $7C
    rra                                           ; $6EAC: $1F
    ld a, h                                       ; $6EAD: $7C
    rst RST_38                                    ; $6EAE: $FF
    ld a, a                                       ; $6EAF: $7F
    nop                                           ; $6EB0: $00
    nop                                           ; $6EB1: $00
    or a                                          ; $6EB2: $B7
    ld [hl], l                                    ; $6EB3: $75
    ld a, a                                       ; $6EB4: $7F
    ld a, [hl]                                    ; $6EB5: $7E
    rst RST_38                                    ; $6EB6: $FF
    ld a, a                                       ; $6EB7: $7F
    nop                                           ; $6EB8: $00
    nop                                           ; $6EB9: $00
    ld h, a                                       ; $6EBA: $67
    dec a                                         ; $6EBB: $3D
    di                                            ; $6EBC: $F3
    ld l, [hl]                                    ; $6EBD: $6E
    rst RST_38                                    ; $6EBE: $FF
    ld a, a                                       ; $6EBF: $7F
    nop                                           ; $6EC0: $00
    nop                                           ; $6EC1: $00
    jr c, jr_02C_6EF1                             ; $6EC2: $38 $2D

    rst RST_18                                    ; $6EC4: $DF
    dec l                                         ; $6EC5: $2D
    rst RST_38                                    ; $6EC6: $FF
    ld a, a                                       ; $6EC7: $7F
    nop                                           ; $6EC8: $00
    nop                                           ; $6EC9: $00
    ld h, a                                       ; $6ECA: $67
    dec e                                         ; $6ECB: $1D
    ld a, a                                       ; $6ECC: $7F
    ld a, [hl]                                    ; $6ECD: $7E
    rst RST_38                                    ; $6ECE: $FF
    ld a, a                                       ; $6ECF: $7F
    nop                                           ; $6ED0: $00
    nop                                           ; $6ED1: $00
    or a                                          ; $6ED2: $B7
    ld [hl], l                                    ; $6ED3: $75
    ld a, a                                       ; $6ED4: $7F
    ld a, [hl]                                    ; $6ED5: $7E
    rst RST_38                                    ; $6ED6: $FF
    ld a, a                                       ; $6ED7: $7F
    nop                                           ; $6ED8: $00
    nop                                           ; $6ED9: $00
    rst RST_38                                    ; $6EDA: $FF
    inc l                                         ; $6EDB: $2C
    ld a, a                                       ; $6EDC: $7F
    ld l, $FF                                     ; $6EDD: $2E $FF
    ld a, a                                       ; $6EDF: $7F
    nop                                           ; $6EE0: $00
    nop                                           ; $6EE1: $00
    ldh [$FF03], a                                ; $6EE2: $E0 $03
    ldh [$FF03], a                                ; $6EE4: $E0 $03
    rst RST_38                                    ; $6EE6: $FF
    ld a, a                                       ; $6EE7: $7F
    nop                                           ; $6EE8: $00
    nop                                           ; $6EE9: $00
    ldh [$FF03], a                                ; $6EEA: $E0 $03
    ldh [$FF03], a                                ; $6EEC: $E0 $03
    rst RST_38                                    ; $6EEE: $FF
    ld a, a                                       ; $6EEF: $7F
    nop                                           ; $6EF0: $00

jr_02C_6EF1:
    nop                                           ; $6EF1: $00
    ccf                                           ; $6EF2: $3F
    dec e                                         ; $6EF3: $1D
    ccf                                           ; $6EF4: $3F
    ld l, $FF                                     ; $6EF5: $2E $FF
    ld a, a                                       ; $6EF7: $7F
    nop                                           ; $6EF8: $00
    nop                                           ; $6EF9: $00
    ld a, a                                       ; $6EFA: $7F
    inc c                                         ; $6EFB: $0C
    rst RST_38                                    ; $6EFC: $FF
    ld c, h                                       ; $6EFD: $4C
    rst RST_38                                    ; $6EFE: $FF
    ld a, a                                       ; $6EFF: $7F
    nop                                           ; $6F00: $00
    nop                                           ; $6F01: $00
    ld a, a                                       ; $6F02: $7F
    inc c                                         ; $6F03: $0C
    ccf                                           ; $6F04: $3F
    ld l, $FF                                     ; $6F05: $2E $FF
    ld a, a                                       ; $6F07: $7F
    nop                                           ; $6F08: $00
    nop                                           ; $6F09: $00
    ld a, a                                       ; $6F0A: $7F
    inc c                                         ; $6F0B: $0C
    rst RST_38                                    ; $6F0C: $FF
    rrca                                          ; $6F0D: $0F
    rst RST_38                                    ; $6F0E: $FF
    ld a, a                                       ; $6F0F: $7F
    nop                                           ; $6F10: $00
    nop                                           ; $6F11: $00
    ccf                                           ; $6F12: $3F
    dec e                                         ; $6F13: $1D
    ccf                                           ; $6F14: $3F
    ld l, $FF                                     ; $6F15: $2E $FF
    ld a, a                                       ; $6F17: $7F
    nop                                           ; $6F18: $00
    nop                                           ; $6F19: $00
    inc sp                                        ; $6F1A: $33
    dec d                                         ; $6F1B: $15
    ccf                                           ; $6F1C: $3F
    ld l, $FF                                     ; $6F1D: $2E $FF
    ld a, a                                       ; $6F1F: $7F
    nop                                           ; $6F20: $00
    nop                                           ; $6F21: $00
    ld a, a                                       ; $6F22: $7F
    inc c                                         ; $6F23: $0C
    ccf                                           ; $6F24: $3F
    ld l, $FF                                     ; $6F25: $2E $FF
    ld a, a                                       ; $6F27: $7F
    nop                                           ; $6F28: $00
    nop                                           ; $6F29: $00
    ld a, a                                       ; $6F2A: $7F
    inc c                                         ; $6F2B: $0C
    rst RST_38                                    ; $6F2C: $FF
    ld c, h                                       ; $6F2D: $4C
    rst RST_38                                    ; $6F2E: $FF
    ld a, a                                       ; $6F2F: $7F
    nop                                           ; $6F30: $00
    nop                                           ; $6F31: $00
    ld l, c                                       ; $6F32: $69
    ld c, $F5                                     ; $6F33: $0E $F5
    rra                                           ; $6F35: $1F
    rst RST_38                                    ; $6F36: $FF
    ld a, a                                       ; $6F37: $7F
    nop                                           ; $6F38: $00
    nop                                           ; $6F39: $00
    ld l, c                                       ; $6F3A: $69
    ld c, $FF                                     ; $6F3B: $0E $FF
    rra                                           ; $6F3D: $1F
    rst RST_38                                    ; $6F3E: $FF
    ld a, a                                       ; $6F3F: $7F
    nop                                           ; $6F40: $00
    nop                                           ; $6F41: $00
    ld l, c                                       ; $6F42: $69
    ld c, $7F                                     ; $6F43: $0E $7F
    inc e                                         ; $6F45: $1C
    rst RST_38                                    ; $6F46: $FF
    ld a, a                                       ; $6F47: $7F
    nop                                           ; $6F48: $00
    nop                                           ; $6F49: $00
    ld l, c                                       ; $6F4A: $69
    ld c, $ED                                     ; $6F4B: $0E $ED
    ld a, [hl]                                    ; $6F4D: $7E
    rst RST_38                                    ; $6F4E: $FF
    ld a, a                                       ; $6F4F: $7F
    nop                                           ; $6F50: $00
    nop                                           ; $6F51: $00
    db $E3                                        ; $6F52: $E3
    ld a, h                                       ; $6F53: $7C
    rst RST_38                                    ; $6F54: $FF
    rrca                                          ; $6F55: $0F
    rst RST_38                                    ; $6F56: $FF
    ld a, a                                       ; $6F57: $7F
    nop                                           ; $6F58: $00
    nop                                           ; $6F59: $00
    xor l                                         ; $6F5A: $AD
    dec [hl]                                      ; $6F5B: $35
    rst RST_30                                    ; $6F5C: $F7
    ld e, [hl]                                    ; $6F5D: $5E
    rst RST_38                                    ; $6F5E: $FF
    ld a, a                                       ; $6F5F: $7F
    nop                                           ; $6F60: $00
    nop                                           ; $6F61: $00
    cp a                                          ; $6F62: $BF
    dec c                                         ; $6F63: $0D
    rst RST_38                                    ; $6F64: $FF
    rrca                                          ; $6F65: $0F
    rst RST_38                                    ; $6F66: $FF
    ld a, a                                       ; $6F67: $7F
    nop                                           ; $6F68: $00
    nop                                           ; $6F69: $00
    db $E3                                        ; $6F6A: $E3
    ld c, $E3                                     ; $6F6B: $0E $E3
    ld c, e                                       ; $6F6D: $4B
    rst RST_38                                    ; $6F6E: $FF
    ld a, a                                       ; $6F6F: $7F
    ld sp, $DD00                                  ; $6F70: $31 $00 $DD
    call Call_02C_6F81                            ; $6F73: $CD $81 $6F
    ld a, $01                                     ; $6F76: $3E $01
    call Call_000_0205                            ; $6F78: $CD $05 $02
    ld b, $3C                                     ; $6F7B: $06 $3C
    ld hl, $4000                                  ; $6F7D: $21 $00 $40
    rst RST_00                                    ; $6F80: $C7

Call_02C_6F81:
    di                                            ; $6F81: $F3
    ld a, $2C                                     ; $6F82: $3E $2C
    ldh [$FFE0], a                                ; $6F84: $E0 $E0
    ld [$2000], a                                 ; $6F86: $EA $00 $20
    rst RST_10                                    ; $6F89: $D7
    xor a                                         ; $6F8A: $AF
    ldh [rBGP], a                                 ; $6F8B: $E0 $47
    ldh [rOBP0], a                                ; $6F8D: $E0 $48
    ldh [rOBP1], a                                ; $6F8F: $E0 $49
    call Call_000_13ED                            ; $6F91: $CD $ED $13
    ld hl, $C03A                                  ; $6F94: $21 $3A $C0
    ld [hl], $00                                  ; $6F97: $36 $00
    ld de, $0002                                  ; $6F99: $11 $02 $00
    call Call_000_14C0                            ; $6F9C: $CD $C0 $14
    call Call_000_0FBD                            ; $6F9F: $CD $BD $0F
    call Call_000_0FC6                            ; $6FA2: $CD $C6 $0F
    xor a                                         ; $6FA5: $AF
    ldh [$FFE4], a                                ; $6FA6: $E0 $E4
    ld a, $FC                                     ; $6FA8: $3E $FC
    ldh [$FFE2], a                                ; $6FAA: $E0 $E2
    ld hl, $70C8                                  ; $6FAC: $21 $C8 $70
    ld de, $C329                                  ; $6FAF: $11 $29 $C3
    call Call_000_124C                            ; $6FB2: $CD $4C $12
    ld hl, $C329                                  ; $6FB5: $21 $29 $C3
    ld de, $9000                                  ; $6FB8: $11 $00 $90
    call Call_000_1188                            ; $6FBB: $CD $88 $11
    ld de, $7236                                  ; $6FBE: $11 $36 $72
    ld hl, $98E2                                  ; $6FC1: $21 $E2 $98
    ld b, $10                                     ; $6FC4: $06 $10
    ld c, $03                                     ; $6FC6: $0E $03
    call Call_000_10C0                            ; $6FC8: $CD $C0 $10
    call Call_000_0F9E                            ; $6FCB: $CD $9E $0F
    xor a                                         ; $6FCE: $AF
    ldh [rWY], a                                  ; $6FCF: $E0 $4A
    ldh [rWX], a                                  ; $6FD1: $E0 $4B
    ldh [rSTAT], a                                ; $6FD3: $E0 $41
    ld a, $C3                                     ; $6FD5: $3E $C3
    rst RST_18                                    ; $6FD7: $DF
    ei                                            ; $6FD8: $FB
    call Call_000_0424                            ; $6FD9: $CD $24 $04
    ld a, $E4                                     ; $6FDC: $3E $E4
    ldh [rOBP0], a                                ; $6FDE: $E0 $48
    ld a, $FF                                     ; $6FE0: $3E $FF
    ldh [rOBP1], a                                ; $6FE2: $E0 $49
    ld a, [$C037]                                 ; $6FE4: $FA $37 $C0
    bit 7, a                                      ; $6FE7: $CB $7F
    jp z, Jump_02C_6FF1                           ; $6FE9: $CA $F1 $6F

    ld a, $93                                     ; $6FEC: $3E $93
    jp Jump_02C_6FF3                              ; $6FEE: $C3 $F3 $6F


Jump_02C_6FF1:
    ld a, $93                                     ; $6FF1: $3E $93

Jump_02C_6FF3:
    ldh [rBGP], a                                 ; $6FF3: $E0 $47
    call Call_000_147A                            ; $6FF5: $CD $7A $14
    ld a, $00                                     ; $6FF8: $3E $00
    call Call_000_135D                            ; $6FFA: $CD $5D $13
    ld hl, $C329                                  ; $6FFD: $21 $29 $C3
    ld a, $03                                     ; $7000: $3E $03
    ld [hl+], a                                   ; $7002: $22
    ld a, $14                                     ; $7003: $3E $14
    ld [hl+], a                                   ; $7005: $22
    ld a, $19                                     ; $7006: $3E $19
    ld [hl+], a                                   ; $7008: $22
    ld a, $1E                                     ; $7009: $3E $1E
    ld [hl+], a                                   ; $700B: $22
    ld bc, $0168                                  ; $700C: $01 $68 $01

Jump_02C_700F:
    call Call_02C_7027                            ; $700F: $CD $27 $70
    ldh a, [$FF99]                                ; $7012: $F0 $99
    ld d, a                                       ; $7014: $57
    ldh a, [$FFAC]                                ; $7015: $F0 $AC
    or d                                          ; $7017: $B2
    bit 7, a                                      ; $7018: $CB $7F
    jp nz, Jump_02C_7026                          ; $701A: $C2 $26 $70

    call Call_000_0424                            ; $701D: $CD $24 $04
    dec bc                                        ; $7020: $0B
    ld a, b                                       ; $7021: $78
    or c                                          ; $7022: $B1
    jp nz, Jump_02C_700F                          ; $7023: $C2 $0F $70

Jump_02C_7026:
    ret                                           ; $7026: $C9


Call_02C_7027:
    ret                                           ; $7027: $C9


    ld hl, $FF98                                  ; $7028: $21 $98 $FF
    ld d, [hl]                                    ; $702B: $56
    inc hl                                        ; $702C: $23
    ld e, [hl]                                    ; $702D: $5E
    ld hl, $C001                                  ; $702E: $21 $01 $C0
    bit 6, e                                      ; $7031: $CB $73
    jp z, Jump_02C_7054                           ; $7033: $CA $54 $70

    bit 5, [hl]                                   ; $7036: $CB $6E
    jp nz, Jump_02C_7054                          ; $7038: $C2 $54 $70

    ld a, d                                       ; $703B: $7A
    and $70                                       ; $703C: $E6 $70
    cp $70                                        ; $703E: $FE $70
    jp nz, Jump_02C_7054                          ; $7040: $C2 $54 $70

    set 5, [hl]                                   ; $7043: $CB $EE
    set 3, [hl]                                   ; $7045: $CB $DE
    push hl                                       ; $7047: $E5
    ld hl, $1B01                                  ; $7048: $21 $01 $1B
    call Call_000_1311                            ; $704B: $CD $11 $13
    ld a, $AA                                     ; $704E: $3E $AA
    call Call_000_1360                            ; $7050: $CD $60 $13
    pop hl                                        ; $7053: $E1

Jump_02C_7054:
    bit 6, e                                      ; $7054: $CB $73
    jp z, Jump_02C_7077                           ; $7056: $CA $77 $70

    bit 6, [hl]                                   ; $7059: $CB $76
    jp nz, Jump_02C_7077                          ; $705B: $C2 $77 $70

    ld a, [$C329]                                 ; $705E: $FA $29 $C3
    dec a                                         ; $7061: $3D
    ld [$C329], a                                 ; $7062: $EA $29 $C3
    jp nz, Jump_02C_7077                          ; $7065: $C2 $77 $70

    set 6, [hl]                                   ; $7068: $CB $F6
    push hl                                       ; $706A: $E5
    ld hl, $1600                                  ; $706B: $21 $00 $16
    call Call_000_1311                            ; $706E: $CD $11 $13
    ld a, $AB                                     ; $7071: $3E $AB
    call Call_000_1360                            ; $7073: $CD $60 $13
    pop hl                                        ; $7076: $E1

Jump_02C_7077:
    bit 6, e                                      ; $7077: $CB $73
    jp z, Jump_02C_709A                           ; $7079: $CA $9A $70

    bit 7, [hl]                                   ; $707C: $CB $7E
    jp nz, Jump_02C_709A                          ; $707E: $C2 $9A $70

    ld a, [$C32A]                                 ; $7081: $FA $2A $C3
    dec a                                         ; $7084: $3D
    ld [$C32A], a                                 ; $7085: $EA $2A $C3
    jp nz, Jump_02C_709A                          ; $7088: $C2 $9A $70

    set 7, [hl]                                   ; $708B: $CB $FE
    push hl                                       ; $708D: $E5
    ld hl, $1601                                  ; $708E: $21 $01 $16
    call Call_000_1311                            ; $7091: $CD $11 $13
    ld a, $AD                                     ; $7094: $3E $AD
    call Call_000_1360                            ; $7096: $CD $60 $13
    pop hl                                        ; $7099: $E1

Jump_02C_709A:
    bit 6, e                                      ; $709A: $CB $73
    jp z, Jump_02C_70C7                           ; $709C: $CA $C7 $70

    ld a, d                                       ; $709F: $7A
    and $72                                       ; $70A0: $E6 $72
    cp $72                                        ; $70A2: $FE $72
    jp nz, Jump_02C_70C7                          ; $70A4: $C2 $C7 $70

    bit 2, [hl]                                   ; $70A7: $CB $56
    jp nz, Jump_02C_70C7                          ; $70A9: $C2 $C7 $70

    ld a, [$C32C]                                 ; $70AC: $FA $2C $C3
    dec a                                         ; $70AF: $3D
    ld [$C32C], a                                 ; $70B0: $EA $2C $C3
    jp nz, Jump_02C_70C7                          ; $70B3: $C2 $C7 $70

    set 2, [hl]                                   ; $70B6: $CB $D6
    set 4, [hl]                                   ; $70B8: $CB $E6
    push hl                                       ; $70BA: $E5
    ld hl, $1101                                  ; $70BB: $21 $01 $11
    call Call_000_1311                            ; $70BE: $CD $11 $13
    ld a, $BB                                     ; $70C1: $3E $BB
    call Call_000_1360                            ; $70C3: $CD $60 $13
    pop hl                                        ; $70C6: $E1

Jump_02C_70C7:
    ret                                           ; $70C7: $C9


    jr z, @-$7E                                   ; $70C8: $28 $80

    ld a, h                                       ; $70CA: $7C
    nop                                           ; $70CB: $00
    inc bc                                        ; $70CC: $03
    inc bc                                        ; $70CD: $03
    inc bc                                        ; $70CE: $03
    inc bc                                        ; $70CF: $03
    nop                                           ; $70D0: $00
    rra                                           ; $70D1: $1F
    jr nz, jr_02C_7151                            ; $70D2: $20 $7D

    ccf                                           ; $70D4: $3F
    inc c                                         ; $70D5: $0C
    rlca                                          ; $70D6: $07
    dec b                                         ; $70D7: $05
    dec h                                         ; $70D8: $25
    ccf                                           ; $70D9: $3F
    rst RST_38                                    ; $70DA: $FF
    rlca                                          ; $70DB: $07
    rst RST_18                                    ; $70DC: $DF
    rlca                                          ; $70DD: $07
    ld b, $7E                                     ; $70DE: $06 $7E
    rlca                                          ; $70E0: $07
    rlca                                          ; $70E1: $07
    rlca                                          ; $70E2: $07
    rlca                                          ; $70E3: $07
    ld a, [hl]                                    ; $70E4: $7E
    ld e, $F8                                     ; $70E5: $1E $F8
    inc b                                         ; $70E7: $04
    db $FC                                        ; $70E8: $FC
    inc c                                         ; $70E9: $0C
    rlca                                          ; $70EA: $07
    dec b                                         ; $70EB: $05
    dec h                                         ; $70EC: $25
    ld bc, $00E5                                  ; $70ED: $01 $E5 $00
    dec a                                         ; $70F0: $3D
    and $40                                       ; $70F1: $E6 $40
    ld a, a                                       ; $70F3: $7F
    xor l                                         ; $70F4: $AD
    add b                                         ; $70F5: $80
    inc c                                         ; $70F6: $0C
    di                                            ; $70F7: $F3
    inc b                                         ; $70F8: $04
    rst RST_00                                    ; $70F9: $C7
    nop                                           ; $70FA: $00
    ld c, d                                       ; $70FB: $4A
    inc bc                                        ; $70FC: $03
    ld [bc], a                                    ; $70FD: $02
    inc c                                         ; $70FE: $0C
    inc b                                         ; $70FF: $04
    rst RST_18                                    ; $7100: $DF
    inc c                                         ; $7101: $0C
    inc d                                         ; $7102: $14
    rlca                                          ; $7103: $07
    ld [hl], h                                    ; $7104: $74
    inc c                                         ; $7105: $0C
    inc b                                         ; $7106: $04
    inc c                                         ; $7107: $0C
    ld b, [hl]                                    ; $7108: $46
    sbc c                                         ; $7109: $99
    dec b                                         ; $710A: $05
    di                                            ; $710B: $F3
    inc c                                         ; $710C: $0C
    inc b                                         ; $710D: $04
    inc c                                         ; $710E: $0C
    pop hl                                        ; $710F: $E1
    ld [de], a                                    ; $7110: $12
    inc c                                         ; $7111: $0C
    rst RST_20                                    ; $7112: $E7
    inc b                                         ; $7113: $04
    inc c                                         ; $7114: $0C
    inc d                                         ; $7115: $14
    ret nz                                        ; $7116: $C0

    ld hl, $0281                                  ; $7117: $21 $81 $02
    and h                                         ; $711A: $A4
    cp $00                                        ; $711B: $FE $00
    dec h                                         ; $711D: $25
    call z, Call_000_040C                         ; $711E: $CC $0C $04
    inc c                                         ; $7121: $0C
    inc d                                         ; $7122: $14
    ldh [rBGP], a                                 ; $7123: $E0 $47
    jr nz, jr_02C_7158                            ; $7125: $20 $31

    inc a                                         ; $7127: $3C
    ld b, d                                       ; $7128: $42
    ld a, [hl]                                    ; $7129: $7E
    inc c                                         ; $712A: $0C
    rlca                                          ; $712B: $07
    rlca                                          ; $712C: $07
    ld sp, hl                                     ; $712D: $F9
    dec b                                         ; $712E: $05
    ld c, h                                       ; $712F: $4C
    ld b, h                                       ; $7130: $44
    ld c, h                                       ; $7131: $4C
    inc c                                         ; $7132: $0C
    ldh a, [rNR10]                                ; $7133: $F0 $10
    inc c                                         ; $7135: $0C
    rst RST_20                                    ; $7136: $E7
    inc b                                         ; $7137: $04
    inc c                                         ; $7138: $0C
    inc d                                         ; $7139: $14
    ld hl, sp+$08                                 ; $713A: $F8 $08
    inc c                                         ; $713C: $0C
    inc b                                         ; $713D: $04
    inc c                                         ; $713E: $0C
    rst RST_08                                    ; $713F: $CF
    ld c, a                                       ; $7140: $4F
    dec b                                         ; $7141: $05
    ld bc, $0C7F                                  ; $7142: $01 $7F $0C
    rlca                                          ; $7145: $07
    cpl                                           ; $7146: $2F
    ld bc, $076E                                  ; $7147: $01 $6E $07
    dec b                                         ; $714A: $05
    ld e, h                                       ; $714B: $5C
    rrca                                          ; $714C: $0F
    inc c                                         ; $714D: $0C
    inc b                                         ; $714E: $04
    add h                                         ; $714F: $84
    rra                                           ; $7150: $1F

jr_02C_7151:
    rst RST_28                                    ; $7151: $EF
    inc c                                         ; $7152: $0C
    inc b                                         ; $7153: $04
    xor h                                         ; $7154: $AC
    ld a, $64                                     ; $7155: $3E $64
    dec a                                         ; $7157: $3D

jr_02C_7158:
    cp l                                          ; $7158: $BD
    inc b                                         ; $7159: $04
    rst RST_28                                    ; $715A: $EF
    inc e                                         ; $715B: $1C
    call nc, $800C                                ; $715C: $D4 $0C $80
    ld hl, $380A                                  ; $715F: $21 $0A $38
    nop                                           ; $7162: $00
    add l                                         ; $7163: $85
    ld b, h                                       ; $7164: $44
    ld b, b                                       ; $7165: $40
    ld a, h                                       ; $7166: $7C
    ld [bc], a                                    ; $7167: $02
    db $FC                                        ; $7168: $FC
    db $ED                                        ; $7169: $ED
    inc b                                         ; $716A: $04
    dec b                                         ; $716B: $05
    db $DB                                        ; $716C: $DB
    dec d                                         ; $716D: $15
    inc h                                         ; $716E: $24
    add d                                         ; $716F: $82
    dec [hl]                                      ; $7170: $35
    ld c, l                                       ; $7171: $4D
    ccf                                           ; $7172: $3F
    inc c                                         ; $7173: $0C
    rst RST_28                                    ; $7174: $EF
    db $E3                                        ; $7175: $E3
    rlca                                          ; $7176: $07
    rst RST_38                                    ; $7177: $FF
    ld bc, $03FD                                  ; $7178: $01 $FD $03
    rst RST_38                                    ; $717B: $FF
    inc c                                         ; $717C: $0C
    rlca                                          ; $717D: $07
    sbc a                                         ; $717E: $9F
    dec b                                         ; $717F: $05
    dec bc                                        ; $7180: $0B
    inc c                                         ; $7181: $0C
    cp b                                          ; $7182: $B8
    xor h                                         ; $7183: $AC
    jr nc, jr_02C_718C                            ; $7184: $30 $06

    dec d                                         ; $7186: $15
    rst RST_38                                    ; $7187: $FF
    dec h                                         ; $7188: $25
    ld [hl], h                                    ; $7189: $74
    db $F4                                        ; $718A: $F4
    dec a                                         ; $718B: $3D

jr_02C_718C:
    dec c                                         ; $718C: $0D
    call z, $82C4                                 ; $718D: $CC $C4 $82
    reti                                          ; $7190: $D9


    ld bc, $C01C                                  ; $7191: $01 $1C $C0
    ld [$2004], sp                                ; $7194: $08 $04 $20
    ldh [$FF0C], a                                ; $7197: $E0 $0C
    rrca                                          ; $7199: $0F
    ldh a, [rNR10]                                ; $719A: $F0 $10
    pop af                                        ; $719C: $F1
    ld de, $040C                                  ; $719D: $11 $0C $04
    inc c                                         ; $71A0: $0C
    inc d                                         ; $71A1: $14
    inc d                                         ; $71A2: $14
    di                                            ; $71A3: $F3
    ld [de], a                                    ; $71A4: $12
    pop hl                                        ; $71A5: $E1
    add h                                         ; $71A6: $84
    jp $C73C                                      ; $71A7: $C3 $3C $C7


    inc b                                         ; $71AA: $04
    sub b                                         ; $71AB: $90
    and h                                         ; $71AC: $A4
    add h                                         ; $71AD: $84
    rlca                                          ; $71AE: $07
    ld c, h                                       ; $71AF: $4C
    ld a, [hl]                                    ; $71B0: $7E
    ld b, d                                       ; $71B1: $42
    rst RST_20                                    ; $71B2: $E7
    and l                                         ; $71B3: $A5
    scf                                           ; $71B4: $37
    ei                                            ; $71B5: $FB
    ld b, [hl]                                    ; $71B6: $46
    ld [$B91C], sp                                ; $71B7: $08 $1C $B9
    inc b                                         ; $71BA: $04
    inc e                                         ; $71BB: $1C
    ld h, $F8                                     ; $71BC: $26 $F8
    dec [hl]                                      ; $71BE: $35
    inc b                                         ; $71BF: $04
    ld b, l                                       ; $71C0: $45
    rlca                                          ; $71C1: $07
    rlca                                          ; $71C2: $07
    ld bc, $403F                                  ; $71C3: $01 $3F $40
    sbc a                                         ; $71C6: $9F
    jp hl                                         ; $71C7: $E9


    rrca                                          ; $71C8: $0F
    ld [$048C], sp                                ; $71C9: $08 $8C $04
    inc c                                         ; $71CC: $0C
    dec d                                         ; $71CD: $15
    call z, Call_000_1F76                         ; $71CE: $CC $76 $1F
    inc c                                         ; $71D1: $0C
    inc b                                         ; $71D2: $04
    call nz, Call_000_39FF                        ; $71D3: $C4 $FF $39
    nop                                           ; $71D6: $00
    jp nc, $509A                                  ; $71D7: $D2 $9A $50

    sbc $21                                       ; $71DA: $DE $21
    dec e                                         ; $71DC: $1D
    dec b                                         ; $71DD: $05
    cp a                                          ; $71DE: $BF
    inc b                                         ; $71DF: $04
    inc c                                         ; $71E0: $0C
    ld h, e                                       ; $71E1: $63
    sub d                                         ; $71E2: $92
    ld a, [hl-]                                   ; $71E3: $3A
    nop                                           ; $71E4: $00
    db $FC                                        ; $71E5: $FC
    inc b                                         ; $71E6: $04
    ld hl, sp+$04                                 ; $71E7: $F8 $04
    inc c                                         ; $71E9: $0C
    and a                                         ; $71EA: $A7
    dec d                                         ; $71EB: $15
    ld [bc], a                                    ; $71EC: $02
    cp l                                          ; $71ED: $BD
    ld a, $41                                     ; $71EE: $3E $41
    ld l, b                                       ; $71F0: $68
    ld a, $E7                                     ; $71F1: $3E $E7
    adc $07                                       ; $71F3: $CE $07
    dec b                                         ; $71F5: $05
    cp $80                                        ; $71F6: $FE $80
    ld d, l                                       ; $71F8: $55
    dec a                                         ; $71F9: $3D
    ld d, h                                       ; $71FA: $54
    ld bc, $DDF9                                  ; $71FB: $01 $F9 $DD
    db $ED                                        ; $71FE: $ED
    db $FD                                        ; $71FF: $FD
    inc b                                         ; $7200: $04
    inc c                                         ; $7201: $0C
    rlca                                          ; $7202: $07
    ld [$FD04], sp                                ; $7203: $08 $04 $FD
    ld a, [hl]                                    ; $7206: $7E
    inc e                                         ; $7207: $1C
    dec d                                         ; $7208: $15
    inc b                                         ; $7209: $04
    inc c                                         ; $720A: $0C
    ld h, h                                       ; $720B: $64
    adc a                                         ; $720C: $8F
    inc a                                         ; $720D: $3C
    rla                                           ; $720E: $17
    sbc a                                         ; $720F: $9F
    ld b, b                                       ; $7210: $40
    rst RST_18                                    ; $7211: $DF
    ld e, h                                       ; $7212: $5C
    rst RST_38                                    ; $7213: $FF
    cp a                                          ; $7214: $BF
    rlca                                          ; $7215: $07
    rlca                                          ; $7216: $07
    rst RST_38                                    ; $7217: $FF
    ld b, $BF                                     ; $7218: $06 $BF
    cp h                                          ; $721A: $BC
    ld e, h                                       ; $721B: $5C
    rst RST_00                                    ; $721C: $C7
    rst RST_00                                    ; $721D: $C7
    rst RST_00                                    ; $721E: $C7
    cp a                                          ; $721F: $BF
    rst RST_18                                    ; $7220: $DF
    cp [hl]                                       ; $7221: $BE
    dec d                                         ; $7222: $15
    sub b                                         ; $7223: $90
    cp h                                          ; $7224: $BC
    inc c                                         ; $7225: $0C
    cp a                                          ; $7226: $BF
    ld bc, $3C8C                                  ; $7227: $01 $8C $3C
    inc b                                         ; $722A: $04
    ld hl, sp+$04                                 ; $722B: $F8 $04
    inc c                                         ; $722D: $0C
    and [hl]                                      ; $722E: $A6
    or l                                          ; $722F: $B5
    ccf                                           ; $7230: $3F
    ld b, c                                       ; $7231: $41
    ret nz                                        ; $7232: $C0

    and l                                         ; $7233: $A5
    dec a                                         ; $7234: $3D
    nop                                           ; $7235: $00
    nop                                           ; $7236: $00
    ld bc, $0200                                  ; $7237: $01 $00 $02
    nop                                           ; $723A: $00
    inc b                                         ; $723B: $04
    nop                                           ; $723C: $00
    dec b                                         ; $723D: $05
    nop                                           ; $723E: $00
    ld [$0900], sp                                ; $723F: $08 $00 $09
    nop                                           ; $7242: $00
    inc c                                         ; $7243: $0C
    nop                                           ; $7244: $00
    dec c                                         ; $7245: $0D
    nop                                           ; $7246: $00
    dec b                                         ; $7247: $05
    nop                                           ; $7248: $00
    ld [$0F00], sp                                ; $7249: $08 $00 $0F
    nop                                           ; $724C: $00
    stop                                          ; $724D: $10 $00
    ld [de], a                                    ; $724F: $12
    nop                                           ; $7250: $00
    dec b                                         ; $7251: $05
    nop                                           ; $7252: $00
    ld [$1400], sp                                ; $7253: $08 $00 $14
    nop                                           ; $7256: $00
    nop                                           ; $7257: $00
    nop                                           ; $7258: $00
    inc bc                                        ; $7259: $03
    nop                                           ; $725A: $00
    ld b, $00                                     ; $725B: $06 $00
    rlca                                          ; $725D: $07
    nop                                           ; $725E: $00
    ld a, [bc]                                    ; $725F: $0A
    nop                                           ; $7260: $00
    dec bc                                        ; $7261: $0B
    nop                                           ; $7262: $00
    ld c, $00                                     ; $7263: $0E $00
    ld b, $00                                     ; $7265: $06 $00
    rlca                                          ; $7267: $07
    nop                                           ; $7268: $00
    ld a, [bc]                                    ; $7269: $0A
    nop                                           ; $726A: $00
    inc bc                                        ; $726B: $03
    nop                                           ; $726C: $00
    ld de, $1300                                  ; $726D: $11 $00 $13
    nop                                           ; $7270: $00
    rlca                                          ; $7271: $07
    nop                                           ; $7272: $00
    ld a, [bc]                                    ; $7273: $0A
    nop                                           ; $7274: $00
    nop                                           ; $7275: $00
    nop                                           ; $7276: $00
    nop                                           ; $7277: $00
    nop                                           ; $7278: $00
    dec d                                         ; $7279: $15
    nop                                           ; $727A: $00
    ld d, $00                                     ; $727B: $16 $00
    rla                                           ; $727D: $17
    nop                                           ; $727E: $00
    jr jr_02C_7281                                ; $727F: $18 $00

jr_02C_7281:
    add hl, de                                    ; $7281: $19
    nop                                           ; $7282: $00
    ld a, [de]                                    ; $7283: $1A
    nop                                           ; $7284: $00
    dec de                                        ; $7285: $1B
    nop                                           ; $7286: $00
    rla                                           ; $7287: $17
    nop                                           ; $7288: $00
    jr jr_02C_728B                                ; $7289: $18 $00

jr_02C_728B:
    inc e                                         ; $728B: $1C
    nop                                           ; $728C: $00
    dec e                                         ; $728D: $1D
    nop                                           ; $728E: $00
    ld e, $00                                     ; $728F: $1E $00
    rla                                           ; $7291: $17
    nop                                           ; $7292: $00
    rra                                           ; $7293: $1F
    nop                                           ; $7294: $00
    nop                                           ; $7295: $00
    ld hl, $7A4A                                  ; $7296: $21 $4A $7A
    ld de, $C339                                  ; $7299: $11 $39 $C3
    call Call_000_124C                            ; $729C: $CD $4C $12
    ld hl, $C339                                  ; $729F: $21 $39 $C3
    ld de, $8000                                  ; $72A2: $11 $00 $80
    ld b, $38                                     ; $72A5: $06 $38
    call Call_000_1188                            ; $72A7: $CD $88 $11
    ld hl, $7BF2                                  ; $72AA: $21 $F2 $7B
    ld de, $C339                                  ; $72AD: $11 $39 $C3
    call Call_000_124C                            ; $72B0: $CD $4C $12
    ld hl, $C339                                  ; $72B3: $21 $39 $C3
    ld de, $8380                                  ; $72B6: $11 $80 $83
    ld b, $1C                                     ; $72B9: $06 $1C
    call Call_000_1188                            ; $72BB: $CD $88 $11
    ld hl, $793E                                  ; $72BE: $21 $3E $79
    ld de, $C339                                  ; $72C1: $11 $39 $C3
    call Call_000_124C                            ; $72C4: $CD $4C $12
    ld de, $C339                                  ; $72C7: $11 $39 $C3
    ld hl, $9C00                                  ; $72CA: $21 $00 $9C
    ld b, $14                                     ; $72CD: $06 $14
    ld c, $12                                     ; $72CF: $0E $12
    call Call_000_10C0                            ; $72D1: $CD $C0 $10
    ld hl, $7306                                  ; $72D4: $21 $06 $73
    ld de, $C339                                  ; $72D7: $11 $39 $C3
    call Call_000_124C                            ; $72DA: $CD $4C $12
    ld hl, $C339                                  ; $72DD: $21 $39 $C3
    ld de, $9000                                  ; $72E0: $11 $00 $90
    ld b, $80                                     ; $72E3: $06 $80
    call Call_000_1188                            ; $72E5: $CD $88 $11
    ld de, $8800                                  ; $72E8: $11 $00 $88
    ld b, $80                                     ; $72EB: $06 $80
    call Call_000_1188                            ; $72ED: $CD $88 $11
    ret                                           ; $72F0: $C9


    ld hl, $7306                                  ; $72F1: $21 $06 $73
    ld de, $C339                                  ; $72F4: $11 $39 $C3
    call Call_000_124C                            ; $72F7: $CD $4C $12
    ld hl, $C339                                  ; $72FA: $21 $39 $C3
    ld de, $9000                                  ; $72FD: $11 $00 $90
    ld b, $80                                     ; $7300: $06 $80
    call Call_000_11C2                            ; $7302: $CD $C2 $11
    ret                                           ; $7305: $C9


    or b                                          ; $7306: $B0
    ld b, b                                       ; $7307: $40
    ld a, [hl]                                    ; $7308: $7E
    nop                                           ; $7309: $00
    rlca                                          ; $730A: $07
    rlca                                          ; $730B: $07
    rlca                                          ; $730C: $07
    rlca                                          ; $730D: $07
    rlca                                          ; $730E: $07

jr_02C_730F:
    ld bc, $8110                                  ; $730F: $01 $10 $81
    nop                                           ; $7312: $00
    inc e                                         ; $7313: $1C
    jr jr_02C_7335                                ; $7314: $18 $1F

    inc c                                         ; $7316: $0C
    rrca                                          ; $7317: $0F
    ld c, $08                                     ; $7318: $0E $08
    ld d, [hl]                                    ; $731A: $56
    ld b, $02                                     ; $731B: $06 $02
    inc bc                                        ; $731D: $03
    ld [bc], a                                    ; $731E: $02
    ld bc, $A802                                  ; $731F: $01 $02 $A8
    ret nz                                        ; $7322: $C0

    xor l                                         ; $7323: $AD
    ld [$08F0], sp                                ; $7324: $08 $F0 $08
    inc a                                         ; $7327: $3C
    jr nz, @-$66                                  ; $7328: $20 $98

    ld [hl], b                                    ; $732A: $70
    ld l, b                                       ; $732B: $68
    ld c, a                                       ; $732C: $4F
    ld a, h                                       ; $732D: $7C
    jr nc, @-$3F                                  ; $732E: $30 $BF

    add b                                         ; $7330: $80
    add hl, bc                                    ; $7331: $09
    jr nz, jr_02C_733B                            ; $7332: $20 $07

    cp [hl]                                       ; $7334: $BE

jr_02C_7335:
    push de                                       ; $7335: $D5
    ld [hl], a                                    ; $7336: $77
    nop                                           ; $7337: $00
    ld bc, $0708                                  ; $7338: $01 $08 $07

jr_02C_733B:
    ld [$201E], sp                                ; $733B: $08 $1E $20
    ld [hl], b                                    ; $733E: $70
    ld a, b                                       ; $733F: $78
    dec sp                                        ; $7340: $3B
    db $10                                        ; $7341: $10
    ld a, [hl-]                                   ; $7342: $3A
    dec b                                         ; $7343: $05
    ldh [rNR31], a                                ; $7344: $E0 $1B

jr_02C_7346:
    add b                                         ; $7346: $80
    ld d, l                                       ; $7347: $55
    ld a, e                                       ; $7348: $7B
    ld d, b                                       ; $7349: $50
    or $08                                        ; $734A: $F6 $08
    ld b, b                                       ; $734C: $40
    jr z, jr_02C_730F                             ; $734D: $28 $C0

    jr jr_02C_7346                                ; $734F: $18 $F5

    db $10                                        ; $7351: $10
    inc c                                         ; $7352: $0C
    rlca                                          ; $7353: $07
    dec b                                         ; $7354: $05
    ld bc, $0304                                  ; $7355: $01 $04 $03
    nop                                           ; $7358: $00
    ld h, l                                       ; $7359: $65
    rst RST_18                                    ; $735A: $DF
    ldh a, [$FF0D]                                ; $735B: $F0 $0D
    cp a                                          ; $735D: $BF
    add b                                         ; $735E: $80
    dec bc                                        ; $735F: $0B
    ld a, a                                       ; $7360: $7F
    cp b                                          ; $7361: $B8
    jp nc, Jump_000_0189                          ; $7362: $D2 $89 $01

    ld b, $04                                     ; $7365: $06 $04
    inc c                                         ; $7367: $0C
    dec c                                         ; $7368: $0D
    add hl, bc                                    ; $7369: $09
    jr jr_02C_73D5                                ; $736A: $18 $69

    dec de                                        ; $736C: $1B
    adc c                                         ; $736D: $89
    add hl, bc                                    ; $736E: $09
    rst RST_38                                    ; $736F: $FF
    ld [$55AA], sp                                ; $7370: $08 $AA $55
    nop                                           ; $7373: $00
    db $EB                                        ; $7374: $EB
    db $10                                        ; $7375: $10
    ld [hl-], a                                   ; $7376: $32
    ld a, [bc]                                    ; $7377: $0A
    ldh a, [$FFE8]                                ; $7378: $F0 $E8
    db $FC                                        ; $737A: $FC
    ld b, l                                       ; $737B: $45
    ld [$FE5A], sp                                ; $737C: $08 $5A $FE
    ld a, [bc]                                    ; $737F: $0A
    db $FD                                        ; $7380: $FD
    ld [$C000], sp                                ; $7381: $08 $00 $C0
    ld a, [bc]                                    ; $7384: $0A
    ld e, b                                       ; $7385: $58
    nop                                           ; $7386: $00
    jr nz, @+$80                                  ; $7387: $20 $7E

Call_02C_7389:
    ld h, b                                       ; $7389: $60
    daa                                           ; $738A: $27
    ret c                                         ; $738B: $D8

    ld b, c                                       ; $738C: $41
    sbc $40                                       ; $738D: $DE $40
    inc h                                         ; $738F: $24
    cp l                                          ; $7390: $BD
    add b                                         ; $7391: $80
    adc c                                         ; $7392: $89
    ei                                            ; $7393: $FB
    ld bc, $A609                                  ; $7394: $01 $09 $A6
    ld d, d                                       ; $7397: $52
    add hl, bc                                    ; $7398: $09
    ld d, [hl]                                    ; $7399: $56
    and d                                         ; $739A: $A2
    inc c                                         ; $739B: $0C
    push hl                                       ; $739C: $E5
    add hl, bc                                    ; $739D: $09
    inc e                                         ; $739E: $1C
    call nz, Call_02C_7389                        ; $739F: $C4 $89 $73
    ld a, e                                       ; $73A2: $7B
    adc b                                         ; $73A3: $88
    add hl, bc                                    ; $73A4: $09
    ld a, b                                       ; $73A5: $78
    ld d, c                                       ; $73A6: $51
    ld d, l                                       ; $73A7: $55
    ld a, b                                       ; $73A8: $78
    jr nz, jr_02C_740A                            ; $73A9: $20 $5F

    rst RST_28                                    ; $73AB: $EF
    add hl, bc                                    ; $73AC: $09
    db $10                                        ; $73AD: $10
    db $10                                        ; $73AE: $10
    rlca                                          ; $73AF: $07
    nop                                           ; $73B0: $00
    cp b                                          ; $73B1: $B8
    ld [$E056], sp                                ; $73B2: $08 $56 $E0
    ld [$2078], sp                                ; $73B5: $08 $78 $20
    dec de                                        ; $73B8: $1B
    ld [hl], a                                    ; $73B9: $77
    xor a                                         ; $73BA: $AF
    db $EC                                        ; $73BB: $EC
    ld [$DC07], sp                                ; $73BC: $08 $07 $DC
    inc b                                         ; $73BF: $04
    db $DD                                        ; $73C0: $DD
    ld [$0DBC], sp                                ; $73C1: $08 $BC $0D
    dec a                                         ; $73C4: $3D
    ld [hl], $8C                                  ; $73C5: $36 $8C
    ld l, h                                       ; $73C7: $6C
    jr jr_02C_73D3                                ; $73C8: $18 $09

    call z, $8808                                 ; $73CA: $CC $08 $88
    ldh a, [$FFA0]                                ; $73CD: $F0 $A0
    ld [$A07E], sp                                ; $73CF: $08 $7E $A0
    rrca                                          ; $73D2: $0F

jr_02C_73D3:
    and b                                         ; $73D3: $A0
    ld d, c                                       ; $73D4: $51

jr_02C_73D5:
    ld d, h                                       ; $73D5: $54
    xor d                                         ; $73D6: $AA
    or h                                          ; $73D7: $B4

jr_02C_73D8:
    jr c, @+$01                                   ; $73D8: $38 $FF

    inc c                                         ; $73DA: $0C
    inc bc                                        ; $73DB: $03
    ret nz                                        ; $73DC: $C0

    ld [$01F8], sp                                ; $73DD: $08 $F8 $01
    ld c, [hl]                                    ; $73E0: $4E
    ld a, $08                                     ; $73E1: $3E $08
    add $03                                       ; $73E3: $C6 $03
    jr z, jr_02C_73F0                             ; $73E5: $28 $09

    ld [hl], e                                    ; $73E7: $73
    ld b, b                                       ; $73E8: $40
    ld a, e                                       ; $73E9: $7B
    ld a, a                                       ; $73EA: $7F
    add b                                         ; $73EB: $80
    cp b                                          ; $73EC: $B8
    ld [$DE01], sp                                ; $73ED: $08 $01 $DE

jr_02C_73F0:
    dec bc                                        ; $73F0: $0B
    ld a, e                                       ; $73F1: $7B
    ld [hl], h                                    ; $73F2: $74
    add b                                         ; $73F3: $80
    ld [$0B38], sp                                ; $73F4: $08 $38 $0B
    rra                                           ; $73F7: $1F
    ld [$F03F], sp                                ; $73F8: $08 $3F $F0
    ld [hl], e                                    ; $73FB: $73
    jr nc, jr_02C_7479                            ; $73FC: $30 $7B

    ld [bc], a                                    ; $73FE: $02
    ld c, b                                       ; $73FF: $48
    ld b, b                                       ; $7400: $40
    ld a, a                                       ; $7401: $7F
    ld [$DB70], sp                                ; $7402: $08 $70 $DB
    ld [$1EE9], sp                                ; $7405: $08 $E9 $1E
    ld a, [hl]                                    ; $7408: $7E
    nop                                           ; $7409: $00

jr_02C_740A:
    add b                                         ; $740A: $80
    add hl, bc                                    ; $740B: $09
    adc b                                         ; $740C: $88
    ret nc                                        ; $740D: $D0

    add hl, bc                                    ; $740E: $09
    ld c, e                                       ; $740F: $4B
    ld bc, $3106                                  ; $7410: $01 $06 $31
    pop bc                                        ; $7413: $C1
    ld h, c                                       ; $7414: $61
    add c                                         ; $7415: $81
    jr nz, jr_02C_73D8                            ; $7416: $20 $C0

    ccf                                           ; $7418: $3F
    ld [hl], c                                    ; $7419: $71
    inc b                                         ; $741A: $04
    rlca                                          ; $741B: $07
    ld [de], a                                    ; $741C: $12
    ld b, $0A                                     ; $741D: $06 $0A
    ld a, [bc]                                    ; $741F: $0A
    ld [hl], d                                    ; $7420: $72
    inc bc                                        ; $7421: $03
    pop hl                                        ; $7422: $E1
    dec de                                        ; $7423: $1B
    ld l, b                                       ; $7424: $68
    ld a, l                                       ; $7425: $7D
    ld h, b                                       ; $7426: $60
    db $FD                                        ; $7427: $FD
    add d                                         ; $7428: $82
    ld [$E087], sp                                ; $7429: $08 $87 $E0
    sbc a                                         ; $742C: $9F
    add b                                         ; $742D: $80
    cp a                                          ; $742E: $BF
    ld [$7AAA], sp                                ; $742F: $08 $AA $7A
    sub l                                         ; $7432: $95
    nop                                           ; $7433: $00
    db $10                                        ; $7434: $10
    ld [hl-], a                                   ; $7435: $32
    nop                                           ; $7436: $00
    rst RST_38                                    ; $7437: $FF
    ld [$FBFE], sp                                ; $7438: $08 $FE $FB
    adc b                                         ; $743B: $88
    add hl, bc                                    ; $743C: $09
    jr z, jr_02C_7447                             ; $743D: $28 $08

    ld h, b                                       ; $743F: $60
    ld d, l                                       ; $7440: $55
    nop                                           ; $7441: $00
    db $10                                        ; $7442: $10
    push de                                       ; $7443: $D5
    ld [hl-], a                                   ; $7444: $32
    ld [de], a                                    ; $7445: $12
    rlca                                          ; $7446: $07

jr_02C_7447:
    ld hl, sp+$0F                                 ; $7447: $F8 $0F
    sbc b                                         ; $7449: $98
    ld [hl], a                                    ; $744A: $77
    jr z, @+$58                                   ; $744B: $28 $56

    rst RST_30                                    ; $744D: $F7
    ld [$0A7B], sp                                ; $744E: $08 $7B $0A
    cp l                                          ; $7451: $BD
    ld c, b                                       ; $7452: $48
    nop                                           ; $7453: $00
    ret nz                                        ; $7454: $C0

    ld d, a                                       ; $7455: $57
    or $28                                        ; $7456: $F6 $28
    db $EC                                        ; $7458: $EC
    ld a, [bc]                                    ; $7459: $0A
    ret c                                         ; $745A: $D8

    ld a, [bc]                                    ; $745B: $0A
    add hl, hl                                    ; $745C: $29
    ld e, c                                       ; $745D: $59
    ld c, [hl]                                    ; $745E: $4E
    inc bc                                        ; $745F: $03
    ld [$40FF], sp                                ; $7460: $08 $FF $40
    db $10                                        ; $7463: $10
    add hl, de                                    ; $7464: $19
    ld [$76AA], sp                                ; $7465: $08 $AA $76
    ld d, l                                       ; $7468: $55
    nop                                           ; $7469: $00
    db $10                                        ; $746A: $10
    ld [hl-], a                                   ; $746B: $32
    ld a, a                                       ; $746C: $7F
    add hl, bc                                    ; $746D: $09
    inc hl                                        ; $746E: $23
    or b                                          ; $746F: $B0
    and c                                         ; $7470: $A1
    ld [$A898], sp                                ; $7471: $08 $98 $A8
    ld c, h                                       ; $7474: $4C

jr_02C_7475:
    and b                                         ; $7475: $A0
    inc c                                         ; $7476: $0C
    ldh [$FF09], a                                ; $7477: $E0 $09

jr_02C_7479:
    ld e, $18                                     ; $7479: $1E $18
    ret nz                                        ; $747B: $C0

    add b                                         ; $747C: $80
    ld e, b                                       ; $747D: $58
    add hl, bc                                    ; $747E: $09
    rlca                                          ; $747F: $07
    dec b                                         ; $7480: $05
    ld bc, $02A9                                  ; $7481: $01 $A9 $02
    inc bc                                        ; $7484: $03
    ld [bc], a                                    ; $7485: $02
    ld b, $04                                     ; $7486: $06 $04
    jr jr_02C_74A5                                ; $7488: $18 $1B

    add hl, bc                                    ; $748A: $09
    dec d                                         ; $748B: $15
    dec [hl]                                      ; $748C: $35
    scf                                           ; $748D: $37
    ld [hl-], a                                   ; $748E: $32
    ld [$026F], sp                                ; $748F: $08 $6F $02
    rst RST_18                                    ; $7492: $DF
    ld [bc], a                                    ; $7493: $02
    xor e                                         ; $7494: $AB
    ldh a, [rIE]                                  ; $7495: $F0 $FF
    add hl, bc                                    ; $7497: $09
    ld d, l                                       ; $7498: $55
    ld [$08AA], sp                                ; $7499: $08 $AA $08
    rlca                                          ; $749C: $07
    cp l                                          ; $749D: $BD
    adc c                                         ; $749E: $89
    cp a                                          ; $749F: $BF
    nop                                           ; $74A0: $00
    ld l, b                                       ; $74A1: $68
    ld [$7F88], sp                                ; $74A2: $08 $88 $7F

jr_02C_74A5:
    xor b                                         ; $74A5: $A8
    ldh a, [$FF09]                                ; $74A6: $F0 $09
    jp z, $0309                                   ; $74A8: $CA $09 $03

    xor b                                         ; $74AB: $A8
    db $FC                                        ; $74AC: $FC
    ld d, e                                       ; $74AD: $53
    ld hl, sp+$4A                                 ; $74AE: $F8 $4A
    inc bc                                        ; $74B0: $03
    ld [$F304], sp                                ; $74B1: $08 $04 $F3
    ld l, b                                       ; $74B4: $68
    ldh a, [$FF79]                                ; $74B5: $F0 $79
    rra                                           ; $74B7: $1F
    rra                                           ; $74B8: $1F
    ret nz                                        ; $74B9: $C0

    ccf                                           ; $74BA: $3F
    add b                                         ; $74BB: $80
    jr z, @-$06                                   ; $74BC: $28 $F8

    stop                                          ; $74BE: $10 $00
    call nz, Call_000_03EB                        ; $74C0: $C4 $EB $03
    sub c                                         ; $74C3: $91
    ld [$1010], sp                                ; $74C4: $08 $10 $10
    ld [hl], b                                    ; $74C7: $70
    or b                                          ; $74C8: $B0
    ld [$209F], sp                                ; $74C9: $08 $9F $20
    ld [hl], a                                    ; $74CC: $77
    rla                                           ; $74CD: $17
    dec bc                                        ; $74CE: $0B
    sub h                                         ; $74CF: $94
    sbc d                                         ; $74D0: $9A
    inc h                                         ; $74D1: $24
    ld a, [de]                                    ; $74D2: $1A
    ld sp, hl                                     ; $74D3: $F9
    sbc e                                         ; $74D4: $9B
    reti                                          ; $74D5: $D9


    jr nc, jr_02C_74E1                            ; $74D6: $30 $09

    ld d, b                                       ; $74D8: $50
    jr @-$0F                                      ; $74D9: $18 $EF

    ld [$0840], sp                                ; $74DB: $08 $40 $08
    ld [$CCCB], sp                                ; $74DE: $08 $CB $CC

jr_02C_74E1:
    dec c                                         ; $74E1: $0D
    adc h                                         ; $74E2: $8C
    inc c                                         ; $74E3: $0C
    inc bc                                        ; $74E4: $03
    ld [hl], d                                    ; $74E5: $72
    db $FC                                        ; $74E6: $FC
    db $F4                                        ; $74E7: $F4
    inc b                                         ; $74E8: $04
    ld c, d                                       ; $74E9: $4A
    ld bc, $08FD                                  ; $74EA: $01 $FD $08
    ld a, h                                       ; $74ED: $7C
    jr nc, jr_02C_7475                            ; $74EE: $30 $85

    ld a, l                                       ; $74F0: $7D
    cp b                                          ; $74F1: $B8
    rrca                                          ; $74F2: $0F
    ld a, e                                       ; $74F3: $7B
    dec de                                        ; $74F4: $1B
    ld [hl], d                                    ; $74F5: $72
    scf                                           ; $74F6: $37
    ld [bc], a                                    ; $74F7: $02
    push hl                                       ; $74F8: $E5
    ld l, a                                       ; $74F9: $6F
    ret nz                                        ; $74FA: $C0

    rst RST_18                                    ; $74FB: $DF
    add b                                         ; $74FC: $80
    cp a                                          ; $74FD: $BF
    ret z                                         ; $74FE: $C8

    ld a, a                                       ; $74FF: $7F
    sub l                                         ; $7500: $95
    jp hl                                         ; $7501: $E9


    inc bc                                        ; $7502: $03
    ld hl, sp+$09                                 ; $7503: $F8 $09
    ld d, e                                       ; $7505: $53
    ld [$08AB], sp                                ; $7506: $08 $AB $08
    ld l, d                                       ; $7509: $6A
    ei                                            ; $750A: $FB
    ld c, $B8                                     ; $750B: $0E $B8
    sbc $09                                       ; $750D: $DE $09
    call nc, $CA08                                ; $750F: $D4 $08 $CA
    ret c                                         ; $7512: $D8

    ld [$DF05], sp                                ; $7513: $08 $05 $DF
    nop                                           ; $7516: $00
    adc c                                         ; $7517: $89
    or $F0                                        ; $7518: $F6 $F0
    xor h                                         ; $751A: $AC
    daa                                           ; $751B: $27
    ldh [$FF58], a                                ; $751C: $E0 $58
    and b                                         ; $751E: $A0

jr_02C_751F:
    nop                                           ; $751F: $00
    rst RST_28                                    ; $7520: $EF
    ld [$0838], sp                                ; $7521: $08 $38 $08
    ld a, l                                       ; $7524: $7D
    cp $09                                        ; $7525: $FE $09
    adc c                                         ; $7527: $89
    ld bc, $08E8                                  ; $7528: $01 $E8 $08
    push de                                       ; $752B: $D5
    ld [$80B5], sp                                ; $752C: $08 $B5 $80
    ld e, [hl]                                    ; $752F: $5E
    dec c                                         ; $7530: $0D
    and b                                         ; $7531: $A0
    scf                                           ; $7532: $37
    add hl, bc                                    ; $7533: $09
    push af                                       ; $7534: $F5
    ld [$F250], sp                                ; $7535: $08 $50 $F2
    ld [$0CF7], sp                                ; $7538: $08 $F7 $0C
    ld [hl], a                                    ; $753B: $77
    rla                                           ; $753C: $17
    nop                                           ; $753D: $00
    rst RST_38                                    ; $753E: $FF
    xor l                                         ; $753F: $AD
    add hl, bc                                    ; $7540: $09
    ld d, l                                       ; $7541: $55
    ld [$08AA], sp                                ; $7542: $08 $AA $08
    ld bc, $00C1                                  ; $7545: $01 $C1 $00
    jr nz, jr_02C_751F                            ; $7548: $20 $D5

    call $B009                                    ; $754A: $CD $09 $B0
    sub b                                         ; $754D: $90
    rst RST_08                                    ; $754E: $CF
    ret nz                                        ; $754F: $C0

    xor a                                         ; $7550: $AF
    ld [$48E0], sp                                ; $7551: $08 $E0 $48
    rst RST_28                                    ; $7554: $EF
    ld [$6809], sp                                ; $7555: $08 $09 $68
    adc b                                         ; $7558: $88
    dec bc                                        ; $7559: $0B
    ld b, h                                       ; $755A: $44
    ret z                                         ; $755B: $C8

    ld [$051D], sp                                ; $755C: $08 $1D $05
    db $FD                                        ; $755F: $FD

jr_02C_7560:
    ld [$0DFC], sp                                ; $7560: $08 $FC $0D
    ld [bc], a                                    ; $7563: $02
    add hl, de                                    ; $7564: $19
    ei                                            ; $7565: $FB
    db $10                                        ; $7566: $10
    rst RST_30                                    ; $7567: $F7
    nop                                           ; $7568: $00
    rrca                                          ; $7569: $0F
    ld [$91FF], sp                                ; $756A: $08 $FF $91
    ld a, [bc]                                    ; $756D: $0A
    cp $01                                        ; $756E: $FE $01
    ld [hl], b                                    ; $7570: $70
    ld d, e                                       ; $7571: $53
    ld hl, sp-$55                                 ; $7572: $F8 $AB
    ld [$80CC], sp                                ; $7574: $08 $CC $80
    ld c, $80                                     ; $7577: $0E $80
    ld a, a                                       ; $7579: $7F
    ld [$9500], sp                                ; $757A: $08 $00 $95
    cp a                                          ; $757D: $BF
    ld a, e                                       ; $757E: $7B

jr_02C_757F:
    xor d                                         ; $757F: $AA
    ld [$5905], sp                                ; $7580: $08 $05 $59
    sbc d                                         ; $7583: $9A
    ld sp, hl                                     ; $7584: $F9
    add sp, $08                                   ; $7585: $E8 $08
    ld d, b                                       ; $7587: $50
    ld d, d                                       ; $7588: $52
    jr z, jr_02C_758B                             ; $7589: $28 $00

jr_02C_758B:
    jr jr_02C_7591                                ; $758B: $18 $04

    pop af                                        ; $758D: $F1
    ld c, $E2                                     ; $758E: $0E $E2
    inc h                                         ; $7590: $24

jr_02C_7591:
    inc e                                         ; $7591: $1C
    add $F1                                       ; $7592: $C6 $F1
    rst RST_00                                    ; $7594: $C7
    ret nz                                        ; $7595: $C0

    ld a, b                                       ; $7596: $78
    cp b                                          ; $7597: $B8

jr_02C_7598:
    ld de, $3813                                  ; $7598: $11 $13 $38
    ld bc, $09FC                                  ; $759B: $01 $FC $09

jr_02C_759E:
    inc bc                                        ; $759E: $03
    ld a, c                                       ; $759F: $79
    ld [$B1A8], sp                                ; $75A0: $08 $A8 $B1
    cp b                                          ; $75A3: $B8
    rst RST_38                                    ; $75A4: $FF
    ld [$5400], sp                                ; $75A5: $08 $00 $54
    cp $AA                                        ; $75A8: $FE $AA
    ld [$05F4], sp                                ; $75AA: $08 $F4 $05
    ld e, c                                       ; $75AD: $59
    ld [hl], b                                    ; $75AE: $70
    or b                                          ; $75AF: $B0
    jp $C6A0                                      ; $75B0: $C3 $A0 $C6


    ld b, $93                                     ; $75B3: $06 $93
    add hl, bc                                    ; $75B5: $09
    call Call_000_090D                            ; $75B6: $CD $0D $09
    db $DB                                        ; $75B9: $DB
    dec de                                        ; $75BA: $1B
    add hl, bc                                    ; $75BB: $09

jr_02C_75BC:
    pop af                                        ; $75BC: $F1
    jp hl                                         ; $75BD: $E9


    add hl, bc                                    ; $75BE: $09
    ld [bc], a                                    ; $75BF: $02
    dec [hl]                                      ; $75C0: $35
    ld a, a                                       ; $75C1: $7F
    add hl, bc                                    ; $75C2: $09
    rst RST_30                                    ; $75C3: $F7
    scf                                           ; $75C4: $37
    add hl, bc                                    ; $75C5: $09
    ld [bc], a                                    ; $75C6: $02
    ld l, d                                       ; $75C7: $6A
    ld l, a                                       ; $75C8: $6F
    ld h, l                                       ; $75C9: $65
    rst RST_28                                    ; $75CA: $EF
    ld b, b                                       ; $75CB: $40
    rst RST_18                                    ; $75CC: $DF
    ld e, b                                       ; $75CD: $58
    rra                                           ; $75CE: $1F
    sub $AC                                       ; $75CF: $D6 $AC
    sbc d                                         ; $75D1: $9A
    ld d, l                                       ; $75D2: $55
    jr z, jr_02C_757F                             ; $75D3: $28 $AA

    ld [$FE01], sp                                ; $75D5: $08 $01 $FE
    add c                                         ; $75D8: $81
    ld [bc], a                                    ; $75D9: $02
    db $FD                                        ; $75DA: $FD
    db $FC                                        ; $75DB: $FC
    jr jr_02C_759E                                ; $75DC: $18 $C0

    jr nc, jr_02C_7560                            ; $75DE: $30 $80

    add hl, bc                                    ; $75E0: $09
    ld a, a                                       ; $75E1: $7F
    ld h, b                                       ; $75E2: $60
    and b                                         ; $75E3: $A0
    add hl, bc                                    ; $75E4: $09
    ld b, b                                       ; $75E5: $40
    ld a, [bc]                                    ; $75E6: $0A
    ld b, b                                       ; $75E7: $40
    ld [$EF89], sp                                ; $75E8: $08 $89 $EF
    xor c                                         ; $75EB: $A9
    add sp, $08                                   ; $75EC: $E8 $08
    ld d, l                                       ; $75EE: $55
    add sp, $40                                   ; $75EF: $E8 $40
    ld c, $89                                     ; $75F1: $0E $89
    ret nc                                        ; $75F3: $D0

    cp e                                          ; $75F4: $BB
    ei                                            ; $75F5: $FB
    jr nc, @+$52                                  ; $75F6: $30 $50

    jr nz, jr_02C_7598                            ; $75F8: $20 $9E

    ld bc, $30DE                                  ; $75FA: $01 $DE $30
    inc c                                         ; $75FD: $0C
    dec c                                         ; $75FE: $0D
    nop                                           ; $75FF: $00
    db $10                                        ; $7600: $10
    ld a, [de]                                    ; $7601: $1A
    add hl, de                                    ; $7602: $19
    dec de                                        ; $7603: $1B
    jr jr_02C_75BC                                ; $7604: $18 $B6

    add hl, bc                                    ; $7606: $09
    scf                                           ; $7607: $37
    add b                                         ; $7608: $80
    dec bc                                        ; $7609: $0B
    ld l, a                                       ; $760A: $6F
    ret nz                                        ; $760B: $C0

    add hl, bc                                    ; $760C: $09
    rrca                                          ; $760D: $0F
    xor [hl]                                      ; $760E: $AE
    ld [$3807], sp                                ; $760F: $08 $07 $38
    inc bc                                        ; $7612: $03
    ld a, b                                       ; $7613: $78
    ret c                                         ; $7614: $D8

    cp b                                          ; $7615: $B8
    nop                                           ; $7616: $00
    ld [hl], c                                    ; $7617: $71
    ld b, $08                                     ; $7618: $06 $08
    jr nc, jr_02C_7624                            ; $761A: $30 $08

    rst RST_38                                    ; $761C: $FF
    ld d, l                                       ; $761D: $55
    xor d                                         ; $761E: $AA
    nop                                           ; $761F: $00
    db $FD                                        ; $7620: $FD
    db $10                                        ; $7621: $10
    jr nz, @+$33                                  ; $7622: $20 $31

jr_02C_7624:
    rrca                                          ; $7624: $0F
    rrca                                          ; $7625: $0F
    ld [$08FC], sp                                ; $7626: $08 $FC $08
    ld d, l                                       ; $7629: $55
    db $E3                                        ; $762A: $E3
    ld [$4C1F], sp                                ; $762B: $08 $1F $4C
    cp $08                                        ; $762E: $FE $08
    pop af                                        ; $7630: $F1
    ld [$8F55], sp                                ; $7631: $08 $55 $8F
    ld [$087E], sp                                ; $7634: $08 $7E $08
    ldh a, [$FF08]                                ; $7637: $F0 $08
    add b                                         ; $7639: $80
    ld [$1800], sp                                ; $763A: $08 $00 $18
    bit 3, c                                      ; $763D: $CB $59
    adc d                                         ; $763F: $8A
    sbc d                                         ; $7640: $9A
    ld c, c                                       ; $7641: $49
    db $DB                                        ; $7642: $DB
    ld [$0BB2], sp                                ; $7643: $08 $B2 $0B

jr_02C_7646:
    ret c                                         ; $7646: $D8

    ld [$0F68], sp                                ; $7647: $08 $68 $0F
    ld hl, sp-$78                                 ; $764A: $F8 $88
    rst RST_00                                    ; $764C: $C7
    or [hl]                                       ; $764D: $B6
    ld [$083F], sp                                ; $764E: $08 $3F $08
    add hl, hl                                    ; $7651: $29
    ret nz                                        ; $7652: $C0

    ld [$E805], sp                                ; $7653: $08 $05 $E8
    or c                                          ; $7656: $B1
    adc b                                         ; $7657: $88
    ldh [$FF4E], a                                ; $7658: $E0 $4E
    ld b, $FF                                     ; $765A: $06 $FF
    ld d, l                                       ; $765C: $55
    xor d                                         ; $765D: $AA
    nop                                           ; $765E: $00
    db $ED                                        ; $765F: $ED
    db $10                                        ; $7660: $10
    jr nz, jr_02C_7693                            ; $7661: $20 $30

    cp $08                                        ; $7663: $FE $08
    cp b                                          ; $7665: $B8
    ld bc, $5010                                  ; $7666: $01 $10 $50
    rra                                           ; $7669: $1F
    ld [$08FC], sp                                ; $766A: $08 $FC $08
    db $FD                                        ; $766D: $FD
    ld d, d                                       ; $766E: $52
    xor b                                         ; $766F: $A8
    and a                                         ; $7670: $A7
    dec h                                         ; $7671: $25
    ld d, c                                       ; $7672: $51
    rst RST_28                                    ; $7673: $EF
    ld e, b                                       ; $7674: $58
    inc b                                         ; $7675: $04
    jr jr_02C_76C0                                ; $7676: $18 $48

    ld hl, sp+$08                                 ; $7678: $F8 $08
    ld a, b                                       ; $767A: $78
    ret nz                                        ; $767B: $C0

    ld a, [$071B]                                 ; $767C: $FA $1B $07
    inc bc                                        ; $767F: $03
    cp $54                                        ; $7680: $FE $54
    xor d                                         ; $7682: $AA
    ld e, b                                       ; $7683: $58
    ld a, [hl+]                                   ; $7684: $2A
    db $10                                        ; $7685: $10
    add b                                         ; $7686: $80
    nop                                           ; $7687: $00
    or b                                          ; $7688: $B0
    rst RST_38                                    ; $7689: $FF
    ld b, b                                       ; $768A: $40
    ld a, a                                       ; $768B: $7F
    jp $3873                                      ; $768C: $C3 $73 $38


    ld e, [hl]                                    ; $768F: $5E
    call nc, $CA4A                                ; $7690: $D4 $4A $CA

jr_02C_7693:
    ld a, b                                       ; $7693: $78
    jr z, @-$06                                   ; $7694: $28 $F8

    ld h, b                                       ; $7696: $60
    ld [$0968], sp                                ; $7697: $08 $68 $09
    ld a, e                                       ; $769A: $7B
    ret c                                         ; $769B: $D8

jr_02C_769C:
    dec de                                        ; $769C: $1B
    reti                                          ; $769D: $D9


    dec d                                         ; $769E: $15
    ld a, [de]                                    ; $769F: $1A
    jp c, $2819                                   ; $76A0: $DA $19 $28

    jr jr_02C_76AD                                ; $76A3: $18 $08

    rra                                           ; $76A5: $1F
    add hl, bc                                    ; $76A6: $09
    add $7B                                       ; $76A7: $C6 $7B
    nop                                           ; $76A9: $00
    rst RST_38                                    ; $76AA: $FF
    ld d, l                                       ; $76AB: $55
    xor d                                         ; $76AC: $AA

jr_02C_76AD:
    nop                                           ; $76AD: $00
    ld hl, sp+$01                                 ; $76AE: $F8 $01
    call c, Call_000_0830                         ; $76B0: $DC $30 $08
    cp $10                                        ; $76B3: $FE $10
    add hl, bc                                    ; $76B5: $09
    ld [bc], a                                    ; $76B6: $02
    jr c, jr_02C_7646                             ; $76B7: $38 $8D

    ld b, b                                       ; $76B9: $40
    ld [hl], c                                    ; $76BA: $71
    ld hl, sp-$1E                                 ; $76BB: $F8 $E2
    dec [hl]                                      ; $76BD: $35
    ret nz                                        ; $76BE: $C0

    ld h, b                                       ; $76BF: $60

jr_02C_76C0:
    ld b, c                                       ; $76C0: $41
    ld a, [hl]                                    ; $76C1: $7E
    ret nz                                        ; $76C2: $C0

    add hl, bc                                    ; $76C3: $09
    ld a, e                                       ; $76C4: $7B
    inc bc                                        ; $76C5: $03
    ld sp, hl                                     ; $76C6: $F9
    inc de                                        ; $76C7: $13
    xor c                                         ; $76C8: $A9
    dec hl                                        ; $76C9: $2B
    ld de, $BB4B                                  ; $76CA: $11 $4B $BB
    ldh a, [$FF83]                                ; $76CD: $F0 $83
    add c                                         ; $76CF: $81
    ld [$09FD], sp                                ; $76D0: $08 $FD $09
    jr nc, jr_02C_769C                            ; $76D3: $30 $C7

    nop                                           ; $76D5: $00
    add b                                         ; $76D6: $80
    ld a, a                                       ; $76D7: $7F
    ld d, l                                       ; $76D8: $55
    ld a, [hl+]                                   ; $76D9: $2A
    nop                                           ; $76DA: $00
    db $10                                        ; $76DB: $10
    jr nz, @-$34                                  ; $76DC: $20 $CA

    ld sp, $0F0A                                  ; $76DE: $31 $0A $0F
    add b                                         ; $76E1: $80
    ld [hl], b                                    ; $76E2: $70
    ldh a, [rNR41]                                ; $76E3: $F0 $20
    rst RST_38                                    ; $76E5: $FF
    xor l                                         ; $76E6: $AD
    ld h, b                                       ; $76E7: $60
    xor d                                         ; $76E8: $AA

jr_02C_76E9:
    nop                                           ; $76E9: $00
    ld d, h                                       ; $76EA: $54
    ret nz                                        ; $76EB: $C0

    jr nc, jr_02C_76E9                            ; $76EC: $30 $FB

    ld [$F656], sp                                ; $76EE: $08 $56 $F6
    ld [$08EC], sp                                ; $76F1: $08 $EC $08
    ret c                                         ; $76F4: $D8

    ld [$7E00], sp                                ; $76F5: $08 $00 $7E
    ld a, [$08B1]                                 ; $76F8: $FA $B1 $08
    or b                                          ; $76FB: $B0
    ld sp, $3007                                  ; $76FC: $31 $07 $30
    ld [$7820], sp                                ; $76FF: $08 $20 $78
    ret nz                                        ; $7702: $C0

    db $10                                        ; $7703: $10
    add hl, bc                                    ; $7704: $09
    rlca                                          ; $7705: $07
    ld bc, $55FF                                  ; $7706: $01 $FF $55
    ld a, [hl+]                                   ; $7709: $2A
    ld b, $AA                                     ; $770A: $06 $AA
    dec d                                         ; $770C: $15
    cp a                                          ; $770D: $BF
    add b                                         ; $770E: $80
    rst RST_18                                    ; $770F: $DF
    sbc b                                         ; $7710: $98
    add hl, bc                                    ; $7711: $09
    ld l, a                                       ; $7712: $6F
    ld e, d                                       ; $7713: $5A
    ld h, b                                       ; $7714: $60
    add hl, bc                                    ; $7715: $09
    ld bc, $7828                                  ; $7716: $01 $28 $78
    xor b                                         ; $7719: $A8
    ld a, b                                       ; $771A: $78
    ld d, h                                       ; $771B: $54
    ld h, h                                       ; $771C: $64
    cp $B1                                        ; $771D: $FE $B1
    ld c, $37                                     ; $771F: $0E $37
    jr nc, jr_02C_772C                            ; $7721: $30 $09

    dec de                                        ; $7723: $1B
    jr @-$73                                      ; $7724: $18 $8B

    nop                                           ; $7726: $00
    inc e                                         ; $7727: $1C
    ld [$500F], sp                                ; $7728: $08 $0F $50
    inc bc                                        ; $772B: $03

jr_02C_772C:
    ld [$A502], sp                                ; $772C: $08 $02 $A5
    xor l                                         ; $772F: $AD
    ld a, a                                       ; $7730: $7F
    ld [$8007], sp                                ; $7731: $08 $07 $80
    db $10                                        ; $7734: $10
    ld hl, sp+$35                                 ; $7735: $F8 $35
    xor d                                         ; $7737: $AA
    add hl, bc                                    ; $7738: $09
    ret nz                                        ; $7739: $C0

    ld a, [bc]                                    ; $773A: $0A
    ld h, b                                       ; $773B: $60
    ld a, [bc]                                    ; $773C: $0A
    or b                                          ; $773D: $B0
    ld a, [bc]                                    ; $773E: $0A
    ret c                                         ; $773F: $D8

    xor d                                         ; $7740: $AA
    ld a, [bc]                                    ; $7741: $0A
    db $EC                                        ; $7742: $EC
    ld a, [bc]                                    ; $7743: $0A
    or $0A                                        ; $7744: $F6 $0A
    dec de                                        ; $7746: $1B
    ld [$5C03], sp                                ; $7747: $08 $03 $5C
    ldh [rNR10], a                                ; $774A: $E0 $10
    ld bc, $0708                                  ; $774C: $01 $08 $07
    inc b                                         ; $774F: $04
    ld a, h                                       ; $7750: $7C
    add b                                         ; $7751: $80
    ld [hl], l                                    ; $7752: $75
    ld h, b                                       ; $7753: $60
    ld [$075F], sp                                ; $7754: $08 $5F $07
    rlca                                          ; $7757: $07
    ld [$0804], sp                                ; $7758: $08 $04 $08
    add hl, hl                                    ; $775B: $29
    dec b                                         ; $775C: $05
    ld bc, $0D0B                                  ; $775D: $01 $0B $0D
    ld [$030B], sp                                ; $7760: $08 $0B $03
    dec bc                                        ; $7763: $0B
    ld d, l                                       ; $7764: $55
    ld a, [bc]                                    ; $7765: $0A
    ld [$0819], sp                                ; $7766: $08 $19 $08
    ld [de], a                                    ; $7769: $12
    or b                                          ; $776A: $B0

jr_02C_776B:
    db $10                                        ; $776B: $10
    ld a, [bc]                                    ; $776C: $0A
    xor c                                         ; $776D: $A9
    ei                                            ; $776E: $FB
    rst RST_38                                    ; $776F: $FF
    ld [$0820], sp                                ; $7770: $08 $20 $08
    xor d                                         ; $7773: $AA
    adc d                                         ; $7774: $8A
    add hl, bc                                    ; $7775: $09
    or [hl]                                       ; $7776: $B6
    ld bc, $00E0                                  ; $7777: $01 $E0 $00
    ld a, e                                       ; $777A: $7B
    add c                                         ; $777B: $81
    rrca                                          ; $777C: $0F
    ld a, [bc]                                    ; $777D: $0A
    db $FC                                        ; $777E: $FC
    or a                                          ; $777F: $B7
    ld [bc], a                                    ; $7780: $02
    db $FD                                        ; $7781: $FD
    nop                                           ; $7782: $00
    jr nc, @+$03                                  ; $7783: $30 $01

    ld bc, $C919                                  ; $7785: $01 $19 $C9
    xor d                                         ; $7788: $AA
    ld de, $FAFF                                  ; $7789: $11 $FF $FA
    cp $00                                        ; $778C: $FE $00
    xor d                                         ; $778E: $AA
    ld [$FD54], sp                                ; $778F: $08 $54 $FD
    ld a, [de]                                    ; $7792: $1A
    ld c, c                                       ; $7793: $49
    ret nc                                        ; $7794: $D0

    sbc d                                         ; $7795: $9A
    ld bc, $7F9B                                  ; $7796: $01 $9B $7F
    ld b, $E9                                     ; $7799: $06 $E9
    ld a, e                                       ; $779B: $7B
    xor b                                         ; $779C: $A8
    ld [$0804], sp                                ; $779D: $08 $04 $08
    or h                                          ; $77A0: $B4
    or b                                          ; $77A1: $B0
    dec bc                                        ; $77A2: $0B
    ld d, d                                       ; $77A3: $52
    or a                                          ; $77A4: $B7
    ld [$0403], sp                                ; $77A5: $08 $03 $04
    ld [bc], a                                    ; $77A8: $02
    rlca                                          ; $77A9: $07
    adc b                                         ; $77AA: $88
    ld c, $30                                     ; $77AB: $0E $30
    ld a, [bc]                                    ; $77AD: $0A
    rra                                           ; $77AE: $1F
    and b                                         ; $77AF: $A0
    jp hl                                         ; $77B0: $E9


    ei                                            ; $77B1: $FB
    cp c                                          ; $77B2: $B9
    cp b                                          ; $77B3: $B8
    cp [hl]                                       ; $77B4: $BE
    xor b                                         ; $77B5: $A8
    nop                                           ; $77B6: $00
    ccf                                           ; $77B7: $3F
    nop                                           ; $77B8: $00
    ld a, [hl+]                                   ; $77B9: $2A
    ld [$3311], sp                                ; $77BA: $08 $11 $33
    inc h                                         ; $77BD: $24
    ld a, [hl]                                    ; $77BE: $7E
    jr nc, @-$5E                                  ; $77BF: $30 $A0

jr_02C_77C1:
    add sp, -$58                                  ; $77C1: $E8 $A8
    ld [$0288], sp                                ; $77C3: $08 $88 $02
    rst RST_38                                    ; $77C6: $FF
    and h                                         ; $77C7: $A4
    ld [$0880], sp                                ; $77C8: $08 $80 $08
    xor l                                         ; $77CB: $AD
    dec l                                         ; $77CC: $2D
    add hl, bc                                    ; $77CD: $09
    add c                                         ; $77CE: $81
    ld bc, $BF69                                  ; $77CF: $01 $69 $BF
    cp b                                          ; $77D2: $B8
    ld a, l                                       ; $77D3: $7D
    jr jr_02C_77DE                                ; $77D4: $18 $08

    ld e, e                                       ; $77D6: $5B
    ld b, e                                       ; $77D7: $43
    ld bc, $1F5B                                  ; $77D8: $01 $5B $1F
    nop                                           ; $77DB: $00
    rst RST_18                                    ; $77DC: $DF
    nop                                           ; $77DD: $00

jr_02C_77DE:
    adc c                                         ; $77DE: $89
    dec hl                                        ; $77DF: $2B
    nop                                           ; $77E0: $00
    jr jr_02C_776B                                ; $77E1: $18 $88

    nop                                           ; $77E3: $00
    xor d                                         ; $77E4: $AA
    xor e                                         ; $77E5: $AB
    dec d                                         ; $77E6: $15
    jr jr_02C_77F1                                ; $77E7: $18 $08

jr_02C_77E9:
    add hl, de                                    ; $77E9: $19
    add b                                         ; $77EA: $80
    sub $58                                       ; $77EB: $D6 $58
    ld [$891B], sp                                ; $77ED: $08 $1B $89
    inc bc                                        ; $77F0: $03

jr_02C_77F1:
    nop                                           ; $77F1: $00
    ret                                           ; $77F2: $C9


    add d                                         ; $77F3: $82
    ld bc, $01C3                                  ; $77F4: $01 $C3 $01
    add e                                         ; $77F7: $83
    adc d                                         ; $77F8: $8A
    adc a                                         ; $77F9: $8F
    nop                                           ; $77FA: $00
    rst RST_08                                    ; $77FB: $CF
    ld [$6F6A], sp                                ; $77FC: $08 $6A $6F
    ld [$FF02], sp                                ; $77FF: $08 $02 $FF
    ld [$0830], sp                                ; $7802: $08 $30 $08
    or a                                          ; $7805: $B7
    ld l, $87                                     ; $7806: $2E $87
    add h                                         ; $7808: $84
    nop                                           ; $7809: $00
    rst RST_30                                    ; $780A: $F7
    ld [bc], a                                    ; $780B: $02
    ld a, l                                       ; $780C: $7D
    ld bc, $AAF3                                  ; $780D: $01 $F3 $AA
    nop                                           ; $7810: $00
    inc de                                        ; $7811: $13
    nop                                           ; $7812: $00
    pop af                                        ; $7813: $F1
    ld [bc], a                                    ; $7814: $02
    ldh a, [rP1]                                  ; $7815: $F0 $00
    adc a                                         ; $7817: $8F
    ldh [c], a                                    ; $7818: $E2
    nop                                           ; $7819: $00
    ret nc                                        ; $781A: $D0

    nop                                           ; $781B: $00
    add b                                         ; $781C: $80
    add l                                         ; $781D: $85
    dec b                                         ; $781E: $05
    jr jr_02C_77C1                                ; $781F: $18 $A0

    ld d, d                                       ; $7821: $52
    push hl                                       ; $7822: $E5
    and b                                         ; $7823: $A0
    rst RST_28                                    ; $7824: $EF
    ld [$03E1], sp                                ; $7825: $08 $E1 $03
    nop                                           ; $7828: $00
    ei                                            ; $7829: $FB
    ret nc                                        ; $782A: $D0

    nop                                           ; $782B: $00
    add hl, de                                    ; $782C: $19
    xor d                                         ; $782D: $AA
    jr jr_02C_7881                                ; $782E: $18 $51

    reti                                          ; $7830: $D9


    jr nz, @+$73                                  ; $7831: $20 $71

    xor l                                         ; $7833: $AD
    ld l, b                                       ; $7834: $68
    or e                                          ; $7835: $B3
    ld [$086B], sp                                ; $7836: $08 $6B $08
    ld [bc], a                                    ; $7839: $02
    rst RST_38                                    ; $783A: $FF
    ld [$0455], sp                                ; $783B: $08 $55 $04
    ld [$0091], sp                                ; $783E: $08 $91 $00
    or l                                          ; $7841: $B5
    nop                                           ; $7842: $00
    cp [hl]                                       ; $7843: $BE
    ld [bc], a                                    ; $7844: $02
    xor l                                         ; $7845: $AD
    ld a, l                                       ; $7846: $7D
    ld b, e                                       ; $7847: $43
    ld [$0018], sp                                ; $7848: $08 $18 $00
    ld l, e                                       ; $784B: $6B
    ld a, [bc]                                    ; $784C: $0A
    nop                                           ; $784D: $00
    ld d, l                                       ; $784E: $55
    adc c                                         ; $784F: $89
    nop                                           ; $7850: $00
    ccf                                           ; $7851: $3F
    nop                                           ; $7852: $00
    ld a, [hl+]                                   ; $7853: $2A
    nop                                           ; $7854: $00
    xor d                                         ; $7855: $AA
    cp c                                          ; $7856: $B9
    ld a, $88                                     ; $7857: $3E $88
    adc d                                         ; $7859: $8A
    nop                                           ; $785A: $00
    jr @+$2B                                      ; $785B: $18 $29

    ld [$CA29], sp                                ; $785D: $08 $29 $CA
    ei                                            ; $7860: $FB
    nop                                           ; $7861: $00
    ld hl, sp+$00                                 ; $7862: $F8 $00
    add b                                         ; $7864: $80
    sbc b                                         ; $7865: $98
    ld d, l                                       ; $7866: $55
    jr jr_02C_77E9                                ; $7867: $18 $80

    ld e, [hl]                                    ; $7869: $5E
    call z, $DE68                                 ; $786A: $CC $68 $DE
    ld [$0828], sp                                ; $786D: $08 $28 $08
    nop                                           ; $7870: $00
    ld a, [hl]                                    ; $7871: $7E
    xor [hl]                                      ; $7872: $AE
    ld [$08C3], sp                                ; $7873: $08 $C3 $08
    jr jr_02C_7878                                ; $7876: $18 $00

jr_02C_7878:
    sbc c                                         ; $7878: $99
    inc bc                                        ; $7879: $03
    pop bc                                        ; $787A: $C1
    ld a, [$7900]                                 ; $787B: $FA $00 $79
    ld bc, $00A2                                  ; $787E: $01 $A2 $00

jr_02C_7881:
    xor e                                         ; $7881: $AB
    inc b                                         ; $7882: $04
    add e                                         ; $7883: $83
    call nc, Call_02C_4900                        ; $7884: $D4 $00 $49
    ld a, a                                       ; $7887: $7F
    ld [bc], a                                    ; $7888: $02
    ld a, [hl+]                                   ; $7889: $2A
    ld [$0C04], sp                                ; $788A: $08 $04 $0C
    or d                                          ; $788D: $B2
    jr @+$71                                      ; $788E: $18 $6F

    ld d, b                                       ; $7890: $50
    add hl, bc                                    ; $7891: $09
    ld l, h                                       ; $7892: $6C
    ccf                                           ; $7893: $3F
    nop                                           ; $7894: $00
    cp a                                          ; $7895: $BF
    db $D3                                        ; $7896: $D3
    nop                                           ; $7897: $00
    cp c                                          ; $7898: $B9
    xor d                                         ; $7899: $AA
    jr @+$16                                      ; $789A: $18 $14

jr_02C_789C:
    ld a, $18                                     ; $789C: $3E $18
    nop                                           ; $789E: $00
    cp l                                          ; $789F: $BD
    ld l, b                                       ; $78A0: $68
    cp [hl]                                       ; $78A1: $BE
    ld [$F928], sp                                ; $78A2: $08 $28 $F9
    ld bc, $08F0                                  ; $78A5: $01 $F0 $08
    ld c, d                                       ; $78A8: $4A
    db $10                                        ; $78A9: $10
    ld [$4050], sp                                ; $78AA: $08 $50 $40
    add hl, bc                                    ; $78AD: $09
    ld e, b                                       ; $78AE: $58
    ld [$9108], sp                                ; $78AF: $08 $08 $91
    jr c, jr_02C_789C                             ; $78B2: $38 $E8

    ldh [$FF09], a                                ; $78B4: $E0 $09
    ret z                                         ; $78B6: $C8

    ret nz                                        ; $78B7: $C0

    sbc h                                         ; $78B8: $9C
    ld [$4446], sp                                ; $78B9: $08 $46 $44
    ld [$D084], sp                                ; $78BC: $08 $84 $D0
    inc b                                         ; $78BF: $04
    ret nz                                        ; $78C0: $C0

    ld [$0F70], sp                                ; $78C1: $08 $70 $0F
    inc bc                                        ; $78C4: $03
    db $FC                                        ; $78C5: $FC
    ld bc, $A01E                                  ; $78C6: $01 $1E $A0
    jr nz, @+$0A                                  ; $78C9: $20 $08

    rlca                                          ; $78CB: $07
    cp c                                          ; $78CC: $B9
    nop                                           ; $78CD: $00
    add b                                         ; $78CE: $80
    inc c                                         ; $78CF: $0C
    rlca                                          ; $78D0: $07
    ld bc, $0710                                  ; $78D1: $01 $10 $07
    dec c                                         ; $78D4: $0D

jr_02C_78D5:
    inc e                                         ; $78D5: $1C
    jr @+$05                                      ; $78D6: $18 $03

    inc c                                         ; $78D8: $0C
    ld e, b                                       ; $78D9: $58
    jr nz, jr_02C_7956                            ; $78DA: $20 $7A

    ld bc, $B21C                                  ; $78DC: $01 $1C $B2
    ld [$0BFC], sp                                ; $78DF: $08 $FC $0B
    ld [hl], b                                    ; $78E2: $70
    ldh [rNR34], a                                ; $78E3: $E0 $1E
    ld e, b                                       ; $78E5: $58
    ldh a, [$FFBC]                                ; $78E6: $F0 $BC
    ld a, d                                       ; $78E8: $7A
    inc b                                         ; $78E9: $04
    ld d, b                                       ; $78EA: $50
    ld a, [bc]                                    ; $78EB: $0A
    call z, $F106                                 ; $78EC: $CC $06 $F1
    ld c, $3C                                     ; $78EF: $0E $3C
    ret nz                                        ; $78F1: $C0

    dec sp                                        ; $78F2: $3B
    jr nz, jr_02C_78D5                            ; $78F3: $20 $E0

    ld l, a                                       ; $78F5: $6F
    ld sp, hl                                     ; $78F6: $F9
    add b                                         ; $78F7: $80
    inc a                                         ; $78F8: $3C
    sub $6F                                       ; $78F9: $D6 $6F
    inc b                                         ; $78FB: $04
    ld b, b                                       ; $78FC: $40
    ld [$577F], sp                                ; $78FD: $08 $7F $57
    ld b, $FF                                     ; $7900: $06 $FF
    reti                                          ; $7902: $D9


    ld b, a                                       ; $7903: $47
    inc b                                         ; $7904: $04
    inc c                                         ; $7905: $0C
    ld a, a                                       ; $7906: $7F
    rlca                                          ; $7907: $07
    ld [bc], a                                    ; $7908: $02
    ld hl, sp+$10                                 ; $7909: $F8 $10
    ld h, l                                       ; $790B: $65
    rrca                                          ; $790C: $0F
    ld e, a                                       ; $790D: $5F
    inc bc                                        ; $790E: $03
    inc sp                                        ; $790F: $33
    add b                                         ; $7910: $80
    db $10                                        ; $7911: $10
    rst RST_38                                    ; $7912: $FF
    ld [$016A], sp                                ; $7913: $08 $6A $01
    ld a, [bc]                                    ; $7916: $0A
    ld b, $7E                                     ; $7917: $06 $7E
    ld [$087F], sp                                ; $7919: $08 $7F $08
    ld h, e                                       ; $791C: $63
    ld l, d                                       ; $791D: $6A
    ld [$069A], sp                                ; $791E: $08 $9A $06
    inc c                                         ; $7921: $0C
    ld [$08DE], sp                                ; $7922: $08 $DE $08
    rst RST_18                                    ; $7925: $DF
    sub l                                         ; $7926: $95
    ld [$E00D], sp                                ; $7927: $08 $0D $E0
    jr c, jr_02C_794D                             ; $792A: $38 $21

    jr nz, jr_02C_796D                            ; $792C: $20 $3F

    ld [hl], e                                    ; $792E: $73
    ld h, h                                       ; $792F: $64
    ld h, b                                       ; $7930: $60
    ld [$0450], sp                                ; $7931: $08 $50 $04
    ldh a, [$FF08]                                ; $7934: $F0 $08
    or b                                          ; $7936: $B0
    ld b, h                                       ; $7937: $44
    jr z, @+$12                                   ; $7938: $28 $10

    db $E4                                        ; $793A: $E4
    ld e, b                                       ; $793B: $58
    inc a                                         ; $793C: $3C
    ld a, d                                       ; $793D: $7A
    dec e                                         ; $793E: $1D
    nop                                           ; $793F: $00
    cpl                                           ; $7940: $2F
    nop                                           ; $7941: $00
    ld bc, $0212                                  ; $7942: $01 $12 $02
    ld d, h                                       ; $7945: $54
    rra                                           ; $7946: $1F
    rra                                           ; $7947: $1F
    ld de, $0356                                  ; $7948: $11 $56 $03
    db $10                                        ; $794B: $10
    inc b                                         ; $794C: $04

jr_02C_794D:
    db $10                                        ; $794D: $10
    dec b                                         ; $794E: $05
    ld a, [$061B]                                 ; $794F: $FA $1B $06
    xor d                                         ; $7952: $AA
    db $10                                        ; $7953: $10
    rlca                                          ; $7954: $07
    db $10                                        ; $7955: $10

jr_02C_7956:
    ld [$09B6], sp                                ; $7956: $08 $B6 $09
    db $10                                        ; $7959: $10
    ld a, [bc]                                    ; $795A: $0A
    xor d                                         ; $795B: $AA
    db $10                                        ; $795C: $10
    dec c                                         ; $795D: $0D
    db $10                                        ; $795E: $10
    ld c, $10                                     ; $795F: $0E $10
    ld de, $1210                                  ; $7961: $11 $10 $12
    push de                                       ; $7964: $D5
    db $F4                                        ; $7965: $F4
    rla                                           ; $7966: $17
    ld b, $10                                     ; $7967: $06 $10
    dec de                                        ; $7969: $1B
    db $10                                        ; $796A: $10
    ld e, $10                                     ; $796B: $1E $10

jr_02C_796D:
    ld d, l                                       ; $796D: $55
    rra                                           ; $796E: $1F
    ld hl, sp+$0B                                 ; $796F: $F8 $0B
    db $10                                        ; $7971: $10
    inc c                                         ; $7972: $0C
    db $10                                        ; $7973: $10
    rrca                                          ; $7974: $0F
    db $10                                        ; $7975: $10
    ld d, l                                       ; $7976: $55
    db $10                                        ; $7977: $10
    db $10                                        ; $7978: $10
    inc de                                        ; $7979: $13
    db $10                                        ; $797A: $10
    inc d                                         ; $797B: $14
    db $10                                        ; $797C: $10
    dec d                                         ; $797D: $15
    db $10                                        ; $797E: $10
    ld d, l                                       ; $797F: $55
    ld d, $10                                     ; $7980: $16 $10
    rla                                           ; $7982: $17
    db $10                                        ; $7983: $10
    jr jr_02C_7996                                ; $7984: $18 $10

    add hl, de                                    ; $7986: $19
    db $10                                        ; $7987: $10
    ld d, l                                       ; $7988: $55
    ld a, [de]                                    ; $7989: $1A
    db $10                                        ; $798A: $10
    inc e                                         ; $798B: $1C
    db $10                                        ; $798C: $10
    dec e                                         ; $798D: $1D
    db $10                                        ; $798E: $10
    jr nz, jr_02C_79A1                            ; $798F: $20 $10

    ld d, l                                       ; $7991: $55
    ld hl, $2210                                  ; $7992: $21 $10 $22
    db $10                                        ; $7995: $10

jr_02C_7996:
    ld bc, $2414                                  ; $7996: $01 $14 $24
    db $10                                        ; $7999: $10
    ld d, l                                       ; $799A: $55
    dec h                                         ; $799B: $25
    db $10                                        ; $799C: $10
    jr z, jr_02C_79AF                             ; $799D: $28 $10

    add hl, hl                                    ; $799F: $29
    db $10                                        ; $79A0: $10

jr_02C_79A1:
    inc l                                         ; $79A1: $2C
    db $10                                        ; $79A2: $10
    ld d, l                                       ; $79A3: $55
    dec l                                         ; $79A4: $2D
    db $10                                        ; $79A5: $10
    cpl                                           ; $79A6: $2F
    db $10                                        ; $79A7: $10
    jr nc, jr_02C_79BA                            ; $79A8: $30 $10

    inc sp                                        ; $79AA: $33
    db $10                                        ; $79AB: $10
    ld d, l                                       ; $79AC: $55
    inc [hl]                                      ; $79AD: $34
    db $10                                        ; $79AE: $10

jr_02C_79AF:
    scf                                           ; $79AF: $37
    db $10                                        ; $79B0: $10
    jr c, jr_02C_79C3                             ; $79B1: $38 $10

    dec sp                                        ; $79B3: $3B
    db $10                                        ; $79B4: $10
    ld d, l                                       ; $79B5: $55
    inc a                                         ; $79B6: $3C
    db $10                                        ; $79B7: $10
    ccf                                           ; $79B8: $3F
    db $10                                        ; $79B9: $10

jr_02C_79BA:
    ld b, b                                       ; $79BA: $40
    db $10                                        ; $79BB: $10
    ld bc, $5514                                  ; $79BC: $01 $14 $55
    inc hl                                        ; $79BF: $23
    db $10                                        ; $79C0: $10
    ld h, $10                                     ; $79C1: $26 $10

jr_02C_79C3:
    daa                                           ; $79C3: $27
    db $10                                        ; $79C4: $10
    ld a, [hl+]                                   ; $79C5: $2A
    db $10                                        ; $79C6: $10
    ld d, l                                       ; $79C7: $55
    dec hl                                        ; $79C8: $2B

Jump_02C_79C9:
    ld [hl-], a                                   ; $79C9: $32
    ld l, $10                                     ; $79CA: $2E $10
    ld sp, $3210                                  ; $79CC: $31 $10 $32
    db $10                                        ; $79CF: $10
    ld d, l                                       ; $79D0: $55
    dec [hl]                                      ; $79D1: $35
    db $10                                        ; $79D2: $10
    ld [hl], $10                                  ; $79D3: $36 $10
    add hl, sp                                    ; $79D5: $39
    db $10                                        ; $79D6: $10
    ld a, [hl-]                                   ; $79D7: $3A
    db $10                                        ; $79D8: $10
    ld d, l                                       ; $79D9: $55
    dec a                                         ; $79DA: $3D
    db $10                                        ; $79DB: $10
    ld a, $10                                     ; $79DC: $3E $10
    ld b, c                                       ; $79DE: $41
    db $10                                        ; $79DF: $10
    ld b, d                                       ; $79E0: $42
    db $10                                        ; $79E1: $10
    ld d, l                                       ; $79E2: $55
    ld bc, $4314                                  ; $79E3: $01 $14 $43
    db $10                                        ; $79E6: $10
    ld b, l                                       ; $79E7: $45
    inc d                                         ; $79E8: $14
    ld c, b                                       ; $79E9: $48
    db $10                                        ; $79EA: $10
    ld d, l                                       ; $79EB: $55
    ld c, e                                       ; $79EC: $4B
    db $10                                        ; $79ED: $10
    ld c, h                                       ; $79EE: $4C
    db $10                                        ; $79EF: $10
    ld c, [hl]                                    ; $79F0: $4E
    db $10                                        ; $79F1: $10
    ld c, a                                       ; $79F2: $4F
    db $10                                        ; $79F3: $10
    ld d, l                                       ; $79F4: $55
    ld d, b                                       ; $79F5: $50
    db $10                                        ; $79F6: $10
    ld d, c                                       ; $79F7: $51
    db $10                                        ; $79F8: $10
    ld d, d                                       ; $79F9: $52
    db $10                                        ; $79FA: $10
    ld d, e                                       ; $79FB: $53
    db $10                                        ; $79FC: $10
    ld d, l                                       ; $79FD: $55
    ld d, h                                       ; $79FE: $54
    db $10                                        ; $79FF: $10
    ld d, l                                       ; $7A00: $55
    db $10                                        ; $7A01: $10
    ld e, b                                       ; $7A02: $58
    db $10                                        ; $7A03: $10
    ld e, c                                       ; $7A04: $59
    db $10                                        ; $7A05: $10
    ld d, l                                       ; $7A06: $55
    ld e, h                                       ; $7A07: $5C
    db $10                                        ; $7A08: $10
    ld bc, $4412                                  ; $7A09: $01 $12 $44
    db $10                                        ; $7A0C: $10
    ld b, [hl]                                    ; $7A0D: $46
    db $10                                        ; $7A0E: $10
    ld d, l                                       ; $7A0F: $55
    ld b, a                                       ; $7A10: $47

Jump_02C_7A11:
    db $10                                        ; $7A11: $10
    ld c, c                                       ; $7A12: $49
    db $10                                        ; $7A13: $10
    ld c, d                                       ; $7A14: $4A
    db $10                                        ; $7A15: $10
    ld c, l                                       ; $7A16: $4D
    db $F4                                        ; $7A17: $F4
    xor d                                         ; $7A18: $AA
    add hl, de                                    ; $7A19: $19
    ld d, [hl]                                    ; $7A1A: $56
    db $10                                        ; $7A1B: $10
    ld d, a                                       ; $7A1C: $57
    db $10                                        ; $7A1D: $10

jr_02C_7A1E:
    ld e, d                                       ; $7A1E: $5A
    db $10                                        ; $7A1F: $10
    ld e, e                                       ; $7A20: $5B
    xor e                                         ; $7A21: $AB
    db $10                                        ; $7A22: $10
    ld e, l                                       ; $7A23: $5D
    call nc, Call_000_105E                        ; $7A24: $D4 $5E $10
    ld e, a                                       ; $7A27: $5F
    ld [hl], h                                    ; $7A28: $74
    rra                                           ; $7A29: $1F
    xor a                                         ; $7A2A: $AF
    add hl, de                                    ; $7A2B: $19
    ld a, h                                       ; $7A2C: $7C
    db $10                                        ; $7A2D: $10
    ld a, l                                       ; $7A2E: $7D
    db $FC                                        ; $7A2F: $FC
    rra                                           ; $7A30: $1F
    rra                                           ; $7A31: $1F
    rra                                           ; $7A32: $1F
    rst RST_38                                    ; $7A33: $FF
    rra                                           ; $7A34: $1F
    rra                                           ; $7A35: $1F
    rra                                           ; $7A36: $1F
    rra                                           ; $7A37: $1F
    rra                                           ; $7A38: $1F
    rra                                           ; $7A39: $1F
    rra                                           ; $7A3A: $1F
    rra                                           ; $7A3B: $1F
    rst RST_38                                    ; $7A3C: $FF
    rra                                           ; $7A3D: $1F
    rra                                           ; $7A3E: $1F
    rra                                           ; $7A3F: $1F
    rra                                           ; $7A40: $1F
    rra                                           ; $7A41: $1F
    rra                                           ; $7A42: $1F
    rra                                           ; $7A43: $1F
    rra                                           ; $7A44: $1F
    ldh [$FF1F], a                                ; $7A45: $E0 $1F
    rra                                           ; $7A47: $1F
    ld a, [de]                                    ; $7A48: $1A
    nop                                           ; $7A49: $00
    ld l, $40                                     ; $7A4A: $2E $40
    ld d, l                                       ; $7A4C: $55
    nop                                           ; $7A4D: $00
    nop                                           ; $7A4E: $00
    ld a, h                                       ; $7A4F: $7C
    nop                                           ; $7A50: $00
    ld a, [hl]                                    ; $7A51: $7E
    ld c, $3E                                     ; $7A52: $0E $3E
    ld h, c                                       ; $7A54: $61
    ld [$0707], a                                 ; $7A55: $EA $07 $07
    nop                                           ; $7A58: $00
    stop                                          ; $7A59: $10 $00
    jr jr_02C_7A65                                ; $7A5B: $18 $08

    jr c, jr_02C_7A1E                             ; $7A5D: $38 $BF

    nop                                           ; $7A5F: $00
    inc a                                         ; $7A60: $3C
    ld [$FFE0], sp                                ; $7A61: $08 $E0 $FF
    rlca                                          ; $7A64: $07

jr_02C_7A65:
    rlca                                          ; $7A65: $07
    rlca                                          ; $7A66: $07
    xor l                                         ; $7A67: $AD
    ld b, $FC                                     ; $7A68: $06 $FC
    nop                                           ; $7A6A: $00
    add d                                         ; $7A6B: $82
    ld [bc], a                                    ; $7A6C: $02
    add hl, hl                                    ; $7A6D: $29
    add b                                         ; $7A6E: $80
    inc b                                         ; $7A6F: $04
    rst RST_30                                    ; $7A70: $F7
    xor a                                         ; $7A71: $AF
    rlca                                          ; $7A72: $07
    rst RST_38                                    ; $7A73: $FF
    add hl, hl                                    ; $7A74: $29
    add h                                         ; $7A75: $84
    nop                                           ; $7A76: $00
    dec sp                                        ; $7A77: $3B
    xor a                                         ; $7A78: $AF
    rst RST_10                                    ; $7A79: $D7
    rlca                                          ; $7A7A: $07
    ld bc, $00FE                                  ; $7A7B: $01 $FE $00
    add b                                         ; $7A7E: $80
    ld [bc], a                                    ; $7A7F: $02
    ld sp, hl                                     ; $7A80: $F9
    dec hl                                        ; $7A81: $2B
    or $59                                        ; $7A82: $F6 $59
    xor a                                         ; $7A84: $AF
    rlca                                          ; $7A85: $07
    ld bc, $007E                                  ; $7A86: $01 $7E $00
    bit 7, h                                      ; $7A89: $CB $7C
    xor a                                         ; $7A8B: $AF
    nop                                           ; $7A8C: $00
    ld [bc], a                                    ; $7A8D: $02
    ld [bc], a                                    ; $7A8E: $02
    db $FC                                        ; $7A8F: $FC
    nop                                           ; $7A90: $00
    xor a                                         ; $7A91: $AF
    rlca                                          ; $7A92: $07
    rst RST_38                                    ; $7A93: $FF
    rst RST_38                                    ; $7A94: $FF
    rst RST_38                                    ; $7A95: $FF
    xor a                                         ; $7A96: $AF
    rlca                                          ; $7A97: $07
    rst RST_38                                    ; $7A98: $FF
    rst RST_38                                    ; $7A99: $FF
    xor a                                         ; $7A9A: $AF
    rlca                                          ; $7A9B: $07
    ld bc, $FE5F                                  ; $7A9C: $01 $5F $FE
    nop                                           ; $7A9F: $00
    db $10                                        ; $7AA0: $10
    rlca                                          ; $7AA1: $07
    ld [bc], a                                    ; $7AA2: $02
    xor a                                         ; $7AA3: $AF
    rlca                                          ; $7AA4: $07
    ld bc, $3855                                  ; $7AA5: $01 $55 $38
    nop                                           ; $7AA8: $00
    ld b, h                                       ; $7AA9: $44
    nop                                           ; $7AAA: $00
    add d                                         ; $7AAB: $82
    ld [bc], a                                    ; $7AAC: $02
    cp $00                                        ; $7AAD: $FE $00
    rst RST_30                                    ; $7AAF: $F7
    dec hl                                        ; $7AB0: $2B
    xor a                                         ; $7AB1: $AF
    rlca                                          ; $7AB2: $07
    ld bc, $00FC                                  ; $7AB3: $01 $FC $00
    cp e                                          ; $7AB6: $BB
    add hl, hl                                    ; $7AB7: $29
    ld a, d                                       ; $7AB8: $7A
    add h                                         ; $7AB9: $84
    nop                                           ; $7ABA: $00
    rst RST_38                                    ; $7ABB: $FF
    rlca                                          ; $7ABC: $07
    dec b                                         ; $7ABD: $05
    cp $00                                        ; $7ABE: $FE $00
    db $10                                        ; $7AC0: $10
    ld a, [$0207]                                 ; $7AC1: $FA $07 $02
    xor a                                         ; $7AC4: $AF
    rlca                                          ; $7AC5: $07
    inc bc                                        ; $7AC6: $03
    ldh [c], a                                    ; $7AC7: $E2
    nop                                           ; $7AC8: $00
    ld [bc], a                                    ; $7AC9: $02
    db $EB                                        ; $7ACA: $EB
    nop                                           ; $7ACB: $00
    dec de                                        ; $7ACC: $1B
    ld bc, $0004                                  ; $7ACD: $01 $04 $00
    ld hl, sp+$00                                 ; $7AD0: $F8 $00
    xor a                                         ; $7AD2: $AF
    db $FD                                        ; $7AD3: $FD
    rlca                                          ; $7AD4: $07
    ld bc, $FFEF                                  ; $7AD5: $01 $EF $FF
    rlca                                          ; $7AD8: $07
    dec b                                         ; $7AD9: $05
    dec b                                         ; $7ADA: $05
    nop                                           ; $7ADB: $00
    ld d, [hl]                                    ; $7ADC: $56
    dec a                                         ; $7ADD: $3D
    nop                                           ; $7ADE: $00

jr_02C_7ADF:
    ld b, d                                       ; $7ADF: $42
    nop                                           ; $7AE0: $00
    add d                                         ; $7AE1: $82
    nop                                           ; $7AE2: $00
    db $FD                                        ; $7AE3: $FD
    ld a, b                                       ; $7AE4: $78
    push af                                       ; $7AE5: $F5
    nop                                           ; $7AE6: $00
    cp a                                          ; $7AE7: $BF
    rlca                                          ; $7AE8: $07
    ld bc, $0650                                  ; $7AE9: $01 $50 $06
    ld d, c                                       ; $7AEC: $51
    nop                                           ; $7AED: $00
    ld e, e                                       ; $7AEE: $5B
    ld d, d                                       ; $7AEF: $52
    nop                                           ; $7AF0: $00
    adc h                                         ; $7AF1: $8C
    nop                                           ; $7AF2: $00
    adc e                                         ; $7AF3: $8B
    rlca                                          ; $7AF4: $07
    nop                                           ; $7AF5: $00
    add hl, de                                    ; $7AF6: $19
    ld l, d                                       ; $7AF7: $6A
    rrca                                          ; $7AF8: $0F
    nop                                           ; $7AF9: $00
    ld c, a                                       ; $7AFA: $4F
    inc b                                         ; $7AFB: $04
    nop                                           ; $7AFC: $00
    cp [hl]                                       ; $7AFD: $BE
    nop                                           ; $7AFE: $00
    add h                                         ; $7AFF: $84
    xor d                                         ; $7B00: $AA
    nop                                           ; $7B01: $00
    sbc h                                         ; $7B02: $9C
    nop                                           ; $7B03: $00
    and [hl]                                      ; $7B04: $A6
    nop                                           ; $7B05: $00
    and h                                         ; $7B06: $A4
    nop                                           ; $7B07: $00
    jr jr_02C_7ADF                                ; $7B08: $18 $D5

    nop                                           ; $7B0A: $00
    ld a, c                                       ; $7B0B: $79
    ld h, b                                       ; $7B0C: $60
    nop                                           ; $7B0D: $00
    ret nz                                        ; $7B0E: $C0

    nop                                           ; $7B0F: $00
    ld b, b                                       ; $7B10: $40
    nop                                           ; $7B11: $00
    halt                                          ; $7B12: $76
    rst RST_30                                    ; $7B13: $F7
    nop                                           ; $7B14: $00
    add hl, de                                    ; $7B15: $19
    ld bc, $0080                                  ; $7B16: $01 $80 $00
    ld a, c                                       ; $7B19: $79
    ld [$00AA], sp                                ; $7B1A: $08 $AA $00
    ld e, h                                       ; $7B1D: $5C
    nop                                           ; $7B1E: $00
    ld h, d                                       ; $7B1F: $62
    nop                                           ; $7B20: $00
    and d                                         ; $7B21: $A2

Call_02C_7B22:
    nop                                           ; $7B22: $00
    inc h                                         ; $7B23: $24
    or l                                          ; $7B24: $B5
    nop                                           ; $7B25: $00
    db $10                                        ; $7B26: $10
    ld [bc], a                                    ; $7B27: $02
    ld a, c                                       ; $7B28: $79
    ld bc, $0200                                  ; $7B29: $01 $00 $02
    nop                                           ; $7B2C: $00
    ld e, l                                       ; $7B2D: $5D
    inc b                                         ; $7B2E: $04
    nop                                           ; $7B2F: $00
    db $E4                                        ; $7B30: $E4
    nop                                           ; $7B31: $00
    cp c                                          ; $7B32: $B9
    ld bc, $0007                                  ; $7B33: $01 $07 $00
    or a                                          ; $7B36: $B7
    ld a, c                                       ; $7B37: $79
    jr c, jr_02C_7B3A                             ; $7B38: $38 $00

jr_02C_7B3A:
    add hl, de                                    ; $7B3A: $19
    ld a, h                                       ; $7B3B: $7C
    nop                                           ; $7B3C: $00
    sbc c                                         ; $7B3D: $99
    xor e                                         ; $7B3E: $AB
    ld [$5989], a                                 ; $7B3F: $EA $89 $59
    dec b                                         ; $7B42: $05
    jr nz, jr_02C_7B47                            ; $7B43: $20 $02

    ld [hl], b                                    ; $7B45: $70
    nop                                           ; $7B46: $00

jr_02C_7B47:
    sub b                                         ; $7B47: $90
    db $DB                                        ; $7B48: $DB
    nop                                           ; $7B49: $00
    ld c, e                                       ; $7B4A: $4B
    cp $00                                        ; $7B4B: $FE $00
    add hl, de                                    ; $7B4D: $19
    inc a                                         ; $7B4E: $3C
    nop                                           ; $7B4F: $00
    ld sp, hl                                     ; $7B50: $F9
    xor d                                         ; $7B51: $AA
    ld bc, $007C                                  ; $7B52: $01 $7C $00
    ld b, $00                                     ; $7B55: $06 $00
    add hl, bc                                    ; $7B57: $09
    nop                                           ; $7B58: $00
    ld e, c                                       ; $7B59: $59
    xor d                                         ; $7B5A: $AA
    nop                                           ; $7B5B: $00
    ld d, [hl]                                    ; $7B5C: $56
    nop                                           ; $7B5D: $00
    ld c, b                                       ; $7B5E: $48
    nop                                           ; $7B5F: $00
    adc b                                         ; $7B60: $88
    nop                                           ; $7B61: $00
    add h                                         ; $7B62: $84
    jp c, $F902                                   ; $7B63: $DA $02 $F9

    inc b                                         ; $7B66: $04
    nop                                           ; $7B67: $00
    ld sp, hl                                     ; $7B68: $F9
    inc c                                         ; $7B69: $0C
    nop                                           ; $7B6A: $00
    inc d                                         ; $7B6B: $14
    xor l                                         ; $7B6C: $AD
    nop                                           ; $7B6D: $00
    inc h                                         ; $7B6E: $24
    nop                                           ; $7B6F: $00
    ld b, h                                       ; $7B70: $44
    nop                                           ; $7B71: $00
    ld a, e                                       ; $7B72: $7B
    ld a, h                                       ; $7B73: $7C
    nop                                           ; $7B74: $00
    ld l, e                                       ; $7B75: $6B
    ld [bc], a                                    ; $7B76: $02
    nop                                           ; $7B77: $00
    sbc c                                         ; $7B78: $99
    ld [$1800], sp                                ; $7B79: $08 $00 $18
    nop                                           ; $7B7C: $00
    adc c                                         ; $7B7D: $89
    ld d, l                                       ; $7B7E: $55
    ld b, d                                       ; $7B7F: $42
    nop                                           ; $7B80: $00
    ld b, $00                                     ; $7B81: $06 $00
    add hl, bc                                    ; $7B83: $09
    nop                                           ; $7B84: $00
    ld sp, hl                                     ; $7B85: $F9
    nop                                           ; $7B86: $00
    jp c, $9D29                                   ; $7B87: $DA $29 $9D

    ldh a, [rP1]                                  ; $7B8A: $F0 $00
    ld sp, hl                                     ; $7B8C: $F9
    ld a, $00                                     ; $7B8D: $3E $00
    ld b, c                                       ; $7B8F: $41
    or [hl]                                       ; $7B90: $B6
    ld [bc], a                                    ; $7B91: $02
    ld bc, $9902                                  ; $7B92: $01 $02 $99
    inc e                                         ; $7B95: $1C
    nop                                           ; $7B96: $00
    ld a, c                                       ; $7B97: $79
    ld [hl], c                                    ; $7B98: $71
    rst RST_30                                    ; $7B99: $F7
    nop                                           ; $7B9A: $00
    ld c, c                                       ; $7B9B: $49
    dec de                                        ; $7B9C: $1B
    ld a, e                                       ; $7B9D: $7B
    ld a, h                                       ; $7B9E: $7C
    nop                                           ; $7B9F: $00
    ld a, c                                       ; $7BA0: $79
    dec b                                         ; $7BA1: $05
    ld a, d                                       ; $7BA2: $7A
    ccf                                           ; $7BA3: $3F
    nop                                           ; $7BA4: $00
    ld c, a                                       ; $7BA5: $4F
    inc bc                                        ; $7BA6: $03
    cp c                                          ; $7BA7: $B9
    inc b                                         ; $7BA8: $04
    nop                                           ; $7BA9: $00
    inc a                                         ; $7BAA: $3C
    ld [$1900], a                                 ; $7BAB: $EA $00 $19
    ei                                            ; $7BAE: $FB
    dec h                                         ; $7BAF: $25
    ld [bc], a                                    ; $7BB0: $02
    jr nz, jr_02C_7BB3                            ; $7BB1: $20 $00

jr_02C_7BB3:
    ld a, $BD                                     ; $7BB3: $3E $BD
    nop                                           ; $7BB5: $00
    ld hl, $2900                                  ; $7BB6: $21 $00 $29
    ld bc, $0279                                  ; $7BB9: $01 $79 $02
    nop                                           ; $7BBC: $00
    ld a, e                                       ; $7BBD: $7B
    ldh [c], a                                    ; $7BBE: $E2
    nop                                           ; $7BBF: $00
    add hl, de                                    ; $7BC0: $19
    inc bc                                        ; $7BC1: $03
    ld sp, hl                                     ; $7BC2: $F9
    ld hl, sp+$00                                 ; $7BC3: $F8 $00
    ld a, c                                       ; $7BC5: $79
    or l                                          ; $7BC6: $B5
    sbc c                                         ; $7BC7: $99
    ld a, [$D900]                                 ; $7BC8: $FA $00 $D9
    ld a, h                                       ; $7BCB: $7C
    nop                                           ; $7BCC: $00
    and d                                         ; $7BCD: $A2
    ld [bc], a                                    ; $7BCE: $02
    ld a, d                                       ; $7BCF: $7A
    ld b, h                                       ; $7BD0: $44
    nop                                           ; $7BD1: $00
    ld a, c                                       ; $7BD2: $79
    rlca                                          ; $7BD3: $07
    rlca                                          ; $7BD4: $07
    ld [$7E00], sp                                ; $7BD5: $08 $00 $7E
    push de                                       ; $7BD8: $D5
    nop                                           ; $7BD9: $00
    dec de                                        ; $7BDA: $1B
    ld a, b                                       ; $7BDB: $78
    nop                                           ; $7BDC: $00
    adc h                                         ; $7BDD: $8C
    nop                                           ; $7BDE: $00
    ld [hl], d                                    ; $7BDF: $72
    nop                                           ; $7BE0: $00
    ld [$07AF], a                                 ; $7BE1: $EA $AF $07
    ld bc, $0004                                  ; $7BE4: $01 $04 $00
    add h                                         ; $7BE7: $84
    nop                                           ; $7BE8: $00
    cp [hl]                                       ; $7BE9: $BE
    xor $00                                       ; $7BEA: $EE $00
    add hl, de                                    ; $7BEC: $19
    inc bc                                        ; $7BED: $03
    ld [$AF00], sp                                ; $7BEE: $08 $00 $AF
    rlca                                          ; $7BF1: $07
    add hl, hl                                    ; $7BF2: $29
    nop                                           ; $7BF3: $00
    ld d, l                                       ; $7BF4: $55
    nop                                           ; $7BF5: $00
    inc b                                         ; $7BF6: $04
    rrca                                          ; $7BF7: $0F
    ld de, $0007                                  ; $7BF8: $11 $07 $00
    ld bc, $ED00                                  ; $7BFB: $01 $00 $ED
    push bc                                       ; $7BFE: $C5
    inc b                                         ; $7BFF: $04
    or c                                          ; $7C00: $B1
    inc bc                                        ; $7C01: $03
    jp c, $FF03                                   ; $7C02: $DA $03 $FF

    db $10                                        ; $7C05: $10
    ld bc, $3F7F                                  ; $7C06: $01 $7F $3F
    jr c, jr_02C_7C2A                             ; $7C09: $38 $1F

    db $FC                                        ; $7C0B: $FC
    rrca                                          ; $7C0C: $0F
    cp $80                                        ; $7C0D: $FE $80
    ld d, l                                       ; $7C0F: $55
    ret nz                                        ; $7C10: $C0

    db $10                                        ; $7C11: $10
    ldh a, [$FFA0]                                ; $7C12: $F0 $A0
    ld a, h                                       ; $7C14: $7C
    sub b                                         ; $7C15: $90
    inc e                                         ; $7C16: $1C
    sub b                                         ; $7C17: $90
    adc h                                         ; $7C18: $8C
    pop de                                        ; $7C19: $D1
    ld [hl], b                                    ; $7C1A: $70
    ccf                                           ; $7C1B: $3F
    ldh [$FF90], a                                ; $7C1C: $E0 $90
    pop af                                        ; $7C1E: $F1
    db $FC                                        ; $7C1F: $FC
    rlca                                          ; $7C20: $07
    xor e                                         ; $7C21: $AB
    or c                                          ; $7C22: $B1
    jr jr_02C_7C35                                ; $7C23: $18 $10

    add hl, sp                                    ; $7C25: $39
    ret nc                                        ; $7C26: $D0

jr_02C_7C27:
    scf                                           ; $7C27: $37
    db $10                                        ; $7C28: $10
    ret nz                                        ; $7C29: $C0

jr_02C_7C2A:
    ld bc, $7E3C                                  ; $7C2A: $01 $3C $7E
    jr nc, jr_02C_7C27                            ; $7C2D: $30 $F8

    ld b, b                                       ; $7C2F: $40
    ldh [rP1], a                                  ; $7C30: $E0 $00
    add hl, bc                                    ; $7C32: $09
    ld d, l                                       ; $7C33: $55
    inc bc                                        ; $7C34: $03

jr_02C_7C35:
    inc de                                        ; $7C35: $13
    ld bc, $3315                                  ; $7C36: $01 $15 $33
    db $10                                        ; $7C39: $10
    dec sp                                        ; $7C3A: $3B
    db $10                                        ; $7C3B: $10
    jr z, jr_02C_7C7D                             ; $7C3C: $28 $3F

    ld de, $1910                                  ; $7C3E: $11 $10 $19
    db $10                                        ; $7C41: $10
    dec e                                         ; $7C42: $1D
    rst RST_30                                    ; $7C43: $F7
    rra                                           ; $7C44: $1F
    inc [hl]                                      ; $7C45: $34
    di                                            ; $7C46: $F3
    rst RST_38                                    ; $7C47: $FF
    and b                                         ; $7C48: $A0
    stop                                          ; $7C49: $10 $00
    db $10                                        ; $7C4B: $10
    inc bc                                        ; $7C4C: $03
    db $FC                                        ; $7C4D: $FC
    ld [$30CF], sp                                ; $7C4E: $08 $CF $30
    rst RST_28                                    ; $7C51: $EF
    db $10                                        ; $7C52: $10
    sub b                                         ; $7C53: $90
    cp $67                                        ; $7C54: $FE $67
    sbc b                                         ; $7C56: $98
    inc h                                         ; $7C57: $24
    ld [hl], a                                    ; $7C58: $77
    adc b                                         ; $7C59: $88
    ld d, c                                       ; $7C5A: $51
    dec de                                        ; $7C5B: $1B
    db $E4                                        ; $7C5C: $E4
    ld de, $C837                                  ; $7C5D: $11 $37 $C8
    adc b                                         ; $7C60: $88
    ld de, $FF40                                  ; $7C61: $11 $40 $FF
    pop bc                                        ; $7C64: $C1
    db $10                                        ; $7C65: $10
    jp $C77E                                      ; $7C66: $C3 $7E $C7


    nop                                           ; $7C69: $00
    ld a, h                                       ; $7C6A: $7C
    rst RST_08                                    ; $7C6B: $CF
    ld a, b                                       ; $7C6C: $78
    db $DD                                        ; $7C6D: $DD
    ld [hl], b                                    ; $7C6E: $70
    ld sp, hl                                     ; $7C6F: $F9
    ld h, b                                       ; $7C70: $60
    pop af                                        ; $7C71: $F1
    adc e                                         ; $7C72: $8B
    ldh [$FFE0], a                                ; $7C73: $E0 $E0
    nop                                           ; $7C75: $00
    ret nz                                        ; $7C76: $C0

    db $10                                        ; $7C77: $10
    add b                                         ; $7C78: $80
    db $10                                        ; $7C79: $10
    rrca                                          ; $7C7A: $0F
    xor b                                         ; $7C7B: $A8
    dec b                                         ; $7C7C: $05

jr_02C_7C7D:
    adc h                                         ; $7C7D: $8C
    db $10                                        ; $7C7E: $10
    adc $10                                       ; $7C7F: $CE $10
    rst RST_28                                    ; $7C81: $EF
    add h                                         ; $7C82: $84
    rst RST_38                                    ; $7C83: $FF
    ld [bc], a                                    ; $7C84: $02
    add $7F                                       ; $7C85: $C6 $7F

jr_02C_7C87:
    rst RST_20                                    ; $7C87: $E7
    dec a                                         ; $7C88: $3D
    rst RST_30                                    ; $7C89: $F7
    inc e                                         ; $7C8A: $1C
    ld h, b                                       ; $7C8B: $60
    inc c                                         ; $7C8C: $0C
    cp b                                          ; $7C8D: $B8
    db $10                                        ; $7C8E: $10
    inc b                                         ; $7C8F: $04

jr_02C_7C90:
    db $10                                        ; $7C90: $10
    ldh [rNR12], a                                ; $7C91: $E0 $12
    ld bc, $03FE                                  ; $7C93: $01 $FE $03
    nop                                           ; $7C96: $00
    db $FC                                        ; $7C97: $FC
    ld b, $F9                                     ; $7C98: $06 $F9
    rlca                                          ; $7C9A: $07
    ld hl, sp-$09                                 ; $7C9B: $F8 $F7
    ld [$19F3], sp                                ; $7C9D: $08 $F3 $19
    inc c                                         ; $7CA0: $0C
    cp e                                          ; $7CA1: $BB
    ld b, h                                       ; $7CA2: $44
    add b                                         ; $7CA3: $80
    and b                                         ; $7CA4: $A0
    pop hl                                        ; $7CA5: $E1
    ld e, $E0                                     ; $7CA6: $1E $E0
    ld bc, $9C03                                  ; $7CA8: $01 $03 $9C
    ld h, e                                       ; $7CAB: $63
    add b                                         ; $7CAC: $80
    ld a, a                                       ; $7CAD: $7F
    ld [bc], a                                    ; $7CAE: $02
    rst RST_38                                    ; $7CAF: $FF
    and b                                         ; $7CB0: $A0
    add b                                         ; $7CB1: $80
    db $10                                        ; $7CB2: $10
    adc a                                         ; $7CB3: $8F
    ei                                            ; $7CB4: $FB
    sbc a                                         ; $7CB5: $9F
    ldh a, [c]                                    ; $7CB6: $F2
    cp a                                          ; $7CB7: $BF
    ldh [$FFF6], a                                ; $7CB8: $E0 $F6
    ld [hl], $C0                                  ; $7CBA: $36 $C0
    db $E4                                        ; $7CBC: $E4
    ldh [rNR41], a                                ; $7CBD: $E0 $20
    nop                                           ; $7CBF: $00
    jr nz, jr_02C_7CD2                            ; $7CC0: $20 $10

    ld bc, $10AA                                  ; $7CC2: $01 $AA $10
    inc bc                                        ; $7CC5: $03
    jr nz, jr_02C_7CCF                            ; $7CC6: $20 $07

    jr nz, jr_02C_7CD9                            ; $7CC8: $20 $0F

    jr nz, jr_02C_7CE9                            ; $7CCA: $20 $1D

    add b                                         ; $7CCC: $80
    jr nz, jr_02C_7C87                            ; $7CCD: $20 $B8

jr_02C_7CCF:
    rra                                           ; $7CCF: $1F
    ldh a, [c]                                    ; $7CD0: $F2

jr_02C_7CD1:
    dec a                                         ; $7CD1: $3D

jr_02C_7CD2:
    rst RST_20                                    ; $7CD2: $E7
    ld hl, sp-$31                                 ; $7CD3: $F8 $CF
    nop                                           ; $7CD5: $00
    ldh a, [$FF9B]                                ; $7CD6: $F0 $9B
    db $E4                                        ; $7CD8: $E4

jr_02C_7CD9:
    scf                                           ; $7CD9: $37
    ret z                                         ; $7CDA: $C8

    ld l, a                                       ; $7CDB: $6F
    sub b                                         ; $7CDC: $90
    cp l                                          ; $7CDD: $BD
    inc b                                         ; $7CDE: $04
    ld b, d                                       ; $7CDF: $42
    rst RST_10                                    ; $7CE0: $D7
    jr z, @+$69                                   ; $7CE1: $28 $67

    sbc b                                         ; $7CE3: $98
    ret nc                                        ; $7CE4: $D0

    jr nc, jr_02C_7C90                            ; $7CE5: $30 $A9

    nop                                           ; $7CE7: $00
    ld d, [hl]                                    ; $7CE8: $56

jr_02C_7CE9:
    ld d, a                                       ; $7CE9: $57
    xor b                                         ; $7CEA: $A8
    or [hl]                                       ; $7CEB: $B6
    ld c, c                                       ; $7CEC: $49
    ret z                                         ; $7CED: $C8

    scf                                           ; $7CEE: $37
    xor h                                         ; $7CEF: $AC
    dec b                                         ; $7CF0: $05
    ld d, e                                       ; $7CF1: $53
    ld hl, sp+$07                                 ; $7CF2: $F8 $07
    ldh [$FF1F], a                                ; $7CF4: $E0 $1F
    jr nz, @+$01                                  ; $7CF6: $20 $FF

    db $10                                        ; $7CF8: $10
    jr nz, @-$02                                  ; $7CF9: $20 $FC

    ld h, a                                       ; $7CFB: $67
    db $10                                        ; $7CFC: $10
    or $9C                                        ; $7CFD: $F6 $9C
    cp $0C                                        ; $7CFF: $FE $0C
    sbc [hl]                                      ; $7D01: $9E

jr_02C_7D02:
    ld a, [bc]                                    ; $7D02: $0A

jr_02C_7D03:
    inc b                                         ; $7D03: $04
    ld c, $00                                     ; $7D04: $0E $00
    ld b, $10                                     ; $7D06: $06 $10
    ld [bc], a                                    ; $7D08: $02
    db $10                                        ; $7D09: $10
    adc $94                                       ; $7D0A: $CE $94
    db $10                                        ; $7D0C: $10
    sbc $08                                       ; $7D0D: $DE $08
    ret nc                                        ; $7D0F: $D0

    jr jr_02C_7D22                                ; $7D10: $18 $10

    jr c, jr_02C_7D02                             ; $7D12: $38 $EE

    ld c, d                                       ; $7D14: $4A
    ld a, b                                       ; $7D15: $78
    sub b                                         ; $7D16: $90
    ld hl, sp-$72                                 ; $7D17: $F8 $8E
    db $10                                        ; $7D19: $10
    rrca                                          ; $7D1A: $0F
    ld de, $48FF                                  ; $7D1B: $11 $FF $48
    nop                                           ; $7D1E: $00
    db $10                                        ; $7D1F: $10
    add b                                         ; $7D20: $80
    ld a, a                                       ; $7D21: $7F

jr_02C_7D22:
    ld de, $3FC1                                  ; $7D22: $11 $C1 $3F
    jp Jump_000_1080                              ; $7D25: $C3 $80 $10


    rst RST_20                                    ; $7D28: $E7
    rra                                           ; $7D29: $1F
    ld h, c                                       ; $7D2A: $61
    sbc a                                         ; $7D2B: $9F
    ld [hl], b                                    ; $7D2C: $70
    adc a                                         ; $7D2D: $8F
    or b                                          ; $7D2E: $B0
    ld [bc], a                                    ; $7D2F: $02
    ld c, a                                       ; $7D30: $4F
    cp e                                          ; $7D31: $BB
    ld b, a                                       ; $7D32: $47
    reti                                          ; $7D33: $D9


    daa                                           ; $7D34: $27
    ret c                                         ; $7D35: $D8

    stop                                          ; $7D36: $10 $00
    dec l                                         ; $7D38: $2D
    rst RST_38                                    ; $7D39: $FF
    ccf                                           ; $7D3A: $3F
    ld de, $20E0                                  ; $7D3B: $11 $E0 $20
    db $10                                        ; $7D3E: $10
    ldh a, [$FF80]                                ; $7D3F: $F0 $80
    ldh a, [rNR11]                                ; $7D41: $F0 $11
    add hl, bc                                    ; $7D43: $09
    ldh a, [rNR10]                                ; $7D44: $F0 $10
    cp $F8                                        ; $7D46: $FE $F8
    inc a                                         ; $7D48: $3C
    ldh a, [$FF2B]                                ; $7D49: $F0 $2B
    ld a, b                                       ; $7D4B: $78
    ldh [rNR41], a                                ; $7D4C: $E0 $20
    ret nz                                        ; $7D4E: $C0

    jr nz, jr_02C_7CD1                            ; $7D4F: $20 $80

    jr nz, jr_02C_7D03                            ; $7D51: $20 $B0

    push af                                       ; $7D53: $F5
    ld de, $9151                                  ; $7D54: $11 $51 $91
    pop de                                        ; $7D57: $D1
    db $FC                                        ; $7D58: $FC
    ld b, b                                       ; $7D59: $40
    cp $90                                        ; $7D5A: $FE $90
    ld d, a                                       ; $7D5C: $57
    rst RST_38                                    ; $7D5D: $FF
    sub b                                         ; $7D5E: $90
    ld [hl], b                                    ; $7D5F: $70
    sub b                                         ; $7D60: $90
    ld hl, sp-$6F                                 ; $7D61: $F8 $91
    ld [hl], b                                    ; $7D63: $70
    sub c                                         ; $7D64: $91
    ret nz                                        ; $7D65: $C0

    rrca                                          ; $7D66: $0F
    dec bc                                        ; $7D67: $0B
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

Jump_02C_7EC9:
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

Jump_02C_7EFF:
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
