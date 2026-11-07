; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $020", ROMX[$4000], BANK[$20]

    sub c                                         ; $4000: $91
    add b                                         ; $4001: $80
    ld a, l                                       ; $4002: $7D
    nop                                           ; $4003: $00
    inc bc                                        ; $4004: $03
    inc bc                                        ; $4005: $03
    inc bc                                        ; $4006: $03
    inc bc                                        ; $4007: $03
    nop                                           ; $4008: $00
    cp $00                                        ; $4009: $FE $00
    ld d, l                                       ; $400B: $55
    ld [bc], a                                    ; $400C: $02
    nop                                           ; $400D: $00
    inc b                                         ; $400E: $04
    nop                                           ; $400F: $00
    ld c, b                                       ; $4010: $48
    nop                                           ; $4011: $00
    jr nc, jr_020_4014                            ; $4012: $30 $00

jr_020_4014:
    ld d, l                                       ; $4014: $55
    stop                                          ; $4015: $10 $00
    ld [$0600], sp                                ; $4017: $08 $00 $06
    nop                                           ; $401A: $00
    ld a, b                                       ; $401B: $78
    nop                                           ; $401C: $00
    cp l                                          ; $401D: $BD
    dec d                                         ; $401E: $15
    rst RST_38                                    ; $401F: $FF
    nop                                           ; $4020: $00
    dec c                                         ; $4021: $0D
    ld bc, $203D                                  ; $4022: $01 $3D $20
    nop                                           ; $4025: $00
    or $87                                        ; $4026: $F6 $87
    inc bc                                        ; $4028: $03
    inc bc                                        ; $4029: $03
    inc bc                                        ; $402A: $03
    inc de                                        ; $402B: $13
    nop                                           ; $402C: $00
    ld d, l                                       ; $402D: $55
    ld a, [hl]                                    ; $402E: $7E
    xor e                                         ; $402F: $AB
    nop                                           ; $4030: $00
    ld [de], a                                    ; $4031: $12
    ld [bc], a                                    ; $4032: $02
    ld [hl+], a                                   ; $4033: $22
    ld [bc], a                                    ; $4034: $02
    ld c, h                                       ; $4035: $4C
    nop                                           ; $4036: $00
    rst RST_28                                    ; $4037: $EF
    xor a                                         ; $4038: $AF
    and l                                         ; $4039: $A5
    jr c, jr_020_403C                             ; $403A: $38 $00

jr_020_403C:
    ret z                                         ; $403C: $C8

    nop                                           ; $403D: $00
    rst RST_00                                    ; $403E: $C7
    rst RST_08                                    ; $403F: $CF
    ld a, a                                       ; $4040: $7F
    xor l                                         ; $4041: $AD
    dec e                                         ; $4042: $1D
    inc a                                         ; $4043: $3C
    nop                                           ; $4044: $00
    ld b, b                                       ; $4045: $40
    ld [bc], a                                    ; $4046: $02
    dec d                                         ; $4047: $15
    ld b, e                                       ; $4048: $43
    nop                                           ; $4049: $00
    ld d, l                                       ; $404A: $55
    ld b, h                                       ; $404B: $44
    nop                                           ; $404C: $00
    ldh a, [c]                                    ; $404D: $F2
    nop                                           ; $404E: $00
    ld c, d                                       ; $404F: $4A
    nop                                           ; $4050: $00
    ld c, c                                       ; $4051: $49
    ld [bc], a                                    ; $4052: $02
    ld d, a                                       ; $4053: $57
    adc b                                         ; $4054: $88

jr_020_4055:
    nop                                           ; $4055: $00
    or b                                          ; $4056: $B0
    nop                                           ; $4057: $00
    jr nz, jr_020_405D                            ; $4058: $20 $03

    inc bc                                        ; $405A: $03
    nop                                           ; $405B: $00
    ld l, d                                       ; $405C: $6A

jr_020_405D:
    ld hl, $FD00                                  ; $405D: $21 $00 $FD
    inc e                                         ; $4060: $1C
    nop                                           ; $4061: $00
    nop                                           ; $4062: $00
    nop                                           ; $4063: $00
    jr nc, jr_020_4055                            ; $4064: $30 $EF

    nop                                           ; $4066: $00
    push af                                       ; $4067: $F5
    sbc l                                         ; $4068: $9D
    ld a, $00                                     ; $4069: $3E $00
    dec c                                         ; $406B: $0D
    dec e                                         ; $406C: $1D
    dec l                                         ; $406D: $2D
    rst RST_38                                    ; $406E: $FF
    dec a                                         ; $406F: $3D
    ld b, c                                       ; $4070: $41
    inc b                                         ; $4071: $04
    inc e                                         ; $4072: $1C
    inc b                                         ; $4073: $04
    inc l                                         ; $4074: $2C
    inc b                                         ; $4075: $04
    inc a                                         ; $4076: $3C
    rst RST_38                                    ; $4077: $FF
    ld c, $1D                                     ; $4078: $0E $1D
    ld a, $3B                                     ; $407A: $3E $3B
    dec sp                                        ; $407C: $3B
    dec sp                                        ; $407D: $3B
    ld a, e                                       ; $407E: $7B
    rst RST_28                                    ; $407F: $EF
    xor [hl]                                      ; $4080: $AE
    push hl                                       ; $4081: $E5
    inc h                                         ; $4082: $24
    nop                                           ; $4083: $00
    jr z, jr_020_4086                             ; $4084: $28 $00

jr_020_4086:
    or a                                          ; $4086: $B7
    inc bc                                        ; $4087: $03
    ld h, $AA                                     ; $4088: $26 $AA
    nop                                           ; $408A: $00
    ld d, b                                       ; $408B: $50
    nop                                           ; $408C: $00
    adc b                                         ; $408D: $88
    nop                                           ; $408E: $00
    inc b                                         ; $408F: $04
    nop                                           ; $4090: $00
    ld [bc], a                                    ; $4091: $02
    db $DD                                        ; $4092: $DD
    nop                                           ; $4093: $00
    scf                                           ; $4094: $37
    ld [$6500], sp                                ; $4095: $08 $00 $65
    ld bc, $0029                                  ; $4098: $01 $29 $00
    ld e, e                                       ; $409B: $5B
    ld a, [hl+]                                   ; $409C: $2A
    nop                                           ; $409D: $00
    ld c, h                                       ; $409E: $4C
    nop                                           ; $409F: $00
    ccf                                           ; $40A0: $3F
    jr jr_020_40A3                                ; $40A1: $18 $00

jr_020_40A3:
    call c, Call_000_00F6                         ; $40A3: $DC $F6 $00
    dec c                                         ; $40A6: $0D
    inc bc                                        ; $40A7: $03
    ld bc, $003C                                  ; $40A8: $01 $3C $00
    db $ED                                        ; $40AB: $ED
    inc e                                         ; $40AC: $1C
    rst RST_18                                    ; $40AD: $DF
    nop                                           ; $40AE: $00
    ld c, l                                       ; $40AF: $4D
    ld a, h                                       ; $40B0: $7C
    nop                                           ; $40B1: $00
    xor l                                         ; $40B2: $AD
    ld bc, $65C5                                  ; $40B3: $01 $C5 $65
    ld e, [hl]                                    ; $40B6: $5E
    stop                                          ; $40B7: $10 $00
    inc c                                         ; $40B9: $0C
    nop                                           ; $40BA: $00
    ccf                                           ; $40BB: $3F
    push de                                       ; $40BC: $D5
    ld [hl], l                                    ; $40BD: $75
    inc h                                         ; $40BE: $24
    cp e                                          ; $40BF: $BB
    nop                                           ; $40C0: $00
    ld b, a                                       ; $40C1: $47
    nop                                           ; $40C2: $00
    ld a, l                                       ; $40C3: $7D
    ld bc, $0016                                  ; $40C4: $01 $16 $00
    dec l                                         ; $40C7: $2D
    xor l                                         ; $40C8: $AD
    dec d                                         ; $40C9: $15
    ld b, b                                       ; $40CA: $40
    ld [bc], a                                    ; $40CB: $02
    ld a, $00                                     ; $40CC: $3E $00
    ccf                                           ; $40CE: $3F

Jump_020_40CF:
    ldh a, [rP1]                                  ; $40CF: $F0 $00
    ld l, e                                       ; $40D1: $6B
    ld c, [hl]                                    ; $40D2: $4E
    nop                                           ; $40D3: $00
    scf                                           ; $40D4: $37
    sub b                                         ; $40D5: $90
    nop                                           ; $40D6: $00
    adc [hl]                                      ; $40D7: $8E
    nop                                           ; $40D8: $00

jr_020_40D9:
    xor l                                         ; $40D9: $AD
    xor [hl]                                      ; $40DA: $AE
    ld c, l                                       ; $40DB: $4D
    ret z                                         ; $40DC: $C8

    nop                                           ; $40DD: $00
    inc de                                        ; $40DE: $13
    nop                                           ; $40DF: $00
    ld e, a                                       ; $40E0: $5F
    ld bc, $FF1C                                  ; $40E1: $01 $1C $FF
    nop                                           ; $40E4: $00
    dec a                                         ; $40E5: $3D
    inc bc                                        ; $40E6: $03
    inc bc                                        ; $40E7: $03
    ld bc, $4585                                  ; $40E8: $01 $85 $45
    ld a, [de]                                    ; $40EB: $1A
    db $DD                                        ; $40EC: $DD
    db $EC                                        ; $40ED: $EC
    inc b                                         ; $40EE: $04
    jr c, jr_020_40FF                             ; $40EF: $38 $0E

    rlca                                          ; $40F1: $07
    dec b                                         ; $40F2: $05
    inc a                                         ; $40F3: $3C
    ld e, a                                       ; $40F4: $5F
    xor e                                         ; $40F5: $AB
    sub l                                         ; $40F6: $95
    ldh [c], a                                    ; $40F7: $E2
    nop                                           ; $40F8: $00
    ld bc, $0202                                  ; $40F9: $01 $02 $02
    nop                                           ; $40FC: $00
    dec h                                         ; $40FD: $25
    ld e, d                                       ; $40FE: $5A

jr_020_40FF:
    stop                                          ; $40FF: $10 $00
    ld a, [hl]                                    ; $4101: $7E
    nop                                           ; $4102: $00
    dec c                                         ; $4103: $0D

Call_020_4104:
    ld a, $00                                     ; $4104: $3E $00
    ld d, l                                       ; $4106: $55
    xor e                                         ; $4107: $AB
    nop                                           ; $4108: $00
    sbc c                                         ; $4109: $99

jr_020_410A:
    nop                                           ; $410A: $00
    pop hl                                        ; $410B: $E1
    nop                                           ; $410C: $00
    ld b, $00                                     ; $410D: $06 $00
    add b                                         ; $410F: $80
    cp d                                          ; $4110: $BA
    nop                                           ; $4111: $00
    ld [$3D00], sp                                ; $4112: $08 $00 $3D

Call_020_4115:
    dec d                                         ; $4115: $15
    ld b, d                                       ; $4116: $42
    nop                                           ; $4117: $00
    ld a, [de]                                    ; $4118: $1A
    or [hl]                                       ; $4119: $B6
    nop                                           ; $411A: $00
    ld h, $00                                     ; $411B: $26 $00
    ld a, l                                       ; $411D: $7D
    ld a, e                                       ; $411E: $7B
    nop                                           ; $411F: $00
    dec a                                         ; $4120: $3D
    jr nc, jr_020_40D9                            ; $4121: $30 $B6

    nop                                           ; $4123: $00
    cp $00                                        ; $4124: $FE $00
    ld c, l                                       ; $4126: $4D
    jr nz, @+$04                                  ; $4127: $20 $02

    dec a                                         ; $4129: $3D
    ld [hl], $ED                                  ; $412A: $36 $ED
    inc bc                                        ; $412C: $03
    inc bc                                        ; $412D: $03
    nop                                           ; $412E: $00
    nop                                           ; $412F: $00

jr_020_4130:
    nop                                           ; $4130: $00
    rla                                           ; $4131: $17
    rst RST_38                                    ; $4132: $FF
    inc d                                         ; $4133: $14
    ret nz                                        ; $4134: $C0

    rlca                                          ; $4135: $07
    rlca                                          ; $4136: $07
    ld a, a                                       ; $4137: $7F
    add b                                         ; $4138: $80
    ccf                                           ; $4139: $3F
    ret nz                                        ; $413A: $C0

    sbc a                                         ; $413B: $9F
    ldh [$FF89], a                                ; $413C: $E0 $89
    inc e                                         ; $413E: $1C

jr_020_413F:
    rlca                                          ; $413F: $07
    rst RST_30                                    ; $4140: $F7
    rrca                                          ; $4141: $0F
    dec b                                         ; $4142: $05
    rst RST_28                                    ; $4143: $EF
    rra                                           ; $4144: $1F
    ret nz                                        ; $4145: $C0

    xor d                                         ; $4146: $AA
    inc b                                         ; $4147: $04
    rst RST_18                                    ; $4148: $DF
    jr c, jr_020_410A                             ; $4149: $38 $BF

    ld c, b                                       ; $414B: $48
    or [hl]                                       ; $414C: $B6
    inc b                                         ; $414D: $04
    add a                                         ; $414E: $87
    ld a, [hl+]                                   ; $414F: $2A
    ld hl, sp+$40                                 ; $4150: $F8 $40
    ld c, b                                       ; $4152: $48
    ld hl, $0304                                  ; $4153: $21 $04 $03
    ld b, $06                                     ; $4156: $06 $06
    xor d                                         ; $4158: $AA
    inc b                                         ; $4159: $04
    dec c                                         ; $415A: $0D
    inc b                                         ; $415B: $04
    jr jr_020_4162                                ; $415C: $18 $04

    or $04                                        ; $415E: $F6 $04
    db $E4                                        ; $4160: $E4
    xor d                                         ; $4161: $AA

jr_020_4162:
    inc b                                         ; $4162: $04
    add sp, $04                                   ; $4163: $E8 $04
    pop bc                                        ; $4165: $C1
    ld a, b                                       ; $4166: $78
    add c                                         ; $4167: $81
    inc b                                         ; $4168: $04
    inc de                                        ; $4169: $13
    rlca                                          ; $416A: $07

jr_020_416B:
    db $EC                                        ; $416B: $EC
    scf                                           ; $416C: $37
    ret z                                         ; $416D: $C8

    ld l, a                                       ; $416E: $6F
    sub b                                         ; $416F: $90
    ld [$082C], sp                                ; $4170: $08 $2C $08
    xor d                                         ; $4173: $AA
    inc b                                         ; $4174: $04
    ld a, b                                       ; $4175: $78
    inc b                                         ; $4176: $04
    ret nc                                        ; $4177: $D0

    inc b                                         ; $4178: $04
    adc b                                         ; $4179: $88
    inc b                                         ; $417A: $04
    or b                                          ; $417B: $B0
    add b                                         ; $417C: $80
    ret nz                                        ; $417D: $C0

    ld l, d                                       ; $417E: $6A
    sbc l                                         ; $417F: $9D
    cp e                                          ; $4180: $BB
    ld e, h                                       ; $4181: $5C
    adc h                                         ; $4182: $8C
    ld [hl], e                                    ; $4183: $73
    ld c, [hl]                                    ; $4184: $4E
    ld d, d                                       ; $4185: $52
    or c                                          ; $4186: $B1
    db $FC                                        ; $4187: $FC
    ld [$B75D], sp                                ; $4188: $08 $5D $B7
    ld c, b                                       ; $418B: $48
    add sp, -$80                                  ; $418C: $E8 $80
    or [hl]                                       ; $418E: $B6
    inc [hl]                                      ; $418F: $34
    ld b, h                                       ; $4190: $44
    dec c                                         ; $4191: $0D
    jr c, jr_020_4130                             ; $4192: $38 $9C

    inc [hl]                                      ; $4194: $34
    ret nc                                        ; $4195: $D0

    rst RST_00                                    ; $4196: $C7
    inc c                                         ; $4197: $0C
    jr c, @-$0F                                   ; $4198: $38 $EF

    jr nc, jr_020_416B                            ; $419A: $30 $CF

    inc b                                         ; $419C: $04
    ld a, b                                       ; $419D: $78
    jr nz, jr_020_413F                            ; $419E: $20 $9F

    rlca                                          ; $41A0: $07
    ld h, b                                       ; $41A1: $60
    cp a                                          ; $41A2: $BF
    ld b, b                                       ; $41A3: $40
    ccf                                           ; $41A4: $3F
    ret nz                                        ; $41A5: $C0

    dec e                                         ; $41A6: $1D
    dec d                                         ; $41A7: $15
    dec c                                         ; $41A8: $0D
    xor e                                         ; $41A9: $AB
    cp b                                          ; $41AA: $B8
    nop                                           ; $41AB: $00
    ld c, h                                       ; $41AC: $4C
    db $10                                        ; $41AD: $10
    dec c                                         ; $41AE: $0D
    db $E4                                        ; $41AF: $E4
    inc b                                         ; $41B0: $04
    nop                                           ; $41B1: $00
    add d                                         ; $41B2: $82
    db $10                                        ; $41B3: $10
    add h                                         ; $41B4: $84
    ld a, e                                       ; $41B5: $7B
    ld b, d                                       ; $41B6: $42
    cp l                                          ; $41B7: $BD
    ld h, e                                       ; $41B8: $63
    sub h                                         ; $41B9: $94
    push af                                       ; $41BA: $F5
    ld bc, $FB0A                                  ; $41BB: $01 $0A $FB
    inc b                                         ; $41BE: $04
    db $FD                                        ; $41BF: $FD
    ld [bc], a                                    ; $41C0: $02
    ld a, [hl]                                    ; $41C1: $7E
    add c                                         ; $41C2: $81
    add sp, -$42                                  ; $41C3: $E8 $BE
    inc a                                         ; $41C5: $3C
    add a                                         ; $41C6: $87
    inc b                                         ; $41C7: $04
    inc [hl]                                      ; $41C8: $34
    inc b                                         ; $41C9: $04
    ret nz                                        ; $41CA: $C0

    inc b                                         ; $41CB: $04
    sbc [hl]                                      ; $41CC: $9E
    pop hl                                        ; $41CD: $E1
    add sp, -$3C                                  ; $41CE: $E8 $C4
    xor b                                         ; $41D0: $A8
    ldh [c], a                                    ; $41D1: $E2
    rra                                           ; $41D2: $1F
    ldh a, [rIF]                                  ; $41D3: $F0 $0F
    jr @+$81                                      ; $41D5: $18 $7F

    add b                                         ; $41D7: $80
    dec b                                         ; $41D8: $05
    cp l                                          ; $41D9: $BD
    dec b                                         ; $41DA: $05
    xor l                                         ; $41DB: $AD
    call Call_000_0C20                            ; $41DC: $CD $20 $0C
    db $10                                        ; $41DF: $10
    inc bc                                        ; $41E0: $03
    rlca                                          ; $41E1: $07
    ldh [$FF4C], a                                ; $41E2: $E0 $4C
    ld [hl], h                                    ; $41E4: $74
    adc e                                         ; $41E5: $8B
    ld a, [$FF05]                                 ; $41E6: $FA $05 $FF
    dec [hl]                                      ; $41E9: $35
    rlca                                          ; $41EA: $07
    dec b                                         ; $41EB: $05
    adc b                                         ; $41EC: $88
    ld c, $7D                                     ; $41ED: $0E $7D
    and h                                         ; $41EF: $A4
    sbc b                                         ; $41F0: $98

jr_020_41F1:
    rlca                                          ; $41F1: $07
    rst RST_30                                    ; $41F2: $F7
    ld hl, sp+$39                                 ; $41F3: $F8 $39
    cp $CE                                        ; $41F5: $FE $CE
    jr z, jr_020_41FA                             ; $41F7: $28 $01

    inc l                                         ; $41F9: $2C

jr_020_41FA:
    xor b                                         ; $41FA: $A8
    inc b                                         ; $41FB: $04
    add hl, de                                    ; $41FC: $19
    inc b                                         ; $41FD: $04
    inc b                                         ; $41FE: $04
    ld h, d                                       ; $41FF: $62
    db $10                                        ; $4200: $10
    rst RST_28                                    ; $4201: $EF
    adc b                                         ; $4202: $88
    dec d                                         ; $4203: $15
    ld [hl], a                                    ; $4204: $77
    db $EC                                        ; $4205: $EC
    inc de                                        ; $4206: $13
    ld c, b                                       ; $4207: $48
    ld bc, $C729                                  ; $4208: $01 $29 $C7
    ld h, h                                       ; $420B: $64
    ld e, l                                       ; $420C: $5D
    ld h, b                                       ; $420D: $60
    db $10                                        ; $420E: $10
    ld de, $DC04                                  ; $420F: $11 $04 $DC
    ld b, $06                                     ; $4212: $06 $06
    inc b                                         ; $4214: $04
    ld d, b                                       ; $4215: $50
    dec c                                         ; $4216: $0D
    inc b                                         ; $4217: $04
    jr jr_020_421E                                ; $4218: $18 $04

    ld e, a                                       ; $421A: $5F
    and b                                         ; $421B: $A0
    cp a                                          ; $421C: $BF
    ld b, b                                       ; $421D: $40

jr_020_421E:
    ld hl, sp+$55                                 ; $421E: $F8 $55
    ld a, b                                       ; $4220: $78
    add b                                         ; $4221: $80
    rst RST_30                                    ; $4222: $F7
    rlca                                          ; $4223: $07
    ccf                                           ; $4224: $3F
    ret nz                                        ; $4225: $C0

    rst RST_18                                    ; $4226: $DF
    ld a, a                                       ; $4227: $7F
    jr nz, jr_020_426F                            ; $4228: $20 $45

    dec c                                         ; $422A: $0D
    ld c, a                                       ; $422B: $4F
    ccf                                           ; $422C: $3F
    rlca                                          ; $422D: $07
    rlca                                          ; $422E: $07
    rlca                                          ; $422F: $07
    sbc a                                         ; $4230: $9F
    rlca                                          ; $4231: $07
    ld a, a                                       ; $4232: $7F
    add b                                         ; $4233: $80
    dec b                                         ; $4234: $05
    ld a, l                                       ; $4235: $7D
    rst RST_08                                    ; $4236: $CF
    adc a                                         ; $4237: $8F
    rlca                                          ; $4238: $07
    jp hl                                         ; $4239: $E9


    rlca                                          ; $423A: $07
    rlca                                          ; $423B: $07
    dec b                                         ; $423C: $05
    ld a, [$F104]                                 ; $423D: $FA $04 $F1
    dec b                                         ; $4240: $05
    rra                                           ; $4241: $1F
    and d                                         ; $4242: $A2
    rlca                                          ; $4243: $07
    ld hl, sp+$04                                 ; $4244: $F8 $04
    rst RST_30                                    ; $4246: $F7
    rlca                                          ; $4247: $07
    or $04                                        ; $4248: $F6 $04
    ei                                            ; $424A: $FB
    ld b, d                                       ; $424B: $42
    inc bc                                        ; $424C: $03
    ld b, l                                       ; $424D: $45
    ldh [rDIV], a                                 ; $424E: $E0 $04
    ret nz                                        ; $4250: $C0

    dec d                                         ; $4251: $15
    inc c                                         ; $4252: $0C
    ld c, $72                                     ; $4253: $0E $72
    ld sp, $141C                                  ; $4255: $31 $1C $14
    nop                                           ; $4258: $00
    inc hl                                        ; $4259: $23
    db $E3                                        ; $425A: $E3
    ld d, b                                       ; $425B: $50
    sbc b                                         ; $425C: $98
    ld [$076F], a                                 ; $425D: $EA $6F $07
    rlca                                          ; $4260: $07
    ccf                                           ; $4261: $3F
    inc b                                         ; $4262: $04
    rst RST_18                                    ; $4263: $DF
    ld c, h                                       ; $4264: $4C
    cpl                                           ; $4265: $2F
    ld [hl], b                                    ; $4266: $70
    jr nz, jr_020_41F1                            ; $4267: $20 $88

    inc c                                         ; $4269: $0C
    inc b                                         ; $426A: $04
    jr z, @-$77                                   ; $426B: $28 $87

    or b                                          ; $426D: $B0
    adc b                                         ; $426E: $88

jr_020_426F:
    rlca                                          ; $426F: $07
    xor b                                         ; $4270: $A8
    dec de                                        ; $4271: $1B
    ld e, e                                       ; $4272: $5B
    ld [hl], $37                                  ; $4273: $36 $37
    xor b                                         ; $4275: $A8
    call nz, $E05F                                ; $4276: $C4 $5F $E0
    dec b                                         ; $4279: $05
    ld b, h                                       ; $427A: $44
    inc b                                         ; $427B: $04
    db $FD                                        ; $427C: $FD
    db $FC                                        ; $427D: $FC
    add hl, sp                                    ; $427E: $39
    ld hl, sp+$61                                 ; $427F: $F8 $61
    adc b                                         ; $4281: $88
    ret c                                         ; $4282: $D8

    add e                                         ; $4283: $83
    add b                                         ; $4284: $80
    ldh a, [$FF90]                                ; $4285: $F0 $90
    push bc                                       ; $4287: $C5
    ld a, d                                       ; $4288: $7A
    sbc e                                         ; $4289: $9B
    ld e, h                                       ; $428A: $5C
    db $E4                                        ; $428B: $E4
    ld h, b                                       ; $428C: $60
    ret z                                         ; $428D: $C8

    ld d, a                                       ; $428E: $57
    rlca                                          ; $428F: $07
    dec b                                         ; $4290: $05
    ld d, l                                       ; $4291: $55
    xor d                                         ; $4292: $AA
    rst RST_10                                    ; $4293: $D7
    nop                                           ; $4294: $00
    ld [$1808], sp                                ; $4295: $08 $08 $18
    and d                                         ; $4298: $A2
    inc b                                         ; $4299: $04
    dec c                                         ; $429A: $0D
    ld [hl], b                                    ; $429B: $70
    cp d                                          ; $429C: $BA
    inc b                                         ; $429D: $04
    inc d                                         ; $429E: $14
    inc b                                         ; $429F: $04
    ccf                                           ; $42A0: $3F
    dec a                                         ; $42A1: $3D
    add hl, bc                                    ; $42A2: $09
    jr @+$24                                      ; $42A3: $18 $22

    sbc $3E                                       ; $42A5: $DE $3E
    ld c, l                                       ; $42A7: $4D
    ld b, h                                       ; $42A8: $44
    ld a, $05                                     ; $42A9: $3E $05
    call z, $E304                                 ; $42AB: $CC $04 $E3
    dec d                                         ; $42AE: $15
    inc bc                                        ; $42AF: $03
    pop hl                                        ; $42B0: $E1
    ld bc, $F215                                  ; $42B1: $01 $15 $F2
    inc d                                         ; $42B4: $14
    ldh [$FF0C], a                                ; $42B5: $E0 $0C
    inc h                                         ; $42B7: $24
    ldh [c], a                                    ; $42B8: $E2
    ld a, [bc]                                    ; $42B9: $0A
    dec b                                         ; $42BA: $05
    ld de, $3405                                  ; $42BB: $11 $05 $34
    push hl                                       ; $42BE: $E5
    inc [hl]                                      ; $42BF: $34
    ld c, h                                       ; $42C0: $4C
    ld [hl], $AC                                  ; $42C1: $36 $AC
    ld d, [hl]                                    ; $42C3: $56
    ld d, b                                       ; $42C4: $50
    nop                                           ; $42C5: $00
    jr c, jr_020_430F                             ; $42C6: $38 $47

    jp nc, Jump_000_1324                          ; $42C8: $D2 $24 $13

    ld b, b                                       ; $42CB: $40
    ret c                                         ; $42CC: $D8

    sub d                                         ; $42CD: $92
    ld d, e                                       ; $42CE: $53
    inc e                                         ; $42CF: $1C

jr_020_42D0:
    push bc                                       ; $42D0: $C5
    sub b                                         ; $42D1: $90
    ld d, [hl]                                    ; $42D2: $56
    sub $0C                                       ; $42D3: $D6 $0C
    rst RST_20                                    ; $42D5: $E7
    jr nz, jr_020_42D0                            ; $42D6: $20 $F8

    db $FD                                        ; $42D8: $FD
    adc b                                         ; $42D9: $88
    adc a                                         ; $42DA: $8F
    adc b                                         ; $42DB: $88
    inc b                                         ; $42DC: $04
    ld c, a                                       ; $42DD: $4F
    db $10                                        ; $42DE: $10
    sub [hl]                                      ; $42DF: $96
    inc l                                         ; $42E0: $2C
    ld b, c                                       ; $42E1: $41
    jr jr_020_433F                                ; $42E2: $18 $5B

    adc b                                         ; $42E4: $88
    inc c                                         ; $42E5: $0C
    and b                                         ; $42E6: $A0
    inc h                                         ; $42E7: $24
    ld l, a                                       ; $42E8: $6F
    inc h                                         ; $42E9: $24
    sub e                                         ; $42EA: $93
    ret nz                                        ; $42EB: $C0

    ret nc                                        ; $42EC: $D0

    ld d, a                                       ; $42ED: $57
    add e                                         ; $42EE: $83
    inc c                                         ; $42EF: $0C
    ld h, b                                       ; $42F0: $60
    nop                                           ; $42F1: $00
    dec de                                        ; $42F2: $1B
    nop                                           ; $42F3: $00
    inc [hl]                                      ; $42F4: $34
    inc c                                         ; $42F5: $0C
    ld sp, $B3B0                                  ; $42F6: $31 $B0 $B3
    inc b                                         ; $42F9: $04
    nop                                           ; $42FA: $00
    jr nz, @+$2A                                  ; $42FB: $20 $28

    sbc a                                         ; $42FD: $9F
    ld b, b                                       ; $42FE: $40
    ld d, [hl]                                    ; $42FF: $56
    cpl                                           ; $4300: $2F

Call_020_4301:
    db $10                                        ; $4301: $10
    daa                                           ; $4302: $27
    ld h, h                                       ; $4303: $64
    rlca                                          ; $4304: $07
    db $E4                                        ; $4305: $E4
    ld b, b                                       ; $4306: $40
    sbc b                                         ; $4307: $98
    ld a, $0B                                     ; $4308: $3E $0B
    ld c, b                                       ; $430A: $48
    inc d                                         ; $430B: $14
    ret nz                                        ; $430C: $C0

    xor h                                         ; $430D: $AC
    inc l                                         ; $430E: $2C

jr_020_430F:
    ld e, h                                       ; $430F: $5C
    sbc d                                         ; $4310: $9A
    and e                                         ; $4311: $A3
    adc h                                         ; $4312: $8C
    cp c                                          ; $4313: $B9
    inc c                                         ; $4314: $0C
    inc de                                        ; $4315: $13
    ret z                                         ; $4316: $C8

    sla b                                         ; $4317: $CB $20
    ld [hl], h                                    ; $4319: $74
    nop                                           ; $431A: $00
    ld [$823D], sp                                ; $431B: $08 $3D $82
    adc $30                                       ; $431E: $CE $30
    ld sp, $AC25                                  ; $4320: $31 $25 $AC
    ld c, d                                       ; $4323: $4A
    ld bc, $0474                                  ; $4324: $01 $74 $04
    db $DD                                        ; $4327: $DD
    ld b, h                                       ; $4328: $44
    pop bc                                        ; $4329: $C1
    ld c, $C9                                     ; $432A: $0E $C9
    adc $04                                       ; $432C: $CE $04
    ld a, b                                       ; $432E: $78
    inc d                                         ; $432F: $14
    rst RST_38                                    ; $4330: $FF
    nop                                           ; $4331: $00
    db $10                                        ; $4332: $10
    rlca                                          ; $4333: $07
    cp $EB                                        ; $4334: $FE $EB
    ld d, b                                       ; $4336: $50
    inc b                                         ; $4337: $04
    inc l                                         ; $4338: $2C
    ei                                            ; $4339: $FB
    ld c, b                                       ; $433A: $48

jr_020_433B:
    rst RST_28                                    ; $433B: $EF
    xor b                                         ; $433C: $A8
    dec h                                         ; $433D: $25
    push de                                       ; $433E: $D5

jr_020_433F:
    inc d                                         ; $433F: $14
    inc e                                         ; $4340: $1C
    db $FC                                        ; $4341: $FC
    inc c                                         ; $4342: $0C
    ld sp, hl                                     ; $4343: $F9
    inc [hl]                                      ; $4344: $34
    rst RST_30                                    ; $4345: $F7
    add sp, -$6B                                  ; $4346: $E8 $95
    inc l                                         ; $4348: $2C
    rrca                                          ; $4349: $0F
    xor $04                                       ; $434A: $EE $04
    ldh a, [rNR14]                                ; $434C: $F0 $14
    ld hl, sp-$77                                 ; $434E: $F8 $89
    ld b, b                                       ; $4350: $40

jr_020_4351:
    ld a, e                                       ; $4351: $7B
    inc b                                         ; $4352: $04
    dec sp                                        ; $4353: $3B
    jp $E0D7                                      ; $4354: $C3 $D7 $E0


    rst RST_20                                    ; $4357: $E7
    add b                                         ; $4358: $80
    ld e, c                                       ; $4359: $59
    di                                            ; $435A: $F3
    jr z, jr_020_4351                             ; $435B: $28 $F4

    inc b                                         ; $435D: $04
    db $10                                        ; $435E: $10
    ld d, c                                       ; $435F: $51
    rra                                           ; $4360: $1F
    add l                                         ; $4361: $85
    dec [hl]                                      ; $4362: $35
    ld d, l                                       ; $4363: $55
    xor d                                         ; $4364: $AA
    nop                                           ; $4365: $00
    ld [$1809], sp                                ; $4366: $08 $09 $18
    ld [hl+], a                                   ; $4369: $22
    inc b                                         ; $436A: $04
    ld d, c                                       ; $436B: $51
    ld [$A204], sp                                ; $436C: $08 $04 $A2
    ret nc                                        ; $436F: $D0

    ld b, l                                       ; $4370: $45
    db $FD                                        ; $4371: $FD
    call nz, $0C94                                ; $4372: $C4 $94 $0C
    jr nc, @-$48                                  ; $4375: $30 $B6

    or b                                          ; $4377: $B0
    ld [hl], $50                                  ; $4378: $36 $50
    adc b                                         ; $437A: $88
    sbc b                                         ; $437B: $98
    call c, Call_000_0C38                         ; $437C: $DC $38 $0C
    db $ED                                        ; $437F: $ED
    inc d                                         ; $4380: $14
    call c, $CE04                                 ; $4381: $DC $04 $CE
    inc b                                         ; $4384: $04
    ld d, a                                       ; $4385: $57
    add l                                         ; $4386: $85
    sub b                                         ; $4387: $90
    sub b                                         ; $4388: $90
    add sp, -$15                                  ; $4389: $E8 $EB
    db $FC                                        ; $438B: $FC
    ld e, h                                       ; $438C: $5C
    inc a                                         ; $438D: $3C
    inc b                                         ; $438E: $04
    ld hl, sp+$24                                 ; $438F: $F8 $24
    db $10                                        ; $4391: $10
    inc [hl]                                      ; $4392: $34
    db $10                                        ; $4393: $10
    inc b                                         ; $4394: $04
    ret nz                                        ; $4395: $C0

    rlca                                          ; $4396: $07
    ld b, b                                       ; $4397: $40
    ldh [$FF80], a                                ; $4398: $E0 $80
    ldh a, [$FF0C]                                ; $439A: $F0 $0C
    ld h, b                                       ; $439C: $60
    rla                                           ; $439D: $17
    ld d, b                                       ; $439E: $50
    dec sp                                        ; $439F: $3B
    jr c, jr_020_43B5                             ; $43A0: $38 $13

    dec de                                        ; $43A2: $1B
    ld a, b                                       ; $43A3: $78
    dec c                                         ; $43A4: $0D
    inc a                                         ; $43A5: $3C
    ld b, $1E                                     ; $43A6: $06 $1E
    call nc, Call_000_0C48                        ; $43A8: $D4 $48 $0C
    db $E4                                        ; $43AB: $E4
    ldh a, [c]                                    ; $43AC: $F2
    ldh [c], a                                    ; $43AD: $E2
    push af                                       ; $43AE: $F5
    and b                                         ; $43AF: $A0
    ld c, b                                       ; $43B0: $48
    ld a, d                                       ; $43B1: $7A
    ld a, e                                       ; $43B2: $7B
    sbc e                                         ; $43B3: $9B
    ld h, b                                       ; $43B4: $60

jr_020_43B5:
    ld b, e                                       ; $43B5: $43
    xor b                                         ; $43B6: $A8
    nop                                           ; $43B7: $00
    jr nc, jr_020_433B                            ; $43B8: $30 $81

    inc h                                         ; $43BA: $24
    ld d, b                                       ; $43BB: $50
    ld l, b                                       ; $43BC: $68
    ld [bc], a                                    ; $43BD: $02
    nop                                           ; $43BE: $00
    inc c                                         ; $43BF: $0C
    dec b                                         ; $43C0: $05
    inc e                                         ; $43C1: $1C
    res 4, b                                      ; $43C2: $CB $A0
    pop hl                                        ; $43C4: $E1
    push hl                                       ; $43C5: $E5
    inc c                                         ; $43C6: $0C
    sbc h                                         ; $43C7: $9C
    inc b                                         ; $43C8: $04
    ld [hl], b                                    ; $43C9: $70
    db $10                                        ; $43CA: $10
    adc h                                         ; $43CB: $8C
    ccf                                           ; $43CC: $3F
    db $10                                        ; $43CD: $10
    ld sp, $CAD5                                  ; $43CE: $31 $D5 $CA
    nop                                           ; $43D1: $00
    ld [$EFE9], sp                                ; $43D2: $08 $E9 $EF
    ld h, d                                       ; $43D5: $62
    inc b                                         ; $43D6: $04
    ld h, b                                       ; $43D7: $60
    jr z, jr_020_43DE                             ; $43D8: $28 $04

    ld h, b                                       ; $43DA: $60
    ld d, a                                       ; $43DB: $57
    inc b                                         ; $43DC: $04
    daa                                           ; $43DD: $27

jr_020_43DE:
    and c                                         ; $43DE: $A1
    rst RST_38                                    ; $43DF: $FF
    ld d, l                                       ; $43E0: $55
    ld c, d                                       ; $43E1: $4A
    inc b                                         ; $43E2: $04
    ld sp, $8A04                                  ; $43E3: $31 $04 $8A
    inc b                                         ; $43E6: $04
    ld d, l                                       ; $43E7: $55
    inc b                                         ; $43E8: $04
    ld d, l                                       ; $43E9: $55
    ld a, [bc]                                    ; $43EA: $0A
    inc b                                         ; $43EB: $04
    xor l                                         ; $43EC: $AD
    inc b                                         ; $43ED: $04
    ld d, [hl]                                    ; $43EE: $56
    inc b                                         ; $43EF: $04
    ld a, [hl+]                                   ; $43F0: $2A
    inc b                                         ; $43F1: $04
    ld e, l                                       ; $43F2: $5D
    ld d, c                                       ; $43F3: $51
    inc b                                         ; $43F4: $04
    inc d                                         ; $43F5: $14
    inc b                                         ; $43F6: $04
    ldh [$FF3E], a                                ; $43F7: $E0 $3E
    xor d                                         ; $43F9: $AA
    inc b                                         ; $43FA: $04
    ld d, a                                       ; $43FB: $57
    and l                                         ; $43FC: $A5
    inc b                                         ; $43FD: $04
    ld e, [hl]                                    ; $43FE: $5E
    inc b                                         ; $43FF: $04
    cp l                                          ; $4400: $BD
    inc b                                         ; $4401: $04
    sub b                                         ; $4402: $90
    inc b                                         ; $4403: $04
    push de                                       ; $4404: $D5
    or h                                          ; $4405: $B4

Call_020_4406:
    ld e, $B5                                     ; $4406: $1E $B5
    inc b                                         ; $4408: $04
    ld e, a                                       ; $4409: $5F
    inc b                                         ; $440A: $04
    ei                                            ; $440B: $FB
    inc b                                         ; $440C: $04
    ld d, [hl]                                    ; $440D: $56
    and [hl]                                      ; $440E: $A6
    inc b                                         ; $440F: $04
    xor a                                         ; $4410: $AF
    inc b                                         ; $4411: $04
    ld a, d                                       ; $4412: $7A
    sbc [hl]                                      ; $4413: $9E
    dec h                                         ; $4414: $25
    db $FD                                        ; $4415: $FD
    or h                                          ; $4416: $B4
    inc b                                         ; $4417: $04
    ld l, a                                       ; $4418: $6F
    inc b                                         ; $4419: $04
    ld bc, $04AE                                  ; $441A: $01 $AE $04
    and b                                         ; $441D: $A0
    cp $44                                        ; $441E: $FE $44
    ld c, b                                       ; $4420: $48
    jr z, jr_020_4453                             ; $4421: $28 $30

    ld sp, hl                                     ; $4423: $F9
    adc b                                         ; $4424: $88
    inc b                                         ; $4425: $04
    ld d, b                                       ; $4426: $50
    or $18                                        ; $4427: $F6 $18
    ld bc, $A3F7                                  ; $4429: $01 $F7 $A3
    inc b                                         ; $442C: $04
    db $EC                                        ; $442D: $EC
    pop af                                        ; $442E: $F1
    ld a, b                                       ; $442F: $78
    ld a, e                                       ; $4430: $7B
    ld hl, $B838                                  ; $4431: $21 $38 $B8
    db $FC                                        ; $4434: $FC
    rst RST_10                                    ; $4435: $D7
    ld [$658F], sp                                ; $4436: $08 $8F $65
    ld a, b                                       ; $4439: $78
    ld a, [hl+]                                   ; $443A: $2A
    jp z, $FCDF                                   ; $443B: $CA $DF $FC

    cp a                                          ; $443E: $BF
    call c, $847F                                 ; $443F: $DC $7F $84
    xor $13                                       ; $4442: $EE $13
    ld b, d                                       ; $4444: $42
    jp nz, $0081                                  ; $4445: $C2 $81 $00

    ld d, h                                       ; $4448: $54
    ld d, l                                       ; $4449: $55
    ld [hl], h                                    ; $444A: $74
    nop                                           ; $444B: $00
    call nz, $FDFF                                ; $444C: $C4 $FF $FD
    ld [hl], b                                    ; $444F: $70
    halt                                          ; $4450: $76
    ldh a, [$FFA4]                                ; $4451: $F0 $A4

jr_020_4453:
    nop                                           ; $4453: $00
    ld b, $33                                     ; $4454: $06 $33
    sbc b                                         ; $4456: $98
    reti                                          ; $4457: $D9


    ld h, h                                       ; $4458: $64
    ld [hl], h                                    ; $4459: $74
    xor a                                         ; $445A: $AF
    rst RST_28                                    ; $445B: $EF
    inc [hl]                                      ; $445C: $34
    inc h                                         ; $445D: $24
    ld d, l                                       ; $445E: $55
    ld e, c                                       ; $445F: $59
    call c, Call_020_44A1                         ; $4460: $DC $A1 $44
    ld c, d                                       ; $4463: $4A
    inc b                                         ; $4464: $04
    ld sp, $7894                                  ; $4465: $31 $94 $78
    ld a, [bc]                                    ; $4468: $0A
    inc b                                         ; $4469: $04
    add b                                         ; $446A: $80
    dec c                                         ; $446B: $0D
    or h                                          ; $446C: $B4
    dec l                                         ; $446D: $2D
    ccf                                           ; $446E: $3F
    sub $89                                       ; $446F: $D6 $89
    ld d, h                                       ; $4471: $54
    xor d                                         ; $4472: $AA
    ld a, [$047A]                                 ; $4473: $FA $7A $04
    xor h                                         ; $4476: $AC
    db $FC                                        ; $4477: $FC
    and l                                         ; $4478: $A5
    ld e, [hl]                                    ; $4479: $5E
    db $FD                                        ; $447A: $FD
    inc b                                         ; $447B: $04
    ld l, a                                       ; $447C: $6F
    inc b                                         ; $447D: $04
    ld bc, $04F4                                  ; $447E: $01 $F4 $04
    dec c                                         ; $4481: $0D
    jr nz, jr_020_4493                            ; $4482: $20 $0F

    rlca                                          ; $4484: $07
    nop                                           ; $4485: $00
    ld l, c                                       ; $4486: $69
    ld l, e                                       ; $4487: $6B
    ld [bc], a                                    ; $4488: $02
    inc bc                                        ; $4489: $03
    or l                                          ; $448A: $B5
    ld [$FF24], a                                 ; $448B: $EA $24 $FF
    db $FD                                        ; $448E: $FD
    ld a, [hl+]                                   ; $448F: $2A
    ld [hl], h                                    ; $4490: $74
    ld d, c                                       ; $4491: $51
    ld l, b                                       ; $4492: $68

jr_020_4493:
    inc d                                         ; $4493: $14
    ld l, $FE                                     ; $4494: $2E $FE
    xor b                                         ; $4496: $A8
    inc b                                         ; $4497: $04
    ld d, h                                       ; $4498: $54
    inc b                                         ; $4499: $04
    and h                                         ; $449A: $A4
    inc b                                         ; $449B: $04
    and h                                         ; $449C: $A4
    xor c                                         ; $449D: $A9
    inc b                                         ; $449E: $04
    ld e, [hl]                                    ; $449F: $5E
    inc b                                         ; $44A0: $04

Call_020_44A1:
    nop                                           ; $44A1: $00
    ld a, h                                       ; $44A2: $7C
    inc c                                         ; $44A3: $0C
    rst RST_08                                    ; $44A4: $CF
    dec c                                         ; $44A5: $0D
    ld e, e                                       ; $44A6: $5B
    ld l, h                                       ; $44A7: $6C
    or b                                          ; $44A8: $B0
    ld h, b                                       ; $44A9: $60
    inc b                                         ; $44AA: $04
    inc c                                         ; $44AB: $0C
    ld l, [hl]                                    ; $44AC: $6E
    inc c                                         ; $44AD: $0C
    inc b                                         ; $44AE: $04
    or [hl]                                       ; $44AF: $B6
    inc l                                         ; $44B0: $2C
    ld c, $C4                                     ; $44B1: $0E $C4
    ld b, h                                       ; $44B3: $44
    ld a, b                                       ; $44B4: $78
    ld a, h                                       ; $44B5: $7C
    ld [hl], h                                    ; $44B6: $74
    ld hl, sp+$5E                                 ; $44B7: $F8 $5E
    rst RST_30                                    ; $44B9: $F7
    nop                                           ; $44BA: $00
    ldh a, [rP1]                                  ; $44BB: $F0 $00
    rst RST_38                                    ; $44BD: $FF
    db $FD                                        ; $44BE: $FD
    ld l, h                                       ; $44BF: $6C
    adc $BF                                       ; $44C0: $CE $BF
    inc b                                         ; $44C2: $04
    adc a                                         ; $44C3: $8F
    ld l, l                                       ; $44C4: $6D
    jr nc, jr_020_4503                            ; $44C5: $30 $3C

    inc d                                         ; $44C7: $14
    nop                                           ; $44C8: $00
    rst RST_38                                    ; $44C9: $FF
    add c                                         ; $44CA: $81
    db $FD                                        ; $44CB: $FD
    jr z, jr_020_44F7                             ; $44CC: $28 $29

    ld [bc], a                                    ; $44CE: $02
    ld b, d                                       ; $44CF: $42
    ld [de], a                                    ; $44D0: $12
    ld d, d                                       ; $44D1: $52
    dec b                                         ; $44D2: $05
    ld b, h                                       ; $44D3: $44
    add hl, bc                                    ; $44D4: $09
    inc e                                         ; $44D5: $1C
    adc c                                         ; $44D6: $89
    xor c                                         ; $44D7: $A9
    adc b                                         ; $44D8: $88
    and b                                         ; $44D9: $A0
    ld b, b                                       ; $44DA: $40
    db $D3                                        ; $44DB: $D3
    ld b, $20                                     ; $44DC: $06 $20
    ld a, [hl]                                    ; $44DE: $7E
    ld a, [bc]                                    ; $44DF: $0A
    cp a                                          ; $44E0: $BF
    ld sp, $0D04                                  ; $44E1: $31 $04 $0D
    dec d                                         ; $44E4: $15
    add sp, $78                                   ; $44E5: $E8 $78
    inc c                                         ; $44E7: $0C
    inc b                                         ; $44E8: $04
    dec c                                         ; $44E9: $0D
    inc b                                         ; $44EA: $04
    ld b, $2F                                     ; $44EB: $06 $2F
    add b                                         ; $44ED: $80
    ld b, d                                       ; $44EE: $42
    rst RST_10                                    ; $44EF: $D7
    ld c, h                                       ; $44F0: $4C
    ld d, b                                       ; $44F1: $50
    inc hl                                        ; $44F2: $23
    ld l, e                                       ; $44F3: $6B
    ld h, e                                       ; $44F4: $63
    inc b                                         ; $44F5: $04
    pop hl                                        ; $44F6: $E1

jr_020_44F7:
    sbc c                                         ; $44F7: $99
    nop                                           ; $44F8: $00
    ld l, [hl]                                    ; $44F9: $6E
    cp $FF                                        ; $44FA: $FE $FF
    ld c, h                                       ; $44FC: $4C
    xor a                                         ; $44FD: $AF
    rlca                                          ; $44FE: $07
    ld c, h                                       ; $44FF: $4C
    ld d, d                                       ; $4500: $52
    pop bc                                        ; $4501: $C1
    ld c, h                                       ; $4502: $4C

jr_020_4503:
    add $04                                       ; $4503: $C6 $04
    add l                                         ; $4505: $85
    add a                                         ; $4506: $87
    ld [hl], b                                    ; $4507: $70
    ld a, a                                       ; $4508: $7F
    jp $F4FF                                      ; $4509: $C3 $FF $F4


jr_020_450C:
    ld b, e                                       ; $450C: $43
    ld bc, $0083                                  ; $450D: $01 $83 $00
    ld l, h                                       ; $4510: $6C
    ldh [$FF2A], a                                ; $4511: $E0 $2A
    ld sp, hl                                     ; $4513: $F9
    ld d, l                                       ; $4514: $55
    inc h                                         ; $4515: $24
    xor d                                         ; $4516: $AA
    inc b                                         ; $4517: $04
    and l                                         ; $4518: $A5
    inc b                                         ; $4519: $04
    ld e, [hl]                                    ; $451A: $5E
    add b                                         ; $451B: $80
    inc b                                         ; $451C: $04
    inc hl                                        ; $451D: $23
    ld b, b                                       ; $451E: $40
    ld d, l                                       ; $451F: $55
    rlca                                          ; $4520: $07
    nop                                           ; $4521: $00
    jr jr_020_4524                                ; $4522: $18 $00

jr_020_4524:
    jr nz, jr_020_4526                            ; $4524: $20 $00

jr_020_4526:
    ld b, b                                       ; $4526: $40
    ld [bc], a                                    ; $4527: $02
    ld a, [hl]                                    ; $4528: $7E
    add b                                         ; $4529: $80
    rlca                                          ; $452A: $07

jr_020_452B:
    ld [bc], a                                    ; $452B: $02
    ld a, e                                       ; $452C: $7B
    xor c                                         ; $452D: $A9
    ret                                           ; $452E: $C9


    jp hl                                         ; $452F: $E9


    ldh [$FFD5], a                                ; $4530: $E0 $D5
    nop                                           ; $4532: $00
    add hl, hl                                    ; $4533: $29
    inc b                                         ; $4534: $04
    nop                                           ; $4535: $00
    ld [bc], a                                    ; $4536: $02
    ld [bc], a                                    ; $4537: $02
    ld bc, $FA07                                  ; $4538: $01 $07 $FA
    ld [bc], a                                    ; $453B: $02
    ld a, e                                       ; $453C: $7B
    xor c                                         ; $453D: $A9
    ret                                           ; $453E: $C9


    jp hl                                         ; $453F: $E9


    nop                                           ; $4540: $00
    nop                                           ; $4541: $00
    inc bc                                        ; $4542: $03
    xor d                                         ; $4543: $AA
    ld [$080C], sp                                ; $4544: $08 $0C $08
    db $10                                        ; $4547: $10
    ld [$0A20], sp                                ; $4548: $08 $20 $0A
    ld b, b                                       ; $454B: $40
    db $FD                                        ; $454C: $FD

jr_020_454D:
    ld c, $5B                                     ; $454D: $0E $5B
    adc c                                         ; $454F: $89
    xor c                                         ; $4550: $A9
    ret                                           ; $4551: $C9


    inc bc                                        ; $4552: $03
    ldh [$FF5A], a                                ; $4553: $E0 $5A
    ld d, a                                       ; $4555: $57
    ld [$0408], sp                                ; $4556: $08 $08 $04
    ld a, [bc]                                    ; $4559: $0A
    ld [bc], a                                    ; $455A: $02
    ld c, $5B                                     ; $455B: $0E $5B
    adc c                                         ; $455D: $89
    ld d, l                                       ; $455E: $55
    jr nc, jr_020_4569                            ; $455F: $30 $08

    ret nz                                        ; $4561: $C0

    ld [$08FF], a                                 ; $4562: $EA $FF $08
    ei                                            ; $4565: $FB
    ld [$F16A], sp                                ; $4566: $08 $6A $F1

jr_020_4569:
    ld [hl], b                                    ; $4569: $70
    dec c                                         ; $456A: $0D
    ldh a, [rNR24]                                ; $456B: $F0 $19

jr_020_456D:
    dec b                                         ; $456D: $05
    add hl, bc                                    ; $456E: $09
    ldh [$FFD3], a                                ; $456F: $E0 $D3
    jr z, jr_020_452B                             ; $4571: $28 $B8

    dec d                                         ; $4573: $15
    jr jr_020_4584                                ; $4574: $18 $0E

    ld sp, $2838                                  ; $4576: $31 $38 $28
    or a                                          ; $4579: $B7
    nop                                           ; $457A: $00
    jr nz, jr_020_45AD                            ; $457B: $20 $30

    ret nc                                        ; $457D: $D0

    sbc b                                         ; $457E: $98
    ld sp, hl                                     ; $457F: $F9
    rrca                                          ; $4580: $0F
    add hl, bc                                    ; $4581: $09
    ld d, l                                       ; $4582: $55
    ccf                                           ; $4583: $3F

jr_020_4584:
    ld [$98DF], sp                                ; $4584: $08 $DF $98
    cpl                                           ; $4587: $2F
    and b                                         ; $4588: $A0
    inc bc                                        ; $4589: $03
    jr jr_020_450C                                ; $458A: $18 $80

    ld [$8728], sp                                ; $458C: $08 $28 $87
    or b                                          ; $458F: $B0
    adc b                                         ; $4590: $88
    xor b                                         ; $4591: $A8
    dec de                                        ; $4592: $1B
    ld e, e                                       ; $4593: $5B
    add hl, bc                                    ; $4594: $09
    ld [hl], $37                                  ; $4595: $36 $37
    inc b                                         ; $4597: $04
    rlca                                          ; $4598: $07
    xor c                                         ; $4599: $A9
    ld d, l                                       ; $459A: $55
    xor d                                         ; $459B: $AA
    nop                                           ; $459C: $00
    xor d                                         ; $459D: $AA
    db $10                                        ; $459E: $10
    add hl, bc                                    ; $459F: $09

jr_020_45A0:
    jr nc, @+$24                                  ; $45A0: $30 $22

    ld [$0808], sp                                ; $45A2: $08 $08 $08
    and b                                         ; $45A5: $A0
    rlca                                          ; $45A6: $07
    ldh [rOBP0], a                                ; $45A7: $E0 $48
    rst RST_28                                    ; $45A9: $EF
    db $10                                        ; $45AA: $10
    ret nc                                        ; $45AB: $D0

    add hl, de                                    ; $45AC: $19

jr_020_45AD:
    sub b                                         ; $45AD: $90
    jr c, jr_020_454D                             ; $45AE: $38 $9D

    ldh [$FFFE], a                                ; $45B0: $E0 $FE
    ld d, h                                       ; $45B2: $54
    ld [$08A8], sp                                ; $45B3: $08 $A8 $08
    and h                                         ; $45B6: $A4
    ld [$5E40], sp                                ; $45B7: $08 $40 $5E
    ld [$0FC4], sp                                ; $45BA: $08 $C4 $0F
    jr nc, @-$48                                  ; $45BD: $30 $B6

    or b                                          ; $45BF: $B0
    ld [hl], $82                                  ; $45C0: $36 $82
    adc b                                         ; $45C2: $88
    jp $DC98                                      ; $45C3: $C3 $98 $DC


    inc c                                         ; $45C6: $0C
    db $ED                                        ; $45C7: $ED
    jr z, jr_020_45CB                             ; $45C8: $28 $01

    cp d                                          ; $45CA: $BA

jr_020_45CB:
    ld [$08CE], sp                                ; $45CB: $08 $CE $08
    ld a, b                                       ; $45CE: $78
    jr c, jr_020_45A0                             ; $45CF: $38 $CF

    add hl, de                                    ; $45D1: $19
    ld l, h                                       ; $45D2: $6C
    scf                                           ; $45D3: $37
    ld l, a                                       ; $45D4: $6F
    ld h, b                                       ; $45D5: $60
    ld [$6E18], sp                                ; $45D6: $08 $18 $6E
    jr jr_020_45E3                                ; $45D9: $18 $08

    ld e, b                                       ; $45DB: $58
    nop                                           ; $45DC: $00
    ld c, $9F                                     ; $45DD: $0E $9F
    ret nz                                        ; $45DF: $C0

    cpl                                           ; $45E0: $2F
    jr nz, jr_020_460A                            ; $45E1: $20 $27

jr_020_45E3:
    and b                                         ; $45E3: $A0
    rlca                                          ; $45E4: $07
    dec b                                         ; $45E5: $05
    ld d, b                                       ; $45E6: $50
    dec de                                        ; $45E7: $1B
    sbc b                                         ; $45E8: $98
    dec bc                                        ; $45E9: $0B
    ld c, b                                       ; $45EA: $48
    jr z, jr_020_456D                             ; $45EB: $28 $80

    ret z                                         ; $45ED: $C8

    sbc c                                         ; $45EE: $99
    ld e, b                                       ; $45EF: $58
    dec h                                         ; $45F0: $25
    xor l                                         ; $45F1: $AD
    jr jr_020_465C                                ; $45F2: $18 $68

    inc b                                         ; $45F4: $04
    db $DD                                        ; $45F5: $DD
    jr jr_020_45A0                                ; $45F6: $18 $A8

    xor b                                         ; $45F8: $A8
    dec b                                         ; $45F9: $05
    add hl, de                                    ; $45FA: $19
    ret z                                         ; $45FB: $C8

    ld [$1403], sp                                ; $45FC: $08 $03 $14
    rst RST_38                                    ; $45FF: $FF
    and $00                                       ; $4600: $E6 $00
    jr nz, jr_020_460F                            ; $4602: $20 $0B

    cp $01                                        ; $4604: $FE $01
    ld [$FB58], sp                                ; $4606: $08 $58 $FB
    adc c                                         ; $4609: $89

jr_020_460A:
    or b                                          ; $460A: $B0
    rst RST_28                                    ; $460B: $EF
    db $10                                        ; $460C: $10
    rrca                                          ; $460D: $0F
    ld c, b                                       ; $460E: $48

jr_020_460F:
    rst RST_30                                    ; $460F: $F7
    ldh a, [$FFC8]                                ; $4610: $F0 $C8
    ld a, [bc]                                    ; $4612: $0A
    ld a, [bc]                                    ; $4613: $0A
    xor d                                         ; $4614: $AA
    ld d, l                                       ; $4615: $55
    add hl, bc                                    ; $4616: $09
    ld b, b                                       ; $4617: $40
    ldh a, [c]                                    ; $4618: $F2
    ld b, b                                       ; $4619: $40
    ld [$18AF], sp                                ; $461A: $08 $AF $18
    and d                                         ; $461D: $A2
    ret nz                                        ; $461E: $C0

    ld b, h                                       ; $461F: $44
    ld a, [$18B9]                                 ; $4620: $FA $B9 $18
    ld [$EE20], sp                                ; $4623: $08 $20 $EE
    rra                                           ; $4626: $1F
    add hl, de                                    ; $4627: $19
    ld a, e                                       ; $4628: $7B
    add h                                         ; $4629: $84
    ccf                                           ; $462A: $3F
    ret nz                                        ; $462B: $C0

    sbc a                                         ; $462C: $9F
    ld a, [bc]                                    ; $462D: $0A
    ldh [$FFC7], a                                ; $462E: $E0 $C7
    ld hl, sp+$60                                 ; $4630: $F8 $60
    ld d, b                                       ; $4632: $50
    ld de, $0308                                  ; $4633: $11 $08 $03
    xor d                                         ; $4636: $AA
    ld a, [bc]                                    ; $4637: $0A
    ld b, $08                                     ; $4638: $06 $08
    dec c                                         ; $463A: $0D
    ld [$F918], sp                                ; $463B: $08 $18 $F9
    rlca                                          ; $463E: $07
    ld a, [hl+]                                   ; $463F: $2A
    rst RST_30                                    ; $4640: $F7
    rrca                                          ; $4641: $0F
    add hl, bc                                    ; $4642: $09
    rst RST_28                                    ; $4643: $EF
    ld hl, sp-$02                                 ; $4644: $F8 $FE
    ld [$8ADF], sp                                ; $4646: $08 $DF $8A
    ldh a, [$FFBF]                                ; $4649: $F0 $BF
    ld a, a                                       ; $464B: $7F
    or [hl]                                       ; $464C: $B6
    ld [$80F6], sp                                ; $464D: $08 $F6 $80
    db $E4                                        ; $4650: $E4
    xor d                                         ; $4651: $AA
    ld [$08E8], sp                                ; $4652: $08 $E8 $08
    pop bc                                        ; $4655: $C1
    ld [hl], b                                    ; $4656: $70
    add c                                         ; $4657: $81
    ld [$0013], sp                                ; $4658: $08 $13 $00
    db $EC                                        ; $465B: $EC

jr_020_465C:
    scf                                           ; $465C: $37
    ret z                                         ; $465D: $C8

    ld l, a                                       ; $465E: $6F
    sub b                                         ; $465F: $90
    ld a, [de]                                    ; $4660: $1A
    nop                                           ; $4661: $00
    ld a, [hl+]                                   ; $4662: $2A
    nop                                           ; $4663: $00
    ld bc, $0210                                  ; $4664: $01 $10 $02
    db $10                                        ; $4667: $10
    inc b                                         ; $4668: $04
    db $10                                        ; $4669: $10
    dec b                                         ; $466A: $05
    xor d                                         ; $466B: $AA
    db $10                                        ; $466C: $10
    ld b, $10                                     ; $466D: $06 $10
    rlca                                          ; $466F: $07
    db $10                                        ; $4670: $10
    ld [$0910], sp                                ; $4671: $08 $10 $09
    xor d                                         ; $4674: $AA
    inc d                                         ; $4675: $14
    ld a, [bc]                                    ; $4676: $0A
    ld [de], a                                    ; $4677: $12
    dec bc                                        ; $4678: $0B
    ld [de], a                                    ; $4679: $12
    inc c                                         ; $467A: $0C
    db $10                                        ; $467B: $10
    dec c                                         ; $467C: $0D
    xor e                                         ; $467D: $AB
    db $10                                        ; $467E: $10
    ld c, $10                                     ; $467F: $0E $10
    rrca                                          ; $4681: $0F
    db $10                                        ; $4682: $10
    inc bc                                        ; $4683: $03
    rra                                           ; $4684: $1F
    rra                                           ; $4685: $1F
    xor d                                         ; $4686: $AA
    ld [de], a                                    ; $4687: $12
    db $10                                        ; $4688: $10
    db $10                                        ; $4689: $10
    ld de, $1210                                  ; $468A: $11 $10 $12
    db $10                                        ; $468D: $10
    ld [$10AA], sp                                ; $468E: $08 $AA $10
    inc de                                        ; $4691: $13
    db $10                                        ; $4692: $10
    inc d                                         ; $4693: $14
    db $10                                        ; $4694: $10
    dec d                                         ; $4695: $15
    db $10                                        ; $4696: $10
    ld d, $AA                                     ; $4697: $16 $AA
    db $10                                        ; $4699: $10
    rla                                           ; $469A: $17
    db $10                                        ; $469B: $10

jr_020_469C:
    ld bc, $0210                                  ; $469C: $01 $10 $02
    db $10                                        ; $469F: $10
    inc b                                         ; $46A0: $04
    xor d                                         ; $46A1: $AA
    db $10                                        ; $46A2: $10
    dec b                                         ; $46A3: $05
    db $10                                        ; $46A4: $10
    rlca                                          ; $46A5: $07
    db $10                                        ; $46A6: $10
    jr jr_020_46B9                                ; $46A7: $18 $10

    add hl, de                                    ; $46A9: $19
    xor e                                         ; $46AA: $AB
    db $10                                        ; $46AB: $10
    ld a, [de]                                    ; $46AC: $1A
    db $10                                        ; $46AD: $10
    dec de                                        ; $46AE: $1B
    db $10                                        ; $46AF: $10
    inc bc                                        ; $46B0: $03
    rra                                           ; $46B1: $1F
    rra                                           ; $46B2: $1F
    xor d                                         ; $46B3: $AA
    ld [de], a                                    ; $46B4: $12
    inc e                                         ; $46B5: $1C
    db $10                                        ; $46B6: $10
    dec e                                         ; $46B7: $1D
    db $10                                        ; $46B8: $10

jr_020_46B9:
    jr nz, jr_020_46CB                            ; $46B9: $20 $10

    ld hl, $10AA                                  ; $46BB: $21 $AA $10
    inc h                                         ; $46BE: $24
    db $10                                        ; $46BF: $10
    dec h                                         ; $46C0: $25
    db $10                                        ; $46C1: $10
    jr z, jr_020_469C                             ; $46C2: $28 $D8

    dec hl                                        ; $46C4: $2B
    xor d                                         ; $46C5: $AA
    db $10                                        ; $46C6: $10
    ld l, $10                                     ; $46C7: $2E $10
    cpl                                           ; $46C9: $2F
    db $10                                        ; $46CA: $10

jr_020_46CB:
    ld [hl-], a                                   ; $46CB: $32
    db $10                                        ; $46CC: $10
    dec l                                         ; $46CD: $2D
    xor d                                         ; $46CE: $AA
    inc d                                         ; $46CF: $14
    ld e, $10                                     ; $46D0: $1E $10
    rra                                           ; $46D2: $1F
    db $10                                        ; $46D3: $10
    ld [hl+], a                                   ; $46D4: $22
    db $10                                        ; $46D5: $10
    inc hl                                        ; $46D6: $23
    xor d                                         ; $46D7: $AA
    db $10                                        ; $46D8: $10
    ld h, $10                                     ; $46D9: $26 $10
    daa                                           ; $46DB: $27
    db $10                                        ; $46DC: $10
    add hl, hl                                    ; $46DD: $29
    db $10                                        ; $46DE: $10
    ld a, [hl+]                                   ; $46DF: $2A
    xor d                                         ; $46E0: $AA
    call nc, Call_000_102C                        ; $46E1: $D4 $2C $10
    dec l                                         ; $46E4: $2D
    db $10                                        ; $46E5: $10
    jr nc, jr_020_46F8                            ; $46E6: $30 $10

    ld sp, $10AD                                  ; $46E8: $31 $AD $10
    inc sp                                        ; $46EB: $33
    db $10                                        ; $46EC: $10
    inc [hl]                                      ; $46ED: $34
    sub d                                         ; $46EE: $92
    ld de, $3235                                  ; $46EF: $11 $35 $32
    ld d, l                                       ; $46F2: $55
    jr c, jr_020_4705                             ; $46F3: $38 $10

    add hl, sp                                    ; $46F5: $39
    db $10                                        ; $46F6: $10
    inc a                                         ; $46F7: $3C

jr_020_46F8:
    db $10                                        ; $46F8: $10
    dec a                                         ; $46F9: $3D
    db $10                                        ; $46FA: $10
    ld l, d                                       ; $46FB: $6A
    ld b, b                                       ; $46FC: $40
    call nc, Call_020_4115                        ; $46FD: $D4 $15 $41
    db $10                                        ; $4700: $10
    ld b, d                                       ; $4701: $42
    db $10                                        ; $4702: $10
    ld b, l                                       ; $4703: $45
    xor d                                         ; $4704: $AA

jr_020_4705:
    db $10                                        ; $4705: $10
    ld b, [hl]                                    ; $4706: $46
    or h                                          ; $4707: $B4
    ld [hl], $10                                  ; $4708: $36 $10
    scf                                           ; $470A: $37
    db $10                                        ; $470B: $10
    ld a, [hl-]                                   ; $470C: $3A
    xor e                                         ; $470D: $AB
    db $10                                        ; $470E: $10
    dec sp                                        ; $470F: $3B
    db $10                                        ; $4710: $10
    ld a, $10                                     ; $4711: $3E $10
    ccf                                           ; $4713: $3F
    sub d                                         ; $4714: $92
    db $D3                                        ; $4715: $D3
    xor d                                         ; $4716: $AA
    dec [hl]                                      ; $4717: $35
    ld b, e                                       ; $4718: $43
    db $10                                        ; $4719: $10
    ld b, h                                       ; $471A: $44
    db $10                                        ; $471B: $10
    ld b, a                                       ; $471C: $47
    db $10                                        ; $471D: $10
    ld c, b                                       ; $471E: $48
    xor d                                         ; $471F: $AA
    db $10                                        ; $4720: $10
    ld c, c                                       ; $4721: $49
    or d                                          ; $4722: $B2
    ld c, d                                       ; $4723: $4A
    db $10                                        ; $4724: $10
    ld c, e                                       ; $4725: $4B
    db $10                                        ; $4726: $10
    ld c, [hl]                                    ; $4727: $4E
    xor e                                         ; $4728: $AB
    db $10                                        ; $4729: $10
    ld c, a                                       ; $472A: $4F
    db $10                                        ; $472B: $10
    ld d, c                                       ; $472C: $51
    db $10                                        ; $472D: $10
    ld d, d                                       ; $472E: $52
    sub d                                         ; $472F: $92
    db $D3                                        ; $4730: $D3
    xor d                                         ; $4731: $AA
    dec [hl]                                      ; $4732: $35
    ld d, l                                       ; $4733: $55
    db $10                                        ; $4734: $10
    ld d, [hl]                                    ; $4735: $56
    db $10                                        ; $4736: $10
    ld e, c                                       ; $4737: $59
    db $10                                        ; $4738: $10
    ld e, d                                       ; $4739: $5A
    xor d                                         ; $473A: $AA
    db $10                                        ; $473B: $10
    ld e, l                                       ; $473C: $5D
    or d                                          ; $473D: $B2
    ld c, h                                       ; $473E: $4C
    db $10                                        ; $473F: $10
    ld c, l                                       ; $4740: $4D
    db $10                                        ; $4741: $10
    ld d, b                                       ; $4742: $50
    xor [hl]                                      ; $4743: $AE
    ld [hl-], a                                   ; $4744: $32
    ld d, e                                       ; $4745: $53
    db $10                                        ; $4746: $10
    ld d, h                                       ; $4747: $54
    ld d, d                                       ; $4748: $52
    db $D3                                        ; $4749: $D3
    dec [hl]                                      ; $474A: $35
    ld d, a                                       ; $474B: $57
    xor d                                         ; $474C: $AA
    db $10                                        ; $474D: $10
    ld e, b                                       ; $474E: $58
    db $10                                        ; $474F: $10
    ld e, e                                       ; $4750: $5B
    db $10                                        ; $4751: $10
    ld e, h                                       ; $4752: $5C
    or e                                          ; $4753: $B3
    sbc h                                         ; $4754: $9C
    add b                                         ; $4755: $80
    ld a, l                                       ; $4756: $7D
    nop                                           ; $4757: $00
    inc bc                                        ; $4758: $03
    inc bc                                        ; $4759: $03
    inc bc                                        ; $475A: $03
    inc bc                                        ; $475B: $03
    nop                                           ; $475C: $00
    cp $00                                        ; $475D: $FE $00
    ld d, l                                       ; $475F: $55
    ld [bc], a                                    ; $4760: $02
    nop                                           ; $4761: $00
    inc b                                         ; $4762: $04
    nop                                           ; $4763: $00
    ld c, b                                       ; $4764: $48
    nop                                           ; $4765: $00
    jr nc, jr_020_4768                            ; $4766: $30 $00

jr_020_4768:
    ld d, l                                       ; $4768: $55
    stop                                          ; $4769: $10 $00
    ld [$0600], sp                                ; $476B: $08 $00 $06
    nop                                           ; $476E: $00
    ld a, b                                       ; $476F: $78
    nop                                           ; $4770: $00
    cp l                                          ; $4771: $BD
    dec d                                         ; $4772: $15
    rst RST_38                                    ; $4773: $FF
    nop                                           ; $4774: $00
    dec c                                         ; $4775: $0D
    ld bc, $203D                                  ; $4776: $01 $3D $20
    nop                                           ; $4779: $00
    or $87                                        ; $477A: $F6 $87
    inc bc                                        ; $477C: $03
    inc bc                                        ; $477D: $03
    inc bc                                        ; $477E: $03
    inc de                                        ; $477F: $13
    nop                                           ; $4780: $00
    ld d, l                                       ; $4781: $55
    ld a, [hl]                                    ; $4782: $7E
    xor e                                         ; $4783: $AB
    nop                                           ; $4784: $00
    ld [de], a                                    ; $4785: $12
    ld [bc], a                                    ; $4786: $02
    ld [hl+], a                                   ; $4787: $22
    ld [bc], a                                    ; $4788: $02
    ld c, h                                       ; $4789: $4C
    nop                                           ; $478A: $00
    rst RST_28                                    ; $478B: $EF
    xor a                                         ; $478C: $AF
    and l                                         ; $478D: $A5
    jr c, jr_020_4790                             ; $478E: $38 $00

jr_020_4790:
    ret z                                         ; $4790: $C8

    nop                                           ; $4791: $00
    rst RST_00                                    ; $4792: $C7
    rst RST_08                                    ; $4793: $CF
    ld a, a                                       ; $4794: $7F
    xor l                                         ; $4795: $AD
    dec e                                         ; $4796: $1D
    inc a                                         ; $4797: $3C
    nop                                           ; $4798: $00
    ld b, b                                       ; $4799: $40
    ld [bc], a                                    ; $479A: $02
    dec d                                         ; $479B: $15
    ld b, e                                       ; $479C: $43
    nop                                           ; $479D: $00
    ld d, l                                       ; $479E: $55
    ld b, h                                       ; $479F: $44
    nop                                           ; $47A0: $00
    ldh a, [c]                                    ; $47A1: $F2
    nop                                           ; $47A2: $00
    ld c, d                                       ; $47A3: $4A
    nop                                           ; $47A4: $00
    ld c, c                                       ; $47A5: $49
    ld [bc], a                                    ; $47A6: $02
    ld d, a                                       ; $47A7: $57
    adc b                                         ; $47A8: $88

jr_020_47A9:
    nop                                           ; $47A9: $00
    or b                                          ; $47AA: $B0
    nop                                           ; $47AB: $00
    jr nz, jr_020_47B1                            ; $47AC: $20 $03

    inc bc                                        ; $47AE: $03
    nop                                           ; $47AF: $00
    ld l, d                                       ; $47B0: $6A

jr_020_47B1:
    ld hl, $FD00                                  ; $47B1: $21 $00 $FD
    inc e                                         ; $47B4: $1C
    nop                                           ; $47B5: $00
    nop                                           ; $47B6: $00
    nop                                           ; $47B7: $00
    jr nc, jr_020_47A9                            ; $47B8: $30 $EF

    nop                                           ; $47BA: $00
    push af                                       ; $47BB: $F5
    sbc l                                         ; $47BC: $9D
    ld a, $00                                     ; $47BD: $3E $00
    dec c                                         ; $47BF: $0D
    dec e                                         ; $47C0: $1D
    dec l                                         ; $47C1: $2D
    rst RST_38                                    ; $47C2: $FF
    dec a                                         ; $47C3: $3D
    ld b, c                                       ; $47C4: $41
    inc b                                         ; $47C5: $04
    inc e                                         ; $47C6: $1C
    inc b                                         ; $47C7: $04
    inc l                                         ; $47C8: $2C
    inc b                                         ; $47C9: $04
    inc a                                         ; $47CA: $3C
    rst RST_38                                    ; $47CB: $FF
    ld c, $1D                                     ; $47CC: $0E $1D
    ld a, $3B                                     ; $47CE: $3E $3B
    dec sp                                        ; $47D0: $3B
    dec sp                                        ; $47D1: $3B
    ld a, e                                       ; $47D2: $7B
    rst RST_28                                    ; $47D3: $EF
    xor [hl]                                      ; $47D4: $AE
    push hl                                       ; $47D5: $E5
    inc h                                         ; $47D6: $24
    nop                                           ; $47D7: $00
    jr z, jr_020_47DA                             ; $47D8: $28 $00

jr_020_47DA:
    or a                                          ; $47DA: $B7
    inc bc                                        ; $47DB: $03
    ld h, $AA                                     ; $47DC: $26 $AA
    nop                                           ; $47DE: $00
    ld d, b                                       ; $47DF: $50
    nop                                           ; $47E0: $00
    adc b                                         ; $47E1: $88
    nop                                           ; $47E2: $00
    inc b                                         ; $47E3: $04
    nop                                           ; $47E4: $00
    ld [bc], a                                    ; $47E5: $02
    db $DD                                        ; $47E6: $DD
    nop                                           ; $47E7: $00
    scf                                           ; $47E8: $37
    ld [$6500], sp                                ; $47E9: $08 $00 $65
    ld bc, $0029                                  ; $47EC: $01 $29 $00
    ld e, [hl]                                    ; $47EF: $5E
    ld a, [hl+]                                   ; $47F0: $2A
    nop                                           ; $47F1: $00
    ld c, h                                       ; $47F2: $4C
    nop                                           ; $47F3: $00
    ccf                                           ; $47F4: $3F
    call c, Call_020_6600                         ; $47F5: $DC $00 $66
    xor e                                         ; $47F8: $AB
    nop                                           ; $47F9: $00
    ld b, $00                                     ; $47FA: $06 $00
    inc c                                         ; $47FC: $0C
    nop                                           ; $47FD: $00
    jr jr_020_4800                                ; $47FE: $18 $00

Jump_020_4800:
jr_020_4800:
    cp l                                          ; $4800: $BD
    ld l, l                                       ; $4801: $6D
    ld a, [hl]                                    ; $4802: $7E
    nop                                           ; $4803: $00
    db $ED                                        ; $4804: $ED
    inc e                                         ; $4805: $1C
    nop                                           ; $4806: $00
    ld c, l                                       ; $4807: $4D
    ld a, h                                       ; $4808: $7C
    nop                                           ; $4809: $00
    db $EB                                        ; $480A: $EB
    xor l                                         ; $480B: $AD
    ld bc, $38C5                                  ; $480C: $01 $C5 $38
    nop                                           ; $480F: $00
    stop                                          ; $4810: $10 $00
    ld h, l                                       ; $4812: $65
    db $EB                                        ; $4813: $EB
    ccf                                           ; $4814: $3F
    push de                                       ; $4815: $D5
    ld a, l                                       ; $4816: $7D
    inc h                                         ; $4817: $24
    nop                                           ; $4818: $00
    ld b, a                                       ; $4819: $47
    nop                                           ; $481A: $00
    ld a, l                                       ; $481B: $7D
    cp d                                          ; $481C: $BA
    ld bc, $0016                                  ; $481D: $01 $16 $00
    dec l                                         ; $4820: $2D
    dec d                                         ; $4821: $15
    ld b, b                                       ; $4822: $40
    ld [bc], a                                    ; $4823: $02
    ld a, $D6                                     ; $4824: $3E $D6
    nop                                           ; $4826: $00
    ccf                                           ; $4827: $3F
    ldh a, [rP1]                                  ; $4828: $F0 $00
    ld c, [hl]                                    ; $482A: $4E
    nop                                           ; $482B: $00
    scf                                           ; $482C: $37
    sub b                                         ; $482D: $90
    cp d                                          ; $482E: $BA
    nop                                           ; $482F: $00
    adc [hl]                                      ; $4830: $8E
    nop                                           ; $4831: $00
    xor l                                         ; $4832: $AD
    ld c, l                                       ; $4833: $4D
    ret z                                         ; $4834: $C8

    nop                                           ; $4835: $00
    inc de                                        ; $4836: $13
    rst RST_28                                    ; $4837: $EF
    nop                                           ; $4838: $00
    ld e, a                                       ; $4839: $5F
    ld bc, $001C                                  ; $483A: $01 $1C $00
    dec a                                         ; $483D: $3D
    inc bc                                        ; $483E: $03
    inc bc                                        ; $483F: $03
    push af                                       ; $4840: $F5
    ld bc, $4585                                  ; $4841: $01 $85 $45
    ld a, [de]                                    ; $4844: $1A
    inc a                                         ; $4845: $3C
    inc b                                         ; $4846: $04
    ld h, [hl]                                    ; $4847: $66
    inc b                                         ; $4848: $04
    ld d, l                                       ; $4849: $55
    ld b, $04                                     ; $484A: $06 $04
    inc c                                         ; $484C: $0C
    inc b                                         ; $484D: $04
    jr jr_020_4854                                ; $484E: $18 $04

    jr nc, jr_020_4856                            ; $4850: $30 $04

    ld l, d                                       ; $4852: $6A
    ld a, [hl]                                    ; $4853: $7E

jr_020_4854:
    ld e, a                                       ; $4854: $5F
    sub l                                         ; $4855: $95

jr_020_4856:
    ldh [c], a                                    ; $4856: $E2
    nop                                           ; $4857: $00
    ld bc, $0202                                  ; $4858: $01 $02 $02
    sbc $00                                       ; $485B: $DE $00
    dec h                                         ; $485D: $25
    stop                                          ; $485E: $10 $00
    ld c, b                                       ; $4860: $48
    nop                                           ; $4861: $00
    dec c                                         ; $4862: $0D
    ld a, $AB                                     ; $4863: $3E $AB
    nop                                           ; $4865: $00
    ld d, l                                       ; $4866: $55
    nop                                           ; $4867: $00
    sbc c                                         ; $4868: $99
    nop                                           ; $4869: $00
    pop hl                                        ; $486A: $E1
    nop                                           ; $486B: $00
    sbc b                                         ; $486C: $98
    xor $00                                       ; $486D: $EE $00
    or b                                          ; $486F: $B0
    nop                                           ; $4870: $00
    ld [$3D00], sp                                ; $4871: $08 $00 $3D
    dec d                                         ; $4874: $15
    ld b, d                                       ; $4875: $42
    xor l                                         ; $4876: $AD
    nop                                           ; $4877: $00
    ld a, [de]                                    ; $4878: $1A

Call_020_4879:
    nop                                           ; $4879: $00
    ld h, $00                                     ; $487A: $26 $00
    ld a, l                                       ; $487C: $7D
    ld a, e                                       ; $487D: $7B
    nop                                           ; $487E: $00
    db $ED                                        ; $487F: $ED
    dec a                                         ; $4880: $3D
    ret c                                         ; $4881: $D8

    nop                                           ; $4882: $00
    cp $00                                        ; $4883: $FE $00
    ld c, l                                       ; $4885: $4D
    jr nz, jr_020_488A                            ; $4886: $20 $02

    cp e                                          ; $4888: $BB
    dec a                                         ; $4889: $3D

jr_020_488A:
    ld [hl], $03                                  ; $488A: $36 $03
    inc bc                                        ; $488C: $03
    nop                                           ; $488D: $00
    nop                                           ; $488E: $00
    nop                                           ; $488F: $00
    rla                                           ; $4890: $17
    ld a, a                                       ; $4891: $7F
    rst RST_38                                    ; $4892: $FF
    inc d                                         ; $4893: $14
    rlca                                          ; $4894: $07
    rlca                                          ; $4895: $07
    rlca                                          ; $4896: $07
    rlca                                          ; $4897: $07
    rlca                                          ; $4898: $07
    rlca                                          ; $4899: $07
    and a                                         ; $489A: $A7
    dec b                                         ; $489B: $05
    ld sp, hl                                     ; $489C: $F9
    inc b                                         ; $489D: $04
    ld a, [$1F02]                                 ; $489E: $FA $02 $1F
    rlca                                          ; $48A1: $07
    rlca                                          ; $48A2: $07
    ld b, b                                       ; $48A3: $40
    rst RST_28                                    ; $48A4: $EF
    inc b                                         ; $48A5: $04
    rla                                           ; $48A6: $17
    db $10                                        ; $48A7: $10
    xor b                                         ; $48A8: $A8
    ld d, a                                       ; $48A9: $57
    sub $29                                       ; $48AA: $D6 $29
    ld d, $FB                                     ; $48AC: $16 $FB
    inc b                                         ; $48AE: $04
    db $FD                                        ; $48AF: $FD
    ld e, h                                       ; $48B0: $5C
    cp $2C                                        ; $48B1: $FE $2C
    inc c                                         ; $48B3: $0C
    ld bc, $749F                                  ; $48B4: $01 $9F $74
    inc bc                                        ; $48B7: $03
    ld hl, sp+$04                                 ; $48B8: $F8 $04
    ld e, a                                       ; $48BA: $5F
    dec b                                         ; $48BB: $05
    scf                                           ; $48BC: $37
    ld d, h                                       ; $48BD: $54
    add d                                         ; $48BE: $82
    inc l                                         ; $48BF: $2C
    or $07                                        ; $48C0: $F6 $07
    db $E4                                        ; $48C2: $E4
    rrca                                          ; $48C3: $0F
    ldh a, [rNR50]                                ; $48C4: $F0 $24
    db $E3                                        ; $48C6: $E3
    ld [hl], d                                    ; $48C7: $72
    ld [$9418], sp                                ; $48C8: $08 $18 $94
    jr @-$1E                                      ; $48CB: $18 $E0

    adc a                                         ; $48CD: $8F
    inc b                                         ; $48CE: $04
    rra                                           ; $48CF: $1F
    ld a, [de]                                    ; $48D0: $1A
    ret nz                                        ; $48D1: $C0

    ccf                                           ; $48D2: $3F
    add b                                         ; $48D3: $80
    inc b                                         ; $48D4: $04
    inc [hl]                                      ; $48D5: $34
    ld a, a                                       ; $48D6: $7F
    ld [hl], b                                    ; $48D7: $70
    xor a                                         ; $48D8: $AF
    xor d                                         ; $48D9: $AA
    ld [$18D3], sp                                ; $48DA: $08 $D3 $18
    add sp, $30                                   ; $48DD: $E8 $30
    jr c, jr_020_4929                             ; $48DF: $38 $48

    inc a                                         ; $48E1: $3C
    cpl                                           ; $48E2: $2F
    add a                                         ; $48E3: $87
    ld a, [hl-]                                   ; $48E4: $3A
    inc b                                         ; $48E5: $04
    ld a, [hl]                                    ; $48E6: $7E
    adc h                                         ; $48E7: $8C
    ld a, h                                       ; $48E8: $7C
    inc a                                         ; $48E9: $3C
    call z, $04AA                                 ; $48EA: $CC $AA $04
    ld sp, hl                                     ; $48ED: $F9
    cp b                                          ; $48EE: $B8
    cp h                                          ; $48EF: $BC
    inc c                                         ; $48F0: $0C
    ld d, h                                       ; $48F1: $54
    inc b                                         ; $48F2: $04
    ld a, [bc]                                    ; $48F3: $0A
    cp a                                          ; $48F4: $BF
    ldh [c], a                                    ; $48F5: $E2
    ld [bc], a                                    ; $48F6: $02
    ret c                                         ; $48F7: $D8

    ld [$FFDC], sp                                ; $48F8: $08 $DC $FF
    rlca                                          ; $48FB: $07

jr_020_48FC:
    rlca                                          ; $48FC: $07
    and b                                         ; $48FD: $A0
    dec b                                         ; $48FE: $05
    add c                                         ; $48FF: $81
    adc b                                         ; $4900: $88
    ld d, d                                       ; $4901: $52
    xor l                                         ; $4902: $AD
    add hl, hl                                    ; $4903: $29
    sub $B5                                       ; $4904: $D6 $B5
    ld h, c                                       ; $4906: $61
    ld c, d                                       ; $4907: $4A
    adc b                                         ; $4908: $88
    ld e, h                                       ; $4909: $5C
    rst RST_18                                    ; $490A: $DF
    jr nz, jr_020_48FC                            ; $490B: $20 $EF

    db $10                                        ; $490D: $10
    dec a                                         ; $490E: $3D
    nop                                           ; $490F: $00
    ld d, l                                       ; $4910: $55
    xor [hl]                                      ; $4911: $AE
    inc [hl]                                      ; $4912: $34
    rst RST_08                                    ; $4913: $CF
    dec sp                                        ; $4914: $3B
    add $9A                                       ; $4915: $C6 $9A
    ld h, a                                       ; $4917: $67
    inc bc                                        ; $4918: $03
    ld e, c                                       ; $4919: $59
    and a                                         ; $491A: $A7
    ld l, l                                       ; $491B: $6D
    sub e                                         ; $491C: $93
    cp [hl]                                       ; $491D: $BE
    ld b, c                                       ; $491E: $41
    ld [hl], b                                    ; $491F: $70
    ld a, b                                       ; $4920: $78
    add b                                         ; $4921: $80
    adc c                                         ; $4922: $89
    add h                                         ; $4923: $84
    ld a, e                                       ; $4924: $7B
    ld b, d                                       ; $4925: $42
    cp l                                          ; $4926: $BD
    ld h, e                                       ; $4927: $63
    sbc h                                         ; $4928: $9C

jr_020_4929:
    push af                                       ; $4929: $F5
    sbc h                                         ; $492A: $9C
    ld hl, sp-$05                                 ; $492B: $F8 $FB
    inc b                                         ; $492D: $04
    ldh a, [$FFF8]                                ; $492E: $F0 $F8
    dec a                                         ; $4930: $3D
    ld e, a                                       ; $4931: $5F
    and b                                         ; $4932: $A0
    inc a                                         ; $4933: $3C
    cp a                                          ; $4934: $BF
    ld b, b                                       ; $4935: $40
    sub l                                         ; $4936: $95
    and a                                         ; $4937: $A7
    rlca                                          ; $4938: $07
    dec b                                         ; $4939: $05
    ld a, a                                       ; $493A: $7F
    add b                                         ; $493B: $80
    ld a, [$4505]                                 ; $493C: $FA $05 $45
    ld c, a                                       ; $493F: $4F
    db $FD                                        ; $4940: $FD
    ccf                                           ; $4941: $3F
    ld [$8708], sp                                ; $4942: $08 $08 $87
    ld [$B404], a                                 ; $4945: $EA $04 $B4
    inc b                                         ; $4948: $04
    jr c, @+$06                                   ; $4949: $38 $04

    sbc [hl]                                      ; $494B: $9E
    ld e, b                                       ; $494C: $58
    rst RST_08                                    ; $494D: $CF
    ld b, $3F                                     ; $494E: $06 $3F
    ldh [c], a                                    ; $4950: $E2
    rra                                           ; $4951: $1F
    ldh a, [rIF]                                  ; $4952: $F0 $0F
    add a                                         ; $4954: $87
    ld h, h                                       ; $4955: $64
    ldh [rTAC], a                                 ; $4956: $E0 $07
    rst RST_20                                    ; $4958: $E7
    ld hl, sp+$39                                 ; $4959: $F8 $39
    cp $CC                                        ; $495B: $FE $CC
    jr z, jr_020_4967                             ; $495D: $28 $08

    inc b                                         ; $495F: $04
    ldh a, [$FF2C]                                ; $4960: $F0 $2C
    inc b                                         ; $4962: $04
    jr z, jr_020_49B1                             ; $4963: $28 $4C

    ld [hl], h                                    ; $4965: $74
    adc e                                         ; $4966: $8B

jr_020_4967:
    ld a, [$EA05]                                 ; $4967: $FA $05 $EA
    and a                                         ; $496A: $A7
    rlca                                          ; $496B: $07
    dec b                                         ; $496C: $05
    add hl, de                                    ; $496D: $19
    ld [$1A04], sp                                ; $496E: $08 $04 $1A
    db $10                                        ; $4971: $10
    dec b                                         ; $4972: $05
    rst RST_28                                    ; $4973: $EF

jr_020_4974:
    adc b                                         ; $4974: $88
    ld [hl], a                                    ; $4975: $77
    db $EC                                        ; $4976: $EC
    inc de                                        ; $4977: $13
    ld a, h                                       ; $4978: $7C
    ld bc, $FC47                                  ; $4979: $01 $47 $FC
    rlca                                          ; $497C: $07
    rlca                                          ; $497D: $07
    rst RST_20                                    ; $497E: $E7
    or b                                          ; $497F: $B0
    cp b                                          ; $4980: $B8
    inc d                                         ; $4981: $14
    rlca                                          ; $4982: $07
    rst RST_30                                    ; $4983: $F7
    ld a, h                                       ; $4984: $7C
    rrca                                          ; $4985: $0F
    dec b                                         ; $4986: $05
    ld a, b                                       ; $4987: $78
    jr nz, jr_020_49F6                            ; $4988: $20 $6C

    inc b                                         ; $498A: $04
    rst RST_18                                    ; $498B: $DF
    ccf                                           ; $498C: $3F
    ld d, c                                       ; $498D: $51
    cp a                                          ; $498E: $BF
    ld b, b                                       ; $498F: $40
    or [hl]                                       ; $4990: $B6
    inc b                                         ; $4991: $04
    add a                                         ; $4992: $87
    ld hl, sp+$40                                 ; $4993: $F8 $40
    ld c, b                                       ; $4995: $48
    ld d, l                                       ; $4996: $55
    ld hl, $0304                                  ; $4997: $21 $04 $03
    inc b                                         ; $499A: $04
    ld [bc], a                                    ; $499B: $02
    ld b, b                                       ; $499C: $40
    ld b, $04                                     ; $499D: $06 $04
    db $10                                        ; $499F: $10
    inc c                                         ; $49A0: $0C
    db $FD                                        ; $49A1: $FD
    jr @+$06                                      ; $49A2: $18 $04

    ldh a, [c]                                    ; $49A4: $F2
    di                                            ; $49A5: $F3
    call nz, Call_000_0ECD                        ; $49A6: $C4 $CD $0E
    add h                                         ; $49A9: $84
    cp h                                          ; $49AA: $BC
    inc b                                         ; $49AB: $04

jr_020_49AC:
    ld a, h                                       ; $49AC: $7C
    or b                                          ; $49AD: $B0
    inc h                                         ; $49AE: $24
    ld b, $FC                                     ; $49AF: $06 $FC

jr_020_49B1:
    xor d                                         ; $49B1: $AA
    ld d, l                                       ; $49B2: $55
    ret z                                         ; $49B3: $C8

    ld h, h                                       ; $49B4: $64
    sub b                                         ; $49B5: $90
    inc b                                         ; $49B6: $04
    ld a, b                                       ; $49B7: $78
    inc b                                         ; $49B8: $04
    ret nc                                        ; $49B9: $D0

    xor b                                         ; $49BA: $A8
    inc b                                         ; $49BB: $04
    adc b                                         ; $49BC: $88
    inc b                                         ; $49BD: $04
    or b                                          ; $49BE: $B0
    ret nz                                        ; $49BF: $C0

    ld l, d                                       ; $49C0: $6A
    sbc l                                         ; $49C1: $9D
    cp e                                          ; $49C2: $BB
    inc b                                         ; $49C3: $04
    ld e, h                                       ; $49C4: $5C
    adc h                                         ; $49C5: $8C
    ld [hl], e                                    ; $49C6: $73
    ld c, [hl]                                    ; $49C7: $4E
    or c                                          ; $49C8: $B1
    db $FC                                        ; $49C9: $FC
    ld [$956F], sp                                ; $49CA: $08 $6F $95

jr_020_49CD:
    ld d, b                                       ; $49CD: $50
    or a                                          ; $49CE: $B7
    ld c, b                                       ; $49CF: $48
    add sp, -$80                                  ; $49D0: $E8 $80
    inc [hl]                                      ; $49D2: $34
    ld b, h                                       ; $49D3: $44
    dec c                                         ; $49D4: $0D
    or l                                          ; $49D5: $B5
    jr c, jr_020_4974                             ; $49D6: $38 $9C

    inc [hl]                                      ; $49D8: $34
    ret nc                                        ; $49D9: $D0

    rlca                                          ; $49DA: $07
    and b                                         ; $49DB: $A0
    ld a, e                                       ; $49DC: $7B
    adc b                                         ; $49DD: $88
    inc b                                         ; $49DE: $04
    ld h, l                                       ; $49DF: $65
    ld h, h                                       ; $49E0: $64
    ld d, l                                       ; $49E1: $55
    ld d, h                                       ; $49E2: $54
    ld [hl], $00                                  ; $49E3: $36 $00
    ld b, $CE                                     ; $49E5: $06 $CE
    inc hl                                        ; $49E7: $23
    ccf                                           ; $49E8: $3F
    ret nz                                        ; $49E9: $C0

    sbc b                                         ; $49EA: $98
    jr nz, jr_020_49AC                            ; $49EB: $20 $BF

    ld b, b                                       ; $49ED: $40
    dec c                                         ; $49EE: $0D
    cp b                                          ; $49EF: $B8
    sbc l                                         ; $49F0: $9D
    ld c, h                                       ; $49F1: $4C
    rst RST_28                                    ; $49F2: $EF
    db $10                                        ; $49F3: $10
    dec c                                         ; $49F4: $0D
    dec b                                         ; $49F5: $05

jr_020_49F6:
    add hl, bc                                    ; $49F6: $09
    add h                                         ; $49F7: $84
    ld [hl], b                                    ; $49F8: $70
    nop                                           ; $49F9: $00
    ld b, d                                       ; $49FA: $42
    cp l                                          ; $49FB: $BD
    db $E3                                        ; $49FC: $E3
    inc e                                         ; $49FD: $1C
    push af                                       ; $49FE: $F5
    ld a, [bc]                                    ; $49FF: $0A
    ei                                            ; $4A00: $FB
    inc b                                         ; $4A01: $04
    rrca                                          ; $4A02: $0F
    db $FD                                        ; $4A03: $FD
    ld [bc], a                                    ; $4A04: $02
    cp $01                                        ; $4A05: $FE $01
    ld c, a                                       ; $4A07: $4F
    dec b                                         ; $4A08: $05
    inc e                                         ; $4A09: $1C
    rlca                                          ; $4A0A: $07
    db $ED                                        ; $4A0B: $ED
    daa                                           ; $4A0C: $27
    ld b, $DC                                     ; $4A0D: $06 $DC
    xor d                                         ; $4A0F: $AA
    nop                                           ; $4A10: $00
    ld [$1808], sp                                ; $4A11: $08 $08 $18
    ld l, e                                       ; $4A14: $6B
    and d                                         ; $4A15: $A2
    inc b                                         ; $4A16: $04
    dec c                                         ; $4A17: $0D
    add b                                         ; $4A18: $80

jr_020_4A19:
    inc b                                         ; $4A19: $04
    inc d                                         ; $4A1A: $14
    inc b                                         ; $4A1B: $04
    dec a                                         ; $4A1C: $3D
    ld c, b                                       ; $4A1D: $48
    ld d, c                                       ; $4A1E: $51
    jr z, jr_020_49CD                             ; $4A1F: $28 $AC

    ld c, l                                       ; $4A21: $4D
    sbc b                                         ; $4A22: $98
    pop hl                                        ; $4A23: $E1
    jr z, @-$16                                   ; $4A24: $28 $E8

    add h                                         ; $4A26: $84

jr_020_4A27:
    jr nz, jr_020_4A19                            ; $4A27: $20 $F0

    and b                                         ; $4A29: $A0
    ld hl, sp+$44                                 ; $4A2A: $F8 $44
    jr c, jr_020_4A27                             ; $4A2C: $38 $F9

    inc bc                                        ; $4A2E: $03
    adc d                                         ; $4A2F: $8A
    db $FC                                        ; $4A30: $FC
    dec b                                         ; $4A31: $05
    inc [hl]                                      ; $4A32: $34
    halt                                          ; $4A33: $76
    ld l, h                                       ; $4A34: $6C
    xor $04                                       ; $4A35: $EE $04
    adc [hl]                                      ; $4A37: $8E
    add hl, hl                                    ; $4A38: $29
    ld b, b                                       ; $4A39: $40
    ld h, a                                       ; $4A3A: $67

jr_020_4A3B:
    ld b, h                                       ; $4A3B: $44
    ld b, e                                       ; $4A3C: $43
    inc b                                         ; $4A3D: $04
    ld d, b                                       ; $4A3E: $50
    rla                                           ; $4A3F: $17
    inc b                                         ; $4A40: $04
    ld [de], a                                    ; $4A41: $12
    sub a                                         ; $4A42: $97
    sub b                                         ; $4A43: $90
    ld h, b                                       ; $4A44: $60
    ld h, h                                       ; $4A45: $64
    rlca                                          ; $4A46: $07
    ld l, a                                       ; $4A47: $6F
    xor h                                         ; $4A48: $AC
    add e                                         ; $4A49: $83
    ld a, [bc]                                    ; $4A4A: $0A
    inc b                                         ; $4A4B: $04
    ld l, h                                       ; $4A4C: $6C
    ld b, $4E                                     ; $4A4D: $06 $4E
    inc a                                         ; $4A4F: $3C
    ld l, $1C                                     ; $4A50: $2E $1C
    rra                                           ; $4A52: $1F
    jp c, Jump_000_145C                           ; $4A53: $DA $5C $14

    ld b, c                                       ; $4A56: $41
    cp h                                          ; $4A57: $BC
    inc e                                         ; $4A58: $1C
    sbc [hl]                                      ; $4A59: $9E
    inc b                                         ; $4A5A: $04
    ld [de], a                                    ; $4A5B: $12
    ld [$CC04], a                                 ; $4A5C: $EA $04 $CC
    inc b                                         ; $4A5F: $04
    ld c, $04                                     ; $4A60: $0E $04
    ldh [rDIV], a                                 ; $4A62: $E0 $04
    db $EC                                        ; $4A64: $EC
    add b                                         ; $4A65: $80
    db $EC                                        ; $4A66: $EC
    ld [hl+], a                                   ; $4A67: $22
    ld a, [bc]                                    ; $4A68: $0A
    ld h, l                                       ; $4A69: $65
    add hl, bc                                    ; $4A6A: $09
    rst RST_28                                    ; $4A6B: $EF
    ld [bc], a                                    ; $4A6C: $02
    cpl                                           ; $4A6D: $2F
    cp a                                          ; $4A6E: $BF
    call nz, Call_000_0C9F                        ; $4A6F: $C4 $9F $0C
    ld l, h                                       ; $4A72: $6C
    adc h                                         ; $4A73: $8C
    inc b                                         ; $4A74: $04
    ld b, b                                       ; $4A75: $40
    ld c, h                                       ; $4A76: $4C
    xor e                                         ; $4A77: $AB
    ld c, c                                       ; $4A78: $49
    cp $04                                        ; $4A79: $FE $04
    ld a, h                                       ; $4A7B: $7C
    inc b                                         ; $4A7C: $04
    jr nc, jr_020_4A3B                            ; $4A7D: $30 $BC

    ld [hl], l                                    ; $4A7F: $75
    rst RST_10                                    ; $4A80: $D7
    add b                                         ; $4A81: $80
    ld l, h                                       ; $4A82: $6C
    db $E3                                        ; $4A83: $E3
    jr nc, @+$61                                  ; $4A84: $30 $5F

    cp b                                          ; $4A86: $B8
    ld e, b                                       ; $4A87: $58
    ret z                                         ; $4A88: $C8

    sbc l                                         ; $4A89: $9D
    ld l, b                                       ; $4A8A: $68
    jr nz, jr_020_4A9C                            ; $4A8B: $20 $0F

    jr nc, jr_020_4AEF                            ; $4A8D: $30 $60

    inc b                                         ; $4A8F: $04
    rst RST_38                                    ; $4A90: $FF
    rlca                                          ; $4A91: $07
    sbc [hl]                                      ; $4A92: $9E
    ld e, $55                                     ; $4A93: $1E $55
    xor d                                         ; $4A95: $AA
    nop                                           ; $4A96: $00
    ld [$20AC], sp                                ; $4A97: $08 $AC $20
    and d                                         ; $4A9A: $A2
    rst RST_30                                    ; $4A9B: $F7

jr_020_4A9C:
    inc b                                         ; $4A9C: $04
    dec c                                         ; $4A9D: $0D
    ld h, b                                       ; $4A9E: $60
    inc b                                         ; $4A9F: $04
    inc d                                         ; $4AA0: $14
    inc b                                         ; $4AA1: $04
    ld b, l                                       ; $4AA2: $45
    ccf                                           ; $4AA3: $3F
    db $DB                                        ; $4AA4: $DB
    db $FC                                        ; $4AA5: $FC
    jr jr_020_4ACA                                ; $4AA6: $18 $22

    ld a, $4D                                     ; $4AA8: $3E $4D
    ld b, h                                       ; $4AAA: $44
    ld a, $07                                     ; $4AAB: $3E $07
    ld e, h                                       ; $4AAD: $5C
    cp $04                                        ; $4AAE: $FE $04
    ld hl, sp+$04                                 ; $4AB0: $F8 $04
    add sp, $04                                   ; $4AB2: $E8 $04
    ret nz                                        ; $4AB4: $C0

    inc bc                                        ; $4AB5: $03
    ld [hl], d                                    ; $4AB6: $72
    add c                                         ; $4AB7: $81
    ldh [$FF08], a                                ; $4AB8: $E0 $08
    ret nz                                        ; $4ABA: $C0

    ld bc, $9C8F                                  ; $4ABB: $01 $8F $9C
    ld b, e                                       ; $4ABE: $43
    cp a                                          ; $4ABF: $BF
    ld sp, $4020                                  ; $4AC0: $31 $20 $40
    ld a, h                                       ; $4AC3: $7C

jr_020_4AC4:
    ld d, b                                       ; $4AC4: $50
    ld a, a                                       ; $4AC5: $7F
    ld [hl], a                                    ; $4AC6: $77
    dec b                                         ; $4AC7: $05
    ld hl, sp+$58                                 ; $4AC8: $F8 $58

jr_020_4ACA:
    inc b                                         ; $4ACA: $04
    ld e, h                                       ; $4ACB: $5C
    inc b                                         ; $4ACC: $04
    ld e, h                                       ; $4ACD: $5C
    ldh a, [$FF79]                                ; $4ACE: $F0 $79
    db $FC                                        ; $4AD0: $FC
    ldh a, [c]                                    ; $4AD1: $F2
    nop                                           ; $4AD2: $00
    ld c, h                                       ; $4AD3: $4C
    ld bc, $780D                                  ; $4AD4: $01 $0D $78
    db $FD                                        ; $4AD7: $FD
    inc l                                         ; $4AD8: $2C
    pop af                                        ; $4AD9: $F1
    ld a, a                                       ; $4ADA: $7F
    ld [bc], a                                    ; $4ADB: $02
    ld b, b                                       ; $4ADC: $40
    ld a, h                                       ; $4ADD: $7C
    ld d, b                                       ; $4ADE: $50
    ld a, a                                       ; $4ADF: $7F
    ld [hl], a                                    ; $4AE0: $77
    cp $40                                        ; $4AE1: $FE $40
    jp Jump_000_3C04                              ; $4AE3: $C3 $04 $3C


    ld a, [$EC04]                                 ; $4AE6: $FA $04 $EC
    ld de, $0561                                  ; $4AE9: $11 $61 $05
    rrca                                          ; $4AEC: $0F
    ld d, l                                       ; $4AED: $55
    xor c                                         ; $4AEE: $A9

jr_020_4AEF:
    xor d                                         ; $4AEF: $AA

jr_020_4AF0:
    ld d, h                                       ; $4AF0: $54
    ld l, h                                       ; $4AF1: $6C
    jr jr_020_4AF0                                ; $4AF2: $18 $FC

    inc b                                         ; $4AF4: $04
    xor h                                         ; $4AF5: $AC
    dec c                                         ; $4AF6: $0D
    and c                                         ; $4AF7: $A1
    inc b                                         ; $4AF8: $04
    ld b, l                                       ; $4AF9: $45
    inc b                                         ; $4AFA: $04
    ret nc                                        ; $4AFB: $D0

    inc a                                         ; $4AFC: $3C
    push bc                                       ; $4AFD: $C5
    add c                                         ; $4AFE: $81
    ret c                                         ; $4AFF: $D8

Jump_020_4B00:
    add b                                         ; $4B00: $80
    pop bc                                        ; $4B01: $C1
    jr @-$40                                      ; $4B02: $18 $BE

    inc [hl]                                      ; $4B04: $34
    ld a, a                                       ; $4B05: $7F
    sub b                                         ; $4B06: $90
    dec e                                         ; $4B07: $1D
    ld b, a                                       ; $4B08: $47
    jr nc, jr_020_4AC4                            ; $4B09: $30 $B9

    inc b                                         ; $4B0B: $04
    sub b                                         ; $4B0C: $90
    call c, Call_020_4406                         ; $4B0D: $DC $06 $44
    ld [$1401], a                                 ; $4B10: $EA $01 $14
    inc l                                         ; $4B13: $2C
    ei                                            ; $4B14: $FB
    inc b                                         ; $4B15: $04
    ld a, e                                       ; $4B16: $7B
    and b                                         ; $4B17: $A0
    or l                                          ; $4B18: $B5
    and b                                         ; $4B19: $A0
    inc b                                         ; $4B1A: $04
    add l                                         ; $4B1B: $85
    inc d                                         ; $4B1C: $14
    cp b                                          ; $4B1D: $B8
    ld h, b                                       ; $4B1E: $60
    and $C4                                       ; $4B1F: $E6 $C4
    push hl                                       ; $4B21: $E5
    dec b                                         ; $4B22: $05
    call nc, $88F5                                ; $4B23: $D4 $F5 $88
    db $ED                                        ; $4B26: $ED
    or b                                          ; $4B27: $B0
    and h                                         ; $4B28: $A4
    ret nc                                        ; $4B29: $D0

    ld d, h                                       ; $4B2A: $54
    ld a, d                                       ; $4B2B: $7A
    ret nz                                        ; $4B2C: $C0

    inc b                                         ; $4B2D: $04
    and h                                         ; $4B2E: $A4
    ld c, h                                       ; $4B2F: $4C
    ld b, h                                       ; $4B30: $44
    ld a, h                                       ; $4B31: $7C
    ld d, h                                       ; $4B32: $54
    ld a, [hl-]                                   ; $4B33: $3A
    or l                                          ; $4B34: $B5
    adc h                                         ; $4B35: $8C
    jr c, @+$16                                   ; $4B36: $38 $14

    dec c                                         ; $4B38: $0D
    ld e, d                                       ; $4B39: $5A
    inc e                                         ; $4B3A: $1C
    reti                                          ; $4B3B: $D9


    db $FC                                        ; $4B3C: $FC
    dec b                                         ; $4B3D: $05
    jp hl                                         ; $4B3E: $E9


    ld b, b                                       ; $4B3F: $40
    add sp, $0E                                   ; $4B40: $E8 $0E
    ld e, $2C                                     ; $4B42: $1E $2C
    ld e, b                                       ; $4B44: $58
    inc b                                         ; $4B45: $04
    sub h                                         ; $4B46: $94
    nop                                           ; $4B47: $00
    ld a, [hl+]                                   ; $4B48: $2A
    xor d                                         ; $4B49: $AA
    ld [$2CC1], sp                                ; $4B4A: $08 $C1 $2C
    ld [hl], e                                    ; $4B4D: $73
    ld b, h                                       ; $4B4E: $44
    ld a, [bc]                                    ; $4B4F: $0A
    ld l, l                                       ; $4B50: $6D
    inc b                                         ; $4B51: $04
    inc c                                         ; $4B52: $0C
    rrca                                          ; $4B53: $0F
    jr nz, jr_020_4B8D                            ; $4B54: $20 $37

    ld hl, sp+$07                                 ; $4B56: $F8 $07
    ld [hl], d                                    ; $4B58: $72
    ld [hl], b                                    ; $4B59: $70
    inc b                                         ; $4B5A: $04
    cp b                                          ; $4B5B: $B8
    inc e                                         ; $4B5C: $1C
    and b                                         ; $4B5D: $A0
    adc a                                         ; $4B5E: $8F
    inc b                                         ; $4B5F: $04
    sbc a                                         ; $4B60: $9F
    cp $B8                                        ; $4B61: $FE $B8
    inc e                                         ; $4B63: $1C
    inc [hl]                                      ; $4B64: $34
    ld b, h                                       ; $4B65: $44
    db $E4                                        ; $4B66: $E4
    ld [hl], l                                    ; $4B67: $75
    inc c                                         ; $4B68: $0C
    rst RST_38                                    ; $4B69: $FF
    sub l                                         ; $4B6A: $95
    inc b                                         ; $4B6B: $04
    inc e                                         ; $4B6C: $1C
    push hl                                       ; $4B6D: $E5
    inc e                                         ; $4B6E: $1C
    pop hl                                        ; $4B6F: $E1
    inc b                                         ; $4B70: $04
    db $E3                                        ; $4B71: $E3
    nop                                           ; $4B72: $00
    ld b, b                                       ; $4B73: $40
    rst RST_10                                    ; $4B74: $D7
    nop                                           ; $4B75: $00
    inc bc                                        ; $4B76: $03
    ld a, b                                       ; $4B77: $78
    ld sp, $3CFC                                  ; $4B78: $31 $FC $3C
    ld a, [hl]                                    ; $4B7B: $7E
    ld b, [hl]                                    ; $4B7C: $46
    ld [$9E04], sp                                ; $4B7D: $08 $04 $9E
    cp a                                          ; $4B80: $BF
    add e                                         ; $4B81: $83
    inc b                                         ; $4B82: $04
    ld [hl], h                                    ; $4B83: $74
    ld a, a                                       ; $4B84: $7F
    or a                                          ; $4B85: $B7
    ld l, b                                       ; $4B86: $68
    rra                                           ; $4B87: $1F
    ld l, b                                       ; $4B88: $68
    ld [$EC55], sp                                ; $4B89: $08 $55 $EC
    nop                                           ; $4B8C: $00

jr_020_4B8D:
    ld [$3CDF], sp                                ; $4B8D: $08 $DF $3C
    jr @+$24                                      ; $4B90: $18 $22

    inc l                                         ; $4B92: $2C
    inc c                                         ; $4B93: $0C
    inc b                                         ; $4B94: $04
    cp b                                          ; $4B95: $B8
    ld b, h                                       ; $4B96: $44
    rla                                           ; $4B97: $17
    sub h                                         ; $4B98: $94
    rst RST_18                                    ; $4B99: $DF
    and c                                         ; $4B9A: $A1
    inc h                                         ; $4B9B: $24
    ld c, d                                       ; $4B9C: $4A
    inc b                                         ; $4B9D: $04
    add h                                         ; $4B9E: $84
    inc b                                         ; $4B9F: $04
    ld [hl], l                                    ; $4BA0: $75
    adc d                                         ; $4BA1: $8A
    inc b                                         ; $4BA2: $04
    ld c, b                                       ; $4BA3: $48
    inc b                                         ; $4BA4: $04
    ld a, [bc]                                    ; $4BA5: $0A
    inc b                                         ; $4BA6: $04
    xor l                                         ; $4BA7: $AD
    inc b                                         ; $4BA8: $04
    ld d, l                                       ; $4BA9: $55
    ld d, [hl]                                    ; $4BAA: $56
    inc b                                         ; $4BAB: $04
    ld a, [hl+]                                   ; $4BAC: $2A
    inc b                                         ; $4BAD: $04
    ld d, c                                       ; $4BAE: $51
    inc b                                         ; $4BAF: $04
    inc d                                         ; $4BB0: $14
    inc b                                         ; $4BB1: $04
    ld de, $FEA8                                  ; $4BB2: $11 $A8 $FE
    ld d, h                                       ; $4BB5: $54
    inc b                                         ; $4BB6: $04
    xor c                                         ; $4BB7: $A9
    db $FD                                        ; $4BB8: $FD
    and l                                         ; $4BB9: $A5
    inc b                                         ; $4BBA: $04
    ld d, l                                       ; $4BBB: $55
    ld e, h                                       ; $4BBC: $5C
    inc b                                         ; $4BBD: $04
    cp l                                          ; $4BBE: $BD
    inc l                                         ; $4BBF: $2C
    ld d, a                                       ; $4BC0: $57
    inc b                                         ; $4BC1: $04
    jp hl                                         ; $4BC2: $E9


    inc b                                         ; $4BC3: $04
    ld d, l                                       ; $4BC4: $55
    ld e, [hl]                                    ; $4BC5: $5E
    inc b                                         ; $4BC6: $04
    or l                                          ; $4BC7: $B5
    inc b                                         ; $4BC8: $04
    ld e, a                                       ; $4BC9: $5F
    inc b                                         ; $4BCA: $04
    ei                                            ; $4BCB: $FB
    inc b                                         ; $4BCC: $04
    ld h, b                                       ; $4BCD: $60
    and [hl]                                      ; $4BCE: $A6
    ld h, l                                       ; $4BCF: $65
    db $10                                        ; $4BD0: $10
    ld [hl], b                                    ; $4BD1: $70
    ldh a, [c]                                    ; $4BD2: $F2
    and b                                         ; $4BD3: $A0
    db $EC                                        ; $4BD4: $EC
    ret nz                                        ; $4BD5: $C0

    ld l, l                                       ; $4BD6: $6D
    sbc $04                                       ; $4BD7: $DE $04
    nop                                           ; $4BD9: $00
    ld l, a                                       ; $4BDA: $6F
    inc l                                         ; $4BDB: $2C
    ld bc, $3DAE                                  ; $4BDC: $01 $AE $3D
    ld c, b                                       ; $4BDF: $48
    add sp, -$74                                  ; $4BE0: $E8 $8C
    call c, Call_000_003C                         ; $4BE2: $DC $3C $00
    or d                                          ; $4BE5: $B2
    or e                                          ; $4BE6: $B3
    add l                                         ; $4BE7: $85
    ld c, b                                       ; $4BE8: $48
    rst RST_08                                    ; $4BE9: $CF
    db $FC                                        ; $4BEA: $FC
    rst RST_28                                    ; $4BEB: $EF
    dec c                                         ; $4BEC: $0D
    inc b                                         ; $4BED: $04
    ld d, $9F                                     ; $4BEE: $16 $9F
    ld l, d                                       ; $4BF0: $6A
    xor b                                         ; $4BF1: $A8
    ld e, b                                       ; $4BF2: $58
    pop hl                                        ; $4BF3: $E1
    inc d                                         ; $4BF4: $14
    db $E4                                        ; $4BF5: $E4
    inc b                                         ; $4BF6: $04
    nop                                           ; $4BF7: $00
    rlca                                          ; $4BF8: $07
    ld b, c                                       ; $4BF9: $41
    jr nz, jr_020_4C77                            ; $4BFA: $20 $7B

    ld h, d                                       ; $4BFC: $62
    inc b                                         ; $4BFD: $04
    or c                                          ; $4BFE: $B1
    cp e                                          ; $4BFF: $BB

Call_020_4C00:
    ld b, b                                       ; $4C00: $40
    call $7C3D                                    ; $4C01: $CD $3D $7C
    ld a, a                                       ; $4C04: $7F
    rst RST_38                                    ; $4C05: $FF
    rst RST_38                                    ; $4C06: $FF
    rst RST_38                                    ; $4C07: $FF
    db $FD                                        ; $4C08: $FD
    db $EC                                        ; $4C09: $EC
    or $78                                        ; $4C0A: $F6 $78
    ld a, e                                       ; $4C0C: $7B
    ld hl, sp-$34                                 ; $4C0D: $F8 $CC
    jr nz, jr_020_4C19                            ; $4C0F: $20 $08

    inc b                                         ; $4C11: $04
    db $FC                                        ; $4C12: $FC
    nop                                           ; $4C13: $00
    rst RST_38                                    ; $4C14: $FF
    xor e                                         ; $4C15: $AB
    db $FD                                        ; $4C16: $FD
    ld a, [hl+]                                   ; $4C17: $2A
    inc b                                         ; $4C18: $04

jr_020_4C19:
    ld d, c                                       ; $4C19: $51
    inc b                                         ; $4C1A: $04
    inc d                                         ; $4C1B: $14
    inc b                                         ; $4C1C: $04
    ld b, h                                       ; $4C1D: $44
    xor d                                         ; $4C1E: $AA
    inc b                                         ; $4C1F: $04
    ld d, l                                       ; $4C20: $55
    inc b                                         ; $4C21: $04
    xor d                                         ; $4C22: $AA
    inc b                                         ; $4C23: $04
    and l                                         ; $4C24: $A5
    sbc [hl]                                      ; $4C25: $9E
    cp l                                          ; $4C26: $BD
    ldh [rDIV], a                                 ; $4C27: $E0 $04
    cp h                                          ; $4C29: $BC
    call nz, $BF29                                ; $4C2A: $C4 $29 $BF
    ld e, $DF                                     ; $4C2D: $1E $DF
    dec d                                         ; $4C2F: $15
    ld l, d                                       ; $4C30: $6A
    rra                                           ; $4C31: $1F
    cp a                                          ; $4C32: $BF
    cp l                                          ; $4C33: $BD
    xor a                                         ; $4C34: $AF
    inc b                                         ; $4C35: $04
    ld a, d                                       ; $4C36: $7A
    inc b                                         ; $4C37: $04
    xor l                                         ; $4C38: $AD
    cp d                                          ; $4C39: $BA
    ld h, $FD                                     ; $4C3A: $26 $FD
    inc b                                         ; $4C3C: $04
    cp a                                          ; $4C3D: $BF
    cp l                                          ; $4C3E: $BD
    jr z, jr_020_4C61                             ; $4C3F: $28 $20

    ld d, b                                       ; $4C41: $50
    ld [hl], b                                    ; $4C42: $70
    cp $BF                                        ; $4C43: $FE $BF
    cp a                                          ; $4C45: $BF
    cp a                                          ; $4C46: $BF
    add c                                         ; $4C47: $81
    or l                                          ; $4C48: $B5
    ldh [c], a                                    ; $4C49: $E2
    di                                            ; $4C4A: $F3
    dec d                                         ; $4C4B: $15
    ld bc, $8A0F                                  ; $4C4C: $01 $0F $8A
    ld a, $0A                                     ; $4C4F: $3E $0A
    sbc [hl]                                      ; $4C51: $9E
    ld d, [hl]                                    ; $4C52: $56
    inc b                                         ; $4C53: $04
    dec b                                         ; $4C54: $05
    ld h, $F7                                     ; $4C55: $26 $F7
    ld c, [hl]                                    ; $4C57: $4E
    rst RST_28                                    ; $4C58: $EF
    inc c                                         ; $4C59: $0C
    inc b                                         ; $4C5A: $04
    xor h                                         ; $4C5B: $AC
    inc b                                         ; $4C5C: $04
    ld [hl], b                                    ; $4C5D: $70
    ld c, b                                       ; $4C5E: $48
    inc b                                         ; $4C5F: $04
    adc h                                         ; $4C60: $8C

jr_020_4C61:
    dec b                                         ; $4C61: $05
    xor $40                                       ; $4C62: $EE $40
    reti                                          ; $4C64: $D9


    cp l                                          ; $4C65: $BD
    xor l                                         ; $4C66: $AD
    ld b, h                                       ; $4C67: $44
    ld d, a                                       ; $4C68: $57
    inc b                                         ; $4C69: $04
    jp hl                                         ; $4C6A: $E9


    sbc l                                         ; $4C6B: $9D
    call z, $04B4                                 ; $4C6C: $CC $B4 $04
    ld d, [hl]                                    ; $4C6F: $56
    ld e, a                                       ; $4C70: $5F
    inc d                                         ; $4C71: $14
    ei                                            ; $4C72: $FB
    inc b                                         ; $4C73: $04
    and [hl]                                      ; $4C74: $A6
    cp l                                          ; $4C75: $BD
    ld b, b                                       ; $4C76: $40

jr_020_4C77:
    nop                                           ; $4C77: $00
    xor b                                         ; $4C78: $A8
    call nz, $0049                                ; $4C79: $C4 $49 $00
    db $DD                                        ; $4C7C: $DD
    nop                                           ; $4C7D: $00
    ld hl, $6F23                                  ; $4C7E: $21 $23 $6F
    ret nc                                        ; $4C81: $D0

    inc l                                         ; $4C82: $2C
    ld bc, $04AE                                  ; $4C83: $01 $AE $04
    ld [hl+], a                                   ; $4C86: $22
    ld a, [hl-]                                   ; $4C87: $3A
    ld [$32B9], sp                                ; $4C88: $08 $B9 $32
    jr nc, @-$47                                  ; $4C8B: $30 $B7

    ld c, h                                       ; $4C8D: $4C
    inc b                                         ; $4C8E: $04
    ld d, b                                       ; $4C8F: $50
    ld [hl], a                                    ; $4C90: $77
    inc e                                         ; $4C91: $1C
    ld a, e                                       ; $4C92: $7B
    sub h                                         ; $4C93: $94
    call nc, Call_020_54FD                        ; $4C94: $D4 $FD $54
    inc b                                         ; $4C97: $04
    jr nz, @-$2A                                  ; $4C98: $20 $D4

    ld h, b                                       ; $4C9A: $60
    db $E3                                        ; $4C9B: $E3
    ld hl, $EC64                                  ; $4C9C: $21 $64 $EC
    db $F4                                        ; $4C9F: $F4
    rst RST_18                                    ; $4CA0: $DF
    sub l                                         ; $4CA1: $95
    cp a                                          ; $4CA2: $BF
    xor d                                         ; $4CA3: $AA
    inc b                                         ; $4CA4: $04
    ld [hl], a                                    ; $4CA5: $77
    and l                                         ; $4CA6: $A5
    inc b                                         ; $4CA7: $04
    call c, $B81C                                 ; $4CA8: $DC $1C $B8
    ret nc                                        ; $4CAB: $D0

    ld h, h                                       ; $4CAC: $64
    inc b                                         ; $4CAD: $04
    ld a, [hl]                                    ; $4CAE: $7E
    add sp, $54                                   ; $4CAF: $E8 $54
    db $FD                                        ; $4CB1: $FD
    ret nc                                        ; $4CB2: $D0

    and h                                         ; $4CB3: $A4
    rst RST_38                                    ; $4CB4: $FF
    db $FD                                        ; $4CB5: $FD
    inc bc                                        ; $4CB6: $03
    scf                                           ; $4CB7: $37
    jp Jump_000_2834                              ; $4CB8: $C3 $34 $28


    ret z                                         ; $4CBB: $C8

    cp d                                          ; $4CBC: $BA
    cp h                                          ; $4CBD: $BC
    nop                                           ; $4CBE: $00
    ld c, b                                       ; $4CBF: $48
    add sp, $24                                   ; $4CC0: $E8 $24
    rst RST_38                                    ; $4CC2: $FF
    db $FD                                        ; $4CC3: $FD
    pop hl                                        ; $4CC4: $E1
    cp h                                          ; $4CC5: $BC
    ld [hl+], a                                   ; $4CC6: $22
    rst RST_30                                    ; $4CC7: $F7
    add hl, de                                    ; $4CC8: $19
    add h                                         ; $4CC9: $84
    ld h, b                                       ; $4CCA: $60
    inc b                                         ; $4CCB: $04
    dec a                                         ; $4CCC: $3D
    ld b, b                                       ; $4CCD: $40
    add $FC                                       ; $4CCE: $C6 $FC
    ld hl, sp-$53                                 ; $4CD0: $F8 $AD
    and b                                         ; $4CD2: $A0
    inc [hl]                                      ; $4CD3: $34
    ld d, [hl]                                    ; $4CD4: $56
    inc b                                         ; $4CD5: $04

jr_020_4CD6:
    ld hl, $5540                                  ; $4CD6: $21 $40 $55

jr_020_4CD9:
    rlca                                          ; $4CD9: $07
    nop                                           ; $4CDA: $00
    jr jr_020_4CDD                                ; $4CDB: $18 $00

jr_020_4CDD:
    jr nz, jr_020_4CDF                            ; $4CDD: $20 $00

jr_020_4CDF:
    ld b, b                                       ; $4CDF: $40
    ld [bc], a                                    ; $4CE0: $02
    ld a, [hl]                                    ; $4CE1: $7E
    add b                                         ; $4CE2: $80
    rlca                                          ; $4CE3: $07
    ld [bc], a                                    ; $4CE4: $02
    ld a, e                                       ; $4CE5: $7B
    xor c                                         ; $4CE6: $A9
    ret                                           ; $4CE7: $C9


    jp hl                                         ; $4CE8: $E9


    ldh [$FFD5], a                                ; $4CE9: $E0 $D5
    nop                                           ; $4CEB: $00
    add hl, hl                                    ; $4CEC: $29
    inc b                                         ; $4CED: $04
    nop                                           ; $4CEE: $00
    ld [bc], a                                    ; $4CEF: $02
    ld [bc], a                                    ; $4CF0: $02
    ld bc, $FA07                                  ; $4CF1: $01 $07 $FA
    ld [bc], a                                    ; $4CF4: $02
    ld a, e                                       ; $4CF5: $7B
    xor c                                         ; $4CF6: $A9
    ret                                           ; $4CF7: $C9


    jp hl                                         ; $4CF8: $E9


    nop                                           ; $4CF9: $00
    nop                                           ; $4CFA: $00
    inc bc                                        ; $4CFB: $03
    xor d                                         ; $4CFC: $AA
    ld [$080C], sp                                ; $4CFD: $08 $0C $08

jr_020_4D00:
    db $10                                        ; $4D00: $10
    ld [$0A20], sp                                ; $4D01: $08 $20 $0A
    ld b, b                                       ; $4D04: $40
    db $FD                                        ; $4D05: $FD
    ld c, $5B                                     ; $4D06: $0E $5B
    adc c                                         ; $4D08: $89
    xor c                                         ; $4D09: $A9
    ret                                           ; $4D0A: $C9


    inc bc                                        ; $4D0B: $03
    ldh [$FF5A], a                                ; $4D0C: $E0 $5A
    ld d, a                                       ; $4D0E: $57
    ld [$0408], sp                                ; $4D0F: $08 $08 $04
    ld a, [bc]                                    ; $4D12: $0A
    ld [bc], a                                    ; $4D13: $02
    ld c, $5B                                     ; $4D14: $0E $5B
    adc c                                         ; $4D16: $89
    ld d, b                                       ; $4D17: $50
    jr nc, @+$0A                                  ; $4D18: $30 $08

    ret nz                                        ; $4D1A: $C0

    ld [$57A8], a                                 ; $4D1B: $EA $A8 $57
    sub $29                                       ; $4D1E: $D6 $29
    ld b, b                                       ; $4D20: $40
    ld hl, sp+$70                                 ; $4D21: $F8 $70
    ld sp, hl                                     ; $4D23: $F9
    inc bc                                        ; $4D24: $03
    di                                            ; $4D25: $F3
    rlca                                          ; $4D26: $07
    and $0F                                       ; $4D27: $E6 $0F
    ld e, b                                       ; $4D29: $58
    db $EC                                        ; $4D2A: $EC
    ld [$09E0], sp                                ; $4D2B: $08 $E0 $09
    jr c, jr_020_4D00                             ; $4D2E: $38 $D0

    dec de                                        ; $4D30: $1B
    jr nz, jr_020_4CDD                            ; $4D31: $20 $AA

    ret nc                                        ; $4D33: $D0

    ld c, a                                       ; $4D34: $4F
    jr nc, jr_020_4CD6                            ; $4D35: $30 $9F

    ldh [$FF1F], a                                ; $4D37: $E0 $1F
    ld [$623F], sp                                ; $4D39: $08 $3F $62
    add b                                         ; $4D3C: $80
    ld [$7FF8], sp                                ; $4D3D: $08 $F8 $7F
    rst RST_38                                    ; $4D40: $FF
    xor a                                         ; $4D41: $AF
    db $10                                        ; $4D42: $10
    db $D3                                        ; $4D43: $D3
    and b                                         ; $4D44: $A0
    jr nc, jr_020_4DAF                            ; $4D45: $30 $68

    ld h, b                                       ; $4D47: $60
    jr c, jr_020_4CD9                             ; $4D48: $38 $8F

    inc e                                         ; $4D4A: $1C
    rst RST_00                                    ; $4D4B: $C7
    ld a, [bc]                                    ; $4D4C: $0A
    rla                                           ; $4D4D: $17
    rst RST_20                                    ; $4D4E: $E7

jr_020_4D4F:
    ld e, $C3                                     ; $4D4F: $1E $C3
    ld d, b                                       ; $4D51: $50
    add c                                         ; $4D52: $81
    ld [hl], b                                    ; $4D53: $70
    sbc b                                         ; $4D54: $98
    sub b                                         ; $4D55: $90
    ret nz                                        ; $4D56: $C0

    rrca                                          ; $4D57: $0F
    ld a, [bc]                                    ; $4D58: $0A
    inc bc                                        ; $4D59: $03
    ld a, b                                       ; $4D5A: $78
    ld sp, $3CFC                                  ; $4D5B: $31 $FC $3C
    ld a, [hl]                                    ; $4D5E: $7E
    ld b, l                                       ; $4D5F: $45
    ld [$9E08], sp                                ; $4D60: $08 $08 $9E
    cp a                                          ; $4D63: $BF
    add e                                         ; $4D64: $83
    ld [$D107], sp                                ; $4D65: $08 $07 $D1
    nop                                           ; $4D68: $00
    rra                                           ; $4D69: $1F
    jr nz, jr_020_4D4F                            ; $4D6A: $20 $E3

    ld h, b                                       ; $4D6C: $60
    db $EC                                        ; $4D6D: $EC
    ld h, h                                       ; $4D6E: $64
    rst RST_28                                    ; $4D6F: $EF
    ld c, b                                       ; $4D70: $48
    ld a, [hl+]                                   ; $4D71: $2A
    rst RST_18                                    ; $4D72: $DF
    sub l                                         ; $4D73: $95
    ld l, b                                       ; $4D74: $68
    xor d                                         ; $4D75: $AA
    ld [$08A5], sp                                ; $4D76: $08 $A5 $08
    ld e, [hl]                                    ; $4D79: $5E
    xor a                                         ; $4D7A: $AF
    jr c, @+$01                                   ; $4D7B: $38 $FF

    sub b                                         ; $4D7D: $90
    ld d, l                                       ; $4D7E: $55
    ld b, b                                       ; $4D7F: $40
    nop                                           ; $4D80: $00
    db $10                                        ; $4D81: $10
    ld hl, sp-$46                                 ; $4D82: $F8 $BA
    jr nc, jr_020_4DA8                            ; $4D84: $30 $22

    ret c                                         ; $4D86: $D8

    jr jr_020_4D91                                ; $4D87: $18 $08

    add b                                         ; $4D89: $80
    ld a, b                                       ; $4D8A: $78
    sub h                                         ; $4D8B: $94
    xor b                                         ; $4D8C: $A8
    ld [$88C1], sp                                ; $4D8D: $08 $C1 $88
    ld a, [bc]                                    ; $4D90: $0A

jr_020_4D91:
    ld [$3F31], sp                                ; $4D91: $08 $31 $3F

jr_020_4D94:
    adc d                                         ; $4D94: $8A
    ld a, [$9078]                                 ; $4D95: $FA $78 $90
    ld [$0838], sp                                ; $4D98: $08 $38 $08
    xor l                                         ; $4D9B: $AD
    ld [$F856], sp                                ; $4D9C: $08 $56 $F8
    ld [$0BF9], sp                                ; $4D9F: $08 $F9 $0B
    ld bc, $03D8                                  ; $4DA2: $01 $D8 $03
    ldh [rSB], a                                  ; $4DA5: $E0 $01
    ld d, c                                       ; $4DA7: $51

jr_020_4DA8:
    ldh a, [$FF28]                                ; $4DA8: $F0 $28
    ld hl, sp+$0A                                 ; $4DAA: $F8 $0A
    ld d, b                                       ; $4DAC: $50
    xor b                                         ; $4DAD: $A8
    and b                                         ; $4DAE: $A0

jr_020_4DAF:
    db $10                                        ; $4DAF: $10
    xor d                                         ; $4DB0: $AA
    jr nz, jr_020_4D94                            ; $4DB1: $20 $E1

    ld [$9983], sp                                ; $4DB3: $08 $83 $99
    and d                                         ; $4DB6: $A2
    ret nz                                        ; $4DB7: $C0

    ld b, h                                       ; $4DB8: $44
    cp b                                          ; $4DB9: $B8
    cp $0F                                        ; $4DBA: $FE $0F
    ld [$E0F0], sp                                ; $4DBC: $08 $F0 $E0
    ld sp, hl                                     ; $4DBF: $F9
    db $FC                                        ; $4DC0: $FC
    ld a, l                                       ; $4DC1: $7D
    and d                                         ; $4DC2: $A2
    ld [$047E], sp                                ; $4DC3: $08 $7E $04
    ld a, h                                       ; $4DC6: $7C
    db $FD                                        ; $4DC7: $FD
    ld hl, sp+$08                                 ; $4DC8: $F8 $08
    ld [bc], a                                    ; $4DCA: $02
    dec hl                                        ; $4DCB: $2B
    di                                            ; $4DCC: $F3
    ld [$80A0], sp                                ; $4DCD: $08 $A0 $80
    ret nz                                        ; $4DD0: $C0

    inc d                                         ; $4DD1: $14
    cp $09                                        ; $4DD2: $FE $09
    ld d, b                                       ; $4DD4: $50
    rst RST_20                                    ; $4DD5: $E7
    ld [$80EB], sp                                ; $4DD6: $08 $EB $80
    push af                                       ; $4DD9: $F5
    inc b                                         ; $4DDA: $04
    ldh a, [c]                                    ; $4DDB: $F2
    ld b, $02                                     ; $4DDC: $06 $02
    ld sp, hl                                     ; $4DDE: $F9
    inc bc                                        ; $4DDF: $03
    add h                                         ; $4DE0: $84
    dec b                                         ; $4DE1: $05
    inc [hl]                                      ; $4DE2: $34
    halt                                          ; $4DE3: $76
    ld d, b                                       ; $4DE4: $50
    xor $8A                                       ; $4DE5: $EE $8A
    ld [$408E], sp                                ; $4DE7: $08 $8E $40
    ld h, a                                       ; $4DEA: $67
    sub b                                         ; $4DEB: $90
    ld b, e                                       ; $4DEC: $43
    ld [$A550], sp                                ; $4DED: $08 $50 $A5
    db $ED                                        ; $4DF0: $ED
    rst RST_28                                    ; $4DF1: $EF
    ld [$10D7], sp                                ; $4DF2: $08 $D7 $10
    dec bc                                        ; $4DF5: $0B
    rla                                           ; $4DF6: $17
    add hl, bc                                    ; $4DF7: $09
    add b                                         ; $4DF8: $80
    adc b                                         ; $4DF9: $88
    sub a                                         ; $4DFA: $97
    sub b                                         ; $4DFB: $90
    ld h, b                                       ; $4DFC: $60
    ldh a, [rTAC]                                 ; $4DFD: $F0 $07
    ld l, a                                       ; $4DFF: $6F
    add b                                         ; $4E00: $80
    inc b                                         ; $4E01: $04
    add e                                         ; $4E02: $83
    inc b                                         ; $4E03: $04
    ld l, h                                       ; $4E04: $6C
    ld b, $4E                                     ; $4E05: $06 $4E
    or b                                          ; $4E07: $B0
    ld l, $1D                                     ; $4E08: $2E $1D
    ld b, b                                       ; $4E0A: $40
    ld a, [hl+]                                   ; $4E0B: $2A
    nop                                           ; $4E0C: $00
    ld bc, $0208                                  ; $4E0D: $01 $08 $02
    ld [$0804], sp                                ; $4E10: $08 $04 $08
    dec b                                         ; $4E13: $05
    xor d                                         ; $4E14: $AA
    ld [$0806], sp                                ; $4E15: $08 $06 $08
    rlca                                          ; $4E18: $07
    ld [$0808], sp                                ; $4E19: $08 $08 $08
    add hl, bc                                    ; $4E1C: $09
    xor d                                         ; $4E1D: $AA
    inc c                                         ; $4E1E: $0C
    ld a, [bc]                                    ; $4E1F: $0A
    ld a, [bc]                                    ; $4E20: $0A
    dec bc                                        ; $4E21: $0B
    ld a, [bc]                                    ; $4E22: $0A
    inc c                                         ; $4E23: $0C
    ld [$AB0D], sp                                ; $4E24: $08 $0D $AB
    ld [$080E], sp                                ; $4E27: $08 $0E $08
    rrca                                          ; $4E2A: $0F
    ld [$0F03], sp                                ; $4E2B: $08 $03 $0F
    rrca                                          ; $4E2E: $0F
    ld [$0F0F], a                                 ; $4E2F: $EA $0F $0F
    ld a, [bc]                                    ; $4E32: $0A
    db $10                                        ; $4E33: $10
    ld [$0811], sp                                ; $4E34: $08 $11 $08
    ld [de], a                                    ; $4E37: $12
    xor d                                         ; $4E38: $AA
    ld [$0808], sp                                ; $4E39: $08 $08 $08
    inc de                                        ; $4E3C: $13
    ld [$0814], sp                                ; $4E3D: $08 $14 $08
    dec d                                         ; $4E40: $15
    xor d                                         ; $4E41: $AA
    ld [$0816], sp                                ; $4E42: $08 $16 $08
    rla                                           ; $4E45: $17
    ld [$0801], sp                                ; $4E46: $08 $01 $08
    ld [bc], a                                    ; $4E49: $02
    xor d                                         ; $4E4A: $AA
    ld [$0804], sp                                ; $4E4B: $08 $04 $08
    dec b                                         ; $4E4E: $05
    ld [$0807], sp                                ; $4E4F: $08 $07 $08
    jr @-$54                                      ; $4E52: $18 $AA

    ld [$0819], sp                                ; $4E54: $08 $19 $08
    ld a, [de]                                    ; $4E57: $1A
    ld [$081B], sp                                ; $4E58: $08 $1B $08
    inc bc                                        ; $4E5B: $03
    ei                                            ; $4E5C: $FB
    rrca                                          ; $4E5D: $0F
    rrca                                          ; $4E5E: $0F
    rrca                                          ; $4E5F: $0F
    rrca                                          ; $4E60: $0F
    ld a, [bc]                                    ; $4E61: $0A
    inc e                                         ; $4E62: $1C
    rrca                                          ; $4E63: $0F
    ld [$1F55], sp                                ; $4E64: $08 $55 $1F
    ld [$0822], sp                                ; $4E67: $08 $22 $08
    inc hl                                        ; $4E6A: $23
    ld [$0826], sp                                ; $4E6B: $08 $26 $08
    ld d, l                                       ; $4E6E: $55
    daa                                           ; $4E6F: $27
    ld [$082A], sp                                ; $4E70: $08 $2A $08
    dec hl                                        ; $4E73: $2B
    ld [$082E], sp                                ; $4E74: $08 $2E $08
    ld d, l                                       ; $4E77: $55
    cpl                                           ; $4E78: $2F
    ld [$0832], sp                                ; $4E79: $08 $32 $08
    inc sp                                        ; $4E7C: $33
    ld [$6A36], sp                                ; $4E7D: $08 $36 $6A
    xor d                                         ; $4E80: $AA
    db $EB                                        ; $4E81: $EB
    dec e                                         ; $4E82: $1D
    ld [$081E], sp                                ; $4E83: $08 $1E $08
    jr nz, @+$0A                                  ; $4E86: $20 $08

    ld hl, $08AA                                  ; $4E88: $21 $AA $08
    inc h                                         ; $4E8B: $24
    ld [$0825], sp                                ; $4E8C: $08 $25 $08
    jr z, @+$0A                                   ; $4E8F: $28 $08

    add hl, hl                                    ; $4E91: $29
    xor d                                         ; $4E92: $AA
    ld [$082C], sp                                ; $4E93: $08 $2C $08
    dec l                                         ; $4E96: $2D
    ld [$0830], sp                                ; $4E97: $08 $30 $08
    ld sp, $08AE                                  ; $4E9A: $31 $AE $08
    inc [hl]                                      ; $4E9D: $34
    ld [$EA35], sp                                ; $4E9E: $08 $35 $EA
    ld l, c                                       ; $4EA1: $69
    add hl, de                                    ; $4EA2: $19
    scf                                           ; $4EA3: $37
    xor d                                         ; $4EA4: $AA
    ld [$083A], sp                                ; $4EA5: $08 $3A $08
    dec sp                                        ; $4EA8: $3B
    ld [$083E], sp                                ; $4EA9: $08 $3E $08
    ccf                                           ; $4EAC: $3F
    xor l                                         ; $4EAD: $AD
    ld e, d                                       ; $4EAE: $5A
    ld b, d                                       ; $4EAF: $42
    ld [$2A44], sp                                ; $4EB0: $08 $44 $2A
    add hl, bc                                    ; $4EB3: $09
    ld b, [hl]                                    ; $4EB4: $46
    ld [$4855], sp                                ; $4EB5: $08 $55 $48
    ld [$0849], sp                                ; $4EB8: $08 $49 $08
    ld c, h                                       ; $4EBB: $4C
    ld [$6C4D], sp                                ; $4EBC: $08 $4D $6C
    ld d, l                                       ; $4EBF: $55
    jr c, jr_020_4ECA                             ; $4EC0: $38 $08

    add hl, sp                                    ; $4EC2: $39
    ld [$083C], sp                                ; $4EC3: $08 $3C $08
    dec a                                         ; $4EC6: $3D
    ld [$4055], sp                                ; $4EC7: $08 $55 $40

jr_020_4ECA:
    ld [$5A41], sp                                ; $4ECA: $08 $41 $5A
    ld b, e                                       ; $4ECD: $43
    ld [$2A45], sp                                ; $4ECE: $08 $45 $2A
    xor d                                         ; $4ED1: $AA
    add hl, bc                                    ; $4ED2: $09
    ld b, a                                       ; $4ED3: $47
    ld [$084A], sp                                ; $4ED4: $08 $4A $08
    ld c, e                                       ; $4ED7: $4B
    ld [$AA4E], sp                                ; $4ED8: $08 $4E $AA
    ld [$084F], sp                                ; $4EDB: $08 $4F $08
    ld d, b                                       ; $4EDE: $50
    cp d                                          ; $4EDF: $BA
    ld d, c                                       ; $4EE0: $51
    ld [$AB52], sp                                ; $4EE1: $08 $52 $AB
    ld [$0855], sp                                ; $4EE4: $08 $55 $08
    ld d, [hl]                                    ; $4EE7: $56
    ld a, [hl-]                                   ; $4EE8: $3A
    ld e, c                                       ; $4EE9: $59
    inc e                                         ; $4EEA: $1C
    dec hl                                        ; $4EEB: $2B
    xor d                                         ; $4EEC: $AA
    add hl, bc                                    ; $4EED: $09
    ld e, h                                       ; $4EEE: $5C
    ld [$085D], sp                                ; $4EEF: $08 $5D $08
    ld e, [hl]                                    ; $4EF2: $5E
    ld [$AA61], sp                                ; $4EF3: $08 $61 $AA
    ld [$0862], sp                                ; $4EF6: $08 $62 $08
    ld h, l                                       ; $4EF9: $65
    adc d                                         ; $4EFA: $8A
    ld d, e                                       ; $4EFB: $53
    ld [$AA54], sp                                ; $4EFC: $08 $54 $AA
    ld [$0857], sp                                ; $4EFF: $08 $57 $08
    ld e, b                                       ; $4F02: $58
    ld [$085A], sp                                ; $4F03: $08 $5A $08

Call_020_4F06:
    ld e, e                                       ; $4F06: $5B
    push af                                       ; $4F07: $F5
    ld e, d                                       ; $4F08: $5A
    add hl, de                                    ; $4F09: $19
    dec hl                                        ; $4F0A: $2B
    dec sp                                        ; $4F0B: $3B
    ld e, a                                       ; $4F0C: $5F
    ld [$0860], sp                                ; $4F0D: $08 $60 $08
    ld d, b                                       ; $4F10: $50
    ld h, e                                       ; $4F11: $63
    ld [$5B64], sp                                ; $4F12: $08 $64 $5B
    add d                                         ; $4F15: $82
    add b                                         ; $4F16: $80
    ld a, l                                       ; $4F17: $7D
    nop                                           ; $4F18: $00
    inc bc                                        ; $4F19: $03
    inc bc                                        ; $4F1A: $03
    inc bc                                        ; $4F1B: $03
    inc bc                                        ; $4F1C: $03
    nop                                           ; $4F1D: $00
    cp $00                                        ; $4F1E: $FE $00
    ld d, l                                       ; $4F20: $55
    ld [bc], a                                    ; $4F21: $02
    nop                                           ; $4F22: $00
    inc b                                         ; $4F23: $04
    nop                                           ; $4F24: $00
    ld c, b                                       ; $4F25: $48
    nop                                           ; $4F26: $00
    jr nc, jr_020_4F29                            ; $4F27: $30 $00

jr_020_4F29:
    ld d, l                                       ; $4F29: $55
    stop                                          ; $4F2A: $10 $00
    ld [$0600], sp                                ; $4F2C: $08 $00 $06
    nop                                           ; $4F2F: $00
    ld a, b                                       ; $4F30: $78
    nop                                           ; $4F31: $00
    cp l                                          ; $4F32: $BD
    dec d                                         ; $4F33: $15
    rst RST_38                                    ; $4F34: $FF
    nop                                           ; $4F35: $00
    dec c                                         ; $4F36: $0D
    ld bc, $203D                                  ; $4F37: $01 $3D $20
    nop                                           ; $4F3A: $00
    or $87                                        ; $4F3B: $F6 $87
    inc bc                                        ; $4F3D: $03
    inc bc                                        ; $4F3E: $03
    inc bc                                        ; $4F3F: $03
    inc de                                        ; $4F40: $13
    nop                                           ; $4F41: $00
    ld d, l                                       ; $4F42: $55
    ld a, [hl]                                    ; $4F43: $7E
    xor e                                         ; $4F44: $AB
    nop                                           ; $4F45: $00
    ld [de], a                                    ; $4F46: $12
    ld [bc], a                                    ; $4F47: $02
    ld [hl+], a                                   ; $4F48: $22
    ld [bc], a                                    ; $4F49: $02
    ld c, h                                       ; $4F4A: $4C
    nop                                           ; $4F4B: $00
    rst RST_28                                    ; $4F4C: $EF
    xor a                                         ; $4F4D: $AF
    and l                                         ; $4F4E: $A5
    jr c, jr_020_4F51                             ; $4F4F: $38 $00

jr_020_4F51:
    ret z                                         ; $4F51: $C8

    nop                                           ; $4F52: $00
    rst RST_00                                    ; $4F53: $C7
    rst RST_08                                    ; $4F54: $CF
    ld a, a                                       ; $4F55: $7F
    xor l                                         ; $4F56: $AD
    dec e                                         ; $4F57: $1D
    inc a                                         ; $4F58: $3C
    nop                                           ; $4F59: $00
    ld b, b                                       ; $4F5A: $40
    ld [bc], a                                    ; $4F5B: $02
    dec d                                         ; $4F5C: $15
    ld b, e                                       ; $4F5D: $43
    nop                                           ; $4F5E: $00
    ld d, l                                       ; $4F5F: $55
    ld b, h                                       ; $4F60: $44
    nop                                           ; $4F61: $00
    ldh a, [c]                                    ; $4F62: $F2
    nop                                           ; $4F63: $00
    ld c, d                                       ; $4F64: $4A
    nop                                           ; $4F65: $00
    ld c, c                                       ; $4F66: $49
    ld [bc], a                                    ; $4F67: $02
    ld d, a                                       ; $4F68: $57
    adc b                                         ; $4F69: $88

jr_020_4F6A:
    nop                                           ; $4F6A: $00
    or b                                          ; $4F6B: $B0
    nop                                           ; $4F6C: $00
    jr nz, jr_020_4F72                            ; $4F6D: $20 $03

    inc bc                                        ; $4F6F: $03
    nop                                           ; $4F70: $00
    ld l, d                                       ; $4F71: $6A

jr_020_4F72:
    ld hl, $FD00                                  ; $4F72: $21 $00 $FD
    inc e                                         ; $4F75: $1C
    nop                                           ; $4F76: $00
    nop                                           ; $4F77: $00
    nop                                           ; $4F78: $00
    jr nc, jr_020_4F6A                            ; $4F79: $30 $EF

    nop                                           ; $4F7B: $00
    push af                                       ; $4F7C: $F5
    sbc l                                         ; $4F7D: $9D
    ld a, $00                                     ; $4F7E: $3E $00
    dec c                                         ; $4F80: $0D
    dec e                                         ; $4F81: $1D
    dec l                                         ; $4F82: $2D
    rst RST_38                                    ; $4F83: $FF
    dec a                                         ; $4F84: $3D
    ld b, c                                       ; $4F85: $41
    inc b                                         ; $4F86: $04
    inc e                                         ; $4F87: $1C
    inc b                                         ; $4F88: $04
    inc l                                         ; $4F89: $2C
    inc b                                         ; $4F8A: $04
    inc a                                         ; $4F8B: $3C
    rst RST_38                                    ; $4F8C: $FF
    ld c, $1D                                     ; $4F8D: $0E $1D
    ld a, $3B                                     ; $4F8F: $3E $3B
    dec sp                                        ; $4F91: $3B
    dec sp                                        ; $4F92: $3B
    ld a, e                                       ; $4F93: $7B
    rst RST_28                                    ; $4F94: $EF
    xor [hl]                                      ; $4F95: $AE
    push hl                                       ; $4F96: $E5
    inc h                                         ; $4F97: $24
    nop                                           ; $4F98: $00
    jr z, jr_020_4F9B                             ; $4F99: $28 $00

jr_020_4F9B:
    or a                                          ; $4F9B: $B7
    inc bc                                        ; $4F9C: $03
    ld h, $AA                                     ; $4F9D: $26 $AA
    nop                                           ; $4F9F: $00
    ld d, b                                       ; $4FA0: $50
    nop                                           ; $4FA1: $00
    adc b                                         ; $4FA2: $88
    nop                                           ; $4FA3: $00
    inc b                                         ; $4FA4: $04
    nop                                           ; $4FA5: $00
    ld [bc], a                                    ; $4FA6: $02
    db $DD                                        ; $4FA7: $DD
    nop                                           ; $4FA8: $00
    scf                                           ; $4FA9: $37
    ld [$6500], sp                                ; $4FAA: $08 $00 $65
    ld bc, $0029                                  ; $4FAD: $01 $29 $00
    ld e, [hl]                                    ; $4FB0: $5E
    ld a, [hl+]                                   ; $4FB1: $2A
    nop                                           ; $4FB2: $00
    ld c, h                                       ; $4FB3: $4C
    nop                                           ; $4FB4: $00
    ccf                                           ; $4FB5: $3F
    call c, Call_020_6600                         ; $4FB6: $DC $00 $66
    xor a                                         ; $4FB9: $AF
    nop                                           ; $4FBA: $00
    ld b, $00                                     ; $4FBB: $06 $00
    inc e                                         ; $4FBD: $1C
    nop                                           ; $4FBE: $00
    dec c                                         ; $4FBF: $0D
    dec e                                         ; $4FC0: $1D
    dec l                                         ; $4FC1: $2D
    rst RST_28                                    ; $4FC2: $EF
    db $ED                                        ; $4FC3: $ED
    dec h                                         ; $4FC4: $25
    ld c, l                                       ; $4FC5: $4D
    ld a, h                                       ; $4FC6: $7C
    nop                                           ; $4FC7: $00
    xor l                                         ; $4FC8: $AD
    ld bc, $57C5                                  ; $4FC9: $01 $C5 $57
    jr c, jr_020_4FCE                             ; $4FCC: $38 $00

jr_020_4FCE:
    stop                                          ; $4FCE: $10 $00
    inc c                                         ; $4FD0: $0C
    nop                                           ; $4FD1: $00
    ccf                                           ; $4FD2: $3F
    push de                                       ; $4FD3: $D5
    ld d, a                                       ; $4FD4: $57
    jr jr_020_4FD7                                ; $4FD5: $18 $00

jr_020_4FD7:
    inc h                                         ; $4FD7: $24
    nop                                           ; $4FD8: $00
    ld b, a                                       ; $4FD9: $47
    nop                                           ; $4FDA: $00
    ld a, l                                       ; $4FDB: $7D
    ld bc, $1675                                  ; $4FDC: $01 $75 $16
    nop                                           ; $4FDF: $00
    dec l                                         ; $4FE0: $2D
    dec d                                         ; $4FE1: $15
    ld b, b                                       ; $4FE2: $40
    ld [bc], a                                    ; $4FE3: $02
    ld a, $00                                     ; $4FE4: $3E $00
    xor l                                         ; $4FE6: $AD
    ccf                                           ; $4FE7: $3F
    ldh a, [rP1]                                  ; $4FE8: $F0 $00
    ld c, [hl]                                    ; $4FEA: $4E
    nop                                           ; $4FEB: $00
    scf                                           ; $4FEC: $37
    sub b                                         ; $4FED: $90
    nop                                           ; $4FEE: $00
    ld [hl], l                                    ; $4FEF: $75
    adc [hl]                                      ; $4FF0: $8E
    nop                                           ; $4FF1: $00
    xor l                                         ; $4FF2: $AD
    ld c, l                                       ; $4FF3: $4D
    ret z                                         ; $4FF4: $C8

    nop                                           ; $4FF5: $00
    inc de                                        ; $4FF6: $13
    nop                                           ; $4FF7: $00
    rst RST_18                                    ; $4FF8: $DF
    ld e, a                                       ; $4FF9: $5F
    ld bc, $001C                                  ; $4FFA: $01 $1C $00
    dec a                                         ; $4FFD: $3D
    inc bc                                        ; $4FFE: $03
    inc bc                                        ; $4FFF: $03
    ld bc, $85EA                                  ; $5000: $01 $EA $85
    ld b, l                                       ; $5003: $45
    ld a, [de]                                    ; $5004: $1A
    inc a                                         ; $5005: $3C
    inc b                                         ; $5006: $04
    ld h, [hl]                                    ; $5007: $66
    inc b                                         ; $5008: $04
    ld b, $FE                                     ; $5009: $06 $FE
    inc b                                         ; $500B: $04
    ld h, l                                       ; $500C: $65
    dec c                                         ; $500D: $0D
    dec e                                         ; $500E: $1D
    dec l                                         ; $500F: $2D
    ld [bc], a                                    ; $5010: $02
    sub l                                         ; $5011: $95
    ldh [c], a                                    ; $5012: $E2
    xor l                                         ; $5013: $AD
    nop                                           ; $5014: $00
    ld bc, $0202                                  ; $5015: $01 $02 $02
    nop                                           ; $5018: $00
    dec h                                         ; $5019: $25
    stop                                          ; $501A: $10 $00
    ld l, d                                       ; $501C: $6A
    ld a, [hl]                                    ; $501D: $7E
    nop                                           ; $501E: $00
    dec c                                         ; $501F: $0D
    ld a, $00                                     ; $5020: $3E $00
    ld d, l                                       ; $5022: $55
    nop                                           ; $5023: $00
    sbc c                                         ; $5024: $99
    cp [hl]                                       ; $5025: $BE
    nop                                           ; $5026: $00
    pop hl                                        ; $5027: $E1
    nop                                           ; $5028: $00
    adc b                                         ; $5029: $88
    nop                                           ; $502A: $00
    add b                                         ; $502B: $80
    nop                                           ; $502C: $00
    ld [$00EA], sp                                ; $502D: $08 $EA $00
    dec a                                         ; $5030: $3D
    dec d                                         ; $5031: $15
    ld b, d                                       ; $5032: $42
    nop                                           ; $5033: $00
    ld a, [de]                                    ; $5034: $1A
    nop                                           ; $5035: $00
    ld h, $DA                                     ; $5036: $26 $DA
    nop                                           ; $5038: $00
    ld a, l                                       ; $5039: $7D
    ld a, e                                       ; $503A: $7B
    nop                                           ; $503B: $00
    dec a                                         ; $503C: $3D
    jr nc, jr_020_503F                            ; $503D: $30 $00

jr_020_503F:
    cp $DB                                        ; $503F: $FE $DB
    nop                                           ; $5041: $00
    ld c, l                                       ; $5042: $4D
    jr nz, @+$04                                  ; $5043: $20 $02

    dec a                                         ; $5045: $3D
    ld [hl], $03                                  ; $5046: $36 $03
    inc bc                                        ; $5048: $03
    or a                                          ; $5049: $B7
    nop                                           ; $504A: $00
    nop                                           ; $504B: $00
    nop                                           ; $504C: $00
    rla                                           ; $504D: $17
    rst RST_38                                    ; $504E: $FF
    inc bc                                        ; $504F: $03
    inc bc                                        ; $5050: $03
    inc bc                                        ; $5051: $03
    cp $03                                        ; $5052: $FE $03
    ld d, h                                       ; $5054: $54
    rlca                                          ; $5055: $07
    rlca                                          ; $5056: $07
    rlca                                          ; $5057: $07
    rlca                                          ; $5058: $07
    dec b                                         ; $5059: $05
    rst RST_28                                    ; $505A: $EF
    sub e                                         ; $505B: $93
    db $EC                                        ; $505C: $EC
    db $FD                                        ; $505D: $FD
    ld [bc], a                                    ; $505E: $02
    dec d                                         ; $505F: $15
    add hl, sp                                    ; $5060: $39
    add $2F                                       ; $5061: $C6 $2F
    rlca                                          ; $5063: $07
    db $DB                                        ; $5064: $DB
    rlca                                          ; $5065: $07
    rlca                                          ; $5066: $07

jr_020_5067:
    cp $06                                        ; $5067: $FE $06
    dec d                                         ; $5069: $15
    db $FC                                        ; $506A: $FC
    inc b                                         ; $506B: $04
    ld [hl], h                                    ; $506C: $74
    ld a, [hl]                                    ; $506D: $7E
    ld bc, $040C                                  ; $506E: $01 $0C $04
    dec h                                         ; $5071: $25
    adc b                                         ; $5072: $88
    dec h                                         ; $5073: $25
    nop                                           ; $5074: $00
    ld a, $A0                                     ; $5075: $3E $A0
    nop                                           ; $5077: $00
    push af                                       ; $5078: $F5
    inc d                                         ; $5079: $14
    ld [$430A], a                                 ; $507A: $EA $0A $43
    inc bc                                        ; $507D: $03
    add c                                         ; $507E: $81
    ld e, [hl]                                    ; $507F: $5E
    cp l                                          ; $5080: $BD
    jr @-$3D                                      ; $5081: $18 $C1

    dec l                                         ; $5083: $2D
    ld l, h                                       ; $5084: $6C
    inc bc                                        ; $5085: $03
    jr nz, jr_020_5067                            ; $5086: $20 $DF

    add b                                         ; $5088: $80
    inc b                                         ; $5089: $04
    cpl                                           ; $508A: $2F
    jr nz, jr_020_50BA                            ; $508B: $20 $2D

    ld [hl+], a                                   ; $508D: $22
    ld b, b                                       ; $508E: $40
    ld h, b                                       ; $508F: $60
    ld e, $BE                                     ; $5090: $1E $BE
    nop                                           ; $5092: $00
    cp [hl]                                       ; $5093: $BE
    nop                                           ; $5094: $00
    ld e, b                                       ; $5095: $58
    nop                                           ; $5096: $00
    ld c, e                                       ; $5097: $4B
    ld bc, $ABF7                                  ; $5098: $01 $F7 $AB
    ld [bc], a                                    ; $509B: $02
    ei                                            ; $509C: $FB
    nop                                           ; $509D: $00
    ld sp, hl                                     ; $509E: $F9
    nop                                           ; $509F: $00
    ld hl, sp+$00                                 ; $50A0: $F8 $00
    ld a, l                                       ; $50A2: $7D
    jp nc, $0707                                  ; $50A3: $D2 $07 $07

    rlca                                          ; $50A6: $07
    inc b                                         ; $50A7: $04
    ret nz                                        ; $50A8: $C0

    ldh [$FF65], a                                ; $50A9: $E0 $65
    db $FC                                        ; $50AB: $FC
    rst RST_18                                    ; $50AC: $DF
    inc d                                         ; $50AD: $14
    rlca                                          ; $50AE: $07
    cp $07                                        ; $50AF: $FE $07
    inc b                                         ; $50B1: $04
    inc bc                                        ; $50B2: $03
    or a                                          ; $50B3: $B7
    inc bc                                        ; $50B4: $03
    ld [$DF03], a                                 ; $50B5: $EA $03 $DF
    rla                                           ; $50B8: $17
    rst RST_18                                    ; $50B9: $DF

jr_020_50BA:
    ld [bc], a                                    ; $50BA: $02
    sbc a                                         ; $50BB: $9F
    ld [bc], a                                    ; $50BC: $02
    rrca                                          ; $50BD: $0F
    sub l                                         ; $50BE: $95
    ld bc, $764F                                  ; $50BF: $01 $4F $76
    add h                                         ; $50C2: $84
    ld [hl-], a                                   ; $50C3: $32
    inc b                                         ; $50C4: $04
    db $10                                        ; $50C5: $10
    sbc c                                         ; $50C6: $99
    ld d, b                                       ; $50C7: $50
    add h                                         ; $50C8: $84
    inc b                                         ; $50C9: $04
    ld b, h                                       ; $50CA: $44
    inc b                                         ; $50CB: $04
    ld h, [hl]                                    ; $50CC: $66
    ld [hl+], a                                   ; $50CD: $22
    scf                                           ; $50CE: $37
    dec de                                        ; $50CF: $1B
    inc c                                         ; $50D0: $0C
    ccf                                           ; $50D1: $3F
    ld c, $40                                     ; $50D2: $0E $40
    ld [HeaderLogo], sp                           ; $50D4: $08 $04 $01
    ld bc, $03C4                                  ; $50D7: $01 $C4 $03
    ld b, c                                       ; $50DA: $41
    ret c                                         ; $50DB: $D8

    jp $C0F0                                      ; $50DC: $C3 $F0 $C0


    ldh [rDIV], a                                 ; $50DF: $E0 $04
    inc c                                         ; $50E1: $0C
    rst RST_30                                    ; $50E2: $F7
    cp a                                          ; $50E3: $BF
    inc bc                                        ; $50E4: $03
    inc bc                                        ; $50E5: $03
    push de                                       ; $50E6: $D5
    cp a                                          ; $50E7: $BF
    nop                                           ; $50E8: $00
    add b                                         ; $50E9: $80
    sbc b                                         ; $50EA: $98
    ld a, e                                       ; $50EB: $7B
    ld a, a                                       ; $50EC: $7F
    inc b                                         ; $50ED: $04
    jr nz, jr_020_50F7                            ; $50EE: $20 $07

    ld b, $07                                     ; $50F0: $06 $07
    cpl                                           ; $50F2: $2F
    ld b, $09                                     ; $50F3: $06 $09
    rst RST_28                                    ; $50F5: $EF
    db $10                                        ; $50F6: $10

jr_020_50F7:
    db $FD                                        ; $50F7: $FD
    ld [bc], a                                    ; $50F8: $02
    dec d                                         ; $50F9: $15
    add hl, sp                                    ; $50FA: $39
    add $C4                                       ; $50FB: $C6 $C4
    sbc l                                         ; $50FD: $9D
    inc c                                         ; $50FE: $0C
    cp h                                          ; $50FF: $BC
    inc a                                         ; $5100: $3C
    ccf                                           ; $5101: $3F
    rlca                                          ; $5102: $07
    dec b                                         ; $5103: $05
    db $FC                                        ; $5104: $FC
    inc b                                         ; $5105: $04
    rra                                           ; $5106: $1F
    ei                                            ; $5107: $FB
    inc bc                                        ; $5108: $03
    inc b                                         ; $5109: $04
    adc b                                         ; $510A: $88
    daa                                           ; $510B: $27
    rlca                                          ; $510C: $07
    dec b                                         ; $510D: $05
    ld l, b                                       ; $510E: $68
    and l                                         ; $510F: $A5
    inc b                                         ; $5110: $04
    db $DB                                        ; $5111: $DB
    add b                                         ; $5112: $80
    dec b                                         ; $5113: $05
    rst RST_20                                    ; $5114: $E7
    dec e                                         ; $5115: $1D
    ldh a, [rDIV]                                 ; $5116: $F0 $04
    halt                                          ; $5118: $76
    db $F4                                        ; $5119: $F4
    jr @+$06                                      ; $511A: $18 $04

    ld h, b                                       ; $511C: $60
    ldh [$FF6C], a                                ; $511D: $E0 $6C
    jr jr_020_512D                                ; $511F: $18 $0C

    ld a, [de]                                    ; $5121: $1A
    db $E3                                        ; $5122: $E3
    di                                            ; $5123: $F3
    ld b, h                                       ; $5124: $44
    jr nz, jr_020_5164                            ; $5125: $20 $3D

    cpl                                           ; $5127: $2F
    inc b                                         ; $5128: $04
    rla                                           ; $5129: $17
    ld e, b                                       ; $512A: $58
    ret nc                                        ; $512B: $D0

    inc b                                         ; $512C: $04

jr_020_512D:
    db $10                                        ; $512D: $10
    dec c                                         ; $512E: $0D
    jr jr_020_5171                                ; $512F: $18 $40

    daa                                           ; $5131: $27
    scf                                           ; $5132: $37
    xor c                                         ; $5133: $A9
    ld h, b                                       ; $5134: $60
    or a                                          ; $5135: $B7
    and a                                         ; $5136: $A7
    rst RST_28                                    ; $5137: $EF
    inc [hl]                                      ; $5138: $34
    db $FD                                        ; $5139: $FD
    ld [bc], a                                    ; $513A: $02
    dec d                                         ; $513B: $15
    inc sp                                        ; $513C: $33
    add hl, bc                                    ; $513D: $09
    ld b, $B0                                     ; $513E: $06 $B0
    xor b                                         ; $5140: $A8
    ld d, e                                       ; $5141: $53
    ld hl, sp+$3F                                 ; $5142: $F8 $3F
    dec b                                         ; $5144: $05
    ccf                                           ; $5145: $3F
    xor d                                         ; $5146: $AA
    ld d, l                                       ; $5147: $55
    ld de, $040C                                  ; $5148: $11 $0C $04
    db $10                                        ; $514B: $10
    inc b                                         ; $514C: $04

jr_020_514D:
    ld [bc], a                                    ; $514D: $02
    adc d                                         ; $514E: $8A
    ld [hl], $DF                                  ; $514F: $36 $DF
    jr nc, jr_020_514D                            ; $5151: $30 $FA

    ld l, h                                       ; $5153: $6C
    db $FC                                        ; $5154: $FC
    inc d                                         ; $5155: $14
    jr c, jr_020_51D0                             ; $5156: $38 $78

    call nz, Call_000_050D                        ; $5158: $C4 $0D $05
    jr nz, jr_020_515D                            ; $515B: $20 $00

jr_020_515D:
    sbc c                                         ; $515D: $99
    add hl, de                                    ; $515E: $19
    dec a                                         ; $515F: $3D
    sub e                                         ; $5160: $93
    ld [bc], a                                    ; $5161: $02
    ld a, [hl-]                                   ; $5162: $3A
    cp b                                          ; $5163: $B8

jr_020_5164:
    ret z                                         ; $5164: $C8

    ret nz                                        ; $5165: $C0

    inc bc                                        ; $5166: $03
    or h                                          ; $5167: $B4
    inc b                                         ; $5168: $04
    ccf                                           ; $5169: $3F
    ld [hl], b                                    ; $516A: $70
    cp $BF                                        ; $516B: $FE $BF
    cp a                                          ; $516D: $BF
    cp a                                          ; $516E: $BF
    inc b                                         ; $516F: $04
    inc [hl]                                      ; $5170: $34

jr_020_5171:
    nop                                           ; $5171: $00
    ld h, e                                       ; $5172: $63
    rlca                                          ; $5173: $07
    jr nz, jr_020_51BB                            ; $5174: $20 $45

    db $FD                                        ; $5176: $FD
    ld bc, $28A9                                  ; $5177: $01 $A9 $28
    ld h, h                                       ; $517A: $64
    ccf                                           ; $517B: $3F
    ei                                            ; $517C: $FB
    adc e                                         ; $517D: $8B
    nop                                           ; $517E: $00
    jr nz, @+$76                                  ; $517F: $20 $74

    jr nz, jr_020_5197                            ; $5181: $20 $14

    ld c, b                                       ; $5183: $48
    rst RST_10                                    ; $5184: $D7
    inc bc                                        ; $5185: $03
    ld [bc], a                                    ; $5186: $02

jr_020_5187:
    add c                                         ; $5187: $81
    nop                                           ; $5188: $00
    ld a, [hl]                                    ; $5189: $7E
    ld [bc], a                                    ; $518A: $02
    ld b, h                                       ; $518B: $44
    nop                                           ; $518C: $00
    ld d, a                                       ; $518D: $57
    cp l                                          ; $518E: $BD
    nop                                           ; $518F: $00
    cp e                                          ; $5190: $BB
    nop                                           ; $5191: $00
    or a                                          ; $5192: $B7
    nop                                           ; $5193: $00
    add sp, $00                                   ; $5194: $E8 $00
    dec e                                         ; $5196: $1D

jr_020_5197:
    cp a                                          ; $5197: $BF
    add b                                         ; $5198: $80
    ld a, a                                       ; $5199: $7F
    rst RST_20                                    ; $519A: $E7
    ld b, c                                       ; $519B: $41
    nop                                           ; $519C: $00
    jp Jump_020_4800                              ; $519D: $C3 $00 $48


    rst RST_20                                    ; $51A0: $E7
    ld [bc], a                                    ; $51A1: $02
    pop bc                                        ; $51A2: $C1
    reti                                          ; $51A3: $D9


    db $FC                                        ; $51A4: $FC
    cp [hl]                                       ; $51A5: $BE
    ld d, h                                       ; $51A6: $54
    ld a, l                                       ; $51A7: $7D
    ld [hl], l                                    ; $51A8: $75
    ld a, h                                       ; $51A9: $7C
    inc b                                         ; $51AA: $04
    ld b, l                                       ; $51AB: $45
    ld e, l                                       ; $51AC: $5D
    and a                                         ; $51AD: $A7
    ld l, h                                       ; $51AE: $6C
    jp z, $8034                                   ; $51AF: $CA $34 $80

    ld [$029B], sp                                ; $51B2: $08 $9B $02
    ld h, a                                       ; $51B5: $67
    dec [hl]                                      ; $51B6: $35
    rst RST_30                                    ; $51B7: $F7
    ld l, a                                       ; $51B8: $6F
    rst RST_28                                    ; $51B9: $EF
    rst RST_28                                    ; $51BA: $EF

jr_020_51BB:
    rst RST_28                                    ; $51BB: $EF
    inc l                                         ; $51BC: $2C
    or h                                          ; $51BD: $B4
    inc bc                                        ; $51BE: $03
    xor a                                         ; $51BF: $AF
    rlca                                          ; $51C0: $07
    inc b                                         ; $51C1: $04
    inc l                                         ; $51C2: $2C
    di                                            ; $51C3: $F3
    or h                                          ; $51C4: $B4
    ld [$CD34], sp                                ; $51C5: $08 $34 $CD
    ld hl, sp+$04                                 ; $51C8: $F8 $04
    inc b                                         ; $51CA: $04
    inc c                                         ; $51CB: $0C
    ld d, l                                       ; $51CC: $55
    add hl, sp                                    ; $51CD: $39
    inc e                                         ; $51CE: $1C
    ldh a, [c]                                    ; $51CF: $F2

jr_020_51D0:
    inc c                                         ; $51D0: $0C
    or $04                                        ; $51D1: $F6 $04
    db $EC                                        ; $51D3: $EC
    inc b                                         ; $51D4: $04
    ld e, e                                       ; $51D5: $5B
    db $FC                                        ; $51D6: $FC
    inc b                                         ; $51D7: $04
    ld sp, hl                                     ; $51D8: $F9
    inc b                                         ; $51D9: $04
    db $EC                                        ; $51DA: $EC
    ld d, c                                       ; $51DB: $51
    ld [$D4AC], sp                                ; $51DC: $08 $AC $D4
    inc c                                         ; $51DF: $0C
    ld [hl], b                                    ; $51E0: $70
    ld d, l                                       ; $51E1: $55
    xor [hl]                                      ; $51E2: $AE
    cp a                                          ; $51E3: $BF
    inc b                                         ; $51E4: $04
    rlca                                          ; $51E5: $07
    rrca                                          ; $51E6: $0F
    ld a, [bc]                                    ; $51E7: $0A
    ld a, [bc]                                    ; $51E8: $0A
    rra                                           ; $51E9: $1F
    ld [de], a                                    ; $51EA: $12
    ccf                                           ; $51EB: $3F
    db $F4                                        ; $51EC: $F4
    scf                                           ; $51ED: $37
    inc b                                         ; $51EE: $04
    ld b, a                                       ; $51EF: $47
    sub d                                         ; $51F0: $92
    ld c, h                                       ; $51F1: $4C
    add e                                         ; $51F2: $83
    db $10                                        ; $51F3: $10
    ldh [$FFF0], a                                ; $51F4: $E0 $F0
    cp $C4                                        ; $51F6: $FE $C4
    ldh [$FFD5], a                                ; $51F8: $E0 $D5
    nop                                           ; $51FA: $00
    db $10                                        ; $51FB: $10
    jr nc, jr_020_5187                            ; $51FC: $30 $89

    jr c, jr_020_5204                             ; $51FE: $38 $04

    inc c                                         ; $5200: $0C
    inc b                                         ; $5201: $04
    and a                                         ; $5202: $A7
    ld c, b                                       ; $5203: $48

jr_020_5204:
    ld [hl], b                                    ; $5204: $70
    ld [$0178], sp                                ; $5205: $08 $78 $01
    db $E4                                        ; $5208: $E4
    inc b                                         ; $5209: $04
    push bc                                       ; $520A: $C5
    ccf                                           ; $520B: $3F
    xor b                                         ; $520C: $A8
    ld d, h                                       ; $520D: $54
    ld [$BD5C], sp                                ; $520E: $08 $5C $BD
    db $10                                        ; $5211: $10
    inc c                                         ; $5212: $0C
    cp l                                          ; $5213: $BD
    ld e, a                                       ; $5214: $5F
    ld a, h                                       ; $5215: $7C
    jr nz, jr_020_5297                            ; $5216: $20 $7F

    inc b                                         ; $5218: $04
    db $10                                        ; $5219: $10
    db $FD                                        ; $521A: $FD
    add sp, $11                                   ; $521B: $E8 $11
    db $FD                                        ; $521D: $FD
    rst RST_38                                    ; $521E: $FF
    ld bc, $20F0                                  ; $521F: $01 $F0 $20
    ldh a, [rDIV]                                 ; $5222: $F0 $04
    ld e, a                                       ; $5224: $5F
    cp b                                          ; $5225: $B8
    ld [hl+], a                                   ; $5226: $22
    ld a, [$4D07]                                 ; $5227: $FA $07 $4D
    dec sp                                        ; $522A: $3B
    ld b, h                                       ; $522B: $44
    ccf                                           ; $522C: $3F
    inc c                                         ; $522D: $0C
    sbc a                                         ; $522E: $9F
    db $D3                                        ; $522F: $D3
    inc b                                         ; $5230: $04
    db $F4                                        ; $5231: $F4
    ld a, $04                                     ; $5232: $3E $04
    inc a                                         ; $5234: $3C
    jp Jump_000_0786                              ; $5235: $C3 $86 $07


    or $B8                                        ; $5238: $F6 $B8
    inc b                                         ; $523A: $04

jr_020_523B:
    db $E4                                        ; $523B: $E4
    db $EC                                        ; $523C: $EC
    ld l, a                                       ; $523D: $6F
    inc c                                         ; $523E: $0C
    ld d, l                                       ; $523F: $55
    rst RST_18                                    ; $5240: $DF
    di                                            ; $5241: $F3
    cp a                                          ; $5242: $BF
    cp a                                          ; $5243: $BF
    cp [hl]                                       ; $5244: $BE
    and h                                         ; $5245: $A4
    ld [bc], a                                    ; $5246: $02
    ld sp, hl                                     ; $5247: $F9
    rst RST_38                                    ; $5248: $FF
    ccf                                           ; $5249: $3F
    call z, Call_000_003F                         ; $524A: $CC $3F $00
    ldh [$FFF7], a                                ; $524D: $E0 $F7
    inc h                                         ; $524F: $24
    nop                                           ; $5250: $00
    db $E3                                        ; $5251: $E3
    inc bc                                        ; $5252: $03
    ld a, [de]                                    ; $5253: $1A
    ret c                                         ; $5254: $D8

    dec de                                        ; $5255: $1B
    and b                                         ; $5256: $A0
    ld hl, sp+$18                                 ; $5257: $F8 $18
    inc hl                                        ; $5259: $23
    inc b                                         ; $525A: $04
    adc b                                         ; $525B: $88
    xor c                                         ; $525C: $A9
    ld [$0C08], sp                                ; $525D: $08 $08 $0C
    rst RST_20                                    ; $5260: $E7
    inc b                                         ; $5261: $04
    rla                                           ; $5262: $17
    ld hl, sp-$78                                 ; $5263: $F8 $88
    db $ED                                        ; $5265: $ED
    sub b                                         ; $5266: $90
    sbc b                                         ; $5267: $98
    ld c, b                                       ; $5268: $48
    ei                                            ; $5269: $FB
    inc e                                         ; $526A: $1C
    jr jr_020_5274                                ; $526B: $18 $07

    and [hl]                                      ; $526D: $A6
    ld e, a                                       ; $526E: $5F
    dec hl                                        ; $526F: $2B
    ld b, h                                       ; $5270: $44
    inc sp                                        ; $5271: $33
    cp a                                          ; $5272: $BF
    cp a                                          ; $5273: $BF

jr_020_5274:
    cp a                                          ; $5274: $BF
    ld bc, $C336                                  ; $5275: $01 $36 $C3
    ccf                                           ; $5278: $3F
    ld [$A9FE], sp                                ; $5279: $08 $FE $A9
    db $FD                                        ; $527C: $FD
    ld d, d                                       ; $527D: $52
    adc h                                         ; $527E: $8C
    sbc b                                         ; $527F: $98
    ret nc                                        ; $5280: $D0

    inc b                                         ; $5281: $04
    and h                                         ; $5282: $A4
    or $24                                        ; $5283: $F6 $24
    ret nz                                        ; $5285: $C0

    jr nz, jr_020_523B                            ; $5286: $20 $B3

    jr z, jr_020_52DA                             ; $5288: $28 $50

    xor l                                         ; $528A: $AD
    inc c                                         ; $528B: $0C
    dec l                                         ; $528C: $2D
    inc e                                         ; $528D: $1C
    ld [de], a                                    ; $528E: $12
    xor $0E                                       ; $528F: $EE $0E
    ldh a, [rHDMA1]                               ; $5291: $F0 $51
    ld bc, $8F14                                  ; $5293: $01 $14 $8F
    inc b                                         ; $5296: $04

jr_020_5297:
    ld l, a                                       ; $5297: $6F
    add b                                         ; $5298: $80
    xor a                                         ; $5299: $AF
    inc b                                         ; $529A: $04
    dec b                                         ; $529B: $05
    and c                                         ; $529C: $A1
    sub b                                         ; $529D: $90
    sbc d                                         ; $529E: $9A
    db $10                                        ; $529F: $10
    inc de                                        ; $52A0: $13
    add sp, -$33                                  ; $52A1: $E8 $CD
    inc b                                         ; $52A3: $04
    ldh [$FF90], a                                ; $52A4: $E0 $90
    ld b, h                                       ; $52A6: $44
    jr c, @-$1E                                   ; $52A7: $38 $E0

    inc bc                                        ; $52A9: $03
    call c, $BE1D                                 ; $52AA: $DC $1D $BE
    ld h, [hl]                                    ; $52AD: $66
    ld a, $68                                     ; $52AE: $3E $68
    nop                                           ; $52B0: $00
    or h                                          ; $52B1: $B4
    or l                                          ; $52B2: $B5
    ld [hl], b                                    ; $52B3: $70
    sbc h                                         ; $52B4: $9C
    rlca                                          ; $52B5: $07
    rra                                           ; $52B6: $1F
    rst RST_00                                    ; $52B7: $C7
    inc b                                         ; $52B8: $04
    ld b, $41                                     ; $52B9: $06 $41
    jr c, jr_020_52FD                             ; $52BB: $38 $40

    jr c, jr_020_52FF                             ; $52BD: $38 $40

    jr nz, jr_020_52FD                            ; $52BF: $20 $3C

    dec a                                         ; $52C1: $3D
    adc h                                         ; $52C2: $8C
    pop bc                                        ; $52C3: $C1
    ld e, b                                       ; $52C4: $58
    sbc $D0                                       ; $52C5: $DE $D0
    rst RST_18                                    ; $52C7: $DF
    or d                                          ; $52C8: $B2
    ld [hl], b                                    ; $52C9: $70
    ld hl, sp+$05                                 ; $52CA: $F8 $05
    ld d, h                                       ; $52CC: $54
    ret nz                                        ; $52CD: $C0

    ccf                                           ; $52CE: $3F
    jr nc, @+$21                                  ; $52CF: $30 $1F

    sub l                                         ; $52D1: $95
    ld e, b                                       ; $52D2: $58
    rrca                                          ; $52D3: $0F
    ld h, b                                       ; $52D4: $60
    inc e                                         ; $52D5: $1C
    or b                                          ; $52D6: $B0
    ld b, $70                                     ; $52D7: $06 $70
    inc e                                         ; $52D9: $1C

jr_020_52DA:
    bit 7, h                                      ; $52DA: $CB $7C
    dec l                                         ; $52DC: $2D
    ld a, [hl+]                                   ; $52DD: $2A
    ld d, l                                       ; $52DE: $55
    ld b, b                                       ; $52DF: $40
    cp a                                          ; $52E0: $BF
    inc c                                         ; $52E1: $0C
    inc b                                         ; $52E2: $04
    ld [hl], e                                    ; $52E3: $73
    dec d                                         ; $52E4: $15
    ld e, b                                       ; $52E5: $58
    nop                                           ; $52E6: $00
    inc c                                         ; $52E7: $0C
    ld e, e                                       ; $52E8: $5B
    rst RST_38                                    ; $52E9: $FF
    ret c                                         ; $52EA: $D8

    inc b                                         ; $52EB: $04
    ld l, d                                       ; $52EC: $6A
    daa                                           ; $52ED: $27
    inc b                                         ; $52EE: $04
    ld bc, $04BB                                  ; $52EF: $01 $BB $04

jr_020_52F2:
    adc a                                         ; $52F2: $8F
    inc b                                         ; $52F3: $04
    cp $AA                                        ; $52F4: $FE $AA
    inc b                                         ; $52F6: $04
    ld d, e                                       ; $52F7: $53
    inc b                                         ; $52F8: $04
    cp l                                          ; $52F9: $BD
    inc b                                         ; $52FA: $04
    rst RST_28                                    ; $52FB: $EF
    ld b, [hl]                                    ; $52FC: $46

jr_020_52FD:
    db $FD                                        ; $52FD: $FD
    xor d                                         ; $52FE: $AA

jr_020_52FF:
    inc b                                         ; $52FF: $04
    ld l, d                                       ; $5300: $6A
    inc b                                         ; $5301: $04
    rlc h                                         ; $5302: $CB $04
    xor $04                                       ; $5304: $EE $04
    add hl, sp                                    ; $5306: $39
    xor d                                         ; $5307: $AA
    ld h, $8B                                     ; $5308: $26 $8B
    inc b                                         ; $530A: $04
    rst RST_10                                    ; $530B: $D7
    inc b                                         ; $530C: $04
    dec l                                         ; $530D: $2D
    inc b                                         ; $530E: $04
    ld c, d                                       ; $530F: $4A
    xor d                                         ; $5310: $AA
    inc b                                         ; $5311: $04
    ld de, $C804                                  ; $5312: $11 $04 $C8
    inc b                                         ; $5315: $04
    ld [bc], a                                    ; $5316: $02
    inc b                                         ; $5317: $04
    sbc $AA                                       ; $5318: $DE $AA
    inc b                                         ; $531A: $04
    db $EB                                        ; $531B: $EB
    inc b                                         ; $531C: $04
    rla                                           ; $531D: $17
    inc b                                         ; $531E: $04
    ld e, c                                       ; $531F: $59
    inc b                                         ; $5320: $04
    or h                                          ; $5321: $B4
    cp d                                          ; $5322: $BA
    inc b                                         ; $5323: $04
    ld b, d                                       ; $5324: $42
    inc b                                         ; $5325: $04
    db $FC                                        ; $5326: $FC
    inc b                                         ; $5327: $04
    nop                                           ; $5328: $00
    inc b                                         ; $5329: $04
    ld e, b                                       ; $532A: $58
    add d                                         ; $532B: $82
    add b                                         ; $532C: $80
    and b                                         ; $532D: $A0
    db $E3                                        ; $532E: $E3
    ld bc, $C0DD                                  ; $532F: $01 $DD $C0
    ld e, b                                       ; $5332: $58
    add c                                         ; $5333: $81
    adc e                                         ; $5334: $8B
    inc c                                         ; $5335: $0C
    add b                                         ; $5336: $80
    ret nc                                        ; $5337: $D0

    rst RST_08                                    ; $5338: $CF
    nop                                           ; $5339: $00
    ld b, b                                       ; $533A: $40
    jr nz, jr_020_5381                            ; $533B: $20 $44

    ld bc, $78FB                                  ; $533D: $01 $FB $78
    ld hl, sp-$7B                                 ; $5340: $F8 $85
    add a                                         ; $5342: $87
    ld a, l                                       ; $5343: $7D
    ld a, a                                       ; $5344: $7F
    rst RST_38                                    ; $5345: $FF
    ld a, [hl]                                    ; $5346: $7E
    ld l, [hl]                                    ; $5347: $6E
    inc d                                         ; $5348: $14
    db $FC                                        ; $5349: $FC
    inc b                                         ; $534A: $04
    ld a, h                                       ; $534B: $7C
    jr z, jr_020_52F2                             ; $534C: $28 $A4

    cp $6A                                        ; $534E: $FE $6A
    ld h, $04                                     ; $5350: $26 $04
    ld bc, $9CB8                                  ; $5352: $01 $B8 $9C
    adc h                                         ; $5355: $8C
    inc b                                         ; $5356: $04
    db $FC                                        ; $5357: $FC
    and e                                         ; $5358: $A3
    nop                                           ; $5359: $00
    ld d, e                                       ; $535A: $53
    ld c, h                                       ; $535B: $4C
    ld e, l                                       ; $535C: $5D
    rst RST_18                                    ; $535D: $DF
    ld c, a                                       ; $535E: $4F
    inc b                                         ; $535F: $04
    call c, $1F0B                                 ; $5360: $DC $0B $1F
    dec c                                         ; $5363: $0D
    rst RST_28                                    ; $5364: $EF
    ld [bc], a                                    ; $5365: $02
    call nc, $C41D                                ; $5366: $D4 $1D $C4
    xor h                                         ; $5369: $AC
    ldh a, [c]                                    ; $536A: $F2
    ldh [$FF7C], a                                ; $536B: $E0 $7C
    inc a                                         ; $536D: $3C
    ld [hl], h                                    ; $536E: $74
    rst RST_30                                    ; $536F: $F7
    db $E4                                        ; $5370: $E4
    inc b                                         ; $5371: $04
    or b                                          ; $5372: $B0
    sub d                                         ; $5373: $92
    inc b                                         ; $5374: $04
    ldh [$FFE1], a                                ; $5375: $E0 $E1
    sbc h                                         ; $5377: $9C
    ret c                                         ; $5378: $D8

    cp h                                          ; $5379: $BC
    ld bc, $95BD                                  ; $537A: $01 $BD $95
    ld b, b                                       ; $537D: $40
    add c                                         ; $537E: $81
    inc bc                                        ; $537F: $03
    inc l                                         ; $5380: $2C

jr_020_5381:
    dec b                                         ; $5381: $05
    inc b                                         ; $5382: $04
    rlca                                          ; $5383: $07
    ld [hl], h                                    ; $5384: $74
    sub a                                         ; $5385: $97
    add b                                         ; $5386: $80
    sbc a                                         ; $5387: $9F
    dec sp                                        ; $5388: $3B
    db $E4                                        ; $5389: $E4
    adc a                                         ; $538A: $8F
    ld l, h                                       ; $538B: $6C
    ret nc                                        ; $538C: $D0

    inc b                                         ; $538D: $04
    cp d                                          ; $538E: $BA
    cp l                                          ; $538F: $BD
    sub b                                         ; $5390: $90
    or h                                          ; $5391: $B4
    ld l, h                                       ; $5392: $6C
    inc [hl]                                      ; $5393: $34
    and b                                         ; $5394: $A0
    inc b                                         ; $5395: $04
    ldh a, [$FF87]                                ; $5396: $F0 $87
    nop                                           ; $5398: $00
    ld h, b                                       ; $5399: $60
    xor $C1                                       ; $539A: $EE $C1
    db $ED                                        ; $539C: $ED
    inc h                                         ; $539D: $24
    nop                                           ; $539E: $00
    cp l                                          ; $539F: $BD
    dec d                                         ; $53A0: $15
    dec de                                        ; $53A1: $1B
    cp a                                          ; $53A2: $BF
    dec [hl]                                      ; $53A3: $35
    ld h, h                                       ; $53A4: $64
    daa                                           ; $53A5: $27
    inc b                                         ; $53A6: $04
    ccf                                           ; $53A7: $3F
    nop                                           ; $53A8: $00
    ld [hl], d                                    ; $53A9: $72
    db $DB                                        ; $53AA: $DB
    ld e, h                                       ; $53AB: $5C
    ld d, b                                       ; $53AC: $50
    nop                                           ; $53AD: $00
    ld c, $0F                                     ; $53AE: $0E $0F
    ld a, l                                       ; $53B0: $7D
    inc hl                                        ; $53B1: $23
    ld b, b                                       ; $53B2: $40
    ld d, l                                       ; $53B3: $55
    rlca                                          ; $53B4: $07
    nop                                           ; $53B5: $00
    jr jr_020_53B8                                ; $53B6: $18 $00

jr_020_53B8:
    jr nz, jr_020_53BA                            ; $53B8: $20 $00

jr_020_53BA:
    ld b, b                                       ; $53BA: $40
    ld [bc], a                                    ; $53BB: $02
    ld a, [hl]                                    ; $53BC: $7E
    add b                                         ; $53BD: $80
    rlca                                          ; $53BE: $07
    ld [bc], a                                    ; $53BF: $02
    ld a, e                                       ; $53C0: $7B
    xor c                                         ; $53C1: $A9
    ret                                           ; $53C2: $C9


    jp hl                                         ; $53C3: $E9


    ldh [$FFD5], a                                ; $53C4: $E0 $D5
    nop                                           ; $53C6: $00
    add hl, hl                                    ; $53C7: $29
    inc b                                         ; $53C8: $04
    nop                                           ; $53C9: $00
    ld [bc], a                                    ; $53CA: $02
    ld [bc], a                                    ; $53CB: $02
    ld bc, $FA07                                  ; $53CC: $01 $07 $FA
    ld [bc], a                                    ; $53CF: $02
    ld a, e                                       ; $53D0: $7B
    xor c                                         ; $53D1: $A9
    ret                                           ; $53D2: $C9


    jp hl                                         ; $53D3: $E9


    nop                                           ; $53D4: $00
    nop                                           ; $53D5: $00
    inc bc                                        ; $53D6: $03
    xor d                                         ; $53D7: $AA
    ld [$080C], sp                                ; $53D8: $08 $0C $08
    db $10                                        ; $53DB: $10
    ld [$0A20], sp                                ; $53DC: $08 $20 $0A
    ld b, b                                       ; $53DF: $40
    db $FD                                        ; $53E0: $FD
    ld c, $5B                                     ; $53E1: $0E $5B
    adc c                                         ; $53E3: $89
    xor c                                         ; $53E4: $A9
    ret                                           ; $53E5: $C9


    inc bc                                        ; $53E6: $03
    ldh [$FF5A], a                                ; $53E7: $E0 $5A
    ld d, a                                       ; $53E9: $57
    ld [$0408], sp                                ; $53EA: $08 $08 $04
    ld a, [bc]                                    ; $53ED: $0A
    ld [bc], a                                    ; $53EE: $02
    ld c, $5B                                     ; $53EF: $0E $5B
    adc c                                         ; $53F1: $89
    ld d, [hl]                                    ; $53F2: $56
    jr nc, @+$0A                                  ; $53F3: $30 $08

    ret nz                                        ; $53F5: $C0

    ld [$0FFF], a                                 ; $53F6: $EA $FF $0F
    ld [$813F], sp                                ; $53F9: $08 $3F $81
    ld [$8007], sp                                ; $53FC: $08 $07 $80
    jp $F8E0                                      ; $53FF: $C3 $E0 $F8


    db $FC                                        ; $5402: $FC
    db $10                                        ; $5403: $10
    cpl                                           ; $5404: $2F
    ldh a, [$FF03]                                ; $5405: $F0 $03
    jr c, @+$21                                   ; $5407: $38 $1F

    xor a                                         ; $5409: $AF
    ld [$0C70], sp                                ; $540A: $08 $70 $0C
    ld a, d                                       ; $540D: $7A
    cp $0C                                        ; $540E: $FE $0C

jr_020_5410:
    ld bc, $08D8                                  ; $5410: $01 $D8 $08
    ret nz                                        ; $5413: $C0

    ldh [$FF30], a                                ; $5414: $E0 $30
    sbc d                                         ; $5416: $9A
    ld a, d                                       ; $5417: $7A

jr_020_5418:
    ld hl, sp+$04                                 ; $5418: $F8 $04
    ld [$3918], sp                                ; $541A: $08 $18 $39
    ld d, b                                       ; $541D: $50
    ldh a, [c]                                    ; $541E: $F2
    xor a                                         ; $541F: $AF
    jr jr_020_5418                                ; $5420: $18 $F6

    ld [$06FF], sp                                ; $5422: $08 $FF $06
    ld a, b                                       ; $5425: $78
    ld [$EFD8], sp                                ; $5426: $08 $D8 $EF
    ld [$0880], sp                                ; $5429: $08 $80 $08
    add b                                         ; $542C: $80
    ld b, c                                       ; $542D: $41
    adc c                                         ; $542E: $89
    rrca                                          ; $542F: $0F
    dec c                                         ; $5430: $0D
    xor d                                         ; $5431: $AA

jr_020_5432:
    nop                                           ; $5432: $00
    daa                                           ; $5433: $27
    ld [$08DF], sp                                ; $5434: $08 $DF $08
    ld a, [$1D08]                                 ; $5437: $FA $08 $1D
    xor d                                         ; $543A: $AA
    ld [$0807], sp                                ; $543B: $08 $07 $08
    inc bc                                        ; $543E: $03
    ld [$FC01], sp                                ; $543F: $08 $01 $FC
    rst RST_28                                    ; $5442: $EF
    inc de                                        ; $5443: $13
    db $10                                        ; $5444: $10
    db $FD                                        ; $5445: $FD
    ld [bc], a                                    ; $5446: $02
    add hl, hl                                    ; $5447: $29
    add hl, sp                                    ; $5448: $39
    add $FC                                       ; $5449: $C6 $FC
    ld a, [hl]                                    ; $544B: $7E
    ld b, b                                       ; $544C: $40
    sbc a                                         ; $544D: $9F

jr_020_544E:
    jr z, jr_020_5479                             ; $544E: $28 $29

    and [hl]                                      ; $5450: $A6
    or e                                          ; $5451: $B3
    jr nc, jr_020_5410                            ; $5452: $30 $BC

    inc a                                         ; $5454: $3C
    inc [hl]                                      ; $5455: $34
    add b                                         ; $5456: $80
    ld a, $08                                     ; $5457: $3E $08
    jr @-$7B                                      ; $5459: $18 $83

    jr c, @-$6F                                   ; $545B: $38 $8F

    jr nz, jr_020_5432                            ; $545D: $20 $D3

    ld a, c                                       ; $545F: $79
    cp c                                          ; $5460: $B9
    cp $08                                        ; $5461: $FE $08
    db $FC                                        ; $5463: $FC
    ld bc, $0DFB                                  ; $5464: $01 $FB $0D
    ret nz                                        ; $5467: $C0

    ld e, b                                       ; $5468: $58
    ld [$03FB], sp                                ; $5469: $08 $FB $03
    inc b                                         ; $546C: $04
    rlca                                          ; $546D: $07
    ldh [$FFF7], a                                ; $546E: $E0 $F7
    ret nc                                        ; $5470: $D0

    jr nc, jr_020_5473                            ; $5471: $30 $00

jr_020_5473:
    db $E3                                        ; $5473: $E3
    jr c, jr_020_544E                             ; $5474: $38 $D8

    dec de                                        ; $5476: $1B
    and b                                         ; $5477: $A0
    dec sp                                        ; $5478: $3B

jr_020_5479:
    xor c                                         ; $5479: $A9
    jr nc, jr_020_549F                            ; $547A: $30 $23

    ld [$1088], sp                                ; $547C: $08 $88 $10
    ld [$C05B], sp                                ; $547F: $08 $5B $C0
    ld e, d                                       ; $5482: $5A
    or l                                          ; $5483: $B5
    ld [$0827], sp                                ; $5484: $08 $27 $08
    ld bc, $08BB                                  ; $5487: $01 $BB $08
    adc a                                         ; $548A: $8F
    adc d                                         ; $548B: $8A

jr_020_548C:
    ld hl, $53FE                                  ; $548C: $21 $FE $53
    db $FD                                        ; $548F: $FD
    nop                                           ; $5490: $00
    ei                                            ; $5491: $FB
    jr c, jr_020_548C                             ; $5492: $38 $F8

    ld d, l                                       ; $5494: $55
    rst RST_10                                    ; $5495: $D7
    ld b, b                                       ; $5496: $40
    dec l                                         ; $5497: $2D
    ld [$084A], sp                                ; $5498: $08 $4A $08
    ld de, $5508                                  ; $549B: $11 $08 $55
    ret z                                         ; $549E: $C8

jr_020_549F:
    ld [$0802], sp                                ; $549F: $08 $02 $08
    cp l                                          ; $54A2: $BD
    ld [$08EF], sp                                ; $54A3: $08 $EF $08
    ld [hl], l                                    ; $54A6: $75
    or l                                          ; $54A7: $B5
    ld [$08A8], sp                                ; $54A8: $08 $A8 $08
    ld l, d                                       ; $54AB: $6A
    ld [$08CB], sp                                ; $54AC: $08 $CB $08
    inc b                                         ; $54AF: $04
    xor $3F                                       ; $54B0: $EE $3F
    add hl, sp                                    ; $54B2: $39
    rst RST_18                                    ; $54B3: $DF
    sbc $71                                       ; $54B4: $DE $71
    inc bc                                        ; $54B6: $03
    rla                                           ; $54B7: $17
    xor d                                         ; $54B8: $AA
    db $10                                        ; $54B9: $10
    ld e, c                                       ; $54BA: $59
    ld [$08B4], sp                                ; $54BB: $08 $B4 $08
    ld b, d                                       ; $54BE: $42
    ld [$BA15], sp                                ; $54BF: $08 $15 $BA
    ld [$0800], sp                                ; $54C2: $08 $00 $08
    rlca                                          ; $54C5: $07
    dec b                                         ; $54C6: $05
    cp $00                                        ; $54C7: $FE $00
    db $FD                                        ; $54C9: $FD
    db $10                                        ; $54CA: $10
    ld bc, $023A                                  ; $54CB: $01 $3A $02
    cp b                                          ; $54CE: $B8
    call nz, Call_000_080B                        ; $54CF: $C4 $0B $08
    rla                                           ; $54D2: $17
    ld b, c                                       ; $54D3: $41
    ret nc                                        ; $54D4: $D0

    ret c                                         ; $54D5: $D8

    ld b, b                                       ; $54D6: $40
    daa                                           ; $54D7: $27
    scf                                           ; $54D8: $37
    dec b                                         ; $54D9: $05
    or a                                          ; $54DA: $B7
    rst RST_08                                    ; $54DB: $CF
    xor e                                         ; $54DC: $AB
    inc bc                                        ; $54DD: $03
    ccf                                           ; $54DE: $3F
    nop                                           ; $54DF: $00
    cp a                                          ; $54E0: $BF
    nop                                           ; $54E1: $00
    ld a, a                                       ; $54E2: $7F
    or b                                          ; $54E3: $B0
    jr nc, @-$7A                                  ; $54E4: $30 $84

    ld [$10EF], sp                                ; $54E6: $08 $EF $10
    db $FD                                        ; $54E9: $FD
    ld [bc], a                                    ; $54EA: $02
    add hl, hl                                    ; $54EB: $29
    add hl, bc                                    ; $54EC: $09
    ld b, $00                                     ; $54ED: $06 $00
    rst RST_20                                    ; $54EF: $E7
    ldh a, [rHDMA3]                               ; $54F0: $F0 $53
    ld hl, sp+$1A                                 ; $54F2: $F8 $1A
    nop                                           ; $54F4: $00
    ld a, [hl+]                                   ; $54F5: $2A
    nop                                           ; $54F6: $00
    ld bc, $0210                                  ; $54F7: $01 $10 $02
    db $10                                        ; $54FA: $10
    inc b                                         ; $54FB: $04
    db $10                                        ; $54FC: $10

Call_020_54FD:
    dec b                                         ; $54FD: $05
    xor d                                         ; $54FE: $AA
    db $10                                        ; $54FF: $10

Call_020_5500:
    ld b, $10                                     ; $5500: $06 $10
    rlca                                          ; $5502: $07
    db $10                                        ; $5503: $10
    ld [$0910], sp                                ; $5504: $08 $10 $09
    xor d                                         ; $5507: $AA
    inc d                                         ; $5508: $14
    ld a, [bc]                                    ; $5509: $0A
    ld [de], a                                    ; $550A: $12
    dec bc                                        ; $550B: $0B
    ld [de], a                                    ; $550C: $12
    inc c                                         ; $550D: $0C
    db $10                                        ; $550E: $10
    dec c                                         ; $550F: $0D
    xor e                                         ; $5510: $AB
    db $10                                        ; $5511: $10
    ld c, $10                                     ; $5512: $0E $10
    rrca                                          ; $5514: $0F
    db $10                                        ; $5515: $10
    inc bc                                        ; $5516: $03
    rra                                           ; $5517: $1F
    rra                                           ; $5518: $1F
    xor d                                         ; $5519: $AA
    ld [de], a                                    ; $551A: $12
    db $10                                        ; $551B: $10
    db $10                                        ; $551C: $10
    ld de, $1210                                  ; $551D: $11 $10 $12
    db $10                                        ; $5520: $10
    ld [$10AA], sp                                ; $5521: $08 $AA $10
    inc de                                        ; $5524: $13
    db $10                                        ; $5525: $10
    inc d                                         ; $5526: $14
    db $10                                        ; $5527: $10
    dec d                                         ; $5528: $15
    db $10                                        ; $5529: $10
    ld d, $AA                                     ; $552A: $16 $AA
    db $10                                        ; $552C: $10
    rla                                           ; $552D: $17
    db $10                                        ; $552E: $10
    ld bc, $0210                                  ; $552F: $01 $10 $02
    db $10                                        ; $5532: $10
    inc b                                         ; $5533: $04
    xor d                                         ; $5534: $AA
    db $10                                        ; $5535: $10
    dec b                                         ; $5536: $05
    db $10                                        ; $5537: $10
    rlca                                          ; $5538: $07
    db $10                                        ; $5539: $10
    jr jr_020_554C                                ; $553A: $18 $10

    add hl, de                                    ; $553C: $19
    xor e                                         ; $553D: $AB
    db $10                                        ; $553E: $10
    ld a, [de]                                    ; $553F: $1A
    db $10                                        ; $5540: $10
    dec de                                        ; $5541: $1B
    db $10                                        ; $5542: $10
    inc bc                                        ; $5543: $03
    rra                                           ; $5544: $1F
    rra                                           ; $5545: $1F
    xor d                                         ; $5546: $AA
    ld [de], a                                    ; $5547: $12
    inc e                                         ; $5548: $1C
    inc e                                         ; $5549: $1C
    inc hl                                        ; $554A: $23
    db $10                                        ; $554B: $10

jr_020_554C:
    ld h, $10                                     ; $554C: $26 $10
    daa                                           ; $554E: $27
    or l                                          ; $554F: $B5
    db $10                                        ; $5550: $10
    ld a, [hl+]                                   ; $5551: $2A
    ld hl, sp+$15                                 ; $5552: $F8 $15
    dec e                                         ; $5554: $1D
    db $10                                        ; $5555: $10
    ld e, $10                                     ; $5556: $1E $10
    ld d, l                                       ; $5558: $55
    rra                                           ; $5559: $1F
    db $10                                        ; $555A: $10
    jr nz, jr_020_556D                            ; $555B: $20 $10

    ld hl, $2210                                  ; $555D: $21 $10 $22
    db $10                                        ; $5560: $10
    ld d, l                                       ; $5561: $55
    inc h                                         ; $5562: $24
    db $10                                        ; $5563: $10
    dec h                                         ; $5564: $25
    db $10                                        ; $5565: $10
    jr z, jr_020_5578                             ; $5566: $28 $10

    add hl, hl                                    ; $5568: $29
    db $10                                        ; $5569: $10
    ld d, l                                       ; $556A: $55
    dec hl                                        ; $556B: $2B
    db $10                                        ; $556C: $10

jr_020_556D:
    inc l                                         ; $556D: $2C
    db $10                                        ; $556E: $10
    dec l                                         ; $556F: $2D
    db $10                                        ; $5570: $10
    ld l, $10                                     ; $5571: $2E $10
    ld d, l                                       ; $5573: $55
    cpl                                           ; $5574: $2F
    db $10                                        ; $5575: $10
    jr nc, jr_020_5588                            ; $5576: $30 $10

jr_020_5578:
    ld sp, $1D10                                  ; $5578: $31 $10 $1D
    inc d                                         ; $557B: $14
    ld d, l                                       ; $557C: $55
    inc sp                                        ; $557D: $33
    db $10                                        ; $557E: $10
    inc [hl]                                      ; $557F: $34
    db $10                                        ; $5580: $10
    scf                                           ; $5581: $37
    db $10                                        ; $5582: $10
    jr c, jr_020_5595                             ; $5583: $38 $10

    ld d, l                                       ; $5585: $55
    dec sp                                        ; $5586: $3B
    db $10                                        ; $5587: $10

jr_020_5588:
    inc a                                         ; $5588: $3C
    db $10                                        ; $5589: $10
    ld a, $10                                     ; $558A: $3E $10
    ccf                                           ; $558C: $3F
    db $10                                        ; $558D: $10
    ld d, l                                       ; $558E: $55
    ld b, d                                       ; $558F: $42
    db $10                                        ; $5590: $10
    ld b, e                                       ; $5591: $43
    db $10                                        ; $5592: $10
    ld b, [hl]                                    ; $5593: $46
    db $10                                        ; $5594: $10

jr_020_5595:
    ld b, a                                       ; $5595: $47
    db $10                                        ; $5596: $10
    ld d, l                                       ; $5597: $55
    ld c, d                                       ; $5598: $4A
    db $10                                        ; $5599: $10
    ld c, e                                       ; $559A: $4B
    db $10                                        ; $559B: $10
    ld c, [hl]                                    ; $559C: $4E
    db $10                                        ; $559D: $10
    dec e                                         ; $559E: $1D
    db $10                                        ; $559F: $10
    ld d, l                                       ; $55A0: $55
    ld [hl-], a                                   ; $55A1: $32
    ld [de], a                                    ; $55A2: $12
    dec [hl]                                      ; $55A3: $35
    db $10                                        ; $55A4: $10
    ld [hl], $10                                  ; $55A5: $36 $10
    add hl, sp                                    ; $55A7: $39
    db $10                                        ; $55A8: $10
    ld d, l                                       ; $55A9: $55
    ld a, [hl-]                                   ; $55AA: $3A
    sub d                                         ; $55AB: $92
    dec a                                         ; $55AC: $3D
    db $10                                        ; $55AD: $10
    ld b, b                                       ; $55AE: $40
    db $10                                        ; $55AF: $10
    ld b, c                                       ; $55B0: $41
    db $10                                        ; $55B1: $10
    ld d, l                                       ; $55B2: $55
    ld b, h                                       ; $55B3: $44
    db $10                                        ; $55B4: $10
    ld b, l                                       ; $55B5: $45
    db $10                                        ; $55B6: $10
    ld c, b                                       ; $55B7: $48
    db $10                                        ; $55B8: $10
    ld c, c                                       ; $55B9: $49
    db $10                                        ; $55BA: $10
    ld d, l                                       ; $55BB: $55
    ld c, h                                       ; $55BC: $4C
    db $10                                        ; $55BD: $10
    ld c, l                                       ; $55BE: $4D
    db $10                                        ; $55BF: $10
    ld c, a                                       ; $55C0: $4F
    db $10                                        ; $55C1: $10
    ld [hl-], a                                   ; $55C2: $32
    db $10                                        ; $55C3: $10
    ld d, l                                       ; $55C4: $55
    ld d, b                                       ; $55C5: $50
    db $10                                        ; $55C6: $10
    ld d, c                                       ; $55C7: $51
    db $10                                        ; $55C8: $10
    ld d, h                                       ; $55C9: $54
    db $10                                        ; $55CA: $10
    ld d, l                                       ; $55CB: $55
    db $10                                        ; $55CC: $10
    ld e, d                                       ; $55CD: $5A
    ld d, [hl]                                    ; $55CE: $56
    db $10                                        ; $55CF: $10
    ld d, a                                       ; $55D0: $57
    or h                                          ; $55D1: $B4
    add hl, sp                                    ; $55D2: $39
    ld e, b                                       ; $55D3: $58
    db $10                                        ; $55D4: $10
    ld e, c                                       ; $55D5: $59
    xor d                                         ; $55D6: $AA
    db $10                                        ; $55D7: $10
    ld e, d                                       ; $55D8: $5A
    db $10                                        ; $55D9: $10
    ld e, e                                       ; $55DA: $5B
    or d                                          ; $55DB: $B2
    ld d, d                                       ; $55DC: $52
    db $10                                        ; $55DD: $10
    ld d, e                                       ; $55DE: $53
    ret nz                                        ; $55DF: $C0

    ccf                                           ; $55E0: $3F
    ccf                                           ; $55E1: $3F
    and d                                         ; $55E2: $A2
    add b                                         ; $55E3: $80
    ld a, l                                       ; $55E4: $7D
    nop                                           ; $55E5: $00
    inc bc                                        ; $55E6: $03
    inc bc                                        ; $55E7: $03
    inc bc                                        ; $55E8: $03
    inc bc                                        ; $55E9: $03
    nop                                           ; $55EA: $00
    cp $00                                        ; $55EB: $FE $00
    ld d, l                                       ; $55ED: $55
    ld [bc], a                                    ; $55EE: $02
    nop                                           ; $55EF: $00
    inc b                                         ; $55F0: $04
    nop                                           ; $55F1: $00
    ld c, b                                       ; $55F2: $48
    nop                                           ; $55F3: $00
    jr nc, jr_020_55F6                            ; $55F4: $30 $00

jr_020_55F6:
    ld d, l                                       ; $55F6: $55
    stop                                          ; $55F7: $10 $00
    ld [$0600], sp                                ; $55F9: $08 $00 $06
    nop                                           ; $55FC: $00
    ld a, b                                       ; $55FD: $78
    nop                                           ; $55FE: $00
    cp l                                          ; $55FF: $BD
    dec d                                         ; $5600: $15
    rst RST_38                                    ; $5601: $FF
    nop                                           ; $5602: $00
    dec c                                         ; $5603: $0D
    ld bc, $203D                                  ; $5604: $01 $3D $20
    nop                                           ; $5607: $00
    or $87                                        ; $5608: $F6 $87
    inc bc                                        ; $560A: $03
    inc bc                                        ; $560B: $03
    inc bc                                        ; $560C: $03
    inc de                                        ; $560D: $13
    nop                                           ; $560E: $00
    ld d, l                                       ; $560F: $55
    ld a, [hl]                                    ; $5610: $7E
    xor e                                         ; $5611: $AB
    nop                                           ; $5612: $00
    ld [de], a                                    ; $5613: $12
    ld [bc], a                                    ; $5614: $02
    ld [hl+], a                                   ; $5615: $22
    ld [bc], a                                    ; $5616: $02
    ld c, h                                       ; $5617: $4C
    nop                                           ; $5618: $00
    rst RST_28                                    ; $5619: $EF
    xor a                                         ; $561A: $AF
    and l                                         ; $561B: $A5
    jr c, jr_020_561E                             ; $561C: $38 $00

jr_020_561E:
    ret z                                         ; $561E: $C8

    nop                                           ; $561F: $00
    rst RST_00                                    ; $5620: $C7
    rst RST_08                                    ; $5621: $CF
    ld a, a                                       ; $5622: $7F
    xor l                                         ; $5623: $AD
    dec e                                         ; $5624: $1D
    inc a                                         ; $5625: $3C
    nop                                           ; $5626: $00
    ld b, b                                       ; $5627: $40
    ld [bc], a                                    ; $5628: $02
    dec d                                         ; $5629: $15
    ld b, e                                       ; $562A: $43
    nop                                           ; $562B: $00
    ld d, l                                       ; $562C: $55
    ld b, h                                       ; $562D: $44
    nop                                           ; $562E: $00
    ldh a, [c]                                    ; $562F: $F2
    nop                                           ; $5630: $00
    ld c, d                                       ; $5631: $4A
    nop                                           ; $5632: $00
    ld c, c                                       ; $5633: $49
    ld [bc], a                                    ; $5634: $02
    ld d, a                                       ; $5635: $57
    adc b                                         ; $5636: $88

jr_020_5637:
    nop                                           ; $5637: $00
    or b                                          ; $5638: $B0
    nop                                           ; $5639: $00
    jr nz, jr_020_563F                            ; $563A: $20 $03

    inc bc                                        ; $563C: $03
    nop                                           ; $563D: $00
    ld l, d                                       ; $563E: $6A

jr_020_563F:
    ld hl, $FD00                                  ; $563F: $21 $00 $FD
    inc e                                         ; $5642: $1C
    nop                                           ; $5643: $00
    nop                                           ; $5644: $00
    nop                                           ; $5645: $00
    jr nc, jr_020_5637                            ; $5646: $30 $EF

    nop                                           ; $5648: $00
    push af                                       ; $5649: $F5
    sbc l                                         ; $564A: $9D
    ld a, $00                                     ; $564B: $3E $00
    dec c                                         ; $564D: $0D
    dec e                                         ; $564E: $1D
    dec l                                         ; $564F: $2D
    rst RST_38                                    ; $5650: $FF
    dec a                                         ; $5651: $3D
    ld b, c                                       ; $5652: $41
    inc b                                         ; $5653: $04
    inc e                                         ; $5654: $1C
    inc b                                         ; $5655: $04
    inc l                                         ; $5656: $2C
    inc b                                         ; $5657: $04
    inc a                                         ; $5658: $3C
    rst RST_38                                    ; $5659: $FF
    ld c, $1D                                     ; $565A: $0E $1D
    ld a, $3B                                     ; $565C: $3E $3B
    dec sp                                        ; $565E: $3B
    dec sp                                        ; $565F: $3B
    ld a, e                                       ; $5660: $7B
    rst RST_28                                    ; $5661: $EF
    xor [hl]                                      ; $5662: $AE
    push hl                                       ; $5663: $E5
    inc h                                         ; $5664: $24
    nop                                           ; $5665: $00
    jr z, jr_020_5668                             ; $5666: $28 $00

jr_020_5668:
    or a                                          ; $5668: $B7
    inc bc                                        ; $5669: $03
    ld h, $AA                                     ; $566A: $26 $AA
    nop                                           ; $566C: $00
    ld d, b                                       ; $566D: $50
    nop                                           ; $566E: $00
    adc b                                         ; $566F: $88
    nop                                           ; $5670: $00
    inc b                                         ; $5671: $04
    nop                                           ; $5672: $00
    ld [bc], a                                    ; $5673: $02
    db $DD                                        ; $5674: $DD
    nop                                           ; $5675: $00
    scf                                           ; $5676: $37
    ld [$6500], sp                                ; $5677: $08 $00 $65
    ld bc, $0029                                  ; $567A: $01 $29 $00
    ld e, e                                       ; $567D: $5B
    ld a, [hl+]                                   ; $567E: $2A
    nop                                           ; $567F: $00
    ld c, h                                       ; $5680: $4C
    nop                                           ; $5681: $00
    ccf                                           ; $5682: $3F
    inc e                                         ; $5683: $1C
    nop                                           ; $5684: $00
    db $E4                                        ; $5685: $E4
    xor d                                         ; $5686: $AA
    nop                                           ; $5687: $00
    inc l                                         ; $5688: $2C
    nop                                           ; $5689: $00
    ld l, h                                       ; $568A: $6C
    nop                                           ; $568B: $00
    ld a, [hl]                                    ; $568C: $7E
    nop                                           ; $568D: $00
    inc c                                         ; $568E: $0C
    rst RST_30                                    ; $568F: $F7
    ld [bc], a                                    ; $5690: $02
    db $ED                                        ; $5691: $ED
    dec a                                         ; $5692: $3D
    ld c, l                                       ; $5693: $4D
    ld a, h                                       ; $5694: $7C
    nop                                           ; $5695: $00
    xor l                                         ; $5696: $AD
    ld bc, $C5AF                                  ; $5697: $01 $AF $C5
    jr c, jr_020_569C                             ; $569A: $38 $00

jr_020_569C:
    stop                                          ; $569C: $10 $00
    ld c, l                                       ; $569E: $4D
    ccf                                           ; $569F: $3F
    push de                                       ; $56A0: $D5
    ld d, a                                       ; $56A1: $57
    jr jr_020_56A4                                ; $56A2: $18 $00

jr_020_56A4:
    inc h                                         ; $56A4: $24
    nop                                           ; $56A5: $00
    ld b, a                                       ; $56A6: $47
    nop                                           ; $56A7: $00
    ld a, l                                       ; $56A8: $7D
    ld bc, $1675                                  ; $56A9: $01 $75 $16
    nop                                           ; $56AC: $00
    dec l                                         ; $56AD: $2D
    dec d                                         ; $56AE: $15
    ld b, b                                       ; $56AF: $40
    ld [bc], a                                    ; $56B0: $02
    ld a, $00                                     ; $56B1: $3E $00
    xor l                                         ; $56B3: $AD
    ccf                                           ; $56B4: $3F
    ldh a, [rP1]                                  ; $56B5: $F0 $00
    ld c, [hl]                                    ; $56B7: $4E
    nop                                           ; $56B8: $00
    scf                                           ; $56B9: $37
    sub b                                         ; $56BA: $90
    nop                                           ; $56BB: $00
    ld [hl], l                                    ; $56BC: $75
    adc [hl]                                      ; $56BD: $8E
    nop                                           ; $56BE: $00
    xor l                                         ; $56BF: $AD
    ld c, l                                       ; $56C0: $4D
    ret z                                         ; $56C1: $C8

    nop                                           ; $56C2: $00
    inc de                                        ; $56C3: $13
    nop                                           ; $56C4: $00
    rst RST_18                                    ; $56C5: $DF
    ld e, a                                       ; $56C6: $5F
    ld bc, $001C                                  ; $56C7: $01 $1C $00
    dec a                                         ; $56CA: $3D
    inc bc                                        ; $56CB: $03
    inc bc                                        ; $56CC: $03
    ld bc, $85F5                                  ; $56CD: $01 $F5 $85
    ld b, l                                       ; $56D0: $45
    ld a, [de]                                    ; $56D1: $1A
    ld c, l                                       ; $56D2: $4D
    inc a                                         ; $56D3: $3C
    inc b                                         ; $56D4: $04
    inc l                                         ; $56D5: $2C
    inc b                                         ; $56D6: $04
    ld d, a                                       ; $56D7: $57
    ld l, h                                       ; $56D8: $6C
    inc b                                         ; $56D9: $04
    ld a, [hl]                                    ; $56DA: $7E
    inc b                                         ; $56DB: $04
    inc c                                         ; $56DC: $0C
    ld b, $43                                     ; $56DD: $06 $43
    nop                                           ; $56DF: $00
    ld d, [hl]                                    ; $56E0: $56
    ldh [c], a                                    ; $56E1: $E2
    nop                                           ; $56E2: $00
    ld bc, $0202                                  ; $56E3: $01 $02 $02
    nop                                           ; $56E6: $00
    dec h                                         ; $56E7: $25
    db $10                                        ; $56E8: $10
    push af                                       ; $56E9: $F5
    nop                                           ; $56EA: $00
    ld e, b                                       ; $56EB: $58
    nop                                           ; $56EC: $00
    dec c                                         ; $56ED: $0D
    ld a, $00                                     ; $56EE: $3E $00
    ld d, l                                       ; $56F0: $55
    nop                                           ; $56F1: $00
    ld d, a                                       ; $56F2: $57
    sbc c                                         ; $56F3: $99
    nop                                           ; $56F4: $00
    pop hl                                        ; $56F5: $E1
    nop                                           ; $56F6: $00
    ld b, $00                                     ; $56F7: $06 $00
    xor b                                         ; $56F9: $A8
    nop                                           ; $56FA: $00
    ld [hl], l                                    ; $56FB: $75
    ld [$3D00], sp                                ; $56FC: $08 $00 $3D
    dec d                                         ; $56FF: $15
    ld b, d                                       ; $5700: $42
    nop                                           ; $5701: $00
    ld a, [de]                                    ; $5702: $1A
    nop                                           ; $5703: $00
    ld l, l                                       ; $5704: $6D
    ld h, $00                                     ; $5705: $26 $00
    ld a, l                                       ; $5707: $7D
    ld a, e                                       ; $5708: $7B
    nop                                           ; $5709: $00
    dec a                                         ; $570A: $3D
    jr nc, jr_020_570D                            ; $570B: $30 $00

jr_020_570D:
    ld l, l                                       ; $570D: $6D
    cp $00                                        ; $570E: $FE $00
    ld c, l                                       ; $5710: $4D
    jr nz, @+$04                                  ; $5711: $20 $02

    dec a                                         ; $5713: $3D
    ld [hl], $03                                  ; $5714: $36 $03
    db $DB                                        ; $5716: $DB
    inc bc                                        ; $5717: $03
    nop                                           ; $5718: $00
    nop                                           ; $5719: $00
    nop                                           ; $571A: $00
    rla                                           ; $571B: $17
    rst RST_38                                    ; $571C: $FF
    inc d                                         ; $571D: $14
    rlca                                          ; $571E: $07
    ei                                            ; $571F: $FB
    rlca                                          ; $5720: $07
    rlca                                          ; $5721: $07
    rlca                                          ; $5722: $07
    dec b                                         ; $5723: $05
    or b                                          ; $5724: $B0
    ld bc, $040C                                  ; $5725: $01 $0C $04
    sbc e                                         ; $5728: $9B
    dec c                                         ; $5729: $0D
    db $FD                                        ; $572A: $FD
    inc bc                                        ; $572B: $03
    inc c                                         ; $572C: $0C
    inc b                                         ; $572D: $04
    db $FC                                        ; $572E: $FC
    ccf                                           ; $572F: $3F
    rlca                                          ; $5730: $07
    cp e                                          ; $5731: $BB
    ld b, $F8                                     ; $5732: $06 $F8
    inc b                                         ; $5734: $04
    scf                                           ; $5735: $37
    inc c                                         ; $5736: $0C
    ld [bc], a                                    ; $5737: $02
    ld d, l                                       ; $5738: $55
    ld h, $99                                     ; $5739: $26 $99
    ld [hl], h                                    ; $573B: $74
    ld a, [$FD06]                                 ; $573C: $FA $06 $FD
    add hl, sp                                    ; $573F: $39
    rrca                                          ; $5740: $0F
    ccf                                           ; $5741: $3F
    ld h, a                                       ; $5742: $67
    rrca                                          ; $5743: $0F
    cpl                                           ; $5744: $2F
    ret nc                                        ; $5745: $D0

    dec d                                         ; $5746: $15
    ld [$B858], a                                 ; $5747: $EA $58 $B8
    sub e                                         ; $574A: $93
    inc b                                         ; $574B: $04
    cpl                                           ; $574C: $2F
    rlca                                          ; $574D: $07
    ei                                            ; $574E: $FB
    inc b                                         ; $574F: $04
    ld sp, hl                                     ; $5750: $F9
    inc b                                         ; $5751: $04
    add h                                         ; $5752: $84
    ld c, $84                                     ; $5753: $0E $84
    db $FC                                        ; $5755: $FC
    inc b                                         ; $5756: $04
    add h                                         ; $5757: $84
    inc b                                         ; $5758: $04
    ld c, b                                       ; $5759: $48
    ld c, $44                                     ; $575A: $0E $44
    ld a, b                                       ; $575C: $78
    ld e, $7C                                     ; $575D: $1E $7C
    sbc a                                         ; $575F: $9F
    stop                                          ; $5760: $10 $00
    ret z                                         ; $5762: $C8

    ld h, h                                       ; $5763: $64
    and b                                         ; $5764: $A0
    ld a, a                                       ; $5765: $7F
    rra                                           ; $5766: $1F
    db $F4                                        ; $5767: $F4
    nop                                           ; $5768: $00
    or h                                          ; $5769: $B4
    inc d                                         ; $576A: $14
    ld bc, $1075                                  ; $576B: $01 $75 $10
    inc e                                         ; $576E: $1C
    adc a                                         ; $576F: $8F
    rla                                           ; $5770: $17
    add d                                         ; $5771: $82
    rst RST_20                                    ; $5772: $E7
    ldh [$FF98], a                                ; $5773: $E0 $98
    ld hl, sp-$80                                 ; $5775: $F8 $80
    nop                                           ; $5777: $00
    ld [hl], $DA                                  ; $5778: $36 $DA
    ld bc, $88CD                                  ; $577A: $01 $CD $88
    rst RST_18                                    ; $577D: $DF
    inc b                                         ; $577E: $04
    ld b, b                                       ; $577F: $40
    inc b                                         ; $5780: $04
    add b                                         ; $5781: $80
    xor l                                         ; $5782: $AD
    inc b                                         ; $5783: $04
    jr nz, @+$10                                  ; $5784: $20 $0E

    ld bc, $2DF0                                  ; $5786: $01 $F0 $2D
    dec b                                         ; $5789: $05
    ret c                                         ; $578A: $D8

    ld h, [hl]                                    ; $578B: $66
    ld [bc], a                                    ; $578C: $02
    add sp, $1D                                   ; $578D: $E8 $1D
    dec bc                                        ; $578F: $0B
    db $F4                                        ; $5790: $F4
    dec e                                         ; $5791: $1D
    dec c                                         ; $5792: $0D
    ld b, $73                                     ; $5793: $06 $73
    ld sp, hl                                     ; $5795: $F9
    inc b                                         ; $5796: $04

jr_020_5797:
    xor h                                         ; $5797: $AC
    ld b, l                                       ; $5798: $45
    ld h, b                                       ; $5799: $60
    sbc a                                         ; $579A: $9F
    ld a, l                                       ; $579B: $7D
    inc d                                         ; $579C: $14
    ld d, [hl]                                    ; $579D: $56
    ld a, a                                       ; $579E: $7F
    inc b                                         ; $579F: $04
    cp a                                          ; $57A0: $BF
    ld a, h                                       ; $57A1: $7C
    rst RST_18                                    ; $57A2: $DF
    ld l, a                                       ; $57A3: $6F
    dec c                                         ; $57A4: $0D
    ld [hl-], a                                   ; $57A5: $32
    nop                                           ; $57A6: $00
    db $DD                                        ; $57A7: $DD
    ld sp, $1ADE                                  ; $57A8: $31 $DE $1A
    db $EC                                        ; $57AB: $EC
    pop bc                                        ; $57AC: $C1
    ld a, l                                       ; $57AD: $7D
    inc bc                                        ; $57AE: $03
    rst RST_08                                    ; $57AF: $CF
    ld l, h                                       ; $57B0: $6C
    jr nc, jr_020_57BA                            ; $57B1: $30 $07

    db $FC                                        ; $57B3: $FC
    inc b                                         ; $57B4: $04
    jr c, jr_020_57C4                             ; $57B5: $38 $0D

    jr nz, jr_020_5797                            ; $57B7: $20 $DE

    cp b                                          ; $57B9: $B8

jr_020_57BA:
    inc b                                         ; $57BA: $04
    inc c                                         ; $57BB: $0C
    inc d                                         ; $57BC: $14
    ld a, h                                       ; $57BD: $7C
    ret nc                                        ; $57BE: $D0

    ld e, h                                       ; $57BF: $5C
    ld a, [hl-]                                   ; $57C0: $3A
    rst RST_30                                    ; $57C1: $F7
    xor l                                         ; $57C2: $AD
    rlca                                          ; $57C3: $07

jr_020_57C4:
    sbc h                                         ; $57C4: $9C
    inc b                                         ; $57C5: $04
    jr nz, jr_020_57D6                            ; $57C6: $20 $0E

    rra                                           ; $57C8: $1F
    cp a                                          ; $57C9: $BF
    ld h, [hl]                                    ; $57CA: $66
    add l                                         ; $57CB: $85
    rst RST_08                                    ; $57CC: $CF
    inc c                                         ; $57CD: $0C
    dec bc                                        ; $57CE: $0B
    db $F4                                        ; $57CF: $F4
    rrca                                          ; $57D0: $0F
    ccf                                           ; $57D1: $3F
    ld h, l                                       ; $57D2: $65
    ld a, a                                       ; $57D3: $7F
    cp d                                          ; $57D4: $BA
    dec c                                         ; $57D5: $0D

jr_020_57D6:
    xor b                                         ; $57D6: $A8
    ret nz                                        ; $57D7: $C0

    rrca                                          ; $57D8: $0F
    dec c                                         ; $57D9: $0D
    jr c, jr_020_581C                             ; $57DA: $38 $40

    ld c, $F5                                     ; $57DC: $0E $F5
    ld a, [bc]                                    ; $57DE: $0A
    ld [$0F15], a                                 ; $57DF: $EA $15 $0F
    rrca                                          ; $57E2: $0F
    dec c                                         ; $57E3: $0D
    xor d                                         ; $57E4: $AA
    ld a, h                                       ; $57E5: $7C
    ld d, l                                       ; $57E6: $55
    nop                                           ; $57E7: $00
    ld [$0F0F], sp                                ; $57E8: $08 $0F $0F
    rrca                                          ; $57EB: $0F
    rst RST_38                                    ; $57EC: $FF
    nop                                           ; $57ED: $00
    sbc [hl]                                      ; $57EE: $9E
    dec b                                         ; $57EF: $05
    xor a                                         ; $57F0: $AF
    ld d, b                                       ; $57F1: $50
    cpl                                           ; $57F2: $2F
    rrca                                          ; $57F3: $0F
    rrca                                          ; $57F4: $0F
    ld c, $54                                     ; $57F5: $0E $54
    sbc [hl]                                      ; $57F7: $9E
    nop                                           ; $57F8: $00
    xor c                                         ; $57F9: $A9
    xor b                                         ; $57FA: $A8
    jr jr_020_5809                                ; $57FB: $18 $0C

    jr jr_020_580F                                ; $57FD: $18 $10

    ld d, c                                       ; $57FF: $51
    adc e                                         ; $5800: $8B
    nop                                           ; $5801: $00
    and l                                         ; $5802: $A5
    db $F4                                        ; $5803: $F4
    ld b, $04                                     ; $5804: $06 $04
    rlca                                          ; $5806: $07
    dec e                                         ; $5807: $1D
    dec l                                         ; $5808: $2D

jr_020_5809:
    ld bc, $4080                                  ; $5809: $01 $80 $40
    rrca                                          ; $580C: $0F
    adc a                                         ; $580D: $8F
    adc c                                         ; $580E: $89

jr_020_580F:
    add hl, hl                                    ; $580F: $29
    dec b                                         ; $5810: $05
    inc a                                         ; $5811: $3C
    sub b                                         ; $5812: $90
    xor l                                         ; $5813: $AD
    rla                                           ; $5814: $17
    jr z, jr_020_5837                             ; $5815: $28 $20

    ret nz                                        ; $5817: $C0

    ld h, c                                       ; $5818: $61
    ld [hl], b                                    ; $5819: $70
    ld [hl-], a                                   ; $581A: $32
    nop                                           ; $581B: $00

jr_020_581C:
    cp $60                                        ; $581C: $FE $60
    ld sp, hl                                     ; $581E: $F9
    ld [bc], a                                    ; $581F: $02
    ld [hl], d                                    ; $5820: $72
    ld c, b                                       ; $5821: $48
    ret c                                         ; $5822: $D8

    db $FD                                        ; $5823: $FD
    ld l, l                                       ; $5824: $6D
    inc bc                                        ; $5825: $03
    jr nz, jr_020_582C                            ; $5826: $20 $04

    ld a, [$1584]                                 ; $5828: $FA $84 $15
    ld a, d                                       ; $582B: $7A

jr_020_582C:
    inc c                                         ; $582C: $0C
    nop                                           ; $582D: $00
    cp l                                          ; $582E: $BD
    add a                                         ; $582F: $87
    ld e, d                                       ; $5830: $5A
    rst RST_00                                    ; $5831: $C7
    inc e                                         ; $5832: $1C
    ld b, a                                       ; $5833: $47
    ld b, [hl]                                    ; $5834: $46
    ld l, a                                       ; $5835: $6F
    ld [bc], a                                    ; $5836: $02

jr_020_5837:
    inc de                                        ; $5837: $13
    sbc a                                         ; $5838: $9F
    ld bc, $00E3                                  ; $5839: $01 $E3 $00

jr_020_583C:
    ld a, l                                       ; $583C: $7D
    ld b, $30                                     ; $583D: $06 $30
    ld h, e                                       ; $583F: $63
    adc [hl]                                      ; $5840: $8E
    and b                                         ; $5841: $A0
    call nc, Call_000_0B83                        ; $5842: $D4 $83 $0B
    rst RST_20                                    ; $5845: $E7
    call nc, $4654                                ; $5846: $D4 $54 $46
    ld c, [hl]                                    ; $5849: $4E
    inc c                                         ; $584A: $0C
    ld de, $24B7                                  ; $584B: $11 $B7 $24
    inc b                                         ; $584E: $04
    inc c                                         ; $584F: $0C
    ld [hl], a                                    ; $5850: $77
    scf                                           ; $5851: $37
    inc d                                         ; $5852: $14
    scf                                           ; $5853: $37
    call nz, $052C                                ; $5854: $C4 $2C $05
    or b                                          ; $5857: $B0
    inc c                                         ; $5858: $0C
    or b                                          ; $5859: $B0
    rst RST_38                                    ; $585A: $FF
    rrca                                          ; $585B: $0F
    adc h                                         ; $585C: $8C
    ret c                                         ; $585D: $D8

    rrca                                          ; $585E: $0F
    dec c                                         ; $585F: $0D
    rst RST_38                                    ; $5860: $FF
    rst RST_38                                    ; $5861: $FF
    ld c, $D3                                     ; $5862: $0E $D3
    inc b                                         ; $5864: $04
    dec c                                         ; $5865: $0D
    db $FC                                        ; $5866: $FC
    inc b                                         ; $5867: $04
    push af                                       ; $5868: $F5
    rrca                                          ; $5869: $0F
    inc c                                         ; $586A: $0C
    inc b                                         ; $586B: $04
    jp c, $041C                                   ; $586C: $DA $1C $04

    db $F4                                        ; $586F: $F4
    rrca                                          ; $5870: $0F
    inc b                                         ; $5871: $04
    ldh a, [rDIV]                                 ; $5872: $F0 $04
    ldh a, [c]                                    ; $5874: $F2
    sbc l                                         ; $5875: $9D
    inc b                                         ; $5876: $04
    rst RST_38                                    ; $5877: $FF
    nop                                           ; $5878: $00
    dec b                                         ; $5879: $05
    inc e                                         ; $587A: $1C
    inc b                                         ; $587B: $04
    ld hl, sp-$57                                 ; $587C: $F8 $A9
    rst RST_18                                    ; $587E: $DF
    ld e, $07                                     ; $587F: $1E $07
    jp $AC55                                      ; $5881: $C3 $55 $AC


    db $10                                        ; $5884: $10
    ld bc, $1720                                  ; $5885: $01 $20 $17

Jump_020_5888:
    rra                                           ; $5888: $1F
    ld a, a                                       ; $5889: $7F
    add a                                         ; $588A: $87
    ld [$B4E1], sp                                ; $588B: $08 $E1 $B4
    ld e, l                                       ; $588E: $5D
    ld b, l                                       ; $588F: $45
    dec hl                                        ; $5890: $2B
    ld d, l                                       ; $5891: $55
    xor d                                         ; $5892: $AA
    nop                                           ; $5893: $00
    ld d, h                                       ; $5894: $54
    db $10                                        ; $5895: $10
    ld sp, hl                                     ; $5896: $F9
    sub c                                         ; $5897: $91
    inc e                                         ; $5898: $1C
    xor [hl]                                      ; $5899: $AE
    jr z, jr_020_583C                             ; $589A: $28 $A0

    inc b                                         ; $589C: $04
    inc d                                         ; $589D: $14
    inc b                                         ; $589E: $04
    ld c, l                                       ; $589F: $4D
    nop                                           ; $58A0: $00
    sbc a                                         ; $58A1: $9F
    pop hl                                        ; $58A2: $E1
    ld l, l                                       ; $58A3: $6D
    and d                                         ; $58A4: $A2
    nop                                           ; $58A5: $00
    ld d, b                                       ; $58A6: $50
    di                                            ; $58A7: $F3
    add e                                         ; $58A8: $83
    rst RST_08                                    ; $58A9: $CF
    or b                                          ; $58AA: $B0
    ld a, a                                       ; $58AB: $7F
    ccf                                           ; $58AC: $3F
    jr nz, @+$04                                  ; $58AD: $20 $02

    ld de, $1B44                                  ; $58AF: $11 $44 $1B
    inc bc                                        ; $58B2: $03
    inc bc                                        ; $58B3: $03
    rst RST_10                                    ; $58B4: $D7
    inc bc                                        ; $58B5: $03
    ld [bc], a                                    ; $58B6: $02
    ldh [rP1], a                                  ; $58B7: $E0 $00
    sbc $00                                       ; $58B9: $DE $00
    or h                                          ; $58BB: $B4
    nop                                           ; $58BC: $00
    ld a, [$0127]                                 ; $58BD: $FA $27 $01
    ld a, l                                       ; $58C0: $7D
    adc l                                         ; $58C1: $8D
    dec a                                         ; $58C2: $3D
    ldh a, [$FFC4]                                ; $58C3: $F0 $C4
    db $FC                                        ; $58C5: $FC
    xor d                                         ; $58C6: $AA
    nop                                           ; $58C7: $00
    db $ED                                        ; $58C8: $ED
    nop                                           ; $58C9: $00
    pop de                                        ; $58CA: $D1
    nop                                           ; $58CB: $00
    ld [$F500], a                                 ; $58CC: $EA $00 $F5
    ld hl, sp+$00                                 ; $58CF: $F8 $00
    jr z, jr_020_58D3                             ; $58D1: $28 $00

jr_020_58D3:
    ld c, h                                       ; $58D3: $4C
    nop                                           ; $58D4: $00
    inc bc                                        ; $58D5: $03
    db $E3                                        ; $58D6: $E3
    ld [hl], b                                    ; $58D7: $70
    sub b                                         ; $58D8: $90
    inc a                                         ; $58D9: $3C
    ret nz                                        ; $58DA: $C0

    rst RST_28                                    ; $58DB: $EF
    ld e, b                                       ; $58DC: $58
    or $B1                                        ; $58DD: $F6 $B1
    cp c                                          ; $58DF: $B9
    ld d, c                                       ; $58E0: $51
    nop                                           ; $58E1: $00
    ld e, c                                       ; $58E2: $59
    ld b, b                                       ; $58E3: $40
    ld b, h                                       ; $58E4: $44
    ld e, b                                       ; $58E5: $58
    ld e, l                                       ; $58E6: $5D
    sbc h                                         ; $58E7: $9C
    sbc [hl]                                      ; $58E8: $9E
    call c, $C482                                 ; $58E9: $DC $82 $C4
    ld [bc], a                                    ; $58EC: $02
    ld a, [de]                                    ; $58ED: $1A
    ldh [c], a                                    ; $58EE: $E2
    and $F8                                       ; $58EF: $E6 $F8
    nop                                           ; $58F1: $00
    cp $81                                        ; $58F2: $FE $81
    ld [bc], a                                    ; $58F4: $02
    ld a, h                                       ; $58F5: $7C
    ld a, [hl]                                    ; $58F6: $7E
    cp h                                          ; $58F7: $BC
    cp [hl]                                       ; $58F8: $BE
    reti                                          ; $58F9: $D9


    db $DD                                        ; $58FA: $DD
    dec c                                         ; $58FB: $0D
    ld b, d                                       ; $58FC: $42
    cp b                                          ; $58FD: $B8
    ld [$7D78], sp                                ; $58FE: $08 $78 $7D
    nop                                           ; $5901: $00
    dec bc                                        ; $5902: $0B
    db $EC                                        ; $5903: $EC
    ei                                            ; $5904: $FB
    ld h, $E5                                     ; $5905: $26 $E5
    rst RST_30                                    ; $5907: $F7
    xor l                                         ; $5908: $AD
    inc d                                         ; $5909: $14
    ld e, a                                       ; $590A: $5F
    ret z                                         ; $590B: $C8

    nop                                           ; $590C: $00
    rlca                                          ; $590D: $07
    sbc d                                         ; $590E: $9A
    nop                                           ; $590F: $00
    and a                                         ; $5910: $A7
    ld d, a                                       ; $5911: $57
    db $E4                                        ; $5912: $E4
    inc [hl]                                      ; $5913: $34
    ld [$55E4], sp                                ; $5914: $08 $E4 $55
    rrca                                          ; $5917: $0F
    db $FD                                        ; $5918: $FD
    and c                                         ; $5919: $A1
    ld sp, hl                                     ; $591A: $F9
    ld b, $AC                                     ; $591B: $06 $AC
    cp h                                          ; $591D: $BC
    nop                                           ; $591E: $00
    ld [hl], h                                    ; $591F: $74
    add b                                         ; $5920: $80
    and b                                         ; $5921: $A0
    jr nz, jr_020_5947                            ; $5922: $20 $23

    adc h                                         ; $5924: $8C
    call z, $D2C2                                 ; $5925: $CC $C2 $D2
    inc b                                         ; $5928: $04
    ld d, b                                       ; $5929: $50
    ld d, $94                                     ; $592A: $16 $94
    add b                                         ; $592C: $80
    ld d, h                                       ; $592D: $54
    xor l                                         ; $592E: $AD
    ld b, b                                       ; $592F: $40
    rst RST_38                                    ; $5930: $FF
    jr @+$61                                      ; $5931: $18 $5F

    ld h, a                                       ; $5933: $67
    inc b                                         ; $5934: $04
    ld l, a                                       ; $5935: $6F
    jr nz, jr_020_594C                            ; $5936: $20 $14

    inc l                                         ; $5938: $2C
    inc b                                         ; $5939: $04
    or h                                          ; $593A: $B4
    sub $04                                       ; $593B: $D6 $04
    inc [hl]                                      ; $593D: $34
    ld a, a                                       ; $593E: $7F
    db $EC                                        ; $593F: $EC

jr_020_5940:
    add a                                         ; $5940: $87
    ld b, l                                       ; $5941: $45
    inc h                                         ; $5942: $24
    or [hl]                                       ; $5943: $B6
    xor d                                         ; $5944: $AA
    or h                                          ; $5945: $B4
    cp e                                          ; $5946: $BB

jr_020_5947:
    inc a                                         ; $5947: $3C
    call c, $EE34                                 ; $5948: $DC $34 $EE
    inc e                                         ; $594B: $1C

jr_020_594C:
    ld bc, $0CC0                                  ; $594C: $01 $C0 $0C
    cp h                                          ; $594F: $BC
    add [hl]                                      ; $5950: $86
    or $36                                        ; $5951: $F6 $36
    add c                                         ; $5953: $81
    add hl, bc                                    ; $5954: $09
    jr z, jr_020_5985                             ; $5955: $28 $2E

    sub d                                         ; $5957: $92
    sub [hl]                                      ; $5958: $96
    inc l                                         ; $5959: $2C
    ld d, b                                       ; $595A: $50
    ret c                                         ; $595B: $D8

    inc a                                         ; $595C: $3C
    jr c, jr_020_5940                             ; $595D: $38 $E1

    xor e                                         ; $595F: $AB
    call nz, $1CED                                ; $5960: $C4 $ED $1C
    di                                            ; $5963: $F3
    inc d                                         ; $5964: $14
    cp $A5                                        ; $5965: $FE $A5
    dec c                                         ; $5967: $0D
    and h                                         ; $5968: $A4
    inc [hl]                                      ; $5969: $34
    db $FD                                        ; $596A: $FD
    rrca                                          ; $596B: $0F
    dec b                                         ; $596C: $05
    ld a, [$FCA4]                                 ; $596D: $FA $A4 $FC
    push af                                       ; $5970: $F5
    inc de                                        ; $5971: $13
    ld a, [bc]                                    ; $5972: $0A
    ld [$0D15], a                                 ; $5973: $EA $15 $0D
    add sp, $14                                   ; $5976: $E8 $14
    xor h                                         ; $5978: $AC
    jr z, jr_020_599C                             ; $5979: $28 $21

    adc a                                         ; $597B: $8F
    ccf                                           ; $597C: $3F
    dec c                                         ; $597D: $0D
    xor b                                         ; $597E: $A8
    ld d, h                                       ; $597F: $54
    xor d                                         ; $5980: $AA
    ld d, l                                       ; $5981: $55
    nop                                           ; $5982: $00
    xor $08                                       ; $5983: $EE $08

jr_020_5985:
    dec c                                         ; $5985: $0D
    adc l                                         ; $5986: $8D
    ld [$1004], sp                                ; $5987: $08 $04 $10
    inc b                                         ; $598A: $04
    and b                                         ; $598B: $A0
    rst RST_38                                    ; $598C: $FF
    inc b                                         ; $598D: $04
    ld e, b                                       ; $598E: $58
    inc b                                         ; $598F: $04
    nop                                           ; $5990: $00
    jr z, @+$41                                   ; $5991: $28 $3F

    ccf                                           ; $5993: $3F
    ccf                                           ; $5994: $3F
    rst RST_38                                    ; $5995: $FF
    ccf                                           ; $5996: $3F
    dec b                                         ; $5997: $05
    sbc h                                         ; $5998: $9C
    inc b                                         ; $5999: $04
    nop                                           ; $599A: $00
    xor h                                         ; $599B: $AC

jr_020_599C:
    nop                                           ; $599C: $00
    dec h                                         ; $599D: $25
    push af                                       ; $599E: $F5
    nop                                           ; $599F: $00
    dec c                                         ; $59A0: $0D
    dec e                                         ; $59A1: $1D
    ld c, h                                       ; $59A2: $4C
    ld d, b                                       ; $59A3: $50
    inc c                                         ; $59A4: $0C
    rrca                                          ; $59A5: $0F
    ld c, c                                       ; $59A6: $49
    ld a, a                                       ; $59A7: $7F
    db $FC                                        ; $59A8: $FC
    ld [hl], $03                                  ; $59A9: $36 $03
    dec e                                         ; $59AB: $1D
    ld l, l                                       ; $59AC: $6D
    cp a                                          ; $59AD: $BF
    cp a                                          ; $59AE: $BF
    cp a                                          ; $59AF: $BF
    cp $BD                                        ; $59B0: $FE $BD
    cp d                                          ; $59B2: $BA
    ld a, h                                       ; $59B3: $7C
    adc [hl]                                      ; $59B4: $8E
    ccf                                           ; $59B5: $3F
    ccf                                           ; $59B6: $3F
    cp $70                                        ; $59B7: $FE $70
    add a                                         ; $59B9: $87
    inc b                                         ; $59BA: $04
    scf                                           ; $59BB: $37
    add a                                         ; $59BC: $87
    inc bc                                        ; $59BD: $03
    rst RST_00                                    ; $59BE: $C7
    or a                                          ; $59BF: $B7
    ld [hl-], a                                   ; $59C0: $32
    cp b                                          ; $59C1: $B8
    inc h                                         ; $59C2: $24
    adc l                                         ; $59C3: $8D
    dec c                                         ; $59C4: $0D
    inc c                                         ; $59C5: $0C
    ld [de], a                                    ; $59C6: $12
    pop bc                                        ; $59C7: $C1
    nop                                           ; $59C8: $00
    add b                                         ; $59C9: $80
    sbc $E6                                       ; $59CA: $DE $E6
    scf                                           ; $59CC: $37
    ld bc, $7F6C                                  ; $59CD: $01 $6C $7F
    ccf                                           ; $59D0: $3F
    jr z, @-$62                                   ; $59D1: $28 $9C

    ld a, [hl+]                                   ; $59D3: $2A
    ldh [c], a                                    ; $59D4: $E2
    rst RST_38                                    ; $59D5: $FF
    cp a                                          ; $59D6: $BF
    cp a                                          ; $59D7: $BF
    sbc h                                         ; $59D8: $9C
    rra                                           ; $59D9: $1F
    ld b, b                                       ; $59DA: $40
    jr @-$57                                      ; $59DB: $18 $A7

    ld d, b                                       ; $59DD: $50
    ld d, a                                       ; $59DE: $57
    inc a                                         ; $59DF: $3C
    ld hl, sp+$3C                                 ; $59E0: $F8 $3C
    ld sp, hl                                     ; $59E2: $F9
    ld b, [hl]                                    ; $59E3: $46
    and $9E                                       ; $59E4: $E6 $9E
    adc l                                         ; $59E6: $8D
    sub h                                         ; $59E7: $94
    ld a, $BE                                     ; $59E8: $3E $BE
    inc a                                         ; $59EA: $3C
    nop                                           ; $59EB: $00
    sub l                                         ; $59EC: $95
    add c                                         ; $59ED: $81
    db $DD                                        ; $59EE: $DD
    ret z                                         ; $59EF: $C8

    or e                                          ; $59F0: $B3
    rst RST_38                                    ; $59F1: $FF
    rst RST_20                                    ; $59F2: $E7
    inc bc                                        ; $59F3: $03
    inc b                                         ; $59F4: $04
    ld bc, $8277                                  ; $59F5: $01 $77 $82
    ld b, $BB                                     ; $59F8: $06 $BB
    ld b, c                                       ; $59FA: $41
    db $DB                                        ; $59FB: $DB
    ldh a, [$FFFD]                                ; $59FC: $F0 $FD
    dec [hl]                                      ; $59FE: $35
    add sp, -$12                                  ; $59FF: $E8 $EE
    or d                                          ; $5A01: $B2
    inc a                                         ; $5A02: $3C
    or $04                                        ; $5A03: $F6 $04
    sbc h                                         ; $5A05: $9C
    inc b                                         ; $5A06: $04
    ld [bc], a                                    ; $5A07: $02
    nop                                           ; $5A08: $00
    push af                                       ; $5A09: $F5
    xor h                                         ; $5A0A: $AC
    inc d                                         ; $5A0B: $14
    rlca                                          ; $5A0C: $07
    inc b                                         ; $5A0D: $04
    ei                                            ; $5A0E: $FB
    ld e, h                                       ; $5A0F: $5C
    inc h                                         ; $5A10: $24
    ld b, $76                                     ; $5A11: $06 $76
    push af                                       ; $5A13: $F5
    jr jr_020_5A82                                ; $5A14: $18 $6C

    ld b, [hl]                                    ; $5A16: $46
    dec b                                         ; $5A17: $05
    ld a, d                                       ; $5A18: $7A
    inc b                                         ; $5A19: $04
    cp c                                          ; $5A1A: $B9
    inc [hl]                                      ; $5A1B: $34
    add c                                         ; $5A1C: $81
    adc h                                         ; $5A1D: $8C
    ld b, d                                       ; $5A1E: $42
    rst RST_10                                    ; $5A1F: $D7
    add [hl]                                      ; $5A20: $86
    adc $0C                                       ; $5A21: $CE $0C
    ld e, [hl]                                    ; $5A23: $5E
    inc e                                         ; $5A24: $1C
    ld c, [hl]                                    ; $5A25: $4E
    cp $ED                                        ; $5A26: $FE $ED
    dec b                                         ; $5A28: $05
    ld a, [$B484]                                 ; $5A29: $FA $84 $B4
    dec e                                         ; $5A2C: $1D
    dec bc                                        ; $5A2D: $0B
    ld d, c                                       ; $5A2E: $51
    db $F4                                        ; $5A2F: $F4
    inc e                                         ; $5A30: $1C
    ld [$C40C], a                                 ; $5A31: $EA $0C $C4
    ld hl, sp+$0F                                 ; $5A34: $F8 $0F
    db $E4                                        ; $5A36: $E4
    rst RST_38                                    ; $5A37: $FF
    inc b                                         ; $5A38: $04
    jr nz, jr_020_5A3F                            ; $5A39: $20 $04

    inc d                                         ; $5A3B: $14
    and b                                         ; $5A3C: $A0
    dec b                                         ; $5A3D: $05
    ld d, b                                       ; $5A3E: $50

jr_020_5A3F:
    inc b                                         ; $5A3F: $04
    inc [hl]                                      ; $5A40: $34
    db $FC                                        ; $5A41: $FC
    inc bc                                        ; $5A42: $03
    ld l, b                                       ; $5A43: $68
    ld [hl], b                                    ; $5A44: $70
    sbc a                                         ; $5A45: $9F
    inc b                                         ; $5A46: $04
    dec d                                         ; $5A47: $15
    ld c, d                                       ; $5A48: $4A
    ld hl, $952A                                  ; $5A49: $21 $2A $95
    db $10                                        ; $5A4C: $10
    cp a                                          ; $5A4D: $BF
    ld [$557F], sp                                ; $5A4E: $08 $7F $55
    inc b                                         ; $5A51: $04
    dec c                                         ; $5A52: $0D
    and b                                         ; $5A53: $A0
    ei                                            ; $5A54: $FB
    inc d                                         ; $5A55: $14
    rst RST_30                                    ; $5A56: $F7
    inc c                                         ; $5A57: $0C
    ld d, b                                       ; $5A58: $50
    ld c, b                                       ; $5A59: $48
    ld l, b                                       ; $5A5A: $68
    ld e, l                                       ; $5A5B: $5D
    ld sp, $8A58                                  ; $5A5C: $31 $58 $8A
    inc b                                         ; $5A5F: $04
    inc [hl]                                      ; $5A60: $34
    inc b                                         ; $5A61: $04
    ld a, [bc]                                    ; $5A62: $0A
    inc b                                         ; $5A63: $04
    ld e, [hl]                                    ; $5A64: $5E
    xor l                                         ; $5A65: $AD
    inc b                                         ; $5A66: $04
    ld d, [hl]                                    ; $5A67: $56
    add c                                         ; $5A68: $81
    dec b                                         ; $5A69: $05
    nop                                           ; $5A6A: $00
    dec a                                         ; $5A6B: $3D
    add b                                         ; $5A6C: $80
    ld de, $40C0                                  ; $5A6D: $11 $C0 $40
    rst RST_20                                    ; $5A70: $E7
    add h                                         ; $5A71: $84
    ld sp, hl                                     ; $5A72: $F9
    xor h                                         ; $5A73: $AC
    cp $3D                                        ; $5A74: $FE $3D
    ld a, a                                       ; $5A76: $7F
    and c                                         ; $5A77: $A1
    inc b                                         ; $5A78: $04
    cp b                                          ; $5A79: $B8
    inc b                                         ; $5A7A: $04
    ld a, a                                       ; $5A7B: $7F
    ld a, a                                       ; $5A7C: $7F
    ld a, a                                       ; $5A7D: $7F
    cp h                                          ; $5A7E: $BC
    add sp, $4C                                   ; $5A7F: $E8 $4C
    cp h                                          ; $5A81: $BC

jr_020_5A82:
    ld e, h                                       ; $5A82: $5C
    ld hl, $876C                                  ; $5A83: $21 $6C $87
    sbc a                                         ; $5A86: $9F
    ccf                                           ; $5A87: $3F
    ld a, [$3F00]                                 ; $5A88: $FA $00 $3F
    cp [hl]                                       ; $5A8B: $BE
    and h                                         ; $5A8C: $A4
    inc b                                         ; $5A8D: $04
    rrca                                          ; $5A8E: $0F
    ld a, h                                       ; $5A8F: $7C
    di                                            ; $5A90: $F3
    push de                                       ; $5A91: $D5
    call Call_020_7FDD                            ; $5A92: $CD $DD $7F
    inc b                                         ; $5A95: $04
    rra                                           ; $5A96: $1F
    ld [$5C07], sp                                ; $5A97: $08 $07 $5C
    ld a, [hl]                                    ; $5A9A: $7E
    ld e, $61                                     ; $5A9B: $1E $61
    inc e                                         ; $5A9D: $1C
    inc bc                                        ; $5A9E: $03
    dec [hl]                                      ; $5A9F: $35
    inc bc                                        ; $5AA0: $03
    ld bc, $FD03                                  ; $5AA1: $01 $03 $FD
    ld c, b                                       ; $5AA4: $48
    ccf                                           ; $5AA5: $3F
    inc bc                                        ; $5AA6: $03
    cp a                                          ; $5AA7: $BF
    cp l                                          ; $5AA8: $BD
    ld bc, $04FE                                  ; $5AA9: $01 $FE $04
    ld [hl], h                                    ; $5AAC: $74
    ld hl, sp+$3B                                 ; $5AAD: $F8 $3B
    ccf                                           ; $5AAF: $3F
    ld a, $01                                     ; $5AB0: $3E $01
    call nz, $E480                                ; $5AB2: $C4 $80 $E4
    scf                                           ; $5AB5: $37
    pop hl                                        ; $5AB6: $E1
    ld sp, hl                                     ; $5AB7: $F9
    ld b, h                                       ; $5AB8: $44
    ld d, b                                       ; $5AB9: $50
    db $FC                                        ; $5ABA: $FC
    ld e, [hl]                                    ; $5ABB: $5E
    inc bc                                        ; $5ABC: $03
    jr c, jr_020_5B2A                             ; $5ABD: $38 $6B

    rst RST_18                                    ; $5ABF: $DF
    cp h                                          ; $5AC0: $BC
    nop                                           ; $5AC1: $00
    cp [hl]                                       ; $5AC2: $BE
    nop                                           ; $5AC3: $00
    ret c                                         ; $5AC4: $D8

    nop                                           ; $5AC5: $00
    call c, Call_020_4301                         ; $5AC6: $DC $01 $43
    ld [de], a                                    ; $5AC9: $12
    or d                                          ; $5ACA: $B2
    add d                                         ; $5ACB: $82
    jp nc, $EDC4                                  ; $5ACC: $D2 $C4 $ED

    ld [hl], h                                    ; $5ACF: $74
    and l                                         ; $5AD0: $A5
    ld b, h                                       ; $5AD1: $44
    nop                                           ; $5AD2: $00
    ld [$1F11], sp                                ; $5AD3: $08 $11 $1F
    inc h                                         ; $5AD6: $24
    rst RST_20                                    ; $5AD7: $E7
    adc l                                         ; $5AD8: $8D
    add sp, -$41                                  ; $5AD9: $E8 $BF
    cp l                                          ; $5ADB: $BD
    inc e                                         ; $5ADC: $1C
    rst RST_30                                    ; $5ADD: $F7
    ld e, h                                       ; $5ADE: $5C

jr_020_5ADF:
    ld a, e                                       ; $5ADF: $7B
    add hl, bc                                    ; $5AE0: $09
    adc e                                         ; $5AE1: $8B
    sbc c                                         ; $5AE2: $99
    ld c, b                                       ; $5AE3: $48
    push af                                       ; $5AE4: $F5
    ld d, c                                       ; $5AE5: $51
    ccf                                           ; $5AE6: $3F
    ld a, $0F                                     ; $5AE7: $3E $0F
    ld l, a                                       ; $5AE9: $6F
    ld [hl], b                                    ; $5AEA: $70
    add c                                         ; $5AEB: $81
    nop                                           ; $5AEC: $00
    rlca                                          ; $5AED: $07
    and a                                         ; $5AEE: $A7
    ld bc, $4039                                  ; $5AEF: $01 $39 $40
    ld c, [hl]                                    ; $5AF2: $4E
    sbc h                                         ; $5AF3: $9C
    sbc h                                         ; $5AF4: $9C
    ld h, h                                       ; $5AF5: $64
    xor b                                         ; $5AF6: $A8
    ld hl, sp+$3D                                 ; $5AF7: $F8 $3D
    inc h                                         ; $5AF9: $24
    ld b, b                                       ; $5AFA: $40
    adc d                                         ; $5AFB: $8A
    sbc a                                         ; $5AFC: $9F
    halt                                          ; $5AFD: $76
    ld hl, $6C4C                                  ; $5AFE: $21 $4C $6C
    inc b                                         ; $5B01: $04
    dec d                                         ; $5B02: $15
    ld d, h                                       ; $5B03: $54
    inc c                                         ; $5B04: $0C
    cp a                                          ; $5B05: $BF
    ld [hl+], a                                   ; $5B06: $22
    dec l                                         ; $5B07: $2D
    ld a, a                                       ; $5B08: $7F
    dec a                                         ; $5B09: $3D
    and b                                         ; $5B0A: $A0
    ldh a, [rLY]                                  ; $5B0B: $F0 $44
    ld e, h                                       ; $5B0D: $5C
    inc sp                                        ; $5B0E: $33
    ld b, $FB                                     ; $5B0F: $06 $FB
    adc c                                         ; $5B11: $89
    db $FD                                        ; $5B12: $FD
    ld d, h                                       ; $5B13: $54
    cp $BF                                        ; $5B14: $FE $BF
    dec a                                         ; $5B16: $3D
    inc e                                         ; $5B17: $1C
    call z, $9C00                                 ; $5B18: $CC $00 $9C
    ldh [$FFC0], a                                ; $5B1B: $E0 $C0
    sbc h                                         ; $5B1D: $9C
    db $FC                                        ; $5B1E: $FC
    ld a, [$0070]                                 ; $5B1F: $FA $70 $00
    ld a, d                                       ; $5B22: $7A
    jr nc, jr_020_5ADF                            ; $5B23: $30 $BA

    adc b                                         ; $5B25: $88
    jp z, $E642                                   ; $5B26: $CA $42 $E6

    and c                                         ; $5B29: $A1

jr_020_5B2A:
    xor h                                         ; $5B2A: $AC
    ld b, h                                       ; $5B2B: $44
    ld c, d                                       ; $5B2C: $4A
    ld h, h                                       ; $5B2D: $64
    ld sp, $2474                                  ; $5B2E: $31 $74 $24
    db $FC                                        ; $5B31: $FC
    ld d, l                                       ; $5B32: $55
    ldh [rNR32], a                                ; $5B33: $E0 $1C
    ld a, a                                       ; $5B35: $7F
    ld a, l                                       ; $5B36: $7D
    ld [bc], a                                    ; $5B37: $02
    ld b, $B2                                     ; $5B38: $06 $B2
    or [hl]                                       ; $5B3A: $B6
    ld [hl], d                                    ; $5B3B: $72
    ld b, a                                       ; $5B3C: $47
    halt                                          ; $5B3D: $76
    db $10                                        ; $5B3E: $10
    rrca                                          ; $5B3F: $0F
    ld b, a                                       ; $5B40: $47
    rst RST_28                                    ; $5B41: $EF

jr_020_5B42:
    ccf                                           ; $5B42: $3F
    dec a                                         ; $5B43: $3D
    jr nz, jr_020_5B42                            ; $5B44: $20 $FC

    dec h                                         ; $5B46: $25
    db $FC                                        ; $5B47: $FC
    and h                                         ; $5B48: $A4
    cp h                                          ; $5B49: $BC
    ld a, h                                       ; $5B4A: $7C
    add h                                         ; $5B4B: $84
    ld d, c                                       ; $5B4C: $51
    ei                                            ; $5B4D: $FB
    ld d, b                                       ; $5B4E: $50
    inc bc                                        ; $5B4F: $03
    inc e                                         ; $5B50: $1C
    and a                                         ; $5B51: $A7
    ld c, h                                       ; $5B52: $4C
    ld c, a                                       ; $5B53: $4F
    ld e, a                                       ; $5B54: $5F
    dec e                                         ; $5B55: $1D
    dec a                                         ; $5B56: $3D
    inc b                                         ; $5B57: $04
    jr c, @+$7F                                   ; $5B58: $38 $7D

    ld a, c                                       ; $5B5A: $79
    ld sp, hl                                     ; $5B5B: $F9
    ldh a, [rTIMA]                                ; $5B5C: $F0 $05
    or $E0                                        ; $5B5E: $F6 $E0
    ld bc, $E1F5                                  ; $5B60: $01 $F5 $E1
    db $E3                                        ; $5B63: $E3
    jp nz, $1FE7                                  ; $5B64: $C2 $E7 $1F

    ccf                                           ; $5B67: $3F
    nop                                           ; $5B68: $00
    ld a, h                                       ; $5B69: $7C
    ld a, a                                       ; $5B6A: $7F
    nop                                           ; $5B6B: $00
    sub h                                         ; $5B6C: $94

jr_020_5B6D:
    inc bc                                        ; $5B6D: $03
    cp a                                          ; $5B6E: $BF
    cp l                                          ; $5B6F: $BD
    call nz, $07CE                                ; $5B70: $C4 $CE $07
    adc h                                         ; $5B73: $8C
    sbc $98                                       ; $5B74: $DE $98
    db $FC                                        ; $5B76: $FC
    cp b                                          ; $5B77: $B8
    cp h                                          ; $5B78: $BC
    ccf                                           ; $5B79: $3F
    ccf                                           ; $5B7A: $3F
    ld b, e                                       ; $5B7B: $43
    and c                                         ; $5B7C: $A1
    add h                                         ; $5B7D: $84
    ld c, d                                       ; $5B7E: $4A
    rst RST_08                                    ; $5B7F: $CF
    ld bc, $2CAF                                  ; $5B80: $01 $AF $2C
    call c, $9500                                 ; $5B83: $DC $00 $95
    rst RST_18                                    ; $5B86: $DF
    ld [bc], a                                    ; $5B87: $02
    sub a                                         ; $5B88: $97
    dec b                                         ; $5B89: $05
    add a                                         ; $5B8A: $87
    ld b, $07                                     ; $5B8B: $06 $07
    xor b                                         ; $5B8D: $A8
    inc l                                         ; $5B8E: $2C
    daa                                           ; $5B8F: $27
    inc e                                         ; $5B90: $1C
    ld b, e                                       ; $5B91: $43
    inc c                                         ; $5B92: $0C
    jp $8180                                      ; $5B93: $C3 $80 $81


    ldh a, [$FF0C]                                ; $5B96: $F0 $0C
    inc b                                         ; $5B98: $04
    ld a, a                                       ; $5B99: $7F
    ld a, l                                       ; $5B9A: $7D
    inc [hl]                                      ; $5B9B: $34
    ld b, b                                       ; $5B9C: $40
    ld d, l                                       ; $5B9D: $55
    rlca                                          ; $5B9E: $07
    nop                                           ; $5B9F: $00
    jr jr_020_5BA2                                ; $5BA0: $18 $00

jr_020_5BA2:
    jr nz, jr_020_5BA4                            ; $5BA2: $20 $00

jr_020_5BA4:
    ld b, b                                       ; $5BA4: $40
    ld [bc], a                                    ; $5BA5: $02
    ld a, [hl]                                    ; $5BA6: $7E
    add b                                         ; $5BA7: $80
    rlca                                          ; $5BA8: $07
    ld [bc], a                                    ; $5BA9: $02
    ld a, e                                       ; $5BAA: $7B
    xor c                                         ; $5BAB: $A9
    ret                                           ; $5BAC: $C9


    jp hl                                         ; $5BAD: $E9


    ldh [$FFD5], a                                ; $5BAE: $E0 $D5
    nop                                           ; $5BB0: $00
    add hl, hl                                    ; $5BB1: $29
    inc b                                         ; $5BB2: $04
    nop                                           ; $5BB3: $00
    ld [bc], a                                    ; $5BB4: $02
    ld [bc], a                                    ; $5BB5: $02
    ld bc, $F907                                  ; $5BB6: $01 $07 $F9
    ld [bc], a                                    ; $5BB9: $02

jr_020_5BBA:
    ld a, e                                       ; $5BBA: $7B
    xor c                                         ; $5BBB: $A9
    ret                                           ; $5BBC: $C9


    jp hl                                         ; $5BBD: $E9


    rlca                                          ; $5BBE: $07
    nop                                           ; $5BBF: $00
    jr nz, jr_020_5B6D                            ; $5BC0: $20 $AB

    ld [$0820], sp                                ; $5BC2: $08 $20 $08
    ld b, b                                       ; $5BC5: $40
    ld a, [bc]                                    ; $5BC6: $0A
    add b                                         ; $5BC7: $80
    rrca                                          ; $5BC8: $0F
    ld a, [bc]                                    ; $5BC9: $0A
    push af                                       ; $5BCA: $F5
    ld a, e                                       ; $5BCB: $7B
    xor c                                         ; $5BCC: $A9
    ret                                           ; $5BCD: $C9


    jp hl                                         ; $5BCE: $E9


jr_020_5BCF:
    ldh [$FF2A], a                                ; $5BCF: $E0 $2A
    inc b                                         ; $5BD1: $04
    ld [$025F], sp                                ; $5BD2: $08 $5F $02
    ld a, [bc]                                    ; $5BD5: $0A
    ld bc, $0A0F                                  ; $5BD6: $01 $0F $0A
    ld a, e                                       ; $5BD9: $7B
    xor c                                         ; $5BDA: $A9
    ret                                           ; $5BDB: $C9


    xor d                                         ; $5BDC: $AA
    jp hl                                         ; $5BDD: $E9


    rst RST_38                                    ; $5BDE: $FF
    ld b, $FE                                     ; $5BDF: $06 $FE
    nop                                           ; $5BE1: $00
    ld hl, sp+$00                                 ; $5BE2: $F8 $00
    or $AD                                        ; $5BE4: $F6 $AD
    nop                                           ; $5BE6: $00
    ldh a, [rP1]                                  ; $5BE7: $F0 $00
    rst RST_30                                    ; $5BE9: $F7
    nop                                           ; $5BEA: $00
    add hl, sp                                    ; $5BEB: $39
    ei                                            ; $5BEC: $FB
    nop                                           ; $5BED: $00
    ld l, b                                       ; $5BEE: $68
    db $FC                                        ; $5BEF: $FC
    nop                                           ; $5BF0: $00
    adc c                                         ; $5BF1: $89
    rra                                           ; $5BF2: $1F
    nop                                           ; $5BF3: $00
    inc bc                                        ; $5BF4: $03
    db $E3                                        ; $5BF5: $E3
    ld [hl], b                                    ; $5BF6: $70
    adc b                                         ; $5BF7: $88
    jr c, jr_020_5BBA                             ; $5BF8: $38 $C0

    rst RST_28                                    ; $5BFA: $EF
    ldh [$FFA8], a                                ; $5BFB: $E0 $A8
    pop af                                        ; $5BFD: $F1
    ld sp, hl                                     ; $5BFE: $F9
    ld [hl], c                                    ; $5BFF: $71
    nop                                           ; $5C00: $00
    ld a, c                                       ; $5C01: $79
    add b                                         ; $5C02: $80
    add h                                         ; $5C03: $84
    cp b                                          ; $5C04: $B8
    cp l                                          ; $5C05: $BD
    sbc h                                         ; $5C06: $9C
    sbc [hl]                                      ; $5C07: $9E
    inc e                                         ; $5C08: $1C
    ld d, b                                       ; $5C09: $50
    ld e, $09                                     ; $5C0A: $1E $09
    jr @+$12                                      ; $5C0C: $18 $10

    jr c, jr_020_5C4D                             ; $5C0E: $38 $3D

    nop                                           ; $5C10: $00
    dec bc                                        ; $5C11: $0B
    ld [$FBF0], sp                                ; $5C12: $08 $F0 $FB
    push hl                                       ; $5C15: $E5
    rst RST_30                                    ; $5C16: $F7
    reti                                          ; $5C17: $D9


    inc d                                         ; $5C18: $14
    ld e, a                                       ; $5C19: $5F
    push af                                       ; $5C1A: $F5
    ld [de], a                                    ; $5C1B: $12
    ld a, [bc]                                    ; $5C1C: $0A
    ld [$1B15], a                                 ; $5C1D: $EA $15 $1B
    push de                                       ; $5C20: $D5
    ld a, [hl+]                                   ; $5C21: $2A
    dec de                                        ; $5C22: $1B
    xor d                                         ; $5C23: $AA
    ccf                                           ; $5C24: $3F
    ld d, l                                       ; $5C25: $55

jr_020_5C26:
    rst RST_38                                    ; $5C26: $FF
    ret nc                                        ; $5C27: $D0

    db $10                                        ; $5C28: $10
    jr nz, jr_020_5C54                            ; $5C29: $20 $29

    jr nz, jr_020_5C5D                            ; $5C2B: $20 $30

    ld l, a                                       ; $5C2D: $6F
    ld [$5108], sp                                ; $5C2E: $08 $08 $51
    and b                                         ; $5C31: $A0
    ld [$08F8], sp                                ; $5C32: $08 $F8 $08
    ld a, c                                       ; $5C35: $79
    and b                                         ; $5C36: $A0
    add hl, bc                                    ; $5C37: $09
    ld hl, sp+$08                                 ; $5C38: $F8 $08
    ldh [rTAC], a                                 ; $5C3A: $E0 $07
    rst RST_00                                    ; $5C3C: $C7
    rra                                           ; $5C3D: $1F

jr_020_5C3E:
    sbc a                                         ; $5C3E: $9F
    ld a, h                                       ; $5C3F: $7C
    ccf                                           ; $5C40: $3F
    add hl, de                                    ; $5C41: $19
    add hl, sp                                    ; $5C42: $39
    ld e, c                                       ; $5C43: $59
    rst RST_38                                    ; $5C44: $FF
    db $FD                                        ; $5C45: $FD

jr_020_5C46:
    ld [$0F15], a                                 ; $5C46: $EA $15 $0F
    push de                                       ; $5C49: $D5
    ld a, [hl+]                                   ; $5C4A: $2A
    cp $01                                        ; $5C4B: $FE $01

jr_020_5C4D:
    jr nc, jr_020_5BCF                            ; $5C4D: $30 $80

    dec de                                        ; $5C4F: $1B
    ld e, e                                       ; $5C50: $5B
    rst RST_20                                    ; $5C51: $E7
    add hl, hl                                    ; $5C52: $29
    rrca                                          ; $5C53: $0F

jr_020_5C54:
    dec c                                         ; $5C54: $0D

jr_020_5C55:
    xor d                                         ; $5C55: $AA

jr_020_5C56:
    ld d, l                                       ; $5C56: $55
    nop                                           ; $5C57: $00
    db $10                                        ; $5C58: $10
    rra                                           ; $5C59: $1F
    rst RST_08                                    ; $5C5A: $CF
    dec de                                        ; $5C5B: $1B
    sbc e                                         ; $5C5C: $9B

jr_020_5C5D:
    xor a                                         ; $5C5D: $AF
    ld d, b                                       ; $5C5E: $50
    ld a, a                                       ; $5C5F: $7F
    ld a, l                                       ; $5C60: $7D
    rrca                                          ; $5C61: $0F
    ld [HeaderMaskROMVersion], sp                 ; $5C62: $08 $4C $01
    add hl, de                                    ; $5C65: $19
    rst RST_28                                    ; $5C66: $EF
    db $10                                        ; $5C67: $10
    jr jr_020_5C72                                ; $5C68: $18 $08

    cp e                                          ; $5C6A: $BB
    ld a, h                                       ; $5C6B: $7C

jr_020_5C6C:
    call nc, Call_000_3919                        ; $5C6C: $D4 $19 $39
    ld hl, sp+$58                                 ; $5C6F: $F8 $58
    db $FC                                        ; $5C71: $FC

jr_020_5C72:
    sbc e                                         ; $5C72: $9B
    jr nz, jr_020_5C6C                            ; $5C73: $20 $F7

    ld b, $08                                     ; $5C75: $06 $08

jr_020_5C77:
    cp $11                                        ; $5C77: $FE $11
    cp a                                          ; $5C79: $BF
    pop bc                                        ; $5C7A: $C1
    jr jr_020_5C55                                ; $5C7B: $18 $D8

    db $FD                                        ; $5C7D: $FD
    dec de                                        ; $5C7E: $1B
    inc bc                                        ; $5C7F: $03
    ld a, [hl]                                    ; $5C80: $7E
    add e                                         ; $5C81: $83
    adc c                                         ; $5C82: $89
    ld [$4802], sp                                ; $5C83: $08 $02 $48
    jr c, jr_020_5C56                             ; $5C86: $38 $CE

    jp z, $FA68                                   ; $5C88: $CA $68 $FA

    ld b, $20                                     ; $5C8B: $06 $20
    ld bc, $0FE0                                  ; $5C8D: $01 $E0 $0F

jr_020_5C90:
    nop                                           ; $5C90: $00
    ccf                                           ; $5C91: $3F
    xor a                                         ; $5C92: $AF
    ld d, b                                       ; $5C93: $50
    rla                                           ; $5C94: $17
    jr z, jr_020_5C26                             ; $5C95: $28 $8F

    ret nz                                        ; $5C97: $C0

    ld h, c                                       ; $5C98: $61
    inc d                                         ; $5C99: $14
    ld [hl], b                                    ; $5C9A: $70
    ld [hl-], a                                   ; $5C9B: $32
    db $F4                                        ; $5C9C: $F4
    jr jr_020_5C90                                ; $5C9D: $18 $F1

    ret nz                                        ; $5C9F: $C0

    ld [hl], e                                    ; $5CA0: $73
    ld c, b                                       ; $5CA1: $48
    dec b                                         ; $5CA2: $05
    ret c                                         ; $5CA3: $D8

    ld b, [hl]                                    ; $5CA4: $46
    ld l, a                                       ; $5CA5: $6F
    inc de                                        ; $5CA6: $13
    sbc a                                         ; $5CA7: $9F
    ldh [$FFE3], a                                ; $5CA8: $E0 $E3
    ret z                                         ; $5CAA: $C8

    ld c, b                                       ; $5CAB: $48
    ld a, l                                       ; $5CAC: $7D
    ld a, [bc]                                    ; $5CAD: $0A
    jr nc, jr_020_5C3E                            ; $5CAE: $30 $8E

    ret nz                                        ; $5CB0: $C0

    add b                                         ; $5CB1: $80
    add e                                         ; $5CB2: $83
    db $FD                                        ; $5CB3: $FD
    and d                                         ; $5CB4: $A2
    and b                                         ; $5CB5: $A0
    cp $08                                        ; $5CB6: $FE $08
    ld a, [$3D07]                                 ; $5CB8: $FA $07 $3D
    jr jr_020_5C77                                ; $5CBB: $18 $BA

    jr z, jr_020_5C46                             ; $5CBD: $28 $87

    cp l                                          ; $5CBF: $BD
    ld [$089A], sp                                ; $5CC0: $08 $9A $08
    inc e                                         ; $5CC3: $1C
    ld b, a                                       ; $5CC4: $47
    dec bc                                        ; $5CC5: $0B
    ld [$89E7], sp                                ; $5CC6: $08 $E7 $89
    rst RST_00                                    ; $5CC9: $C7
    ld c, [hl]                                    ; $5CCA: $4E
    jr jr_020_5CDE                                ; $5CCB: $18 $11

    or a                                          ; $5CCD: $B7
    inc h                                         ; $5CCE: $24
    jp nz, $1808                                  ; $5CCF: $C2 $08 $18

    ld [hl], a                                    ; $5CD2: $77
    inc d                                         ; $5CD3: $14
    scf                                           ; $5CD4: $37
    ld [bc], a                                    ; $5CD5: $02
    ld e, b                                       ; $5CD6: $58
    ld bc, $F08C                                  ; $5CD7: $01 $8C $F0
    add b                                         ; $5CDA: $80
    rst RST_38                                    ; $5CDB: $FF
    nop                                           ; $5CDC: $00
    inc c                                         ; $5CDD: $0C

jr_020_5CDE:
    dec sp                                        ; $5CDE: $3B
    sub b                                         ; $5CDF: $90
    rst RST_28                                    ; $5CE0: $EF
    ld hl, $DF30                                  ; $5CE1: $21 $30 $DF
    ld e, e                                       ; $5CE4: $5B
    add h                                         ; $5CE5: $84
    ei                                            ; $5CE6: $FB
    inc c                                         ; $5CE7: $0C
    rst RST_30                                    ; $5CE8: $F7
    ld a, e                                       ; $5CE9: $7B
    and c                                         ; $5CEA: $A1
    add hl, de                                    ; $5CEB: $19
    ld a, a                                       ; $5CEC: $7F
    db $10                                        ; $5CED: $10
    cp a                                          ; $5CEE: $BF
    ld b, b                                       ; $5CEF: $40
    ld e, a                                       ; $5CF0: $5F
    and b                                         ; $5CF1: $A0
    dec de                                        ; $5CF2: $1B
    nop                                           ; $5CF3: $00
    cpl                                           ; $5CF4: $2F
    ret nc                                        ; $5CF5: $D0

    ld d, a                                       ; $5CF6: $57
    xor b                                         ; $5CF7: $A8
    dec hl                                        ; $5CF8: $2B
    call nc, $FA05                                ; $5CF9: $D4 $05 $FA
    ld hl, $FC03                                  ; $5CFC: $21 $03 $FC
    add hl, de                                    ; $5CFF: $19
    ld [bc], a                                    ; $5D00: $02
    db $FD                                        ; $5D01: $FD
    ld bc, $1DFE                                  ; $5D02: $01 $FE $1D
    ld d, l                                       ; $5D05: $55
    inc a                                         ; $5D06: $3C
    nop                                           ; $5D07: $00
    rst RST_38                                    ; $5D08: $FF
    nop                                           ; $5D09: $00
    add c                                         ; $5D0A: $81
    ld [$0800], sp                                ; $5D0B: $08 $00 $08
    ld [hl], l                                    ; $5D0E: $75
    ldh [$FF08], a                                ; $5D0F: $E0 $08
    ld h, b                                       ; $5D11: $60
    add hl, hl                                    ; $5D12: $29
    rra                                           ; $5D13: $1F
    ld [$08E7], sp                                ; $5D14: $08 $E7 $08
    dec [hl]                                      ; $5D17: $35
    ld sp, hl                                     ; $5D18: $F9
    inc b                                         ; $5D19: $04
    and b                                         ; $5D1A: $A0
    nop                                           ; $5D1B: $00
    push af                                       ; $5D1C: $F5
    jr z, jr_020_5D26                             ; $5D1D: $28 $07

    ld [$FB64], sp                                ; $5D1F: $08 $64 $FB
    add sp, $48                                   ; $5D22: $E8 $48
    ld b, $76                                     ; $5D24: $06 $76

jr_020_5D26:
    jr nc, jr_020_5D9F                            ; $5D26: $30 $77

    inc bc                                        ; $5D28: $03
    pop hl                                        ; $5D29: $E1
    adc b                                         ; $5D2A: $88
    jr c, jr_020_5D45                             ; $5D2B: $38 $18

    add d                                         ; $5D2D: $82
    cp e                                          ; $5D2E: $BB
    ld b, c                                       ; $5D2F: $41
    db $DB                                        ; $5D30: $DB
    ld a, b                                       ; $5D31: $78
    ld d, l                                       ; $5D32: $55
    db $DD                                        ; $5D33: $DD
    jr c, @-$11                                   ; $5D34: $38 $ED

    jr jr_020_5D26                                ; $5D36: $18 $EE

    ld [$0CF6], sp                                ; $5D38: $08 $F6 $0C
    ld e, b                                       ; $5D3B: $58
    ld a, d                                       ; $5D3C: $7A
    ld [$68B9], sp                                ; $5D3D: $08 $B9 $68
    sbc b                                         ; $5D40: $98
    ld b, d                                       ; $5D41: $42
    rst RST_10                                    ; $5D42: $D7
    add [hl]                                      ; $5D43: $86
    dec c                                         ; $5D44: $0D

jr_020_5D45:
    adc $0C                                       ; $5D45: $CE $0C
    ld e, [hl]                                    ; $5D47: $5E
    rst RST_38                                    ; $5D48: $FF
    ld d, b                                       ; $5D49: $50
    rrca                                          ; $5D4A: $0F
    db $FC                                        ; $5D4B: $FC
    ld [$F008], sp                                ; $5D4C: $08 $08 $F0
    inc bc                                        ; $5D4F: $03
    db $E3                                        ; $5D50: $E3
    rrca                                          ; $5D51: $0F
    add hl, de                                    ; $5D52: $19
    ld d, h                                       ; $5D53: $54
    xor b                                         ; $5D54: $A8
    xor d                                         ; $5D55: $AA
    ld [hl], l                                    ; $5D56: $75
    ld d, l                                       ; $5D57: $55
    add e                                         ; $5D58: $83
    jr nz, jr_020_5D63                            ; $5D59: $20 $08

    and b                                         ; $5D5B: $A0
    ld [$0814], sp                                ; $5D5C: $08 $14 $08
    ld d, d                                       ; $5D5F: $52
    jp $F88A                                      ; $5D60: $C3 $8A $F8


jr_020_5D63:
    ld h, b                                       ; $5D63: $60
    ret nz                                        ; $5D64: $C0

    rlca                                          ; $5D65: $07
    jr nz, jr_020_5DA7                            ; $5D66: $20 $3F

    db $FD                                        ; $5D68: $FD
    nop                                           ; $5D69: $00
    ld e, b                                       ; $5D6A: $58
    dec b                                         ; $5D6B: $05
    add hl, sp                                    ; $5D6C: $39
    ld e, c                                       ; $5D6D: $59
    add b                                         ; $5D6E: $80
    rst RST_00                                    ; $5D6F: $C7
    ld [$A086], sp                                ; $5D70: $08 $86 $A0
    ld d, b                                       ; $5D73: $50
    di                                            ; $5D74: $F3
    add e                                         ; $5D75: $83
    rst RST_08                                    ; $5D76: $CF
    ldh [rOBP0], a                                ; $5D77: $E0 $48
    rra                                           ; $5D79: $1F
    nop                                           ; $5D7A: $00
    ld a, [hl+]                                   ; $5D7B: $2A
    nop                                           ; $5D7C: $00
    ld bc, $0210                                  ; $5D7D: $01 $10 $02
    db $10                                        ; $5D80: $10
    inc b                                         ; $5D81: $04
    db $10                                        ; $5D82: $10
    dec b                                         ; $5D83: $05
    xor d                                         ; $5D84: $AA
    db $10                                        ; $5D85: $10
    ld b, $10                                     ; $5D86: $06 $10
    rlca                                          ; $5D88: $07
    db $10                                        ; $5D89: $10
    ld [$0910], sp                                ; $5D8A: $08 $10 $09
    xor d                                         ; $5D8D: $AA
    inc d                                         ; $5D8E: $14
    ld a, [bc]                                    ; $5D8F: $0A
    ld [de], a                                    ; $5D90: $12
    dec bc                                        ; $5D91: $0B
    ld [de], a                                    ; $5D92: $12
    inc c                                         ; $5D93: $0C
    db $10                                        ; $5D94: $10
    dec c                                         ; $5D95: $0D
    xor e                                         ; $5D96: $AB
    db $10                                        ; $5D97: $10
    ld c, $10                                     ; $5D98: $0E $10
    rrca                                          ; $5D9A: $0F
    db $10                                        ; $5D9B: $10
    inc bc                                        ; $5D9C: $03
    rra                                           ; $5D9D: $1F
    rra                                           ; $5D9E: $1F

jr_020_5D9F:
    xor d                                         ; $5D9F: $AA
    ld [de], a                                    ; $5DA0: $12
    db $10                                        ; $5DA1: $10
    db $10                                        ; $5DA2: $10
    ld de, $1210                                  ; $5DA3: $11 $10 $12
    db $10                                        ; $5DA6: $10

jr_020_5DA7:
    ld [$10AA], sp                                ; $5DA7: $08 $AA $10
    inc de                                        ; $5DAA: $13
    db $10                                        ; $5DAB: $10
    inc d                                         ; $5DAC: $14
    db $10                                        ; $5DAD: $10
    dec d                                         ; $5DAE: $15
    db $10                                        ; $5DAF: $10
    ld d, $AA                                     ; $5DB0: $16 $AA
    db $10                                        ; $5DB2: $10
    rla                                           ; $5DB3: $17
    db $10                                        ; $5DB4: $10
    ld bc, $0210                                  ; $5DB5: $01 $10 $02
    db $10                                        ; $5DB8: $10
    inc b                                         ; $5DB9: $04
    xor d                                         ; $5DBA: $AA
    db $10                                        ; $5DBB: $10
    dec b                                         ; $5DBC: $05
    db $10                                        ; $5DBD: $10
    rlca                                          ; $5DBE: $07

jr_020_5DBF:
    db $10                                        ; $5DBF: $10
    jr jr_020_5DD2                                ; $5DC0: $18 $10

    add hl, de                                    ; $5DC2: $19
    xor e                                         ; $5DC3: $AB
    db $10                                        ; $5DC4: $10
    ld a, [de]                                    ; $5DC5: $1A
    db $10                                        ; $5DC6: $10
    dec de                                        ; $5DC7: $1B
    db $10                                        ; $5DC8: $10
    inc bc                                        ; $5DC9: $03
    rra                                           ; $5DCA: $1F
    rra                                           ; $5DCB: $1F
    xor d                                         ; $5DCC: $AA
    ld [de], a                                    ; $5DCD: $12
    inc e                                         ; $5DCE: $1C
    db $10                                        ; $5DCF: $10
    dec e                                         ; $5DD0: $1D
    db $10                                        ; $5DD1: $10

jr_020_5DD2:
    jr nz, jr_020_5DE4                            ; $5DD2: $20 $10

    ld hl, $10AA                                  ; $5DD4: $21 $AA $10
    inc h                                         ; $5DD7: $24
    db $10                                        ; $5DD8: $10
    dec h                                         ; $5DD9: $25
    ld d, h                                       ; $5DDA: $54
    ld a, [hl+]                                   ; $5DDB: $2A
    db $10                                        ; $5DDC: $10
    inc e                                         ; $5DDD: $1C
    xor d                                         ; $5DDE: $AA
    db $10                                        ; $5DDF: $10
    inc l                                         ; $5DE0: $2C
    db $10                                        ; $5DE1: $10
    dec l                                         ; $5DE2: $2D
    ld [de], a                                    ; $5DE3: $12

jr_020_5DE4:
    cpl                                           ; $5DE4: $2F
    db $10                                        ; $5DE5: $10
    ld sp, $10AA                                  ; $5DE6: $31 $AA $10
    ld [hl-], a                                   ; $5DE9: $32
    db $10                                        ; $5DEA: $10
    dec [hl]                                      ; $5DEB: $35
    db $10                                        ; $5DEC: $10
    ld [hl], $10                                  ; $5DED: $36 $10
    ld e, $AA                                     ; $5DEF: $1E $AA
    db $10                                        ; $5DF1: $10
    rra                                           ; $5DF2: $1F
    db $10                                        ; $5DF3: $10
    ld [hl+], a                                   ; $5DF4: $22
    db $10                                        ; $5DF5: $10
    inc hl                                        ; $5DF6: $23
    db $10                                        ; $5DF7: $10
    ld h, $AA                                     ; $5DF8: $26 $AA
    db $10                                        ; $5DFA: $10
    daa                                           ; $5DFB: $27
    db $10                                        ; $5DFC: $10
    jr z, jr_020_5E0F                             ; $5DFD: $28 $10

    add hl, hl                                    ; $5DFF: $29
    db $10                                        ; $5E00: $10
    dec hl                                        ; $5E01: $2B
    xor d                                         ; $5E02: $AA
    db $10                                        ; $5E03: $10
    inc e                                         ; $5E04: $1C
    ld [de], a                                    ; $5E05: $12
    ld l, $32                                     ; $5E06: $2E $32
    jr nc, jr_020_5E1A                            ; $5E08: $30 $10

    inc sp                                        ; $5E0A: $33
    xor d                                         ; $5E0B: $AA
    db $10                                        ; $5E0C: $10
    inc [hl]                                      ; $5E0D: $34
    db $10                                        ; $5E0E: $10

jr_020_5E0F:
    dec h                                         ; $5E0F: $25
    db $10                                        ; $5E10: $10
    scf                                           ; $5E11: $37
    db $10                                        ; $5E12: $10
    jr c, jr_020_5DBF                             ; $5E13: $38 $AA

    db $10                                        ; $5E15: $10
    add hl, sp                                    ; $5E16: $39
    db $10                                        ; $5E17: $10
    inc a                                         ; $5E18: $3C
    db $10                                        ; $5E19: $10

jr_020_5E1A:
    dec a                                         ; $5E1A: $3D
    db $10                                        ; $5E1B: $10
    ld b, b                                       ; $5E1C: $40
    xor d                                         ; $5E1D: $AA

Call_020_5E1E:
    db $10                                        ; $5E1E: $10
    ld b, c                                       ; $5E1F: $41
    db $10                                        ; $5E20: $10
    ld b, h                                       ; $5E21: $44
    db $10                                        ; $5E22: $10
    ld b, l                                       ; $5E23: $45
    db $10                                        ; $5E24: $10
    ld c, b                                       ; $5E25: $48
    xor d                                         ; $5E26: $AA
    db $10                                        ; $5E27: $10
    ld c, c                                       ; $5E28: $49
    db $10                                        ; $5E29: $10
    ld c, h                                       ; $5E2A: $4C
    db $10                                        ; $5E2B: $10
    ld c, l                                       ; $5E2C: $4D
    db $10                                        ; $5E2D: $10
    ld d, b                                       ; $5E2E: $50
    xor d                                         ; $5E2F: $AA
    db $10                                        ; $5E30: $10
    ld d, c                                       ; $5E31: $51
    db $10                                        ; $5E32: $10
    ld d, h                                       ; $5E33: $54
    db $10                                        ; $5E34: $10
    ld d, l                                       ; $5E35: $55
    db $10                                        ; $5E36: $10
    ld e, b                                       ; $5E37: $58
    xor d                                         ; $5E38: $AA
    db $10                                        ; $5E39: $10
    ld e, c                                       ; $5E3A: $59
    db $10                                        ; $5E3B: $10
    ld a, [hl-]                                   ; $5E3C: $3A
    db $10                                        ; $5E3D: $10
    dec sp                                        ; $5E3E: $3B
    db $10                                        ; $5E3F: $10
    ld a, $AA                                     ; $5E40: $3E $AA
    db $10                                        ; $5E42: $10
    ccf                                           ; $5E43: $3F
    db $10                                        ; $5E44: $10
    ld b, d                                       ; $5E45: $42
    db $10                                        ; $5E46: $10
    ld b, e                                       ; $5E47: $43
    db $10                                        ; $5E48: $10
    ld b, [hl]                                    ; $5E49: $46
    xor d                                         ; $5E4A: $AA
    db $10                                        ; $5E4B: $10
    ld b, a                                       ; $5E4C: $47
    db $10                                        ; $5E4D: $10
    ld c, d                                       ; $5E4E: $4A
    db $10                                        ; $5E4F: $10
    ld c, e                                       ; $5E50: $4B
    db $10                                        ; $5E51: $10
    ld c, [hl]                                    ; $5E52: $4E
    xor d                                         ; $5E53: $AA
    db $10                                        ; $5E54: $10
    ld c, a                                       ; $5E55: $4F
    db $10                                        ; $5E56: $10
    ld d, d                                       ; $5E57: $52
    db $10                                        ; $5E58: $10
    ld d, e                                       ; $5E59: $53
    db $10                                        ; $5E5A: $10
    ld d, [hl]                                    ; $5E5B: $56
    xor d                                         ; $5E5C: $AA
    db $10                                        ; $5E5D: $10
    ld d, a                                       ; $5E5E: $57
    db $10                                        ; $5E5F: $10
    ld e, d                                       ; $5E60: $5A
    ldh a, [c]                                    ; $5E61: $F2
    ld e, e                                       ; $5E62: $5B
    db $10                                        ; $5E63: $10
    ld e, h                                       ; $5E64: $5C
    xor d                                         ; $5E65: $AA
    db $10                                        ; $5E66: $10
    ld e, a                                       ; $5E67: $5F
    db $10                                        ; $5E68: $10
    ld h, b                                       ; $5E69: $60
    db $10                                        ; $5E6A: $10
    ld h, e                                       ; $5E6B: $63
    db $10                                        ; $5E6C: $10
    ld h, h                                       ; $5E6D: $64
    xor d                                         ; $5E6E: $AA
    db $10                                        ; $5E6F: $10
    ld h, a                                       ; $5E70: $67
    db $10                                        ; $5E71: $10
    ld l, b                                       ; $5E72: $68
    db $10                                        ; $5E73: $10
    ld e, l                                       ; $5E74: $5D
    ld d, $69                                     ; $5E75: $16 $69
    xor d                                         ; $5E77: $AA
    db $10                                        ; $5E78: $10
    ld l, d                                       ; $5E79: $6A
    db $10                                        ; $5E7A: $10
    ld l, l                                       ; $5E7B: $6D
    db $10                                        ; $5E7C: $10
    ld l, [hl]                                    ; $5E7D: $6E
    db $10                                        ; $5E7E: $10
    ld [hl], c                                    ; $5E7F: $71
    xor d                                         ; $5E80: $AA
    call nc, Call_000_105E                        ; $5E81: $D4 $5E $10
    ld h, c                                       ; $5E84: $61
    db $10                                        ; $5E85: $10
    ld h, d                                       ; $5E86: $62
    db $10                                        ; $5E87: $10
    ld h, l                                       ; $5E88: $65
    or l                                          ; $5E89: $B5
    db $10                                        ; $5E8A: $10
    ld h, [hl]                                    ; $5E8B: $66
    call nc, Call_020_6B17                        ; $5E8C: $D4 $17 $6B
    db $10                                        ; $5E8F: $10
    ld l, h                                       ; $5E90: $6C
    db $10                                        ; $5E91: $10
    ld d, h                                       ; $5E92: $54
    ld l, a                                       ; $5E93: $6F
    db $10                                        ; $5E94: $10
    ld [hl], b                                    ; $5E95: $70
    db $10                                        ; $5E96: $10
    ld [hl], d                                    ; $5E97: $72
    or c                                          ; $5E98: $B1
    sbc d                                         ; $5E99: $9A
    add b                                         ; $5E9A: $80
    ld a, l                                       ; $5E9B: $7D
    nop                                           ; $5E9C: $00
    inc bc                                        ; $5E9D: $03
    inc bc                                        ; $5E9E: $03
    inc bc                                        ; $5E9F: $03
    inc bc                                        ; $5EA0: $03
    nop                                           ; $5EA1: $00
    cp $00                                        ; $5EA2: $FE $00
    ld d, l                                       ; $5EA4: $55
    ld [bc], a                                    ; $5EA5: $02
    nop                                           ; $5EA6: $00
    inc b                                         ; $5EA7: $04
    nop                                           ; $5EA8: $00
    ld c, b                                       ; $5EA9: $48
    nop                                           ; $5EAA: $00
    jr nc, jr_020_5EAD                            ; $5EAB: $30 $00

jr_020_5EAD:
    ld d, l                                       ; $5EAD: $55
    stop                                          ; $5EAE: $10 $00
    ld [$0600], sp                                ; $5EB0: $08 $00 $06
    nop                                           ; $5EB3: $00
    ld a, b                                       ; $5EB4: $78
    nop                                           ; $5EB5: $00
    cp l                                          ; $5EB6: $BD
    dec d                                         ; $5EB7: $15
    rst RST_38                                    ; $5EB8: $FF
    nop                                           ; $5EB9: $00
    dec c                                         ; $5EBA: $0D
    ld bc, $203D                                  ; $5EBB: $01 $3D $20
    nop                                           ; $5EBE: $00
    or $87                                        ; $5EBF: $F6 $87
    inc bc                                        ; $5EC1: $03
    inc bc                                        ; $5EC2: $03
    inc bc                                        ; $5EC3: $03
    inc de                                        ; $5EC4: $13
    nop                                           ; $5EC5: $00
    ld d, l                                       ; $5EC6: $55
    ld a, [hl]                                    ; $5EC7: $7E
    xor e                                         ; $5EC8: $AB
    nop                                           ; $5EC9: $00
    ld [de], a                                    ; $5ECA: $12
    ld [bc], a                                    ; $5ECB: $02
    ld [hl+], a                                   ; $5ECC: $22
    ld [bc], a                                    ; $5ECD: $02
    ld c, h                                       ; $5ECE: $4C
    nop                                           ; $5ECF: $00
    rst RST_28                                    ; $5ED0: $EF
    xor a                                         ; $5ED1: $AF
    and l                                         ; $5ED2: $A5
    jr c, jr_020_5ED5                             ; $5ED3: $38 $00

jr_020_5ED5:
    ret z                                         ; $5ED5: $C8

    nop                                           ; $5ED6: $00
    rst RST_00                                    ; $5ED7: $C7
    rst RST_08                                    ; $5ED8: $CF
    ld a, a                                       ; $5ED9: $7F
    xor l                                         ; $5EDA: $AD
    dec e                                         ; $5EDB: $1D
    inc a                                         ; $5EDC: $3C
    nop                                           ; $5EDD: $00
    ld b, b                                       ; $5EDE: $40
    ld [bc], a                                    ; $5EDF: $02
    dec d                                         ; $5EE0: $15
    ld b, e                                       ; $5EE1: $43
    nop                                           ; $5EE2: $00
    ld d, l                                       ; $5EE3: $55
    ld b, h                                       ; $5EE4: $44
    nop                                           ; $5EE5: $00
    ldh a, [c]                                    ; $5EE6: $F2
    nop                                           ; $5EE7: $00
    ld c, d                                       ; $5EE8: $4A
    nop                                           ; $5EE9: $00
    ld c, c                                       ; $5EEA: $49
    ld [bc], a                                    ; $5EEB: $02
    ld d, a                                       ; $5EEC: $57
    adc b                                         ; $5EED: $88

jr_020_5EEE:
    nop                                           ; $5EEE: $00
    or b                                          ; $5EEF: $B0
    nop                                           ; $5EF0: $00
    jr nz, jr_020_5EF6                            ; $5EF1: $20 $03

    inc bc                                        ; $5EF3: $03
    nop                                           ; $5EF4: $00
    ld l, d                                       ; $5EF5: $6A

jr_020_5EF6:
    ld hl, $FD00                                  ; $5EF6: $21 $00 $FD
    inc e                                         ; $5EF9: $1C
    nop                                           ; $5EFA: $00
    nop                                           ; $5EFB: $00
    nop                                           ; $5EFC: $00
    jr nc, jr_020_5EEE                            ; $5EFD: $30 $EF

    nop                                           ; $5EFF: $00
    push af                                       ; $5F00: $F5
    sbc l                                         ; $5F01: $9D
    ld a, $00                                     ; $5F02: $3E $00
    dec c                                         ; $5F04: $0D
    dec e                                         ; $5F05: $1D
    dec l                                         ; $5F06: $2D
    rst RST_38                                    ; $5F07: $FF
    dec a                                         ; $5F08: $3D
    ld b, c                                       ; $5F09: $41
    inc b                                         ; $5F0A: $04
    inc e                                         ; $5F0B: $1C
    inc b                                         ; $5F0C: $04
    inc l                                         ; $5F0D: $2C
    inc b                                         ; $5F0E: $04
    inc a                                         ; $5F0F: $3C
    rst RST_38                                    ; $5F10: $FF
    ld c, $1D                                     ; $5F11: $0E $1D
    ld a, $3B                                     ; $5F13: $3E $3B
    dec sp                                        ; $5F15: $3B
    dec sp                                        ; $5F16: $3B
    ld a, e                                       ; $5F17: $7B
    rst RST_28                                    ; $5F18: $EF
    xor [hl]                                      ; $5F19: $AE
    push hl                                       ; $5F1A: $E5
    inc h                                         ; $5F1B: $24
    nop                                           ; $5F1C: $00
    jr z, jr_020_5F1F                             ; $5F1D: $28 $00

jr_020_5F1F:
    or a                                          ; $5F1F: $B7
    inc bc                                        ; $5F20: $03
    ld h, $AA                                     ; $5F21: $26 $AA
    nop                                           ; $5F23: $00
    ld d, b                                       ; $5F24: $50
    nop                                           ; $5F25: $00
    adc b                                         ; $5F26: $88
    nop                                           ; $5F27: $00
    inc b                                         ; $5F28: $04
    nop                                           ; $5F29: $00
    ld [bc], a                                    ; $5F2A: $02
    db $DD                                        ; $5F2B: $DD
    nop                                           ; $5F2C: $00
    scf                                           ; $5F2D: $37
    ld [$6500], sp                                ; $5F2E: $08 $00 $65
    ld bc, $0029                                  ; $5F31: $01 $29 $00
    ld e, d                                       ; $5F34: $5A
    ld a, [hl+]                                   ; $5F35: $2A
    nop                                           ; $5F36: $00
    ld c, h                                       ; $5F37: $4C
    nop                                           ; $5F38: $00
    ccf                                           ; $5F39: $3F
    ld h, b                                       ; $5F3A: $60
    nop                                           ; $5F3B: $00
    ld a, [hl]                                    ; $5F3C: $7E
    push de                                       ; $5F3D: $D5
    nop                                           ; $5F3E: $00
    dec c                                         ; $5F3F: $0D
    ld a, h                                       ; $5F40: $7C
    nop                                           ; $5F41: $00
    ld b, $00                                     ; $5F42: $06 $00
    ld h, [hl]                                    ; $5F44: $66
    nop                                           ; $5F45: $00
    ld l, a                                       ; $5F46: $6F
    inc a                                         ; $5F47: $3C
    nop                                           ; $5F48: $00
    db $ED                                        ; $5F49: $ED
    inc e                                         ; $5F4A: $1C
    nop                                           ; $5F4B: $00
    ld c, l                                       ; $5F4C: $4D
    dec [hl]                                      ; $5F4D: $35
    xor l                                         ; $5F4E: $AD
    push de                                       ; $5F4F: $D5
    ld bc, $38C5                                  ; $5F50: $01 $C5 $38
    nop                                           ; $5F53: $00
    stop                                          ; $5F54: $10 $00
    inc c                                         ; $5F56: $0C
    nop                                           ; $5F57: $00
    push de                                       ; $5F58: $D5
    ccf                                           ; $5F59: $3F
    push de                                       ; $5F5A: $D5
    jr jr_020_5F5D                                ; $5F5B: $18 $00

jr_020_5F5D:
    inc h                                         ; $5F5D: $24
    nop                                           ; $5F5E: $00
    ld b, a                                       ; $5F5F: $47
    nop                                           ; $5F60: $00
    db $DD                                        ; $5F61: $DD
    ld a, l                                       ; $5F62: $7D
    ld bc, $0016                                  ; $5F63: $01 $16 $00
    dec l                                         ; $5F66: $2D
    dec d                                         ; $5F67: $15
    ld b, b                                       ; $5F68: $40
    ld [bc], a                                    ; $5F69: $02
    ld l, e                                       ; $5F6A: $6B
    ld a, $00                                     ; $5F6B: $3E $00
    ccf                                           ; $5F6D: $3F
    ldh a, [rP1]                                  ; $5F6E: $F0 $00
    ld c, [hl]                                    ; $5F70: $4E
    nop                                           ; $5F71: $00
    scf                                           ; $5F72: $37
    ld e, l                                       ; $5F73: $5D
    sub b                                         ; $5F74: $90
    nop                                           ; $5F75: $00
    adc [hl]                                      ; $5F76: $8E
    nop                                           ; $5F77: $00
    xor l                                         ; $5F78: $AD
    ld c, l                                       ; $5F79: $4D
    ret z                                         ; $5F7A: $C8

    nop                                           ; $5F7B: $00
    ld [hl], a                                    ; $5F7C: $77
    inc de                                        ; $5F7D: $13
    nop                                           ; $5F7E: $00
    ld e, a                                       ; $5F7F: $5F
    ld bc, $001C                                  ; $5F80: $01 $1C $00
    dec a                                         ; $5F83: $3D
    inc bc                                        ; $5F84: $03
    ld a, [$0103]                                 ; $5F85: $FA $03 $01
    add l                                         ; $5F88: $85
    ld b, l                                       ; $5F89: $45
    ld a, [de]                                    ; $5F8A: $1A
    ld h, b                                       ; $5F8B: $60
    inc b                                         ; $5F8C: $04
    ld a, [hl]                                    ; $5F8D: $7E
    xor d                                         ; $5F8E: $AA
    ld c, $7C                                     ; $5F8F: $0E $7C
    inc b                                         ; $5F91: $04
    ld b, $04                                     ; $5F92: $06 $04
    ld h, [hl]                                    ; $5F94: $66
    inc b                                         ; $5F95: $04
    inc a                                         ; $5F96: $3C
    push de                                       ; $5F97: $D5
    ld e, a                                       ; $5F98: $5F
    sub l                                         ; $5F99: $95
    ldh [c], a                                    ; $5F9A: $E2
    nop                                           ; $5F9B: $00
    ld bc, $0202                                  ; $5F9C: $01 $02 $02
    nop                                           ; $5F9F: $00
    cp l                                          ; $5FA0: $BD
    dec h                                         ; $5FA1: $25
    stop                                          ; $5FA2: $10 $00
    ld [hl], b                                    ; $5FA4: $70
    nop                                           ; $5FA5: $00
    dec c                                         ; $5FA6: $0D
    ld a, $00                                     ; $5FA7: $3E $00
    ld d, a                                       ; $5FA9: $57
    ld d, l                                       ; $5FAA: $55
    nop                                           ; $5FAB: $00
    sbc c                                         ; $5FAC: $99
    nop                                           ; $5FAD: $00
    pop hl                                        ; $5FAE: $E1
    nop                                           ; $5FAF: $00
    adc b                                         ; $5FB0: $88
    nop                                           ; $5FB1: $00
    db $DD                                        ; $5FB2: $DD
    add b                                         ; $5FB3: $80
    nop                                           ; $5FB4: $00
    ld [$3D00], sp                                ; $5FB5: $08 $00 $3D
    dec d                                         ; $5FB8: $15
    ld b, d                                       ; $5FB9: $42
    nop                                           ; $5FBA: $00
    ld e, e                                       ; $5FBB: $5B
    ld a, [de]                                    ; $5FBC: $1A
    nop                                           ; $5FBD: $00
    ld h, $00                                     ; $5FBE: $26 $00
    ld a, l                                       ; $5FC0: $7D
    ld a, e                                       ; $5FC1: $7B
    nop                                           ; $5FC2: $00
    dec a                                         ; $5FC3: $3D
    ld e, e                                       ; $5FC4: $5B
    jr nc, jr_020_5FC7                            ; $5FC5: $30 $00

jr_020_5FC7:
    cp $00                                        ; $5FC7: $FE $00
    ld c, l                                       ; $5FC9: $4D
    jr nz, jr_020_5FCE                            ; $5FCA: $20 $02

    dec a                                         ; $5FCC: $3D
    halt                                          ; $5FCD: $76

jr_020_5FCE:
    ld [hl], $03                                  ; $5FCE: $36 $03
    inc bc                                        ; $5FD0: $03
    nop                                           ; $5FD1: $00
    nop                                           ; $5FD2: $00
    nop                                           ; $5FD3: $00
    rla                                           ; $5FD4: $17
    rst RST_38                                    ; $5FD5: $FF
    reti                                          ; $5FD6: $D9


    inc d                                         ; $5FD7: $14
    dec b                                         ; $5FD8: $05
    rst RST_30                                    ; $5FD9: $F7
    add h                                         ; $5FDA: $84
    dec b                                         ; $5FDB: $05
    ret                                           ; $5FDC: $C9


    ld a, $17                                     ; $5FDD: $3E $17
    ld sp, hl                                     ; $5FDF: $F9
    scf                                           ; $5FE0: $37
    rlca                                          ; $5FE1: $07
    rlca                                          ; $5FE2: $07
    rlca                                          ; $5FE3: $07
    rlca                                          ; $5FE4: $07
    db $FD                                        ; $5FE5: $FD
    ld b, $17                                     ; $5FE6: $06 $17
    rrca                                          ; $5FE8: $0F
    rst RST_18                                    ; $5FE9: $DF
    ld h, b                                       ; $5FEA: $60
    cp e                                          ; $5FEB: $BB
    ld b, h                                       ; $5FEC: $44
    rra                                           ; $5FED: $1F
    ccf                                           ; $5FEE: $3F
    rla                                           ; $5FEF: $17
    ccf                                           ; $5FF0: $3F
    sub d                                         ; $5FF1: $92
    ld e, $01                                     ; $5FF2: $1E $01
    cp $34                                        ; $5FF4: $FE $34
    ld hl, sp+$09                                 ; $5FF6: $F8 $09
    ld c, $19                                     ; $5FF8: $0E $19
    dec c                                         ; $5FFA: $0D
    ldh [$FF27], a                                ; $5FFB: $E0 $27
    jp $0D5F                                      ; $5FFD: $C3 $5F $0D


    inc e                                         ; $6000: $1C
    jr @+$71                                      ; $6001: $18 $6F

    pop de                                        ; $6003: $D1
    rlca                                          ; $6004: $07
    ld b, $07                                     ; $6005: $06 $07
    inc [hl]                                      ; $6007: $34
    ld a, b                                       ; $6008: $78
    add b                                         ; $6009: $80
    add [hl]                                      ; $600A: $86
    daa                                           ; $600B: $27
    sbc h                                         ; $600C: $9C
    rlca                                          ; $600D: $07
    db $FC                                        ; $600E: $FC
    inc bc                                        ; $600F: $03
    inc c                                         ; $6010: $0C
    ld de, $B800                                  ; $6011: $11 $00 $B8
    cp c                                          ; $6014: $B9
    adc b                                         ; $6015: $88
    ret nz                                        ; $6016: $C0

    ld a, l                                       ; $6017: $7D
    ld [bc], a                                    ; $6018: $02
    ld a, [$3D0C]                                 ; $6019: $FA $0C $3D
    dec e                                         ; $601C: $1D
    db $FD                                        ; $601D: $FD
    rst RST_10                                    ; $601E: $D7
    call z, $7E02                                 ; $601F: $CC $02 $7E
    inc b                                         ; $6022: $04
    rrca                                          ; $6023: $0F
    ld c, h                                       ; $6024: $4C
    inc [hl]                                      ; $6025: $34
    nop                                           ; $6026: $00
    jp c, Jump_000_00DC                           ; $6027: $DA $DC $00

    pop bc                                        ; $602A: $C1
    nop                                           ; $602B: $00
    db $E4                                        ; $602C: $E4
    ld [$EC04], a                                 ; $602D: $EA $04 $EC
    dec h                                         ; $6030: $25
    ldh a, [$FFF5]                                ; $6031: $F0 $F5
    inc b                                         ; $6033: $04
    db $F4                                        ; $6034: $F4
    ld [hl], b                                    ; $6035: $70
    nop                                           ; $6036: $00
    ld sp, hl                                     ; $6037: $F9
    call nc, $E605                                ; $6038: $D4 $05 $E6
    rra                                           ; $603B: $1F
    sbc c                                         ; $603C: $99
    ld a, a                                       ; $603D: $7F
    scf                                           ; $603E: $37
    ld e, h                                       ; $603F: $5C
    adc a                                         ; $6040: $8F
    cp c                                          ; $6041: $B9
    ei                                            ; $6042: $FB
    cp [hl]                                       ; $6043: $BE
    pop hl                                        ; $6044: $E1
    inc bc                                        ; $6045: $03
    inc bc                                        ; $6046: $03
    inc bc                                        ; $6047: $03
    inc bc                                        ; $6048: $03
    nop                                           ; $6049: $00
    inc a                                         ; $604A: $3C
    ld l, d                                       ; $604B: $6A
    db $FC                                        ; $604C: $FC
    inc b                                         ; $604D: $04
    ld l, h                                       ; $604E: $6C
    cp a                                          ; $604F: $BF
    nop                                           ; $6050: $00
    ret z                                         ; $6051: $C8

    nop                                           ; $6052: $00
    push hl                                       ; $6053: $E5
    add [hl]                                      ; $6054: $86
    ld [bc], a                                    ; $6055: $02
    ld h, d                                       ; $6056: $62
    ld l, d                                       ; $6057: $6A
    ld [hl+], a                                   ; $6058: $22
    ld a, [hl+]                                   ; $6059: $2A
    ld bc, $0185                                  ; $605A: $01 $85 $01
    add b                                         ; $605D: $80
    nop                                           ; $605E: $00
    ld b, $0E                                     ; $605F: $06 $0E
    add b                                         ; $6061: $80
    and c                                         ; $6062: $A1
    ld [bc], a                                    ; $6063: $02
    ld h, $C0                                     ; $6064: $26 $C0
    rra                                           ; $6066: $1F
    pop bc                                        ; $6067: $C1
    ld [hl-], a                                   ; $6068: $32
    ld [hl], $34                                  ; $6069: $36 $34
    inc c                                         ; $606B: $0C
    sbc a                                         ; $606C: $9F
    inc bc                                        ; $606D: $03
    inc bc                                        ; $606E: $03
    cp a                                          ; $606F: $BF
    ld bc, $001F                                  ; $6070: $01 $1F $00
    rla                                           ; $6073: $17
    inc bc                                        ; $6074: $03
    inc bc                                        ; $6075: $03
    inc bc                                        ; $6076: $03
    add h                                         ; $6077: $84
    ld h, h                                       ; $6078: $64
    ldh [$FFAC], a                                ; $6079: $E0 $AC
    inc c                                         ; $607B: $0C
    ld a, h                                       ; $607C: $7C
    ld a, a                                       ; $607D: $7F
    ld e, b                                       ; $607E: $58
    sbc a                                         ; $607F: $9F
    ld b, b                                       ; $6080: $40
    dec d                                         ; $6081: $15
    ld l, h                                       ; $6082: $6C
    db $10                                        ; $6083: $10
    inc de                                        ; $6084: $13
    inc l                                         ; $6085: $2C
    ld b, a                                       ; $6086: $47
    inc b                                         ; $6087: $04
    ld d, a                                       ; $6088: $57
    ld b, l                                       ; $6089: $45
    ld c, e                                       ; $608A: $4B
    rrca                                          ; $608B: $0F
    nop                                           ; $608C: $00
    ld bc, $4CF1                                  ; $608D: $01 $F1 $4C
    add $24                                       ; $6090: $C6 $24
    jr c, jr_020_60B7                             ; $6092: $38 $23

    ld [de], a                                    ; $6094: $12
    sub $0C                                       ; $6095: $D6 $0C
    ret nc                                        ; $6097: $D0

    ld [bc], a                                    ; $6098: $02
    xor $8F                                       ; $6099: $EE $8F
    ld bc, $80D0                                  ; $609B: $01 $D0 $80
    add [hl]                                      ; $609E: $86
    dec c                                         ; $609F: $0D
    ld e, h                                       ; $60A0: $5C
    xor [hl]                                      ; $60A1: $AE
    xor a                                         ; $60A2: $AF
    adc b                                         ; $60A3: $88
    adc a                                         ; $60A4: $8F
    ld d, [hl]                                    ; $60A5: $56
    db $FC                                        ; $60A6: $FC
    ld bc, $05FD                                  ; $60A7: $01 $FD $05
    ldh a, [$FF84]                                ; $60AA: $F0 $84
    ret c                                         ; $60AC: $D8

    db $ED                                        ; $60AD: $ED
    call nc, Call_000_000C                        ; $60AE: $D4 $0C $00
    and b                                         ; $60B1: $A0
    inc c                                         ; $60B2: $0C

jr_020_60B3:
    ld d, b                                       ; $60B3: $50
    inc e                                         ; $60B4: $1C
    ccf                                           ; $60B5: $3F
    ret nz                                        ; $60B6: $C0

jr_020_60B7:
    cpl                                           ; $60B7: $2F
    rst RST_00                                    ; $60B8: $C7
    ld hl, sp+$10                                 ; $60B9: $F8 $10
    cp $44                                        ; $60BB: $FE $44
    add h                                         ; $60BD: $84
    ld [$E89B], sp                                ; $60BE: $08 $9B $E8
    inc bc                                        ; $60C1: $03
    ret nc                                        ; $60C2: $D0

    ld b, $03                                     ; $60C3: $06 $03
    inc [hl]                                      ; $60C5: $34
    ld b, $7C                                     ; $60C6: $06 $7C
    add l                                         ; $60C8: $85
    ld a, [bc]                                    ; $60C9: $0A
    inc a                                         ; $60CA: $3C
    call $F998                                    ; $60CB: $CD $98 $F9
    adc b                                         ; $60CE: $88
    push af                                       ; $60CF: $F5
    ld b, c                                       ; $60D0: $41
    ld a, [hl]                                    ; $60D1: $7E

jr_020_60D2:
    ret                                           ; $60D2: $C9


    ld [bc], a                                    ; $60D3: $02
    jr c, @-$78                                   ; $60D4: $38 $86

    jr c, jr_020_60D8                             ; $60D6: $38 $00

jr_020_60D8:
    ld [hl], b                                    ; $60D8: $70
    ld [hl], l                                    ; $60D9: $75
    rlca                                          ; $60DA: $07
    and e                                         ; $60DB: $A3
    cp b                                          ; $60DC: $B8
    jp Jump_000_1178                              ; $60DD: $C3 $78 $11


    ret z                                         ; $60E0: $C8

    call c, Call_000_1C05                         ; $60E1: $DC $05 $1C
    add hl, bc                                    ; $60E4: $09
    ret nc                                        ; $60E5: $D0

    ld h, b                                       ; $60E6: $60
    ld l, [hl]                                    ; $60E7: $6E
    ld l, l                                       ; $60E8: $6D
    nop                                           ; $60E9: $00
    inc h                                         ; $60EA: $24
    xor l                                         ; $60EB: $AD
    cp a                                          ; $60EC: $BF
    add c                                         ; $60ED: $81
    inc b                                         ; $60EE: $04
    ld hl, sp+$0F                                 ; $60EF: $F8 $0F
    inc c                                         ; $60F1: $0C
    scf                                           ; $60F2: $37
    ld [hl], $4B                                  ; $60F3: $36 $4B
    nop                                           ; $60F5: $00
    xor l                                         ; $60F6: $AD
    jr nz, @+$32                                  ; $60F7: $20 $30

    inc b                                         ; $60F9: $04
    ld c, d                                       ; $60FA: $4A
    ccf                                           ; $60FB: $3F
    rlca                                          ; $60FC: $07
    rst RST_28                                    ; $60FD: $EF
    inc l                                         ; $60FE: $2C
    add hl, hl                                    ; $60FF: $29
    rst RST_18                                    ; $6100: $DF
    and b                                         ; $6101: $A0
    inc d                                         ; $6102: $14
    add b                                         ; $6103: $80
    push af                                       ; $6104: $F5
    jr nz, jr_020_60B3                            ; $6105: $20 $AC

    sbc h                                         ; $6107: $9C
    ld b, $69                                     ; $6108: $06 $69
    ld [bc], a                                    ; $610A: $02
    rla                                           ; $610B: $17
    jp z, Jump_020_40CF                           ; $610C: $CA $CF $40

    ld bc, $0C3C                                  ; $610F: $01 $3C $0C
    inc e                                         ; $6112: $1C
    cp [hl]                                       ; $6113: $BE
    jr c, jr_020_60D2                             ; $6114: $38 $BC

    inc a                                         ; $6116: $3C
    nop                                           ; $6117: $00
    ld e, $9E                                     ; $6118: $1E $9E
    ld [bc], a                                    ; $611A: $02
    ld [hl], h                                    ; $611B: $74
    ld a, h                                       ; $611C: $7C
    ld c, b                                       ; $611D: $48
    ld a, b                                       ; $611E: $78
    sub b                                         ; $611F: $90
    ldh a, [$FF78]                                ; $6120: $F0 $78
    push hl                                       ; $6122: $E5
    rrca                                          ; $6123: $0F
    ldh [$FFEA], a                                ; $6124: $E0 $EA
    ret nz                                        ; $6126: $C0

    jp c, Jump_000_07AF                           ; $6127: $DA $AF $07

    rlca                                          ; $612A: $07
    ld b, $7E                                     ; $612B: $06 $7E
    adc $17                                       ; $612D: $CE $17
    rlca                                          ; $612F: $07
    cp $A4                                        ; $6130: $FE $A4
    ld e, $C0                                     ; $6132: $1E $C0
    ld a, e                                       ; $6134: $7B
    rla                                           ; $6135: $17
    ld e, e                                       ; $6136: $5B
    ld [hl], c                                    ; $6137: $71
    ld d, l                                       ; $6138: $55
    inc b                                         ; $6139: $04
    ld [hl], l                                    ; $613A: $75
    sbc h                                         ; $613B: $9C
    nop                                           ; $613C: $00
    jr c, @+$06                                   ; $613D: $38 $04

    ld [hl], $70                                  ; $613F: $36 $70
    halt                                          ; $6141: $76
    ld hl, sp-$07                                 ; $6142: $F8 $F9
    inc b                                         ; $6144: $04
    ei                                            ; $6145: $FB
    rst RST_20                                    ; $6146: $E7
    nop                                           ; $6147: $00
    ld h, h                                       ; $6148: $64
    rst RST_00                                    ; $6149: $C7
    call nc, $B487                                ; $614A: $D4 $87 $B4
    rrca                                          ; $614D: $0F
    ld l, [hl]                                    ; $614E: $6E
    ld bc, $8151                                  ; $614F: $01 $51 $81
    inc b                                         ; $6152: $04
    cp l                                          ; $6153: $BD
    inc b                                         ; $6154: $04
    pop bc                                        ; $6155: $C1
    rlca                                          ; $6156: $07
    or [hl]                                       ; $6157: $B6
    add h                                         ; $6158: $84
    jp z, $9508                                   ; $6159: $CA $08 $95

    cp a                                          ; $615C: $BF
    ld b, b                                       ; $615D: $40
    and [hl]                                      ; $615E: $A6
    db $10                                        ; $615F: $10
    dec c                                         ; $6160: $0D
    cp $CF                                        ; $6161: $FE $CF
    ld b, b                                       ; $6163: $40
    dec b                                         ; $6164: $05
    db $FC                                        ; $6165: $FC
    inc bc                                        ; $6166: $03
    dec b                                         ; $6167: $05
    sbc b                                         ; $6168: $98
    ld c, h                                       ; $6169: $4C
    dec b                                         ; $616A: $05
    ld h, [hl]                                    ; $616B: $66
    ldh a, [c]                                    ; $616C: $F2
    adc b                                         ; $616D: $88
    rlca                                          ; $616E: $07
    db $E4                                        ; $616F: $E4
    rra                                           ; $6170: $1F
    ld d, b                                       ; $6171: $50
    inc c                                         ; $6172: $0C
    ldh a, [$FF8B]                                ; $6173: $F0 $8B
    nop                                           ; $6175: $00
    sbc a                                         ; $6176: $9F
    ld a, a                                       ; $6177: $7F
    sub e                                         ; $6178: $93
    inc b                                         ; $6179: $04
    ld hl, $0578                                  ; $617A: $21 $78 $05
    ld d, [hl]                                    ; $617D: $56
    ld b, d                                       ; $617E: $42
    inc b                                         ; $617F: $04
    ld b, l                                       ; $6180: $45
    inc b                                         ; $6181: $04
    ld b, h                                       ; $6182: $44
    nop                                           ; $6183: $00
    and b                                         ; $6184: $A0
    inc d                                         ; $6185: $14
    daa                                           ; $6186: $27
    ld b, c                                       ; $6187: $41
    ld d, l                                       ; $6188: $55
    ld d, h                                       ; $6189: $54
    ld h, c                                       ; $618A: $61
    sbc [hl]                                      ; $618B: $9E
    nop                                           ; $618C: $00
    jr z, jr_020_6192                             ; $618D: $28 $03

    ld [$3000], a                                 ; $618F: $EA $00 $30

jr_020_6192:
    ld [$0428], a                                 ; $6192: $EA $28 $04
    dec d                                         ; $6195: $15
    inc b                                         ; $6196: $04
    dec bc                                        ; $6197: $0B
    ld hl, sp+$04                                 ; $6198: $F8 $04
    and b                                         ; $619A: $A0
    inc b                                         ; $619B: $04
    ld h, h                                       ; $619C: $64
    and h                                         ; $619D: $A4
    dec h                                         ; $619E: $25
    push hl                                       ; $619F: $E5
    cp $AA                                        ; $61A0: $FE $AA
    nop                                           ; $61A2: $00
    db $FD                                        ; $61A3: $FD
    nop                                           ; $61A4: $00
    jp $BB00                                      ; $61A5: $C3 $00 $BB


    nop                                           ; $61A8: $00
    ld a, h                                       ; $61A9: $7C
    adc d                                         ; $61AA: $8A
    nop                                           ; $61AB: $00
    ld a, b                                       ; $61AC: $78
    ld a, e                                       ; $61AD: $7B
    and b                                         ; $61AE: $A0
    inc d                                         ; $61AF: $14
    add b                                         ; $61B0: $80
    ld [$8001], sp                                ; $61B1: $08 $01 $80
    nop                                           ; $61B4: $00
    pop bc                                        ; $61B5: $C1
    db $DD                                        ; $61B6: $DD
    ld b, [hl]                                    ; $61B7: $46
    ld e, [hl]                                    ; $61B8: $5E
    ld b, $1F                                     ; $61B9: $06 $1F
    ld h, b                                       ; $61BB: $60
    rlca                                          ; $61BC: $07
    ld h, e                                       ; $61BD: $63
    and h                                         ; $61BE: $A4
    xor h                                         ; $61BF: $AC
    add c                                         ; $61C0: $81
    add a                                         ; $61C1: $87
    xor h                                         ; $61C2: $AC
    ld d, b                                       ; $61C3: $50
    inc e                                         ; $61C4: $1C
    ld sp, $406E                                  ; $61C5: $31 $6E $40
    ld hl, sp+$14                                 ; $61C8: $F8 $14
    jr @+$05                                      ; $61CA: $18 $03

    db $DB                                        ; $61CC: $DB
    call c, $B722                                 ; $61CD: $DC $22 $B7
    ld a, [bc]                                    ; $61D0: $0A
    ret nz                                        ; $61D1: $C0

    ld [hl], a                                    ; $61D2: $77
    ld a, a                                       ; $61D3: $7F
    rst RST_28                                    ; $61D4: $EF
    call z, $C207                                 ; $61D5: $CC $07 $C2
    db $10                                        ; $61D8: $10
    jr jr_020_624A                                ; $61D9: $18 $6F

    adc [hl]                                      ; $61DB: $8E
    xor [hl]                                      ; $61DC: $AE
    ret nz                                        ; $61DD: $C0

    sub b                                         ; $61DE: $90
    jr c, jr_020_6226                             ; $61DF: $38 $45

    add hl, sp                                    ; $61E1: $39
    ld e, h                                       ; $61E2: $5C
    ld b, e                                       ; $61E3: $43
    jr nc, @+$39                                  ; $61E4: $30 $37

    db $DD                                        ; $61E6: $DD
    ccf                                           ; $61E7: $3F
    nop                                           ; $61E8: $00
    ld a, d                                       ; $61E9: $7A
    rst RST_18                                    ; $61EA: $DF
    nop                                           ; $61EB: $00
    or b                                          ; $61EC: $B0
    nop                                           ; $61ED: $00
    ld d, h                                       ; $61EE: $54
    rst RST_20                                    ; $61EF: $E7
    add h                                         ; $61F0: $84
    db $EB                                        ; $61F1: $EB
    xor a                                         ; $61F2: $AF
    adc l                                         ; $61F3: $8D
    rst RST_00                                    ; $61F4: $C7
    nop                                           ; $61F5: $00
    dec e                                         ; $61F6: $1D
    inc h                                         ; $61F7: $24
    xor h                                         ; $61F8: $AC
    sbc h                                         ; $61F9: $9C
    ld e, h                                       ; $61FA: $5C
    ld [de], a                                    ; $61FB: $12
    ld b, a                                       ; $61FC: $47
    cp b                                          ; $61FD: $B8
    ei                                            ; $61FE: $FB
    or h                                          ; $61FF: $B4
    db $FC                                        ; $6200: $FC
    dec bc                                        ; $6201: $0B
    and h                                         ; $6202: $A4
    ld bc, $04F1                                  ; $6203: $01 $F1 $04
    call nz, Call_000_3C0E                        ; $6206: $C4 $0E $3C
    ldh [rSC], a                                  ; $6209: $E0 $02
    xor $0C                                       ; $620B: $EE $0C
    ld l, e                                       ; $620D: $6B
    db $E4                                        ; $620E: $E4
    inc e                                         ; $620F: $1C
    nop                                           ; $6210: $00
    cp $24                                        ; $6211: $FE $24
    ld d, l                                       ; $6213: $55
    inc b                                         ; $6214: $04
    xor b                                         ; $6215: $A8
    xor d                                         ; $6216: $AA
    inc b                                         ; $6217: $04
    ld a, a                                       ; $6218: $7F
    inc b                                         ; $6219: $04
    pop hl                                        ; $621A: $E1
    inc b                                         ; $621B: $04
    jp $AB04                                      ; $621C: $C3 $04 $AB


    or l                                          ; $621F: $B5
    inc b                                         ; $6220: $04
    rst RST_10                                    ; $6221: $D7
    inc b                                         ; $6222: $04
    ld bc, $04F7                                  ; $6223: $01 $F7 $04

jr_020_6226:
    rst RST_28                                    ; $6226: $EF
    ld c, [hl]                                    ; $6227: $4E
    ld [$0303], a                                 ; $6228: $EA $03 $03
    ld bc, $04FA                                  ; $622B: $01 $FA $04
    db $F4                                        ; $622E: $F4
    ld c, $A8                                     ; $622F: $0E $A8
    ld c, [hl]                                    ; $6231: $4E
    xor a                                         ; $6232: $AF
    dec b                                         ; $6233: $05
    db $10                                        ; $6234: $10
    rra                                           ; $6235: $1F
    ret nc                                        ; $6236: $D0

    db $DD                                        ; $6237: $DD
    ld b, $50                                     ; $6238: $06 $50
    xor c                                         ; $623A: $A9
    inc b                                         ; $623B: $04
    and b                                         ; $623C: $A0
    dec d                                         ; $623D: $15
    db $ED                                        ; $623E: $ED
    inc b                                         ; $623F: $04
    ldh a, [c]                                    ; $6240: $F2
    ld [$2A58], sp                                ; $6241: $08 $58 $2A
    dec c                                         ; $6244: $0D
    db $FD                                        ; $6245: $FD
    ccf                                           ; $6246: $3F
    ld d, c                                       ; $6247: $51
    ld a, $F1                                     ; $6248: $3E $F1

jr_020_624A:
    adc [hl]                                      ; $624A: $8E

jr_020_624B:
    db $FC                                        ; $624B: $FC
    or l                                          ; $624C: $B5
    inc b                                         ; $624D: $04
    ei                                            ; $624E: $FB
    jp $7F00                                      ; $624F: $C3 $00 $7F


    inc b                                         ; $6252: $04
    ld a, $04                                     ; $6253: $3E $04

jr_020_6255:
    ld l, [hl]                                    ; $6255: $6E
    ld hl, sp-$2A                                 ; $6256: $F8 $D6
    dec c                                         ; $6258: $0D
    ld d, h                                       ; $6259: $54
    db $DD                                        ; $625A: $DD
    or [hl]                                       ; $625B: $B6
    add l                                         ; $625C: $85
    add b                                         ; $625D: $80
    adc d                                         ; $625E: $8A
    inc b                                         ; $625F: $04
    ld [hl], b                                    ; $6260: $70
    ld [hl], h                                    ; $6261: $74
    ld a, b                                       ; $6262: $78
    nop                                           ; $6263: $00
    cp l                                          ; $6264: $BD
    nop                                           ; $6265: $00
    jp Jump_000_00B9                              ; $6266: $C3 $B9 $00


    ld a, [hl]                                    ; $6269: $7E
    ld l, $CF                                     ; $626A: $2E $CF
    inc b                                         ; $626C: $04
    add $01                                       ; $626D: $C6 $01
    nop                                           ; $626F: $00
    db $FC                                        ; $6270: $FC
    call nz, $C4B8                                ; $6271: $C4 $B8 $C4
    nop                                           ; $6274: $00
    dec c                                         ; $6275: $0D
    sub h                                         ; $6276: $94
    ld sp, hl                                     ; $6277: $F9
    halt                                          ; $6278: $76
    ccf                                           ; $6279: $3F
    or $36                                        ; $627A: $F6 $36
    inc b                                         ; $627C: $04
    ld c, a                                       ; $627D: $4F
    rlca                                          ; $627E: $07
    ld d, b                                       ; $627F: $50
    rlca                                          ; $6280: $07
    ld e, $51                                     ; $6281: $1E $51
    jr jr_020_62DD                                ; $6283: $18 $58

    dec de                                        ; $6285: $1B
    ld h, h                                       ; $6286: $64
    ld a, l                                       ; $6287: $7D
    db $FD                                        ; $6288: $FD
    ret nz                                        ; $6289: $C0

    nop                                           ; $628A: $00
    ld b, $A0                                     ; $628B: $06 $A0
    cp c                                          ; $628D: $B9
    ld b, b                                       ; $628E: $40
    ld b, c                                       ; $628F: $41
    and c                                         ; $6290: $A1
    inc c                                         ; $6291: $0C
    jr jr_020_6255                                ; $6292: $18 $C1

    xor e                                         ; $6294: $AB
    ld b, h                                       ; $6295: $44
    ld a, e                                       ; $6296: $7B
    call c, Call_000_2487                         ; $6297: $DC $87 $24
    sbc $14                                       ; $629A: $DE $14
    nop                                           ; $629C: $00
    ld b, a                                       ; $629D: $47
    jr nz, jr_020_62FC                            ; $629E: $20 $5C

    add c                                         ; $62A0: $81
    pop hl                                        ; $62A1: $E1
    inc e                                         ; $62A2: $1C
    inc e                                         ; $62A3: $1C
    dec b                                         ; $62A4: $05
    jr nz, jr_020_6308                            ; $62A5: $20 $61

    ld a, [de]                                    ; $62A7: $1A
    inc b                                         ; $62A8: $04
    jr nz, jr_020_62B1                            ; $62A9: $20 $06

    ld e, $03                                     ; $62AB: $1E $03
    rrca                                          ; $62AD: $0F
    inc d                                         ; $62AE: $14
    pop af                                        ; $62AF: $F1
    db $10                                        ; $62B0: $10

jr_020_62B1:
    or h                                          ; $62B1: $B4
    nop                                           ; $62B2: $00
    ld h, h                                       ; $62B3: $64
    add d                                         ; $62B4: $82
    ldh [$FFE5], a                                ; $62B5: $E0 $E5
    inc e                                         ; $62B7: $1C
    ld c, d                                       ; $62B8: $4A
    ld h, b                                       ; $62B9: $60
    jr z, jr_020_624B                             ; $62BA: $28 $8F

    xor b                                         ; $62BC: $A8
    nop                                           ; $62BD: $00
    dec [hl]                                      ; $62BE: $35
    nop                                           ; $62BF: $00
    db $10                                        ; $62C0: $10
    jr nc, @-$2E                                  ; $62C1: $30 $D0

    dec b                                         ; $62C3: $05
    inc l                                         ; $62C4: $2C
    inc a                                         ; $62C5: $3C
    add sp, $02                                   ; $62C6: $E8 $02
    ld [$8BF0], a                                 ; $62C8: $EA $F0 $8B
    nop                                           ; $62CB: $00
    ld [hl], b                                    ; $62CC: $70
    ld d, b                                       ; $62CD: $50
    ld a, b                                       ; $62CE: $78
    nop                                           ; $62CF: $00
    inc c                                         ; $62D0: $0C
    nop                                           ; $62D1: $00
    ld d, h                                       ; $62D2: $54
    ld b, [hl]                                    ; $62D3: $46
    cpl                                           ; $62D4: $2F
    inc b                                         ; $62D5: $04
    dec l                                         ; $62D6: $2D
    ld b, a                                       ; $62D7: $47
    ld d, h                                       ; $62D8: $54
    dec b                                         ; $62D9: $05
    ret c                                         ; $62DA: $D8

    ei                                            ; $62DB: $FB
    inc d                                         ; $62DC: $14

jr_020_62DD:
    ld a, h                                       ; $62DD: $7C
    ld a, l                                       ; $62DE: $7D
    inc a                                         ; $62DF: $3C
    nop                                           ; $62E0: $00
    ld b, e                                       ; $62E1: $43
    nop                                           ; $62E2: $00
    sbc a                                         ; $62E3: $9F
    sbc [hl]                                      ; $62E4: $9E
    ld [bc], a                                    ; $62E5: $02
    ld l, a                                       ; $62E6: $6F
    ld l, b                                       ; $62E7: $68
    rst RST_28                                    ; $62E8: $EF
    db $EC                                        ; $62E9: $EC
    ld [hl], a                                    ; $62EA: $77
    db $F4                                        ; $62EB: $F4
    db $E4                                        ; $62EC: $E4
    adc d                                         ; $62ED: $8A
    add hl, hl                                    ; $62EE: $29
    inc de                                        ; $62EF: $13
    ld d, d                                       ; $62F0: $52
    ld h, h                                       ; $62F1: $64
    ld l, $C9                                     ; $62F2: $2E $C9
    rst RST_08                                    ; $62F4: $CF
    ret z                                         ; $62F5: $C8

    ld h, c                                       ; $62F6: $61
    ld l, c                                       ; $62F7: $69
    rst RST_38                                    ; $62F8: $FF
    ldh a, [rTIMA]                                ; $62F9: $F0 $05
    scf                                           ; $62FB: $37

jr_020_62FC:
    ld b, h                                       ; $62FC: $44
    rla                                           ; $62FD: $17
    halt                                          ; $62FE: $76
    ld c, h                                       ; $62FF: $4C
    ld sp, $012A                                  ; $6300: $31 $2A $01
    ld d, b                                       ; $6303: $50
    inc b                                         ; $6304: $04
    ld hl, $C1C0                                  ; $6305: $21 $C0 $C1

jr_020_6308:
    jp hl                                         ; $6308: $E9


    ld a, [hl-]                                   ; $6309: $3A
    db $FC                                        ; $630A: $FC
    inc e                                         ; $630B: $1C
    ld c, a                                       ; $630C: $4F
    rlca                                          ; $630D: $07
    ld b, $80                                     ; $630E: $06 $80
    rlca                                          ; $6310: $07
    db $E4                                        ; $6311: $E4
    ld l, c                                       ; $6312: $69
    rra                                           ; $6313: $1F
    dec b                                         ; $6314: $05
    xor b                                         ; $6315: $A8
    ccf                                           ; $6316: $3F
    rlca                                          ; $6317: $07
    sub b                                         ; $6318: $90
    ld a, a                                       ; $6319: $7F
    rlca                                          ; $631A: $07
    ld e, a                                       ; $631B: $5F
    and b                                         ; $631C: $A0
    inc b                                         ; $631D: $04
    jr nz, jr_020_6370                            ; $631E: $20 $50

    rlca                                          ; $6320: $07
    ld a, c                                       ; $6321: $79
    rrca                                          ; $6322: $0F
    dec c                                         ; $6323: $0D
    ld de, $E6A6                                  ; $6324: $11 $A6 $E6
    ld h, $04                                     ; $6327: $26 $04
    ld c, [hl]                                    ; $6329: $4E
    adc $CD                                       ; $632A: $CE $CD
    nop                                           ; $632C: $00
    ld [bc], a                                    ; $632D: $02
    ld b, d                                       ; $632E: $42
    jp $D7D4                                      ; $632F: $C3 $D4 $D7


    xor b                                         ; $6332: $A8
    xor a                                         ; $6333: $AF
    ld a, h                                       ; $6334: $7C
    sbc a                                         ; $6335: $9F
    push de                                       ; $6336: $D5
    or b                                          ; $6337: $B0
    inc b                                         ; $6338: $04
    ld h, l                                       ; $6339: $65
    add h                                         ; $633A: $84
    bit 2, h                                      ; $633B: $CB $54
    add c                                         ; $633D: $81
    inc b                                         ; $633E: $04
    dec d                                         ; $633F: $15
    ld [bc], a                                    ; $6340: $02
    cp $82                                        ; $6341: $FE $82
    inc b                                         ; $6343: $04
    ld bc, $6086                                  ; $6344: $01 $86 $60
    ld c, $FE                                     ; $6347: $0E $FE
    rlca                                          ; $6349: $07
    rlca                                          ; $634A: $07
    rlca                                          ; $634B: $07
    rlca                                          ; $634C: $07
    rlca                                          ; $634D: $07
    rlca                                          ; $634E: $07
    rlca                                          ; $634F: $07
    cp b                                          ; $6350: $B8
    xor d                                         ; $6351: $AA
    nop                                           ; $6352: $00
    scf                                           ; $6353: $37
    nop                                           ; $6354: $00
    rrca                                          ; $6355: $0F
    nop                                           ; $6356: $00
    ld e, a                                       ; $6357: $5F
    nop                                           ; $6358: $00
    xor e                                         ; $6359: $AB
    ld a, [hl-]                                   ; $635A: $3A
    cp a                                          ; $635B: $BF
    ld d, a                                       ; $635C: $57
    call c, Call_000_04D6                         ; $635D: $DC $D6 $04
    ld a, [$FD04]                                 ; $6360: $FA $04 $FD
    xor [hl]                                      ; $6363: $AE
    ld c, $FC                                     ; $6364: $0E $FC
    inc b                                         ; $6366: $04
    ei                                            ; $6367: $FB
    inc b                                         ; $6368: $04
    ld hl, sp+$04                                 ; $6369: $F8 $04
    push de                                       ; $636B: $D5
    xor a                                         ; $636C: $AF
    inc b                                         ; $636D: $04
    xor d                                         ; $636E: $AA
    inc b                                         ; $636F: $04

jr_020_6370:
    inc d                                         ; $6370: $14
    sub a                                         ; $6371: $97
    rlca                                          ; $6372: $07
    rlca                                          ; $6373: $07
    ld b, $D6                                     ; $6374: $06 $D6
    sbc h                                         ; $6376: $9C
    inc b                                         ; $6377: $04
    dec b                                         ; $6378: $05
    inc b                                         ; $6379: $04
    ld c, d                                       ; $637A: $4A
    inc b                                         ; $637B: $04
    and a                                         ; $637C: $A7
    add b                                         ; $637D: $80
    push de                                       ; $637E: $D5
    ccf                                           ; $637F: $3F
    inc b                                         ; $6380: $04
    ld d, l                                       ; $6381: $55
    inc b                                         ; $6382: $04
    ld a, [hl+]                                   ; $6383: $2A
    adc [hl]                                      ; $6384: $8E
    jr nz, jr_020_63B6                            ; $6385: $20 $2F

    sbc $07                                       ; $6387: $DE $07
    inc b                                         ; $6389: $04
    ld b, b                                       ; $638A: $40
    ld e, a                                       ; $638B: $5F
    rlca                                          ; $638C: $07
    rlca                                          ; $638D: $07
    ld b, $CD                                     ; $638E: $06 $CD
    xor d                                         ; $6390: $AA
    nop                                           ; $6391: $00
    ld c, h                                       ; $6392: $4C
    inc b                                         ; $6393: $04
    ld c, l                                       ; $6394: $4D
    inc b                                         ; $6395: $04
    call z, Call_020_4104                         ; $6396: $CC $04 $41
    scf                                           ; $6399: $37
    pop bc                                        ; $639A: $C1
    ret nz                                        ; $639B: $C0

    inc b                                         ; $639C: $04
    ld l, h                                       ; $639D: $6C
    reti                                          ; $639E: $D9


    inc c                                         ; $639F: $0C
    inc b                                         ; $63A0: $04
    ld b, l                                       ; $63A1: $45
    ld a, b                                       ; $63A2: $78
    ld bc, $0607                                  ; $63A3: $01 $07 $06
    ld [hl], a                                    ; $63A6: $77
    dec b                                         ; $63A7: $05
    add h                                         ; $63A8: $84
    or [hl]                                       ; $63A9: $B6
    adc b                                         ; $63AA: $88
    inc b                                         ; $63AB: $04
    adc [hl]                                      ; $63AC: $8E
    ld [hl], b                                    ; $63AD: $70
    ld a, h                                       ; $63AE: $7C
    inc bc                                        ; $63AF: $03
    ld [hl], e                                    ; $63B0: $73
    db $10                                        ; $63B1: $10
    adc a                                         ; $63B2: $8F
    ld hl, sp-$38                                 ; $63B3: $F8 $C8
    ccf                                           ; $63B5: $3F

jr_020_63B6:
    inc b                                         ; $63B6: $04
    add d                                         ; $63B7: $82
    ld [$E564], a                                 ; $63B8: $EA $64 $E5
    sub c                                         ; $63BB: $91
    push de                                       ; $63BC: $D5
    ld b, l                                       ; $63BD: $45
    ld de, $9804                                  ; $63BE: $11 $04 $98
    jp c, $0418                                   ; $63C1: $DA $18 $04

    ld [$032C], sp                                ; $63C4: $08 $2C $03
    inc c                                         ; $63C7: $0C
    db $ED                                        ; $63C8: $ED
    ld b, a                                       ; $63C9: $47
    ld d, [hl]                                    ; $63CA: $56
    inc hl                                        ; $63CB: $23
    ld a, [hl+]                                   ; $63CC: $2A
    dec b                                         ; $63CD: $05
    ld a, h                                       ; $63CE: $7C
    ld d, l                                       ; $63CF: $55
    dec bc                                        ; $63D0: $0B
    ld d, h                                       ; $63D1: $54
    ld h, l                                       ; $63D2: $65
    inc b                                         ; $63D3: $04
    push af                                       ; $63D4: $F5
    inc b                                         ; $63D5: $04
    ld [hl], l                                    ; $63D6: $75
    ld a, h                                       ; $63D7: $7C
    ld d, l                                       ; $63D8: $55
    ld [hl-], a                                   ; $63D9: $32
    ld b, l                                       ; $63DA: $45
    inc e                                         ; $63DB: $1C
    nop                                           ; $63DC: $00
    rst RST_30                                    ; $63DD: $F7
    sub h                                         ; $63DE: $94
    add c                                         ; $63DF: $81
    xor a                                         ; $63E0: $AF
    call nz, $0407                                ; $63E1: $C4 $07 $04
    ld c, b                                       ; $63E4: $48
    ld c, d                                       ; $63E5: $4A
    inc a                                         ; $63E6: $3C
    db $F4                                        ; $63E7: $F4
    dec a                                         ; $63E8: $3D
    ld a, l                                       ; $63E9: $7D
    sub e                                         ; $63EA: $93
    inc a                                         ; $63EB: $3C
    cp l                                          ; $63EC: $BD
    jp $7F00                                      ; $63ED: $C3 $00 $7F


    cp $7C                                        ; $63F0: $FE $7C
    inc b                                         ; $63F2: $04
    ld l, [hl]                                    ; $63F3: $6E
    add hl, bc                                    ; $63F4: $09
    inc b                                         ; $63F5: $04
    ld b, b                                       ; $63F6: $40
    rlca                                          ; $63F7: $07
    ld e, e                                       ; $63F8: $5B
    rlca                                          ; $63F9: $07
    ld b, $80                                     ; $63FA: $06 $80
    rst RST_38                                    ; $63FC: $FF
    rlca                                          ; $63FD: $07
    daa                                           ; $63FE: $27
    rlca                                          ; $63FF: $07

jr_020_6400:
    rlca                                          ; $6400: $07
    ld c, a                                       ; $6401: $4F
    rlca                                          ; $6402: $07
    daa                                           ; $6403: $27
    rlca                                          ; $6404: $07
    add b                                         ; $6405: $80
    dec b                                         ; $6406: $05
    ld b, l                                       ; $6407: $45
    ld b, b                                       ; $6408: $40
    ld d, l                                       ; $6409: $55
    rlca                                          ; $640A: $07
    nop                                           ; $640B: $00
    jr jr_020_640E                                ; $640C: $18 $00

jr_020_640E:
    jr nz, jr_020_6410                            ; $640E: $20 $00

jr_020_6410:
    ld b, b                                       ; $6410: $40
    ld [bc], a                                    ; $6411: $02
    ld a, [hl]                                    ; $6412: $7E
    add b                                         ; $6413: $80
    rlca                                          ; $6414: $07
    ld [bc], a                                    ; $6415: $02
    ld a, e                                       ; $6416: $7B
    xor c                                         ; $6417: $A9
    ret                                           ; $6418: $C9


    jp hl                                         ; $6419: $E9


    ldh [$FFD5], a                                ; $641A: $E0 $D5
    nop                                           ; $641C: $00
    add hl, hl                                    ; $641D: $29
    inc b                                         ; $641E: $04
    nop                                           ; $641F: $00
    ld [bc], a                                    ; $6420: $02
    ld [bc], a                                    ; $6421: $02

jr_020_6422:
    ld bc, $FA07                                  ; $6422: $01 $07 $FA
    ld [bc], a                                    ; $6425: $02
    ld a, e                                       ; $6426: $7B
    xor c                                         ; $6427: $A9
    ret                                           ; $6428: $C9


    jp hl                                         ; $6429: $E9


    nop                                           ; $642A: $00
    nop                                           ; $642B: $00
    inc bc                                        ; $642C: $03
    xor d                                         ; $642D: $AA
    ld [$080C], sp                                ; $642E: $08 $0C $08
    db $10                                        ; $6431: $10
    ld [$0A20], sp                                ; $6432: $08 $20 $0A
    ld b, b                                       ; $6435: $40
    db $FD                                        ; $6436: $FD
    ld c, $5B                                     ; $6437: $0E $5B
    adc c                                         ; $6439: $89
    xor c                                         ; $643A: $A9
    ret                                           ; $643B: $C9


    inc bc                                        ; $643C: $03
    ldh [$FF5A], a                                ; $643D: $E0 $5A
    ld d, a                                       ; $643F: $57
    ld [$0408], sp                                ; $6440: $08 $08 $04
    ld a, [bc]                                    ; $6443: $0A
    ld [bc], a                                    ; $6444: $02
    ld c, $5B                                     ; $6445: $0E $5B
    adc c                                         ; $6447: $89
    ld d, l                                       ; $6448: $55
    jr nc, @+$0A                                  ; $6449: $30 $08

    ret nz                                        ; $644B: $C0

    ld [$04FF], a                                 ; $644C: $EA $FF $04
    ld a, a                                       ; $644F: $7F
    nop                                           ; $6450: $00
    dec c                                         ; $6451: $0D
    ld bc, $1E81                                  ; $6452: $01 $81 $1E
    ld a, $10                                     ; $6455: $3E $10
    nop                                           ; $6457: $00
    cp a                                          ; $6458: $BF
    nop                                           ; $6459: $00
    sbc e                                         ; $645A: $9B
    add hl, de                                    ; $645B: $19
    sbc [hl]                                      ; $645C: $9E
    cp [hl]                                       ; $645D: $BE
    ld e, b                                       ; $645E: $58
    nop                                           ; $645F: $00
    ldh [$FF88], a                                ; $6460: $E0 $88
    pop bc                                        ; $6462: $C1
    xor d                                         ; $6463: $AA
    add hl, bc                                    ; $6464: $09
    ld d, b                                       ; $6465: $50
    ld [$08A0], sp                                ; $6466: $08 $A0 $08
    db $FC                                        ; $6469: $FC
    ld bc, $97FD                                  ; $646A: $01 $FD $97
    add hl, bc                                    ; $646D: $09
    ldh a, [$FFF1]                                ; $646E: $F0 $F1
    adc b                                         ; $6470: $88
    db $ED                                        ; $6471: $ED
    jr jr_020_6474                                ; $6472: $18 $00

jr_020_6474:
    ld l, b                                       ; $6474: $68
    db $FC                                        ; $6475: $FC
    jr jr_020_6400                                ; $6476: $18 $88

    jr c, jr_020_6422                             ; $6478: $38 $A8

    jr jr_020_6484                                ; $647A: $18 $08

    ldh a, [c]                                    ; $647C: $F2
    ld [$FA34], sp                                ; $647D: $08 $34 $FA
    dec c                                         ; $6480: $0D
    adc b                                         ; $6481: $88
    ei                                            ; $6482: $FB
    ld d, c                                       ; $6483: $51

jr_020_6484:
    ld a, [$F637]                                 ; $6484: $FA $37 $F6
    ld [bc], a                                    ; $6487: $02
    rla                                           ; $6488: $17
    halt                                          ; $6489: $76
    inc bc                                        ; $648A: $03
    dec hl                                        ; $648B: $2B
    ld bc, $0813                                  ; $648C: $01 $13 $08
    ld hl, $C040                                  ; $648F: $21 $40 $C0

jr_020_6492:
    nop                                           ; $6492: $00
    ldh a, [rSVBK]                                ; $6493: $F0 $70
    ld hl, sp+$1C                                 ; $6495: $F8 $1C
    cp $0E                                        ; $6497: $FE $0E
    db $FD                                        ; $6499: $FD
    sub b                                         ; $649A: $90
    ld [hl], b                                    ; $649B: $70
    ld [$E260], sp                                ; $649C: $08 $60 $E2
    dec bc                                        ; $649F: $0B
    add b                                         ; $64A0: $80
    ld a, [bc]                                    ; $64A1: $0A
    jp hl                                         ; $64A2: $E9


    ld c, l                                       ; $64A3: $4D
    ld e, e                                       ; $64A4: $5B
    ld hl, sp+$7F                                 ; $64A5: $F8 $7F
    add hl, bc                                    ; $64A7: $09
    ld h, b                                       ; $64A8: $60
    ccf                                           ; $64A9: $3F
    add hl, bc                                    ; $64AA: $09
    ld d, $B0                                     ; $64AB: $16 $B0
    rst RST_18                                    ; $64AD: $DF
    ret nc                                        ; $64AE: $D0

    ld e, b                                       ; $64AF: $58
    ld [hl], b                                    ; $64B0: $70
    cp a                                          ; $64B1: $BF
    inc hl                                        ; $64B2: $23
    rlca                                          ; $64B3: $07
    add c                                         ; $64B4: $81
    ld [$FC0C], sp                                ; $64B5: $08 $0C $FC
    ld a, [de]                                    ; $64B8: $1A
    ei                                            ; $64B9: $FB
    inc d                                         ; $64BA: $14
    db $F4                                        ; $64BB: $F4

jr_020_64BC:
    add hl, de                                    ; $64BC: $19
    pop af                                        ; $64BD: $F1
    add hl, sp                                    ; $64BE: $39
    ld e, c                                       ; $64BF: $59
    add $0E                                       ; $64C0: $C6 $0E
    jr jr_020_64BC                                ; $64C2: $18 $F8

    dec de                                        ; $64C4: $1B
    xor b                                         ; $64C5: $A8
    ld [hl], l                                    ; $64C6: $75
    db $FD                                        ; $64C7: $FD
    nop                                           ; $64C8: $00
    jr c, jr_020_64CC                             ; $64C9: $38 $01

    ld sp, hl                                     ; $64CB: $F9

jr_020_64CC:
    ld [$0001], sp                                ; $64CC: $08 $01 $00
    xor d                                         ; $64CF: $AA
    ld a, [de]                                    ; $64D0: $1A
    call Call_020_4C00                            ; $64D1: $CD $00 $4C
    ld [$084D], sp                                ; $64D4: $08 $4D $08
    call z, Call_000_0889                         ; $64D7: $CC $89 $08
    ld b, c                                       ; $64DA: $41
    pop bc                                        ; $64DB: $C1
    ret nz                                        ; $64DC: $C0

    ld [$D940], sp                                ; $64DD: $08 $40 $D9
    jr jr_020_6492                                ; $64E0: $18 $B0

    ld [$90FF], sp                                ; $64E2: $08 $FF $90
    dec c                                         ; $64E5: $0D
    ld a, [$F505]                                 ; $64E6: $FA $05 $F5
    rrca                                          ; $64E9: $0F
    rla                                           ; $64EA: $17
    xor $1F                                       ; $64EB: $EE $1F
    db $ED                                        ; $64ED: $ED
    ld [$28F4], sp                                ; $64EE: $08 $F4 $28
    adc a                                         ; $64F1: $8F
    rrca                                          ; $64F2: $0F
    ld [bc], a                                    ; $64F3: $02
    cp $01                                        ; $64F4: $FE $01
    rst RST_30                                    ; $64F6: $F7
    ld [$74CB], sp                                ; $64F7: $08 $CB $74
    ret nz                                        ; $64FA: $C0

    ldh [$FF0C], a                                ; $64FB: $E0 $0C
    xor a                                         ; $64FD: $AF
    ret nc                                        ; $64FE: $D0

    ld a, a                                       ; $64FF: $7F
    add b                                         ; $6500: $80
    add hl, bc                                    ; $6501: $09
    ld a, c                                       ; $6502: $79
    db $FD                                        ; $6503: $FD
    ld b, $87                                     ; $6504: $06 $87
    xor e                                         ; $6506: $AB
    rst RST_18                                    ; $6507: $DF
    ld h, b                                       ; $6508: $60
    cp e                                          ; $6509: $BB
    ld b, h                                       ; $650A: $44
    db $FD                                        ; $650B: $FD
    add hl, bc                                    ; $650C: $09
    ld sp, hl                                     ; $650D: $F9
    rst RST_08                                    ; $650E: $CF
    jr jr_020_6519                                ; $650F: $18 $08

    db $DD                                        ; $6511: $DD
    ld a, $19                                     ; $6512: $3E $19
    ld a, [hl-]                                   ; $6514: $3A
    adc [hl]                                      ; $6515: $8E
    rrca                                          ; $6516: $0F
    pop hl                                        ; $6517: $E1
    rrca                                          ; $6518: $0F

jr_020_6519:
    rrca                                          ; $6519: $0F
    dec bc                                        ; $651A: $0B
    rst RST_18                                    ; $651B: $DF
    ld h, b                                       ; $651C: $60
    cp a                                          ; $651D: $BF
    ld b, b                                       ; $651E: $40

jr_020_651F:
    dec sp                                        ; $651F: $3B
    jr c, jr_020_651F                             ; $6520: $38 $FD

    ld b, $2B                                     ; $6522: $06 $2B

jr_020_6524:
    nop                                           ; $6524: $00
    ld l, b                                       ; $6525: $68
    rrca                                          ; $6526: $0F
    adc a                                         ; $6527: $8F
    xor b                                         ; $6528: $A8
    add b                                         ; $6529: $80
    nop                                           ; $652A: $00
    ld [hl-], a                                   ; $652B: $32
    scf                                           ; $652C: $37
    rla                                           ; $652D: $17
    rst RST_10                                    ; $652E: $D7
    ld [bc], a                                    ; $652F: $02
    rst RST_20                                    ; $6530: $E7
    add b                                         ; $6531: $80
    ld c, b                                       ; $6532: $48
    add sp, $18                                   ; $6533: $E8 $18
    ld [$0882], a                                 ; $6535: $EA $82 $08
    ld bc, $91E5                                  ; $6538: $01 $E5 $91
    ld [hl+], a                                   ; $653B: $22
    push de                                       ; $653C: $D5
    ld de, $9808                                  ; $653D: $11 $08 $98
    jp c, Jump_000_0818                           ; $6540: $DA $18 $08

    ld [$5888], sp                                ; $6543: $08 $88 $58
    inc c                                         ; $6546: $0C
    db $ED                                        ; $6547: $ED
    ldh a, [rP1]                                  ; $6548: $F0 $00
    ld [hl], b                                    ; $654A: $70
    ld d, b                                       ; $654B: $50
    ld a, b                                       ; $654C: $78
    db $E4                                        ; $654D: $E4
    nop                                           ; $654E: $00
    jr c, jr_020_6551                             ; $654F: $38 $00

jr_020_6551:
    rrca                                          ; $6551: $0F
    cpl                                           ; $6552: $2F
    ld [$472D], sp                                ; $6553: $08 $2D $47
    ld b, h                                       ; $6556: $44
    ld d, h                                       ; $6557: $54
    ld a, [bc]                                    ; $6558: $0A
    ld d, [hl]                                    ; $6559: $56
    inc hl                                        ; $655A: $23
    ld a, [hl+]                                   ; $655B: $2A
    add hl, bc                                    ; $655C: $09
    inc bc                                        ; $655D: $03
    dec bc                                        ; $655E: $0B
    ld a, [hl+]                                   ; $655F: $2A
    ld bc, $0865                                  ; $6560: $01 $65 $08
    push af                                       ; $6563: $F5
    ld [$C005], sp                                ; $6564: $08 $05 $C0
    ld a, d                                       ; $6567: $7A
    inc bc                                        ; $6568: $03
    ret nz                                        ; $6569: $C0

    jp $1100                                      ; $656A: $C3 $00 $11


    ret z                                         ; $656D: $C8

    call c, $3809                                 ; $656E: $DC $09 $38
    ld bc, $60D0                                  ; $6571: $01 $D0 $60
    ld l, l                                       ; $6574: $6D
    ld l, c                                       ; $6575: $69
    ld l, e                                       ; $6576: $6B
    jr nz, jr_020_6524                            ; $6577: $20 $AB

    ld l, b                                       ; $6579: $68
    ld h, e                                       ; $657A: $63
    push bc                                       ; $657B: $C5
    ld [$FA00], sp                                ; $657C: $08 $00 $FA
    ei                                            ; $657F: $FB
    db $FC                                        ; $6580: $FC
    nop                                           ; $6581: $00
    add hl, de                                    ; $6582: $19
    ld b, $F8                                     ; $6583: $06 $F8
    ld sp, hl                                     ; $6585: $F9
    halt                                          ; $6586: $76
    or $36                                        ; $6587: $F6 $36
    ld [$AC88], sp                                ; $6589: $08 $88 $AC
    jp $B0B8                                      ; $658C: $C3 $B8 $B0


    ld [bc], a                                    ; $658F: $02
    rla                                           ; $6590: $17
    jp z, $A9CF                                   ; $6591: $CA $CF $A9

    nop                                           ; $6594: $00
    dec b                                         ; $6595: $05
    sbc h                                         ; $6596: $9C
    inc e                                         ; $6597: $1C
    sbc $18                                       ; $6598: $DE $18
    call c, $BB28                                 ; $659A: $DC $28 $BB
    ld [$073C], sp                                ; $659D: $08 $3C $07
    ld b, b                                       ; $65A0: $40
    jr c, jr_020_6604                             ; $65A1: $38 $61

    cp b                                          ; $65A3: $B8
    ldh a, [$FF81]                                ; $65A4: $F0 $81
    pop hl                                        ; $65A6: $E1
    push de                                       ; $65A7: $D5
    ld a, c                                       ; $65A8: $79
    add hl, bc                                    ; $65A9: $09
    ccf                                           ; $65AA: $3F
    nop                                           ; $65AB: $00
    rst RST_18                                    ; $65AC: $DF
    nop                                           ; $65AD: $00
    rra                                           ; $65AE: $1F
    nop                                           ; $65AF: $00
    inc [hl]                                      ; $65B0: $34
    rrca                                          ; $65B1: $0F
    rst RST_28                                    ; $65B2: $EF
    dec bc                                        ; $65B3: $0B
    ld c, c                                       ; $65B4: $49
    dec a                                         ; $65B5: $3D
    ld l, b                                       ; $65B6: $68
    ld a, [$6AFF]                                 ; $65B7: $FA $FF $6A
    db $FD                                        ; $65BA: $FD
    ld [$FC19], sp                                ; $65BB: $08 $19 $FC
    ld [$08FB], sp                                ; $65BE: $08 $FB $08
    cp $AA                                        ; $65C1: $FE $AA
    ld [$08D5], sp                                ; $65C3: $08 $D5 $08
    xor d                                         ; $65C6: $AA
    ld [$08E1], sp                                ; $65C7: $08 $E1 $08
    jp Jump_000_08AD                              ; $65CA: $C3 $AD $08


    xor e                                         ; $65CD: $AB
    ld [$08D7], sp                                ; $65CE: $08 $D7 $08
    ld bc, $08F7                                  ; $65D1: $01 $F7 $08
    ld d, l                                       ; $65D4: $55
    rst RST_28                                    ; $65D5: $EF
    ld [$5A55], sp                                ; $65D6: $08 $55 $5A
    dec b                                         ; $65D9: $05
    ld [$084A], sp                                ; $65DA: $08 $4A $08
    ld d, l                                       ; $65DD: $55
    add c                                         ; $65DE: $81
    ld [$0802], sp                                ; $65DF: $08 $02 $08
    add b                                         ; $65E2: $80
    ld [$0A00], sp                                ; $65E3: $08 $00 $0A
    and b                                         ; $65E6: $A0
    rlca                                          ; $65E7: $07
    ldh a, [rP1]                                  ; $65E8: $F0 $00
    ld hl, sp-$05                                 ; $65EA: $F8 $FB
    db $FC                                        ; $65EC: $FC
    db $FD                                        ; $65ED: $FD
    ld e, $82                                     ; $65EE: $1E $82
    nop                                           ; $65F0: $00
    ld bc, $E0E1                                  ; $65F1: $01 $E1 $E0
    cp $7F                                        ; $65F4: $FE $7F
    nop                                           ; $65F6: $00
    rra                                           ; $65F7: $1F
    dec b                                         ; $65F8: $05
    sbc a                                         ; $65F9: $9F
    ld b, b                                       ; $65FA: $40
    ld l, h                                       ; $65FB: $6C
    db $10                                        ; $65FC: $10
    inc de                                        ; $65FD: $13
    add sp, $47                                   ; $65FE: $E8 $47

Call_020_6600:
    ld [$5769], sp                                ; $6600: $08 $69 $57
    rst RST_38                                    ; $6603: $FF

jr_020_6604:
    ld bc, $003F                                  ; $6604: $01 $3F $00
    rrca                                          ; $6607: $0F
    rst RST_08                                    ; $6608: $CF
    add b                                         ; $6609: $80
    ld [bc], a                                    ; $660A: $02
    rst RST_30                                    ; $660B: $F7
    inc hl                                        ; $660C: $23
    ld a, e                                       ; $660D: $7B
    ld sp, $F03D                                  ; $660E: $31 $3D $F0
    nop                                           ; $6611: $00
    ret nz                                        ; $6612: $C0

    ld h, h                                       ; $6613: $64
    add $C8                                       ; $6614: $C6 $C8
    ldh a, [rNR12]                                ; $6616: $F0 $12
    sub $18                                       ; $6618: $D6 $18
    ret nc                                        ; $661A: $D0

    ld [bc], a                                    ; $661B: $02
    ld h, [hl]                                    ; $661C: $66
    xor $B0                                       ; $661D: $EE $B0
    jr nz, @-$01                                  ; $661F: $20 $FD

    ld b, $19                                     ; $6621: $06 $19
    add hl, bc                                    ; $6623: $09
    rst RST_18                                    ; $6624: $DF
    jr jr_020_6687                                ; $6625: $18 $60

    cp e                                          ; $6627: $BB
    ld b, h                                       ; $6628: $44
    dec sp                                        ; $6629: $3B
    ld a, [bc]                                    ; $662A: $0A
    inc bc                                        ; $662B: $03
    db $FC                                        ; $662C: $FC
    inc c                                         ; $662D: $0C
    ld [bc], a                                    ; $662E: $02
    ldh a, [rNR13]                                ; $662F: $F0 $13
    ldh [$FF2F], a                                ; $6631: $E0 $2F
    jp Jump_000_185F                              ; $6633: $C3 $5F $18


    daa                                           ; $6636: $27
    inc [hl]                                      ; $6637: $34
    ld hl, sp+$18                                 ; $6638: $F8 $18
    sbc [hl]                                      ; $663A: $9E
    dec c                                         ; $663B: $0D
    rlca                                          ; $663C: $07
    ld a, b                                       ; $663D: $78
    jr c, @-$3D                                   ; $663E: $38 $C1

    ld [bc], a                                    ; $6640: $02
    push bc                                       ; $6641: $C5
    ld [bc], a                                    ; $6642: $02
    ld a, [hl-]                                   ; $6643: $3A
    ld bc, $1DFD                                  ; $6644: $01 $FD $1D
    ld [$ABFE], sp                                ; $6647: $08 $FE $AB
    ld [bc], a                                    ; $664A: $02
    ld a, [hl]                                    ; $664B: $7E
    ld [$900F], sp                                ; $664C: $08 $0F $90
    push af                                       ; $664F: $F5
    ld [$AA07], sp                                ; $6650: $08 $07 $AA
    ld bc, $087F                                  ; $6653: $01 $7F $08
    ccf                                           ; $6656: $3F
    ld [$1A5F], sp                                ; $6657: $08 $5F $1A
    rra                                           ; $665A: $1F
    xor d                                         ; $665B: $AA
    ld [$082F], sp                                ; $665C: $08 $2F $08
    dec b                                         ; $665F: $05
    ld [$080A], sp                                ; $6660: $08 $0A $08
    ld bc, $08AA                                  ; $6663: $01 $AA $08
    nop                                           ; $6666: $00
    ld [$08F8], sp                                ; $6667: $08 $F8 $08
    db $F4                                        ; $666A: $F4
    ld a, [de]                                    ; $666B: $1A
    db $FC                                        ; $666C: $FC
    cp d                                          ; $666D: $BA
    ld a, [de]                                    ; $666E: $1A
    ld a, [$1D2A]                                 ; $666F: $FA $2A $1D
    adc c                                         ; $6672: $89
    add sp, $08                                   ; $6673: $E8 $08
    ld d, h                                       ; $6675: $54
    xor b                                         ; $6676: $A8
    ld [$08A8], sp                                ; $6677: $08 $A8 $08
    ld b, b                                       ; $667A: $40
    ld a, [$401F]                                 ; $667B: $FA $1F $40
    ld a, [hl+]                                   ; $667E: $2A
    nop                                           ; $667F: $00
    ld bc, $0208                                  ; $6680: $01 $08 $02
    ld [$0804], sp                                ; $6683: $08 $04 $08
    dec b                                         ; $6686: $05

jr_020_6687:
    xor d                                         ; $6687: $AA
    ld [$0806], sp                                ; $6688: $08 $06 $08
    rlca                                          ; $668B: $07
    ld [$0808], sp                                ; $668C: $08 $08 $08
    add hl, bc                                    ; $668F: $09
    xor d                                         ; $6690: $AA
    inc c                                         ; $6691: $0C
    ld a, [bc]                                    ; $6692: $0A
    ld a, [bc]                                    ; $6693: $0A
    dec bc                                        ; $6694: $0B
    ld a, [bc]                                    ; $6695: $0A
    inc c                                         ; $6696: $0C
    ld [$AB0D], sp                                ; $6697: $08 $0D $AB
    ld [$080E], sp                                ; $669A: $08 $0E $08
    rrca                                          ; $669D: $0F
    ld [$0F03], sp                                ; $669E: $08 $03 $0F
    rrca                                          ; $66A1: $0F
    ld [$0F0F], a                                 ; $66A2: $EA $0F $0F
    ld a, [bc]                                    ; $66A5: $0A
    db $10                                        ; $66A6: $10
    ld [$0811], sp                                ; $66A7: $08 $11 $08
    ld [de], a                                    ; $66AA: $12
    xor d                                         ; $66AB: $AA
    ld [$0808], sp                                ; $66AC: $08 $08 $08
    inc de                                        ; $66AF: $13
    ld [$0814], sp                                ; $66B0: $08 $14 $08
    dec d                                         ; $66B3: $15
    xor d                                         ; $66B4: $AA
    ld [$0816], sp                                ; $66B5: $08 $16 $08
    rla                                           ; $66B8: $17
    ld [$0801], sp                                ; $66B9: $08 $01 $08
    ld [bc], a                                    ; $66BC: $02
    xor d                                         ; $66BD: $AA
    ld [$0804], sp                                ; $66BE: $08 $04 $08
    dec b                                         ; $66C1: $05
    ld [$0807], sp                                ; $66C2: $08 $07 $08
    jr @-$54                                      ; $66C5: $18 $AA

    ld [$0819], sp                                ; $66C7: $08 $19 $08
    ld a, [de]                                    ; $66CA: $1A
    ld [$081B], sp                                ; $66CB: $08 $1B $08
    inc bc                                        ; $66CE: $03
    ld a, [$0F0F]                                 ; $66CF: $FA $0F $0F
    rrca                                          ; $66D2: $0F
    rrca                                          ; $66D3: $0F
    ld a, [bc]                                    ; $66D4: $0A
    inc e                                         ; $66D5: $1C
    ld [$AA1D], sp                                ; $66D6: $08 $1D $AA
    ld a, [bc]                                    ; $66D9: $0A
    rra                                           ; $66DA: $1F
    ld [$0821], sp                                ; $66DB: $08 $21 $08
    ld [hl+], a                                   ; $66DE: $22
    ld [$AA25], sp                                ; $66DF: $08 $25 $AA
    ld [$0826], sp                                ; $66E2: $08 $26 $08
    add hl, hl                                    ; $66E5: $29
    ld [$0C2A], sp                                ; $66E6: $08 $2A $0C
    cpl                                           ; $66E9: $2F
    xor d                                         ; $66EA: $AA
    ld [$0830], sp                                ; $66EB: $08 $30 $08
    inc sp                                        ; $66EE: $33
    ld [$0834], sp                                ; $66EF: $08 $34 $08
    scf                                           ; $66F2: $37
    xor d                                         ; $66F3: $AA
    ld [$FA38], sp                                ; $66F4: $08 $38 $FA
    ld e, $1A                                     ; $66F7: $1E $1A
    jr nz, @+$0A                                  ; $66F9: $20 $08

    inc hl                                        ; $66FB: $23
    xor d                                         ; $66FC: $AA
    ld [$0824], sp                                ; $66FD: $08 $24 $08
    daa                                           ; $6700: $27
    ld [$0828], sp                                ; $6701: $08 $28 $08
    dec hl                                        ; $6704: $2B
    xor d                                         ; $6705: $AA
    ld [$082C], sp                                ; $6706: $08 $2C $08
    dec l                                         ; $6709: $2D
    ld [$082E], sp                                ; $670A: $08 $2E $08
    ld sp, $08AA                                  ; $670D: $31 $AA $08
    ld [hl-], a                                   ; $6710: $32
    ld [$0835], sp                                ; $6711: $08 $35 $08
    ld [hl], $08                                  ; $6714: $36 $08
    add hl, sp                                    ; $6716: $39
    or l                                          ; $6717: $B5
    ld [$FA3A], sp                                ; $6718: $08 $3A $FA
    dec bc                                        ; $671B: $0B
    dec sp                                        ; $671C: $3B
    ld [$083D], sp                                ; $671D: $08 $3D $08
    ld d, l                                       ; $6720: $55
    ld a, $08                                     ; $6721: $3E $08
    ld b, c                                       ; $6723: $41
    ld [$0842], sp                                ; $6724: $08 $42 $08
    ld b, l                                       ; $6727: $45
    ld [$4655], sp                                ; $6728: $08 $55 $46
    ld [$0849], sp                                ; $672B: $08 $49 $08
    ld c, d                                       ; $672E: $4A
    ld [$084D], sp                                ; $672F: $08 $4D $08
    ld d, l                                       ; $6732: $55
    ld c, [hl]                                    ; $6733: $4E
    ld [$0851], sp                                ; $6734: $08 $51 $08
    ld d, d                                       ; $6737: $52
    ld [$0855], sp                                ; $6738: $08 $55 $08
    ld l, d                                       ; $673B: $6A
    ld d, [hl]                                    ; $673C: $56
    ld a, [$3C0B]                                 ; $673D: $FA $0B $3C
    ld [$083F], sp                                ; $6740: $08 $3F $08
    ld b, b                                       ; $6743: $40
    xor d                                         ; $6744: $AA
    ld [$0843], sp                                ; $6745: $08 $43 $08
    ld b, h                                       ; $6748: $44
    ld [$0847], sp                                ; $6749: $08 $47 $08
    ld c, b                                       ; $674C: $48
    xor d                                         ; $674D: $AA
    ld [$084B], sp                                ; $674E: $08 $4B $08
    ld c, h                                       ; $6751: $4C
    ld [$084F], sp                                ; $6752: $08 $4F $08
    ld d, b                                       ; $6755: $50
    xor d                                         ; $6756: $AA
    ld [$0853], sp                                ; $6757: $08 $53 $08
    ld d, h                                       ; $675A: $54
    ld [$0857], sp                                ; $675B: $08 $57 $08
    ld e, b                                       ; $675E: $58
    push de                                       ; $675F: $D5
    ld a, [$1E09]                                 ; $6760: $FA $09 $1E
    ld [$0859], sp                                ; $6763: $08 $59 $08
    ld e, e                                       ; $6766: $5B
    ld [$5C55], sp                                ; $6767: $08 $55 $5C
    ld [$085F], sp                                ; $676A: $08 $5F $08
    ld h, b                                       ; $676D: $60
    ld [$0A62], sp                                ; $676E: $08 $62 $0A
    ld d, l                                       ; $6771: $55
    ld h, e                                       ; $6772: $63
    ld [$0864], sp                                ; $6773: $08 $64 $08
    ld e, [hl]                                    ; $6776: $5E
    ld [$0865], sp                                ; $6777: $08 $65 $08
    ld d, l                                       ; $677A: $55
    ld l, b                                       ; $677B: $68
    ld [$0869], sp                                ; $677C: $08 $69 $08
    ld l, h                                       ; $677F: $6C
    ld [$FA6D], sp                                ; $6780: $08 $6D $FA
    ld d, [hl]                                    ; $6783: $56
    dec e                                         ; $6784: $1D
    ld a, [bc]                                    ; $6785: $0A
    ld e, d                                       ; $6786: $5A
    ld [$AA5D], sp                                ; $6787: $08 $5D $AA
    add hl, bc                                    ; $678A: $09
    ld h, c                                       ; $678B: $61
    push de                                       ; $678C: $D5
    inc l                                         ; $678D: $2C
    dec bc                                        ; $678E: $0B
    ld h, [hl]                                    ; $678F: $66
    ld [$0867], sp                                ; $6790: $08 $67 $08
    ld l, d                                       ; $6793: $6A
    ld [$6B50], sp                                ; $6794: $08 $50 $6B
    ld [$086E], sp                                ; $6797: $08 $6E $08
    inc e                                         ; $679A: $1C
    add d                                         ; $679B: $82
    ld b, b                                       ; $679C: $40
    ld l, a                                       ; $679D: $6F
    nop                                           ; $679E: $00
    rlca                                          ; $679F: $07
    ld b, $FF                                     ; $67A0: $06 $FF
    rlca                                          ; $67A2: $07
    rlca                                          ; $67A3: $07
    rlca                                          ; $67A4: $07
    ld [bc], a                                    ; $67A5: $02
    ld d, l                                       ; $67A6: $55
    cp $08                                        ; $67A7: $FE $08
    db $FC                                        ; $67A9: $FC
    ld [$08F8], sp                                ; $67AA: $08 $F8 $08
    ldh a, [rP1]                                  ; $67AD: $F0 $00
    ld c, h                                       ; $67AF: $4C
    ldh [rNR41], a                                ; $67B0: $E0 $20
    add b                                         ; $67B2: $80
    cp b                                          ; $67B3: $B8
    ld [$0000], sp                                ; $67B4: $08 $00 $00
    ret nz                                        ; $67B7: $C0

    xor d                                         ; $67B8: $AA
    ld [$08F9], sp                                ; $67B9: $08 $F9 $08
    ei                                            ; $67BC: $FB
    rst RST_18                                    ; $67BD: $DF
    sbc a                                         ; $67BE: $9F
    ld [$AE17], sp                                ; $67BF: $08 $17 $AE
    ld [$082F], sp                                ; $67C2: $08 $2F $08
    rrca                                          ; $67C5: $0F
    ld [hl], a                                    ; $67C6: $77
    nop                                           ; $67C7: $00
    pop bc                                        ; $67C8: $C1
    di                                            ; $67C9: $F3
    xor d                                         ; $67CA: $AA
    ld [$08E1], sp                                ; $67CB: $08 $E1 $08
    jp $1B08                                      ; $67CE: $C3 $08 $1B


    ld [$8123], sp                                ; $67D1: $08 $23 $81
    ld b, b                                       ; $67D4: $40
    ld [$18F9], sp                                ; $67D5: $08 $F9 $18
    db $FC                                        ; $67D8: $FC
    nop                                           ; $67D9: $00
    inc c                                         ; $67DA: $0C
    ld [$0457], sp                                ; $67DB: $08 $57 $04
    ld [$09E4], sp                                ; $67DE: $08 $E4 $09
    add a                                         ; $67E1: $87
    ld a, b                                       ; $67E2: $78
    ld b, b                                       ; $67E3: $40
    ld [$68D7], sp                                ; $67E4: $08 $D7 $68

jr_020_67E7:
    ld [$0810], sp                                ; $67E7: $08 $10 $08
    jr nz, jr_020_67F4                            ; $67EA: $20 $08

    ld e, b                                       ; $67EC: $58
    inc c                                         ; $67ED: $0C
    or l                                          ; $67EE: $B5
    dec b                                         ; $67EF: $05
    ld hl, sp+$0A                                 ; $67F0: $F8 $0A
    inc bc                                        ; $67F2: $03
    cp a                                          ; $67F3: $BF

jr_020_67F4:
    ld a, [de]                                    ; $67F4: $1A
    cp d                                          ; $67F5: $BA
    nop                                           ; $67F6: $00
    db $EB                                        ; $67F7: $EB
    jr z, jr_020_67FA                             ; $67F8: $28 $00

jr_020_67FA:
    cp b                                          ; $67FA: $B8
    add e                                         ; $67FB: $83
    ld [$29BE], sp                                ; $67FC: $08 $BE $29
    jr nz, @-$2C                                  ; $67FF: $20 $D2

    nop                                           ; $6801: $00
    ld l, c                                       ; $6802: $69
    ld a, [hl]                                    ; $6803: $7E
    ld [$FE78], sp                                ; $6804: $08 $78 $FE
    ld e, b                                       ; $6807: $58
    db $FC                                        ; $6808: $FC
    xor d                                         ; $6809: $AA
    ld [$08F9], sp                                ; $680A: $08 $F9 $08
    ldh [c], a                                    ; $680D: $E2
    ld [$0806], sp                                ; $680E: $08 $06 $08
    adc h                                         ; $6811: $8C
    cp b                                          ; $6812: $B8
    ld c, c                                       ; $6813: $49
    ccf                                           ; $6814: $3F
    ld a, b                                       ; $6815: $78
    ld [$1E02], sp                                ; $6816: $08 $02 $1E
    ld a, $1F                                     ; $6819: $3E $1F
    ld l, e                                       ; $681B: $6B
    ld a, a                                       ; $681C: $7F
    db $10                                        ; $681D: $10
    ld [$587C], sp                                ; $681E: $08 $7C $58
    ld hl, sp+$08                                 ; $6821: $F8 $08
    inc bc                                        ; $6823: $03
    ld l, c                                       ; $6824: $69
    ldh [rP1], a                                  ; $6825: $E0 $00
    cp b                                          ; $6827: $B8
    cp $08                                        ; $6828: $FE $08
    dec e                                         ; $682A: $1D
    ld a, [$6B00]                                 ; $682B: $FA $00 $6B
    rst RST_30                                    ; $682E: $F7
    nop                                           ; $682F: $00
    ld l, e                                       ; $6830: $6B
    rst RST_18                                    ; $6831: $DF
    nop                                           ; $6832: $00
    ld e, [hl]                                    ; $6833: $5E
    nop                                           ; $6834: $00
    ld l, b                                       ; $6835: $68
    ld c, e                                       ; $6836: $4B
    adc $08                                       ; $6837: $CE $08
    rst RST_10                                    ; $6839: $D7
    db $DB                                        ; $683A: $DB
    nop                                           ; $683B: $00
    ld e, a                                       ; $683C: $5F
    nop                                           ; $683D: $00
    ld l, c                                       ; $683E: $69
    ld d, [hl]                                    ; $683F: $56
    db $E3                                        ; $6840: $E3
    ld [$08C1], sp                                ; $6841: $08 $C1 $08
    ret nz                                        ; $6844: $C0

    ld [$3F68], sp                                ; $6845: $08 $68 $3F
    ld [$1F01], sp                                ; $6848: $08 $01 $1F
    inc bc                                        ; $684B: $03
    sbc e                                         ; $684C: $9B
    jr z, jr_020_67E7                             ; $684D: $28 $98

    inc b                                         ; $684F: $04
    sbc h                                         ; $6850: $9C
    xor d                                         ; $6851: $AA
    adc c                                         ; $6852: $89
    ld a, a                                       ; $6853: $7F
    ld [$0871], sp                                ; $6854: $08 $71 $08
    ldh [$FF9A], a                                ; $6857: $E0 $9A
    add c                                         ; $6859: $81
    ld [hl], l                                    ; $685A: $75
    adc a                                         ; $685B: $8F
    sbc b                                         ; $685C: $98
    sub b                                         ; $685D: $90
    nop                                           ; $685E: $00
    ld [hl], a                                    ; $685F: $77
    ld a, c                                       ; $6860: $79
    cp a                                          ; $6861: $BF
    nop                                           ; $6862: $00
    ld l, c                                       ; $6863: $69
    rlca                                          ; $6864: $07
    nop                                           ; $6865: $00
    ret z                                         ; $6866: $C8

    db $F4                                        ; $6867: $F4
    ld [$EDF6], sp                                ; $6868: $08 $F6 $ED
    nop                                           ; $686B: $00
    halt                                          ; $686C: $76
    rra                                           ; $686D: $1F
    nop                                           ; $686E: $00
    ld l, c                                       ; $686F: $69
    inc bc                                        ; $6870: $03
    ld a, [hl]                                    ; $6871: $7E
    nop                                           ; $6872: $00
    ld l, b                                       ; $6873: $68
    ccf                                           ; $6874: $3F
    sbc d                                         ; $6875: $9A
    ld [$7F61], sp                                ; $6876: $08 $61 $7F
    ld [bc], a                                    ; $6879: $02
    ld e, c                                       ; $687A: $59
    db $FC                                        ; $687B: $FC
    ld [$A2F8], sp                                ; $687C: $08 $F8 $A2
    ld [$08F0], sp                                ; $687F: $08 $F0 $08
    or c                                          ; $6882: $B1
    cp a                                          ; $6883: $BF
    add b                                         ; $6884: $80
    nop                                           ; $6885: $00
    ret nz                                        ; $6886: $C0

    push hl                                       ; $6887: $E5
    nop                                           ; $6888: $00
    ld de, $E3A8                                  ; $6889: $11 $A8 $E3
    ld b, a                                       ; $688C: $47
    ld e, b                                       ; $688D: $58
    add a                                         ; $688E: $87
    ld [$8F45], sp                                ; $688F: $08 $45 $8F
    ld [$C303], sp                                ; $6892: $08 $03 $C3
    ld bc, $1900                                  ; $6895: $01 $00 $19
    nop                                           ; $6898: $00
    dec c                                         ; $6899: $0D
    ld a, b                                       ; $689A: $78
    ld a, c                                       ; $689B: $79
    ld [hl], b                                    ; $689C: $70
    di                                            ; $689D: $F3
    ld d, b                                       ; $689E: $50
    nop                                           ; $689F: $00
    ld a, [$6900]                                 ; $68A0: $FA $00 $69
    rlca                                          ; $68A3: $07
    nop                                           ; $68A4: $00
    cp b                                          ; $68A5: $B8
    rst RST_28                                    ; $68A6: $EF
    ld [$AFDF], sp                                ; $68A7: $08 $DF $AF
    nop                                           ; $68AA: $00
    dec de                                        ; $68AB: $1B
    halt                                          ; $68AC: $76
    ld [hl], a                                    ; $68AD: $77
    db $FC                                        ; $68AE: $FC
    ld [hl], c                                    ; $68AF: $71
    inc b                                         ; $68B0: $04
    ld a, a                                       ; $68B1: $7F
    ld a, [bc]                                    ; $68B2: $0A
    dec b                                         ; $68B3: $05
    ld d, l                                       ; $68B4: $55
    ld sp, hl                                     ; $68B5: $F9
    ld [$08F1], sp                                ; $68B6: $08 $F1 $08
    pop hl                                        ; $68B9: $E1
    ld [$08C0], sp                                ; $68BA: $08 $C0 $08
    ld c, e                                       ; $68BD: $4B
    add b                                         ; $68BE: $80
    ld [$C300], sp                                ; $68BF: $08 $00 $C3
    ld [$0881], sp                                ; $68C2: $08 $81 $08
    ld h, b                                       ; $68C5: $60
    ld d, b                                       ; $68C6: $50
    cp $38                                        ; $68C7: $FE $38
    call z, $1808                                 ; $68C9: $CC $08 $18
    db $FD                                        ; $68CC: $FD
    jr nz, @-$03                                  ; $68CD: $20 $FB

    ld a, [hl+]                                   ; $68CF: $2A
    ld bc, $08F5                                  ; $68D0: $01 $F5 $08
    db $E3                                        ; $68D3: $E3
    ld [$08C1], sp                                ; $68D4: $08 $C1 $08
    add e                                         ; $68D7: $83
    ld [$0760], a                                 ; $68D8: $EA $60 $07
    inc b                                         ; $68DB: $04
    cp a                                          ; $68DC: $BF
    ld [$087C], sp                                ; $68DD: $08 $7C $08
    ld a, b                                       ; $68E0: $78
    ld [hl+], a                                   ; $68E1: $22
    ld hl, sp-$10                                 ; $68E2: $F8 $F0
    nop                                           ; $68E4: $00
    ldh [$FFFC], a                                ; $68E5: $E0 $FC
    ld b, b                                       ; $68E7: $40
    ld b, b                                       ; $68E8: $40
    nop                                           ; $68E9: $00
    or h                                          ; $68EA: $B4
    nop                                           ; $68EB: $00
    add b                                         ; $68EC: $80
    nop                                           ; $68ED: $00
    db $10                                        ; $68EE: $10
    ld sp, hl                                     ; $68EF: $F9
    xor e                                         ; $68F0: $AB
    inc a                                         ; $68F1: $3C
    ld a, a                                       ; $68F2: $7F
    ld d, l                                       ; $68F3: $55
    jr c, jr_020_695F                             ; $68F4: $38 $69

    add $08                                       ; $68F6: $C6 $08
    ld [bc], a                                    ; $68F8: $02
    ld [$0873], sp                                ; $68F9: $08 $73 $08
    ld c, [hl]                                    ; $68FC: $4E
    di                                            ; $68FD: $F3
    ld l, c                                       ; $68FE: $69
    pop hl                                        ; $68FF: $E1
    rst RST_20                                    ; $6900: $E7
    add sp, $10                                   ; $6901: $E8 $10
    add sp, $58                                   ; $6903: $E8 $58
    ld sp, hl                                     ; $6905: $F9
    ld c, b                                       ; $6906: $48
    sub b                                         ; $6907: $90
    ld [$08B0], sp                                ; $6908: $08 $B0 $08
    ccf                                           ; $690B: $3F
    ld bc, $EAF3                                  ; $690C: $01 $F3 $EA
    inc b                                         ; $690F: $04
    and b                                         ; $6910: $A0
    ld [$0A83], sp                                ; $6911: $08 $83 $0A
    inc bc                                        ; $6914: $03
    ld [$AAF8], sp                                ; $6915: $08 $F8 $AA
    ld [$0AF0], sp                                ; $6918: $08 $F0 $0A
    cp $08                                        ; $691B: $FE $08
    db $FC                                        ; $691D: $FC
    ld a, [bc]                                    ; $691E: $0A
    ld sp, hl                                     ; $691F: $F9
    xor l                                         ; $6920: $AD
    ld [$08FB], sp                                ; $6921: $08 $FB $08
    nop                                           ; $6924: $00
    db $10                                        ; $6925: $10
    ld [$09F7], sp                                ; $6926: $08 $F7 $09
    ld d, l                                       ; $6929: $55
    jr nz, jr_020_6964                            ; $692A: $20 $38

    ld h, b                                       ; $692C: $60
    ld [$08E1], sp                                ; $692D: $08 $E1 $08
    jp $7208                                      ; $6930: $C3 $08 $72


    rst RST_08                                    ; $6933: $CF
    ld a, c                                       ; $6934: $79
    db $10                                        ; $6935: $10
    ld a, [bc]                                    ; $6936: $0A
    sbc a                                         ; $6937: $9F
    ld bc, $4308                                  ; $6938: $01 $08 $43
    ld a, [hl+]                                   ; $693B: $2A
    ld a, a                                       ; $693C: $7F
    add a                                         ; $693D: $87
    ld e, b                                       ; $693E: $58
    rrca                                          ; $693F: $0F
    ld [$793F], sp                                ; $6940: $08 $3F $79
    ld hl, sp-$60                                 ; $6943: $F8 $A0
    ld [$08E0], sp                                ; $6945: $08 $E0 $08
    add $82                                       ; $6948: $C6 $82
    sbc [hl]                                      ; $694A: $9E
    add h                                         ; $694B: $84
    db $FC                                        ; $694C: $FC
    ld d, a                                       ; $694D: $57
    adc b                                         ; $694E: $88
    ld c, b                                       ; $694F: $48
    sbc h                                         ; $6950: $9C
    ld l, b                                       ; $6951: $68
    ei                                            ; $6952: $FB
    ld a, c                                       ; $6953: $79
    jr c, @+$0A                                   ; $6954: $38 $08

    ld d, l                                       ; $6956: $55
    ld a, [hl]                                    ; $6957: $7E
    add hl, bc                                    ; $6958: $09
    ld [bc], a                                    ; $6959: $02
    add sp, $06                                   ; $695A: $E8 $06
    ld [$584C], sp                                ; $695C: $08 $4C $58

jr_020_695F:
    push de                                       ; $695F: $D5
    add b                                         ; $6960: $80
    ld [$08F3], sp                                ; $6961: $08 $F3 $08

jr_020_6964:
    jr nc, jr_020_696E                            ; $6964: $30 $08

    jr nz, jr_020_69B0                            ; $6966: $20 $48

    dec de                                        ; $6968: $1B
    ld bc, $0307                                  ; $6969: $01 $07 $03
    nop                                           ; $696C: $00
    db $10                                        ; $696D: $10

jr_020_696E:
    rst RST_00                                    ; $696E: $C7
    and b                                         ; $696F: $A0
    ld c, b                                       ; $6970: $48
    ld [hl], b                                    ; $6971: $70
    cp $08                                        ; $6972: $FE $08
    ldh [$FF08], a                                ; $6974: $E0 $08
    inc c                                         ; $6976: $0C
    sbc a                                         ; $6977: $9F
    ld [$D13F], sp                                ; $6978: $08 $3F $D1
    ld hl, sp+$09                                 ; $697B: $F8 $09
    inc l                                         ; $697D: $2C
    ld hl, sp+$0E                                 ; $697E: $F8 $0E
    rrca                                          ; $6980: $0F
    adc a                                         ; $6981: $8F
    db $10                                        ; $6982: $10
    ld l, [hl]                                    ; $6983: $6E
    rst RST_08                                    ; $6984: $CF
    ld a, c                                       ; $6985: $79
    ld c, b                                       ; $6986: $48
    rst RST_28                                    ; $6987: $EF
    ld [$0819], sp                                ; $6988: $08 $19 $08
    add b                                         ; $698B: $80
    add a                                         ; $698C: $87
    add hl, de                                    ; $698D: $19
    inc bc                                        ; $698E: $03
    inc b                                         ; $698F: $04
    rlca                                          ; $6990: $07
    dec a                                         ; $6991: $3D
    jr z, jr_020_6995                             ; $6992: $28 $01

    ld l, e                                       ; $6994: $6B

jr_020_6995:
    sub l                                         ; $6995: $95
    ld [$01FE], sp                                ; $6996: $08 $FE $01
    jr jr_020_69FB                                ; $6999: $18 $60

    ld [$0AF0], sp                                ; $699B: $08 $F0 $0A
    ld b, l                                       ; $699E: $45
    ld sp, hl                                     ; $699F: $F9
    add hl, de                                    ; $69A0: $19
    rst RST_30                                    ; $69A1: $F7
    ret nz                                        ; $69A2: $C0

    rst RST_20                                    ; $69A3: $E7
    ld a, b                                       ; $69A4: $78
    ld l, a                                       ; $69A5: $6F
    ld [$1F51], sp                                ; $69A6: $08 $51 $1F
    ld [$088F], sp                                ; $69A9: $08 $8F $08
    add a                                         ; $69AC: $87
    jp Jump_000_00C7                              ; $69AD: $C3 $C7 $00


jr_020_69B0:
    call c, Call_000_08EC                         ; $69B0: $DC $EC $08
    db $FC                                        ; $69B3: $FC
    ld [$08B0], sp                                ; $69B4: $08 $B0 $08
    add b                                         ; $69B7: $80
    add c                                         ; $69B8: $81
    ld a, [hl+]                                   ; $69B9: $2A
    pop bc                                        ; $69BA: $C1
    adc e                                         ; $69BB: $8B
    ld e, b                                       ; $69BC: $58
    rst RST_18                                    ; $69BD: $DF
    ld l, c                                       ; $69BE: $69
    rlca                                          ; $69BF: $07
    ld [$410F], sp                                ; $69C0: $08 $0F $41
    db $10                                        ; $69C3: $10

jr_020_69C4:
    add sp, $21                                   ; $69C4: $E8 $21
    ccf                                           ; $69C6: $3F
    ld b, a                                       ; $69C7: $47
    ld a, a                                       ; $69C8: $7F
    sbc a                                         ; $69C9: $9F
    ld e, b                                       ; $69CA: $58
    ldh a, [rNR10]                                ; $69CB: $F0 $10
    ld [$6801], sp                                ; $69CD: $08 $01 $68
    ld sp, hl                                     ; $69D0: $F9
    jr nz, jr_020_69C4                            ; $69D1: $20 $F1

    ret nz                                        ; $69D3: $C0

    ld h, h                                       ; $69D4: $64
    di                                            ; $69D5: $F3
    add hl, bc                                    ; $69D6: $09
    add sp, -$19                                  ; $69D7: $E8 $E7
    add d                                         ; $69D9: $82
    ld [$EF84], sp                                ; $69DA: $08 $84 $EF
    halt                                          ; $69DD: $76
    call c, Call_020_4879                         ; $69DE: $DC $79 $48
    ld [$08F7], sp                                ; $69E1: $08 $F7 $08
    ld c, b                                       ; $69E4: $48
    ld bc, $6713                                  ; $69E5: $01 $13 $67
    inc bc                                        ; $69E8: $03
    add a                                         ; $69E9: $87
    add hl, bc                                    ; $69EA: $09
    ld b, a                                       ; $69EB: $47
    rst RST_08                                    ; $69EC: $CF
    nop                                           ; $69ED: $00
    ld a, b                                       ; $69EE: $78
    ld d, l                                       ; $69EF: $55
    ld a, [bc]                                    ; $69F0: $0A
    ld [$0836], sp                                ; $69F1: $08 $36 $08
    ld b, h                                       ; $69F4: $44
    ld [$B980], sp                                ; $69F5: $08 $80 $B9
    ld [$7808], a                                 ; $69F8: $EA $08 $78

jr_020_69FB:
    ld [$0807], sp                                ; $69FB: $08 $07 $08
    adc a                                         ; $69FE: $8F
    inc l                                         ; $69FF: $2C
    rrca                                          ; $6A00: $0F
    xor e                                         ; $6A01: $AB
    ld a, [bc]                                    ; $6A02: $0A
    rra                                           ; $6A03: $1F
    ld [$0A3F], sp                                ; $6A04: $08 $3F $0A
    ld a, a                                       ; $6A07: $7F
    ld a, [bc]                                    ; $6A08: $0A
    rlca                                          ; $6A09: $07
    xor a                                         ; $6A0A: $AF
    dec b                                         ; $6A0B: $05
    ret nz                                        ; $6A0C: $C0

    nop                                           ; $6A0D: $00
    add b                                         ; $6A0E: $80
    nop                                           ; $6A0F: $00
    add sp, $00                                   ; $6A10: $E8 $00
    add sp, -$11                                  ; $6A12: $E8 $EF
    nop                                           ; $6A14: $00
    ret c                                         ; $6A15: $D8

    ld b, $00                                     ; $6A16: $06 $00
    ld [bc], a                                    ; $6A18: $02
    rst RST_18                                    ; $6A19: $DF
    inc bc                                        ; $6A1A: $03
    cp a                                          ; $6A1B: $BF
    xor d                                         ; $6A1C: $AA
    rlca                                          ; $6A1D: $07
    inc bc                                        ; $6A1E: $03
    nop                                           ; $6A1F: $00
    ld bc, $F000                                  ; $6A20: $01 $00 $F0
    nop                                           ; $6A23: $00
    ld hl, sp-$46                                 ; $6A24: $F8 $BA
    nop                                           ; $6A26: $00
    db $FC                                        ; $6A27: $FC
    rlca                                          ; $6A28: $07
    rlca                                          ; $6A29: $07
    ld b, $3F                                     ; $6A2A: $06 $3F
    ld b, $1F                                     ; $6A2C: $06 $1F
    xor d                                         ; $6A2E: $AA
    nop                                           ; $6A2F: $00
    rrca                                          ; $6A30: $0F
    nop                                           ; $6A31: $00
    add b                                         ; $6A32: $80
    nop                                           ; $6A33: $00
    ret nz                                        ; $6A34: $C0

    nop                                           ; $6A35: $00
    rst RST_38                                    ; $6A36: $FF
    db $DD                                        ; $6A37: $DD
    rlca                                          ; $6A38: $07
    ld [bc], a                                    ; $6A39: $02
    nop                                           ; $6A3A: $00
    ld [bc], a                                    ; $6A3B: $02
    ld e, a                                       ; $6A3C: $5F
    ld bc, $0081                                  ; $6A3D: $01 $81 $00
    xor l                                         ; $6A40: $AD
    ld h, b                                       ; $6A41: $60
    ld b, b                                       ; $6A42: $40
    ld [$6F4E], sp                                ; $6A43: $08 $4E $6F
    inc bc                                        ; $6A46: $03
    ld a, $00                                     ; $6A47: $3E $00
    ld [hl], l                                    ; $6A49: $75
    inc a                                         ; $6A4A: $3C
    nop                                           ; $6A4B: $00
    ld e, a                                       ; $6A4C: $5F
    inc bc                                        ; $6A4D: $03
    ccf                                           ; $6A4E: $3F
    nop                                           ; $6A4F: $00
    cp a                                          ; $6A50: $BF
    nop                                           ; $6A51: $00
    ld d, l                                       ; $6A52: $55
    jr c, jr_020_6A55                             ; $6A53: $38 $00

jr_020_6A55:
    ld sp, $2300                                  ; $6A55: $31 $00 $23
    nop                                           ; $6A58: $00
    rlca                                          ; $6A59: $07
    nop                                           ; $6A5A: $00
    ld e, d                                       ; $6A5B: $5A
    rrca                                          ; $6A5C: $0F
    nop                                           ; $6A5D: $00
    rra                                           ; $6A5E: $1F
    nop                                           ; $6A5F: $00
    ld a, c                                       ; $6A60: $79
    ld a, a                                       ; $6A61: $7F
    nop                                           ; $6A62: $00
    db $FC                                        ; $6A63: $FC
    xor d                                         ; $6A64: $AA
    ld b, $F8                                     ; $6A65: $06 $F8
    nop                                           ; $6A67: $00
    ldh a, [rP1]                                  ; $6A68: $F0 $00
    ld bc, $0300                                  ; $6A6A: $01 $00 $03
    xor d                                         ; $6A6D: $AA
    nop                                           ; $6A6E: $00
    rst RST_38                                    ; $6A6F: $FF
    ld [bc], a                                    ; $6A70: $02
    ei                                            ; $6A71: $FB
    nop                                           ; $6A72: $00
    ld sp, hl                                     ; $6A73: $F9
    nop                                           ; $6A74: $00
    ld a, [$00EE]                                 ; $6A75: $FA $EE $00
    add hl, hl                                    ; $6A78: $29
    ld bc, $0083                                  ; $6A79: $01 $83 $00
    ld a, e                                       ; $6A7C: $7B
    ld bc, $ABF7                                  ; $6A7D: $01 $F7 $AB
    nop                                           ; $6A80: $00
    rst RST_20                                    ; $6A81: $E7
    nop                                           ; $6A82: $00
    ld d, a                                       ; $6A83: $57
    nop                                           ; $6A84: $00
    or a                                          ; $6A85: $B7
    nop                                           ; $6A86: $00
    add hl, sp                                    ; $6A87: $39
    ld e, b                                       ; $6A88: $58
    cp $02                                        ; $6A89: $FE $02
    ld hl, sp+$00                                 ; $6A8B: $F8 $00
    ld l, c                                       ; $6A8D: $69
    jp z, $C0DF                                   ; $6A8E: $CA $DF $C0

    or d                                          ; $6A91: $B2
    add hl, bc                                    ; $6A92: $09
    pop bc                                        ; $6A93: $C1
    ld [$0000], sp                                ; $6A94: $08 $00 $00
    add b                                         ; $6A97: $80
    ld [$88BF], sp                                ; $6A98: $08 $BF $88
    ld [$9308], sp                                ; $6A9B: $08 $08 $93
    or e                                          ; $6A9E: $B3
    ld b, b                                       ; $6A9F: $40
    call nc, $E5A1                                ; $6AA0: $D4 $A1 $E5
    ld h, $20                                     ; $6AA3: $26 $20
    ldh a, [rOBP0]                                ; $6AA5: $F0 $48
    scf                                           ; $6AA7: $37
    ldh [rP1], a                                  ; $6AA8: $E0 $00
    jp hl                                         ; $6AAA: $E9


    db $FC                                        ; $6AAB: $FC
    xor b                                         ; $6AAC: $A8
    nop                                           ; $6AAD: $00
    cp $00                                        ; $6AAE: $FE $00
    rst RST_38                                    ; $6AB0: $FF
    ld b, $C8                                     ; $6AB1: $06 $C8
    adc $F1                                       ; $6AB3: $CE $F1
    inc b                                         ; $6AB5: $04
    push af                                       ; $6AB6: $F5
    ld [hl], b                                    ; $6AB7: $70
    ld [hl], e                                    ; $6AB8: $73
    inc l                                         ; $6AB9: $2C
    xor h                                         ; $6ABA: $AC
    ret z                                         ; $6ABB: $C8

    ld e, a                                       ; $6ABC: $5F
    add b                                         ; $6ABD: $80
    ld [de], a                                    ; $6ABE: $12
    sbc a                                         ; $6ABF: $9F
    ret nz                                        ; $6AC0: $C0

    rst RST_08                                    ; $6AC1: $CF
    ld [$BFD0], sp                                ; $6AC2: $08 $D0 $BF
    nop                                           ; $6AC5: $00
    rra                                           ; $6AC6: $1F
    rst RST_30                                    ; $6AC7: $F7
    nop                                           ; $6AC8: $00
    ld e, b                                       ; $6AC9: $58
    jr nc, jr_020_6AE5                            ; $6ACA: $30 $19

    xor d                                         ; $6ACC: $AA
    jr c, @+$2A                                   ; $6ACD: $38 $28

    add hl, bc                                    ; $6ACF: $09
    dec bc                                        ; $6AD0: $0B
    rrca                                          ; $6AD1: $0F
    db $10                                        ; $6AD2: $10
    or b                                          ; $6AD3: $B0
    rst RST_38                                    ; $6AD4: $FF
    inc b                                         ; $6AD5: $04
    ld a, a                                       ; $6AD6: $7F
    nop                                           ; $6AD7: $00
    cp c                                          ; $6AD8: $B9
    ld [hl], l                                    ; $6AD9: $75
    ccf                                           ; $6ADA: $3F
    ld [$4929], sp                                ; $6ADB: $08 $29 $49
    dec b                                         ; $6ADE: $05
    nop                                           ; $6ADF: $00
    ld a, c                                       ; $6AE0: $79
    nop                                           ; $6AE1: $00
    add hl, sp                                    ; $6AE2: $39
    ld b, $7E                                     ; $6AE3: $06 $7E

jr_020_6AE5:
    ret z                                         ; $6AE5: $C8

    ld c, b                                       ; $6AE6: $48
    ld a, [bc]                                    ; $6AE7: $0A
    sbc [hl]                                      ; $6AE8: $9E
    ld bc, $3B00                                  ; $6AE9: $01 $00 $3B
    rra                                           ; $6AEC: $1F
    rst RST_18                                    ; $6AED: $DF
    rst RST_38                                    ; $6AEE: $FF
    db $DB                                        ; $6AEF: $DB
    inc bc                                        ; $6AF0: $03
    adc $02                                       ; $6AF1: $CE $02
    ret z                                         ; $6AF3: $C8

    xor l                                         ; $6AF4: $AD
    ld [bc], a                                    ; $6AF5: $02
    call z, Call_020_4F06                         ; $6AF6: $CC $06 $4F
    ld [bc], a                                    ; $6AF9: $02
    xor c                                         ; $6AFA: $A9
    ret nz                                        ; $6AFB: $C0

    ld [bc], a                                    ; $6AFC: $02
    push de                                       ; $6AFD: $D5
    db $FD                                        ; $6AFE: $FD
    ld bc, $028C                                  ; $6AFF: $01 $8C $02
    db $FC                                        ; $6B02: $FC
    ld [bc], a                                    ; $6B03: $02
    ld hl, sp+$00                                 ; $6B04: $F8 $00
    ld d, l                                       ; $6B06: $55
    add c                                         ; $6B07: $81
    nop                                           ; $6B08: $00
    add e                                         ; $6B09: $83
    nop                                           ; $6B0A: $00
    rst RST_18                                    ; $6B0B: $DF
    nop                                           ; $6B0C: $00
    rst RST_28                                    ; $6B0D: $EF
    nop                                           ; $6B0E: $00
    ld l, d                                       ; $6B0F: $6A
    rst RST_30                                    ; $6B10: $F7
    nop                                           ; $6B11: $00
    cp e                                          ; $6B12: $BB
    ldh a, [rP1]                                  ; $6B13: $F0 $00
    and $48                                       ; $6B15: $E6 $48

Call_020_6B17:
    ret nz                                        ; $6B17: $C0

    ld d, h                                       ; $6B18: $54
    ret c                                         ; $6B19: $D8

    add hl, sp                                    ; $6B1A: $39
    rst RST_08                                    ; $6B1B: $CF
    nop                                           ; $6B1C: $00
    ret nc                                        ; $6B1D: $D0

    nop                                           ; $6B1E: $00
    ret z                                         ; $6B1F: $C8

    jp c, $A400                                   ; $6B20: $DA $00 $A4

    xor h                                         ; $6B23: $AC
    inc hl                                        ; $6B24: $23
    scf                                           ; $6B25: $37
    ld b, b                                       ; $6B26: $40
    ld [hl], e                                    ; $6B27: $73
    ld b, h                                       ; $6B28: $44
    ld [hl], h                                    ; $6B29: $74
    jp Jump_020_5888                              ; $6B2A: $C3 $88 $58


    add $CE                                       ; $6B2D: $C6 $CE
    ldh [$FFED], a                                ; $6B2F: $E0 $ED
    add hl, bc                                    ; $6B31: $09
    jr nc, jr_020_6B34                            ; $6B32: $30 $00

jr_020_6B34:
    pop de                                        ; $6B34: $D1
    cp b                                          ; $6B35: $B8
    cp c                                          ; $6B36: $B9
    sub h                                         ; $6B37: $94
    sub l                                         ; $6B38: $95
    inc c                                         ; $6B39: $0C
    ld l, l                                       ; $6B3A: $6D
    nop                                           ; $6B3B: $00
    ld e, d                                       ; $6B3C: $5A
    dec sp                                        ; $6B3D: $3B
    ld [$085A], sp                                ; $6B3E: $08 $5A $08
    ld bc, $08FE                                  ; $6B41: $01 $FE $08
    db $10                                        ; $6B44: $10
    ld sp, $A828                                  ; $6B45: $31 $28 $A8
    jr @-$5E                                      ; $6B48: $18 $A0

    inc b                                         ; $6B4A: $04
    inc d                                         ; $6B4B: $14
    rst RST_38                                    ; $6B4C: $FF
    nop                                           ; $6B4D: $00
    ld d, b                                       ; $6B4E: $50
    ccf                                           ; $6B4F: $3F
    nop                                           ; $6B50: $00
    cp a                                          ; $6B51: $BF
    inc b                                         ; $6B52: $04
    rra                                           ; $6B53: $1F
    sbc a                                         ; $6B54: $9F
    cpl                                           ; $6B55: $2F
    ld l, a                                       ; $6B56: $6F
    ld d, $17                                     ; $6B57: $16 $17
    scf                                           ; $6B59: $37
    rlca                                          ; $6B5A: $07
    db $10                                        ; $6B5B: $10
    ld b, a                                       ; $6B5C: $47
    nop                                           ; $6B5D: $00
    ld c, b                                       ; $6B5E: $48
    rst RST_18                                    ; $6B5F: $DF
    call nc, LCDCInterrupt                        ; $6B60: $D4 $48 $00
    ld [hl], a                                    ; $6B63: $77
    nop                                           ; $6B64: $00
    and a                                         ; $6B65: $A7
    nop                                           ; $6B66: $00
    inc bc                                        ; $6B67: $03
    dec de                                        ; $6B68: $1B
    cp e                                          ; $6B69: $BB
    ld [$F97B], sp                                ; $6B6A: $08 $7B $F9
    rlca                                          ; $6B6D: $07
    ld bc, $02FE                                  ; $6B6E: $01 $FE $02
    ld c, l                                       ; $6B71: $4D
    ld d, d                                       ; $6B72: $52
    db $FC                                        ; $6B73: $FC
    nop                                           ; $6B74: $00
    ld a, [$F400]                                 ; $6B75: $FA $00 $F4
    push af                                       ; $6B78: $F5
    ld a, [bc]                                    ; $6B79: $0A
    or $05                                        ; $6B7A: $F6 $05
    ret nz                                        ; $6B7C: $C0

    rst RST_08                                    ; $6B7D: $CF
    or b                                          ; $6B7E: $B0
    or a                                          ; $6B7F: $B7
    ld a, b                                       ; $6B80: $78
    nop                                           ; $6B81: $00
    ld a, d                                       ; $6B82: $7A
    nop                                           ; $6B83: $00
    ld d, d                                       ; $6B84: $52
    scf                                           ; $6B85: $37
    nop                                           ; $6B86: $00
    adc a                                         ; $6B87: $8F
    nop                                           ; $6B88: $00
    rrca                                          ; $6B89: $0F
    xor a                                         ; $6B8A: $AF
    ld [$2C6F], sp                                ; $6B8B: $08 $6F $2C
    add sp, -$11                                  ; $6B8E: $E8 $EF
    add hl, bc                                    ; $6B90: $09
    ldh [$FF08], a                                ; $6B91: $E0 $08
    xor b                                         ; $6B93: $A8
    rst RST_00                                    ; $6B94: $C7
    add b                                         ; $6B95: $80
    xor d                                         ; $6B96: $AA
    nop                                           ; $6B97: $00
    ld [hl], c                                    ; $6B98: $71
    nop                                           ; $6B99: $00
    ld sp, hl                                     ; $6B9A: $F9
    nop                                           ; $6B9B: $00
    inc bc                                        ; $6B9C: $03
    nop                                           ; $6B9D: $00
    rra                                           ; $6B9E: $1F
    ld b, l                                       ; $6B9F: $45
    rst RST_18                                    ; $6BA0: $DF
    add hl, bc                                    ; $6BA1: $09
    ccf                                           ; $6BA2: $3F
    cp a                                          ; $6BA3: $BF
    ld a, a                                       ; $6BA4: $7F
    nop                                           ; $6BA5: $00
    rst RST_38                                    ; $6BA6: $FF
    ld b, $95                                     ; $6BA7: $06 $95
    ld l, b                                       ; $6BA9: $68
    sbc a                                         ; $6BAA: $9F
    ld l, a                                       ; $6BAB: $6F
    nop                                           ; $6BAC: $00
    rst RST_30                                    ; $6BAD: $F7
    ld [bc], a                                    ; $6BAE: $02
    ld h, c                                       ; $6BAF: $61
    nop                                           ; $6BB0: $00
    dec bc                                        ; $6BB1: $0B
    adc d                                         ; $6BB2: $8A
    sbc d                                         ; $6BB3: $9A
    add c                                         ; $6BB4: $81
    sbc e                                         ; $6BB5: $9B
    ld [$BFA7], sp                                ; $6BB6: $08 $A7 $BF
    inc bc                                        ; $6BB9: $03
    ld c, b                                       ; $6BBA: $48
    ld a, a                                       ; $6BBB: $7F
    ld [bc], a                                    ; $6BBC: $02
    add b                                         ; $6BBD: $80
    cp a                                          ; $6BBE: $BF
    add hl, bc                                    ; $6BBF: $09
    ret nz                                        ; $6BC0: $C0

    rst RST_18                                    ; $6BC1: $DF
    ldh [$FF2B], a                                ; $6BC2: $E0 $2B
    and $F8                                       ; $6BC4: $E6 $F8
    ld [bc], a                                    ; $6BC6: $02
    db $FD                                        ; $6BC7: $FD
    nop                                           ; $6BC8: $00
    db $FC                                        ; $6BC9: $FC
    nop                                           ; $6BCA: $00
    ld h, b                                       ; $6BCB: $60
    xor d                                         ; $6BCC: $AA

jr_020_6BCD:
    nop                                           ; $6BCD: $00
    ccf                                           ; $6BCE: $3F
    ld a, [bc]                                    ; $6BCF: $0A
    rra                                           ; $6BD0: $1F
    ld [bc], a                                    ; $6BD1: $02
    rst RST_28                                    ; $6BD2: $EF
    nop                                           ; $6BD3: $00
    rst RST_30                                    ; $6BD4: $F7
    xor e                                         ; $6BD5: $AB
    nop                                           ; $6BD6: $00
    rlca                                          ; $6BD7: $07
    nop                                           ; $6BD8: $00
    rst RST_38                                    ; $6BD9: $FF
    inc b                                         ; $6BDA: $04
    cp $00                                        ; $6BDB: $FE $00
    ret                                           ; $6BDD: $C9


    or b                                          ; $6BDE: $B0
    ld bc, $00FA                                  ; $6BDF: $01 $FA $00
    add hl, de                                    ; $6BE2: $19
    ld c, $6E                                     ; $6BE3: $0E $6E
    ld e, $5E                                     ; $6BE5: $1E $5E
    xor b                                         ; $6BE7: $A8
    add hl, bc                                    ; $6BE8: $09
    dec a                                         ; $6BE9: $3D
    inc b                                         ; $6BEA: $04
    jr c, jr_020_6BED                             ; $6BEB: $38 $00

jr_020_6BED:
    or b                                          ; $6BED: $B0
    or a                                          ; $6BEE: $B7
    nop                                           ; $6BEF: $00
    ld a, [bc]                                    ; $6BF0: $0A
    ld h, b                                       ; $6BF1: $60
    ld bc, $031D                                  ; $6BF2: $01 $1D $03
    nop                                           ; $6BF5: $00
    push bc                                       ; $6BF6: $C5
    nop                                           ; $6BF7: $00
    adc $A8                                       ; $6BF8: $CE $A8
    nop                                           ; $6BFA: $00
    rst RST_08                                    ; $6BFB: $CF
    nop                                           ; $6BFC: $00
    inc [hl]                                      ; $6BFD: $34
    nop                                           ; $6BFE: $00
    cp b                                          ; $6BFF: $B8
    cp e                                          ; $6C00: $BB
    ld [hl], c                                    ; $6C01: $71
    nop                                           ; $6C02: $00
    ld [hl], a                                    ; $6C03: $77
    pop af                                        ; $6C04: $F1
    rst RST_30                                    ; $6C05: $F7
    ldh [$FFEC], a                                ; $6C06: $E0 $EC
    jp $87DB                                      ; $6C08: $C3 $DB $87


    cp [hl]                                       ; $6C0B: $BE
    nop                                           ; $6C0C: $00
    rlca                                          ; $6C0D: $07
    ld c, b                                       ; $6C0E: $48
    ld [$0848], sp                                ; $6C0F: $08 $48 $08
    nop                                           ; $6C12: $00
    or b                                          ; $6C13: $B0
    jr nc, jr_020_6BCD                            ; $6C14: $30 $B7

    ld [hl], b                                    ; $6C16: $70
    jr c, @+$7B                                   ; $6C17: $38 $79

    db $E3                                        ; $6C19: $E3
    db $EB                                        ; $6C1A: $EB
    pop bc                                        ; $6C1B: $C1
    pop de                                        ; $6C1C: $D1
    scf                                           ; $6C1D: $37
    ret nz                                        ; $6C1E: $C0

    sbc $08                                       ; $6C1F: $DE $08
    nop                                           ; $6C21: $00
    rst RST_38                                    ; $6C22: $FF
    nop                                           ; $6C23: $00
    adc c                                         ; $6C24: $89
    add hl, de                                    ; $6C25: $19
    xor b                                         ; $6C26: $A8
    dec b                                         ; $6C27: $05
    ld a, a                                       ; $6C28: $7F
    nop                                           ; $6C29: $00
    rra                                           ; $6C2A: $1F
    nop                                           ; $6C2B: $00
    ld e, a                                       ; $6C2C: $5F
    rst RST_18                                    ; $6C2D: $DF
    cp a                                          ; $6C2E: $BF
    ldh a, [rP1]                                  ; $6C2F: $F0 $00
    add hl, sp                                    ; $6C31: $39
    adc a                                         ; $6C32: $8F
    inc bc                                        ; $6C33: $03
    or d                                          ; $6C34: $B2
    ld b, b                                       ; $6C35: $40
    ld l, a                                       ; $6C36: $6F
    nop                                           ; $6C37: $00
    rlca                                          ; $6C38: $07
    ld b, $FF                                     ; $6C39: $06 $FF
    rlca                                          ; $6C3B: $07
    rlca                                          ; $6C3C: $07
    rlca                                          ; $6C3D: $07
    ld [bc], a                                    ; $6C3E: $02
    ld d, l                                       ; $6C3F: $55
    cp $08                                        ; $6C40: $FE $08
    db $FC                                        ; $6C42: $FC
    ld [$08F8], sp                                ; $6C43: $08 $F8 $08
    ldh a, [rP1]                                  ; $6C46: $F0 $00
    ld c, h                                       ; $6C48: $4C
    ldh [rNR41], a                                ; $6C49: $E0 $20
    add b                                         ; $6C4B: $80
    cp b                                          ; $6C4C: $B8
    ld [$0000], sp                                ; $6C4D: $08 $00 $00
    ret nz                                        ; $6C50: $C0

    xor d                                         ; $6C51: $AA
    ld [$08F9], sp                                ; $6C52: $08 $F9 $08
    ei                                            ; $6C55: $FB
    rst RST_18                                    ; $6C56: $DF
    sbc a                                         ; $6C57: $9F
    ld [$AE17], sp                                ; $6C58: $08 $17 $AE
    ld [$082F], sp                                ; $6C5B: $08 $2F $08
    rrca                                          ; $6C5E: $0F
    ld [hl], a                                    ; $6C5F: $77
    nop                                           ; $6C60: $00
    pop bc                                        ; $6C61: $C1
    di                                            ; $6C62: $F3
    xor d                                         ; $6C63: $AA
    ld [$08E1], sp                                ; $6C64: $08 $E1 $08
    jp $1B08                                      ; $6C67: $C3 $08 $1B


    ld [$8123], sp                                ; $6C6A: $08 $23 $81
    ld b, b                                       ; $6C6D: $40
    ld [$18F9], sp                                ; $6C6E: $08 $F9 $18
    db $FC                                        ; $6C71: $FC
    nop                                           ; $6C72: $00
    inc c                                         ; $6C73: $0C
    ld [$0457], sp                                ; $6C74: $08 $57 $04
    ld [$09E4], sp                                ; $6C77: $08 $E4 $09
    add a                                         ; $6C7A: $87
    ld a, b                                       ; $6C7B: $78
    ld b, b                                       ; $6C7C: $40
    ld [$68D7], sp                                ; $6C7D: $08 $D7 $68

jr_020_6C80:
    ld [$0810], sp                                ; $6C80: $08 $10 $08
    jr nz, jr_020_6C8D                            ; $6C83: $20 $08

    ld e, b                                       ; $6C85: $58
    inc c                                         ; $6C86: $0C
    or l                                          ; $6C87: $B5
    dec b                                         ; $6C88: $05
    ld hl, sp+$0A                                 ; $6C89: $F8 $0A
    inc bc                                        ; $6C8B: $03
    cp a                                          ; $6C8C: $BF

jr_020_6C8D:
    ld a, [de]                                    ; $6C8D: $1A
    cp d                                          ; $6C8E: $BA
    nop                                           ; $6C8F: $00
    db $EB                                        ; $6C90: $EB
    jr z, jr_020_6C93                             ; $6C91: $28 $00

jr_020_6C93:
    cp b                                          ; $6C93: $B8
    add e                                         ; $6C94: $83
    ld [$29BE], sp                                ; $6C95: $08 $BE $29
    jr nz, @-$2C                                  ; $6C98: $20 $D2

    nop                                           ; $6C9A: $00
    ld l, c                                       ; $6C9B: $69
    ld a, [hl]                                    ; $6C9C: $7E
    ld [$FE78], sp                                ; $6C9D: $08 $78 $FE
    ld e, b                                       ; $6CA0: $58
    db $FC                                        ; $6CA1: $FC
    xor d                                         ; $6CA2: $AA
    ld [$08F9], sp                                ; $6CA3: $08 $F9 $08
    ldh [c], a                                    ; $6CA6: $E2
    ld [$0806], sp                                ; $6CA7: $08 $06 $08
    adc h                                         ; $6CAA: $8C
    cp b                                          ; $6CAB: $B8
    ld c, c                                       ; $6CAC: $49
    ccf                                           ; $6CAD: $3F
    ld a, b                                       ; $6CAE: $78
    ld [$1E02], sp                                ; $6CAF: $08 $02 $1E
    ld a, $1F                                     ; $6CB2: $3E $1F
    ld l, e                                       ; $6CB4: $6B
    ld a, a                                       ; $6CB5: $7F
    db $10                                        ; $6CB6: $10
    ld [$587C], sp                                ; $6CB7: $08 $7C $58
    ld hl, sp+$08                                 ; $6CBA: $F8 $08
    inc bc                                        ; $6CBC: $03
    ld l, c                                       ; $6CBD: $69
    ldh [rP1], a                                  ; $6CBE: $E0 $00
    cp b                                          ; $6CC0: $B8
    cp $08                                        ; $6CC1: $FE $08
    dec e                                         ; $6CC3: $1D
    ld a, [$6B00]                                 ; $6CC4: $FA $00 $6B
    rst RST_30                                    ; $6CC7: $F7
    nop                                           ; $6CC8: $00
    ld l, e                                       ; $6CC9: $6B
    rst RST_18                                    ; $6CCA: $DF
    nop                                           ; $6CCB: $00
    ld e, [hl]                                    ; $6CCC: $5E
    nop                                           ; $6CCD: $00
    ld l, b                                       ; $6CCE: $68
    ld c, e                                       ; $6CCF: $4B
    adc $08                                       ; $6CD0: $CE $08
    rst RST_10                                    ; $6CD2: $D7
    db $DB                                        ; $6CD3: $DB
    nop                                           ; $6CD4: $00
    ld e, a                                       ; $6CD5: $5F
    nop                                           ; $6CD6: $00
    ld l, c                                       ; $6CD7: $69
    ld d, [hl]                                    ; $6CD8: $56
    db $E3                                        ; $6CD9: $E3
    ld [$08C1], sp                                ; $6CDA: $08 $C1 $08
    ret nz                                        ; $6CDD: $C0

    ld [$3F68], sp                                ; $6CDE: $08 $68 $3F
    ld [$1F01], sp                                ; $6CE1: $08 $01 $1F
    inc bc                                        ; $6CE4: $03
    sbc e                                         ; $6CE5: $9B
    jr z, jr_020_6C80                             ; $6CE6: $28 $98

    inc b                                         ; $6CE8: $04
    sbc h                                         ; $6CE9: $9C
    xor d                                         ; $6CEA: $AA
    adc c                                         ; $6CEB: $89
    ld a, a                                       ; $6CEC: $7F
    ld [$0871], sp                                ; $6CED: $08 $71 $08
    ldh [$FF9A], a                                ; $6CF0: $E0 $9A
    add c                                         ; $6CF2: $81
    ld [hl], l                                    ; $6CF3: $75
    adc a                                         ; $6CF4: $8F
    sbc b                                         ; $6CF5: $98
    sub b                                         ; $6CF6: $90
    nop                                           ; $6CF7: $00
    ld [hl], a                                    ; $6CF8: $77
    ld a, c                                       ; $6CF9: $79
    cp a                                          ; $6CFA: $BF
    nop                                           ; $6CFB: $00
    ld l, c                                       ; $6CFC: $69
    rlca                                          ; $6CFD: $07
    nop                                           ; $6CFE: $00
    ret z                                         ; $6CFF: $C8

    db $F4                                        ; $6D00: $F4
    ld [$EDF6], sp                                ; $6D01: $08 $F6 $ED
    nop                                           ; $6D04: $00
    halt                                          ; $6D05: $76
    rra                                           ; $6D06: $1F
    nop                                           ; $6D07: $00
    ld l, c                                       ; $6D08: $69
    inc bc                                        ; $6D09: $03
    ld a, [hl]                                    ; $6D0A: $7E
    nop                                           ; $6D0B: $00
    ld l, b                                       ; $6D0C: $68
    ccf                                           ; $6D0D: $3F
    sbc d                                         ; $6D0E: $9A
    ld [$7F61], sp                                ; $6D0F: $08 $61 $7F
    ld [bc], a                                    ; $6D12: $02
    ld e, c                                       ; $6D13: $59
    db $FC                                        ; $6D14: $FC
    ld [$A2F8], sp                                ; $6D15: $08 $F8 $A2
    ld [$08F0], sp                                ; $6D18: $08 $F0 $08
    or c                                          ; $6D1B: $B1
    cp a                                          ; $6D1C: $BF
    add b                                         ; $6D1D: $80
    nop                                           ; $6D1E: $00
    ret nz                                        ; $6D1F: $C0

    push hl                                       ; $6D20: $E5
    nop                                           ; $6D21: $00
    ld de, $E3A8                                  ; $6D22: $11 $A8 $E3
    ld b, a                                       ; $6D25: $47
    ld e, b                                       ; $6D26: $58
    add a                                         ; $6D27: $87
    ld [$8F45], sp                                ; $6D28: $08 $45 $8F
    ld [$C303], sp                                ; $6D2B: $08 $03 $C3
    ld bc, $1900                                  ; $6D2E: $01 $00 $19
    nop                                           ; $6D31: $00
    dec c                                         ; $6D32: $0D
    ld a, b                                       ; $6D33: $78
    ld a, c                                       ; $6D34: $79
    ld [hl], b                                    ; $6D35: $70
    di                                            ; $6D36: $F3
    ld d, b                                       ; $6D37: $50
    nop                                           ; $6D38: $00
    ld a, [$6900]                                 ; $6D39: $FA $00 $69
    rlca                                          ; $6D3C: $07
    nop                                           ; $6D3D: $00
    cp b                                          ; $6D3E: $B8
    rst RST_28                                    ; $6D3F: $EF
    ld [$AFDF], sp                                ; $6D40: $08 $DF $AF
    nop                                           ; $6D43: $00
    dec de                                        ; $6D44: $1B
    halt                                          ; $6D45: $76
    ld [hl], a                                    ; $6D46: $77
    db $FC                                        ; $6D47: $FC
    ld [hl], c                                    ; $6D48: $71
    inc b                                         ; $6D49: $04
    ld a, a                                       ; $6D4A: $7F
    ld a, [bc]                                    ; $6D4B: $0A
    dec b                                         ; $6D4C: $05
    ld d, l                                       ; $6D4D: $55
    ld sp, hl                                     ; $6D4E: $F9
    ld [$08F1], sp                                ; $6D4F: $08 $F1 $08
    pop hl                                        ; $6D52: $E1
    ld [$08C0], sp                                ; $6D53: $08 $C0 $08
    ld c, e                                       ; $6D56: $4B
    add b                                         ; $6D57: $80
    ld [$C300], sp                                ; $6D58: $08 $00 $C3
    ld [$0881], sp                                ; $6D5B: $08 $81 $08
    ld h, b                                       ; $6D5E: $60
    ld d, b                                       ; $6D5F: $50
    cp $38                                        ; $6D60: $FE $38
    call z, $1808                                 ; $6D62: $CC $08 $18
    db $FD                                        ; $6D65: $FD
    jr nz, @-$03                                  ; $6D66: $20 $FB

    ld a, [hl+]                                   ; $6D68: $2A
    ld bc, $08F5                                  ; $6D69: $01 $F5 $08
    db $E3                                        ; $6D6C: $E3
    ld [$08C1], sp                                ; $6D6D: $08 $C1 $08
    add e                                         ; $6D70: $83
    ld [$0760], a                                 ; $6D71: $EA $60 $07
    inc b                                         ; $6D74: $04
    cp a                                          ; $6D75: $BF
    ld [$087C], sp                                ; $6D76: $08 $7C $08
    ld a, b                                       ; $6D79: $78
    ld [hl+], a                                   ; $6D7A: $22
    ld hl, sp-$10                                 ; $6D7B: $F8 $F0
    nop                                           ; $6D7D: $00
    ldh [$FFFC], a                                ; $6D7E: $E0 $FC
    ld b, b                                       ; $6D80: $40
    ld b, b                                       ; $6D81: $40
    nop                                           ; $6D82: $00
    or h                                          ; $6D83: $B4
    nop                                           ; $6D84: $00
    add b                                         ; $6D85: $80
    nop                                           ; $6D86: $00
    db $10                                        ; $6D87: $10
    ld sp, hl                                     ; $6D88: $F9
    xor e                                         ; $6D89: $AB
    inc a                                         ; $6D8A: $3C
    ld a, a                                       ; $6D8B: $7F
    ld d, l                                       ; $6D8C: $55
    jr c, jr_020_6DF8                             ; $6D8D: $38 $69

    add $08                                       ; $6D8F: $C6 $08
    ld [bc], a                                    ; $6D91: $02
    ld [$0873], sp                                ; $6D92: $08 $73 $08
    ld c, [hl]                                    ; $6D95: $4E
    di                                            ; $6D96: $F3
    ld l, c                                       ; $6D97: $69
    pop hl                                        ; $6D98: $E1
    rst RST_20                                    ; $6D99: $E7
    add sp, $10                                   ; $6D9A: $E8 $10
    add sp, $58                                   ; $6D9C: $E8 $58
    ld sp, hl                                     ; $6D9E: $F9
    ld c, b                                       ; $6D9F: $48
    sub b                                         ; $6DA0: $90
    ld [$08B0], sp                                ; $6DA1: $08 $B0 $08
    ccf                                           ; $6DA4: $3F
    ld bc, $EAF3                                  ; $6DA5: $01 $F3 $EA
    inc b                                         ; $6DA8: $04
    and b                                         ; $6DA9: $A0
    ld [$0A83], sp                                ; $6DAA: $08 $83 $0A
    inc bc                                        ; $6DAD: $03
    ld [$AAF8], sp                                ; $6DAE: $08 $F8 $AA
    ld [$0AF0], sp                                ; $6DB1: $08 $F0 $0A
    cp $08                                        ; $6DB4: $FE $08
    db $FC                                        ; $6DB6: $FC
    ld a, [bc]                                    ; $6DB7: $0A
    ld sp, hl                                     ; $6DB8: $F9
    xor l                                         ; $6DB9: $AD
    ld [$08FB], sp                                ; $6DBA: $08 $FB $08
    nop                                           ; $6DBD: $00
    db $10                                        ; $6DBE: $10
    ld [$09F7], sp                                ; $6DBF: $08 $F7 $09
    ld d, l                                       ; $6DC2: $55
    jr nz, jr_020_6DFD                            ; $6DC3: $20 $38

    ld h, b                                       ; $6DC5: $60
    ld [$08E1], sp                                ; $6DC6: $08 $E1 $08
    jp $7208                                      ; $6DC9: $C3 $08 $72


    rst RST_08                                    ; $6DCC: $CF
    ld a, c                                       ; $6DCD: $79
    db $10                                        ; $6DCE: $10
    ld a, [bc]                                    ; $6DCF: $0A
    sbc a                                         ; $6DD0: $9F
    ld bc, $4308                                  ; $6DD1: $01 $08 $43
    ld a, [hl+]                                   ; $6DD4: $2A
    ld a, a                                       ; $6DD5: $7F
    add a                                         ; $6DD6: $87
    ld e, b                                       ; $6DD7: $58
    rrca                                          ; $6DD8: $0F
    ld [$793F], sp                                ; $6DD9: $08 $3F $79
    ld hl, sp-$60                                 ; $6DDC: $F8 $A0
    ld [$08E0], sp                                ; $6DDE: $08 $E0 $08
    add $82                                       ; $6DE1: $C6 $82
    sbc [hl]                                      ; $6DE3: $9E
    add h                                         ; $6DE4: $84
    db $FC                                        ; $6DE5: $FC
    ld d, a                                       ; $6DE6: $57
    adc b                                         ; $6DE7: $88
    ld c, b                                       ; $6DE8: $48
    sbc h                                         ; $6DE9: $9C
    ld l, b                                       ; $6DEA: $68
    ei                                            ; $6DEB: $FB
    ld a, c                                       ; $6DEC: $79
    jr c, @+$0A                                   ; $6DED: $38 $08

    ld d, l                                       ; $6DEF: $55
    ld a, [hl]                                    ; $6DF0: $7E
    add hl, bc                                    ; $6DF1: $09
    ld [bc], a                                    ; $6DF2: $02
    add sp, $06                                   ; $6DF3: $E8 $06
    ld [$584C], sp                                ; $6DF5: $08 $4C $58

jr_020_6DF8:
    push de                                       ; $6DF8: $D5
    add b                                         ; $6DF9: $80
    ld [$08F3], sp                                ; $6DFA: $08 $F3 $08

jr_020_6DFD:
    jr nc, jr_020_6E07                            ; $6DFD: $30 $08

    jr nz, jr_020_6E49                            ; $6DFF: $20 $48

    dec de                                        ; $6E01: $1B
    ld bc, $0307                                  ; $6E02: $01 $07 $03
    nop                                           ; $6E05: $00
    db $10                                        ; $6E06: $10

jr_020_6E07:
    rst RST_00                                    ; $6E07: $C7
    and b                                         ; $6E08: $A0
    ld c, b                                       ; $6E09: $48
    ld [hl], b                                    ; $6E0A: $70
    cp $08                                        ; $6E0B: $FE $08
    ldh [$FF08], a                                ; $6E0D: $E0 $08
    inc c                                         ; $6E0F: $0C
    sbc a                                         ; $6E10: $9F
    ld [$D13F], sp                                ; $6E11: $08 $3F $D1
    ld hl, sp+$09                                 ; $6E14: $F8 $09
    inc l                                         ; $6E16: $2C
    ld hl, sp+$0E                                 ; $6E17: $F8 $0E
    rrca                                          ; $6E19: $0F
    adc a                                         ; $6E1A: $8F
    db $10                                        ; $6E1B: $10
    ld l, [hl]                                    ; $6E1C: $6E
    rst RST_08                                    ; $6E1D: $CF
    ld a, c                                       ; $6E1E: $79
    ld c, b                                       ; $6E1F: $48
    rst RST_28                                    ; $6E20: $EF
    ld [$0819], sp                                ; $6E21: $08 $19 $08
    add b                                         ; $6E24: $80
    add a                                         ; $6E25: $87
    add hl, de                                    ; $6E26: $19
    inc bc                                        ; $6E27: $03
    inc b                                         ; $6E28: $04
    rlca                                          ; $6E29: $07
    dec a                                         ; $6E2A: $3D
    jr z, jr_020_6E2E                             ; $6E2B: $28 $01

    ld l, e                                       ; $6E2D: $6B

jr_020_6E2E:
    sub l                                         ; $6E2E: $95
    ld [$01FE], sp                                ; $6E2F: $08 $FE $01
    jr jr_020_6E94                                ; $6E32: $18 $60

    ld [$0AF0], sp                                ; $6E34: $08 $F0 $0A
    ld b, l                                       ; $6E37: $45
    ld sp, hl                                     ; $6E38: $F9
    add hl, de                                    ; $6E39: $19
    rst RST_30                                    ; $6E3A: $F7
    ret nz                                        ; $6E3B: $C0

    rst RST_20                                    ; $6E3C: $E7
    ld a, b                                       ; $6E3D: $78
    ld l, a                                       ; $6E3E: $6F
    ld [$1F51], sp                                ; $6E3F: $08 $51 $1F
    ld [$088F], sp                                ; $6E42: $08 $8F $08
    add a                                         ; $6E45: $87
    jp Jump_000_00C7                              ; $6E46: $C3 $C7 $00


jr_020_6E49:
    call c, Call_000_08EC                         ; $6E49: $DC $EC $08
    db $FC                                        ; $6E4C: $FC
    ld [$08B0], sp                                ; $6E4D: $08 $B0 $08
    add b                                         ; $6E50: $80
    add c                                         ; $6E51: $81
    ld a, [hl+]                                   ; $6E52: $2A
    pop bc                                        ; $6E53: $C1
    adc e                                         ; $6E54: $8B
    ld e, b                                       ; $6E55: $58
    rst RST_18                                    ; $6E56: $DF
    ld l, c                                       ; $6E57: $69
    rlca                                          ; $6E58: $07
    ld [$410F], sp                                ; $6E59: $08 $0F $41
    db $10                                        ; $6E5C: $10

jr_020_6E5D:
    add sp, $21                                   ; $6E5D: $E8 $21
    ccf                                           ; $6E5F: $3F
    ld b, a                                       ; $6E60: $47
    ld a, a                                       ; $6E61: $7F
    sbc a                                         ; $6E62: $9F
    ld e, b                                       ; $6E63: $58
    ldh a, [rNR10]                                ; $6E64: $F0 $10
    ld [$6801], sp                                ; $6E66: $08 $01 $68
    ld sp, hl                                     ; $6E69: $F9
    jr nz, jr_020_6E5D                            ; $6E6A: $20 $F1

    ret nz                                        ; $6E6C: $C0

    ld h, h                                       ; $6E6D: $64
    di                                            ; $6E6E: $F3
    add hl, bc                                    ; $6E6F: $09
    add sp, -$19                                  ; $6E70: $E8 $E7
    add d                                         ; $6E72: $82
    ld [$EF84], sp                                ; $6E73: $08 $84 $EF
    halt                                          ; $6E76: $76
    call c, Call_020_4879                         ; $6E77: $DC $79 $48
    ld [$08F7], sp                                ; $6E7A: $08 $F7 $08
    ld c, b                                       ; $6E7D: $48
    ld bc, $6713                                  ; $6E7E: $01 $13 $67
    inc bc                                        ; $6E81: $03
    add a                                         ; $6E82: $87
    add hl, bc                                    ; $6E83: $09
    ld b, a                                       ; $6E84: $47
    rst RST_08                                    ; $6E85: $CF
    nop                                           ; $6E86: $00
    ld a, b                                       ; $6E87: $78
    ld d, l                                       ; $6E88: $55
    ld a, [bc]                                    ; $6E89: $0A
    ld [$0836], sp                                ; $6E8A: $08 $36 $08
    ld b, h                                       ; $6E8D: $44
    ld [$B980], sp                                ; $6E8E: $08 $80 $B9
    ld [$7808], a                                 ; $6E91: $EA $08 $78

jr_020_6E94:
    ld [$0807], sp                                ; $6E94: $08 $07 $08
    adc a                                         ; $6E97: $8F
    inc l                                         ; $6E98: $2C
    rrca                                          ; $6E99: $0F
    xor e                                         ; $6E9A: $AB
    ld a, [bc]                                    ; $6E9B: $0A
    rra                                           ; $6E9C: $1F
    ld [$0A3F], sp                                ; $6E9D: $08 $3F $0A
    ld a, a                                       ; $6EA0: $7F
    ld a, [bc]                                    ; $6EA1: $0A
    rlca                                          ; $6EA2: $07
    xor a                                         ; $6EA3: $AF
    dec b                                         ; $6EA4: $05
    ret nz                                        ; $6EA5: $C0

    nop                                           ; $6EA6: $00
    add b                                         ; $6EA7: $80
    nop                                           ; $6EA8: $00
    add sp, $00                                   ; $6EA9: $E8 $00
    add sp, -$11                                  ; $6EAB: $E8 $EF
    nop                                           ; $6EAD: $00
    ret c                                         ; $6EAE: $D8

    ld b, $00                                     ; $6EAF: $06 $00
    ld [bc], a                                    ; $6EB1: $02
    rst RST_18                                    ; $6EB2: $DF
    inc bc                                        ; $6EB3: $03
    cp a                                          ; $6EB4: $BF
    xor d                                         ; $6EB5: $AA
    rlca                                          ; $6EB6: $07
    inc bc                                        ; $6EB7: $03
    nop                                           ; $6EB8: $00
    ld bc, $F000                                  ; $6EB9: $01 $00 $F0
    nop                                           ; $6EBC: $00
    ld hl, sp-$56                                 ; $6EBD: $F8 $AA
    nop                                           ; $6EBF: $00
    db $FC                                        ; $6EC0: $FC
    ld b, $E0                                     ; $6EC1: $06 $E0
    nop                                           ; $6EC3: $00
    ret nz                                        ; $6EC4: $C0

    nop                                           ; $6EC5: $00
    add a                                         ; $6EC6: $87
    xor a                                         ; $6EC7: $AF
    nop                                           ; $6EC8: $00
    adc a                                         ; $6EC9: $8F
    nop                                           ; $6ECA: $00
    sbc a                                         ; $6ECB: $9F
    ld b, $BF                                     ; $6ECC: $06 $BF
    rlca                                          ; $6ECE: $07
    cp a                                          ; $6ECF: $BF
    xor d                                         ; $6ED0: $AA
    rlca                                          ; $6ED1: $07
    rlca                                          ; $6ED2: $07
    nop                                           ; $6ED3: $00
    inc bc                                        ; $6ED4: $03
    nop                                           ; $6ED5: $00
    pop hl                                        ; $6ED6: $E1
    nop                                           ; $6ED7: $00
    pop af                                        ; $6ED8: $F1
    cp d                                          ; $6ED9: $BA
    nop                                           ; $6EDA: $00
    ld sp, hl                                     ; $6EDB: $F9
    rlca                                          ; $6EDC: $07
    rlca                                          ; $6EDD: $07
    ld b, $3F                                     ; $6EDE: $06 $3F
    inc b                                         ; $6EE0: $04
    rra                                           ; $6EE1: $1F
    xor d                                         ; $6EE2: $AA
    nop                                           ; $6EE3: $00
    adc a                                         ; $6EE4: $8F
    nop                                           ; $6EE5: $00
    rst RST_00                                    ; $6EE6: $C7
    nop                                           ; $6EE7: $00
    db $E3                                        ; $6EE8: $E3
    nop                                           ; $6EE9: $00
    pop af                                        ; $6EEA: $F1
    or l                                          ; $6EEB: $B5
    nop                                           ; $6EEC: $00
    rst RST_38                                    ; $6EED: $FF
    rlca                                          ; $6EEE: $07
    ld [bc], a                                    ; $6EEF: $02
    ld hl, sp+$04                                 ; $6EF0: $F8 $04
    db $FC                                        ; $6EF2: $FC
    nop                                           ; $6EF3: $00
    ld [hl], l                                    ; $6EF4: $75
    cp $00                                        ; $6EF5: $FE $00
    adc a                                         ; $6EF7: $8F
    ld bc, $00F9                                  ; $6EF8: $01 $F9 $00
    ld a, c                                       ; $6EFB: $79
    nop                                           ; $6EFC: $00
    ld d, l                                       ; $6EFD: $55
    add hl, sp                                    ; $6EFE: $39
    nop                                           ; $6EFF: $00
    add hl, de                                    ; $6F00: $19
    nop                                           ; $6F01: $00
    adc c                                         ; $6F02: $89
    nop                                           ; $6F03: $00
    pop bc                                        ; $6F04: $C1
    nop                                           ; $6F05: $00
    ld e, l                                       ; $6F06: $5D
    pop hl                                        ; $6F07: $E1
    nop                                           ; $6F08: $00
    pop af                                        ; $6F09: $F1
    nop                                           ; $6F0A: $00
    cp a                                          ; $6F0B: $BF
    inc bc                                        ; $6F0C: $03
    nop                                           ; $6F0D: $00
    ld [bc], a                                    ; $6F0E: $02
    xor d                                         ; $6F0F: $AA
    dec sp                                        ; $6F10: $3B
    di                                            ; $6F11: $F3
    nop                                           ; $6F12: $00
    db $ED                                        ; $6F13: $ED
    ld [bc], a                                    ; $6F14: $02
    db $EB                                        ; $6F15: $EB
    nop                                           ; $6F16: $00
    rst RST_30                                    ; $6F17: $F7
    push de                                       ; $6F18: $D5
    ld [bc], a                                    ; $6F19: $02
    ld a, e                                       ; $6F1A: $7B
    pop af                                        ; $6F1B: $F1
    nop                                           ; $6F1C: $00
    xor $00                                       ; $6F1D: $EE $00
    sbc $00                                       ; $6F1F: $DE $00
    ld d, a                                       ; $6F21: $57
    pop de                                        ; $6F22: $D1
    nop                                           ; $6F23: $00
    xor a                                         ; $6F24: $AF
    nop                                           ; $6F25: $00
    sbc [hl]                                      ; $6F26: $9E
    nop                                           ; $6F27: $00
    ld a, e                                       ; $6F28: $7B
    rlca                                          ; $6F29: $07
    ld d, l                                       ; $6F2A: $55
    rra                                           ; $6F2B: $1F
    nop                                           ; $6F2C: $00
    rst RST_28                                    ; $6F2D: $EF
    nop                                           ; $6F2E: $00
    db $FC                                        ; $6F2F: $FC
    ld b, $F8                                     ; $6F30: $06 $F8
    nop                                           ; $6F32: $00
    ld d, l                                       ; $6F33: $55
    ldh a, [rP1]                                  ; $6F34: $F0 $00
    ld bc, $0300                                  ; $6F36: $01 $00 $03
    nop                                           ; $6F39: $00
    sbc a                                         ; $6F3A: $9F
    ld b, $55                                     ; $6F3B: $06 $55
    adc a                                         ; $6F3D: $8F
    nop                                           ; $6F3E: $00
    add a                                         ; $6F3F: $87
    nop                                           ; $6F40: $00
    ret nz                                        ; $6F41: $C0

    nop                                           ; $6F42: $00
    ldh [rP1], a                                  ; $6F43: $E0 $00
    ld l, e                                       ; $6F45: $6B
    rst RST_38                                    ; $6F46: $FF
    rlca                                          ; $6F47: $07
    ld [bc], a                                    ; $6F48: $02
    rrca                                          ; $6F49: $0F
    nop                                           ; $6F4A: $00
    rlca                                          ; $6F4B: $07
    nop                                           ; $6F4C: $00
    ld e, a                                       ; $6F4D: $5F
    xor d                                         ; $6F4E: $AA
    inc bc                                        ; $6F4F: $03
    db $FC                                        ; $6F50: $FC
    nop                                           ; $6F51: $00
    ld hl, sp+$00                                 ; $6F52: $F8 $00
    db $E3                                        ; $6F54: $E3
    nop                                           ; $6F55: $00
    pop af                                        ; $6F56: $F1
    rst RST_28                                    ; $6F57: $EF
    nop                                           ; $6F58: $00
    add hl, hl                                    ; $6F59: $29
    ld c, c                                       ; $6F5A: $49
    cp $00                                        ; $6F5B: $FE $00
    sbc l                                         ; $6F5D: $9D
    ld l, c                                       ; $6F5E: $69
    adc c                                         ; $6F5F: $89
    ld d, l                                       ; $6F60: $55
    rst RST_00                                    ; $6F61: $C7
    nop                                           ; $6F62: $00
    rrca                                          ; $6F63: $0F
    nop                                           ; $6F64: $00
    rra                                           ; $6F65: $1F
    nop                                           ; $6F66: $00
    ccf                                           ; $6F67: $3F
    nop                                           ; $6F68: $00
    add sp, -$73                                  ; $6F69: $E8 $8D
    inc bc                                        ; $6F6B: $03
    ld sp, hl                                     ; $6F6C: $F9
    di                                            ; $6F6D: $F3
    nop                                           ; $6F6E: $00
    db $EC                                        ; $6F6F: $EC
    rst RST_28                                    ; $6F70: $EF
    ret nc                                        ; $6F71: $D0

    ld l, a                                       ; $6F72: $6F
    rst RST_18                                    ; $6F73: $DF
    add hl, bc                                    ; $6F74: $09
    ld a, l                                       ; $6F75: $7D
    inc bc                                        ; $6F76: $03
    nop                                           ; $6F77: $00
    adc c                                         ; $6F78: $89
    db $10                                        ; $6F79: $10
    jr z, jr_020_6FD1                             ; $6F7A: $28 $55

    nop                                           ; $6F7C: $00
    ld a, [bc]                                    ; $6F7D: $0A
    ld sp, hl                                     ; $6F7E: $F9
    ld b, $F1                                     ; $6F7F: $06 $F1
    nop                                           ; $6F81: $00
    pop hl                                        ; $6F82: $E1
    nop                                           ; $6F83: $00
    xor d                                         ; $6F84: $AA
    xor c                                         ; $6F85: $A9
    rlca                                          ; $6F86: $07
    nop                                           ; $6F87: $00
    ccf                                           ; $6F88: $3F
    ld b, $1F                                     ; $6F89: $06 $1F
    nop                                           ; $6F8B: $00
    rrca                                          ; $6F8C: $0F
    xor e                                         ; $6F8D: $AB
    nop                                           ; $6F8E: $00
    add b                                         ; $6F8F: $80
    nop                                           ; $6F90: $00
    ret nz                                        ; $6F91: $C0

    nop                                           ; $6F92: $00
    rst RST_38                                    ; $6F93: $FF
    ld b, $89                                     ; $6F94: $06 $89
    ld h, e                                       ; $6F96: $63
    rst RST_08                                    ; $6F97: $CF
    nop                                           ; $6F98: $00
    ldh a, [$FFF3]                                ; $6F99: $F0 $F3
    nop                                           ; $6F9B: $00
    db $FC                                        ; $6F9C: $FC
    ld a, a                                       ; $6F9D: $7F
    inc bc                                        ; $6F9E: $03
    ld [$0260], a                                 ; $6F9F: $EA $60 $02
    ld e, a                                       ; $6FA2: $5F
    daa                                           ; $6FA3: $27
    ld [bc], a                                    ; $6FA4: $02
    ld hl, $FE02                                  ; $6FA5: $21 $02 $FE
    push af                                       ; $6FA8: $F5
    rlca                                          ; $6FA9: $07
    ld b, $FF                                     ; $6FAA: $06 $FF
    inc bc                                        ; $6FAC: $03
    ld a, a                                       ; $6FAD: $7F
    ld [bc], a                                    ; $6FAE: $02
    db $FC                                        ; $6FAF: $FC
    ld [bc], a                                    ; $6FB0: $02
    ld d, l                                       ; $6FB1: $55
    ld hl, sp+$00                                 ; $6FB2: $F8 $00
    pop af                                        ; $6FB4: $F1
    nop                                           ; $6FB5: $00
    db $E3                                        ; $6FB6: $E3
    nop                                           ; $6FB7: $00
    rst RST_00                                    ; $6FB8: $C7
    nop                                           ; $6FB9: $00
    ld d, l                                       ; $6FBA: $55
    adc a                                         ; $6FBB: $8F
    nop                                           ; $6FBC: $00
    rra                                           ; $6FBD: $1F
    nop                                           ; $6FBE: $00
    ld a, [hl]                                    ; $6FBF: $7E
    nop                                           ; $6FC0: $00
    ld a, h                                       ; $6FC1: $7C
    nop                                           ; $6FC2: $00
    ld d, l                                       ; $6FC3: $55
    ld a, b                                       ; $6FC4: $78
    nop                                           ; $6FC5: $00
    ld [hl], c                                    ; $6FC6: $71
    nop                                           ; $6FC7: $00
    ld h, e                                       ; $6FC8: $63
    nop                                           ; $6FC9: $00
    ld b, a                                       ; $6FCA: $47
    nop                                           ; $6FCB: $00
    ld l, d                                       ; $6FCC: $6A
    rrca                                          ; $6FCD: $0F
    nop                                           ; $6FCE: $00
    ld a, c                                       ; $6FCF: $79
    ccf                                           ; $6FD0: $3F

jr_020_6FD1:
    nop                                           ; $6FD1: $00
    ld a, a                                       ; $6FD2: $7F
    nop                                           ; $6FD3: $00
    rst RST_38                                    ; $6FD4: $FF
    sbc $07                                       ; $6FD5: $DE $07
    ld [bc], a                                    ; $6FD7: $02
    ld sp, hl                                     ; $6FD8: $F9
    nop                                           ; $6FD9: $00
    ld c, a                                       ; $6FDA: $4F
    rlca                                          ; $6FDB: $07
    ld bc, $80FC                                  ; $6FDC: $01 $FC $80
    nop                                           ; $6FDF: $00
    ldh [$FFE3], a                                ; $6FE0: $E0 $E3
    ret nz                                        ; $6FE2: $C0

    rst RST_18                                    ; $6FE3: $DF
    add b                                         ; $6FE4: $80
    and [hl]                                      ; $6FE5: $A6
    sub b                                         ; $6FE6: $90
    ld a, [bc]                                    ; $6FE7: $0A
    sub a                                         ; $6FE8: $97
    rlca                                          ; $6FE9: $07
    ld l, a                                       ; $6FEA: $6F
    cp l                                          ; $6FEB: $BD
    nop                                           ; $6FEC: $00
    ld a, [$7900]                                 ; $6FED: $FA $00 $79
    xor e                                         ; $6FF0: $AB
    nop                                           ; $6FF1: $00
    ld a, a                                       ; $6FF2: $7F
    nop                                           ; $6FF3: $00
    inc e                                         ; $6FF4: $1C
    nop                                           ; $6FF5: $00
    nop                                           ; $6FF6: $00
    sbc b                                         ; $6FF7: $98
    ld [$B542], sp                                ; $6FF8: $08 $42 $B5
    sbc b                                         ; $6FFB: $98
    jp hl                                         ; $6FFC: $E9


    jr nc, jr_020_706F                            ; $6FFD: $30 $70

    adc e                                         ; $6FFF: $8B
    nop                                           ; $7000: $00
    rst RST_10                                    ; $7001: $D7
    xor b                                         ; $7002: $A8
    nop                                           ; $7003: $00
    rst RST_28                                    ; $7004: $EF
    nop                                           ; $7005: $00
    db $FC                                        ; $7006: $FC
    nop                                           ; $7007: $00
    ld hl, sp-$05                                 ; $7008: $F8 $FB
    ldh a, [rNR10]                                ; $700A: $F0 $10
    or $E1                                        ; $700C: $F6 $E1
    db $ED                                        ; $700E: $ED
    adc b                                         ; $700F: $88
    rst RST_08                                    ; $7010: $CF
    ld b, b                                       ; $7011: $40
    ld l, l                                       ; $7012: $6D
    and b                                         ; $7013: $A0
    dec c                                         ; $7014: $0D
    or a                                          ; $7015: $B7
    ret nc                                        ; $7016: $D0

    reti                                          ; $7017: $D9


    ld c, $00                                     ; $7018: $0E $00
    add sp, -$40                                  ; $701A: $E8 $C0
    ld [$1F5D], sp                                ; $701C: $08 $5D $1F
    ld l, b                                       ; $701F: $68
    cp b                                          ; $7020: $B8
    ret                                           ; $7021: $C9


    jr nz, jr_020_7024                            ; $7022: $20 $00

jr_020_7024:
    rst RST_38                                    ; $7024: $FF
    ld [bc], a                                    ; $7025: $02
    ld b, d                                       ; $7026: $42
    ld a, a                                       ; $7027: $7F
    nop                                           ; $7028: $00
    ccf                                           ; $7029: $3F
    cp a                                          ; $702A: $BF
    inc c                                         ; $702B: $0C
    call z, $D388                                 ; $702C: $CC $88 $D3
    and b                                         ; $702F: $A0
    ld c, c                                       ; $7030: $49
    cp $00                                        ; $7031: $FE $00
    ld hl, sp-$07                                 ; $7033: $F8 $F9
    ldh a, [$FFF6]                                ; $7035: $F0 $F6
    pop hl                                        ; $7037: $E1
    dec b                                         ; $7038: $05
    push hl                                       ; $7039: $E5
    inc bc                                        ; $703A: $03
    dec de                                        ; $703B: $1B
    ld [bc], a                                    ; $703C: $02
    ldh [c], a                                    ; $703D: $E2
    ld a, b                                       ; $703E: $78
    sbc l                                         ; $703F: $9D
    ld [$6E55], sp                                ; $7040: $08 $55 $6E
    ld [$086B], sp                                ; $7043: $08 $6B $08
    rst RST_20                                    ; $7046: $E7
    ld [$58D5], sp                                ; $7047: $08 $D5 $58
    sub e                                         ; $704A: $93
    adc b                                         ; $704B: $88
    dec b                                         ; $704C: $05
    dec [hl]                                      ; $704D: $35
    adc b                                         ; $704E: $88
    db $E3                                        ; $704F: $E3
    rra                                           ; $7050: $1F
    nop                                           ; $7051: $00
    ld c, b                                       ; $7052: $48
    ld d, l                                       ; $7053: $55
    ld [hl], a                                    ; $7054: $77
    ld [$0869], sp                                ; $7055: $08 $69 $08
    rst RST_38                                    ; $7058: $FF
    ld [$086D], sp                                ; $7059: $08 $6D $08
    ld c, $39                                     ; $705C: $0E $39
    ret nz                                        ; $705E: $C0

    adc $F1                                       ; $705F: $CE $F1
    nop                                           ; $7061: $00
    ld b, b                                       ; $7062: $40
    nop                                           ; $7063: $00
    pop bc                                        ; $7064: $C1
    jp z, Jump_020_4800                           ; $7065: $CA $00 $48

    ld a, $01                                     ; $7068: $3E $01
    jr @+$3E                                      ; $706A: $18 $3C

    nop                                           ; $706C: $00
    adc b                                         ; $706D: $88
    push de                                       ; $706E: $D5

jr_020_706F:
    nop                                           ; $706F: $00
    jr c, @+$72                                   ; $7070: $38 $70

    ld [$08DE], sp                                ; $7072: $08 $DE $08
    ld h, e                                       ; $7075: $63
    adc c                                         ; $7076: $89
    xor d                                         ; $7077: $AA
    dec b                                         ; $7078: $05
    ccf                                           ; $7079: $3F
    nop                                           ; $707A: $00
    rrca                                          ; $707B: $0F
    nop                                           ; $707C: $00
    adc a                                         ; $707D: $8F
    nop                                           ; $707E: $00
    ld a, a                                       ; $707F: $7F
    add l                                         ; $7080: $85
    nop                                           ; $7081: $00
    inc c                                         ; $7082: $0C
    call Call_020_5E1E                            ; $7083: $CD $1E $5E
    ld d, b                                       ; $7086: $50
    cp a                                          ; $7087: $BF
    add hl, bc                                    ; $7088: $09
    rst RST_20                                    ; $7089: $E7
    ld c, c                                       ; $708A: $49
    cp [hl]                                       ; $708B: $BE
    ld c, b                                       ; $708C: $48
    rra                                           ; $708D: $1F
    rst RST_18                                    ; $708E: $DF
    ld [$5D00], sp                                ; $708F: $08 $00 $5D
    xor d                                         ; $7092: $AA
    dec b                                         ; $7093: $05
    ld hl, sp+$00                                 ; $7094: $F8 $00
    rst RST_20                                    ; $7096: $E7
    nop                                           ; $7097: $00
    and $00                                       ; $7098: $E6 $00
    push hl                                       ; $709A: $E5
    and d                                         ; $709B: $A2
    nop                                           ; $709C: $00
    di                                            ; $709D: $F3
    nop                                           ; $709E: $00
    ldh a, [$FFF4]                                ; $709F: $F0 $F4
    ld [bc], a                                    ; $70A1: $02
    nop                                           ; $70A2: $00
    db $FC                                        ; $70A3: $FC
    add b                                         ; $70A4: $80
    nop                                           ; $70A5: $00
    jp nz, $BCC3                                  ; $70A6: $C2 $C3 $BC

    cp [hl]                                       ; $70A9: $BE
    ld c, d                                       ; $70AA: $4A
    ld l, a                                       ; $70AB: $6F
    ld [hl], l                                    ; $70AC: $75
    inc hl                                        ; $70AD: $23
    ld a, a                                       ; $70AE: $7F
    nop                                           ; $70AF: $00
    ld [$9480], sp                                ; $70B0: $08 $80 $94
    xor d                                         ; $70B3: $AA
    nop                                           ; $70B4: $00
    add b                                         ; $70B5: $80
    ld [$087A], sp                                ; $70B6: $08 $7A $08
    adc c                                         ; $70B9: $89
    ld e, b                                       ; $70BA: $58
    nop                                           ; $70BB: $00
    jr nc, jr_020_70FB                            ; $70BC: $30 $3D

    ld b, b                                       ; $70BE: $40
    ld b, b                                       ; $70BF: $40
    pop hl                                        ; $70C0: $E1
    ld a, b                                       ; $70C1: $78
    inc c                                         ; $70C2: $0C
    ld c, b                                       ; $70C3: $48
    ld e, h                                       ; $70C4: $5C
    add d                                         ; $70C5: $82
    and e                                         ; $70C6: $A3
    add sp, $02                                   ; $70C7: $E8 $02
    rst RST_28                                    ; $70C9: $EF
    inc [hl]                                      ; $70CA: $34
    scf                                           ; $70CB: $37
    call nc, $60D7                                ; $70CC: $D4 $D7 $60
    nop                                           ; $70CF: $00
    ld [hl], h                                    ; $70D0: $74
    inc bc                                        ; $70D1: $03
    ld [hl], a                                    ; $70D2: $77
    ld l, b                                       ; $70D3: $68
    ld l, h                                       ; $70D4: $6C
    ld d, e                                       ; $70D5: $53
    ld e, e                                       ; $70D6: $5B
    or a                                          ; $70D7: $B7
    nop                                           ; $70D8: $00
    xor b                                         ; $70D9: $A8
    ld d, [hl]                                    ; $70DA: $56
    rst RST_38                                    ; $70DB: $FF
    ld a, [bc]                                    ; $70DC: $0A
    ldh a, [$FF08]                                ; $70DD: $F0 $08
    ret nz                                        ; $70DF: $C0

    ld [$1E00], sp                                ; $70E0: $08 $00 $1E
    dec c                                         ; $70E3: $0D
    sbc [hl]                                      ; $70E4: $9E
    rrca                                          ; $70E5: $0F
    cpl                                           ; $70E6: $2F
    rst RST_00                                    ; $70E7: $C7
    ret z                                         ; $70E8: $C8

    adc c                                         ; $70E9: $89
    add hl, de                                    ; $70EA: $19
    nop                                           ; $70EB: $00
    and b                                         ; $70EC: $A0
    ld d, b                                       ; $70ED: $50
    add $70                                       ; $70EE: $C6 $70
    call c, $C3C2                                 ; $70F0: $DC $C2 $C3
    ld [bc], a                                    ; $70F3: $02
    adc a                                         ; $70F4: $8F
    dec d                                         ; $70F5: $15
    dec de                                        ; $70F6: $1B
    ld a, a                                       ; $70F7: $7F
    sub $D8                                       ; $70F8: $D6 $D8
    pop hl                                        ; $70FA: $E1

jr_020_70FB:
    nop                                           ; $70FB: $00
    sbc h                                         ; $70FC: $9C
    cp b                                          ; $70FD: $B8
    ld d, l                                       ; $70FE: $55
    ld b, [hl]                                    ; $70FF: $46
    jr c, jr_020_713C                             ; $7100: $38 $3A

    jr c, @-$45                                   ; $7102: $38 $B9

    ld [$08F9], sp                                ; $7104: $08 $F9 $08
    ld c, [hl]                                    ; $7107: $4E
    db $E4                                        ; $7108: $E4
    ld [$FE44], sp                                ; $7109: $08 $44 $FE
    ret c                                         ; $710C: $D8

    jr @+$0C                                      ; $710D: $18 $0A

    rlca                                          ; $710F: $07
    jp c, RST_08                                  ; $7110: $DA $08 $00

    ld bc, $1900                                  ; $7113: $01 $00 $19
    ldh [rP1], a                                  ; $7116: $E0 $00
    ld hl, sp-$20                                 ; $7118: $F8 $E0
    nop                                           ; $711A: $00
    ret nc                                        ; $711B: $D0

    nop                                           ; $711C: $00
    inc a                                         ; $711D: $3C
    cp h                                          ; $711E: $BC
    inc e                                         ; $711F: $1C
    call c, $7D1F                                 ; $7120: $DC $1F $7D
    rst RST_18                                    ; $7123: $DF
    ld [$B000], sp                                ; $7124: $08 $00 $B0
    ld [bc], a                                    ; $7127: $02
    ld l, c                                       ; $7128: $69
    db $FC                                        ; $7129: $FC
    nop                                           ; $712A: $00
    db $FD                                        ; $712B: $FD
    dec hl                                        ; $712C: $2B
    rlca                                          ; $712D: $07
    inc bc                                        ; $712E: $03
    cp e                                          ; $712F: $BB
    rlca                                          ; $7130: $07
    inc bc                                        ; $7131: $03
    ld hl, $5502                                  ; $7132: $21 $02 $55
    daa                                           ; $7135: $27
    nop                                           ; $7136: $00

jr_020_7137:
    ld h, $00                                     ; $7137: $26 $00
    db $FD                                        ; $7139: $FD
    nop                                           ; $713A: $00
    ei                                            ; $713B: $FB

jr_020_713C:
    nop                                           ; $713C: $00
    ld l, b                                       ; $713D: $68
    ld hl, sp+$00                                 ; $713E: $F8 $00
    ld a, c                                       ; $7140: $79
    sbc a                                         ; $7141: $9F
    nop                                           ; $7142: $00
    rlca                                          ; $7143: $07
    ld h, a                                       ; $7144: $67
    inc bc                                        ; $7145: $03
    ld b, b                                       ; $7146: $40
    ld e, e                                       ; $7147: $5B
    ld [$063B], sp                                ; $7148: $08 $3B $06
    halt                                          ; $714B: $76
    ld c, $6E                                     ; $714C: $0E $6E
    nop                                           ; $714E: $00
    nop                                           ; $714F: $00
    pop af                                        ; $7150: $F1
    ret nz                                        ; $7151: $C0

    rst RST_00                                    ; $7152: $C7
    and b                                         ; $7153: $A0
    xor [hl]                                      ; $7154: $AE
    add c                                         ; $7155: $81
    adc l                                         ; $7156: $8D
    jp nz, $DA0F                                  ; $7157: $C2 $0F $DA

    ldh [$FFE1], a                                ; $715A: $E0 $E1
    db $FC                                        ; $715C: $FC
    nop                                           ; $715D: $00
    reti                                          ; $715E: $D9


    ld bc, $4C88                                  ; $715F: $01 $88 $4C
    db $FD                                        ; $7162: $FD
    ld [$0F7F], sp                                ; $7163: $08 $7F $0F
    ld [$C3E8], sp                                ; $7166: $08 $E8 $C3
    inc a                                         ; $7169: $3C
    add sp, $00                                   ; $716A: $E8 $00
    ld l, e                                       ; $716C: $6B
    inc bc                                        ; $716D: $03
    db $E3                                        ; $716E: $E3
    nop                                           ; $716F: $00
    pop bc                                        ; $7170: $C1
    db $DD                                        ; $7171: $DD
    add c                                         ; $7172: $81
    inc d                                         ; $7173: $14
    cp l                                          ; $7174: $BD
    ld bc, $B86D                                  ; $7175: $01 $6D $B8
    db $EC                                        ; $7178: $EC
    ld [$10C0], sp                                ; $7179: $08 $C0 $10
    inc [hl]                                      ; $717C: $34
    rst RST_18                                    ; $717D: $DF
    cp $02                                        ; $717E: $FE $02
    cp l                                          ; $7180: $BD
    ccf                                           ; $7181: $3F
    nop                                           ; $7182: $00
    rrca                                          ; $7183: $0F
    rst RST_08                                    ; $7184: $CF
    jr c, jr_020_718A                             ; $7185: $38 $03

    ld [hl], e                                    ; $7187: $73
    adc c                                         ; $7188: $89
    add hl, bc                                    ; $7189: $09

jr_020_718A:
    cp b                                          ; $718A: $B8
    ldh [c], a                                    ; $718B: $E2
    add b                                         ; $718C: $80
    adc d                                         ; $718D: $8A
    and d                                         ; $718E: $A2
    jr z, @+$5B                                   ; $718F: $28 $59

    ld [$905F], sp                                ; $7191: $08 $5F $90
    sbc a                                         ; $7194: $9F
    jr c, jr_020_7137                             ; $7195: $38 $A0

    dec hl                                        ; $7197: $2B
    ld bc, $687D                                  ; $7198: $01 $7D $68
    ld a, [hl]                                    ; $719B: $7E
    ld [$087F], sp                                ; $719C: $08 $7F $08
    sbc c                                         ; $719F: $99
    db $DB                                        ; $71A0: $DB
    add sp, $08                                   ; $71A1: $E8 $08
    ld a, $4A                                     ; $71A3: $3E $4A
    ld [$00FF], sp                                ; $71A5: $08 $FF $00
    ld h, b                                       ; $71A8: $60
    ld a, [$B069]                                 ; $71A9: $FA $69 $B0
    ld [$0A28], sp                                ; $71AC: $08 $28 $0A
    cp $D8                                        ; $71AF: $FE $D8
    ld sp, hl                                     ; $71B1: $F9
    ld a, [de]                                    ; $71B2: $1A
    inc bc                                        ; $71B3: $03
    add e                                         ; $71B4: $83
    pop hl                                        ; $71B5: $E1
    nop                                           ; $71B6: $00
    jr c, jr_020_71D7                             ; $71B7: $38 $1E

    add hl, sp                                    ; $71B9: $39
    rlca                                          ; $71BA: $07
    dec e                                         ; $71BB: $1D
    rst RST_20                                    ; $71BC: $E7
    rra                                           ; $71BD: $1F
    sbc a                                         ; $71BE: $9F
    cp c                                          ; $71BF: $B9
    reti                                          ; $71C0: $D9


    ld bc, $00E3                                  ; $71C1: $01 $E3 $00
    rst RST_30                                    ; $71C4: $F7
    dec hl                                        ; $71C5: $2B
    rlca                                          ; $71C6: $07
    ld bc, $67C8                                  ; $71C7: $01 $C8 $67
    ret z                                         ; $71CA: $C8

    nop                                           ; $71CB: $00
    ld e, a                                       ; $71CC: $5F
    and h                                         ; $71CD: $A4
    inc bc                                        ; $71CE: $03
    ret nz                                        ; $71CF: $C0

    nop                                           ; $71D0: $00
    sub h                                         ; $71D1: $94
    cp a                                          ; $71D2: $BF
    db $10                                        ; $71D3: $10
    call c, $C6E3                                 ; $71D4: $DC $E3 $C6

jr_020_71D7:
    nop                                           ; $71D7: $00
    ld a, a                                       ; $71D8: $7F
    nop                                           ; $71D9: $00
    ld e, a                                       ; $71DA: $5F
    add b                                         ; $71DB: $80
    ld [hl], b                                    ; $71DC: $70
    jr jr_020_725D                                ; $71DD: $18 $7E

    ld l, l                                       ; $71DF: $6D
    add c                                         ; $71E0: $81
    nop                                           ; $71E1: $00
    ld a, a                                       ; $71E2: $7F
    ld [bc], a                                    ; $71E3: $02
    adc c                                         ; $71E4: $89
    nop                                           ; $71E5: $00
    sbc e                                         ; $71E6: $9B
    nop                                           ; $71E7: $00
    ld b, d                                       ; $71E8: $42
    or $00                                        ; $71E9: $F6 $00
    add sp, -$17                                  ; $71EB: $E8 $E9
    ret nc                                        ; $71ED: $D0

    rst RST_10                                    ; $71EE: $D7
    add hl, bc                                    ; $71EF: $09
    ldh [$FF0A], a                                ; $71F0: $E0 $0A
    rst RST_28                                    ; $71F2: $EF
    ld bc, $07F9                                  ; $71F3: $01 $F9 $07
    nop                                           ; $71F6: $00
    db $E3                                        ; $71F7: $E3
    nop                                           ; $71F8: $00
    inc e                                         ; $71F9: $1C
    sub [hl]                                      ; $71FA: $96
    nop                                           ; $71FB: $00
    jr @-$26                                      ; $71FC: $18 $D8

    or b                                          ; $71FE: $B0
    rst RST_20                                    ; $71FF: $E7
    ld [$70D8], sp                                ; $7200: $08 $D8 $70
    sub a                                         ; $7203: $97
    ld [$DFC3], sp                                ; $7204: $08 $C3 $DF
    ld bc, $00C0                                  ; $7207: $01 $C0 $00
    jr nc, @+$09                                  ; $720A: $30 $07

    add e                                         ; $720C: $83
    nop                                           ; $720D: $00
    add b                                         ; $720E: $80
    add e                                         ; $720F: $83
    ld a, h                                       ; $7210: $7C
    ld a, l                                       ; $7211: $7D
    cp $00                                        ; $7212: $FE $00
    ld l, a                                       ; $7214: $6F
    xor b                                         ; $7215: $A8
    ld bc, $00BF                                  ; $7216: $01 $BF $00
    jp $8100                                      ; $7219: $C3 $00 $81


    cp l                                          ; $721C: $BD
    nop                                           ; $721D: $00
    ld h, d                                       ; $721E: $62
    ld a, [hl]                                    ; $721F: $7E
    ld [$4098], sp                                ; $7220: $08 $98 $40
    ld a, a                                       ; $7223: $7F
    ld a, b                                       ; $7224: $78
    ld [$F903], sp                                ; $7225: $08 $03 $F9
    add sp, -$41                                  ; $7228: $E8 $BF
    ld bc, $0060                                  ; $722A: $01 $60 $00
    rlca                                          ; $722D: $07
    add a                                         ; $722E: $87
    ld a, b                                       ; $722F: $78
    dec bc                                        ; $7230: $0B
    ei                                            ; $7231: $FB
    inc a                                         ; $7232: $3C
    cp h                                          ; $7233: $BC
    ld e, a                                       ; $7234: $5F
    nop                                           ; $7235: $00
    rst RST_18                                    ; $7236: $DF
    nop                                           ; $7237: $00
    add hl, de                                    ; $7238: $19
    cp h                                          ; $7239: $BC
    ld bc, $00BF                                  ; $723A: $01 $BF $00
    xor e                                         ; $723D: $AB
    adc c                                         ; $723E: $89
    ld [$817B], sp                                ; $723F: $08 $7B $81
    ld a, [bc]                                    ; $7242: $0A
    cp c                                          ; $7243: $B9
    push bc                                       ; $7244: $C5
    push de                                       ; $7245: $D5
    db $ED                                        ; $7246: $ED
    nop                                           ; $7247: $00
    or $00                                        ; $7248: $F6 $00
    ld a, [$00A3]                                 ; $724A: $FA $A3 $00
    db $FD                                        ; $724D: $FD
    nop                                           ; $724E: $00
    and h                                         ; $724F: $A4
    or [hl]                                       ; $7250: $B6
    pop bc                                        ; $7251: $C1
    nop                                           ; $7252: $00
    cp e                                          ; $7253: $BB
    sub c                                         ; $7254: $91
    rlca                                          ; $7255: $07
    nop                                           ; $7256: $00
    ld a, [hl]                                    ; $7257: $7E
    ld [$807D], sp                                ; $7258: $08 $7D $80
    cp a                                          ; $725B: $BF
    add hl, bc                                    ; $725C: $09

jr_020_725D:
    ld a, [de]                                    ; $725D: $1A
    ret nz                                        ; $725E: $C0

    adc $F1                                       ; $725F: $CE $F1
    nop                                           ; $7261: $00
    ld a, h                                       ; $7262: $7C
    ld [hl], b                                    ; $7263: $70
    ld [$89F8], sp                                ; $7264: $08 $F8 $89
    ld [$30CC], sp                                ; $7267: $08 $CC $30
    ld [hl], $20                                  ; $726A: $36 $20
    ld a, [$00FC]                                 ; $726C: $FA $FC $00
    xor d                                         ; $726F: $AA
    ld a, e                                       ; $7270: $7B
    ccf                                           ; $7271: $3F
    nop                                           ; $7272: $00
    rra                                           ; $7273: $1F
    nop                                           ; $7274: $00
    rrca                                          ; $7275: $0F
    nop                                           ; $7276: $00
    rst RST_00                                    ; $7277: $C7
    xor [hl]                                      ; $7278: $AE
    nop                                           ; $7279: $00
    ld a, a                                       ; $727A: $7F
    nop                                           ; $727B: $00
    cp a                                          ; $727C: $BF
    nop                                           ; $727D: $00
    ld e, c                                       ; $727E: $59
    ld a, c                                       ; $727F: $79
    ld l, b                                       ; $7280: $68
    ld b, b                                       ; $7281: $40
    ld l, a                                       ; $7282: $6F
    nop                                           ; $7283: $00
    rlca                                          ; $7284: $07
    ld b, $FF                                     ; $7285: $06 $FF
    rlca                                          ; $7287: $07
    rlca                                          ; $7288: $07
    rlca                                          ; $7289: $07
    ld [bc], a                                    ; $728A: $02
    ld d, l                                       ; $728B: $55
    cp $08                                        ; $728C: $FE $08
    db $FC                                        ; $728E: $FC
    ld [$08F8], sp                                ; $728F: $08 $F8 $08
    ldh a, [rP1]                                  ; $7292: $F0 $00
    ld c, h                                       ; $7294: $4C
    ldh [rNR41], a                                ; $7295: $E0 $20
    add b                                         ; $7297: $80
    cp b                                          ; $7298: $B8
    ld [$0000], sp                                ; $7299: $08 $00 $00
    ret nz                                        ; $729C: $C0

    xor d                                         ; $729D: $AA
    ld [$08F9], sp                                ; $729E: $08 $F9 $08
    ei                                            ; $72A1: $FB
    rst RST_18                                    ; $72A2: $DF
    sbc a                                         ; $72A3: $9F
    ld [$AE17], sp                                ; $72A4: $08 $17 $AE
    ld [$082F], sp                                ; $72A7: $08 $2F $08
    rrca                                          ; $72AA: $0F
    ld [hl], a                                    ; $72AB: $77
    nop                                           ; $72AC: $00
    pop bc                                        ; $72AD: $C1
    di                                            ; $72AE: $F3
    xor d                                         ; $72AF: $AA
    ld [$08E1], sp                                ; $72B0: $08 $E1 $08
    jp $1B08                                      ; $72B3: $C3 $08 $1B


    ld [$8123], sp                                ; $72B6: $08 $23 $81
    ld b, b                                       ; $72B9: $40
    ld [$18F9], sp                                ; $72BA: $08 $F9 $18
    db $FC                                        ; $72BD: $FC
    nop                                           ; $72BE: $00
    inc c                                         ; $72BF: $0C
    ld [$0457], sp                                ; $72C0: $08 $57 $04
    ld [$09E4], sp                                ; $72C3: $08 $E4 $09
    add a                                         ; $72C6: $87
    ld a, b                                       ; $72C7: $78
    ld b, b                                       ; $72C8: $40
    ld [$68D7], sp                                ; $72C9: $08 $D7 $68

jr_020_72CC:
    ld [$0810], sp                                ; $72CC: $08 $10 $08
    jr nz, jr_020_72D9                            ; $72CF: $20 $08

    ld e, b                                       ; $72D1: $58
    inc c                                         ; $72D2: $0C
    or l                                          ; $72D3: $B5
    dec b                                         ; $72D4: $05
    ld hl, sp+$0A                                 ; $72D5: $F8 $0A
    inc bc                                        ; $72D7: $03
    cp a                                          ; $72D8: $BF

jr_020_72D9:
    ld a, [de]                                    ; $72D9: $1A
    cp d                                          ; $72DA: $BA
    nop                                           ; $72DB: $00
    db $EB                                        ; $72DC: $EB
    jr z, jr_020_72DF                             ; $72DD: $28 $00

jr_020_72DF:
    cp b                                          ; $72DF: $B8
    add e                                         ; $72E0: $83
    ld [$29BE], sp                                ; $72E1: $08 $BE $29
    jr nz, @-$2C                                  ; $72E4: $20 $D2

    nop                                           ; $72E6: $00
    ld l, c                                       ; $72E7: $69
    ld a, [hl]                                    ; $72E8: $7E
    ld [$FE78], sp                                ; $72E9: $08 $78 $FE
    ld e, b                                       ; $72EC: $58
    db $FC                                        ; $72ED: $FC
    xor d                                         ; $72EE: $AA
    ld [$08F9], sp                                ; $72EF: $08 $F9 $08
    ldh [c], a                                    ; $72F2: $E2
    ld [$0806], sp                                ; $72F3: $08 $06 $08
    adc h                                         ; $72F6: $8C
    cp b                                          ; $72F7: $B8
    ld c, c                                       ; $72F8: $49
    ccf                                           ; $72F9: $3F
    ld a, b                                       ; $72FA: $78
    ld [$1E02], sp                                ; $72FB: $08 $02 $1E
    ld a, $1F                                     ; $72FE: $3E $1F
    ld l, e                                       ; $7300: $6B
    ld a, a                                       ; $7301: $7F
    db $10                                        ; $7302: $10
    ld [$587C], sp                                ; $7303: $08 $7C $58
    ld hl, sp+$08                                 ; $7306: $F8 $08
    inc bc                                        ; $7308: $03
    ld l, c                                       ; $7309: $69
    ldh [rP1], a                                  ; $730A: $E0 $00
    cp b                                          ; $730C: $B8
    cp $08                                        ; $730D: $FE $08
    dec e                                         ; $730F: $1D
    ld a, [$6B00]                                 ; $7310: $FA $00 $6B
    rst RST_30                                    ; $7313: $F7
    nop                                           ; $7314: $00
    ld l, e                                       ; $7315: $6B
    rst RST_18                                    ; $7316: $DF
    nop                                           ; $7317: $00
    ld e, [hl]                                    ; $7318: $5E
    nop                                           ; $7319: $00
    ld l, b                                       ; $731A: $68
    ld c, e                                       ; $731B: $4B
    adc $08                                       ; $731C: $CE $08
    rst RST_10                                    ; $731E: $D7
    db $DB                                        ; $731F: $DB
    nop                                           ; $7320: $00
    ld e, a                                       ; $7321: $5F
    nop                                           ; $7322: $00
    ld l, c                                       ; $7323: $69
    ld d, [hl]                                    ; $7324: $56
    db $E3                                        ; $7325: $E3
    ld [$08C1], sp                                ; $7326: $08 $C1 $08
    ret nz                                        ; $7329: $C0

    ld [$3F68], sp                                ; $732A: $08 $68 $3F
    ld [$1F01], sp                                ; $732D: $08 $01 $1F
    inc bc                                        ; $7330: $03
    sbc e                                         ; $7331: $9B
    jr z, jr_020_72CC                             ; $7332: $28 $98

    inc b                                         ; $7334: $04
    sbc h                                         ; $7335: $9C
    xor d                                         ; $7336: $AA
    adc c                                         ; $7337: $89
    ld a, a                                       ; $7338: $7F
    ld [$0871], sp                                ; $7339: $08 $71 $08
    ldh [$FF9A], a                                ; $733C: $E0 $9A
    add c                                         ; $733E: $81
    ld [hl], l                                    ; $733F: $75
    adc a                                         ; $7340: $8F
    sbc b                                         ; $7341: $98
    sub b                                         ; $7342: $90
    nop                                           ; $7343: $00
    ld [hl], a                                    ; $7344: $77
    ld a, c                                       ; $7345: $79
    cp a                                          ; $7346: $BF
    nop                                           ; $7347: $00
    ld l, c                                       ; $7348: $69
    rlca                                          ; $7349: $07
    nop                                           ; $734A: $00
    ret z                                         ; $734B: $C8

    db $F4                                        ; $734C: $F4
    ld [$EDF6], sp                                ; $734D: $08 $F6 $ED
    nop                                           ; $7350: $00
    halt                                          ; $7351: $76
    rra                                           ; $7352: $1F
    nop                                           ; $7353: $00
    ld l, c                                       ; $7354: $69
    inc bc                                        ; $7355: $03
    ld a, [hl]                                    ; $7356: $7E
    nop                                           ; $7357: $00
    ld l, b                                       ; $7358: $68
    ccf                                           ; $7359: $3F
    sbc d                                         ; $735A: $9A
    ld [$7F61], sp                                ; $735B: $08 $61 $7F
    ld [bc], a                                    ; $735E: $02
    ld e, c                                       ; $735F: $59
    db $FC                                        ; $7360: $FC
    ld [$A2F8], sp                                ; $7361: $08 $F8 $A2
    ld [$08F0], sp                                ; $7364: $08 $F0 $08
    or c                                          ; $7367: $B1
    cp a                                          ; $7368: $BF
    add b                                         ; $7369: $80
    nop                                           ; $736A: $00
    ret nz                                        ; $736B: $C0

    push hl                                       ; $736C: $E5
    nop                                           ; $736D: $00
    ld de, $E3A8                                  ; $736E: $11 $A8 $E3
    ld b, a                                       ; $7371: $47
    ld e, b                                       ; $7372: $58
    add a                                         ; $7373: $87
    ld [$8F45], sp                                ; $7374: $08 $45 $8F
    ld [$C303], sp                                ; $7377: $08 $03 $C3
    ld bc, $1900                                  ; $737A: $01 $00 $19
    nop                                           ; $737D: $00
    dec c                                         ; $737E: $0D
    ld a, b                                       ; $737F: $78
    ld a, c                                       ; $7380: $79
    ld [hl], b                                    ; $7381: $70
    di                                            ; $7382: $F3
    ld d, b                                       ; $7383: $50
    nop                                           ; $7384: $00
    ld a, [$6900]                                 ; $7385: $FA $00 $69
    rlca                                          ; $7388: $07
    nop                                           ; $7389: $00
    cp b                                          ; $738A: $B8
    rst RST_28                                    ; $738B: $EF
    ld [$AFDF], sp                                ; $738C: $08 $DF $AF
    nop                                           ; $738F: $00
    dec de                                        ; $7390: $1B
    halt                                          ; $7391: $76
    ld [hl], a                                    ; $7392: $77
    db $FC                                        ; $7393: $FC
    ld [hl], c                                    ; $7394: $71
    inc b                                         ; $7395: $04
    ld a, a                                       ; $7396: $7F
    ld a, [bc]                                    ; $7397: $0A
    dec b                                         ; $7398: $05
    ld d, l                                       ; $7399: $55
    ld sp, hl                                     ; $739A: $F9
    ld [$08F1], sp                                ; $739B: $08 $F1 $08
    pop hl                                        ; $739E: $E1
    ld [$08C0], sp                                ; $739F: $08 $C0 $08
    ld c, e                                       ; $73A2: $4B
    add b                                         ; $73A3: $80
    ld [$C300], sp                                ; $73A4: $08 $00 $C3
    ld [$0881], sp                                ; $73A7: $08 $81 $08
    ld h, b                                       ; $73AA: $60
    ld d, b                                       ; $73AB: $50
    cp $38                                        ; $73AC: $FE $38
    call z, $1808                                 ; $73AE: $CC $08 $18
    db $FD                                        ; $73B1: $FD
    jr nz, @-$03                                  ; $73B2: $20 $FB

    ld a, [hl+]                                   ; $73B4: $2A
    ld bc, $08F5                                  ; $73B5: $01 $F5 $08
    db $E3                                        ; $73B8: $E3
    ld [$08C1], sp                                ; $73B9: $08 $C1 $08
    add e                                         ; $73BC: $83
    ld [$0760], a                                 ; $73BD: $EA $60 $07
    inc b                                         ; $73C0: $04
    cp a                                          ; $73C1: $BF
    ld [$087C], sp                                ; $73C2: $08 $7C $08
    ld a, b                                       ; $73C5: $78
    ld [hl+], a                                   ; $73C6: $22
    ld hl, sp-$10                                 ; $73C7: $F8 $F0
    nop                                           ; $73C9: $00
    ldh [$FFFC], a                                ; $73CA: $E0 $FC
    ld b, b                                       ; $73CC: $40
    ld b, b                                       ; $73CD: $40
    nop                                           ; $73CE: $00
    or h                                          ; $73CF: $B4
    nop                                           ; $73D0: $00
    add b                                         ; $73D1: $80
    nop                                           ; $73D2: $00
    db $10                                        ; $73D3: $10
    ld sp, hl                                     ; $73D4: $F9
    xor e                                         ; $73D5: $AB
    inc a                                         ; $73D6: $3C
    ld a, a                                       ; $73D7: $7F
    ld d, l                                       ; $73D8: $55
    jr c, jr_020_7444                             ; $73D9: $38 $69

    add $08                                       ; $73DB: $C6 $08
    ld [bc], a                                    ; $73DD: $02
    ld [$0873], sp                                ; $73DE: $08 $73 $08
    ld c, [hl]                                    ; $73E1: $4E
    di                                            ; $73E2: $F3
    ld l, c                                       ; $73E3: $69
    pop hl                                        ; $73E4: $E1
    rst RST_20                                    ; $73E5: $E7
    add sp, $10                                   ; $73E6: $E8 $10
    add sp, $58                                   ; $73E8: $E8 $58
    ld sp, hl                                     ; $73EA: $F9
    ld c, b                                       ; $73EB: $48
    sub b                                         ; $73EC: $90
    ld [$08B0], sp                                ; $73ED: $08 $B0 $08
    ccf                                           ; $73F0: $3F
    ld bc, $EAF3                                  ; $73F1: $01 $F3 $EA
    inc b                                         ; $73F4: $04
    and b                                         ; $73F5: $A0
    ld [$0A83], sp                                ; $73F6: $08 $83 $0A
    inc bc                                        ; $73F9: $03
    ld [$AAF8], sp                                ; $73FA: $08 $F8 $AA
    ld [$0AF0], sp                                ; $73FD: $08 $F0 $0A
    cp $08                                        ; $7400: $FE $08
    db $FC                                        ; $7402: $FC
    ld a, [bc]                                    ; $7403: $0A
    ld sp, hl                                     ; $7404: $F9
    xor l                                         ; $7405: $AD
    ld [$08FB], sp                                ; $7406: $08 $FB $08
    nop                                           ; $7409: $00
    db $10                                        ; $740A: $10
    ld [$09F7], sp                                ; $740B: $08 $F7 $09
    ld d, l                                       ; $740E: $55
    jr nz, jr_020_7449                            ; $740F: $20 $38

    ld h, b                                       ; $7411: $60
    ld [$08E1], sp                                ; $7412: $08 $E1 $08
    jp $7208                                      ; $7415: $C3 $08 $72


    rst RST_08                                    ; $7418: $CF
    ld a, c                                       ; $7419: $79
    db $10                                        ; $741A: $10
    ld a, [bc]                                    ; $741B: $0A
    sbc a                                         ; $741C: $9F
    ld bc, $4308                                  ; $741D: $01 $08 $43
    ld a, [hl+]                                   ; $7420: $2A
    ld a, a                                       ; $7421: $7F
    add a                                         ; $7422: $87
    ld e, b                                       ; $7423: $58
    rrca                                          ; $7424: $0F
    ld [$793F], sp                                ; $7425: $08 $3F $79
    ld hl, sp-$60                                 ; $7428: $F8 $A0
    ld [$08E0], sp                                ; $742A: $08 $E0 $08
    add $82                                       ; $742D: $C6 $82
    sbc [hl]                                      ; $742F: $9E
    add h                                         ; $7430: $84
    db $FC                                        ; $7431: $FC
    ld d, a                                       ; $7432: $57
    adc b                                         ; $7433: $88
    ld c, b                                       ; $7434: $48
    sbc h                                         ; $7435: $9C
    ld l, b                                       ; $7436: $68
    ei                                            ; $7437: $FB
    ld a, c                                       ; $7438: $79
    jr c, @+$0A                                   ; $7439: $38 $08

    ld d, l                                       ; $743B: $55
    ld a, [hl]                                    ; $743C: $7E
    add hl, bc                                    ; $743D: $09
    ld [bc], a                                    ; $743E: $02
    add sp, $06                                   ; $743F: $E8 $06
    ld [$584C], sp                                ; $7441: $08 $4C $58

jr_020_7444:
    push de                                       ; $7444: $D5
    add b                                         ; $7445: $80
    ld [$08F3], sp                                ; $7446: $08 $F3 $08

jr_020_7449:
    jr nc, jr_020_7453                            ; $7449: $30 $08

    jr nz, jr_020_7495                            ; $744B: $20 $48

    dec de                                        ; $744D: $1B
    ld bc, $0307                                  ; $744E: $01 $07 $03
    nop                                           ; $7451: $00
    db $10                                        ; $7452: $10

jr_020_7453:
    rst RST_00                                    ; $7453: $C7
    and b                                         ; $7454: $A0
    ld c, b                                       ; $7455: $48
    ld [hl], b                                    ; $7456: $70
    cp $08                                        ; $7457: $FE $08
    ldh [$FF08], a                                ; $7459: $E0 $08
    inc c                                         ; $745B: $0C
    sbc a                                         ; $745C: $9F
    ld [$D13F], sp                                ; $745D: $08 $3F $D1
    ld hl, sp+$09                                 ; $7460: $F8 $09
    inc l                                         ; $7462: $2C
    ld hl, sp+$0E                                 ; $7463: $F8 $0E
    rrca                                          ; $7465: $0F
    adc a                                         ; $7466: $8F
    db $10                                        ; $7467: $10
    ld l, [hl]                                    ; $7468: $6E
    rst RST_08                                    ; $7469: $CF
    ld a, c                                       ; $746A: $79
    ld c, b                                       ; $746B: $48
    rst RST_28                                    ; $746C: $EF
    ld [$0819], sp                                ; $746D: $08 $19 $08
    add b                                         ; $7470: $80
    add a                                         ; $7471: $87
    add hl, de                                    ; $7472: $19
    inc bc                                        ; $7473: $03
    inc b                                         ; $7474: $04
    rlca                                          ; $7475: $07
    dec a                                         ; $7476: $3D
    jr z, jr_020_747A                             ; $7477: $28 $01

    ld l, e                                       ; $7479: $6B

jr_020_747A:
    sub l                                         ; $747A: $95
    ld [$01FE], sp                                ; $747B: $08 $FE $01
    jr jr_020_74E0                                ; $747E: $18 $60

    ld [$0AF0], sp                                ; $7480: $08 $F0 $0A
    ld b, l                                       ; $7483: $45
    ld sp, hl                                     ; $7484: $F9
    add hl, de                                    ; $7485: $19
    rst RST_30                                    ; $7486: $F7
    ret nz                                        ; $7487: $C0

    rst RST_20                                    ; $7488: $E7
    ld a, b                                       ; $7489: $78
    ld l, a                                       ; $748A: $6F
    ld [$1F51], sp                                ; $748B: $08 $51 $1F
    ld [$088F], sp                                ; $748E: $08 $8F $08
    add a                                         ; $7491: $87
    jp Jump_000_00C7                              ; $7492: $C3 $C7 $00


jr_020_7495:
    call c, Call_000_08EC                         ; $7495: $DC $EC $08
    db $FC                                        ; $7498: $FC
    ld [$08B0], sp                                ; $7499: $08 $B0 $08
    add b                                         ; $749C: $80
    add c                                         ; $749D: $81
    ld a, [hl+]                                   ; $749E: $2A
    pop bc                                        ; $749F: $C1
    adc e                                         ; $74A0: $8B
    ld e, b                                       ; $74A1: $58
    rst RST_18                                    ; $74A2: $DF
    ld l, c                                       ; $74A3: $69
    rlca                                          ; $74A4: $07
    ld [$410F], sp                                ; $74A5: $08 $0F $41
    db $10                                        ; $74A8: $10

jr_020_74A9:
    add sp, $21                                   ; $74A9: $E8 $21
    ccf                                           ; $74AB: $3F
    ld b, a                                       ; $74AC: $47
    ld a, a                                       ; $74AD: $7F
    sbc a                                         ; $74AE: $9F
    ld e, b                                       ; $74AF: $58
    ldh a, [rNR10]                                ; $74B0: $F0 $10
    ld [$6801], sp                                ; $74B2: $08 $01 $68
    ld sp, hl                                     ; $74B5: $F9
    jr nz, jr_020_74A9                            ; $74B6: $20 $F1

    ret nz                                        ; $74B8: $C0

    ld h, h                                       ; $74B9: $64
    di                                            ; $74BA: $F3
    add hl, bc                                    ; $74BB: $09
    add sp, -$19                                  ; $74BC: $E8 $E7
    add d                                         ; $74BE: $82
    ld [$EF84], sp                                ; $74BF: $08 $84 $EF
    halt                                          ; $74C2: $76
    call c, Call_020_4879                         ; $74C3: $DC $79 $48
    ld [$08F7], sp                                ; $74C6: $08 $F7 $08
    ld c, b                                       ; $74C9: $48
    ld bc, $6713                                  ; $74CA: $01 $13 $67
    inc bc                                        ; $74CD: $03
    add a                                         ; $74CE: $87
    add hl, bc                                    ; $74CF: $09
    ld b, a                                       ; $74D0: $47
    rst RST_08                                    ; $74D1: $CF
    nop                                           ; $74D2: $00
    ld a, b                                       ; $74D3: $78
    ld d, l                                       ; $74D4: $55
    ld a, [bc]                                    ; $74D5: $0A
    ld [$0836], sp                                ; $74D6: $08 $36 $08
    ld b, h                                       ; $74D9: $44
    ld [$B980], sp                                ; $74DA: $08 $80 $B9
    ld [$7808], a                                 ; $74DD: $EA $08 $78

jr_020_74E0:
    ld [$0807], sp                                ; $74E0: $08 $07 $08
    adc a                                         ; $74E3: $8F
    inc l                                         ; $74E4: $2C
    rrca                                          ; $74E5: $0F
    xor d                                         ; $74E6: $AA
    ld a, [bc]                                    ; $74E7: $0A
    rra                                           ; $74E8: $1F
    ld [$0A3F], sp                                ; $74E9: $08 $3F $0A
    ld a, a                                       ; $74EC: $7F
    ld [$FFC0], sp                                ; $74ED: $08 $C0 $FF
    nop                                           ; $74F0: $00
    ret c                                         ; $74F1: $D8

    nop                                           ; $74F2: $00
    ld l, b                                       ; $74F3: $68
    nop                                           ; $74F4: $00
    ld l, b                                       ; $74F5: $68
    nop                                           ; $74F6: $00
    ld e, b                                       ; $74F7: $58
    cp a                                          ; $74F8: $BF
    ld b, $00                                     ; $74F9: $06 $00
    ld [bc], a                                    ; $74FB: $02
    and b                                         ; $74FC: $A0
    rlca                                          ; $74FD: $07
    ld [bc], a                                    ; $74FE: $02
    cp a                                          ; $74FF: $BF
    rlca                                          ; $7500: $07
    ld d, l                                       ; $7501: $55
    inc bc                                        ; $7502: $03
    nop                                           ; $7503: $00
    ld bc, $F000                                  ; $7504: $01 $00 $F0
    nop                                           ; $7507: $00
    ld hl, sp+$00                                 ; $7508: $F8 $00
    ld [hl], l                                    ; $750A: $75
    db $FC                                        ; $750B: $FC
    rlca                                          ; $750C: $07
    rlca                                          ; $750D: $07
    ld b, $3F                                     ; $750E: $06 $3F
    ld b, $1F                                     ; $7510: $06 $1F
    nop                                           ; $7512: $00
    ld d, l                                       ; $7513: $55
    rrca                                          ; $7514: $0F
    nop                                           ; $7515: $00
    add b                                         ; $7516: $80
    nop                                           ; $7517: $00
    ret nz                                        ; $7518: $C0

    nop                                           ; $7519: $00
    rst RST_38                                    ; $751A: $FF
    rlca                                          ; $751B: $07
    cp d                                          ; $751C: $BA
    ld [bc], a                                    ; $751D: $02
    nop                                           ; $751E: $00
    ld [bc], a                                    ; $751F: $02
    ld e, a                                       ; $7520: $5F
    inc bc                                        ; $7521: $03
    rlca                                          ; $7522: $07
    nop                                           ; $7523: $00
    inc bc                                        ; $7524: $03
    xor e                                         ; $7525: $AB
    nop                                           ; $7526: $00
    pop af                                        ; $7527: $F1
    nop                                           ; $7528: $00
    ld hl, sp+$00                                 ; $7529: $F8 $00
    db $FC                                        ; $752B: $FC
    nop                                           ; $752C: $00
    adc a                                         ; $752D: $8F
    sub $07                                       ; $752E: $D6 $07
    dec b                                         ; $7530: $05
    ret nz                                        ; $7531: $C0

    nop                                           ; $7532: $00
    add b                                         ; $7533: $80
    nop                                           ; $7534: $00
    add hl, hl                                    ; $7535: $29
    ld a, h                                       ; $7536: $7C
    xor d                                         ; $7537: $AA
    nop                                           ; $7538: $00
    nop                                           ; $7539: $00
    nop                                           ; $753A: $00
    inc bc                                        ; $753B: $03
    nop                                           ; $753C: $00
    rst RST_20                                    ; $753D: $E7
    inc b                                         ; $753E: $04
    db $E3                                        ; $753F: $E3
    xor l                                         ; $7540: $AD
    nop                                           ; $7541: $00
    rra                                           ; $7542: $1F
    nop                                           ; $7543: $00
    ccf                                           ; $7544: $3F
    nop                                           ; $7545: $00
    add hl, de                                    ; $7546: $19
    adc a                                         ; $7547: $8F
    nop                                           ; $7548: $00
    ld d, l                                       ; $7549: $55
    rst RST_08                                    ; $754A: $CF
    inc b                                         ; $754B: $04
    add a                                         ; $754C: $87
    nop                                           ; $754D: $00
    db $FC                                        ; $754E: $FC
    ld b, $F8                                     ; $754F: $06 $F8
    nop                                           ; $7551: $00
    ld d, a                                       ; $7552: $57
    ldh a, [rP1]                                  ; $7553: $F0 $00
    ld bc, $0300                                  ; $7555: $01 $00 $03
    nop                                           ; $7558: $00
    add hl, hl                                    ; $7559: $29
    ld c, c                                       ; $755A: $49
    ld [hl], l                                    ; $755B: $75
    rst RST_38                                    ; $755C: $FF
    rlca                                          ; $755D: $07
    ld [bc], a                                    ; $755E: $02
    adc c                                         ; $755F: $89
    inc sp                                        ; $7560: $33
    nop                                           ; $7561: $00
    jr nc, jr_020_7564                            ; $7562: $30 $00

jr_020_7564:
    ld e, e                                       ; $7564: $5B
    nop                                           ; $7565: $00
    nop                                           ; $7566: $00
    add c                                         ; $7567: $81
    nop                                           ; $7568: $00
    cp c                                          ; $7569: $B9
    db $FC                                        ; $756A: $FC
    nop                                           ; $756B: $00
    sbc l                                         ; $756C: $9D
    ld e, a                                       ; $756D: $5F
    ld a, a                                       ; $756E: $7F
    nop                                           ; $756F: $00
    ccf                                           ; $7570: $3F
    inc b                                         ; $7571: $04
    add hl, sp                                    ; $7572: $39
    ld a, l                                       ; $7573: $7D
    rlca                                          ; $7574: $07
    ld sp, hl                                     ; $7575: $F9
    inc h                                         ; $7576: $24
    ld hl, sp-$05                                 ; $7577: $F8 $FB
    ld [$F9FA], sp                                ; $7579: $08 $FA $F9
    nop                                           ; $757C: $00
    ldh a, [c]                                    ; $757D: $F2
    or $5F                                        ; $757E: $F6 $5F
    rst RST_30                                    ; $7580: $F7
    nop                                           ; $7581: $00
    ldh a, [rP1]                                  ; $7582: $F0 $00
    add hl, de                                    ; $7584: $19
    ld l, c                                       ; $7585: $69
    adc c                                         ; $7586: $89
    rst RST_18                                    ; $7587: $DF
    ld b, b                                       ; $7588: $40
    add a                                         ; $7589: $87
    nop                                           ; $758A: $00
    inc bc                                        ; $758B: $03
    ld a, e                                       ; $758C: $7B
    ld bc, $00FD                                  ; $758D: $01 $FD $00
    cp $23                                        ; $7590: $FE $23
    jr nz, jr_020_75D3                            ; $7592: $20 $3F

    add hl, bc                                    ; $7594: $09
    ld b, b                                       ; $7595: $40
    ld [hl], a                                    ; $7596: $77
    add b                                         ; $7597: $80
    ret c                                         ; $7598: $D8

    ld [$EF61], sp                                ; $7599: $08 $61 $EF
    add hl, bc                                    ; $759C: $09
    ld l, b                                       ; $759D: $68
    rst RST_18                                    ; $759E: $DF
    ld [$7F3B], sp                                ; $759F: $08 $3B $7F
    nop                                           ; $75A2: $00
    sub d                                         ; $75A3: $92
    ld [hl], b                                    ; $75A4: $70
    cp a                                          ; $75A5: $BF
    rra                                           ; $75A6: $1F
    jr c, jr_020_75B0                             ; $75A7: $38 $07

    rst RST_20                                    ; $75A9: $E7
    ret c                                         ; $75AA: $D8

    ld sp, hl                                     ; $75AB: $F9
    cp e                                          ; $75AC: $BB
    ld l, b                                       ; $75AD: $68
    xor $08                                       ; $75AE: $EE $08

jr_020_75B0:
    xor b                                         ; $75B0: $A8
    add hl, bc                                    ; $75B1: $09
    rst RST_38                                    ; $75B2: $FF
    rlca                                          ; $75B3: $07
    nop                                           ; $75B4: $00
    ldh [$FFA8], a                                ; $75B5: $E0 $A8

jr_020_75B7:
    nop                                           ; $75B7: $00
    xor c                                         ; $75B8: $A9
    inc bc                                        ; $75B9: $03
    ei                                            ; $75BA: $FB
    db $FC                                        ; $75BB: $FC
    db $FD                                        ; $75BC: $FD
    ld hl, sp-$21                                 ; $75BD: $F8 $DF
    jr jr_020_75CE                                ; $75BF: $18 $0D

    ldh a, [$FFD8]                                ; $75C1: $F0 $D8
    rrca                                          ; $75C3: $0F
    dec bc                                        ; $75C4: $0B
    adc d                                         ; $75C5: $8A
    ld de, $E9C8                                  ; $75C6: $11 $C8 $E9
    nop                                           ; $75C9: $00
    ld e, b                                       ; $75CA: $58
    ld e, e                                       ; $75CB: $5B
    dec bc                                        ; $75CC: $0B
    inc l                                         ; $75CD: $2C

jr_020_75CE:
    xor l                                         ; $75CE: $AD
    inc h                                         ; $75CF: $24
    ld bc, $1AA5                                  ; $75D0: $01 $A5 $1A

jr_020_75D3:
    jp c, $E000                                   ; $75D3: $DA $00 $E0

    rrca                                          ; $75D6: $0F
    rst RST_28                                    ; $75D7: $EF
    jr @-$29                                      ; $75D8: $18 $D5

    sbc b                                         ; $75DA: $98
    ld a, [bc]                                    ; $75DB: $0A
    ld a, [$FD08]                                 ; $75DC: $FA $08 $FD
    ld c, $7D                                     ; $75DF: $0E $7D
    adc c                                         ; $75E1: $89
    ld [hl-], a                                   ; $75E2: $32
    rra                                           ; $75E3: $1F
    rst RST_18                                    ; $75E4: $DF
    add hl, bc                                    ; $75E5: $09
    jr z, jr_020_75B7                             ; $75E6: $28 $CF

    scf                                           ; $75E8: $37
    nop                                           ; $75E9: $00
    sub a                                         ; $75EA: $97
    xor [hl]                                      ; $75EB: $AE
    nop                                           ; $75EC: $00
    rst RST_30                                    ; $75ED: $F7
    nop                                           ; $75EE: $00
    rlca                                          ; $75EF: $07
    nop                                           ; $75F0: $00
    adc c                                         ; $75F1: $89
    inc c                                         ; $75F2: $0C
    ld a, h                                       ; $75F3: $7C
    dec d                                         ; $75F4: $15
    inc bc                                        ; $75F5: $03
    ld [hl], e                                    ; $75F6: $73
    adc c                                         ; $75F7: $89
    nop                                           ; $75F8: $00
    cp a                                          ; $75F9: $BF
    nop                                           ; $75FA: $00

jr_020_75FB:
    ret nz                                        ; $75FB: $C0

    nop                                           ; $75FC: $00
    adc l                                         ; $75FD: $8D
    jr c, jr_020_75FB                             ; $75FE: $38 $FB

    ld bc, $0DFD                                  ; $7600: $01 $FD $0D
    sbc b                                         ; $7603: $98
    ld a, [$CD08]                                 ; $7604: $FA $08 $CD
    ld e, b                                       ; $7607: $58
    ld [$FFF7], sp                                ; $7608: $08 $F7 $FF
    rlca                                          ; $760B: $07
    ld [bc], a                                    ; $760C: $02
    ccf                                           ; $760D: $3F
    nop                                           ; $760E: $00
    ld a, [hl+]                                   ; $760F: $2A
    rra                                           ; $7610: $1F
    rst RST_18                                    ; $7611: $DF
    adc b                                         ; $7612: $88
    or a                                          ; $7613: $B7
    ld [$08CF], sp                                ; $7614: $08 $CF $08
    rst RST_20                                    ; $7617: $E7
    inc hl                                        ; $7618: $23
    ld [$18EB], sp                                ; $7619: $08 $EB $18
    ld h, b                                       ; $761C: $60
    dec bc                                        ; $761D: $0B
    ld l, e                                       ; $761E: $6B
    add hl, de                                    ; $761F: $19
    ld a, b                                       ; $7620: $78
    sbc [hl]                                      ; $7621: $9E
    nop                                           ; $7622: $00
    rrca                                          ; $7623: $0F
    rst RST_28                                    ; $7624: $EF
    dec bc                                        ; $7625: $0B
    cp c                                          ; $7626: $B9
    add hl, bc                                    ; $7627: $09
    jp hl                                         ; $7628: $E9


    ld a, a                                       ; $7629: $7F
    and b                                         ; $762A: $A0
    nop                                           ; $762B: $00
    rst RST_38                                    ; $762C: $FF
    nop                                           ; $762D: $00
    add e                                         ; $762E: $83
    ld b, b                                       ; $762F: $40
    ld l, a                                       ; $7630: $6F
    nop                                           ; $7631: $00
    rlca                                          ; $7632: $07
    ld b, $FF                                     ; $7633: $06 $FF
    rlca                                          ; $7635: $07
    rlca                                          ; $7636: $07
    rlca                                          ; $7637: $07
    ld [bc], a                                    ; $7638: $02
    ld d, l                                       ; $7639: $55
    cp $08                                        ; $763A: $FE $08
    db $FC                                        ; $763C: $FC
    ld [$08F8], sp                                ; $763D: $08 $F8 $08
    ldh a, [rP1]                                  ; $7640: $F0 $00
    ld c, h                                       ; $7642: $4C
    ldh [rNR41], a                                ; $7643: $E0 $20
    add b                                         ; $7645: $80
    cp b                                          ; $7646: $B8
    ld [$0000], sp                                ; $7647: $08 $00 $00
    ret nz                                        ; $764A: $C0

    xor d                                         ; $764B: $AA
    ld [$08F9], sp                                ; $764C: $08 $F9 $08
    ei                                            ; $764F: $FB
    rst RST_18                                    ; $7650: $DF
    sbc a                                         ; $7651: $9F
    ld [$AE17], sp                                ; $7652: $08 $17 $AE
    ld [$082F], sp                                ; $7655: $08 $2F $08
    rrca                                          ; $7658: $0F
    ld [hl], a                                    ; $7659: $77
    nop                                           ; $765A: $00
    pop bc                                        ; $765B: $C1
    di                                            ; $765C: $F3
    xor d                                         ; $765D: $AA
    ld [$08E1], sp                                ; $765E: $08 $E1 $08
    jp $1B08                                      ; $7661: $C3 $08 $1B


    ld [$8123], sp                                ; $7664: $08 $23 $81
    ld b, b                                       ; $7667: $40
    ld [$18F9], sp                                ; $7668: $08 $F9 $18
    db $FC                                        ; $766B: $FC
    nop                                           ; $766C: $00
    inc c                                         ; $766D: $0C
    ld [$0457], sp                                ; $766E: $08 $57 $04
    ld [$09E4], sp                                ; $7671: $08 $E4 $09
    add a                                         ; $7674: $87
    ld a, b                                       ; $7675: $78
    ld b, b                                       ; $7676: $40
    ld [$68D7], sp                                ; $7677: $08 $D7 $68

jr_020_767A:
    ld [$0810], sp                                ; $767A: $08 $10 $08
    jr nz, jr_020_7687                            ; $767D: $20 $08

    ld e, b                                       ; $767F: $58
    inc c                                         ; $7680: $0C
    or l                                          ; $7681: $B5
    dec b                                         ; $7682: $05
    ld hl, sp+$0A                                 ; $7683: $F8 $0A
    inc bc                                        ; $7685: $03
    cp a                                          ; $7686: $BF

jr_020_7687:
    ld a, [de]                                    ; $7687: $1A
    cp d                                          ; $7688: $BA
    nop                                           ; $7689: $00
    db $EB                                        ; $768A: $EB
    jr z, jr_020_768D                             ; $768B: $28 $00

jr_020_768D:
    cp b                                          ; $768D: $B8
    add e                                         ; $768E: $83
    ld [$29BE], sp                                ; $768F: $08 $BE $29
    jr nz, @-$2C                                  ; $7692: $20 $D2

    nop                                           ; $7694: $00
    ld l, c                                       ; $7695: $69
    ld a, [hl]                                    ; $7696: $7E
    ld [$FE78], sp                                ; $7697: $08 $78 $FE
    ld e, b                                       ; $769A: $58
    db $FC                                        ; $769B: $FC
    xor d                                         ; $769C: $AA
    ld [$08F9], sp                                ; $769D: $08 $F9 $08
    ldh [c], a                                    ; $76A0: $E2
    ld [$0806], sp                                ; $76A1: $08 $06 $08
    adc h                                         ; $76A4: $8C
    cp b                                          ; $76A5: $B8
    ld c, c                                       ; $76A6: $49
    ccf                                           ; $76A7: $3F
    ld a, b                                       ; $76A8: $78
    ld [$1E02], sp                                ; $76A9: $08 $02 $1E
    ld a, $1F                                     ; $76AC: $3E $1F
    ld l, e                                       ; $76AE: $6B
    ld a, a                                       ; $76AF: $7F
    db $10                                        ; $76B0: $10
    ld [$587C], sp                                ; $76B1: $08 $7C $58
    ld hl, sp+$08                                 ; $76B4: $F8 $08
    inc bc                                        ; $76B6: $03
    ld l, c                                       ; $76B7: $69
    ldh [rP1], a                                  ; $76B8: $E0 $00
    cp b                                          ; $76BA: $B8
    cp $08                                        ; $76BB: $FE $08
    dec e                                         ; $76BD: $1D
    ld a, [$6B00]                                 ; $76BE: $FA $00 $6B
    rst RST_30                                    ; $76C1: $F7
    nop                                           ; $76C2: $00
    ld l, e                                       ; $76C3: $6B
    rst RST_18                                    ; $76C4: $DF
    nop                                           ; $76C5: $00
    ld e, [hl]                                    ; $76C6: $5E
    nop                                           ; $76C7: $00
    ld l, b                                       ; $76C8: $68
    ld c, e                                       ; $76C9: $4B
    adc $08                                       ; $76CA: $CE $08
    rst RST_10                                    ; $76CC: $D7
    db $DB                                        ; $76CD: $DB
    nop                                           ; $76CE: $00
    ld e, a                                       ; $76CF: $5F
    nop                                           ; $76D0: $00
    ld l, c                                       ; $76D1: $69
    ld d, [hl]                                    ; $76D2: $56
    db $E3                                        ; $76D3: $E3
    ld [$08C1], sp                                ; $76D4: $08 $C1 $08
    ret nz                                        ; $76D7: $C0

    ld [$3F68], sp                                ; $76D8: $08 $68 $3F
    ld [$1F01], sp                                ; $76DB: $08 $01 $1F
    inc bc                                        ; $76DE: $03
    sbc e                                         ; $76DF: $9B
    jr z, jr_020_767A                             ; $76E0: $28 $98

    inc b                                         ; $76E2: $04
    sbc h                                         ; $76E3: $9C
    xor d                                         ; $76E4: $AA
    adc c                                         ; $76E5: $89
    ld a, a                                       ; $76E6: $7F
    ld [$0871], sp                                ; $76E7: $08 $71 $08
    ldh [$FF9A], a                                ; $76EA: $E0 $9A
    add c                                         ; $76EC: $81
    ld [hl], l                                    ; $76ED: $75
    adc a                                         ; $76EE: $8F
    sbc b                                         ; $76EF: $98
    sub b                                         ; $76F0: $90
    nop                                           ; $76F1: $00
    ld [hl], a                                    ; $76F2: $77
    ld a, c                                       ; $76F3: $79
    cp a                                          ; $76F4: $BF
    nop                                           ; $76F5: $00
    ld l, c                                       ; $76F6: $69
    rlca                                          ; $76F7: $07
    nop                                           ; $76F8: $00
    ret z                                         ; $76F9: $C8

    db $F4                                        ; $76FA: $F4
    ld [$EDF6], sp                                ; $76FB: $08 $F6 $ED
    nop                                           ; $76FE: $00
    halt                                          ; $76FF: $76
    rra                                           ; $7700: $1F
    nop                                           ; $7701: $00
    ld l, c                                       ; $7702: $69
    inc bc                                        ; $7703: $03
    ld a, [hl]                                    ; $7704: $7E
    nop                                           ; $7705: $00
    ld l, b                                       ; $7706: $68
    ccf                                           ; $7707: $3F
    sbc d                                         ; $7708: $9A
    ld [$7F61], sp                                ; $7709: $08 $61 $7F
    ld [bc], a                                    ; $770C: $02
    ld e, c                                       ; $770D: $59
    db $FC                                        ; $770E: $FC
    ld [$A2F8], sp                                ; $770F: $08 $F8 $A2
    ld [$08F0], sp                                ; $7712: $08 $F0 $08
    or c                                          ; $7715: $B1
    cp a                                          ; $7716: $BF
    add b                                         ; $7717: $80
    nop                                           ; $7718: $00
    ret nz                                        ; $7719: $C0

    push hl                                       ; $771A: $E5
    nop                                           ; $771B: $00
    ld de, $E3A8                                  ; $771C: $11 $A8 $E3
    ld b, a                                       ; $771F: $47
    ld e, b                                       ; $7720: $58
    add a                                         ; $7721: $87
    ld [$8F45], sp                                ; $7722: $08 $45 $8F
    ld [$C303], sp                                ; $7725: $08 $03 $C3
    ld bc, $1900                                  ; $7728: $01 $00 $19
    nop                                           ; $772B: $00
    dec c                                         ; $772C: $0D
    ld a, b                                       ; $772D: $78
    ld a, c                                       ; $772E: $79
    ld [hl], b                                    ; $772F: $70
    di                                            ; $7730: $F3
    ld d, b                                       ; $7731: $50
    nop                                           ; $7732: $00
    ld a, [$6900]                                 ; $7733: $FA $00 $69
    rlca                                          ; $7736: $07
    nop                                           ; $7737: $00
    cp b                                          ; $7738: $B8
    rst RST_28                                    ; $7739: $EF
    ld [$AFDF], sp                                ; $773A: $08 $DF $AF
    nop                                           ; $773D: $00
    dec de                                        ; $773E: $1B
    halt                                          ; $773F: $76
    ld [hl], a                                    ; $7740: $77
    db $FC                                        ; $7741: $FC
    ld [hl], c                                    ; $7742: $71
    inc b                                         ; $7743: $04
    ld a, a                                       ; $7744: $7F
    ld a, [bc]                                    ; $7745: $0A
    dec b                                         ; $7746: $05
    ld d, l                                       ; $7747: $55
    ld sp, hl                                     ; $7748: $F9
    ld [$08F1], sp                                ; $7749: $08 $F1 $08
    pop hl                                        ; $774C: $E1
    ld [$08C0], sp                                ; $774D: $08 $C0 $08
    ld c, e                                       ; $7750: $4B
    add b                                         ; $7751: $80
    ld [$C300], sp                                ; $7752: $08 $00 $C3
    ld [$0881], sp                                ; $7755: $08 $81 $08
    ld h, b                                       ; $7758: $60
    ld d, b                                       ; $7759: $50
    cp $38                                        ; $775A: $FE $38
    call z, $1808                                 ; $775C: $CC $08 $18
    db $FD                                        ; $775F: $FD
    jr nz, @-$03                                  ; $7760: $20 $FB

    ld a, [hl+]                                   ; $7762: $2A
    ld bc, $08F5                                  ; $7763: $01 $F5 $08
    db $E3                                        ; $7766: $E3
    ld [$08C1], sp                                ; $7767: $08 $C1 $08
    add e                                         ; $776A: $83
    ld [$0760], a                                 ; $776B: $EA $60 $07
    inc b                                         ; $776E: $04
    cp a                                          ; $776F: $BF
    ld [$087C], sp                                ; $7770: $08 $7C $08
    ld a, b                                       ; $7773: $78
    ld [hl+], a                                   ; $7774: $22
    ld hl, sp-$10                                 ; $7775: $F8 $F0
    nop                                           ; $7777: $00
    ldh [$FFFC], a                                ; $7778: $E0 $FC
    ld b, b                                       ; $777A: $40
    ld b, b                                       ; $777B: $40
    nop                                           ; $777C: $00
    or h                                          ; $777D: $B4
    nop                                           ; $777E: $00
    add b                                         ; $777F: $80
    nop                                           ; $7780: $00
    db $10                                        ; $7781: $10
    ld sp, hl                                     ; $7782: $F9
    xor e                                         ; $7783: $AB
    inc a                                         ; $7784: $3C
    ld a, a                                       ; $7785: $7F
    ld d, l                                       ; $7786: $55
    jr c, jr_020_77F2                             ; $7787: $38 $69

    add $08                                       ; $7789: $C6 $08
    ld [bc], a                                    ; $778B: $02
    ld [$0873], sp                                ; $778C: $08 $73 $08
    ld c, [hl]                                    ; $778F: $4E
    di                                            ; $7790: $F3
    ld l, c                                       ; $7791: $69
    pop hl                                        ; $7792: $E1
    rst RST_20                                    ; $7793: $E7
    add sp, $10                                   ; $7794: $E8 $10
    add sp, $58                                   ; $7796: $E8 $58
    ld sp, hl                                     ; $7798: $F9
    ld c, b                                       ; $7799: $48
    sub b                                         ; $779A: $90
    ld [$08B0], sp                                ; $779B: $08 $B0 $08
    ccf                                           ; $779E: $3F
    ld bc, $EAF3                                  ; $779F: $01 $F3 $EA
    inc b                                         ; $77A2: $04
    and b                                         ; $77A3: $A0
    ld [$0A83], sp                                ; $77A4: $08 $83 $0A
    inc bc                                        ; $77A7: $03
    ld [$AAF8], sp                                ; $77A8: $08 $F8 $AA
    ld [$0AF0], sp                                ; $77AB: $08 $F0 $0A
    cp $08                                        ; $77AE: $FE $08
    db $FC                                        ; $77B0: $FC
    ld a, [bc]                                    ; $77B1: $0A
    ld sp, hl                                     ; $77B2: $F9
    xor l                                         ; $77B3: $AD
    ld [$08FB], sp                                ; $77B4: $08 $FB $08
    nop                                           ; $77B7: $00
    db $10                                        ; $77B8: $10
    ld [$09F7], sp                                ; $77B9: $08 $F7 $09
    ld d, l                                       ; $77BC: $55
    jr nz, jr_020_77F7                            ; $77BD: $20 $38

    ld h, b                                       ; $77BF: $60
    ld [$08E1], sp                                ; $77C0: $08 $E1 $08
    jp $7208                                      ; $77C3: $C3 $08 $72


    rst RST_08                                    ; $77C6: $CF
    ld a, c                                       ; $77C7: $79
    db $10                                        ; $77C8: $10
    ld a, [bc]                                    ; $77C9: $0A
    sbc a                                         ; $77CA: $9F
    ld bc, $4308                                  ; $77CB: $01 $08 $43
    ld a, [hl+]                                   ; $77CE: $2A
    ld a, a                                       ; $77CF: $7F
    add a                                         ; $77D0: $87
    ld e, b                                       ; $77D1: $58
    rrca                                          ; $77D2: $0F
    ld [$793F], sp                                ; $77D3: $08 $3F $79
    ld hl, sp-$60                                 ; $77D6: $F8 $A0
    ld [$08E0], sp                                ; $77D8: $08 $E0 $08
    add $82                                       ; $77DB: $C6 $82
    sbc [hl]                                      ; $77DD: $9E
    add h                                         ; $77DE: $84
    db $FC                                        ; $77DF: $FC
    ld d, a                                       ; $77E0: $57
    adc b                                         ; $77E1: $88
    ld c, b                                       ; $77E2: $48
    sbc h                                         ; $77E3: $9C
    ld l, b                                       ; $77E4: $68
    ei                                            ; $77E5: $FB
    ld a, c                                       ; $77E6: $79
    jr c, @+$0A                                   ; $77E7: $38 $08

    ld d, l                                       ; $77E9: $55
    ld a, [hl]                                    ; $77EA: $7E
    add hl, bc                                    ; $77EB: $09
    ld [bc], a                                    ; $77EC: $02
    add sp, $06                                   ; $77ED: $E8 $06
    ld [$584C], sp                                ; $77EF: $08 $4C $58

jr_020_77F2:
    push de                                       ; $77F2: $D5
    add b                                         ; $77F3: $80
    ld [$08F3], sp                                ; $77F4: $08 $F3 $08

jr_020_77F7:
    jr nc, jr_020_7801                            ; $77F7: $30 $08

    jr nz, jr_020_7843                            ; $77F9: $20 $48

    dec de                                        ; $77FB: $1B
    ld bc, $0307                                  ; $77FC: $01 $07 $03
    nop                                           ; $77FF: $00
    db $10                                        ; $7800: $10

jr_020_7801:
    rst RST_00                                    ; $7801: $C7
    and b                                         ; $7802: $A0
    ld c, b                                       ; $7803: $48
    ld [hl], b                                    ; $7804: $70
    cp $08                                        ; $7805: $FE $08
    ldh [$FF08], a                                ; $7807: $E0 $08
    inc c                                         ; $7809: $0C
    sbc a                                         ; $780A: $9F
    ld [$D13F], sp                                ; $780B: $08 $3F $D1
    ld hl, sp+$09                                 ; $780E: $F8 $09
    inc l                                         ; $7810: $2C
    ld hl, sp+$0E                                 ; $7811: $F8 $0E
    rrca                                          ; $7813: $0F
    adc a                                         ; $7814: $8F
    db $10                                        ; $7815: $10
    ld l, [hl]                                    ; $7816: $6E
    rst RST_08                                    ; $7817: $CF
    ld a, c                                       ; $7818: $79
    ld c, b                                       ; $7819: $48
    rst RST_28                                    ; $781A: $EF
    ld [$0819], sp                                ; $781B: $08 $19 $08
    add b                                         ; $781E: $80
    add a                                         ; $781F: $87
    add hl, de                                    ; $7820: $19
    inc bc                                        ; $7821: $03
    inc b                                         ; $7822: $04
    rlca                                          ; $7823: $07
    dec a                                         ; $7824: $3D
    jr z, jr_020_7828                             ; $7825: $28 $01

    ld l, e                                       ; $7827: $6B

jr_020_7828:
    sub l                                         ; $7828: $95
    ld [$01FE], sp                                ; $7829: $08 $FE $01
    jr jr_020_788E                                ; $782C: $18 $60

    ld [$0AF0], sp                                ; $782E: $08 $F0 $0A
    ld b, l                                       ; $7831: $45
    ld sp, hl                                     ; $7832: $F9
    add hl, de                                    ; $7833: $19
    rst RST_30                                    ; $7834: $F7
    ret nz                                        ; $7835: $C0

    rst RST_20                                    ; $7836: $E7
    ld a, b                                       ; $7837: $78
    ld l, a                                       ; $7838: $6F
    ld [$1F51], sp                                ; $7839: $08 $51 $1F
    ld [$088F], sp                                ; $783C: $08 $8F $08
    add a                                         ; $783F: $87
    jp Jump_000_00C7                              ; $7840: $C3 $C7 $00


jr_020_7843:
    call c, Call_000_08EC                         ; $7843: $DC $EC $08
    db $FC                                        ; $7846: $FC
    ld [$08B0], sp                                ; $7847: $08 $B0 $08
    add b                                         ; $784A: $80
    add c                                         ; $784B: $81
    ld a, [hl+]                                   ; $784C: $2A
    pop bc                                        ; $784D: $C1
    adc e                                         ; $784E: $8B
    ld e, b                                       ; $784F: $58
    rst RST_18                                    ; $7850: $DF
    ld l, c                                       ; $7851: $69
    rlca                                          ; $7852: $07
    ld [$410F], sp                                ; $7853: $08 $0F $41
    db $10                                        ; $7856: $10

jr_020_7857:
    add sp, $21                                   ; $7857: $E8 $21
    ccf                                           ; $7859: $3F
    ld b, a                                       ; $785A: $47
    ld a, a                                       ; $785B: $7F
    sbc a                                         ; $785C: $9F
    ld e, b                                       ; $785D: $58
    ldh a, [rNR10]                                ; $785E: $F0 $10
    ld [$6801], sp                                ; $7860: $08 $01 $68
    ld sp, hl                                     ; $7863: $F9
    jr nz, jr_020_7857                            ; $7864: $20 $F1

    ret nz                                        ; $7866: $C0

    ld h, h                                       ; $7867: $64
    di                                            ; $7868: $F3
    add hl, bc                                    ; $7869: $09
    add sp, -$19                                  ; $786A: $E8 $E7
    add d                                         ; $786C: $82
    ld [$EF84], sp                                ; $786D: $08 $84 $EF
    halt                                          ; $7870: $76
    call c, Call_020_4879                         ; $7871: $DC $79 $48
    ld [$08F7], sp                                ; $7874: $08 $F7 $08
    ld c, b                                       ; $7877: $48
    ld bc, $6713                                  ; $7878: $01 $13 $67
    inc bc                                        ; $787B: $03
    add a                                         ; $787C: $87
    add hl, bc                                    ; $787D: $09
    ld b, a                                       ; $787E: $47
    rst RST_08                                    ; $787F: $CF
    nop                                           ; $7880: $00
    ld a, b                                       ; $7881: $78
    ld d, l                                       ; $7882: $55
    ld a, [bc]                                    ; $7883: $0A
    ld [$0836], sp                                ; $7884: $08 $36 $08
    ld b, h                                       ; $7887: $44
    ld [$B980], sp                                ; $7888: $08 $80 $B9
    ld [$7808], a                                 ; $788B: $EA $08 $78

jr_020_788E:
    ld [$0807], sp                                ; $788E: $08 $07 $08
    adc a                                         ; $7891: $8F
    inc l                                         ; $7892: $2C
    rrca                                          ; $7893: $0F
    xor e                                         ; $7894: $AB
    ld a, [bc]                                    ; $7895: $0A
    rra                                           ; $7896: $1F
    ld [$0A3F], sp                                ; $7897: $08 $3F $0A
    ld a, a                                       ; $789A: $7F
    ld a, [bc]                                    ; $789B: $0A
    rlca                                          ; $789C: $07
    xor a                                         ; $789D: $AF
    dec b                                         ; $789E: $05
    ret nz                                        ; $789F: $C0

    nop                                           ; $78A0: $00
    add b                                         ; $78A1: $80
    nop                                           ; $78A2: $00
    add sp, $00                                   ; $78A3: $E8 $00
    add sp, -$11                                  ; $78A5: $E8 $EF
    nop                                           ; $78A7: $00
    ret c                                         ; $78A8: $D8

    ld b, $00                                     ; $78A9: $06 $00
    ld [bc], a                                    ; $78AB: $02
    rst RST_18                                    ; $78AC: $DF
    inc bc                                        ; $78AD: $03
    cp a                                          ; $78AE: $BF
    xor d                                         ; $78AF: $AA
    rlca                                          ; $78B0: $07
    inc bc                                        ; $78B1: $03
    nop                                           ; $78B2: $00
    ld bc, $F000                                  ; $78B3: $01 $00 $F0
    nop                                           ; $78B6: $00
    ld hl, sp-$46                                 ; $78B7: $F8 $BA
    nop                                           ; $78B9: $00
    db $FC                                        ; $78BA: $FC
    rlca                                          ; $78BB: $07
    rlca                                          ; $78BC: $07
    ld b, $3F                                     ; $78BD: $06 $3F
    ld b, $1F                                     ; $78BF: $06 $1F
    xor d                                         ; $78C1: $AA
    nop                                           ; $78C2: $00
    rrca                                          ; $78C3: $0F
    nop                                           ; $78C4: $00
    add b                                         ; $78C5: $80
    nop                                           ; $78C6: $00
    ret nz                                        ; $78C7: $C0

    nop                                           ; $78C8: $00
    rst RST_38                                    ; $78C9: $FF
    db $DD                                        ; $78CA: $DD
    rlca                                          ; $78CB: $07
    ld [bc], a                                    ; $78CC: $02
    nop                                           ; $78CD: $00
    ld [bc], a                                    ; $78CE: $02
    ld e, a                                       ; $78CF: $5F
    inc bc                                        ; $78D0: $03
    ld a, h                                       ; $78D1: $7C
    nop                                           ; $78D2: $00
    ld d, l                                       ; $78D3: $55
    inc a                                         ; $78D4: $3C
    nop                                           ; $78D5: $00
    inc e                                         ; $78D6: $1C
    nop                                           ; $78D7: $00
    adc h                                         ; $78D8: $8C
    nop                                           ; $78D9: $00
    call nz, Call_020_5500                        ; $78DA: $C4 $00 $55
    ldh [rP1], a                                  ; $78DD: $E0 $00
    ldh a, [rP1]                                  ; $78DF: $F0 $00
    ld hl, sp+$00                                 ; $78E1: $F8 $00
    db $FC                                        ; $78E3: $FC
    nop                                           ; $78E4: $00
    ld [hl], h                                    ; $78E5: $74
    cp $00                                        ; $78E6: $FE $00
    rst RST_18                                    ; $78E8: $DF
    inc bc                                        ; $78E9: $03
    db $E4                                        ; $78EA: $E4
    nop                                           ; $78EB: $00
    ret nz                                        ; $78EC: $C0

    jp c, $99EA                                   ; $78ED: $DA $EA $99

    dec b                                         ; $78F0: $05
    jp hl                                         ; $78F1: $E9


    ldh a, [rP1]                                  ; $78F2: $F0 $00
    ld bc, $0300                                  ; $78F4: $01 $00 $03
    push de                                       ; $78F7: $D5
    nop                                           ; $78F8: $00
    cp e                                          ; $78F9: $BB
    rst RST_30                                    ; $78FA: $F7
    nop                                           ; $78FB: $00
    di                                            ; $78FC: $F3
    nop                                           ; $78FD: $00
    push af                                       ; $78FE: $F5
    nop                                           ; $78FF: $00
    ld l, l                                       ; $7900: $6D
    or $00                                        ; $7901: $F6 $00
    add hl, sp                                    ; $7903: $39
    rra                                           ; $7904: $1F
    nop                                           ; $7905: $00
    ld l, c                                       ; $7906: $69
    rst RST_28                                    ; $7907: $EF
    nop                                           ; $7908: $00
    ld d, [hl]                                    ; $7909: $56
    rst RST_08                                    ; $790A: $CF
    nop                                           ; $790B: $00
    xor a                                         ; $790C: $AF
    nop                                           ; $790D: $00
    ld l, a                                       ; $790E: $6F
    nop                                           ; $790F: $00
    add hl, sp                                    ; $7910: $39
    ldh [$FFBB], a                                ; $7911: $E0 $BB
    nop                                           ; $7913: $00
    db $FD                                        ; $7914: $FD
    nop                                           ; $7915: $00
    ei                                            ; $7916: $FB
    dec b                                         ; $7917: $05
    ld hl, sp+$04                                 ; $7918: $F8 $04
    ld l, a                                       ; $791A: $6F
    cp d                                          ; $791B: $BA
    ld bc, $043F                                  ; $791C: $01 $3F $04
    ld l, a                                       ; $791F: $6F
    inc bc                                        ; $7920: $03
    ld a, $00                                     ; $7921: $3E $00
    inc a                                         ; $7923: $3C
    xor d                                         ; $7924: $AA
    nop                                           ; $7925: $00
    jr c, jr_020_7928                             ; $7926: $38 $00

jr_020_7928:
    ld sp, $2300                                  ; $7928: $31 $00 $23
    nop                                           ; $792B: $00
    rlca                                          ; $792C: $07
    xor l                                         ; $792D: $AD
    nop                                           ; $792E: $00
    rrca                                          ; $792F: $0F
    nop                                           ; $7930: $00
    rra                                           ; $7931: $1F
    nop                                           ; $7932: $00
    jp hl                                         ; $7933: $E9


    ld a, a                                       ; $7934: $7F
    nop                                           ; $7935: $00

jr_020_7936:
    and h                                         ; $7936: $A4
    cp e                                          ; $7937: $BB
    cp $02                                        ; $7938: $FE $02
    db $FC                                        ; $793A: $FC
    db $FD                                        ; $793B: $FD
    add hl, bc                                    ; $793C: $09
    ld hl, sp-$05                                 ; $793D: $F8 $FB
    ld hl, sp+$09                                 ; $793F: $F8 $09
    ld a, e                                       ; $7941: $7B
    dec b                                         ; $7942: $05
    ld e, b                                       ; $7943: $58
    nop                                           ; $7944: $00
    ldh [$FFE7], a                                ; $7945: $E0 $E7
    ret nz                                        ; $7947: $C0

    ld d, l                                       ; $7948: $55
    rst RST_18                                    ; $7949: $DF
    ld [$08DA], sp                                ; $794A: $08 $DA $08
    ret c                                         ; $794D: $D8

    jr c, jr_020_7936                             ; $794E: $38 $E6

    ld [$EF1D], sp                                ; $7950: $08 $1D $EF
    nop                                           ; $7953: $00
    rra                                           ; $7954: $1F
    ld [$0988], sp                                ; $7955: $08 $88 $09
    ld c, $08                                     ; $7958: $0E $08
    ld a, [hl+]                                   ; $795A: $2A

jr_020_795B:
    add b                                         ; $795B: $80
    cp a                                          ; $795C: $BF
    jr z, jr_020_79DE                             ; $795D: $28 $7F

    ld [$0AFA], sp                                ; $795F: $08 $FA $0A
    db $FD                                        ; $7962: $FD
    and b                                         ; $7963: $A0
    ld a, [bc]                                    ; $7964: $0A
    cp $08                                        ; $7965: $FE $08
    db $FC                                        ; $7967: $FC
    jr nc, jr_020_795B                            ; $7968: $30 $F1

    ld l, [hl]                                    ; $796A: $6E
    xor $36                                       ; $796B: $EE $36
    call c, $A8DD                                 ; $796D: $DC $DD $A8
    nop                                           ; $7970: $00
    ld a, c                                       ; $7971: $79
    nop                                           ; $7972: $00
    ld e, b                                       ; $7973: $58
    ld a, e                                       ; $7974: $7B
    and l                                         ; $7975: $A5
    ld [$0838], sp                                ; $7976: $08 $38 $08
    ld e, $EF                                     ; $7979: $1E $EF
    nop                                           ; $797B: $00
    ret                                           ; $797C: $C9


    nop                                           ; $797D: $00
    ld l, b                                       ; $797E: $68
    ldh [c], a                                    ; $797F: $E2
    nop                                           ; $7980: $00
    jr c, jr_020_799B                             ; $7981: $38 $18

    ret                                           ; $7983: $C9


    ld bc, $6799                                  ; $7984: $01 $99 $67
    xor d                                         ; $7987: $AA
    nop                                           ; $7988: $00
    ld a, a                                       ; $7989: $7F
    nop                                           ; $798A: $00
    ei                                            ; $798B: $FB
    nop                                           ; $798C: $00
    rst RST_30                                    ; $798D: $F7
    nop                                           ; $798E: $00
    rst RST_38                                    ; $798F: $FF
    pop bc                                        ; $7990: $C1
    rlca                                          ; $7991: $07
    ld [bc], a                                    ; $7992: $02
    rrca                                          ; $7993: $0F
    adc a                                         ; $7994: $8F
    rlca                                          ; $7995: $07
    ld [hl], a                                    ; $7996: $77
    add a                                         ; $7997: $87
    nop                                           ; $7998: $00
    dec bc                                        ; $7999: $0B
    inc de                                        ; $799A: $13

jr_020_799B:
    inc sp                                        ; $799B: $33
    jp $38D3                                      ; $799C: $C3 $D3 $38


    rst RST_00                                    ; $799F: $C7
    jr z, @+$1A                                   ; $79A0: $28 $18

    ld e, e                                       ; $79A2: $5B
    inc bc                                        ; $79A3: $03
    ld [$07F8], sp                                ; $79A4: $08 $F8 $07
    ld b, $FF                                     ; $79A7: $06 $FF
    nop                                           ; $79A9: $00
    ld c, a                                       ; $79AA: $4F
    sbc $5B                                       ; $79AB: $DE $5B
    inc bc                                        ; $79AD: $03
    ccf                                           ; $79AE: $3F
    rlca                                          ; $79AF: $07
    nop                                           ; $79B0: $00
    ld a, l                                       ; $79B1: $7D
    ld bc, $AEFB                                  ; $79B2: $01 $FB $AE
    nop                                           ; $79B5: $00
    ld sp, hl                                     ; $79B6: $F9
    nop                                           ; $79B7: $00
    ld a, [$2900]                                 ; $79B8: $FA $00 $29
    ld bc, $AB83                                  ; $79BB: $01 $83 $AB
    nop                                           ; $79BE: $00
    rst RST_18                                    ; $79BF: $DF
    nop                                           ; $79C0: $00
    rst RST_28                                    ; $79C1: $EF
    nop                                           ; $79C2: $00
    rst RST_30                                    ; $79C3: $F7
    nop                                           ; $79C4: $00
    sbc c                                         ; $79C5: $99
    ld d, l                                       ; $79C6: $55
    adc [hl]                                      ; $79C7: $8E
    nop                                           ; $79C8: $00
    ld [hl], l                                    ; $79C9: $75
    nop                                           ; $79CA: $00
    stop                                          ; $79CB: $10 $00
    inc d                                         ; $79CD: $14
    nop                                           ; $79CE: $00
    ld [$01FB], a                                 ; $79CF: $EA $FB $01
    adc c                                         ; $79D2: $89
    rst RST_20                                    ; $79D3: $E7
    nop                                           ; $79D4: $00
    ld d, a                                       ; $79D5: $57
    nop                                           ; $79D6: $00
    or a                                          ; $79D7: $B7
    ret c                                         ; $79D8: $D8

    nop                                           ; $79D9: $00
    set 7, b                                      ; $79DA: $CB $F8
    nop                                           ; $79DC: $00
    ld e, c                                       ; $79DD: $59

jr_020_79DE:
    sbc b                                         ; $79DE: $98
    sbc a                                         ; $79DF: $9F
    nop                                           ; $79E0: $00
    nop                                           ; $79E1: $00
    inc a                                         ; $79E2: $3C
    ret nz                                        ; $79E3: $C0

    db $D3                                        ; $79E4: $D3
    ld b, b                                       ; $79E5: $40
    ld b, c                                       ; $79E6: $41
    ld e, b                                       ; $79E7: $58
    ld e, c                                       ; $79E8: $59
    add c                                         ; $79E9: $81
    or [hl]                                       ; $79EA: $B6
    nop                                           ; $79EB: $00
    ld b, $00                                     ; $79EC: $06 $00
    ld e, b                                       ; $79EE: $58
    db $DB                                        ; $79EF: $DB
    ld l, c                                       ; $79F0: $69
    ld [$CAFD], sp                                ; $79F1: $08 $FD $CA
    ld a, [bc]                                    ; $79F4: $0A
    ret z                                         ; $79F5: $C8

    rlca                                          ; $79F6: $07
    add a                                         ; $79F7: $87
    ld sp, hl                                     ; $79F8: $F9
    ld a, a                                       ; $79F9: $7F
    nop                                           ; $79FA: $00
    ccf                                           ; $79FB: $3F
    dec b                                         ; $79FC: $05
    cp a                                          ; $79FD: $BF
    db $10                                        ; $79FE: $10
    ld d, b                                       ; $79FF: $50
    ld c, $CF                                     ; $7A00: $0E $CF
    ld l, b                                       ; $7A02: $68
    jp Jump_000_35A9                              ; $7A03: $C3 $A9 $35


    add e                                         ; $7A06: $83
    di                                            ; $7A07: $F3
    ld a, c                                       ; $7A08: $79
    inc bc                                        ; $7A09: $03
    rra                                           ; $7A0A: $1F
    ld bc, $A8DF                                  ; $7A0B: $01 $DF $A8
    jp Jump_020_4B00                              ; $7A0E: $C3 $00 $4B


    ld hl, sp-$05                                 ; $7A11: $F8 $FB
    ldh a, [$FFF7]                                ; $7A13: $F0 $F7
    rrca                                          ; $7A15: $0F
    add hl, bc                                    ; $7A16: $09
    rst RST_00                                    ; $7A17: $C7
    ld l, c                                       ; $7A18: $69
    add hl, bc                                    ; $7A19: $09
    db $FC                                        ; $7A1A: $FC
    db $FD                                        ; $7A1B: $FD
    cp $00                                        ; $7A1C: $FE $00
    rlc l                                         ; $7A1E: $CB $05
    ld l, l                                       ; $7A20: $6D
    nop                                           ; $7A21: $00
    ld a, b                                       ; $7A22: $78
    ld [$08E7], sp                                ; $7A23: $08 $E7 $08

jr_020_7A26:
    add hl, hl                                    ; $7A26: $29
    ld a, a                                       ; $7A27: $7F
    inc c                                         ; $7A28: $0C
    db $10                                        ; $7A29: $10
    cp h                                          ; $7A2A: $BC
    inc bc                                        ; $7A2B: $03
    jp $D918                                      ; $7A2C: $C3 $18 $D9


    ld b, $E6                                     ; $7A2F: $06 $E6
    ld bc, $E154                                  ; $7A31: $01 $54 $E1
    jr z, jr_020_7A26                             ; $7A34: $28 $F0

    ld [$08B8], sp                                ; $7A36: $08 $B8 $08
    rra                                           ; $7A39: $1F
    ldh [$FFA7], a                                ; $7A3A: $E0 $A7
    ret z                                         ; $7A3C: $C8

    ld hl, sp-$18                                 ; $7A3D: $F8 $E8
    rlca                                          ; $7A3F: $07
    rst RST_30                                    ; $7A40: $F7
    sbc b                                         ; $7A41: $98
    jr jr_020_7A8C                                ; $7A42: $18 $48

    ld b, h                                       ; $7A44: $44
    db $FC                                        ; $7A45: $FC
    ld [$C03F], sp                                ; $7A46: $08 $3F $C0
    rst RST_08                                    ; $7A49: $CF
    sub b                                         ; $7A4A: $90
    pop af                                        ; $7A4B: $F1
    cp $BF                                        ; $7A4C: $FE $BF
    nop                                           ; $7A4E: $00
    rst RST_38                                    ; $7A4F: $FF
    nop                                           ; $7A50: $00
    ld d, b                                       ; $7A51: $50
    nop                                           ; $7A52: $00
    add hl, de                                    ; $7A53: $19
    ld bc, $9FD0                                  ; $7A54: $01 $D0 $9F
    nop                                           ; $7A57: $00
    ld bc, $98E1                                  ; $7A58: $01 $E1 $98
    ld l, b                                       ; $7A5B: $68
    jr jr_020_7A5E                                ; $7A5C: $18 $00

jr_020_7A5E:
    ld c, c                                       ; $7A5E: $49
    or [hl]                                       ; $7A5F: $B6
    ld hl, sp-$39                                 ; $7A60: $F8 $C7
    ld hl, sp+$00                                 ; $7A62: $F8 $00
    rlc b                                         ; $7A64: $CB $00
    jr z, jr_020_7A9F                             ; $7A66: $28 $37

    dec hl                                        ; $7A68: $2B
    rrca                                          ; $7A69: $0F
    rst RST_28                                    ; $7A6A: $EF
    ld h, b                                       ; $7A6B: $60

jr_020_7A6C:
    pop bc                                        ; $7A6C: $C1
    ld [$3881], sp                                ; $7A6D: $08 $81 $38
    nop                                           ; $7A70: $00
    pop de                                        ; $7A71: $D1
    db $EB                                        ; $7A72: $EB
    ld bc, $00F8                                  ; $7A73: $01 $F8 $00
    ld a, [$FCFB]                                 ; $7A76: $FA $FB $FC
    nop                                           ; $7A79: $00
    xor b                                         ; $7A7A: $A8
    ld c, e                                       ; $7A7B: $4B
    ld [hl], c                                    ; $7A7C: $71
    nop                                           ; $7A7D: $00
    add b                                         ; $7A7E: $80
    nop                                           ; $7A7F: $00
    db $E4                                        ; $7A80: $E4
    db $EC                                        ; $7A81: $EC
    nop                                           ; $7A82: $00
    sbc [hl]                                      ; $7A83: $9E
    nop                                           ; $7A84: $00
    xor d                                         ; $7A85: $AA
    cp a                                          ; $7A86: $BF
    add hl, de                                    ; $7A87: $19
    sbc b                                         ; $7A88: $98
    nop                                           ; $7A89: $00
    or c                                          ; $7A8A: $B1
    db $F4                                        ; $7A8B: $F4

jr_020_7A8C:
    xor e                                         ; $7A8C: $AB
    nop                                           ; $7A8D: $00
    ldh a, [$FF08]                                ; $7A8E: $F0 $08
    ld [$E200], a                                 ; $7A90: $EA $00 $E2
    ld de, $6C1A                                  ; $7A93: $11 $1A $6C
    rst RST_20                                    ; $7A96: $E7
    nop                                           ; $7A97: $00
    ld sp, hl                                     ; $7A98: $F9
    ret nz                                        ; $7A99: $C0

    nop                                           ; $7A9A: $00
    or b                                          ; $7A9B: $B0
    jr nc, jr_020_7A6C                            ; $7A9C: $30 $CE

    push bc                                       ; $7A9E: $C5

jr_020_7A9F:
    nop                                           ; $7A9F: $00
    ld a, [$2AFE]                                 ; $7AA0: $FA $FE $2A
    ld a, $29                                     ; $7AA3: $3E $29
    dec d                                         ; $7AA5: $15
    nop                                           ; $7AA6: $00
    ld a, [bc]                                    ; $7AA7: $0A
    inc c                                         ; $7AA8: $0C
    ccf                                           ; $7AA9: $3F
    add b                                         ; $7AAA: $80
    cp a                                          ; $7AAB: $BF
    ld [$40BC], sp                                ; $7AAC: $08 $BC $40
    ld [hl-], a                                   ; $7AAF: $32
    ld b, $81                                     ; $7AB0: $06 $81
    add l                                         ; $7AB2: $85
    ld [hl], c                                    ; $7AB3: $71
    ld [hl], l                                    ; $7AB4: $75
    di                                            ; $7AB5: $F3
    nop                                           ; $7AB6: $00
    ld sp, hl                                     ; $7AB7: $F9
    inc bc                                        ; $7AB8: $03
    ld l, l                                       ; $7AB9: $6D
    dec hl                                        ; $7ABA: $2B
    ld bc, $4B18                                  ; $7ABB: $01 $18 $4B
    ld bc, $5519                                  ; $7ABE: $01 $19 $55
    nop                                           ; $7AC1: $00
    ld [de], a                                    ; $7AC2: $12
    ld [$CC2A], sp                                ; $7AC3: $08 $2A $CC
    nop                                           ; $7AC6: $00
    rrca                                          ; $7AC7: $0F
    rst RST_08                                    ; $7AC8: $CF
    ld [$072F], sp                                ; $7AC9: $08 $2F $07
    rra                                           ; $7ACC: $1F
    sbc a                                         ; $7ACD: $9F
    ccf                                           ; $7ACE: $3F
    cp a                                          ; $7ACF: $BF
    ld a, a                                       ; $7AD0: $7F
    nop                                           ; $7AD1: $00
    reti                                          ; $7AD2: $D9


    inc bc                                        ; $7AD3: $03
    adc d                                         ; $7AD4: $8A
    ld b, b                                       ; $7AD5: $40
    ld l, a                                       ; $7AD6: $6F
    nop                                           ; $7AD7: $00
    rlca                                          ; $7AD8: $07
    ld b, $FF                                     ; $7AD9: $06 $FF
    rlca                                          ; $7ADB: $07
    rlca                                          ; $7ADC: $07
    rlca                                          ; $7ADD: $07
    ld [bc], a                                    ; $7ADE: $02
    ld d, l                                       ; $7ADF: $55
    cp $08                                        ; $7AE0: $FE $08
    db $FC                                        ; $7AE2: $FC
    ld [$08F8], sp                                ; $7AE3: $08 $F8 $08
    ldh a, [rP1]                                  ; $7AE6: $F0 $00
    ld c, h                                       ; $7AE8: $4C
    ldh [rNR41], a                                ; $7AE9: $E0 $20
    add b                                         ; $7AEB: $80
    cp b                                          ; $7AEC: $B8
    ld [$0000], sp                                ; $7AED: $08 $00 $00
    ret nz                                        ; $7AF0: $C0

    xor d                                         ; $7AF1: $AA
    ld [$08F9], sp                                ; $7AF2: $08 $F9 $08
    ei                                            ; $7AF5: $FB
    rst RST_18                                    ; $7AF6: $DF
    sbc a                                         ; $7AF7: $9F
    ld [$AE17], sp                                ; $7AF8: $08 $17 $AE
    ld [$082F], sp                                ; $7AFB: $08 $2F $08
    rrca                                          ; $7AFE: $0F
    ld [hl], a                                    ; $7AFF: $77
    nop                                           ; $7B00: $00
    pop bc                                        ; $7B01: $C1
    di                                            ; $7B02: $F3
    xor d                                         ; $7B03: $AA
    ld [$08E1], sp                                ; $7B04: $08 $E1 $08
    jp $1B08                                      ; $7B07: $C3 $08 $1B


    ld [$8123], sp                                ; $7B0A: $08 $23 $81
    ld b, b                                       ; $7B0D: $40
    ld [$18F9], sp                                ; $7B0E: $08 $F9 $18
    db $FC                                        ; $7B11: $FC
    nop                                           ; $7B12: $00
    inc c                                         ; $7B13: $0C
    ld [$0457], sp                                ; $7B14: $08 $57 $04
    ld [$09E4], sp                                ; $7B17: $08 $E4 $09
    add a                                         ; $7B1A: $87
    ld a, b                                       ; $7B1B: $78
    ld b, b                                       ; $7B1C: $40
    ld [$68D7], sp                                ; $7B1D: $08 $D7 $68

jr_020_7B20:
    ld [$0810], sp                                ; $7B20: $08 $10 $08
    jr nz, jr_020_7B2D                            ; $7B23: $20 $08

    ld e, b                                       ; $7B25: $58
    inc c                                         ; $7B26: $0C
    or l                                          ; $7B27: $B5
    dec b                                         ; $7B28: $05
    ld hl, sp+$0A                                 ; $7B29: $F8 $0A
    inc bc                                        ; $7B2B: $03
    cp a                                          ; $7B2C: $BF

jr_020_7B2D:
    ld a, [de]                                    ; $7B2D: $1A
    cp d                                          ; $7B2E: $BA
    nop                                           ; $7B2F: $00
    db $EB                                        ; $7B30: $EB
    jr z, jr_020_7B33                             ; $7B31: $28 $00

jr_020_7B33:
    cp b                                          ; $7B33: $B8
    add e                                         ; $7B34: $83
    ld [$29BE], sp                                ; $7B35: $08 $BE $29
    jr nz, @-$2C                                  ; $7B38: $20 $D2

    nop                                           ; $7B3A: $00
    ld l, c                                       ; $7B3B: $69
    ld a, [hl]                                    ; $7B3C: $7E
    ld [$FE78], sp                                ; $7B3D: $08 $78 $FE
    ld e, b                                       ; $7B40: $58
    db $FC                                        ; $7B41: $FC
    xor d                                         ; $7B42: $AA
    ld [$08F9], sp                                ; $7B43: $08 $F9 $08
    ldh [c], a                                    ; $7B46: $E2
    ld [$0806], sp                                ; $7B47: $08 $06 $08
    adc h                                         ; $7B4A: $8C
    cp b                                          ; $7B4B: $B8
    ld c, c                                       ; $7B4C: $49
    ccf                                           ; $7B4D: $3F
    ld a, b                                       ; $7B4E: $78
    ld [$1E02], sp                                ; $7B4F: $08 $02 $1E
    ld a, $1F                                     ; $7B52: $3E $1F
    ld l, e                                       ; $7B54: $6B
    ld a, a                                       ; $7B55: $7F
    db $10                                        ; $7B56: $10
    ld [$587C], sp                                ; $7B57: $08 $7C $58
    ld hl, sp+$08                                 ; $7B5A: $F8 $08
    inc bc                                        ; $7B5C: $03
    ld l, c                                       ; $7B5D: $69
    ldh [rP1], a                                  ; $7B5E: $E0 $00
    cp b                                          ; $7B60: $B8
    cp $08                                        ; $7B61: $FE $08
    dec e                                         ; $7B63: $1D
    ld a, [$6B00]                                 ; $7B64: $FA $00 $6B
    rst RST_30                                    ; $7B67: $F7
    nop                                           ; $7B68: $00
    ld l, e                                       ; $7B69: $6B
    rst RST_18                                    ; $7B6A: $DF
    nop                                           ; $7B6B: $00
    ld e, [hl]                                    ; $7B6C: $5E
    nop                                           ; $7B6D: $00
    ld l, b                                       ; $7B6E: $68
    ld c, e                                       ; $7B6F: $4B
    adc $08                                       ; $7B70: $CE $08
    rst RST_10                                    ; $7B72: $D7
    db $DB                                        ; $7B73: $DB
    nop                                           ; $7B74: $00
    ld e, a                                       ; $7B75: $5F
    nop                                           ; $7B76: $00
    ld l, c                                       ; $7B77: $69
    ld d, [hl]                                    ; $7B78: $56
    db $E3                                        ; $7B79: $E3
    ld [$08C1], sp                                ; $7B7A: $08 $C1 $08
    ret nz                                        ; $7B7D: $C0

    ld [$3F68], sp                                ; $7B7E: $08 $68 $3F
    ld [$1F01], sp                                ; $7B81: $08 $01 $1F
    inc bc                                        ; $7B84: $03
    sbc e                                         ; $7B85: $9B
    jr z, jr_020_7B20                             ; $7B86: $28 $98

    inc b                                         ; $7B88: $04
    sbc h                                         ; $7B89: $9C
    xor d                                         ; $7B8A: $AA
    adc c                                         ; $7B8B: $89
    ld a, a                                       ; $7B8C: $7F
    ld [$0871], sp                                ; $7B8D: $08 $71 $08
    ldh [$FF9A], a                                ; $7B90: $E0 $9A
    add c                                         ; $7B92: $81
    ld [hl], l                                    ; $7B93: $75
    adc a                                         ; $7B94: $8F
    sbc b                                         ; $7B95: $98
    sub b                                         ; $7B96: $90
    nop                                           ; $7B97: $00
    ld [hl], a                                    ; $7B98: $77
    ld a, c                                       ; $7B99: $79
    cp a                                          ; $7B9A: $BF
    nop                                           ; $7B9B: $00
    ld l, c                                       ; $7B9C: $69
    rlca                                          ; $7B9D: $07
    nop                                           ; $7B9E: $00
    ret z                                         ; $7B9F: $C8

    db $F4                                        ; $7BA0: $F4
    ld [$EDF6], sp                                ; $7BA1: $08 $F6 $ED
    nop                                           ; $7BA4: $00
    halt                                          ; $7BA5: $76
    rra                                           ; $7BA6: $1F
    nop                                           ; $7BA7: $00
    ld l, c                                       ; $7BA8: $69
    inc bc                                        ; $7BA9: $03
    ld a, [hl]                                    ; $7BAA: $7E
    nop                                           ; $7BAB: $00
    ld l, b                                       ; $7BAC: $68
    ccf                                           ; $7BAD: $3F
    sbc d                                         ; $7BAE: $9A
    ld [$7F61], sp                                ; $7BAF: $08 $61 $7F
    ld [bc], a                                    ; $7BB2: $02
    ld e, c                                       ; $7BB3: $59
    db $FC                                        ; $7BB4: $FC
    ld [$A2F8], sp                                ; $7BB5: $08 $F8 $A2
    ld [$08F0], sp                                ; $7BB8: $08 $F0 $08
    or c                                          ; $7BBB: $B1
    cp a                                          ; $7BBC: $BF
    add b                                         ; $7BBD: $80
    nop                                           ; $7BBE: $00
    ret nz                                        ; $7BBF: $C0

    push hl                                       ; $7BC0: $E5
    nop                                           ; $7BC1: $00
    ld de, $E3A8                                  ; $7BC2: $11 $A8 $E3
    ld b, a                                       ; $7BC5: $47
    ld e, b                                       ; $7BC6: $58
    add a                                         ; $7BC7: $87
    ld [$8F45], sp                                ; $7BC8: $08 $45 $8F
    ld [$C303], sp                                ; $7BCB: $08 $03 $C3
    ld bc, $1900                                  ; $7BCE: $01 $00 $19
    nop                                           ; $7BD1: $00
    dec c                                         ; $7BD2: $0D
    ld a, b                                       ; $7BD3: $78
    ld a, c                                       ; $7BD4: $79
    ld [hl], b                                    ; $7BD5: $70
    di                                            ; $7BD6: $F3
    ld d, b                                       ; $7BD7: $50
    nop                                           ; $7BD8: $00
    ld a, [$6900]                                 ; $7BD9: $FA $00 $69
    rlca                                          ; $7BDC: $07
    nop                                           ; $7BDD: $00
    cp b                                          ; $7BDE: $B8
    rst RST_28                                    ; $7BDF: $EF
    ld [$AFDF], sp                                ; $7BE0: $08 $DF $AF
    nop                                           ; $7BE3: $00
    dec de                                        ; $7BE4: $1B
    halt                                          ; $7BE5: $76
    ld [hl], a                                    ; $7BE6: $77
    db $FC                                        ; $7BE7: $FC
    ld [hl], c                                    ; $7BE8: $71
    inc b                                         ; $7BE9: $04
    ld a, a                                       ; $7BEA: $7F
    ld a, [bc]                                    ; $7BEB: $0A
    dec b                                         ; $7BEC: $05
    ld d, l                                       ; $7BED: $55
    ld sp, hl                                     ; $7BEE: $F9
    ld [$08F1], sp                                ; $7BEF: $08 $F1 $08
    pop hl                                        ; $7BF2: $E1
    ld [$08C0], sp                                ; $7BF3: $08 $C0 $08
    ld c, e                                       ; $7BF6: $4B
    add b                                         ; $7BF7: $80
    ld [$C300], sp                                ; $7BF8: $08 $00 $C3
    ld [$0881], sp                                ; $7BFB: $08 $81 $08
    ld h, b                                       ; $7BFE: $60
    ld d, b                                       ; $7BFF: $50
    cp $38                                        ; $7C00: $FE $38
    call z, $1808                                 ; $7C02: $CC $08 $18
    db $FD                                        ; $7C05: $FD
    jr nz, @-$03                                  ; $7C06: $20 $FB

    ld a, [hl+]                                   ; $7C08: $2A
    ld bc, $08F5                                  ; $7C09: $01 $F5 $08
    db $E3                                        ; $7C0C: $E3
    ld [$08C1], sp                                ; $7C0D: $08 $C1 $08
    add e                                         ; $7C10: $83
    ld [$0760], a                                 ; $7C11: $EA $60 $07
    inc b                                         ; $7C14: $04
    cp a                                          ; $7C15: $BF
    ld [$087C], sp                                ; $7C16: $08 $7C $08
    ld a, b                                       ; $7C19: $78
    ld [hl+], a                                   ; $7C1A: $22
    ld hl, sp-$10                                 ; $7C1B: $F8 $F0
    nop                                           ; $7C1D: $00
    ldh [$FFFC], a                                ; $7C1E: $E0 $FC
    ld b, b                                       ; $7C20: $40
    ld b, b                                       ; $7C21: $40
    nop                                           ; $7C22: $00
    or h                                          ; $7C23: $B4
    nop                                           ; $7C24: $00
    add b                                         ; $7C25: $80
    nop                                           ; $7C26: $00
    db $10                                        ; $7C27: $10
    ld sp, hl                                     ; $7C28: $F9
    xor e                                         ; $7C29: $AB
    inc a                                         ; $7C2A: $3C
    ld a, a                                       ; $7C2B: $7F
    ld d, l                                       ; $7C2C: $55
    jr c, jr_020_7C98                             ; $7C2D: $38 $69

    add $08                                       ; $7C2F: $C6 $08
    ld [bc], a                                    ; $7C31: $02
    ld [$0873], sp                                ; $7C32: $08 $73 $08
    ld c, [hl]                                    ; $7C35: $4E
    di                                            ; $7C36: $F3
    ld l, c                                       ; $7C37: $69
    pop hl                                        ; $7C38: $E1
    rst RST_20                                    ; $7C39: $E7
    add sp, $10                                   ; $7C3A: $E8 $10
    add sp, $58                                   ; $7C3C: $E8 $58
    ld sp, hl                                     ; $7C3E: $F9
    ld c, b                                       ; $7C3F: $48
    sub b                                         ; $7C40: $90
    ld [$08B0], sp                                ; $7C41: $08 $B0 $08
    ccf                                           ; $7C44: $3F
    ld bc, $EAF3                                  ; $7C45: $01 $F3 $EA
    inc b                                         ; $7C48: $04
    and b                                         ; $7C49: $A0
    ld [$0A83], sp                                ; $7C4A: $08 $83 $0A
    inc bc                                        ; $7C4D: $03
    ld [$AAF8], sp                                ; $7C4E: $08 $F8 $AA
    ld [$0AF0], sp                                ; $7C51: $08 $F0 $0A
    cp $08                                        ; $7C54: $FE $08
    db $FC                                        ; $7C56: $FC
    ld a, [bc]                                    ; $7C57: $0A
    ld sp, hl                                     ; $7C58: $F9
    xor l                                         ; $7C59: $AD
    ld [$08FB], sp                                ; $7C5A: $08 $FB $08
    nop                                           ; $7C5D: $00
    db $10                                        ; $7C5E: $10
    ld [$09F7], sp                                ; $7C5F: $08 $F7 $09
    ld d, l                                       ; $7C62: $55
    jr nz, jr_020_7C9D                            ; $7C63: $20 $38

    ld h, b                                       ; $7C65: $60
    ld [$08E1], sp                                ; $7C66: $08 $E1 $08
    jp $7208                                      ; $7C69: $C3 $08 $72


    rst RST_08                                    ; $7C6C: $CF
    ld a, c                                       ; $7C6D: $79
    db $10                                        ; $7C6E: $10
    ld a, [bc]                                    ; $7C6F: $0A
    sbc a                                         ; $7C70: $9F
    ld bc, $4308                                  ; $7C71: $01 $08 $43
    ld a, [hl+]                                   ; $7C74: $2A
    ld a, a                                       ; $7C75: $7F
    add a                                         ; $7C76: $87
    ld e, b                                       ; $7C77: $58
    rrca                                          ; $7C78: $0F
    ld [$793F], sp                                ; $7C79: $08 $3F $79
    ld hl, sp-$60                                 ; $7C7C: $F8 $A0
    ld [$08E0], sp                                ; $7C7E: $08 $E0 $08
    add $82                                       ; $7C81: $C6 $82
    sbc [hl]                                      ; $7C83: $9E
    add h                                         ; $7C84: $84
    db $FC                                        ; $7C85: $FC
    ld d, a                                       ; $7C86: $57
    adc b                                         ; $7C87: $88
    ld c, b                                       ; $7C88: $48
    sbc h                                         ; $7C89: $9C
    ld l, b                                       ; $7C8A: $68
    ei                                            ; $7C8B: $FB
    ld a, c                                       ; $7C8C: $79
    jr c, @+$0A                                   ; $7C8D: $38 $08

    ld d, l                                       ; $7C8F: $55
    ld a, [hl]                                    ; $7C90: $7E
    add hl, bc                                    ; $7C91: $09
    ld [bc], a                                    ; $7C92: $02
    add sp, $06                                   ; $7C93: $E8 $06
    ld [$584C], sp                                ; $7C95: $08 $4C $58

jr_020_7C98:
    push de                                       ; $7C98: $D5
    add b                                         ; $7C99: $80
    ld [$08F3], sp                                ; $7C9A: $08 $F3 $08

jr_020_7C9D:
    jr nc, jr_020_7CA7                            ; $7C9D: $30 $08

    jr nz, jr_020_7CE9                            ; $7C9F: $20 $48

    dec de                                        ; $7CA1: $1B
    ld bc, $0307                                  ; $7CA2: $01 $07 $03
    nop                                           ; $7CA5: $00
    db $10                                        ; $7CA6: $10

jr_020_7CA7:
    rst RST_00                                    ; $7CA7: $C7
    and b                                         ; $7CA8: $A0
    ld c, b                                       ; $7CA9: $48
    ld [hl], b                                    ; $7CAA: $70
    cp $08                                        ; $7CAB: $FE $08
    ldh [$FF08], a                                ; $7CAD: $E0 $08
    inc c                                         ; $7CAF: $0C
    sbc a                                         ; $7CB0: $9F
    ld [$D13F], sp                                ; $7CB1: $08 $3F $D1
    ld hl, sp+$09                                 ; $7CB4: $F8 $09
    inc l                                         ; $7CB6: $2C
    ld hl, sp+$0E                                 ; $7CB7: $F8 $0E
    rrca                                          ; $7CB9: $0F
    adc a                                         ; $7CBA: $8F
    db $10                                        ; $7CBB: $10
    ld l, [hl]                                    ; $7CBC: $6E
    rst RST_08                                    ; $7CBD: $CF
    ld a, c                                       ; $7CBE: $79
    ld c, b                                       ; $7CBF: $48
    rst RST_28                                    ; $7CC0: $EF
    ld [$0819], sp                                ; $7CC1: $08 $19 $08
    add b                                         ; $7CC4: $80
    add a                                         ; $7CC5: $87
    add hl, de                                    ; $7CC6: $19
    inc bc                                        ; $7CC7: $03
    inc b                                         ; $7CC8: $04
    rlca                                          ; $7CC9: $07
    dec a                                         ; $7CCA: $3D
    jr z, jr_020_7CCE                             ; $7CCB: $28 $01

    ld l, e                                       ; $7CCD: $6B

jr_020_7CCE:
    sub l                                         ; $7CCE: $95
    ld [$01FE], sp                                ; $7CCF: $08 $FE $01
    jr jr_020_7D34                                ; $7CD2: $18 $60

    ld [$0AF0], sp                                ; $7CD4: $08 $F0 $0A
    ld b, l                                       ; $7CD7: $45
    ld sp, hl                                     ; $7CD8: $F9
    add hl, de                                    ; $7CD9: $19
    rst RST_30                                    ; $7CDA: $F7
    ret nz                                        ; $7CDB: $C0

    rst RST_20                                    ; $7CDC: $E7
    ld a, b                                       ; $7CDD: $78
    ld l, a                                       ; $7CDE: $6F
    ld [$1F51], sp                                ; $7CDF: $08 $51 $1F
    ld [$088F], sp                                ; $7CE2: $08 $8F $08
    add a                                         ; $7CE5: $87
    jp Jump_000_00C7                              ; $7CE6: $C3 $C7 $00


jr_020_7CE9:
    call c, Call_000_08EC                         ; $7CE9: $DC $EC $08
    db $FC                                        ; $7CEC: $FC
    ld [$08B0], sp                                ; $7CED: $08 $B0 $08
    add b                                         ; $7CF0: $80
    add c                                         ; $7CF1: $81
    ld a, [hl+]                                   ; $7CF2: $2A
    pop bc                                        ; $7CF3: $C1
    adc e                                         ; $7CF4: $8B
    ld e, b                                       ; $7CF5: $58
    rst RST_18                                    ; $7CF6: $DF
    ld l, c                                       ; $7CF7: $69
    rlca                                          ; $7CF8: $07
    ld [$410F], sp                                ; $7CF9: $08 $0F $41
    db $10                                        ; $7CFC: $10

jr_020_7CFD:
    add sp, $21                                   ; $7CFD: $E8 $21
    ccf                                           ; $7CFF: $3F
    ld b, a                                       ; $7D00: $47
    ld a, a                                       ; $7D01: $7F
    sbc a                                         ; $7D02: $9F
    ld e, b                                       ; $7D03: $58
    ldh a, [rNR10]                                ; $7D04: $F0 $10
    ld [$6801], sp                                ; $7D06: $08 $01 $68
    ld sp, hl                                     ; $7D09: $F9
    jr nz, jr_020_7CFD                            ; $7D0A: $20 $F1

    ret nz                                        ; $7D0C: $C0

    ld h, h                                       ; $7D0D: $64
    di                                            ; $7D0E: $F3
    add hl, bc                                    ; $7D0F: $09
    add sp, -$19                                  ; $7D10: $E8 $E7
    add d                                         ; $7D12: $82
    ld [$EF84], sp                                ; $7D13: $08 $84 $EF
    halt                                          ; $7D16: $76
    call c, Call_020_4879                         ; $7D17: $DC $79 $48
    ld [$08F7], sp                                ; $7D1A: $08 $F7 $08
    ld c, b                                       ; $7D1D: $48
    ld bc, $6713                                  ; $7D1E: $01 $13 $67
    inc bc                                        ; $7D21: $03
    add a                                         ; $7D22: $87
    add hl, bc                                    ; $7D23: $09
    ld b, a                                       ; $7D24: $47
    rst RST_08                                    ; $7D25: $CF
    nop                                           ; $7D26: $00
    ld a, b                                       ; $7D27: $78
    ld d, l                                       ; $7D28: $55
    ld a, [bc]                                    ; $7D29: $0A
    ld [$0836], sp                                ; $7D2A: $08 $36 $08
    ld b, h                                       ; $7D2D: $44
    ld [$B980], sp                                ; $7D2E: $08 $80 $B9
    ld [$7808], a                                 ; $7D31: $EA $08 $78

jr_020_7D34:
    ld [$0807], sp                                ; $7D34: $08 $07 $08
    adc a                                         ; $7D37: $8F
    inc l                                         ; $7D38: $2C
    rrca                                          ; $7D39: $0F
    xor e                                         ; $7D3A: $AB
    ld a, [bc]                                    ; $7D3B: $0A
    rra                                           ; $7D3C: $1F
    ld [$0A3F], sp                                ; $7D3D: $08 $3F $0A
    ld a, a                                       ; $7D40: $7F
    ld a, [bc]                                    ; $7D41: $0A
    rlca                                          ; $7D42: $07
    or a                                          ; $7D43: $B7
    rlca                                          ; $7D44: $07
    cp $07                                        ; $7D45: $FE $07
    ld [bc], a                                    ; $7D47: $02
    ld hl, sp+$00                                 ; $7D48: $F8 $00
    sbc a                                         ; $7D4A: $9F
    ld bc, $FC3D                                  ; $7D4B: $01 $3D $FC
    db $FD                                        ; $7D4E: $FD
    ld [$0011], sp                                ; $7D4F: $08 $11 $00
    adc e                                         ; $7D52: $8B
    rra                                           ; $7D53: $1F
    nop                                           ; $7D54: $00
    ld de, $EF0F                                  ; $7D55: $11 $0F $EF
    di                                            ; $7D58: $F3
    nop                                           ; $7D59: $00
    xor b                                         ; $7D5A: $A8
    cp h                                          ; $7D5B: $BC
    inc c                                         ; $7D5C: $0C
    ld c, b                                       ; $7D5D: $48
    ccf                                           ; $7D5E: $3F
    ld [$693C], sp                                ; $7D5F: $08 $3C $69
    ld e, b                                       ; $7D62: $58
    nop                                           ; $7D63: $00
    ld a, c                                       ; $7D64: $79
    add hl, hl                                    ; $7D65: $29
    ld bc, $FE75                                  ; $7D66: $01 $75 $FE
    inc b                                         ; $7D69: $04
    ld c, e                                       ; $7D6A: $4B
    dec b                                         ; $7D6B: $05
    rlca                                          ; $7D6C: $07
    nop                                           ; $7D6D: $00
    rst RST_30                                    ; $7D6E: $F7
    ld [bc], a                                    ; $7D6F: $02
    xor b                                         ; $7D70: $A8
    xor l                                         ; $7D71: $AD
    db $FC                                        ; $7D72: $FC
    ld [bc], a                                    ; $7D73: $02
    ld a, a                                       ; $7D74: $7F
    nop                                           ; $7D75: $00
    rra                                           ; $7D76: $1F
    sbc a                                         ; $7D77: $9F
    rrca                                          ; $7D78: $0F
    ld l, e                                       ; $7D79: $6B
    ld l, a                                       ; $7D7A: $6F
    adc c                                         ; $7D7B: $89
    cp e                                          ; $7D7C: $BB
    rst RST_20                                    ; $7D7D: $E7
    ld [bc], a                                    ; $7D7E: $02
    rst RST_38                                    ; $7D7F: $FF
    rlca                                          ; $7D80: $07
    nop                                           ; $7D81: $00
    add sp, -$07                                  ; $7D82: $E8 $F9
    rlca                                          ; $7D84: $07
    inc bc                                        ; $7D85: $03
    db $FD                                        ; $7D86: $FD
    ld [bc], a                                    ; $7D87: $02
    ld sp, hl                                     ; $7D88: $F9
    ei                                            ; $7D89: $FB
    ld a, [$0881]                                 ; $7D8A: $FA $81 $08
    or $F7                                        ; $7D8D: $F6 $F7
    ld [$C8EF], a                                 ; $7D8F: $EA $EF $C8
    rst RST_18                                    ; $7D92: $DF
    jp hl                                         ; $7D93: $E9


    ld c, l                                       ; $7D94: $4D
    ld a, a                                       ; $7D95: $7F
    nop                                           ; $7D96: $00
    ccf                                           ; $7D97: $3F
    cp a                                          ; $7D98: $BF
    add hl, bc                                    ; $7D99: $09
    ld bc, $581F                                  ; $7D9A: $01 $1F $58
    cp [hl]                                       ; $7D9D: $BE
    add hl, bc                                    ; $7D9E: $09
    sbc a                                         ; $7D9F: $9F
    ld a, [de]                                    ; $7DA0: $1A
    dec a                                         ; $7DA1: $3D
    add hl, bc                                    ; $7DA2: $09
    xor e                                         ; $7DA3: $AB
    reti                                          ; $7DA4: $D9


    db $FD                                        ; $7DA5: $FD
    xor [hl]                                      ; $7DA6: $AE
    nop                                           ; $7DA7: $00
    cp $00                                        ; $7DA8: $FE $00
    rst RST_38                                    ; $7DAA: $FF
    inc b                                         ; $7DAB: $04
    add hl, sp                                    ; $7DAC: $39
    ld e, c                                       ; $7DAD: $59
    ld hl, sp-$80                                 ; $7DAE: $F8 $80
    nop                                           ; $7DB0: $00
    ld b, b                                       ; $7DB1: $40
    ld c, h                                       ; $7DB2: $4C
    ld d, d                                       ; $7DB3: $52
    ld d, [hl]                                    ; $7DB4: $56
    and c                                         ; $7DB5: $A1
    and e                                         ; $7DB6: $A3
    db $F4                                        ; $7DB7: $F4
    ld d, b                                       ; $7DB8: $50
    push af                                       ; $7DB9: $F5
    ld c, c                                       ; $7DBA: $49
    xor b                                         ; $7DBB: $A8
    nop                                           ; $7DBC: $00
    ld d, c                                       ; $7DBD: $51
    ld d, e                                       ; $7DBE: $53
    ld [bc], a                                    ; $7DBF: $02
    rrca                                          ; $7DC0: $0F
    rra                                           ; $7DC1: $1F
    ld sp, hl                                     ; $7DC2: $F9
    ei                                            ; $7DC3: $FB
    db $FC                                        ; $7DC4: $FC
    xor b                                         ; $7DC5: $A8
    ret                                           ; $7DC6: $C9


    ei                                            ; $7DC7: $FB
    dec b                                         ; $7DC8: $05
    ld hl, sp-$72                                 ; $7DC9: $F8 $8E
    ld [$C700], sp                                ; $7DCB: $08 $00 $C7
    jr c, jr_020_7DD0                             ; $7DCE: $38 $00

jr_020_7DD0:
    add hl, sp                                    ; $7DD0: $39
    ld sp, hl                                     ; $7DD1: $F9
    or $E8                                        ; $7DD2: $F6 $E8
    nop                                           ; $7DD4: $00
    ret c                                         ; $7DD5: $D8

    nop                                           ; $7DD6: $00
    ld a, [$8700]                                 ; $7DD7: $FA $00 $87
    sub a                                         ; $7DDA: $97
    rlca                                          ; $7DDB: $07
    ld [$1337], sp                                ; $7DDC: $08 $37 $13
    ei                                            ; $7DDF: $FB
    db $E3                                        ; $7DE0: $E3
    ld [$2D01], sp                                ; $7DE1: $08 $01 $2D
    inc b                                         ; $7DE4: $04
    ld b, $CE                                     ; $7DE5: $06 $CE
    ld c, [hl]                                    ; $7DE7: $4E
    xor $82                                       ; $7DE8: $EE $82
    rst RST_28                                    ; $7DEA: $EF
    ret                                           ; $7DEB: $C9


    dec b                                         ; $7DEC: $05
    db $FC                                        ; $7DED: $FC
    db $EB                                        ; $7DEE: $EB
    nop                                           ; $7DEF: $00
    ldh [$FF98], a                                ; $7DF0: $E0 $98
    ld [bc], a                                    ; $7DF2: $02
    ret nc                                        ; $7DF3: $D0

    add $38                                       ; $7DF4: $C6 $38
    db $10                                        ; $7DF6: $10
    sub b                                         ; $7DF7: $90
    adc b                                         ; $7DF8: $88
    ld b, $DF                                     ; $7DF9: $06 $DF
    ret z                                         ; $7DFB: $C8

    ccf                                           ; $7DFC: $3F
    ret nz                                        ; $7DFD: $C0

    reti                                          ; $7DFE: $D9


    nop                                           ; $7DFF: $00
    jp nz, Jump_000_0840                          ; $7E00: $C2 $40 $08

    inc a                                         ; $7E03: $3C

jr_020_7E04:
    add b                                         ; $7E04: $80
    add e                                         ; $7E05: $83
    ld a, h                                       ; $7E06: $7C
    nop                                           ; $7E07: $00
    sbc h                                         ; $7E08: $9C
    xor e                                         ; $7E09: $AB
    adc b                                         ; $7E0A: $88
    db $F4                                        ; $7E0B: $F4
    ld [$08D0], sp                                ; $7E0C: $08 $D0 $08
    sub b                                         ; $7E0F: $90
    ld [$D068], sp                                ; $7E10: $08 $68 $D0
    ld c, $01                                     ; $7E13: $0E $01
    ld hl, sp+$00                                 ; $7E15: $F8 $00
    push bc                                       ; $7E17: $C5
    rst RST_00                                    ; $7E18: $C7
    rla                                           ; $7E19: $17
    ccf                                           ; $7E1A: $3F
    ld d, h                                       ; $7E1B: $54
    ld e, c                                       ; $7E1C: $59
    jr c, jr_020_7E5F                             ; $7E1D: $38 $40

    ld [$0898], sp                                ; $7E1F: $08 $98 $08

jr_020_7E22:
    jr nc, jr_020_7E22                            ; $7E22: $30 $FE

    ld d, h                                       ; $7E24: $54
    jr z, @+$4A                                   ; $7E25: $28 $48

    ld l, b                                       ; $7E27: $68
    jr jr_020_7E8A                                ; $7E28: $18 $60

    ld [$FD20], sp                                ; $7E2A: $08 $20 $FD
    and d                                         ; $7E2D: $A2
    ret z                                         ; $7E2E: $C8

    ei                                            ; $7E2F: $FB
    ld [$01F0], sp                                ; $7E30: $08 $F0 $01
    pop hl                                        ; $7E33: $E1
    jr jr_020_7E04                                ; $7E34: $18 $CE

    db $E3                                        ; $7E36: $E3
    ld c, b                                       ; $7E37: $48
    ld e, b                                       ; $7E38: $58
    ld a, b                                       ; $7E39: $78
    ld a, [hl]                                    ; $7E3A: $7E
    ld [hl], b                                    ; $7E3B: $70
    ld a, a                                       ; $7E3C: $7F
    jr jr_020_7E47                                ; $7E3D: $18 $08

    ret nc                                        ; $7E3F: $D0

    ret z                                         ; $7E40: $C8

    ld [$083C], sp                                ; $7E41: $08 $3C $08
    ld a, [de]                                    ; $7E44: $1A
    cp a                                          ; $7E45: $BF
    rrca                                          ; $7E46: $0F

jr_020_7E47:
    rst RST_18                                    ; $7E47: $DF
    xor b                                         ; $7E48: $A8
    adc b                                         ; $7E49: $88
    adc a                                         ; $7E4A: $8F
    ld [$081F], sp                                ; $7E4B: $08 $1F $08
    ld a, b                                       ; $7E4E: $78
    inc bc                                        ; $7E4F: $03
    cp e                                          ; $7E50: $BB
    dec h                                         ; $7E51: $25
    rlca                                          ; $7E52: $07
    rst RST_30                                    ; $7E53: $F7
    ld e, b                                       ; $7E54: $58
    rst RST_28                                    ; $7E55: $EF
    ld c, a                                       ; $7E56: $4F
    ld [$789F], sp                                ; $7E57: $08 $9F $78
    ret c                                         ; $7E5A: $D8

    jr jr_020_7E5D                                ; $7E5B: $18 $00

jr_020_7E5D:
    scf                                           ; $7E5D: $37
    nop                                           ; $7E5E: $00

jr_020_7E5F:
    ld l, b                                       ; $7E5F: $68
    jp $ED0D                                      ; $7E60: $C3 $0D $ED


    call c, RST_18                                ; $7E63: $DC $18 $00
    rst RST_38                                    ; $7E66: $FF
    ld [bc], a                                    ; $7E67: $02
    xor b                                         ; $7E68: $A8
    nop                                           ; $7E69: $00
    dec de                                        ; $7E6A: $1B
    db $DB                                        ; $7E6B: $DB
    rlca                                          ; $7E6C: $07
    ld bc, $0EE1                                  ; $7E6D: $01 $E1 $0E
    ld l, [hl]                                    ; $7E70: $6E
    add c                                         ; $7E71: $81
    nop                                           ; $7E72: $00
    ld l, e                                       ; $7E73: $6B
    inc bc                                        ; $7E74: $03
    ld [hl], a                                    ; $7E75: $77
    nop                                           ; $7E76: $00
    ld a, [bc]                                    ; $7E77: $0A
    rlca                                          ; $7E78: $07
    inc bc                                        ; $7E79: $03
    ld sp, hl                                     ; $7E7A: $F9
    nop                                           ; $7E7B: $00
    ld c, a                                       ; $7E7C: $4F
    cp $38                                        ; $7E7D: $FE $38
    ccf                                           ; $7E7F: $3F
    ret nz                                        ; $7E80: $C0

    nop                                           ; $7E81: $00
    ld e, a                                       ; $7E82: $5F
    inc bc                                        ; $7E83: $03
    jr nz, jr_020_7EAD                            ; $7E84: $20 $27

    ld hl, sp-$0D                                 ; $7E86: $F8 $F3
    nop                                           ; $7E88: $00
    ld e, a                                       ; $7E89: $5F

jr_020_7E8A:
    inc bc                                        ; $7E8A: $03
    ldh a, [$FFBF]                                ; $7E8B: $F0 $BF
    ld a, a                                       ; $7E8D: $7F
    nop                                           ; $7E8E: $00
    ld e, a                                       ; $7E8F: $5F
    xor d                                         ; $7E90: $AA
    inc bc                                        ; $7E91: $03
    ret nz                                        ; $7E92: $C0

    nop                                           ; $7E93: $00
    add b                                         ; $7E94: $80
    nop                                           ; $7E95: $00
    rrca                                          ; $7E96: $0F
    nop                                           ; $7E97: $00
    rra                                           ; $7E98: $1F
    rst RST_28                                    ; $7E99: $EF
    nop                                           ; $7E9A: $00
    cp b                                          ; $7E9B: $B8
    ld b, $00                                     ; $7E9C: $06 $00
    ld [bc], a                                    ; $7E9E: $02
    rst RST_18                                    ; $7E9F: $DF
    inc bc                                        ; $7EA0: $03
    cp a                                          ; $7EA1: $BF
    xor d                                         ; $7EA2: $AA
    rlca                                          ; $7EA3: $07
    inc bc                                        ; $7EA4: $03
    nop                                           ; $7EA5: $00
    ld bc, $F000                                  ; $7EA6: $01 $00 $F0
    nop                                           ; $7EA9: $00
    ld hl, sp-$42                                 ; $7EAA: $F8 $BE
    nop                                           ; $7EAC: $00

jr_020_7EAD:
    db $FC                                        ; $7EAD: $FC
    rlca                                          ; $7EAE: $07
    rlca                                          ; $7EAF: $07
    rlca                                          ; $7EB0: $07
    rlca                                          ; $7EB1: $07
    inc b                                         ; $7EB2: $04
    cp $B5                                        ; $7EB3: $FE $B5
    nop                                           ; $7EB5: $00
    rst RST_38                                    ; $7EB6: $FF
    rlca                                          ; $7EB7: $07
    ld [bc], a                                    ; $7EB8: $02
    ld a, a                                       ; $7EB9: $7F
    nop                                           ; $7EBA: $00
    ccf                                           ; $7EBB: $3F
    nop                                           ; $7EBC: $00
    ld d, l                                       ; $7EBD: $55
    rra                                           ; $7EBE: $1F
    nop                                           ; $7EBF: $00
    adc a                                         ; $7EC0: $8F
    nop                                           ; $7EC1: $00
    rst RST_00                                    ; $7EC2: $C7
    nop                                           ; $7EC3: $00
    db $E3                                        ; $7EC4: $E3
    nop                                           ; $7EC5: $00
    ld e, [hl]                                    ; $7EC6: $5E
    pop af                                        ; $7EC7: $F1
    nop                                           ; $7EC8: $00
    ld hl, sp+$00                                 ; $7EC9: $F8 $00
    rst RST_38                                    ; $7ECB: $FF
    rlca                                          ; $7ECC: $07
    ld bc, $EDE7                                  ; $7ECD: $01 $E7 $ED
    rlca                                          ; $7ED0: $07
    inc b                                         ; $7ED1: $04
    ld a, e                                       ; $7ED2: $7B
    rra                                           ; $7ED3: $1F
    ld [bc], a                                    ; $7ED4: $02
    add hl, sp                                    ; $7ED5: $39
    cp $04                                        ; $7ED6: $FE $04
    ret nc                                        ; $7ED8: $D0

    add hl, sp                                    ; $7ED9: $39
    inc bc                                        ; $7EDA: $03
    db $E3                                        ; $7EDB: $E3
    nop                                           ; $7EDC: $00
    add sp, -$14                                  ; $7EDD: $E8 $EC
    inc l                                         ; $7EDF: $2C
    dec l                                         ; $7EE0: $2D
    nop                                           ; $7EE1: $00
    ld c, d                                       ; $7EE2: $4A
    jp z, $F838                                   ; $7EE3: $CA $38 $F8

    inc b                                         ; $7EE6: $04
    ld a, h                                       ; $7EE7: $7C
    inc bc                                        ; $7EE8: $03
    ccf                                           ; $7EE9: $3F
    ret nc                                        ; $7EEA: $D0

    sbc l                                         ; $7EEB: $9D
    dec b                                         ; $7EEC: $05
    cp $00                                        ; $7EED: $FE $00
    ldh [$FFE1], a                                ; $7EEF: $E0 $E1
    nop                                           ; $7EF1: $00
    ld e, a                                       ; $7EF2: $5F
    dec l                                         ; $7EF3: $2D
    add b                                         ; $7EF4: $80
    and e                                         ; $7EF5: $A3
    ld [$09BF], sp                                ; $7EF6: $08 $BF $09
    jr c, jr_020_7F3E                             ; $7EF9: $38 $43

    ld [$3E76], sp                                ; $7EFB: $08 $76 $3E
    ld [$0988], sp                                ; $7EFE: $08 $88 $09
    rst RST_20                                    ; $7F01: $E7
    nop                                           ; $7F02: $00
    cp c                                          ; $7F03: $B9
    ld a, a                                       ; $7F04: $7F
    or b                                          ; $7F05: $B0
    nop                                           ; $7F06: $00
    ccf                                           ; $7F07: $3F
    ld a, b                                       ; $7F08: $78
    add hl, bc                                    ; $7F09: $09
    rra                                           ; $7F0A: $1F
    rst RST_18                                    ; $7F0B: $DF
    rrca                                          ; $7F0C: $0F
    rst RST_28                                    ; $7F0D: $EF
    jp hl                                         ; $7F0E: $E9


    dec c                                         ; $7F0F: $0D
    ld c, c                                       ; $7F10: $49
    ld [$299F], sp                                ; $7F11: $08 $9F $29
    rlca                                          ; $7F14: $07
    rst RST_30                                    ; $7F15: $F7
    ld [$771F], sp                                ; $7F16: $08 $1F $77
    inc bc                                        ; $7F19: $03
    ld a, e                                       ; $7F1A: $7B
    cp b                                          ; $7F1B: $B8
    ld b, $88                                     ; $7F1C: $06 $88
    nop                                           ; $7F1E: $00
    adc b                                         ; $7F1F: $88
    xor e                                         ; $7F20: $AB
    nop                                           ; $7F21: $00
    add b                                         ; $7F22: $80
    nop                                           ; $7F23: $00
    ret nz                                        ; $7F24: $C0

    nop                                           ; $7F25: $00
    rst RST_38                                    ; $7F26: $FF
    rlca                                          ; $7F27: $07
    ld [bc], a                                    ; $7F28: $02
    ld d, l                                       ; $7F29: $55
    nop                                           ; $7F2A: $00
    ld [bc], a                                    ; $7F2B: $02
    ldh [rP1], a                                  ; $7F2C: $E0 $00
    xor $00                                       ; $7F2E: $EE $00
    ldh a, [c]                                    ; $7F30: $F2
    nop                                           ; $7F31: $00
    ld d, l                                       ; $7F32: $55
    or $00                                        ; $7F33: $F6 $00
    jp hl                                         ; $7F35: $E9


    nop                                           ; $7F36: $00
    db $E3                                        ; $7F37: $E3
    nop                                           ; $7F38: $00
    ld a, [$5500]                                 ; $7F39: $FA $00 $55
    ld sp, hl                                     ; $7F3C: $F9
    nop                                           ; $7F3D: $00

jr_020_7F3E:
    db $FC                                        ; $7F3E: $FC
    ld b, $F8                                     ; $7F3F: $06 $F8
    nop                                           ; $7F41: $00
    ldh a, [rP1]                                  ; $7F42: $F0 $00
    ld d, d                                       ; $7F44: $52
    ld bc, $0300                                  ; $7F45: $01 $00 $03
    nop                                           ; $7F48: $00
    nop                                           ; $7F49: $00
    dec e                                         ; $7F4A: $1D
    ld [$8EFF], sp                                ; $7F4B: $08 $FF $8E
    inc c                                         ; $7F4E: $0C
    ld a, a                                       ; $7F4F: $7F
    add b                                         ; $7F50: $80
    cp a                                          ; $7F51: $BF
    jr jr_020_7F54                                ; $7F52: $18 $00

jr_020_7F54:
    or b                                          ; $7F54: $B0
    db $FD                                        ; $7F55: $FD
    xor d                                         ; $7F56: $AA
    ld e, h                                       ; $7F57: $5C
    cp $08                                        ; $7F58: $FE $08
    ld sp, hl                                     ; $7F5A: $F9
    ld [$08F7], sp                                ; $7F5B: $08 $F7 $08
    adc a                                         ; $7F5E: $8F
    add hl, hl                                    ; $7F5F: $29
    inc c                                         ; $7F60: $0C
    ld l, a                                       ; $7F61: $6F
    ldh a, [$FFF3]                                ; $7F62: $F0 $F3
    adc c                                         ; $7F64: $89
    ld hl, sp-$05                                 ; $7F65: $F8 $FB
    inc c                                         ; $7F67: $0C
    ld a, b                                       ; $7F68: $78
    ld a, [$0240]                                 ; $7F69: $FA $40 $02
    ret nz                                        ; $7F6C: $C0

    ret                                           ; $7F6D: $C9


    ldh a, [$FF08]                                ; $7F6E: $F0 $08
    db $EB                                        ; $7F70: $EB
    add c                                         ; $7F71: $81
    cp b                                          ; $7F72: $B8
    call $B636                                    ; $7F73: $CD $36 $B6
    ld b, $86                                     ; $7F76: $06 $86
    dec e                                         ; $7F78: $1D
    nop                                           ; $7F79: $00
    ld d, l                                       ; $7F7A: $55
    db $EC                                        ; $7F7B: $EC
    nop                                           ; $7F7C: $00
    rrca                                          ; $7F7D: $0F
    nop                                           ; $7F7E: $00
    inc bc                                        ; $7F7F: $03
    ret z                                         ; $7F80: $C8

    ld bc, $AAA8                                  ; $7F81: $01 $A8 $AA
    sbc b                                         ; $7F84: $98
    ld a, [hl]                                    ; $7F85: $7E
    ld [$0AFF], sp                                ; $7F86: $08 $FF $0A
    db $E3                                        ; $7F89: $E3
    ld [$35DF], sp                                ; $7F8A: $08 $DF $35
    add b                                         ; $7F8D: $80
    cp a                                          ; $7F8E: $BF
    jr nc, jr_020_7F93                            ; $7F8F: $30 $02

    ld a, a                                       ; $7F91: $7F
    nop                                           ; $7F92: $00

jr_020_7F93:
    ccf                                           ; $7F93: $3F
    jr c, @+$79                                   ; $7F94: $38 $77

    rra                                           ; $7F96: $1F
    ld e, b                                       ; $7F97: $58
    add hl, bc                                    ; $7F98: $09
    ldh [$FFEF], a                                ; $7F99: $E0 $EF
    add hl, bc                                    ; $7F9B: $09
    sbc b                                         ; $7F9C: $98
    ld d, b                                       ; $7F9D: $50
    cp h                                          ; $7F9E: $BC
    ld [$08BE], sp                                ; $7F9F: $08 $BE $08
    ld l, b                                       ; $7FA2: $68
    ret                                           ; $7FA3: $C9


    ld [$402F], sp                                ; $7FA4: $08 $2F $40
    dec c                                         ; $7FA7: $0D
    ld b, e                                       ; $7FA8: $43
    inc d                                         ; $7FA9: $14
    dec d                                         ; $7FAA: $15
    ret nz                                        ; $7FAB: $C0

    nop                                           ; $7FAC: $00
    sbc d                                         ; $7FAD: $9A
    ld l, a                                       ; $7FAE: $6F
    ret z                                         ; $7FAF: $C8

    ld a, b                                       ; $7FB0: $78
    sbc a                                         ; $7FB1: $9F
    db $DD                                        ; $7FB2: $DD
    add hl, bc                                    ; $7FB3: $09
    jr c, jr_020_7FB6                             ; $7FB4: $38 $00

jr_020_7FB6:
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

Call_020_7FDD:
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
