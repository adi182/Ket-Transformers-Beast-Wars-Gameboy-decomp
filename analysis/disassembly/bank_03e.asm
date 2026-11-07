; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03e", ROMX[$4000], BANK[$3e]

    ld hl, $D680                                  ; $4000: $21 $80 $D6

Call_03E_4003:
    push hl                                       ; $4003: $E5
    pop de                                        ; $4004: $D1
    push de                                       ; $4005: $D5
    ld hl, $002C                                  ; $4006: $21 $2C $00
    add hl, de                                    ; $4009: $19
    xor a                                         ; $400A: $AF
    ld [hl], a                                    ; $400B: $77
    ld hl, $0031                                  ; $400C: $21 $31 $00
    add hl, de                                    ; $400F: $19
    ld a, [hl]                                    ; $4010: $7E
    or a                                          ; $4011: $B7
    jr z, jr_03E_402B                             ; $4012: $28 $17

    ld hl, $0006                                  ; $4014: $21 $06 $00
    add hl, de                                    ; $4017: $19
    dec [hl]                                      ; $4018: $35
    ld a, [hl]                                    ; $4019: $7E
    add $20                                       ; $401A: $C6 $20
    cp $10                                        ; $401C: $FE $10
    jp nc, Jump_03E_41F4                          ; $401E: $D2 $F4 $41

    xor a                                         ; $4021: $AF
    ld [de], a                                    ; $4022: $12
    ld a, $3C                                     ; $4023: $3E $3C
    ld [$C35F], a                                 ; $4025: $EA $5F $C3
    jp Jump_03E_41F4                              ; $4028: $C3 $F4 $41


jr_03E_402B:
    ld hl, $0029                                  ; $402B: $21 $29 $00
    add hl, de                                    ; $402E: $19
    ld a, [hl]                                    ; $402F: $7E
    cp $0A                                        ; $4030: $FE $0A
    jr z, jr_03E_4049                             ; $4032: $28 $15

    cp $0B                                        ; $4034: $FE $0B
    jr z, jr_03E_4049                             ; $4036: $28 $11

    cp $0D                                        ; $4038: $FE $0D
    jr nz, jr_03E_4075                            ; $403A: $20 $39

    ld hl, $002E                                  ; $403C: $21 $2E $00
    add hl, de                                    ; $403F: $19
    ld a, [hl]                                    ; $4040: $7E
    and $0F                                       ; $4041: $E6 $0F
    jp nz, Jump_03E_4141                          ; $4043: $C2 $41 $41

    jp Jump_03E_4125                              ; $4046: $C3 $25 $41


jr_03E_4049:
    ld hl, $002E                                  ; $4049: $21 $2E $00
    add hl, de                                    ; $404C: $19
    ld a, [hl]                                    ; $404D: $7E
    and $0F                                       ; $404E: $E6 $0F
    jp nz, Jump_03E_4141                          ; $4050: $C2 $41 $41

    push hl                                       ; $4053: $E5
    call Call_03E_423B                            ; $4054: $CD $3B $42
    ld hl, $001C                                  ; $4057: $21 $1C $00
    add hl, de                                    ; $405A: $19
    ld a, $03                                     ; $405B: $3E $03
    ld [hl], a                                    ; $405D: $77
    ld a, $10                                     ; $405E: $3E $10
    bit 1, c                                      ; $4060: $CB $49
    jr nz, jr_03E_406C                            ; $4062: $20 $08

    ld a, $28                                     ; $4064: $3E $28
    bit 0, c                                      ; $4066: $CB $41
    jr nz, jr_03E_406C                            ; $4068: $20 $02

    ld a, $00                                     ; $406A: $3E $00

jr_03E_406C:
    ld hl, $0014                                  ; $406C: $21 $14 $00
    add hl, de                                    ; $406F: $19
    ld [hl], a                                    ; $4070: $77
    pop hl                                        ; $4071: $E1
    jp Jump_03E_4125                              ; $4072: $C3 $25 $41


jr_03E_4075:
    ld hl, $002D                                  ; $4075: $21 $2D $00
    add hl, de                                    ; $4078: $19
    ld a, [hl]                                    ; $4079: $7E
    cp $2E                                        ; $407A: $FE $2E
    jr nz, jr_03E_40D3                            ; $407C: $20 $55

    ld hl, $0029                                  ; $407E: $21 $29 $00
    add hl, de                                    ; $4081: $19
    ld a, [hl]                                    ; $4082: $7E
    and $0F                                       ; $4083: $E6 $0F
    add a                                         ; $4085: $87
    ld c, a                                       ; $4086: $4F
    ld b, $00                                     ; $4087: $06 $00
    ld hl, $4250                                  ; $4089: $21 $50 $42
    add hl, bc                                    ; $408C: $09
    ld c, [hl]                                    ; $408D: $4E
    inc hl                                        ; $408E: $23
    ld b, [hl]                                    ; $408F: $46
    push bc                                       ; $4090: $C5
    ld hl, $0004                                  ; $4091: $21 $04 $00
    add hl, de                                    ; $4094: $19
    ld b, [hl]                                    ; $4095: $46
    inc hl                                        ; $4096: $23
    ld c, [hl]                                    ; $4097: $4E
    ld e, l                                       ; $4098: $5D
    ld d, h                                       ; $4099: $54
    pop hl                                        ; $409A: $E1
    add hl, bc                                    ; $409B: $09
    ld a, l                                       ; $409C: $7D
    ld [de], a                                    ; $409D: $12
    dec de                                        ; $409E: $1B
    ld a, h                                       ; $409F: $7C
    ld [de], a                                    ; $40A0: $12
    pop de                                        ; $40A1: $D1
    push de                                       ; $40A2: $D5
    ld hl, $002E                                  ; $40A3: $21 $2E $00
    add hl, de                                    ; $40A6: $19
    ld a, [hl]                                    ; $40A7: $7E
    and $0F                                       ; $40A8: $E6 $0F
    jp nz, Jump_03E_4141                          ; $40AA: $C2 $41 $41

    push hl                                       ; $40AD: $E5
    ld hl, $0032                                  ; $40AE: $21 $32 $00
    add hl, de                                    ; $40B1: $19
    ld a, [hl]                                    ; $40B2: $7E
    or a                                          ; $40B3: $B7
    jr nz, jr_03E_40D0                            ; $40B4: $20 $1A

    ld a, $FF                                     ; $40B6: $3E $FF
    ld [hl], a                                    ; $40B8: $77
    ld bc, $456E                                  ; $40B9: $01 $6E $45
    ld hl, $0029                                  ; $40BC: $21 $29 $00
    add hl, de                                    ; $40BF: $19
    ld a, [hl]                                    ; $40C0: $7E
    add a                                         ; $40C1: $87
    ld l, a                                       ; $40C2: $6F
    ld h, $00                                     ; $40C3: $26 $00
    add hl, bc                                    ; $40C5: $09
    ld c, [hl]                                    ; $40C6: $4E
    inc hl                                        ; $40C7: $23
    ld b, [hl]                                    ; $40C8: $46
    ld hl, $0012                                  ; $40C9: $21 $12 $00
    add hl, de                                    ; $40CC: $19
    ld [hl], c                                    ; $40CD: $71
    inc hl                                        ; $40CE: $23
    ld [hl], b                                    ; $40CF: $70

jr_03E_40D0:
    pop hl                                        ; $40D0: $E1
    jr jr_03E_4125                                ; $40D1: $18 $52

jr_03E_40D3:
    ld b, a                                       ; $40D3: $47
    pop de                                        ; $40D4: $D1
    push de                                       ; $40D5: $D5
    ld hl, $002E                                  ; $40D6: $21 $2E $00
    add hl, de                                    ; $40D9: $19
    ld a, [hl]                                    ; $40DA: $7E
    and $0F                                       ; $40DB: $E6 $0F
    jp nz, Jump_03E_4141                          ; $40DD: $C2 $41 $41

    push hl                                       ; $40E0: $E5
    ld hl, $0032                                  ; $40E1: $21 $32 $00
    add hl, de                                    ; $40E4: $19
    ld a, [hl]                                    ; $40E5: $7E
    or a                                          ; $40E6: $B7
    jr z, jr_03E_4104                             ; $40E7: $28 $1B

    xor a                                         ; $40E9: $AF
    ld [hl], a                                    ; $40EA: $77
    push bc                                       ; $40EB: $C5
    ld bc, $4550                                  ; $40EC: $01 $50 $45
    ld hl, $0029                                  ; $40EF: $21 $29 $00
    add hl, de                                    ; $40F2: $19
    ld a, [hl]                                    ; $40F3: $7E
    add a                                         ; $40F4: $87
    ld l, a                                       ; $40F5: $6F
    ld h, $00                                     ; $40F6: $26 $00
    add hl, bc                                    ; $40F8: $09
    ld c, [hl]                                    ; $40F9: $4E
    inc hl                                        ; $40FA: $23
    ld b, [hl]                                    ; $40FB: $46
    ld hl, $0012                                  ; $40FC: $21 $12 $00
    add hl, de                                    ; $40FF: $19
    ld [hl], c                                    ; $4100: $71
    inc hl                                        ; $4101: $23
    ld [hl], b                                    ; $4102: $70
    pop bc                                        ; $4103: $C1

jr_03E_4104:
    pop hl                                        ; $4104: $E1
    ld a, b                                       ; $4105: $78
    cp $2F                                        ; $4106: $FE $2F
    jr c, jr_03E_4125                             ; $4108: $38 $1B

    ld a, $82                                     ; $410A: $3E $82
    ld [hl+], a                                   ; $410C: $22
    ld a, $FF                                     ; $410D: $3E $FF
    ld [hl], a                                    ; $410F: $77
    ld a, $18                                     ; $4110: $3E $18
    ld b, $02                                     ; $4112: $06 $02
    ld c, $02                                     ; $4114: $0E $02
    call Call_000_189B                            ; $4116: $CD $9B $18
    ld a, $C2                                     ; $4119: $3E $C2
    call Call_000_1360                            ; $411B: $CD $60 $13
    ld a, $78                                     ; $411E: $3E $78
    ld [$C35F], a                                 ; $4120: $EA $5F $C3
    jr jr_03E_4141                                ; $4123: $18 $1C

Jump_03E_4125:
jr_03E_4125:
    push hl                                       ; $4125: $E5
    ld hl, $002A                                  ; $4126: $21 $2A $00
    add hl, de                                    ; $4129: $19
    ld a, [hl]                                    ; $412A: $7E
    pop hl                                        ; $412B: $E1
    or a                                          ; $412C: $B7
    jp nz, Jump_03E_4141                          ; $412D: $C2 $41 $41

    ld a, $81                                     ; $4130: $3E $81
    ld [hl], a                                    ; $4132: $77
    ld a, $18                                     ; $4133: $3E $18
    ld b, $02                                     ; $4135: $06 $02
    ld c, $02                                     ; $4137: $0E $02
    call Call_000_189B                            ; $4139: $CD $9B $18
    ld a, $FF                                     ; $413C: $3E $FF
    ld [$C35F], a                                 ; $413E: $EA $5F $C3

Jump_03E_4141:
jr_03E_4141:
    pop de                                        ; $4141: $D1
    push de                                       ; $4142: $D5
    ld hl, $002E                                  ; $4143: $21 $2E $00
    add hl, de                                    ; $4146: $19
    ld a, [hl]                                    ; $4147: $7E
    or a                                          ; $4148: $B7
    jp nz, Jump_03E_41BF                          ; $4149: $C2 $BF $41

    pop hl                                        ; $414C: $E1
    push hl                                       ; $414D: $E5
    ld bc, $0029                                  ; $414E: $01 $29 $00
    add hl, bc                                    ; $4151: $09
    ld a, [hl]                                    ; $4152: $7E
    and $0F                                       ; $4153: $E6 $0F
    add a                                         ; $4155: $87
    ld e, a                                       ; $4156: $5F
    ld d, $00                                     ; $4157: $16 $00
    ld hl, $4270                                  ; $4159: $21 $70 $42
    add hl, de                                    ; $415C: $19
    ld e, [hl]                                    ; $415D: $5E
    inc hl                                        ; $415E: $23
    ld d, [hl]                                    ; $415F: $56
    pop bc                                        ; $4160: $C1
    push bc                                       ; $4161: $C5
    ld hl, $002C                                  ; $4162: $21 $2C $00
    add hl, bc                                    ; $4165: $09
    push de                                       ; $4166: $D5
    push hl                                       ; $4167: $E5
    ld hl, $0033                                  ; $4168: $21 $33 $00
    add hl, bc                                    ; $416B: $09
    push hl                                       ; $416C: $E5
    call Call_03E_423B                            ; $416D: $CD $3B $42
    pop de                                        ; $4170: $D1
    pop hl                                        ; $4171: $E1
    bit 4, c                                      ; $4172: $CB $61
    jr z, jr_03E_4184                             ; $4174: $28 $0E

    ld a, [de]                                    ; $4176: $1A
    inc a                                         ; $4177: $3C
    and $0F                                       ; $4178: $E6 $0F
    ld [de], a                                    ; $417A: $12
    cp $01                                        ; $417B: $FE $01
    jr nz, jr_03E_4186                            ; $417D: $20 $07

    ld a, $FF                                     ; $417F: $3E $FF
    ld [hl], a                                    ; $4181: $77
    jr jr_03E_4186                                ; $4182: $18 $02

jr_03E_4184:
    xor a                                         ; $4184: $AF
    ld [de], a                                    ; $4185: $12

jr_03E_4186:
    ld a, c                                       ; $4186: $79
    and $0F                                       ; $4187: $E6 $0F
    add a                                         ; $4189: $87
    add a                                         ; $418A: $87
    pop hl                                        ; $418B: $E1
    ld e, a                                       ; $418C: $5F
    ld d, $00                                     ; $418D: $16 $00
    add hl, de                                    ; $418F: $19
    pop de                                        ; $4190: $D1
    push de                                       ; $4191: $D5
    ld c, [hl]                                    ; $4192: $4E
    inc hl                                        ; $4193: $23
    ld b, [hl]                                    ; $4194: $46
    inc hl                                        ; $4195: $23
    push bc                                       ; $4196: $C5
    ld c, [hl]                                    ; $4197: $4E
    inc hl                                        ; $4198: $23
    ld b, [hl]                                    ; $4199: $46
    push bc                                       ; $419A: $C5
    ld hl, $0006                                  ; $419B: $21 $06 $00
    add hl, de                                    ; $419E: $19
    ld b, [hl]                                    ; $419F: $46
    inc hl                                        ; $41A0: $23
    ld c, [hl]                                    ; $41A1: $4E
    ld e, l                                       ; $41A2: $5D
    ld d, h                                       ; $41A3: $54
    pop hl                                        ; $41A4: $E1
    add hl, bc                                    ; $41A5: $09
    ld a, l                                       ; $41A6: $7D
    ld [de], a                                    ; $41A7: $12
    dec de                                        ; $41A8: $1B
    ld a, h                                       ; $41A9: $7C
    ld [de], a                                    ; $41AA: $12
    pop bc                                        ; $41AB: $C1
    pop de                                        ; $41AC: $D1
    push de                                       ; $41AD: $D5
    ld hl, $0004                                  ; $41AE: $21 $04 $00
    add hl, de                                    ; $41B1: $19
    ld d, [hl]                                    ; $41B2: $56
    inc hl                                        ; $41B3: $23
    ld e, [hl]                                    ; $41B4: $5E
    push hl                                       ; $41B5: $E5
    ld l, e                                       ; $41B6: $6B
    ld h, d                                       ; $41B7: $62
    add hl, bc                                    ; $41B8: $09
    pop de                                        ; $41B9: $D1
    ld a, l                                       ; $41BA: $7D
    ld [de], a                                    ; $41BB: $12
    dec de                                        ; $41BC: $1B
    ld a, h                                       ; $41BD: $7C
    ld [de], a                                    ; $41BE: $12

Jump_03E_41BF:
    pop de                                        ; $41BF: $D1
    push de                                       ; $41C0: $D5
    ld hl, $0004                                  ; $41C1: $21 $04 $00
    add hl, de                                    ; $41C4: $19
    ld a, [hl]                                    ; $41C5: $7E
    cp $08                                        ; $41C6: $FE $08
    jr nc, jr_03E_41CE                            ; $41C8: $30 $04

    ld a, $08                                     ; $41CA: $3E $08
    jr jr_03E_41D4                                ; $41CC: $18 $06

jr_03E_41CE:
    cp $97                                        ; $41CE: $FE $97
    jr c, jr_03E_41D7                             ; $41D0: $38 $05

    ld a, $97                                     ; $41D2: $3E $97

jr_03E_41D4:
    ld [hl+], a                                   ; $41D4: $22
    xor a                                         ; $41D5: $AF
    ld [hl], a                                    ; $41D6: $77

jr_03E_41D7:
    pop de                                        ; $41D7: $D1
    push de                                       ; $41D8: $D5
    ld hl, $0006                                  ; $41D9: $21 $06 $00
    add hl, de                                    ; $41DC: $19
    ld a, [hl]                                    ; $41DD: $7E
    cp $18                                        ; $41DE: $FE $18
    jr nc, jr_03E_41E6                            ; $41E0: $30 $04

    ld a, $18                                     ; $41E2: $3E $18
    jr jr_03E_41EC                                ; $41E4: $18 $06

jr_03E_41E6:
    cp $77                                        ; $41E6: $FE $77
    jr c, jr_03E_41EF                             ; $41E8: $38 $05

    ld a, $77                                     ; $41EA: $3E $77

jr_03E_41EC:
    ld [hl+], a                                   ; $41EC: $22
    xor a                                         ; $41ED: $AF
    ld [hl], a                                    ; $41EE: $77

jr_03E_41EF:
    pop de                                        ; $41EF: $D1
    push de                                       ; $41F0: $D5
    call Call_03E_41F6                            ; $41F1: $CD $F6 $41

Jump_03E_41F4:
    pop hl                                        ; $41F4: $E1
    ret                                           ; $41F5: $C9


Call_03E_41F6:
    ld hl, $002E                                  ; $41F6: $21 $2E $00
    add hl, de                                    ; $41F9: $19
    ld a, [hl]                                    ; $41FA: $7E
    add a                                         ; $41FB: $87
    jr c, jr_03E_4208                             ; $41FC: $38 $0A

    cp $04                                        ; $41FE: $FE $04
    ret nz                                        ; $4200: $C0

    ld a, [de]                                    ; $4201: $1A
    bit 4, a                                      ; $4202: $CB $67
    ret z                                         ; $4204: $C8

    xor a                                         ; $4205: $AF
    ld [de], a                                    ; $4206: $12
    ret                                           ; $4207: $C9


jr_03E_4208:
    srl a                                         ; $4208: $CB $3F
    ld [hl], a                                    ; $420A: $77
    ld bc, $458C                                  ; $420B: $01 $8C $45
    cp $01                                        ; $420E: $FE $01
    jr z, jr_03E_4215                             ; $4210: $28 $03

    ld bc, $45AA                                  ; $4212: $01 $AA $45

jr_03E_4215:
    ld hl, $0029                                  ; $4215: $21 $29 $00
    add hl, de                                    ; $4218: $19
    ld a, [hl]                                    ; $4219: $7E
    add a                                         ; $421A: $87
    ld l, a                                       ; $421B: $6F
    ld h, $00                                     ; $421C: $26 $00
    add hl, bc                                    ; $421E: $09
    ld c, [hl]                                    ; $421F: $4E
    inc hl                                        ; $4220: $23
    ld b, [hl]                                    ; $4221: $46
    ld hl, $0012                                  ; $4222: $21 $12 $00
    add hl, de                                    ; $4225: $19
    ld [hl], c                                    ; $4226: $71
    inc hl                                        ; $4227: $23
    ld [hl], b                                    ; $4228: $70
    xor a                                         ; $4229: $AF
    ld hl, $0014                                  ; $422A: $21 $14 $00
    add hl, de                                    ; $422D: $19
    ld [hl], a                                    ; $422E: $77
    ld a, $40                                     ; $422F: $3E $40
    ld hl, $000E                                  ; $4231: $21 $0E $00
    add hl, de                                    ; $4234: $19
    ld [hl], a                                    ; $4235: $77
    ld a, [de]                                    ; $4236: $1A
    and $EF                                       ; $4237: $E6 $EF
    ld [de], a                                    ; $4239: $12
    ret                                           ; $423A: $C9


Call_03E_423B:
    ld a, [$C2D0]                                 ; $423B: $FA $D0 $C2
    cp $00                                        ; $423E: $FE $00
    jp nz, Jump_03E_4249                          ; $4240: $C2 $49 $42

    ld hl, $FF98                                  ; $4243: $21 $98 $FF
    jp Jump_03E_424C                              ; $4246: $C3 $4C $42


Jump_03E_4249:
    ld hl, $FFAB                                  ; $4249: $21 $AB $FF

Jump_03E_424C:
    ld c, [hl]                                    ; $424C: $4E
    inc hl                                        ; $424D: $23
    ld b, [hl]                                    ; $424E: $46
    ret                                           ; $424F: $C9


    add b                                         ; $4250: $80
    rst RST_38                                    ; $4251: $FF
    ret nz                                        ; $4252: $C0

    rst RST_38                                    ; $4253: $FF
    nop                                           ; $4254: $00
    nop                                           ; $4255: $00
    ret nz                                        ; $4256: $C0

    rst RST_38                                    ; $4257: $FF
    add b                                         ; $4258: $80
    rst RST_38                                    ; $4259: $FF
    add b                                         ; $425A: $80
    rst RST_38                                    ; $425B: $FF
    add b                                         ; $425C: $80
    rst RST_38                                    ; $425D: $FF
    add b                                         ; $425E: $80
    rst RST_38                                    ; $425F: $FF
    add b                                         ; $4260: $80
    rst RST_38                                    ; $4261: $FF
    ld b, b                                       ; $4262: $40
    rst RST_38                                    ; $4263: $FF
    nop                                           ; $4264: $00
    nop                                           ; $4265: $00
    nop                                           ; $4266: $00
    nop                                           ; $4267: $00
    nop                                           ; $4268: $00
    nop                                           ; $4269: $00
    nop                                           ; $426A: $00
    nop                                           ; $426B: $00
    nop                                           ; $426C: $00
    nop                                           ; $426D: $00
    nop                                           ; $426E: $00
    nop                                           ; $426F: $00
    sub b                                         ; $4270: $90
    ld b, d                                       ; $4271: $42
    ret nc                                        ; $4272: $D0

    ld b, d                                       ; $4273: $42
    db $10                                        ; $4274: $10
    ld b, e                                       ; $4275: $43
    ret nc                                        ; $4276: $D0

    ld b, d                                       ; $4277: $42
    ld d, b                                       ; $4278: $50
    ld b, e                                       ; $4279: $43
    sub b                                         ; $427A: $90
    ld b, d                                       ; $427B: $42
    sub b                                         ; $427C: $90
    ld b, e                                       ; $427D: $43
    sub b                                         ; $427E: $90
    ld b, e                                       ; $427F: $43
    ret nc                                        ; $4280: $D0

    ld b, e                                       ; $4281: $43
    db $10                                        ; $4282: $10
    ld b, e                                       ; $4283: $43
    db $10                                        ; $4284: $10
    ld b, h                                       ; $4285: $44
    ld d, b                                       ; $4286: $50
    ld b, h                                       ; $4287: $44
    sub b                                         ; $4288: $90
    ld b, h                                       ; $4289: $44
    ret nc                                        ; $428A: $D0

    ld b, h                                       ; $428B: $44
    db $10                                        ; $428C: $10
    ld b, l                                       ; $428D: $45
    db $10                                        ; $428E: $10
    ld b, e                                       ; $428F: $43
    nop                                           ; $4290: $00
    nop                                           ; $4291: $00
    nop                                           ; $4292: $00
    nop                                           ; $4293: $00
    ld b, b                                       ; $4294: $40
    ld bc, $0000                                  ; $4295: $01 $00 $00
    ret nz                                        ; $4298: $C0

    cp $00                                        ; $4299: $FE $00
    nop                                           ; $429B: $00
    nop                                           ; $429C: $00
    nop                                           ; $429D: $00
    nop                                           ; $429E: $00
    nop                                           ; $429F: $00
    nop                                           ; $42A0: $00
    nop                                           ; $42A1: $00
    add b                                         ; $42A2: $80
    cp $E2                                        ; $42A3: $FE $E2
    nop                                           ; $42A5: $00
    pop af                                        ; $42A6: $F1
    cp $1E                                        ; $42A7: $FE $1E
    rst RST_38                                    ; $42A9: $FF
    pop af                                        ; $42AA: $F1
    cp $00                                        ; $42AB: $FE $00
    nop                                           ; $42AD: $00
    nop                                           ; $42AE: $00
    nop                                           ; $42AF: $00
    nop                                           ; $42B0: $00
    nop                                           ; $42B1: $00
    add b                                         ; $42B2: $80
    ld bc, $00E2                                  ; $42B3: $01 $E2 $00
    rrca                                          ; $42B6: $0F
    ld bc, $FF1E                                  ; $42B7: $01 $1E $FF
    rrca                                          ; $42BA: $0F
    ld bc, $0000                                  ; $42BB: $01 $00 $00
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
    nop                                           ; $42CC: $00
    nop                                           ; $42CD: $00
    nop                                           ; $42CE: $00
    nop                                           ; $42CF: $00
    nop                                           ; $42D0: $00
    nop                                           ; $42D1: $00
    nop                                           ; $42D2: $00
    nop                                           ; $42D3: $00
    nop                                           ; $42D4: $00
    ld bc, $0000                                  ; $42D5: $01 $00 $00
    nop                                           ; $42D8: $00
    rst RST_38                                    ; $42D9: $FF
    nop                                           ; $42DA: $00
    nop                                           ; $42DB: $00
    nop                                           ; $42DC: $00
    nop                                           ; $42DD: $00
    nop                                           ; $42DE: $00
    nop                                           ; $42DF: $00
    nop                                           ; $42E0: $00
    nop                                           ; $42E1: $00
    ldh [$FFFE], a                                ; $42E2: $E0 $FE
    or l                                          ; $42E4: $B5
    nop                                           ; $42E5: $00
    dec [hl]                                      ; $42E6: $35
    rst RST_38                                    ; $42E7: $FF
    ld c, e                                       ; $42E8: $4B
    rst RST_38                                    ; $42E9: $FF
    dec [hl]                                      ; $42EA: $35
    rst RST_38                                    ; $42EB: $FF
    nop                                           ; $42EC: $00
    nop                                           ; $42ED: $00
    nop                                           ; $42EE: $00
    nop                                           ; $42EF: $00
    nop                                           ; $42F0: $00
    nop                                           ; $42F1: $00
    ldh [rP1], a                                  ; $42F2: $E0 $00
    or l                                          ; $42F4: $B5
    nop                                           ; $42F5: $00
    rlc b                                         ; $42F6: $CB $00
    ld c, e                                       ; $42F8: $4B
    rst RST_38                                    ; $42F9: $FF
    rlc b                                         ; $42FA: $CB $00
    nop                                           ; $42FC: $00
    nop                                           ; $42FD: $00
    nop                                           ; $42FE: $00
    nop                                           ; $42FF: $00
    nop                                           ; $4300: $00
    nop                                           ; $4301: $00
    nop                                           ; $4302: $00
    nop                                           ; $4303: $00
    nop                                           ; $4304: $00
    nop                                           ; $4305: $00
    nop                                           ; $4306: $00
    nop                                           ; $4307: $00
    nop                                           ; $4308: $00
    nop                                           ; $4309: $00
    nop                                           ; $430A: $00
    nop                                           ; $430B: $00
    nop                                           ; $430C: $00
    nop                                           ; $430D: $00
    nop                                           ; $430E: $00
    nop                                           ; $430F: $00
    nop                                           ; $4310: $00
    nop                                           ; $4311: $00
    nop                                           ; $4312: $00
    nop                                           ; $4313: $00
    ld b, b                                       ; $4314: $40
    ld bc, $0000                                  ; $4315: $01 $00 $00
    ret nz                                        ; $4318: $C0

    cp $00                                        ; $4319: $FE $00
    nop                                           ; $431B: $00
    nop                                           ; $431C: $00
    nop                                           ; $431D: $00
    nop                                           ; $431E: $00
    nop                                           ; $431F: $00
    nop                                           ; $4320: $00
    nop                                           ; $4321: $00
    ret nz                                        ; $4322: $C0

    cp $E2                                        ; $4323: $FE $E2
    nop                                           ; $4325: $00
    ld e, $FF                                     ; $4326: $1E $FF
    ld e, $FF                                     ; $4328: $1E $FF
    ld e, $FF                                     ; $432A: $1E $FF
    nop                                           ; $432C: $00
    nop                                           ; $432D: $00
    nop                                           ; $432E: $00
    nop                                           ; $432F: $00
    nop                                           ; $4330: $00
    nop                                           ; $4331: $00
    ld b, b                                       ; $4332: $40
    ld bc, $00E2                                  ; $4333: $01 $E2 $00
    ldh [c], a                                    ; $4336: $E2
    nop                                           ; $4337: $00
    ld e, $FF                                     ; $4338: $1E $FF
    ldh [c], a                                    ; $433A: $E2
    nop                                           ; $433B: $00
    nop                                           ; $433C: $00
    nop                                           ; $433D: $00
    nop                                           ; $433E: $00
    nop                                           ; $433F: $00
    nop                                           ; $4340: $00
    nop                                           ; $4341: $00
    nop                                           ; $4342: $00
    nop                                           ; $4343: $00
    nop                                           ; $4344: $00
    nop                                           ; $4345: $00
    nop                                           ; $4346: $00
    nop                                           ; $4347: $00
    nop                                           ; $4348: $00
    nop                                           ; $4349: $00
    nop                                           ; $434A: $00
    nop                                           ; $434B: $00
    nop                                           ; $434C: $00
    nop                                           ; $434D: $00
    nop                                           ; $434E: $00
    nop                                           ; $434F: $00
    nop                                           ; $4350: $00
    nop                                           ; $4351: $00
    nop                                           ; $4352: $00
    nop                                           ; $4353: $00
    add b                                         ; $4354: $80
    ld bc, $0000                                  ; $4355: $01 $00 $00
    add b                                         ; $4358: $80
    cp $00                                        ; $4359: $FE $00
    nop                                           ; $435B: $00
    nop                                           ; $435C: $00
    nop                                           ; $435D: $00
    nop                                           ; $435E: $00
    nop                                           ; $435F: $00
    nop                                           ; $4360: $00
    nop                                           ; $4361: $00
    ld b, b                                       ; $4362: $40
    cp $0F                                        ; $4363: $FE $0F
    ld bc, $FEC4                                  ; $4365: $01 $C4 $FE
    pop af                                        ; $4368: $F1
    cp $C4                                        ; $4369: $FE $C4
    cp $00                                        ; $436B: $FE $00
    nop                                           ; $436D: $00
    nop                                           ; $436E: $00
    nop                                           ; $436F: $00
    nop                                           ; $4370: $00
    nop                                           ; $4371: $00
    ret nz                                        ; $4372: $C0

    ld bc, $010F                                  ; $4373: $01 $0F $01
    inc a                                         ; $4376: $3C
    ld bc, $FEF1                                  ; $4377: $01 $F1 $FE
    inc a                                         ; $437A: $3C
    ld bc, $0000                                  ; $437B: $01 $00 $00
    nop                                           ; $437E: $00
    nop                                           ; $437F: $00
    nop                                           ; $4380: $00
    nop                                           ; $4381: $00
    nop                                           ; $4382: $00
    nop                                           ; $4383: $00
    nop                                           ; $4384: $00
    nop                                           ; $4385: $00
    nop                                           ; $4386: $00
    nop                                           ; $4387: $00
    nop                                           ; $4388: $00
    nop                                           ; $4389: $00
    nop                                           ; $438A: $00
    nop                                           ; $438B: $00
    nop                                           ; $438C: $00
    nop                                           ; $438D: $00
    nop                                           ; $438E: $00
    nop                                           ; $438F: $00
    nop                                           ; $4390: $00
    nop                                           ; $4391: $00
    nop                                           ; $4392: $00
    nop                                           ; $4393: $00
    jr nz, jr_03E_4397                            ; $4394: $20 $01

    nop                                           ; $4396: $00

jr_03E_4397:
    nop                                           ; $4397: $00
    ldh [$FFFE], a                                ; $4398: $E0 $FE
    nop                                           ; $439A: $00
    nop                                           ; $439B: $00
    nop                                           ; $439C: $00
    nop                                           ; $439D: $00
    nop                                           ; $439E: $00
    nop                                           ; $439F: $00
    nop                                           ; $43A0: $00
    nop                                           ; $43A1: $00
    ldh [$FFFE], a                                ; $43A2: $E0 $FE
    rlc b                                         ; $43A4: $CB $00
    dec [hl]                                      ; $43A6: $35
    rst RST_38                                    ; $43A7: $FF
    dec [hl]                                      ; $43A8: $35
    rst RST_38                                    ; $43A9: $FF
    dec [hl]                                      ; $43AA: $35
    rst RST_38                                    ; $43AB: $FF
    nop                                           ; $43AC: $00
    nop                                           ; $43AD: $00
    nop                                           ; $43AE: $00
    nop                                           ; $43AF: $00
    nop                                           ; $43B0: $00
    nop                                           ; $43B1: $00
    jr nz, @+$03                                  ; $43B2: $20 $01

    rlc b                                         ; $43B4: $CB $00
    rlc b                                         ; $43B6: $CB $00
    dec [hl]                                      ; $43B8: $35
    rst RST_38                                    ; $43B9: $FF
    rlc b                                         ; $43BA: $CB $00
    nop                                           ; $43BC: $00
    nop                                           ; $43BD: $00
    nop                                           ; $43BE: $00
    nop                                           ; $43BF: $00
    nop                                           ; $43C0: $00
    nop                                           ; $43C1: $00
    nop                                           ; $43C2: $00
    nop                                           ; $43C3: $00
    nop                                           ; $43C4: $00
    nop                                           ; $43C5: $00
    nop                                           ; $43C6: $00
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
    add b                                         ; $43D4: $80
    ld bc, $0000                                  ; $43D5: $01 $00 $00
    add b                                         ; $43D8: $80
    cp $00                                        ; $43D9: $FE $00
    nop                                           ; $43DB: $00
    nop                                           ; $43DC: $00
    nop                                           ; $43DD: $00
    nop                                           ; $43DE: $00
    nop                                           ; $43DF: $00
    nop                                           ; $43E0: $00
    nop                                           ; $43E1: $00
    ldh [$FFFE], a                                ; $43E2: $E0 $FE
    rrca                                          ; $43E4: $0F
    ld bc, $FF35                                  ; $43E5: $01 $35 $FF
    pop af                                        ; $43E8: $F1
    cp $35                                        ; $43E9: $FE $35
    rst RST_38                                    ; $43EB: $FF
    nop                                           ; $43EC: $00
    nop                                           ; $43ED: $00
    nop                                           ; $43EE: $00
    nop                                           ; $43EF: $00
    nop                                           ; $43F0: $00
    nop                                           ; $43F1: $00
    jr nz, jr_03E_43F5                            ; $43F2: $20 $01

    rrca                                          ; $43F4: $0F

jr_03E_43F5:
    ld bc, $00CB                                  ; $43F5: $01 $CB $00
    pop af                                        ; $43F8: $F1
    cp $CB                                        ; $43F9: $FE $CB
    nop                                           ; $43FB: $00
    nop                                           ; $43FC: $00
    nop                                           ; $43FD: $00
    nop                                           ; $43FE: $00
    nop                                           ; $43FF: $00
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
    add b                                         ; $4414: $80
    ld bc, $0000                                  ; $4415: $01 $00 $00
    add b                                         ; $4418: $80
    cp $00                                        ; $4419: $FE $00
    nop                                           ; $441B: $00
    nop                                           ; $441C: $00
    nop                                           ; $441D: $00
    nop                                           ; $441E: $00
    nop                                           ; $441F: $00
    nop                                           ; $4420: $00
    nop                                           ; $4421: $00
    ld b, b                                       ; $4422: $40
    cp $0F                                        ; $4423: $FE $0F
    ld bc, $FEC4                                  ; $4425: $01 $C4 $FE
    pop af                                        ; $4428: $F1
    cp $C4                                        ; $4429: $FE $C4
    cp $00                                        ; $442B: $FE $00
    nop                                           ; $442D: $00
    nop                                           ; $442E: $00
    nop                                           ; $442F: $00
    nop                                           ; $4430: $00
    nop                                           ; $4431: $00
    ld b, b                                       ; $4432: $40
    ld bc, $010F                                  ; $4433: $01 $0F $01
    ldh [c], a                                    ; $4436: $E2
    nop                                           ; $4437: $00
    pop af                                        ; $4438: $F1
    cp $E2                                        ; $4439: $FE $E2
    nop                                           ; $443B: $00
    nop                                           ; $443C: $00
    nop                                           ; $443D: $00
    nop                                           ; $443E: $00
    nop                                           ; $443F: $00
    nop                                           ; $4440: $00
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
    ld b, b                                       ; $4454: $40
    ld bc, $0000                                  ; $4455: $01 $00 $00
    ret nz                                        ; $4458: $C0

    cp $00                                        ; $4459: $FE $00
    nop                                           ; $445B: $00
    nop                                           ; $445C: $00
    nop                                           ; $445D: $00
    nop                                           ; $445E: $00
    nop                                           ; $445F: $00
    nop                                           ; $4460: $00
    nop                                           ; $4461: $00
    add b                                         ; $4462: $80
    cp $E2                                        ; $4463: $FE $E2
    nop                                           ; $4465: $00
    pop af                                        ; $4466: $F1
    cp $1E                                        ; $4467: $FE $1E
    rst RST_38                                    ; $4469: $FF
    pop af                                        ; $446A: $F1
    cp $00                                        ; $446B: $FE $00
    nop                                           ; $446D: $00
    nop                                           ; $446E: $00
    nop                                           ; $446F: $00
    nop                                           ; $4470: $00
    nop                                           ; $4471: $00
    nop                                           ; $4472: $00
    ld bc, $00E2                                  ; $4473: $01 $E2 $00
    or l                                          ; $4476: $B5
    nop                                           ; $4477: $00
    ld e, $FF                                     ; $4478: $1E $FF
    or l                                          ; $447A: $B5
    nop                                           ; $447B: $00
    nop                                           ; $447C: $00
    nop                                           ; $447D: $00
    nop                                           ; $447E: $00
    nop                                           ; $447F: $00
    nop                                           ; $4480: $00
    nop                                           ; $4481: $00
    nop                                           ; $4482: $00
    nop                                           ; $4483: $00
    nop                                           ; $4484: $00
    nop                                           ; $4485: $00
    nop                                           ; $4486: $00
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
    ldh [rP1], a                                  ; $4494: $E0 $00
    nop                                           ; $4496: $00
    nop                                           ; $4497: $00
    jr nz, @+$01                                  ; $4498: $20 $FF

    nop                                           ; $449A: $00
    nop                                           ; $449B: $00
    nop                                           ; $449C: $00
    nop                                           ; $449D: $00
    nop                                           ; $449E: $00
    nop                                           ; $449F: $00
    nop                                           ; $44A0: $00
    nop                                           ; $44A1: $00
    jr nz, @+$01                                  ; $44A2: $20 $FF

    sbc [hl]                                      ; $44A4: $9E
    nop                                           ; $44A5: $00
    ld h, d                                       ; $44A6: $62
    rst RST_38                                    ; $44A7: $FF
    ld h, d                                       ; $44A8: $62
    rst RST_38                                    ; $44A9: $FF
    ld h, d                                       ; $44AA: $62
    rst RST_38                                    ; $44AB: $FF
    nop                                           ; $44AC: $00
    nop                                           ; $44AD: $00
    nop                                           ; $44AE: $00
    nop                                           ; $44AF: $00
    nop                                           ; $44B0: $00
    nop                                           ; $44B1: $00
    ldh [rP1], a                                  ; $44B2: $E0 $00
    sbc [hl]                                      ; $44B4: $9E
    nop                                           ; $44B5: $00
    sbc [hl]                                      ; $44B6: $9E
    nop                                           ; $44B7: $00
    ld h, d                                       ; $44B8: $62
    rst RST_38                                    ; $44B9: $FF
    sbc [hl]                                      ; $44BA: $9E
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
    inc bc                                        ; $44D5: $03
    nop                                           ; $44D6: $00
    nop                                           ; $44D7: $00
    nop                                           ; $44D8: $00
    db $FD                                        ; $44D9: $FD
    nop                                           ; $44DA: $00
    nop                                           ; $44DB: $00
    nop                                           ; $44DC: $00
    nop                                           ; $44DD: $00
    nop                                           ; $44DE: $00
    nop                                           ; $44DF: $00
    nop                                           ; $44E0: $00
    nop                                           ; $44E1: $00
    nop                                           ; $44E2: $00
    db $FD                                        ; $44E3: $FD
    rra                                           ; $44E4: $1F
    ld [bc], a                                    ; $44E5: $02
    pop hl                                        ; $44E6: $E1
    db $FD                                        ; $44E7: $FD
    pop hl                                        ; $44E8: $E1
    db $FD                                        ; $44E9: $FD
    pop hl                                        ; $44EA: $E1
    db $FD                                        ; $44EB: $FD
    nop                                           ; $44EC: $00
    nop                                           ; $44ED: $00
    nop                                           ; $44EE: $00
    nop                                           ; $44EF: $00
    nop                                           ; $44F0: $00
    nop                                           ; $44F1: $00
    nop                                           ; $44F2: $00
    inc bc                                        ; $44F3: $03
    rra                                           ; $44F4: $1F
    ld [bc], a                                    ; $44F5: $02
    rra                                           ; $44F6: $1F
    ld [bc], a                                    ; $44F7: $02
    pop hl                                        ; $44F8: $E1
    db $FD                                        ; $44F9: $FD
    rra                                           ; $44FA: $1F
    ld [bc], a                                    ; $44FB: $02
    nop                                           ; $44FC: $00
    nop                                           ; $44FD: $00
    nop                                           ; $44FE: $00
    nop                                           ; $44FF: $00
    nop                                           ; $4500: $00
    nop                                           ; $4501: $00
    nop                                           ; $4502: $00
    nop                                           ; $4503: $00
    nop                                           ; $4504: $00
    nop                                           ; $4505: $00
    nop                                           ; $4506: $00
    nop                                           ; $4507: $00
    nop                                           ; $4508: $00
    nop                                           ; $4509: $00
    nop                                           ; $450A: $00
    nop                                           ; $450B: $00
    nop                                           ; $450C: $00
    nop                                           ; $450D: $00
    nop                                           ; $450E: $00
    nop                                           ; $450F: $00
    nop                                           ; $4510: $00
    nop                                           ; $4511: $00
    nop                                           ; $4512: $00
    nop                                           ; $4513: $00
    nop                                           ; $4514: $00
    ld bc, $0000                                  ; $4515: $01 $00 $00
    nop                                           ; $4518: $00
    rst RST_38                                    ; $4519: $FF
    nop                                           ; $451A: $00
    nop                                           ; $451B: $00
    nop                                           ; $451C: $00
    nop                                           ; $451D: $00
    nop                                           ; $451E: $00
    nop                                           ; $451F: $00
    nop                                           ; $4520: $00
    nop                                           ; $4521: $00
    nop                                           ; $4522: $00
    rst RST_38                                    ; $4523: $FF
    or l                                          ; $4524: $B5
    nop                                           ; $4525: $00
    ld c, e                                       ; $4526: $4B
    rst RST_38                                    ; $4527: $FF
    ld c, e                                       ; $4528: $4B
    rst RST_38                                    ; $4529: $FF
    ld c, e                                       ; $452A: $4B
    rst RST_38                                    ; $452B: $FF
    nop                                           ; $452C: $00
    nop                                           ; $452D: $00
    nop                                           ; $452E: $00
    nop                                           ; $452F: $00
    nop                                           ; $4530: $00
    nop                                           ; $4531: $00
    nop                                           ; $4532: $00
    ld bc, $00B5                                  ; $4533: $01 $B5 $00
    or l                                          ; $4536: $B5
    nop                                           ; $4537: $00
    ld c, e                                       ; $4538: $4B
    rst RST_38                                    ; $4539: $FF
    or l                                          ; $453A: $B5
    nop                                           ; $453B: $00
    nop                                           ; $453C: $00
    nop                                           ; $453D: $00
    nop                                           ; $453E: $00
    nop                                           ; $453F: $00
    nop                                           ; $4540: $00
    nop                                           ; $4541: $00
    nop                                           ; $4542: $00
    nop                                           ; $4543: $00
    nop                                           ; $4544: $00
    nop                                           ; $4545: $00
    nop                                           ; $4546: $00
    nop                                           ; $4547: $00
    nop                                           ; $4548: $00
    nop                                           ; $4549: $00
    nop                                           ; $454A: $00
    nop                                           ; $454B: $00
    nop                                           ; $454C: $00
    nop                                           ; $454D: $00
    nop                                           ; $454E: $00
    nop                                           ; $454F: $00
    sbc a                                         ; $4550: $9F
    ld d, l                                       ; $4551: $55
    sbc a                                         ; $4552: $9F
    ld d, l                                       ; $4553: $55
    ld h, c                                       ; $4554: $61
    ld e, b                                       ; $4555: $58
    adc b                                         ; $4556: $88
    ld e, d                                       ; $4557: $5A
    sbc a                                         ; $4558: $9F
    ld d, l                                       ; $4559: $55
    sbc a                                         ; $455A: $9F
    ld d, l                                       ; $455B: $55
    sbc a                                         ; $455C: $9F
    ld d, l                                       ; $455D: $55
    sbc a                                         ; $455E: $9F
    ld d, l                                       ; $455F: $55
    or c                                          ; $4560: $B1
    ld d, l                                       ; $4561: $55
    sbc a                                         ; $4562: $9F
    ld d, l                                       ; $4563: $55
    jp nz, Jump_03E_735E                          ; $4564: $C2 $5E $73

    ld h, b                                       ; $4567: $60
    rst RST_00                                    ; $4568: $C7
    ld d, l                                       ; $4569: $55
    ld l, a                                       ; $456A: $6F
    ld h, d                                       ; $456B: $62
    ld h, c                                       ; $456C: $61
    ld e, b                                       ; $456D: $58
    jp hl                                         ; $456E: $E9


    ld d, l                                       ; $456F: $55
    jp hl                                         ; $4570: $E9


    ld d, l                                       ; $4571: $55
    ld l, e                                       ; $4572: $6B
    ld e, b                                       ; $4573: $58
    sub d                                         ; $4574: $92
    ld e, d                                       ; $4575: $5A
    jp hl                                         ; $4576: $E9


    ld d, l                                       ; $4577: $55
    jp hl                                         ; $4578: $E9


    ld d, l                                       ; $4579: $55
    jp hl                                         ; $457A: $E9


    ld d, l                                       ; $457B: $55
    jp hl                                         ; $457C: $E9


    ld d, l                                       ; $457D: $55
    ei                                            ; $457E: $FB
    ld d, l                                       ; $457F: $55
    jp hl                                         ; $4580: $E9


    ld d, l                                       ; $4581: $55
    jp nz, Jump_03E_735E                          ; $4582: $C2 $5E $73

    ld h, b                                       ; $4585: $60
    ld de, $6F56                                  ; $4586: $11 $56 $6F
    ld h, d                                       ; $4589: $62
    ld l, e                                       ; $458A: $6B
    ld e, b                                       ; $458B: $58
    inc sp                                        ; $458C: $33
    ld d, [hl]                                    ; $458D: $56
    inc sp                                        ; $458E: $33
    ld d, [hl]                                    ; $458F: $56
    ld [hl], l                                    ; $4590: $75
    ld e, b                                       ; $4591: $58
    sbc h                                         ; $4592: $9C
    ld e, d                                       ; $4593: $5A
    inc sp                                        ; $4594: $33
    ld d, [hl]                                    ; $4595: $56
    inc sp                                        ; $4596: $33
    ld d, [hl]                                    ; $4597: $56
    inc sp                                        ; $4598: $33
    ld d, [hl]                                    ; $4599: $56
    inc sp                                        ; $459A: $33
    ld d, [hl]                                    ; $459B: $56
    inc sp                                        ; $459C: $33
    ld d, [hl]                                    ; $459D: $56
    inc sp                                        ; $459E: $33
    ld d, [hl]                                    ; $459F: $56
    db $F4                                        ; $45A0: $F4
    ld e, [hl]                                    ; $45A1: $5E
    and l                                         ; $45A2: $A5
    ld h, b                                       ; $45A3: $60
    inc sp                                        ; $45A4: $33
    ld d, [hl]                                    ; $45A5: $56
    add c                                         ; $45A6: $81
    ld h, d                                       ; $45A7: $62
    ld [hl], l                                    ; $45A8: $75
    ld e, b                                       ; $45A9: $58
    dec a                                         ; $45AA: $3D
    ld d, [hl]                                    ; $45AB: $56
    dec a                                         ; $45AC: $3D
    ld d, [hl]                                    ; $45AD: $56
    ld a, a                                       ; $45AE: $7F
    ld e, b                                       ; $45AF: $58
    and [hl]                                      ; $45B0: $A6
    ld e, d                                       ; $45B1: $5A
    dec a                                         ; $45B2: $3D
    ld d, [hl]                                    ; $45B3: $56
    dec a                                         ; $45B4: $3D
    ld d, [hl]                                    ; $45B5: $56
    dec a                                         ; $45B6: $3D
    ld d, [hl]                                    ; $45B7: $56
    dec a                                         ; $45B8: $3D
    ld d, [hl]                                    ; $45B9: $56
    dec a                                         ; $45BA: $3D
    ld d, [hl]                                    ; $45BB: $56
    dec a                                         ; $45BC: $3D
    ld d, [hl]                                    ; $45BD: $56
    db $F4                                        ; $45BE: $F4
    ld e, [hl]                                    ; $45BF: $5E
    and l                                         ; $45C0: $A5
    ld h, b                                       ; $45C1: $60
    dec a                                         ; $45C2: $3D
    ld d, [hl]                                    ; $45C3: $56
    add c                                         ; $45C4: $81
    ld h, d                                       ; $45C5: $62
    ld a, a                                       ; $45C6: $7F
    ld e, b                                       ; $45C7: $58
    ld sp, $DD00                                  ; $45C8: $31 $00 $DD
    di                                            ; $45CB: $F3
    rst RST_10                                    ; $45CC: $D7
    ld hl, $C03A                                  ; $45CD: $21 $3A $C0
    res 1, [hl]                                   ; $45D0: $CB $8E
    ld a, $00                                     ; $45D2: $3E $00
    call Call_000_135D                            ; $45D4: $CD $5D $13
    xor a                                         ; $45D7: $AF
    ldh [rBGP], a                                 ; $45D8: $E0 $47
    ldh [rOBP0], a                                ; $45DA: $E0 $48
    ldh [rOBP1], a                                ; $45DC: $E0 $49
    call Call_000_13ED                            ; $45DE: $CD $ED $13
    ld de, $001D                                  ; $45E1: $11 $1D $00
    call Call_000_14C0                            ; $45E4: $CD $C0 $14
    call Call_000_0FBD                            ; $45E7: $CD $BD $0F
    call Call_000_0FC6                            ; $45EA: $CD $C6 $0F
    xor a                                         ; $45ED: $AF
    ldh [$FFE4], a                                ; $45EE: $E0 $E4
    ldh [$FFE2], a                                ; $45F0: $E0 $E2
    ld [$C2AA], a                                 ; $45F2: $EA $AA $C2
    ld a, $F0                                     ; $45F5: $3E $F0
    ld [$C2AC], a                                 ; $45F7: $EA $AC $C2
    ld hl, $6E86                                  ; $45FA: $21 $86 $6E
    ld b, $35                                     ; $45FD: $06 $35
    ld de, $C329                                  ; $45FF: $11 $29 $C3
    rst RST_20                                    ; $4602: $E7
    ld hl, $C329                                  ; $4603: $21 $29 $C3
    ld de, $9000                                  ; $4606: $11 $00 $90
    ld b, $70                                     ; $4609: $06 $70
    call Call_000_1188                            ; $460B: $CD $88 $11
    ld b, $35                                     ; $460E: $06 $35
    ld hl, $4081                                  ; $4610: $21 $81 $40
    rst RST_08                                    ; $4613: $CF
    ld e, $00                                     ; $4614: $1E $00
    ld d, $70                                     ; $4616: $16 $70
    ld hl, $9C00                                  ; $4618: $21 $00 $9C
    ld b, $08                                     ; $461B: $06 $08
    ld c, $02                                     ; $461D: $0E $02
    call Call_000_1139                            ; $461F: $CD $39 $11
    ld e, $00                                     ; $4622: $1E $00
    ld d, $40                                     ; $4624: $16 $40
    ld hl, $9C0E                                  ; $4626: $21 $0E $9C
    ld b, $01                                     ; $4629: $06 $01
    ld c, $02                                     ; $462B: $0E $02
    call Call_000_1139                            ; $462D: $CD $39 $11
    ld e, $00                                     ; $4630: $1E $00
    ld d, $40                                     ; $4632: $16 $40
    ld hl, $9C0F                                  ; $4634: $21 $0F $9C
    ld b, $01                                     ; $4637: $06 $01
    ld c, $02                                     ; $4639: $0E $02
    call Call_000_1139                            ; $463B: $CD $39 $11
    ld e, $00                                     ; $463E: $1E $00
    ld d, $40                                     ; $4640: $16 $40
    ld hl, $9C11                                  ; $4642: $21 $11 $9C
    ld b, $01                                     ; $4645: $06 $01
    ld c, $02                                     ; $4647: $0E $02
    call Call_000_1139                            ; $4649: $CD $39 $11
    ld e, $00                                     ; $464C: $1E $00
    ld d, $40                                     ; $464E: $16 $40
    ld hl, $9C12                                  ; $4650: $21 $12 $9C
    ld b, $01                                     ; $4653: $06 $01
    ld c, $02                                     ; $4655: $0E $02
    call Call_000_1139                            ; $4657: $CD $39 $11
    ld e, $00                                     ; $465A: $1E $00
    ld d, $59                                     ; $465C: $16 $59
    ld hl, $9C10                                  ; $465E: $21 $10 $9C
    ld b, $01                                     ; $4661: $06 $01
    ld c, $01                                     ; $4663: $0E $01
    call Call_000_1111                            ; $4665: $CD $11 $11
    call Call_000_0F9E                            ; $4668: $CD $9E $0F
    ld a, [$C31B]                                 ; $466B: $FA $1B $C3
    cp $0A                                        ; $466E: $FE $0A
    jr c, jr_03E_4674                             ; $4670: $38 $02

    ld a, $09                                     ; $4672: $3E $09

jr_03E_4674:
    push af                                       ; $4674: $F5
    ld [$C31B], a                                 ; $4675: $EA $1B $C3
    ld de, $4C51                                  ; $4678: $11 $51 $4C
    ld hl, $D680                                  ; $467B: $21 $80 $D6
    call Call_000_0F8E                            ; $467E: $CD $8E $0F
    pop af                                        ; $4681: $F1
    ld [$D6A9], a                                 ; $4682: $EA $A9 $D6
    ld hl, $D6AA                                  ; $4685: $21 $AA $D6
    ld a, $01                                     ; $4688: $3E $01
    ld [hl+], a                                   ; $468A: $22
    ld [hl+], a                                   ; $468B: $22
    ld [hl+], a                                   ; $468C: $22
    xor a                                         ; $468D: $AF
    ld [hl+], a                                   ; $468E: $22
    ld a, [$C31B]                                 ; $468F: $FA $1B $C3
    ld hl, $4C15                                  ; $4692: $21 $15 $4C
    add a                                         ; $4695: $87
    ld e, a                                       ; $4696: $5F
    ld d, $00                                     ; $4697: $16 $00
    add hl, de                                    ; $4699: $19
    ld e, [hl]                                    ; $469A: $5E
    inc hl                                        ; $469B: $23
    ld d, [hl]                                    ; $469C: $56
    ld hl, $D692                                  ; $469D: $21 $92 $D6
    ld [hl], e                                    ; $46A0: $73
    inc hl                                        ; $46A1: $23
    ld [hl], d                                    ; $46A2: $72
    ld a, [$C31B]                                 ; $46A3: $FA $1B $C3
    ld hl, $4C29                                  ; $46A6: $21 $29 $4C
    add a                                         ; $46A9: $87
    ld e, a                                       ; $46AA: $5F
    ld d, $00                                     ; $46AB: $16 $00
    add hl, de                                    ; $46AD: $19
    ld a, [hl+]                                   ; $46AE: $2A
    ld d, [hl]                                    ; $46AF: $56
    ld [$C315], a                                 ; $46B0: $EA $15 $C3
    ld a, d                                       ; $46B3: $7A
    ld [$C316], a                                 ; $46B4: $EA $16 $C3
    ld b, $34                                     ; $46B7: $06 $34
    ld hl, $4028                                  ; $46B9: $21 $28 $40
    rst RST_08                                    ; $46BC: $CF
    ld a, [$C31B]                                 ; $46BD: $FA $1B $C3
    ld hl, $4C3D                                  ; $46C0: $21 $3D $4C
    add a                                         ; $46C3: $87
    ld e, a                                       ; $46C4: $5F
    ld d, $00                                     ; $46C5: $16 $00
    add hl, de                                    ; $46C7: $19
    ld a, [hl+]                                   ; $46C8: $2A
    ld d, [hl]                                    ; $46C9: $56
    ld l, a                                       ; $46CA: $6F
    ld h, d                                       ; $46CB: $62
    ld b, $33                                     ; $46CC: $06 $33
    ld de, $C429                                  ; $46CE: $11 $29 $C4
    rst RST_20                                    ; $46D1: $E7
    ld hl, $C429                                  ; $46D2: $21 $29 $C4
    ld de, $8400                                  ; $46D5: $11 $00 $84
    ld b, $40                                     ; $46D8: $06 $40
    call Call_000_1188                            ; $46DA: $CD $88 $11
    ld hl, $462C                                  ; $46DD: $21 $2C $46
    ld b, $33                                     ; $46E0: $06 $33
    ld de, $C429                                  ; $46E2: $11 $29 $C4
    rst RST_20                                    ; $46E5: $E7
    ld a, [$C31B]                                 ; $46E6: $FA $1B $C3
    ld e, $00                                     ; $46E9: $1E $00
    ld d, a                                       ; $46EB: $57
    ld hl, $C429                                  ; $46EC: $21 $29 $C4
    add hl, de                                    ; $46EF: $19
    ld de, $9700                                  ; $46F0: $11 $00 $97
    ld b, $10                                     ; $46F3: $06 $10
    call Call_000_1188                            ; $46F5: $CD $88 $11
    ld a, $07                                     ; $46F8: $3E $07
    ldh [rWX], a                                  ; $46FA: $E0 $4B
    ld a, $80                                     ; $46FC: $3E $80
    ldh [rWY], a                                  ; $46FE: $E0 $4A
    ld a, $E7                                     ; $4700: $3E $E7
    rst RST_18                                    ; $4702: $DF
    xor a                                         ; $4703: $AF
    ldh [rSTAT], a                                ; $4704: $E0 $41
    ei                                            ; $4706: $FB
    ld de, $4BD5                                  ; $4707: $11 $D5 $4B
    ld hl, $C329                                  ; $470A: $21 $29 $C3
    ld c, $40                                     ; $470D: $0E $40

jr_03E_470F:
    ld a, [de]                                    ; $470F: $1A
    inc de                                        ; $4710: $13
    ld [hl+], a                                   ; $4711: $22
    dec c                                         ; $4712: $0D
    jr nz, jr_03E_470F                            ; $4713: $20 $FA

    ld a, [$C351]                                 ; $4715: $FA $51 $C3
    ldh [$FFE2], a                                ; $4718: $E0 $E2
    ld a, $83                                     ; $471A: $3E $83
    call Call_000_135D                            ; $471C: $CD $5D $13
    ld b, $34                                     ; $471F: $06 $34
    ld hl, $4000                                  ; $4721: $21 $00 $40
    rst RST_08                                    ; $4724: $CF
    call Call_000_147A                            ; $4725: $CD $7A $14
    call Call_000_0424                            ; $4728: $CD $24 $04
    ld a, $1B                                     ; $472B: $3E $1B
    ldh [rBGP], a                                 ; $472D: $E0 $47
    ld a, $1F                                     ; $472F: $3E $1F
    ldh [rOBP0], a                                ; $4731: $E0 $48
    ldh [rOBP1], a                                ; $4733: $E0 $49
    call Call_000_147A                            ; $4735: $CD $7A $14

Jump_03E_4738:
    call Call_03E_4A13                            ; $4738: $CD $13 $4A
    ld hl, $D680                                  ; $473B: $21 $80 $D6
    call Call_03E_4003                            ; $473E: $CD $03 $40
    call Call_03E_4BB2                            ; $4741: $CD $B2 $4B
    ld hl, $C329                                  ; $4744: $21 $29 $C3
    ld e, [hl]                                    ; $4747: $5E
    inc hl                                        ; $4748: $23
    ld d, [hl]                                    ; $4749: $56
    inc de                                        ; $474A: $13
    ld [hl], d                                    ; $474B: $72
    dec hl                                        ; $474C: $2B
    ld [hl], e                                    ; $474D: $73
    call Call_000_0424                            ; $474E: $CD $24 $04
    ld a, [$C35F]                                 ; $4751: $FA $5F $C3
    or a                                          ; $4754: $B7
    jp z, Jump_03E_475F                           ; $4755: $CA $5F $47

    dec a                                         ; $4758: $3D
    ld [$C35F], a                                 ; $4759: $EA $5F $C3
    jp z, Jump_03E_4850                           ; $475C: $CA $50 $48

Jump_03E_475F:
    ldh a, [$FF99]                                ; $475F: $F0 $99
    ld e, a                                       ; $4761: $5F
    ldh a, [$FFAC]                                ; $4762: $F0 $AC
    or e                                          ; $4764: $B3
    ld e, a                                       ; $4765: $5F
    bit 7, a                                      ; $4766: $CB $7F
    jp nz, Jump_03E_476E                          ; $4768: $C2 $6E $47

    jp Jump_03E_4738                              ; $476B: $C3 $38 $47


Jump_03E_476E:
    ld e, $00                                     ; $476E: $1E $00
    ld d, $00                                     ; $4770: $16 $00
    ld hl, $9C00                                  ; $4772: $21 $00 $9C
    ld b, $14                                     ; $4775: $06 $14
    ld c, $02                                     ; $4777: $0E $02
    call Call_000_10EA                            ; $4779: $CD $EA $10
    ld e, $00                                     ; $477C: $1E $00
    ld d, $60                                     ; $477E: $16 $60
    ld hl, $9C05                                  ; $4780: $21 $05 $9C
    ld b, $04                                     ; $4783: $06 $04
    ld c, $02                                     ; $4785: $0E $02
    call Call_000_1139                            ; $4787: $CD $39 $11
    ld e, $00                                     ; $478A: $1E $00
    ld d, $68                                     ; $478C: $16 $68
    ld hl, $9C0D                                  ; $478E: $21 $0D $9C
    ld b, $03                                     ; $4791: $06 $03
    ld c, $02                                     ; $4793: $0E $02
    call Call_000_1139                            ; $4795: $CD $39 $11
    xor a                                         ; $4798: $AF
    ld [$C360], a                                 ; $4799: $EA $60 $C3

jr_03E_479C:
    ldh a, [$FF99]                                ; $479C: $F0 $99
    ld e, a                                       ; $479E: $5F
    ldh a, [$FFAC]                                ; $479F: $F0 $AC
    or e                                          ; $47A1: $B3
    bit 4, a                                      ; $47A2: $CB $67
    jr nz, jr_03E_4805                            ; $47A4: $20 $5F

    and $03                                       ; $47A6: $E6 $03
    jr z, jr_03E_47C5                             ; $47A8: $28 $1B

    ld a, [$C360]                                 ; $47AA: $FA $60 $C3
    cpl                                           ; $47AD: $2F
    ld [$C360], a                                 ; $47AE: $EA $60 $C3
    ld hl, $9C04                                  ; $47B1: $21 $04 $9C
    or a                                          ; $47B4: $B7
    jr nz, jr_03E_47BA                            ; $47B5: $20 $03

    ld hl, $9C0C                                  ; $47B7: $21 $0C $9C

jr_03E_47BA:
    ld e, $03                                     ; $47BA: $1E $03
    ld d, $00                                     ; $47BC: $16 $00
    ld b, $01                                     ; $47BE: $06 $01
    ld c, $02                                     ; $47C0: $0E $02
    call Call_000_10EA                            ; $47C2: $CD $EA $10

jr_03E_47C5:
    ld a, [$C329]                                 ; $47C5: $FA $29 $C3
    ld e, a                                       ; $47C8: $5F
    and $07                                       ; $47C9: $E6 $07
    jr nz, jr_03E_47F6                            ; $47CB: $20 $29

    ld hl, $9C04                                  ; $47CD: $21 $04 $9C
    ld a, [$C360]                                 ; $47D0: $FA $60 $C3
    or a                                          ; $47D3: $B7
    jr z, jr_03E_47D9                             ; $47D4: $28 $03

    ld hl, $9C0C                                  ; $47D6: $21 $0C $9C

jr_03E_47D9:
    ld a, e                                       ; $47D9: $7B
    and $18                                       ; $47DA: $E6 $18
    jr z, jr_03E_47EB                             ; $47DC: $28 $0D

    ld e, $03                                     ; $47DE: $1E $03
    ld d, $6E                                     ; $47E0: $16 $6E
    ld b, $01                                     ; $47E2: $06 $01
    ld c, $02                                     ; $47E4: $0E $02
    call Call_000_1139                            ; $47E6: $CD $39 $11
    jr jr_03E_47F6                                ; $47E9: $18 $0B

jr_03E_47EB:
    ld e, $03                                     ; $47EB: $1E $03
    ld d, $00                                     ; $47ED: $16 $00
    ld b, $01                                     ; $47EF: $06 $01
    ld c, $02                                     ; $47F1: $0E $02
    call Call_000_10EA                            ; $47F3: $CD $EA $10

jr_03E_47F6:
    ld hl, $C329                                  ; $47F6: $21 $29 $C3
    ld e, [hl]                                    ; $47F9: $5E
    inc hl                                        ; $47FA: $23
    ld d, [hl]                                    ; $47FB: $56
    inc de                                        ; $47FC: $13
    ld [hl], d                                    ; $47FD: $72
    dec hl                                        ; $47FE: $2B
    ld [hl], e                                    ; $47FF: $73
    call Call_000_0424                            ; $4800: $CD $24 $04
    jr jr_03E_479C                                ; $4803: $18 $97

jr_03E_4805:
    ld e, $00                                     ; $4805: $1E $00
    ld d, $00                                     ; $4807: $16 $00
    ld hl, $9C00                                  ; $4809: $21 $00 $9C
    ld b, $12                                     ; $480C: $06 $12
    ld c, $02                                     ; $480E: $0E $02
    call Call_000_10EA                            ; $4810: $CD $EA $10
    ld e, $00                                     ; $4813: $1E $00
    ld d, $70                                     ; $4815: $16 $70
    ld hl, $9C00                                  ; $4817: $21 $00 $9C
    ld b, $08                                     ; $481A: $06 $08
    ld c, $02                                     ; $481C: $0E $02
    call Call_000_1139                            ; $481E: $CD $39 $11
    ld e, $00                                     ; $4821: $1E $00
    ld d, $59                                     ; $4823: $16 $59
    ld hl, $9C10                                  ; $4825: $21 $10 $9C
    ld b, $01                                     ; $4828: $06 $01
    ld c, $01                                     ; $482A: $0E $01
    call Call_000_1111                            ; $482C: $CD $11 $11
    ld a, [$C359]                                 ; $482F: $FA $59 $C3
    ld c, a                                       ; $4832: $4F
    ld a, [$C35A]                                 ; $4833: $FA $5A $C3
    ld b, a                                       ; $4836: $47
    call Call_03E_4B49                            ; $4837: $CD $49 $4B
    ld a, [$C360]                                 ; $483A: $FA $60 $C3
    or a                                          ; $483D: $B7
    jp z, Jump_03E_4738                           ; $483E: $CA $38 $47

    ld a, $3B                                     ; $4841: $3E $3B
    ld [$C359], a                                 ; $4843: $EA $59 $C3
    ld c, a                                       ; $4846: $4F
    ld a, $99                                     ; $4847: $3E $99
    ld [$C35A], a                                 ; $4849: $EA $5A $C3
    ld b, a                                       ; $484C: $47
    call Call_03E_4B49                            ; $484D: $CD $49 $4B

Jump_03E_4850:
    xor a                                         ; $4850: $AF
    ld [$D680], a                                 ; $4851: $EA $80 $D6
    ld [$D6C0], a                                 ; $4854: $EA $C0 $D6
    ld [$D700], a                                 ; $4857: $EA $00 $D7
    ld [$D740], a                                 ; $485A: $EA $40 $D7
    ld [$D780], a                                 ; $485D: $EA $80 $D7
    ld [$D7C0], a                                 ; $4860: $EA $C0 $D7
    ld [$D800], a                                 ; $4863: $EA $00 $D8
    ld [$D840], a                                 ; $4866: $EA $40 $D8
    ld a, $82                                     ; $4869: $3E $82
    call Call_000_135D                            ; $486B: $CD $5D $13
    ld e, $00                                     ; $486E: $1E $00
    ld d, $5A                                     ; $4870: $16 $5A
    ld hl, $9C4A                                  ; $4872: $21 $4A $9C
    ld b, $03                                     ; $4875: $06 $03
    ld c, $01                                     ; $4877: $0E $01
    call Call_000_1111                            ; $4879: $CD $11 $11
    ld e, $00                                     ; $487C: $1E $00
    ld d, $59                                     ; $487E: $16 $59
    ld hl, $9C50                                  ; $4880: $21 $50 $9C
    ld b, $01                                     ; $4883: $06 $01
    ld c, $01                                     ; $4885: $0E $01
    call Call_000_1111                            ; $4887: $CD $11 $11
    ld a, [$C00F]                                 ; $488A: $FA $0F $C0
    ld c, a                                       ; $488D: $4F
    ld a, [$C010]                                 ; $488E: $FA $10 $C0
    ld b, a                                       ; $4891: $47
    ld hl, $9C4E                                  ; $4892: $21 $4E $9C
    call Call_03E_4B4C                            ; $4895: $CD $4C $4B

Jump_03E_4898:
    call Call_000_0424                            ; $4898: $CD $24 $04
    ld a, [$C35E]                                 ; $489B: $FA $5E $C3
    dec a                                         ; $489E: $3D
    ldh [rWY], a                                  ; $489F: $E0 $4A
    ld [$C35E], a                                 ; $48A1: $EA $5E $C3
    jp z, Jump_03E_48B0                           ; $48A4: $CA $B0 $48

    dec a                                         ; $48A7: $3D
    ldh [rWY], a                                  ; $48A8: $E0 $4A
    ld [$C35E], a                                 ; $48AA: $EA $5E $C3
    jp nz, Jump_03E_4898                          ; $48AD: $C2 $98 $48

Jump_03E_48B0:
    xor a                                         ; $48B0: $AF
    ldh [$FFE2], a                                ; $48B1: $E0 $E2
    ld e, $00                                     ; $48B3: $1E $00
    ld d, $00                                     ; $48B5: $16 $00
    ld hl, $9800                                  ; $48B7: $21 $00 $98
    ld b, $14                                     ; $48BA: $06 $14
    ld c, $20                                     ; $48BC: $0E $20
    call Call_000_10EA                            ; $48BE: $CD $EA $10

Jump_03E_48C1:
    call Call_000_0424                            ; $48C1: $CD $24 $04
    ld a, [$C35E]                                 ; $48C4: $FA $5E $C3
    add $01                                       ; $48C7: $C6 $01
    ldh [rWY], a                                  ; $48C9: $E0 $4A
    ld [$C35E], a                                 ; $48CB: $EA $5E $C3
    cp $10                                        ; $48CE: $FE $10
    jp c, Jump_03E_48C1                           ; $48D0: $DA $C1 $48

    ld hl, $C359                                  ; $48D3: $21 $59 $C3
    ld c, [hl]                                    ; $48D6: $4E
    inc hl                                        ; $48D7: $23
    ld b, [hl]                                    ; $48D8: $46
    ld a, [$C010]                                 ; $48D9: $FA $10 $C0
    cp b                                          ; $48DC: $B8
    jr z, jr_03E_48E3                             ; $48DD: $28 $04

    jr c, jr_03E_494E                             ; $48DF: $38 $6D

    jr jr_03E_48E9                                ; $48E1: $18 $06

jr_03E_48E3:
    ld a, [$C00F]                                 ; $48E3: $FA $0F $C0
    cp c                                          ; $48E6: $B9
    jr c, jr_03E_494E                             ; $48E7: $38 $65

jr_03E_48E9:
    ld a, c                                       ; $48E9: $79
    ld [$C00F], a                                 ; $48EA: $EA $0F $C0
    ld a, b                                       ; $48ED: $78
    ld [$C010], a                                 ; $48EE: $EA $10 $C0
    ld a, [$C31B]                                 ; $48F1: $FA $1B $C3
    ld [$C00E], a                                 ; $48F4: $EA $0E $C0
    ld c, $08                                     ; $48F7: $0E $08

jr_03E_48F9:
    push bc                                       ; $48F9: $C5
    ld e, $00                                     ; $48FA: $1E $00
    ld d, $00                                     ; $48FC: $16 $00
    ld hl, $9C4A                                  ; $48FE: $21 $4A $9C
    ld b, $0A                                     ; $4901: $06 $0A
    ld c, $02                                     ; $4903: $0E $02
    call Call_000_10EA                            ; $4905: $CD $EA $10
    call Call_000_0424                            ; $4908: $CD $24 $04
    call Call_000_0424                            ; $490B: $CD $24 $04
    call Call_000_0424                            ; $490E: $CD $24 $04
    call Call_000_0424                            ; $4911: $CD $24 $04
    ld e, $00                                     ; $4914: $1E $00
    ld d, $5A                                     ; $4916: $16 $5A
    ld hl, $9C4A                                  ; $4918: $21 $4A $9C
    ld b, $03                                     ; $491B: $06 $03
    ld c, $01                                     ; $491D: $0E $01
    call Call_000_1111                            ; $491F: $CD $11 $11
    ld e, $00                                     ; $4922: $1E $00
    ld d, $59                                     ; $4924: $16 $59
    ld hl, $9C50                                  ; $4926: $21 $50 $9C
    ld b, $01                                     ; $4929: $06 $01
    ld c, $01                                     ; $492B: $0E $01
    call Call_000_1111                            ; $492D: $CD $11 $11
    ld a, [$C00F]                                 ; $4930: $FA $0F $C0
    ld c, a                                       ; $4933: $4F
    ld a, [$C010]                                 ; $4934: $FA $10 $C0
    ld b, a                                       ; $4937: $47
    ld hl, $9C4E                                  ; $4938: $21 $4E $9C
    call Call_03E_4B4C                            ; $493B: $CD $4C $4B
    call Call_000_0424                            ; $493E: $CD $24 $04
    call Call_000_0424                            ; $4941: $CD $24 $04
    call Call_000_0424                            ; $4944: $CD $24 $04
    call Call_000_0424                            ; $4947: $CD $24 $04
    pop bc                                        ; $494A: $C1
    dec c                                         ; $494B: $0D
    jr nz, jr_03E_48F9                            ; $494C: $20 $AB

jr_03E_494E:
    ld b, $14                                     ; $494E: $06 $14
    ld c, $10                                     ; $4950: $0E $10
    ld e, $00                                     ; $4952: $1E $00
    ld d, $00                                     ; $4954: $16 $00
    ld hl, $9840                                  ; $4956: $21 $40 $98
    call Call_000_10EA                            ; $4959: $CD $EA $10
    ld e, $00                                     ; $495C: $1E $00
    ld d, $70                                     ; $495E: $16 $70
    ld hl, $9840                                  ; $4960: $21 $40 $98
    ld b, $08                                     ; $4963: $06 $08
    ld c, $02                                     ; $4965: $0E $02
    call Call_000_1139                            ; $4967: $CD $39 $11
    ld e, $00                                     ; $496A: $1E $00
    ld d, $59                                     ; $496C: $16 $59
    ld hl, $9850                                  ; $496E: $21 $50 $98
    ld b, $01                                     ; $4971: $06 $01
    ld c, $01                                     ; $4973: $0E $01
    call Call_000_1111                            ; $4975: $CD $11 $11
    ld a, [$C359]                                 ; $4978: $FA $59 $C3
    ld c, a                                       ; $497B: $4F
    ld a, [$C35A]                                 ; $497C: $FA $5A $C3
    ld b, a                                       ; $497F: $47
    ld hl, $984E                                  ; $4980: $21 $4E $98
    call Call_03E_4B4C                            ; $4983: $CD $4C $4B
    ld e, $00                                     ; $4986: $1E $00
    ld d, $5A                                     ; $4988: $16 $5A
    ld hl, $988A                                  ; $498A: $21 $8A $98
    ld b, $03                                     ; $498D: $06 $03
    ld c, $01                                     ; $498F: $0E $01
    call Call_000_1111                            ; $4991: $CD $11 $11
    ld e, $00                                     ; $4994: $1E $00
    ld d, $59                                     ; $4996: $16 $59
    ld hl, $9890                                  ; $4998: $21 $90 $98
    ld b, $01                                     ; $499B: $06 $01
    ld c, $01                                     ; $499D: $0E $01
    call Call_000_1111                            ; $499F: $CD $11 $11
    ld a, [$C00F]                                 ; $49A2: $FA $0F $C0
    ld c, a                                       ; $49A5: $4F
    ld a, [$C010]                                 ; $49A6: $FA $10 $C0
    ld b, a                                       ; $49A9: $47
    ld hl, $988E                                  ; $49AA: $21 $8E $98
    call Call_03E_4B4C                            ; $49AD: $CD $4C $4B
    ld a, $8F                                     ; $49B0: $3E $8F
    ldh [rWY], a                                  ; $49B2: $E0 $4A
    ld e, $00                                     ; $49B4: $1E $00
    ld a, [$C35A]                                 ; $49B6: $FA $5A $C3
    cp $40                                        ; $49B9: $FE $40
    jr nc, jr_03E_49CB                            ; $49BB: $30 $0E

    ld e, $02                                     ; $49BD: $1E $02
    cp $30                                        ; $49BF: $FE $30
    jr nc, jr_03E_49CB                            ; $49C1: $30 $08

    ld e, $04                                     ; $49C3: $1E $04
    cp $20                                        ; $49C5: $FE $20
    jr nc, jr_03E_49CB                            ; $49C7: $30 $02

    ld e, $06                                     ; $49C9: $1E $06

jr_03E_49CB:
    ld d, $00                                     ; $49CB: $16 $00
    ld hl, $4C71                                  ; $49CD: $21 $71 $4C
    add hl, de                                    ; $49D0: $19
    ld a, [hl+]                                   ; $49D1: $2A
    ld [$C32B], a                                 ; $49D2: $EA $2B $C3
    ld a, [hl]                                    ; $49D5: $7E
    ld [$C32C], a                                 ; $49D6: $EA $2C $C3

jr_03E_49D9:
    ld b, $39                                     ; $49D9: $06 $39
    ld hl, $4067                                  ; $49DB: $21 $67 $40
    rst RST_08                                    ; $49DE: $CF
    call Call_000_0424                            ; $49DF: $CD $24 $04
    ld a, [$C32E]                                 ; $49E2: $FA $2E $C3
    add a                                         ; $49E5: $87
    jr c, jr_03E_49F5                             ; $49E6: $38 $0D

    ldh a, [$FF99]                                ; $49E8: $F0 $99
    ld e, a                                       ; $49EA: $5F
    ldh a, [$FFAC]                                ; $49EB: $F0 $AC
    or e                                          ; $49ED: $B3
    ld e, a                                       ; $49EE: $5F
    and $80                                       ; $49EF: $E6 $80
    jr z, jr_03E_49D9                             ; $49F1: $28 $E6

    jr jr_03E_4A00                                ; $49F3: $18 $0B

jr_03E_49F5:
    ldh a, [$FF99]                                ; $49F5: $F0 $99
    ld e, a                                       ; $49F7: $5F
    ldh a, [$FFAC]                                ; $49F8: $F0 $AC
    or e                                          ; $49FA: $B3
    ld e, a                                       ; $49FB: $5F
    and $90                                       ; $49FC: $E6 $90
    jr z, jr_03E_49D9                             ; $49FE: $28 $D9

jr_03E_4A00:
    ld hl, $C03A                                  ; $4A00: $21 $3A $C0
    res 2, [hl]                                   ; $4A03: $CB $96
    ld a, $00                                     ; $4A05: $3E $00
    call Call_000_135D                            ; $4A07: $CD $5D $13
    call Call_000_0424                            ; $4A0A: $CD $24 $04
    ld b, $3D                                     ; $4A0D: $06 $3D
    ld hl, $4004                                  ; $4A0F: $21 $04 $40
    rst RST_00                                    ; $4A12: $C7

Call_03E_4A13:
    ld a, [$D6AE]                                 ; $4A13: $FA $AE $D6
    or a                                          ; $4A16: $B7
    jr z, jr_03E_4A2E                             ; $4A17: $28 $15

    ld a, [$C35A]                                 ; $4A19: $FA $5A $C3
    cp $99                                        ; $4A1C: $FE $99
    ret z                                         ; $4A1E: $C8

    ld a, $3B                                     ; $4A1F: $3E $3B
    ld [$C359], a                                 ; $4A21: $EA $59 $C3
    ld c, a                                       ; $4A24: $4F
    ld a, $99                                     ; $4A25: $3E $99
    ld [$C35A], a                                 ; $4A27: $EA $5A $C3
    ld b, a                                       ; $4A2A: $47
    jp Jump_03E_4B49                              ; $4A2B: $C3 $49 $4B


jr_03E_4A2E:
    ld a, [$C353]                                 ; $4A2E: $FA $53 $C3
    or a                                          ; $4A31: $B7
    jp nz, Jump_03E_4A85                          ; $4A32: $C2 $85 $4A

    call Call_03E_4A8C                            ; $4A35: $CD $8C $4A
    ld a, [$D686]                                 ; $4A38: $FA $86 $D6
    ld c, a                                       ; $4A3B: $4F
    ld a, $A0                                     ; $4A3C: $3E $A0
    sub c                                         ; $4A3E: $91
    cp $80                                        ; $4A3F: $FE $80
    jr c, jr_03E_4A45                             ; $4A41: $38 $02

    ld a, $80                                     ; $4A43: $3E $80

jr_03E_4A45:
    ld c, a                                       ; $4A45: $4F
    ld hl, $C354                                  ; $4A46: $21 $54 $C3
    ld a, [hl]                                    ; $4A49: $7E
    sub c                                         ; $4A4A: $91
    ld [hl], a                                    ; $4A4B: $77
    jp z, Jump_03E_4A52                           ; $4A4C: $CA $52 $4A

    jp nc, Jump_03E_4A85                          ; $4A4F: $D2 $85 $4A

Jump_03E_4A52:
    add $80                                       ; $4A52: $C6 $80
    ld [hl], a                                    ; $4A54: $77
    ld hl, $C351                                  ; $4A55: $21 $51 $C3
    dec [hl]                                      ; $4A58: $35
    ld a, [hl]                                    ; $4A59: $7E
    ldh [$FFE2], a                                ; $4A5A: $E0 $E2
    ld hl, $C34B                                  ; $4A5C: $21 $4B $C3
    ld e, [hl]                                    ; $4A5F: $5E
    inc hl                                        ; $4A60: $23
    ld d, [hl]                                    ; $4A61: $56
    dec de                                        ; $4A62: $1B
    ld [hl], d                                    ; $4A63: $72
    dec hl                                        ; $4A64: $2B
    ld [hl], e                                    ; $4A65: $73
    ld a, d                                       ; $4A66: $7A
    or e                                          ; $4A67: $B3
    jr nz, jr_03E_4A74                            ; $4A68: $20 $0A

    ld a, $FF                                     ; $4A6A: $3E $FF
    ld [$C353], a                                 ; $4A6C: $EA $53 $C3
    ld a, $78                                     ; $4A6F: $3E $78
    ld [$C35F], a                                 ; $4A71: $EA $5F $C3

jr_03E_4A74:
    ld a, e                                       ; $4A74: $7B
    and $07                                       ; $4A75: $E6 $07
    jr nz, jr_03E_4A85                            ; $4A77: $20 $0C

    ld a, [$C352]                                 ; $4A79: $FA $52 $C3
    or a                                          ; $4A7C: $B7
    jr nz, jr_03E_4A85                            ; $4A7D: $20 $06

    ld b, $35                                     ; $4A7F: $06 $35
    ld hl, $408E                                  ; $4A81: $21 $8E $40
    rst RST_08                                    ; $4A84: $CF

Jump_03E_4A85:
jr_03E_4A85:
    ld b, $35                                     ; $4A85: $06 $35
    ld hl, $40D7                                  ; $4A87: $21 $D7 $40
    rst RST_08                                    ; $4A8A: $CF
    ret                                           ; $4A8B: $C9


Call_03E_4A8C:
    ld a, [$C35A]                                 ; $4A8C: $FA $5A $C3
    cp $99                                        ; $4A8F: $FE $99
    jr nz, jr_03E_4A9B                            ; $4A91: $20 $08

    ld a, [$C359]                                 ; $4A93: $FA $59 $C3
    cp $3B                                        ; $4A96: $FE $3B
    jr nz, jr_03E_4A9E                            ; $4A98: $20 $04

    ret                                           ; $4A9A: $C9


jr_03E_4A9B:
    ld a, [$C359]                                 ; $4A9B: $FA $59 $C3

jr_03E_4A9E:
    inc a                                         ; $4A9E: $3C
    cp $3C                                        ; $4A9F: $FE $3C
    ld [$C359], a                                 ; $4AA1: $EA $59 $C3
    jr c, jr_03E_4ADD                             ; $4AA4: $38 $37

    xor a                                         ; $4AA6: $AF
    ld [$C359], a                                 ; $4AA7: $EA $59 $C3
    ld a, [$C35A]                                 ; $4AAA: $FA $5A $C3
    inc a                                         ; $4AAD: $3C
    daa                                           ; $4AAE: $27
    ld [$C35A], a                                 ; $4AAF: $EA $5A $C3
    push af                                       ; $4AB2: $F5
    and $0F                                       ; $4AB3: $E6 $0F
    add a                                         ; $4AB5: $87
    add $40                                       ; $4AB6: $C6 $40
    ld e, $00                                     ; $4AB8: $1E $00
    ld d, a                                       ; $4ABA: $57
    ld hl, $9C0F                                  ; $4ABB: $21 $0F $9C
    ld b, $01                                     ; $4ABE: $06 $01
    ld c, $02                                     ; $4AC0: $0E $02
    call Call_000_1139                            ; $4AC2: $CD $39 $11
    pop af                                        ; $4AC5: $F1
    swap a                                        ; $4AC6: $CB $37
    and $0F                                       ; $4AC8: $E6 $0F
    add a                                         ; $4ACA: $87
    add $40                                       ; $4ACB: $C6 $40
    ld e, $00                                     ; $4ACD: $1E $00
    ld d, a                                       ; $4ACF: $57
    ld hl, $9C0E                                  ; $4AD0: $21 $0E $9C
    ld b, $01                                     ; $4AD3: $06 $01
    ld c, $02                                     ; $4AD5: $0E $02
    call Call_000_1139                            ; $4AD7: $CD $39 $11
    ld a, [$C359]                                 ; $4ADA: $FA $59 $C3

jr_03E_4ADD:
    ld e, a                                       ; $4ADD: $5F
    ld d, $00                                     ; $4ADE: $16 $00
    ld hl, $4B0D                                  ; $4AE0: $21 $0D $4B
    add hl, de                                    ; $4AE3: $19
    ld a, [hl]                                    ; $4AE4: $7E
    push af                                       ; $4AE5: $F5
    and $0F                                       ; $4AE6: $E6 $0F
    add a                                         ; $4AE8: $87
    add $40                                       ; $4AE9: $C6 $40
    ld e, $00                                     ; $4AEB: $1E $00
    ld d, a                                       ; $4AED: $57
    ld hl, $9C12                                  ; $4AEE: $21 $12 $9C
    ld b, $01                                     ; $4AF1: $06 $01
    ld c, $02                                     ; $4AF3: $0E $02
    call Call_000_1139                            ; $4AF5: $CD $39 $11
    pop af                                        ; $4AF8: $F1
    swap a                                        ; $4AF9: $CB $37
    and $0F                                       ; $4AFB: $E6 $0F
    add a                                         ; $4AFD: $87
    add $40                                       ; $4AFE: $C6 $40
    ld e, $00                                     ; $4B00: $1E $00
    ld d, a                                       ; $4B02: $57
    ld hl, $9C11                                  ; $4B03: $21 $11 $9C
    ld b, $01                                     ; $4B06: $06 $01
    ld c, $02                                     ; $4B08: $0E $02
    jp Jump_000_1139                              ; $4B0A: $C3 $39 $11


    nop                                           ; $4B0D: $00
    ld bc, $0503                                  ; $4B0E: $01 $03 $05
    rlca                                          ; $4B11: $07
    add hl, bc                                    ; $4B12: $09
    db $10                                        ; $4B13: $10
    ld [de], a                                    ; $4B14: $12
    inc d                                         ; $4B15: $14
    ld d, $18                                     ; $4B16: $16 $18
    add hl, de                                    ; $4B18: $19
    jr nz, jr_03E_4B3C                            ; $4B19: $20 $21

    inc hl                                        ; $4B1B: $23
    dec h                                         ; $4B1C: $25
    daa                                           ; $4B1D: $27
    add hl, hl                                    ; $4B1E: $29
    jr nc, jr_03E_4B53                            ; $4B1F: $30 $32

    inc [hl]                                      ; $4B21: $34
    ld [hl], $38                                  ; $4B22: $36 $38
    add hl, sp                                    ; $4B24: $39
    ld b, b                                       ; $4B25: $40
    ld b, c                                       ; $4B26: $41
    ld b, e                                       ; $4B27: $43
    ld b, l                                       ; $4B28: $45
    ld b, a                                       ; $4B29: $47
    ld c, c                                       ; $4B2A: $49
    ld d, b                                       ; $4B2B: $50
    ld d, d                                       ; $4B2C: $52
    ld d, h                                       ; $4B2D: $54
    ld d, [hl]                                    ; $4B2E: $56
    ld e, b                                       ; $4B2F: $58
    ld e, c                                       ; $4B30: $59
    ld h, b                                       ; $4B31: $60
    ld h, c                                       ; $4B32: $61
    ld h, e                                       ; $4B33: $63
    ld h, l                                       ; $4B34: $65
    ld h, a                                       ; $4B35: $67
    ld l, c                                       ; $4B36: $69
    ld [hl], b                                    ; $4B37: $70
    ld [hl], d                                    ; $4B38: $72
    ld [hl], h                                    ; $4B39: $74
    halt                                          ; $4B3A: $76
    ld a, b                                       ; $4B3B: $78

jr_03E_4B3C:
    ld a, c                                       ; $4B3C: $79
    add b                                         ; $4B3D: $80
    add c                                         ; $4B3E: $81
    add e                                         ; $4B3F: $83
    add l                                         ; $4B40: $85
    add a                                         ; $4B41: $87
    adc c                                         ; $4B42: $89
    sub b                                         ; $4B43: $90
    sub d                                         ; $4B44: $92
    sub h                                         ; $4B45: $94
    sub [hl]                                      ; $4B46: $96
    sbc b                                         ; $4B47: $98
    sbc c                                         ; $4B48: $99

Call_03E_4B49:
Jump_03E_4B49:
    ld hl, $9C0E                                  ; $4B49: $21 $0E $9C

Call_03E_4B4C:
    push bc                                       ; $4B4C: $C5
    push hl                                       ; $4B4D: $E5
    ld a, b                                       ; $4B4E: $78
    swap a                                        ; $4B4F: $CB $37
    and $0F                                       ; $4B51: $E6 $0F

jr_03E_4B53:
    jr z, jr_03E_4B62                             ; $4B53: $28 $0D

    add a                                         ; $4B55: $87
    add $40                                       ; $4B56: $C6 $40
    ld e, $00                                     ; $4B58: $1E $00
    ld d, a                                       ; $4B5A: $57
    ld b, $01                                     ; $4B5B: $06 $01
    ld c, $02                                     ; $4B5D: $0E $02
    call Call_000_1139                            ; $4B5F: $CD $39 $11

jr_03E_4B62:
    pop hl                                        ; $4B62: $E1
    pop bc                                        ; $4B63: $C1
    ld de, $0001                                  ; $4B64: $11 $01 $00
    add hl, de                                    ; $4B67: $19
    push bc                                       ; $4B68: $C5
    push hl                                       ; $4B69: $E5
    ld a, b                                       ; $4B6A: $78
    and $0F                                       ; $4B6B: $E6 $0F
    add a                                         ; $4B6D: $87
    add $40                                       ; $4B6E: $C6 $40
    ld e, $00                                     ; $4B70: $1E $00
    ld d, a                                       ; $4B72: $57
    ld b, $01                                     ; $4B73: $06 $01
    ld c, $02                                     ; $4B75: $0E $02
    call Call_000_1139                            ; $4B77: $CD $39 $11
    pop hl                                        ; $4B7A: $E1
    pop bc                                        ; $4B7B: $C1
    push hl                                       ; $4B7C: $E5
    ld e, c                                       ; $4B7D: $59
    ld d, $00                                     ; $4B7E: $16 $00
    ld hl, $4B0D                                  ; $4B80: $21 $0D $4B
    add hl, de                                    ; $4B83: $19
    ld a, [hl]                                    ; $4B84: $7E
    pop hl                                        ; $4B85: $E1
    ld de, $0002                                  ; $4B86: $11 $02 $00
    add hl, de                                    ; $4B89: $19
    push af                                       ; $4B8A: $F5
    push hl                                       ; $4B8B: $E5
    swap a                                        ; $4B8C: $CB $37
    and $0F                                       ; $4B8E: $E6 $0F
    add a                                         ; $4B90: $87
    add $40                                       ; $4B91: $C6 $40
    ld e, $00                                     ; $4B93: $1E $00
    ld d, a                                       ; $4B95: $57
    ld b, $01                                     ; $4B96: $06 $01
    ld c, $02                                     ; $4B98: $0E $02
    call Call_000_1139                            ; $4B9A: $CD $39 $11
    pop hl                                        ; $4B9D: $E1
    pop af                                        ; $4B9E: $F1
    ld de, $0001                                  ; $4B9F: $11 $01 $00
    add hl, de                                    ; $4BA2: $19
    and $0F                                       ; $4BA3: $E6 $0F
    add a                                         ; $4BA5: $87
    add $40                                       ; $4BA6: $C6 $40
    ld e, $00                                     ; $4BA8: $1E $00
    ld d, a                                       ; $4BAA: $57
    ld b, $01                                     ; $4BAB: $06 $01
    ld c, $02                                     ; $4BAD: $0E $02
    jp Jump_000_1139                              ; $4BAF: $C3 $39 $11


Call_03E_4BB2:
    push hl                                       ; $4BB2: $E5
    ld de, $002F                                  ; $4BB3: $11 $2F $00
    add hl, de                                    ; $4BB6: $19
    ld a, [hl]                                    ; $4BB7: $7E
    pop hl                                        ; $4BB8: $E1
    or a                                          ; $4BB9: $B7
    jp nz, Jump_000_0DD4                          ; $4BBA: $C2 $D4 $0D

    jp Jump_000_0E28                              ; $4BBD: $C3 $28 $0E


    ld a, [$C2D0]                                 ; $4BC0: $FA $D0 $C2
    cp $00                                        ; $4BC3: $FE $00
    jp nz, Jump_03E_4BCE                          ; $4BC5: $C2 $CE $4B

    ld hl, $FF98                                  ; $4BC8: $21 $98 $FF
    jp Jump_03E_4BD1                              ; $4BCB: $C3 $D1 $4B


Jump_03E_4BCE:
    ld hl, $FFAB                                  ; $4BCE: $21 $AB $FF

Jump_03E_4BD1:
    ld c, [hl]                                    ; $4BD1: $4E
    inc hl                                        ; $4BD2: $23
    ld b, [hl]                                    ; $4BD3: $46
    ret                                           ; $4BD4: $C9


    nop                                           ; $4BD5: $00
    nop                                           ; $4BD6: $00
    nop                                           ; $4BD7: $00
    nop                                           ; $4BD8: $00
    nop                                           ; $4BD9: $00
    nop                                           ; $4BDA: $00
    ld l, c                                       ; $4BDB: $69
    jp $C3A9                                      ; $4BDC: $C3 $A9 $C3


    ld a, c                                       ; $4BDF: $79
    push bc                                       ; $4BE0: $C5
    ld bc, $0001                                  ; $4BE1: $01 $01 $00
    adc b                                         ; $4BE4: $88
    nop                                           ; $4BE5: $00
    nop                                           ; $4BE6: $00
    nop                                           ; $4BE7: $00
    nop                                           ; $4BE8: $00
    nop                                           ; $4BE9: $00
    ld a, c                                       ; $4BEA: $79
    push bc                                       ; $4BEB: $C5
    nop                                           ; $4BEC: $00
    ld bc, $8001                                  ; $4BED: $01 $01 $80
    nop                                           ; $4BF0: $00
    nop                                           ; $4BF1: $00
    nop                                           ; $4BF2: $00
    nop                                           ; $4BF3: $00
    nop                                           ; $4BF4: $00
    nop                                           ; $4BF5: $00
    nop                                           ; $4BF6: $00
    ld [hl], b                                    ; $4BF7: $70
    inc bc                                        ; $4BF8: $03
    ld [bc], a                                    ; $4BF9: $02
    ld h, h                                       ; $4BFA: $64
    nop                                           ; $4BFB: $00
    nop                                           ; $4BFC: $00
    ld [hl], b                                    ; $4BFD: $70
    nop                                           ; $4BFE: $00
    nop                                           ; $4BFF: $00
    add b                                         ; $4C00: $80
    nop                                           ; $4C01: $00
    nop                                           ; $4C02: $00
    nop                                           ; $4C03: $00
    nop                                           ; $4C04: $00
    nop                                           ; $4C05: $00
    nop                                           ; $4C06: $00
    nop                                           ; $4C07: $00
    nop                                           ; $4C08: $00
    nop                                           ; $4C09: $00
    add b                                         ; $4C0A: $80
    nop                                           ; $4C0B: $00
    nop                                           ; $4C0C: $00
    nop                                           ; $4C0D: $00
    nop                                           ; $4C0E: $00
    nop                                           ; $4C0F: $00
    nop                                           ; $4C10: $00
    nop                                           ; $4C11: $00
    nop                                           ; $4C12: $00
    nop                                           ; $4C13: $00
    nop                                           ; $4C14: $00
    sbc a                                         ; $4C15: $9F
    ld d, l                                       ; $4C16: $55
    sbc a                                         ; $4C17: $9F
    ld d, l                                       ; $4C18: $55
    ld h, c                                       ; $4C19: $61
    ld e, b                                       ; $4C1A: $58
    adc b                                         ; $4C1B: $88
    ld e, d                                       ; $4C1C: $5A
    sbc a                                         ; $4C1D: $9F
    ld d, l                                       ; $4C1E: $55
    sbc a                                         ; $4C1F: $9F
    ld d, l                                       ; $4C20: $55
    sbc a                                         ; $4C21: $9F
    ld d, l                                       ; $4C22: $55
    sbc a                                         ; $4C23: $9F
    ld d, l                                       ; $4C24: $55
    or c                                          ; $4C25: $B1
    ld d, l                                       ; $4C26: $55
    sbc a                                         ; $4C27: $9F
    ld d, l                                       ; $4C28: $55
    jr c, jr_03E_4C6B                             ; $4C29: $38 $40

    jr c, jr_03E_4C71                             ; $4C2B: $38 $44

    jr c, jr_03E_4C77                             ; $4C2D: $38 $48

    jr c, jr_03E_4C7D                             ; $4C2F: $38 $4C

    jr c, @+$52                                   ; $4C31: $38 $50

    jr c, jr_03E_4C89                             ; $4C33: $38 $54

    jr c, jr_03E_4C8F                             ; $4C35: $38 $58

    jr c, @+$5E                                   ; $4C37: $38 $5C

    jr c, @+$62                                   ; $4C39: $38 $60

    jr c, @+$66                                   ; $4C3B: $38 $64

    ret c                                         ; $4C3D: $D8

    ld c, l                                       ; $4C3E: $4D
    ld h, l                                       ; $4C3F: $65
    ld d, b                                       ; $4C40: $50
    adc $52                                       ; $4C41: $CE $52
    ld a, h                                       ; $4C43: $7C
    ld d, l                                       ; $4C44: $55
    adc $57                                       ; $4C45: $CE $57
    add c                                         ; $4C47: $81
    ld e, d                                       ; $4C48: $5A
    dec bc                                        ; $4C49: $0B
    ld e, l                                       ; $4C4A: $5D
    add [hl]                                      ; $4C4B: $86
    ld e, a                                       ; $4C4C: $5F
    ld d, d                                       ; $4C4D: $52
    ld h, d                                       ; $4C4E: $62
    ld c, h                                       ; $4C4F: $4C
    ld h, l                                       ; $4C50: $65
    add b                                         ; $4C51: $80
    nop                                           ; $4C52: $00
    nop                                           ; $4C53: $00
    nop                                           ; $4C54: $00
    ld d, b                                       ; $4C55: $50
    nop                                           ; $4C56: $00
    ld h, b                                       ; $4C57: $60
    nop                                           ; $4C58: $00
    nop                                           ; $4C59: $00
    nop                                           ; $4C5A: $00
    nop                                           ; $4C5B: $00
    nop                                           ; $4C5C: $00
    nop                                           ; $4C5D: $00
    nop                                           ; $4C5E: $00
    nop                                           ; $4C5F: $00
    nop                                           ; $4C60: $00
    add b                                         ; $4C61: $80
    dec a                                         ; $4C62: $3D
    ld d, c                                       ; $4C63: $51
    ld c, h                                       ; $4C64: $4C
    nop                                           ; $4C65: $00
    nop                                           ; $4C66: $00
    ld d, c                                       ; $4C67: $51
    ld c, h                                       ; $4C68: $4C
    nop                                           ; $4C69: $00
    nop                                           ; $4C6A: $00

jr_03E_4C6B:
    nop                                           ; $4C6B: $00
    nop                                           ; $4C6C: $00
    inc bc                                        ; $4C6D: $03
    inc bc                                        ; $4C6E: $03
    ret nz                                        ; $4C6F: $C0

    ret c                                         ; $4C70: $D8

jr_03E_4C71:
    dec bc                                        ; $4C71: $0B
    ld l, [hl]                                    ; $4C72: $6E
    ld b, d                                       ; $4C73: $42
    ld l, [hl]                                    ; $4C74: $6E
    add l                                         ; $4C75: $85
    ld l, [hl]                                    ; $4C76: $6E

jr_03E_4C77:
    call nc, $AF6E                                ; $4C77: $D4 $6E $AF
    ld [$C31B], a                                 ; $4C7A: $EA $1B $C3

jr_03E_4C7D:
    ld sp, $DD00                                  ; $4C7D: $31 $00 $DD
    di                                            ; $4C80: $F3
    rst RST_10                                    ; $4C81: $D7
    ld hl, $C03A                                  ; $4C82: $21 $3A $C0
    res 1, [hl]                                   ; $4C85: $CB $8E
    ld a, $00                                     ; $4C87: $3E $00

jr_03E_4C89:
    call Call_000_135D                            ; $4C89: $CD $5D $13
    xor a                                         ; $4C8C: $AF
    ldh [rBGP], a                                 ; $4C8D: $E0 $47

jr_03E_4C8F:
    ldh [rOBP0], a                                ; $4C8F: $E0 $48
    ldh [rOBP1], a                                ; $4C91: $E0 $49
    call Call_000_13ED                            ; $4C93: $CD $ED $13
    ld de, $0022                                  ; $4C96: $11 $22 $00
    call Call_000_14C0                            ; $4C99: $CD $C0 $14
    call Call_000_0FBD                            ; $4C9C: $CD $BD $0F
    call Call_000_0FC6                            ; $4C9F: $CD $C6 $0F
    xor a                                         ; $4CA2: $AF
    ldh [$FFE4], a                                ; $4CA3: $E0 $E4
    ldh [$FFE2], a                                ; $4CA5: $E0 $E2
    ld [$C2AA], a                                 ; $4CA7: $EA $AA $C2
    ld a, $F0                                     ; $4CAA: $3E $F0
    ld [$C2AC], a                                 ; $4CAC: $EA $AC $C2
    ld hl, $7810                                  ; $4CAF: $21 $10 $78
    ld b, $33                                     ; $4CB2: $06 $33
    ld de, $C359                                  ; $4CB4: $11 $59 $C3
    rst RST_20                                    ; $4CB7: $E7
    ld hl, $C359                                  ; $4CB8: $21 $59 $C3
    ld de, $8800                                  ; $4CBB: $11 $00 $88
    ld b, $80                                     ; $4CBE: $06 $80
    call Call_000_1188                            ; $4CC0: $CD $88 $11
    ld hl, $4DE1                                  ; $4CC3: $21 $E1 $4D
    ld b, $32                                     ; $4CC6: $06 $32
    ld de, $C359                                  ; $4CC8: $11 $59 $C3
    rst RST_20                                    ; $4CCB: $E7
    ld hl, $C359                                  ; $4CCC: $21 $59 $C3
    ld de, $9000                                  ; $4CCF: $11 $00 $90
    ld b, $6A                                     ; $4CD2: $06 $6A
    call Call_000_1188                            ; $4CD4: $CD $88 $11
    ld a, [$C31A]                                 ; $4CD7: $FA $1A $C3
    cp $01                                        ; $4CDA: $FE $01
    jr c, jr_03E_4D02                             ; $4CDC: $38 $24

    jr nz, jr_03E_4CF1                            ; $4CDE: $20 $11

    ld e, $00                                     ; $4CE0: $1E $00
    ld d, $01                                     ; $4CE2: $16 $01
    ld hl, $9842                                  ; $4CE4: $21 $42 $98
    ld b, $08                                     ; $4CE7: $06 $08
    ld c, $07                                     ; $4CE9: $0E $07
    call Call_000_10EA                            ; $4CEB: $CD $EA $10
    jp Jump_03E_4D10                              ; $4CEE: $C3 $10 $4D


jr_03E_4CF1:
    ld e, $01                                     ; $4CF1: $1E $01
    ld d, $02                                     ; $4CF3: $16 $02
    ld hl, $984A                                  ; $4CF5: $21 $4A $98
    ld b, $08                                     ; $4CF8: $06 $08
    ld c, $07                                     ; $4CFA: $0E $07
    call Call_000_10EA                            ; $4CFC: $CD $EA $10
    jp Jump_03E_4D10                              ; $4CFF: $C3 $10 $4D


jr_03E_4D02:
    ld e, $01                                     ; $4D02: $1E $01
    ld d, $03                                     ; $4D04: $16 $03
    ld hl, $9846                                  ; $4D06: $21 $46 $98
    ld b, $08                                     ; $4D09: $06 $08
    ld c, $07                                     ; $4D0B: $0E $07
    call Call_000_10EA                            ; $4D0D: $CD $EA $10

Jump_03E_4D10:
    ld e, $00                                     ; $4D10: $1E $00
    ld d, $04                                     ; $4D12: $16 $04
    ld hl, $9A27                                  ; $4D14: $21 $27 $9A
    ld b, $0C                                     ; $4D17: $06 $0C
    ld c, $01                                     ; $4D19: $0E $01
    call Call_000_1111                            ; $4D1B: $CD $11 $11
    ld e, $00                                     ; $4D1E: $1E $00
    ld d, $10                                     ; $4D20: $16 $10
    ld hl, $9944                                  ; $4D22: $21 $44 $99
    ld b, $03                                     ; $4D25: $06 $03
    ld c, $03                                     ; $4D27: $0E $03
    call Call_000_1111                            ; $4D29: $CD $11 $11
    ld e, $02                                     ; $4D2C: $1E $02
    ld d, $22                                     ; $4D2E: $16 $22
    ld hl, $9947                                  ; $4D30: $21 $47 $99
    ld b, $03                                     ; $4D33: $06 $03
    ld c, $03                                     ; $4D35: $0E $03
    call Call_000_1111                            ; $4D37: $CD $11 $11
    ld e, $04                                     ; $4D3A: $1E $04
    ld d, $34                                     ; $4D3C: $16 $34
    ld hl, $994A                                  ; $4D3E: $21 $4A $99
    ld b, $03                                     ; $4D41: $06 $03
    ld c, $03                                     ; $4D43: $0E $03
    call Call_000_1111                            ; $4D45: $CD $11 $11
    ld e, $00                                     ; $4D48: $1E $00
    ld d, $46                                     ; $4D4A: $16 $46
    ld hl, $994D                                  ; $4D4C: $21 $4D $99
    ld b, $03                                     ; $4D4F: $06 $03
    ld c, $03                                     ; $4D51: $0E $03
    call Call_000_1111                            ; $4D53: $CD $11 $11
    ld e, $01                                     ; $4D56: $1E $01
    ld d, $19                                     ; $4D58: $16 $19
    ld hl, $99A4                                  ; $4D5A: $21 $A4 $99
    ld b, $03                                     ; $4D5D: $06 $03
    ld c, $03                                     ; $4D5F: $0E $03
    call Call_000_1111                            ; $4D61: $CD $11 $11
    ld e, $03                                     ; $4D64: $1E $03
    ld d, $2B                                     ; $4D66: $16 $2B
    ld hl, $99A7                                  ; $4D68: $21 $A7 $99
    ld b, $03                                     ; $4D6B: $06 $03
    ld c, $03                                     ; $4D6D: $0E $03
    call Call_000_1111                            ; $4D6F: $CD $11 $11
    ld e, $04                                     ; $4D72: $1E $04
    ld d, $3D                                     ; $4D74: $16 $3D
    ld hl, $99AA                                  ; $4D76: $21 $AA $99
    ld b, $03                                     ; $4D79: $06 $03
    ld c, $03                                     ; $4D7B: $0E $03
    call Call_000_1111                            ; $4D7D: $CD $11 $11
    ld e, $01                                     ; $4D80: $1E $01
    ld d, $4F                                     ; $4D82: $16 $4F
    ld hl, $99AD                                  ; $4D84: $21 $AD $99
    ld b, $03                                     ; $4D87: $06 $03
    ld c, $03                                     ; $4D89: $0E $03
    call Call_000_1111                            ; $4D8B: $CD $11 $11
    ld a, [$C001]                                 ; $4D8E: $FA $01 $C0
    bit 7, a                                      ; $4D91: $CB $7F
    jr z, jr_03E_4DA3                             ; $4D93: $28 $0E

    ld e, $02                                     ; $4D95: $1E $02
    ld d, $58                                     ; $4D97: $16 $58
    ld hl, $99A1                                  ; $4D99: $21 $A1 $99
    ld b, $03                                     ; $4D9C: $06 $03
    ld c, $03                                     ; $4D9E: $0E $03
    call Call_000_1111                            ; $4DA0: $CD $11 $11

jr_03E_4DA3:
    ld a, [$C001]                                 ; $4DA3: $FA $01 $C0
    bit 6, a                                      ; $4DA6: $CB $77
    jr z, jr_03E_4DB8                             ; $4DA8: $28 $0E

    ld e, $03                                     ; $4DAA: $1E $03
    ld d, $61                                     ; $4DAC: $16 $61
    ld hl, $99B0                                  ; $4DAE: $21 $B0 $99
    ld b, $03                                     ; $4DB1: $06 $03
    ld c, $03                                     ; $4DB3: $0E $03
    call Call_000_1111                            ; $4DB5: $CD $11 $11

jr_03E_4DB8:
    call Call_000_0F9E                            ; $4DB8: $CD $9E $0F
    ld hl, $D6C0                                  ; $4DBB: $21 $C0 $D6
    ld de, $505D                                  ; $4DBE: $11 $5D $50
    call Call_000_0F8E                            ; $4DC1: $CD $8E $0F
    ld hl, $D700                                  ; $4DC4: $21 $00 $D7
    ld de, $50FB                                  ; $4DC7: $11 $FB $50
    call Call_000_0F8E                            ; $4DCA: $CD $8E $0F
    ld a, [$C31A]                                 ; $4DCD: $FA $1A $C3
    cp $01                                        ; $4DD0: $FE $01
    jr c, jr_03E_4DDD                             ; $4DD2: $38 $09

    jr z, jr_03E_4DE7                             ; $4DD4: $28 $11

    ld hl, $D704                                  ; $4DD6: $21 $04 $D7
    ld [hl], $10                                  ; $4DD9: $36 $10
    jr jr_03E_4DE7                                ; $4DDB: $18 $0A

jr_03E_4DDD:
    ld hl, $D704                                  ; $4DDD: $21 $04 $D7
    ld [hl], $38                                  ; $4DE0: $36 $38
    ld hl, $D706                                  ; $4DE2: $21 $06 $D7
    ld [hl], $00                                  ; $4DE5: $36 $00

jr_03E_4DE7:
    ld hl, $D680                                  ; $4DE7: $21 $80 $D6
    ld de, $24CF                                  ; $4DEA: $11 $CF $24
    call Call_000_0F8E                            ; $4DED: $CD $8E $0F
    ld a, $00                                     ; $4DF0: $3E $00
    ld c, a                                       ; $4DF2: $4F
    add a                                         ; $4DF3: $87
    add c                                         ; $4DF4: $81
    ld hl, $5BCD                                  ; $4DF5: $21 $CD $5B
    ld e, a                                       ; $4DF8: $5F
    ld d, $00                                     ; $4DF9: $16 $00
    add hl, de                                    ; $4DFB: $19
    ld a, [hl+]                                   ; $4DFC: $2A
    ld e, [hl]                                    ; $4DFD: $5E
    inc hl                                        ; $4DFE: $23
    ld d, [hl]                                    ; $4DFF: $56
    ld hl, $D691                                  ; $4E00: $21 $91 $D6
    ld [hl+], a                                   ; $4E03: $22
    ld [hl], e                                    ; $4E04: $73
    inc hl                                        ; $4E05: $23
    ld [hl], d                                    ; $4E06: $72
    ld hl, $D682                                  ; $4E07: $21 $82 $D6
    ld [hl], $30                                  ; $4E0A: $36 $30
    ld hl, $D684                                  ; $4E0C: $21 $84 $D6
    ld [hl], $30                                  ; $4E0F: $36 $30
    ld hl, $D686                                  ; $4E11: $21 $86 $D6
    ld [hl], $04                                  ; $4E14: $36 $04
    ld hl, $D6A9                                  ; $4E16: $21 $A9 $D6
    ld [hl], $FF                                  ; $4E19: $36 $FF
    ld a, [$C31A]                                 ; $4E1B: $FA $1A $C3
    cp $01                                        ; $4E1E: $FE $01
    jr c, jr_03E_4E30                             ; $4E20: $38 $0E

    jr z, jr_03E_4E3A                             ; $4E22: $28 $16

    ld hl, $D682                                  ; $4E24: $21 $82 $D6
    ld [hl], $10                                  ; $4E27: $36 $10
    ld hl, $D684                                  ; $4E29: $21 $84 $D6
    ld [hl], $70                                  ; $4E2C: $36 $70
    jr jr_03E_4E3A                                ; $4E2E: $18 $0A

jr_03E_4E30:
    ld hl, $D682                                  ; $4E30: $21 $82 $D6
    ld [hl], $10                                  ; $4E33: $36 $10
    ld hl, $D684                                  ; $4E35: $21 $84 $D6
    ld [hl], $50                                  ; $4E38: $36 $50

jr_03E_4E3A:
    ld hl, $D680                                  ; $4E3A: $21 $80 $D6
    call Call_000_0DB5                            ; $4E3D: $CD $B5 $0D
    ld a, $87                                     ; $4E40: $3E $87
    rst RST_18                                    ; $4E42: $DF
    xor a                                         ; $4E43: $AF
    ldh [rSTAT], a                                ; $4E44: $E0 $41
    ei                                            ; $4E46: $FB
    ld de, $5005                                  ; $4E47: $11 $05 $50
    ld hl, $C329                                  ; $4E4A: $21 $29 $C3
    ld c, $20                                     ; $4E4D: $0E $20

jr_03E_4E4F:
    ld a, [de]                                    ; $4E4F: $1A
    inc de                                        ; $4E50: $13
    ld [hl+], a                                   ; $4E51: $22
    dec c                                         ; $4E52: $0D
    jr nz, jr_03E_4E4F                            ; $4E53: $20 $FA

    ld a, [$C31B]                                 ; $4E55: $FA $1B $C3
    ld [$C32D], a                                 ; $4E58: $EA $2D $C3
    and $0F                                       ; $4E5B: $E6 $0F
    add a                                         ; $4E5D: $87
    ld e, a                                       ; $4E5E: $5F
    ld d, $00                                     ; $4E5F: $16 $00
    ld hl, $503D                                  ; $4E61: $21 $3D $50
    add hl, de                                    ; $4E64: $19
    ld a, [hl+]                                   ; $4E65: $2A
    ld [$C32B], a                                 ; $4E66: $EA $2B $C3
    ld a, [hl]                                    ; $4E69: $7E
    ld [$C32C], a                                 ; $4E6A: $EA $2C $C3
    call Call_03E_4F91                            ; $4E6D: $CD $91 $4F
    call Call_000_0430                            ; $4E70: $CD $30 $04
    call Call_000_0430                            ; $4E73: $CD $30 $04
    ld a, $8A                                     ; $4E76: $3E $8A
    call Call_000_135D                            ; $4E78: $CD $5D $13
    ld a, $1B                                     ; $4E7B: $3E $1B
    ldh [rBGP], a                                 ; $4E7D: $E0 $47
    ld a, $2F                                     ; $4E7F: $3E $2F
    ldh [rOBP0], a                                ; $4E81: $E0 $48
    ld a, $4F                                     ; $4E83: $3E $4F
    ldh [rOBP1], a                                ; $4E85: $E0 $49
    call Call_000_147A                            ; $4E87: $CD $7A $14

Jump_03E_4E8A:
    call Call_03E_4FF0                            ; $4E8A: $CD $F0 $4F
    ld a, b                                       ; $4E8D: $78
    bit 4, a                                      ; $4E8E: $CB $67
    jp nz, Jump_03E_4F41                          ; $4E90: $C2 $41 $4F

    bit 5, a                                      ; $4E93: $CB $6F
    jp nz, Jump_03E_4F7E                          ; $4E95: $C2 $7E $4F

    rra                                           ; $4E98: $1F
    jr c, jr_03E_4EDE                             ; $4E99: $38 $43

    rra                                           ; $4E9B: $1F
    jp c, Jump_03E_4F00                           ; $4E9C: $DA $00 $4F

    rra                                           ; $4E9F: $1F
    jp c, Jump_03E_4EAA                           ; $4EA0: $DA $AA $4E

    rra                                           ; $4EA3: $1F
    jp c, Jump_03E_4EC4                           ; $4EA4: $DA $C4 $4E

    jp Jump_03E_4F25                              ; $4EA7: $C3 $25 $4F


Jump_03E_4EAA:
    ld a, [$C32C]                                 ; $4EAA: $FA $2C $C3
    or a                                          ; $4EAD: $B7
    jp z, Jump_03E_4F25                           ; $4EAE: $CA $25 $4F

    ld a, [$C32B]                                 ; $4EB1: $FA $2B $C3
    or a                                          ; $4EB4: $B7
    jp z, Jump_03E_4F25                           ; $4EB5: $CA $25 $4F

    cp $05                                        ; $4EB8: $FE $05
    jp z, Jump_03E_4F25                           ; $4EBA: $CA $25 $4F

    xor a                                         ; $4EBD: $AF
    ld [$C32C], a                                 ; $4EBE: $EA $2C $C3
    jp Jump_03E_4F22                              ; $4EC1: $C3 $22 $4F


Jump_03E_4EC4:
    ld a, [$C32C]                                 ; $4EC4: $FA $2C $C3
    or a                                          ; $4EC7: $B7
    jp nz, Jump_03E_4F25                          ; $4EC8: $C2 $25 $4F

    ld a, [$C32B]                                 ; $4ECB: $FA $2B $C3
    or a                                          ; $4ECE: $B7
    jp z, Jump_03E_4F25                           ; $4ECF: $CA $25 $4F

    cp $05                                        ; $4ED2: $FE $05
    jp z, Jump_03E_4F25                           ; $4ED4: $CA $25 $4F

    ld a, $01                                     ; $4ED7: $3E $01
    ld [$C32C], a                                 ; $4ED9: $EA $2C $C3
    jr jr_03E_4F22                                ; $4EDC: $18 $44

jr_03E_4EDE:
    ld a, [$C32C]                                 ; $4EDE: $FA $2C $C3
    or a                                          ; $4EE1: $B7
    jr nz, jr_03E_4EE8                            ; $4EE2: $20 $04

    ld c, $04                                     ; $4EE4: $0E $04
    jr jr_03E_4EF3                                ; $4EE6: $18 $0B

jr_03E_4EE8:
    ld c, $04                                     ; $4EE8: $0E $04
    ld a, [$C001]                                 ; $4EEA: $FA $01 $C0
    bit 6, a                                      ; $4EED: $CB $77
    jr z, jr_03E_4EF3                             ; $4EEF: $28 $02

    ld c, $05                                     ; $4EF1: $0E $05

jr_03E_4EF3:
    ld a, [$C32B]                                 ; $4EF3: $FA $2B $C3
    cp c                                          ; $4EF6: $B9
    jp nc, Jump_03E_4F25                          ; $4EF7: $D2 $25 $4F

    inc a                                         ; $4EFA: $3C
    ld [$C32B], a                                 ; $4EFB: $EA $2B $C3
    jr jr_03E_4F22                                ; $4EFE: $18 $22

Jump_03E_4F00:
    ld a, [$C32C]                                 ; $4F00: $FA $2C $C3
    or a                                          ; $4F03: $B7
    jr nz, jr_03E_4F0A                            ; $4F04: $20 $04

    ld c, $02                                     ; $4F06: $0E $02
    jr jr_03E_4F15                                ; $4F08: $18 $0B

jr_03E_4F0A:
    ld c, $02                                     ; $4F0A: $0E $02
    ld a, [$C001]                                 ; $4F0C: $FA $01 $C0
    bit 7, a                                      ; $4F0F: $CB $7F
    jr z, jr_03E_4F15                             ; $4F11: $28 $02

    ld c, $01                                     ; $4F13: $0E $01

jr_03E_4F15:
    ld a, [$C32B]                                 ; $4F15: $FA $2B $C3
    cp c                                          ; $4F18: $B9
    jp c, Jump_03E_4F25                           ; $4F19: $DA $25 $4F

    dec a                                         ; $4F1C: $3D
    ld [$C32B], a                                 ; $4F1D: $EA $2B $C3
    jr jr_03E_4F22                                ; $4F20: $18 $00

Jump_03E_4F22:
jr_03E_4F22:
    call Call_03E_4F91                            ; $4F22: $CD $91 $4F

Jump_03E_4F25:
    ld hl, $D6C0                                  ; $4F25: $21 $C0 $D6
    call Call_000_0E28                            ; $4F28: $CD $28 $0E
    ld hl, $D680                                  ; $4F2B: $21 $80 $D6
    call Call_000_0E28                            ; $4F2E: $CD $28 $0E
    ld hl, $C329                                  ; $4F31: $21 $29 $C3
    ld e, [hl]                                    ; $4F34: $5E
    inc hl                                        ; $4F35: $23
    ld d, [hl]                                    ; $4F36: $56
    inc de                                        ; $4F37: $13
    ld [hl], d                                    ; $4F38: $72
    dec hl                                        ; $4F39: $2B
    ld [hl], e                                    ; $4F3A: $73
    call Call_000_0424                            ; $4F3B: $CD $24 $04
    jp Jump_03E_4E8A                              ; $4F3E: $C3 $8A $4E


Jump_03E_4F41:
    ld a, [$C32D]                                 ; $4F41: $FA $2D $C3
    and $0F                                       ; $4F44: $E6 $0F
    cp $0A                                        ; $4F46: $FE $0A
    jr c, jr_03E_4F4B                             ; $4F48: $38 $01

    xor a                                         ; $4F4A: $AF

jr_03E_4F4B:
    ld [$C31B], a                                 ; $4F4B: $EA $1B $C3
    ld hl, $C03A                                  ; $4F4E: $21 $3A $C0
    res 2, [hl]                                   ; $4F51: $CB $96
    ld a, $AD                                     ; $4F53: $3E $AD
    call Call_000_1360                            ; $4F55: $CD $60 $13
    call Call_000_0438                            ; $4F58: $CD $38 $04
    ld a, $00                                     ; $4F5B: $3E $00
    call Call_000_135D                            ; $4F5D: $CD $5D $13
    call Call_000_0424                            ; $4F60: $CD $24 $04
    ld a, [$C31A]                                 ; $4F63: $FA $1A $C3
    cp $01                                        ; $4F66: $FE $01
    jr c, jr_03E_4F78                             ; $4F68: $38 $0E

    jr nz, jr_03E_4F72                            ; $4F6A: $20 $06

    ld b, $3E                                     ; $4F6C: $06 $3E
    ld hl, $519B                                  ; $4F6E: $21 $9B $51
    rst RST_00                                    ; $4F71: $C7

jr_03E_4F72:
    ld b, $3E                                     ; $4F72: $06 $3E
    ld hl, $61C7                                  ; $4F74: $21 $C7 $61
    rst RST_00                                    ; $4F77: $C7

jr_03E_4F78:
    ld b, $3E                                     ; $4F78: $06 $3E
    ld hl, $6A0F                                  ; $4F7A: $21 $0F $6A
    rst RST_00                                    ; $4F7D: $C7

Jump_03E_4F7E:
    ld hl, $C03A                                  ; $4F7E: $21 $3A $C0
    res 2, [hl]                                   ; $4F81: $CB $96
    ld a, $00                                     ; $4F83: $3E $00
    call Call_000_135D                            ; $4F85: $CD $5D $13
    call Call_000_0424                            ; $4F88: $CD $24 $04
    ld b, $3C                                     ; $4F8B: $06 $3C
    ld hl, $6F95                                  ; $4F8D: $21 $95 $6F
    rst RST_00                                    ; $4F90: $C7

Call_03E_4F91:
    ld a, [$C32B]                                 ; $4F91: $FA $2B $C3
    ld c, a                                       ; $4F94: $4F
    add a                                         ; $4F95: $87
    add c                                         ; $4F96: $81
    add a                                         ; $4F97: $87
    add a                                         ; $4F98: $87
    add a                                         ; $4F99: $87
    add $08                                       ; $4F9A: $C6 $08
    ld [$D6C4], a                                 ; $4F9C: $EA $C4 $D6
    ld a, [$C32C]                                 ; $4F9F: $FA $2C $C3
    ld c, a                                       ; $4FA2: $4F
    add a                                         ; $4FA3: $87
    add c                                         ; $4FA4: $81
    add a                                         ; $4FA5: $87
    add a                                         ; $4FA6: $87
    add a                                         ; $4FA7: $87
    add $50                                       ; $4FA8: $C6 $50
    ld [$D6C6], a                                 ; $4FAA: $EA $C6 $D6
    ld a, [$C32C]                                 ; $4FAD: $FA $2C $C3
    ld e, a                                       ; $4FB0: $5F
    add a                                         ; $4FB1: $87
    add e                                         ; $4FB2: $83
    add a                                         ; $4FB3: $87
    ld e, a                                       ; $4FB4: $5F
    ld a, [$C32B]                                 ; $4FB5: $FA $2B $C3
    add e                                         ; $4FB8: $83
    add a                                         ; $4FB9: $87
    ld e, a                                       ; $4FBA: $5F
    ld d, $00                                     ; $4FBB: $16 $00
    ld hl, $5025                                  ; $4FBD: $21 $25 $50
    add hl, de                                    ; $4FC0: $19
    ld a, [hl+]                                   ; $4FC1: $2A
    ld [$C32D], a                                 ; $4FC2: $EA $2D $C3
    add a                                         ; $4FC5: $87
    add a                                         ; $4FC6: $87
    ld [$D714], a                                 ; $4FC7: $EA $14 $D7
    ld a, [hl]                                    ; $4FCA: $7E
    ld [$D70E], a                                 ; $4FCB: $EA $0E $D7
    ld a, [$C32D]                                 ; $4FCE: $FA $2D $C3
    ld c, a                                       ; $4FD1: $4F
    add a                                         ; $4FD2: $87
    add c                                         ; $4FD3: $81
    ld hl, $5BCD                                  ; $4FD4: $21 $CD $5B
    ld e, a                                       ; $4FD7: $5F
    ld d, $00                                     ; $4FD8: $16 $00
    add hl, de                                    ; $4FDA: $19
    ld a, [hl+]                                   ; $4FDB: $2A
    ld e, [hl]                                    ; $4FDC: $5E
    inc hl                                        ; $4FDD: $23
    ld d, [hl]                                    ; $4FDE: $56
    ld hl, $D691                                  ; $4FDF: $21 $91 $D6
    ld [hl+], a                                   ; $4FE2: $22
    ld [hl], e                                    ; $4FE3: $73
    inc hl                                        ; $4FE4: $23
    ld [hl], d                                    ; $4FE5: $72
    xor a                                         ; $4FE6: $AF
    ld [$D694], a                                 ; $4FE7: $EA $94 $D6
    ld hl, $D680                                  ; $4FEA: $21 $80 $D6
    jp Jump_000_0DB5                              ; $4FED: $C3 $B5 $0D


Call_03E_4FF0:
    ld a, [$C2D0]                                 ; $4FF0: $FA $D0 $C2
    cp $00                                        ; $4FF3: $FE $00
    jp nz, Jump_03E_4FFE                          ; $4FF5: $C2 $FE $4F

    ld hl, $FF98                                  ; $4FF8: $21 $98 $FF
    jp Jump_03E_5001                              ; $4FFB: $C3 $01 $50


Jump_03E_4FFE:
    ld hl, $FFAB                                  ; $4FFE: $21 $AB $FF

Jump_03E_5001:
    ld c, [hl]                                    ; $5001: $4E
    inc hl                                        ; $5002: $23
    ld b, [hl]                                    ; $5003: $46
    ret                                           ; $5004: $C9


    nop                                           ; $5005: $00
    nop                                           ; $5006: $00
    ld bc, $0000                                  ; $5007: $01 $00 $00
    nop                                           ; $500A: $00
    nop                                           ; $500B: $00
    nop                                           ; $500C: $00
    nop                                           ; $500D: $00
    nop                                           ; $500E: $00
    nop                                           ; $500F: $00
    nop                                           ; $5010: $00
    nop                                           ; $5011: $00
    nop                                           ; $5012: $00
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
    nop                                           ; $5020: $00
    nop                                           ; $5021: $00
    nop                                           ; $5022: $00
    nop                                           ; $5023: $00
    nop                                           ; $5024: $00
    ld a, [bc]                                    ; $5025: $0A
    db $EC                                        ; $5026: $EC
    nop                                           ; $5027: $00
    adc [hl]                                      ; $5028: $8E
    ld [bc], a                                    ; $5029: $02
    and h                                         ; $502A: $A4
    inc b                                         ; $502B: $04
    or [hl]                                       ; $502C: $B6
    ld b, $C8                                     ; $502D: $06 $C8
    dec bc                                        ; $502F: $0B
    ld hl, sp+$08                                 ; $5030: $F8 $08
    ret c                                         ; $5032: $D8

    ld bc, $039A                                  ; $5033: $01 $9A $03
    xor h                                         ; $5036: $AC
    dec b                                         ; $5037: $05
    cp [hl]                                       ; $5038: $BE
    rlca                                          ; $5039: $07
    ret nc                                        ; $503A: $D0

    add hl, bc                                    ; $503B: $09
    db $E4                                        ; $503C: $E4
    ld bc, $0100                                  ; $503D: $01 $00 $01
    ld bc, $0002                                  ; $5040: $01 $02 $00
    ld [bc], a                                    ; $5043: $02
    ld bc, $0003                                  ; $5044: $01 $03 $00
    inc bc                                        ; $5047: $03
    ld bc, $0004                                  ; $5048: $01 $04 $00
    inc b                                         ; $504B: $04
    ld bc, $0100                                  ; $504C: $01 $00 $01
    dec b                                         ; $504F: $05
    ld bc, $0000                                  ; $5050: $01 $00 $00
    dec b                                         ; $5053: $05
    nop                                           ; $5054: $00
    ld bc, $0100                                  ; $5055: $01 $00 $01
    nop                                           ; $5058: $00
    ld bc, $0100                                  ; $5059: $01 $00 $01
    nop                                           ; $505C: $00
    add b                                         ; $505D: $80
    nop                                           ; $505E: $00
    ld bc, $E001                                  ; $505F: $01 $01 $E0
    nop                                           ; $5062: $00
    ldh [rP1], a                                  ; $5063: $E0 $00
    nop                                           ; $5065: $00
    nop                                           ; $5066: $00
    nop                                           ; $5067: $00
    nop                                           ; $5068: $00
    nop                                           ; $5069: $00
    nop                                           ; $506A: $00
    add b                                         ; $506B: $80
    nop                                           ; $506C: $00
    add b                                         ; $506D: $80
    ld a, $7D                                     ; $506E: $3E $7D
    ld d, b                                       ; $5070: $50
    nop                                           ; $5071: $00
    nop                                           ; $5072: $00
    ld a, l                                       ; $5073: $7D
    ld d, b                                       ; $5074: $50
    nop                                           ; $5075: $00
    nop                                           ; $5076: $00
    nop                                           ; $5077: $00
    nop                                           ; $5078: $00
    inc bc                                        ; $5079: $03
    inc bc                                        ; $507A: $03
    ret nz                                        ; $507B: $C0

    ret c                                         ; $507C: $D8

    sbc a                                         ; $507D: $9F
    ld d, b                                       ; $507E: $50
    rst RST_38                                    ; $507F: $FF
    rst RST_38                                    ; $5080: $FF
    sbc a                                         ; $5081: $9F
    ld d, b                                       ; $5082: $50
    rst RST_38                                    ; $5083: $FF
    rst RST_38                                    ; $5084: $FF
    or [hl]                                       ; $5085: $B6
    ld d, b                                       ; $5086: $50
    rst RST_38                                    ; $5087: $FF
    rst RST_38                                    ; $5088: $FF
    call $FF50                                    ; $5089: $CD $50 $FF
    rst RST_38                                    ; $508C: $FF
    db $E4                                        ; $508D: $E4
    ld d, b                                       ; $508E: $50
    rst RST_38                                    ; $508F: $FF
    rst RST_38                                    ; $5090: $FF
    db $E4                                        ; $5091: $E4
    ld d, b                                       ; $5092: $50
    rst RST_38                                    ; $5093: $FF
    rst RST_38                                    ; $5094: $FF
    call $FF50                                    ; $5095: $CD $50 $FF
    rst RST_38                                    ; $5098: $FF
    or [hl]                                       ; $5099: $B6
    ld d, b                                       ; $509A: $50
    rst RST_38                                    ; $509B: $FF
    rst RST_38                                    ; $509C: $FF
    rst RST_38                                    ; $509D: $FF
    rst RST_38                                    ; $509E: $FF
    sub b                                         ; $509F: $90
    nop                                           ; $50A0: $00
    nop                                           ; $50A1: $00
    rst RST_38                                    ; $50A2: $FF
    rst RST_38                                    ; $50A3: $FF
    rst RST_38                                    ; $50A4: $FF
    xor c                                         ; $50A5: $A9
    ld d, b                                       ; $50A6: $50
    nop                                           ; $50A7: $00
    nop                                           ; $50A8: $00
    inc b                                         ; $50A9: $04
    nop                                           ; $50AA: $00
    nop                                           ; $50AB: $00
    nop                                           ; $50AC: $00
    nop                                           ; $50AD: $00
    db $10                                        ; $50AE: $10
    ld b, b                                       ; $50AF: $40
    ld [$8000], sp                                ; $50B0: $08 $00 $80
    ld [$C010], sp                                ; $50B3: $08 $10 $C0
    sub b                                         ; $50B6: $90
    nop                                           ; $50B7: $00
    nop                                           ; $50B8: $00
    rst RST_38                                    ; $50B9: $FF
    rst RST_38                                    ; $50BA: $FF
    rst RST_38                                    ; $50BB: $FF
    ret nz                                        ; $50BC: $C0

    ld d, b                                       ; $50BD: $50
    nop                                           ; $50BE: $00
    nop                                           ; $50BF: $00
    inc b                                         ; $50C0: $04
    nop                                           ; $50C1: $00
    nop                                           ; $50C2: $00
    ld [bc], a                                    ; $50C3: $02
    nop                                           ; $50C4: $00
    db $10                                        ; $50C5: $10
    ld b, d                                       ; $50C6: $42
    ld [$8200], sp                                ; $50C7: $08 $00 $82
    ld [$C210], sp                                ; $50CA: $08 $10 $C2
    sub b                                         ; $50CD: $90
    nop                                           ; $50CE: $00
    nop                                           ; $50CF: $00
    rst RST_38                                    ; $50D0: $FF
    rst RST_38                                    ; $50D1: $FF
    rst RST_38                                    ; $50D2: $FF
    rst RST_10                                    ; $50D3: $D7
    ld d, b                                       ; $50D4: $50
    nop                                           ; $50D5: $00
    nop                                           ; $50D6: $00
    inc b                                         ; $50D7: $04
    nop                                           ; $50D8: $00
    nop                                           ; $50D9: $00
    inc b                                         ; $50DA: $04
    nop                                           ; $50DB: $00
    db $10                                        ; $50DC: $10
    ld b, h                                       ; $50DD: $44
    ld [$8400], sp                                ; $50DE: $08 $00 $84
    ld [$C410], sp                                ; $50E1: $08 $10 $C4
    sub b                                         ; $50E4: $90
    nop                                           ; $50E5: $00
    nop                                           ; $50E6: $00
    rst RST_38                                    ; $50E7: $FF
    rst RST_38                                    ; $50E8: $FF
    rst RST_38                                    ; $50E9: $FF
    xor $50                                       ; $50EA: $EE $50
    nop                                           ; $50EC: $00
    nop                                           ; $50ED: $00
    inc b                                         ; $50EE: $04
    nop                                           ; $50EF: $00
    nop                                           ; $50F0: $00
    ld b, $00                                     ; $50F1: $06 $00
    db $10                                        ; $50F3: $10
    ld b, [hl]                                    ; $50F4: $46
    ld [$8600], sp                                ; $50F5: $08 $00 $86
    ld [$C610], sp                                ; $50F8: $08 $10 $C6
    add b                                         ; $50FB: $80
    nop                                           ; $50FC: $00
    ld [bc], a                                    ; $50FD: $02
    ld [bc], a                                    ; $50FE: $02
    ld h, b                                       ; $50FF: $60
    nop                                           ; $5100: $00
    jr jr_03E_5103                                ; $5101: $18 $00

jr_03E_5103:
    nop                                           ; $5103: $00
    nop                                           ; $5104: $00
    nop                                           ; $5105: $00
    nop                                           ; $5106: $00
    nop                                           ; $5107: $00
    nop                                           ; $5108: $00
    adc [hl]                                      ; $5109: $8E
    nop                                           ; $510A: $00
    add b                                         ; $510B: $80
    ld a, $1B                                     ; $510C: $3E $1B
    ld d, c                                       ; $510E: $51
    nop                                           ; $510F: $00
    nop                                           ; $5110: $00
    dec de                                        ; $5111: $1B
    ld d, c                                       ; $5112: $51
    nop                                           ; $5113: $00
    nop                                           ; $5114: $00
    nop                                           ; $5115: $00
    nop                                           ; $5116: $00
    inc bc                                        ; $5117: $03
    inc bc                                        ; $5118: $03
    ret nz                                        ; $5119: $C0

    ret c                                         ; $511A: $D8

    ld c, l                                       ; $511B: $4D
    ld d, c                                       ; $511C: $51
    rst RST_38                                    ; $511D: $FF
    rst RST_38                                    ; $511E: $FF
    ld l, d                                       ; $511F: $6A
    ld d, c                                       ; $5120: $51
    rst RST_38                                    ; $5121: $FF
    rst RST_38                                    ; $5122: $FF
    add h                                         ; $5123: $84
    ld d, c                                       ; $5124: $51
    rst RST_38                                    ; $5125: $FF
    rst RST_38                                    ; $5126: $FF
    ld l, d                                       ; $5127: $6A
    ld d, c                                       ; $5128: $51
    rst RST_38                                    ; $5129: $FF
    rst RST_38                                    ; $512A: $FF
    add h                                         ; $512B: $84
    ld d, c                                       ; $512C: $51
    rst RST_38                                    ; $512D: $FF
    rst RST_38                                    ; $512E: $FF
    ld l, d                                       ; $512F: $6A
    ld d, c                                       ; $5130: $51
    rst RST_38                                    ; $5131: $FF
    rst RST_38                                    ; $5132: $FF
    add h                                         ; $5133: $84
    ld d, c                                       ; $5134: $51
    rst RST_38                                    ; $5135: $FF
    rst RST_38                                    ; $5136: $FF
    add h                                         ; $5137: $84
    ld d, c                                       ; $5138: $51
    rst RST_38                                    ; $5139: $FF
    rst RST_38                                    ; $513A: $FF
    ld c, l                                       ; $513B: $4D
    ld d, c                                       ; $513C: $51
    rst RST_38                                    ; $513D: $FF
    rst RST_38                                    ; $513E: $FF
    add h                                         ; $513F: $84
    ld d, c                                       ; $5140: $51
    rst RST_38                                    ; $5141: $FF
    rst RST_38                                    ; $5142: $FF
    ld c, l                                       ; $5143: $4D
    ld d, c                                       ; $5144: $51
    rst RST_38                                    ; $5145: $FF
    rst RST_38                                    ; $5146: $FF
    add h                                         ; $5147: $84
    ld d, c                                       ; $5148: $51
    rst RST_38                                    ; $5149: $FF
    rst RST_38                                    ; $514A: $FF
    rst RST_38                                    ; $514B: $FF
    rst RST_38                                    ; $514C: $FF
    add b                                         ; $514D: $80
    nop                                           ; $514E: $00
    nop                                           ; $514F: $00
    rst RST_38                                    ; $5150: $FF
    rst RST_38                                    ; $5151: $FF
    rst RST_38                                    ; $5152: $FF
    ld d, a                                       ; $5153: $57
    ld d, c                                       ; $5154: $51
    nop                                           ; $5155: $00
    nop                                           ; $5156: $00
    ld b, $00                                     ; $5157: $06 $00
    nop                                           ; $5159: $00
    nop                                           ; $515A: $00
    nop                                           ; $515B: $00
    ld [$0002], sp                                ; $515C: $08 $02 $00
    db $10                                        ; $515F: $10
    inc b                                         ; $5160: $04
    nop                                           ; $5161: $00
    jr jr_03E_516A                                ; $5162: $18 $06

    nop                                           ; $5164: $00
    jr nz, jr_03E_516F                            ; $5165: $20 $08

    nop                                           ; $5167: $00
    jr z, jr_03E_5174                             ; $5168: $28 $0A

jr_03E_516A:
    add b                                         ; $516A: $80
    nop                                           ; $516B: $00
    nop                                           ; $516C: $00
    rst RST_38                                    ; $516D: $FF
    rst RST_38                                    ; $516E: $FF

jr_03E_516F:
    rst RST_38                                    ; $516F: $FF
    ld [hl], h                                    ; $5170: $74
    ld d, c                                       ; $5171: $51
    nop                                           ; $5172: $00
    nop                                           ; $5173: $00

jr_03E_5174:
    dec b                                         ; $5174: $05
    nop                                           ; $5175: $00
    inc b                                         ; $5176: $04
    nop                                           ; $5177: $00
    nop                                           ; $5178: $00
    inc c                                         ; $5179: $0C
    ld [bc], a                                    ; $517A: $02
    nop                                           ; $517B: $00
    inc d                                         ; $517C: $14
    inc b                                         ; $517D: $04
    nop                                           ; $517E: $00
    inc e                                         ; $517F: $1C
    ld b, $00                                     ; $5180: $06 $00
    inc h                                         ; $5182: $24
    ld [$0080], sp                                ; $5183: $08 $80 $00
    nop                                           ; $5186: $00
    rst RST_38                                    ; $5187: $FF
    rst RST_38                                    ; $5188: $FF
    rst RST_38                                    ; $5189: $FF
    adc [hl]                                      ; $518A: $8E
    ld d, c                                       ; $518B: $51
    nop                                           ; $518C: $00
    nop                                           ; $518D: $00
    inc b                                         ; $518E: $04
    nop                                           ; $518F: $00
    ld [$0000], sp                                ; $5190: $08 $00 $00
    db $10                                        ; $5193: $10
    ld [bc], a                                    ; $5194: $02
    nop                                           ; $5195: $00
    jr @+$06                                      ; $5196: $18 $04

    nop                                           ; $5198: $00
    jr nz, @+$08                                  ; $5199: $20 $06

    ld sp, $DD00                                  ; $519B: $31 $00 $DD
    di                                            ; $519E: $F3
    rst RST_10                                    ; $519F: $D7
    ld hl, $C03A                                  ; $51A0: $21 $3A $C0
    res 1, [hl]                                   ; $51A3: $CB $8E
    ld a, $00                                     ; $51A5: $3E $00
    call Call_000_135D                            ; $51A7: $CD $5D $13
    xor a                                         ; $51AA: $AF
    ldh [rBGP], a                                 ; $51AB: $E0 $47
    ldh [rOBP0], a                                ; $51AD: $E0 $48
    ldh [rOBP1], a                                ; $51AF: $E0 $49
    call Call_000_13ED                            ; $51B1: $CD $ED $13
    call Call_000_0FBD                            ; $51B4: $CD $BD $0F
    call Call_000_0FC6                            ; $51B7: $CD $C6 $0F
    xor a                                         ; $51BA: $AF
    ldh [$FFE4], a                                ; $51BB: $E0 $E4
    ldh [$FFE2], a                                ; $51BD: $E0 $E2
    ld [$C2AA], a                                 ; $51BF: $EA $AA $C2
    ld a, $F0                                     ; $51C2: $3E $F0
    ld [$C2AC], a                                 ; $51C4: $EA $AC $C2
    call Call_03E_55E7                            ; $51C7: $CD $E7 $55
    call Call_000_0F9E                            ; $51CA: $CD $9E $0F
    ld hl, $D680                                  ; $51CD: $21 $80 $D6
    ld de, $24CF                                  ; $51D0: $11 $CF $24
    call Call_000_0F8E                            ; $51D3: $CD $8E $0F
    ld a, [$C31B]                                 ; $51D6: $FA $1B $C3
    ld c, a                                       ; $51D9: $4F
    add a                                         ; $51DA: $87
    add c                                         ; $51DB: $81
    ld hl, $5BCD                                  ; $51DC: $21 $CD $5B
    ld e, a                                       ; $51DF: $5F
    ld d, $00                                     ; $51E0: $16 $00
    add hl, de                                    ; $51E2: $19
    ld a, [hl+]                                   ; $51E3: $2A
    ld e, [hl]                                    ; $51E4: $5E
    inc hl                                        ; $51E5: $23
    ld d, [hl]                                    ; $51E6: $56
    ld hl, $D691                                  ; $51E7: $21 $91 $D6
    ld [hl+], a                                   ; $51EA: $22
    ld [hl], e                                    ; $51EB: $73
    inc hl                                        ; $51EC: $23
    ld [hl], d                                    ; $51ED: $72
    ld hl, $D682                                  ; $51EE: $21 $82 $D6
    ld [hl], $30                                  ; $51F1: $36 $30
    ld hl, $D684                                  ; $51F3: $21 $84 $D6
    ld [hl], $50                                  ; $51F6: $36 $50
    ld hl, $D686                                  ; $51F8: $21 $86 $D6
    ld [hl], $38                                  ; $51FB: $36 $38
    ld hl, $D6A9                                  ; $51FD: $21 $A9 $D6
    ld [hl], $FF                                  ; $5200: $36 $FF
    ld hl, $D680                                  ; $5202: $21 $80 $D6
    call Call_000_0DB5                            ; $5205: $CD $B5 $0D
    ld a, [$C31B]                                 ; $5208: $FA $1B $C3
    ld [$D6A9], a                                 ; $520B: $EA $A9 $D6
    ld hl, $D6C0                                  ; $520E: $21 $C0 $D6
    ld de, $5911                                  ; $5211: $11 $11 $59
    call Call_000_0F8E                            ; $5214: $CD $8E $0F
    ld a, $07                                     ; $5217: $3E $07
    ldh [rWX], a                                  ; $5219: $E0 $4B
    ld a, $80                                     ; $521B: $3E $80
    ldh [rWY], a                                  ; $521D: $E0 $4A
    ld a, $E7                                     ; $521F: $3E $E7
    rst RST_18                                    ; $5221: $DF
    xor a                                         ; $5222: $AF
    ldh [rSTAT], a                                ; $5223: $E0 $41
    ei                                            ; $5225: $FB
    ld de, $5757                                  ; $5226: $11 $57 $57
    ld hl, $C329                                  ; $5229: $21 $29 $C3
    ld c, $29                                     ; $522C: $0E $29

jr_03E_522E:
    ld a, [de]                                    ; $522E: $1A
    inc de                                        ; $522F: $13
    ld [hl+], a                                   ; $5230: $22
    dec c                                         ; $5231: $0D
    jr nz, jr_03E_522E                            ; $5232: $20 $FA

    call Call_000_0430                            ; $5234: $CD $30 $04
    call Call_000_0430                            ; $5237: $CD $30 $04
    ld a, $1B                                     ; $523A: $3E $1B
    ldh [rBGP], a                                 ; $523C: $E0 $47
    ld a, $1F                                     ; $523E: $3E $1F
    ldh [rOBP0], a                                ; $5240: $E0 $48
    ld a, $4F                                     ; $5242: $3E $4F
    ldh [rOBP1], a                                ; $5244: $E0 $49
    call Call_000_147A                            ; $5246: $CD $7A $14

Jump_03E_5249:
    ld a, [$D6C0]                                 ; $5249: $FA $C0 $D6
    add a                                         ; $524C: $87
    jr nc, jr_03E_5266                            ; $524D: $30 $17

    ld hl, $D6C0                                  ; $524F: $21 $C0 $D6
    call Call_000_0DD4                            ; $5252: $CD $D4 $0D
    ld a, [$D6C0]                                 ; $5255: $FA $C0 $D6
    bit 4, a                                      ; $5258: $CB $67
    jr z, jr_03E_5266                             ; $525A: $28 $0A

    xor a                                         ; $525C: $AF
    ld [$D6C0], a                                 ; $525D: $EA $C0 $D6
    ld a, [$C312]                                 ; $5260: $FA $12 $C3
    call Call_000_135D                            ; $5263: $CD $5D $13

jr_03E_5266:
    call $5ABD                                    ; $5266: $CD $BD $5A
    ld hl, $D680                                  ; $5269: $21 $80 $D6
    call Call_03E_555D                            ; $526C: $CD $5D $55
    call Call_03E_548B                            ; $526F: $CD $8B $54
    ld hl, $D700                                  ; $5272: $21 $00 $D7
    ld c, $04                                     ; $5275: $0E $04

jr_03E_5277:
    push bc                                       ; $5277: $C5
    push hl                                       ; $5278: $E5
    ld a, [hl]                                    ; $5279: $7E
    add a                                         ; $527A: $87
    jr nc, jr_03E_5283                            ; $527B: $30 $06

    call Call_03E_5CDB                            ; $527D: $CD $DB $5C
    call Call_03E_555D                            ; $5280: $CD $5D $55

jr_03E_5283:
    pop hl                                        ; $5283: $E1
    ld de, $0040                                  ; $5284: $11 $40 $00
    add hl, de                                    ; $5287: $19
    pop bc                                        ; $5288: $C1
    dec c                                         ; $5289: $0D
    jr nz, jr_03E_5277                            ; $528A: $20 $EB

    call Call_03E_54FB                            ; $528C: $CD $FB $54
    ld hl, $C329                                  ; $528F: $21 $29 $C3
    ld e, [hl]                                    ; $5292: $5E
    inc hl                                        ; $5293: $23
    ld d, [hl]                                    ; $5294: $56
    inc de                                        ; $5295: $13
    ld [hl], d                                    ; $5296: $72
    dec hl                                        ; $5297: $2B
    ld [hl], e                                    ; $5298: $73
    call Call_000_0424                            ; $5299: $CD $24 $04
    ld a, [$C350]                                 ; $529C: $FA $50 $C3
    or a                                          ; $529F: $B7
    jp nz, Jump_03E_536F                          ; $52A0: $C2 $6F $53

    ldh a, [$FF99]                                ; $52A3: $F0 $99
    ld e, a                                       ; $52A5: $5F
    ldh a, [$FFAC]                                ; $52A6: $F0 $AC
    or e                                          ; $52A8: $B3
    ld e, a                                       ; $52A9: $5F
    bit 7, a                                      ; $52AA: $CB $7F
    jp nz, Jump_03E_52B2                          ; $52AC: $C2 $B2 $52

    jp Jump_03E_5249                              ; $52AF: $C3 $49 $52


Jump_03E_52B2:
    ld e, $00                                     ; $52B2: $1E $00
    ld d, $00                                     ; $52B4: $16 $00
    ld hl, $9C00                                  ; $52B6: $21 $00 $9C
    ld b, $14                                     ; $52B9: $06 $14
    ld c, $02                                     ; $52BB: $0E $02
    call Call_000_10EA                            ; $52BD: $CD $EA $10
    ld e, $00                                     ; $52C0: $1E $00
    ld d, $C0                                     ; $52C2: $16 $C0
    ld hl, $9C05                                  ; $52C4: $21 $05 $9C
    ld b, $04                                     ; $52C7: $06 $04
    ld c, $02                                     ; $52C9: $0E $02
    call Call_000_1139                            ; $52CB: $CD $39 $11
    ld e, $00                                     ; $52CE: $1E $00
    ld d, $C8                                     ; $52D0: $16 $C8
    ld hl, $9C0D                                  ; $52D2: $21 $0D $9C
    ld b, $03                                     ; $52D5: $06 $03
    ld c, $02                                     ; $52D7: $0E $02
    call Call_000_1139                            ; $52D9: $CD $39 $11
    xor a                                         ; $52DC: $AF
    ld [$C351], a                                 ; $52DD: $EA $51 $C3

jr_03E_52E0:
    ldh a, [$FF99]                                ; $52E0: $F0 $99
    ld e, a                                       ; $52E2: $5F
    ldh a, [$FFAC]                                ; $52E3: $F0 $AC
    or e                                          ; $52E5: $B3
    bit 4, a                                      ; $52E6: $CB $67
    jr nz, jr_03E_5349                            ; $52E8: $20 $5F

    and $03                                       ; $52EA: $E6 $03
    jr z, jr_03E_5309                             ; $52EC: $28 $1B

    ld a, [$C351]                                 ; $52EE: $FA $51 $C3
    cpl                                           ; $52F1: $2F
    ld [$C351], a                                 ; $52F2: $EA $51 $C3
    ld hl, $9C04                                  ; $52F5: $21 $04 $9C
    or a                                          ; $52F8: $B7
    jr nz, jr_03E_52FE                            ; $52F9: $20 $03

    ld hl, $9C0C                                  ; $52FB: $21 $0C $9C

jr_03E_52FE:
    ld e, $00                                     ; $52FE: $1E $00
    ld d, $00                                     ; $5300: $16 $00
    ld b, $01                                     ; $5302: $06 $01
    ld c, $02                                     ; $5304: $0E $02
    call Call_000_10EA                            ; $5306: $CD $EA $10

jr_03E_5309:
    ld a, [$C329]                                 ; $5309: $FA $29 $C3
    ld e, a                                       ; $530C: $5F
    and $07                                       ; $530D: $E6 $07
    jr nz, jr_03E_533A                            ; $530F: $20 $29

    ld hl, $9C04                                  ; $5311: $21 $04 $9C
    ld a, [$C351]                                 ; $5314: $FA $51 $C3
    or a                                          ; $5317: $B7
    jr z, jr_03E_531D                             ; $5318: $28 $03

    ld hl, $9C0C                                  ; $531A: $21 $0C $9C

jr_03E_531D:
    ld a, e                                       ; $531D: $7B
    and $18                                       ; $531E: $E6 $18
    jr z, jr_03E_532F                             ; $5320: $28 $0D

    ld e, $00                                     ; $5322: $1E $00
    ld d, $CE                                     ; $5324: $16 $CE
    ld b, $01                                     ; $5326: $06 $01
    ld c, $02                                     ; $5328: $0E $02
    call Call_000_1139                            ; $532A: $CD $39 $11
    jr jr_03E_533A                                ; $532D: $18 $0B

jr_03E_532F:
    ld e, $00                                     ; $532F: $1E $00
    ld d, $00                                     ; $5331: $16 $00
    ld b, $01                                     ; $5333: $06 $01
    ld c, $02                                     ; $5335: $0E $02
    call Call_000_10EA                            ; $5337: $CD $EA $10

jr_03E_533A:
    ld hl, $C329                                  ; $533A: $21 $29 $C3
    ld e, [hl]                                    ; $533D: $5E
    inc hl                                        ; $533E: $23
    ld d, [hl]                                    ; $533F: $56
    inc de                                        ; $5340: $13
    ld [hl], d                                    ; $5341: $72
    dec hl                                        ; $5342: $2B
    ld [hl], e                                    ; $5343: $73
    call Call_000_0424                            ; $5344: $CD $24 $04
    jr jr_03E_52E0                                ; $5347: $18 $97

jr_03E_5349:
    ld e, $00                                     ; $5349: $1E $00
    ld d, $00                                     ; $534B: $16 $00
    ld hl, $9C00                                  ; $534D: $21 $00 $9C
    ld b, $12                                     ; $5350: $06 $12
    ld c, $02                                     ; $5352: $0E $02
    call Call_000_10EA                            ; $5354: $CD $EA $10
    ld e, $00                                     ; $5357: $1E $00
    ld d, $74                                     ; $5359: $16 $74
    ld hl, $9C0B                                  ; $535B: $21 $0B $9C
    ld b, $04                                     ; $535E: $06 $04
    ld c, $01                                     ; $5360: $0E $01
    call Call_000_1111                            ; $5362: $CD $11 $11
    call Call_03E_54F5                            ; $5365: $CD $F5 $54
    ld a, [$C351]                                 ; $5368: $FA $51 $C3
    or a                                          ; $536B: $B7
    jp z, Jump_03E_5249                           ; $536C: $CA $49 $52

Jump_03E_536F:
    xor a                                         ; $536F: $AF
    ld [$D680], a                                 ; $5370: $EA $80 $D6
    ld [$D6C0], a                                 ; $5373: $EA $C0 $D6
    ld [$D700], a                                 ; $5376: $EA $00 $D7
    ld [$D740], a                                 ; $5379: $EA $40 $D7
    ld [$D780], a                                 ; $537C: $EA $80 $D7
    ld [$D7C0], a                                 ; $537F: $EA $C0 $D7
    ld [$D800], a                                 ; $5382: $EA $00 $D8
    ld [$D840], a                                 ; $5385: $EA $40 $D8
    ld a, $82                                     ; $5388: $3E $82
    call Call_000_135D                            ; $538A: $CD $5D $13

Jump_03E_538D:
    call Call_000_0424                            ; $538D: $CD $24 $04
    ld a, [$C34F]                                 ; $5390: $FA $4F $C3
    dec a                                         ; $5393: $3D
    ldh [rWY], a                                  ; $5394: $E0 $4A
    ld [$C34F], a                                 ; $5396: $EA $4F $C3
    cp $28                                        ; $5399: $FE $28
    jp c, Jump_03E_53A7                           ; $539B: $DA $A7 $53

    dec a                                         ; $539E: $3D
    ldh [rWY], a                                  ; $539F: $E0 $4A
    ld [$C34F], a                                 ; $53A1: $EA $4F $C3
    jp nz, Jump_03E_538D                          ; $53A4: $C2 $8D $53

Jump_03E_53A7:
    ld b, $14                                     ; $53A7: $06 $14
    ld c, $0D                                     ; $53A9: $0E $0D
    ld e, $00                                     ; $53AB: $1E $00
    ld d, $00                                     ; $53AD: $16 $00
    ld hl, $98A0                                  ; $53AF: $21 $A0 $98
    call Call_000_10EA                            ; $53B2: $CD $EA $10
    ld e, $00                                     ; $53B5: $1E $00
    ld d, $74                                     ; $53B7: $16 $74
    ld hl, $98AB                                  ; $53B9: $21 $AB $98
    ld b, $04                                     ; $53BC: $06 $04
    ld c, $01                                     ; $53BE: $0E $01
    call Call_000_1111                            ; $53C0: $CD $11 $11
    ld hl, $C349                                  ; $53C3: $21 $49 $C3
    ld c, [hl]                                    ; $53C6: $4E
    inc hl                                        ; $53C7: $23
    ld b, [hl]                                    ; $53C8: $46
    ld a, b                                       ; $53C9: $78
    and $0F                                       ; $53CA: $E6 $0F
    jr nz, jr_03E_53D2                            ; $53CC: $20 $04

    ld b, $00                                     ; $53CE: $06 $00
    jr jr_03E_53E4                                ; $53D0: $18 $12

jr_03E_53D2:
    push bc                                       ; $53D2: $C5
    add a                                         ; $53D3: $87
    add $60                                       ; $53D4: $C6 $60
    ld d, a                                       ; $53D6: $57
    ld e, $00                                     ; $53D7: $1E $00
    ld hl, $98B0                                  ; $53D9: $21 $B0 $98
    ld b, $01                                     ; $53DC: $06 $01
    ld c, $02                                     ; $53DE: $0E $02
    call Call_000_1139                            ; $53E0: $CD $39 $11
    pop bc                                        ; $53E3: $C1

jr_03E_53E4:
    ld a, c                                       ; $53E4: $79
    swap a                                        ; $53E5: $CB $37
    and $0F                                       ; $53E7: $E6 $0F
    jr nz, jr_03E_53F0                            ; $53E9: $20 $05

    ld a, b                                       ; $53EB: $78
    or a                                          ; $53EC: $B7
    jr z, jr_03E_5402                             ; $53ED: $28 $13

    xor a                                         ; $53EF: $AF

jr_03E_53F0:
    push bc                                       ; $53F0: $C5
    add a                                         ; $53F1: $87
    add $60                                       ; $53F2: $C6 $60
    ld d, a                                       ; $53F4: $57
    ld e, $00                                     ; $53F5: $1E $00
    ld hl, $98B1                                  ; $53F7: $21 $B1 $98
    ld b, $01                                     ; $53FA: $06 $01
    ld c, $02                                     ; $53FC: $0E $02
    call Call_000_1139                            ; $53FE: $CD $39 $11
    pop bc                                        ; $5401: $C1

jr_03E_5402:
    ld a, c                                       ; $5402: $79
    and $0F                                       ; $5403: $E6 $0F
    add a                                         ; $5405: $87
    add $60                                       ; $5406: $C6 $60
    ld d, a                                       ; $5408: $57
    ld e, $00                                     ; $5409: $1E $00
    ld hl, $98B2                                  ; $540B: $21 $B2 $98
    ld b, $01                                     ; $540E: $06 $01
    ld c, $02                                     ; $5410: $0E $02
    call Call_000_1139                            ; $5412: $CD $39 $11
    ld a, $8F                                     ; $5415: $3E $8F
    ldh [rWY], a                                  ; $5417: $E0 $4A
    ld a, [$C31B]                                 ; $5419: $FA $1B $C3
    ld e, a                                       ; $541C: $5F
    add a                                         ; $541D: $87
    add a                                         ; $541E: $87
    add e                                         ; $541F: $83
    add a                                         ; $5420: $87
    ld e, a                                       ; $5421: $5F
    ld d, $00                                     ; $5422: $16 $00
    ld hl, $57DA                                  ; $5424: $21 $DA $57
    add hl, de                                    ; $5427: $19
    ld e, $08                                     ; $5428: $1E $08
    ld a, [$C34A]                                 ; $542A: $FA $4A $C3
    or a                                          ; $542D: $B7
    jr nz, jr_03E_5446                            ; $542E: $20 $16

    ld e, $00                                     ; $5430: $1E $00
    ld a, [$C349]                                 ; $5432: $FA $49 $C3
    or a                                          ; $5435: $B7
    jr z, jr_03E_5446                             ; $5436: $28 $0E

    ld e, $02                                     ; $5438: $1E $02
    cp $30                                        ; $543A: $FE $30
    jr c, jr_03E_5446                             ; $543C: $38 $08

    ld e, $04                                     ; $543E: $1E $04
    cp $70                                        ; $5440: $FE $70
    jr c, jr_03E_5446                             ; $5442: $38 $02

    ld e, $06                                     ; $5444: $1E $06

jr_03E_5446:
    ld d, $00                                     ; $5446: $16 $00
    add hl, de                                    ; $5448: $19
    ld a, [hl+]                                   ; $5449: $2A
    ld [$C32B], a                                 ; $544A: $EA $2B $C3
    ld a, [hl]                                    ; $544D: $7E
    ld [$C32C], a                                 ; $544E: $EA $2C $C3

jr_03E_5451:
    ld b, $39                                     ; $5451: $06 $39
    ld hl, $4067                                  ; $5453: $21 $67 $40
    rst RST_08                                    ; $5456: $CF
    call Call_000_0424                            ; $5457: $CD $24 $04
    ld a, [$C32E]                                 ; $545A: $FA $2E $C3
    add a                                         ; $545D: $87
    jr c, jr_03E_546D                             ; $545E: $38 $0D

    ldh a, [$FF99]                                ; $5460: $F0 $99
    ld e, a                                       ; $5462: $5F
    ldh a, [$FFAC]                                ; $5463: $F0 $AC
    or e                                          ; $5465: $B3
    ld e, a                                       ; $5466: $5F
    and $80                                       ; $5467: $E6 $80
    jr z, jr_03E_5451                             ; $5469: $28 $E6

    jr jr_03E_5478                                ; $546B: $18 $0B

jr_03E_546D:
    ldh a, [$FF99]                                ; $546D: $F0 $99
    ld e, a                                       ; $546F: $5F
    ldh a, [$FFAC]                                ; $5470: $F0 $AC
    or e                                          ; $5472: $B3
    ld e, a                                       ; $5473: $5F
    and $90                                       ; $5474: $E6 $90
    jr z, jr_03E_5451                             ; $5476: $28 $D9

jr_03E_5478:
    ld hl, $C03A                                  ; $5478: $21 $3A $C0
    res 2, [hl]                                   ; $547B: $CB $96
    ld a, $00                                     ; $547D: $3E $00
    call Call_000_135D                            ; $547F: $CD $5D $13
    call Call_000_0424                            ; $5482: $CD $24 $04
    ld b, $3E                                     ; $5485: $06 $3E
    ld hl, $4C7D                                  ; $5487: $21 $7D $4C
    rst RST_00                                    ; $548A: $C7

Call_03E_548B:
    ld a, [$C350]                                 ; $548B: $FA $50 $C3
    or a                                          ; $548E: $B7
    ret nz                                        ; $548F: $C0

    ld a, [$C34C]                                 ; $5490: $FA $4C $C3
    or a                                          ; $5493: $B7
    jr z, jr_03E_549B                             ; $5494: $28 $05

    dec a                                         ; $5496: $3D
    ld [$C34C], a                                 ; $5497: $EA $4C $C3
    ret                                           ; $549A: $C9


jr_03E_549B:
    ld a, [$C34D]                                 ; $549B: $FA $4D $C3
    ld l, a                                       ; $549E: $6F
    ld a, [$C34E]                                 ; $549F: $FA $4E $C3
    ld h, a                                       ; $54A2: $67
    ld a, [hl]                                    ; $54A3: $7E
    cp $80                                        ; $54A4: $FE $80
    jr nc, jr_03E_54B8                            ; $54A6: $30 $10

    or a                                          ; $54A8: $B7
    jr nz, jr_03E_54B2                            ; $54A9: $20 $07

    nop                                           ; $54AB: $00
    ld a, $FF                                     ; $54AC: $3E $FF
    ld [$C350], a                                 ; $54AE: $EA $50 $C3
    ret                                           ; $54B1: $C9


jr_03E_54B2:
    ld [$C34C], a                                 ; $54B2: $EA $4C $C3
    jp Jump_03E_54EA                              ; $54B5: $C3 $EA $54


jr_03E_54B8:
    ld e, a                                       ; $54B8: $5F
    ld hl, $D700                                  ; $54B9: $21 $00 $D7
    ld a, [hl]                                    ; $54BC: $7E
    add a                                         ; $54BD: $87
    jr nc, jr_03E_54D6                            ; $54BE: $30 $16

    ld hl, $D740                                  ; $54C0: $21 $40 $D7
    ld a, [hl]                                    ; $54C3: $7E
    add a                                         ; $54C4: $87
    jr nc, jr_03E_54D6                            ; $54C5: $30 $0F

    ld hl, $D780                                  ; $54C7: $21 $80 $D7
    ld a, [hl]                                    ; $54CA: $7E
    add a                                         ; $54CB: $87
    jr nc, jr_03E_54D6                            ; $54CC: $30 $08

    ld hl, $D7C0                                  ; $54CE: $21 $C0 $D7
    ld a, [hl]                                    ; $54D1: $7E
    add a                                         ; $54D2: $87
    jr nc, jr_03E_54D6                            ; $54D3: $30 $01

    ret                                           ; $54D5: $C9


jr_03E_54D6:
    push de                                       ; $54D6: $D5
    push hl                                       ; $54D7: $E5
    ld de, $5986                                  ; $54D8: $11 $86 $59
    call Call_000_0F8E                            ; $54DB: $CD $8E $0F
    pop hl                                        ; $54DE: $E1
    pop de                                        ; $54DF: $D1
    ld bc, $0029                                  ; $54E0: $01 $29 $00
    add hl, bc                                    ; $54E3: $09
    ld [hl], e                                    ; $54E4: $73
    ld a, $AE                                     ; $54E5: $3E $AE
    call Call_000_1360                            ; $54E7: $CD $60 $13

Jump_03E_54EA:
    ld hl, $C34D                                  ; $54EA: $21 $4D $C3
    ld e, [hl]                                    ; $54ED: $5E
    inc hl                                        ; $54EE: $23
    ld d, [hl]                                    ; $54EF: $56
    inc de                                        ; $54F0: $13
    ld [hl], d                                    ; $54F1: $72
    dec hl                                        ; $54F2: $2B
    ld [hl], e                                    ; $54F3: $73
    ret                                           ; $54F4: $C9


Call_03E_54F5:
    ld hl, $C34B                                  ; $54F5: $21 $4B $C3
    ld a, [hl]                                    ; $54F8: $7E
    jr jr_03E_5501                                ; $54F9: $18 $06

Call_03E_54FB:
    ld hl, $C34B                                  ; $54FB: $21 $4B $C3
    ld a, [hl]                                    ; $54FE: $7E
    or a                                          ; $54FF: $B7
    ret z                                         ; $5500: $C8

jr_03E_5501:
    ld b, $00                                     ; $5501: $06 $00
    ld [hl], b                                    ; $5503: $70
    dec hl                                        ; $5504: $2B
    ld b, [hl]                                    ; $5505: $46
    dec hl                                        ; $5506: $2B
    ld c, [hl]                                    ; $5507: $4E
    add c                                         ; $5508: $81
    daa                                           ; $5509: $27
    jr nc, jr_03E_550D                            ; $550A: $30 $01

    inc b                                         ; $550C: $04

jr_03E_550D:
    ld [hl+], a                                   ; $550D: $22
    ld [hl], b                                    ; $550E: $70
    ld c, a                                       ; $550F: $4F
    ld a, b                                       ; $5510: $78
    and $0F                                       ; $5511: $E6 $0F
    jr nz, jr_03E_5519                            ; $5513: $20 $04

    ld b, $00                                     ; $5515: $06 $00
    jr jr_03E_552B                                ; $5517: $18 $12

jr_03E_5519:
    push bc                                       ; $5519: $C5
    add a                                         ; $551A: $87
    add $60                                       ; $551B: $C6 $60
    ld d, a                                       ; $551D: $57
    ld e, $00                                     ; $551E: $1E $00
    ld hl, $9C10                                  ; $5520: $21 $10 $9C
    ld b, $01                                     ; $5523: $06 $01
    ld c, $02                                     ; $5525: $0E $02
    call Call_000_1139                            ; $5527: $CD $39 $11
    pop bc                                        ; $552A: $C1

jr_03E_552B:
    ld a, c                                       ; $552B: $79
    swap a                                        ; $552C: $CB $37
    and $0F                                       ; $552E: $E6 $0F
    jr nz, jr_03E_5537                            ; $5530: $20 $05

    ld a, b                                       ; $5532: $78
    or a                                          ; $5533: $B7
    jr z, jr_03E_5549                             ; $5534: $28 $13

    xor a                                         ; $5536: $AF

jr_03E_5537:
    push bc                                       ; $5537: $C5
    add a                                         ; $5538: $87
    add $60                                       ; $5539: $C6 $60
    ld d, a                                       ; $553B: $57
    ld e, $00                                     ; $553C: $1E $00
    ld hl, $9C11                                  ; $553E: $21 $11 $9C
    ld b, $01                                     ; $5541: $06 $01
    ld c, $02                                     ; $5543: $0E $02
    call Call_000_1139                            ; $5545: $CD $39 $11
    pop bc                                        ; $5548: $C1

jr_03E_5549:
    ld a, c                                       ; $5549: $79
    and $0F                                       ; $554A: $E6 $0F
    add a                                         ; $554C: $87
    add $60                                       ; $554D: $C6 $60
    ld d, a                                       ; $554F: $57
    ld e, $00                                     ; $5550: $1E $00
    ld hl, $9C12                                  ; $5552: $21 $12 $9C
    ld b, $01                                     ; $5555: $06 $01
    ld c, $02                                     ; $5557: $0E $02
    call Call_000_1139                            ; $5559: $CD $39 $11
    ret                                           ; $555C: $C9


Call_03E_555D:
    push hl                                       ; $555D: $E5
    ld de, $002F                                  ; $555E: $11 $2F $00
    add hl, de                                    ; $5561: $19
    ld a, [hl]                                    ; $5562: $7E
    pop hl                                        ; $5563: $E1
    or a                                          ; $5564: $B7
    jp nz, Jump_000_0DD4                          ; $5565: $C2 $D4 $0D

    jp Jump_000_0E28                              ; $5568: $C3 $28 $0E


Call_03E_556B:
    ld hl, $4DE1                                  ; $556B: $21 $E1 $4D
    ld b, $32                                     ; $556E: $06 $32
    ld de, $C429                                  ; $5570: $11 $29 $C4
    rst RST_20                                    ; $5573: $E7
    ld a, [$C31B]                                 ; $5574: $FA $1B $C3
    and $0F                                       ; $5577: $E6 $0F
    swap a                                        ; $5579: $CB $37
    ld e, a                                       ; $557B: $5F
    ld d, $00                                     ; $557C: $16 $00
    ld l, e                                       ; $557E: $6B
    ld h, d                                       ; $557F: $62
    add hl, hl                                    ; $5580: $29
    add hl, hl                                    ; $5581: $29
    add hl, hl                                    ; $5582: $29
    add hl, de                                    ; $5583: $19
    ld de, $C529                                  ; $5584: $11 $29 $C5
    add hl, de                                    ; $5587: $19
    ld de, $9400                                  ; $5588: $11 $00 $94
    ld b, $09                                     ; $558B: $06 $09
    call Call_000_1188                            ; $558D: $CD $88 $11
    ld e, $00                                     ; $5590: $1E $00
    ld d, $40                                     ; $5592: $16 $40
    ld hl, $982E                                  ; $5594: $21 $2E $98
    ld b, $03                                     ; $5597: $06 $03
    ld c, $03                                     ; $5599: $0E $03
    call Call_000_1111                            ; $559B: $CD $11 $11
    ld a, [$C31B]                                 ; $559E: $FA $1B $C3
    ld c, a                                       ; $55A1: $4F
    add a                                         ; $55A2: $87
    add c                                         ; $55A3: $81
    ld hl, $57BC                                  ; $55A4: $21 $BC $57
    ld e, a                                       ; $55A7: $5F
    ld d, $00                                     ; $55A8: $16 $00
    add hl, de                                    ; $55AA: $19
    ld a, [hl+]                                   ; $55AB: $2A
    ld d, [hl]                                    ; $55AC: $56
    inc hl                                        ; $55AD: $23
    push hl                                       ; $55AE: $E5
    ld l, a                                       ; $55AF: $6F
    ld h, d                                       ; $55B0: $62
    ld de, $C349                                  ; $55B1: $11 $49 $C3
    ld b, $30                                     ; $55B4: $06 $30
    rst RST_20                                    ; $55B6: $E7
    pop hl                                        ; $55B7: $E1
    ld a, [hl]                                    ; $55B8: $7E
    push af                                       ; $55B9: $F5
    add a                                         ; $55BA: $87
    ld b, a                                       ; $55BB: $47
    ld hl, $C349                                  ; $55BC: $21 $49 $C3
    ld de, $9490                                  ; $55BF: $11 $90 $94
    call Call_000_1188                            ; $55C2: $CD $88 $11
    pop af                                        ; $55C5: $F1
    ld b, a                                       ; $55C6: $47
    ld c, $02                                     ; $55C7: $0E $02
    ld e, $01                                     ; $55C9: $1E $01
    ld d, $49                                     ; $55CB: $16 $49
    ld hl, $982D                                  ; $55CD: $21 $2D $98
    ld a, l                                       ; $55D0: $7D
    sub b                                         ; $55D1: $90
    ld l, a                                       ; $55D2: $6F
    call Call_000_1139                            ; $55D3: $CD $39 $11
    ld e, $00                                     ; $55D6: $1E $00
    ld d, $74                                     ; $55D8: $16 $74
    ld hl, $9C0A                                  ; $55DA: $21 $0A $9C
    ld b, $04                                     ; $55DD: $06 $04
    ld c, $01                                     ; $55DF: $0E $01
    call Call_000_1111                            ; $55E1: $CD $11 $11
    jp Jump_03E_565D                              ; $55E4: $C3 $5D $56


Call_03E_55E7:
    ld hl, $4DE1                                  ; $55E7: $21 $E1 $4D
    ld b, $32                                     ; $55EA: $06 $32
    ld de, $C429                                  ; $55EC: $11 $29 $C4
    rst RST_20                                    ; $55EF: $E7
    ld a, [$C31B]                                 ; $55F0: $FA $1B $C3
    and $0F                                       ; $55F3: $E6 $0F
    swap a                                        ; $55F5: $CB $37
    ld e, a                                       ; $55F7: $5F
    ld d, $00                                     ; $55F8: $16 $00
    ld l, e                                       ; $55FA: $6B
    ld h, d                                       ; $55FB: $62
    add hl, hl                                    ; $55FC: $29
    add hl, hl                                    ; $55FD: $29
    add hl, hl                                    ; $55FE: $29
    add hl, de                                    ; $55FF: $19
    ld de, $C529                                  ; $5600: $11 $29 $C5
    add hl, de                                    ; $5603: $19
    ld de, $9400                                  ; $5604: $11 $00 $94
    ld b, $09                                     ; $5607: $06 $09
    call Call_000_1188                            ; $5609: $CD $88 $11
    ld e, $00                                     ; $560C: $1E $00
    ld d, $40                                     ; $560E: $16 $40
    ld hl, $9823                                  ; $5610: $21 $23 $98
    ld b, $03                                     ; $5613: $06 $03
    ld c, $03                                     ; $5615: $0E $03
    call Call_000_1111                            ; $5617: $CD $11 $11
    ld a, [$C31B]                                 ; $561A: $FA $1B $C3
    ld c, a                                       ; $561D: $4F
    add a                                         ; $561E: $87
    add c                                         ; $561F: $81
    ld hl, $57BC                                  ; $5620: $21 $BC $57
    ld e, a                                       ; $5623: $5F
    ld d, $00                                     ; $5624: $16 $00
    add hl, de                                    ; $5626: $19
    ld a, [hl+]                                   ; $5627: $2A
    ld d, [hl]                                    ; $5628: $56
    inc hl                                        ; $5629: $23
    push hl                                       ; $562A: $E5
    ld l, a                                       ; $562B: $6F
    ld h, d                                       ; $562C: $62
    ld de, $C349                                  ; $562D: $11 $49 $C3
    ld b, $30                                     ; $5630: $06 $30
    rst RST_20                                    ; $5632: $E7
    pop hl                                        ; $5633: $E1
    ld a, [hl]                                    ; $5634: $7E
    push af                                       ; $5635: $F5
    add a                                         ; $5636: $87
    ld b, a                                       ; $5637: $47
    ld hl, $C349                                  ; $5638: $21 $49 $C3
    ld de, $9490                                  ; $563B: $11 $90 $94
    call Call_000_1188                            ; $563E: $CD $88 $11
    pop af                                        ; $5641: $F1
    ld b, a                                       ; $5642: $47
    ld c, $02                                     ; $5643: $0E $02
    ld e, $01                                     ; $5645: $1E $01
    ld d, $49                                     ; $5647: $16 $49
    ld hl, $9828                                  ; $5649: $21 $28 $98
    call Call_000_1139                            ; $564C: $CD $39 $11
    ld e, $00                                     ; $564F: $1E $00
    ld d, $74                                     ; $5651: $16 $74
    ld hl, $9C0B                                  ; $5653: $21 $0B $9C
    ld b, $04                                     ; $5656: $06 $04
    ld c, $01                                     ; $5658: $0E $01
    call Call_000_1111                            ; $565A: $CD $11 $11

Jump_03E_565D:
    ld hl, $6902                                  ; $565D: $21 $02 $69
    ld b, $35                                     ; $5660: $06 $35
    ld de, $C429                                  ; $5662: $11 $29 $C4
    rst RST_20                                    ; $5665: $E7
    ld hl, $C429                                  ; $5666: $21 $29 $C4
    ld de, $8400                                  ; $5669: $11 $00 $84
    ld b, $3C                                     ; $566C: $06 $3C
    call Call_000_1188                            ; $566E: $CD $88 $11
    ld hl, $6BFA                                  ; $5671: $21 $FA $6B
    ld b, $35                                     ; $5674: $06 $35
    ld de, $C429                                  ; $5676: $11 $29 $C4
    rst RST_20                                    ; $5679: $E7
    ld hl, $C429                                  ; $567A: $21 $29 $C4
    ld de, $8800                                  ; $567D: $11 $00 $88
    ld b, $1E                                     ; $5680: $06 $1E
    call Call_000_1188                            ; $5682: $CD $88 $11
    ld hl, $6D3A                                  ; $5685: $21 $3A $6D
    ld b, $35                                     ; $5688: $06 $35
    ld de, $C429                                  ; $568A: $11 $29 $C4
    rst RST_20                                    ; $568D: $E7
    ld hl, $C429                                  ; $568E: $21 $29 $C4
    ld de, $9600                                  ; $5691: $11 $00 $96
    ld b, $1C                                     ; $5694: $06 $1C
    call Call_000_1188                            ; $5696: $CD $88 $11
    ld hl, $C5E9                                  ; $5699: $21 $E9 $C5
    ld de, $8C00                                  ; $569C: $11 $00 $8C
    ld b, $10                                     ; $569F: $06 $10
    call Call_000_1188                            ; $56A1: $CD $88 $11
    ld e, $00                                     ; $56A4: $1E $00
    ld d, $60                                     ; $56A6: $16 $60
    ld hl, $9C12                                  ; $56A8: $21 $12 $9C
    ld b, $01                                     ; $56AB: $06 $01
    ld c, $02                                     ; $56AD: $0E $02
    call Call_000_1139                            ; $56AF: $CD $39 $11
    ld a, [$C31B]                                 ; $56B2: $FA $1B $C3
    ld e, a                                       ; $56B5: $5F
    add a                                         ; $56B6: $87
    add e                                         ; $56B7: $83
    add a                                         ; $56B8: $87
    ld e, a                                       ; $56B9: $5F
    ld d, $00                                     ; $56BA: $16 $00
    ld hl, $5780                                  ; $56BC: $21 $80 $57
    add hl, de                                    ; $56BF: $19
    ld a, [hl+]                                   ; $56C0: $2A
    ld c, a                                       ; $56C1: $4F
    ld a, [hl+]                                   ; $56C2: $2A
    push hl                                       ; $56C3: $E5
    ld l, c                                       ; $56C4: $69
    ld h, a                                       ; $56C5: $67
    ld b, $05                                     ; $56C6: $06 $05
    ld de, $C429                                  ; $56C8: $11 $29 $C4
    rst RST_20                                    ; $56CB: $E7
    ld hl, $C429                                  ; $56CC: $21 $29 $C4
    ld de, $9000                                  ; $56CF: $11 $00 $90
    ld b, $40                                     ; $56D2: $06 $40
    call Call_000_1188                            ; $56D4: $CD $88 $11
    pop hl                                        ; $56D7: $E1
    ld a, [hl+]                                   ; $56D8: $2A
    ld c, a                                       ; $56D9: $4F
    ld a, [hl+]                                   ; $56DA: $2A
    push hl                                       ; $56DB: $E5
    ld l, c                                       ; $56DC: $69
    ld h, a                                       ; $56DD: $67
    ld b, $05                                     ; $56DE: $06 $05
    ld de, $C429                                  ; $56E0: $11 $29 $C4
    rst RST_20                                    ; $56E3: $E7
    ld de, $C4A9                                  ; $56E4: $11 $A9 $C4
    ld hl, $98A0                                  ; $56E7: $21 $A0 $98
    ld b, $20                                     ; $56EA: $06 $20
    ld c, $0B                                     ; $56EC: $0E $0B
    ld a, $00                                     ; $56EE: $3E $00
    call Call_000_0FF7                            ; $56F0: $CD $F7 $0F
    pop hl                                        ; $56F3: $E1
    ld a, [hl+]                                   ; $56F4: $2A
    push hl                                       ; $56F5: $E5
    ld e, a                                       ; $56F6: $5F
    ld d, $00                                     ; $56F7: $16 $00
    call Call_000_14C0                            ; $56F9: $CD $C0 $14
    pop hl                                        ; $56FC: $E1
    ld a, [hl+]                                   ; $56FD: $2A
    ld [$C312], a                                 ; $56FE: $EA $12 $C3
    ld a, [$C31B]                                 ; $5701: $FA $1B $C3
    add a                                         ; $5704: $87
    add a                                         ; $5705: $87
    add a                                         ; $5706: $87
    ld e, a                                       ; $5707: $5F
    ld d, $00                                     ; $5708: $16 $00
    ld hl, $58C1                                  ; $570A: $21 $C1 $58
    add hl, de                                    ; $570D: $19
    ld de, $D380                                  ; $570E: $11 $80 $D3
    ld c, $08                                     ; $5711: $0E $08

jr_03E_5713:
    ld a, [hl+]                                   ; $5713: $2A
    ld [de], a                                    ; $5714: $12
    inc de                                        ; $5715: $13
    dec c                                         ; $5716: $0D
    jr nz, jr_03E_5713                            ; $5717: $20 $FA

    ld a, [$C31B]                                 ; $5719: $FA $1B $C3
    and $01                                       ; $571C: $E6 $01
    add a                                         ; $571E: $87
    add a                                         ; $571F: $87
    add a                                         ; $5720: $87
    ld e, a                                       ; $5721: $5F
    ld d, $00                                     ; $5722: $16 $00
    ld hl, $58B1                                  ; $5724: $21 $B1 $58
    add hl, de                                    ; $5727: $19
    ld de, $D388                                  ; $5728: $11 $88 $D3
    ld c, $08                                     ; $572B: $0E $08

jr_03E_572D:
    ld a, [hl+]                                   ; $572D: $2A
    ld [de], a                                    ; $572E: $12
    inc de                                        ; $572F: $13
    dec c                                         ; $5730: $0D
    jr nz, jr_03E_572D                            ; $5731: $20 $FA

    ld hl, $5891                                  ; $5733: $21 $91 $58
    ld de, $D3D0                                  ; $5736: $11 $D0 $D3
    ld c, $20                                     ; $5739: $0E $20

jr_03E_573B:
    ld a, [hl+]                                   ; $573B: $2A
    ld [de], a                                    ; $573C: $12
    inc de                                        ; $573D: $13
    dec c                                         ; $573E: $0D
    jr nz, jr_03E_573B                            ; $573F: $20 $FA

    ret                                           ; $5741: $C9


    ld a, [$C2D0]                                 ; $5742: $FA $D0 $C2
    cp $00                                        ; $5745: $FE $00
    jp nz, Jump_03E_5750                          ; $5747: $C2 $50 $57

    ld hl, $FF98                                  ; $574A: $21 $98 $FF
    jp Jump_03E_5753                              ; $574D: $C3 $53 $57


Jump_03E_5750:
    ld hl, $FFAB                                  ; $5750: $21 $AB $FF

Jump_03E_5753:
    ld c, [hl]                                    ; $5753: $4E
    inc hl                                        ; $5754: $23
    ld b, [hl]                                    ; $5755: $46
    ret                                           ; $5756: $C9


    nop                                           ; $5757: $00
    nop                                           ; $5758: $00
    or h                                          ; $5759: $B4
    ld e, b                                       ; $575A: $58
    nop                                           ; $575B: $00
    nop                                           ; $575C: $00
    ld l, c                                       ; $575D: $69
    jp $C3A9                                      ; $575E: $C3 $A9 $C3


    ld a, c                                       ; $5761: $79
    push bc                                       ; $5762: $C5
    ld bc, $0001                                  ; $5763: $01 $01 $00
    adc b                                         ; $5766: $88
    nop                                           ; $5767: $00
    nop                                           ; $5768: $00
    nop                                           ; $5769: $00
    nop                                           ; $576A: $00
    nop                                           ; $576B: $00
    ld a, c                                       ; $576C: $79
    push bc                                       ; $576D: $C5
    nop                                           ; $576E: $00
    ld bc, $8001                                  ; $576F: $01 $01 $80
    nop                                           ; $5772: $00
    nop                                           ; $5773: $00
    nop                                           ; $5774: $00
    nop                                           ; $5775: $00
    nop                                           ; $5776: $00
    nop                                           ; $5777: $00
    nop                                           ; $5778: $00
    nop                                           ; $5779: $00
    nop                                           ; $577A: $00
    ld a, $58                                     ; $577B: $3E $58
    add b                                         ; $577D: $80
    nop                                           ; $577E: $00
    nop                                           ; $577F: $00
    ld e, c                                       ; $5780: $59
    ld b, l                                       ; $5781: $45
    db $E3                                        ; $5782: $E3
    ld e, [hl]                                    ; $5783: $5E
    dec h                                         ; $5784: $25
    add h                                         ; $5785: $84
    ld c, l                                       ; $5786: $4D
    ld d, h                                       ; $5787: $54
    ld hl, $2665                                  ; $5788: $21 $65 $26
    adc c                                         ; $578B: $89
    inc sp                                        ; $578C: $33
    ld c, b                                       ; $578D: $48
    dec sp                                        ; $578E: $3B
    ld h, b                                       ; $578F: $60
    daa                                           ; $5790: $27
    add l                                         ; $5791: $85
    ld c, l                                       ; $5792: $4D
    ld d, h                                       ; $5793: $54
    ld hl, $2865                                  ; $5794: $21 $65 $28
    adc b                                         ; $5797: $88
    rla                                           ; $5798: $17
    ld c, e                                       ; $5799: $4B
    ld l, a                                       ; $579A: $6F
    ld h, c                                       ; $579B: $61
    add hl, hl                                    ; $579C: $29
    add [hl]                                      ; $579D: $86
    dec c                                         ; $579E: $0D
    ld c, [hl]                                    ; $579F: $4E
    ld h, c                                       ; $57A0: $61
    ld h, d                                       ; $57A1: $62
    ld a, [hl+]                                   ; $57A2: $2A
    adc e                                         ; $57A3: $8B
    dec b                                         ; $57A4: $05
    ld d, c                                       ; $57A5: $51
    db $FD                                        ; $57A6: $FD
    ld h, e                                       ; $57A7: $63
    dec hl                                        ; $57A8: $2B
    add a                                         ; $57A9: $87
    dec b                                         ; $57AA: $05
    ld d, a                                       ; $57AB: $57
    add a                                         ; $57AC: $87
    ld h, [hl]                                    ; $57AD: $66
    inc l                                         ; $57AE: $2C
    adc l                                         ; $57AF: $8D
    and l                                         ; $57B0: $A5
    ld e, h                                       ; $57B1: $5C
    dec d                                         ; $57B2: $15
    ld l, c                                       ; $57B3: $69
    dec l                                         ; $57B4: $2D
    adc h                                         ; $57B5: $8C
    inc de                                        ; $57B6: $13
    ld e, d                                       ; $57B7: $5A
    rst RST_30                                    ; $57B8: $F7
    ld h, a                                       ; $57B9: $67
    ld l, $94                                     ; $57BA: $2E $94
    ldh [c], a                                    ; $57BC: $E2
    ld [hl], l                                    ; $57BD: $75
    dec bc                                        ; $57BE: $0B
    push af                                       ; $57BF: $F5
    halt                                          ; $57C0: $76
    add hl, bc                                    ; $57C1: $09
    jp z, $0677                                   ; $57C2: $CA $77 $06

    ld h, h                                       ; $57C5: $64
    ld a, b                                       ; $57C6: $78
    ld a, [bc]                                    ; $57C7: $0A
    ld b, [hl]                                    ; $57C8: $46
    ld a, c                                       ; $57C9: $79
    rlca                                          ; $57CA: $07
    and $79                                       ; $57CB: $E6 $79
    add hl, bc                                    ; $57CD: $09
    cp h                                          ; $57CE: $BC
    ld a, d                                       ; $57CF: $7A
    rlca                                          ; $57D0: $07
    ld d, [hl]                                    ; $57D1: $56
    ld a, e                                       ; $57D2: $7B
    ld [$7C17], sp                                ; $57D3: $08 $17 $7C
    dec bc                                        ; $57D6: $0B
    ld de, $087D                                  ; $57D7: $11 $7D $08
    or h                                          ; $57DA: $B4
    ld e, b                                       ; $57DB: $58
    push hl                                       ; $57DC: $E5
    ld e, b                                       ; $57DD: $58
    ld d, $59                                     ; $57DE: $16 $59
    ld c, l                                       ; $57E0: $4D
    ld e, c                                       ; $57E1: $59
    add a                                         ; $57E2: $87
    ld e, c                                       ; $57E3: $59
    call $F859                                    ; $57E4: $CD $59 $F8
    ld e, c                                       ; $57E7: $59
    ld h, $5A                                     ; $57E8: $26 $5A
    ld d, a                                       ; $57EA: $57
    ld e, d                                       ; $57EB: $5A
    add l                                         ; $57EC: $85
    ld e, d                                       ; $57ED: $5A
    call nc, $F05A                                ; $57EE: $D4 $5A $F0
    ld e, d                                       ; $57F1: $5A
    dec de                                        ; $57F2: $1B
    ld e, e                                       ; $57F3: $5B
    ld b, e                                       ; $57F4: $43
    ld e, e                                       ; $57F5: $5B
    ld l, e                                       ; $57F6: $6B
    ld e, e                                       ; $57F7: $5B
    or a                                          ; $57F8: $B7

jr_03E_57F9:
    ld e, e                                       ; $57F9: $5B
    add sp, $5B                                   ; $57FA: $E8 $5B
    add hl, de                                    ; $57FC: $19
    ld e, h                                       ; $57FD: $5C
    ld c, l                                       ; $57FE: $4D
    ld e, h                                       ; $57FF: $5C
    ld a, [hl]                                    ; $5800: $7E
    ld e, h                                       ; $5801: $5C
    rst RST_08                                    ; $5802: $CF
    ld e, h                                       ; $5803: $5C
    db $FD                                        ; $5804: $FD
    ld e, h                                       ; $5805: $5C
    scf                                           ; $5806: $37
    ld e, l                                       ; $5807: $5D
    ld l, [hl]                                    ; $5808: $6E
    ld e, l                                       ; $5809: $5D
    sbc h                                         ; $580A: $9C
    ld e, l                                       ; $580B: $5D
    call c, Call_000_0A5D                         ; $580C: $DC $5D $0A
    ld e, [hl]                                    ; $580F: $5E
    dec sp                                        ; $5810: $3B
    ld e, [hl]                                    ; $5811: $5E
    ld [hl], l                                    ; $5812: $75
    ld e, [hl]                                    ; $5813: $5E
    and e                                         ; $5814: $A3
    ld e, [hl]                                    ; $5815: $5E
    jp hl                                         ; $5816: $E9


    ld e, [hl]                                    ; $5817: $5E
    rla                                           ; $5818: $17
    ld e, a                                       ; $5819: $5F
    ld b, l                                       ; $581A: $45
    ld e, a                                       ; $581B: $5F
    halt                                          ; $581C: $76
    ld e, a                                       ; $581D: $5F
    xor d                                         ; $581E: $AA
    ld e, a                                       ; $581F: $5F
    rst RST_20                                    ; $5820: $E7
    ld e, a                                       ; $5821: $5F
    ld [de], a                                    ; $5822: $12
    ld h, b                                       ; $5823: $60
    dec a                                         ; $5824: $3D
    ld h, b                                       ; $5825: $60
    ld [hl], c                                    ; $5826: $71
    ld h, b                                       ; $5827: $60
    and l                                         ; $5828: $A5
    ld h, b                                       ; $5829: $60
    rst RST_30                                    ; $582A: $F7
    ld h, b                                       ; $582B: $60
    add hl, de                                    ; $582C: $19
    ld h, c                                       ; $582D: $61
    dec sp                                        ; $582E: $3B
    ld h, c                                       ; $582F: $61
    ld e, d                                       ; $5830: $5A
    ld h, c                                       ; $5831: $61
    adc b                                         ; $5832: $88
    ld h, c                                       ; $5833: $61
    call nc, Call_000_0E61                        ; $5834: $D4 $61 $0E
    ld h, d                                       ; $5837: $62
    ld c, b                                       ; $5838: $48
    ld h, d                                       ; $5839: $62
    halt                                          ; $583A: $76
    ld h, d                                       ; $583B: $62
    and h                                         ; $583C: $A4
    ld h, d                                       ; $583D: $62
    ld b, b                                       ; $583E: $40
    ld b, b                                       ; $583F: $40
    ld b, b                                       ; $5840: $40
    adc b                                         ; $5841: $88
    ld [hl], b                                    ; $5842: $70
    adc c                                         ; $5843: $89
    ld [hl], b                                    ; $5844: $70
    adc b                                         ; $5845: $88
    ld [hl], b                                    ; $5846: $70
    adc c                                         ; $5847: $89
    ld b, b                                       ; $5848: $40
    ld h, b                                       ; $5849: $60
    add d                                         ; $584A: $82
    ld h, b                                       ; $584B: $60
    add e                                         ; $584C: $83
    ld h, b                                       ; $584D: $60
    add b                                         ; $584E: $80
    ld h, b                                       ; $584F: $60
    add c                                         ; $5850: $81
    ld h, b                                       ; $5851: $60
    add e                                         ; $5852: $83
    ld h, b                                       ; $5853: $60
    add b                                         ; $5854: $80
    ld b, b                                       ; $5855: $40
    ld h, b                                       ; $5856: $60
    add [hl]                                      ; $5857: $86
    ld h, b                                       ; $5858: $60
    add a                                         ; $5859: $87
    ld h, b                                       ; $585A: $60
    add h                                         ; $585B: $84
    ld h, b                                       ; $585C: $60
    add l                                         ; $585D: $85
    ld b, b                                       ; $585E: $40
    ld h, b                                       ; $585F: $60
    add d                                         ; $5860: $82
    ld e, b                                       ; $5861: $58
    add b                                         ; $5862: $80
    ld d, b                                       ; $5863: $50
    add c                                         ; $5864: $81
    ld c, b                                       ; $5865: $48
    add b                                         ; $5866: $80
    ld b, b                                       ; $5867: $40
    add e                                         ; $5868: $83
    ld b, b                                       ; $5869: $40
    adc b                                         ; $586A: $88
    ld b, b                                       ; $586B: $40
    adc c                                         ; $586C: $89
    ld b, b                                       ; $586D: $40
    ld b, b                                       ; $586E: $40
    adc c                                         ; $586F: $89
    ld b, b                                       ; $5870: $40
    add d                                         ; $5871: $82
    ld d, b                                       ; $5872: $50
    add l                                         ; $5873: $85
    jr nc, jr_03E_57F9                            ; $5874: $30 $83

    ld h, b                                       ; $5876: $60
    add l                                         ; $5877: $85
    ld [$2082], sp                                ; $5878: $08 $82 $20
    adc b                                         ; $587B: $88
    ld b, b                                       ; $587C: $40
    ld b, b                                       ; $587D: $40
    add d                                         ; $587E: $82
    ld b, b                                       ; $587F: $40
    add l                                         ; $5880: $85
    ld b, b                                       ; $5881: $40
    add e                                         ; $5882: $83
    ld b, b                                       ; $5883: $40
    adc c                                         ; $5884: $89
    ld [$2087], sp                                ; $5885: $08 $87 $20
    adc b                                         ; $5888: $88
    ld b, b                                       ; $5889: $40
    ld b, b                                       ; $588A: $40
    ld b, b                                       ; $588B: $40
    add [hl]                                      ; $588C: $86
    ld h, h                                       ; $588D: $64
    ld h, h                                       ; $588E: $64
    ld h, h                                       ; $588F: $64
    nop                                           ; $5890: $00
    or c                                          ; $5891: $B1
    ld e, $00                                     ; $5892: $1E $00
    nop                                           ; $5894: $00
    ld [hl], c                                    ; $5895: $71
    dec e                                         ; $5896: $1D
    ei                                            ; $5897: $FB
    dec h                                         ; $5898: $25
    or c                                          ; $5899: $B1
    ld e, $00                                     ; $589A: $1E $00
    nop                                           ; $589C: $00
    ld sp, $3946                                  ; $589D: $31 $46 $39
    ld h, a                                       ; $58A0: $67
    or c                                          ; $58A1: $B1
    ld e, $00                                     ; $58A2: $1E $00
    nop                                           ; $58A4: $00
    call c, $FF36                                 ; $58A5: $DC $36 $FF
    scf                                           ; $58A8: $37
    or c                                          ; $58A9: $B1
    ld e, $00                                     ; $58AA: $1E $00
    nop                                           ; $58AC: $00
    add hl, sp                                    ; $58AD: $39
    ld h, a                                       ; $58AE: $67
    rst RST_38                                    ; $58AF: $FF
    ld a, a                                       ; $58B0: $7F
    nop                                           ; $58B1: $00
    nop                                           ; $58B2: $00
    ld h, c                                       ; $58B3: $61
    ld a, h                                       ; $58B4: $7C
    ld l, e                                       ; $58B5: $6B
    ld a, a                                       ; $58B6: $7F
    rst RST_38                                    ; $58B7: $FF
    rlca                                          ; $58B8: $07
    nop                                           ; $58B9: $00
    nop                                           ; $58BA: $00
    ld a, e                                       ; $58BB: $7B
    inc c                                         ; $58BC: $0C
    ccf                                           ; $58BD: $3F
    ld l, [hl]                                    ; $58BE: $6E
    rst RST_38                                    ; $58BF: $FF
    rlca                                          ; $58C0: $07
    nop                                           ; $58C1: $00
    nop                                           ; $58C2: $00
    db $E3                                        ; $58C3: $E3
    ld a, h                                       ; $58C4: $7C
    dec l                                         ; $58C5: $2D
    ld a, a                                       ; $58C6: $7F
    rst RST_38                                    ; $58C7: $FF
    ld a, a                                       ; $58C8: $7F
    nop                                           ; $58C9: $00
    nop                                           ; $58CA: $00
    ld a, a                                       ; $58CB: $7F
    inc l                                         ; $58CC: $2C
    cp l                                          ; $58CD: $BD
    ld a, [hl]                                    ; $58CE: $7E
    rst RST_38                                    ; $58CF: $FF
    ld a, a                                       ; $58D0: $7F
    nop                                           ; $58D1: $00
    nop                                           ; $58D2: $00
    cp a                                          ; $58D3: $BF
    inc c                                         ; $58D4: $0C
    cp a                                          ; $58D5: $BF
    ld a, $FF                                     ; $58D6: $3E $FF
    ld a, a                                       ; $58D8: $7F
    nop                                           ; $58D9: $00
    nop                                           ; $58DA: $00
    inc hl                                        ; $58DB: $23
    ld c, $75                                     ; $58DC: $0E $75
    ld d, a                                       ; $58DE: $57
    rst RST_38                                    ; $58DF: $FF
    ld a, a                                       ; $58E0: $7F
    nop                                           ; $58E1: $00
    nop                                           ; $58E2: $00
    cp a                                          ; $58E3: $BF
    dec e                                         ; $58E4: $1D
    cp l                                          ; $58E5: $BD
    rrca                                          ; $58E6: $0F
    rst RST_38                                    ; $58E7: $FF
    ld a, a                                       ; $58E8: $7F
    nop                                           ; $58E9: $00
    nop                                           ; $58EA: $00
    add hl, sp                                    ; $58EB: $39
    dec e                                         ; $58EC: $1D
    dec a                                         ; $58ED: $3D
    rrca                                          ; $58EE: $0F
    rst RST_38                                    ; $58EF: $FF
    ld a, a                                       ; $58F0: $7F
    nop                                           ; $58F1: $00
    nop                                           ; $58F2: $00
    cpl                                           ; $58F3: $2F
    ld a, l                                       ; $58F4: $7D
    xor l                                         ; $58F5: $AD
    ld a, e                                       ; $58F6: $7B
    rst RST_38                                    ; $58F7: $FF
    ld a, a                                       ; $58F8: $7F
    nop                                           ; $58F9: $00
    nop                                           ; $58FA: $00
    ld l, c                                       ; $58FB: $69
    ld c, l                                       ; $58FC: $4D
    ld sp, $FF7E                                  ; $58FD: $31 $7E $FF
    ld a, a                                       ; $5900: $7F
    nop                                           ; $5901: $00
    nop                                           ; $5902: $00
    rst RST_38                                    ; $5903: $FF
    inc e                                         ; $5904: $1C
    ccf                                           ; $5905: $3F
    scf                                           ; $5906: $37
    rst RST_38                                    ; $5907: $FF
    ld a, a                                       ; $5908: $7F
    nop                                           ; $5909: $00
    nop                                           ; $590A: $00
    and e                                         ; $590B: $A3
    ld c, $E7                                     ; $590C: $0E $E7
    rra                                           ; $590E: $1F
    rst RST_38                                    ; $590F: $FF
    ld a, a                                       ; $5910: $7F
    add b                                         ; $5911: $80
    nop                                           ; $5912: $00
    dec b                                         ; $5913: $05
    dec b                                         ; $5914: $05
    ld d, b                                       ; $5915: $50
    nop                                           ; $5916: $00
    ld b, b                                       ; $5917: $40
    nop                                           ; $5918: $00
    nop                                           ; $5919: $00
    nop                                           ; $591A: $00
    nop                                           ; $591B: $00
    nop                                           ; $591C: $00
    nop                                           ; $591D: $00
    nop                                           ; $591E: $00
    add b                                         ; $591F: $80
    nop                                           ; $5920: $00
    add b                                         ; $5921: $80
    ld a, $31                                     ; $5922: $3E $31
    ld e, c                                       ; $5924: $59
    nop                                           ; $5925: $00
    nop                                           ; $5926: $00
    ld sp, $0059                                  ; $5927: $31 $59 $00
    nop                                           ; $592A: $00
    nop                                           ; $592B: $00
    nop                                           ; $592C: $00
    rra                                           ; $592D: $1F
    rra                                           ; $592E: $1F
    ret nz                                        ; $592F: $C0

    ret c                                         ; $5930: $D8

    ld b, e                                       ; $5931: $43
    ld e, c                                       ; $5932: $59
    rst RST_38                                    ; $5933: $FF
    rst RST_38                                    ; $5934: $FF
    ld b, e                                       ; $5935: $43
    ld e, c                                       ; $5936: $59
    rst RST_38                                    ; $5937: $FF
    rst RST_38                                    ; $5938: $FF
    ld b, e                                       ; $5939: $43
    ld e, c                                       ; $593A: $59
    rst RST_38                                    ; $593B: $FF
    rst RST_38                                    ; $593C: $FF
    ld h, b                                       ; $593D: $60
    ld e, c                                       ; $593E: $59
    rst RST_38                                    ; $593F: $FF
    rst RST_38                                    ; $5940: $FF
    rst RST_38                                    ; $5941: $FF
    rst RST_38                                    ; $5942: $FF
    sub b                                         ; $5943: $90
    nop                                           ; $5944: $00
    nop                                           ; $5945: $00
    rst RST_38                                    ; $5946: $FF
    rst RST_38                                    ; $5947: $FF
    rst RST_38                                    ; $5948: $FF
    ld c, l                                       ; $5949: $4D
    ld e, c                                       ; $594A: $59
    nop                                           ; $594B: $00
    nop                                           ; $594C: $00
    ld b, $F8                                     ; $594D: $06 $F8
    add sp, $00                                   ; $594F: $E8 $00
    ld hl, sp-$10                                 ; $5951: $F8 $F0
    ld [bc], a                                    ; $5953: $02
    ld hl, sp-$08                                 ; $5954: $F8 $F8
    inc b                                         ; $5956: $04
    ld hl, sp+$00                                 ; $5957: $F8 $00
    ld b, $F8                                     ; $5959: $06 $F8
    ld [$F808], sp                                ; $595B: $08 $08 $F8
    db $10                                        ; $595E: $10
    ld a, [bc]                                    ; $595F: $0A
    sub b                                         ; $5960: $90
    nop                                           ; $5961: $00
    nop                                           ; $5962: $00
    rst RST_38                                    ; $5963: $FF
    rst RST_38                                    ; $5964: $FF
    rst RST_38                                    ; $5965: $FF
    ld l, d                                       ; $5966: $6A
    ld e, c                                       ; $5967: $59
    nop                                           ; $5968: $00
    nop                                           ; $5969: $00
    add hl, bc                                    ; $596A: $09
    ld hl, sp-$20                                 ; $596B: $F8 $E0
    inc c                                         ; $596D: $0C
    ld hl, sp-$18                                 ; $596E: $F8 $E8
    ld c, $F8                                     ; $5970: $0E $F8
    ldh a, [rNR10]                                ; $5972: $F0 $10
    ld hl, sp-$08                                 ; $5974: $F8 $F8
    ld [de], a                                    ; $5976: $12
    ld hl, sp+$00                                 ; $5977: $F8 $00

jr_03E_5979:
    inc d                                         ; $5979: $14
    ld hl, sp+$08                                 ; $597A: $F8 $08
    ld d, $F8                                     ; $597C: $16 $F8
    db $10                                        ; $597E: $10
    jr jr_03E_5979                                ; $597F: $18 $F8

    jr jr_03E_599D                                ; $5981: $18 $1A

    ld hl, sp+$20                                 ; $5983: $F8 $20
    inc e                                         ; $5985: $1C
    add b                                         ; $5986: $80
    nop                                           ; $5987: $00
    ld [bc], a                                    ; $5988: $02
    ld [bc], a                                    ; $5989: $02
    ld c, b                                       ; $598A: $48
    nop                                           ; $598B: $00
    ld d, b                                       ; $598C: $50
    nop                                           ; $598D: $00
    nop                                           ; $598E: $00
    nop                                           ; $598F: $00
    nop                                           ; $5990: $00
    nop                                           ; $5991: $00
    nop                                           ; $5992: $00
    nop                                           ; $5993: $00
    ld b, b                                       ; $5994: $40
    nop                                           ; $5995: $00
    add b                                         ; $5996: $80
    ld a, $A6                                     ; $5997: $3E $A6
    ld e, c                                       ; $5999: $59
    nop                                           ; $599A: $00
    nop                                           ; $599B: $00
    and [hl]                                      ; $599C: $A6

jr_03E_599D:
    ld e, c                                       ; $599D: $59
    nop                                           ; $599E: $00
    nop                                           ; $599F: $00
    nop                                           ; $59A0: $00
    nop                                           ; $59A1: $00
    rlca                                          ; $59A2: $07
    rlca                                          ; $59A3: $07
    ret nz                                        ; $59A4: $C0

    ret c                                         ; $59A5: $D8

    call z, $FF59                                 ; $59A6: $CC $59 $FF
    rst RST_38                                    ; $59A9: $FF
    db $DD                                        ; $59AA: $DD
    ld e, c                                       ; $59AB: $59
    rst RST_38                                    ; $59AC: $FF
    rst RST_38                                    ; $59AD: $FF
    xor $59                                       ; $59AE: $EE $59
    rst RST_38                                    ; $59B0: $FF
    rst RST_38                                    ; $59B1: $FF
    rst RST_38                                    ; $59B2: $FF
    ld e, c                                       ; $59B3: $59
    rst RST_38                                    ; $59B4: $FF
    rst RST_38                                    ; $59B5: $FF
    rst RST_38                                    ; $59B6: $FF
    rst RST_38                                    ; $59B7: $FF
    call z, $FF59                                 ; $59B8: $CC $59 $FF
    rst RST_38                                    ; $59BB: $FF
    rst RST_38                                    ; $59BC: $FF
    rst RST_38                                    ; $59BD: $FF
    db $10                                        ; $59BE: $10
    ld e, d                                       ; $59BF: $5A
    rst RST_38                                    ; $59C0: $FF
    rst RST_38                                    ; $59C1: $FF
    ld hl, $FF5A                                  ; $59C2: $21 $5A $FF
    rst RST_38                                    ; $59C5: $FF
    ld b, h                                       ; $59C6: $44
    ld e, d                                       ; $59C7: $5A
    rst RST_38                                    ; $59C8: $FF
    rst RST_38                                    ; $59C9: $FF
    rst RST_38                                    ; $59CA: $FF
    rst RST_38                                    ; $59CB: $FF
    sub b                                         ; $59CC: $90
    nop                                           ; $59CD: $00
    nop                                           ; $59CE: $00
    rst RST_38                                    ; $59CF: $FF
    rst RST_38                                    ; $59D0: $FF
    rst RST_38                                    ; $59D1: $FF
    sub $59                                       ; $59D2: $D6 $59
    nop                                           ; $59D4: $00
    nop                                           ; $59D5: $00
    ld [bc], a                                    ; $59D6: $02
    ld hl, sp-$08                                 ; $59D7: $F8 $F8
    inc b                                         ; $59D9: $04
    ld hl, sp+$00                                 ; $59DA: $F8 $00
    ld b, $90                                     ; $59DC: $06 $90
    nop                                           ; $59DE: $00
    nop                                           ; $59DF: $00
    rst RST_38                                    ; $59E0: $FF
    rst RST_38                                    ; $59E1: $FF
    rst RST_38                                    ; $59E2: $FF
    rst RST_20                                    ; $59E3: $E7
    ld e, c                                       ; $59E4: $59
    nop                                           ; $59E5: $00
    nop                                           ; $59E6: $00
    ld [bc], a                                    ; $59E7: $02
    ld hl, sp-$08                                 ; $59E8: $F8 $F8
    ld [$00F8], sp                                ; $59EA: $08 $F8 $00
    ld a, [bc]                                    ; $59ED: $0A
    sub b                                         ; $59EE: $90
    nop                                           ; $59EF: $00
    nop                                           ; $59F0: $00
    rst RST_38                                    ; $59F1: $FF
    rst RST_38                                    ; $59F2: $FF
    rst RST_38                                    ; $59F3: $FF
    ld hl, sp+$59                                 ; $59F4: $F8 $59
    nop                                           ; $59F6: $00
    nop                                           ; $59F7: $00
    ld [bc], a                                    ; $59F8: $02
    ld hl, sp-$08                                 ; $59F9: $F8 $F8
    inc c                                         ; $59FB: $0C
    ld hl, sp+$00                                 ; $59FC: $F8 $00
    ld c, $90                                     ; $59FE: $0E $90
    nop                                           ; $5A00: $00
    nop                                           ; $5A01: $00
    rst RST_38                                    ; $5A02: $FF
    rst RST_38                                    ; $5A03: $FF
    rst RST_38                                    ; $5A04: $FF
    add hl, bc                                    ; $5A05: $09
    ld e, d                                       ; $5A06: $5A
    nop                                           ; $5A07: $00
    nop                                           ; $5A08: $00
    ld [bc], a                                    ; $5A09: $02
    ld hl, sp-$08                                 ; $5A0A: $F8 $F8
    db $10                                        ; $5A0C: $10
    ld hl, sp+$00                                 ; $5A0D: $F8 $00
    ld [de], a                                    ; $5A0F: $12
    sub b                                         ; $5A10: $90
    nop                                           ; $5A11: $00
    nop                                           ; $5A12: $00
    rst RST_38                                    ; $5A13: $FF
    rst RST_38                                    ; $5A14: $FF
    rst RST_38                                    ; $5A15: $FF
    ld a, [de]                                    ; $5A16: $1A
    ld e, d                                       ; $5A17: $5A
    nop                                           ; $5A18: $00
    nop                                           ; $5A19: $00
    ld [bc], a                                    ; $5A1A: $02
    ld hl, sp-$08                                 ; $5A1B: $F8 $F8
    inc d                                         ; $5A1D: $14
    ld hl, sp+$00                                 ; $5A1E: $F8 $00

jr_03E_5A20:
    ld d, $90                                     ; $5A20: $16 $90
    nop                                           ; $5A22: $00
    nop                                           ; $5A23: $00
    rst RST_38                                    ; $5A24: $FF
    rst RST_38                                    ; $5A25: $FF
    rst RST_38                                    ; $5A26: $FF
    dec hl                                        ; $5A27: $2B
    ld e, d                                       ; $5A28: $5A
    nop                                           ; $5A29: $00
    nop                                           ; $5A2A: $00
    ld [$F0F0], sp                                ; $5A2B: $08 $F0 $F0
    jr jr_03E_5A20                                ; $5A2E: $18 $F0

    ld hl, sp+$1A                                 ; $5A30: $F8 $1A
    ldh a, [rP1]                                  ; $5A32: $F0 $00
    inc e                                         ; $5A34: $1C
    ldh a, [$FF08]                                ; $5A35: $F0 $08
    ld e, $00                                     ; $5A37: $1E $00
    ldh a, [rNR41]                                ; $5A39: $F0 $20
    nop                                           ; $5A3B: $00
    ld hl, sp+$22                                 ; $5A3C: $F8 $22
    nop                                           ; $5A3E: $00
    nop                                           ; $5A3F: $00
    inc h                                         ; $5A40: $24
    nop                                           ; $5A41: $00
    ld [$9026], sp                                ; $5A42: $08 $26 $90
    nop                                           ; $5A45: $00
    nop                                           ; $5A46: $00
    rst RST_38                                    ; $5A47: $FF
    rst RST_38                                    ; $5A48: $FF
    rst RST_38                                    ; $5A49: $FF
    ld c, [hl]                                    ; $5A4A: $4E
    ld e, d                                       ; $5A4B: $5A
    nop                                           ; $5A4C: $00
    nop                                           ; $5A4D: $00
    ld [bc], a                                    ; $5A4E: $02
    ld hl, sp-$08                                 ; $5A4F: $F8 $F8
    nop                                           ; $5A51: $00
    ld hl, sp+$00                                 ; $5A52: $F8 $00
    ld [bc], a                                    ; $5A54: $02
    ld h, a                                       ; $5A55: $67
    ld e, d                                       ; $5A56: $5A
    rst RST_38                                    ; $5A57: $FF
    rst RST_38                                    ; $5A58: $FF
    rst RST_38                                    ; $5A59: $FF
    rst RST_38                                    ; $5A5A: $FF
    ld h, a                                       ; $5A5B: $67
    ld e, d                                       ; $5A5C: $5A
    rst RST_38                                    ; $5A5D: $FF
    rst RST_38                                    ; $5A5E: $FF
    rst RST_38                                    ; $5A5F: $FF
    rst RST_38                                    ; $5A60: $FF
    ld a, b                                       ; $5A61: $78
    ld e, d                                       ; $5A62: $5A
    rst RST_38                                    ; $5A63: $FF
    rst RST_38                                    ; $5A64: $FF
    rst RST_38                                    ; $5A65: $FF
    rst RST_38                                    ; $5A66: $FF
    sub b                                         ; $5A67: $90
    nop                                           ; $5A68: $00
    nop                                           ; $5A69: $00
    rst RST_38                                    ; $5A6A: $FF
    rst RST_38                                    ; $5A6B: $FF
    rst RST_38                                    ; $5A6C: $FF
    ld [hl], c                                    ; $5A6D: $71

jr_03E_5A6E:
    ld e, d                                       ; $5A6E: $5A
    nop                                           ; $5A6F: $00
    nop                                           ; $5A70: $00
    ld [bc], a                                    ; $5A71: $02
    ld hl, sp-$08                                 ; $5A72: $F8 $F8
    jr z, jr_03E_5A6E                             ; $5A74: $28 $F8

    nop                                           ; $5A76: $00
    ld a, [hl+]                                   ; $5A77: $2A
    sub b                                         ; $5A78: $90
    nop                                           ; $5A79: $00
    nop                                           ; $5A7A: $00
    rst RST_38                                    ; $5A7B: $FF
    rst RST_38                                    ; $5A7C: $FF
    rst RST_38                                    ; $5A7D: $FF
    add d                                         ; $5A7E: $82
    ld e, d                                       ; $5A7F: $5A
    nop                                           ; $5A80: $00
    nop                                           ; $5A81: $00
    ld [bc], a                                    ; $5A82: $02
    ld hl, sp-$08                                 ; $5A83: $F8 $F8
    inc l                                         ; $5A85: $2C
    ld hl, sp+$00                                 ; $5A86: $F8 $00
    ld l, $9B                                     ; $5A88: $2E $9B
    ld e, d                                       ; $5A8A: $5A
    rst RST_38                                    ; $5A8B: $FF
    rst RST_38                                    ; $5A8C: $FF
    rst RST_38                                    ; $5A8D: $FF
    rst RST_38                                    ; $5A8E: $FF
    sbc e                                         ; $5A8F: $9B
    ld e, d                                       ; $5A90: $5A
    rst RST_38                                    ; $5A91: $FF
    rst RST_38                                    ; $5A92: $FF
    rst RST_38                                    ; $5A93: $FF
    rst RST_38                                    ; $5A94: $FF
    xor h                                         ; $5A95: $AC
    ld e, d                                       ; $5A96: $5A
    rst RST_38                                    ; $5A97: $FF
    rst RST_38                                    ; $5A98: $FF
    rst RST_38                                    ; $5A99: $FF
    rst RST_38                                    ; $5A9A: $FF
    sub b                                         ; $5A9B: $90
    nop                                           ; $5A9C: $00
    nop                                           ; $5A9D: $00
    rst RST_38                                    ; $5A9E: $FF
    rst RST_38                                    ; $5A9F: $FF
    rst RST_38                                    ; $5AA0: $FF
    and l                                         ; $5AA1: $A5

jr_03E_5AA2:
    ld e, d                                       ; $5AA2: $5A
    nop                                           ; $5AA3: $00
    nop                                           ; $5AA4: $00
    ld [bc], a                                    ; $5AA5: $02
    ld hl, sp-$08                                 ; $5AA6: $F8 $F8
    jr nc, jr_03E_5AA2                            ; $5AA8: $30 $F8

    nop                                           ; $5AAA: $00
    ld [hl-], a                                   ; $5AAB: $32
    sub b                                         ; $5AAC: $90
    nop                                           ; $5AAD: $00
    nop                                           ; $5AAE: $00
    rst RST_38                                    ; $5AAF: $FF
    rst RST_38                                    ; $5AB0: $FF
    rst RST_38                                    ; $5AB1: $FF
    or [hl]                                       ; $5AB2: $B6
    ld e, d                                       ; $5AB3: $5A
    nop                                           ; $5AB4: $00
    nop                                           ; $5AB5: $00
    ld [bc], a                                    ; $5AB6: $02
    ld hl, sp-$08                                 ; $5AB7: $F8 $F8
    inc [hl]                                      ; $5AB9: $34
    ld hl, sp+$00                                 ; $5ABA: $F8 $00
    ld [hl], $FA                                  ; $5ABC: $36 $FA
    xor e                                         ; $5ABE: $AB
    sub $B7                                       ; $5ABF: $D6 $B7
    jr z, jr_03E_5B05                             ; $5AC1: $28 $42

    ld a, $18                                     ; $5AC3: $3E $18
    ld b, $02                                     ; $5AC5: $06 $02
    ld c, $02                                     ; $5AC7: $0E $02
    call Call_000_189B                            ; $5AC9: $CD $9B $18
    ld a, [$D6AB]                                 ; $5ACC: $FA $AB $D6
    ld d, a                                       ; $5ACF: $57
    ld a, [$D6B3]                                 ; $5AD0: $FA $B3 $D6
    or a                                          ; $5AD3: $B7
    jr nz, jr_03E_5AF4                            ; $5AD4: $20 $1E

    ld a, [$D682]                                 ; $5AD6: $FA $82 $D6
    xor d                                         ; $5AD9: $AA
    bit 5, a                                      ; $5ADA: $CB $6F
    jr nz, jr_03E_5AE2                            ; $5ADC: $20 $04

    ld a, d                                       ; $5ADE: $7A
    xor $80                                       ; $5ADF: $EE $80
    ld d, a                                       ; $5AE1: $57

jr_03E_5AE2:
    bit 7, d                                      ; $5AE2: $CB $7A
    jr nz, jr_03E_5AED                            ; $5AE4: $20 $07

    ld e, $06                                     ; $5AE6: $1E $06
    ld hl, $5C45                                  ; $5AE8: $21 $45 $5C
    jr jr_03E_5AF9                                ; $5AEB: $18 $0C

jr_03E_5AED:
    ld e, $07                                     ; $5AED: $1E $07
    ld hl, $5C63                                  ; $5AEF: $21 $63 $5C
    jr jr_03E_5AF9                                ; $5AF2: $18 $05

jr_03E_5AF4:
    ld e, $08                                     ; $5AF4: $1E $08
    ld hl, $5C81                                  ; $5AF6: $21 $81 $5C

jr_03E_5AF9:
    xor a                                         ; $5AF9: $AF
    ld [$D6AB], a                                 ; $5AFA: $EA $AB $D6
    ld a, $20                                     ; $5AFD: $3E $20
    ld [$D6B4], a                                 ; $5AFF: $EA $B4 $D6
    jp Jump_03E_5B93                              ; $5B02: $C3 $93 $5B


jr_03E_5B05:
    ld a, [$D6B4]                                 ; $5B05: $FA $B4 $D6
    or a                                          ; $5B08: $B7
    jp z, Jump_03E_5B38                           ; $5B09: $CA $38 $5B

    dec a                                         ; $5B0C: $3D
    ld [$D6B4], a                                 ; $5B0D: $EA $B4 $D6
    jr z, jr_03E_5B1D                             ; $5B10: $28 $0B

    ld a, [$D684]                                 ; $5B12: $FA $84 $D6
    xor $02                                       ; $5B15: $EE $02
    ld [$D684], a                                 ; $5B17: $EA $84 $D6
    jp Jump_03E_5BB7                              ; $5B1A: $C3 $B7 $5B


jr_03E_5B1D:
    ld a, [$D6B1]                                 ; $5B1D: $FA $B1 $D6
    and $F8                                       ; $5B20: $E6 $F8
    ld [$D6B1], a                                 ; $5B22: $EA $B1 $D6
    ld e, $00                                     ; $5B25: $1E $00
    ld hl, $5BCD                                  ; $5B27: $21 $CD $5B
    ld a, [$D6B3]                                 ; $5B2A: $FA $B3 $D6
    or a                                          ; $5B2D: $B7
    jr z, jr_03E_5B93                             ; $5B2E: $28 $63

    ld e, $01                                     ; $5B30: $1E $01
    ld hl, $5BEB                                  ; $5B32: $21 $EB $5B
    jp Jump_03E_5B93                              ; $5B35: $C3 $93 $5B


Jump_03E_5B38:
    call Call_03E_5BB8                            ; $5B38: $CD $B8 $5B
    ld hl, $D6B1                                  ; $5B3B: $21 $B1 $D6
    ld a, [hl+]                                   ; $5B3E: $2A
    ld [hl-], a                                   ; $5B3F: $32
    ld [hl], c                                    ; $5B40: $71
    xor c                                         ; $5B41: $A9
    and $0B                                       ; $5B42: $E6 $0B
    jp z, Jump_03E_5BB7                           ; $5B44: $CA $B7 $5B

    ld a, c                                       ; $5B47: $79
    and $03                                       ; $5B48: $E6 $03
    jr z, jr_03E_5B5A                             ; $5B4A: $28 $0E

    ld a, $30                                     ; $5B4C: $3E $30
    bit 0, c                                      ; $5B4E: $CB $41
    jr z, jr_03E_5B54                             ; $5B50: $28 $02

    ld a, $10                                     ; $5B52: $3E $10

jr_03E_5B54:
    ld [$D682], a                                 ; $5B54: $EA $82 $D6
    ld [$D683], a                                 ; $5B57: $EA $83 $D6

jr_03E_5B5A:
    bit 3, c                                      ; $5B5A: $CB $59
    jr nz, jr_03E_5B79                            ; $5B5C: $20 $1B

    xor a                                         ; $5B5E: $AF
    ld [$D6B3], a                                 ; $5B5F: $EA $B3 $D6
    ld e, $00                                     ; $5B62: $1E $00
    ld hl, $5BCD                                  ; $5B64: $21 $CD $5B
    ld a, c                                       ; $5B67: $79
    and $03                                       ; $5B68: $E6 $03
    jr z, jr_03E_5B93                             ; $5B6A: $28 $27

    ld e, $02                                     ; $5B6C: $1E $02
    ld hl, $5C09                                  ; $5B6E: $21 $09 $5C
    and $01                                       ; $5B71: $E6 $01
    jr z, jr_03E_5B93                             ; $5B73: $28 $1E

    ld e, $03                                     ; $5B75: $1E $03
    jr jr_03E_5B93                                ; $5B77: $18 $1A

jr_03E_5B79:
    ld a, $FF                                     ; $5B79: $3E $FF
    ld [$D6B3], a                                 ; $5B7B: $EA $B3 $D6
    ld e, $01                                     ; $5B7E: $1E $01
    ld hl, $5BEB                                  ; $5B80: $21 $EB $5B
    ld a, c                                       ; $5B83: $79
    and $03                                       ; $5B84: $E6 $03
    jr z, jr_03E_5B93                             ; $5B86: $28 $0B

    ld e, $04                                     ; $5B88: $1E $04
    ld hl, $5C27                                  ; $5B8A: $21 $27 $5C
    and $01                                       ; $5B8D: $E6 $01
    jr z, jr_03E_5B93                             ; $5B8F: $28 $02

    ld e, $05                                     ; $5B91: $1E $05

Jump_03E_5B93:
jr_03E_5B93:
    ld a, e                                       ; $5B93: $7B
    ld [$D6AA], a                                 ; $5B94: $EA $AA $D6
    ld a, [$D6A9]                                 ; $5B97: $FA $A9 $D6
    ld e, a                                       ; $5B9A: $5F
    add a                                         ; $5B9B: $87
    add e                                         ; $5B9C: $83
    ld e, a                                       ; $5B9D: $5F
    ld d, $00                                     ; $5B9E: $16 $00
    add hl, de                                    ; $5BA0: $19
    ld a, [hl+]                                   ; $5BA1: $2A
    ld [$D691], a                                 ; $5BA2: $EA $91 $D6
    ld a, [hl+]                                   ; $5BA5: $2A
    ld [$D692], a                                 ; $5BA6: $EA $92 $D6
    ld a, [hl]                                    ; $5BA9: $7E
    ld [$D693], a                                 ; $5BAA: $EA $93 $D6
    xor a                                         ; $5BAD: $AF
    ld [$D694], a                                 ; $5BAE: $EA $94 $D6
    ld hl, $D680                                  ; $5BB1: $21 $80 $D6
    call Call_000_0DB5                            ; $5BB4: $CD $B5 $0D

Jump_03E_5BB7:
    ret                                           ; $5BB7: $C9


Call_03E_5BB8:
    ld a, [$C2D0]                                 ; $5BB8: $FA $D0 $C2
    cp $00                                        ; $5BBB: $FE $00
    jp nz, Jump_03E_5BC6                          ; $5BBD: $C2 $C6 $5B

    ld hl, $FF98                                  ; $5BC0: $21 $98 $FF
    jp Jump_03E_5BC9                              ; $5BC3: $C3 $C9 $5B


Jump_03E_5BC6:
    ld hl, $FFAB                                  ; $5BC6: $21 $AB $FF

Jump_03E_5BC9:
    ld c, [hl]                                    ; $5BC9: $4E
    inc hl                                        ; $5BCA: $23
    ld b, [hl]                                    ; $5BCB: $46
    ret                                           ; $5BCC: $C9


    rlca                                          ; $5BCD: $07
    cp [hl]                                       ; $5BCE: $BE
    ld b, b                                       ; $5BCF: $40
    rlca                                          ; $5BD0: $07
    ld h, c                                       ; $5BD1: $61
    ld d, a                                       ; $5BD2: $57
    ld [$402A], sp                                ; $5BD3: $08 $2A $40
    ld [$5C8A], sp                                ; $5BD6: $08 $8A $5C
    add hl, bc                                    ; $5BD9: $09
    ld [hl+], a                                   ; $5BDA: $22
    ld b, b                                       ; $5BDB: $40
    add hl, bc                                    ; $5BDC: $09
    db $F4                                        ; $5BDD: $F4
    ld d, a                                       ; $5BDE: $57
    ld a, [bc]                                    ; $5BDF: $0A
    ld b, $40                                     ; $5BE0: $06 $40
    ld a, [bc]                                    ; $5BE2: $0A
    ld a, l                                       ; $5BE3: $7D
    ld e, d                                       ; $5BE4: $5A
    dec bc                                        ; $5BE5: $0B
    ld a, [hl+]                                   ; $5BE6: $2A
    ld b, b                                       ; $5BE7: $40
    dec bc                                        ; $5BE8: $0B
    db $E4                                        ; $5BE9: $E4
    ld e, e                                       ; $5BEA: $5B
    rlca                                          ; $5BEB: $07
    db $F4                                        ; $5BEC: $F4
    ld b, b                                       ; $5BED: $40
    rlca                                          ; $5BEE: $07
    sub a                                         ; $5BEF: $97
    ld d, a                                       ; $5BF0: $57
    ld [$4060], sp                                ; $5BF1: $08 $60 $40
    ld [$5CC0], sp                                ; $5BF4: $08 $C0 $5C
    add hl, bc                                    ; $5BF7: $09
    ld d, b                                       ; $5BF8: $50
    ld b, b                                       ; $5BF9: $40
    add hl, bc                                    ; $5BFA: $09
    ld h, $58                                     ; $5BFB: $26 $58
    ld a, [bc]                                    ; $5BFD: $0A
    inc a                                         ; $5BFE: $3C
    ld b, b                                       ; $5BFF: $40
    ld a, [bc]                                    ; $5C00: $0A
    or e                                          ; $5C01: $B3
    ld e, d                                       ; $5C02: $5A
    dec bc                                        ; $5C03: $0B
    ld h, b                                       ; $5C04: $60
    ld b, b                                       ; $5C05: $40
    dec bc                                        ; $5C06: $0B
    ld a, [de]                                    ; $5C07: $1A
    ld e, h                                       ; $5C08: $5C
    rlca                                          ; $5C09: $07
    ld h, b                                       ; $5C0A: $60
    ld b, c                                       ; $5C0B: $41
    rlca                                          ; $5C0C: $07
    cp a                                          ; $5C0D: $BF
    ld d, a                                       ; $5C0E: $57
    ld [$40CC], sp                                ; $5C0F: $08 $CC $40
    ld [$5CE8], sp                                ; $5C12: $08 $E8 $5C
    add hl, bc                                    ; $5C15: $09
    cp h                                          ; $5C16: $BC
    ld b, b                                       ; $5C17: $40
    add hl, bc                                    ; $5C18: $09
    ld c, [hl]                                    ; $5C19: $4E
    ld e, b                                       ; $5C1A: $58
    ld a, [bc]                                    ; $5C1B: $0A
    ld h, h                                       ; $5C1C: $64
    ld b, b                                       ; $5C1D: $40
    ld a, [bc]                                    ; $5C1E: $0A
    db $DB                                        ; $5C1F: $DB
    ld e, d                                       ; $5C20: $5A
    dec bc                                        ; $5C21: $0B
    call z, $0B40                                 ; $5C22: $CC $40 $0B
    add [hl]                                      ; $5C25: $86
    ld e, h                                       ; $5C26: $5C
    rlca                                          ; $5C27: $07
    ld h, [hl]                                    ; $5C28: $66
    ld b, c                                       ; $5C29: $41
    rlca                                          ; $5C2A: $07
    push bc                                       ; $5C2B: $C5
    ld d, a                                       ; $5C2C: $57
    ld [$40D2], sp                                ; $5C2D: $08 $D2 $40
    ld [$5CEE], sp                                ; $5C30: $08 $EE $5C
    add hl, bc                                    ; $5C33: $09
    jp nz, $0940                                  ; $5C34: $C2 $40 $09

    ld d, h                                       ; $5C37: $54
    ld e, b                                       ; $5C38: $58
    ld a, [bc]                                    ; $5C39: $0A
    ld l, d                                       ; $5C3A: $6A
    ld b, b                                       ; $5C3B: $40
    ld a, [bc]                                    ; $5C3C: $0A
    pop hl                                        ; $5C3D: $E1
    ld e, d                                       ; $5C3E: $5A
    dec bc                                        ; $5C3F: $0B
    jp nc, $0B40                                  ; $5C40: $D2 $40 $0B

    adc h                                         ; $5C43: $8C
    ld e, h                                       ; $5C44: $5C
    rlca                                          ; $5C45: $07
    call c, Call_000_0742                         ; $5C46: $DC $42 $07
    ld b, e                                       ; $5C49: $43
    ld e, c                                       ; $5C4A: $59
    ld [$4220], sp                                ; $5C4B: $08 $20 $42
    ld [$5E34], sp                                ; $5C4E: $08 $34 $5E
    add hl, bc                                    ; $5C51: $09
    inc h                                         ; $5C52: $24
    ld b, d                                       ; $5C53: $42
    add hl, bc                                    ; $5C54: $09
    xor d                                         ; $5C55: $AA
    ld e, c                                       ; $5C56: $59
    ld a, [bc]                                    ; $5C57: $0A
    or d                                          ; $5C58: $B2
    ld b, c                                       ; $5C59: $41
    ld a, [bc]                                    ; $5C5A: $0A
    ld b, a                                       ; $5C5B: $47
    ld e, h                                       ; $5C5C: $5C
    dec bc                                        ; $5C5D: $0B
    ld l, h                                       ; $5C5E: $6C
    ld b, d                                       ; $5C5F: $42
    dec bc                                        ; $5C60: $0B
    inc d                                         ; $5C61: $14
    ld e, [hl]                                    ; $5C62: $5E
    rlca                                          ; $5C63: $07
    ld [$0742], a                                 ; $5C64: $EA $42 $07
    ld d, c                                       ; $5C67: $51
    ld e, c                                       ; $5C68: $59
    ld [$422E], sp                                ; $5C69: $08 $2E $42
    ld [$5E42], sp                                ; $5C6C: $08 $42 $5E
    add hl, bc                                    ; $5C6F: $09
    ld [hl-], a                                   ; $5C70: $32
    ld b, d                                       ; $5C71: $42
    add hl, bc                                    ; $5C72: $09
    cp b                                          ; $5C73: $B8
    ld e, c                                       ; $5C74: $59
    ld a, [bc]                                    ; $5C75: $0A
    ret nz                                        ; $5C76: $C0

    ld b, c                                       ; $5C77: $41
    ld a, [bc]                                    ; $5C78: $0A
    ld d, l                                       ; $5C79: $55
    ld e, h                                       ; $5C7A: $5C
    dec bc                                        ; $5C7B: $0B
    ld a, d                                       ; $5C7C: $7A
    ld b, d                                       ; $5C7D: $42
    dec bc                                        ; $5C7E: $0B
    ld [hl+], a                                   ; $5C7F: $22
    ld e, [hl]                                    ; $5C80: $5E
    rlca                                          ; $5C81: $07
    ldh a, [rSCY]                                 ; $5C82: $F0 $42
    rlca                                          ; $5C84: $07
    ld d, a                                       ; $5C85: $57
    ld e, c                                       ; $5C86: $59
    ld [$4234], sp                                ; $5C87: $08 $34 $42
    ld [$5E48], sp                                ; $5C8A: $08 $48 $5E
    add hl, bc                                    ; $5C8D: $09
    jr c, jr_03E_5CD2                             ; $5C8E: $38 $42

    add hl, bc                                    ; $5C90: $09
    cp [hl]                                       ; $5C91: $BE
    ld e, c                                       ; $5C92: $59
    ld a, [bc]                                    ; $5C93: $0A
    add $41                                       ; $5C94: $C6 $41
    ld a, [bc]                                    ; $5C96: $0A
    ld e, e                                       ; $5C97: $5B
    ld e, h                                       ; $5C98: $5C
    dec bc                                        ; $5C99: $0B
    add b                                         ; $5C9A: $80
    ld b, d                                       ; $5C9B: $42
    dec bc                                        ; $5C9C: $0B
    jr z, @+$60                                   ; $5C9D: $28 $5E

    rlca                                          ; $5C9F: $07
    sub [hl]                                      ; $5CA0: $96
    ld b, d                                       ; $5CA1: $42
    rlca                                          ; $5CA2: $07
    db $DD                                        ; $5CA3: $DD
    ld e, b                                       ; $5CA4: $58
    ld [$41E2], sp                                ; $5CA5: $08 $E2 $41
    ld [$5E0E], sp                                ; $5CA8: $08 $0E $5E
    add hl, bc                                    ; $5CAB: $09
    xor $41                                       ; $5CAC: $EE $41
    add hl, bc                                    ; $5CAE: $09
    ld [hl], h                                    ; $5CAF: $74
    ld e, c                                       ; $5CB0: $59
    ld a, [bc]                                    ; $5CB1: $0A
    adc h                                         ; $5CB2: $8C
    ld b, c                                       ; $5CB3: $41
    ld a, [bc]                                    ; $5CB4: $0A
    ld de, $0B5C                                  ; $5CB5: $11 $5C $0B
    ld l, $42                                     ; $5CB8: $2E $42
    dec bc                                        ; $5CBA: $0B
    and [hl]                                      ; $5CBB: $A6
    ld e, l                                       ; $5CBC: $5D
    rlca                                          ; $5CBD: $07
    sub $42                                       ; $5CBE: $D6 $42
    rlca                                          ; $5CC0: $07
    dec a                                         ; $5CC1: $3D
    ld e, c                                       ; $5CC2: $59
    ld [$421A], sp                                ; $5CC3: $08 $1A $42
    ld [$5E2E], sp                                ; $5CC6: $08 $2E $5E
    add hl, bc                                    ; $5CC9: $09
    ld e, $42                                     ; $5CCA: $1E $42
    add hl, bc                                    ; $5CCC: $09
    and h                                         ; $5CCD: $A4
    ld e, c                                       ; $5CCE: $59
    ld a, [bc]                                    ; $5CCF: $0A
    xor h                                         ; $5CD0: $AC
    ld b, c                                       ; $5CD1: $41

jr_03E_5CD2:
    ld a, [bc]                                    ; $5CD2: $0A
    ld b, c                                       ; $5CD3: $41
    ld e, h                                       ; $5CD4: $5C
    dec bc                                        ; $5CD5: $0B
    ld h, [hl]                                    ; $5CD6: $66
    ld b, d                                       ; $5CD7: $42
    dec bc                                        ; $5CD8: $0B
    ld c, $5E                                     ; $5CD9: $0E $5E

Call_03E_5CDB:
    push hl                                       ; $5CDB: $E5
    pop hl                                        ; $5CDC: $E1
    push hl                                       ; $5CDD: $E5
    ld de, $0029                                  ; $5CDE: $11 $29 $00
    add hl, de                                    ; $5CE1: $19
    ld a, [hl]                                    ; $5CE2: $7E
    and $0F                                       ; $5CE3: $E6 $0F
    ld e, a                                       ; $5CE5: $5F
    add a                                         ; $5CE6: $87
    add e                                         ; $5CE7: $83
    ld e, a                                       ; $5CE8: $5F
    ld d, $00                                     ; $5CE9: $16 $00
    ld hl, $5CF0                                  ; $5CEB: $21 $F0 $5C
    add hl, de                                    ; $5CEE: $19
    jp hl                                         ; $5CEF: $E9


    jp Jump_03E_5D20                              ; $5CF0: $C3 $20 $5D


    jp Jump_03E_5D7D                              ; $5CF3: $C3 $7D $5D


    jp Jump_03E_5DB6                              ; $5CF6: $C3 $B6 $5D


    jp Jump_03E_5DF9                              ; $5CF9: $C3 $F9 $5D


    jp Jump_03E_5E32                              ; $5CFC: $C3 $32 $5E


    jp Jump_03E_5E86                              ; $5CFF: $C3 $86 $5E


    jp Jump_03E_5EC0                              ; $5D02: $C3 $C0 $5E


    jp Jump_03E_5EE2                              ; $5D05: $C3 $E2 $5E


    jp Jump_03E_5F04                              ; $5D08: $C3 $04 $5F


    jp Jump_03E_5F7D                              ; $5D0B: $C3 $7D $5F


    jp Jump_03E_5D20                              ; $5D0E: $C3 $20 $5D


    jp Jump_03E_5D20                              ; $5D11: $C3 $20 $5D


    jp Jump_03E_5D20                              ; $5D14: $C3 $20 $5D


    jp Jump_03E_5D20                              ; $5D17: $C3 $20 $5D


    jp Jump_03E_5D20                              ; $5D1A: $C3 $20 $5D


    jp Jump_03E_5D20                              ; $5D1D: $C3 $20 $5D


Jump_03E_5D20:
    pop de                                        ; $5D20: $D1
    push de                                       ; $5D21: $D5
    ld hl, $0029                                  ; $5D22: $21 $29 $00
    add hl, de                                    ; $5D25: $19
    ld a, [hl]                                    ; $5D26: $7E
    add a                                         ; $5D27: $87
    jr nc, jr_03E_5D60                            ; $5D28: $30 $36

    srl a                                         ; $5D2A: $CB $3F
    ld [hl], a                                    ; $5D2C: $77
    ld hl, $0008                                  ; $5D2D: $21 $08 $00
    add hl, de                                    ; $5D30: $19
    ld bc, $FF00                                  ; $5D31: $01 $00 $FF
    ld [hl], c                                    ; $5D34: $71
    inc hl                                        ; $5D35: $23
    ld [hl], b                                    ; $5D36: $70
    ld hl, $001D                                  ; $5D37: $21 $1D $00
    add hl, de                                    ; $5D3A: $19
    ld a, $07                                     ; $5D3B: $3E $07
    ld [hl], a                                    ; $5D3D: $77
    ld a, $B0                                     ; $5D3E: $3E $B0
    ld hl, $0004                                  ; $5D40: $21 $04 $00
    add hl, de                                    ; $5D43: $19
    ld [hl], a                                    ; $5D44: $77
    ld a, $60                                     ; $5D45: $3E $60
    ld hl, $0006                                  ; $5D47: $21 $06 $00
    add hl, de                                    ; $5D4A: $19
    ld [hl], a                                    ; $5D4B: $77
    ld a, $02                                     ; $5D4C: $3E $02
    ld hl, $002A                                  ; $5D4E: $21 $2A $00
    add hl, de                                    ; $5D51: $19
    ld [hl+], a                                   ; $5D52: $22
    ld a, $02                                     ; $5D53: $3E $02
    ld [hl+], a                                   ; $5D55: $22

Jump_03E_5D56:
    ld hl, $000A                                  ; $5D56: $21 $0A $00
    add hl, de                                    ; $5D59: $19
    ld bc, $FE80                                  ; $5D5A: $01 $80 $FE
    ld [hl], c                                    ; $5D5D: $71
    inc hl                                        ; $5D5E: $23
    ld [hl], b                                    ; $5D5F: $70

jr_03E_5D60:
    pop de                                        ; $5D60: $D1
    push de                                       ; $5D61: $D5
    ld hl, $000A                                  ; $5D62: $21 $0A $00
    add hl, de                                    ; $5D65: $19
    ld a, [hl]                                    ; $5D66: $7E
    add $08                                       ; $5D67: $C6 $08
    ld [hl], a                                    ; $5D69: $77
    jr z, jr_03E_5D6E                             ; $5D6A: $28 $02

    jr nc, jr_03E_5D70                            ; $5D6C: $30 $02

jr_03E_5D6E:
    inc hl                                        ; $5D6E: $23
    inc [hl]                                      ; $5D6F: $34

Jump_03E_5D70:
jr_03E_5D70:
    pop de                                        ; $5D70: $D1
    push de                                       ; $5D71: $D5
    call Call_03E_6192                            ; $5D72: $CD $92 $61
    call Call_03E_6186                            ; $5D75: $CD $86 $61
    call Call_03E_60FE                            ; $5D78: $CD $FE $60
    pop hl                                        ; $5D7B: $E1
    ret                                           ; $5D7C: $C9


Jump_03E_5D7D:
    pop de                                        ; $5D7D: $D1
    push de                                       ; $5D7E: $D5
    ld hl, $0029                                  ; $5D7F: $21 $29 $00
    add hl, de                                    ; $5D82: $19
    ld a, [hl]                                    ; $5D83: $7E
    add a                                         ; $5D84: $87
    jr nc, jr_03E_5D60                            ; $5D85: $30 $D9

    srl a                                         ; $5D87: $CB $3F
    ld [hl], a                                    ; $5D89: $77
    ld hl, $0008                                  ; $5D8A: $21 $08 $00
    add hl, de                                    ; $5D8D: $19
    ld bc, $0100                                  ; $5D8E: $01 $00 $01
    ld [hl], c                                    ; $5D91: $71
    inc hl                                        ; $5D92: $23
    ld [hl], b                                    ; $5D93: $70
    ld hl, $001D                                  ; $5D94: $21 $1D $00
    add hl, de                                    ; $5D97: $19
    ld a, $07                                     ; $5D98: $3E $07
    ld [hl], a                                    ; $5D9A: $77
    ld a, $F0                                     ; $5D9B: $3E $F0
    ld hl, $0004                                  ; $5D9D: $21 $04 $00
    add hl, de                                    ; $5DA0: $19
    ld [hl], a                                    ; $5DA1: $77
    ld a, $60                                     ; $5DA2: $3E $60
    ld hl, $0006                                  ; $5DA4: $21 $06 $00
    add hl, de                                    ; $5DA7: $19
    ld [hl], a                                    ; $5DA8: $77
    ld a, $03                                     ; $5DA9: $3E $03
    ld hl, $002A                                  ; $5DAB: $21 $2A $00
    add hl, de                                    ; $5DAE: $19
    ld [hl+], a                                   ; $5DAF: $22
    ld a, $22                                     ; $5DB0: $3E $22
    ld [hl+], a                                   ; $5DB2: $22
    jp Jump_03E_5D56                              ; $5DB3: $C3 $56 $5D


Jump_03E_5DB6:
    pop de                                        ; $5DB6: $D1
    push de                                       ; $5DB7: $D5
    ld hl, $0029                                  ; $5DB8: $21 $29 $00
    add hl, de                                    ; $5DBB: $19
    ld a, [hl]                                    ; $5DBC: $7E
    add a                                         ; $5DBD: $87
    jr nc, jr_03E_5DF6                            ; $5DBE: $30 $36

    srl a                                         ; $5DC0: $CB $3F
    ld [hl], a                                    ; $5DC2: $77
    ld hl, $0008                                  ; $5DC3: $21 $08 $00
    add hl, de                                    ; $5DC6: $19
    ld bc, $FF00                                  ; $5DC7: $01 $00 $FF
    ld [hl], c                                    ; $5DCA: $71
    inc hl                                        ; $5DCB: $23
    ld [hl], b                                    ; $5DCC: $70
    ld hl, $001D                                  ; $5DCD: $21 $1D $00
    add hl, de                                    ; $5DD0: $19
    ld a, $03                                     ; $5DD1: $3E $03
    ld [hl], a                                    ; $5DD3: $77

Jump_03E_5DD4:
    ld a, $B0                                     ; $5DD4: $3E $B0
    ld hl, $0004                                  ; $5DD6: $21 $04 $00
    add hl, de                                    ; $5DD9: $19
    ld [hl], a                                    ; $5DDA: $77
    ld a, $70                                     ; $5DDB: $3E $70
    ld hl, $0006                                  ; $5DDD: $21 $06 $00
    add hl, de                                    ; $5DE0: $19
    ld [hl], a                                    ; $5DE1: $77
    ld a, $04                                     ; $5DE2: $3E $04
    ld hl, $002A                                  ; $5DE4: $21 $2A $00
    add hl, de                                    ; $5DE7: $19
    ld [hl+], a                                   ; $5DE8: $22
    ld a, $82                                     ; $5DE9: $3E $82
    ld [hl+], a                                   ; $5DEB: $22

Jump_03E_5DEC:
    ld hl, $000A                                  ; $5DEC: $21 $0A $00
    add hl, de                                    ; $5DEF: $19
    ld bc, $0000                                  ; $5DF0: $01 $00 $00
    ld [hl], c                                    ; $5DF3: $71
    inc hl                                        ; $5DF4: $23
    ld [hl], b                                    ; $5DF5: $70

Jump_03E_5DF6:
jr_03E_5DF6:
    jp Jump_03E_5D70                              ; $5DF6: $C3 $70 $5D


Jump_03E_5DF9:
    pop de                                        ; $5DF9: $D1
    push de                                       ; $5DFA: $D5
    ld hl, $0029                                  ; $5DFB: $21 $29 $00
    add hl, de                                    ; $5DFE: $19
    ld a, [hl]                                    ; $5DFF: $7E
    add a                                         ; $5E00: $87
    jr nc, jr_03E_5DF6                            ; $5E01: $30 $F3

    srl a                                         ; $5E03: $CB $3F
    ld [hl], a                                    ; $5E05: $77
    ld hl, $0008                                  ; $5E06: $21 $08 $00
    add hl, de                                    ; $5E09: $19
    ld bc, $0100                                  ; $5E0A: $01 $00 $01
    ld [hl], c                                    ; $5E0D: $71
    inc hl                                        ; $5E0E: $23
    ld [hl], b                                    ; $5E0F: $70
    ld hl, $001D                                  ; $5E10: $21 $1D $00
    add hl, de                                    ; $5E13: $19
    ld a, $03                                     ; $5E14: $3E $03
    ld [hl], a                                    ; $5E16: $77

Jump_03E_5E17:
    ld a, $F0                                     ; $5E17: $3E $F0
    ld hl, $0004                                  ; $5E19: $21 $04 $00
    add hl, de                                    ; $5E1C: $19
    ld [hl], a                                    ; $5E1D: $77
    ld a, $70                                     ; $5E1E: $3E $70
    ld hl, $0006                                  ; $5E20: $21 $06 $00
    add hl, de                                    ; $5E23: $19
    ld [hl], a                                    ; $5E24: $77
    ld a, $05                                     ; $5E25: $3E $05
    ld hl, $002A                                  ; $5E27: $21 $2A $00
    add hl, de                                    ; $5E2A: $19
    ld [hl+], a                                   ; $5E2B: $22
    ld a, $A2                                     ; $5E2C: $3E $A2
    ld [hl+], a                                   ; $5E2E: $22
    jp Jump_03E_5DEC                              ; $5E2F: $C3 $EC $5D


Jump_03E_5E32:
    pop de                                        ; $5E32: $D1
    push de                                       ; $5E33: $D5
    ld hl, $0029                                  ; $5E34: $21 $29 $00
    add hl, de                                    ; $5E37: $19
    ld a, [hl]                                    ; $5E38: $7E
    add a                                         ; $5E39: $87
    jp nc, Jump_03E_5E73                          ; $5E3A: $D2 $73 $5E

    srl a                                         ; $5E3D: $CB $3F
    ld [hl], a                                    ; $5E3F: $77
    ld hl, $0008                                  ; $5E40: $21 $08 $00
    add hl, de                                    ; $5E43: $19
    ld bc, $FE00                                  ; $5E44: $01 $00 $FE
    ld [hl], c                                    ; $5E47: $71
    inc hl                                        ; $5E48: $23
    ld [hl], b                                    ; $5E49: $70
    ld hl, $001D                                  ; $5E4A: $21 $1D $00
    add hl, de                                    ; $5E4D: $19
    ld a, $03                                     ; $5E4E: $3E $03
    ld [hl], a                                    ; $5E50: $77
    ld a, $B0                                     ; $5E51: $3E $B0
    ld hl, $0004                                  ; $5E53: $21 $04 $00
    add hl, de                                    ; $5E56: $19
    ld [hl], a                                    ; $5E57: $77
    ld a, $60                                     ; $5E58: $3E $60
    ld hl, $0006                                  ; $5E5A: $21 $06 $00
    add hl, de                                    ; $5E5D: $19
    ld [hl], a                                    ; $5E5E: $77
    ld a, $02                                     ; $5E5F: $3E $02
    ld hl, $002A                                  ; $5E61: $21 $2A $00
    add hl, de                                    ; $5E64: $19
    ld [hl+], a                                   ; $5E65: $22
    ld a, $02                                     ; $5E66: $3E $02
    ld [hl+], a                                   ; $5E68: $22

Jump_03E_5E69:
    ld hl, $000A                                  ; $5E69: $21 $0A $00
    add hl, de                                    ; $5E6C: $19
    ld bc, $FCC0                                  ; $5E6D: $01 $C0 $FC
    ld [hl], c                                    ; $5E70: $71
    inc hl                                        ; $5E71: $23
    ld [hl], b                                    ; $5E72: $70

Jump_03E_5E73:
    pop de                                        ; $5E73: $D1
    push de                                       ; $5E74: $D5
    ld hl, $000A                                  ; $5E75: $21 $0A $00
    add hl, de                                    ; $5E78: $19
    ld a, [hl]                                    ; $5E79: $7E
    add $24                                       ; $5E7A: $C6 $24
    ld [hl], a                                    ; $5E7C: $77
    jr z, jr_03E_5E81                             ; $5E7D: $28 $02

    jr nc, jr_03E_5E83                            ; $5E7F: $30 $02

jr_03E_5E81:
    inc hl                                        ; $5E81: $23
    inc [hl]                                      ; $5E82: $34

jr_03E_5E83:
    jp Jump_03E_5D70                              ; $5E83: $C3 $70 $5D


Jump_03E_5E86:
    pop de                                        ; $5E86: $D1
    push de                                       ; $5E87: $D5
    ld hl, $0029                                  ; $5E88: $21 $29 $00
    add hl, de                                    ; $5E8B: $19
    ld a, [hl]                                    ; $5E8C: $7E
    add a                                         ; $5E8D: $87
    jp nc, Jump_03E_5E73                          ; $5E8E: $D2 $73 $5E

    srl a                                         ; $5E91: $CB $3F
    ld [hl], a                                    ; $5E93: $77
    ld hl, $0008                                  ; $5E94: $21 $08 $00
    add hl, de                                    ; $5E97: $19
    ld bc, $0200                                  ; $5E98: $01 $00 $02
    ld [hl], c                                    ; $5E9B: $71
    inc hl                                        ; $5E9C: $23
    ld [hl], b                                    ; $5E9D: $70
    ld hl, $001D                                  ; $5E9E: $21 $1D $00
    add hl, de                                    ; $5EA1: $19
    ld a, $03                                     ; $5EA2: $3E $03
    ld [hl], a                                    ; $5EA4: $77
    ld a, $F0                                     ; $5EA5: $3E $F0
    ld hl, $0004                                  ; $5EA7: $21 $04 $00
    add hl, de                                    ; $5EAA: $19
    ld [hl], a                                    ; $5EAB: $77
    ld a, $60                                     ; $5EAC: $3E $60
    ld hl, $0006                                  ; $5EAE: $21 $06 $00
    add hl, de                                    ; $5EB1: $19
    ld [hl], a                                    ; $5EB2: $77
    ld a, $03                                     ; $5EB3: $3E $03
    ld hl, $002A                                  ; $5EB5: $21 $2A $00
    add hl, de                                    ; $5EB8: $19
    ld [hl+], a                                   ; $5EB9: $22
    ld a, $22                                     ; $5EBA: $3E $22
    ld [hl+], a                                   ; $5EBC: $22
    jp Jump_03E_5E69                              ; $5EBD: $C3 $69 $5E


Jump_03E_5EC0:
    pop de                                        ; $5EC0: $D1
    push de                                       ; $5EC1: $D5
    ld hl, $0029                                  ; $5EC2: $21 $29 $00
    add hl, de                                    ; $5EC5: $19
    ld a, [hl]                                    ; $5EC6: $7E
    add a                                         ; $5EC7: $87
    jp nc, Jump_03E_5DF6                          ; $5EC8: $D2 $F6 $5D

    srl a                                         ; $5ECB: $CB $3F
    ld [hl], a                                    ; $5ECD: $77
    ld hl, $0008                                  ; $5ECE: $21 $08 $00
    add hl, de                                    ; $5ED1: $19
    ld bc, $FE00                                  ; $5ED2: $01 $00 $FE
    ld [hl], c                                    ; $5ED5: $71
    inc hl                                        ; $5ED6: $23
    ld [hl], b                                    ; $5ED7: $70
    ld hl, $001D                                  ; $5ED8: $21 $1D $00
    add hl, de                                    ; $5EDB: $19
    ld a, $01                                     ; $5EDC: $3E $01
    ld [hl], a                                    ; $5EDE: $77
    jp Jump_03E_5DD4                              ; $5EDF: $C3 $D4 $5D


Jump_03E_5EE2:
    pop de                                        ; $5EE2: $D1
    push de                                       ; $5EE3: $D5
    ld hl, $0029                                  ; $5EE4: $21 $29 $00
    add hl, de                                    ; $5EE7: $19
    ld a, [hl]                                    ; $5EE8: $7E
    add a                                         ; $5EE9: $87
    jp nc, Jump_03E_5DF6                          ; $5EEA: $D2 $F6 $5D

    srl a                                         ; $5EED: $CB $3F
    ld [hl], a                                    ; $5EEF: $77
    ld hl, $0008                                  ; $5EF0: $21 $08 $00
    add hl, de                                    ; $5EF3: $19
    ld bc, $0200                                  ; $5EF4: $01 $00 $02
    ld [hl], c                                    ; $5EF7: $71
    inc hl                                        ; $5EF8: $23
    ld [hl], b                                    ; $5EF9: $70
    ld hl, $001D                                  ; $5EFA: $21 $1D $00
    add hl, de                                    ; $5EFD: $19
    ld a, $01                                     ; $5EFE: $3E $01
    ld [hl], a                                    ; $5F00: $77
    jp Jump_03E_5E17                              ; $5F01: $C3 $17 $5E


Jump_03E_5F04:
    pop de                                        ; $5F04: $D1
    push de                                       ; $5F05: $D5
    ld hl, $0029                                  ; $5F06: $21 $29 $00
    add hl, de                                    ; $5F09: $19
    ld a, [hl]                                    ; $5F0A: $7E
    add a                                         ; $5F0B: $87
    jr nc, jr_03E_5F60                            ; $5F0C: $30 $52

    srl a                                         ; $5F0E: $CB $3F
    ld [hl], a                                    ; $5F10: $77
    ld hl, $0002                                  ; $5F11: $21 $02 $00
    add hl, de                                    ; $5F14: $19
    ld a, $03                                     ; $5F15: $3E $03
    ld [hl], a                                    ; $5F17: $77
    ld hl, $0003                                  ; $5F18: $21 $03 $00
    add hl, de                                    ; $5F1B: $19
    ld [hl], a                                    ; $5F1C: $77
    ld bc, $5A55                                  ; $5F1D: $01 $55 $5A
    ld hl, $0012                                  ; $5F20: $21 $12 $00
    add hl, de                                    ; $5F23: $19
    ld [hl], c                                    ; $5F24: $71
    inc hl                                        ; $5F25: $23
    ld [hl], b                                    ; $5F26: $70
    ld hl, $0014                                  ; $5F27: $21 $14 $00
    add hl, de                                    ; $5F2A: $19
    xor a                                         ; $5F2B: $AF
    ld [hl], a                                    ; $5F2C: $77
    ld hl, $0008                                  ; $5F2D: $21 $08 $00
    add hl, de                                    ; $5F30: $19
    ld bc, $FF10                                  ; $5F31: $01 $10 $FF
    ld [hl], c                                    ; $5F34: $71
    inc hl                                        ; $5F35: $23
    ld [hl], b                                    ; $5F36: $70
    ld hl, $001D                                  ; $5F37: $21 $1D $00
    add hl, de                                    ; $5F3A: $19
    ld a, $FF                                     ; $5F3B: $3E $FF
    ld [hl], a                                    ; $5F3D: $77
    ld a, $B0                                     ; $5F3E: $3E $B0
    ld hl, $0004                                  ; $5F40: $21 $04 $00
    add hl, de                                    ; $5F43: $19
    ld [hl], a                                    ; $5F44: $77
    ld a, $40                                     ; $5F45: $3E $40
    ld hl, $0006                                  ; $5F47: $21 $06 $00
    add hl, de                                    ; $5F4A: $19
    ld [hl], a                                    ; $5F4B: $77
    ld a, $02                                     ; $5F4C: $3E $02
    ld hl, $002A                                  ; $5F4E: $21 $2A $00
    add hl, de                                    ; $5F51: $19
    ld [hl+], a                                   ; $5F52: $22
    ld a, $02                                     ; $5F53: $3E $02
    ld [hl+], a                                   ; $5F55: $22
    ld hl, $000A                                  ; $5F56: $21 $0A $00
    add hl, de                                    ; $5F59: $19
    ld bc, $FF30                                  ; $5F5A: $01 $30 $FF
    ld [hl], c                                    ; $5F5D: $71
    inc hl                                        ; $5F5E: $23
    ld [hl], b                                    ; $5F5F: $70

jr_03E_5F60:
    pop de                                        ; $5F60: $D1
    push de                                       ; $5F61: $D5
    ld hl, $000A                                  ; $5F62: $21 $0A $00
    add hl, de                                    ; $5F65: $19
    ld a, [hl]                                    ; $5F66: $7E
    add $06                                       ; $5F67: $C6 $06
    ld [hl], a                                    ; $5F69: $77
    jr z, jr_03E_5F6E                             ; $5F6A: $28 $02

    jr nc, jr_03E_5F70                            ; $5F6C: $30 $02

jr_03E_5F6E:
    inc hl                                        ; $5F6E: $23
    inc [hl]                                      ; $5F6F: $34

jr_03E_5F70:
    pop de                                        ; $5F70: $D1
    push de                                       ; $5F71: $D5
    call Call_03E_6192                            ; $5F72: $CD $92 $61
    call Call_03E_6186                            ; $5F75: $CD $86 $61
    call Call_03E_5FF6                            ; $5F78: $CD $F6 $5F
    pop hl                                        ; $5F7B: $E1
    ret                                           ; $5F7C: $C9


Jump_03E_5F7D:
    pop de                                        ; $5F7D: $D1
    push de                                       ; $5F7E: $D5
    ld hl, $0029                                  ; $5F7F: $21 $29 $00
    add hl, de                                    ; $5F82: $19
    ld a, [hl]                                    ; $5F83: $7E
    add a                                         ; $5F84: $87
    jr nc, jr_03E_5FD9                            ; $5F85: $30 $52

    srl a                                         ; $5F87: $CB $3F
    ld [hl], a                                    ; $5F89: $77
    ld hl, $0002                                  ; $5F8A: $21 $02 $00
    add hl, de                                    ; $5F8D: $19
    ld a, $04                                     ; $5F8E: $3E $04
    ld [hl], a                                    ; $5F90: $77
    ld hl, $0003                                  ; $5F91: $21 $03 $00
    add hl, de                                    ; $5F94: $19
    ld [hl], a                                    ; $5F95: $77
    ld bc, $5A89                                  ; $5F96: $01 $89 $5A
    ld hl, $0012                                  ; $5F99: $21 $12 $00
    add hl, de                                    ; $5F9C: $19
    ld [hl], c                                    ; $5F9D: $71
    inc hl                                        ; $5F9E: $23
    ld [hl], b                                    ; $5F9F: $70
    ld hl, $0014                                  ; $5FA0: $21 $14 $00
    add hl, de                                    ; $5FA3: $19
    xor a                                         ; $5FA4: $AF
    ld [hl], a                                    ; $5FA5: $77
    ld hl, $0008                                  ; $5FA6: $21 $08 $00
    add hl, de                                    ; $5FA9: $19
    ld bc, $00F0                                  ; $5FAA: $01 $F0 $00
    ld [hl], c                                    ; $5FAD: $71
    inc hl                                        ; $5FAE: $23
    ld [hl], b                                    ; $5FAF: $70
    ld hl, $001D                                  ; $5FB0: $21 $1D $00
    add hl, de                                    ; $5FB3: $19
    ld a, $FF                                     ; $5FB4: $3E $FF
    ld [hl], a                                    ; $5FB6: $77
    ld a, $F0                                     ; $5FB7: $3E $F0
    ld hl, $0004                                  ; $5FB9: $21 $04 $00
    add hl, de                                    ; $5FBC: $19
    ld [hl], a                                    ; $5FBD: $77
    ld a, $40                                     ; $5FBE: $3E $40
    ld hl, $0006                                  ; $5FC0: $21 $06 $00
    add hl, de                                    ; $5FC3: $19
    ld [hl], a                                    ; $5FC4: $77
    ld a, $03                                     ; $5FC5: $3E $03
    ld hl, $002A                                  ; $5FC7: $21 $2A $00
    add hl, de                                    ; $5FCA: $19
    ld [hl+], a                                   ; $5FCB: $22
    ld a, $22                                     ; $5FCC: $3E $22
    ld [hl+], a                                   ; $5FCE: $22
    ld hl, $000A                                  ; $5FCF: $21 $0A $00
    add hl, de                                    ; $5FD2: $19
    ld bc, $FF30                                  ; $5FD3: $01 $30 $FF
    ld [hl], c                                    ; $5FD6: $71
    inc hl                                        ; $5FD7: $23
    ld [hl], b                                    ; $5FD8: $70

jr_03E_5FD9:
    pop de                                        ; $5FD9: $D1
    push de                                       ; $5FDA: $D5
    ld hl, $000A                                  ; $5FDB: $21 $0A $00
    add hl, de                                    ; $5FDE: $19
    ld a, [hl]                                    ; $5FDF: $7E
    add $06                                       ; $5FE0: $C6 $06
    ld [hl], a                                    ; $5FE2: $77
    jr z, jr_03E_5FE7                             ; $5FE3: $28 $02

    jr nc, jr_03E_5FE9                            ; $5FE5: $30 $02

jr_03E_5FE7:
    inc hl                                        ; $5FE7: $23
    inc [hl]                                      ; $5FE8: $34

jr_03E_5FE9:
    pop de                                        ; $5FE9: $D1
    push de                                       ; $5FEA: $D5
    call Call_03E_6192                            ; $5FEB: $CD $92 $61
    call Call_03E_6186                            ; $5FEE: $CD $86 $61
    call Call_03E_607A                            ; $5FF1: $CD $7A $60
    pop hl                                        ; $5FF4: $E1
    ret                                           ; $5FF5: $C9


Call_03E_5FF6:
    ld hl, $002F                                  ; $5FF6: $21 $2F $00
    add hl, de                                    ; $5FF9: $19
    ld a, [hl]                                    ; $5FFA: $7E
    or a                                          ; $5FFB: $B7
    ret nz                                        ; $5FFC: $C0

    ld hl, $0009                                  ; $5FFD: $21 $09 $00
    add hl, de                                    ; $6000: $19
    ld a, [hl]                                    ; $6001: $7E
    add a                                         ; $6002: $87
    jr nc, jr_03E_6010                            ; $6003: $30 $0B

    ld hl, $0004                                  ; $6005: $21 $04 $00
    add hl, de                                    ; $6008: $19
    ld a, [hl]                                    ; $6009: $7E
    cp $56                                        ; $600A: $FE $56
    jr nc, jr_03E_6079                            ; $600C: $30 $6B

    jr jr_03E_601B                                ; $600E: $18 $0B

jr_03E_6010:
    ld hl, $0004                                  ; $6010: $21 $04 $00
    add hl, de                                    ; $6013: $19
    ld a, [hl]                                    ; $6014: $7E
    add $20                                       ; $6015: $C6 $20
    cp $6A                                        ; $6017: $FE $6A
    jr c, jr_03E_6079                             ; $6019: $38 $5E

jr_03E_601B:
    ld hl, $002A                                  ; $601B: $21 $2A $00
    add hl, de                                    ; $601E: $19
    ld a, [hl]                                    ; $601F: $7E
    ld l, a                                       ; $6020: $6F
    ld a, [$D6AA]                                 ; $6021: $FA $AA $D6
    cp l                                          ; $6024: $BD
    jr z, jr_03E_6043                             ; $6025: $28 $1C

    ld hl, $002B                                  ; $6027: $21 $2B $00
    add hl, de                                    ; $602A: $19
    ld a, [hl]                                    ; $602B: $7E
    ld [$D6AB], a                                 ; $602C: $EA $AB $D6
    xor a                                         ; $602F: $AF
    ld hl, $0008                                  ; $6030: $21 $08 $00
    add hl, de                                    ; $6033: $19
    ld [hl+], a                                   ; $6034: $22
    ld [hl], a                                    ; $6035: $77
    ld hl, $000B                                  ; $6036: $21 $0B $00
    add hl, de                                    ; $6039: $19
    inc [hl]                                      ; $603A: $34
    ld bc, $5A5B                                  ; $603B: $01 $5B $5A
    ld a, $B2                                     ; $603E: $3E $B2
    push af                                       ; $6040: $F5
    jr jr_03E_6061                                ; $6041: $18 $1E

jr_03E_6043:
    ld a, $05                                     ; $6043: $3E $05
    ld [$C34B], a                                 ; $6045: $EA $4B $C3
    ld a, $06                                     ; $6048: $3E $06
    ld b, $02                                     ; $604A: $06 $02
    ld c, $04                                     ; $604C: $0E $04
    call Call_000_189B                            ; $604E: $CD $9B $18
    ld hl, $0008                                  ; $6051: $21 $08 $00
    add hl, de                                    ; $6054: $19
    ld bc, $0120                                  ; $6055: $01 $20 $01
    ld [hl], c                                    ; $6058: $71
    inc hl                                        ; $6059: $23
    ld [hl], b                                    ; $605A: $70
    ld bc, $5A61                                  ; $605B: $01 $61 $5A
    ld a, $C4                                     ; $605E: $3E $C4
    push af                                       ; $6060: $F5

jr_03E_6061:
    ld hl, $0012                                  ; $6061: $21 $12 $00
    add hl, de                                    ; $6064: $19
    ld [hl], c                                    ; $6065: $71
    inc hl                                        ; $6066: $23
    ld [hl], b                                    ; $6067: $70
    ld hl, $002F                                  ; $6068: $21 $2F $00
    add hl, de                                    ; $606B: $19
    ld a, $FF                                     ; $606C: $3E $FF
    ld [hl], a                                    ; $606E: $77
    ld hl, $0014                                  ; $606F: $21 $14 $00
    add hl, de                                    ; $6072: $19
    xor a                                         ; $6073: $AF
    ld [hl], a                                    ; $6074: $77
    pop af                                        ; $6075: $F1
    call Call_000_1360                            ; $6076: $CD $60 $13

jr_03E_6079:
    ret                                           ; $6079: $C9


Call_03E_607A:
    ld hl, $002F                                  ; $607A: $21 $2F $00
    add hl, de                                    ; $607D: $19
    ld a, [hl]                                    ; $607E: $7E
    or a                                          ; $607F: $B7
    ret nz                                        ; $6080: $C0

    ld hl, $0009                                  ; $6081: $21 $09 $00
    add hl, de                                    ; $6084: $19
    ld a, [hl]                                    ; $6085: $7E
    add a                                         ; $6086: $87
    jr nc, jr_03E_6094                            ; $6087: $30 $0B

    ld hl, $0004                                  ; $6089: $21 $04 $00
    add hl, de                                    ; $608C: $19
    ld a, [hl]                                    ; $608D: $7E
    cp $56                                        ; $608E: $FE $56
    jr nc, jr_03E_60FD                            ; $6090: $30 $6B

    jr jr_03E_609F                                ; $6092: $18 $0B

jr_03E_6094:
    ld hl, $0004                                  ; $6094: $21 $04 $00
    add hl, de                                    ; $6097: $19
    ld a, [hl]                                    ; $6098: $7E
    add $20                                       ; $6099: $C6 $20
    cp $6A                                        ; $609B: $FE $6A
    jr c, jr_03E_60FD                             ; $609D: $38 $5E

jr_03E_609F:
    ld hl, $002A                                  ; $609F: $21 $2A $00
    add hl, de                                    ; $60A2: $19
    ld a, [hl]                                    ; $60A3: $7E
    ld l, a                                       ; $60A4: $6F
    ld a, [$D6AA]                                 ; $60A5: $FA $AA $D6
    cp l                                          ; $60A8: $BD
    jr z, jr_03E_60C7                             ; $60A9: $28 $1C

    ld hl, $002B                                  ; $60AB: $21 $2B $00
    add hl, de                                    ; $60AE: $19
    ld a, [hl]                                    ; $60AF: $7E
    ld [$D6AB], a                                 ; $60B0: $EA $AB $D6
    xor a                                         ; $60B3: $AF
    ld hl, $0008                                  ; $60B4: $21 $08 $00
    add hl, de                                    ; $60B7: $19
    ld [hl+], a                                   ; $60B8: $22
    ld [hl], a                                    ; $60B9: $77
    ld hl, $000B                                  ; $60BA: $21 $0B $00
    add hl, de                                    ; $60BD: $19
    inc [hl]                                      ; $60BE: $34
    ld bc, $5A8F                                  ; $60BF: $01 $8F $5A
    ld a, $B2                                     ; $60C2: $3E $B2
    push af                                       ; $60C4: $F5
    jr jr_03E_60E5                                ; $60C5: $18 $1E

jr_03E_60C7:
    ld a, $05                                     ; $60C7: $3E $05
    ld [$C34B], a                                 ; $60C9: $EA $4B $C3
    ld a, $06                                     ; $60CC: $3E $06
    ld b, $02                                     ; $60CE: $06 $02
    ld c, $04                                     ; $60D0: $0E $04
    call Call_000_189B                            ; $60D2: $CD $9B $18
    ld hl, $0008                                  ; $60D5: $21 $08 $00
    add hl, de                                    ; $60D8: $19
    ld bc, $FEE0                                  ; $60D9: $01 $E0 $FE
    ld [hl], c                                    ; $60DC: $71
    inc hl                                        ; $60DD: $23
    ld [hl], b                                    ; $60DE: $70
    ld bc, $5A95                                  ; $60DF: $01 $95 $5A
    ld a, $C4                                     ; $60E2: $3E $C4
    push af                                       ; $60E4: $F5

jr_03E_60E5:
    ld hl, $0012                                  ; $60E5: $21 $12 $00
    add hl, de                                    ; $60E8: $19
    ld [hl], c                                    ; $60E9: $71
    inc hl                                        ; $60EA: $23
    ld [hl], b                                    ; $60EB: $70
    ld hl, $002F                                  ; $60EC: $21 $2F $00
    add hl, de                                    ; $60EF: $19
    ld a, $FF                                     ; $60F0: $3E $FF
    ld [hl], a                                    ; $60F2: $77
    ld hl, $0014                                  ; $60F3: $21 $14 $00
    add hl, de                                    ; $60F6: $19
    xor a                                         ; $60F7: $AF
    ld [hl], a                                    ; $60F8: $77
    pop af                                        ; $60F9: $F1
    call Call_000_1360                            ; $60FA: $CD $60 $13

jr_03E_60FD:
    ret                                           ; $60FD: $C9


Call_03E_60FE:
    ld hl, $002F                                  ; $60FE: $21 $2F $00
    add hl, de                                    ; $6101: $19
    ld a, [hl]                                    ; $6102: $7E
    or a                                          ; $6103: $B7
    ret nz                                        ; $6104: $C0

    ld hl, $0009                                  ; $6105: $21 $09 $00
    add hl, de                                    ; $6108: $19
    ld a, [hl]                                    ; $6109: $7E
    add a                                         ; $610A: $87
    jr nc, jr_03E_6118                            ; $610B: $30 $0B

    ld hl, $0004                                  ; $610D: $21 $04 $00
    add hl, de                                    ; $6110: $19
    ld a, [hl]                                    ; $6111: $7E
    cp $56                                        ; $6112: $FE $56
    jr nc, jr_03E_6185                            ; $6114: $30 $6F

    jr jr_03E_6123                                ; $6116: $18 $0B

jr_03E_6118:
    ld hl, $0004                                  ; $6118: $21 $04 $00
    add hl, de                                    ; $611B: $19
    ld a, [hl]                                    ; $611C: $7E
    add $20                                       ; $611D: $C6 $20
    cp $6A                                        ; $611F: $FE $6A
    jr c, jr_03E_6185                             ; $6121: $38 $62

jr_03E_6123:
    ld hl, $002A                                  ; $6123: $21 $2A $00
    add hl, de                                    ; $6126: $19
    ld a, [hl]                                    ; $6127: $7E
    ld l, a                                       ; $6128: $6F
    ld a, [$D6AA]                                 ; $6129: $FA $AA $D6
    cp l                                          ; $612C: $BD
    jr z, jr_03E_613F                             ; $612D: $28 $10

    ld hl, $002B                                  ; $612F: $21 $2B $00
    add hl, de                                    ; $6132: $19
    ld a, [hl]                                    ; $6133: $7E
    ld [$D6AB], a                                 ; $6134: $EA $AB $D6
    ld bc, $59B8                                  ; $6137: $01 $B8 $59
    ld a, $B2                                     ; $613A: $3E $B2
    push af                                       ; $613C: $F5
    jr jr_03E_615A                                ; $613D: $18 $1B

jr_03E_613F:
    ld a, $02                                     ; $613F: $3E $02
    ld [$C34B], a                                 ; $6141: $EA $4B $C3
    ld a, $08                                     ; $6144: $3E $08
    ld b, $02                                     ; $6146: $06 $02
    ld c, $04                                     ; $6148: $0E $04
    call Call_000_189B                            ; $614A: $CD $9B $18
    ld hl, $001D                                  ; $614D: $21 $1D $00
    add hl, de                                    ; $6150: $19
    ld a, $03                                     ; $6151: $3E $03
    ld [hl], a                                    ; $6153: $77
    ld bc, $59BE                                  ; $6154: $01 $BE $59
    ld a, $B1                                     ; $6157: $3E $B1
    push af                                       ; $6159: $F5

jr_03E_615A:
    ld hl, $0012                                  ; $615A: $21 $12 $00
    add hl, de                                    ; $615D: $19
    ld [hl], c                                    ; $615E: $71
    inc hl                                        ; $615F: $23
    ld [hl], b                                    ; $6160: $70
    ld hl, $002F                                  ; $6161: $21 $2F $00
    add hl, de                                    ; $6164: $19
    ld a, $FF                                     ; $6165: $3E $FF
    ld [hl], a                                    ; $6167: $77
    ld hl, $0014                                  ; $6168: $21 $14 $00
    add hl, de                                    ; $616B: $19
    xor a                                         ; $616C: $AF
    ld [hl], a                                    ; $616D: $77
    ld hl, $0008                                  ; $616E: $21 $08 $00
    add hl, de                                    ; $6171: $19
    ld [hl+], a                                   ; $6172: $22
    ld [hl], a                                    ; $6173: $77
    ld hl, $000B                                  ; $6174: $21 $0B $00
    add hl, de                                    ; $6177: $19
    inc [hl]                                      ; $6178: $34
    ld hl, $001C                                  ; $6179: $21 $1C $00
    add hl, de                                    ; $617C: $19
    ld a, $03                                     ; $617D: $3E $03
    ld [hl+], a                                   ; $617F: $22
    ld [hl], a                                    ; $6180: $77
    pop af                                        ; $6181: $F1
    call Call_000_1360                            ; $6182: $CD $60 $13

jr_03E_6185:
    ret                                           ; $6185: $C9


Call_03E_6186:
    ld hl, $0006                                  ; $6186: $21 $06 $00
    add hl, de                                    ; $6189: $19
    ld a, [hl]                                    ; $618A: $7E
    cp $90                                        ; $618B: $FE $90
    jr c, jr_03E_6191                             ; $618D: $38 $02

    xor a                                         ; $618F: $AF
    ld [de], a                                    ; $6190: $12

jr_03E_6191:
    ret                                           ; $6191: $C9


Call_03E_6192:
    ld hl, $0008                                  ; $6192: $21 $08 $00
    add hl, de                                    ; $6195: $19
    ld c, [hl]                                    ; $6196: $4E
    inc hl                                        ; $6197: $23
    ld b, [hl]                                    ; $6198: $46
    push de                                       ; $6199: $D5
    ld hl, $0004                                  ; $619A: $21 $04 $00
    add hl, de                                    ; $619D: $19
    ld d, [hl]                                    ; $619E: $56
    inc hl                                        ; $619F: $23
    ld e, [hl]                                    ; $61A0: $5E
    push hl                                       ; $61A1: $E5
    ld l, e                                       ; $61A2: $6B
    ld h, d                                       ; $61A3: $62
    add hl, bc                                    ; $61A4: $09
    ld e, l                                       ; $61A5: $5D
    ld d, h                                       ; $61A6: $54
    pop hl                                        ; $61A7: $E1
    ld [hl], e                                    ; $61A8: $73
    dec hl                                        ; $61A9: $2B
    ld [hl], d                                    ; $61AA: $72
    pop de                                        ; $61AB: $D1
    ld hl, $000A                                  ; $61AC: $21 $0A $00
    add hl, de                                    ; $61AF: $19
    ld c, [hl]                                    ; $61B0: $4E
    inc hl                                        ; $61B1: $23
    ld b, [hl]                                    ; $61B2: $46
    push de                                       ; $61B3: $D5
    ld hl, $0006                                  ; $61B4: $21 $06 $00
    add hl, de                                    ; $61B7: $19
    ld d, [hl]                                    ; $61B8: $56
    inc hl                                        ; $61B9: $23
    ld e, [hl]                                    ; $61BA: $5E
    push hl                                       ; $61BB: $E5
    ld l, e                                       ; $61BC: $6B
    ld h, d                                       ; $61BD: $62
    add hl, bc                                    ; $61BE: $09
    ld e, l                                       ; $61BF: $5D
    ld d, h                                       ; $61C0: $54
    pop hl                                        ; $61C1: $E1
    ld [hl], e                                    ; $61C2: $73
    dec hl                                        ; $61C3: $2B
    ld [hl], d                                    ; $61C4: $72
    pop de                                        ; $61C5: $D1
    ret                                           ; $61C6: $C9


    ld sp, $DD00                                  ; $61C7: $31 $00 $DD
    di                                            ; $61CA: $F3
    rst RST_10                                    ; $61CB: $D7
    ld hl, $C03A                                  ; $61CC: $21 $3A $C0
    res 1, [hl]                                   ; $61CF: $CB $8E
    ld a, $00                                     ; $61D1: $3E $00
    call Call_000_135D                            ; $61D3: $CD $5D $13
    xor a                                         ; $61D6: $AF
    ldh [rBGP], a                                 ; $61D7: $E0 $47
    ldh [rOBP0], a                                ; $61D9: $E0 $48
    ldh [rOBP1], a                                ; $61DB: $E0 $49
    call Call_000_13ED                            ; $61DD: $CD $ED $13
    call Call_000_0FBD                            ; $61E0: $CD $BD $0F
    call Call_000_0FC6                            ; $61E3: $CD $C6 $0F
    xor a                                         ; $61E6: $AF
    ldh [$FFE4], a                                ; $61E7: $E0 $E4
    ldh [$FFE2], a                                ; $61E9: $E0 $E2
    ld [$C2AA], a                                 ; $61EB: $EA $AA $C2
    ld a, $F0                                     ; $61EE: $3E $F0
    ld [$C2AC], a                                 ; $61F0: $EA $AC $C2
    call Call_03E_556B                            ; $61F3: $CD $6B $55
    call Call_000_0F9E                            ; $61F6: $CD $9E $0F
    ld hl, $D680                                  ; $61F9: $21 $80 $D6
    ld de, $24CF                                  ; $61FC: $11 $CF $24
    call Call_000_0F8E                            ; $61FF: $CD $8E $0F
    ld a, [$C31B]                                 ; $6202: $FA $1B $C3
    ld c, a                                       ; $6205: $4F
    add a                                         ; $6206: $87
    add c                                         ; $6207: $81
    ld hl, $5BCD                                  ; $6208: $21 $CD $5B
    ld e, a                                       ; $620B: $5F
    ld d, $00                                     ; $620C: $16 $00
    add hl, de                                    ; $620E: $19
    ld a, [hl+]                                   ; $620F: $2A
    ld e, [hl]                                    ; $6210: $5E
    inc hl                                        ; $6211: $23
    ld d, [hl]                                    ; $6212: $56
    ld hl, $D691                                  ; $6213: $21 $91 $D6
    ld [hl+], a                                   ; $6216: $22
    ld [hl], e                                    ; $6217: $73
    inc hl                                        ; $6218: $23
    ld [hl], d                                    ; $6219: $72
    ld hl, $D682                                  ; $621A: $21 $82 $D6
    ld [hl], $30                                  ; $621D: $36 $30
    ld hl, $D684                                  ; $621F: $21 $84 $D6
    ld [hl], $50                                  ; $6222: $36 $50
    ld hl, $D686                                  ; $6224: $21 $86 $D6
    ld [hl], $38                                  ; $6227: $36 $38
    ld hl, $D6A9                                  ; $6229: $21 $A9 $D6
    ld [hl], $FF                                  ; $622C: $36 $FF
    ld hl, $D680                                  ; $622E: $21 $80 $D6
    call Call_000_0DB5                            ; $6231: $CD $B5 $0D
    ld a, [$C31B]                                 ; $6234: $FA $1B $C3
    ld [$D6A9], a                                 ; $6237: $EA $A9 $D6
    ld hl, $D6C0                                  ; $623A: $21 $C0 $D6
    ld de, $5911                                  ; $623D: $11 $11 $59
    call Call_000_0F8E                            ; $6240: $CD $8E $0F
    ld a, $07                                     ; $6243: $3E $07
    ldh [rWX], a                                  ; $6245: $E0 $4B
    ld a, $80                                     ; $6247: $3E $80
    ldh [rWY], a                                  ; $6249: $E0 $4A
    ld a, $E7                                     ; $624B: $3E $E7
    rst RST_18                                    ; $624D: $DF
    xor a                                         ; $624E: $AF
    ldh [rSTAT], a                                ; $624F: $E0 $41
    ei                                            ; $6251: $FB
    ld de, $66A2                                  ; $6252: $11 $A2 $66
    ld hl, $C329                                  ; $6255: $21 $29 $C3
    ld c, $30                                     ; $6258: $0E $30

jr_03E_625A:
    ld a, [de]                                    ; $625A: $1A
    inc de                                        ; $625B: $13
    ld [hl+], a                                   ; $625C: $22
    dec c                                         ; $625D: $0D
    jr nz, jr_03E_625A                            ; $625E: $20 $FA

    call Call_000_0430                            ; $6260: $CD $30 $04
    call Call_000_0430                            ; $6263: $CD $30 $04
    ld a, $1B                                     ; $6266: $3E $1B
    ldh [rBGP], a                                 ; $6268: $E0 $47
    ld a, $1F                                     ; $626A: $3E $1F
    ldh [rOBP0], a                                ; $626C: $E0 $48
    ld a, $4F                                     ; $626E: $3E $4F
    ldh [rOBP1], a                                ; $6270: $E0 $49
    call Call_000_147A                            ; $6272: $CD $7A $14

Jump_03E_6275:
    ld a, [$D6C0]                                 ; $6275: $FA $C0 $D6
    add a                                         ; $6278: $87
    jr nc, jr_03E_6292                            ; $6279: $30 $17

    ld hl, $D6C0                                  ; $627B: $21 $C0 $D6
    call Call_000_0DD4                            ; $627E: $CD $D4 $0D
    ld a, [$D6C0]                                 ; $6281: $FA $C0 $D6
    bit 4, a                                      ; $6284: $CB $67
    jr z, jr_03E_6292                             ; $6286: $28 $0A

    xor a                                         ; $6288: $AF
    ld [$D6C0], a                                 ; $6289: $EA $C0 $D6
    ld a, [$C312]                                 ; $628C: $FA $12 $C3
    call Call_000_135D                            ; $628F: $CD $5D $13

jr_03E_6292:
    call Call_03E_6903                            ; $6292: $CD $03 $69
    ld hl, $D680                                  ; $6295: $21 $80 $D6
    call Call_03E_667F                            ; $6298: $CD $7F $66
    ld a, [$C352]                                 ; $629B: $FA $52 $C3
    or a                                          ; $629E: $B7
    jp z, Jump_03E_62B1                           ; $629F: $CA $B1 $62

    dec a                                         ; $62A2: $3D
    ld [$C352], a                                 ; $62A3: $EA $52 $C3
    jp nz, Jump_03E_62CA                          ; $62A6: $C2 $CA $62

    ld a, $FF                                     ; $62A9: $3E $FF
    ld [$C350], a                                 ; $62AB: $EA $50 $C3
    jp Jump_03E_62CA                              ; $62AE: $C3 $CA $62


Jump_03E_62B1:
    ld a, [$D6AF]                                 ; $62B1: $FA $AF $D6
    or a                                          ; $62B4: $B7
    jp z, Jump_03E_62C0                           ; $62B5: $CA $C0 $62

    ld a, $78                                     ; $62B8: $3E $78
    ld [$C352], a                                 ; $62BA: $EA $52 $C3
    jp Jump_03E_62CA                              ; $62BD: $C3 $CA $62


Jump_03E_62C0:
    ld a, [$D6B4]                                 ; $62C0: $FA $B4 $D6
    or a                                          ; $62C3: $B7
    jp nz, Jump_03E_62CA                          ; $62C4: $C2 $CA $62

    call Call_03E_6535                            ; $62C7: $CD $35 $65

Jump_03E_62CA:
    ld hl, $D700                                  ; $62CA: $21 $00 $D7
    ld c, $04                                     ; $62CD: $0E $04

jr_03E_62CF:
    push bc                                       ; $62CF: $C5
    push hl                                       ; $62D0: $E5
    ld a, [hl]                                    ; $62D1: $7E
    add a                                         ; $62D2: $87
    jr nc, jr_03E_62DB                            ; $62D3: $30 $06

    call Call_03E_5CDB                            ; $62D5: $CD $DB $5C
    call Call_03E_667F                            ; $62D8: $CD $7F $66

jr_03E_62DB:
    pop hl                                        ; $62DB: $E1
    ld de, $0040                                  ; $62DC: $11 $40 $00
    add hl, de                                    ; $62DF: $19
    pop bc                                        ; $62E0: $C1
    dec c                                         ; $62E1: $0D
    jr nz, jr_03E_62CF                            ; $62E2: $20 $EB

    call Call_03E_65E7                            ; $62E4: $CD $E7 $65
    ld hl, $C329                                  ; $62E7: $21 $29 $C3
    ld e, [hl]                                    ; $62EA: $5E
    inc hl                                        ; $62EB: $23
    ld d, [hl]                                    ; $62EC: $56
    inc de                                        ; $62ED: $13
    ld [hl], d                                    ; $62EE: $72
    dec hl                                        ; $62EF: $2B
    ld [hl], e                                    ; $62F0: $73
    call Call_000_0424                            ; $62F1: $CD $24 $04
    ld a, [$C350]                                 ; $62F4: $FA $50 $C3
    or a                                          ; $62F7: $B7
    jp nz, Jump_03E_63C7                          ; $62F8: $C2 $C7 $63

    ldh a, [$FF99]                                ; $62FB: $F0 $99
    ld e, a                                       ; $62FD: $5F
    ldh a, [$FFAC]                                ; $62FE: $F0 $AC
    or e                                          ; $6300: $B3
    ld e, a                                       ; $6301: $5F
    bit 7, a                                      ; $6302: $CB $7F
    jp nz, Jump_03E_630A                          ; $6304: $C2 $0A $63

    jp Jump_03E_6275                              ; $6307: $C3 $75 $62


Jump_03E_630A:
    ld e, $00                                     ; $630A: $1E $00
    ld d, $00                                     ; $630C: $16 $00
    ld hl, $9C00                                  ; $630E: $21 $00 $9C
    ld b, $14                                     ; $6311: $06 $14
    ld c, $02                                     ; $6313: $0E $02
    call Call_000_10EA                            ; $6315: $CD $EA $10
    ld e, $00                                     ; $6318: $1E $00
    ld d, $C0                                     ; $631A: $16 $C0
    ld hl, $9C05                                  ; $631C: $21 $05 $9C
    ld b, $04                                     ; $631F: $06 $04
    ld c, $02                                     ; $6321: $0E $02
    call Call_000_1139                            ; $6323: $CD $39 $11
    ld e, $00                                     ; $6326: $1E $00
    ld d, $C8                                     ; $6328: $16 $C8
    ld hl, $9C0D                                  ; $632A: $21 $0D $9C
    ld b, $03                                     ; $632D: $06 $03
    ld c, $02                                     ; $632F: $0E $02
    call Call_000_1139                            ; $6331: $CD $39 $11
    xor a                                         ; $6334: $AF
    ld [$C351], a                                 ; $6335: $EA $51 $C3

jr_03E_6338:
    ldh a, [$FF99]                                ; $6338: $F0 $99
    ld e, a                                       ; $633A: $5F
    ldh a, [$FFAC]                                ; $633B: $F0 $AC
    or e                                          ; $633D: $B3
    bit 4, a                                      ; $633E: $CB $67
    jr nz, jr_03E_63A1                            ; $6340: $20 $5F

    and $03                                       ; $6342: $E6 $03
    jr z, jr_03E_6361                             ; $6344: $28 $1B

    ld a, [$C351]                                 ; $6346: $FA $51 $C3
    cpl                                           ; $6349: $2F
    ld [$C351], a                                 ; $634A: $EA $51 $C3
    ld hl, $9C04                                  ; $634D: $21 $04 $9C
    or a                                          ; $6350: $B7
    jr nz, jr_03E_6356                            ; $6351: $20 $03

    ld hl, $9C0C                                  ; $6353: $21 $0C $9C

jr_03E_6356:
    ld e, $00                                     ; $6356: $1E $00
    ld d, $00                                     ; $6358: $16 $00
    ld b, $01                                     ; $635A: $06 $01
    ld c, $02                                     ; $635C: $0E $02
    call Call_000_10EA                            ; $635E: $CD $EA $10

jr_03E_6361:
    ld a, [$C329]                                 ; $6361: $FA $29 $C3
    ld e, a                                       ; $6364: $5F
    and $07                                       ; $6365: $E6 $07
    jr nz, jr_03E_6392                            ; $6367: $20 $29

    ld hl, $9C04                                  ; $6369: $21 $04 $9C
    ld a, [$C351]                                 ; $636C: $FA $51 $C3
    or a                                          ; $636F: $B7
    jr z, jr_03E_6375                             ; $6370: $28 $03

    ld hl, $9C0C                                  ; $6372: $21 $0C $9C

jr_03E_6375:
    ld a, e                                       ; $6375: $7B
    and $18                                       ; $6376: $E6 $18
    jr z, jr_03E_6387                             ; $6378: $28 $0D

    ld e, $00                                     ; $637A: $1E $00
    ld d, $CE                                     ; $637C: $16 $CE
    ld b, $01                                     ; $637E: $06 $01
    ld c, $02                                     ; $6380: $0E $02
    call Call_000_1139                            ; $6382: $CD $39 $11
    jr jr_03E_6392                                ; $6385: $18 $0B

jr_03E_6387:
    ld e, $00                                     ; $6387: $1E $00
    ld d, $00                                     ; $6389: $16 $00
    ld b, $01                                     ; $638B: $06 $01
    ld c, $02                                     ; $638D: $0E $02
    call Call_000_10EA                            ; $638F: $CD $EA $10

jr_03E_6392:
    ld hl, $C329                                  ; $6392: $21 $29 $C3
    ld e, [hl]                                    ; $6395: $5E
    inc hl                                        ; $6396: $23
    ld d, [hl]                                    ; $6397: $56
    inc de                                        ; $6398: $13
    ld [hl], d                                    ; $6399: $72
    dec hl                                        ; $639A: $2B
    ld [hl], e                                    ; $639B: $73
    call Call_000_0424                            ; $639C: $CD $24 $04
    jr jr_03E_6338                                ; $639F: $18 $97

jr_03E_63A1:
    ld e, $00                                     ; $63A1: $1E $00
    ld d, $00                                     ; $63A3: $16 $00
    ld hl, $9C00                                  ; $63A5: $21 $00 $9C
    ld b, $12                                     ; $63A8: $06 $12
    ld c, $02                                     ; $63AA: $0E $02
    call Call_000_10EA                            ; $63AC: $CD $EA $10
    ld e, $00                                     ; $63AF: $1E $00
    ld d, $74                                     ; $63B1: $16 $74
    ld hl, $9C0A                                  ; $63B3: $21 $0A $9C
    ld b, $04                                     ; $63B6: $06 $04
    ld c, $01                                     ; $63B8: $0E $01
    call Call_000_1111                            ; $63BA: $CD $11 $11
    call Call_03E_65E1                            ; $63BD: $CD $E1 $65
    ld a, [$C351]                                 ; $63C0: $FA $51 $C3
    or a                                          ; $63C3: $B7
    jp z, Jump_03E_6275                           ; $63C4: $CA $75 $62

Jump_03E_63C7:
    xor a                                         ; $63C7: $AF
    ld [$D680], a                                 ; $63C8: $EA $80 $D6
    ld [$D6C0], a                                 ; $63CB: $EA $C0 $D6
    ld [$D700], a                                 ; $63CE: $EA $00 $D7
    ld [$D740], a                                 ; $63D1: $EA $40 $D7
    ld [$D780], a                                 ; $63D4: $EA $80 $D7
    ld [$D7C0], a                                 ; $63D7: $EA $C0 $D7
    ld [$D800], a                                 ; $63DA: $EA $00 $D8
    ld [$D840], a                                 ; $63DD: $EA $40 $D8
    ld a, $82                                     ; $63E0: $3E $82
    call Call_000_135D                            ; $63E2: $CD $5D $13
    ld e, $00                                     ; $63E5: $1E $00
    ld d, $78                                     ; $63E7: $16 $78
    ld hl, $9C4A                                  ; $63E9: $21 $4A $9C
    ld b, $03                                     ; $63EC: $06 $03
    ld c, $01                                     ; $63EE: $0E $01
    call Call_000_1111                            ; $63F0: $CD $11 $11
    ld a, [$C00C]                                 ; $63F3: $FA $0C $C0
    ld c, a                                       ; $63F6: $4F
    ld a, [$C00D]                                 ; $63F7: $FA $0D $C0
    ld b, a                                       ; $63FA: $47
    ld hl, $9C4F                                  ; $63FB: $21 $4F $9C
    call Call_03E_6616                            ; $63FE: $CD $16 $66

Jump_03E_6401:
    call Call_000_0424                            ; $6401: $CD $24 $04
    ld a, [$C34F]                                 ; $6404: $FA $4F $C3
    dec a                                         ; $6407: $3D
    ldh [rWY], a                                  ; $6408: $E0 $4A
    ld [$C34F], a                                 ; $640A: $EA $4F $C3
    cp $28                                        ; $640D: $FE $28
    jp c, Jump_03E_641B                           ; $640F: $DA $1B $64

    dec a                                         ; $6412: $3D
    ldh [rWY], a                                  ; $6413: $E0 $4A
    ld [$C34F], a                                 ; $6415: $EA $4F $C3
    jp nz, Jump_03E_6401                          ; $6418: $C2 $01 $64

Jump_03E_641B:
    ld b, $14                                     ; $641B: $06 $14
    ld c, $0D                                     ; $641D: $0E $0D
    ld e, $00                                     ; $641F: $1E $00
    ld d, $00                                     ; $6421: $16 $00
    ld hl, $98A0                                  ; $6423: $21 $A0 $98
    call Call_000_10EA                            ; $6426: $CD $EA $10
    ld e, $00                                     ; $6429: $1E $00
    ld d, $74                                     ; $642B: $16 $74
    ld hl, $98AA                                  ; $642D: $21 $AA $98
    ld b, $04                                     ; $6430: $06 $04
    ld c, $01                                     ; $6432: $0E $01
    call Call_000_1111                            ; $6434: $CD $11 $11
    ld hl, $C349                                  ; $6437: $21 $49 $C3
    ld c, [hl]                                    ; $643A: $4E
    inc hl                                        ; $643B: $23
    ld b, [hl]                                    ; $643C: $46
    ld hl, $98AF                                  ; $643D: $21 $AF $98
    call Call_03E_6616                            ; $6440: $CD $16 $66
    ld e, $00                                     ; $6443: $1E $00
    ld d, $78                                     ; $6445: $16 $78
    ld hl, $98EA                                  ; $6447: $21 $EA $98
    ld b, $03                                     ; $644A: $06 $03
    ld c, $01                                     ; $644C: $0E $01
    call Call_000_1111                            ; $644E: $CD $11 $11
    ld a, [$C00C]                                 ; $6451: $FA $0C $C0
    ld c, a                                       ; $6454: $4F
    ld a, [$C00D]                                 ; $6455: $FA $0D $C0
    ld b, a                                       ; $6458: $47
    ld hl, $98EF                                  ; $6459: $21 $EF $98
    call Call_03E_6616                            ; $645C: $CD $16 $66
    ld a, $8F                                     ; $645F: $3E $8F
    ldh [rWY], a                                  ; $6461: $E0 $4A
    ld hl, $C349                                  ; $6463: $21 $49 $C3
    ld c, [hl]                                    ; $6466: $4E
    inc hl                                        ; $6467: $23
    ld b, [hl]                                    ; $6468: $46
    ld a, [$C00D]                                 ; $6469: $FA $0D $C0
    cp b                                          ; $646C: $B8
    jr z, jr_03E_6473                             ; $646D: $28 $04

    jr nc, jr_03E_64D0                            ; $646F: $30 $5F

    jr jr_03E_6479                                ; $6471: $18 $06

jr_03E_6473:
    ld a, [$C00C]                                 ; $6473: $FA $0C $C0
    cp c                                          ; $6476: $B9
    jr nc, jr_03E_64D0                            ; $6477: $30 $57

jr_03E_6479:
    ld a, c                                       ; $6479: $79
    ld [$C00C], a                                 ; $647A: $EA $0C $C0
    ld a, b                                       ; $647D: $78
    ld [$C00D], a                                 ; $647E: $EA $0D $C0
    ld a, [$C31B]                                 ; $6481: $FA $1B $C3
    ld [$C00B], a                                 ; $6484: $EA $0B $C0
    ld c, $08                                     ; $6487: $0E $08

jr_03E_6489:
    push bc                                       ; $6489: $C5
    ld e, $00                                     ; $648A: $1E $00
    ld d, $00                                     ; $648C: $16 $00
    ld hl, $98EA                                  ; $648E: $21 $EA $98
    ld b, $0A                                     ; $6491: $06 $0A
    ld c, $02                                     ; $6493: $0E $02
    call Call_000_10EA                            ; $6495: $CD $EA $10
    call Call_000_0424                            ; $6498: $CD $24 $04
    call Call_000_0424                            ; $649B: $CD $24 $04
    call Call_000_0424                            ; $649E: $CD $24 $04
    call Call_000_0424                            ; $64A1: $CD $24 $04
    ld e, $00                                     ; $64A4: $1E $00
    ld d, $78                                     ; $64A6: $16 $78
    ld hl, $98EA                                  ; $64A8: $21 $EA $98
    ld b, $03                                     ; $64AB: $06 $03
    ld c, $01                                     ; $64AD: $0E $01
    call Call_000_1111                            ; $64AF: $CD $11 $11
    ld a, [$C00C]                                 ; $64B2: $FA $0C $C0
    ld c, a                                       ; $64B5: $4F
    ld a, [$C00D]                                 ; $64B6: $FA $0D $C0
    ld b, a                                       ; $64B9: $47
    ld hl, $98EF                                  ; $64BA: $21 $EF $98
    call Call_03E_6616                            ; $64BD: $CD $16 $66
    call Call_000_0424                            ; $64C0: $CD $24 $04
    call Call_000_0424                            ; $64C3: $CD $24 $04
    call Call_000_0424                            ; $64C6: $CD $24 $04
    call Call_000_0424                            ; $64C9: $CD $24 $04
    pop bc                                        ; $64CC: $C1
    dec c                                         ; $64CD: $0D
    jr nz, jr_03E_6489                            ; $64CE: $20 $B9

jr_03E_64D0:
    ld a, [$C31B]                                 ; $64D0: $FA $1B $C3
    ld e, a                                       ; $64D3: $5F
    add a                                         ; $64D4: $87
    add a                                         ; $64D5: $87
    ld e, a                                       ; $64D6: $5F
    ld d, $00                                     ; $64D7: $16 $00
    ld hl, $66D2                                  ; $64D9: $21 $D2 $66
    add hl, de                                    ; $64DC: $19
    ld a, [$C349]                                 ; $64DD: $FA $49 $C3
    ld e, a                                       ; $64E0: $5F
    ld a, [$C00C]                                 ; $64E1: $FA $0C $C0
    cp e                                          ; $64E4: $BB
    jr nz, jr_03E_64F3                            ; $64E5: $20 $0C

    ld a, [$C34A]                                 ; $64E7: $FA $4A $C3
    ld e, a                                       ; $64EA: $5F
    ld a, [$C00D]                                 ; $64EB: $FA $0D $C0
    cp e                                          ; $64EE: $BB
    jr nz, jr_03E_64F3                            ; $64EF: $20 $02

    inc hl                                        ; $64F1: $23
    inc hl                                        ; $64F2: $23

jr_03E_64F3:
    ld a, [hl+]                                   ; $64F3: $2A
    ld [$C32B], a                                 ; $64F4: $EA $2B $C3
    ld a, [hl]                                    ; $64F7: $7E
    ld [$C32C], a                                 ; $64F8: $EA $2C $C3

jr_03E_64FB:
    ld b, $39                                     ; $64FB: $06 $39
    ld hl, $4067                                  ; $64FD: $21 $67 $40
    rst RST_08                                    ; $6500: $CF
    call Call_000_0424                            ; $6501: $CD $24 $04
    ld a, [$C32E]                                 ; $6504: $FA $2E $C3
    add a                                         ; $6507: $87
    jr c, jr_03E_6517                             ; $6508: $38 $0D

    ldh a, [$FF99]                                ; $650A: $F0 $99
    ld e, a                                       ; $650C: $5F
    ldh a, [$FFAC]                                ; $650D: $F0 $AC
    or e                                          ; $650F: $B3
    ld e, a                                       ; $6510: $5F
    and $80                                       ; $6511: $E6 $80
    jr z, jr_03E_64FB                             ; $6513: $28 $E6

    jr jr_03E_6522                                ; $6515: $18 $0B

jr_03E_6517:
    ldh a, [$FF99]                                ; $6517: $F0 $99
    ld e, a                                       ; $6519: $5F
    ldh a, [$FFAC]                                ; $651A: $F0 $AC
    or e                                          ; $651C: $B3
    ld e, a                                       ; $651D: $5F
    and $90                                       ; $651E: $E6 $90
    jr z, jr_03E_64FB                             ; $6520: $28 $D9

jr_03E_6522:
    ld hl, $C03A                                  ; $6522: $21 $3A $C0
    res 2, [hl]                                   ; $6525: $CB $96
    ld a, $00                                     ; $6527: $3E $00
    call Call_000_135D                            ; $6529: $CD $5D $13
    call Call_000_0424                            ; $652C: $CD $24 $04
    ld b, $3E                                     ; $652F: $06 $3E
    ld hl, $4C7D                                  ; $6531: $21 $7D $4C
    rst RST_00                                    ; $6534: $C7

Call_03E_6535:
    ld a, [$C350]                                 ; $6535: $FA $50 $C3
    or a                                          ; $6538: $B7
    ret nz                                        ; $6539: $C0

    ld a, [$C34C]                                 ; $653A: $FA $4C $C3
    or a                                          ; $653D: $B7
    jr z, jr_03E_6545                             ; $653E: $28 $05

    dec a                                         ; $6540: $3D
    ld [$C34C], a                                 ; $6541: $EA $4C $C3
    ret                                           ; $6544: $C9


jr_03E_6545:
    ld a, [$C34D]                                 ; $6545: $FA $4D $C3
    ld l, a                                       ; $6548: $6F
    ld a, [$C34E]                                 ; $6549: $FA $4E $C3
    ld h, a                                       ; $654C: $67

Jump_03E_654D:
    ld a, [hl]                                    ; $654D: $7E
    cp $F0                                        ; $654E: $FE $F0
    jp nc, Jump_03E_65A3                          ; $6550: $D2 $A3 $65

    cp $80                                        ; $6553: $FE $80
    jr nc, jr_03E_6566                            ; $6555: $30 $0F

    or a                                          ; $6557: $B7
    jr nz, jr_03E_6560                            ; $6558: $20 $06

    ld a, $FF                                     ; $655A: $3E $FF
    ld [$C350], a                                 ; $655C: $EA $50 $C3
    ret                                           ; $655F: $C9


jr_03E_6560:
    ld [$C34C], a                                 ; $6560: $EA $4C $C3
    jp Jump_03E_6598                              ; $6563: $C3 $98 $65


jr_03E_6566:
    ld e, a                                       ; $6566: $5F
    ld hl, $D700                                  ; $6567: $21 $00 $D7
    ld a, [hl]                                    ; $656A: $7E
    add a                                         ; $656B: $87
    jr nc, jr_03E_6584                            ; $656C: $30 $16

    ld hl, $D740                                  ; $656E: $21 $40 $D7
    ld a, [hl]                                    ; $6571: $7E
    add a                                         ; $6572: $87
    jr nc, jr_03E_6584                            ; $6573: $30 $0F

    ld hl, $D780                                  ; $6575: $21 $80 $D7
    ld a, [hl]                                    ; $6578: $7E
    add a                                         ; $6579: $87
    jr nc, jr_03E_6584                            ; $657A: $30 $08

    ld hl, $D7C0                                  ; $657C: $21 $C0 $D7
    ld a, [hl]                                    ; $657F: $7E
    add a                                         ; $6580: $87
    jr nc, jr_03E_6584                            ; $6581: $30 $01

    ret                                           ; $6583: $C9


jr_03E_6584:
    push de                                       ; $6584: $D5
    push hl                                       ; $6585: $E5
    ld de, $5986                                  ; $6586: $11 $86 $59
    call Call_000_0F8E                            ; $6589: $CD $8E $0F
    pop hl                                        ; $658C: $E1
    pop de                                        ; $658D: $D1
    ld bc, $0029                                  ; $658E: $01 $29 $00
    add hl, bc                                    ; $6591: $09
    ld [hl], e                                    ; $6592: $73
    ld a, $AE                                     ; $6593: $3E $AE
    call Call_000_1360                            ; $6595: $CD $60 $13

Jump_03E_6598:
    ld hl, $C34D                                  ; $6598: $21 $4D $C3
    ld e, [hl]                                    ; $659B: $5E
    inc hl                                        ; $659C: $23
    ld d, [hl]                                    ; $659D: $56
    inc de                                        ; $659E: $13
    ld [hl], d                                    ; $659F: $72
    dec hl                                        ; $65A0: $2B
    ld [hl], e                                    ; $65A1: $73
    ret                                           ; $65A2: $C9


Jump_03E_65A3:
    cp $F0                                        ; $65A3: $FE $F0
    jr z, jr_03E_65BA                             ; $65A5: $28 $13

    cp $F1                                        ; $65A7: $FE $F1
    jr z, jr_03E_65D7                             ; $65A9: $28 $2C

    inc hl                                        ; $65AB: $23
    ld e, [hl]                                    ; $65AC: $5E
    inc hl                                        ; $65AD: $23
    ld d, [hl]                                    ; $65AE: $56

jr_03E_65AF:
    ld hl, $C34D                                  ; $65AF: $21 $4D $C3
    ld [hl], e                                    ; $65B2: $73
    inc hl                                        ; $65B3: $23
    ld [hl], d                                    ; $65B4: $72
    ld l, e                                       ; $65B5: $6B
    ld h, d                                       ; $65B6: $62
    jp Jump_03E_654D                              ; $65B7: $C3 $4D $65


jr_03E_65BA:
    inc hl                                        ; $65BA: $23
    ld e, l                                       ; $65BB: $5D
    ld d, h                                       ; $65BC: $54
    ld hl, $0008                                  ; $65BD: $21 $08 $00
    add hl, de                                    ; $65C0: $19
    ld a, l                                       ; $65C1: $7D
    ld [$C355], a                                 ; $65C2: $EA $55 $C3
    ld a, h                                       ; $65C5: $7C
    ld [$C356], a                                 ; $65C6: $EA $56 $C3
    ld a, [$C353]                                 ; $65C9: $FA $53 $C3
    and $06                                       ; $65CC: $E6 $06
    ld l, a                                       ; $65CE: $6F
    ld h, $00                                     ; $65CF: $26 $00
    add hl, de                                    ; $65D1: $19
    ld e, [hl]                                    ; $65D2: $5E
    inc hl                                        ; $65D3: $23
    ld d, [hl]                                    ; $65D4: $56
    jr jr_03E_65AF                                ; $65D5: $18 $D8

jr_03E_65D7:
    ld a, [$C355]                                 ; $65D7: $FA $55 $C3
    ld e, a                                       ; $65DA: $5F
    ld a, [$C356]                                 ; $65DB: $FA $56 $C3
    ld d, a                                       ; $65DE: $57
    jr jr_03E_65AF                                ; $65DF: $18 $CE

Call_03E_65E1:
    ld hl, $C34B                                  ; $65E1: $21 $4B $C3
    ld a, [hl]                                    ; $65E4: $7E
    jr jr_03E_65FA                                ; $65E5: $18 $13

Call_03E_65E7:
    ld a, [$C349]                                 ; $65E7: $FA $49 $C3
    cp $99                                        ; $65EA: $FE $99
    jr nz, jr_03E_65F4                            ; $65EC: $20 $06

    ld a, [$C34A]                                 ; $65EE: $FA $4A $C3
    cp $99                                        ; $65F1: $FE $99
    ret z                                         ; $65F3: $C8

jr_03E_65F4:
    ld hl, $C34B                                  ; $65F4: $21 $4B $C3
    ld a, [hl]                                    ; $65F7: $7E
    or a                                          ; $65F8: $B7
    ret z                                         ; $65F9: $C8

jr_03E_65FA:
    ld b, $00                                     ; $65FA: $06 $00
    ld [hl], b                                    ; $65FC: $70
    dec hl                                        ; $65FD: $2B
    ld b, [hl]                                    ; $65FE: $46
    dec hl                                        ; $65FF: $2B
    ld c, [hl]                                    ; $6600: $4E
    add c                                         ; $6601: $81
    daa                                           ; $6602: $27
    ld c, a                                       ; $6603: $4F
    jr nc, jr_03E_6610                            ; $6604: $30 $0A

    xor a                                         ; $6606: $AF
    ld a, b                                       ; $6607: $78
    inc a                                         ; $6608: $3C
    daa                                           ; $6609: $27
    ld b, a                                       ; $660A: $47
    jr nc, jr_03E_6610                            ; $660B: $30 $03

    ld c, $99                                     ; $660D: $0E $99
    ld b, c                                       ; $660F: $41

jr_03E_6610:
    ld [hl], c                                    ; $6610: $71
    inc hl                                        ; $6611: $23
    ld [hl], b                                    ; $6612: $70
    ld hl, $9C0F                                  ; $6613: $21 $0F $9C

Call_03E_6616:
    ld a, b                                       ; $6616: $78
    swap a                                        ; $6617: $CB $37
    and $0F                                       ; $6619: $E6 $0F
    jr z, jr_03E_662E                             ; $661B: $28 $11

    push bc                                       ; $661D: $C5
    push hl                                       ; $661E: $E5
    add a                                         ; $661F: $87
    add $60                                       ; $6620: $C6 $60
    ld d, a                                       ; $6622: $57
    ld e, $00                                     ; $6623: $1E $00
    ld b, $01                                     ; $6625: $06 $01
    ld c, $02                                     ; $6627: $0E $02
    call Call_000_1139                            ; $6629: $CD $39 $11
    pop hl                                        ; $662C: $E1
    pop bc                                        ; $662D: $C1

jr_03E_662E:
    ld de, $0001                                  ; $662E: $11 $01 $00
    add hl, de                                    ; $6631: $19
    ld a, b                                       ; $6632: $78
    or a                                          ; $6633: $B7
    jr z, jr_03E_6649                             ; $6634: $28 $13

    and $0F                                       ; $6636: $E6 $0F
    push bc                                       ; $6638: $C5
    push hl                                       ; $6639: $E5
    add a                                         ; $663A: $87
    add $60                                       ; $663B: $C6 $60
    ld d, a                                       ; $663D: $57
    ld e, $00                                     ; $663E: $1E $00
    ld b, $01                                     ; $6640: $06 $01
    ld c, $02                                     ; $6642: $0E $02
    call Call_000_1139                            ; $6644: $CD $39 $11
    pop hl                                        ; $6647: $E1
    pop bc                                        ; $6648: $C1

jr_03E_6649:
    ld de, $0001                                  ; $6649: $11 $01 $00
    add hl, de                                    ; $664C: $19
    ld a, c                                       ; $664D: $79
    swap a                                        ; $664E: $CB $37
    and $0F                                       ; $6650: $E6 $0F
    jr nz, jr_03E_6659                            ; $6652: $20 $05

    ld a, b                                       ; $6654: $78
    or a                                          ; $6655: $B7
    jr z, jr_03E_666A                             ; $6656: $28 $12

    xor a                                         ; $6658: $AF

jr_03E_6659:
    push bc                                       ; $6659: $C5
    push hl                                       ; $665A: $E5
    add a                                         ; $665B: $87
    add $60                                       ; $665C: $C6 $60
    ld d, a                                       ; $665E: $57
    ld e, $00                                     ; $665F: $1E $00
    ld b, $01                                     ; $6661: $06 $01
    ld c, $02                                     ; $6663: $0E $02
    call Call_000_1139                            ; $6665: $CD $39 $11
    pop hl                                        ; $6668: $E1
    pop bc                                        ; $6669: $C1

jr_03E_666A:
    ld de, $0001                                  ; $666A: $11 $01 $00
    add hl, de                                    ; $666D: $19
    ld a, c                                       ; $666E: $79
    and $0F                                       ; $666F: $E6 $0F
    add a                                         ; $6671: $87
    add $60                                       ; $6672: $C6 $60
    ld d, a                                       ; $6674: $57
    ld e, $00                                     ; $6675: $1E $00
    ld b, $01                                     ; $6677: $06 $01
    ld c, $02                                     ; $6679: $0E $02
    call Call_000_1139                            ; $667B: $CD $39 $11
    ret                                           ; $667E: $C9


Call_03E_667F:
    push hl                                       ; $667F: $E5
    ld de, $002F                                  ; $6680: $11 $2F $00
    add hl, de                                    ; $6683: $19
    ld a, [hl]                                    ; $6684: $7E
    pop hl                                        ; $6685: $E1
    or a                                          ; $6686: $B7

jr_03E_6687:
    jp nz, Jump_000_0DD4                          ; $6687: $C2 $D4 $0D

    jp Jump_000_0E28                              ; $668A: $C3 $28 $0E


jr_03E_668D:
    ld a, [$C2D0]                                 ; $668D: $FA $D0 $C2
    cp $00                                        ; $6690: $FE $00
    jp nz, Jump_03E_669B                          ; $6692: $C2 $9B $66

jr_03E_6695:
    ld hl, $FF98                                  ; $6695: $21 $98 $FF
    jp Jump_03E_669E                              ; $6698: $C3 $9E $66


Jump_03E_669B:
    ld hl, $FFAB                                  ; $669B: $21 $AB $FF

Jump_03E_669E:
    ld c, [hl]                                    ; $669E: $4E
    inc hl                                        ; $669F: $23

jr_03E_66A0:
    ld b, [hl]                                    ; $66A0: $46

jr_03E_66A1:
    ret                                           ; $66A1: $C9


    nop                                           ; $66A2: $00
    nop                                           ; $66A3: $00

jr_03E_66A4:
    ld [$0062], a                                 ; $66A4: $EA $62 $00
    nop                                           ; $66A7: $00

jr_03E_66A8:
    ld l, c                                       ; $66A8: $69

jr_03E_66A9:
    jp $C3A9                                      ; $66A9: $C3 $A9 $C3


    ld a, c                                       ; $66AC: $79
    push bc                                       ; $66AD: $C5
    ld b, c                                       ; $66AE: $41
    ld bc, $8800                                  ; $66AF: $01 $00 $88
    nop                                           ; $66B2: $00
    nop                                           ; $66B3: $00
    nop                                           ; $66B4: $00
    nop                                           ; $66B5: $00
    nop                                           ; $66B6: $00
    ld a, c                                       ; $66B7: $79
    push bc                                       ; $66B8: $C5
    nop                                           ; $66B9: $00
    ld b, c                                       ; $66BA: $41
    ld bc, $0080                                  ; $66BB: $01 $80 $00
    nop                                           ; $66BE: $00
    nop                                           ; $66BF: $00
    nop                                           ; $66C0: $00
    nop                                           ; $66C1: $00
    nop                                           ; $66C2: $00
    nop                                           ; $66C3: $00
    nop                                           ; $66C4: $00
    nop                                           ; $66C5: $00
    ld a, [$8066]                                 ; $66C6: $FA $66 $80
    nop                                           ; $66C9: $00
    nop                                           ; $66CA: $00
    nop                                           ; $66CB: $00
    nop                                           ; $66CC: $00
    nop                                           ; $66CD: $00
    nop                                           ; $66CE: $00
    nop                                           ; $66CF: $00
    nop                                           ; $66D0: $00
    nop                                           ; $66D1: $00
    ld [$1562], a                                 ; $66D2: $EA $62 $15
    ld h, e                                       ; $66D5: $63
    ld d, l                                       ; $66D6: $55
    ld h, e                                       ; $66D7: $63
    add b                                         ; $66D8: $80
    ld h, e                                       ; $66D9: $63
    jp $EE63                                      ; $66DA: $C3 $63 $EE


    ld h, e                                       ; $66DD: $63
    scf                                           ; $66DE: $37
    ld h, h                                       ; $66DF: $64
    ld h, d                                       ; $66E0: $62
    ld h, h                                       ; $66E1: $64
    and d                                         ; $66E2: $A2
    ld h, h                                       ; $66E3: $64
    ret nc                                        ; $66E4: $D0

    ld h, h                                       ; $66E5: $64
    inc de                                        ; $66E6: $13
    ld h, l                                       ; $66E7: $65
    ld c, d                                       ; $66E8: $4A
    ld h, l                                       ; $66E9: $65
    adc d                                         ; $66EA: $8A
    ld h, l                                       ; $66EB: $65
    cp e                                          ; $66EC: $BB
    ld h, l                                       ; $66ED: $65
    cp $65                                        ; $66EE: $FE $65
    dec [hl]                                      ; $66F0: $35
    ld h, [hl]                                    ; $66F1: $66
    ld a, b                                       ; $66F2: $78
    ld h, [hl]                                    ; $66F3: $66
    sbc l                                         ; $66F4: $9D
    ld h, [hl]                                    ; $66F5: $66
    db $DD                                        ; $66F6: $DD
    ld h, [hl]                                    ; $66F7: $66
    ld a, [de]                                    ; $66F8: $1A
    ld h, a                                       ; $66F9: $67
    ld b, b                                       ; $66FA: $40
    ld b, b                                       ; $66FB: $40
    jr nz, jr_03E_6687                            ; $66FC: $20 $89

    jr nz, @-$75                                  ; $66FE: $20 $89

    jr nz, @-$75                                  ; $6700: $20 $89

    jr nz, jr_03E_668D                            ; $6702: $20 $89

    jr nz, @-$75                                  ; $6704: $20 $89

    jr nz, @-$75                                  ; $6706: $20 $89

    jr nz, @-$75                                  ; $6708: $20 $89

    jr nz, jr_03E_6695                            ; $670A: $20 $89

    ld b, b                                       ; $670C: $40
    ld b, b                                       ; $670D: $40
    adc c                                         ; $670E: $89
    jr nz, @-$76                                  ; $670F: $20 $88

    jr nz, @-$75                                  ; $6711: $20 $89

    jr nz, @-$76                                  ; $6713: $20 $88

    jr nz, jr_03E_66A0                            ; $6715: $20 $89

    jr nz, jr_03E_66A1                            ; $6717: $20 $88

    jr nz, jr_03E_66A4                            ; $6719: $20 $89

    jr nz, @-$76                                  ; $671B: $20 $88

    jr nz, jr_03E_66A8                            ; $671D: $20 $89

    jr nz, jr_03E_66A9                            ; $671F: $20 $88

    ldh a, [$FFBD]                                ; $6721: $F0 $BD
    ld h, a                                       ; $6723: $67
    reti                                          ; $6724: $D9


    ld h, a                                       ; $6725: $67
    rst RST_30                                    ; $6726: $F7
    ld h, a                                       ; $6727: $67
    dec e                                         ; $6728: $1D
    ld l, b                                       ; $6729: $68
    ldh a, [$FFD9]                                ; $672A: $F0 $D9
    ld h, a                                       ; $672C: $67
    rst RST_30                                    ; $672D: $F7
    ld h, a                                       ; $672E: $67
    dec e                                         ; $672F: $1D
    ld l, b                                       ; $6730: $68
    dec sp                                        ; $6731: $3B
    ld l, b                                       ; $6732: $68
    ldh a, [$FFF7]                                ; $6733: $F0 $F7
    ld h, a                                       ; $6735: $67
    dec e                                         ; $6736: $1D
    ld l, b                                       ; $6737: $68
    dec sp                                        ; $6738: $3B
    ld l, b                                       ; $6739: $68
    ld e, c                                       ; $673A: $59
    ld l, b                                       ; $673B: $68
    ldh a, [rNR33]                                ; $673C: $F0 $1D
    ld l, b                                       ; $673E: $68
    dec sp                                        ; $673F: $3B
    ld l, b                                       ; $6740: $68
    ld e, c                                       ; $6741: $59
    ld l, b                                       ; $6742: $68
    ld [hl], l                                    ; $6743: $75
    ld l, b                                       ; $6744: $68
    ldh a, [$FF3B]                                ; $6745: $F0 $3B
    ld l, b                                       ; $6747: $68
    ld e, c                                       ; $6748: $59
    ld l, b                                       ; $6749: $68
    ld [hl], l                                    ; $674A: $75
    ld l, b                                       ; $674B: $68
    sbc l                                         ; $674C: $9D
    ld l, b                                       ; $674D: $68
    ldh a, [$FF59]                                ; $674E: $F0 $59
    ld l, b                                       ; $6750: $68
    ld [hl], l                                    ; $6751: $75
    ld l, b                                       ; $6752: $68
    sbc l                                         ; $6753: $9D
    ld l, b                                       ; $6754: $68
    cp e                                          ; $6755: $BB
    ld l, b                                       ; $6756: $68
    ldh a, [$FF75]                                ; $6757: $F0 $75
    ld l, b                                       ; $6759: $68
    sbc l                                         ; $675A: $9D
    ld l, b                                       ; $675B: $68
    cp e                                          ; $675C: $BB
    ld l, b                                       ; $675D: $68
    reti                                          ; $675E: $D9


    ld l, b                                       ; $675F: $68
    ldh a, [$FF9D]                                ; $6760: $F0 $9D
    ld l, b                                       ; $6762: $68
    cp e                                          ; $6763: $BB
    ld l, b                                       ; $6764: $68
    reti                                          ; $6765: $D9


jr_03E_6766:
    ld l, b                                       ; $6766: $68
    dec e                                         ; $6767: $1D

jr_03E_6768:
    ld l, b                                       ; $6768: $68
    ldh a, [rNR33]                                ; $6769: $F0 $1D
    ld l, b                                       ; $676B: $68
    cp e                                          ; $676C: $BB

jr_03E_676D:
    ld l, b                                       ; $676D: $68
    reti                                          ; $676E: $D9


jr_03E_676F:
    ld l, b                                       ; $676F: $68

jr_03E_6770:
    rst RST_30                                    ; $6770: $F7
    ld h, a                                       ; $6771: $67

jr_03E_6772:
    ldh a, [$FFD9]                                ; $6772: $F0 $D9
    ld l, b                                       ; $6774: $68

jr_03E_6775:
    cp e                                          ; $6775: $BB

jr_03E_6776:
    ld l, b                                       ; $6776: $68
    sbc l                                         ; $6777: $9D
    ld l, b                                       ; $6778: $68
    ld [hl], l                                    ; $6779: $75

jr_03E_677A:
    ld l, b                                       ; $677A: $68

jr_03E_677B:
    ldh a, [$FF59]                                ; $677B: $F0 $59
    ld l, b                                       ; $677D: $68
    dec sp                                        ; $677E: $3B

jr_03E_677F:
    ld l, b                                       ; $677F: $68

jr_03E_6780:
    sbc l                                         ; $6780: $9D

jr_03E_6781:
    ld l, b                                       ; $6781: $68

jr_03E_6782:
    cp e                                          ; $6782: $BB
    ld l, b                                       ; $6783: $68
    ldh a, [$FFF7]                                ; $6784: $F0 $F7
    ld h, a                                       ; $6786: $67

jr_03E_6787:
    dec e                                         ; $6787: $1D
    ld l, b                                       ; $6788: $68

jr_03E_6789:
    ld e, c                                       ; $6789: $59
    ld l, b                                       ; $678A: $68

jr_03E_678B:
    cp e                                          ; $678B: $BB
    ld l, b                                       ; $678C: $68
    ldh a, [$FF75]                                ; $678D: $F0 $75
    ld l, b                                       ; $678F: $68
    cp e                                          ; $6790: $BB

jr_03E_6791:
    ld l, b                                       ; $6791: $68
    reti                                          ; $6792: $D9


    ld l, b                                       ; $6793: $68

jr_03E_6794:
    sbc l                                         ; $6794: $9D
    ld l, b                                       ; $6795: $68

jr_03E_6796:
    ldh a, [$FF59]                                ; $6796: $F0 $59

jr_03E_6798:
    ld l, b                                       ; $6798: $68
    cp e                                          ; $6799: $BB

jr_03E_679A:
    ld l, b                                       ; $679A: $68
    sbc l                                         ; $679B: $9D

jr_03E_679C:
    ld l, b                                       ; $679C: $68
    dec sp                                        ; $679D: $3B
    ld l, b                                       ; $679E: $68
    ldh a, [rNR33]                                ; $679F: $F0 $1D
    ld l, b                                       ; $67A1: $68

jr_03E_67A2:
    ld e, c                                       ; $67A2: $59

jr_03E_67A3:
    ld l, b                                       ; $67A3: $68
    sbc l                                         ; $67A4: $9D
    ld l, b                                       ; $67A5: $68
    reti                                          ; $67A6: $D9


    ld l, b                                       ; $67A7: $68
    ldh a, [$FFF7]                                ; $67A8: $F0 $F7

jr_03E_67AA:
    ld h, a                                       ; $67AA: $67
    dec sp                                        ; $67AB: $3B
    ld l, b                                       ; $67AC: $68

jr_03E_67AD:
    ld [hl], l                                    ; $67AD: $75
    ld l, b                                       ; $67AE: $68
    cp e                                          ; $67AF: $BB

jr_03E_67B0:
    ld l, b                                       ; $67B0: $68
    ldh a, [$FF9D]                                ; $67B1: $F0 $9D

jr_03E_67B3:
    ld l, b                                       ; $67B3: $68

jr_03E_67B4:
    cp e                                          ; $67B4: $BB
    ld l, b                                       ; $67B5: $68

jr_03E_67B6:
    ld [hl], l                                    ; $67B6: $75
    ld l, b                                       ; $67B7: $68
    dec sp                                        ; $67B8: $3B

jr_03E_67B9:
    ld l, b                                       ; $67B9: $68
    rst RST_38                                    ; $67BA: $FF
    ld b, l                                       ; $67BB: $45
    ld h, a                                       ; $67BC: $67

jr_03E_67BD:
    ld b, b                                       ; $67BD: $40
    ld b, b                                       ; $67BE: $40
    add c                                         ; $67BF: $81
    ld b, b                                       ; $67C0: $40
    add e                                         ; $67C1: $83
    ld b, b                                       ; $67C2: $40
    add b                                         ; $67C3: $80
    ld b, b                                       ; $67C4: $40
    add c                                         ; $67C5: $81
    ld b, b                                       ; $67C6: $40

jr_03E_67C7:
    add d                                         ; $67C7: $82
    ld b, b                                       ; $67C8: $40
    add e                                         ; $67C9: $83
    ld b, b                                       ; $67CA: $40
    add c                                         ; $67CB: $81
    ld b, b                                       ; $67CC: $40
    add c                                         ; $67CD: $81
    ld b, b                                       ; $67CE: $40
    add e                                         ; $67CF: $83
    ld b, b                                       ; $67D0: $40
    add d                                         ; $67D1: $82
    ld b, b                                       ; $67D2: $40
    add b                                         ; $67D3: $80
    ld b, b                                       ; $67D4: $40
    add e                                         ; $67D5: $83
    ld b, b                                       ; $67D6: $40
    add d                                         ; $67D7: $82
    pop af                                        ; $67D8: $F1
    ld b, b                                       ; $67D9: $40
    ld b, b                                       ; $67DA: $40
    adc b                                         ; $67DB: $88
    jr nz, jr_03E_6766                            ; $67DC: $20 $88

    jr nz, jr_03E_6768                            ; $67DE: $20 $88

    ld b, b                                       ; $67E0: $40

jr_03E_67E1:
    adc c                                         ; $67E1: $89

jr_03E_67E2:
    jr nz, jr_03E_676D                            ; $67E2: $20 $89

jr_03E_67E4:
    jr nz, jr_03E_676F                            ; $67E4: $20 $89

    jr nz, jr_03E_6770                            ; $67E6: $20 $88

    jr nz, jr_03E_6772                            ; $67E8: $20 $88

    jr nz, jr_03E_6775                            ; $67EA: $20 $89

    jr nz, jr_03E_6776                            ; $67EC: $20 $88

    ld b, b                                       ; $67EE: $40
    adc c                                         ; $67EF: $89

jr_03E_67F0:
    jr nz, jr_03E_677A                            ; $67F0: $20 $88

    jr nz, @-$76                                  ; $67F2: $20 $88

    ld b, b                                       ; $67F4: $40
    adc c                                         ; $67F5: $89

jr_03E_67F6:
    pop af                                        ; $67F6: $F1
    ld b, b                                       ; $67F7: $40
    jr nc, jr_03E_677B                            ; $67F8: $30 $81

    jr z, jr_03E_677F                             ; $67FA: $28 $83

    jr nc, jr_03E_6780                            ; $67FC: $30 $82

    jr z, jr_03E_6781                             ; $67FE: $28 $81

jr_03E_6800:
    jr nc, jr_03E_6782                            ; $6800: $30 $80

    jr z, jr_03E_6787                             ; $6802: $28 $83

    ld b, b                                       ; $6804: $40

jr_03E_6805:
    add e                                         ; $6805: $83

jr_03E_6806:
    jr z, jr_03E_6789                             ; $6806: $28 $81

    jr jr_03E_678B                                ; $6808: $18 $81

    jr z, @-$7C                                   ; $680A: $28 $82

jr_03E_680C:
    jr nz, @-$7E                                  ; $680C: $20 $80

    jr nc, jr_03E_6791                            ; $680E: $30 $81

    jr nz, jr_03E_6794                            ; $6810: $20 $82

    jr z, jr_03E_6796                             ; $6812: $28 $82

    jr z, jr_03E_6796                             ; $6814: $28 $80

    jr nz, jr_03E_6798                            ; $6816: $20 $80

    jr nz, jr_03E_679A                            ; $6818: $20 $80

jr_03E_681A:
    jr nz, jr_03E_679C                            ; $681A: $20 $80

jr_03E_681C:
    pop af                                        ; $681C: $F1
    ld b, b                                       ; $681D: $40

jr_03E_681E:
    jr nc, jr_03E_67A3                            ; $681E: $30 $83

    jr z, jr_03E_67A2                             ; $6820: $28 $80

jr_03E_6822:
    db $10                                        ; $6822: $10
    add b                                         ; $6823: $80
    db $10                                        ; $6824: $10

jr_03E_6825:
    add b                                         ; $6825: $80
    ld b, b                                       ; $6826: $40

jr_03E_6827:
    add c                                         ; $6827: $81

jr_03E_6828:
    jr nc, jr_03E_67AA                            ; $6828: $30 $80

    jr z, jr_03E_67AD                             ; $682A: $28 $81

    ld b, b                                       ; $682C: $40

jr_03E_682D:
    add c                                         ; $682D: $81

jr_03E_682E:
    jr z, jr_03E_67B0                             ; $682E: $28 $80

    jr jr_03E_67B3                                ; $6830: $18 $81

    jr z, jr_03E_67B4                             ; $6832: $28 $80

jr_03E_6834:
    jr nz, jr_03E_67B6                            ; $6834: $20 $80

jr_03E_6836:
    jr nc, jr_03E_67B9                            ; $6836: $30 $81

    jr nz, jr_03E_67BD                            ; $6838: $20 $83

    pop af                                        ; $683A: $F1

jr_03E_683B:
    ld b, b                                       ; $683B: $40
    ld b, b                                       ; $683C: $40
    adc c                                         ; $683D: $89

jr_03E_683E:
    ld b, b                                       ; $683E: $40
    add d                                         ; $683F: $82

jr_03E_6840:
    ld d, b                                       ; $6840: $50
    add l                                         ; $6841: $85
    jr nc, jr_03E_67C7                            ; $6842: $30 $83

    ld h, b                                       ; $6844: $60

jr_03E_6845:
    add l                                         ; $6845: $85

jr_03E_6846:
    ld [$2082], sp                                ; $6846: $08 $82 $20
    adc b                                         ; $6849: $88
    ld b, b                                       ; $684A: $40
    add d                                         ; $684B: $82
    ld b, b                                       ; $684C: $40
    add l                                         ; $684D: $85
    ld b, b                                       ; $684E: $40

jr_03E_684F:
    add e                                         ; $684F: $83
    ld b, b                                       ; $6850: $40

jr_03E_6851:
    adc c                                         ; $6851: $89

jr_03E_6852:
    ld [$2087], sp                                ; $6852: $08 $87 $20

jr_03E_6855:
    adc b                                         ; $6855: $88
    ld h, b                                       ; $6856: $60
    add [hl]                                      ; $6857: $86
    pop af                                        ; $6858: $F1
    ld b, b                                       ; $6859: $40
    jr nz, @-$7D                                  ; $685A: $20 $81

jr_03E_685C:
    jr nz, jr_03E_67E1                            ; $685C: $20 $83

jr_03E_685E:
    jr nz, jr_03E_67E2                            ; $685E: $20 $82

jr_03E_6860:
    jr nz, @-$7D                                  ; $6860: $20 $81

jr_03E_6862:
    jr nz, jr_03E_67E4                            ; $6862: $20 $80

    jr nz, @-$7B                                  ; $6864: $20 $83

    jr nz, @-$7B                                  ; $6866: $20 $83

    jr nz, @-$7D                                  ; $6868: $20 $81

    jr nz, @-$7D                                  ; $686A: $20 $81

    jr nz, jr_03E_67F0                            ; $686C: $20 $82

    jr nz, jr_03E_67F0                            ; $686E: $20 $80

    jr nz, @-$7D                                  ; $6870: $20 $81

    jr nz, jr_03E_67F6                            ; $6872: $20 $82

    pop af                                        ; $6874: $F1
    ld b, b                                       ; $6875: $40
    jr nc, @-$79                                  ; $6876: $30 $85

    jr nc, jr_03E_6800                            ; $6878: $30 $86

    jr nc, jr_03E_6800                            ; $687A: $30 $84

    jr nc, jr_03E_6805                            ; $687C: $30 $87

    jr nc, jr_03E_6806                            ; $687E: $30 $86

    jr nc, jr_03E_6806                            ; $6880: $30 $84

    jr nc, @-$77                                  ; $6882: $30 $87

    jr nc, @-$79                                  ; $6884: $30 $85

    jr nc, jr_03E_680C                            ; $6886: $30 $84

    jr nc, @-$79                                  ; $6888: $30 $85

    jr nc, @-$79                                  ; $688A: $30 $85

    db $10                                        ; $688C: $10
    add l                                         ; $688D: $85
    db $10                                        ; $688E: $10
    add l                                         ; $688F: $85
    db $10                                        ; $6890: $10
    add l                                         ; $6891: $85
    jr nc, jr_03E_681A                            ; $6892: $30 $86

    jr nc, jr_03E_681C                            ; $6894: $30 $86

    jr nc, @-$77                                  ; $6896: $30 $87

    jr nc, jr_03E_681E                            ; $6898: $30 $84

    jr nc, @-$79                                  ; $689A: $30 $85

    pop af                                        ; $689C: $F1
    ld b, b                                       ; $689D: $40
    jr nz, @-$7D                                  ; $689E: $20 $81

    jr nz, jr_03E_6822                            ; $68A0: $20 $80

    jr nz, jr_03E_6825                            ; $68A2: $20 $81

    jr nz, jr_03E_6827                            ; $68A4: $20 $81

    jr nz, jr_03E_6828                            ; $68A6: $20 $80

    jr nz, jr_03E_682D                            ; $68A8: $20 $83

    jr nz, jr_03E_682E                            ; $68AA: $20 $82

    jr nz, @-$7D                                  ; $68AC: $20 $81

    ld b, b                                       ; $68AE: $40
    add l                                         ; $68AF: $85
    jr nz, jr_03E_6834                            ; $68B0: $20 $82

    jr nz, jr_03E_6834                            ; $68B2: $20 $80

    jr nz, jr_03E_6836                            ; $68B4: $20 $80

    jr nz, jr_03E_683B                            ; $68B6: $20 $83

    ld b, b                                       ; $68B8: $40
    add a                                         ; $68B9: $87
    pop af                                        ; $68BA: $F1
    ld b, b                                       ; $68BB: $40
    jr nz, jr_03E_683E                            ; $68BC: $20 $80

    jr nz, jr_03E_6840                            ; $68BE: $20 $80

    jr nz, jr_03E_6845                            ; $68C0: $20 $83

    jr nz, jr_03E_6845                            ; $68C2: $20 $81

    jr nz, jr_03E_6846                            ; $68C4: $20 $80

    jr nc, jr_03E_6851                            ; $68C6: $30 $89

    db $10                                        ; $68C8: $10
    add [hl]                                      ; $68C9: $86
    ld b, b                                       ; $68CA: $40
    add b                                         ; $68CB: $80
    jr nz, jr_03E_684F                            ; $68CC: $20 $81

    jr nc, jr_03E_6852                            ; $68CE: $30 $82

    jr nz, jr_03E_6855                            ; $68D0: $20 $83

    jr nc, jr_03E_685C                            ; $68D2: $30 $88

    db $10                                        ; $68D4: $10
    add l                                         ; $68D5: $85
    ld b, b                                       ; $68D6: $40
    add a                                         ; $68D7: $87
    pop af                                        ; $68D8: $F1
    ld b, b                                       ; $68D9: $40
    jr @-$7D                                      ; $68DA: $18 $81

    jr jr_03E_685E                                ; $68DC: $18 $80

    jr jr_03E_6860                                ; $68DE: $18 $80

    jr jr_03E_6862                                ; $68E0: $18 $80

    ld d, $81                                     ; $68E2: $16 $81
    ld d, $80                                     ; $68E4: $16 $80
    ld d, $80                                     ; $68E6: $16 $80
    ld d, $80                                     ; $68E8: $16 $80
    inc d                                         ; $68EA: $14
    add c                                         ; $68EB: $81
    inc d                                         ; $68EC: $14
    add b                                         ; $68ED: $80
    inc d                                         ; $68EE: $14
    add c                                         ; $68EF: $81
    inc d                                         ; $68F0: $14
    add c                                         ; $68F1: $81
    ld [de], a                                    ; $68F2: $12
    add c                                         ; $68F3: $81
    ld [de], a                                    ; $68F4: $12
    add b                                         ; $68F5: $80
    ld [de], a                                    ; $68F6: $12
    add b                                         ; $68F7: $80
    ld [de], a                                    ; $68F8: $12
    add b                                         ; $68F9: $80
    db $10                                        ; $68FA: $10
    add c                                         ; $68FB: $81
    db $10                                        ; $68FC: $10
    add b                                         ; $68FD: $80
    db $10                                        ; $68FE: $10
    add c                                         ; $68FF: $81
    db $10                                        ; $6900: $10
    add c                                         ; $6901: $81
    pop af                                        ; $6902: $F1

Call_03E_6903:
    ld a, [$D6AF]                                 ; $6903: $FA $AF $D6
    or a                                          ; $6906: $B7
    jp nz, Jump_03E_69F9                          ; $6907: $C2 $F9 $69

    ld a, [$D6AB]                                 ; $690A: $FA $AB $D6
    or a                                          ; $690D: $B7
    jr z, jr_03E_6952                             ; $690E: $28 $42

    ld a, $18                                     ; $6910: $3E $18
    ld b, $02                                     ; $6912: $06 $02
    ld c, $02                                     ; $6914: $0E $02
    call Call_000_189B                            ; $6916: $CD $9B $18
    ld a, [$D6AB]                                 ; $6919: $FA $AB $D6
    ld d, a                                       ; $691C: $57
    ld a, [$D6B3]                                 ; $691D: $FA $B3 $D6
    or a                                          ; $6920: $B7
    jr nz, jr_03E_6941                            ; $6921: $20 $1E

    ld a, [$D682]                                 ; $6923: $FA $82 $D6
    xor d                                         ; $6926: $AA
    bit 5, a                                      ; $6927: $CB $6F
    jr nz, jr_03E_692F                            ; $6929: $20 $04

    ld a, d                                       ; $692B: $7A
    xor $80                                       ; $692C: $EE $80
    ld d, a                                       ; $692E: $57

jr_03E_692F:
    bit 7, d                                      ; $692F: $CB $7A
    jr nz, jr_03E_693A                            ; $6931: $20 $07

    ld e, $06                                     ; $6933: $1E $06
    ld hl, $5C45                                  ; $6935: $21 $45 $5C
    jr jr_03E_6946                                ; $6938: $18 $0C

jr_03E_693A:
    ld e, $07                                     ; $693A: $1E $07
    ld hl, $5C63                                  ; $693C: $21 $63 $5C
    jr jr_03E_6946                                ; $693F: $18 $05

jr_03E_6941:
    ld e, $08                                     ; $6941: $1E $08
    ld hl, $5C81                                  ; $6943: $21 $81 $5C

jr_03E_6946:
    xor a                                         ; $6946: $AF
    ld [$D6AB], a                                 ; $6947: $EA $AB $D6
    ld a, $20                                     ; $694A: $3E $20
    ld [$D6B4], a                                 ; $694C: $EA $B4 $D6
    jp Jump_03E_69D1                              ; $694F: $C3 $D1 $69


jr_03E_6952:
    ld a, [$D6B4]                                 ; $6952: $FA $B4 $D6
    or a                                          ; $6955: $B7
    jp z, Jump_03E_6972                           ; $6956: $CA $72 $69

    dec a                                         ; $6959: $3D
    ld [$D6B4], a                                 ; $695A: $EA $B4 $D6
    jr z, jr_03E_696A                             ; $695D: $28 $0B

    ld a, [$D684]                                 ; $695F: $FA $84 $D6
    xor $02                                       ; $6962: $EE $02
    ld [$D684], a                                 ; $6964: $EA $84 $D6
    jp Jump_03E_69F9                              ; $6967: $C3 $F9 $69


jr_03E_696A:
    ld a, $FF                                     ; $696A: $3E $FF
    ld [$D6AF], a                                 ; $696C: $EA $AF $D6
    jp Jump_03E_69F9                              ; $696F: $C3 $F9 $69


Jump_03E_6972:
    call Call_03E_69FA                            ; $6972: $CD $FA $69
    ld hl, $D6B1                                  ; $6975: $21 $B1 $D6
    ld a, [hl+]                                   ; $6978: $2A
    ld [hl-], a                                   ; $6979: $32
    ld [hl], c                                    ; $697A: $71
    xor c                                         ; $697B: $A9
    and $0B                                       ; $697C: $E6 $0B
    jp z, Jump_03E_69F9                           ; $697E: $CA $F9 $69

    ld a, c                                       ; $6981: $79
    and $03                                       ; $6982: $E6 $03
    jr z, jr_03E_6994                             ; $6984: $28 $0E

    ld a, $30                                     ; $6986: $3E $30
    bit 0, c                                      ; $6988: $CB $41
    jr z, jr_03E_698E                             ; $698A: $28 $02

    ld a, $10                                     ; $698C: $3E $10

jr_03E_698E:
    ld [$D682], a                                 ; $698E: $EA $82 $D6
    ld [$D683], a                                 ; $6991: $EA $83 $D6

jr_03E_6994:
    bit 3, c                                      ; $6994: $CB $59
    jr nz, jr_03E_69B7                            ; $6996: $20 $1F

    xor a                                         ; $6998: $AF
    ld [$D6B3], a                                 ; $6999: $EA $B3 $D6
    ld hl, $C353                                  ; $699C: $21 $53 $C3
    inc [hl]                                      ; $699F: $34
    ld e, $00                                     ; $69A0: $1E $00
    ld hl, $5BCD                                  ; $69A2: $21 $CD $5B
    ld a, c                                       ; $69A5: $79
    and $03                                       ; $69A6: $E6 $03
    jr z, jr_03E_69D1                             ; $69A8: $28 $27

    ld e, $02                                     ; $69AA: $1E $02
    ld hl, $5C09                                  ; $69AC: $21 $09 $5C
    and $01                                       ; $69AF: $E6 $01
    jr z, jr_03E_69D1                             ; $69B1: $28 $1E

    ld e, $03                                     ; $69B3: $1E $03
    jr jr_03E_69D1                                ; $69B5: $18 $1A

jr_03E_69B7:
    ld a, $FF                                     ; $69B7: $3E $FF
    ld [$D6B3], a                                 ; $69B9: $EA $B3 $D6
    ld e, $01                                     ; $69BC: $1E $01
    ld hl, $5BEB                                  ; $69BE: $21 $EB $5B
    ld a, c                                       ; $69C1: $79
    and $03                                       ; $69C2: $E6 $03
    jr z, jr_03E_69D1                             ; $69C4: $28 $0B

    ld e, $04                                     ; $69C6: $1E $04
    ld hl, $5C27                                  ; $69C8: $21 $27 $5C
    and $01                                       ; $69CB: $E6 $01
    jr z, jr_03E_69D1                             ; $69CD: $28 $02

    ld e, $05                                     ; $69CF: $1E $05

Jump_03E_69D1:
jr_03E_69D1:
    ld a, e                                       ; $69D1: $7B
    ld [$D6AA], a                                 ; $69D2: $EA $AA $D6
    ld a, [$D6A9]                                 ; $69D5: $FA $A9 $D6
    ld e, a                                       ; $69D8: $5F
    add a                                         ; $69D9: $87
    add e                                         ; $69DA: $83
    ld e, a                                       ; $69DB: $5F
    ld d, $00                                     ; $69DC: $16 $00
    add hl, de                                    ; $69DE: $19
    ld a, [hl+]                                   ; $69DF: $2A
    ld [$D691], a                                 ; $69E0: $EA $91 $D6
    ld a, [hl+]                                   ; $69E3: $2A
    ld [$D692], a                                 ; $69E4: $EA $92 $D6
    ld a, [hl]                                    ; $69E7: $7E
    ld [$D693], a                                 ; $69E8: $EA $93 $D6
    xor a                                         ; $69EB: $AF
    ld [$D694], a                                 ; $69EC: $EA $94 $D6
    ld hl, $D680                                  ; $69EF: $21 $80 $D6
    call Call_000_0DB5                            ; $69F2: $CD $B5 $0D
    ld hl, $C353                                  ; $69F5: $21 $53 $C3
    inc [hl]                                      ; $69F8: $34

Jump_03E_69F9:
    ret                                           ; $69F9: $C9


Call_03E_69FA:
    ld a, [$C2D0]                                 ; $69FA: $FA $D0 $C2
    cp $00                                        ; $69FD: $FE $00
    jp nz, Jump_03E_6A08                          ; $69FF: $C2 $08 $6A

    ld hl, $FF98                                  ; $6A02: $21 $98 $FF
    jp Jump_03E_6A0B                              ; $6A05: $C3 $0B $6A


Jump_03E_6A08:
    ld hl, $FFAB                                  ; $6A08: $21 $AB $FF

Jump_03E_6A0B:
    ld c, [hl]                                    ; $6A0B: $4E
    inc hl                                        ; $6A0C: $23
    ld b, [hl]                                    ; $6A0D: $46
    ret                                           ; $6A0E: $C9


    ld sp, $DD00                                  ; $6A0F: $31 $00 $DD
    di                                            ; $6A12: $F3
    rst RST_10                                    ; $6A13: $D7
    ld hl, $C03A                                  ; $6A14: $21 $3A $C0
    res 1, [hl]                                   ; $6A17: $CB $8E
    ld a, $00                                     ; $6A19: $3E $00
    call Call_000_135D                            ; $6A1B: $CD $5D $13
    xor a                                         ; $6A1E: $AF
    ldh [rBGP], a                                 ; $6A1F: $E0 $47
    ldh [rOBP0], a                                ; $6A21: $E0 $48
    ldh [rOBP1], a                                ; $6A23: $E0 $49
    call Call_000_13ED                            ; $6A25: $CD $ED $13
    call Call_000_0FBD                            ; $6A28: $CD $BD $0F
    call Call_000_0FC6                            ; $6A2B: $CD $C6 $0F
    xor a                                         ; $6A2E: $AF
    ldh [$FFE2], a                                ; $6A2F: $E0 $E2
    ld [$C2AA], a                                 ; $6A31: $EA $AA $C2
    ldh [$FFE4], a                                ; $6A34: $E0 $E4
    ld a, $F0                                     ; $6A36: $3E $F0
    ld [$C2AC], a                                 ; $6A38: $EA $AC $C2
    call Call_03E_6FCF                            ; $6A3B: $CD $CF $6F
    call Call_000_0F9E                            ; $6A3E: $CD $9E $0F
    ld hl, $D680                                  ; $6A41: $21 $80 $D6
    ld de, $24CF                                  ; $6A44: $11 $CF $24
    call Call_000_0F8E                            ; $6A47: $CD $8E $0F
    ld a, [$C31B]                                 ; $6A4A: $FA $1B $C3
    ld c, a                                       ; $6A4D: $4F
    add a                                         ; $6A4E: $87
    add c                                         ; $6A4F: $81
    ld hl, $5BCD                                  ; $6A50: $21 $CD $5B
    ld e, a                                       ; $6A53: $5F
    ld d, $00                                     ; $6A54: $16 $00
    add hl, de                                    ; $6A56: $19
    ld a, [hl+]                                   ; $6A57: $2A
    ld e, [hl]                                    ; $6A58: $5E
    inc hl                                        ; $6A59: $23
    ld d, [hl]                                    ; $6A5A: $56
    ld hl, $D691                                  ; $6A5B: $21 $91 $D6
    ld [hl+], a                                   ; $6A5E: $22
    ld [hl], e                                    ; $6A5F: $73
    inc hl                                        ; $6A60: $23
    ld [hl], d                                    ; $6A61: $72
    ld hl, $D682                                  ; $6A62: $21 $82 $D6
    ld [hl], $30                                  ; $6A65: $36 $30
    ld hl, $D684                                  ; $6A67: $21 $84 $D6
    ld [hl], $4A                                  ; $6A6A: $36 $4A
    ld hl, $D686                                  ; $6A6C: $21 $86 $D6
    ld [hl], $20                                  ; $6A6F: $36 $20
    ld hl, $D6A9                                  ; $6A71: $21 $A9 $D6
    ld [hl], $FF                                  ; $6A74: $36 $FF
    ld hl, $D680                                  ; $6A76: $21 $80 $D6
    call Call_000_0DB5                            ; $6A79: $CD $B5 $0D
    ld a, [$C31B]                                 ; $6A7C: $FA $1B $C3
    ld [$D6A9], a                                 ; $6A7F: $EA $A9 $D6
    and $0F                                       ; $6A82: $E6 $0F
    ld e, a                                       ; $6A84: $5F
    ld d, $00                                     ; $6A85: $16 $00
    ld hl, $7141                                  ; $6A87: $21 $41 $71
    add hl, de                                    ; $6A8A: $19
    ld a, [hl]                                    ; $6A8B: $7E
    ld [$D6AB], a                                 ; $6A8C: $EA $AB $D6
    ld hl, $D840                                  ; $6A8F: $21 $40 $D8
    ld de, $7365                                  ; $6A92: $11 $65 $73
    call Call_000_0F8E                            ; $6A95: $CD $8E $0F
    ld hl, $D6C0                                  ; $6A98: $21 $C0 $D6
    ld de, $73DA                                  ; $6A9B: $11 $DA $73
    call Call_000_0F8E                            ; $6A9E: $CD $8E $0F
    ld hl, $D700                                  ; $6AA1: $21 $00 $D7
    ld de, $744A                                  ; $6AA4: $11 $4A $74
    call Call_000_0F8E                            ; $6AA7: $CD $8E $0F
    ld hl, $D704                                  ; $6AAA: $21 $04 $D7
    ld [hl], $5E                                  ; $6AAD: $36 $5E
    ld hl, $D706                                  ; $6AAF: $21 $06 $D7
    ld [hl], $38                                  ; $6AB2: $36 $38
    ld hl, $D740                                  ; $6AB4: $21 $40 $D7
    ld de, $744A                                  ; $6AB7: $11 $4A $74
    call Call_000_0F8E                            ; $6ABA: $CD $8E $0F
    ld hl, $D744                                  ; $6ABD: $21 $44 $D7
    ld [hl], $6E                                  ; $6AC0: $36 $6E
    ld hl, $D746                                  ; $6AC2: $21 $46 $D7
    ld [hl], $48                                  ; $6AC5: $36 $48
    ld a, $07                                     ; $6AC7: $3E $07
    ldh [rWX], a                                  ; $6AC9: $E0 $4B
    ld a, $68                                     ; $6ACB: $3E $68
    ldh [rWY], a                                  ; $6ACD: $E0 $4A
    ld a, $E7                                     ; $6ACF: $3E $E7
    rst RST_18                                    ; $6AD1: $DF
    xor a                                         ; $6AD2: $AF
    ldh [rSTAT], a                                ; $6AD3: $E0 $41
    ei                                            ; $6AD5: $FB
    ld de, $7111                                  ; $6AD6: $11 $11 $71
    ld hl, $C329                                  ; $6AD9: $21 $29 $C3
    ld c, $30                                     ; $6ADC: $0E $30

jr_03E_6ADE:
    ld a, [de]                                    ; $6ADE: $1A
    inc de                                        ; $6ADF: $13
    ld [hl+], a                                   ; $6AE0: $22
    dec c                                         ; $6AE1: $0D
    jr nz, jr_03E_6ADE                            ; $6AE2: $20 $FA

    call Call_000_0430                            ; $6AE4: $CD $30 $04
    call Call_000_0430                            ; $6AE7: $CD $30 $04
    ld a, $1B                                     ; $6AEA: $3E $1B
    ldh [rBGP], a                                 ; $6AEC: $E0 $47
    ld a, $1F                                     ; $6AEE: $3E $1F
    ldh [rOBP0], a                                ; $6AF0: $E0 $48
    ld a, $4F                                     ; $6AF2: $3E $4F
    ldh [rOBP1], a                                ; $6AF4: $E0 $49
    call Call_000_147A                            ; $6AF6: $CD $7A $14

Jump_03E_6AF9:
    ld a, [$C353]                                 ; $6AF9: $FA $53 $C3
    add a                                         ; $6AFC: $87
    jr nc, jr_03E_6B20                            ; $6AFD: $30 $21

    xor a                                         ; $6AFF: $AF
    ld [$C34B], a                                 ; $6B00: $EA $4B $C3
    ld [$C34C], a                                 ; $6B03: $EA $4C $C3
    ld hl, $D840                                  ; $6B06: $21 $40 $D8
    call Call_000_0DD4                            ; $6B09: $CD $D4 $0D
    ld a, [$D840]                                 ; $6B0C: $FA $40 $D8
    bit 4, a                                      ; $6B0F: $CB $67
    jr z, jr_03E_6B20                             ; $6B11: $28 $0D

    xor a                                         ; $6B13: $AF
    ld [$D840], a                                 ; $6B14: $EA $40 $D8
    ld [$C353], a                                 ; $6B17: $EA $53 $C3
    ld a, [$C312]                                 ; $6B1A: $FA $12 $C3
    call Call_000_135D                            ; $6B1D: $CD $5D $13

jr_03E_6B20:
    ld a, [$C34C]                                 ; $6B20: $FA $4C $C3
    ld [$C34D], a                                 ; $6B23: $EA $4D $C3
    call Call_03E_754B                            ; $6B26: $CD $4B $75
    ld hl, $D680                                  ; $6B29: $21 $80 $D6
    call Call_000_0E28                            ; $6B2C: $CD $28 $0E
    ld a, [$C352]                                 ; $6B2F: $FA $52 $C3
    srl a                                         ; $6B32: $CB $3F
    ld [$D6C6], a                                 ; $6B34: $EA $C6 $D6
    ld hl, $D6C0                                  ; $6B37: $21 $C0 $D6
    call Call_000_0E28                            ; $6B3A: $CD $28 $0E
    ld a, [$C353]                                 ; $6B3D: $FA $53 $C3
    add a                                         ; $6B40: $87
    jr c, jr_03E_6BA0                             ; $6B41: $38 $5D

    call Call_03E_6F14                            ; $6B43: $CD $14 $6F
    ld a, [$C34C]                                 ; $6B46: $FA $4C $C3
    ld e, a                                       ; $6B49: $5F
    ld a, [$C34D]                                 ; $6B4A: $FA $4D $C3
    xor e                                         ; $6B4D: $AB
    and $02                                       ; $6B4E: $E6 $02
    jr z, jr_03E_6B89                             ; $6B50: $28 $37

    ld hl, $C34E                                  ; $6B52: $21 $4E $C3
    inc [hl]                                      ; $6B55: $34
    ld a, $04                                     ; $6B56: $3E $04
    ld b, $02                                     ; $6B58: $06 $02
    ld c, $02                                     ; $6B5A: $0E $02
    call Call_000_189B                            ; $6B5C: $CD $9B $18
    ld hl, $D780                                  ; $6B5F: $21 $80 $D7
    ld a, [hl]                                    ; $6B62: $7E
    add a                                         ; $6B63: $87
    jr nc, jr_03E_6B7E                            ; $6B64: $30 $18

    ld hl, $D7C0                                  ; $6B66: $21 $C0 $D7
    ld a, [hl]                                    ; $6B69: $7E
    add a                                         ; $6B6A: $87
    jr nc, jr_03E_6B7E                            ; $6B6B: $30 $11

    ld hl, $D800                                  ; $6B6D: $21 $00 $D8
    ld a, [hl]                                    ; $6B70: $7E
    add a                                         ; $6B71: $87
    jr nc, jr_03E_6B7E                            ; $6B72: $30 $0A

    ld hl, $D840                                  ; $6B74: $21 $40 $D8
    ld a, [hl]                                    ; $6B77: $7E
    add a                                         ; $6B78: $87
    jr nc, jr_03E_6B7E                            ; $6B79: $30 $03

    ld hl, $D780                                  ; $6B7B: $21 $80 $D7

jr_03E_6B7E:
    ld de, $7481                                  ; $6B7E: $11 $81 $74
    call Call_000_0F8E                            ; $6B81: $CD $8E $0F
    ld a, $BA                                     ; $6B84: $3E $BA
    call Call_000_1360                            ; $6B86: $CD $60 $13

jr_03E_6B89:
    ld hl, $D780                                  ; $6B89: $21 $80 $D7
    ld c, $04                                     ; $6B8C: $0E $04

jr_03E_6B8E:
    push bc                                       ; $6B8E: $C5
    push hl                                       ; $6B8F: $E5
    ld a, [hl]                                    ; $6B90: $7E
    add a                                         ; $6B91: $87
    jr nc, jr_03E_6B97                            ; $6B92: $30 $03

    call Call_03E_6F9F                            ; $6B94: $CD $9F $6F

jr_03E_6B97:
    pop hl                                        ; $6B97: $E1
    ld de, $0040                                  ; $6B98: $11 $40 $00
    add hl, de                                    ; $6B9B: $19
    pop bc                                        ; $6B9C: $C1
    dec c                                         ; $6B9D: $0D
    jr nz, jr_03E_6B8E                            ; $6B9E: $20 $EE

jr_03E_6BA0:
    ld a, [$C329]                                 ; $6BA0: $FA $29 $C3
    and $01                                       ; $6BA3: $E6 $01
    jr nz, jr_03E_6BCD                            ; $6BA5: $20 $26

    ld a, [$C350]                                 ; $6BA7: $FA $50 $C3
    or a                                          ; $6BAA: $B7
    jr z, jr_03E_6BCD                             ; $6BAB: $28 $20

    dec a                                         ; $6BAD: $3D
    ld [$C350], a                                 ; $6BAE: $EA $50 $C3
    ld e, $02                                     ; $6BB1: $1E $02
    ldh a, [$FFE4]                                ; $6BB3: $F0 $E4
    xor e                                         ; $6BB5: $AB
    ldh [$FFE4], a                                ; $6BB6: $E0 $E4
    ld a, [$D704]                                 ; $6BB8: $FA $04 $D7
    xor e                                         ; $6BBB: $AB
    ld [$D704], a                                 ; $6BBC: $EA $04 $D7
    ld a, [$D744]                                 ; $6BBF: $FA $44 $D7
    xor e                                         ; $6BC2: $AB
    ld [$D744], a                                 ; $6BC3: $EA $44 $D7
    ld a, [$D784]                                 ; $6BC6: $FA $84 $D7
    xor e                                         ; $6BC9: $AB
    ld [$D784], a                                 ; $6BCA: $EA $84 $D7

jr_03E_6BCD:
    ld hl, $C329                                  ; $6BCD: $21 $29 $C3
    ld e, [hl]                                    ; $6BD0: $5E
    inc hl                                        ; $6BD1: $23
    ld d, [hl]                                    ; $6BD2: $56
    inc de                                        ; $6BD3: $13
    ld [hl], d                                    ; $6BD4: $72
    dec hl                                        ; $6BD5: $2B
    ld [hl], e                                    ; $6BD6: $73
    call Call_000_0424                            ; $6BD7: $CD $24 $04
    ld a, [$C349]                                 ; $6BDA: $FA $49 $C3
    ld e, a                                       ; $6BDD: $5F
    ld a, [$C34A]                                 ; $6BDE: $FA $4A $C3
    or e                                          ; $6BE1: $B3
    jp z, Jump_03E_6BF4                           ; $6BE2: $CA $F4 $6B

    ldh a, [$FF99]                                ; $6BE5: $F0 $99
    ld e, a                                       ; $6BE7: $5F
    ldh a, [$FFAC]                                ; $6BE8: $F0 $AC
    or e                                          ; $6BEA: $B3
    ld e, a                                       ; $6BEB: $5F
    bit 7, a                                      ; $6BEC: $CB $7F
    jp nz, Jump_03E_6CAD                          ; $6BEE: $C2 $AD $6C

    jp Jump_03E_6AF9                              ; $6BF1: $C3 $F9 $6A


Jump_03E_6BF4:
    ld c, $78                                     ; $6BF4: $0E $78

jr_03E_6BF6:
    push bc                                       ; $6BF6: $C5
    call Call_03E_754B                            ; $6BF7: $CD $4B $75
    ld hl, $D680                                  ; $6BFA: $21 $80 $D6
    call Call_000_0E28                            ; $6BFD: $CD $28 $0E
    call Call_000_0424                            ; $6C00: $CD $24 $04
    ld hl, $D780                                  ; $6C03: $21 $80 $D7
    ld c, $04                                     ; $6C06: $0E $04

jr_03E_6C08:
    push bc                                       ; $6C08: $C5
    push hl                                       ; $6C09: $E5
    ld a, [hl]                                    ; $6C0A: $7E
    add a                                         ; $6C0B: $87
    jr nc, jr_03E_6C11                            ; $6C0C: $30 $03

    call Call_03E_6F9F                            ; $6C0E: $CD $9F $6F

jr_03E_6C11:
    pop hl                                        ; $6C11: $E1
    ld de, $0040                                  ; $6C12: $11 $40 $00
    add hl, de                                    ; $6C15: $19
    pop bc                                        ; $6C16: $C1
    dec c                                         ; $6C17: $0D
    jr nz, jr_03E_6C08                            ; $6C18: $20 $EE

    pop bc                                        ; $6C1A: $C1
    dec c                                         ; $6C1B: $0D
    jr nz, jr_03E_6BF6                            ; $6C1C: $20 $D8

    ld b, $15                                     ; $6C1E: $06 $15
    ld c, $05                                     ; $6C20: $0E $05
    ld e, $00                                     ; $6C22: $1E $00
    ld d, $00                                     ; $6C24: $16 $00
    ld hl, $9800                                  ; $6C26: $21 $00 $98
    call Call_000_10EA                            ; $6C29: $CD $EA $10
    call Call_000_0438                            ; $6C2C: $CD $38 $04
    ld e, $00                                     ; $6C2F: $1E $00
    ld d, $00                                     ; $6C31: $16 $00
    ld hl, $9C65                                  ; $6C33: $21 $65 $9C
    ld b, $0F                                     ; $6C36: $06 $0F
    ld c, $02                                     ; $6C38: $0E $02
    call Call_000_10EA                            ; $6C3A: $CD $EA $10
    ld e, $00                                     ; $6C3D: $1E $00
    ld d, $54                                     ; $6C3F: $16 $54
    ld hl, $9C6C                                  ; $6C41: $21 $6C $9C
    ld b, $04                                     ; $6C44: $06 $04
    ld c, $01                                     ; $6C46: $0E $01
    call Call_000_1111                            ; $6C48: $CD $11 $11
    ld a, [$C354]                                 ; $6C4B: $FA $54 $C3
    ld hl, $9C71                                  ; $6C4E: $21 $71 $9C
    call Call_03E_6F62                            ; $6C51: $CD $62 $6F
    ld a, [$C34E]                                 ; $6C54: $FA $4E $C3
    or a                                          ; $6C57: $B7
    jr z, jr_03E_6CA4                             ; $6C58: $28 $4A

    cp $63                                        ; $6C5A: $FE $63
    jr c, jr_03E_6C60                             ; $6C5C: $38 $02

    ld a, $63                                     ; $6C5E: $3E $63

jr_03E_6C60:
    ld hl, $9800                                  ; $6C60: $21 $00 $98

jr_03E_6C63:
    push af                                       ; $6C63: $F5
    push hl                                       ; $6C64: $E5
    ld b, $01                                     ; $6C65: $06 $01
    ld c, $01                                     ; $6C67: $0E $01
    ld e, $05                                     ; $6C69: $1E $05
    ld d, $01                                     ; $6C6B: $16 $01
    call Call_000_10EA                            ; $6C6D: $CD $EA $10
    ld a, [$C354]                                 ; $6C70: $FA $54 $C3
    inc a                                         ; $6C73: $3C
    daa                                           ; $6C74: $27
    ld [$C354], a                                 ; $6C75: $EA $54 $C3
    ld hl, $9C71                                  ; $6C78: $21 $71 $9C
    call Call_03E_6F62                            ; $6C7B: $CD $62 $6F
    ld a, $C3                                     ; $6C7E: $3E $C3
    call Call_000_1360                            ; $6C80: $CD $60 $13
    call Call_000_0424                            ; $6C83: $CD $24 $04
    call Call_000_0424                            ; $6C86: $CD $24 $04
    call Call_000_0424                            ; $6C89: $CD $24 $04
    call Call_000_0424                            ; $6C8C: $CD $24 $04
    pop hl                                        ; $6C8F: $E1
    inc hl                                        ; $6C90: $23
    ld a, l                                       ; $6C91: $7D
    and $1F                                       ; $6C92: $E6 $1F
    cp $14                                        ; $6C94: $FE $14
    jr c, jr_03E_6CA0                             ; $6C96: $38 $08

    ld a, l                                       ; $6C98: $7D
    and $E0                                       ; $6C99: $E6 $E0
    ld l, a                                       ; $6C9B: $6F
    ld de, $0020                                  ; $6C9C: $11 $20 $00
    add hl, de                                    ; $6C9F: $19

jr_03E_6CA0:
    pop af                                        ; $6CA0: $F1
    dec a                                         ; $6CA1: $3D
    jr nz, jr_03E_6C63                            ; $6CA2: $20 $BF

jr_03E_6CA4:
    call Call_000_0438                            ; $6CA4: $CD $38 $04
    call Call_000_0438                            ; $6CA7: $CD $38 $04
    jp Jump_03E_6D73                              ; $6CAA: $C3 $73 $6D


Jump_03E_6CAD:
    ld e, $00                                     ; $6CAD: $1E $00
    ld d, $00                                     ; $6CAF: $16 $00
    ld hl, $9C65                                  ; $6CB1: $21 $65 $9C
    ld b, $0F                                     ; $6CB4: $06 $0F
    ld c, $02                                     ; $6CB6: $0E $02
    call Call_000_10EA                            ; $6CB8: $CD $EA $10
    ld e, $00                                     ; $6CBB: $1E $00
    ld d, $C0                                     ; $6CBD: $16 $C0
    ld hl, $9C67                                  ; $6CBF: $21 $67 $9C
    ld b, $04                                     ; $6CC2: $06 $04
    ld c, $02                                     ; $6CC4: $0E $02
    call Call_000_1139                            ; $6CC6: $CD $39 $11
    ld e, $00                                     ; $6CC9: $1E $00
    ld d, $C8                                     ; $6CCB: $16 $C8
    ld hl, $9C6E                                  ; $6CCD: $21 $6E $9C
    ld b, $03                                     ; $6CD0: $06 $03
    ld c, $02                                     ; $6CD2: $0E $02
    call Call_000_1139                            ; $6CD4: $CD $39 $11
    xor a                                         ; $6CD7: $AF
    ld [$C351], a                                 ; $6CD8: $EA $51 $C3

jr_03E_6CDB:
    ldh a, [$FF99]                                ; $6CDB: $F0 $99
    ld e, a                                       ; $6CDD: $5F
    ldh a, [$FFAC]                                ; $6CDE: $F0 $AC
    or e                                          ; $6CE0: $B3
    bit 4, a                                      ; $6CE1: $CB $67
    jr nz, jr_03E_6D44                            ; $6CE3: $20 $5F

    and $03                                       ; $6CE5: $E6 $03
    jr z, jr_03E_6D04                             ; $6CE7: $28 $1B

    ld a, [$C351]                                 ; $6CE9: $FA $51 $C3
    cpl                                           ; $6CEC: $2F
    ld [$C351], a                                 ; $6CED: $EA $51 $C3
    ld hl, $9C66                                  ; $6CF0: $21 $66 $9C
    or a                                          ; $6CF3: $B7
    jr nz, jr_03E_6CF9                            ; $6CF4: $20 $03

    ld hl, $9C6D                                  ; $6CF6: $21 $6D $9C

jr_03E_6CF9:
    ld e, $03                                     ; $6CF9: $1E $03
    ld d, $00                                     ; $6CFB: $16 $00
    ld b, $01                                     ; $6CFD: $06 $01
    ld c, $02                                     ; $6CFF: $0E $02
    call Call_000_10EA                            ; $6D01: $CD $EA $10

jr_03E_6D04:
    ld a, [$C329]                                 ; $6D04: $FA $29 $C3
    ld e, a                                       ; $6D07: $5F
    and $07                                       ; $6D08: $E6 $07
    jr nz, jr_03E_6D35                            ; $6D0A: $20 $29

    ld hl, $9C66                                  ; $6D0C: $21 $66 $9C
    ld a, [$C351]                                 ; $6D0F: $FA $51 $C3
    or a                                          ; $6D12: $B7
    jr z, jr_03E_6D18                             ; $6D13: $28 $03

    ld hl, $9C6D                                  ; $6D15: $21 $6D $9C

jr_03E_6D18:
    ld a, e                                       ; $6D18: $7B
    and $18                                       ; $6D19: $E6 $18
    jr z, jr_03E_6D2A                             ; $6D1B: $28 $0D

    ld e, $03                                     ; $6D1D: $1E $03
    ld d, $CE                                     ; $6D1F: $16 $CE
    ld b, $01                                     ; $6D21: $06 $01
    ld c, $02                                     ; $6D23: $0E $02
    call Call_000_1139                            ; $6D25: $CD $39 $11
    jr jr_03E_6D35                                ; $6D28: $18 $0B

jr_03E_6D2A:
    ld e, $03                                     ; $6D2A: $1E $03
    ld d, $00                                     ; $6D2C: $16 $00
    ld b, $01                                     ; $6D2E: $06 $01
    ld c, $02                                     ; $6D30: $0E $02
    call Call_000_10EA                            ; $6D32: $CD $EA $10

jr_03E_6D35:
    ld hl, $C329                                  ; $6D35: $21 $29 $C3
    ld e, [hl]                                    ; $6D38: $5E
    inc hl                                        ; $6D39: $23
    ld d, [hl]                                    ; $6D3A: $56
    inc de                                        ; $6D3B: $13
    ld [hl], d                                    ; $6D3C: $72
    dec hl                                        ; $6D3D: $2B
    ld [hl], e                                    ; $6D3E: $73
    call Call_000_0424                            ; $6D3F: $CD $24 $04
    jr jr_03E_6CDB                                ; $6D42: $18 $97

jr_03E_6D44:
    ld e, $00                                     ; $6D44: $1E $00
    ld d, $00                                     ; $6D46: $16 $00
    ld hl, $9C65                                  ; $6D48: $21 $65 $9C
    ld b, $0D                                     ; $6D4B: $06 $0D
    ld c, $02                                     ; $6D4D: $0E $02
    call Call_000_10EA                            ; $6D4F: $CD $EA $10
    ld e, $00                                     ; $6D52: $1E $00
    ld d, $5D                                     ; $6D54: $16 $5D
    ld hl, $9C6D                                  ; $6D56: $21 $6D $9C
    ld b, $03                                     ; $6D59: $06 $03
    ld c, $01                                     ; $6D5B: $0E $01
    call Call_000_1111                            ; $6D5D: $CD $11 $11
    ld a, [$C34A]                                 ; $6D60: $FA $4A $C3
    ld hl, $9C71                                  ; $6D63: $21 $71 $9C
    call Call_03E_6F62                            ; $6D66: $CD $62 $6F
    call Call_000_0424                            ; $6D69: $CD $24 $04
    ld a, [$C351]                                 ; $6D6C: $FA $51 $C3
    or a                                          ; $6D6F: $B7
    jp z, Jump_03E_6AF9                           ; $6D70: $CA $F9 $6A

Jump_03E_6D73:
    xor a                                         ; $6D73: $AF
    ld [$D680], a                                 ; $6D74: $EA $80 $D6
    ld [$D6C0], a                                 ; $6D77: $EA $C0 $D6
    ld [$D700], a                                 ; $6D7A: $EA $00 $D7
    ld [$D740], a                                 ; $6D7D: $EA $40 $D7
    ld [$D780], a                                 ; $6D80: $EA $80 $D7
    ld [$D7C0], a                                 ; $6D83: $EA $C0 $D7
    ld [$D800], a                                 ; $6D86: $EA $00 $D8
    ld [$D840], a                                 ; $6D89: $EA $40 $D8
    ldh [$FFE4], a                                ; $6D8C: $E0 $E4
    ld a, $82                                     ; $6D8E: $3E $82
    call Call_000_135D                            ; $6D90: $CD $5D $13
    ld e, $00                                     ; $6D93: $1E $00
    ld d, $00                                     ; $6D95: $16 $00
    ld hl, $9C65                                  ; $6D97: $21 $65 $9C
    ld b, $0F                                     ; $6D9A: $06 $0F
    ld c, $02                                     ; $6D9C: $0E $02
    call Call_000_10EA                            ; $6D9E: $CD $EA $10
    ld e, $00                                     ; $6DA1: $1E $00
    ld d, $54                                     ; $6DA3: $16 $54
    ld hl, $9C6C                                  ; $6DA5: $21 $6C $9C
    ld b, $04                                     ; $6DA8: $06 $04
    ld c, $01                                     ; $6DAA: $0E $01
    call Call_000_1111                            ; $6DAC: $CD $11 $11
    ld a, [$C354]                                 ; $6DAF: $FA $54 $C3
    ld hl, $9C71                                  ; $6DB2: $21 $71 $9C
    call Call_03E_6F62                            ; $6DB5: $CD $62 $6F
    ld e, $00                                     ; $6DB8: $1E $00
    ld d, $5A                                     ; $6DBA: $16 $5A
    ld hl, $9CAC                                  ; $6DBC: $21 $AC $9C
    ld b, $03                                     ; $6DBF: $06 $03
    ld c, $01                                     ; $6DC1: $0E $01
    call Call_000_1111                            ; $6DC3: $CD $11 $11
    ld a, [$C009]                                 ; $6DC6: $FA $09 $C0
    ld hl, $9CB1                                  ; $6DC9: $21 $B1 $9C
    call Call_03E_6F62                            ; $6DCC: $CD $62 $6F

Jump_03E_6DCF:
    call Call_000_0424                            ; $6DCF: $CD $24 $04
    ld a, [$C34F]                                 ; $6DD2: $FA $4F $C3
    dec a                                         ; $6DD5: $3D
    ldh [rWY], a                                  ; $6DD6: $E0 $4A
    ld [$C34F], a                                 ; $6DD8: $EA $4F $C3
    cp $00                                        ; $6DDB: $FE $00
    jp c, Jump_03E_6DE9                           ; $6DDD: $DA $E9 $6D

    dec a                                         ; $6DE0: $3D
    ldh [rWY], a                                  ; $6DE1: $E0 $4A
    ld [$C34F], a                                 ; $6DE3: $EA $4F $C3
    jp nz, Jump_03E_6DCF                          ; $6DE6: $C2 $CF $6D

Jump_03E_6DE9:
    ld b, $14                                     ; $6DE9: $06 $14
    ld c, $12                                     ; $6DEB: $0E $12
    ld e, $00                                     ; $6DED: $1E $00
    ld d, $00                                     ; $6DEF: $16 $00
    ld hl, $9800                                  ; $6DF1: $21 $00 $98
    call Call_000_10EA                            ; $6DF4: $CD $EA $10
    ld e, $00                                     ; $6DF7: $1E $00
    ld d, $60                                     ; $6DF9: $16 $60
    ld hl, $9822                                  ; $6DFB: $21 $22 $98
    ld b, $03                                     ; $6DFE: $06 $03
    ld c, $03                                     ; $6E00: $0E $03
    call Call_000_1111                            ; $6E02: $CD $11 $11
    ld a, [$C31B]                                 ; $6E05: $FA $1B $C3
    ld c, a                                       ; $6E08: $4F
    add a                                         ; $6E09: $87
    add c                                         ; $6E0A: $81
    ld hl, $7161                                  ; $6E0B: $21 $61 $71
    ld e, a                                       ; $6E0E: $5F
    ld d, $00                                     ; $6E0F: $16 $00
    add hl, de                                    ; $6E11: $19
    ld b, [hl]                                    ; $6E12: $46
    ld c, $02                                     ; $6E13: $0E $02
    ld e, $01                                     ; $6E15: $1E $01
    ld d, $69                                     ; $6E17: $16 $69
    ld hl, $9827                                  ; $6E19: $21 $27 $98
    call Call_000_1139                            ; $6E1C: $CD $39 $11
    ld e, $00                                     ; $6E1F: $1E $00
    ld d, $54                                     ; $6E21: $16 $54
    ld hl, $986C                                  ; $6E23: $21 $6C $98
    ld b, $04                                     ; $6E26: $06 $04
    ld c, $01                                     ; $6E28: $0E $01
    call Call_000_1111                            ; $6E2A: $CD $11 $11
    ld a, [$C354]                                 ; $6E2D: $FA $54 $C3
    ld hl, $9871                                  ; $6E30: $21 $71 $98
    call Call_03E_6F62                            ; $6E33: $CD $62 $6F
    ld e, $00                                     ; $6E36: $1E $00
    ld d, $5A                                     ; $6E38: $16 $5A
    ld hl, $98AC                                  ; $6E3A: $21 $AC $98
    ld b, $03                                     ; $6E3D: $06 $03
    ld c, $01                                     ; $6E3F: $0E $01
    call Call_000_1111                            ; $6E41: $CD $11 $11
    ld a, [$C009]                                 ; $6E44: $FA $09 $C0
    ld hl, $98B1                                  ; $6E47: $21 $B1 $98
    call Call_03E_6F62                            ; $6E4A: $CD $62 $6F
    ld a, $8F                                     ; $6E4D: $3E $8F
    ldh [rWY], a                                  ; $6E4F: $E0 $4A
    ld hl, $C354                                  ; $6E51: $21 $54 $C3
    ld c, [hl]                                    ; $6E54: $4E
    ld b, $00                                     ; $6E55: $06 $00
    ld a, [$C00A]                                 ; $6E57: $FA $0A $C0
    cp b                                          ; $6E5A: $B8
    jr z, jr_03E_6E61                             ; $6E5B: $28 $04

    jr nc, jr_03E_6EB9                            ; $6E5D: $30 $5A

    jr jr_03E_6E67                                ; $6E5F: $18 $06

jr_03E_6E61:
    ld a, [$C009]                                 ; $6E61: $FA $09 $C0
    cp c                                          ; $6E64: $B9
    jr nc, jr_03E_6EB9                            ; $6E65: $30 $52

jr_03E_6E67:
    ld a, c                                       ; $6E67: $79
    ld [$C009], a                                 ; $6E68: $EA $09 $C0
    ld a, b                                       ; $6E6B: $78
    ld [$C00A], a                                 ; $6E6C: $EA $0A $C0
    ld a, [$C31B]                                 ; $6E6F: $FA $1B $C3
    ld [$C008], a                                 ; $6E72: $EA $08 $C0
    ld c, $08                                     ; $6E75: $0E $08

jr_03E_6E77:
    push bc                                       ; $6E77: $C5
    ld e, $00                                     ; $6E78: $1E $00
    ld d, $00                                     ; $6E7A: $16 $00
    ld hl, $98AC                                  ; $6E7C: $21 $AC $98
    ld b, $09                                     ; $6E7F: $06 $09
    ld c, $02                                     ; $6E81: $0E $02
    call Call_000_10EA                            ; $6E83: $CD $EA $10
    call Call_000_0424                            ; $6E86: $CD $24 $04
    call Call_000_0424                            ; $6E89: $CD $24 $04
    call Call_000_0424                            ; $6E8C: $CD $24 $04
    call Call_000_0424                            ; $6E8F: $CD $24 $04
    ld e, $00                                     ; $6E92: $1E $00
    ld d, $5A                                     ; $6E94: $16 $5A
    ld hl, $98AC                                  ; $6E96: $21 $AC $98
    ld b, $03                                     ; $6E99: $06 $03
    ld c, $01                                     ; $6E9B: $0E $01
    call Call_000_1111                            ; $6E9D: $CD $11 $11
    ld a, [$C009]                                 ; $6EA0: $FA $09 $C0
    ld hl, $98B1                                  ; $6EA3: $21 $B1 $98
    call Call_03E_6F62                            ; $6EA6: $CD $62 $6F
    call Call_000_0424                            ; $6EA9: $CD $24 $04
    call Call_000_0424                            ; $6EAC: $CD $24 $04
    call Call_000_0424                            ; $6EAF: $CD $24 $04
    call Call_000_0424                            ; $6EB2: $CD $24 $04
    pop bc                                        ; $6EB5: $C1
    dec c                                         ; $6EB6: $0D
    jr nz, jr_03E_6E77                            ; $6EB7: $20 $BE

jr_03E_6EB9:
    ld a, [$C31B]                                 ; $6EB9: $FA $1B $C3
    ld e, a                                       ; $6EBC: $5F
    add a                                         ; $6EBD: $87
    add a                                         ; $6EBE: $87
    ld e, a                                       ; $6EBF: $5F
    ld d, $00                                     ; $6EC0: $16 $00
    ld hl, $717D                                  ; $6EC2: $21 $7D $71
    add hl, de                                    ; $6EC5: $19
    ld a, [$C354]                                 ; $6EC6: $FA $54 $C3
    ld e, a                                       ; $6EC9: $5F
    ld a, [$C009]                                 ; $6ECA: $FA $09 $C0
    cp e                                          ; $6ECD: $BB
    jr nz, jr_03E_6ED2                            ; $6ECE: $20 $02

    inc hl                                        ; $6ED0: $23
    inc hl                                        ; $6ED1: $23

jr_03E_6ED2:
    ld a, [hl+]                                   ; $6ED2: $2A
    ld [$C32B], a                                 ; $6ED3: $EA $2B $C3
    ld a, [hl]                                    ; $6ED6: $7E
    ld [$C32C], a                                 ; $6ED7: $EA $2C $C3

jr_03E_6EDA:
    ld b, $39                                     ; $6EDA: $06 $39
    ld hl, $4067                                  ; $6EDC: $21 $67 $40
    rst RST_08                                    ; $6EDF: $CF
    call Call_000_0424                            ; $6EE0: $CD $24 $04
    ld a, [$C32E]                                 ; $6EE3: $FA $2E $C3
    add a                                         ; $6EE6: $87
    jr c, jr_03E_6EF6                             ; $6EE7: $38 $0D

    ldh a, [$FF99]                                ; $6EE9: $F0 $99
    ld e, a                                       ; $6EEB: $5F
    ldh a, [$FFAC]                                ; $6EEC: $F0 $AC
    or e                                          ; $6EEE: $B3
    ld e, a                                       ; $6EEF: $5F
    and $80                                       ; $6EF0: $E6 $80
    jr z, jr_03E_6EDA                             ; $6EF2: $28 $E6

    jr jr_03E_6F01                                ; $6EF4: $18 $0B

jr_03E_6EF6:
    ldh a, [$FF99]                                ; $6EF6: $F0 $99
    ld e, a                                       ; $6EF8: $5F
    ldh a, [$FFAC]                                ; $6EF9: $F0 $AC
    or e                                          ; $6EFB: $B3
    ld e, a                                       ; $6EFC: $5F
    and $90                                       ; $6EFD: $E6 $90
    jr z, jr_03E_6EDA                             ; $6EFF: $28 $D9

jr_03E_6F01:
    ld hl, $C03A                                  ; $6F01: $21 $3A $C0
    res 2, [hl]                                   ; $6F04: $CB $96
    ld a, $00                                     ; $6F06: $3E $00
    call Call_000_135D                            ; $6F08: $CD $5D $13
    call Call_000_0424                            ; $6F0B: $CD $24 $04
    ld b, $3E                                     ; $6F0E: $06 $3E
    ld hl, $4C7D                                  ; $6F10: $21 $7D $4C
    rst RST_00                                    ; $6F13: $C7

Call_03E_6F14:
    ld a, [$C349]                                 ; $6F14: $FA $49 $C3
    ld e, a                                       ; $6F17: $5F
    ld a, [$C34A]                                 ; $6F18: $FA $4A $C3
    or e                                          ; $6F1B: $B3
    ret z                                         ; $6F1C: $C8

    ld a, e                                       ; $6F1D: $7B
    sub $18                                       ; $6F1E: $D6 $18
    ld [$C349], a                                 ; $6F20: $EA $49 $C3
    ret nc                                        ; $6F23: $D0

    ld a, [$C34A]                                 ; $6F24: $FA $4A $C3
    or a                                          ; $6F27: $B7
    jr z, jr_03E_6F58                             ; $6F28: $28 $2E

    dec a                                         ; $6F2A: $3D
    daa                                           ; $6F2B: $27
    ld [$C34A], a                                 ; $6F2C: $EA $4A $C3
    ld c, a                                       ; $6F2F: $4F
    and $0F                                       ; $6F30: $E6 $0F
    cp $09                                        ; $6F32: $FE $09
    jr nz, jr_03E_6F4F                            ; $6F34: $20 $19

    ld a, c                                       ; $6F36: $79
    and $F0                                       ; $6F37: $E6 $F0
    ld e, a                                       ; $6F39: $5F
    ld d, $00                                     ; $6F3A: $16 $00
    ld hl, $7245                                  ; $6F3C: $21 $45 $72
    add hl, de                                    ; $6F3F: $19
    add hl, de                                    ; $6F40: $19
    ld de, $D390                                  ; $6F41: $11 $90 $D3
    ld c, $20                                     ; $6F44: $0E $20

jr_03E_6F46:
    ld a, [hl+]                                   ; $6F46: $2A
    ld [de], a                                    ; $6F47: $12
    inc de                                        ; $6F48: $13
    dec c                                         ; $6F49: $0D
    jr nz, jr_03E_6F46                            ; $6F4A: $20 $FA

    call Call_000_147A                            ; $6F4C: $CD $7A $14

jr_03E_6F4F:
    ld hl, $C352                                  ; $6F4F: $21 $52 $C3
    inc [hl]                                      ; $6F52: $34
    ld a, [$C34A]                                 ; $6F53: $FA $4A $C3
    jr jr_03E_6F5F                                ; $6F56: $18 $07

jr_03E_6F58:
    xor a                                         ; $6F58: $AF
    ld [$C349], a                                 ; $6F59: $EA $49 $C3
    ld [$C34A], a                                 ; $6F5C: $EA $4A $C3

jr_03E_6F5F:
    ld hl, $9C71                                  ; $6F5F: $21 $71 $9C

Call_03E_6F62:
    ld b, a                                       ; $6F62: $47
    swap a                                        ; $6F63: $CB $37
    and $0F                                       ; $6F65: $E6 $0F
    jr nz, jr_03E_6F7A                            ; $6F67: $20 $11

    push bc                                       ; $6F69: $C5
    push hl                                       ; $6F6A: $E5
    ld e, $00                                     ; $6F6B: $1E $00
    ld d, $00                                     ; $6F6D: $16 $00
    ld b, $01                                     ; $6F6F: $06 $01
    ld c, $02                                     ; $6F71: $0E $02
    call Call_000_10EA                            ; $6F73: $CD $EA $10
    pop hl                                        ; $6F76: $E1
    pop bc                                        ; $6F77: $C1
    jr jr_03E_6F8B                                ; $6F78: $18 $11

jr_03E_6F7A:
    push bc                                       ; $6F7A: $C5
    push hl                                       ; $6F7B: $E5
    add a                                         ; $6F7C: $87
    add $40                                       ; $6F7D: $C6 $40
    ld d, a                                       ; $6F7F: $57
    ld e, $00                                     ; $6F80: $1E $00
    ld b, $01                                     ; $6F82: $06 $01
    ld c, $02                                     ; $6F84: $0E $02
    call Call_000_1139                            ; $6F86: $CD $39 $11
    pop hl                                        ; $6F89: $E1
    pop bc                                        ; $6F8A: $C1

jr_03E_6F8B:
    ld de, $0001                                  ; $6F8B: $11 $01 $00
    add hl, de                                    ; $6F8E: $19
    ld a, b                                       ; $6F8F: $78
    and $0F                                       ; $6F90: $E6 $0F
    add a                                         ; $6F92: $87
    add $40                                       ; $6F93: $C6 $40
    ld d, a                                       ; $6F95: $57
    ld e, $00                                     ; $6F96: $1E $00
    ld b, $01                                     ; $6F98: $06 $01
    ld c, $02                                     ; $6F9A: $0E $02
    jp Jump_000_1139                              ; $6F9C: $C3 $39 $11


Call_03E_6F9F:
    ld e, l                                       ; $6F9F: $5D
    ld d, h                                       ; $6FA0: $54
    ld hl, $0006                                  ; $6FA1: $21 $06 $00
    add hl, de                                    ; $6FA4: $19
    dec [hl]                                      ; $6FA5: $35
    ld hl, $0004                                  ; $6FA6: $21 $04 $00
    add hl, de                                    ; $6FA9: $19
    ld a, [hl]                                    ; $6FAA: $7E
    add $02                                       ; $6FAB: $C6 $02
    ld [hl], a                                    ; $6FAD: $77
    cp $A0                                        ; $6FAE: $FE $A0
    jr c, jr_03E_6FB5                             ; $6FB0: $38 $03

    xor a                                         ; $6FB2: $AF
    ld [de], a                                    ; $6FB3: $12
    ret                                           ; $6FB4: $C9


jr_03E_6FB5:
    ld l, e                                       ; $6FB5: $6B
    ld h, d                                       ; $6FB6: $62
    jp Jump_000_0E28                              ; $6FB7: $C3 $28 $0E


    ld a, [$C2D0]                                 ; $6FBA: $FA $D0 $C2
    cp $00                                        ; $6FBD: $FE $00
    jp nz, Jump_03E_6FC8                          ; $6FBF: $C2 $C8 $6F

    ld hl, $FF98                                  ; $6FC2: $21 $98 $FF
    jp Jump_03E_6FCB                              ; $6FC5: $C3 $CB $6F


Jump_03E_6FC8:
    ld hl, $FFAB                                  ; $6FC8: $21 $AB $FF

Jump_03E_6FCB:
    ld c, [hl]                                    ; $6FCB: $4E
    inc hl                                        ; $6FCC: $23
    ld b, [hl]                                    ; $6FCD: $46
    ret                                           ; $6FCE: $C9


Call_03E_6FCF:
    ld hl, $4DE1                                  ; $6FCF: $21 $E1 $4D
    ld b, $32                                     ; $6FD2: $06 $32
    ld de, $C429                                  ; $6FD4: $11 $29 $C4
    rst RST_20                                    ; $6FD7: $E7
    ld a, [$C31B]                                 ; $6FD8: $FA $1B $C3
    and $0F                                       ; $6FDB: $E6 $0F
    swap a                                        ; $6FDD: $CB $37
    ld e, a                                       ; $6FDF: $5F
    ld d, $00                                     ; $6FE0: $16 $00
    ld l, e                                       ; $6FE2: $6B
    ld h, d                                       ; $6FE3: $62
    add hl, hl                                    ; $6FE4: $29
    add hl, hl                                    ; $6FE5: $29
    add hl, hl                                    ; $6FE6: $29
    add hl, de                                    ; $6FE7: $19
    ld de, $C529                                  ; $6FE8: $11 $29 $C5
    add hl, de                                    ; $6FEB: $19
    ld de, $9600                                  ; $6FEC: $11 $00 $96
    ld b, $09                                     ; $6FEF: $06 $09
    call Call_000_1188                            ; $6FF1: $CD $88 $11
    ld e, $00                                     ; $6FF4: $1E $00
    ld d, $60                                     ; $6FF6: $16 $60
    ld hl, $9C22                                  ; $6FF8: $21 $22 $9C
    ld b, $03                                     ; $6FFB: $06 $03
    ld c, $03                                     ; $6FFD: $0E $03
    call Call_000_1111                            ; $6FFF: $CD $11 $11
    ld a, [$C31B]                                 ; $7002: $FA $1B $C3
    ld c, a                                       ; $7005: $4F
    add a                                         ; $7006: $87
    add c                                         ; $7007: $81
    ld hl, $715F                                  ; $7008: $21 $5F $71
    ld e, a                                       ; $700B: $5F
    ld d, $00                                     ; $700C: $16 $00
    add hl, de                                    ; $700E: $19
    ld a, [hl+]                                   ; $700F: $2A
    ld d, [hl]                                    ; $7010: $56
    inc hl                                        ; $7011: $23
    push hl                                       ; $7012: $E5
    ld l, a                                       ; $7013: $6F
    ld h, d                                       ; $7014: $62
    ld de, $C349                                  ; $7015: $11 $49 $C3
    ld b, $30                                     ; $7018: $06 $30
    rst RST_20                                    ; $701A: $E7
    pop hl                                        ; $701B: $E1
    ld a, [hl]                                    ; $701C: $7E
    push af                                       ; $701D: $F5
    add a                                         ; $701E: $87
    ld b, a                                       ; $701F: $47
    ld hl, $C349                                  ; $7020: $21 $49 $C3
    ld de, $9690                                  ; $7023: $11 $90 $96
    call Call_000_1188                            ; $7026: $CD $88 $11
    pop af                                        ; $7029: $F1
    ld b, a                                       ; $702A: $47
    ld c, $02                                     ; $702B: $0E $02
    ld e, $01                                     ; $702D: $1E $01
    ld d, $69                                     ; $702F: $16 $69
    ld hl, $9C27                                  ; $7031: $21 $27 $9C
    call Call_000_1139                            ; $7034: $CD $39 $11
    ld hl, $7838                                  ; $7037: $21 $38 $78
    ld b, $34                                     ; $703A: $06 $34
    ld de, $C429                                  ; $703C: $11 $29 $C4
    rst RST_20                                    ; $703F: $E7
    ld hl, $C429                                  ; $7040: $21 $29 $C4
    ld de, $9000                                  ; $7043: $11 $00 $90
    ld b, $60                                     ; $7046: $06 $60
    call Call_000_1188                            ; $7048: $CD $88 $11
    ld hl, $CA29                                  ; $704B: $21 $29 $CA
    ld de, $8C00                                  ; $704E: $11 $00 $8C
    ld b, $10                                     ; $7051: $06 $10
    call Call_000_1188                            ; $7053: $CD $88 $11
    ld hl, $7C21                                  ; $7056: $21 $21 $7C
    ld b, $34                                     ; $7059: $06 $34
    ld de, $C429                                  ; $705B: $11 $29 $C4
    rst RST_20                                    ; $705E: $E7
    ld hl, $9800                                  ; $705F: $21 $00 $98
    ld de, $C429                                  ; $7062: $11 $29 $C4
    ld b, $15                                     ; $7065: $06 $15
    ld c, $12                                     ; $7067: $0E $12
    call Call_000_10C0                            ; $7069: $CD $C0 $10
    ld hl, $7CC2                                  ; $706C: $21 $C2 $7C
    ld b, $34                                     ; $706F: $06 $34
    ld de, $C429                                  ; $7071: $11 $29 $C4
    rst RST_20                                    ; $7074: $E7
    ld hl, $C429                                  ; $7075: $21 $29 $C4
    ld de, $8400                                  ; $7078: $11 $00 $84
    ld b, $40                                     ; $707B: $06 $40
    call Call_000_1188                            ; $707D: $CD $88 $11
    ld hl, $6BFA                                  ; $7080: $21 $FA $6B
    ld b, $35                                     ; $7083: $06 $35
    ld de, $C429                                  ; $7085: $11 $29 $C4
    rst RST_20                                    ; $7088: $E7
    ld hl, $C429                                  ; $7089: $21 $29 $C4
    ld de, $8800                                  ; $708C: $11 $00 $88
    ld b, $1E                                     ; $708F: $06 $1E
    call Call_000_1188                            ; $7091: $CD $88 $11
    ld e, $00                                     ; $7094: $1E $00
    ld d, $5D                                     ; $7096: $16 $5D
    ld hl, $9C6D                                  ; $7098: $21 $6D $9C
    ld b, $03                                     ; $709B: $06 $03
    ld c, $01                                     ; $709D: $0E $01
    call Call_000_1111                            ; $709F: $CD $11 $11
    ld a, [$7132]                                 ; $70A2: $FA $32 $71
    ld hl, $9C71                                  ; $70A5: $21 $71 $9C
    call Call_03E_6F62                            ; $70A8: $CD $62 $6F
    ld a, [$C31B]                                 ; $70AB: $FA $1B $C3
    ld e, a                                       ; $70AE: $5F
    add a                                         ; $70AF: $87
    ld e, a                                       ; $70B0: $5F
    ld d, $00                                     ; $70B1: $16 $00
    ld hl, $714B                                  ; $70B3: $21 $4B $71
    add hl, de                                    ; $70B6: $19
    ld e, [hl]                                    ; $70B7: $5E
    inc hl                                        ; $70B8: $23
    ld a, [hl+]                                   ; $70B9: $2A
    ld [$C312], a                                 ; $70BA: $EA $12 $C3
    ld d, $00                                     ; $70BD: $16 $00
    call Call_000_14C0                            ; $70BF: $CD $C0 $14
    ld a, [$C31B]                                 ; $70C2: $FA $1B $C3
    add a                                         ; $70C5: $87
    add a                                         ; $70C6: $87
    add a                                         ; $70C7: $87
    ld e, a                                       ; $70C8: $5F
    ld d, $00                                     ; $70C9: $16 $00
    ld hl, $71CD                                  ; $70CB: $21 $CD $71
    add hl, de                                    ; $70CE: $19
    ld de, $D380                                  ; $70CF: $11 $80 $D3
    ld c, $08                                     ; $70D2: $0E $08

jr_03E_70D4:
    ld a, [hl+]                                   ; $70D4: $2A
    ld [de], a                                    ; $70D5: $12
    inc de                                        ; $70D6: $13
    dec c                                         ; $70D7: $0D
    jr nz, jr_03E_70D4                            ; $70D8: $20 $FA

    ld a, [$C31B]                                 ; $70DA: $FA $1B $C3
    and $01                                       ; $70DD: $E6 $01
    add a                                         ; $70DF: $87
    add a                                         ; $70E0: $87
    add a                                         ; $70E1: $87
    ld e, a                                       ; $70E2: $5F
    ld d, $00                                     ; $70E3: $16 $00
    ld hl, $71BD                                  ; $70E5: $21 $BD $71
    add hl, de                                    ; $70E8: $19

jr_03E_70E9:
    ld de, $D388                                  ; $70E9: $11 $88 $D3
    ld c, $08                                     ; $70EC: $0E $08

jr_03E_70EE:
    ld a, [hl+]                                   ; $70EE: $2A
    ld [de], a                                    ; $70EF: $12
    inc de                                        ; $70F0: $13
    dec c                                         ; $70F1: $0D
    jr nz, jr_03E_70EE                            ; $70F2: $20 $FA

    ld hl, $721D                                  ; $70F4: $21 $1D $72
    ld de, $D390                                  ; $70F7: $11 $90 $D3
    ld c, $28                                     ; $70FA: $0E $28

jr_03E_70FC:
    ld a, [hl+]                                   ; $70FC: $2A
    ld [de], a                                    ; $70FD: $12
    inc de                                        ; $70FE: $13
    dec c                                         ; $70FF: $0D
    jr nz, jr_03E_70FC                            ; $7100: $20 $FA

    ld hl, $71A5                                  ; $7102: $21 $A5 $71
    ld de, $D3D0                                  ; $7105: $11 $D0 $D3
    ld c, $18                                     ; $7108: $0E $18

jr_03E_710A:
    ld a, [hl+]                                   ; $710A: $2A
    ld [de], a                                    ; $710B: $12
    inc de                                        ; $710C: $13
    dec c                                         ; $710D: $0D
    jr nz, jr_03E_710A                            ; $710E: $20 $FA

    ret                                           ; $7110: $C9


    nop                                           ; $7111: $00
    nop                                           ; $7112: $00
    ld h, [hl]                                    ; $7113: $66
    ld h, a                                       ; $7114: $67
    nop                                           ; $7115: $00
    nop                                           ; $7116: $00
    ld l, c                                       ; $7117: $69
    jp $C3A9                                      ; $7118: $C3 $A9 $C3


    ld a, c                                       ; $711B: $79
    push bc                                       ; $711C: $C5
    ld bc, $0001                                  ; $711D: $01 $01 $00
    adc b                                         ; $7120: $88
    nop                                           ; $7121: $00
    nop                                           ; $7122: $00
    nop                                           ; $7123: $00
    nop                                           ; $7124: $00
    nop                                           ; $7125: $00
    ld a, c                                       ; $7126: $79
    push bc                                       ; $7127: $C5
    nop                                           ; $7128: $00
    ld bc, $8001                                  ; $7129: $01 $01 $80
    nop                                           ; $712C: $00
    nop                                           ; $712D: $00
    nop                                           ; $712E: $00
    nop                                           ; $712F: $00
    nop                                           ; $7130: $00
    nop                                           ; $7131: $00
    sbc c                                         ; $7132: $99
    nop                                           ; $7133: $00
    nop                                           ; $7134: $00
    nop                                           ; $7135: $00
    nop                                           ; $7136: $00
    ld l, b                                       ; $7137: $68
    nop                                           ; $7138: $00
    nop                                           ; $7139: $00
    nop                                           ; $713A: $00
    rst RST_38                                    ; $713B: $FF
    nop                                           ; $713C: $00
    nop                                           ; $713D: $00
    nop                                           ; $713E: $00
    nop                                           ; $713F: $00
    nop                                           ; $7140: $00
    jr z, @+$2E                                   ; $7141: $28 $2C

    jr nz, jr_03E_7175                            ; $7143: $20 $30

    jr jr_03E_7173                                ; $7145: $18 $2C

    jr nc, jr_03E_7171                            ; $7147: $30 $28

    jr nc, jr_03E_714B                            ; $7149: $30 $00

jr_03E_714B:
    dec h                                         ; $714B: $25
    sub [hl]                                      ; $714C: $96
    ld h, $96                                     ; $714D: $26 $96
    daa                                           ; $714F: $27
    sub [hl]                                      ; $7150: $96
    jr z, jr_03E_70E9                             ; $7151: $28 $96

    add hl, hl                                    ; $7153: $29
    sub [hl]                                      ; $7154: $96
    ld a, [hl+]                                   ; $7155: $2A
    sub [hl]                                      ; $7156: $96
    dec hl                                        ; $7157: $2B
    sub [hl]                                      ; $7158: $96
    inc l                                         ; $7159: $2C
    sub [hl]                                      ; $715A: $96
    dec l                                         ; $715B: $2D
    sub [hl]                                      ; $715C: $96
    ld l, $96                                     ; $715D: $2E $96
    ldh [c], a                                    ; $715F: $E2
    ld [hl], l                                    ; $7160: $75
    dec bc                                        ; $7161: $0B
    push af                                       ; $7162: $F5
    halt                                          ; $7163: $76
    add hl, bc                                    ; $7164: $09
    jp z, $0677                                   ; $7165: $CA $77 $06

    ld h, h                                       ; $7168: $64
    ld a, b                                       ; $7169: $78
    ld a, [bc]                                    ; $716A: $0A
    ld b, [hl]                                    ; $716B: $46
    ld a, c                                       ; $716C: $79
    rlca                                          ; $716D: $07
    and $79                                       ; $716E: $E6 $79
    add hl, bc                                    ; $7170: $09

jr_03E_7171:
    cp h                                          ; $7171: $BC
    ld a, d                                       ; $7172: $7A

jr_03E_7173:
    rlca                                          ; $7173: $07
    ld d, [hl]                                    ; $7174: $56

jr_03E_7175:
    ld a, e                                       ; $7175: $7B
    ld [$7C17], sp                                ; $7176: $08 $17 $7C
    dec bc                                        ; $7179: $0B
    ld de, $087D                                  ; $717A: $11 $7D $08
    ld h, [hl]                                    ; $717D: $66
    ld h, a                                       ; $717E: $67
    sub a                                         ; $717F: $97
    ld h, a                                       ; $7180: $67
    db $DD                                        ; $7181: $DD
    ld h, a                                       ; $7182: $67
    ld c, $68                                     ; $7183: $0E $68
    ld h, e                                       ; $7185: $63
    ld l, b                                       ; $7186: $68
    sub c                                         ; $7187: $91
    ld l, b                                       ; $7188: $68
    rst RST_10                                    ; $7189: $D7
    ld l, b                                       ; $718A: $68
    dec bc                                        ; $718B: $0B
    ld l, c                                       ; $718C: $69
    ld d, h                                       ; $718D: $54
    ld l, c                                       ; $718E: $69
    add l                                         ; $718F: $85
    ld l, c                                       ; $7190: $69
    call nc, Call_000_0869                        ; $7191: $D4 $69 $08
    ld l, d                                       ; $7194: $6A
    ld d, a                                       ; $7195: $57
    ld l, d                                       ; $7196: $6A
    adc b                                         ; $7197: $88
    ld l, d                                       ; $7198: $6A
    push bc                                       ; $7199: $C5
    ld l, d                                       ; $719A: $6A
    db $E4                                        ; $719B: $E4
    ld l, d                                       ; $719C: $6A
    ld a, [hl+]                                   ; $719D: $2A
    ld l, e                                       ; $719E: $6B
    ld [hl], e                                    ; $719F: $73
    ld l, e                                       ; $71A0: $6B
    jp nz, $026B                                  ; $71A1: $C2 $6B $02

    ld l, h                                       ; $71A4: $6C
    add hl, hl                                    ; $71A5: $29
    ld [hl+], a                                   ; $71A6: $22
    dec b                                         ; $71A7: $05
    nop                                           ; $71A8: $00
    or e                                          ; $71A9: $B3
    halt                                          ; $71AA: $76
    rst RST_38                                    ; $71AB: $FF
    ld a, a                                       ; $71AC: $7F
    nop                                           ; $71AD: $00
    nop                                           ; $71AE: $00
    ld a, a                                       ; $71AF: $7F
    inc c                                         ; $71B0: $0C
    cp a                                          ; $71B1: $BF
    ld c, $CE                                     ; $71B2: $0E $CE
    ld a, [hl]                                    ; $71B4: $7E
    nop                                           ; $71B5: $00
    nop                                           ; $71B6: $00
    dec b                                         ; $71B7: $05
    nop                                           ; $71B8: $00
    ld a, a                                       ; $71B9: $7F
    inc c                                         ; $71BA: $0C
    rst RST_38                                    ; $71BB: $FF
    inc sp                                        ; $71BC: $33
    nop                                           ; $71BD: $00
    nop                                           ; $71BE: $00
    ld h, c                                       ; $71BF: $61
    ld a, h                                       ; $71C0: $7C
    ld l, e                                       ; $71C1: $6B
    ld a, a                                       ; $71C2: $7F
    rst RST_38                                    ; $71C3: $FF
    rlca                                          ; $71C4: $07
    nop                                           ; $71C5: $00
    nop                                           ; $71C6: $00
    ld a, e                                       ; $71C7: $7B
    inc c                                         ; $71C8: $0C
    ccf                                           ; $71C9: $3F
    ld l, [hl]                                    ; $71CA: $6E
    rst RST_38                                    ; $71CB: $FF
    rlca                                          ; $71CC: $07
    nop                                           ; $71CD: $00
    nop                                           ; $71CE: $00
    db $E3                                        ; $71CF: $E3
    ld a, h                                       ; $71D0: $7C
    dec l                                         ; $71D1: $2D
    ld a, a                                       ; $71D2: $7F
    rst RST_38                                    ; $71D3: $FF
    ld a, a                                       ; $71D4: $7F
    nop                                           ; $71D5: $00
    nop                                           ; $71D6: $00
    ld a, a                                       ; $71D7: $7F
    inc l                                         ; $71D8: $2C
    cp l                                          ; $71D9: $BD
    ld a, [hl]                                    ; $71DA: $7E
    rst RST_38                                    ; $71DB: $FF
    ld a, a                                       ; $71DC: $7F
    nop                                           ; $71DD: $00
    nop                                           ; $71DE: $00
    cp a                                          ; $71DF: $BF
    inc c                                         ; $71E0: $0C
    cp a                                          ; $71E1: $BF
    ld a, $FF                                     ; $71E2: $3E $FF
    ld a, a                                       ; $71E4: $7F
    nop                                           ; $71E5: $00
    nop                                           ; $71E6: $00
    inc hl                                        ; $71E7: $23
    ld c, $75                                     ; $71E8: $0E $75
    ld d, a                                       ; $71EA: $57
    rst RST_38                                    ; $71EB: $FF
    ld a, a                                       ; $71EC: $7F
    nop                                           ; $71ED: $00
    nop                                           ; $71EE: $00
    cp a                                          ; $71EF: $BF
    dec e                                         ; $71F0: $1D
    cp l                                          ; $71F1: $BD
    rrca                                          ; $71F2: $0F
    rst RST_38                                    ; $71F3: $FF
    ld a, a                                       ; $71F4: $7F
    nop                                           ; $71F5: $00
    nop                                           ; $71F6: $00
    add hl, sp                                    ; $71F7: $39
    dec e                                         ; $71F8: $1D
    dec a                                         ; $71F9: $3D
    rrca                                          ; $71FA: $0F
    rst RST_38                                    ; $71FB: $FF
    ld a, a                                       ; $71FC: $7F
    nop                                           ; $71FD: $00
    nop                                           ; $71FE: $00
    cpl                                           ; $71FF: $2F
    ld a, l                                       ; $7200: $7D
    xor l                                         ; $7201: $AD
    ld a, e                                       ; $7202: $7B
    rst RST_38                                    ; $7203: $FF
    ld a, a                                       ; $7204: $7F
    nop                                           ; $7205: $00
    nop                                           ; $7206: $00
    ld l, c                                       ; $7207: $69
    ld c, l                                       ; $7208: $4D
    ld sp, $FF7E                                  ; $7209: $31 $7E $FF
    ld a, a                                       ; $720C: $7F
    nop                                           ; $720D: $00
    nop                                           ; $720E: $00
    rst RST_38                                    ; $720F: $FF
    inc e                                         ; $7210: $1C
    ccf                                           ; $7211: $3F
    scf                                           ; $7212: $37
    rst RST_38                                    ; $7213: $FF
    ld a, a                                       ; $7214: $7F
    nop                                           ; $7215: $00
    nop                                           ; $7216: $00
    and e                                         ; $7217: $A3
    ld c, $E7                                     ; $7218: $0E $E7
    rra                                           ; $721A: $1F
    rst RST_38                                    ; $721B: $FF
    ld a, a                                       ; $721C: $7F
    nop                                           ; $721D: $00
    nop                                           ; $721E: $00
    inc hl                                        ; $721F: $23
    ld c, $23                                     ; $7220: $0E $23
    rrca                                          ; $7222: $0F
    jp hl                                         ; $7223: $E9


    ld a, [hl]                                    ; $7224: $7E
    nop                                           ; $7225: $00
    nop                                           ; $7226: $00
    ld [hl], e                                    ; $7227: $73
    dec e                                         ; $7228: $1D
    dec sp                                        ; $7229: $3B
    ld e, $E9                                     ; $722A: $1E $E9
    ld a, [hl]                                    ; $722C: $7E
    nop                                           ; $722D: $00
    nop                                           ; $722E: $00
    ld [hl], e                                    ; $722F: $73
    dec e                                         ; $7230: $1D
    inc hl                                        ; $7231: $23
    rrca                                          ; $7232: $0F
    jp hl                                         ; $7233: $E9


    ld a, [hl]                                    ; $7234: $7E
    nop                                           ; $7235: $00
    nop                                           ; $7236: $00
    rst RST_20                                    ; $7237: $E7
    ld a, h                                       ; $7238: $7C
    inc sp                                        ; $7239: $33
    ld a, a                                       ; $723A: $7F
    rst RST_38                                    ; $723B: $FF
    ld a, a                                       ; $723C: $7F
    nop                                           ; $723D: $00
    nop                                           ; $723E: $00
    rst RST_38                                    ; $723F: $FF
    inc c                                         ; $7240: $0C
    rst RST_38                                    ; $7241: $FF
    inc c                                         ; $7242: $0C
    rst RST_38                                    ; $7243: $FF
    inc c                                         ; $7244: $0C
    nop                                           ; $7245: $00
    nop                                           ; $7246: $00
    adc h                                         ; $7247: $8C
    dec c                                         ; $7248: $0D
    adc h                                         ; $7249: $8C
    ld c, $DF                                     ; $724A: $0E $DF
    dec [hl]                                      ; $724C: $35
    nop                                           ; $724D: $00
    nop                                           ; $724E: $00
    db $D3                                        ; $724F: $D3
    inc c                                         ; $7250: $0C
    sbc e                                         ; $7251: $9B
    dec c                                         ; $7252: $0D
    rst RST_18                                    ; $7253: $DF
    dec [hl]                                      ; $7254: $35
    nop                                           ; $7255: $00
    nop                                           ; $7256: $00
    db $D3                                        ; $7257: $D3
    inc c                                         ; $7258: $0C
    adc h                                         ; $7259: $8C
    ld c, $DF                                     ; $725A: $0E $DF
    dec [hl]                                      ; $725C: $35
    nop                                           ; $725D: $00
    nop                                           ; $725E: $00
    rst RST_20                                    ; $725F: $E7
    ld a, h                                       ; $7260: $7C
    inc sp                                        ; $7261: $33
    ld a, a                                       ; $7262: $7F
    rst RST_38                                    ; $7263: $FF
    ld a, a                                       ; $7264: $7F
    nop                                           ; $7265: $00
    nop                                           ; $7266: $00
    adc e                                         ; $7267: $8B
    dec c                                         ; $7268: $0D
    adc e                                         ; $7269: $8B
    ld c, $FF                                     ; $726A: $0E $FF
    dec a                                         ; $726C: $3D
    nop                                           ; $726D: $00
    nop                                           ; $726E: $00
    di                                            ; $726F: $F3
    inc c                                         ; $7270: $0C
    cp e                                          ; $7271: $BB
    dec c                                         ; $7272: $0D
    rst RST_38                                    ; $7273: $FF
    dec a                                         ; $7274: $3D
    nop                                           ; $7275: $00
    nop                                           ; $7276: $00
    di                                            ; $7277: $F3
    inc c                                         ; $7278: $0C
    adc e                                         ; $7279: $8B
    ld c, $FF                                     ; $727A: $0E $FF
    dec a                                         ; $727C: $3D
    nop                                           ; $727D: $00
    nop                                           ; $727E: $00
    rst RST_20                                    ; $727F: $E7
    ld a, h                                       ; $7280: $7C
    inc sp                                        ; $7281: $33
    ld a, a                                       ; $7282: $7F
    rst RST_38                                    ; $7283: $FF
    ld a, a                                       ; $7284: $7F
    nop                                           ; $7285: $00
    nop                                           ; $7286: $00
    xor d                                         ; $7287: $AA
    dec c                                         ; $7288: $0D
    xor d                                         ; $7289: $AA
    ld c, $1F                                     ; $728A: $0E $1F
    ld b, [hl]                                    ; $728C: $46
    nop                                           ; $728D: $00
    nop                                           ; $728E: $00
    di                                            ; $728F: $F3
    db $10                                        ; $7290: $10
    cp e                                          ; $7291: $BB
    ld de, $461F                                  ; $7292: $11 $1F $46
    nop                                           ; $7295: $00
    nop                                           ; $7296: $00
    di                                            ; $7297: $F3
    db $10                                        ; $7298: $10
    xor d                                         ; $7299: $AA
    ld c, $1F                                     ; $729A: $0E $1F
    ld b, [hl]                                    ; $729C: $46
    nop                                           ; $729D: $00
    nop                                           ; $729E: $00
    rst RST_20                                    ; $729F: $E7
    ld a, h                                       ; $72A0: $7C
    inc sp                                        ; $72A1: $33
    ld a, a                                       ; $72A2: $7F
    rst RST_38                                    ; $72A3: $FF
    ld a, a                                       ; $72A4: $7F
    nop                                           ; $72A5: $00
    nop                                           ; $72A6: $00
    xor c                                         ; $72A7: $A9
    dec c                                         ; $72A8: $0D
    xor c                                         ; $72A9: $A9
    ld c, $3F                                     ; $72AA: $0E $3F
    ld c, [hl]                                    ; $72AC: $4E
    nop                                           ; $72AD: $00
    nop                                           ; $72AE: $00
    inc de                                        ; $72AF: $13
    ld de, $11DB                                  ; $72B0: $11 $DB $11
    ccf                                           ; $72B3: $3F
    ld c, [hl]                                    ; $72B4: $4E
    nop                                           ; $72B5: $00
    nop                                           ; $72B6: $00
    inc de                                        ; $72B7: $13
    ld de, $0EA9                                  ; $72B8: $11 $A9 $0E
    ccf                                           ; $72BB: $3F
    ld c, [hl]                                    ; $72BC: $4E
    nop                                           ; $72BD: $00
    nop                                           ; $72BE: $00
    rst RST_20                                    ; $72BF: $E7
    ld a, h                                       ; $72C0: $7C
    inc sp                                        ; $72C1: $33
    ld a, a                                       ; $72C2: $7F
    rst RST_38                                    ; $72C3: $FF
    ld a, a                                       ; $72C4: $7F
    nop                                           ; $72C5: $00
    nop                                           ; $72C6: $00
    add sp, $0D                                   ; $72C7: $E8 $0D
    add sp, $0E                                   ; $72C9: $E8 $0E
    ld e, e                                       ; $72CB: $5B
    ld d, [hl]                                    ; $72CC: $56
    nop                                           ; $72CD: $00
    nop                                           ; $72CE: $00
    inc de                                        ; $72CF: $13
    dec d                                         ; $72D0: $15
    db $DB                                        ; $72D1: $DB
    dec d                                         ; $72D2: $15
    ld e, e                                       ; $72D3: $5B
    ld d, [hl]                                    ; $72D4: $56
    nop                                           ; $72D5: $00
    nop                                           ; $72D6: $00
    inc de                                        ; $72D7: $13
    dec d                                         ; $72D8: $15
    add sp, $0E                                   ; $72D9: $E8 $0E
    ld e, e                                       ; $72DB: $5B
    ld d, [hl]                                    ; $72DC: $56
    nop                                           ; $72DD: $00
    nop                                           ; $72DE: $00
    rst RST_20                                    ; $72DF: $E7
    ld a, h                                       ; $72E0: $7C
    inc sp                                        ; $72E1: $33
    ld a, a                                       ; $72E2: $7F
    rst RST_38                                    ; $72E3: $FF
    ld a, a                                       ; $72E4: $7F
    nop                                           ; $72E5: $00
    nop                                           ; $72E6: $00
    rst RST_20                                    ; $72E7: $E7
    dec c                                         ; $72E8: $0D
    rst RST_20                                    ; $72E9: $E7
    ld c, $77                                     ; $72EA: $0E $77
    ld e, [hl]                                    ; $72EC: $5E
    nop                                           ; $72ED: $00
    nop                                           ; $72EE: $00
    inc sp                                        ; $72EF: $33
    dec d                                         ; $72F0: $15
    ei                                            ; $72F1: $FB
    dec d                                         ; $72F2: $15
    ld [hl], a                                    ; $72F3: $77
    ld e, [hl]                                    ; $72F4: $5E
    nop                                           ; $72F5: $00
    nop                                           ; $72F6: $00
    inc sp                                        ; $72F7: $33
    dec d                                         ; $72F8: $15
    rst RST_20                                    ; $72F9: $E7
    ld c, $77                                     ; $72FA: $0E $77
    ld e, [hl]                                    ; $72FC: $5E
    nop                                           ; $72FD: $00
    nop                                           ; $72FE: $00
    rst RST_20                                    ; $72FF: $E7
    ld a, h                                       ; $7300: $7C
    inc sp                                        ; $7301: $33
    ld a, a                                       ; $7302: $7F
    rst RST_38                                    ; $7303: $FF
    ld a, a                                       ; $7304: $7F
    nop                                           ; $7305: $00
    nop                                           ; $7306: $00
    ld b, $0E                                     ; $7307: $06 $0E
    ld b, $0F                                     ; $7309: $06 $0F
    sub l                                         ; $730B: $95
    ld h, [hl]                                    ; $730C: $66
    nop                                           ; $730D: $00
    nop                                           ; $730E: $00
    inc sp                                        ; $730F: $33
    add hl, de                                    ; $7310: $19
    ei                                            ; $7311: $FB
    add hl, de                                    ; $7312: $19
    sub l                                         ; $7313: $95
    ld h, [hl]                                    ; $7314: $66
    nop                                           ; $7315: $00
    nop                                           ; $7316: $00
    inc sp                                        ; $7317: $33
    add hl, de                                    ; $7318: $19
    ld b, $0F                                     ; $7319: $06 $0F
    sub l                                         ; $731B: $95
    ld h, [hl]                                    ; $731C: $66
    nop                                           ; $731D: $00
    nop                                           ; $731E: $00
    rst RST_20                                    ; $731F: $E7
    ld a, h                                       ; $7320: $7C
    inc sp                                        ; $7321: $33
    ld a, a                                       ; $7322: $7F
    rst RST_38                                    ; $7323: $FF
    ld a, a                                       ; $7324: $7F
    nop                                           ; $7325: $00
    nop                                           ; $7326: $00
    dec b                                         ; $7327: $05
    ld c, $05                                     ; $7328: $0E $05
    rrca                                          ; $732A: $0F
    or c                                          ; $732B: $B1
    ld l, [hl]                                    ; $732C: $6E
    nop                                           ; $732D: $00
    nop                                           ; $732E: $00
    ld d, e                                       ; $732F: $53
    add hl, de                                    ; $7330: $19
    dec de                                        ; $7331: $1B
    ld a, [de]                                    ; $7332: $1A
    or c                                          ; $7333: $B1
    ld l, [hl]                                    ; $7334: $6E
    nop                                           ; $7335: $00
    nop                                           ; $7336: $00
    ld d, e                                       ; $7337: $53
    add hl, de                                    ; $7338: $19
    dec b                                         ; $7339: $05
    rrca                                          ; $733A: $0F
    or c                                          ; $733B: $B1
    ld l, [hl]                                    ; $733C: $6E
    nop                                           ; $733D: $00
    nop                                           ; $733E: $00
    rst RST_20                                    ; $733F: $E7
    ld a, h                                       ; $7340: $7C
    inc sp                                        ; $7341: $33
    ld a, a                                       ; $7342: $7F
    rst RST_38                                    ; $7343: $FF
    ld a, a                                       ; $7344: $7F
    nop                                           ; $7345: $00
    nop                                           ; $7346: $00
    inc h                                         ; $7347: $24
    ld c, $24                                     ; $7348: $0E $24
    rrca                                          ; $734A: $0F
    call $0076                                    ; $734B: $CD $76 $00
    nop                                           ; $734E: $00
    ld d, e                                       ; $734F: $53
    dec e                                         ; $7350: $1D
    dec de                                        ; $7351: $1B
    ld e, $CD                                     ; $7352: $1E $CD
    halt                                          ; $7354: $76
    nop                                           ; $7355: $00
    nop                                           ; $7356: $00
    ld d, e                                       ; $7357: $53
    dec e                                         ; $7358: $1D
    inc h                                         ; $7359: $24
    rrca                                          ; $735A: $0F
    call $0076                                    ; $735B: $CD $76 $00

Jump_03E_735E:
    nop                                           ; $735E: $00
    rst RST_20                                    ; $735F: $E7
    ld a, h                                       ; $7360: $7C
    inc sp                                        ; $7361: $33
    ld a, a                                       ; $7362: $7F
    rst RST_38                                    ; $7363: $FF
    ld a, a                                       ; $7364: $7F
    add b                                         ; $7365: $80
    nop                                           ; $7366: $00
    ld [bc], a                                    ; $7367: $02
    ld [bc], a                                    ; $7368: $02
    ld d, b                                       ; $7369: $50
    nop                                           ; $736A: $00
    inc h                                         ; $736B: $24
    nop                                           ; $736C: $00
    nop                                           ; $736D: $00
    nop                                           ; $736E: $00
    nop                                           ; $736F: $00
    nop                                           ; $7370: $00
    nop                                           ; $7371: $00
    nop                                           ; $7372: $00
    add b                                         ; $7373: $80
    nop                                           ; $7374: $00
    add b                                         ; $7375: $80
    ld a, $85                                     ; $7376: $3E $85
    ld [hl], e                                    ; $7378: $73
    nop                                           ; $7379: $00
    nop                                           ; $737A: $00
    add l                                         ; $737B: $85
    ld [hl], e                                    ; $737C: $73
    nop                                           ; $737D: $00
    nop                                           ; $737E: $00
    nop                                           ; $737F: $00
    nop                                           ; $7380: $00
    rra                                           ; $7381: $1F
    rra                                           ; $7382: $1F
    ret nz                                        ; $7383: $C0

    ret c                                         ; $7384: $D8

    sub a                                         ; $7385: $97
    ld [hl], e                                    ; $7386: $73
    rst RST_38                                    ; $7387: $FF
    rst RST_38                                    ; $7388: $FF
    sub a                                         ; $7389: $97
    ld [hl], e                                    ; $738A: $73
    rst RST_38                                    ; $738B: $FF
    rst RST_38                                    ; $738C: $FF
    sub a                                         ; $738D: $97
    ld [hl], e                                    ; $738E: $73
    rst RST_38                                    ; $738F: $FF
    rst RST_38                                    ; $7390: $FF
    or h                                          ; $7391: $B4
    ld [hl], e                                    ; $7392: $73
    rst RST_38                                    ; $7393: $FF
    rst RST_38                                    ; $7394: $FF
    rst RST_38                                    ; $7395: $FF
    rst RST_38                                    ; $7396: $FF
    sub b                                         ; $7397: $90
    nop                                           ; $7398: $00
    nop                                           ; $7399: $00
    rst RST_38                                    ; $739A: $FF
    rst RST_38                                    ; $739B: $FF
    rst RST_38                                    ; $739C: $FF
    and c                                         ; $739D: $A1
    ld [hl], e                                    ; $739E: $73
    nop                                           ; $739F: $00
    nop                                           ; $73A0: $00
    ld b, $F8                                     ; $73A1: $06 $F8
    add sp, $00                                   ; $73A3: $E8 $00
    ld hl, sp-$10                                 ; $73A5: $F8 $F0
    ld [bc], a                                    ; $73A7: $02
    ld hl, sp-$08                                 ; $73A8: $F8 $F8
    inc b                                         ; $73AA: $04
    ld hl, sp+$00                                 ; $73AB: $F8 $00
    ld b, $F8                                     ; $73AD: $06 $F8
    ld [$F808], sp                                ; $73AF: $08 $08 $F8
    db $10                                        ; $73B2: $10
    ld a, [bc]                                    ; $73B3: $0A
    sub b                                         ; $73B4: $90
    nop                                           ; $73B5: $00
    nop                                           ; $73B6: $00
    rst RST_38                                    ; $73B7: $FF
    rst RST_38                                    ; $73B8: $FF
    rst RST_38                                    ; $73B9: $FF
    cp [hl]                                       ; $73BA: $BE
    ld [hl], e                                    ; $73BB: $73
    nop                                           ; $73BC: $00
    nop                                           ; $73BD: $00
    add hl, bc                                    ; $73BE: $09
    ld hl, sp-$20                                 ; $73BF: $F8 $E0
    inc c                                         ; $73C1: $0C
    ld hl, sp-$18                                 ; $73C2: $F8 $E8
    ld c, $F8                                     ; $73C4: $0E $F8
    ldh a, [rNR10]                                ; $73C6: $F0 $10
    ld hl, sp-$08                                 ; $73C8: $F8 $F8
    ld [de], a                                    ; $73CA: $12
    ld hl, sp+$00                                 ; $73CB: $F8 $00

jr_03E_73CD:
    inc d                                         ; $73CD: $14
    ld hl, sp+$08                                 ; $73CE: $F8 $08
    ld d, $F8                                     ; $73D0: $16 $F8
    db $10                                        ; $73D2: $10
    jr jr_03E_73CD                                ; $73D3: $18 $F8

    jr @+$1C                                      ; $73D5: $18 $1A

    ld hl, sp+$20                                 ; $73D7: $F8 $20
    inc e                                         ; $73D9: $1C
    add b                                         ; $73DA: $80
    nop                                           ; $73DB: $00
    inc bc                                        ; $73DC: $03
    inc bc                                        ; $73DD: $03
    ld [$0000], sp                                ; $73DE: $08 $00 $00
    nop                                           ; $73E1: $00
    nop                                           ; $73E2: $00
    nop                                           ; $73E3: $00
    nop                                           ; $73E4: $00
    nop                                           ; $73E5: $00
    nop                                           ; $73E6: $00
    nop                                           ; $73E7: $00
    ld h, b                                       ; $73E8: $60
    nop                                           ; $73E9: $00
    add b                                         ; $73EA: $80
    ld a, $FA                                     ; $73EB: $3E $FA
    ld [hl], e                                    ; $73ED: $73
    nop                                           ; $73EE: $00
    nop                                           ; $73EF: $00
    ld a, [$0073]                                 ; $73F0: $FA $73 $00
    nop                                           ; $73F3: $00
    nop                                           ; $73F4: $00
    nop                                           ; $73F5: $00
    rrca                                          ; $73F6: $0F
    rrca                                          ; $73F7: $0F
    ret nz                                        ; $73F8: $C0

    ret c                                         ; $73F9: $D8

    inc b                                         ; $73FA: $04
    ld [hl], h                                    ; $73FB: $74
    rst RST_38                                    ; $73FC: $FF
    rst RST_38                                    ; $73FD: $FF
    daa                                           ; $73FE: $27
    ld [hl], h                                    ; $73FF: $74
    rst RST_38                                    ; $7400: $FF
    rst RST_38                                    ; $7401: $FF
    rst RST_38                                    ; $7402: $FF
    rst RST_38                                    ; $7403: $FF
    sub b                                         ; $7404: $90
    nop                                           ; $7405: $00
    nop                                           ; $7406: $00
    rst RST_38                                    ; $7407: $FF
    rst RST_38                                    ; $7408: $FF
    rst RST_38                                    ; $7409: $FF
    ld c, $74                                     ; $740A: $0E $74
    nop                                           ; $740C: $00
    nop                                           ; $740D: $00
    ld [$00FC], sp                                ; $740E: $08 $FC $00
    nop                                           ; $7411: $00
    db $FC                                        ; $7412: $FC
    ld [$FC02], sp                                ; $7413: $08 $02 $FC
    db $10                                        ; $7416: $10
    inc b                                         ; $7417: $04
    db $FC                                        ; $7418: $FC
    jr jr_03E_7421                                ; $7419: $18 $06

    inc c                                         ; $741B: $0C
    nop                                           ; $741C: $00
    ld [$080C], sp                                ; $741D: $08 $0C $08
    ld a, [bc]                                    ; $7420: $0A

jr_03E_7421:
    inc c                                         ; $7421: $0C
    db $10                                        ; $7422: $10
    inc c                                         ; $7423: $0C
    inc c                                         ; $7424: $0C
    jr jr_03E_7435                                ; $7425: $18 $0E

    sub b                                         ; $7427: $90
    nop                                           ; $7428: $00
    nop                                           ; $7429: $00
    rst RST_38                                    ; $742A: $FF
    rst RST_38                                    ; $742B: $FF
    rst RST_38                                    ; $742C: $FF
    ld sp, $0074                                  ; $742D: $31 $74 $00
    nop                                           ; $7430: $00
    ld [$00FC], sp                                ; $7431: $08 $FC $00
    db $10                                        ; $7434: $10

jr_03E_7435:
    db $FC                                        ; $7435: $FC
    ld [$FC12], sp                                ; $7436: $08 $12 $FC
    db $10                                        ; $7439: $10
    inc d                                         ; $743A: $14
    db $FC                                        ; $743B: $FC
    jr jr_03E_7454                                ; $743C: $18 $16

    inc c                                         ; $743E: $0C
    nop                                           ; $743F: $00
    jr jr_03E_744E                                ; $7440: $18 $0C

    ld [$0C1A], sp                                ; $7442: $08 $1A $0C
    db $10                                        ; $7445: $10
    inc e                                         ; $7446: $1C
    inc c                                         ; $7447: $0C
    jr jr_03E_7468                                ; $7448: $18 $1E

    add b                                         ; $744A: $80
    nop                                           ; $744B: $00
    ld [bc], a                                    ; $744C: $02
    ld [bc], a                                    ; $744D: $02

jr_03E_744E:
    ld l, d                                       ; $744E: $6A
    nop                                           ; $744F: $00
    jr z, jr_03E_7452                             ; $7450: $28 $00

jr_03E_7452:
    nop                                           ; $7452: $00
    nop                                           ; $7453: $00

jr_03E_7454:
    nop                                           ; $7454: $00
    nop                                           ; $7455: $00
    nop                                           ; $7456: $00
    nop                                           ; $7457: $00
    ld b, b                                       ; $7458: $40
    nop                                           ; $7459: $00
    add b                                         ; $745A: $80
    ld a, $6A                                     ; $745B: $3E $6A
    ld [hl], h                                    ; $745D: $74
    nop                                           ; $745E: $00
    nop                                           ; $745F: $00
    ld l, d                                       ; $7460: $6A
    ld [hl], h                                    ; $7461: $74
    nop                                           ; $7462: $00
    nop                                           ; $7463: $00
    nop                                           ; $7464: $00
    nop                                           ; $7465: $00
    inc bc                                        ; $7466: $03
    inc bc                                        ; $7467: $03

jr_03E_7468:
    ret nz                                        ; $7468: $C0

    ret c                                         ; $7469: $D8

    ld [hl], b                                    ; $746A: $70
    ld [hl], h                                    ; $746B: $74
    rst RST_38                                    ; $746C: $FF
    rst RST_38                                    ; $746D: $FF
    rst RST_38                                    ; $746E: $FF
    rst RST_38                                    ; $746F: $FF
    sub b                                         ; $7470: $90
    nop                                           ; $7471: $00
    nop                                           ; $7472: $00
    rst RST_38                                    ; $7473: $FF
    rst RST_38                                    ; $7474: $FF
    rst RST_38                                    ; $7475: $FF
    ld a, d                                       ; $7476: $7A
    ld [hl], h                                    ; $7477: $74
    nop                                           ; $7478: $00
    nop                                           ; $7479: $00
    ld [bc], a                                    ; $747A: $02
    nop                                           ; $747B: $00
    nop                                           ; $747C: $00
    nop                                           ; $747D: $00
    nop                                           ; $747E: $00
    ld [$8002], sp                                ; $747F: $08 $02 $80
    nop                                           ; $7482: $00
    ld [bc], a                                    ; $7483: $02
    ld [bc], a                                    ; $7484: $02
    ld l, d                                       ; $7485: $6A
    nop                                           ; $7486: $00
    jr z, jr_03E_7489                             ; $7487: $28 $00

jr_03E_7489:
    nop                                           ; $7489: $00
    nop                                           ; $748A: $00
    nop                                           ; $748B: $00
    nop                                           ; $748C: $00
    nop                                           ; $748D: $00
    nop                                           ; $748E: $00
    ld b, b                                       ; $748F: $40
    nop                                           ; $7490: $00
    add b                                         ; $7491: $80
    ld a, $A1                                     ; $7492: $3E $A1
    ld [hl], h                                    ; $7494: $74
    nop                                           ; $7495: $00
    nop                                           ; $7496: $00
    and c                                         ; $7497: $A1
    ld [hl], h                                    ; $7498: $74
    nop                                           ; $7499: $00
    nop                                           ; $749A: $00
    nop                                           ; $749B: $00
    nop                                           ; $749C: $00
    ld bc, $C001                                  ; $749D: $01 $01 $C0
    ret c                                         ; $74A0: $D8

    jp $FF74                                      ; $74A1: $C3 $74 $FF


    rst RST_38                                    ; $74A4: $FF
    call nc, $FF74                                ; $74A5: $D4 $74 $FF
    rst RST_38                                    ; $74A8: $FF
    push hl                                       ; $74A9: $E5
    ld [hl], h                                    ; $74AA: $74
    rst RST_38                                    ; $74AB: $FF
    rst RST_38                                    ; $74AC: $FF
    or $74                                        ; $74AD: $F6 $74
    rst RST_38                                    ; $74AF: $FF
    rst RST_38                                    ; $74B0: $FF
    rlca                                          ; $74B1: $07
    ld [hl], l                                    ; $74B2: $75
    rst RST_38                                    ; $74B3: $FF
    rst RST_38                                    ; $74B4: $FF
    jr jr_03E_752C                                ; $74B5: $18 $75

    rst RST_38                                    ; $74B7: $FF
    rst RST_38                                    ; $74B8: $FF
    add hl, hl                                    ; $74B9: $29
    ld [hl], l                                    ; $74BA: $75
    rst RST_38                                    ; $74BB: $FF
    rst RST_38                                    ; $74BC: $FF
    ld a, [hl-]                                   ; $74BD: $3A
    ld [hl], l                                    ; $74BE: $75
    rst RST_38                                    ; $74BF: $FF
    rst RST_38                                    ; $74C0: $FF
    rst RST_38                                    ; $74C1: $FF
    rst RST_38                                    ; $74C2: $FF
    sub b                                         ; $74C3: $90
    nop                                           ; $74C4: $00
    nop                                           ; $74C5: $00
    rst RST_38                                    ; $74C6: $FF
    rst RST_38                                    ; $74C7: $FF
    rst RST_38                                    ; $74C8: $FF
    call $0074                                    ; $74C9: $CD $74 $00
    nop                                           ; $74CC: $00
    ld [bc], a                                    ; $74CD: $02
    nop                                           ; $74CE: $00
    nop                                           ; $74CF: $00
    inc c                                         ; $74D0: $0C
    nop                                           ; $74D1: $00
    ld [$900E], sp                                ; $74D2: $08 $0E $90
    nop                                           ; $74D5: $00
    nop                                           ; $74D6: $00
    rst RST_38                                    ; $74D7: $FF
    rst RST_38                                    ; $74D8: $FF
    rst RST_38                                    ; $74D9: $FF
    sbc $74                                       ; $74DA: $DE $74
    nop                                           ; $74DC: $00
    nop                                           ; $74DD: $00
    ld [bc], a                                    ; $74DE: $02
    nop                                           ; $74DF: $00
    nop                                           ; $74E0: $00
    stop                                          ; $74E1: $10 $00
    ld [$9012], sp                                ; $74E3: $08 $12 $90
    nop                                           ; $74E6: $00
    nop                                           ; $74E7: $00
    rst RST_38                                    ; $74E8: $FF
    rst RST_38                                    ; $74E9: $FF
    rst RST_38                                    ; $74EA: $FF
    rst RST_28                                    ; $74EB: $EF
    ld [hl], h                                    ; $74EC: $74
    nop                                           ; $74ED: $00
    nop                                           ; $74EE: $00
    ld [bc], a                                    ; $74EF: $02
    nop                                           ; $74F0: $00
    nop                                           ; $74F1: $00
    inc d                                         ; $74F2: $14
    nop                                           ; $74F3: $00
    ld [$A016], sp                                ; $74F4: $08 $16 $A0
    nop                                           ; $74F7: $00
    nop                                           ; $74F8: $00
    rst RST_38                                    ; $74F9: $FF
    rst RST_38                                    ; $74FA: $FF
    rst RST_38                                    ; $74FB: $FF
    nop                                           ; $74FC: $00
    ld [hl], l                                    ; $74FD: $75
    nop                                           ; $74FE: $00
    nop                                           ; $74FF: $00
    ld [bc], a                                    ; $7500: $02
    nop                                           ; $7501: $00
    ldh a, [rNR10]                                ; $7502: $F0 $10
    nop                                           ; $7504: $00
    ld hl, sp+$12                                 ; $7505: $F8 $12
    and b                                         ; $7507: $A0
    nop                                           ; $7508: $00
    nop                                           ; $7509: $00
    rst RST_38                                    ; $750A: $FF
    rst RST_38                                    ; $750B: $FF
    rst RST_38                                    ; $750C: $FF
    ld de, $0075                                  ; $750D: $11 $75 $00
    nop                                           ; $7510: $00
    ld [bc], a                                    ; $7511: $02
    nop                                           ; $7512: $00
    ldh a, [$FF0C]                                ; $7513: $F0 $0C
    nop                                           ; $7515: $00
    ld hl, sp+$0E                                 ; $7516: $F8 $0E
    sub b                                         ; $7518: $90
    nop                                           ; $7519: $00
    nop                                           ; $751A: $00
    rst RST_38                                    ; $751B: $FF
    rst RST_38                                    ; $751C: $FF
    rst RST_38                                    ; $751D: $FF
    ld [hl+], a                                   ; $751E: $22
    ld [hl], l                                    ; $751F: $75
    nop                                           ; $7520: $00
    nop                                           ; $7521: $00
    ld [bc], a                                    ; $7522: $02
    nop                                           ; $7523: $00
    nop                                           ; $7524: $00
    jr jr_03E_7527                                ; $7525: $18 $00

jr_03E_7527:
    ld [$901A], sp                                ; $7527: $08 $1A $90
    nop                                           ; $752A: $00
    nop                                           ; $752B: $00

jr_03E_752C:
    rst RST_38                                    ; $752C: $FF
    rst RST_38                                    ; $752D: $FF
    rst RST_38                                    ; $752E: $FF
    inc sp                                        ; $752F: $33
    ld [hl], l                                    ; $7530: $75
    nop                                           ; $7531: $00
    nop                                           ; $7532: $00
    ld [bc], a                                    ; $7533: $02
    nop                                           ; $7534: $00
    nop                                           ; $7535: $00
    inc e                                         ; $7536: $1C
    nop                                           ; $7537: $00
    ld [$A01E], sp                                ; $7538: $08 $1E $A0
    nop                                           ; $753B: $00
    nop                                           ; $753C: $00
    rst RST_38                                    ; $753D: $FF
    rst RST_38                                    ; $753E: $FF
    rst RST_38                                    ; $753F: $FF
    ld b, h                                       ; $7540: $44
    ld [hl], l                                    ; $7541: $75
    nop                                           ; $7542: $00
    nop                                           ; $7543: $00
    ld [bc], a                                    ; $7544: $02
    nop                                           ; $7545: $00
    ldh a, [rNR23]                                ; $7546: $F0 $18
    nop                                           ; $7548: $00
    ld hl, sp+$1A                                 ; $7549: $F8 $1A

Call_03E_754B:
    ld a, [$C349]                                 ; $754B: $FA $49 $C3
    ld e, a                                       ; $754E: $5F
    ld a, [$C34A]                                 ; $754F: $FA $4A $C3
    or e                                          ; $7552: $B3
    jp z, Jump_03E_75A4                           ; $7553: $CA $A4 $75

    call Call_03E_7645                            ; $7556: $CD $45 $76
    bit 4, b                                      ; $7559: $CB $60
    jp z, Jump_03E_75A4                           ; $755B: $CA $A4 $75

    ld hl, $D6B4                                  ; $755E: $21 $B4 $D6
    ld a, [hl-]                                   ; $7561: $3A
    ld e, a                                       ; $7562: $5F
    ld a, [hl+]                                   ; $7563: $2A
    ld d, a                                       ; $7564: $57
    ld [hl-], a                                   ; $7565: $32
    dec hl                                        ; $7566: $2B
    ld a, [hl+]                                   ; $7567: $2A
    ld c, a                                       ; $7568: $4F
    ld [hl-], a                                   ; $7569: $32
    dec hl                                        ; $756A: $2B
    ld a, [hl+]                                   ; $756B: $2A
    ld b, a                                       ; $756C: $47
    ld [hl-], a                                   ; $756D: $32
    xor a                                         ; $756E: $AF
    ld [hl], a                                    ; $756F: $77
    ld a, $FF                                     ; $7570: $3E $FF
    ld [$D6AC], a                                 ; $7572: $EA $AC $D6
    ld a, b                                       ; $7575: $78
    cp c                                          ; $7576: $B9
    jr z, jr_03E_7593                             ; $7577: $28 $1A

    cp d                                          ; $7579: $BA
    jr z, jr_03E_7593                             ; $757A: $28 $17

    cp e                                          ; $757C: $BB
    jr z, jr_03E_7593                             ; $757D: $28 $14

    cp $05                                        ; $757F: $FE $05
    jr c, jr_03E_7593                             ; $7581: $38 $10

    ld a, [$D6AB]                                 ; $7583: $FA $AB $D6
    cp $FF                                        ; $7586: $FE $FF
    jr z, jr_03E_7593                             ; $7588: $28 $09

    add $06                                       ; $758A: $C6 $06
    jr nc, jr_03E_7590                            ; $758C: $30 $02

    ld a, $FF                                     ; $758E: $3E $FF

jr_03E_7590:
    ld [$D6AB], a                                 ; $7590: $EA $AB $D6

jr_03E_7593:
    ld a, [$D6AB]                                 ; $7593: $FA $AB $D6
    ld e, a                                       ; $7596: $5F
    ld a, [$C34B]                                 ; $7597: $FA $4B $C3
    add e                                         ; $759A: $83
    ld [$C34B], a                                 ; $759B: $EA $4B $C3
    jr nc, jr_03E_75A4                            ; $759E: $30 $04

    ld hl, $C34C                                  ; $75A0: $21 $4C $C3
    inc [hl]                                      ; $75A3: $34

Jump_03E_75A4:
jr_03E_75A4:
    ld a, [$D6AC]                                 ; $75A4: $FA $AC $D6
    or a                                          ; $75A7: $B7
    jp z, Jump_03E_75F0                           ; $75A8: $CA $F0 $75

    ld a, [$D6AA]                                 ; $75AB: $FA $AA $D6
    cp $01                                        ; $75AE: $FE $01
    jr z, jr_03E_75C6                             ; $75B0: $28 $14

    ld a, $00                                     ; $75B2: $3E $00
    ld [$D69C], a                                 ; $75B4: $EA $9C $D6
    ld [$D69D], a                                 ; $75B7: $EA $9D $D6
    xor a                                         ; $75BA: $AF
    ld [$D6AC], a                                 ; $75BB: $EA $AC $D6
    ld e, $01                                     ; $75BE: $1E $01
    ld hl, $7678                                  ; $75C0: $21 $78 $76
    jp Jump_03E_761C                              ; $75C3: $C3 $1C $76


jr_03E_75C6:
    ld a, [$D698]                                 ; $75C6: $FA $98 $D6
    cp $04                                        ; $75C9: $FE $04
    jr z, jr_03E_75E0                             ; $75CB: $28 $13

    cp $08                                        ; $75CD: $FE $08
    jr nz, jr_03E_7640                            ; $75CF: $20 $6F

    ld de, $D680                                  ; $75D1: $11 $80 $D6
    call Call_000_2CA9                            ; $75D4: $CD $A9 $2C
    jr nc, jr_03E_7640                            ; $75D7: $30 $67

    xor a                                         ; $75D9: $AF
    ld [$D6AC], a                                 ; $75DA: $EA $AC $D6
    jp Jump_03E_7640                              ; $75DD: $C3 $40 $76


jr_03E_75E0:
    ld de, $D680                                  ; $75E0: $11 $80 $D6
    call Call_000_2CA9                            ; $75E3: $CD $A9 $2C
    jr nc, jr_03E_7640                            ; $75E6: $30 $58

    ld a, $08                                     ; $75E8: $3E $08
    ld [$C350], a                                 ; $75EA: $EA $50 $C3
    jp Jump_03E_7640                              ; $75ED: $C3 $40 $76


Jump_03E_75F0:
    ld a, [$D6AA]                                 ; $75F0: $FA $AA $D6
    cp $01                                        ; $75F3: $FE $01
    jp nz, Jump_03E_7640                          ; $75F5: $C2 $40 $76

    ld a, [$D698]                                 ; $75F8: $FA $98 $D6
    cp $04                                        ; $75FB: $FE $04
    jr z, jr_03E_75E0                             ; $75FD: $28 $E1

    cp $08                                        ; $75FF: $FE $08
    jr nz, jr_03E_7640                            ; $7601: $20 $3D

    ld de, $D680                                  ; $7603: $11 $80 $D6
    call Call_000_2CA9                            ; $7606: $CD $A9 $2C
    jr nc, jr_03E_7640                            ; $7609: $30 $35

    xor a                                         ; $760B: $AF
    ld [$D6AC], a                                 ; $760C: $EA $AC $D6
    ld a, $03                                     ; $760F: $3E $03
    ld [$D69C], a                                 ; $7611: $EA $9C $D6
    ld [$D69D], a                                 ; $7614: $EA $9D $D6
    ld e, $00                                     ; $7617: $1E $00
    ld hl, $765A                                  ; $7619: $21 $5A $76

Jump_03E_761C:
    ld a, e                                       ; $761C: $7B
    ld [$D6AA], a                                 ; $761D: $EA $AA $D6
    ld a, [$D6A9]                                 ; $7620: $FA $A9 $D6
    ld e, a                                       ; $7623: $5F
    add a                                         ; $7624: $87
    add e                                         ; $7625: $83
    ld e, a                                       ; $7626: $5F
    ld d, $00                                     ; $7627: $16 $00
    add hl, de                                    ; $7629: $19
    ld a, [hl+]                                   ; $762A: $2A
    ld [$D691], a                                 ; $762B: $EA $91 $D6
    ld a, [hl+]                                   ; $762E: $2A
    ld [$D692], a                                 ; $762F: $EA $92 $D6
    ld a, [hl]                                    ; $7632: $7E
    ld [$D693], a                                 ; $7633: $EA $93 $D6
    xor a                                         ; $7636: $AF
    ld [$D694], a                                 ; $7637: $EA $94 $D6
    ld hl, $D680                                  ; $763A: $21 $80 $D6
    call Call_000_0DB5                            ; $763D: $CD $B5 $0D

Jump_03E_7640:
jr_03E_7640:
    ld hl, $D6B1                                  ; $7640: $21 $B1 $D6
    inc [hl]                                      ; $7643: $34
    ret                                           ; $7644: $C9


Call_03E_7645:
    ld a, [$C2D0]                                 ; $7645: $FA $D0 $C2
    cp $00                                        ; $7648: $FE $00
    jp nz, Jump_03E_7653                          ; $764A: $C2 $53 $76

    ld hl, $FF98                                  ; $764D: $21 $98 $FF
    jp Jump_03E_7656                              ; $7650: $C3 $56 $76


Jump_03E_7653:
    ld hl, $FFAB                                  ; $7653: $21 $AB $FF

Jump_03E_7656:
    ld c, [hl]                                    ; $7656: $4E
    inc hl                                        ; $7657: $23
    ld b, [hl]                                    ; $7658: $46
    ret                                           ; $7659: $C9


    rlca                                          ; $765A: $07
    cp [hl]                                       ; $765B: $BE
    ld b, b                                       ; $765C: $40
    rlca                                          ; $765D: $07
    ld h, c                                       ; $765E: $61
    ld d, a                                       ; $765F: $57
    ld [$402A], sp                                ; $7660: $08 $2A $40
    ld [$5C8A], sp                                ; $7663: $08 $8A $5C
    add hl, bc                                    ; $7666: $09
    ld [hl+], a                                   ; $7667: $22
    ld b, b                                       ; $7668: $40
    add hl, bc                                    ; $7669: $09
    db $F4                                        ; $766A: $F4
    ld d, a                                       ; $766B: $57
    ld a, [bc]                                    ; $766C: $0A
    ld b, $40                                     ; $766D: $06 $40
    ld a, [bc]                                    ; $766F: $0A
    ld a, l                                       ; $7670: $7D
    ld e, d                                       ; $7671: $5A
    dec bc                                        ; $7672: $0B
    ld a, [hl+]                                   ; $7673: $2A
    ld b, b                                       ; $7674: $40
    dec bc                                        ; $7675: $0B
    db $E4                                        ; $7676: $E4
    ld e, e                                       ; $7677: $5B
    rlca                                          ; $7678: $07
    halt                                          ; $7679: $76
    ld b, c                                       ; $767A: $41
    rlca                                          ; $767B: $07
    push de                                       ; $767C: $D5
    ld d, a                                       ; $767D: $57
    ld [$40E2], sp                                ; $767E: $08 $E2 $40
    ld [$5CFE], sp                                ; $7681: $08 $FE $5C
    add hl, bc                                    ; $7684: $09
    jp nc, $0940                                  ; $7685: $D2 $40 $09

    ld h, h                                       ; $7688: $64
    ld e, b                                       ; $7689: $58
    ld a, [bc]                                    ; $768A: $0A
    ld a, d                                       ; $768B: $7A
    ld b, b                                       ; $768C: $40
    ld a, [bc]                                    ; $768D: $0A
    pop af                                        ; $768E: $F1
    ld e, d                                       ; $768F: $5A
    dec bc                                        ; $7690: $0B
    ldh [c], a                                    ; $7691: $E2
    ld b, b                                       ; $7692: $40
    dec bc                                        ; $7693: $0B
    sbc h                                         ; $7694: $9C
    ld e, h                                       ; $7695: $5C
    rlca                                          ; $7696: $07
    sub [hl]                                      ; $7697: $96
    ld b, d                                       ; $7698: $42
    rlca                                          ; $7699: $07
    db $DD                                        ; $769A: $DD
    ld e, b                                       ; $769B: $58
    ld [$41E2], sp                                ; $769C: $08 $E2 $41
    ld [$5E0E], sp                                ; $769F: $08 $0E $5E
    add hl, bc                                    ; $76A2: $09
    xor $41                                       ; $76A3: $EE $41
    add hl, bc                                    ; $76A5: $09
    ld [hl], h                                    ; $76A6: $74
    ld e, c                                       ; $76A7: $59
    ld a, [bc]                                    ; $76A8: $0A
    adc h                                         ; $76A9: $8C
    ld b, c                                       ; $76AA: $41
    ld a, [bc]                                    ; $76AB: $0A
    ld de, $0B5C                                  ; $76AC: $11 $5C $0B
    ld l, $42                                     ; $76AF: $2E $42
    dec bc                                        ; $76B1: $0B
    and [hl]                                      ; $76B2: $A6
    ld e, l                                       ; $76B3: $5D
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
